;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2017-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "deictic times"
;;;   Module:  "model;dossiers:"
;;;  version:  February 2018

;; initiated 7/8/93 v2.3.  Added another set 5/24/94.
;; 0.1 (10/19) promulgated the revised conceptalization

(in-package :sparser)

(define-calulated-time "now")
(define-calculated-day "today" 'today)
(define-calculated-day "tomorrow" 'tomorrow)
(define-calculated-day "yesterday" 'yesteray)


