;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2011-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  1.1 January 2015

;; initiated 5/16/93 v2.3, added form rules 6/6
;; 0.1 (10/13/95) worded out a real analysis and moved in the def form for
;;      a word that's marked as an adverb but not given any semantics.
;; 0.2 (4/24/08) moved the category and def form out to words/adverbs.
;; 1.0 (9/19/11) Flushed the explicit form rule in favor of generated set
;;      by using the tree-family. See words;adverbs1. Put in the generic
;;      method and abstract one using revived modified category.
;; 1.1 (1/18/13) Moved everything else out except for the method
;;      that is used by the adverb tree families. 
;;     (1/12/15) Converted the general method to bind the adverb
;;      to the modified variable on the head rather than drop it
;;      on the floor. 
;; 4/24/2015 maybe-copy modified head before binding variable -- needed to avoid damaging vocabulary entries


(in-package :sparser)

;;;-----------
;;; Base case
;;;-----------

;; N.b. the value returned by the method becomes the referent of
;; the edge that spans the modifier and what it modifies. Since
;; the thing being modified is usually the head, we typically just 
;; want to do something to that head and then return it

(def-k-method modified ((adv category::modifier) (head individual))
  (tr :modified_modifier+t)
  (setq head (individual-for-ref head))
  (setq head (bind-dli-variable 'modifier adv head))
  head)

