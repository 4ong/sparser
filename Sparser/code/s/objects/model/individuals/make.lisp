;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions opyright (c) 2007-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:individuals:"
;;;  version:  January 2016

;; initiated 7/16/92 v2.3
;; 0.1 (11/23) Tweeked an internal call w/in Define-individual to fit lower change
;;      in argument pattern.
;; 0.2 (5/15/93) Added Throw-away individuals as an interim measure in lieu
;;      of revising the indexing and having composite categories etc.
;; 0.3 (5/25) added capacity to instantiate rules off individuals that
;;      provide concrete values for words given schematically in their categories
;; 0.4 (6/7) put in some variations on the calling syntax
;;     (6/19) fixed but in adding subtypes
;; 0.5 (1/10/94) renamed Make-throw-away-individual to Make-trivial-individual
;;     (7/13) wrote Make-an-individual  (8/8) tweeked comments
;; 0.6 (9/28) setup to flush calls to def-individual since it didn't use the
;;      resource for individuals
;; 0.7 (11/5) fixed assumption about the order of items on the plist in define-individual
;; 0.8 (4/20/95) sharpening protocol for permanent individuals
;;     (5/13) continued that by refining the call that produced the object, and
;;      added a wrapper.
;; 0.9 (9/19) changed Make-an-individual to use make/permanent-individual
;; 1.0 (9/7/98) made over Make/individual to use psi
;; 1.1 (10/26) revised Make/individual to allow some old simple cases by or'ing in
;;      Make-trivial-saturated-individual.
;;     (1/24/99) fixed bug in Saturated-form-on-primitives about v/r.
;;     (6/12/99) added saturated-simple-index to the criteria for making individuals
;;     (9/30) Added yet another case: sets-a-name-slot
;; 1.2 (10/10) Changed the policy in Define-individual that anything, anytime that it
;;      creates is to be permanent (can't reconstruct the old rational from 1995, but
;;      left it there.  (12/25) tweaked Only-slot-is-Word to take only the category
;;      since it was being used elsewhere and didn't use bindings.
;; 1.3 (8/27/00) Changed binding-instructions-saturate-slots? to remove its assumption
;;      that the slots have to have primitives as their value restrictions. 
;;     (4/10/03) Problem with reclaimation of compound numbers like 92.7 motivated
;;      backing away from 1.2 policy and reverted to the original notion. Depends
;;      on the initial loader marking all individuals created up to that point as
;;      permanent. 
;;     (2/2/05) Removed the "temporary" from Make-unindexed-individual. Added another
;;      way to override the inclination to make a psi: instances-of-this-category-can-be-partial
;;      which is motivated by ordinals. (2/3) Flushed that. Broke out the criteria for
;;      simple-individuals so it could be used in the find routine. (2/4) Extended 
;;      define-individual to dispatch if it gets a psi where it expected a category name.
;;      (2/7) Added subtype-individual - see Corresponding-unit-of-subtype. (2/8) Debugged
;;      a case in the trivially saturated test.  (2/11) fixed bug with multiple realization
;;      schema where only the first one was being seen. (3/15) to fix the problems with
;;      ordinals (positions in sequences) being gratuitously psi when they're fully defined
;;      added The-missing-slots-are-primitive to the criteria for making individuals.
;;      (4/1) Another case of the shape of the realization-data.
;; 1.4 (3/19/07) Added an optional 'force-new' parameter to make/individual to handle the 
;;      case where an identical description in fact denoted a different individual.
;; 2.0 (7/12/09) fan-out from psi changse. (2/18/10) Added synonyms to rdata dispatch.
;;     (8/15/11) a bit of cleanup. (12/15/12) added make-permanent-unindexed-individual.
;; 2.1 (3/22/13) Experimenting with *do-not-use-psi* that is or's into fits-criteria-for
;;      -simple-individuals and makes it always return t. 
;;     (4/4/13) Added make-individual-for-dm&p as a placeholder. Presently just calls
;;      unindexed. 
;; 2.2 (6/3/13) Changed make/permanent-individual to use the correct common path:
;;      make-a-permanent-individual. 7/1/13 Smidgen of internal doc.
;; 2.3 (11/18/13) Revised schema handling in define-individual because of a new kind
;;      of cases. Backed out of it 11/20 see notes w/ fn.
;; (12/3/13) Hit a new case in applying rdata because of distributed categories
;;   in C3 so factored the realization out completely and moved original version
;;   to objects/model/tree-families/driver2. Cleaned up.
;;  (4/7/14) Modified make-simple-individual to include a shadow
;;  (5/29/14) Added some (now commented out) debugging code to make-simple-individual
;;  (1/3/15) changed individual-for-ref to actually make an individual even when
;;   the description lattice flag is up.

(in-package :sparser)

;;;-------------------------------------------------
;;; as called from a file for permanent individuals
;;;-------------------------------------------------

(defmacro define-with-all-instances-permanent (&rest forms)
  `(with-all-instances-permanent/expr ',forms))

(defun with-all-instances-permanent/expr (forms)
  (let ((*index-under-permanent-instances* t))
    (dolist (form forms)
      (eval form))))

;;--- Standard entry point

(defun define-individual (symbol/psi &rest var-name+value-pairs)

  ;; intended as the standard way to create a permanent individual
  ;; from toplevel or from code that doesn't have ready access
  ;; to category and variable objects.   

  (let* ((symbol symbol/psi)
         (category (etypecase symbol
                     (symbol (resolve-symbol-to-category/check symbol))
                     (referential-category symbol)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category
           var-name+value-pairs)))

    (let ((*index-under-permanent-instances* ;;t
           (or *index-under-permanent-instances* ;; for recursive calls
               (individuals-of-this-category-are-permanent category))))
      (declare (special *index-under-permanent-instances*))
      (let ((individual
             (find-or-make/individual category binding-instructions)))

        ;;(if *c3*
        ;; This is (probably) irrelevant without restrictions
        ;; so moving it out of the way. Failed on the determiner "the"
        ;; and not obvious what would have changed. Expects the rule-set
        ;; to have a unary rule at this point and it doesn't. 
        ;;  (apply-distributed-realization-data individual)
          (apply-single-category-rdata individual category)

        individual))))


(defun make-an-individual (symbol 
                           &rest var-name+value-pairs)
  ;; Just like define-individual in its arguments but is for run-time
  ;; relations rather than populating categories (e.g. no rdata).
  ;; This syntax is convenient for calls from code. 
  (let* ((category
          (etypecase symbol
            (symbol (resolve-symbol-to-category/check symbol))
            (referential-category symbol)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category var-name+value-pairs))
         (individual
          (find-or-make/individual category binding-instructions)))
    individual ))


;;;-------------------------------------------------------------------------
;;; as called from a function for individuals that are new to the discourse
;;;-------------------------------------------------------------------------

(defun def-individual (category &rest symbols-and-values)
  (declare (ignore category symbols-and-values))
  (break "Calls to Def-individual get replaced w/ define-individual"))


(defun def-individual/no-indexing (category &rest symbols-and-values)
  ;; essentially identical to case above except for the indexing
  (etypecase category
    (referential-category)
    (symbol
     (setq category (category-named category))
     (unless category
       (error "There is no category named ~A" category))))
  (let* ((individual (make-individual :type `(,category)
                                      :id (next-id category)))
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category symbols-and-values)))

    (when binding-instructions 
      (multiple-value-bind (bindings new-indiv)
                           (apply-bindings individual binding-instructions)
        (declare (ignore bindings))
        (setq individual new-indiv)))
    individual ))




(defun make/permanent-individual (category binding-instructions)
  (let ((*index-under-permanent-instances* t)
        (individual (make-a-permanent-individual)))
    (multiple-value-bind (bindings new-indiv)
                         (apply-bindings individual binding-instructions)
      (setq individual new-indiv)
      (index/permanent-individual individual category bindings)
      individual )))



;;;-------------------------------------
;;; temporary (run-time) case typically
;;;-------------------------------------

(defun make/individual (category binding-instructions &optional force-new?)
  ;; Called from Ref/instantiate-individual via Find-or-make/individual
  ;; as part of the completion of a rule, or from Define-individual
  ;; when there wasn't already an instance of one with these bindings
  ;;   The binding instructions are a list of variable - value pairs.
  (when force-new?
    (break "Call to make/individual with force-new? set -- document why"))
  (make-trivial-saturated-individual category binding-instructions))


;;;--------------
;;; Simple cases
;;;--------------

(defun make-trivial-saturated-individual (category binding-instructions)
  (when (fits-criteria-for-simple-individuals category binding-instructions)
    (make-simple-individual category binding-instructions)))

(defun fits-criteria-for-simple-individuals (category binding-instructions-alist/plist)
  (or *do-not-use-psi*
      (let ((binding-instructions
             (if (consp (first binding-instructions-alist/plist))
               binding-instructions-alist/plist
               (plist-to-alist binding-instructions-alist/plist
                               :not-dotted))))
        (or (only-slot-is-word category)
            (sets-a-name-slot category binding-instructions)
            (saturated-form-on-primitives category binding-instructions)
            (saturated-simple-index category binding-instructions)
            (binds-all-slots category binding-instructions)
            (the-missing-slots-are-primitive category binding-instructions)))))



;;--- test predicates

(defun only-slot-is-word (category)
  (let ((slots (cat-slots category)))
    (and (= 1 (length slots))
         (eq (var-name (first slots)) 'word))))

(defun sets-a-name-slot (category binding-instructions)
  (declare (ignore category))
  (let ( variable )
    (dolist (binding-pair binding-instructions nil)
      (setq variable (first binding-pair))
      (when (eq (var-name variable) 'name)
        (return-from sets-a-name-slot t)))))
    

(defun saturated-form-on-primitives (category binding-instructions)
  (let ((slots (cat-slots category)))
    (binding-instructions-saturate-slots? binding-instructions
                                          slots)))

(defun saturated-simple-index (category binding-instructions)
  (let ((operations (cat-operations category)))
    (when operations
      (let ((index-instruction (cat-ops-index operations)))
        (when (and index-instruction
                   (consp index-instruction))
          (let ((index-function (car index-instruction))                
                index-vars )
            (ecase index-function
              (index/individual/key/hash
               (setq index-vars (cdr index-instruction)))
              (index/individual/seq-keys
               (setq index-vars (second index-instruction))))
            (binding-instructions-saturate-slots? binding-instructions
                                                  index-vars)))))))


(defun binding-instructions-saturate-slots? (binding-instructions slots)
  (dolist (variable slots t)
    (unless (assoc variable binding-instructions)                 
      (return-from binding-instructions-saturate-slots? nil))))


(defun binds-all-slots (category binding-instructions)
  (binding-instructions-saturate-slots? binding-instructions
                                        (cat-slots category)))


(defun the-missing-slots-are-primitive (category binding-instructions)
  (let ((remaining-slots (copy-list (cat-slots category)))
        variable  v/r )
    (dolist (bi binding-instructions)
      (setq variable (first bi))
      (setq remaining-slots (delete variable remaining-slots)))
    (dolist (variable remaining-slots t)
      (setq v/r (var-value-restriction variable))
      (unless (and (consp v/r)
                   (eq (first v/r) :primitive))
        (return nil)))))

          


;;--- Constructor 

(defun make-simple-individual (category binding-instructions)
  (declare (special *index-under-permanent-instances*))
  ;;(break "permanent = ~a" *index-under-permanent-instances*)
  (let ((individual 
         (cond
          (*description-lattice* (fom-lattice-description category))
          (*index-under-permanent-instances* (make-a-permanent-individual))
          (t (allocate-individual)))))
    (unless *description-lattice*
      (setf (indiv-type individual) (list category))
      (setf (indiv-id   individual) (next-id category)))
    (multiple-value-bind (bindings new-indiv)
                         (apply-bindings individual binding-instructions)
      (setq individual new-indiv)
      (index/individual individual category bindings)
      (create-shadow individual)
      individual )))

(defun make-non-dli-individual (category binding-instructions &optional (non-permanent nil))
  (declare (ignore non-permanent))
  (let ((individual (allocate-individual))
        (*description-lattice* nil)
        (*index-under-permanent-instances* nil))
    (declare (special *index-under-permanent-instances*))
    (setf (indiv-type individual) (list category))
    (setf (indiv-id   individual) (next-id category))
    (multiple-value-bind (bindings new-indiv)
                         (apply-bindings individual binding-instructions)
      (declare (ignore bindings))
      (setq individual new-indiv)
      ;;(index/individual individual category bindings)
      (create-shadow individual)
      individual )))

(defun make-throw-away-individual (category)
  (break "~&~%Trapped a call to make-throw-away-individual~
        ~%Just 'continue' from this break. It's only purpose~
        ~%is bookeeping.~%~%")
  (make-unindexed-temporary-individual category))

(defun make-trivial-individual (category)
  (break "~&~%Trapped a call to make-trivial-individual~
        ~%Just 'continue' from this break. It's only purpose~
        ~%is bookeeping.~%~%")
  (make-unindexed-temporary-individual category))

(defun make-unindexed-temporary-individual (category)
  (declare (ignore category))
  (break "Replace with call to make-unindexed-individual"))

(defun make-unindexed-individual (category)
  ;; called as a variation on define-individual by routines that
  ;; do their own indexing and don't want to go through the
  ;; standard mechanisms.  
  (let ((individual (if *index-under-permanent-instances*
                      (make-a-permanent-individual)
                      (allocate-individual))))
    (setf (indiv-type individual) (list category))
    (setf (indiv-id   individual) (next-id category))
    (create-shadow individual)
    individual ))


(defun subtype-individual (i subtype-category)
  ;; We are building a new individual that differs from its source
  ;; individual only in its category.  In particular we copy its
  ;; intrinsic properties, i.e. the list in its bound field
  ;;/// c.f. add-category-to-individual
  (let ((si (make-a-permanent-individual)))
    (setf (indiv-type si) (list subtype-category))
    (setf (indiv-id si) (next-id subtype-category))
    (setf (indiv-binds si) (copy-list (indiv-binds i)))
    si))
  

(defun make-category-indexed-individual (category)
  "Make a simple individual (no binding instructions, etc) that is
   stored on the category's plist."
  ;; One-off version of with-all-instances-permanent so we don't
  ;; get it deallocated out from under us.
  (let ((*index-under-permanent-instances* t))
    (let ((i (make-unindexed-individual category)))
      (push-onto-plist category i :individual)
      i)))

(defun get-category-individual (category)
  (get-tag-for :individual category))

;;;------------------------------------------------------------------
;;; broad routine for making/adjusting an individual from a category
;;;------------------------------------------------------------------

(defun individual-for-ref (head)
  (typecase head
    (individual
     (if *description-lattice*
         head
         (maybe-copy-individual head)))
    (category
     (if *description-lattice*
         (find-or-make-lattice-description-for-ref-category head)
         (make-unindexed-individual head)))
    (cons ;; presumably it's a disjoint value restriction
     (unless (eq (car head) :or)
       (error "The 'head' is a cons but it's not a value restriction:~%~a"
              head))
     (lsp-break "individual-for-ref :or")
     ;; The first category is supposed to be the 'primary' one
     (make-unindexed-individual (second head)))
    (otherwise
     (push-debug `(,head))
     (error "Unexpected type of 'head' in individual for ref: ~a~
       ~%  ~a" (type-of head) head))))


;;;-------------------------
;;; special 'make' for DM&P
;;;-------------------------

(defun make-individual-for-dm&p (category)
  ;; This is a placeholder so when the decision about what to
  ;; really do make we only have to change this one place
  (if *description-lattice*
   (fom-lattice-description category)
   (let ((i (make-unindexed-individual category)))
     (bind-category-of-instance i category)
     i)))


;;;--------------------------
;;; specializing individuals
;;;--------------------------

(defun add-category-to-individual (individual category)
  ;; /// should look for the subtype already existing in the
  ;; model as a compound category
  (break "Call to add-category-to-individual~
        ~%Think through how to hack the CLOS.")
  (let ((type-field (indiv-type individual)))
    (if (rest type-field)
      (setf (indiv-type individual)
            `( ,(first type-field)
               ,category
               ,@(rest type-field) ) )
      (setf (indiv-type individual)
            `( ,(first type-field)
               ,category ) ) )

    individual ))




;;;----------------------
;;; source of id numbers
;;;----------------------

(defun next-id (category)
  (cond
   ((category-p category)
    (incf (cat-id-counter category)))
   (t
    (break "what is going on in next id -- not a category")
    (let ((count (getf (unit-plist category) :count)))
      (if (null count)
          (then (setf (getf (unit-plist category) :count) 1)
            1)
          (incf (getf (unit-plist category) :count))))
    )))
    


(defun reset-category-count (category
                             &optional number )
  (cond
   ((category-p category)
    (setf (cat-id-counter category) (or number 0)))
   (t
    (break "what is going on in next id -- not a category")
    (let ((count-cons
           (member :count (unit-plist category))))
      (when count-cons
        (if number
            (rplacd count-cons
                    `( ,number ,@(cddr count-cons)))
            (rplacd count-cons
                    `( nil ,@(cddr count-cons)))))))))
