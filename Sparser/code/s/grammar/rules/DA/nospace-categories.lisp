;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "nospace-categories"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  March 2015

;; Created 10/7/14 to hold categories and routines used by the
;; nospace character specialists (analyzers/psp/patterns/) since
;; the categories they refer to aren't yet loaded. 12/10/14 added
;; slashed-sequence setup. 
;; 2/2//2015 add new no-space default category number-colon-number 
;;  and method for creating an edge spanning things like "1:500" 
;;  this is done so that a later context sensitive rule can determine 
;;  if this is a ratio or something else
;; added code for similar GAP:Ras structure
;; 3/18/15 Fleshed out package-approximation-number but without a
;;  treatment of it being approximate. 

(in-package :sparser)


(defparameter *inhibit-big-mech-interpretation* nil
  "Localy bound to t when the context knows it's inappropriate")

(defun ns-category-for-reifying (default-category)
  (if (and *big-mechanism*
           (null *inhibit-big-mech-interpretation*))
    (bio-category-for-reifying)
    default-category))

;;;----------
;;; hyphens
;;;----------

(define-category hyphenated-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the hyphen
          (right))
  :index (:sequential-keys left right))

(defun make-hyphenated-structure (left-edge right-edge)
  ;; called from nospace-hyphen-specialist
  (push-debug `(,left-edge ,right-edge))
  (let ((i (find-or-make-individual 'hyphenated-pair
             :left (edge-referent left-edge)
             :right (edge-referent right-edge)))
        (category 
         (ns-category-for-reifying category::hyphenated-pair)))

    (when (eq (edge-category left-edge)
              (edge-category right-edge))
      (bind-variable 'type (edge-category left-edge)
                     i category::sequence))
    (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'nospace-hyphen-specialist
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :two-hyphen-default-edge edge)
        edge)))


(defun make-protein-pair (left-ref right-ref words
                         left-edge right-edge
                          pos-before pos-after)
  (make-hyphenated-pair 'protein-pair left-ref right-ref 
                        left-edge right-edge
                        words pos-before pos-after))

(defun make-amino-acid-pair (left-ref right-ref words
                             left-edge right-edge
                             pos-before pos-after)
  (make-hyphenated-pair 'amino-acid-pair left-ref right-ref 
                        left-edge right-edge
                         words pos-before pos-after))

(defun make-bio-pair (left-ref right-ref words
                      left-edge right-edge
                      pos-before pos-after)
  (make-hyphenated-pair 'bio-pair left-ref right-ref 
                        left-edge right-edge
                        words pos-before pos-after))

(defun make-hyphenated-pair (cat-name left-ref right-ref
                             left-edge right-edge
                             words pos-before pos-after)
  ;; dropping the sequence aspect on the floor because
  ;; there's not a nice factoring of its f-or-m as a mixin
  (let* ((category (category-named cat-name :break-if-none))
         (i (find-or-make-individual category 
                                     :left left-ref
                                     :right right-ref)))
    (let ((edge (make-edge-over-long-span
                 pos-before 
                 pos-after
                 category
                 :form category::n-bar
                 :rule 'make-hyphenated-pair
                 :referent i
                 :constituents `(,left-edge ,right-edge)
                 :words words)))
      ;; trace
      edge)))



(define-category hyphenated-triple
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left)
          (middle)
          (right))
  :index (:sequential-keys middle left right))

(defun make-hyphenated-triple (left-edge middle-edge right-edge)
  (let ((i (find-or-make-individual 'hyphenated-triple
             :left (edge-referent left-edge)
             :middle (edge-referent middle-edge)
             :right (edge-referent right-edge)))
        (category
         (ns-category-for-reifying category::hyphenated-triple)))
     (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'nospace-hyphen-triple-specialist
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,middle-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :three-hyphen-default-edge edge)
        edge)))
                             

(defparameter *salient-hyphenated-literals*
  `(,(resolve/make "re") ;; "re-activate"
    ,(resolve/make "mono")
    ,(resolve/make "di")
    ,(resolve/make "co") ;; co-occurring
    ,(resolve/make "deficient") ;; dimerization-deficient ERK#7
    ))


(defun some-word-is-a-salient-hyphenated-literal (words)
  ;; called as a test cond in resolve-hyphen-between-two-words
  ;; that gates compose-salient-hyphenated-literals to 
  ;; ensure that it has something to work with.
  (some #'(lambda (word) (memq word *salient-hyphenated-literals*))
        words))

(defun compose-salient-hyphenated-literals (pattern words
                                            pos-before pos-after)
  (push-debug `(,words ,pattern)) ;;(break "salient")
  (when (= 3 (length words))
    (let ((word1 (car words))
          (word2 (caddr words))
          left  right  )
      (when (or (prog1 (memq word1 *salient-hyphenated-literals*)
                  (setq left t))
                (prog1 (memq word2 *salient-hyphenated-literals*)
                  (setq right t)))
        ;; do something clever, but for now just tie off
        (let* ((edge (or (and left
                               (left-treetop-at/edge pos-after))
                         (and right
                              (right-treetop-at/edge pos-before)))))
          ;; dropping the literal on the floor
          ;;/// "re" in Dec 28 is just a word at this point, so the
          ;; other paths won't do.
          (let ((new-edge
                 (make-edge-over-long-span
                   pos-before
                   pos-after
                   (edge-category edge)
                   :rule 'compose-salient-hyphenated-literals
                   :form (edge-form edge)
                   :referent (edge-referent edge)
                   :words words)))
            new-edge))))))

(defun resolve-stranded-hypen (pattern words start-pos end-pos)
  (push-debug `(,pattern ,words ,start-pos ,end-pos))
  (break "Stub: stranded hyphen"))


;;;--------
;;; colons
;;;--------

(define-category number-colon-number
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the colon
          (right))
  :index (:sequential-keys left right))

(define-category word-colon-word
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the colon
          (right))
  :index (:sequential-keys left right))

(defun make-word-colon-word-structure (left-edge right-edge)
  ;; called from nospace-colon-specialist
  (push-debug `(,left-edge ,right-edge))
  (let ((i (find-or-make-individual 'word-colon-word
             :left (edge-referent left-edge)
             :right (edge-referent right-edge)))
        (category category::word-colon-word))

    (when (eq (edge-category left-edge)
              (edge-category right-edge))
      (bind-variable 'type (edge-category left-edge)
                     i category::sequence))
    (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'nospace-colon-specialist
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :word-colon-word-default-edge edge)
      edge)))

;;/// abstract out the constructor
(defun make-number-colon-number-structure (left-edge right-edge)
  (make-word-colon-word-structure left-edge right-edge))


;;;---------
;;; slashes
;;;---------

;; identical to hypenated-pair -- consolidate?  Mostly want the category
(define-category slashed-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the slash
          (right))
  :index (:sequential-keys left right))

(define-category slashed-sequence
  :specializes sequence
  ;; inherits items, item, type, number
  ;; the sequence of the items follows the sequence of the slashes
  :instantiates :self
  :index (:permanent :key items))

(defun package-slashed-sequence (edges words start-pos end-pos)
  (push-debug `(,edges ,words ,start-pos ,end-pos))
  (let* ((elements (loop for edge in edges
                     collect (edge-referent edge)))
         (i (find-or-make-individual 'slashed-sequence :items elements))
         (common-category
          (when (eq (edge-category (first edges))
                    (edge-category (second edges))) ;; makes a trend
            (edge-category (first edges)))))
    (when common-category
      (bind-variable 'type (edge-category (first edges)) i
                     category::slashed-sequence))

    (let ((edge (make-edge-over-long-span
                 start-pos
                 end-pos
                 (or common-category
                     category::slashed-sequence)
                 :rule 'package-slashed-sequence
                 :form category::proper-noun
                 :referent i
                 :constituents edges)))
      (revise-form-of-nospace-edge-if-necessary edge (third edges))
      ;;/// trace
      edge)))

;;;---------------------------------
;;; tilda + number => approximation
;;;---------------------------------

(defun package-approximation-number (words start-pos end-pos)
  (push-debug `(,words ,start-pos ,end-pos))
  ;; (setq words (car *) start-pos (cadr *) end-pos (caddr *))
  ;; The matching patterns indicates that it's "~<number>"
  ;; so just trust that. 
  (let* ((num-word (second words))
         (number (find-or-make-number num-word)))
    ;;///// dropping the approximation on the floor
    ;; see model/core/adjuncts/approx/object.lisp for where to 
    ;; start the process of doing it right. 
    (let ((edge (make-edge-over-long-span
                 start-pos
                 end-pos
                 category::number
                 :rule 'package-approximation-number
                 :form category::number
                 :referent number
                 :words words)))
      ;;/// trace
      edge)))






