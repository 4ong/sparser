;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "rhetoric"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; Created 6/4/15 to hold all vocabulary that's rhetorical in nature
;; and any rules of any sort that observations about the retorical 
;; structure writ large of a molecular biology passage or article. 
;; See companion file with def forms and structure in objects/doc/
;; rhetoric.lisp

(in-package :sparser)

;;;----------
;;; assessor
;;;----------

(defun assess-relevance (sentence)
  ;; Called from post-analysis-operations just before we would
  ;; make a card. If it returns nil -- having determined that
  ;; the sentence is about established or conjectured facts and
  ;; consequently not relevant -- then no card will be made.
  (declare (special *reading-section-title*))
  (let ((paragraph (parent sentence)))        
    (push-debug `(,paragraph))
    (cond
     ((includes-a-reference sentence)
      (format t "~&   Not relevant: ~a~%" sentence)
      nil)
     ((title-of-currect-section-is "intro")
      nil)
     (*reading-section-title* t)
     (t
      t))))


#| At the point when this is called, all of the phrases (text strings)
that applied to this sentence will have been seen by complete and 
had their effect on the slots that the expistemic-status class added
to the contents instance that is in the contents slot of this sentence
that's been passed in as an argument  You can get to the paragraph object
that this sentence is part of by calling (parent sentence), and the slots
contributed by epistemic state will be on the object in its contents slot.
   I imagine that this is where you update the paragraph state give
what's happened for this sentence, and that to answer the question
of whether or not to declare this sentence to be relevant is a calculation
over both sentence and paragraph, deferring to the paragraph when there's
no evidence in the sentence.
|#


;;;-------------------------------------------
;;; Convenience functions over status objects
;;;-------------------------------------------

(defmethod includes-a-reference ((s sentence))
  (explicit-reference (contents s)))

;;;-------
;;; rules
;;;-------

;; Let's not mark modals or other elements of tense
;; and aspect during the feature-reading pass. The complete routine
;; complicates the regular function of "could" within the parsing
;; of the verb group. We can look for this sort of thing during
;; the relevance computation at which point we just (... a mear matter
;; of programming) look for them and judge accordingly. 
;;(conjecture-phrase "could") ;; could also


(conjecture-phrase "it is possible that")
(conjecture-phrase "it is likely that")
(conjecture-phrase "one could hypothesize that")
(conjecture-phrase "suggest")
(conjecture-phrase "suggesting")
(conjecture-phrase "we queried whether")
(conjecture-phrase "we tested whether")

(known-result-phrase "emerging evidence suggests")
(known-result-phrase "has been shown")
(known-result-phrase "it has been unclear how")
(known-result-phrase "it has recently been shown that")
(known-result-phrase "it is less clear how")
(known-result-phrase "it remains unclear why")
(known-result-phrase "recent evidence indicates")
(known-result-phrase "thus far identified")
(known-result-phrase "recently reported")
(known-result-phrase "reported recently")
(known-result-phrase "most commonly")
(known-result-phrase "previously showed")

(new-fact-phrase "demonstrates that")
(new-fact-phrase "hence")
(new-fact-phrase "here we show that")
(new-fact-phrase "indicates that")
(new-fact-phrase "provides a novel link between")
(new-fact-phrase "provides an explanation of how")
(new-fact-phrase "these findings reveal")
(new-fact-phrase "we show here that")

(evidence-of-reference "xref")
