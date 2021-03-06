;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-2005,2012-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:collections:"
;;;  version:  September 2018

;; initiated 6/7/93 v2.3, added Sequence 6/9.
;; 6/13/95 added searching routine: collection-of-type/dh
;; 1.0 (3/21/00) Started make-over to lattice points. Flushed indexes.
;;     (4/29) Added realization for "three companies".
;;     (2/2/05) Added commentary. (4/1/12) exposed collection-of-type/dh
;;     to quiet compiler
;; 1.1 (8/16/13) Make sequences permanent to avoid odd bugs due to reclamation
;;     (5/27/14) Added mixins sequential, cyclic
;;     (8/24/14) Added lemmas

(in-package :sparser)

;;;----------------
;;; generic object
;;;----------------

(define-category  collection
  :instantiates self
  :specializes abstract
  :mixins (takes-tense-aspect-modal) ;; and takes-adverb ?
  :lemma (:common-noun "collection")
  :index (:permanent
          :special-case :find find/collection
                        :index index/collection
                        :reclaim reclaim/collection)
  :binds ((items :primitive list)
          (type :primitive category)
          (number :primitive integer))
  :realization ((:tree-family quantity-of-kind  ;; "three companies"
                 :mapping ((np-head . :self)
                           (quantifier . number)
                           (np . :self)
                           (item . number))))
  :documentation "A collection is an unordered bag of items. 
    They were designed for conjoined phrases such as a company
    names, but we now also use them as the base of plural nouns.
    The type of a conjunction is the type of its items, though
    in practice it is just the type of the first item.")

#| N.b. Including the mixin (takes-tense-aspect-modal
has the effect of making a conjunction almost a perdurant in terms
of the variables it provided for composition. That requirement is
a conceptual bug, but given that clause conjunctions are presently
modeled as collections it's a requirement if we don't want to be
bombared with warnings, e.g.

warning:
   no variable named past on #<collection #<gene-transcript-express 86609> #<purify 85065> 112298> of category nil
 in sentence "Proteins were expressed and purified from E. coli as described
                    previously xref ."

We really need to develop a different target for conjunctions
that can have the right syntactic reflexes (e.g. promoting the
labeling on the conjoined children to the parent object)
and not entangle the simple notion of a collection. |#


;;;-----------------
;;; specializations
;;;-----------------

(define-category  sequence
  :instantiates self
  :specializes abstract  ;;collection -- waiting for conjunction that's not
  ;; also a tensed clause
  :lemma (:common-noun "sequence")
  :index (:permanent :key items)
  :binds ((item)  ;; i.e. each individual item
          (items :primitive list) ;; copied down while conjunction is bad
          (type :primitive category)
          (number :primitive integer))
  :documentation "A sequence is a collection where the order matters.
 You can't have partial information about a sequence, and I'm 
 not even sure that you can extend them without creating a new object.")


(define-category subsequence
  :instantiates self
  :specializes sequence
  :binds ((reference-sequence sequence)
          (index ordinal))
  :index (:permanent :sequential-keys index reference-sequence)
  :documentation "Defines a portion  of a sequence
 relative to the position of a designated index element.")

(define-category subseq-up-to
   :specializes subsequence
   :documentation "A sort of closed-interval. Denotes all of
 the items in the reference sequence from its beginning up to
 but not including the element at the index.")

(define-category subseq-after
   :specializes subsequence
   :documentation "A sort of closed-interval. Denotes all of
 the items in the reference sequence from the index element
 to the end of the sequence, excluding the index element..")

(define-category subseq-both-ends
  :specializes subsequence
  :binds ((end-index ordinal))
  :documentation "A region that is closed on both ends.
 Denotes all the elements of the reference sequence that
 are between the index position (start) and the end-index,
 exclusing those elements.")

;;;--------
;;; mixins
;;;--------

(define-mixin-category sequential
  ;;  :lemma (:adjective "sequential") ;; defined in bio;terms.lisp
  :specializes sequence
  :binds ((sequence sequence)
          (position ordinal)
          (previous sequential)
          (next sequential))
  :documentation "Augments the concept of a sequence by providing
 explicit relations tying together the successive items in the
 sequence to each can point to its immediate neighbor.")

(define-mixin-category cyclic
  :specializes sequential
  :lemma (:adjective "cyclic")
  :binds ((cycle-length :primitive number))
  :documentation "Cyclic sequences wrap. The 'next' of the last item
 in the sequence is the sequences first item. Natural way to conceptualize
 the months of the year and most of the other categories in time.q")

(fixed-at-runtime '(sequence previous next) 'sequential)
(fixed-at-runtime '(cycle-length) 'cyclic)
