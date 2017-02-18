;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  February 2017

;; Initiated 2/17/17 to gather all of the k-function that might be
;; used into one place for better review.

(in-package :sparser)


;;--- compose

(def-k-function compose (left right)
  (:documentation "This provides a hook for co-composition or simply
   for type specialization or adding additional relations to a 'daughter'
   style rule. Expecially well suited for form rules. Can be used as
   a dispatch point for more specific binary compostions. Intended to be
   the most generic way to compose the referents of two edges.")
  (:method (left right)
    (declare (ignore left right))))


;;--- adjectives

(def-k-function modifier+noun (modifier head)
  (:documentation  "Motivated by adjectives like 'about'. 
   Called when the modifier-creates-definite-individual or
   generic-np-premodifier ETF is used. Determines the
   referent of the edge that combines these two elements.
   The default (in adjectives.lisp) binds the 'modifier' variable
   of the head."))
;; Also used in a set of (modifiers + head) form rules
;; in syntax/adjectives.lisp


;;--- adverbs

(def-k-function modified (modifier head)
  (:documentation "Motivated by adverbs like 'just' 
   and 'almost', but could be used with adjectives or anything else.
   The default (in adjectives.lisp) binds the 'modifier' variable
   of the head."))


;;--- prepositions
  
(def-k-function analyze-pp (preposition complement)
  (:documentation "Computes the referent of a pp created
   by the  computed-pp ETF. Particular combinations can produced anything
   they want. The default is the referent of the complement, which
   is equivalent to :daughter right-edge."))


;;--- quantifiers

(def-k-function quantify (quantifier body)
  (:documentation "Provides for specializing the relationship between
   a particular category of quantifier and category of body."))
