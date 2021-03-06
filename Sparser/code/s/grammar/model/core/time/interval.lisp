;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interval"
;;;   Module:  "model;core:time:"
;;;  version:  April 2016

;; initiated 7/18/13
;;a category to represent intervals
;;e.g. "between five and seven o'clock", "from Wednesday to Friday"
;; Giving it some flesh 5/30/14 -- hacked for "before today"
;; Renamed category 'time-interval' 4/1/16 because interval is
;; a nice term better used elsewhere. 

(in-package :sparser)


(define-category  time-interval
  ;; What other sorts of 'intervals' are there?
  :specializes time) ;; or is it amount-of-time?


;;//// Look up Allen's relations
;; But for this relationship following the pattern in relative-time
(define-category closed-interval/end ;; on one side
  :specializes time-interval
  :instantiates time-interval
  :rule-label time ;; because it's going to be a clause adjunct
  :binds ((ends-at . time)
          (modifier)) ;;/// refine that name
  :index (:sequential-keys ends-at modifier))

;;/// Right now, as an exercise, getting these from
;; a relative-time by way of sequencer+date method
;; in relative-moments file. Could obviously have their
;; own realization provided one could tell from just
;; the semantic labels composing what sort of interval
;; we had. That might well entail a method to make the
;; discrimination.
