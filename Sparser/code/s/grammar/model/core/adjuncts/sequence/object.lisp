;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2013-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;model:core:adjuncts:sequence:"
;;;  version:  March 2019

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/15/92 v2.3) setting up for new semantics
;; 0.2 (5/27/94) fleshed it out with def-forms, rdata, and autodef
;;     (9/12/95) tweeked the autodef.  11/15 fixed a typo in them
;; 0.3 (6/6/13) Rebuilt the def form in the modern class-centric idiom. 
;;     (7/1/13) Changed the leading bracket on determiner case to be
;;      ].quantifier, otherwise it messed up on "the last ..."
;;     (7/10/13) modified sequencer and define-sequencer/preposition to 
;;     incorporate interval relations.
;; 0.4 (5/28/14) Rebuilding it in terms of categories rather than 
;;      individuals. (5/30/14) Elaborated the call to define-function-term
;;      and put in the needed form rules

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category sequencer
  :instantiates  modifier
  :specializes modifier
  :binds ((word :primitive word)
          (relation :primitive word)) ;;added this variable in for interval relationships
  :index (:key name :permanent)
  :realization (:word name))

;;;---------------
;;; defining form
;;;---------------

#| For the purpose of introducing brackets we need to subcategorize
   these into two sorts, roughly determiners and prepositions. |#

;;--- determiners

(defun define-sequencer/determiner (string) ;; no longer make it a determiner
  (define-function-term string 'adjective
    :super-category 'sequencer
    :rule-label 'sequencer
    :discriminator 'sequence
    :brackets (list ].quantifier .[np )
    :tree-families '(generic-np-premodifier)))


;; 10/11/16 moved rules to syntax/syntactic-rules.lisp
;; for "before", "after" as bare categories

;;--- prepositions

(defun define-sequencer/preposition (string)
  "Define a specialization of sequencer for this case. But just
   define the string as a vanilla preposition. The and individual
   for the specialization of sequencer is the referent -- the same
   pattern as we use with quantifiers."
  (declare (special *prepositional-brackets*))
  (let* ((word (or (resolve string)
                   (define-function-word string
                       :brackets *prepositional-brackets*)))
         (category-name (name-to-use-for-category string)))
    
    (let* ((form `(define-category ,category-name
                    :specializes ,category::sequencer
                    :instantiates :self
                    :index (:permanent :key word)
                    :bindings (word ,word)))
           (category (eval form)))
      
      (let* ((object
              (or (find-individual category-name :word word)
                  (make-an-individual category-name :word word)))
             (cfr (def-cfr/expr category (list word)
                    :form 'preposition
                    :referent object)))
        (make-corresponding-mumble-resource word :preposition object)
        (add-rule cfr object)
        object ))))


;;;----------
;;; auto-def
;;;----------

(define-autodef-data 'sequencer
  :module *sequencers*
  :display-string "sequencers"
  :not-instantiable t 
  :description "a modifier that says where something lies in within a sequence"
  :examples "\"before\" \"next\"" )


(define-category sequencer/determiner)
(define-category sequencer/preposition)

(define-autodef-data 'sequencer/determiner
  :display-string "acting like determiners"
  :form 'define-sequencer/determiner
  :dossier "dossiers;sequencers"
  :module *sequencers*
  :description "a sequencer that functions syntactically like a determiner"
  :examples "\"next\" \"subsequent\"" )

(define-autodef-data 'sequencer/preposition
  :display-string "acting like prepositions"
  :form 'define-sequencer/preposition
  :dossier "dossiers;sequencers"
  :module *sequencers*
  :description "a sequencer that functions syntactically like a preposition by being followed by a full noun phrase"
  :examples "\"before\"" )

