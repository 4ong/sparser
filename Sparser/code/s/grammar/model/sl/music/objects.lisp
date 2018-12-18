;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "objects"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 8/30/18

(in-package :sparser)


;;--- goes in upper-model

(define-category symbolic
  :specializes non-physical)


;;--- Music things

(define-category beat
  :specializes symbolic
  :mixins (part-of-a-sequence)
  :realization (:common-noun "beat"))

(define-category measure
  :specializes symbolic
  :mixins (container ;; of note stuff
           partonomic ;; comprised of parts
           part-of-a-sequence ;; fits into a larger sequence
           sequence ;;// alternative to partonomic
           )
  :bindings (part-type 'beat)
  ;;:restrict ((part-type beat))
  :realization (:common-noun "measure"))

;;--- intervals, tones, ...

(define-category step
  :specializes symbolic
  :realization (:common-noun "step"))

;;--- accidentals

(define-category accidental
  :specializes symbolic)

;;--- notes

(define-category abstract-note
  :specializes symbolic
  :mixins (part-of-a-sequence) ;; "the fifth note" // but: "eigth", "sixteenth"
  :binds ((duration factional-term)
          (pitch (:or note pitch-class))
          (accidental accidental)))

#| "the C4 quarter note"
   "the quarter note"
   "all the quarter notes"
   "a G4 quarter note"
   "the C quarter note"

Treat notes, rests, and pitch classes all the same in terms
of how they compose with other terms. 
|#

(define-category note
  :specializes abstract-note
  :realization (:common-noun "note"))

(define-category rest
  :specializes abstract-note
  :realization (:common-noun "rest"))

(define-category pitch-class
  :specializes abstract-note)

(defun setup-musical-notes ()
  (let* ((letter-list '("A" "B" "C" "D" "E" "F"))
         (words (loop for l in letter-list collect (resolve l))))
    (loop for l in letter-list do (strip-single-term-rules l))
    (break "words ?")

    ;; Notes per se
    (let* (;;(words (loop for l in letter-list collect (resolve/make l)))
           (notes (loop for w in words
                     collect (define-individual 'note
                                 :name w))))
      ;; accidentals
      (let ((sharp-strings (loop for l in letter-list
                              collect (string-append l "#")))
            (flat-strings (loop for l in letter-list
                             collect (string-append l "b")))
            (shart (define-individual 'accidental :name "starp"))
            (flat (define-individual 'accidental :name "flat")))
        

    ;; selected pitch classes
 ))))


#|
(define-category note-length
  :specializes symbolic
  :realization (:common-noun name))

(defun setup-note-lengths ()
  (let* ((pw-strings
          (loop for s in '("whole" "half" "quarter"
                           "eight" "sixteenth")
             collect (string-append s " note")))
         (polywords
          (loop for s in pw-strings collect (resolve/make s))))
    ;; Now instantiate the individuals. Because there's a
    ;; realization specification on the category this will
    ;; also setup the correponding grammar.
    (loop for pw in polywords
       collect (define-individual 'note-length
                   :name pw))))

(eval-when (#|:compile-toplevel|# :load-toplevel :execute)
  (setup-note-lengths))
|#


(defvar *words-to-deleted-rules* (make-hash-table :test #'eq))

(defgeneric strip-single-term-rules (label)
  (:documentation "Remove every single-term rewrite rule from
    the word. Presumably because we want to define something else
    with it that the other rules are presently irrelevant.
    Motivating case is the single-capitalized-letter 'E' which 
    besides being a single-capitalized-letter (e.g. to use with
    a person's initials) it is also the short form of the
    direction 'east'.")
  (:method ((pname string))
    (strip-single-term-rules (word-named pname)))
  (:method ((ignore null)) ;; one of the transforms returned nil
    nil)
  (:method ((w word))
    (strip-single-term-rules (rule-set-for w)))
  (:method ((pw polyword))
    (strip-single-term-rules (rule-set-for pw)))
  (:method ((rs rule-set))
    (let ((rules (rs-single-term-rewrites rs))
          (word (rs-backpointer rs)))
      (when rules
        (setf (get-tag :deleted-rules word) rules)
        (setf (gethash word *words-to-deleted-rules*) rules)
        (loop for r in rules do (delete/cfr r))))))
