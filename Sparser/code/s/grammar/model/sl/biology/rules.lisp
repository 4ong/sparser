;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "rules"
;;;  Module: "grammar/model/sl/biology/
;;; version: August 2016

;; Initiated 1/16/15 by lifting from other files.
;;  1/19/2015 put in rule for (not adjective) -- but doesn't seem to be found -- need help from David
;; 4/24/2015 correct spelling from redidue to residue
;; 4/27/2015 add new mechanism for sub-cat like interpretation where the PP obj becomes the head, 
;;  using the syntactic-function interpret-pp-as-head-of-np
;;  this is actually for phrases like "a phosphoserine at residue 827"
;;; 5/3/2015 ugly TEMPORARY (triaged) solution for "can then" as in "MAPK phosphorylates ASPP2 which can then relocate to..."
;; drop the "then" on the floor
;; 5/8/2015 handle "in vitro" and "in vivo" as VP post-modifiers
;; 5/16/2015 correct erroneous binding on rule (def-cfr residue-on-protein (protein residue-on-protein)
;;   discovered while producing MITRE index cards
;; 5/29/15 moved in rules that were in verbs1
;; 5/30/2015 update for change from "predicate" to "bio-predication"
;; Exposed s-and-vp debris rule. Pulled bio-entity converter to mechanics.
;; 9/18/15 Moved out debris analysis rules to pass2 where their interpeters are


(in-package :sparser)


;; handle the general class of "anti-foo" as in "anti-MB antibody"
(def-cfr antibody (antibody protein)
  :form category::np
  :referent (:function make-antibody left-edge right-edge))

(defun make-antibody (antibody protein)
  (when (and (edge-p (left-edge-for-referent))
             (member (form-cat-name (right-edge-for-referent))
                     '(np proper-noun))
             (equal (retrieve-surface-string (left-edge-for-referent))
                 "anti-"))
    (bind-dli-variable 'antigen protein antibody)))
               
  
;;; 'free' variables

(define-lambda-variable 'trailing-parenthetical
  'parentheses ;; value restriction
  category::top) ;; overly high type bound to.
;; used by knit-parens-into-neighbor 

#|
(def-cfr phosphorylate (amino-acid phosphorylate)
  :form category::np
  :referent (:function assimilate-object right-edge left-edge))

(def-cfr hypophosphorylate (amino-acid hypophosphorylate)
  :form category::np
  :referent (:function assimilate-object right-edge left-edge))

(def-cfr hyperphosphorylate (amino-acid hyperphosphorylate)
  :form category::np
  :referent (:function assimilate-object right-edge left-edge))
|#

;;; no-space pattern

;; (p "in the 'off' state.")
(define-no-space-pattern scare-quotes
  :acceptance-function cover-scare-quotes
  :transition-net ((:initial + "'" -> :single-quote-seen)
                   (:single-quote-seen + word -> :single-quote-word)
                   (:single-quote-word + "'" -> :both-scare-quotes-seen))
  :accept-states ( :both-scare-quotes-seen ))

(defun cover-scare-quotes (start-pos end-pos q1 word q2)
  ;; The start-pos is just before the left quote. The end-pos is
  ;; just after it. The q's are the word quote. 
  (push-debug `(,start-pos ,end-pos ,q1 ,word ,q2))
  ;; The search was over words. Now have to look for 
  ;; the strongest edge over the word.
  (let* ((word-pos (chart-position-after start-pos))
         (ev (pos-starts-here word-pos))
         (edge (highest-edge ev)))
    (when edge
      ;; got null edge in 'triage'
      (respan-edge-around-one-word edge q1 q2))))


;;--- information for no-space patterns

(defun populate-ns-informative-categories ()
  (declare (special *ns-informative-categories*))
  (setq *ns-informative-categories*
        `(,category::protein
          ,category::kinase
          ,category::amino-acid
          ,category::bio-entity
          )))

(populate-ns-informative-categories)


#|
;;--- a type rule

(def-cfr enzyme (bio-process enzyme)
  :form n-bar
  :referent (:head right-edge 
             :function passive-premodifier left-edge right-edge patient))

|#


(defun interpret-in-vivo-vitro (bio vitro-vivo)
  (when (or (itypep bio 'biological)
            (itypep bio 'measurement))
    (setq bio (individual-for-ref bio))
    (if (find-variable-for-category 'context (itype-of bio))
	(setq bio (bind-dli-variable 'context vitro-vivo bio))
	(setq bio (bind-dli-variable 'predication vitro-vivo bio)))
    bio))



(loop for vv in '((vp vp)
                  (vg vp)
                  (vp+ed vp+ed)
                  (vp+past vp+past)
                  (vg+ed vp+ed)
                  (verb+ed vg+ed) ;; somehow "phosphorylated" stops being elevated
                                  ;; to vg+ed after we run the June corpus
                  (vp+ing vp+ing)
                  (vg+ing vp+ing)
		  (proper-noun np)
                  (adjective adjp) ;; erk#7 "... to be dimerization-deficient"
		  (np np))
  do
  (eval
   `(def-form-rule (,(car vv) in-vitro)
                  :head :left-edge
     :form ,(second vv)
     :referent (:function interpret-in-vivo-vitro left-edge right-edge)))
  (eval
   `(def-form-rule (,(car vv) in-vivo)
                  :head :left-edge
     :form ,(second vv)
     :referent (:function interpret-in-vivo-vitro left-edge right-edge))))


;;--- amino acids
; These are bare rules that could be converted to an ETF
; (or several) that captures these composition possibilities
; for a complex noun-headed phrase. 

;; Gly33
(def-cfr residue-on-protein (amino-acid number)
  :form np
  :referent (:function create-residue-from-amino-acid-position left-edge right-edge))

(def-cfr residue-on-protein (single-capitalized-letter number)
  :form np
  :referent (:function create-residue-from-amino-acid-position left-edge right-edge))

;; "1980" is treated as a YEAR, not a number
;;  so "S1980" was not recognized as a residue
(def-cfr residue-on-protein (single-capitalized-letter year)
  :form np
  :referent (:function create-residue-from-amino-acid-position left-edge right-edge))


(defun create-residue-from-amino-acid-position (amino-acid position)
  (create-residue-on-protein nil amino-acid position nil))

(defun create-residue-on-protein (explicit-residue amino-acid position substrate)
  (declare (special position category::residue-on-protein category::hyphenated-number))
  (when (and
         (or (not (itypep amino-acid 'single-capitalized-letter))
             (gethash amino-acid *single-letters-to-amino-acids*))
         (or (null position)
             (itypep position category::hyphenated-number)
             ;; "1980" is treated as a YEAR, not a number
             ;;  so "S1980" was not recognized as a residue
             (itypep position 'year)
             (is-basic-collection? position)
             (and (itypep position 'number)
                  (or
                   (not (itypep amino-acid 'single-capitalized-letter))
                   ;; want to get "S6"
                   (> (value-of 'value position) 5)))))
    (when (itypep amino-acid 'single-capitalized-letter)
      (setq amino-acid (gethash amino-acid *single-letters-to-amino-acids*))
      (setf (edge-category *left-edge-into-reference*) category::amino-acid)
      (set-edge-referent *left-edge-into-reference* amino-acid))
    (when (itypep position 'year)
      (setq position (find-or-make-number (value-of 'value position))))
    (or *subcat-test*
        (let ((residue (or explicit-residue
                           (find-or-make-lattice-description-for-ref-category
                            category::residue-on-protein))))
          (when amino-acid
            (setq residue (bind-dli-variable 'amino-acid amino-acid residue)))
          (when position
            (setq residue (bind-dli-variable 'position position residue)))
          (when substrate
            (setq residue (bind-dli-variable 'substrate substrate residue)))
          residue))))

;; "Lys residues"
(def-cfr residue-on-protein (amino-acid residue-on-protein)
  :form np
  :referent (:function bind-amino-acid left-edge right-edge))

(def-cfr residue-on-protein (single-capitalized-letter residue-on-protein)
  :form np
  :referent (:function bind-amino-acid left-edge right-edge))

;; "Lys residues"
(def-cfr residue-on-protein (single-capitalized-letter residue-on-protein)
  :form np
  :referent (:function bind-amino-acid left-edge right-edge))

(defun bind-amino-acid (amino-acid residue-on-protein)
  (create-residue-on-protein residue-on-protein amino-acid nil nil))

;; residues 104 and 147
(def-cfr residue-on-protein (residue-on-protein number)
  :form n-bar
  :referent (:function bind-position-on-residue right-edge left-edge))

(defun bind-position-on-residue (position residue-on-protein)
  (create-residue-on-protein residue-on-protein nil position nil))

(def-cfr residue-on-protein (protein residue-on-protein)
  :form np
  :referent (:function bind-substrate-for-residue left-edge right-edge))

(defun bind-substrate-for-residue (protein residue)
  (create-residue-on-protein residue nil nil protein))

;;;-----------------
;;; Point mutationss -- assuming residues have been formed left-to-right
;;;-----------------

(def-cfr point-mutation (residue-on-protein amino-acid)
  :form n-bar
  :referent (:function make-point-mutation-from-residue left-edge right-edge))

(def-cfr point-mutation (residue-on-protein single-capitalized-letter)
  :form n-bar
  :referent (:function make-point-mutation-from-residue left-edge right-edge))


(defun make-point-mutation-from-residue (residue replacement-amino-acid)
  (when (or
         (not (itypep replacement-amino-acid 'single-capitalized-letter))
         (setq replacement-amino-acid
               (gethash replacement-amino-acid *single-letters-to-amino-acids*)))
    (let ((original (value-of 'amino-acid residue))
          (residue-number (value-of 'position residue)))
      (set-edge-referent *right-edge-into-reference* replacement-amino-acid)
      (setf (edge-category *right-edge-into-reference*) (itype-of replacement-amino-acid))
      (make-point-mutation original replacement-amino-acid residue-number))))

(def-cfr point-mutation (number single-capitalized-letter)
  :form n-bar
  :referent (:function make-point-mutation-from-number-amino-acid left-edge right-edge))

(defun make-point-mutation-from-number-amino-acid (number replacement-amino-acid)
  (when (or
         (not (itypep replacement-amino-acid 'single-capitalized-letter))
         (when
             (setq replacement-amino-acid
                   (gethash replacement-amino-acid *single-letters-to-amino-acids*))
           (setf (edge-category *right-edge-into-reference*) (itype-of replacement-amino-acid))
           (set-edge-referent *right-edge-into-reference* replacement-amino-acid)))
    (make-point-mutation nil replacement-amino-acid number)))



#|
;; p38 kinase
(def-cfr protein (protein kinase) ;; replaced with premod on the class realization
  :form np
  :referent (:head left-edge))
|#

(def-form-rule (amino-acid pp) ;; phosphoserine at residue 827
  :form np 
  :referent (:function interpret-pp-as-head-of-np left-edge right-edge))


;;--- mutation
; "EGFR T669A"
; "the EGFR T669A mutant"

(def-cfr protein (protein point-mutation)
  :form NP
  :referent (:function bind-protein-mutation right-edge left-edge))

(defun bind-protein-mutation (mutation protein)
  (bind-dli-variable 'mutation mutation protein))

(def-cfr protein (point-mutation protein)
  :form NP
  :referent (:function bind-protein-mutation left-edge right-edge))

;; MUST DEAL WITH CONFLICT WITH "Ras17N"
(def-cfr protein (protein number)
  :form NP
  :referent (:function make-protein-variant left-edge right-edge))

(defun make-protein-variant (protein number)
  (let* ((right-edge (right-edge-for-referent))
         (after-pos (pos-edge-ends-at right-edge))
         (next-edge (top-edge-starting-at after-pos)))
    (declare (special right-edge after-pos next-edge))
    ;;(lsp-break)
    (unless (or
             (pos-preceding-whitespace after-pos)
             (and next-edge
                  (not (member (trim-whitespace (retrieve-surface-string next-edge))
                          '("," ")" "(" ".")
                          :test #'equal))))
      (bind-dli-variable 'variant-number number protein))))

;;--- CS rule for protein

(def-csr bio-entity protein
  :left-context mutant
  :form proper-noun
  :referent (:function convert-bio-entity-to-protein right-edge))

;;--- expediency

(def-cfr rate-of-process (rate-of-process-of release)
  :form np
  :referent (:head left-edge
             :bind (process right-edge)))


;;--- form, expediency

#|
;; now in syntactic-rules, producing a subject-relative-clause
(def-form-rule (that vg)
  :form relative-clause
  :referent (:daughter right-edge))

(def-form-rule (that vp)
  :form relative-clause
  :referent (:daughter right-edge))

(def-cfr adverb (adverb comma)
  :form adverb
  :referent (:head left-edge))
|#

(def-cfr semicolon (";")
  :form punctuation)

;; rules for in vitro and for premodifying adverbs like :recently"

#|
(def-form-rule (S category::in\ vitro)
  :form s
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))


(def-form-rule (VP category::in-vitro)
  :form VP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

(def-form-rule (vp+passive category::in-vitro)
  :form vp+passive
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

(def-form-rule (NP category::in\ vitro)
  :form NP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

#+ignore
(def-form-rule (S category::in-vivo)
  :form s
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))


(def-form-rule (VP category::in-vivo)
  :form VP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))
|#

;;evidence that "in vivo" can modify an NP is from sentence 3 of the overnight test
;; "there are no proteins in vivo that might stabilize ..."
;; the relative clause is clearly part of the NP, and so the "in vivo" is likey to be

;; Unfortunately, there is no obvious way to restrict the applicability of this rule to 
;; NPs which have a "context" variable!
#+ignore
(def-form-rule (NP category::in\ vivo)
  :form NP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

#+ignore
(def-form-rule (time verb+ed) ;; to support "have recently shown"
  :form verb+ed
  :head :right-edge
  :referent (:head right-edge :bind (modifier left-edge)))
  
#+ignore ;; don't know why this is here -- it dies on "all the proteins"
(def-form-rule (quantifier biological) 
               :head :right-edge 
  :form n-bar ;; requires a determiner 
  :referent 
  (:head right-edge :bind (quantifier left-edge)))
 
#+ignore ;; don't know why this is here -- it dies on "all the proteins"                  
(def-form-rule (quantifier protein) 
               :head :right-edge 
  :form n-bar ;; requires a determiner 
  :referent 
  (:head right-edge :bind (quantifier left-edge)))
  

