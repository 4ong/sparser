;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2014-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tokenizer"
;;;   Module:  "objects;traces:"
;;;  Version:  April 2016

;; Initiated 11/90 (v1.5)
;; 11/12/14 Adding traces for giving unknown words light content because of
;; their morphology and such. More 8/22/14 to cover individual cases
;; Adding as needed through 2/5/16

(in-package :sparser)


(defparameter *trace-next-token* nil)

(defparameter *trace-token-&-character-indicies* nil)

(defun trace-morphology ()
  (setq *trace-morphology* t))

(defun untrace-morphology ()
  (setq *trace-morphology* nil))

(deftrace :fw-no-rule-set (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule set" (word-pname word))))

(deftrace :fw-no-rule-set/no-variants (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule set ~
                and no capitalization variants" (word-pname word))))

(deftrace :fw-no-rule-set/no-variant-with-rs (word variant)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule set ~
               and its variants ~a don't have a rule set either"
               (word-pname word) variant)))

(deftrace :fw-no-rule-set/lc (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule set. ~
                token capitalization is :lower-case" (word-pname word))))

(deftrace :fw-no-rule-set/variant-wrong-cap (word variant cap)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] The is a capitalization variant of ~s: ~a~
              ~%   but it doesn't match the capitalization ~
              of this position: ~a" (word-pname word)
              variant cap)))

(deftrace :fw-variant-has-rule-set (word variant)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] no rule set for ~s~
              ~%       but ~a has one" (word-pname word) variant)))

(deftrace :tw-is-a-function-word (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s is a function word" (word-pname word))))

(deftrace :tw-no-unary-rule (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule" (word-pname word))))

(deftrace :fw-symbol-unbound (symbol)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] symbol ~a exists, but not bound to a word"
               (symbol-name symbol))))

(deftrace :fw-no-symbol ()
  ;; in find-word
  (declare (special *word-lookup-buffer*))
  (when *trace-morphology*
    (trace-msg "[find] \"~a\" no symbol. Completely unknown"
               *word-lookup-buffer*)))

(deftrace :storing-unknown-for-later (word pos-before)
  ;; called from store-word-and-handle-it-later
  (when *trace-morphology*
    (trace-msg "[unknown] Delaying handling of unknown word ~a at p~a"
               (word-pname word)
              (pos-token-index pos-before))))

(deftrace :handling-unknown-word-stared-os (pos-before)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-morphology*
    (trace-msg "[unknown] Handling unknown word at p~a"
               (pos-token-index pos-before))))

(deftrace :unknown-word-is-known (edge)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-morphology*
    (trace-msg "[unknown]   It's actual known: spanned by ~a" edge)))

(deftrace :unknown-word-is-spanned (edge)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-morphology*
    (trace-msg "[unknown]   Nothing to do. It's been spanned: ~a" edge)))

(deftrace :unknown-word-is-covered ()
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-morphology*
    (trace-msg "[unknown]   Some edge covers it.")))

(deftrace :unknown-word-bio-edge (edge)
  ;; called from handle-unknown-word-as-bio-entity
  (when *trace-morphology*
    (trace-msg "[unknown] Put edge over unknown word: ~a" edge)))

(deftrace :defining-unknown-word-from-morph (word morph-keyword)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[unknown]  unknown word ~s keyword: ~a"
               (word-pname word) morph-keyword)))

(deftrace :defining-as-given-morph (pos-term)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] defining as a ~a" pos-term )))

(deftrace :defining-lemma-as-given-morph (lemma pos-term)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] defining lemma ~s as a ~a"
               (word-pname lemma) pos-term)))

(deftrace :unknown-word-defaulted-to-noun (word)
  ;; called from setup-unknown-word-by-default
  (when *trace-morphology*
    (trace-msg "Defining the unknown word ~s as a noun by default"
               (word-pname word))))

(deftrace :word-corresponds-to-obo (word obo)
  ;; called from setup-unknown-word-by-default
  (when *trace-morphology*
    (trace-msg "Assignnig unknown word ~s to the OBO term ~a"
               (word-pname word) obo)))

