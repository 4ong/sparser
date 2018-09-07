;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013-2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "ordinals"
;;;   Module:  "model;core:numbers:"
;;;  Version:  September 2018

;; initiated [ordinals1] 9/18/93 v2.3 as completely new treatment
;; 1.0 (1/7/94) redesigned as specialized categories
;;     (1/9/96) added string printer.
;; 2.0 (7/11/00) Changed the name of the interesting category from position-in-
;;      a-sequence to ordinal, flushing the simple category "ordinal". Reworked
;;      into the new regime as much as possible.
;; 2.1 (7/13) punted on the whole 'each ordinal is its own relation scheme 
;;      since it shouldn' be necessary given psi.
;; 3.0 (2/3/05) Version 2 doesn't appear coherent (asks for categories, defines individuals)
;;      so trying to get it all on the same page. Arranging for it to make individuals rather
;;      than psi. Fixing the nth-ordinal routine.
;; 3.1 (3/15) Reverting to 'position-in-a-sequence' in addition to an object for
;;      simple ordinals -- drops the partial-ness of ordinals and transfers that 
;;      functionality to the new (old) category.
;; 3.2 (9/18/13) Replaced the *load-ad-hoc-rules* gate on the 'nd' rules at the
;;      bottom with nil since it's unclear how they work: /// need a no-space
;;      criteria added to them, then we get "23rd" with some assurance. 
;;      Added ordinal+common-noun form/ rule - flow of referents needs work
;;RJB 12/13/2014 
;;     create new category post-ordinal for Roman numeral ordinals like I, II, III and IV
;;     these can occur after the head, and do not become the head, while the previous ordinals like first, second etc. are prenominal

(in-package :sparser)

;;;---------
;;; object
;;;---------

#| It's called 'ordinal' because that's the natural term for the words
   that realize them: "first", "second", etc.  But it's function is more
   complex (/// is this the right thing?), which follows from its previous
   name, position-in-a-sequence, where we are defining a relationship between
   a position, the ordinal proper, and an item, and the sequence in which it
   is the 'ordinal-th' position.  The idea being that when you hear "first"
   you automatically know that there's an item and a sequence.  |#

(define-category  ordinal
  :instantiates self
  :specializes number
  :binds ((number number)
          (word  :primitive word)
          (roman-numeral :primitive word))
  :index (:key number)
  :realization (:quantifier word))

(defun string/ordinal (category)
  ;; see special check in String-for that gets us here
  (let ((number (value-of 'number category))
        (*print-short* t))
    (format nil "~A" number)))



;;;-----------------------
;;; ordinals as selectors
;;;-----------------------

(define-category  position-in-a-sequence
  :instantiates self
  :specializes index
  :binds ((number . ordinal)
          (item)
          (sequence . sequence))
  :documentation "Free-standing relation linking a sequence, one of
 its elements ('item') and a ordinal that records the position of
 the item in the sequence. Automatically instantiated as one of the
 steps in indexing a sequence. Indirectly useful in modeling proper
 names since they are a sequence of name-word instances.")

(define-mixin-category part-of-a-sequence
  :instantiates nil
  :specializes index ;; ???
  :binds ((position ordinal)
          (sequence sequence))
  :documentation "Folded into other objects to indicate that any
 instance of the object with occupy a particular position in
 a particular sequence. Compared with position-in-a-sequence, this
 is not a free-standing relationship, just the addition of a few
 properties. Should also compare to sequential, which adds variables
 for previous and next and is principally used in calendar time.
 If ordering doesn't matter, then partonomies are worth considering.")


;;--- building a position-in-a-sequence without its sequence

(defun compose-ordinal-to-head (ordinal head)
  "This approximates the treatment in the Krisp paper (pg. 31 & subseq)
   that would make a subtype of the head that gives it the slots
   it would have if it was a position in a sequence (the same effect 
   as using a mixin would achieve provided we bound its item slot
   to the head."
  ;; Strictly speaking there should be FoM to get a version of
  ;; the head category where the position-in-sequence mixin has
  ;; applied, then for this individual we'd bind (FoM actually)
  ;; the item variable. Approximating that my using ad-hoc lambda 
  ;; variable manipulation
  (let ((num-var (find-variable-for-category 'number 'position-in-a-sequence))
        (item-var (find-variable-for-category 'item 'position-in-a-sequence))
        (head-category (etypecase head
                         (category head)
                         (individual (itype-of head))))
        (i (individual-for-ref head)))
    ;; how do we indicate that the individual is open in the sequence?
    
    ;;(setq i (bind-variable item-var head-category i))
    ;; Alex doesn't want it (muddies the NLG waters).
    ;; Reconsider later when reproducing Krisp paper example

    (setq i (bind-variable num-var ordinal i))
    i))



;;;--------------------------------------------
;;; 'post' ordinal treatment of Roman numerals
;;;--------------------------------------------

(define-category  post-ordinal
  :instantiates self
  :specializes number
  :binds ((number number)
          (word  :primitive word)
          (roman-numeral :primitive word))
  :documentation "Applies to romman numerals. Instantiated as part of
    define-ordinal.")


;;;------
;;; form
;;;------

(defun define-ordinal (string        ;; e.g. "third"
                       lisp-number
                       &key roman-numeral)

  (let ((number (find-individual 'number :value lisp-number)))
    (unless number
      (break "When defining an ordinal, the corresponding number object ~
              ~%must be defined first. The number for ~A isn't" lisp-number))

    (let ((ordinal (find-individual 'ordinal :number number))
          rules )
      (or ordinal
          (let ((word (resolve/make string))
                (roman (when roman-numeral (resolve/make roman-numeral))))
            (setq ordinal
                  (define-individual 'ordinal
                    :number number
                    :word word))

            (when roman-numeral
              (setq ordinal (bind-dli-variable 'roman-numeral roman ordinal))
              (push (define-cfr category::post-ordinal `(,roman)
                        :form category::post-ordinal
                        :referent  category::post-ordinal )
                      rules))

            ordinal )))))


(defgeneric make-ordinal (number)
  (:documentation "We only predefine a small number or ordinals
    complete with their corresponding words and sometimes Roman 
    numerals. But some models insist on ordinals for arbitrary
    numbers. So even though we'll need a special routine to generate
    the words by rule when generating, we make the minimal
    ordinal individual based just on the number.")
  (:method ((n number))
    (let ((number (find-or-make-number n)))
      (make-ordinal n)))
  (:method ((i individual))
    (assert (itypep i 'number))
    (define-individual 'ordinal :number i)))


;;;----------
;;; accessor
;;;----------

(defgeneric nth-ordinal (n)
  (:documentation "Given an integer or a number individual return
    the corresponding ordinal")
  (:method ((n integer))
    (let ((i (find-or-make-number n)))
      (nth-ordinal i)))
  (:method ((i individual))
    (unless (itypep i 'number)
      (error "nth-ordinal only take number individuals"))
    (or (find-individual 'ordinal :number i)
        (make-ordinal i))))



;;;------------------------
;;; phrase structure rules
;;;------------------------

#| N.b. There are syntactic rules for np+number and np+hyphenated-number
that use the syntax function make-ordinal-item to form their interpretation.
|#

(def-form-rule (common-noun post-ordinal)
  :form n-bar
  :head :left-edge
  :referent (:head left-edge
             :instantiate-individual position-in-a-sequence
             :with (number right-edge
                    item left-edge)))

;; "sites I and II"
(def-form-rule (common-noun/plural post-ordinal)  
  :form n-bar
  :head :left-edge
  :referent (:head left-edge
             :instantiate-individual position-in-a-sequence
             :with (number right-edge
                           item left-edge)))

;; "the fifth attack"
(def-form-rule (ordinal common-noun)
  ;; possible ETF: designated-instance-of-set ("third quarter")
  ;;  or modifier-creates-definite-individual ("last year")
  ;; The point is to create the position-in-a-sequence while
  ;; leaving the common-noun as the head. Those would be more
  ;; generically reversible than the compose oridinal function  
  :form n-bar
  :head :right-edge
  :referent (:function compose-ordinal-to-head left-edge right-edge))



(when t ;;/// these should get swallowed into reversible rdata  

  (def-cfr ordinal (number "st")
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "nd")
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "rd")
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))

  (def-cfr ordinal (number "th")
    :form det
    :referent (:instantiate-individual position-in-a-sequence
               :with (number left-edge)))
   )
