;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "objects"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 8/30/18

;; Molly 6/5/19
;; Notes now form a cyclic sequence.
;; Beats now specializes time-unit.
;; Defined step and octave, which specialize unit-of-measure
;; Defined pitch, which specializes region, so that we can support "moving" within it and incorporate its units of measure, octave and step.
;; Note sequence is always the same, but where you start changes depending upon key. Need to set key as a kind of loadable configuration where the 
;; starting note is set (like make-temporal-sequence grounds us using (today))

;; Call setup-musical-notes, make-note-sequence.

(in-package :sparser)


(defparameter *the-notes* '("A" "B" "C" "D" "E" "F" "G"))
(defparameter *note-sequence* '())


;;--- goes in upper-model

(define-category symbolic
  :specializes non-physical)


;;--- pitch as a region

(define-category pitch-region
  :instantiates nil
  :specializes abstract-region
  :realization (:common-noun "pitch")
  :documentation "Instantiating pitch as an abstract region, so that we can talk about moving 'up' or 'down' in pitch
  and make sense of its various intervals/units of measure - step, half-step, octave, etc.")


;;--- Music things

(define-category music-key
  :specializes symbolic
  :index (:permanent :key name :get)
  :binds ((note music-note)
          (accidental music-accidental)
          (in-region pitch-region)))


(define-category music-beat
  :specializes time-unit
  :mixins (part-of-a-sequence)
  :realization (:common-noun "beat"))

#| "everything before beat 2 of measure 1"
|# "between beats 1 and 3" 

(define-category music-measure
  :specializes symbolic
  :mixins (part-of-a-sequence  ;; fits into a larger sequence
            container ;; of note stuff 
            partonomic ;; comprised of parts 
            sequence ;;// alternative to partonomic
           )
  :bindings (part-type 'music-beat)
  ;;:restrict ((part-type beat))
  :realization (:common-noun "measure"))

(define-category music-bar
  :specializes symbolic
  :mixins (container 
           partonomic
           part-of-a-sequence
           sequence)
  :bindings (part-type 'music-beat)
  :realization (:common-noun "bar"))

;;--- intervals, tones, ...
;;--- Should these be units of measure? Seem like abstract units of measure within a "pitch" region, but I'm not sure.

(define-category music-step
  :specializes unit-of-measure
  :binds ((in-region pitch-region))
  :realization (:common-noun "step"))

(define-category music-half-step
  :specializes unit-of-measure
  :binds ((in-region pitch-region))
  :realization (:common-noun "half-step" :common-noun "1/2 step"))

(define-category octave
  :specializes unit-of-measure
  :binds ((in-region pitch-region))
  :realization (:common-noun "octave"))

;;--- notes

(define-category abstract-note
  :specializes symbolic
  :mixins (part-of-a-sequence) ;; "the fifth note" // but: "eigth", "sixteenth"
  :binds ((duration fractional-term)
          (accidental music-accidental)
          (in-region pitch-region)))

#| "the C4 quarter note"
   "the quarter note"
   "all the quarter notes"
   "a G4 quarter note"
   "the C quarter note"

Treat notes, rests, and pitch classes all the same in terms
of how they compose with other terms. 
|#

(define-category music-note
  :specializes abstract-note
  :mixins (cyclic part-of-a-sequence)
  :binds ((moves-in pitch-region) (flat music-flat) (sharp music-sharp))
  :lemma (:common-noun "note")
  :index (:permanent :key name :get)
  :realization (:common-noun name))

(define-category note-sequence 
  :specializes symbolic
  :mixins (sequence partonomic)
  :binds ((moves-in pitch-region))
  :bindings (part-type 'music-note)
  :realization (:common-noun name))

(define-category music-accidental
  :specializes music-note
  :binds ((base-note music-note)))

(define-category music-sharp
  :specializes music-accidental
  :restrict ((base-note music-note))
  :realization (:common-noun name))

(define-category music-flat
  :specializes music-accidental
  :restrict ((base-note music-note))
  :realization (:common-noun name))

(define-category music-rest
  :specializes abstract-note
  :realization (:common-noun "rest"))

(define-category music-pitch
  :specializes abstract-note
  :binds ((music-note music-note)
          (register number))
  :realization (:common-noun name))


(define-category note-length
  :specializes music-note
  :realization (:common-noun name))

;;;---Setup


(defun get-music-note (name)
  (if *description-lattice*
     (get-by-name category::music-note name)
    (find-individual 'music-note :name name)))


(defun make-note-sequence ()
  (let ((*sequence* (create-sequence *note-sequence*)))
  (old-bind-variable 'sequence *sequence* category::music-note)
  (old-bind-variable 'cycle-length 14 category::music-note)
  (thread-sequence *sequence*)))
    
(defun setup-musical-notes ()
  (let* ((letter-list *the-notes*) (all-notes '()))
    (loop for l in letter-list do (strip-single-term-rules l))
    (loop for l in letter-list
          as flat = (define-individual 'music-flat :name (string-append l "b"))
          as sharp = (define-individual 'music-sharp :name (string-append l "#"))
          as note = (define-individual 'music-note :name (resolve l) :flat flat :sharp sharp)
          do(bind-variable 'base-note note flat)
          do(bind-variable 'base-note note flat)
          do (push flat all-notes)
          do (push note all-notes)
          do (push sharp all-notes))
    (setq *note-sequence* (reverse all-notes))))


(defun setup-note-lengths ()
  (let* ((pw-strings
          (loop for s in '("whole" "half" "quarter"
                           "eighth" "sixteenth")
             collect (string-append s " note")))
         (polywords
          (loop for s in pw-strings collect (resolve/make s))))
    ;; Now instantiate the individuals. Because there's a
    ;; realization specification on the category this will
    ;; also setup the correponding grammar.
    (loop for pw in polywords
       collect (define-individual 'note-length
                   :name pw))))


(defun create-pitches (note-edge number-edge start-pos end-pos)
  "Called from resolve-ns-pattern when we get the pattern
   (:single-cap :single-digit) and the first edge is labeled
   'note'. As in the string 'C3'. We construct the individual
   here as though it had been parsed and formed compositionally."
  (let ((music-note (edge-referent note-edge))
        (register (edge-referent number-edge)))
    ;; Because we're called from the no-space machinery rather
    ;; than the application of a phrase structure rule, we have to
    ;; make the edge ourselves.
    (let* ((i (define-or-find-individual 'music-pitch
                  :music-note music-note :register register))
           (edge
            (make-binary-edge/explicit-rule-components
             note-edge
             number-edge
             :category (category-named 'music-pitch t)
             :rule-name 'create-music-pitch
             :form (category-named 'n-bar)
             :referent i)))
      edge)))

             
