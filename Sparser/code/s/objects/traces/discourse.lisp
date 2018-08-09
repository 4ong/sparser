;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2015-2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discourse"
;;;   Module:  "objects;traces:"
;;;  Version:  February 2015

;; initiated 7/92.  5/5/94 started removing flags to real files of TR traces.
;; 2/3/15 adding tr traces. 

(in-package :sparser)

;;;-----------
;;; questions
;;;-----------

(defparameter *trace-questions* nil)

(defun trace-questions ()
  (setq *trace-questions* t))

(defun untrace-questions ()
  (setq *trace-questions* nil))

(deftrace :wh-compose-wh-with-vp (q)
  (when *trace-questions*
    (trace-msg "[wh] compose-wh-with-vp created ~a" q)))

(deftrace :wh-make-pp-relative-clause (q)
 (when *trace-questions*
   (trace-msg "[wh] make-pp-relative-clause ~a" q)))

(deftrace :make-this-a-question (q)
  (when *trace-questions*
    (trace-msg "[wh] make-this-a-question-if-appropriate ~a" q)))

(deftrace :wh-initial-edge (edge q)
  (when *trace-questions*
    (trace-msg "[wh] delimited wh initial edge e~a for ~a"
               (edge-position-in-resource-array edge) q)))

(deftrace :wh-apply-question-marker (edge)
  (when *trace-questions*
    (trace-msg "[wh] apply-question-marker made e~a"
               (edge-position-in-resource-array edge))))

(deftrace :wh+individual-method (q)
  (when *trace-questions*
    (trace-msg "[wh] add-statement-to-wh-question ~a" q)))

(deftrace :wh-who (q)
  (when *trace-questions*
    (trace-msg "[wh] 'who' compose method: ~a" q)))

(deftrace :wh-what (q)
  (when *trace-questions*
    (trace-msg "[wh] 'what' compose method: ~a" q)))

(deftrace :wh-where (q)
  (when *trace-questions*
    (trace-msg "[wh] 'where' compose method: ~a" q)))

(deftrace :wh-when (q)
  (when *trace-questions*
    (trace-msg "[wh] 'when' compose method: ~a" q)))

(deftrace :wh-why (q)
  (when *trace-questions*
    (trace-msg "[wh] 'why' compose method: ~a" q)))

(deftrace :wh-how (q)
  (when *trace-questions*
    (trace-msg "[wh] 'how' compose method: ~a" q)))

(deftrace :wh-walk (fn-name)
  (when *trace-questions*
    (trace-msg "[wh] entering ~a" fn-name)))

(deftrace :wh-other-np (edge)
  (when *trace-questions*
    (trace-msg "[wh] wh-other: ~a" edge)))

(deftrace :wh-flag-status (preposed? wh-initial? edges)
  (when *trace-questions*
    (trace-msg "[wh]   preposed? = ~a~
              ~%       wh-initial? = ~a~
              ~%       ~a edges"
               preposed? wh-initial? (length edges))))


;;;---------------------
;;; discourse-structure
;;;---------------------

(defparameter *trace-discourse-structure* nil)

(defun trace-discourse-structure ()
  (setq *trace-discourse-structure* t))

(defun untrace-discourse-structure ()
  (setq *trace-discourse-structure* nil))

(deftrace :set-sentence-subject (edge sentence)
  ;; called from identify-salient-text-structure
  (when *trace-discourse-structure*
    (trace-msg "Setting e~a as the subject of ~a"
               (edge-position-in-resource-array edge)
               sentence)))
 


;;;------------------------------
;;; discourse history management
;;;------------------------------

(defparameter *trace-discourse-history-management* nil
  "Tracing addition or entension of individuals into
  the discourse history.")

(defun trace-history ()
  (setq *trace-discourse-history-management* t))
(defun untrace-history ()
  (setq *trace-discourse-history-management* nil))

(deftrace :adding-new-instance-of-category (i category)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] adding ~a, new instance of ~a"
               i category)))

(deftrace :adding-new-instance-of-known-object (i edge)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] Extending reference to ~a~
              ~%     to be between p~a and p~a" i
              (pos-token-index (start-pos edge))
              (pos-token-index (end-pos edge)))))

(deftrace :extending-with-subsuming-instance (i edge)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] adding another reference to ~a~
              ~%     between p~a and p~a" i
              (pos-token-index (start-pos edge))
              (pos-token-index (end-pos edge)))))

;;--- dl variants

(deftrace :extending-dh-entry (i)
  ;; top of lattice-individuals-extend-dh-entry
  (when *trace-discourse-history-management*
    (trace-msg "[DH] adding ~a to its category's entry" i)))

(deftrace :extending-with-subsuming-instance/dl (i j edge)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] i~a is a specialization of ~a ~
              ~%   on larger edge between p~a and p~a" 
               (indiv-uid i) j
               (pos-token-index (start-pos edge))
               (pos-token-index (end-pos edge)))))

(deftrace :exending-span-of-mention (m edge)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] extending span of ~a to p~a:p~a"
               m
               (pos-token-index (start-pos edge))
               (pos-token-index (end-pos edge)))))
  

;;--- Mentions

(deftrace :creating-category-dh-entry (category i edge)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] i~a b/w p~a and p~a is 1st entry for ~a"
               (indiv-uid i) 
               (pos-token-index (start-pos edge))
               (pos-token-index (end-pos edge))
               category)))

(deftrace :made-mention (m)
  (when *trace-discourse-history-management*
    (let* ((i (base-description m))
           (category (itype-of i)))
      (trace-msg "[DH]  mention of a ~a: ~a" 
                 (cat-symbol category)  m))))
(deftrace :making-new-mention (m)
  ;; in make-new-mention just after it's created
  (when *trace-discourse-history-management*
    (trace-msg "[DH] new mention: ~a" m)))




;;;-------------------
;;; flags set by hand
;;;-------------------

(defparameter *trace-discourse-heuristics* nil
  "Miscelaneous lag read in several spots within the grammar.")


(defparameter *trace-conjunction* nil
  "Flag read in the CA search routines for conjunctions")


(defparameter *trace-discourse-history* nil
  "Flag read as objects are entered into or accessed from the
   discourse history.")

(defparameter *trace-pronominalization* nil
  "Flag read in pronominalization routines")

(defparameter *trace-individuals* nil
  "Flag read in subsequent and initial reference routines.")



(defparameter *trace-parentheses* nil
  "Flag read in the parentheses traversal routines")

(defparameter *trace-paragraphs* nil
  "Flag read in the section-marker code that handles the
   basic definition of paragraphs.")

