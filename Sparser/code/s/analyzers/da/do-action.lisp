;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2011-2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "do action"
;;;   Module:  "analyzers;DA:"
;;;  Version:  July 2011

;; initiated 5/7/95. Debugging, refining ..5/12. 11/3/11 Extending
;; cases for schematic actions to :function. 7/29/13 Added more traces
;; and doc. 

(in-package :sparser)

(defvar *DA-STARTING-POSITION*)
(defvar *DA-ENDING-POSITION*)
(defvar *MATCHED-DA-RULE*)

(defun execute-da-action (rule)
  ;; called from Accept-pattern
  (tr :da-executing-action rule)
  (setup-da-action-context)
  (let ((fn (da-action-fn rule)))
    (push-debug `(,rule ,fn)) ;;(break "execute")
    ;; N.b. The return from these calls becomes the
    ;; 'result' in execute-da-trie
    (if fn
      (execute-da-action-function fn)
      (execute-schematic-da-action rule))))


(defun execute-da-action-function (fn)
  (let ((result (funcall fn)))
    (if result
      result
      ;; make sure that Execute-da-trie gets a return value
      ;; that it anticipates. See note there.
      :pattern-matched )))

(defun execute-schematic-da-action (rule)
  (let ((form (da-action-description rule)))
    (case (first form)
      (:make-edge-over-whole-span
       (execute-edge-over-whole-span-exp (cdr form)))
      (:function
       (standardized-apply-da-function-action rule)
       ;;(bind-context-and-apply-da-function-action (cdr form))
       )
      (otherwise
       (push-debug `(,form ,rule))
       (error "Unexpected key in schematic-da-action: ~a"
              (car form))))))



;;; cases

(defun execute-edge-over-whole-span-exp (items)
  (let ((label (first items))
        (ref-exp (rest items)))
    (let ((edge
           (make-chart-edge
            :starting-position *da-starting-position*
            :ending-position *da-ending-position*
            :category label
            :form (when (form-category? label)
                    label)
            :rule *matched-da-rule*)))
      (setf (edge-referent edge)
            (execute-da-referent-expressions ref-exp))
      edge )))


(defun execute-da-referent-expressions (ref-exp)
  (let ((referent
         (do-da-ref-expression (first ref-exp))))

    (dolist (exp (rest ref-exp))
      (do-da-ref-expression exp))

    referent ))


(defun do-da-ref-expression (schematic-exp)
  (ecase (first schematic-exp)
    (:daughter
     ;; returns the referent of the daughter edge
     (let ((tt (lookup-matched-tt (second schematic-exp))))
       (etypecase tt
         (edge (edge-referent tt))
         ;; (word tt)  ;should only see conses when words are involved
         (cons
          ;; ( word  pos-before  pos-after )
          (first tt)))))))

(defvar *edge-spec*)
(defvar *new-edge*)
(defvar *current-da-rule*)
(defun standardized-apply-da-function-action (rule)
  (declare (special *current-da-rule*))
  (setq *current-da-rule* rule)
  (let* ((form (da-action-description rule))
         (fn (second form))
         (constituents
          (loop for tta in *tt-alist*
               as i from 1 to (length (da-pattern-description rule))
             collect (cdr tta))))
    (when (symbolp fn)
      (unless (fboundp fn)
        (error "The function ~a is not defined" fn)))
    ;; The args are expected to be symbols for ordinals that
    ;; were vetted when the rule was defined
    (push-debug `(,fn ,constituents))
    (tr :da-applying-fn-to-args fn constituents)
    (when (setq *edge-spec* (apply fn constituents)) ;; can be nil if rule fails
      (setq *new-edge*
            (make-edge-over-long-span
             (pos-edge-starts-at
              (or (edge-spec-target *edge-spec*)
                  (first constituents)))
             (pos-edge-ends-at (car (last constituents)))
             (edge-spec-category *edge-spec*)
             :form (edge-spec-form *edge-spec*)
             :referent (edge-spec-referent *edge-spec*)
             :rule (da-name rule)
             :constituents
             (constituents-between
              (or (edge-spec-target *edge-spec*)
                  (first constituents))
              (car (last constituents)))))
      (cond ((edge-spec-dominating *edge-spec*)
             (tuck-new-edge-under-already-knit
              (edge-spec-target *edge-spec*)
              *new-edge*
              (edge-spec-dominating *edge-spec*)
              (edge-spec-direction *edge-spec*))
             (edge-spec-dominating *edge-spec*))
            (t *new-edge*)))))

(defun constituents-between (first-const last-const)
  (cons first-const
        (treetops-between (pos-edge-ends-at first-const)
                          (pos-edge-ends-at last-const))))

(defun bind-context-and-apply-da-function-action (form)
  (let ((function (car form))
        (args (cdr form)))
    (when (symbolp function)
      (unless (fboundp function)
        (error "The function ~a is not defined" function)))
    ;; The args are expected to be symbols for ordinals that
    ;; were vetted when the rule was defined
    (push-debug `(,function ,args))
    (tr :da-applying-fn-to-args function args)
    (let ((dereferenced-args
           (mapcar #'lookup-matched-tt args)))
      (let ((result
             (apply function dereferenced-args)))
        (unless (edge-p result)
          (push-debug `(,result))
          (cond
           ((null result)
            #+ignore
            (format t "Application of DA function did not return ~
                  an edge. We got a NIL instead~&"))
           (t
            (error "Application of DA function did not return ~
                  an edge. We got a ~a instead~&"
                 (type-of result)))))
        result))))


