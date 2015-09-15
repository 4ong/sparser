;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "anaphora"
;;;   Module:  "analyzers;CA:"
;;;  Version:  3.8 August 2015

;; new design initiated 7/14/92 v2.3
;; 1.1 (6/17/93) bringing it into sync with Krisp
;; 1.2 (12/7) put in stub for section-markers. 1/7/94 and for simple categories
;;      for name/unknown-pattern  7/14 and polywords
;; 1.3 (7/22) added trap for inappropriate category keys and put in real multiple
;;      instantiations
;; 2.0 (8/29) added facility to keep individuals with reaped edges in sync with
;;      text-view indexes -- changed storage from position indexes to real 
;;      position objects.
;; 3.0 (8/30) backed out of use of shared structure with kcons cells
;;     (11/13) added Instance-history
;;     (11/21) added Remove-history-of-instance/edge and Remove-history-of-individual
;; 3.1 (12/19) commented out check break in Long-term-already-subsumed?
;; 3.2 (1/3/95) wrote Category-for-individuals-discourse-history to fix bug in
;;      removal code
;;     (6/22) wrote Most-recently-mentioned. 8/9 put an escape in it for
;;      refs so far out of bounds they aren't in the display anymore.
;;     (1/1/96) getting problems with Long-term protocol so added a check for
;;      that case to have a better error message. 1/16 tweeked Most-recently-mentioned
;; 3.3 (5/30) may have fixed that problem -- it involved the chart recycler and
;;      edge recycler -both- needing to know when an edge has been deactivated
;;      and from that fact that the long-term processing has already been done.
;;     (4/19/00) added composite-referent as trivial case in Add-subsuming-object-to-discourse-history
;; 3.4 (2/10/05) Removed it. Started taking psi seriously
;;     (11/1/06) Edge referent from dm&p is a cons (?!) put trap for it inside
;;      Add-subsuming-object-to-discourse-history
;;     (8/24/09) in the add-subsuming-object-to-discourse-history type dispatch
;;      commented out section-marker. It's not always loaded so need to conditionalize it.
;;     (9/1)  Added exception for
;;      external referents into add-subsuming-object-to-discourse-history
;;     (1/11/11) Patched check for operations of category to look first. Problem
;;      comes from category created by DM&P without all its parts.
;;     (9/6/13) Factored out position string printer and narrowed the output of
;;      the trace in update-discourse-history
;; 3.5 (9/16/13) Fixing long-term-ify/edge-referents/at et al. As well as redesigning
;;      most-recently-mentioned since it looks through all of an individual's history
;;      and only has to take the first entry.
;;     (1/6/15) Added a facility for keeping a list of the etities in a sentence
;;      along with their edges to supply context. 
;; 3.6 (1/30/15) Added a filter to keep function words and such out of the history.
;;      The shift in modeling style to permit CLOS methods added an entire new
;;      set of types of individuals.
;;     (3/12/15) Fixed error messages in better to be clearer.
;; 3.7 (6/3/15) removed restriction on when record-instance-within-sequence runs
;;     (6/5/15) Modified individuals-discourse-entry to make it robust under the 
;;      possiblity that the individual's category has no operations defined for it.
;; 3.8 (7/8/15) Pulling out PSI deadwood when I find it. Revamping the update
;;      operation to appreciate individuals evolving as modifiers are added.
;;     (8/12/15) Removed dotted pair check when example sentence didn't reproduce
;;      it. 
;; 3.9 (8/28/15) Substantial makeover to handle mentions of description lattice
;;      individuals, plus a drastic reordering to improve readability. 

(in-package :sparser)


#|  This is a record of the location of the individuals mentioned in the
  text, organized first by prime type, then by the specific object
  and then by recency of mention.  All instances are recorded, with 
  the location given by the numbers of the start and end positions of 
  the maximal edge with the object as its referent.
|#

;;;----------
;;; globals
;;;----------

(defparameter *objects-in-the-discourse* (make-hash-table :test #'eq))


(defparameter *debug-anaphora* nil
  "Flag around the 'unexpected situation' error/break calls")

;;;----------
;;; creation
;;;----------

(defun add-subsuming-object-to-discourse-history (edge)
  ;; called from complete-edge/hugin provided that *do-anaphora* and
  ;; *pronouns* are set. 
  (declare (special *reading-populated-document*))
  (when *reading-populated-document*
    ;; The epistemic sweep through a document still introduces
    ;; edges over words (it doesn't have to), but that process
    ;; introduces a duplicate history on all single words that
    ;; have a referent, which would lead to unnecessary complications.
    (unless (actually-reading)
      (return-from add-subsuming-object-to-discourse-history nil)))

  (let ((obj (edge-referent edge))
        (start-pos (ev-position (edge-starts-at edge)))
        (end-pos   (ev-position (edge-ends-at edge))))
    (when obj
      (typecase obj
        (individual
         (let* ((primary-category (car (indiv-type obj)))
                (other-categories (cdr (indiv-type obj)))
                (operations (cat-operations primary-category))
                (instantiates
                 (when operations
                   (cat-ops-instantiate operations))))

           (unless (irrelevant-category-for-dh primary-category obj)
             (when instantiates
               ;; Besides being relevant, a category definition
               ;; has to mark how individuals of that category should
               ;; be indexed in the discourse history -- what
               ;; category do the "instantiate" (which could be :self)
               (record-instance-within-sequence obj edge)
               (update-discourse-history instantiates
                                         obj
                                         start-pos end-pos)
               (dolist (category other-categories)
                 (when category
                   ;; there's a Nil in the list sometimes
                   (update-category-discourse-history 
                    category obj start-pos end-pos)))))))

        (referential-category )
        (mixin-category )
        (category )
;        (section-marker )
        (keyword )
        (word )
        (polyword )
        (fixnum )
        (float )
        (cons ) ;; "-fold" 
        (otherwise
         (unless *external-referents*
           (error "Unexpected type of object being added to ~
                 ~%the discourse history: ~a~%~a" (type-of obj) obj)))))))


(defun update-category-discourse-history (category obj start-pos end-pos)
  "Subroutine of add-subsuming-object-to-discourse-history that looks
  up the category (':instantiates') that individuals should be indexed by.
  If the category does not 'instantiate' anything then it's not stored
  in the history."
  ;; This is somewhat redundant with the main check, but applies when
  ;; the individual has multiple categories in its type. 
  (let* ((operations (cat-operations category))
         (cat-to-instantiate (when operations
                               (cat-ops-instantiate operations))))
    (when cat-to-instantiate
      (update-discourse-history cat-to-instantiate obj start-pos end-pos))))



;(setq *trace-discourse-history* t) category::person
;(setq *trace-discourse-history* nil)
; (trace-history) -- managing the entries

(defun update-discourse-history (category new-instance start-pos end-pos)
  ;; called from add-subsuming-object-to-discourse-history when it has
  ;; a new instance of a particular category (see :instantiates)
  ;; Looks up the entry for instances of this category and
  ;; adds (or extends) the discourse history accordingly
  (declare (special *trace-discourse-history*))
  (if (consp category)
    ;; then it is marked to be indexed under several categories  
    ;; not just one
    (dolist (c category)
      (update-discourse-history c new-instance start-pos end-pos))

    (else
      (when (eq *trace-discourse-history* category)
        (format t "~&~%Recording ~A ~a  ~s~
                     ~%      from ~A to ~A~%~%"
                (cat-symbol category) new-instance
                (string-of-words-between start-pos end-pos)
                (string-for-recycled-pos start-pos)
                (string-for-recycled-pos end-pos)))
      
      (let ((entry (discourse-entry category)))
        (if entry
          (extend-entry-in-discourse-history
           entry category new-instance start-pos end-pos)
          (create-entry-in-discourse-history
           category new-instance start-pos end-pos))
        
        category ))))


(defun create-entry-in-discourse-history (category i start-pos end-pos)
  (unless (referential-category-p category)
    (error "Key is not a referential category:~%    ~A" category))
  ;; Called from update-discourse-history when the discourse 
  ;; history of this category is empty, i.e. this is the first
  ;; time an individual of this category has been mentioned.
  (tr :creating-category-dh-entry category i start-pos end-pos)
  (setf (gethash category *objects-in-the-discourse*)
        (create-discourse-entry i start-pos end-pos)))

(defun discourse-entry (category)
  (gethash category *objects-in-the-discourse*))


;;;--------------------------
;;; discourse entries per se
;;;--------------------------

(defun create-discourse-entry (i start-pos end-pos)
  ;; called from create-entry-in-discourse-history on the
  ;; first time an individual of this category has been
  ;; created. Returns the entry.
  (declare (special *description-lattice*))
  (if *description-lattice*
    (create-discourse-mention i start-pos end-pos)
    (create-rigid-discourse-entry i start-pos end-pos)))


(defun create-rigid-discourse-entry (i start-pos end-pos)
  "Individuals are rigid designators. They do not change their
  identity as they acquire properties or stand in new relations.
  We can depend on that identity to make simple entries."
  (kcons (kcons i
                (kcons (kcons start-pos end-pos)
                       nil))
         nil))

;;;--- Mentions

(defvar *lattice-individuals-to-mentions* (make-hash-table)
  "Maps from description lattice individuals to a push-list of 
  the places they have been mentioned, encoded as 'mention'
  objects.")

(defmethod get-history-of-mentions ((i individual))
  (gethash i *lattice-individuals-to-mentions*))

(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")

(defclass discourse-mention ()
  ((di :initarg :i :accessor mention-of
    :documentation "Backpointer to the individual")
   (location-in-paragraph :initarg :loc :accessor mentioned-where
    :documentation "An encoding of the location at which
     this mention occurred. Given the present implementation,
     we can use chart positions within a paragraph (the ends
     of the edge over the individual), but need to convert if 
     the paragraph is long enough to wrap the chart.")
   (location-in-article :initarg :article :accessor mentioned-in-article-where
    :documentation "When reading a text represented as an
     article, this encodes the location of the sentence that
     the mention is part of in the style of table-of-contents label")
   (subsumes :initform nil :accessor subsumes-mention
    :documentation "If the edge for this mention extends
     the edge of the previous mention (i.e. we're walking
     up a head line), then this points to that mention.")
   (subsumed-by :initform nil :accessor subsumed-by-mention
    :documentation "Inverse of subsumes"))
  (:documentation "Records a location in the text where 
   a particular description lattice individuals has been
   mentioned. Each different location corresponds to a
   different mention, even when subsuming edges are involved."))

(defmethod print-object ((m discourse-mention) stream)
  (print-unreadable-object (m stream) ;; not :type t
    (let ((i (mention-of m))
          (location (mentioned-where m)))
      (format stream "i~a " (indiv-uid i))
      (cond
       ((consp location) ;; w/in paragraph
        (typecase (car location)
          (position
           (format stream "p~a p~a"
                   (pos-token-index (car location))
                   (pos-token-index (cdr location))))
          (integer
           (format stream "~a ~a"
                   (car location) (cdr location)))
          (otherwise
           (format stream " ill-formed location"))))
       (t
        (format stream "?"))))))

(defun search-mentions-by-position (mentions start-pos end-pos)
  ;;/// 9/13/15 probably an ad-hoc fn we can later dispense with
  ;; Used by long-term-ify/individual
  (loop for m in mentions
    as cons = (mentioned-where m)
    as start = (car cons)
    when (eq start start-pos) return m))

(defun encode-mention-location (start-pos end-pos)
  "Encodes the location of a mention in terms of the two positions
   that span the individual, i.e. the ends of the edge that added it."
  (cons start-pos end-pos))

(defun make-mentions-long-term ()
  (loop for mention in *lattice-individuals-mentioned-in-paragraph*
    do (long-term-ify-mention mention))
  (setq *lattice-individuals-mentioned-in-paragraph* nil))



(defun create-discourse-mention (i start-pos end-pos)
  "Individuals reside in a description lattice. Every new
  property or relation extends the lattice and in so doing
  creates a new individual that is more specific than
  its predecessor. As a result we need to keep the (new)
  individual as part of the entry, and we need to record
  this mention in a table from the (new) individual so that
  we can search back for correspondences from partial individual
  further up the lattice."
  ;; The discourse entry for a category is a push list, most
  ;; recent (and thereafter most specific) first
  (let* ((location (encode-mention-location start-pos end-pos))
         (toc (location-in-article-of-current-sentence))
         (m (make-instance 'discourse-mention
              :i i :loc location :article toc)))
    (setf (gethash i *lattice-individuals-to-mentions*) `(,m))
    (push m *lattice-individuals-mentioned-in-paragraph*)
    (tr :made-mention m)
    (list m)))

(defun make-new-mention (entry i start-pos end-pos
                         &optional subsumed-mention)
  (let* ((location (encode-mention-location start-pos end-pos))
         (m (make-instance 'discourse-mention
              :i i :loc location))
         (previous-mentions (get-history-of-mentions i)))
    (tr :making-new-mention m)
    (when subsumed-mention
      (setf (subsumes-mention m) subsumed-mention)
      (setf (subsumed-by-mention subsumed-mention) m)
      (update-instance-within-sequence m subsumed-mention start-pos end-pos))
    (setf (gethash i *lattice-individuals-to-mentions*)
          (cons m previous-mentions))
    (push m *lattice-individuals-mentioned-in-paragraph*)
    (extend-category-dh-entry entry m)
    m ))
    

(defun extend-category-dh-entry (entry m)
  (push-debug `(,entry ,m))
  ;; The symbol entry points to the first cons cell in the
  ;; list of entries
  (let ((entry-car (car entry))
        (entry-cdr (cdr entry)))
    (push-debug `(,entry ,m)) ;(lsp-break "what's wrong with replaca")
    (rplaca entry m)
    (rplacd entry (cons entry-car entry-cdr))
    entry))


;;;--------------------------
;;; Extend discourse history
;;;--------------------------

(defun extend-entry-in-discourse-history (entry category
                                          new-individual start-pos end-pos)
  ;; Called from update-discourse-history
  ;; There have been earlier instances of indivdiuals of this category
  ;; in the discourse history. This may be a further instance of an
  ;; already entered individual or it may be a new individual When using
  ;; the description lattice it may be an individual that extends one
  ;; that is already there (by being more specifiic) and in that case
  ;; will usually involve a subsuming (larger) edge. 
  (declare (special *description-lattice*))
  (if *description-lattice*
    (lattice-individuals-extend-dh-entry
     entry new-individual start-pos end-pos)
    (conventional-individuals-extend-dh-entry 
     entry category new-individual start-pos end-pos)))

(defun lattice-individuals-extend-dh-entry (entry i start-pos end-pos)
  ;; Works in terms of mentions rather than regular discourse entries
  ;; that just encode position pairs. If the most recent individual
  ;; of this category is a 'parent' of the new individual and the
  ;; new position subsumes the parent's location then we update
  ;; the sentence-level information about entities/relations (which
  ;; is edge-oriented). In any event we make a new mention for
  ;; this case, chaining the mentions in a case of subsuming edges
  (push-debug `(,entry ,i ,start-pos ,end-pos))
  #|  (setq entry (nth 0 *) i (nth 1 *)
        start-pos (nth 2 *) end-pos (nth 3 *))  |#
  (let* ((top-mention (car entry))
         (top-instance (mention-of top-mention)))
    (tr :extending-dh-entry i)
    (push-debug `(,top-mention ,top-instance)) ;(lsp-break "mentions")
    ;; (setq top-mention (car *) top-instance (cadr *))

    (flet ((subsumes-position (mention start-pos end-pos)
             (let ((old-position (mentioned-where mention)))
               (cond
                ((consp old-position)
                 (let ((last-start# (pos-token-index (car old-position)))
                       (last-end# (pos-token-index (cdr old-position)))
                       (start# (pos-token-index start-pos))
                       (end# (pos-token-index end-pos)))
                   (or (eql start# last-start#)
                       (eql end#   last-end#)
                       (and (<= start# last-start#)
                            (>= end#   last-end#)))))
                ;;/// are there other posibilties, or is it always nil?
                (t nil)))))

    ;; If we've referred to this head line referent twice in a row
    ;; then there's either a subsuming edge case or something like
    ;; a reflexive or possessive prooun (where the location of the
    ;; mention is different than this one), though in those cases there
    ;; are also likely to be interveening referring individuals. 
    (cond ((eq i top-instance)
           ;; If we're eq to the most recent entry for this category
           ;; then we have two cases: [1] The edges subsume and this
           ;; new edge has for some reason not added any properties
           ;; to its referent, or [2] the edges are disjoint and
           ;; we have a new mention
           (cond
            ((long-term-mention? top-mention)
             ;;/// tr
             (make-new-mention entry i start-pos end-pos))
            ((subsumes-position top-mention start-pos end-pos)
             (let ((new-loc (encode-mention-location start-pos end-pos)))
               ;; "this auto-inhibited fate" w/ no referent for "this"
               (tr :exending-span-of-mention top-mention start-pos end-pos)
               (setf (mentioned-where top-mention) new-loc)))
            (t
             (tr :extending-with-subsuming-instance i start-pos end-pos)
             (make-new-mention entry i start-pos end-pos))))

          ((more-specific? i top-instance)
           ;; The object was the very last one of its type to be added.
           ;; Check for this being a larger edge over the same object.
           (cond
            ((long-term-mention? top-mention)
             ;;/// tr
             (make-new-mention entry i start-pos end-pos))
            ((subsumes-position top-mention start-pos end-pos)
             ;; this instance subsumes the prior one
             (tr :extending-with-subsuming-instance/dl
                 i top-instance start-pos end-pos)
             (make-new-mention entry i start-pos end-pos top-mention))
            (t
             ;; otherwise it's a new instance
             (tr :adding-new-instance-of-known-object i start-pos end-pos)
             (make-new-mention entry i start-pos end-pos))))

          (t
           ;; we make a new mention. The subroutine will appreciate
           ;; whether it has ever been mentioned before.
           (make-new-mention entry i start-pos end-pos))))))



(defun conventional-individuals-extend-dh-entry (entry category
                                                 individual start-pos end-pos)
  (let ( individuals-entry )
    (cond ((eq (caar entry) individual)
           ;; The object was the very last one of its type to be added.
           ;; Check for this being a larger edge over the same object
           (let* ((existing-entry (car entry))
                  (last-pos (cadr existing-entry)))

             (if (eq (car last-pos) :display-index)
               ;; happens when the last instance is in a region of
               ;; the text outside the current span of the chart, so this
               ;; instance couldn't possibly be subsuming the last one
               (new-instance-of-known-object
                existing-entry start-pos end-pos)

               ;; check for subsumption (= larger edge over the same object)
               (let ((last-start# (pos-token-index (car last-pos)))
                     (last-end#   (pos-token-index (cdr last-pos)))
                     (start# (pos-token-index start-pos))
                     (end# (pos-token-index end-pos)))
                 
                 (if (or (eql start# last-start#)
                         (eql end#   last-end#)
                         (and (<= start# last-start#)
                              (>= end#   last-end#)))
                   (then ;; this instance subsumes the prior one
                     (rplaca last-pos start-pos)
                     (rplacd last-pos end-pos))
                   
                   ;; otherwise it's a new new instance
                   (new-instance-of-known-object
                    existing-entry start-pos end-pos))))))

          ((setq individuals-entry
                 (assoc individual entry :test #'eq))
           (new-instance-of-known-object
            individuals-entry start-pos end-pos))

          (t ;; a new object of this type
           (new-object-of-established-category
            category entry individual start-pos end-pos)))))


(defun new-object-of-established-category (category categories-entry
                                           individual start-pos end-pos)

  ;; We have had individuals of this category before. But this is
  ;; a new individual in the category, and this is its first instance.
  ;; N.b. only really make sense for rigid individuals since we always
  ;; get new individuals when using the description lattice. 
  ;; This produces an alist of individuals of this category.
  (setf (gethash category *objects-in-the-discourse*)
        (kcons (kcons individual
                      (kcons (kcons start-pos end-pos)
                             nil))
               categories-entry)))

(defun new-instance-of-known-object (individuals-entry start-pos end-pos)
  ;; We've seen this individual before. This is a new instance of it.
  (rplacd individuals-entry
          (kcons (kcons start-pos end-pos)
                 (cdr individuals-entry))))



;;;-----------------------------
;;; sequential list of DH items
;;;-----------------------------
; Can be stored on the sentence and cleared between them.
; Provides structure to walk for itentifying unsaturated individuals
; and organizing the search for their missing terms

(defvar *lifo-instance-list* nil
  "Holds individuals in right-to-left order.
   Has to be cleared regularly or else the new-mention operation
   will start looking at recycled edges.")

;; (setq *scan-for-unsaturated-individuals* t)
(defparameter *trace-instance-recording* nil)


(defun record-instance-within-sequence (i edge)
  (declare (special *description-lattice*))
  (if *description-lattice*
    (record-dl-instance-within-sequence i edge)
    (record-simple-instance-within-sequence i edge)))


(defun record-simple-instance-within-sequence (i edge)
  ;; called from add-subsuming-object-to-discourse-history 
  (flet ((store-on-lifo (i edge)
           (when *trace-instance-recording*
             (format t "~&Storing ~a from e~a"
                     i (edge-position-in-resource-array edge)))
           (push `(,i ,edge) *lifo-instance-list*))
         (new-mention-subsumes-old? (prior-mention edge)
           (let ((prior-edge (cadr prior-mention)))
             (when (edge-subsumes-edge? edge prior-edge)
               (rplaca (cdr prior-mention)
                       edge)))))
    (let ((prior-mention (assq i *lifo-instance-list*)))
      (if (and prior-mention
               ;; If we've (somehow) looped around far enough
               ;; that the edge is deactivated then it surely
               ;; isn't a subsumer
               (not (deactivated? (cadr prior-mention))))
        (unless (new-mention-subsumes-old? prior-mention edge)
          (store-on-lifo i edge))
        (store-on-lifo i edge)))))



(defun record-dl-instance-within-sequence (i edge)
  ;; prior mentions and subsumption handled by separate call.
  ;; This is the equivalent of the flet store-on-lifo
  ;; except for the arrangement of the alist
  (when *trace-instance-recording*
    (format t "~&Storing ~a from e~a"
            i (edge-position-in-resource-array edge)))
   (push `(,i ,edge) *lifo-instance-list*))

(defun update-instance-within-sequence (new-mention old-mention
                                        start-pos end-pos)
  ;; Have to replace the old individual+edge pair since
  ;; with the dl protocol this is a new individual, not an
  ;; established individual with a new spanning edge
  (push-debug `(,new-mention ,old-mention ,start-pos ,end-pos))
  (let ((new-edge (edge-between start-pos end-pos))
        (new-i (mention-of new-mention))
        (old-top (pop *lifo-instance-list*)))
    (push-debug `(,old-top)) ;;/// use in trace ?
    (push `(,new-i ,new-edge) *lifo-instance-list*)))
;  (setq new-mention (car *) old-mention (cadr *) start-pos (caddr *) end-pos (cadddr *))

(defun cleanup-lifo-instance-list ()
  ;; called from end-of-sentence-processing-cleanup and
  ;; becomes the value of the sentence's long-term discourse history.
  (let ( individuals )
    (dolist (pair *lifo-instance-list*)
      (push (car pair) individuals)) ;; reverses the list
    (setq *lifo-instance-list* nil)
    individuals))


;;;--------------------------------------------------------------
;;; sweep over sentence lifo list look for something unsaturated
;;;--------------------------------------------------------------

; (setq *scan-for-unsaturated-individuals* t)

(defun sweep-for-unsaturated-individuals (sentence)
  ;; Are any of the individuals we've seen within this sentence
  ;; unsaturated? If so, can we use one of the other entities
  ;; to bind the open variables
  (declare (ignore sentence)) ;; later look through previous sentences
  (dolist (pair *lifo-instance-list*)
    (let* ((i (car pair)) ;; edge is (cadr pair)
           (open-variables (unsaturated? i)))
      (when (and open-variables
                 (null (cdr open-variables)))
        ;; lets start with just one. January #37
        (let* ((var (car open-variables))
               (v/r (var-value-restriction var)))
          (unless (memq (var-name var)
                        '(subject))
            ;; those are unrealistic to find in the local history
            (when v/r
              ;; if there's no value restriction then we can't
              ;; constrain the search
              (let ((candidate (find-best-recent v/r)))
                (when candidate
                  (bind-variable var candidate i))))))))))

#| There's a reasonable model of saturation in terms of bound
and free variables on the lattice point of a psi. The function
saturated? is a good entry point. |#
(defun unsaturated? (i)
  (let* ((category (itype-of i))
         (variables (cat-slots category)) ;; n.b. local to category
         (bindings (indiv-binds i)))
    (when variables
      (let* ((bound (loop for b in bindings
                      collect (binding-variable b)))
             (open (loop for v in variables
                     unless (memq v bound)
                     collect v)))
        open))))



(defun find-best-recent (category)
  ;; look in the recent discourse history, preferably the local
  ;; sentence, for an individual of this category. If there is
  ;; more than one, the select the one that appears to be most
  ;; prominant within the syntactic context, e.g. subjects are
  ;; nearly always the right choice. 
  (let ((candidates 
         ;; that's the standard retrieval, returns the individuals
         ;; and the positions to either side
         ;;(discourse-entry categpry)
         (local-recorded-instances category)))
    (when candidates
      (cond
       ((null (cdr candidates))
        (car (car candidates)))
       (t
        (let ((best-so-far (car candidates)))
          (dolist (pair (cdr candidates))
            (when (better pair best-so-far)
              (setq best-so-far pair)))
          ;;(push-debug `(,best-so-far)) (break "look")
          (car best-so-far)))))))

(defun local-recorded-instances (category)
  (loop for pair in *lifo-instance-list*
    when (itypep (car pair) category)
    collect pair))

(defun better (new-pair reigning-pair)
  ;; Given two edges, look at the form of the edge that dominates
  ;; them (used-in). The edge whose category is the highest in
  ;; the hierarchy should be more salient in the text and is
  ;; preferred. 
  (declare (special *category-hierarchy*))
  (let ((new-parent (edge-used-in (cadr new-pair)))
        (reigning-parent (edge-used-in (cadr reigning-pair))))
    (unless new-parent
      (if *debug-anaphora*
        (error "There is no used-in value for ~a" (cadr new-pair))
        (if reigning-parent
          (return-from better reigning-parent)
          (error "Figure out why there is no used-in value for ~a ~
               or set *scan-for-unsaturated-individuals* to nil" new-parent))))
    (unless reigning-parent
      (if *debug-anaphora*
        (error "There is no used-in value for ~a" (cadr reigning-pair))
        (if new-parent
          (return-from better new-parent)
          (error "Figure out why there is no used-in value for ~a ~
               or set *scan-for-unsaturated-individuals* to nil" reigning-parent))))

    (let* ((new-form (edge-form new-parent))
           (new-position (memq new-form *category-hierarchy*))
           (reigning-form (edge-form reigning-parent))
           (reigning-position (memq reigning-form *category-hierarchy*)))
      (unless new-position
        (error "The category ~a is not in *category-hierarchy*" new-form))
      (unless reigning-position
        (error "The category ~a is not in *category-hierarchy*" reigning-form))
      ;; if the new pair is better they will have a longer length
      ;; returned by the memq
      (let ((new-count (length new-position))
            (reigning-count (length reigning-position)))
        (when (= new-count reigning-count)
          (error "New case: Both ~a and ~a are dominated by a ~a"
                 (car new-pair) (car reigning-pair) new-form))
        (> new-count
           reigning-count)))))



;;;-------------
;;; Individuals
;;;-------------
;; N.b. not adapted to derivation lattice individuals

(defun individuals-discourse-entry (i)
  (declare (special *description-lattice*))
  (unless (individual-p i)
    (error "Argument must be an individual.~%~A is not" i))
  (cond
   (*description-lattice*
    (get-history-of-mentions i))
   (t ;; conventional, rigid individuals
    (let* ((primary-category (car (indiv-type i)))
           (operations (cat-operations primary-category))
           (category-instantiated 
            (when operations (cat-ops-instantiate operations)))
           (entry 
            (when category-instantiated 
              (discourse-entry category-instantiated))))
      (when entry
        (assoc i entry :test #'eq))))))

(defun instance-history (individual)
  ;; alternative on Individuals-discourse-entry that just returns
  ;; the instances
  (declare (special *description-lattice*))
  (when *description-lattice*
    (break "The function instance-history has to be revised for "))
  (cdr (individuals-discourse-entry individual)))

(defun category-for-individuals-discourse-history (i)
  (cat-ops-instantiate 
   (cat-operations
    (car (indiv-type i)))))


;;;---------------
;;; initializing
;;;---------------

(defun initialize-discourse-history ()
  (declare (special *lifo-instance-list*))
  (setq *lifo-instance-list* nil
        *lattice-individuals-mentioned-in-paragraph* nil)
  (clrhash *objects-in-the-discourse*)
  (clrhash *lattice-individuals-to-mentions*))
 #| Attempting to deallocate the kconses is leading to circularities
    in the kcons resource, so for the moment just flushing the whole
    table and leaving it to GC to handle
  (maphash #'clear-discourse-history-entry
             *objects-in-the-discourse*))|#

(defun clear-discourse-history-entry (category category-entry)  ;; tag, value
  ;; deallocate the conses in the entry, then flush the entry
  (break " Stub: clearing discourse entry for category")
  ;(dolist (individual-entry category-entry)
  ;  (clear-individual-dh-entry individual-entry)
  ;  ;(break "after entry")
  ;  )
  (deallocate-klist category-entry)
  (break "after")
  (remhash category *objects-in-the-discourse*))


(defun clear-individual-dh-entry (klist)
  (let ((individual (kpop klist))
        (instance-records klist)
        data  start-data  end-data )
    (declare (ignore individual))
    (break "Stub: clearing individual's dh history: start")
    (dolist (record instance-records)
      (cond ((eq (car record) :display-index)
             (setq data (cdr record))
             (setq start-data (car data)
                   end-data (cdr data))
             (break "2")
             (deallocate-kons start-data)
             (deallocate-kons end-data)
             (break "3")
             (deallocate-kons data)
             (deallocate-kons record)
             (break "4"))

            ((position-p (car record))
             ;(deallocate-kons record)
             ;(break "a")
             )))
    ;(break "after do")
    ;(deallocate-klist instance-records)
    ))


;;;--------------------
;;; removing instances
;;;--------------------

(defun maybe-suppress-daughters-dh-entry (daughter parent)
  ;; called from Set-used-by
  (when (edge-p daughter)
    (when (individual-p (edge-referent daughter))
      (when (eq (edge-category parent) (category-named 'person))
        ;(break "1")
        ;(remove-history-of-instance/edge daughter)

      ))))

(defun remove-history-of-instance/edge (edge)
  ;; lookup the discourse history record corresponding to this instance
  ;; of the individual.
  (let ((individual (edge-referent edge)))
    (unless (individual-p individual)
      (break "Bad assumption: this operation only applies to ~
              individuals.~%However the referent of~%   ~A~
              ~%is~%   ~A" edge individual))
    (let ((entry (individuals-discourse-entry individual))
          (start-pos (pos-edge-starts-at edge))
          ;(end-pos (pos-edge-ends-at edge))  ?? do we need this check ??
          instance-record  instance-start )

      ;; prime the loop
      (setq instance-record (cadr entry)
            instance-start (car instance-record))

      (if (eq instance-start start-pos)
        ;; this operation will most frequently be applied to the
        ;; individual's most recent instance, so we do this short cut
        (then
          (rplacd entry (cddr entry))
          (when (null (cdr entry))
            ;; if that's all there is, then remove the whole entry
            ;; to this individual
           (remove-history-of-individual individual)))
        (else
          (break "Removing an instance of ~A~
                  ~%other than the most recent one.~
                  ~%Extend the algorithm." individual)))
      entry )))


(defun remove-history-of-individual (individual)
  ;; delete this individual's record from the discourse history entry
  ;; of its category
  (let* ((category (category-for-individuals-discourse-history individual))
         (entry (discourse-entry category)))
    ;; the entry is a klist
    (if (eq (first (car entry)) individual)
      (then
        (setf (gethash category *objects-in-the-discourse*)
              (cdr entry))
        ;(deallocate-kcons entry)  ;; might lead to circularity 
        )                          ;; holding off on testing (11/21/94)
      (let* ((cell-before entry)
             (cell (cdr entry))
             (sub-entry (car cell)))
        (loop
          (when (eq (car sub-entry) individual)
            (rplacd cell-before
                    (cdr cell))
            (return))
          (when (null cell)
            (break "couldn't find ~A~%on the discourse history entry ~
                    of ~A" individual category)
            (return))
          (setq cell-before cell
                cell (cdr cell)
                sub-entry (car cell)))))))





;;;--------------------------------
;;; effects of recycling positions
;;;--------------------------------

(defun long-term-ify/edge-referents/at (position-to-clear
                                        &key  workbench-active? )

  ;; Called from bump-&-store-word -- The position is the one about
  ;; to be recycled -- this means that references to its indexes
  ;; will become invalid, so we have to replace them with something
  ;; longer term.  If the workbench is up, we use the display indexes
  ;; into the text-view pane; othewise we use the token indexes.

  (when *position-array-is-wrapped*
    (let* ((ev (pos-starts-here position-to-clear))
           (edges-array (ev-edge-vector ev))
           (count (ev-number-of-edges ev))
           edge  referent )

      ;(format t "~&~%Converting ~A" position-to-clear)
      ;(when (= (pos-token-index position-to-clear) 54) (break))

      (when count
        (dotimes (i count)
          (setq edge (elt edges-array i))
          
          (unless (deactivated? edge)
            ;; As also checked for in the When below, if the edge resource
            ;; is recycling faster, then there will already have been a
            ;; call to long-term-ify so there's nothing for us to do.
            
            (setq referent (edge-referent edge))
            
            ;(when (= (pos-token-index position-to-clear) 54)
            ;  (format t "~&   count = ~A~
            ;             ~%    edge = ~A~
            ;             ~% individual? = ~A~%"
            ;          i edge (individual-p referent)))
            
            (unless (not (eq position-to-clear
                             (pos-edge-starts-at edge)))
              ;; The edge resource is recycling faster than the chart is
              ;; and so the long-termification of this edge has already
              ;; happened as part of that recycling. We move on to the
              ;; next iteration of this loop to look at the next edge,
              ;; which since it is longer, will be further ahead in the
              ;; edge resource and consequently might not yet have been
              ;; long-term-ified.
              
              (when (individual-p referent)
                (long-term-ify/individual referent workbench-active?
                                          (pos-edge-starts-at edge)
                                          (pos-edge-ends-at edge)))

              ;(format t "~&Deactivating e#~A because chart is recycling~%"
              ;        (edge-position-in-resource-array edge))
              (deactivate-edge edge (pos-edge-ends-at edge)))))))))



(defun long-term-ify-mention (mention)
  "Same idea a working with a conventional discourse entry
   in that we replace positions with their indexes. 
   The more important long-term location information is position
   in the article, which was recorded when the mention was made."
  (let* ((cons (mentioned-where mention))
         (start-pos (car cons))
         (end-pos (cdr cons)))
    (unless (integerp start-pos) ;; already done
      (setf (mentioned-where mention)
            (cons (pos-token-index start-pos)
                  (pos-token-index end-pos))))))

(defun long-term-mention? (mention)
  "Has this mention been converted to its long-term form?"
  (integerp (car (mentioned-where mention))))


(defun long-term-ify/individual (i workbench? start-pos end-pos)
  (declare (special *description-lattice*))
  (cond
   (*description-lattice*
    ;; 1st find the mention, then modify it.
    (let ((mentions (get-history-of-mentions i)))
      (push-debug `(,start-pos ,end-pos ,mentions ,i))
      (let ((m (search-mentions-by-position mentions start-pos end-pos)))
        (when m
          ;; if it's not there we're not going to have a problem
          ;; //// Ditto with the duplicates of 9/12/15
          (long-term-ify-mention m)))))
   (t ;; conventional individuals
    (let ((instances-record
           (cdr (individuals-discourse-entry i)))
          (start-index (if workbench? 
                         (pos-display-char-index start-pos)
                         (pos-token-index start-pos)))
          (end-index (if workbench?
                       (pos-display-char-index end-pos)
                       (pos-token-index end-pos))))

      (when (or (null start-index) (null end-index))
        (break "Display index/s is nil -- Some threading is bad.~%"))

      (when instances-record
        (dolist (cell instances-record
                      (already-long-term-ified? instances-record
                                                workbench?
                                                start-index
                                                end-index))       
          (when (eq (car cell) start-pos)
;          (when (eq *trace-discourse-history* (itype-of i))
;            (break "old person"))
 
            (rplaca cell :display-index)
            (rplacd cell (kcons start-index
                                end-index))
            (return))))))))



(defun already-long-term-ified? (instances-record workbench?
                                 start-index end-index)
  ;; there are occasions where there will be two edges at a given
  ;; position with the same referent, e.g. the word "one" gets spanned
  ;; with a 'number' edge and also a 'ones-number' edge, both of
  ;; which have the same referent (but different sets of rules that
  ;; they are part of).
  (dolist (cell instances-record
           (when workbench?
             (long-term-already-subsumed? instances-record
                                          start-index end-index)))
      (when (eq (car cell) :display-index)
        (when (equal (car (cdr cell)) start-index)
          (return)))))


;; Don't remember the point of this anymore, but as it doesn't
;; change any values, just making it dependent on the workbench
;; (in caller just above) and ignoring it. 9/16/13. 
(defun long-term-already-subsumed? (instances-record
                                    start-index end-index)
  ;; In particular, why are the indicies lists?
  (let ((display-start (car start-index))
        (display-end (car end-index))
        record-start  record-end )

    (dolist (cell instances-record
                  ;(break "couldn't find start-pos in instances-record")
                  )

      (unless (position-p (car cell))
        ;; this test only makes sense on cells that have already
        ;; been converted to display numbers

        (setq record-start (second cell)
              record-end (cddr cell))
        ;(break)
        (when (< (car record-start) ;; starts before
                 display-start)
          (when (>= (car record-end)
                    display-end)
            (return)))))))
  
      



;;;------------------
;;; Access protocols
;;;------------------

(defun most-recently-mentioned (c/dh)
  ;; called from respan-pn-with-most-recent-person-anaphor
  (if (null (cdr c/dh))
    ;; if there's only one, then it's trivially the most recent
    (caar c/dh)

    ;; The discourse history is for an entire category.
    ;; Each entry is (<individual> . <list of mentions,
    ;; most-recent first>). The mentions are (<start-pos> . <end-pos)
    ;; until the chart (or workbench display) recycles, when it
    ;; is (:display-index start-number . end-number) because the
    ;; positions are no longer meaningful. 

    (let ((candidates-entries
           (etypecase c/dh
             (cons  ;; we'll assume it's a discourse entry
              c/dh)
             (referential-category (discourse-entry c/dh))))
          (largest-index-so-far 0)
          individual  last-mention  nearest-individual-so-far  )

      (dolist (dh candidates-entries)
        (setq individual (first dh)
              last-mention (car (second dh)))  ;; start-pos of its edge
        ;(break "~a at ~a" individual last-mention)

        (unless (eq last-mention :display-index)
          ;; This mention is way out of bounds (the display has wrapped)
          ;; so we shouldn't use it.
          (when (> (pos-token-index last-mention)
                   largest-index-so-far)
            (setq largest-index-so-far (pos-token-index last-mention)
                  nearest-individual-so-far individual))))
      
      nearest-individual-so-far )))




(defun earliest-in-the-discourse (i1 i2)
  (declare (special *break-on-unexpected-cases*))
  (if (not (and (individual-p i1) (individual-p i2)))
    (then
      (when *break-on-unexpected-cases*
        (break "One (or both) of the arguments are not individuals:~
                ~%  ~A~%  ~A~%" i1 i2))
      i1 )

    (let ((entry1 (individuals-discourse-entry i1))
          (entry2 (individuals-discourse-entry i2)))

      (let ((1st-instance1 (car (last entry1)))
            (1st-instance2 (car (last entry2))))
        (push-debug `(,1st-instance1 ,1st-instance2))
        (break "Stub: check that the '1st instance' computation is ~
                correct and then finish this routine")))))


;;;----------
;;; printers
;;;----------

(defun object-types-in-discourse-history ()
  (let ( type-list )
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key type-list))
             *objects-in-the-discourse*)
    (sort type-list #'string< :key #'pname-of-category)))


(defun print-discourse-history (&optional (stream *standard-output*))
  (dolist (type (object-types-in-discourse-history))
    (format stream "~&~%~A:~%" type)
    (dolist (sub-entry (discourse-entry type))
      (format stream "~&   ~A   " (car sub-entry))
      (dolist (pos-cons (cdr sub-entry))
        (format stream "~30,3t~A-~A"
                (car pos-cons) (cdr pos-cons)))))
  (format stream "~%~%~%~%"))

(defun print-category-discourse-history (category 
                                         &optional (stream *standard-output*))
  (format stream "~&~%~A:~%" category)
  (dolist (sub-entry (discourse-entry category))
    (format stream "~&   ~A   " (car sub-entry))
    (dolist (pos-cons (cdr sub-entry))
      (format stream "~&~15,3t~a - ~a"
              (string-for-recycled-pos pos-cons)
              (string-for-recycled-pos pos-cons)))))

(defun string-for-recycled-pos (pos-cons)
  "Returns a compact string for the position with actual and
   absolute indexes"
  (if (eq (car pos-cons) :display-index) ;; position array wrapped
    (format nil "p~a" (cadr pos-cons))
    (let ((p (car pos-cons)))
      (let ((token-index (pos-token-index p))  ;; always extends
            (array-index (pos-array-index p))) ;; recycles
        (if (>= token-index *number-of-positions-in-the-chart*)
          (format nil "p~a(~a)" token-index array-index)
          (format nil "p~a" array-index))))))



;;;-----------------------------------
;;; filter out grammatical categories
;;;-----------------------------------

(defun irrelevant-category-for-dh (category i)
  ;; Return non-nil for any category that should not be recorded
  ;; in the discourse history. 
  (declare (ignore i)
           (special *irrelevant-to-discourse-history*))
  (unless *irrelevant-to-discourse-history*
    (populate-irrelevant-to-discourse-history))
  (let ((supers (super-categories-of category)))
    ;(push-debug `(,category ,i))
    ;(break "category = ~a~
    ;      ~%supers = ~a" category supers)))
    (loop for c in *irrelevant-to-discourse-history*
      when (memq c supers)
      do (when nil (format t "~&Ignoring ~a~%" i))
      (return-from irrelevant-category-for-dh t))
    nil))

