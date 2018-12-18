;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "q-auxiliary"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  December 2018

;; Broken out of questions.lisp for ease of development

(in-package :sparser)

;;;-------------------------------
;;; auxiliaries for WH delimiting
;;;-------------------------------

(defun handle-wh-of (wh-edge wh-type of-edge other-edges)
  (declare (special *sentence-in-core*))
  ;; e.g. (p "Which of those are regulated by elk1")
  (when (> (length other-edges) 1)
    (when *debug-questions*
      (break "other-edges needs to be parsed: ~a" other-edges)))
  (let* ((q (define-or-find-individual 'wh-question/select
                :wh wh-type)))
    (if (and (edge-p (car other-edges))
               (edge-referent (car other-edges)))
      (setq q (bind-variable 'set (edge-referent (car other-edges)) q))
      (when *debug-questions*
        (push-debug `(,other-edges))
        (break "could no bind of attribute")))      
    ;; should we also make the edge?
    q))


;; (p/s "What genes are regulated by FOS")
;; (p/s "What apoptotic genes are regulated by FOS")
;; (p/s "What three apoptotic genes are regulated by FOS")

(defun handle-wh-other (wh-type other-edges end-pos wh-edge)
  "There is an 'other' in the region the wh-phrase is going to span.
   It could be one word, or it could include several prenominals
   that are semantically part of the whole WH NP and should be parsed
   if we can. Our job is to do that parsing and return the referent
   to be the basis of the edge-referent ('q'). The edge that we're 
   going to create is a side-effect sort of, that has to be appreciated
   by the cover-wh that is going to use the q if we don't.
   For 'what' and 'which' questions the simplest thing is to treat them
   as though they were determiners."
  (declare (special *wh+n-bar*))
  (push-debug `(,wh-type ,other-edges ,end-pos ,wh-edge))
  (flet ((make-full-np (wh-edge other-phrase)
           (let ((edge (make-completed-binary-edge
                        wh-edge other-phrase *wh+n-bar*)))
             (tr :wh-other-np edge)
             (edge-referent edge))))
    (let ((edge-count (length other-edges))
          (edges (reverse other-edges))) ;; shift to left-to-right order
      (case edge-count
        (1 (make-full-np wh-edge (car edges)))
        (2 (let ((rule (multiply-edges (first edges) (second edges))))
             (if rule
               (let ((edge (make-completed-binary-edge (first edges) (second edges) rule)))
                 (make-full-np wh-edge edge))
               (when *debug-questions*
                 ;;(break "no rule") -- but return something
                 (edge-referent (second edges))))))
        (otherwise
         (when *debug-questions*
           (break "More than two 'other' edges"))
         (let ((start-pos (pos-edge-starts-at (first edges))))
           (multiple-value-bind (layout edge)
               (parse-between-boundaries start-pos end-pos)
             (make-full-np wh-edge edge))))))))

(defparameter *wh+n-bar*
  (def-syntax-rule/expr '(wh-pronoun n-bar)
      :head :right-edge
      :form 'np
      :referent '(:function determiner-noun left-edge right-edge)))

(defun find-edge-for-wh-other (wh-edge i-other)
  "The WH edge is a long-span if it includes an 'other' or
   an 'attribute' in it. So we have to grovel around to find
   the desired edge -- see cover-wh flet in delimit-and-label-initial-wh-term"
  (let* ((edge-list (edge-constituents wh-edge))
         (final-edge (car (last edge-list))))
    (if (eq (edge-referent final-edge) i-other)
      final-edge
      (break "Assumptions about 'other' and wh-edge are bad"))))
    
(defun rebuild-wh-other-edge (wh-edge old-other-edge new-other-edge)
  "We just composed the other-edge with a constituent just to its right.
   Exemplar is restricted relatives. So we have to rebuild the wh-edge
   to now use this new edge."
  ;; span the WH over it
  (setf (edge-ends-at wh-edge) (edge-ends-at new-other-edge))
  ;; update daughter & constituents info
  (setf (edge-right-daughter wh-edge) new-other-edge)
  (let ((constituents (edge-constituents wh-edge)))
    (setf (edge-constituents wh-edge)
          (reverse (cons new-other-edge (cdr (reverse constituents)))))
    wh-edge))


;;;-----------------------------------
;;; subroutines for forming questions
;;;-----------------------------------

(defun fold-wh-into-statement (wh stmt wh-edge aux-edge stmt-edge)
  "Used by wh-initial-followed-by-modal and any others that want to
   incorporate the referent of the wh-edge ('wh') as a regular
   bound participant of the statement ('stmt')."
  (let ((stmt-form (cat-name (edge-form stmt-edge))))
    (tr :wh-fold-form stmt stmt-form)
    (case stmt-form
      (transitive-clause-without-object
       (let ((obj-var (object-variable stmt)))
         (bind-variable obj-var wh stmt)))
      (vp+passive
       ;; these (always?) have a by-phrase, so their agent is bound.
       (let ((obj-var (object-variable stmt)))
         (bind-variable obj-var wh stmt)))
      (vp
       ;; "Which genes are involved in apoptosis?"
       (let ((subj-var (subject-variable stmt)))
         (bind-variable subj-var wh stmt)))
      ((np
        proper-noun)
       ;; "Which of these are kinases"
       ;; Statement isn't a predicate so we have to make it here
       (make-copular-predication wh-edge aux-edge stmt-edge))

      (s ;; "How does KRAS activate MAPK3?"
       (let ((wh-pronoun? (itypep wh 'wh-pronoun)))
         (cond
           ((and wh-pronoun?
                 (memq (cat-symbol (itype-of wh))
                       '(category::how category::why
                         category::where category::when)))
            (bind-wh-to-stmt-variable wh wh-edge stmt))
           ((not wh-pronoun?)
            (when *debug-questions*
              (break "WH is not a wh-pronoun: ~a" wh)))
           (t (when *debug-questions*
                (break "New 's' case  WH: ~a" wh))))))
      
      (otherwise
       (push-debug `(,wh ,stmt ,wh-edge ,stmt-edge))
       (when *debug-questions*
         (break "new folding confiburation: ~a" stmt-form))
       nil))))

(defun bind-wh-to-stmt-variable (wh wh-edge stmt)
  "Lookup the variable associated with this WH pronoun
 and bind the referent of the wh-edge to that variable
 on the statement, which is expected to be a perdurant."
  (unless (itypep stmt 'perdurant)
    (error "stmt is not a perdurant: ~a is a ~a"
           stmt (itype-of stmt)))
  (unless (typep wh 'individual)
    (break "WH argument isn't an individual: ~a" wh))
  (let* ((wh-pronoun (itype-of wh))
         (variable (value-of 'variable wh-pronoun)))
    (unless variable
      (error "No variable binding on ~a" wh-pronoun))
    (let ((r (edge-referent wh-edge)))
      (setq stmt (bind-variable variable r stmt))
      stmt)))


(defun move-np-to-stranded-prep (prep-edge np-edge)
  (when (edge-used-in prep-edge)
    (error "preposition not independent"))
  (when (edge-used-in np-edge)
    (error "np not independent"))
  (let ((rule (multiply-edges prep-edge np-edge)))
    (unless rule (error "no rule for prep+np ??"))
    (make-completed-binary-edge prep-edge np-edge rule)))



;;;-------------------
;;; context predicate
;;;-------------------

(defun top-level-wh-question? (&aux (left-edge (left-edge-for-referent)))
  "Called from compose-wh-with-vp where we might be forming 
   a question or this might be a relative clause. Of course there are
   also embedded questions which function as if they were NPs where the
   distinction turn on whether there is aux-inversion.
      For now just a trivial test based on sentence position."
  (= 1 (pos-token-index (pos-edge-starts-at left-edge))))

