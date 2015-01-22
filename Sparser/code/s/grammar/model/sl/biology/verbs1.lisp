;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs1"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2014

;; verbs initiated 7/23/14 by lifting verbs from NFkappaB experiment. Continued
;; through 12/3/14.
;;
;; verbs2 initiated 12/3/14 by lifting verbs from verbs.lisp to provide
;; an not-loaded scratch pad for the new design
;;
;; verbs1 initiated 12/11/14 as the file to load with everything converted
;; to the new design.
;; RJB 12/20/2014 corrected bad entry for resist -- had verb as "require"
;; RJB added note for :at modifier for inhibit
;;  add :on and :at modifiers for phosphorylate
;; improved definition for increase as a noun and verb
;; remove unlikely definition of "study" as a verb -- we need to handle ambiguity better
;; 1/2/2015 minor fixes -- mostly to get verbs with subject WE parsing -- this needs to be fixed, since the category used is the pronoun category, rather than a mixin for human
;; 1/14/2015 minor vocabulary hacking to address problems pointed out by David
;; 1/19.2015 remove all instances of "of-nominal" ETFs and replace by use of ":of object",
;; use def-synonym where needed to get noun and verb readings

(in-package :sparser)

;;;---------------------------
;;; macros for standard cases
;;;---------------------------

(defmacro svo/bio (verb)
  `(svo/bio/expr ,verb))

(defun svo/bio/expr (verb)
  (let* ((category-name (intern (string-upcase verb)
                                (find-package :sparser)))
         (form `(def-term ,category-name
                  :verb ,verb 
                  :etf (svo-passive)
                  :super-category bio-process
                  :s (agent bio-entity)
                  :o (object bio-process))))
    (eval form)))

;;;--------------------------------------------------------
;;; specific verbs (alphabetical except for obvious pairs)
;;;--------------------------------------------------------

(define-category bio-act
  ;; N.b. "bio-" implies that there's an unmarked "act" as well, and it's a bit cumbersome
  :specializes bio-process
  :binds ((actor bio-entity)
          (object bio-entity))
  :documentation "compare with act as")

(def-realization bio-act
  :verb "act"
  :etf sv
  :s actor
  :on object)


;; According to Sketch Engine on the Mitre corpus,
;; "act" by itself roughly means "do" or "behave" and can
;; take "on" and "in" as well as "to".
;; "act as" is always the equivalent of "is". 
;; There's also the full caps ACT, which stands for
;; "adoptive cell therapy"
#+ignore
(def-term "act" verb (svo)
  :super-category be
  :preposition "as"
  :subject bio-entity
  :theme bio-process) ;; better choice is complement 
;; and the etf thing-is-description
(define-category bio-act-as
  :specializes be
  ;;/// this was supposed to be a restrict on 'the
  ;; variables of 'be' rather than new ones, but that
  ;; operation looks like it wasn't finished.
  :binds ((theme . bio-entity)
          (description . bio-process))
  :realization
    (:verb "act"
     :prep "as"  ;; <<<<<<<<<<<
     :etf svo
     :s theme
     :o description))


(define-category bio-activate
  :specializes bio-process
  :binds ((activator biological) (activated biological)(mechanism biological))
  :realization
    (:verb "activate" 
     :noun "activation"
     :etf (svo-passive)
     :s activator
     :o activated
     :via mechanism
     :of activated))

;; bio-deactivate conflicts with bio-activate
;; so need to redesign the by-phrase to be uniform
;; and stated over the value restriction rather than
;; the variable
#+ignore (define-category bio-deactivate
  :specializes bio-process
  :binds ((deactivator bio-entity) (deactivated molecule))
  ::realization
   (:verb "deactivate" :noun "deactivation"
    :etf (svo-passive)
    :s deactivator
    :o deactivated
    :of deactivated))


;;--- activity
;; "ERK activity in BRAF mutant A375 melanoma cells" #8
;;  conjectured:  "activity of ERK"
#|(def-term activity-of-protein
  :super-category bio-process
  :noun "activity"
  -- pooh. we need a couple of NP ETF
|#

;; "GTP-binding" "GO:00055525
;; from http://www.ebi.ac.uk/QuickGO/GTerm?id=GO:0005525
;; "interacting selectively and non-covalently with GTP"
;;
(define-category bio-bind  :specializes bio-process
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((binder molecule)(bindee bio-entity)(site bio-location))
  :realization 
  (:verb ("bind" :past-tense "bound") :noun "binding"
         :etf (svo-passive) 
         :s binder
         :o  bindee
         :to bindee
         :via site
         :at site
         :with bindee))

(define-category bio-associate  :specializes bio-process ;; MAYBE THIS IS LIKE BIND
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((binder molecule)(bindee molecule)(site bio-location))
  :realization 
  (:verb "associate"
         :noun "association"
         :etf (svo-passive) 
         :s binder
         :o  bindee
         :to bindee
         :via site
         :with bindee
         :of bindee))

(define-category block
                 :specializes bio-process
  :binds ((blocker biological)(blocked biological)) ;; dec sentence 13 "depletion blocks ..."
  :realization
  (:verb "block"
         :noun "blocking"
         :etf (svo-passive)
         :s blocker
         :o blocked
         :of blocked))

;; "call"  assigns a name in passive "X is called N"

;;/// "catalyysis of phosphorylation by MEK"
(define-category catalyze
  :specializes bio-process
  :binds ((catalyst enzyme)(process bio-process))
  :realization
  (:verb "catalyze" :noun "catalysis" :adj "catalytic"
         :etf (svo-passive) 
         :s catalyst
         :o process
         :of process))


(define-category create
  :specializes bio-process
  :binds ((creator biological)(creation biological))
  :realization
  (:verb "create"
         :noun "creation"
         :etf (svo-passive) 
         :s creator
         :o creation
         :of creation))

(define-category bio-drive
  :specializes bio-process
  :binds ((driver biological)(driven biological)(mechanism biological))
  :realization 
  (:verb "drive"
   :etf (svo-passive) 
   :s driver
   :o driven
   :through mechanism))

;; "consist" (of)
;; ? (comlex-entry "consist")
;; ((verb (:subc ((p-ing-sc :pval ("in" "of")) (pp :pval ("of" "in"))))))

;;--- "encode"
;; <enzyme> encoded by <gene>
(define-category encode
  :specializes bio-process
  :binds ((encoder gene) (encoded protein)) ;; should be protein-or-transcript??
  :realization
  (:verb "encode"
   :noun "encoding"
   :etf (svo-passive)
   :s encoder
   :o encoded
   :of encoded))

(define-category bio-enhance
  :specializes bio-process
  :binds ((agent biological) (process bio-process)(mechanism biological))
  :realization 
  (:verb "enhance" :noun "enhancement"
   :etf (svo-passive)
   :s agent
   :o process
   :via mechanism
   :of process))
 
(define-category form
  :specializes bio-process
  :binds ((creator biological)(creation biological)(mechanism biological))
  :realization
  (:verb "form" :noun "formation"
  :etf (svo-passive) 
  :s creator
  :o creation
  :of creation
  :through mechanism
  ))

(define-category fraction :specializes bio-variant
  :binds ((agent pronoun/first/plural) (basis bio-entity)) ;; this should be for genes and proteins
  :realization
  (:verb "fraction" ;; bizarre, but needed to handle the conflict between "fractioned" and the noun
         :etf (svo-passive)
         :s agent
         :o basis
         :of basis))

(def-synonym fraction
  (:noun "fraction"
         :of basis))
;; exchange


;; formation "GO:0009058"
;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
;;  "gtp hydrolysis on ras"
;; "GO:0019514"
(define-category hydrolyze
  :specializes bio-process
  :binds ((agent molecule) ;; the agent which cause or scatalyzes the hydrolysis
          (object molecule) ;; the chemical that gets hydrolyzed
          (goal molecule) ;; the resulting chemical
          (substrate molecule)) ;;the context in which the hydrolysis occurs
  :realization            
  (:verb "hydrolyze" :noun "hydrolysis"
   :etf (svo-passive pre-mod) 
   :s agent 
   :o object 
   :m object
   :of object
   :to goal
   :on substrate))

(define-category bio-hyperactivate
  :specializes bio-process
  :binds ((activator bio-entity) (activated molecule))
  :realization
    (:verb "hyperactivate" 
     :noun "hyperactivation"
     :etf (svo-passive)
     :s activator
     :o activated
     :of activated))

;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"
(define-category induce
  :specializes bio-process
  :binds ((agent bio-entity) (object bio-process))
  :realization 
  (:verb "induce" :noun "induction" :adj "inducible"
   :etf (svo-passive)
   :s agent
   :o object))
;;/// want subtypes, want to understand the syntax of "-inducing"

(define-category increase
  :specializes bio-process
  :binds ((agent biological) 
          (object bio-process)
          (theme biological)) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb "increase" 
         :etf (svo-passive)
         :s agent
         :o object
         :for theme))

;; January
; "observed an order of magnitude increase in the rate of GTP hydrolysis"
; "No increase in the rate of GTP hydrolysis"
; "monoubiquitination increases the population of active, GTP–bound Ras"
; monoubiquitination increases the proportion of Ras ...
;  monoubiquitination decreases ..
; #41 "leads to its increased translocation to the cytosol/nucleus and increased binding to p53"

;;//// look at change in amount for how to do measures
;; until def-synonym actually works without clobbering earlier rules
(def-synonym increase
  (:noun "increase"
   :in object
   :of object))


;;--- inhibit
;; "by inhibiting <p>"

#+ignore  ;;current walker does not handle such ambiguities properly
(define-category inhibit-process
  :specializes bio-process
  :binds ((agent bio-entity) (object biological))
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" :present-participle "inhibiting")
   :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o object))


(define-category inhibit ;; was drug-inhibit but inhibit fits answer key
  :specializes bio-process
  :binds ((agent biological) 
          (object biological)
          (measurement unit-of-measure)) ;; FIX THIS -- for the moment the rule number-noun-rule makes 2nM a unit of measure, not a measurement))
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" 
                    :present-participle "inhibiting" )
   :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o object
   :at measurement
   :of object
   ;; :at bio-location ;; e.g. "at a downstream target ..."
   ))



;;--- "load" -- "GTP loading"
;; "activated upon GTP loading"
;; You load GTP onto something, presumably a protein
;; can you say "the loading of GTP onto Ras" ?
;; "Determination of GTP loading on Rho"
;; "regulation of Ras GTP loading"
;; "GTP-loading of Ras" <<< hyphen
;; "may involve Ras-GTP loading"
;; "enhanced GTP loading"
;; "Structural basis for conformational switching and GTP loading of the large G protein atlastin"

(define-category molecule-load
 :specializes bio-process
 :binds ((agent bio-entity) ;; causes the action
         (object molecule) ;; the nucleotyde that moves
         (substrate molecule))
 :realization
 (:verb "load"
  :etf (svo-passive)
  :s agent
  :o object
  :of substrate))
;; leads to rule bio-entity + load, 
;; which works, but isn't satisfying

(define-category mediate
  :specializes bio-process
  :binds ((agent bio-entity)(object bio-process))
  :realization
  (:verb   "mediate" :noun "mediation"
   :etf (svo-passive)
   :s agent
   :o object))

;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"
(define-category mutate
  :specializes bio-process
  :binds ((agent biological)(object biological))  ;; mutation of gene
  :realization
  (:verb "mutate" :noun "mutation"
   :etf (svo-passive)
   :s agent
   :o object
   :of object))
;; These two were in terms and need to be integrated with
;; this category
(np-head "mutant" :super 'bio-entity)
(def-cfr gene (mutate gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge object))



;;--- "phosphorylate"
;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"

(define-category phosphorylate
  :specializes bio-process
  :binds ((agent biological)(object molecule)(site residue-on-protein) )
  :realization
  (:verb "phosphorylate" :noun "phosphorylation"
   :etf (svo-passive)
   :s agent
   :o object
   :of object
   :on site
   :at site))


(define-category dephosphorylate
  :specializes bio-process
  :binds ((agent biological)(object molecule)) 
  :realization
  (:verb "dephosphorylate" :noun "dephosphorylation"
   :etf (svo-passive)
   :s agent
   :o object
   :of object))

#+ignore
(define-category auto-phosphorylate
  :specializes bio-process
  :binds ((agent bio-entity))
  :realization
  (:verb "auto-phosphorylate" :noun "auto-phosphorylation"
   :etf (sv)
   :s agent))



(define-category downregulate
  :specializes bio-process
  :binds ((agent bio-entity)(object biological))
  :realization
  (:verb   "downregulate" :noun "downregulation"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))

;;--- "regulate"
;;
(define-category regulate
  :specializes bio-process
  :binds ((agent biological)(object biological))
  :realization
  (:verb   "regulate" :noun "regulation"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))    ;; by <entity>


(define-category dysregulate
  :specializes bio-process
  :binds ((agent bio-entity)(object biological))
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive)
   :o object  ;; dysregulation of <process>
   :s agent
   :of object))    ;; by <entity>



;;--- "release"  "GO:0023061"
;; the rate of GDP or GTP release from the G-domain is slow

(define-category molecule-release
 :specializes bio-process
 :binds ((agent bio-entity)(object molecule)(substrate molecule))
 :realization
 (:verb "release" :noun "release"
  :etf (svo-passive)
  :s agent
  :o object
  ;; Comlex: (np-pp :pval ("in" "into" "from" "to"))
  ;;  and a lot of others
  :from substrate))


(define-category study-bio-process
 :specializes bio-process
 :binds ((agent pronoun/first/plural)(object bio-process))
 :realization
 (:verb ("study" :past-tense "studied" :present-participle "studying")
  :etf (svo-passive)
  :s agent
  :o object))

(def-synonym study-bio-process
  (:noun "study"
         :of object))

(define-category stimulate
  :specializes bio-process
  :binds ((agent bio-entity)(object biological))
  :realization
  (:verb "stimulate" :noun "stimulation"
   :etf (svo-passive)
   :o object  ;; stimulation of <process>
   :s agent
   :of object))    ;; by <entity>

(define-category suggest
  ;; :specializes rhetorical-process <----- find the right name
  :binds ((agent bio-process) 
          (theme bio-process)) ;;/// really a propositin
  :realization
  (:verb "suggest" :noun "suggestion"
   :etf (svcomp)
   :s agent
   :c theme))

(define-category transduce
  :specializes  bio-process
  :binds ((agent bio-entity)(object bio-entity))
  :realization
  (:verb "transduce" :noun "transduction" 
  :etf (svo-passive)
  :s agent
  :o object
  :of object))


;; "Growth factors can turn on Ras"
(def-term turn-on
  :super-category bio-activate
  :verb "turn"
  :prep "on"
  :etf (svo)
  :s (agent bio-entity)
  :o (object bio-entity))



;;; General vocabulary

;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."
(svo/bio "lower")



;; verb nominals
"" ;; keyword: (ion N) 
(define-category alter
    :specializes bio-process
    :binds ((agent biological)(object biological))
    :realization
    (:verb "alter"
	   :noun "alteration"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
	   ))

(define-category proliferate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "proliferate"
	   :noun "proliferation"
	   :etf (sv)
	   :s agent
	   :o object
           :of object
	   ))

;;This is almost never used as a verb -- only as "truncating...mutation" and "...truncation of ..."
(define-category truncate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "truncate"
	   :noun "truncation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
	   )) 

;;verb 

;; used almost entirely in "acquired restance" 
(define-category acquire
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "acquire" ;; keyword: ENDS-IN-ED 
	   :noun "acquisition"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
	   ))



#+ignore
(define-category approach
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "approach" 
	   :noun "approach"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

;; need to look at this -- what is the patterning for "X was associated with Y" -- what is the subject?
(define-category associate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-entity))
    :realization
    (:verb "associate" ;; keyword: ENDS-IN-ED 
	   :noun "association"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))



(define-category confer
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "confer" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

;; like inhibit "therapeutics are confounded by acquired resistance"
(define-category confound
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "confound" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category constitute
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "constitute" ;; keyword: ENDS-IN-ED 
	   :etf (svo)
	   :s agent
	   :o object))

(define-category correspond
    :specializes abstract
    :binds ((item1 biological)(item2 biological))
    :realization
  (:verb "correspond" :noun "correspondence"
         :etf (sv)
         :s item1
         :of item1
         :to item2
         :with item2))
  
  

(define-category culture
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "culture" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-synonym culture
  (:noun "culture"
         :of object))

(define-category decrease
  :specializes bio-process
  :binds ((agent biological)(object bio-scalar)) 
  :realization
  (:verb "decrease"
   :etf (svo-passive)
   :s agent
   :o object))

(def-synonym decrease
  (:noun "decrease"
         :of object))

(define-category depend
  :specializes bio-process
  :binds ((agent biological)(theme biological)) 
  :realization
  (:verb "depend" :noun "dependency"
   :etf (sv)
   :s agent
   :on theme))

(define-category deplete
  :specializes bio-process
  :binds ((agent biological)(object bio-entity)) 
  :realization
  (:verb "deplete" :noun "depletion"
   :etf (svo-passive)
   :s agent
   :o object
   :of object))

(define-category digest ;; as in a chemical process for breaking down proteins
  :specializes bio-process
  :binds ((agent biological)(object biological))
  :realization
  (:verb   "digest" :noun "digestion"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))


;; e.g. displayed sustained ERK phosphorylation
(define-category display
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "display" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           ))

(def-synonym display
  (:noun "display"
         :of object))

(define-category elute
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "elute" ;; keyword: ENDS-IN-ED 
	   :noun "elution"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category elevate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "elevate" ;; keyword: ENDS-IN-ED 
	   :noun "elevation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category engender
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "engender"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category escape
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process)(from bio-process))
    :realization
    (:verb "escape"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :from from))

(def-synonym escape
  (:noun "escape"
         :of object))
;; as in "genes express proteins" or "cell (lines) express proteins" and not the abstract sense
(define-category gene-transcript-express
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "express"
	   :noun "expression"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

;;events are favored in a context
(define-category favor
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb ("favor" :past-tense "favored") ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
	  ))  ;; :in bio-context))  <--------------- not in scope
;; mostly passive -- "... are found ..."
(define-category find
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb ("find" :past-tense "found")
	   :noun "finding"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))


(define-category indicate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "indicate" ;; keyword: ENDS-IN-ING 
	   :noun "indication"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category inform
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "inform" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category influence
    :specializes bio-process
    :binds ((agent biological)(object biological)(mechanism biological))
    :realization
  (:verb "influence" ;; keyword: ENDS-IN-ING 
         :etf (svo-passive)
         :s agent
         :o object
         :via mechanism))

(def-synonym influence
  (:noun "influence"
         :of agent
         :on object))

(define-category interfere
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "interfere" ;; keyword: ENDS-IN-ING 
	   :noun "interference"
	   :etf (sv)
	   :s agent
           :of agent
           :with object))

(define-category interrogate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "interrogate" ;; keyword: ENDS-IN-ING 
	   :noun "interrogation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category involve
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "involve" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category keep
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "keep"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category lead
    :specializes bio-process
    :binds ((agent biological)(object bio-process))
    :realization
    (:verb "lead" ;; keyword: ENDS-IN-ING 
	   :etf (sv)
	   :s agent
	   :to object))

(define-category maintain
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "maintain"
	   :noun "maintenance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category need
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "need" ;; keyword: ENDS-IN-ED 
	   :noun "need"
	   :etf (svo-passive)
	   :s agent
	   :o object
           ))

(def-synonym need
    (:noun "need"
           :of agent
           :for object))

(define-category occur
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb ("occur" :present-participle "occurring" :past-tense "occurred")
	   :noun "occurrence"
	   :etf (sv)
	   :s agent
	   :o object))

(define-category overexpress
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "overexpress"
	   :noun "overexpression"
	   :etf (svo-passive)
	   :s agent
	   :o object))


(define-category potentiate
    :specializes bio-process
    :binds ((agent biological)(object bio-process))
    :realization
    (:verb "potentiate" ;; keyword: ENDS-IN-ED 
	   :noun "potentiation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category predict
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "predict"
	   :noun "prediction"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category present
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "present"
	   :noun "presentation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category provide
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "provide"
	   :noun "provision"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category query
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "query" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category raise
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "raise" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))


(define-category recruit :specializes bio-process 
  :binds ((agent bio-entity)(object bio-process)(source biological)(destination biological)) 
  :realization 
  (:verb "recruit" :noun "recruitment"
         :etf (svo-passive) 
         :s agent
         :o object
         :to destination))

(define-category reduce
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "reduce" ;; keyword: ENDS-IN-ING 
	   :noun "reduction"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category relapse
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "relapse" ;; keyword: ENDS-IN-ING 
	   :noun "relapse"
	   :etf (svo-passive)
	   :s agent
	   :o object
           ))

(def-synonym relapse
  (:noun "relapse"
         :of object))

(define-category remain
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "remain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category represent
    :specializes bio-process
    :binds ((agent biological)(object bio-process))
    :realization
    (:verb "represent" :noun "representation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category require
    :specializes bio-process
    :binds ((agent biological)(object biological))
    :realization
    (:verb "require"
	   :noun "requirement"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :for object
           :of object))

(define-category resist
    :specializes bio-process
    :binds ((agent bio-entity)(object biological))
    :realization
    (:verb "resist"
	   :noun "resistance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :to object
           :of agent))


(define-category result
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "result" ;; keyword: ENDS-IN-ED 
	   :etf (svo)
	   :s agent
           :o object
	   :in object))

(def-synonym result
  (:noun "result"
         :of object))

(define-category select
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological)(study study-bio-process))
    :realization
    (:verb "select" ;; keyword: ENDS-IN-ED 
	   :noun "selection"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :for study
           :of object))

(define-category seem
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "seem"
	   :etf (svo)
	   :s agent
	   :o object))

;; can be both "<people> show ..." and "<molecule> shows <properties>"
(define-category show
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb ("show" :past-tense "shown")
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category report
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb ("report" :past-tense "reported")
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category suppress
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "suppress" ;; keyword: ENDS-IN-ED 
	   :noun "suppression"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category sustain
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "sustain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category target
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb ("target" :present-participle "targeting" :past-tense "targeted")  ;; keyword: ENDS-IN-ED 
	   :noun "targeting"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category tend
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "tend" ;; keyword: ENDS-IN-ED 
	   :noun "tendency"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of agent)) 


(define-category underly
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "underly" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object))


(define-category yield
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "yield" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-synonym yield
  (:noun "yield"
         :of object))

(define-category stimulate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "stimulate"
	   :noun "stimulation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))


;; clausal roles
;; really want to have the form "CRAF allows CRAF to hyperactivate the pathway"  -- want the clausal modiffer
(define-category allow
    :specializes bio-process
    :binds ((agent bio-entity)(object molecule))
    :realization
    (:verb "allow" ;; keyword: ENDS-IN-ING 
	   :noun "allowance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category cause
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "cause" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-synonym cause
  (:noun "cause"
         :of object))

;;verbs which tend to have human agents -- both abstract (in terms of discussing argument structure) and otherwise

(define-category articulate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "articulate" ;; keyword: ENDS-IN-ED 
	   :noun "articulation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

;; DAVID -- not sure about the relation of basis to base
(define-category base
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process)(cause biological))
    :realization
    (:verb "base" ;; keyword: ENDS-IN-ED 
	   :noun "basis"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :on cause
           ))

(define-category consider
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb ("consider"  :past-tense "considered") ;; keyword: ENDS-IN-ED 
	   :noun "consideration"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category demonstrate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "demonstrate" ;; keyword: ENDS-IN-ED 
	   :noun "demonstration"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category describe
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb "describe"
	   :noun "description"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category elucidate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "elucidate" ;; keyword: ENDS-IN-ED 
	   :noun "elucidation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category hypothesize
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb "hypothesize" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)
	   :s agent
	   :o object
           ))

(define-category identify
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological))
    :realization
    (:verb "identify" ;; keyword: ENDS-IN-ED 
	   :noun "identification"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :as agent
           :of object))

(define-category know
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "know"
	   :noun "knowledge" 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category observe
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological)(focused-on biological))
    :realization
    (:verb "observe" ;; keyword: ENDS-IN-ED 
	   :noun "observation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :for focused-on
           :of object))

(define-category obtain
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process)(source biological))
    :realization
    (:verb "obtain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :from source))

(define-category perform
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process)
            (beneficiary biological)(using biological))
    :realization
    (:verb "perform" ;; keyword: ENDS-IN-ED 
	   :noun "performance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :with using
           :of object
           :on beneficiary))

(define-category posit
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb "posit"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category propose
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb "propose"
	   :noun "proposal"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category test
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb "test" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category use
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological)(result biological))
    :realization
    (:verb "use" ;; keyword: ENDS-IN-ED 
           :noun "use"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :to result))



(define-category validate
    :specializes bio-process
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "validate" ;; keyword: ENDS-IN-ED 
	   :noun "validation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category is-bio-entity
  :specializes be  
  :binds ((entity biological)(predication biological)))

(def-cfr IS-BIO-ENTITY (be biological)
  :form vp
  :referent (:instantiate-individual is-bio-entity
                :with (predication right-edge)))

(def-cfr is-bio-entity (biological is-bio-entity)
  :form s
  :referent (:head right-edge
                   :bind (entity left-edge)))



;;__________ verbs from January set
(define-category contain :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "contain"  :etf (svo-passive) :s agent :o object)) 
;; alm ost never a verb (define-category model :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "model"  :etf (svo-passive) :s agent :o object)) ;;VERB unknown word "modeling" keyword: ENDS-IN-ING definiing lemma as a 
(define-category signal :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "signal"  :etf (svo-passive) :s agent :o object)) ;;VERB unknown word "signalling" keyword: ENDS-IN-ING definiing lemma as a 

(define-category abrogate :specializes bio-process 
  :binds ((agent biological)(object bio-process)) 
  :realization
  (:verb "abrogate" :noun "abrogation" 
         :etf (svo-passive) :s agent :o object))
(define-category affect :specializes bio-process 
  :binds ((agent biological)(object biological)(result biological)) 
  :realization 
  (:verb "affect" :etf (svo-passive) 
         :s agent 
         :o object
         :to result))
;;FIX THIS DAVID(define-category analyze :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "analyze" :noun ("analysis" :plural "analyses") :etf (svo-passive) :s agent :o object))
(define-category analyze :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "analyze" :noun "analysis" :etf (svo-passive) :s agent :o object))
(define-category compare :specializes bio-process 
  :binds ((agent pronoun/first/plural)
          (object biological)
          (camparator biological)
          (context bio-context))
  :realization 
  (:verb "compare" :noun "comparison"
         :etf (svo-passive)
         :s agent 
         :o object
         :to camparator
         :in context
         :of object))
(define-category conserve :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "conserve" :noun "conservation" :etf (svo-passive) :s agent :o object) )
(define-category dissect :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "dissect" :noun "dissection" :etf (svo-passive) :s agent :o object)) 
(define-category dominate :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "dominate" :noun "domination" :etf (svo-passive) :s agent :o object)) 
(define-category establish :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "establish" :noun "establishment" :etf (svo-passive) :s agent :o object)) 
(define-category examine :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "examine" :noun "examination" :etf (svo-passive) :s agent :o object)) 
(define-category explanation :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "explain" :noun "explanation" :etf (svo-passive) :s agent :o object)) 
(define-category generate :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "generate" :noun "generation" :etf (svo-passive) :s agent :o object)) 
(define-category immunoprecipitate :specializes bio-process
  :binds ((agent pronoun/first/plural)(object bio-entity)(origin bio-location))
  :realization 
  (:verb "immunoprecipitate" :noun "immunoprecipitation"
         :etf (svo-passive) 
         :s agent 
         :o object
         :from origin
         :of object))
(define-category impair :specializes bio-process
  :binds ((agent biological)(object biological)) 
  :realization 
  (:verb "impair" :noun "impairment"
         :etf (svo-passive)
         :s agent
         :o object
         :of object))
(define-category incorporate :specializes bio-process 
  :binds ((agent biological)(object biological))
  :realization 
  (:verb "incorporate" :noun "incorporation"
         :etf (svo-passive)
         :s agent
         :o object
         :of object)) 
(define-category interact :specializes bio-process 
  :binds ((agent biological)(object bio-process)(interactor biological)) 
  :realization 
  (:verb "interact" :noun"interaction" 
         :etf (sv) 
         :s agent 
         ;;:o object ;; THIS IS BOGUS -- NEED HELP WITH SV verbs
         :with interactor
         :of agent))
(define-category investigate :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "investigate" :noun "investigation" :etf (svo-passive) :s agent :o object)) 
(define-category lead :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "lead" :etf (svo-passive) :s agent :o object)) 
(define-category ligate :specializes bio-process 
  :binds ((agent bio-entity)(object bio-process)(substrate bio-entity) ;; either a residue-on-protein (dectest 8) ubiquitin C77, or a molecule
          ) 
  :realization 
  (:verb "ligate" :noun "ligation" 
         :etf (svo-passive)
         :s agent
         :o object
         :to substrate
         :of object))
(define-category measure :specializes bio-process
  :binds ((agent pronoun/first/plural)(object bio-process)) 
  :realization 
  (:verb "measure" :noun "measurement"
         :etf (svo-passive)
         :s agent
         :o object
         :of object)) 
(define-category modify :specializes bio-process
  :binds ((agent bio-entity)(object bio-process))
  :realization 
  (:verb "modify" :noun "modification"
         :etf (svo-passive) 
         :s agent
         :o object
         :of object))

(define-category place :specializes bio-process
  :binds ((agent pronoun/first/plural)(object bio-process)(location bio-location))
  :realization 
  (:verb "place" 
         :noun "placement" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :at location))
(define-category preserve :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "preserve" :noun "preservation" :etf (svo-passive) :s agent :o object)) 
(define-category purify :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "purify" :noun "purification" :etf (svo-passive) :s agent :o object)) 
(define-category reconstitute :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "reconstitute" :noun "reconstitution" :etf (svo-passive) :s agent :o object))
(define-category reveal :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "reveal" :noun "revelation" :etf (svo-passive) :s agent :o object))
(define-category stabilize :specializes bio-process
  :binds ((agent biological)(object biological))
 :realization
  (:verb "stabilize" :noun "stabilization"
         :etf (svo-passive) 
         :s agent :o object
         :of object))
(define-category transcribe :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "transcribe" :noun "transcription" :etf (svo-passive) :s agent :o object))
(define-category translocation :specializes bio-process 
  :binds ((agent bio-entity)(object bio-process)(source biological)(destination biological)) 
  :realization 
  (:verb "translocate" :noun "translocation" 
         :etf (svo-passive) 
         :s agent
         :o object
         :to destination))

(define-category verify :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "verify" :noun "verification" :etf (svo-passive) :s agent :o object)) 

#+ignore
(def-realization have
  :binds ((owner biological)(measure bio-scalar))
  :realization
  (:verb "have"
         :etf (svo)
         :s owner
         :o measure))

;; overnight
(define-category assume
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological))
    :realization
    (:verb "assume" ;; keyword: ENDS-IN-ED 
	   :noun "assumption"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category detect
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological)(detector biological))
    :realization
    (:verb "detect" ;; keyword: ENDS-IN-ED 
	   :noun "detection"
           :adj "detectable"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
           :by biological))

(define-category prevent :specializes bio-process 
  :binds ((agent biological)(object bio-process)) 
  :realization
  (:verb "prevent" :noun "prevention" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :of object))
(define-category disrupt :specializes bio-process 
  :binds ((agent biological)(object bio-process)) 
  :realization
  (:verb "disrupt" :noun "disruption" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :of object))

(define-category bio-grow  :specializes bio-process
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((agent pronoun/first/plural)(object bio-entity))
  :realization 
  (:verb ("grow" :past-tense "grown") :noun "growing"
         :etf (svo-passive) 
         :s agent
         :o  object
         ))

(define-category remove
    :specializes bio-process
    :binds ((agent pronoun/first/plural)(object biological))
    :realization
    (:verb "remove" ;; keyword: ENDS-IN-ED 
	   :noun "removal"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category transition
 :specializes bio-process
 :binds ((agent bio-entity)(object molecule)(from biological)(to biological))
 :realization
 (:verb "transition" ; :noun "release"
  :etf (svo-passive)
  :s agent
  :o object
  :from from
  :to to))

(def-synonym transition
   (:noun "transition"))

(define-category cycle
 :specializes bio-process
 :binds ((agent bio-entity)(object molecule)
         (from biological)(to biological)(path state))
 :realization
 (:verb "cycle"
  :etf (svo-passive)
  :s agent
  :o object
  :from from
  :to to
  :between path))


