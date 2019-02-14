;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2018  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "verbs"
;;;   Module:  "model;dossiers:"
;;;  version:  December 2018

;; Gathers verbs from diverse specific sources into one place.
;; Tipping was the need to have access to prepositions now that we can
;; specify them with verbs, but in any event it makes things easier
;; to keep track of.

#|  N.b. if one of these verbs is also used in biology, there should
be an entry for it in bio;overrides.lisp that expunges it, 
or alternatively an entry in (e.g.) bio;verbs.lisp that specializes it
and provides biology-specific restrictions on its varibles. |#

(in-package :sparser)

(define-category answer
  :specializes process
  :mixins (simple-action) ;; agent & theme
  :realization (:verb "answer"
                :etf svo ;; or intransitive
                :about theme
                :noun "anwser"))
#| "To answer this question ..."
dm #79 "a more precise answer"
"answer for your crimes", "__ to a higher authority"
"answer your question", "answer whether P" ???
|#


;;------------------------------------------ originally mid-level/verbs.lisp
#| -----------  TO DO
(define-main-verb 'break
    :infinitive "break"
    :past-tense "broke"
    :past-participle "broken"
    :present-participle "broken")
(define-main-verb 'catch
  :infinitive "catch"
  :past-tense "caught"
  :past-participle "caught"
  :present-participle "catching")


 create (bio;general-verbs)  "Is your intent to ~a something?"
   model (bio;bio-methods) -- as a noun
 change

 interpret
 mean (what you meant to change.)
 recognize (your intent) (what you're doing)
 understand (what you meant to change)

 wait

 get attempt try  -to

 desire 

 (have) in mind

 constrain
 
 recognize
 wish -- to do, that P
 intend to / that

 promise --status of raised 'object' and complement
 persuade   requires consulting the verb 

 go  come    
 going to X / gonna


|#
  

(define-category ask
  :specializes process ;; ECI communicate
  :mixins (ask/tell)
  :realization (:verb "ask"))
#|sp> (comlex-entry "ask")
((verb
  (:subc
   ((where-when-s) (pp-how-to-inf :pval1 *none*) (p-np-to-inf-oc :pval ("for"))
    (part-np-pp :adval ("up" "over" "out") :pval ("to"))
    (part-np :adval ("in" "out" "over" "up")) (p-possing :pval ("about"))
    (p-np-ing :pval ("about")) (p-wh-s :pval ("about"))
    (np-p-wh-s :pval ("about")) (np-p-np-ing :pval ("about"))
    (pp :pval ("after" "about" "for"))
    (np-pp :pval ("into" "to" "about" "for" "of")) (pp-pp :pval ("from" "for"))
    (s-subjunct) (to-inf-sc) (wh-s) (np-wh-s) (for-to-inf) (np-to-inf-vc) (np)
    (np-np))
   :features ((np-vsay) (pp-vsay :pval1 ("of")) (vsay))))) |#

(define-category believe ;; in P, that P, J
  :specializes state
  :mixins (prop-attitude)
  :realization (:verb "believe"))


;; 1.1 (p "Let's build a staircase.") 
;;     (p "build a staircase.")
(define-category build
    :specializes process
    ;; we're going through the steps of constucting the
    ;; staircase. With "lets'" we haven't even started
    :mixins (agent)
    :binds ((artifact artifact)) ;; what they build
    :restrict ((agent physical-agent))
    :realization (:verb ("build" :past-tense "built")
                  :etf (svo-passive)
                  :s agent
                  :o artifact
                  :mumble ("build" svo :s agent :o artifact)))

;; expect -- to do, that P, John to 
(define-category expect
  :specializes state
  :mixins (control-verb)
  :realization (:verb "expect"))


;; I failed to find a block
(define-category fail
  :specializes process ;; acomplishment?
  :mixins (action-on-eventuality)
  :realization 
    (:verb "fail"))

(define-category find ;; see bio;harvard-terms: bio-find
  :specializes process
  :mixins (action-verb)
  :restrict ((patient (:or physical-object location))) ;; find a block
  :realization
  (:verb ("find" :past-tense "found")))


(define-category give
  :specializes process
  :mixins (directed-action)
  :restrict ((theme (:or endurant abstract)))
  :realization (:verb ("give" :past-tense "gave"
                       :past-participle "given"
                       :present-participle "giving")
                      :etf (svo-passive)))
 
(define-category get
  :specializes accomplishment
  :mixins (action-verb)
  :restrict ((actor physical-agent)
             (patient physical))
  :realization (:verb ("get" :past-tense "got"
                       :past-participle "gotten")) ;; "have gotten a block"
  :documentation "'Get' as in 'come to have'. Could be
    construded as generalized possession: 'I've got a cold'.")

(define-category intend
  :specializes state
  :mixins (control-verb) ;;  except for not taking a simple object
  :realization (:verb "intend")
  :documentation "Ignoring obvious relationship to the noun
    'intention' -- need a good use-case to tie them together
    like some early transformational grammar did.")


;; know -- that P, John, John will P ("that" optional),
;;   how to
;;/// know of (any drug for cancer)
(define-category know
  :specializes process
  :mixins (knowledge-verb)
  :realization
    (:verb ("know" :past-tense "knew" :past-participle "known")))
;; "know the blocks are red", "what to do"
;; know Spencer to be a good cat
;; know that Spencer is a good cat

(define-category look-up
  :specializes process
  :mixins (action-verb)
  :realization (:verb ("look" :prep "up")))

(define-category make
  :specializes process
  :mixins (action-verb)
  :restrict ((actor physical-agent)
             (patient (:or artifact ;; what they build ('result' ??)
                           object-dependent-location)))
  :binds ((adj-comp attribute-value)) ;; "make the stack green"
  :documentation "The :adjp-complement is seen by the syntax fn
 assimilate-adj-complement to deal with the 'green' when it 
 composes with 'make the stack'."
  :realization
    (:verb ("make" :past-tense "made")
     :adjp-complement adj-comp 
     :mumble ("make" svo :a actor :o patient)))


(define-category move-something-somewhere
  :specializes move
  :mixins (agent with-specified-location)
  :restrict ((agent physical-agent)
             (theme endurant))
  :documentation "Inherits variables from move (in kinds/movement.lisp).
 where the theme should be restricted to 'can-change-location' (but presently
 that's too narrow for applications in biology). See also the large set
 of adjuncts to movement verbs in places/moving.lisp. 
 Could have been named PTRANS. Intended as the common parent of push, 
 put, place, nudge, etc. by way of the subcat mixin category move-something-verb"
   :realization (:verb "move"
                 :etf svol
                 :s agent
                 :o theme
                 :l to-location
                 :from from-location
                 :to to-location
                 :mumble ("move" svo1o2 :o1 theme :o2 to-location)))

#|
(define-category propose
    :specializes achievement
  :mixins (agent)
  :binds ((statement  ))
  :realization
  ((:verb "propose")
   (:mumble ("propose" svscomp :o statement))
   (:tree-family ))) |#
#|

(define-category show
    :specializes achievement
    :binds ((statement ))
    :realization
    ((:verb "show")
     (:mumble ("show" svscomp :s ? :o statement))))

(define-category suggest
    :specializes achievement
  :mixins
  :binds
  :realization
  ((:verb "suggest")
   (:mumble ("suggest" svscomp :s ? :o statement))))
|#

;;sp> (comlex-entry "tell")
;;((verb (:tensed/singular "tells" :infinitive "tell" :past-tense "told")

(define-category tell
  :specializes process
  :mixins (ask/tell) ;;prop-attitude directed-action)
  :restrict ((beneficiary interlocutor))
  :realization (:verb ("tell" :past-tense "told")))
;; tell someone to do something
;; tell someone that <proposition>
#| ;; version is biology/general-verbs
(define-category tell :specializes bio-rhetorical
  :mixins (bio-thatcomp raising-to-object directed-action bio-howcomp)
  :restrict ((beneficiary interlocutor))
  :realization (:verb ("tell" :past-tense "told")
                      :about statement
                      :etf (svo-passive))) |#


(define-category want ;; -something -to-do-something
  :specializes state
  :mixins (control-verb)
  :realization (:verb "want"))

;;------------------------ from places/moving.lisp ---------------

(when (current-script :fire)
  (define-movement-verb "cross")
  (define-movement-verb "drive")
  (define-movement-verb "follow")
  (define-movement-verb "travel")
  (define-movement-verb "turn"))




;;------------------------------ music ---------------

;; "Delete everything before beat 2 of measure 1"
;;
(define-category delete
  :specializes process
  :mixins (simple-action)
  :restrict ((theme (:or endurant sequence)))
  :realization (:verb "delete"))

;; "insert a F4 whole note on beat 1 of measure 4"
;;
(define-category insert ;; something somewhere -- see "put"
  :specializes process
  :mixins (move-something-verb)
  :realization (:verb "insert")
  :documentation "The move mixin provides for a physical or
 social agent as the subject. Something physical as the direct
 object (theme), and location variable for where it moves.")

;; "invert all the notes around G4"
(define-category invert
  :specializes process
  :mixins (simple-action)
  :realization (:verb "invert"))

;; "Move all the notes in measure 2 down an octave
;;    -- move their pitch, not their location.
;;  Should fail the 'can-change-location' constraint on the theme
;;  or the pitch interval will turn up odd for a location

;; "put a C in the rest"
;; "put a C where the rest is"
;; "put a C on top of the E"

;; "reverse the first and last notes"
;; "reverse everything between the C in measure 1 and the E in measure 2"
;;   feels like a single post-nominal argument, but it has a requirement
;;   that there are two elements that are going to exchange places
;;
(define-category reverse
  :specializes process
  :mixins (simple-action)
  :realization (:verb "reverse"))

;; "transpose the C up 1 half step"
;;
(define-category transpose
  :specializes process
  :mixins (simple-action)
  :binds ((amount step))
  :realization (:verb "transpose"
                :up amount))

;; "work on measures 1 and 2"
 (define-category work-on
  :specializes process
  :mixins (simple-action)
  :realization (:verb ("work" :prep "on")))




;;------------------------------ blocks world ---------------

(define-category add-to  ;; (p "Add another block to the row")
  :specializes achievement
  :mixins (move-something-verb with-specified-location)
  :documentation "This is the 'add' where we're extending
    a set that already exists. The 'to' that is picking out
    the set is always present, even if it's been
    omitted as obvious."
  :realization
    (:verb "add"
     :etf (svol)
     :s agent
     :o theme
     :loc-pp-complement (on
                         at
                         to) ;; "... to the row" via adjoin-pp-to-vg
      :mumble ("add" svo1o2 :s agent :o1 theme :o2 location)))
;;///replace with explicit preposition phrase
;;///would be easier if the spatial operators -were- the relation

(define-category hold-something
  :specializes process
  :mixins (action-verb)
  :restrict ((patient object))
  :realization (:verb ("hold" :past-tense "held"))
  :documentation "Needs extension or a variant for variants
    like 'hold it up' or (?) 'hold it higher'")


(define-category pull
    :specializes process
    :mixins (with-an-agent with-specified-location)
    :binds ((theme physical))
    :realization (:verb "pull"
                  :etf (svo-passive)
                  :s agent
                  :o theme
                  :loc-pp-complement (to next\ to)
                  :mumble ("pull" svo :s agent :o theme)))

(define-category push
    :specializes process
    :mixins (with-an-agent with-specified-location)
    :binds ((theme physical))
    :documentation "The meaning of push depends largly
    on what is pushed (= the type of the theme): block
    wall, door, etc. If the specific action to take
    is object (sort) specific then co-composition is
    involved in the interpretation of the literal 
    directive."
    :realization (:verb "push"
                  :etf (svo-passive)
                  :s agent
                  :o theme
                  :loc-pp-complement (to next\ to)
                  :mumble ("push" svo :s agent :o theme)))

;; If push-together inherits from push, it will try to
;; inherit the mdata on push, which leads to an odd clash
;; that's not worth addressing yet (7/20/17)
(define-category push-together
  :specializes process
  :mixins (with-an-agent theme)
  :restrict ((theme object))
  :binds ((items collection))
  :realization (:verb "push together"
                :etf (svo-passive)
                :s agent
                :o theme
                :mumble ("push" svop :s agent :o theme :p "together")))


(define-category put-something-somewhere
  :specializes process
  :mixins (move-something-verb)
  :realization
    (:verb ("put" :third-singular "puts" :past-tense "put"
	          :present-participle "putting")
     :etf svol
     :mumble ("put" svo1o2 :o1 theme :o2 location)))

(define-category roll
  :specializes process
  :mixins (action-verb)
  :realization (:verb "roll" :etf (svo-passive))
  :documentation "Balls and cylinders roll. Blocks don't.
    need a constraint model for that")

(define-category rotate
  :specializes process
  :mixins (action-verb)
  :realization (:verb "rotate" :etf (svo-passive))
  :documentation "Need to indicate that the patient must
    have an axis that it can rotate around")
                      
