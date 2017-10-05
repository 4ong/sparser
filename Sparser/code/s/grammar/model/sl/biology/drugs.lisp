;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "drugs"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Define drugs based on results gleaned from the cureRAS corpus with SketchEngine
;; NOTE: there are a number of mis-spelling here -- neeed to figure out how to deal with them
;; RJB 12/13/2014 make "drug" and "inhibitor" drugs -- not sure about this, but they are treated like that for the annotation
;; added a couple of new drugs 885-A and sb590885
;; RJB 12/16/2014 added drugs starting with CI- and others found during that search
;; LB 5/10/2017 moved inhibitors here since they specialize drug

(in-package :sparser)
;;--- Drugs
; MAPK pathway inhibitors. MAPK pathway inhibition, MAPK inhibitors
; PLX4032 treatment
; potentiated the effects of PLX4032
; following treatment with the MEK inhibitor AZD6244
; retaining transcriptional response to vemurafenib and AZD6244

(define-category inhibitor :specializes drug
  :binds ((process (:or bio-process bio-mechanism))
          (protein protein))
  :realization (:noun "inhibitor" :m process :m protein :of process :of protein))


;; THIS NEEDS WORK
(define-category repressor :specializes inhibitor
  :realization (:noun "repressor"))

(define-category suppressor :specializes inhibitor
  :realization (:noun "suppressor"))

(define-category negative-regulator :specializes inhibitor
  :realization (:noun "negative regulator"))


(noun "therapeutics" :super drug) ;; keyword: (ics N) 

#+ignore
(defun define-drug (drug-name)
  (eval `(np-head ,drug-name :super 'drug :rule-label 'drug)))
;;(define-drug "inhibitor")

(defun define-drug (drug-name)
  (def-bio/expr drug-name 'drug :takes-plurals nil))

;; amazing name for sorafenib
;(define-drug "N -(3-trifluoromethyl-4-chlorophenyl)- N '-(4-(2-methylcarbamoyl pyridin-4-yl)oxyphenyl)urea)")



#+ccl(define-drug "fcγriib")
(define-drug "4-OHT")
(define-drug "4-hydroxytamoxifen")
(define-drug "885-A")
(define-drug "AZ3146")
;(define-drug "BAY43-9006") ;; also known as sorefenib!!
(define-drug "BKM120")
(define-drug "CI-1033")
(define-drug "CI-1040")
(define-drug "CI-994")
(define-drug "LY294002")
(define-drug "NGH.S4")
(define-drug "abciximab")
(define-drug "abl-ib")
(define-drug "activity-dasatinib")
(define-drug "adalimumab")
(define-drug "adriamycin")
(define-drug "afatinib")
(define-drug "aib")
(define-drug "alectinib")
(define-drug "alemtuzumab")
(define-drug "alisertib")
(define-drug "alvocidib")
(define-drug "anisomycin")
(define-drug "anti-adalimumab")
(define-drug "anti-infliximab")
(define-drug "antib")
(define-drug "antiestrogen")
(define-drug "arhgdib")
(define-drug "arry-142886")
(define-drug "arry300")
(define-drug "arry438162")
(define-drug "arry4704")
(define-drug "arry8162")
(define-drug "augib")
(define-drug "axitinib")
(define-drug "azd0530")
(define-drug "azd0865")
(define-drug "azd1152")
(define-drug "azd2014")
(define-drug "azd2171")
(define-drug "azd2281")
(define-drug "azd4547")
(define-drug "azd5363")
(define-drug "azd6224")
(define-drug "azd6244")
(define-drug "azd6244+")
(define-drug "azd628")
(define-drug "azd6482")
(define-drug "azd64823")
(define-drug "azd7451")
(define-drug "azd8055")
(define-drug "azd8330")
(define-drug "azd8931")
(define-drug "azd9291")
(define-drug "barasertib")
(define-drug "basiliximab")
(define-drug "bay61-3606")
(define-drug "bevacizumab")
(define-drug "bevasizumab")
(define-drug "bib")
(define-drug "blinatumomab")
(define-drug "bortezomib")
(define-drug "bosutinib")
(define-drug "brentuximab")
(define-drug "brivanib")
(define-drug "brodalumab")
(define-drug "c-abl-ib")
(define-drug "cabozantinib")
(define-drug "calfizomib")
(define-drug "canertinib")
(define-drug "capecitabine")
(define-drug "carfilzomib")
(define-drug "carflizomib")
(define-drug "cediranib")
(define-drug "celecoxib")
(define-drug "celexoxib")
(define-drug "ceritinib")
(define-drug "certolizumab")
(define-drug "cetuximab")
(define-drug "cixutumumab")
;(define-drug "cobimetinib")
(define-drug "crenolanib")
(define-drug "cresib")
(define-drug "crib")
(define-drug "critzotinib")
(define-drug "crizotanib")
(define-drug "crizotinib")
(define-drug "dabrafenib")
(define-drug "dabrafinib")
(define-drug "dabrefenib")
;(define-drug "dacarbazine")
(define-drug "dacetuzumab")
(define-drug "dacomitinib")
(define-drug "dalotuzumab")
(define-drug "dasatanib")
(define-drug "dasatinib")
(define-drug "denosumab")
(define-drug "describ")
(define-drug "dib")
;(define-drug "dinaciclib")
;(define-drug "dinaclib")
(define-drug "docetaxel")
;(define-drug "dovitinib")
(define-drug "dtic-ipilimumab")
(define-drug "e6201")
(define-drug "eculizumab")
(define-drug "efalizumab")
;(define-drug "erlotinib")
(define-drug "etaracizumab")
(define-drug "etrolizumab")
(define-drug "everolimus")
(define-drug "ficlatuzumab")
(define-drug "figitumumab")
(define-drug "fitc-adalimumab")
(define-drug "fluvastatin-celecoxib")
(define-drug "folfiri-cetuximab")
(define-drug "folfox-plus-cetuximab")
;(define-drug "foretinib")
(define-drug "fostamatinib")
(define-drug "fresolimumab")
;(define-drug "ganetespib")
;(define-drug "ganetispib")
(define-drug "ganitumab")
(define-drug "gdc0941")
;(define-drug "gefinitib")
;(define-drug "gefitinib")
(define-drug "gefitnib")
(define-drug "gelfitinib")
(define-drug "gemtuzumab")
(define-drug "getfinib")
(define-drug "gharib")
(define-drug "gib")
(define-drug "glembatumumab")
(define-drug "golimumab")
(define-drug "gse20051")
(define-drug "gsk1059615")
(define-drug "gsk1070916")
(define-drug "gsk1070916a")
(define-drug "gsk112012")
(define-drug "gsk1120212")
(define-drug "gsk1120212b")
(define-drug "gsk1220212")
(define-drug "gsk1363089")
(define-drug "gsk2080806a")
(define-drug "gsk2091975")
(define-drug "gsk2091976")
(define-drug "gsk2110183")
(define-drug "gsk2110212")
(define-drug "gsk21118436")
(define-drug "gsk2118236")
(define-drug "gsk2118436")
(define-drug "gsk211843617")
(define-drug "gsk2118436a")
(define-drug "gsk2118438")
(define-drug "gsk2119563a")
(define-drug "gsk212")
(define-drug "gsk2126458")
(define-drug "gsk2126458*")
(define-drug "gsk2141765")
(define-drug "gsk2141795")
(define-drug "gsk2141795b")
(define-drug "gsk2366297")
(define-drug "gsk2366297a")
(define-drug "gsk2636771")
(define-drug "gsk269962a")
(define-drug "gsk3052230")
(define-drug "gsk436")
(define-drug "gsk461364")
(define-drug "gsk661637")
(define-drug "gsk690693")
(define-drug "gsk795")
(define-drug "gsk923295")
(define-drug "habib")
(define-drug "haib")
(define-drug "hib")
(define-drug "hirmab")
(define-drug "ib")
(define-drug "ibritumomab")
;(define-drug "ibrutinib")
(define-drug "icotinib")
(define-drug "ii-iiib")
(define-drug "iib")
(define-drug "iiib")
;(define-drug "imanitib")
(define-drug "in-a-fib")
(define-drug "infliximab")
(define-drug "inflixmab")
(define-drug "iniparib")
(define-drug "ionafarnib")
(define-drug "ionomycin")
(define-drug "ipilimumab")
(define-drug "ipilumumab")
(define-drug "irinotecan")
(define-drug "irinotecan-bevacizumab")
(define-drug "irinotecan-cetuximab")
(define-drug "ixekizumab")
(define-drug "jtp-74057")
(define-drug "khatib")
(define-drug "kit-imatinib")
(define-drug "lambrolizumab")
;(define-drug "lapatanib")
;(define-drug "lapatinib")
(define-drug "lenvantinib")
(define-drug "lenvatinib")
(define-drug "leptomycin")
(define-drug "lerdelimumab")
(define-drug "lestaurtinib")
(define-drug "levatinib")
(define-drug "lexatumumab")
(define-drug "lgib")
(define-drug "lgx818")
(define-drug "lib")
;(define-drug "linsitinib")
(define-drug "lomeguatrib")
(define-drug "lonafarnib")
(define-drug "lucatumumab")
(define-drug "m-vimentib")
(define-drug "mab")
(define-drug "manual-lib")
(define-drug "mapatumumab")
;(define-drug "marizomib")
(define-drug "masitinib")
(define-drug "matuzumab")
(define-drug "mepolizumab")
(define-drug "metelimumab")
(define-drug "metmab")
(define-drug "mib")
(define-drug "mk2006")
(define-drug "mk2206")
(define-drug "motesanib")
(define-drug "moxetumomab")
(define-drug "mutalib")
(define-drug "n-desmethyl-selumetinib")
(define-drug "natalizumab")
(define-drug "necitumumab")
(define-drug "neratinib")
(define-drug "nib")
(define-drug "nilotinib")
(define-drug "nimesulide")
(define-drug "nimotuzumab")
(define-drug "nimozutumab")
(define-drug "nintedanib")
(define-drug "nivolumab")
(define-drug "nocodazole")
(define-drug "non-crizotinib")
(define-drug "non-ipilimumab")
(define-drug "nonbevacizumab")
(define-drug "nortezomib")
(define-drug "nvgib")
(define-drug "nvugib")
(define-drug "ofatumumab")
(define-drug "ogib")
;(define-drug "olaparib")
(define-drug "omalizumab")
(define-drug "onartuzumab")
(define-drug "ornatuzumab")
(define-drug "overt-ogib")
;(define-drug "oxaliplatin")
(define-drug "paclitaxel")
(define-drug "pacritinib")
;(define-drug "palbociclib")
(define-drug "panitumimab")
(define-drug "panitumumab")
;(define-drug "pazopanib")
(define-drug "pd03250901")
(define-drug "pd03259019")
(define-drug "pd0332991")
(define-drug "pd035901")
(define-drug "pd0925301")
(define-drug "pd098059")
(define-drug "pd09805937")
(define-drug "pd148352")
(define-drug "pd150606")
(define-drug "pd153035")
(define-drug "pd166326")
(define-drug "pd166866")
(define-drug "pd173074")
(define-drug "pd184352")
(define-drug "pd325901")
(define-drug "pd352901")
(define-drug "pd4283")
(define-drug "pd4289")
(define-drug "pd4292")
(define-drug "pd4301")
(define-drug "pd4301d")
(define-drug "pd5863")
(define-drug "pd5866")
(define-drug "pd5868")
(define-drug "pd5874")
(define-drug "pd5878")
(define-drug "pd5888")
(define-drug "pd5891")
(define-drug "pd901")
(define-drug "pd98059")
(define-drug "pe-mab")
(define-drug "pelitinib")
(define-drug "pertuzumab")
(define-drug "peykabl-ib")
(define-drug "pidilizumab")
(define-drug "pimasertib")
(define-drug "pioglitazone")
(define-drug "plx")
(define-drug "plx3603")
(define-drug "plx40")
(define-drug "plx4023")
(define-drug "plx4032")
(define-drug "plx40323")
(define-drug "plx40324")
(define-drug "plx470")
(define-drug "plx4720")
(define-drug "plx47200")
(define-drug "plx472013")
(define-drug "plx472018")
(define-drug "plx47206")
(define-drug "plx4723")
(define-drug "plx5568")
(define-drug "plx7486")
(define-drug "plx7904")
(define-drug "plx8394")
(define-drug "ponatinib")
(define-drug "popabl-ib")
(define-drug "post-ipilimumab")
(define-drug "post-sorafenib")
(define-drug "post-vemurafenib")
(define-drug "poziotinib")
(define-drug "pre-imatinib")
(define-drug "pre-vemurafenib")
(define-drug "quizartinib")
(define-drug "racotumomab")
(define-drug "ramcirumab")
(define-drug "ramucirumab")
(define-drug "rapamycin")
(define-drug "ratib")
(define-drug "recentin")
(define-drug "refametinib")
;(define-drug "regorafenib")
(define-drug "reslizumab")
(define-drug "rg7204")
(define-drug "rhumab")
(define-drug "rib")
(define-drug "ribs")
(define-drug "rilotumumab")
(define-drug "rituxamab")
(define-drug "rituximab")
(define-drug "ro5185426")
(define-drug "ro5212054")
(define-drug "rofecoxib")
(define-drug "ruxolitinib")
(define-drug "saha")
(define-drug "salirasib")
(define-drug "saracatinib")
(define-drug "sb-202190")
(define-drug "sb-203580")
(define-drug "sb-203580")
(define-drug "sb-203580")
(define-drug "sb-203580")
(define-drug "sb-203580")
(define-drug "sb-203580")
(define-drug "sb-431542")
(define-drug "sb-431542")
(define-drug "sb-431542")
(define-drug "sb-431542")
(define-drug "sb-590885")
(define-drug "sb-657510")
(define-drug "sb-743921")
(define-drug "sb202190")
(define-drug "sb203580")
(define-drug "sb203580")
(define-drug "sb203580")
(define-drug "sb203580")
(define-drug "sb203580")
(define-drug "sb203580")
(define-drug "sb431542")
(define-drug "sb431542")
(define-drug "sb431542")
(define-drug "sb590885")
(define-drug "sb657510")
(define-drug "sb743921")
(define-drug "scrib")
(define-drug "secukinumab")
(define-drug "seliciclib")
(define-drug "selumetinib")
(define-drug "selumitinib")
(define-drug "semaxanib")
(define-drug "semaxinib")
(define-drug "sfib")
(define-drug "shakib")
(define-drug "sib")
(define-drug "siltuximab")
;(define-drug "sorafenib")
;(define-drug "sorafinib")
;(define-drug "soranfinib")
;(define-drug "sorfenib")
(define-drug "sort-lines")
(define-drug "suni-tinib")
(define-drug "sunintib")
(define-drug "sunitib")
;(define-drug "sunitinib")
(define-drug "tandutinib")
;(define-drug "temozolomide")
(define-drug "tib")
(define-drug "tipifarnib")
(define-drug "tivantinib")
(define-drug "tivozanib")
(define-drug "toceranib")
(define-drug "tocilizumab")
(define-drug "tofacitinib")
(define-drug "tositumomab")
(define-drug "trametenib")
(define-drug "trameti-nib")
(define-drug "trametinib")
(define-drug "trastuzumab")
(define-drug "trastuzumab-lapatinib")
(define-drug "traszumab")
(define-drug "tremelimumab")
(define-drug "tremetinib")
(define-drug "trib")
(define-drug "u0126")
(define-drug "ugib")
(define-drug "urelumab")
(define-drug "ustekinumab")
(define-drug "vanctitumab")
;(define-drug "vandetanib")
(define-drug "vatalanib")
(define-drug "vedolizumab")
(define-drug "veliparib")
(define-drug "vemurafe-nib")
(define-drug "vemurafemib")
(define-drug "vemurafenib")
(define-drug "vemurafinib")
(define-drug "vendetanib")
(define-drug "vermurafenib")
(define-drug "vib")
;(define-drug "vismodegib")
;(define-drug "visomodegib")
(define-drug "xl880")
(define-drug "yetrib")
(define-drug "zalutumumab")
(define-drug "zerbib")
;; overnight
;;(define-drug "nct01143753raf")
;;(define-drug "raf265")

