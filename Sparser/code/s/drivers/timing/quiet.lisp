;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "quiet"
;;;   Module:  "drivers;timing:"
;;;  Version:  April 2018

;; file created 4/23/18 to consolidate functions that turn-off output.

(in-package :sparser)

;;--- Written for suppressing all printing when running large test sets

(defmacro with-total-quiet (&body body)
  `(let (;;(*readout-relations* nil)
         (*readout-segments* nil)
         (*readout-segments-inline-with-text* nil) ;; quiet
         (*show-article-progress* nil) ;; document handling
         ;; (*show-section-printouts* nil)
         (*display-word-stream* nil)
         (*trace-lexicon-unpacking* nil)
         (*trace-morphology* nil)
         (*workshop-window* t)) ;; block tts in p
     (declare (special *readout-relations* *readout-segments*
                       *show-article-progress* #|*show-section-printouts*|# 
                       *readout-segments-inline-with-text*
                       *display-word-stream*
                       *trace-lexicon-unpacking* *trace-morphology*
                       *workshop-window*))
     ,@body))



;;--- older version with largely orthogonal effects. Designed to
;; lighten processing burden when timing runs.

(defmacro with-inessentials-turned-off (&body body)
  `(let ((*display-word-stream* nil)
         (*recognize-sections-within-articles* nil)
         (*newline-delimits-paragraphs* nil)
         (*do-strong-domain-modeling* nil)  ;; Have to turn all of these
         (*reify-implicit-individuals* nil) ;; off explicitly given how
         (*note-text-relations* nil)  ;; after-action-on-segments is pre-set
         (*after-action-on-segments* 'normal-segment-finished-options)
         (*debug* nil) ;; disables push-debug
         )
     (declare (special *display-word-stream*
                       *recognize-sections-within-articles*
                       *newline-delimits-paragraphs*
                       *do-strong-domain-modeling*
                       *reify-implicit-individuals*
                       *note-text-relations*
                       *after-action-on-segments*
                       *debug*))
     ,@body))


;;--- selected parts of those used when macros can't be.

(defun turn-off-inessentials ()
  (setq *readout-segments-inline-with-text* nil))

(defun turn-on-inessentials ()
  (setq *readout-segments-inline-with-text* t))
