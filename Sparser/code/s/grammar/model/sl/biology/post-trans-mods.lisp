;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from phenomena 3/1/17
;; Contains post-translational modifications; phosphorylation; ubiquitination; and post-translational modifications with IDs 

(in-package :sparser)

;;;---------------------------------
;;; post-translational-modification
;;;---------------------------------

;;"It is interesting that various stimuli provoke EGF receptor tyrosine phosphorylation by two distinct means.")

(define-category post-translational-modification :specializes caused-biochemical-process
  :binds ((substrate (:or protein variant bio-complex bio-entity)) ;; allow variant to pick up "phosphorylated fraction"
	  (site molecular-location)
          (amino-acid amino-acid)) ;; which is attached here
  :restrict ((agent (:or protein  bio-mechanism bio-activate)) ;;bio-process
	     (object s)) ;; trying to BLOCK object by giving it an impossible class
  :realization 
  (:noun "post-translational modification"
         :o substrate
	 :o site
         :m amino-acid
         :m substrate
         :m site
         :m agent ;;somehow this overrides the ones below
         :of substrate
	 :of site
         :at amino-acid
	 :on amino-acid ;;"BRAF that is phosphorylated on serine and tyrosine."
	 :at site
	 :in site
	 :m site
	 :on site))

(def-synonym post-translational-modification
     (:noun "post-transcriptional modification"))  
(def-synonym post-translational-modification
     (:noun "post-transcriptional fate"))  

#+ignore ;; not sure if this is a post-translational process or a cellular-process
(define-category transformation
  :specializes  post-translational-modification
  :realization
  (:verb "transform" :noun "transformation" 
  :etf (svo-passive)))

(define-category phosphorylation-modification :specializes post-translational-modification)

(define-category acetylation
  :specializes post-translational-modification
  :realization
  (:verb "acetylate" :noun "acetylation"
         :etf (svo-passive)))

(define-category de-acetylation
  :specializes post-translational-modification
  :realization
  (:verb "de-acetylate" :noun "de-acetylation"
   :etf (svo-passive)))

(def-synonym de-acetylation
    (:verb "deacetylate" :noun "deacetylation"))
(define-category farnesylation 
  :specializes post-translational-modification 
  :realization 
  (:verb "farnesylate"
         :noun "farnesylation"
         :etf (svo-passive) ))

(define-category glycosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "glycosylate"
     :noun "glycosylation"
     :etf (svo-passive)))

(define-category de-glycosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "deglycosylate"
     :noun "deglycosylation"
     :etf (svo-passive)))

(def-synonym de-glycosylation
    (:verb "de-glycosylate"
           :noun "de-glycosylation"
           :etf (svo-passive)))

(define-category hydroxylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "hydroxylate"
     :noun "hydroxylation"
     :etf (svo-passive)))

(define-category methylation 
  :specializes post-translational-modification
  :restrict ((substrate (:or protein variant dna gene)))
  :realization 
  (:verb "methylate"
	 :noun "methylation"
	 :etf (svo-passive)))

(define-category ribosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "ribosylate"
     :noun "ribosylation"
     :etf (svo-passive)))

(define-category sumoylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "sumoylate"
     :noun "sumoylation"
     :etf (svo-passive)))


;;;---------------
;;; phosphorylate
;;;---------------

;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"
(define-category phosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "phosphorylate" :noun "phosphorylation" :adj "phospho"
         :etf (svo-passive)))


(define-category auto-phosphorylate
  :specializes phosphorylation-modification
  :realization
  (:verb "auto-phosphorylate" :noun "auto-phosphorylation"
   :etf (sv)))

(def-synonym auto-phosphorylate
  (:verb "autophosphorylate" :noun "autophosphorylation"
   :etf (sv)))

(def-synonym auto-phosphorylate
             (:verb "autophosphosphorylate"
              :etf (sv)))

(define-category cis-auto-phosphorylate
  :specializes auto-phosphorylate
  :realization
  (:verb "cis-auto-phosphorylate" :noun "cis-auto-phosphorylation"
   :etf (sv)))
(def-synonym cis-auto-phosphorylate
             (:verb "cis-autophosphosphorylate"
              :etf (sv)
              :noun "cis-autophosphorylation"))

(define-category trans-auto-phosphorylate
  :specializes auto-phosphorylate
  :realization
  (:verb "trans-auto-phosphorylate" :noun "trans-auto-phosphorylation"
   :etf (sv)))
   
(def-synonym trans-auto-phosphorylate
             (:verb "trans-autophosphosphorylate"
                    :etf (sv)
                    :noun "trans-autophosphorylation"))

(define-category dephosphorylate
  :specializes post-translational-modification
  :realization
  (:verb "dephosphorylate" :noun "dephosphorylation"
   :etf (svo-passive)))

(def-synonym dephosphorylate
  (:verb "de-phosphorylate" :noun "de-phosphorylation"
   :etf (svo-passive)))

(def-synonym dephosphorylate
  (:noun "dephophosphorylation" ;; mispelling from comments
))

(define-category transphosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "transphosphorylate" :noun "transphosphorylation"
   :etf (svo-passive)))

(define-category hypersphosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "hyperphosphorylate" :noun "hyperphosphorylation"
   :etf (svo-passive)))

(define-category unphosphorylate
  :specializes post-translational-modification
  :realization
  (:verb "unphosphorylate"
	 :etf (svo-passive)))

(define-category double-phosphorylate
  :specializes phosphorylation-modification ;; changed from post-translational-modification
  :realization
  (:verb "double-phosphorylate"
	 :etf (svo-passive)))

;;;---------------
;;; ubiquitination
;;;---------------

; monoubiquitination increases the population 
;;  this process has this effect
; the enzymatic and chemical ubiquitination linkers 
; the monoubiquitinated and unmodified fractions of Ras
; the sensitivity of mUbRas
; our ability to easily generate mUbRas
; the c–terminus of Ubiquitin (Ubiquitin C77)
; Ras ligated to Ubiquitin C77
; ligated to Ubiquitin G76C. <--- point mutation
(def-bio "ubiquitin" protein)
;; not strictly true, but a reasonable approximation. 

(define-category ubiquitination
 :specializes post-translational-modification 
  :realization 
    (:verb "ubiquitinate"
     :noun "ubiquitination"
     :etf (svo-passive)))

(def-synonym ubiquitination 
             (:verb "ubiquitylate" 
                    :etf (svo-passive)
                    :noun "ubiquitylation"))

(define-category auto-ubiquitinate
  :specializes ubiquitination
  :realization
  (:verb "auto-ubiquitinate" :noun "auto-ubiquitination"
   :etf (sv)))

(def-synonym auto-ubiquitinate
             (:verb "auto-ubiquitylate" 
                    :etf (svo-passive)
                    :noun "auto-ubiquitylation"))

(def-synonym auto-ubiquitinate 
             (:verb "autoubiquitinate"
                    :etf (sv)
                    :noun "autoubiquitination"))

(define-category poly-ubiquitination :specializes ubiquitination
  :realization
  (:verb "poly-ubiquitinate" 
         :etf (svo-passive)
         :noun "poly-ubiquitylation"))

(def-synonym poly-ubiquitination 
             (:verb "polyubiquitinate"
                    :etf (sv)
                    :noun "polyubiquitination"))


;;;------------------------------
;;; mUbRas, monoubiquitinated Ras
;;;------------------------------
;;///// This is a process/result pattern. This verb results
;; in a protein that has been ubiquitinated. (Has one or
;; more ubiquitin molecules attached to it.
;; Need to do this systematically

;; In Baker et al.
;; "we did not separate monoubiquitinated Ras (mUbRas) from ..."
;; Jan #1 "the effect of Ras monoubiquitination on ...
;; ... effect of Ras monoubiquitination on ...
;; Resulting version of Ras after adding one ubiquitin. 

;; strictly for the rule-label
(define-category monoubiquitination 
 :specializes post-translational-modification
  :realization 
  ;;/// only providing a realization for the result, not the process
  ;; that leads to the result
    (:verb "monoubiquitinate" 
     :noun "monoubiquitination"
     :etf (svo-passive)))

(def-synonym monoubiquitination 
             (:verb "mono-ubiquitinate" 
                    :etf (svo-passive)
                    :noun "mono-ubiquitination"))

(def-synonym monoubiquitination 
             (:verb "mono-ubiquitylate" 
                    :etf (svo-passive)
                    :noun "mono-ubiquitylation"))

(def-synonym monoubiquitination 
             (:verb "monoubiquitylate" 
                    :etf (svo-passive)
                    :noun "monoubiquitylation"))

;;;---------------------------------
;;; post-translational-modification with ID
;;;---------------------------------


;; LB: manually changed from bio-process because categories aren't distinguished by TRIPS
(def-ided-indiv post-translational-modification "PTM" "GO:0043687" :name "post-translational protein modification") 
(def-ided-indiv post-translational-modification "poly-adenylation" "NCIT:C18947" :name "RNA polyadenylation") 
(def-ided-indiv methylation "hyper-methylation" "NCIT:C20102" :name "hypermethylation") 
(def-ided-indiv post-translational-modification "de-SUMOylation" "GO:0016926" :name "protein desumoylation")
;; LB: didn't want to make it of type sumoylation because it's reverse -- need to handle better
(def-ided-indiv post-translational-modification "deubiquitination" "GO:0016579" :name "protein deubiquitination") 
;; LB: didn't want to make it of type ubiquitination because it's reverse -- need to handle better

