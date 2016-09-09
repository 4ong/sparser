;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "discourse"
;;;   Module:  "model;core:mid-level:"
;;;  version:  September 2016

;; Initiated 9/6/16, initially as a common resting place for the
;; "interjections", with contributions from checkpoint/vocabulary.lisp

(in-package :sparser)

;;;-------------
;;; Speech Acts
;;;-------------
#| Trying to follow the set in Trips as per the pull in January 2016 |#

(define-category speech-act
  :instantiates nil
  :specializes top
  :documentation "These are illocutionary acts we perform by
 speaking, on which there is a vast literature. We can narrow
 things to just the set used in Trips: question, request,
 suggest, tell, discourse-signal (?), nolo-comprendez, expressive
 ack(nowledge) ... confirm, greet ...
    In the Trips ontology it appears that speech-act inherits
 from top (actually top > root > any-sem). We've got the notion
 of 'linguistic' (our top > abstract > linguistic), where there
 has been some overlap that we should sort out once there are
 more consequences to one or the other.")

;;;-------------------------------------
;;; Formulaic responses, greetings, etc.
;;;-------------------------------------
#| Strictly speaking, these are formulaic reaction signals. 
 See Quirk et al. pg 852, 11.54.
 Interjections proper are quite different: 11.55. |#


;;-- Acknowledgements
(define-category  acknowledgement  ;; Trips SA_ACT, presumably
  :instantiates self
  :specializes speech-act
  :binds ((name :primitive word))
  :realization (:interjection name)
  :documentation "This set ('yes', 'no', 'ok' ..) can be divided
 more finely to according to aproving or disaproving on what someone
 has done.")

(define-individual 'acknowledgement :name "yes")
(define-individual 'acknowledgement :name "no")
(define-individual 'acknowledgement :name "ok")
(define-individual 'acknowledgement :name "good")



;;-- Greetings
(define-category  greeting ;; SA_GREET
  :instantiates self
  :specializes speech-act
  :binds ((name :primitive word))
  :realization (:interjection name))

(define-individual 'greeting :name "hello")
(define-individual 'greeting :name "hi")
(define-individual 'greeting :name "goodbye")
(define-individual 'greeting :name "bye")


;;;----------------------
;;; markers of proposals
;;;----------------------

(define-category sa-propose ;; to avoid clash with class in biology/verbs.lisp
  :instantiates self
  :specializes speech-act
  :documentation "This has many specializations, e.g. to propose to
 jointly make something (like a staircase). They have to be carefully
 integrated into the goal-management facilities.")

(define-category proposal-marker
  :instantiates self
  :specializes linguistic
  :documentation "This is the common parent to 'let', 'suppose',
 'what if', and any other turns of phrase which, when they are
 sentence-initial mark the sentence as a directive (Quirk et al.
 pg. 829): an interative that with the illocutionary force of
 a suggestion that something be done ('let Markie do it').
   The idea is to use this to anchor a form rule that takes an
 adjacent clause (s) to its right and instantiates a proposal.")

(define-category let-as-directive
  :instantiates self
  :specializes  proposal-marker
  :realization (:interjection "let's")
  :documentation "The better analysis might be as a verb that
 is only used in the imperative, but there's no way to formulate
 that. This is not the 'let' of permision ('I let him do it').
   This is NOT an interjection, but that's the only way to get it
 into Mumble. I wanted to use :word but that's no available now
 on the Mumble side of the fence. In other respects the idea is
 to make this just a 'word' is to force the chunker
 to leave it alone.
  It also should use the apostrophe fsa to expand this into
 'let us', however doing that would require writing grammar to
 handle, e.g. 'us build a staircase', which it more trouble
 that it's worth for just this one instance.")
;; "Let's enjoy ourselves, shall we?"  QGLS pg 341
;; "let him go", "let go of the ball" -- aux?


(define-category suppose-as-directive
  :instantiates self
  :specializes  proposal-marker
  :realization (:interjection "suppose"))


(define-category what-if-as-directive
  :instantiates self
  :specializes  proposal-marker
  :realization (:interjection "what if"))

