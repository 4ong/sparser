;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content-methods"
;;;   Module:  "objects;doc;"
;;;  Version:  January 2016

;; Created 5/12/15 to hold the container mixings and such that need
;; to have the document model elements already defined so they can
;; be referred to. 5/27/15 Subject is now the referent rather than
;; the edge. 6/8/15 Added get-element methods and began to play with
;; after methods. 6/10/15 Added paragraph aggregator. 9/8/15 added
;; long-term-ifying mentions to paragraph. 11/3/15 Added local dynamic
;; bindings of the current document element to facilitate debugging.
;; 1/4/16 gating call to paragraph-level aggregation


(in-package :sparser)

;;;---------------------------------------------------
;;; Action hook for after a document element finishes
;;;---------------------------------------------------

(defparameter *apply-document-after-actions* t
  "Gates whether to run after actions. Makes it possible to commit
  the file while they're still being debugged.")

;; (setq *apply-document-after-actions* t)

(defgeneric after-actions (document-element)
  (:documentation "Carry out the actions to be taken when all of
     the children of a given document element have been read."))

(defparameter *run-aggregation-after-action* t
  "Gates call to aggregate-bio-terms in the paragraph after-
   actions. Exposed subtle bugs 1/4/16 so want to only run it
   deliberately to look at those bugs.")

(defmethod after-actions ((p paragraph))
  (when *apply-document-after-actions*
    (let ((*current-paragraph* p))
      (declare (special *current-paragraph*))
      (make-mentions-long-term)
      (when *run-aggregation-after-action*
        (aggregate-bio-terms p))
      (assess-sentence-analysis-quality p))))

(defmethod after-actions ((s section))
  (when *apply-document-after-actions*
    (let ((*current-section* s))
      (declare (special *current-section*))
      (do-section-level-after-actions s))))

(defmethod after-actions ((ss section-of-sections))
  (when *apply-document-after-actions*
    (let ((*section-of-sections* ss))
      (declare (special *section-of-sections*))
      (do-section-level-after-actions ss))))

(defmethod after-actions ((a article))
  (when *apply-document-after-actions*
    (let ((*current-article* a))
      (declare (special *current-article*))
      (do-section-level-after-actions a))))


(defun do-section-level-after-actions (s)
  (summarize-parse-performance s)
  (summarize-bio-terms s))



;;;------------------------------------
;;; aggregating entities and relations
;;;------------------------------------

(defgeneric summarize-bio-terms (document-element)
  (:documentation "The sentence's contents have aggregated into
     instances of aggregated-bio-terms on their paragraphs. 
     At levels above the paragraph we just lump all of that content
     together without doing anything more interesting (for now)."))

(defmethod summarize-bio-terms ((s section))
  s)

(defmethod summarize-bio-terms ((ss section-of-sections))
  ss)

(defmethod summarize-bio-terms ((a article))
  a)
  

;;--- sentences => paragraph contents

(defclass aggregated-bio-terms ()
  ((proteins :initform nil :accessor aggregated-proteins)
   (residues :initform nil :accessor aggregated-residues)
   (bio-processes :initform nil :accessor aggregated-processes)
   (other :initform nil :accessor aggregated-other))
  (:documentation "Collects the entities and relations of
     the document layer below them summarizes them as
     tables of individuals and their count."))

(defmethod aggregate-bio-terms ((p paragraph))
  "Collect the raw lists of entities and relations from 
  the sentences of the paragraph and distribute them
  into buckets (slots on the content object) at whatever
  degree of delicacy seems the most useful."
  (let ((sentences (sentences-in-paragraph p)))
    ;;/// something should attend to the topic sentence
    (dolist (s sentences)
      (aggregate-sentence-bio-terms s p)
      (sort-bio-terms p (contents p)))))


(defun aggregate-sentence-bio-terms (s p)
  (aggregate-terms p (get-entities s))
  (aggregate-terms p (get-relations s)))

(defun aggregate-terms (paragraph terms)
  (when terms
    (let ((c (contents paragraph)))
      (dolist (term terms)
        (let ((slot (aggregation-target term)))
          (when slot
          (let ((bucket (slot-value c slot)))
            (cond
             ((null bucket)
              (let* ((entry `(,term . 1))
                     (bucket `( ,entry  )))
                (setf (slot-value c slot) bucket)))
             (t
              (let ((entry (when bucket (get-from-bucket term bucket))))
                (if entry
                  (incf-bucket-entry entry)
                  (make-bucket-entry term bucket slot c))))))))))))

(defun aggregation-target (i)
  ;; Return the name of the slot that this individual 
  ;; should be added to.
  (typecase i
    (individual
     (cond
      ((itypep i 'bio-process) 'bio-processes)
      ((or (itypep i 'protein)
           (itypep i 'human-protein-family))
       'proteins)
      ((itypep i 'residue-on-protein) ;; or other regions
       'residues)
      ;; Could consider mutations, drugs, cell-lines, what else?
      (t 'other)))
    (category ;; really ignore them?
     nil)
    (otherwise
     (error "Unexpected type of thing passed to aggregation-target: ~
             ~a~%  ~a" (type-of i) i))))

(defun get-from-bucket (term bucket)
  (assq term bucket))

(defun incf-bucket-entry (entry)
  (incf (cdr entry)))

(defun make-bucket-entry (term bucket slot-name contents-instance)
  ;; bucket exists. Need to add this term to it
  (let* ((entry `(,term . 1))
         (new-bucket-value (cons entry bucket)))
    (setf (slot-value contents-instance slot-name)
          new-bucket-value)))

;;;--------------------------------
;;; how well is our analysis doing
;;;--------------------------------

(defclass sentence-parse-quality ()
  ((great :initform 0 :accessor parses-with-one-edge
    :documentation "Number of sentences in the doc element
      that were spanned by one edge.")
   (medium :initform 0 :accessor medium-quality-parses
    :documentation "Number of sentences in the doc element
      that were spanned by 2 to 5 edges.")
   (horrible :initform 0 :accessor horrible-parses
    :documentation "Number of sentences in the doc element
      that were spanned by more than 5 edges."))
  (:documentation "Compute measures of how well we are doing
    in reading. At the sentence level and aggregated at
    higher levels of document structure."))

(defclass sentence-tt-counts ()
  ((count-list :initform '()
               :accessor sentence-tt-count
               :documentation "The counts for each sentence in a paragraph")))
   
(defmethod assess-sentence-analysis-quality ((p paragraph))
  (let* ((sentences (sentences-in-paragraph p))
         (content (contents p))
         (tt-list (loop for s in sentences
                    collect (get-tt-count s))))
    (setf (sentence-tt-count content) tt-list)))
    

(defun grade-sentence-tt-counts (paragraph quality)
  (let ((count-list (sentence-tt-count (contents paragraph))))
    (loop for count in (when (consp count-list) count-list) ;; not sure why this was 0 and not a list in some cases
      when (= 1 count) do (incf (parses-with-one-edge quality))
      when (and (> count 1) (<= count 5))
           do (incf (medium-quality-parses quality))
       when (> count 5) do (incf (horrible-parses quality)))))

(defun add-parse-quality-grades (source sink)
  "Expects to be part of a loop where the sink content object
   is added to by a sucession of sources"
  (let ((current-great (parses-with-one-edge sink))
        (current-medium (medium-quality-parses sink))
        (current-horrible (horrible-parses sink)))
    (setf (parses-with-one-edge sink)
          (+ current-great (parses-with-one-edge source)))
    (setf (medium-quality-parses sink)
          (+ current-medium (medium-quality-parses source)))
    (setf (horrible-parses sink)
          (+ current-horrible (horrible-parses source)))))

(defun aggregate-parse-performance (doc-element content)
  "Add the 'grades' of each of the children to the grades
   in the sentence-parse-quality fields of this level."
  (when (typep content 'sentence-parse-quality)
    ;; rule out title-text and such the caller could feed us
    (dolist (child (children doc-element))
      (let ((child-content (contents child)))
        (when (typep child-content 'sentence-parse-quality)
          (add-parse-quality-grades child-content content))))))
             
(defmethod summarize-parse-performance ((e document-element))
  (let ((content (contents e))
        (children (children e)))
    (when (typep content 'sentence-parse-quality)
      (dolist (child children)
        (typecase child
          (paragraph
           (grade-sentence-tt-counts child content))
          ((or section section-of-sections article)
           (aggregate-parse-performance e content)))))))

(defun show-parse-performance (doc-element
                               &optional (stream *standard-output*))
  (let ((content (contents doc-element)))
    (if (not (typep content 'sentence-parse-quality))
      (format stream "~a does not record parse quality" doc-element)
      (let ((great (parses-with-one-edge content))
            (medium (medium-quality-parses content))
            (horrible (horrible-parses content)))
        (format stream "~&~a: ~a, ~a, ~a~%"
                doc-element great medium horrible)))))

          
      
;;;----------------------------------------------
;;; convenience accessors to parts of an article
;;;----------------------------------------------

(defmethod sections-in-article ((a article))
  (children a))

(defmethod has-paragraphs? ((s has-children))
  (some #'(lambda (c) (typep c 'paragraph))
        (children s)))

(defmethod has-subsections? ((s has-children))
  (some #'(lambda (c) (typep c 'section))
        (children s)))

(defmethod nth-child ((n integer) (a has-children))
  ;; Argument is 1-based, so needs conversion to
  ;; zero-based
  (nth (1- n) (children a))) ;; what else could it be?

(defmethod first-section ((a article))
  (first (children a)))
(defmethod first-section ((ss section-of-sections))
  (loop for c in (children ss)
    when (typep c 'section) return c))

(defmethod first-paragraph ((a article))
  (first-paragraph (first-section a)))
(defmethod first-paragraph ((s section))
  (cond
   ((has-paragraphs? s)
    (loop for c in (children s)
      when (typep c 'paragraph) return c))
   ((has-subsections? s)
    (first-paragraph (first-section s)))))

(defmethod sentences-in-paragraph ((p paragraph))
  ;; They chain off the child. ////elevate?
  (let* ((s1 (children p))
         (sentences (list s1))
         (s s1)
         next )
    (loop 
       (unless (and
		(slot-boundp s 'next)
		(next s)) ;; had a NULL next in articel 23 of June -- should investigate
        (return))
      (setq next (next s))
      (when (string-equal (sentence-string next) "")
        (return))
      (setq s next)
      (push s sentences))
    (nreverse sentences)))


;;;----------------------------------
;;; what did we find in the sentence
;;;----------------------------------

(defclass entities-and-relations ()
  ((entities :initform nil :accessor entities-in-sentence)
   (relations :initform nil :accessor relations-in-sentence)
   (treetop-count :initform 0 :accessor treetops-in-sentence))
  (:documentation "Copies the output of identify-relations
     from the post-analysis-operations function. Note that
     this is dependent on the *readout-relations* flag.
     Treetop count is simple by-product of the e/r calculation."))

(defmethod set-entities ((s sentence) (list list))
  (setf (entities-in-sentence (contents s)) list))
(defmethod set-relations ((s sentence) (list list))
  (setf (relations-in-sentence (contents s)) list))
(defmethod set-tt-count ((s sentence) (number integer))
  (setf (treetops-in-sentence (contents s)) number))

(defmethod get-entities ((s sentence))
  (entities-in-sentence (contents s)))
(defmethod get-relations ((s sentence))
  (relations-in-sentence (contents s)))
(defmethod get-tt-count ((s sentence))
  (treetops-in-sentence (contents s)))
  


;;;----------------------------------------------
;;; functionally salient aspects of the sentence
;;;----------------------------------------------

(defclass sentence-text-structure ()
  ((subject :initform nil :accessor sentence-subject
    :documentation "The subject of the sentence if we
     were able to identify it."))
  (:documentation
   "Provides long-term representation of the contents of
    the sentence that will be relevant to later sentences.
    Alusion to the NLG notion of text structure."))

(defmethod set-sentence-subject ((e edge) (s sentence))
  (let ((referent (edge-referent e)))
    ;;/// should we insist that it be an individual ?
    (setf (sentence-subject (contents s)) referent)))

(defmethod get-sentence-subject ((s sentence))
  (sentence-subject (contents s)))

(defmethod get-sentence-subject ((ignore null))
  nil)


;;;--------------------------
;;; ordered list of entities
;;;--------------------------

(defclass sentence-discourse-history ()
  ((individuals :accessor sentence-individuals
    :documentation "This is a version of *lifo-instance-list* 
     that been reversed to that is in left-to-right order
     and had its edges removed.")))

(defmethod set-discourse-history ((s sentence) (history t))
  (setf (sentence-individuals (contents s)) history))
          


;;;---------------------
;;; status of the parse
;;;---------------------

(defclass parsing-status ()
  ((level-completed :initarg :level :accessor level-completed
    :documentation "The parsing is tiered into successive levels
      of analysis. Which one have we completed for this level of
      document structure?
      Possible values:
        :initial  -- we're at the start of the sentence and
                   haven't scanned any part of it.
        :scanned -- we've run scan-terminals-loop over it
        :chunked -- we've run the phrase delimiter over it"))
  (:documentation "Used by period-hook to keep track of what
     phase it's in. Less used now (11/14) because more of the
     multi-pass-over-sentence control is organized as direct
     calls."))

(defmethod set-sentence-status ((s sentence) (keyword symbol))
  (let ((c (contents s))) ;; for debugging
    (set-sentence-status c keyword)))

(defmethod set-sentence-status ((s parsing-status) (keyword symbol))
  (setf (level-completed s) keyword))

(defmethod parsing-status ((s sentence))
  (parsing-status (contents s)))

(defmethod parsing-status ((s parsing-status))
  (level-completed s))



;;;----------------------------
;;; records of delayed actions
;;;----------------------------

#| This is for remembering that there are operations that
we need to do but couldn't do (or by policy decided not to do)
while we were in the process of parsing a sentence. When the
sentence has finished (see the function post-analysis-operations)
we ought to have enough context to carry these out.
   The first example is definite NPs. The record is laid down
by the syntax function determiner-noun and the reader (presently)
is a case in handle-any-anaphor
|#
(defclass records-of-delayed-actions ()
  ((pending-definite-references
    :initform nil :accessor pending-def-references
    :documentation "A list of any edges that were appreciated
      to be definite references that we consider trying to
      identify referents for. See determiner-noun for any
      adjustments to what's stored.")
   (pending-partitives
    :initform nil :accessor pending-partitive-references
    :documentation "A list of any edges that were appreciated
      to be partitive references of the form <quantifier> of <definite-NP>."))
  
  (:documentation "Each field is a kind of phenomena that
    we can't make a decision about. The simplest thing to
    put in them is probably the edge that's the locus of
    the issue, but it's really a decision between the recorder
    and the function that reads the record."))

(defmethod add-pending-def-ref (determiner (e edge) (s sentence))
  (let ((contents (contents s)))
    ;; have to include determiner -- there is a difference between
    ;; "the proteins", "these proteins" and "those proteins", all of which
    ;; are definite references
    (push (list determiner e) (pending-def-references contents))))

(defmethod pending-definite-references ((s sentence))
  (pending-def-references (contents s)))

(defun has-definite-determiner? (edge)
  (declare (special *sentence-in-core*))
  (unless *sentence-in-core*
    (error "Threading bug. No value for *sentence-in-core*"))
  (member edge (pending-definite-references *sentence-in-core*) :key #'second))



(defun update-definite-determiner (edge)
  (declare (special *all-np-categories* *sentence-in-core*))
  (when (and
	 *sentence-in-core*
	 (edge-form edge)
	 (member (cat-symbol (edge-form edge)) *all-np-categories*))
    (loop for pair in (pending-definite-references *sentence-in-core*)
       when
	 (or (eq (second pair) (edge-left-daughter edge))
	     (eq (second pair) (edge-right-daughter edge)))
       do
	 (setf (second pair) edge)
	 (return t))))

(defmethod add-pending-partitive (quantifier (e edge) (s sentence))
  (let ((contents (contents s)))
    (push (list quantifier e) (pending-partitive-references contents))))

(defmethod pending-partitives ((s sentence))
  (pending-partitive-references (contents s)))



;;;-------------------
;;; table of contents
;;;-------------------

;; Based on the indexed class

(defgeneric set-document-index (doc-element number-or-letter)
  (:documentation "Sets the identifying index and accumulated
     table of contents on the document element (it's parents)
     if that has not already been done. 
     Called by the read-from-document for each element type."))

(defmethod set-document-index ((a article) index)
  (declare (ignore index))
  (unless (toc-index a)
    (setf (doc-index a) (name a))
    (setf (toc-index a)
          (format nil "~a" (name a)))))

(defmethod set-document-index ((ss section-of-sections) (index integer))
  (unless (toc-index ss)
    (let* ((parent (parent ss))
           (parent-toc (toc-index parent)))
      (setf (doc-index ss) index)
      (setf (toc-index ss)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s section) index)
  ;; The index is a letter.
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      (setf (doc-index s) index)
      (setf (toc-index s)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((p paragraph) (index integer))
  (unless (toc-index p)
    (let* ((parent (parent p))
           (parent-toc (toc-index parent)))
      (setf (doc-index p) index)
      (setf (toc-index p)
            (format nil "~a.p~a" parent-toc index)))))

(defmethod set-document-index ((p paragraph) index)
  ;; If the document has a complex abstract, the document structure
  ;; gets out of sync and thinks it is operating on a section
  ;; when it's actually got a paragraph
  (unless (toc-index p)
    (let* ((parent (parent p))
           (parent-toc (toc-index parent)))
      (setf (doc-index p) index)
      (setf (toc-index p)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s sentence) (index integer))
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      (setf (doc-index s) index)
      (setf (toc-index s)
            (format nil "~a.s~a" parent-toc index)))))

(defun location-in-article-of-current-sentence ()
  "Looks up the sentence we are presently working on
  and returns its document index. Only makes sense if
  we are working through a document that supports the
  toc classes (as above), so returns nil if we aren't"
  (declare (special *reading-populated-document*))
  (when *reading-populated-document*
    (let ((s (identify-current-sentence)))
      (toc-index s))))


