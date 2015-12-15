;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "vocabulary"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  December 2015

;; Initiated 12/3/15.

(in-package :sparser)

#| These are temporary definitions for one of Sparser's conventional
parsing protocols. Likely to be replaced by TAGs when the CwC-tailored
protocol is developed. Moreover they are semantically vacuous.  |#


;;--- nouns
(noun "block" :specializes artifact :rule-label artifact)
(noun "staircase" :specializes artifact :rule-label artifact)
(noun "table" :specializes artifact :rule-label artifact)

;;--- Interjections -- see ex. in model/sl/checkpoint/
(sentential-interjection "good")
(sentential-interjection "ok")


;;--- me and you (hack job)

;;--- Verbs

;; (p "Add another block")

(define-category add-to
  :specializes achievement
  :instantiates self
  :binds ((agent social-agent)
          (theme object)
          (location location))
  :realization ((:main-verb "add")
                (:tree-family vp+adjunct
                 :mapping ((vg . :self)
                           (vp . :self)
                           (adjunct . physical)
                           (slot . theme)))))

;; Ignore "let's" for now (1.1), 

;; 1.4  (p "that's good.") -- "that" construed as a relative marker


#|
;; 1.1 (p "Let's build a staircase.") 
;;     (p "build a staircase.")
(define-category build
  :specializes process
  ;; we're going through the steps of constucting the
  ;; staircase. With "lets'" we haven't even started
  :binds ((agent ;; who does it: 'us', 'you' 'I/me'
           ) ;;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
          (artifact ;; what they build
           artifact))
  ;;/// short realization requires a v/r for every
  ;; variable, which means modeling "you" and "us"
  ;; which is not simple.
  :realization
    (:verb ("build" :past-tense "built")
     :etf (svo)
     :s agent
     :o artifact))

|#


