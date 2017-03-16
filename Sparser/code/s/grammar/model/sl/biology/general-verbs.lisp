;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "general-verbs"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2017

;; Lifted out of verbs.lisp 2/23/17. These verbs are either
;; quite general (applicable to many domains), or are needed
;; for Harvard texts.


(in-package :sparser)


;; According to Sketch Engine on the Mitre corpus,
;; "act" by itself roughly means "do" or "behave" and can
;; take "on" and "in" as well as "to".
;; "act as" is always the equivalent of "is". 
;; There's also the full caps ACT, which stands for
;; "adoptive cell therapy"

;;--- activity
;; "ERK activity in BRAF mutant A375 melanoma cells" #8
;;  conjectured:  "activity of ERK"
#|(def-term activity-of-protein
  :super-category bio-process
  :noun "activity"
  -- pooh. we need a couple of NP ETF
|#
(define-category bio-act
  ;; N.b. "bio-" implies that there's an unmarked "act" as well, and it's a bit cumbersome
  :specializes other-bio-process
  :binds ((actor (:or bio-entity bio-location))
	  (co-actor bio-entity)
          (object bio-entity)
          (process bio-process)
          (functionality (:or  bio-process bio-entity bio-location))
          (bio biological)
          (tocomp biological))
  :documentation "compare with act as"
  :realization
  (:verb "act"
	 :etf sv
	 :noun "action"
	 :s actor
	 :with co-actor
	 :at bio
	 :as functionality
	 :by process
	 :on object
	 :through bio
	 :via bio
	 :to-comp tocomp))

(define-category addition :specializes caused-bio-process
  :mixins (bio-thatcomp)
  :binds ((added biological))
  :realization
  (:verb "add" :noun "addition"
         :etf (svo-passive)
         :into added
         :to added))


;; clausal roles
;; really want to have the form "CRAF allows CRAF to hyperactivate the pathway"  -- want the clausal modiffer
(define-category allow :specializes positive-bio-control
    :binds ((process (:or biological have process)))
    :realization
    (:verb ("allow" :past-tense "allowed" :past-participle "allowed") ;; keyword: ENDS-IN-ING 
	   :noun "allowance"
	   :etf (svo-passive)
           :for object
           :for affected-process
           :to-comp process))

"" ;; keyword: (ion N) 
(define-category alter :specializes bio-control
    :realization
    (:verb "alter"
	   :noun "alteration"
	   :etf (svo-passive)))

(define-category analyze :specializes bio-method
  :mixins (bio-whethercomp bio-ifcomp)
  :realization 
  (:verb "analyze" :noun "analysis" 
         :etf (svo-passive)))

(def-synonym analyze (:verb "analyse" :etf (svo-passive) ))


(define-category bio-apply :specializes bio-method
  :realization
  (:verb "apply"
         :etf (svo-passive)
         :noun "application"))


;; overnight
(define-category assume :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
  (:verb "assume" ;; keyword: ENDS-IN-ED 
         :noun "assumption"
         :etf (svo-passive)))


;; The category 'attribute' is in core/kinds/attribution.lisp.
;; If we gave that version a lemma it would be the noun reading/
(define-category attribute/verb :specializes bio-rhetorical
    :binds ((cause biological))
    :realization
    (:verb "attribute" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :to cause))


(define-category block :specializes negative-bio-control
  :realization
     (:verb "block"
      :noun "blocking"
      :etf (svo-passive)
      :with object))
;; which one wins? 
(define-category block
  :specializes negative-bio-control
  :realization
    (:verb "block"
     :etf (svo-passive)
     :noun "blockage"))


(define-category call :specializes bio-rhetorical
  :realization (:verb "call" :etf (svo)))

(define-category cause
  :specializes positive-bio-control
  ;; 'cause <disease>' from caused-bio-process
  :realization
    (:verb "cause"
     :etf (svo-passive)
     :noun "cause"))


(define-category change :specializes bio-control
      :binds ((scale scalar-quality)
              (original (:or bio-entity))
              (resulting (:or bio-entity))
              ) 
      :realization
      (:verb "change"
             :etf (svo-passive)
             :noun "change"
             :in object
             :in affected-process
             :of object
             :of affected-process
             :on scale
             :from original
             :to resulting
             :into resulting))

(define-category confer :specializes bio-control
    :binds ((to bio-entity)
            (bio biological))
    :realization
    (:verb "confer" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :on bio
           :to to
           :upon bio))


(define-category consider :specializes bio-rhetorical
    :mixins (bio-whethercomp)
    :binds ((tocomp (:or be biological))) ;; could be "the effects..."
    :realization
    (:verb ("consider" :present-participle "considering"
                       :past-tense "considered") ;; keyword: ENDS-IN-ED 
	   :noun "consideration"
	   :etf (svo-passive)
           :to-comp tocomp))


(define-category contrast :specializes bio-rhetorical
  :binds ((contrasted-with biological))
  :realization
  (:verb "contrast" :etf (sv)
         :noun "contrast"))

(define-category constitute :specializes bio-relation
  :realization
  (:verb "constitute" ;; keyword: ENDS-IN-ED 
         :etf (svo)))

(define-category construct :specializes bio-method
    :realization
    (:verb "construct"
           :noun "construct" ;; TO-DO this is the RESULT, not the proces
	   :etf (svo-passive)))

(define-category contain :specializes bio-relation 
     :realization 
     (:verb "contain"  
            :etf (svo-passive) ))


(define-category continue :specializes aspectual-relation
  :binds ((agent biological)
          (process bio-process))
  :realization 
  (:verb "continue"  
         :etf (svo-passive)
         :s agent
         :o process))


(define-category contribute :specializes positive-bio-control ;; not sure about this
  :binds ((contribution biological))
  :realization (:verb "contribute" 
                      :etf (svo-passive)
                      :noun "contribution"
                      :o contribution
                      :to object
                      :to-comp object))

(define-category conversion-change :specializes change   ;; for our purposes, since we only have biologically relevant reactions
   :realization (:noun "conversion"
                       :verb "convert"
                       :etf (svo-passive)
                       :to resulting
                       ))

(define-category convince :specializes bio-rhetorical
  :realization
  (:verb "convince"
         :noun "conviction" :etf (svo-passive)))

(define-category cooperate :specializes bio-act
  :realization
  (:verb "cooperate" :noun "cooperation"
         :etf (sv)))  

(define-category correspond :specializes bio-relation
  :binds ((property common-noun))
  :realization
  (:verb "correspond" :noun "correspondence"
         :etf (sv)
         :in property ;; "fragments correspond in size..."
         :to theme
         :with theme))

(define-category create
  :specializes caused-bio-process
  :binds ((source (:or bio-entity)))
  :realization
  (:verb "create"
         :noun "creation"
         :etf (svo-passive) 
         :from source))

(define-category compromise
  :specializes negative-bio-control
  :realization
  (:verb   "compromise"
	   :etf (svo-passive)))


(delete-noun-cfr (resolve "delay"))
;; Remove existing version of "delay" to replace it with this one
(define-category delay :specializes bio-control
    :realization
    (:verb "delay"
           :noun "delay"
	   :etf (svo-passive )
           :in object
           :in affected-process))

(def-synonym delay (:noun "delay"))


(define-category demonstrate :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "demonstrate" ;; keyword: ENDS-IN-ED 
	   :noun "demonstration"
	   :etf (svo-passive)))


(define-category depend
  :specializes bio-relation
  :realization
  (:verb "depend" :noun "dependency"
         :adj "dependent"
   :etf (sv)
   :on theme
   :upon theme))


(define-category describe :specializes bio-rhetorical
    :realization
    (:verb "describe"
	   :noun "description"
	   :etf (svo-passive)))

(define-category detect :specializes immune-method ;; not only, but should allow for antibodies
    :realization
    (:verb "detect" ;; keyword: ENDS-IN-ED 
	   :noun "detection"
           :adj "detectable"
	   :etf (svo-passive)))


(define-category determine :specializes bio-rhetorical
  :mixins (bio-whethercomp bio-ifcomp)
  :realization
  (:verb "determine"
         :noun "determination"
         :etf (svo-passive)))

(define-category development :specializes caused-bio-process
  :realization (:verb ("develop" :present-participle "developing" :past-tense "developed")
		      :etf (svo-passive)
		      :noun "development"))

(define-category diminish :specializes negative-bio-control
  :restrict ((object (:or biological scalar-quality)))
  :realization
  (:verb ("diminish"  :third-singular "diminishes"  :past-tense "diminished"
          :present-participle "diminishing")
         :etf (svo-passive)
         :for object
         :in object
         :of object
         :optional-object t))

;; e.g. displayed sustained ERK phosphorylation
(define-category display :specializes bio-rhetorical
  :realization
  (:verb "display" ;; keyword: ENDS-IN-ED 
         :etf (svo-passive)
         :noun "display"))

(define-category disrupt :specializes negative-bio-control
  :realization
  (:verb "disrupt" :noun "disruption" 
         :etf (svo-passive)))



(define-category dominate :specializes bio-relation 
  :realization 
  (:verb "dominate" 
  :noun "domination" 
  :etf (svo-passive)
  :o theme
  :optional-object t))

(define-category bio-drive
  :specializes positive-bio-control
  :realization 
  (:verb "drive"
   :etf (svo-passive)))

(define-category direct-control ;; to avoid conflict with the adjective "direct"
  :specializes bio-control
  :realization
  (:verb   "direct" :noun "direction"
   :etf (svo-passive)))



(define-category effect :specializes bio-control
  :realization
  (:verb "effect"
	 :etf (svo-passive)
	 :of agent
	 :on object
         :on affected-process))

(def-synonym effect
    (:noun "effect"))

(define-category elevate
  :specializes positive-bio-control
  :realization
    (:verb "elevate" ;; keyword: ENDS-IN-ED 
	   :noun "elevation"
	   :etf (svo-passive)))

(define-category elicit
  :specializes positive-bio-control
  :realization
    (:verb ("elicit" :past-participle "elicited" :past-tense "elicited") ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))

(define-category eliminate
  :specializes bio-method
  :realization
    (:verb "eliminate"
	   :noun "elimination"
	   :etf (svo-passive)))


(define-category elucidate :specializes bio-rhetorical 
    :mixins (bio-whethercomp)
     ;; change object to biological, since we have December 51, "in a manner that elucidates ... targets"
    :realization
    (:verb "elucidate" ;; keyword: ENDS-IN-ED 
	   :noun "elucidation"
	   :etf (svo-passive)))


(define-category enable :specializes positive-bio-control
    :binds ((process (:or biological have process)))
    :realization
    (:verb ("enable" :past-tense "enabled" :past-participle "enabled" :present-participle "enabling") ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
           :for object
           :for affected-process
           :to-comp process))

(define-category engender :specializes positive-bio-control
    :realization
    (:verb "engender"
	   :etf (svo-passive)))


(define-category bio-produce
  :specializes positive-bio-control
  :realization 
  (:verb "produce" :noun "production"
   :etf (svo-passive)))


(define-category establish :specializes bio-rhetorical 
  :mixins (bio-whethercomp bio-thatcomp)
  :binds ((to-be biological))
  :realization 
  (:verb "establish" 
         :noun "establishment" 
         :etf (svo-passive) 
         :as to-be))

(define-category examine
  :specializes bio-rhetorical
  :mixins (bio-whethercomp bio-ifcomp)
  :binds ((presence-of biological))
  :realization
  (:verb "examine"
         :noun "examination"
         :etf (svo-passive)
         :for presence-of))


(define-category exist :specializes bio-predication
  :binds ((measurement (:or measurement bio-scalar))
          (theme bio-chemical-entity))
  :realization
  (:verb "exist"
         :noun "existence"
         :etf (sv)
	 :of measurement
         :of theme))

(define-category expect :specializes bio-rhetorical
    :realization
    (:verb "expect" 
           :noun "expectgation" 
           :etf (svo-passive)))


(define-category explanation :specializes bio-rhetorical
    :realization
    (:verb "explain" 
           :noun "explanation" 
           :etf (svo-passive)))


(define-category grow :specializes bio-method
  :realization
  (:verb ("grow" :past-tense "grown")
         :etf (svo-passive)))


(define-category bio-form :specializes caused-bio-process
  :realization
  (:verb "form"
         ;; "form" has never been seen as a verb in the corpus, but "forms" and "formed"
         ;; have been seen
         ;; NOW: "form" occurs in the Reactome comments
         :noun "formation"
         :etf (svo-passive) ))

(define-category frees :specializes caused-bio-process
   :binds ((free-of biological))
   :realization 
   (:verb ("free" :past-tense "freed")
	  :etf (svo-passive)
	  :of free-of))

(define-category free :specializes bio-relation
  :binds ((free-of biological))
  :realization (:adj "free" :of free-of))
		 


(define-category bio-grow  :specializes bio-method
  :realization 
  (:verb ("grow" :past-tense "grown") ;; :noun "growing"
         :etf (svo-passive)))


(define-category identify :specializes bio-method
    :mixins (immune-method)
    :binds ((to-be biological)
            (manner manner))
    :realization
    (:verb "identify" ;; keyword: ENDS-IN-ED 
	   :noun "identification"
	   :etf (svo-passive)
           :as to-be
           :in  manner))

(define-category illustrate :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; it was shown that
  :realization
  (:verb "illustrate"
         :etf (svo-passive)))


(define-category improve :specializes bio-method
  :realization
  (:verb "improve" :etf (svo-passive)))

(define-category include :specializes bio-relation
  :realization
  (:verb ("include" :present-participle "includingxxx")
         :etf (svo)
         ))

(define-category incorporate :specializes bio-relation 
  :realization 
  (:verb "incorporate" :noun "incorporation"
         :etf (svo-passive)
         :o theme
         :into subject))

(define-category indicate :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "indicate" ;; keyword: ENDS-IN-ING 
	   :noun "indication"
	   :etf (svo-passive)))

(define-category influence :specializes bio-control
    :realization
  (:verb "influence" ;; keyword: ENDS-IN-ING 
         :etf (svo-passive)))

#| only two examples of noun use of "influence"
(LOAD-TEST 998 "Although the anchorage-independent growth assay measures only one of many phenotypes of transformation and does not, for example, recapitulate tumor microenvironment or account for the influence of the immune system on tumor formation, this system will be useful for dissecting inhibitor response and downstream signaling pathways, particularly for those mutants not found in existing cancer-derived cell lines.") 
(LOAD-TEST 1219 "Given the documented levels of HuR association with SIRT1 and VHL mRNAs ( xref ) and the SIRT1 and VHL mRNA half-lives ( xref A), we investigated the influence of non-phosphorylatable HuR Y200F mutant on the abundance of these mRNAs.") 

(def-synonym influence (:noun "influence" :of agent :on object))
|#

(define-category inform :specializes bio-rhetorical
    :realization
    (:verb "inform" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)))

(define-category initiate
  :specializes positive-bio-control
  :realization 
  (:verb "initiate" :noun "initiation"
   :etf (svo-passive)))

;;--- inhibit
;; "by inhibiting <p>"

(define-category inhibit ;; was drug-inhibit but inhibit fits answer key
  :specializes negative-bio-control
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" 
                    :present-participle "inhibiting" )
   :noun "inhibition"
   :etf (svo-passive)))

(def-synonym inhibit  (:noun "inhibitory interaction" :with object))



(define-category bio-insert :specializes caused-bio-process
  :binds ((substrate (:or protein gene protein-domain molecular-location))
          (between residue-on-protein)
          (after residue-on-protein))
  :realization 
  (:verb "insert" :noun"insertion" 
         :etf (svo-passive) 
         :into substrate
         :between between))

(define-category interact :specializes other-bio-process
  :binds ((interactor biological)) 
  :realization 
  (:verb "interact" :noun"interaction" 
         :etf (sv) 
         :of subject
         :with interactor
         :between interactor))

(define-category interrogate :specializes bio-method
    :realization
    (:verb "interrogate" ;; keyword: ENDS-IN-ING 
	   :noun "interrogation"
	   :etf (svo-passive)))


(define-category interfere :specializes negative-bio-control
    :realization
    (:verb "interfere" ;; keyword: ENDS-IN-ING 
	   :noun "interference"
	   :etf (sv)
           :in object
           :with object))


(define-category involve :specializes bio-relation
    :realization
    (:verb "involve" ;; keyword: ENDS-IN-ING 
	   :etf (svo)
           :o theme
           :in theme))

(define-category keep :specializes bio-relation
    :realization
    (:verb ("keep" :past-tense "kept")
	   :etf (svo-passive)
           :o theme))


(define-category know :specializes bio-rhetorical
  :binds ((topic biological)
          (tocomp (:or be biological)))
    :realization
    (:verb ("know" :past-tense "known")
	   :noun "knowledge" 
	   :etf (svo-passive)
           :about topic
           :to-comp tocomp))

(define-category lacking :specializes bio-relation
  :realization
  (:verb ("lack" ;; don't block noun
          :third-singular "lacks" ;; don't block noun
          :past-tense "lacked"
          :present-participle "lacking")
         :etf (svo)))


(delete-noun-cfr (resolve "lead"))
(delete-noun-cfr (resolve "leads"))
(define-category lead :specializes positive-bio-control
  :restrict ((agent (:or bio-process bio-method bio-mechanism bio-relation)))
  :binds ((leads-to (:or biological bio-rhetorical)))
  :realization
    (:verb ("lead" :past-tense "led")
     :etf (svo)
     :o object
     :to leads-to
     :to-comp leads-to))


#+ignore
(define-category leads-to :specializes cause
  :realization
  (:verb "lead"
         :etf (sv)
         :prep "to"))


(define-category leave :specializes move
  :binds
  ((object t)
   (origin t)
   (destination t))
  :realization 
  (:s object
      :at origin
      :into destination
      :to destination
      :to destination
      :of object
      :from origin
      :m destination
      :m object)
  :realization
  (:verb ("leave" :past-tense "left" :third-singular "leaves" :present-participle "leaving")
         :etf (svo)))

(define-category limit :specializes negative-bio-control
  :realization
  (:verb ("limit" :past-tense "limited" :present-participle "limiting")
         :etf (svo-passive)))   


(define-category lower :specializes negative-bio-control
  :restrict ((object bio-process))
  :realization
  (:verb ("lower" :past-tense "lowered" :past-participle "lowered" :present-participle "lowering")
         :etf (svo-passive)))

(define-category lower-adj :specializes bio-predication
  :realization
  (:adj "lower"))


(define-category lose :specializes negative-bio-control
  :restrict ((object (:or protein gene)) )
  :realization 
  (:verb ("lose" :present-participle "losing" :past-participle "lost"
                 :past-tense "lost")
   :noun "loss" 
   :etf (svo-passive) 
   :o object
   :of object))


(define-category mean :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; the analysis revealed
  :realization
  (:verb ("mean"  :past-tense "meant")
         :etf (svo)))


(define-category modify :specializes bio-control
  :binds ((site molecular-location))
  :realization 
  (:verb "modify" :noun "modification"
         :etf (svo-passive)
	 :at site))


(define-category need :specializes bio-relation
    :binds ((needed-for process))
    :realization
      (:verb "need" 
       :noun "need"
       :etf (svo-passive)
       :o theme
       :for needed-for
       :to-comp needed-for))


(define-category observe :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((focused-on biological)
            (method (:or bio-method result))
	    (ingredient-condition bio-entity))
    :realization
    (:verb "observe" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :by method ;; can also be people..
           :for focused-on
           :under method
	   :with method
	   :with ingredient-condition))

(define-category obtain :specializes bio-method
    :binds ((source biological)
            (method bio-method))
    :realization
    (:verb "obtain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :by method
           :from source
           :without source))

(define-category occur :specializes bio-predication
    :realization
    (:verb ("occur" :present-participle "occurring" :past-tense "occurred")
	   :noun "occurrence"
	   :etf (sv)))


;; new definitions from MITRE test set
(define-category overlap :specializes bio-relation
  :realization
  (:verb "overlap" 
         :noun "overlap"
         :etf (svo-passive)
         :with theme
         :o theme
         :in subject
         :among subject
         :between theme))


(define-category perform :specializes bio-method
    :binds ((beneficiary biological)
            (using biological)
            (method bio-method))
    :realization
    (:verb "perform" ;; keyword: ENDS-IN-ED 
	   :noun "performance"
	   :etf (svo-passive)
           :by method
           :on beneficiary
           :with using))


(define-category place :specializes bio-method
  :binds ((site molecular-location))
  :realization 
  (:verb "place" 
         :noun "placement" 
         :etf (svo-passive)
	 :at site))

(define-category posit :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "posit"
	   :etf (svo-passive)))

(define-category predict :specializes bio-rhetorical
    :mixins (bio-thatcomp)
  ;; agent can be a process, like "mutation"
    :realization
    (:verb "predict"
	   :noun "prediction"
	   :etf (svo-passive)))



(define-category preparation :specializes bio-method
  ;; agent can be a process, like "mutation"
    :realization
    (:verb "prepare"
	   :noun "preparation"
	   :etf (svo-passive)))

(define-category presentation :specializes bio-relation ;; the category "present" is the adjective "present"
    :realization
    (:verb "present"
	   :noun "presentation"
	   :etf (svo-passive)
           :o theme))


(define-category preserve :specializes bio-control
  :realization
  (:verb "preserve" :noun "preservation"
         :etf (svo-passive))) 


(define-category prevent :specializes negative-bio-control
  :realization
  (:verb "prevent" :noun "prevention" 
         :etf (svo-passive)))

(define-category prolong :specializes bio-control
  :realization
  (:verb "prolong"
         :etf (svo-passive)))

(define-category prove :specializes bio-rhetorical
    :realization
    (:verb "prove" :noun "proof"
           :etf (svo-passive)))


;; (p "Dimerization of ERK has been proposed as a requirement for nuclear translocation.")
(define-category propose :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((to-be bio-process))
    :realization
    (:verb "propose"
     :noun "proposal"
     :etf (svo-passive)
     :as to-be))


(define-category protect :specializes caused-bio-process
    :restrict ((agent (:or protein gene bio-process))
               (object bio-entity))
  :binds ((protects-against bio-process))
    :realization
    (:verb "protect"
     :noun "protection"
     :etf (svo-passive)
     :s agent
     :o object
     :from protects-against))



;; TO-DO may want to split rehtorical version and bio-chemical version
;; "X provides support for Y" and "X supports process Y"
(define-category provide :specializes bio-relation
    :restrict ((subject (:or result biological))
               (theme (:or insight argument-support biological bio-rhetorical)))
    :realization
    (:verb "provide"
	   :noun "provision"
	   :etf (svo-passive)
           :o theme))

(define-category put-forward :specializes bio-rhetorical
   :realization
   (:verb ("put"
	   :third-singular "puts"
	   :past-tense "put"
	   :present-participle "putting")
	  :etf (svo-passive)))


(define-category query :specializes bio-method
  :mixins (bio-whethercomp)
  :binds ((against pathway))
  :realization
  (:verb "query" ;; keyword: ENDS-IN-ED 
         :etf (svo-passive)
         :against against)) ;; "12,484 genes were queried against KEGG biopathways"


(define-category bio-question :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "question" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)))



(define-category raise :specializes positive-bio-control
    :binds ((object (:or bio-process bio-abstract  bio-rhetorical antibody)) 
            (method bio-method)
            (bio biological))
    :realization
    (:verb "raise" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :against bio
           :by method))

(define-category read :specializes bio-rhetorical
  :realization
  (:verb ("read" :past-tense "read" :past-participle "read")
         :etf (svo-passive)))

(define-category persist :specializes bio-predication
  :realization
  (:verb "persist" :etf (sv)))


(define-category rely :specializes bio-relation
  :realization
  (:verb "rely"
         :etf (sv)
         :on theme))

(define-category remove :specializes bio-method
    :binds ((source biological))
    :realization
    (:verb "remove" ;; keyword: ENDS-IN-ED 
	   :noun "removal"
	   :etf (svo-passive) 
           :from source))

(delete-verb-cfr (resolve "report"))
(delete-verb-cfr (resolve "reported"))
(delete-verb-cfr (resolve "reporting"))

(define-category report :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb ("report" :past-tense "reported")
           :noun "report"
	   :etf (svo-passive)))

;;TO-DO -- fix this one
(define-category represent :specializes bio-relation
  :binds ((visual-presentation visual-presentation))
  :realization
  (:verb "represent" :noun "representation"
         :etf (svo-passive)
         :o theme
         :in visual-presentation))

(define-category require :specializes bio-control
  :binds ((requirement (:or biological process))
	  (purpose biological))
    :realization
    (:verb "require"
	   :noun "requirement"
	   :etf (svo-passive)
	   :o requirement
           :for purpose))

(define-category result :specializes bio-relation
    :binds ((results-in (:or bio-process bio-method bio-predication)))
    :restrict ((subject perdurant))
    :realization
    (:verb ("result" :third-singular "results") ;; block plural form of the verb, because of interaction with noun
	   :etf (sv)
           :from subject 
	   :in results-in
           :of subject))

(def-synonym result (:noun "result"))


(define-category return :specializes caused-bio-process
 :binds ((state bio-state)
         (scalar scalar-quality))
 :realization
 (:verb "return"
  :etf (sv)
  :to state
  :to scalar))

(define-category reveal :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; the analysis revealed
  :realization
  (:verb "reveal" :noun "revelation" 
         :etf (svo-passive)))



(define-category sample :specializes bio-method
  :realization
  (:verb "sample" :noun "sample"
         :etf (svo-passive)))

(define-category see :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; the analysis revealed
  :realization
  (:verb ("see"  :past-tense "saw" :past-participle "seen")
         :etf (svo-passive)))


(define-category select :specializes bio-method
    :binds ((study bio-method))
    :realization
    (:verb "select" ;; keyword: ENDS-IN-ED 
	   :noun "selection"
	   :etf (svo-passive)
           :for study))



;;>>>>> 
;; N.b. trying to move "seem" et al to the general vocabulary,
;;  See rules/syntax/copulars.lisp.  Need to figure out
;;  how to get the equivalent of biological for the restriction
(define-category seem :specializes be
  :mixins (bio-rhetorical)
    :binds ((tocomp (:or be biological)))
    :realization
    (:verb "seem"
	   :etf (svo)
           :to-comp tocomp))
(make-copular-def "seem")

(def-synonym seem (:verb "appear" :etf (svo)))
(make-copular-def "appear")


(define-category set-value :specializes caused-bio-process
  :binds ((value (:or number measurement unit-of-measure scalar-quality)))
  :realization
  (:verb "set"
         :etf (svo-passive)
         :to value))


;; can be both "<people> show ..." and "<molecule> shows <properties>"
(define-category show :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :binds ((tocomp (:or be biological predication)))
  ;; it was shown that
  :realization
  (:verb ("show" :past-tense "showed" :past-participle "shown")
         :etf (svo-passive)
         :to-comp tocomp))

(define-category reveal :specializes show
		 :realization
		 (:verb "reveal"
			:etf (svo-passive)))

(define-category slow :specializes negative-bio-control
    :realization
    (:verb "slow" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))

(define-category stay
  :specializes be
  :mixins (bio-rhetorical)
  :realization
    (:verb "stay"
     :etf (svo)))
(make-copular-def "stay")


(define-category start :specializes bio-rhetorical
  :realization (:verb "start" :etf (svo)))

(define-category strengthen :specializes positive-bio-control
  :realization
  (:verb "strengthening"
         :etf (svo-passive)
         ))

(define-category study-bio-method :specializes bio-method
  ;; can study bio-process or bio-entity
 :realization
 (:verb ("studyxxx" :past-tense "studied" :present-participle "studying")
  :etf (svo-passive)))

(def-synonym study-bio-method (:noun "study" :of object))


(define-category succeed :specializes bio-relation
  :realization
  (:verb "succeed" :noun "success"
   :etf (sv)
   :in theme))

(define-category suggest :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
  (:verb "suggest" :noun "suggestion"
         :etf (sv)))

(define-category tend :specializes bio-rhetorical
   ;; :mixins (bio-tocomp) working on this.. other comps not working.
    :realization
    (:verb "tend" ;; keyword: ENDS-IN-ED 
	   :noun "tendency"
	   :etf (sv)))

(define-category test :specializes bio-method
  :mixins (bio-whethercomp)
  :binds ((object (:or bio-rhetorical biological))
          (presence-of biological))
  :realization
  (:verb "test" ;; keyword: ENDS-IN-ED 
         :etf (svo-passive)
         :for presence-of
         :o object)) ;; seems to be needed to make use of changed definition of object -- TO-DO fisx handling of restrict

(define-category think :specializes bio-rhetorical
  :realization
  (:verb ("think" :past-tense "thought") :etf (svo-passive)))

(define-category treatment :specializes bio-method
  :restrict ((object (:or species cell-entity))) ;; the variable "disease" specializes "object" and has special prepositions
  :binds ((treatment biological)
	  (disease disease)
          (modifier (:or bio-predication modifier)))
  :realization
  (:verb "treat"
   :noun "treatment"
   :o disease ;; "... drugs that treat cancer"
   :o object
   :etf (svo-passive)
   :for disease
   :of disease
   :with treatment))

(define-category understand :specializes bio-rhetorical
  :realization
  (:verb ("understand" :past-tense "understood")
         :etf (svo-passive)))

(define-category bio-use :specializes bio-method
    :binds ((used-to biological)
            (purpose (:or bio-event bio-predication bio-process bio-method bio-rhetorical)))
    :realization
    (:verb ("useXXX" :past-tense "used" :present-participle "using")
           :noun "use"
	   :etf (svo-passive)
           :to used-to
           :to-comp purpose))