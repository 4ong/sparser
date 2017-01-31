;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "term-to-move"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2017

#| These are definitions that were in terms.lisp. They need
to be moved to more general places and be modified to no longer
be biology specific, since they aren't. |#



(define-adverb "barely")
(define-adverb "a bit more")
(define-adverb "even")
(define-adverb "primarily") ;; keyword: ENDS-IN-LY
(define-adverb "uniquely")

(define-adverb "next")
(define-adverb "finally")


(adj "downstream" :super pathway-direction
  :realization 
  (:adj "downstream"))
(noun "upstream" :super pathway-direction
      :realization
      (:noun "upstream"))

(noun "route" :super bio-mechanism)

(adj "also known as" :super bio-relation)
(define-adverb "in part")
(define-adverb "namely")

(noun "surface" :super bio-entity)


(find-or-make-individual 'qualitative-rate :name "slow")
(define-category fast :specializes bio-predication
   :realization
   (:adjective "fast"))

(adj "lesser" :super bio-predication)


;;---- time

(noun "the next day" :specializes time)

(define-category time-course :specializes bio-scalar ;;(noun "rate" :super bio-scalar 
  :realization 
  (:noun "time course"))
;; adapt to go into core/time/amounts.lisp 
(define-category period :specializes amount-of-time
  :binds ((context bio-context)
          (state bio-state))
  :realization (:noun "period"
                      :m context
                      :in context
                      :in state))

(noun ("period of time" :plural "periods of time") :super period)

#| Definitions supplanted by general vocabulary from
  location module or attributes

(define-category orientation :specializes relation)
(define-category orientation-top :specializes orientation
  :realization
  (:noun "top"))
(define-category orientation-bottom :specializes orientation
  :realization
  (:noun "bottom"))
(define-category orientation-left :specializes orientation
  :realization
  (:noun "left"))
(define-category orientation-right :specializes orientation
  :realization
  (:noun "right"))

;; (adj "wide" :super bio-predication)
;; (adj "long" :super bio-predication)


|#
;; high & low could be replaced by the general definitions
;;  on the attribute height, but it would be better
;;  to see if (in the dynamic-model texts) they could be
;;  coerced to states in place (which is what bio-predication does)
(adj "high" :super bio-predication)
(adj "low" :super bio-predication)
#+ignore(define-comparative "lower") ;; conflicts with definition in verbs.lisp
;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."

(define-category bio-length ;;originally (noun "length" :super bio-scalar)
  :specializes length
  :mixins (bio-scalar))
(specialize-referent "length" 'bio-length)

;;---- near-term candidates for replacing with attribute-based interpretation

(adj "best" :super bio-predication) ;;/// superlative of "better"
(adj "great" :super bio-predication) ;;/// base of greater, greatest

(adj "rapid" :super bio-predication)
(adj "same" :super bio-predication)

;;---- likely to want a different interpretation
;;     when the attribute-value "high" is available
(define-category high-enough :specializes bio-predication
  :binds ((result-or-purpose bological))
  :mixins (post-adj)
  :realization
  (:adj "high enough"
        :to-comp result-or-purpose))

(define-category low-enough :specializes bio-predication
  :binds ((result-or-purpose bological))
  :mixins (post-adj)
  :realization
  (:adj "low enough"
        :to-comp result-or-purpose))

(adj "low enough" :super bio-predication)
(adj "high-activity" :super bio-predication)
(adj "high-throughput" :super bio-predication)




;; want something for magnitude, size, etc. TO-DO
;; move away from directly under category::abstract
(adj "single" :super bio-predication) 
(adj "double" :super bio-predication)

;; led to incorrect Comlex stemming
(define-category block-bad-stemming :specializes linguistic)
(noun "asides" :super block-bad-stemming)
(noun "backs" :super block-bad-stemming)
(noun "cans" :super block-bad-stemming)
(noun "downs" :super block-bad-stemming)
(noun "ups" :super block-bad-stemming)



;;--- bio-relation

(define-category ability :specializes bio-relation
      :binds ((ability bio-process))
      :realization (:noun "ability"
                    :adj "able"
                    :to-comp ability
                    :of subject
                    :to ability))

(define-category capability :specializes ability
  :restrict ((subject bio-entity))
  :realization (:noun "capability"
                :adj "capable"
                :of ability))

(adj "common" :super bio-relation
  :realization 
  (:adj "common"
        :to theme))

(adj "critical" :super bio-relation
  :realization 
  (:adj "critical"
        :to theme
        :for theme))
(define-adverb "critically")

(define-category exclusivity :specializes bio-relation ;; this is actually a lot more general
  :binds ((alternative biological))
  :realization
  (:noun "exclusivity" :adj "exclusive"
	 :with alternative))


(define-category positive :specializes bio-relation
  :realization
  (:adj "positive"
	:for theme))
(define-category value-is-negative :specializes bio-relation
  ;; 'negative' is the category that represents "no" and "not"
  ;; in the tense model. They're not the same thing.               
  :realization
  (:adj "negative"
	:for theme))


(define-category true :specializes bio-relation
  :realization
  (:adj "true"
	:for theme))
(define-category false :specializes bio-relation
  :realization
  (:adj "false"
	:for theme))
(adj "prior" :super bio-relation
  :binds ((prior-event  bio-process))
  :realization (:to prior-event))


;;--- bio-scalar

(define-category bio-amount :specializes bio-scalar
  :realization
  (:noun "amount"))

(define-category threshold :specializes bio-scalar
  :realization
  (:noun "threshold"))

(define-category duration :specializes bio-scalar
  :restrict ((subject (:or process bio-method bio-mechanism)))
  :realization
  (:noun "duration"))

(noun "level" :super bio-scalar) ;;levels of incorporated 32P (January sentence 34)

;;--- bio-rhetorical

(noun "issue" :super bio-rhetorical) ;; not quite, but what 

(noun "hint" :super bio-rhetorical)

(delete-adj-cfr (resolve "important"))
(define-category importance :specializes bio-rhetorical
      :realization
      (:noun "importance"
             :adj "important"))

(define-category of-interest :specializes bio-rhetorical
      :realization
      (:adj "of interest"))

(define-category significance :specializes bio-rhetorical
      :realization
      (:noun "significance"
             :adj "significant"))

(define-category possibility :specializes bio-rhetorical
      :mixins (bio-thatcomp)
      :realization
      (:noun "possibility"))

(adj "unclear" :super bio-rhetorical)

(adj "unexpected" :super bio-rhetorical)
(define-adverb "unexpectedly") ;; TO-DO wants to be  :super-category 'bio-rhetorical)


;;--- bio-predication


(adj "close" :super bio-predication)
(adj "closed" :super bio-predication)

(adj "compelling" :super bio-predication)

(adj "current" :super bio-predication)

(adj "dead" :super bio-predication)
(adj "deadliest" :super bio-predication)

(delete-adj-cfr (resolve/make "different"))
(adj "different" :super bio-relation)
(noun "difference" :super biological
  ;;THIS IS DONE SIMPLY TO ALLOW THE VERB ALTER TO TAKE DIFFERENCE AS A SUBJECT
 ;; see sentence 7 of January test "...the differences between the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively) do not alter GAP–responsiveness..."
 :binds ((compared biological))
 :realization
   (:noun "difference"
    :between compared))

(adj "early" :super bio-predication)

(adj  "exclusive" :super bio-predication)

(delete-adj-cfr (resolve "direct"))
(adj "direct" :super bio-predication)

(adj "forward" :super bio-predication) ;; added to avoid problem with complex lookup
;;Error: Comlex -- new POS combination for "#<word "forward">:: (ADJECTIVE ADVERB ADVPART NOUN VERB)
(adj "full" :super bio-predication)
(adj "further" :super bio-predication)
(define-adverb "further")


(adj "initial" :super bio-predication)
(adj "least" :super bio-predication)

(delete-adj-cfr (resolve "novel"))
(adj "novel" :super bio-predication)


(define-adverb "readily")


(adj "spatial" :super bio-predication)


(adj "long-term" :super bio-predication)


(adj "measurable" :super bio-predication) ;; keyword: (able ADJ) 


;;---- bio-relation

(adj "consistent" :super bio-relation
  :realization 
  (:adj "consistent"
        :with theme))

(adj "identical" :super bio-relation
     :realization
     (:adj "identical"
           :to theme))
(adj "independent" :super bio-relation
  :realization 
  (:adj "independent"))

(define-category lack :specializes bio-relation
                 :realization (:noun "lack" :of theme))


(define-category similar :specializes bio-relation
  :mixins (post-adj)
  :realization 
  (:noun "similarity"
  	:adj "similar"
         :to theme))

(adj "related" :super similar)

(define-adverb "similarly")

;; is likely to be mediated by
;; is likely that this possible feedback
;; will likely be useful
(define-category likely :specializes bio-relation
  :realization
  (:adj "likely"
        :adverb "likely" ;;WANT LIKELY TO AMBIGUOUSLY BE AN ADJECTIVE OR ADVERB
        :to-comp theme
	:thatcomp theme))

(define-category unlikely :specializes bio-relation
  :realization
  (:adj "unlikely"
        :to-comp theme
	:thatcomp theme))
;; almost never an adverb in our texts
;; need a good way to distinguish the cases
;; "is likely to ..." vs "is likely due..."
;; want the POS to be based on category of next word...

;; These still fail in "It is likely that this possible feedback loop..."
;; and "This effecto is likely to be mediated..."
#|
(define-category likely-adv :specializes linguistic)

(define-cfr category::likely-adv
    (list (resolve "likely"))
  :form category::adverb
  :referent category::likely)
|#



;;---- other

(noun "content" :super measurement)

(delete-noun-cfr (resolve "number"))
(delete-noun-cfr (resolve "numbers"))
(define-category count-of :specializes measurement
  :binds ((item-counted biological)) ;; no restrictions now -- needs to be COUNT-NOUN
  :realization
  (:noun "number"
         :of item-counted))


(noun "example" :super variant)
(noun "form" :super variant)

(noun "position" :super residue-on-protein)

(define-category region-of-molecule
  :specializes molecular-location
  :binds ((bounds biological))
  :realization
    (:noun "region"
     :between bounds))


(noun "activity" :super other-bio-process
      :binds ((theme biological))
      :realization
      (:noun "activity"
             :of subject
             :towards theme
             :on theme))

(noun "behavior" :super bio-quality)
