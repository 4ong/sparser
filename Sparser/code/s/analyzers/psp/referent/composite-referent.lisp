;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2005,2012-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "composite referent"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   0.1 November 2012

;; initiated 4/12/00. Extended through 5/4.
;; 0.1 (2/9/05) Can't remember what this helped to do. Perhaps it's involved with
;;   annotation. So commenting out the structure to see what breaks. Added
;;   and ignore 11/25/12 to quiet the compiler.
;; 0.2 (1/27/14) These go with the paper in the ACL 2000 workshop. Putting them
;;   back in to further quiet the compiler while not yet using them. 

;;;---------
;;; object
;;;---------

(defstruct (composite-referent
            (:conc-name #:cr-)
            (:print-function print-composite-referent))

  head

  others

  )


(defun print-composite-referent (cr stream depth)
  (declare (ignore depth cr))
  (format stream "#<composite >"))


;;;----------------------------------
;;; accessors (various entry points)
;;;----------------------------------

(defun all-the-categories-in-a-composite (composite)
  (unless (typep composite 'composite-referent)
    (error "Threading error: ~a isn't a composite" composite))
  #+ignore
  (let ( categories )
    (push (category-of (cr-head composite)) categories)
    (dolist (referent (cr-others composite))
      (push (category-of referent) categories))
    (nreverse categories)))
