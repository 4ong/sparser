;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "find"
;;;   Module:  "objects;model:individuals:"
;;;  version:  1.3 November 2013

;; initiated 7/16/92 v2.3
;; 0.1 (11/10) fixing the semantics of some cases of the find operation
;; 0.2 (11/23) adjusted how it passed arguments to simplify things
;;     (6/12/93) added define-or-find-individual to vary arg. pattern
;; 0.3 (10/22) allowed a category to be passed to Find-individual as well
;;      as symbols naming them since find/individual needs its bindings 
;;      in a list
;;     (1/30/94) added find/individual/seq-keys/both by obvious c&s
;; 0.4 (5/24) fixed long-standing bug in find/indiv of hashed keys
;; 1.0 (9/28) Added capacity to look for op for Find off of superc.
;; 1.1 (8/24/98) Removing that capacity as a trigger for using psi.
;;     (2/14/99) Tweaked find/individual to allow for categories without
;;      operations fields. 
;; 1.2 (2/3/05) revised find/individual to go to psi search if the make operation
;;      would have yielded a psi. 3/28/13 Patched find-simple-list to
;;      recover from one-off cases
;; 1.3 (6/13/13) Changed define-or-find-individual to use define-individual
;;      rather than make/individual so that it respects the realization
;;      data on the category.
;;     (11/13/13) Improved error msg in find/individual/key/hash
;; 6/5/2015 DAVID!! There is an error that shows up in find/individual/seq-keys 
;; in which 'instances' which is supposed to be an alist of alists ((instances (cat-instances category)))
;; ends up as #<hyphenated-triple 131414> during the parse of
;;"The latter group includes RBPs such as human antigen R (HuR), 
;; AU-binding factor 1 (AUF1), nucleolin and T-cell intracellular antigen (TIA)-1 
;; and TIA-1-related (TIAR) proteins, which associate 
;; with subsets of target mRNAs and modulate their stability and/or translation rates ( xref , xref )."
;; 6/8/2015 Diagnostics for edge-referents which are CONS cells --
;;  break is controlled by parameter *diagnose-consp-referents*


(in-package :sparser)

;;;--------------
;;; Find or Make
;;;--------------


;; This needs to be updated for new DLI individuals
(defun find-or-make/individual (category
                                bindings-instructions)

  ;; called from Ref/instantiate-individual as part of completing
  ;; a rule.  All these individuals will be temporary.
  ;; ???  But also called from define-individual where permanence
  ;; is a function of the pertinant global. 

  (or (find/individual category bindings-instructions)
      (make/individual category bindings-instructions)))


(defvar *diagnose-consp-referents*)
(defun define-or-find-individual (category &rest binding-plist)
  (declare (special category))
  ;; same idea, different packaging of the arguments
  ;; to fit calls from category-specific code
  (etypecase category
    (referential-category category)
    (symbol
     (setq category (category-named category :break-if-missing))))
  
  (let* ((binding-instructions
          (decode-category-specific-binding-instr-exps
           category binding-plist))
         (result
          (or (find/individual category binding-instructions)
              ;; N.b. this version applies realization data, the others don't.
              (apply #'define-individual category binding-plist))))
    (when (and *diagnose-consp-referents*
               (consp result))
      (push-debug `(,binding-instructions ,result))
      (break "~&CONSP result from define-or-find-individual ~s~&" result))
    result))

(defun find-or-make-individual (category &rest binding-plist)
  ;; I can't remember what this function is called so trying this
  ;; variation out
  (apply #'define-or-find-individual category binding-plist))




;;;------------------------------
;;; Find -- input as expressions
;;;------------------------------

(defun find-individual (symbol-for-category &rest binding-plist )
  (let* ((category
          (typecase symbol-for-category
            (symbol
             (resolve-symbol-to-category/check symbol-for-category))
            (referential-category symbol-for-category)
	    (otherwise
	     (error "Unexpected datatype: ~a~%~a" 
		    (type-of symbol-for-category) symbol-for-category))))
             
         (binding-instructions
          (decode-category-specific-binding-instr-exps
           category binding-plist)))

    (find/individual category binding-instructions)))


;;;------
;;; Find
;;;------

(defun find/individual (category binding-instructions)
  
  ;; Looks up the appropriate Find function for this category
  ;; and calls it with these binding-instructions.
  ;; All the arguments must be objects.  If there are no
  ;; operations defined specifically for this category, we do it
  ;; as a psi.
  (if *description-lattice*
      (find-by-apply-bindings 
       (fom-lattice-description category) 
       binding-instructions)
      (let ((fn-data
             ;; either just the name of a function, or a function plus
             ;; some data such as a variable to act as a key
             (when (cat-operations category)
               (cat-ops-find (cat-operations category)))))
        
        ;(when (null fn-data)
        ;  ;; maybe it's inherited?
        ;  (setq fn-data (inherited-operation/find category)))
        ;; Pulled 8/14/98
        
        (if (and fn-data
                 (fits-criteria-for-simple-individuals category binding-instructions))
            (if (listp fn-data)
                (funcall (car fn-data) (cadr fn-data) category binding-instructions)
                (funcall fn-data category binding-instructions))
            
            (find-psi category binding-instructions)))))


;;;---------------
;;; List versions
;;;---------------

(defun find/simple-list (category binding-instructions)
  (let ((instances (cat-instances category)))
    (if (typep instances 'hash-table)
      ;; Happened when droped key'ed index from 'do
      nil
      (dolist (individual (cat-instances category) nil)
        (when (check-bindings individual binding-instructions)
          (return-from find/simple-list individual))))))



;;;---------------
;;; Hash versions
;;;---------------

(defun find/individual/key/hash (variable ;; the key
                                 category
                                 binding-instructions)

  ;; We are to find an individual from the table that fits these
  ;; binding instructions, where one of the instructions (i.e. variable
  ;; value pairs) supplied the value for the key into the table,
  ;; namely the instruction for the designated variable.

  (let ((table (cat-instances category))
        (value (cadr (assoc variable binding-instructions))))
    (unless value
      (if (assoc variable binding-instructions)
        (error "Got nil as the value of the indexing variable, ~a"
               variable)
        (error "Find was called with binding instructions that don't ~
                include the designated key variable:~%  ~A~%~A"
               variable binding-instructions)))

    (when table ;; it's nilled out after a reinitialization
      (let ((individual (gethash value table)))
        (when individual
          (if (null (cadr binding-instructions)) ;; only the key?
            individual
            (when (check-bindings individual binding-instructions)
              individual)))))))





(defun find/individual/seq-keys (key-sequence
                                 category binding-instructions)
  ;; it's an alist of alists
  (let ((instances (cat-instances category)))
    (when instances
      (let ((unit?
             (when
                 ;; block failure when instances is #<hyphenated-triple 131414> from
                 ;;"The latter group includes RBPs such as human antigen R (HuR), 
                 ;; AU-binding factor 1 (AUF1), nucleolin and T-cell intracellular antigen (TIA)-1 
                 ;; and TIA-1-related (TIAR) proteins, which associate 
                 ;; with subsets of target mRNAs and modulate their stability and/or translation rates ( xref , xref )."
                 (consp instances)
               (f/i/seq-keys instances
                           key-sequence category binding-instructions))))
        unit? ))))


(defun f/i/seq-keys (instances keys cat instr)
  (let* ((variable (pop keys))
         (value (cadr (assoc variable instr))))

    (let ((entry (cdr (assoc value instances))))
      (when entry
        (if (or
             (null keys)
             (not (consp entry)))
          entry
          (f/i/seq-keys entry keys cat instr))))))



;;;----------------------------------------
;;; general routines for listing all cases
;;;----------------------------------------

(defun list-instances/hash-table (category)
  (let* ((table (cat-instances category))
         instances )
    (maphash #'(lambda (key value)
                 (declare (ignore key))
                 (push value instances))
             table)
    (pl instances)
    (hash-table-count table)))
