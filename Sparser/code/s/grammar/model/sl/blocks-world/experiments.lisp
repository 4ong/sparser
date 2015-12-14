;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "experiments"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  November 2015

;; Initiated 10/7/15. 

(in-package :mumble)

#| general-np-bundle-driver  derivation-tree  accessory-type
 make-adjunction-node  feature-driven-prepocessing  realize-dtn
 phrase-structure-execution  process-negate-accessory
 add-further-specification  define-word-stream-action-type
|#

;;;------------
;;; vocabulary
;;;------------
#| Define-lexicalized-phrase build nouns by default. If we start
in Sparser there is a translation routine. In a better world
rebuilt from scratch there would be a single word stock.
See Zo code for what that could look like. |#

(define-word "build" (verb) :ed-form "built")
(define-word "let" (verb))

;;;--------------------------
;;; Prebuilt phrases (trees)
;;;--------------------------

;; "build a staircase   (say (build-a-staircase))

(defun build-a-staircase ()
  "Constructs the derivation tree strictly from resources,
   not as the realization of some actually represented source."
  (let* ((staircase
          (make-dtn 
           :resource (define-lexicalized-phrase common-noun ("staircase") (n))
           :referent 'build-staircase))
         (a-staircase ;; singular and kind set the determiner
          ;; see interface/bundles/operators-over-specifications.lisp
          (kind (singular staircase)))
         (build
          (make-dtn :resource
                    (define-lexicalized-phrase SVO ("build") (v)))))

    ;; connect them
    (make-complement-node 'o a-staircase build) ;; bind argument
    (make-complement-node 's (mumble-value 'first-person-plural 'pronoun) build)
    (command build) ;; hack that removes subject
    build))


;; "let's X"

(defun let-us (dtn-for-eventuality)
  ;; Doing this one differently. The question is what is 
  ;; the best syntatic sugar. This version open-codes much
  ;; of what's in create-lexicalized-phrase as it wasn't clear
  ;; how to push the pronoun through that function as it's
  ;; presently written. 
  (let* ((let-phrase  ;; s v o c
          (define-lexicalized-phrase SVOC ("let") (v)))
         (1st-plural ;; the word
          (mumble-value 'first-person-plural ;; see gramar/pronouns.lisp
                        'pronoun)))
    (let* ((dtn (make-instance 'derivation-tree-node
                  :referent 'let-us
                  :resource let-phrase)))
      ;; (make-complement-node 'o pn-lexicalized-phrase dtn)
      (make-complement-node 'o 1st-plural dtn)
      (make-complement-node 'c dtn-for-eventuality dtn)
      (command dtn)
      dtn)))

; (say (let-us (build-a-staircase)))


;; "a drug to target KRAS" (say (drug-targeting-kras))

(define-word "KRAS" (proper-noun))

(defun drug-targeting-kras ()
  "Makes an untensed clause. Comes out as an infinitive"
  (let* ((verb-resource (verb "target"))
         (kras-resource (noun "KRAS" 'proper-name))
         (drug-dtn (kind (singular (noun "drug")))))
    (let ((dtn (make-instance 'derivation-tree-node
                 :referent 'target-kras
                 :resource verb-resource)))
      (make-complement-node 's drug-dtn dtn)
      (make-complement-node 'o kras-resource dtn)
      dtn)))


;; "but I don't know of any drug targeting KRAS"

(defun I-know-of-p (complement)
  (let ((verb-resource (transitive-with-bound-prep 
                        "know" "of"))
        (first-singular (mumble-value 'first-person-singular 'pronoun)))
    (let ((dtn (make-instance 'derivation-tree-node
                 :referent 'i-know-p
                 :resource verb-resource)))
      (make-complement-node 's first-singular dtn)
      (make-complement-node 'o complement dtn)
      dtn)))
;; (say (I-know-of-p (drug-targeting-kras)))
;;  => "I to know of a drug to target KRAS"


;;--- the big red block (SHRDLU favorite)

(defun the-big-red-block ()
  (let ((block (noun "block"))
        (big (adjective "big"))
        (red (adjective "red")))
    (let ((dtn (make-dtn :resource block)))
      (make-adjunction-node big dtn)
      (make-adjunction-node red dtn)
      dtn)))
        


