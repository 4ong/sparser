;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2014-2015  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form rules"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  0.4 February 2015

;; initiated 10/12/92 v2.3
;; 0.1 (6/4/93) allowed a default if the rule doesn't specify the form
;;      of the new edge
;; 0.2 (6/16) added variation for explicitly specified lhs.
;;     (3/30/94) fixed missing arg in break stmt.
;; 0.3 (8/5/94) for the '..explicit-lhs' case made a subr for the passive calculation
;; 0.4 (11/20/14) Added option for the referent calculation to abort the
;;      edge (keep it from being knit into the chart) following pattern in
;;      make-default-binary-edge. 2/12/15 Removed ~% from edge trace
;;      and added a break to notice referent failures. 

(in-package :sparser)


(defun form-rule-completion (edge-to-promulgate   ;; a keyword
                             left-edge right-edge
                             rule)
  (let* ( head-edge
         (promulgated-label
          (ecase edge-to-promulgate
            (:left-edge
             (setq head-edge left-edge)
             (edge-category left-edge))
            (:right-edge
             (setq head-edge right-edge)
             (edge-category right-edge))))
         (edge (next-edge-from-resource)))

    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at edge)   (edge-ends-at right-edge))

    (setf (edge-category edge) promulgated-label)
    (setf (edge-form     edge) (or (cfr-form rule)
                                   (edge-form head-edge)))

    (let ((referent (catch :abort-edge
                      (referent-from-rule left-edge right-edge
                                          edge rule))))
      (if (eq referent :abort-edge)
        (then
         (push-debug `(,edge ,rule ,left-edge ,right-edge))
         (break "Why did this referent computation fail~%  ~a" 
                (cfr-referent rule))
          ;; This function feeds its value to a check routine like
          ;; Check-one-one, which in turn returns the edge as its
          ;; value. If we return nil from here, then that nil will
          ;; be passed through as the value of the call to the
          ;; check routine, which should suffice for the parsing
          ;; routines not to see an edge here even though the
          ;; rule went through
          nil )

        (else
         (setf (edge-referent edge) referent)
         (setf (edge-rule edge) rule)

         (knit-edge-into-positions edge
                                   (edge-starts-at left-edge)
                                   (edge-ends-at right-edge))
         (set-used-by left-edge edge)
         (set-used-by right-edge edge)
         (setf (edge-left-daughter edge) left-edge)
         (setf (edge-right-daughter edge) right-edge)

         (complete edge)

         (when *trace-edge-creation*
           (format t "~%creating ~A from ~A~
                        ~%    rule: ~A"
                   edge
                   (edge-position-in-resource-array edge)
                   rule))
         
         (assess-edge-label promulgated-label edge)
         edge )))))




(defun form-rule-completion/explicit-lhs (edge-to-promulgate
                                          lhs-category
                                          left-edge
                                          right-edge
                                          rule )
  (let* (  head-edge
         (promulgated-label
          (ecase edge-to-promulgate
            (:left-edge
             (setq head-edge left-edge)
             (edge-category left-edge))
            (:right-edge
             (setq head-edge right-edge)
             (edge-category right-edge))))
         (edge (next-edge-from-resource))
          coerced-form )

    (knit-edge-into-positions edge
                              (edge-starts-at left-edge)
                              (edge-ends-at right-edge))
    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at edge)   (edge-ends-at right-edge))

    (etypecase lhs-category
      (category )
      (referential-category )
      (symbol
       (unless (eq lhs-category :passive)
         (break "Unanticipated keyword used as the explicit ~
                 category in ~%a form rule: ~A" lhs-category))
       (let ((passive-category
              (lookup-passive-counterpart promulgated-label)))
         (if passive-category
           (setq lhs-category passive-category)
           (else
             (setq lhs-category promulgated-label)
             (setq coerced-form (category-named 'verb+passive)))))))


    (setf (edge-category edge) lhs-category)

    (setf (edge-form edge) (or coerced-form
                               (cfr-form rule)
                               (edge-form head-edge)))

    (setf (edge-referent edge)
          (referent-from-rule left-edge right-edge
                              edge rule))

    (setf (edge-rule edge) rule)

    (set-used-by left-edge edge)
    (set-used-by right-edge edge)
    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)

    (complete edge)

    (when *trace-edge-creation*
      (format t "~%creating ~A from ~A~
                 ~%    rule: ~A"
              edge
              (edge-position-in-resource-array edge)
              rule))

    (assess-edge-label promulgated-label edge)
    edge ))

                              

    
