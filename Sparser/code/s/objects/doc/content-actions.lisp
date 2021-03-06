;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-methods"
;;;   Module:  "objects;doc;"
;;;  Version:  August 2019

#| Created 8/27/19 to move general action out of content-methods.lisp
and make that file easier to understand. |#

(in-package :sparser)

;;;---------------------------------------------------
;;; Action hook for after a document element finishes
;;;---------------------------------------------------

(defparameter *apply-document-after-actions* t
  "Gates whether to run after actions. Makes it possible to commit
  the file while they're still being debugged.")

(defparameter *run-aggregation-after-action* t
  "Gates call to aggregate-bio-terms in the paragraph after-
   actions. Exposed subtle bugs 1/4/16 so want to only run it
   deliberately to look at those bugs.")

(defgeneric after-actions (document-element)
  (:documentation "Carry out the actions to be taken when all of
     the children of a given document element have been read."))

(defmethod after-actions ((p paragraph))
  (when *apply-document-after-actions*
    (let ((*current-paragraph* p))
      (declare (special *current-paragraph*))
      (when *run-aggregation-after-action*
        (aggregate-bio-terms p))
      (assess-sentence-analysis-quality p)
      (collect-text-characteristics p)
      (make-mentions-long-term)))) ; zero's the list in the lattice

(defmethod after-actions ((te title-text))
  (when *apply-document-after-actions*
    ;;/// should it also bind *current-paragraph* ?
    (make-mentions-long-term)
    ;;(push-debug `(,te))
    ;;(lsp-break "after parsing ~a" te)
    (when *run-aggregation-after-action*
      (aggregate-bio-terms te))
    (assess-sentence-analysis-quality te)))

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
  (add-bio-term-counts s)
  (sort-bio-terms s (contents s))
  s)


      
;;;----------------------------------------------
;;; convenience accessors to parts of an article
;;;----------------------------------------------

(defgeneric paragraphs-in-doc-element (document-element)
  (:documentation "Locate and return a list of all the paragraph
 objects at or below the indicated document-element")
  (:method ((p paragraph))
    (list p))
  (:method ((tt title-text)) nil)
  (:method ((a article))
    (loop for child in (children a)
       append (paragraphs-in-doc-element child)))
  (:method ((s section))
    (loop for child in (children s)
       append (paragraphs-in-doc-element child)))
  (:method ((ss section-of-sections))
    (loop for child in (children ss)
       append (paragraphs-in-doc-element child))))

(defun find-paragraphs-containing-string (string document-element)
  (loop for p in (paragraphs-in-doc-element document-element)
     when (search string (content-string p))
     collect p))


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


;;;-------------------
;;; table of contents
;;;-------------------

;; Based on the indexed class

(defgeneric set-document-index (doc-element number-or-letter)
  (:documentation "Sets the identifying index and accumulated
     table of contents on the document element (it's parents)
     if that has not already been done. 
     Called by the read-from-document for each element type."))

(defmethod set-document-index (element index)
  (declare (ignore element index)))

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
      ;; The problem these checked for has been fixed,
      ;; but that's not to say some change might bring it back
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent ss))
      (setf (doc-index ss) index)
      (setf (toc-index ss)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s section) index)
  ;; The index is a letter.
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent s))
      (setf (doc-index s) index)
      (setf (toc-index s)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((tt title-text) index)
  (unless (toc-index tt)
    (let* ((parent (parent tt))
           (parent-toc (toc-index parent)))
      (setf (doc-index tt) index)
      (setf (toc-index tt)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((p paragraph) (index integer))
  (unless (toc-index p)
    (let* ((parent (parent p))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent p))
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
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent p))
      (setf (doc-index p) index)
      (setf (toc-index p)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s sentence) (index integer))
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent s))
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
    (let ((s (identify-current-sentence t)))
      (when s (toc-index s)))))
