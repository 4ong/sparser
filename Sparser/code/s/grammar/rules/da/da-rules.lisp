;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  January 2019

;; initiated 9/18/15 for da patterns and interpreters that had been
;; stashed in biology. Small tweaks and additions of the same kind
;; through 11/22/15

(in-package :sparser)

(defvar *show-failed-fronted-pp-attachment* nil)
(defvar *show-failed-find-base-np-vp-edge* nil)

(defparameter *warn-attach-leading-pp-to-clause* nil)
(defparameter *warn-on-cant-find-corresponding-clauses* nil)
(defparameter *show-finding-corresponding-clauses* nil)
(defparameter *conjoined-s-failures* nil)


(defstruct edge-spec
  ;; a compact encoding of edge construction and handling
  ;; decoded by standardized-apply-da-function-action the master
  ;; action handler
  category form referent target dominating direction preposed)


;;;-------------------------------------------------
;;; debris analysis rules and their interpretations
;;;-------------------------------------------------

;;;----------------------
;;; rules centering on S
;;;----------------------

(define-debris-analysis-rule attach-to-comp-comma-to-s
    :pattern (to-comp "," s)
    :action (:function attach-to-comp-comma-to-s  first second third))

(defun attach-to-comp-comma-to-s (to-comp-edge comma-edge s-edge)
  (declare (ignore comma-edge))
  (let* ((complement  ;;(value-of 'comp (edge-referent to-comp-edge))
	   (edge-referent to-comp-edge))
	 (to-comp-var ;; e.g. for "acts to dampen..."
	  (or
	    (subcategorized-variable (edge-referent s-edge) :to-comp complement)
	    'purpose)))
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (bind-dli-variable to-comp-var complement (edge-referent s-edge)))))


(define-debris-analysis-rule attach-leading-pp-to-clause
  :pattern ( pp "," s )
  :action (:function attach-leading-pp-to-clause first second third))

(define-debris-analysis-rule attach-leading-pp-no-comma-to-clause
  :pattern ( pp  s )
  :action (:function attach-leading-pp-no-comma-to-clause first second))

(defun attach-leading-pp-no-comma-to-clause (pp clause)
  (attach-leading-pp-to-clause pp nil clause))

(defun attach-leading-pp-to-clause (pp comma clause)
  (declare (ignore comma))
  (let* ((clause-referent (edge-referent clause))
	 (pobj-edge (edge-right-daughter pp))
	 (pobj-referent
          (if (eq pobj-edge :long-span) ;; conjunction of PPs
              nil
              (edge-referent pobj-edge)))
	 (prep-edge (edge-left-daughter pp))
	 (prep-word (edge-left-daughter prep-edge)))
    (declare (special clause-referent pobj-edge))

    (let (*edge-spec*)
      (declare (special *edge-spec*))
      (cond
        ((and
          ;; handle DEC 33
          ;; "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible
          ;;  following treatment with PLX4720 (Supplementary Fig. 9)."
          (itypep clause-referent 'copular-predication)
          ;; this trick does NOT work for PP copular-predications
          )
         (setq *edge-spec*
               (make-edge-spec
                :category (edge-category clause)
                :form (edge-form clause)
                :referent (bind-dli-variable 'circumstance
                                             pobj-referent clause-referent)
                :target clause
                :direction :left
                :preposed pp)))
         
        ((null pobj-referent) ;; punt at the moment for conjoined PPs
         nil)
      
        ((is-basic-collection? clause-referent) ;; Dec #33 goes through here
         (setq *edge-spec*
               (or
                (distribute-pp-to-conjoined-clauses pp clause prep-word
                                                    pobj-referent
                                                    clause-referent
                                                    'attach-leading-pp-to-clause)
                (distribute-pp-to-first-conjoined-clause
                 pp clause
                 'attach-leading-pp-to-clause))))
        (t
         (let ((var-name
                (or (subcategorized-variable clause-referent
                                             prep-word pobj-referent)
                    (failed-pp-attachment pp clause-referent))) )
           (when var-name
             (setq *edge-spec*
                   (make-edge-spec
                    :category (edge-category clause)
                    :form (edge-form clause)
                    :referent (bind-dli-variable var-name
                                                 pobj-referent clause-referent)
                    :target clause
                    :direction :left
                    :preposed pp))
             (tr :comma-3tt-pattern *edge-spec*)))))
      ;;(lsp-break "attach-leading-pp-to-clause 2")
      *edge-spec*)))

(defun failed-pp-attachment (pp clause-referent)
  (when *show-failed-fronted-pp-attachment*
    (format t "~&~&<<<<<<<>>>>>> attaching leading PP ~s to clause ~s without defined variable~&"
	    (retrieve-surface-string pp)
	    (retrieve-surface-string clause-referent)))
  nil)

(defun distribute-pp-to-conjoined-clauses (pp clause prep-word pobj-referent clause-referent rule-name)
  (let* ((clauses (value-of 'items clause-referent))
         (clause-edges
          (loop for e in
                  (if (is-basic-collection? (edge-referent clause))
                      (edges-under clause)
                      (edges-under (edge-right-daughter clause)))
                  ;; get rid of edges for "and", etc.
                when (and (edge-p e)
                          (member (edge-referent e) clauses))
                  collect e))
	 (vars (loop for c in clauses
		  collect
		    (or (subcategorized-variable c prep-word pobj-referent)
                        ;; otherwise, not all the clauses will accept the PP
                        (return-from distribute-pp-to-conjoined-clauses nil))))
	 (new-interp
	  (make-an-individual
	   'collection
	   :items
	   (loop for c in clauses
                 as var-name in vars
                 as c-clause in clause-edges                   
	      collect ;; create a mention-history for the new interpretation
		(let* ((new-c (bind-dli-variable var-name pobj-referent c))
		       (c-mention
                        (when (and
                               (eq (edge-referent c-clause)  c)
                               (typep (edge-mention c-clause) 'discourse-mention))
                          (edge-mention c-clause))))
		  (if c-mention
                      (when *show-finding-corresponding-clauses*
                        (format t "~%found corresponding clause ~s for ~s distribute-pp-to-conjoined-clauses~%"
                                c-clause c))
                      (when *warn-on-cant-find-corresponding-clauses*
                        (warn "~%can't find corresponding clause ~s for ~s distribute-pp-to-conjoined-clauses~%"
                              c-clause c)))
                  ;;(lsp-break "dpt")
                  ;; here we smash the mention in the old clause edge so that it has the new interpretation
                  (update-mention-referent c-mention new-c t)
		  new-c))
	   :number (length clauses)
	   :type (itype-of (car clauses))))
	 edge)
    (declare (special clauses clause-edges))
    (setq edge (make-edge-spec
                :category (edge-category clause)
		:form (edge-form clause)
		:referent new-interp))
    (tr :comma-3tt-pattern edge)
    edge))

(defun distribute-pp-to-first-conjoined-clause (pp clause rule-name)
  (let* ((left-clause (edge-left-daughter clause))
	 (pobj-edge (edge-right-daughter pp))
	 (prep-edge (edge-left-daughter pp))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-word (edge-left-daughter prep-edge))
	 (var-name
	  (or
	   (subcategorized-variable (edge-referent left-clause) prep-word pobj-referent)
	   (failed-pp-attachment pp left-clause)))
	 new-left new-items new-interp new-edge)
    (when var-name
      (setq new-left
            (bind-dli-variable var-name pobj-referent (edge-referent left-clause)))
      (make-edge-spec
       :category (edge-category left-clause)
       :form (edge-form left-clause)
       :referent new-left
       :target left-clause
       :dominating clause
       :direction :left
       :preposed pp))))



(define-debris-analysis-rule oblique-s-subject-to-vp
  :pattern (s vp)
  ;; fails if the subject isn't oblique
  :action (:function attach-oblique-s-as-subject-to-vp first second))

(defun attach-oblique-s-as-subject-to-vp (s vp) ;; dynamic model #43,44
  (let ((verb-edge (find-verb s)))
    ;; sort of a gerund detector ///abstract to syntax/category-predicates
    (when verb-edge
      (when (memq (form-cat-name verb-edge)
                  '(vg+ing vp+ing))
        (let* ((var (subject-variable vp)))
          (if (null var)
              nil
              (let ((i (bind-variable var (edge-referent s) (edge-referent vp))))
                (make-edge-spec
                 :category (edge-category vp)
                 :form (edge-form s)
                 :referent i))))))))


(define-debris-analysis-rule attach-comma-pp-following-clause
  :pattern ( s "," pp )
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-pp-following-clause third first))

(defun attach-comma-pp-following-clause (clause pp)
  (attach-pp-following-clause clause pp
                              (pos-edge-starts-at clause)
                              (pos-edge-ends-at pp)))


(define-debris-analysis-rule attach-comma-pp-comma-following-clause
  :pattern ( s "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-pp-comma-following-clause third first fourth))

(defun attach-comma-pp-comma-following-clause (clause pp comma-2)
  (declare (ignore comma-2))
  (attach-pp-following-clause clause pp
                              (pos-edge-starts-at clause)
                              (pos-edge-ends-at comma-2)))

(defun attach-pp-following-clause (clause pp start end)
  (let* ((pobj-edge (edge-right-daughter pp))
         (pobj-referent
          ;; can have conjunction of PPs and get a :long-span here
          ;; e.g. "with menadione or with both compounds"
          ;;  punt for now
          (when (edge-p pobj-edge)
            (edge-referent pobj-edge)))
         (prep-edge (edge-left-daughter pp))
         (prep-word (edge-left-daughter prep-edge)))
    (when pobj-referent
      (let ((var-name
             (subcategorized-variable (edge-referent clause)
                                      prep-word
                                      pobj-referent)))
        (when var-name
          (let ((edge-spec (make-edge-spec
                            :category (edge-category clause)
                            :form (edge-form clause)
                            :referent (bind-dli-variable var-name pobj-referent (edge-referent clause)))))
            (tr :comma-3tt-pattern edge-spec)
            edge-spec))))))


(define-debris-analysis-rule interpret-s-comma-s
  :pattern ( s "," s )
  :action (:function interpret-s-comma-s first third))

(defun interpret-s-comma-s (s1 s2)
  (make-edge-spec
   :category (edge-category s1)
   :form (edge-form s1)
   :referent (referent-of-two-conjoined-edges s1 s2)))


(define-debris-analysis-rule conjoin-clause-and-vp
  :pattern ( s conjunction vp )
  :action (:function conjoin-clause-and-vp first second third))

(define-debris-analysis-rule conjoin-transitive-clause-without-object-and-vp
  :pattern ( transitive-clause-without-object conjunction vp )
  :action (:function conjoin-clause-and-vp first second third))

;; this should see if there is a buried VP on the right fringe and do a conjunction there
;; e.g.
#+ignore
"This state is considered to be a short-lived transition state intermediate 
     in vivo [36] based on the relatively high GTP:GDP ratio in vivo [37], 
     the ability of GTP to dissociate the GEF-Ras complex in vitro [31], 
     and the assumption that there are no proteins in vivo that might stabilize 
     nucleotide-free Ras and prevent GTP loading. "

(defun conjoin-clause-and-vp (s-edge  and vp-edge)
  (conjoin-clause-vp s-edge vp-edge))

(defun conjoin-clause-vp (s-edge vp-edge)
  ;; get the value of the subject or (perhaps) the subject
  ;; variable of the s. Look up the s variable of the vp
  (declare (optimize (speed 1)(debug 3)))
  (unless s-edge
    ;; This occurred when s-and-vp was run middle-out from
    ;; the conjunction. The constituent to the left of the
    ;; "and" was not an 's' so we should never have gotten
    ;; here. /// Need to take a serious look at that
    ;; matching code
    (throw :no-da-pattern-matched :trie-exhausted))
  (let* ((s-subject (get-subject-from-s-edge s-edge))
         (s-ref (edge-referent s-edge))
         (vp-ref (edge-referent vp-edge)))
    (when (and s-ref vp-ref s-subject)
      (let ((vp-var
             (if (is-passive? vp-edge)
                 (subcategorized-variable vp-ref :object s-subject)
                 (subcategorized-variable vp-ref :subject s-subject))))
        (cond (vp-var
               (setq vp-ref (bind-dli-variable vp-var s-subject vp-ref))
               (set-edge-referent vp-edge vp-ref))
              (t (push (format nil "couldnt attach S subject ~s as subject of conjoined vp ~s in ~s~%"
                               s-subject
                               vp-ref
                               (current-string))
                       *conjoined-s-failures*)))))
    ;; regardless of whether we could set the subject of the
    ;; vp we should create the edge
    ;; This returns a edge and uses referent-of-two-conjoined-edges 
    ;; to make the referent, which basically stuffs them both
    ;; into a collection.
    ;;//// which is not the right thing at all at the sentence
    ;; level but it's a place to start. The actual relationship
    ;; could be causes or follows, for which we need to understand
    ;; more to get it right.
    ;;WAS (conjoin-two-edges s-edge vp-edge :conjoin-clause-and-vp :pass :conjoin-clause-and-vp)
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (referent-of-two-conjoined-edges s-edge vp-edge))))


(define-debris-analysis-rule conjoin-clause-and-vp+passive
  :pattern ( s conjunction vp+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(define-debris-analysis-rule conjoin-clause-vp+passive
  :pattern ( s vp+passive )
  :action (:function conjoin-clause-vp first second))

(define-debris-analysis-rule conjoin-clause-and-vg+passive
  :pattern ( s conjunction vg+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(define-debris-analysis-rule conjoin-trans-clause-without-object-and-vg+passive
  :pattern ( transitive-clause-without-object conjunction vg+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(defun conjoin-clause-and-vp+passive (s-edge  and vp-edge)
  (conjoin-clause-and-vp s-edge and vp-edge))


(define-debris-analysis-rule attach-trailing-participle-to-clause-base
  :pattern ( s vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-participle-to-vp
  :pattern ( vp vp+ing ) ;; for cases like "Please find pathways involving SRF"
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-participle-to-clause-with-comma
  :pattern ( s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-clause-with-conjunction-and
  :pattern ( s conjunction vp+ing )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-transitive-clause-without-object-with-conjunction-and
  :pattern (transitive-clause-without-object conjunction vp+ing )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+ed-to-clause-with-conjunction-and
  :pattern ( s conjunction vp+ed )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+past-to-clause-with-conjunction-and
  :pattern ( s conjunction vp+past )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+past-to-transitive-clause-without-object-with-conjunction-and
  :pattern ( transitive-clause-without-object conjunction vp+past )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))




;;; subordinate clauses

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-base
  :pattern ( subordinate-clause vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-s-base
  :pattern ( subordinate-s vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-clause-with-conjunction-comma
  :pattern ( subordinate-clause "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-s-with-conjunction-comma
  :pattern ( subordinate-s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-clause-with-conjunction-and
  :pattern ( subordinate-clause and vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-s-with-conjunction-and
  :pattern ( subordinate-s and vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-with-conjunction
  :pattern ( subordinate-clause and vp+ed )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-s-with-conjunction-and
  :pattern ( subordinate-s and vp+ed )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+past-to-subordinate-clause-with-conjunction-and
  :pattern ( subordinate-clause and vp+past )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+past-to-subordinate-s-with-conjunction-and
  :pattern ( subordinate-s and vp+past )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-clause
  :pattern ( vp+ing "," s )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-subordinate-clause
  :pattern ( vp+ing "," subordinate-clause )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-subordinate-s
  :pattern ( vp+ing "," subordinate-s )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(defun attach-preceding-participle-with-comma-to-clause (vp+ing-edge comma-edge s-edge)
  (declare (ignore comma-edge))
  (let* ((s-subj-var (subject-variable s-edge))
         (vp-subj-var (subject-variable vp+ing-edge))
         (s-ref (edge-referent s-edge))
         (vp+ing-ref (edge-referent vp+ing-edge)))
    (when (and s-ref vp+ing-ref s-subj-var vp-subj-var)
      (let ((subject (value-of s-subj-var s-ref)))
        (when subject
          (setq vp+ing-ref (bind-dli-variable vp-subj-var subject vp+ing-ref))
          ;; have just created a new interpretation of an existing edge -- make a mention
          (update-edge-mention-referent vp+ing-edge vp+ing-ref)
          (make-edge-spec
           :category (edge-category s-edge)
           :form (edge-form s-edge)
           :referent (referent-of-two-conjoined-referents 
                      vp+ing-ref
                      (edge-referent s-edge))))))))




(define-debris-analysis-rule attach-comma-appositive-np-under-s
  :pattern ( s "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-pp
  :pattern ( pp "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+ing
  :pattern ( vp+ing "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+ed
  :pattern ( vp+ed "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+past
  :pattern ( vp+past "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp
  :pattern ( vp "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-s
  :pattern ( s "," proper-noun)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))

;; via the tyrosine phosphorylation of an adapter protein, p130 CAS (XREF_BIBR).
(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-pp
  :pattern ( pp "," proper-noun)
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))


(defun attach-comma-appositive-np-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))

(defun attach-comma-appositive-proper-noun-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))

(defun attach-comma-appositive-np-comma-under-s (s comma-1 np comma-2)
  (attach-appositive-np-under-s s comma-1 np (pos-edge-ends-at comma-2)))

(defun attach-appositive-np-under-s (s-edge comma-edge np-edge end-pos)
  ;; Look up the right fridge of the s for a proper-noun
  (when (and (word-p (pos-terminal end-pos))
             (member (pname (pos-terminal end-pos))
                     '("," "." ";" "?")
                     :test #'equal))    
    (let ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?)))
      (when target
        (make-edge-spec 
         :category (edge-category target)
         :form (edge-form target)
         :referent (bind-dli-variable 'appositive-description (edge-referent np-edge)
                                      (edge-referent target))
         :target target
         :direction :right)))))



;;; PP rules

(define-debris-analysis-rule attach-appositive-comma-np-comma-under-pp
  :pattern ( pp "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
	   attach-appositive-comma-np-comma-under-pp
           first second third fourth))

(defun attach-appositive-comma-np-comma-under-pp (pp-edge comma-1 np-edge comma-2)
  (attach-appositive-comma-np-endpos-under-pp pp-edge comma-1 np-edge (pos-edge-ends-at comma-2)))

(defun attach-appositive-comma-np-endpos-under-pp (pp-edge comma-edge np-edge end-pos)
  ;; Look up the right fridge of the s for a proper-noun
  (unless
      ;; test if this is more likely to be a conjunction.
      ;;  There is an error condition when conjunctions are treated like
      ;;  appositives that causes an circular edge structure -- need to get to the bottom of
      ;;  it, but for now we are avoiding the problem
      (loop for e in (ev-edges (pos-starts-here end-pos))
         thereis (and (edge-p e) (eq (cat-name (edge-category e)) 'and)))
    
    (let ((target (find-target-satisfying (right-fringe-of pp-edge) #'np-target?)))
      (when target
        (make-edge-spec 
         :category (edge-category target)
         :form (edge-form target)
         :referent (bind-dli-variable 'appositive-description (edge-referent np-edge)
                                      (edge-referent target))
         :target target
         :direction :right)))))


(define-debris-analysis-rule attach-appositive-comma-proper-noun-under-pp
  :pattern ( pp "," proper-noun ",")
  :action (:function
	   attach-appositive-comma-proper-noun-under-pp
           first second third fourth))

(defun attach-appositive-comma-proper-noun-under-pp (pp comma-1 proper-noun comma-2)
  (attach-appositive-comma-np-endpos-under-pp pp comma-1 proper-noun (pos-edge-ends-at comma-2)))




;;; NP rules

(define-debris-analysis-rule attach-np-comma-np-comma-as-appositive
  :pattern ( np "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-np-comma-np-comma-as-appositive
           first second third fourth))

(defun attach-np-comma-np-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-proper-noun-comma-np-comma-as-appositive
  :pattern ( proper-noun "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-proper-noun-comma-np-comma-as-appositive
           first second third fourth))

(defun attach-proper-noun-comma-np-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-np-comma-proper-noun-comma-as-appositive
  :pattern ( np "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-np-comma-proper-noun-comma-as-appositive
           first second third fourth))

(defun attach-np-comma-proper-noun-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-proper-noun-comma-proper-noun-comma-as-appositive
  :pattern ( proper-noun "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-proper-noun-comma-proper-noun-comma-as-appositive
           first second third fourth))

(defun attach-proper-noun-comma-proper-noun-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))

(defun attach-appositive-to-np (base-np comma-edge np-edge trailing-comma)
  (unless (and (edge-p (edge-just-to-right-of trailing-comma))
               (member (cat-name (edge-category (edge-just-to-right-of trailing-comma)))
                       '(and or)))
    (make-edge-spec 
     :category (edge-category base-np)
     :form (edge-form base-np)
     :referent
     (bind-dli-variable 'appositive-description (edge-referent np-edge) (edge-referent base-np))
     )))


;;------------------------- S -----------------------
(define-debris-analysis-rule s-comma-subj-relative
    :pattern (s "," subject-relative-clause)
    :action (:function s-comma-subj-relative first second third))

(define-debris-analysis-rule vp-comma-subj-relative
    :pattern (vp "," subject-relative-clause)
    :action (:function s-comma-subj-relative first second third))

(define-debris-analysis-rule pp-comma-subj-relative
    :pattern (pp "," subject-relative-clause)
    :action (:function s-comma-subj-relative first second third))

(defun s-comma-subj-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge)
           (optimize (debug 3)(speed 1)))
  (when (edge-referent srel-edge) ;; can be null as in "which is consistent "
    (let* ((s (edge-referent s-edge))
           (s-rel (edge-referent srel-edge)) ;; can be null?!
           (target (when (and s-rel
                              (not (is-basic-collection? s-rel)))
                     (find-target-satisfying
                      (right-fringe-of s-edge)
                      #'(lambda(x)
                          (and (np-target? x)
                               (subcategorized-variable s-rel :subject (edge-referent x)))))))
           ;; update-edge-as-lambda-predicate now returns NIL if there is
           ;;  no available binding for the variable (s-var or t-var) on srel-edge
           (t-pred (when target
                     (update-edge-as-lambda-predicate srel-edge target)))
           (s-pred (when (and target
                              (null t-pred)
                              (not (eq (form-cat-name s-edge) 'pp)))
                     (update-edge-as-lambda-predicate srel-edge s))))
      (cond (t-pred
             (make-edge-spec 
              :category (edge-category target)
              :form (edge-form target)
              :referent (bind-dli-variable :predication t-pred (edge-referent target))
              :target target
              :direction :right))
            (s-pred
             (make-edge-spec 
              :category (edge-category s-edge)
              :form (edge-form s-edge)
              :referent (bind-dli-variable 'predication s-pred s)
              ))))))


(define-debris-analysis-rule s-comma-obj-relative
    :pattern (s "," object-relative-clause)
    :action (:function s-comma-obj-relative first second third))

(define-debris-analysis-rule vp-comma-obj-relative
    :pattern (vp "," object-relative-clause)
    :action (:function s-comma-obj-relative first second third))

(define-debris-analysis-rule pp-comma-obj-relative
    :pattern (pp "," object-relative-clause)
    :action (:function s-comma-obj-relative first second third))

(defun s-comma-obj-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge)
           (optimize (debug 3)(speed 1)))
  (when (edge-referent srel-edge)
    (let* ((s (edge-referent s-edge))
           (s-rel (edge-referent srel-edge))
           (target (when (and s-rel
                              (not (is-basic-collection? s-rel)))
                     (find-target-satisfying
                      (right-fringe-of s-edge)
                      #'(lambda(x)
                          (and (np-target? x)
                               (subcategorized-variable s-rel :object (edge-referent x)))))))
           ;; update-edge-as-lambda-predicate now returns NIL if there is
           ;;  no available binding for the variable (s-var or t-var) on srel-edge
           (t-pred (when target
                     (update-edge-as-lambda-predicate srel-edge target)))
           (s-pred (when (and target
                              (null t-pred)
                              (not (eq (form-cat-name s-edge) 'pp)))
                     (update-edge-as-lambda-predicate srel-edge s))))
      (cond (t-pred
             (make-edge-spec 
              :category (edge-category target)
              :form (edge-form target)
              :referent (bind-dli-variable :predication t-pred (edge-referent target))
              :target target
              :direction :right))
            (s-pred
             (make-edge-spec 
              :category (edge-category s-edge)
              :form (edge-form s-edge)
              :referent (bind-dli-variable 'predication s-pred s)
              ))))))


(define-debris-analysis-rule s-comma-where-relative
    :pattern (s "," where-relative-clause)
    :action (:function s-comma-where-relative first second third))

(defun s-comma-where-relative (s comma where-relative)
  (s-comma-where-when-relative s comma where-relative))


(define-debris-analysis-rule s-comma-when-relative
    :pattern (s "," when-relative-clause)
    :action (:function s-comma-when-relative first second third))

(defun s-comma-when-relative (s comma when-relative)
  (s-comma-where-when-relative s comma when-relative))

(defun s-comma-where-when-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((s (edge-referent s-edge))
         (s-subject (get-subject-from-s-edge s-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge s-subject)))
    (cond (s-pred
           (make-edge-spec 
            :category (edge-category s-edge)
            :form (edge-form s-edge)
            :referent (bind-dli-variable 'predication s-pred s)))
          (t
           (let* ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?))
                  (t-pred (update-edge-as-lambda-predicate srel-edge target)))
             (when t-pred
               (make-edge-spec 
                :category (edge-category target)
                :form (edge-form target)
                :referent
                (bind-dli-variable :predication
                                   t-pred
                                   (edge-referent target))
                :target target
                :direction :right)))))))


;;--------------- NP

(define-debris-analysis-rule np-comma-subj-relative
    :pattern (np "," subject-relative-clause)
    :action (:function np-comma-subj-relative first second third))

(define-debris-analysis-rule proper-noun-comma-subj-relative
    :pattern (proper-noun "," subject-relative-clause)
    :action (:function np-comma-subj-relative first second third))

(defun np-comma-subj-relative (np-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))


(define-debris-analysis-rule np-comma-subj-relative-comma
    :pattern (np "," subject-relative-clause ",")
    :action (:function np-comma-subj-relative-comma first second third fourth))

(define-debris-analysis-rule proper-noun-comma-subj-relative-comma
    :pattern (proper-noun "," subject-relative-clause ",")
    :action (:function np-comma-subj-relative-comma first second third fourth))

(defun np-comma-subj-relative-comma (np-edge comma-edge srel-edge comma-2)
  (declare (ignore comma-edge comma-2))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))


;;  object relative NP

(define-debris-analysis-rule np-comma-obj-relative
    :pattern (np "," object-relative-clause)
    :action (:function np-comma-obj-relative first second third))

(define-debris-analysis-rule proper-noun-comma-obj-relative
    :pattern (proper-noun "," object-relative-clause)
    :action (:function np-comma-obj-relative first second third))

(defun np-comma-obj-relative (np-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))

(define-debris-analysis-rule np-comma-obj-relative-comma
    :pattern (np "," object-relative-clause ",")
    :action (:function np-comma-obj-relative-comma first second third fourth))

(define-debris-analysis-rule proper-noun-comma-obj-relative-comma
    :pattern (proper-noun "," object-relative-clause ",")
    :action (:function np-comma-obj-relative-comma first second third fourth))

(defun np-comma-obj-relative-comma (np-edge comma-edge srel-edge comma-2)
  (declare (ignore comma-edge comma-2))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))


(define-debris-analysis-rule np-comma-pp-comma
  :pattern ( np "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function np-comma-pp-comma first second third fourth))

(defun np-comma-pp-comma (np comma-1 pp comma-2)
  (attach-pp-to-np-with-commas np comma-1 pp comma-2))


(define-debris-analysis-rule proper-noun-comma-pp-comma
  :pattern ( proper-noun "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function proper-noun-comma-pp-comma first second third fourth))

(defun proper-noun-comma-pp-comma (np comma-1 pp comma-2)
  (attach-pp-to-np-with-commas np comma-1 pp comma-2))

(defun attach-pp-to-np-with-commas (np-edge comma-edge-1 pp-edge comma-edge-2)
  (declare (special np-edge comma-edge-1 pp-edge comma-edge-2))
  ;; Look up the right fridge of the s for a proper-noun 
  (let* ((np (edge-referent np-edge))
	 (pobj-edge (edge-right-daughter pp-edge))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-edge (edge-left-daughter pp-edge))
	 (prep-word (edge-left-daughter prep-edge))
	 (var-name
	  (subcategorized-variable np prep-word pobj-referent)))
    (cond
      (var-name
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent (bind-dli-variable var-name pobj-referent np)))
      (t
       nil))))


;;------------------ PP -------------------

(define-debris-analysis-rule pp-comma-pp-comma
  :pattern ( pp "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function pp-comma-pp-comma first second third fourth))

(defun pp-comma-pp-comma (pp-1-edge comma-edge-1 pp-2-edge comma-edge-2)
  (declare (special np-edge comma-edge-1 pp-edge comma-edge-2))
  ;; Look up the right fridge of the s for a proper-noun 
  (let* ((np-edge (edge-right-daughter pp-1-edge))
         (np (edge-referent np-edge))
	 (pobj-2-edge (edge-right-daughter pp-2-edge))
	 (pobj-2-referent (edge-referent pobj-2-edge))
	 (prep-2-edge (edge-left-daughter pp-2-edge))
	 (prep-2-word (edge-left-daughter prep-2-edge))
	 (var-name
	  (subcategorized-variable np prep-2-word pobj-2-referent)))
    (cond
      (var-name
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent (bind-dli-variable var-name pobj-2-referent np)
        :target np-edge
        :direction :right
        ))
      (t
       nil))))


(define-debris-analysis-rule proper-noun-comma-vg+ed-comma
  :pattern (proper-noun "," vp+ed ",")
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           proper-noun-comma-vg+ed-comma first second third fourth))

(defun proper-noun-comma-vg+ed-comma (np intial-comma vp+ed final-comma)
  (declare (special category::np))
  (let* ((modified-vp-ref (update-edge-as-lambda-predicate vp+ed (edge-referent np))))
    (when modified-vp-ref
      (make-edge-spec
       :category (edge-category np)
       :form category::np
       :referent (bind-dli-variable 'modifier modified-vp-ref (edge-referent np))))))


(define-debris-analysis-rule np-vp+ed
    :pattern (np vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first second))

;; seems to be obviated by phrase-and-vg+ed
(define-debris-analysis-rule pronoun-vp+ed
  :pattern (proper-noun vp+ed )
  :action (:function
           proper-noun-vp+ed first second))

(defun proper-noun-vp+ed (proper-noun vp+ed)
  (phrase-and-vg+ed proper-noun vp+ed))


(define-debris-analysis-rule np-vg+ed
  :pattern (np vg+ed )
  :action (:function
           np-vg+ed first second))

(defun np-vg+ed (np vg+ed)
  (declare (special category::s category::vg+ed))
  (unless (adverb-at? (pos-edge-starts-at vg+ed))
    ;; this test is a heuristic, to block
    ;; "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function"
    (let* ((*right-edge-into-reference* vg+ed)
           (*left-edge-into-reference* np)
           (interp (assimilate-subject (edge-referent np)
                                       (edge-referent vg+ed))))
      (declare (special *right-edge-into-reference* *left-edge-into-reference*))
      ;; "Is MAPK1-bound MAP2K1 sustained?"
      (when interp
        (make-edge-spec
         :category (edge-category vg+ed)
         :form category::s
         :referent interp
         )))))


(define-debris-analysis-rule proper-noun-vg+ed
  :pattern (proper-noun vg+ed )
  :action (:function proper-noun-vg+ed first second))

(defun proper-noun-vg+ed (pronoun vg+ed)
  (np-vg+ed pronoun vg+ed))


(define-debris-analysis-rule pp-vg+ed
    :pattern (pp vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first second))

(define-debris-analysis-rule np-comma-vg+ed
    :pattern (np "," vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first third))

(define-debris-analysis-rule pp-comma-vg+ed
    :pattern (pp "," vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first third))

(defun phrase-and-vg+ed (phrase vp+ed)
  (declare (special category::np))
  (let* ((vp-ref (edge-referent vp+ed))
         (fringe (right-fringe-of phrase)) 
         (target
          (find-target-satisfying
           fringe
           #'(lambda (x)
               (and (np-target? x)
                    (edge-used-in x) ;; have two edges over Ras, one is not used
                    (subcategorized-variable vp-ref :object (edge-referent x)))))))
    (when target
      (unless (edge-used-in target)
        (lsp-break "null dominating edge ~s" target))
      (make-edge-spec
       :category (edge-category target)
       :referent (bind-dli-variable
                  'predication
                  (update-edge-as-lambda-predicate vp+ed target :object)
                  (edge-referent target))
       :form (edge-form target)
       :target target
       :direction :right))))


(define-debris-analysis-rule s-vp+ed
  :pattern (s vp+ed )
  :action (:function
           s-vp+ed first second))

(define-debris-analysis-rule vp-vp+ed
  :pattern (vp vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(define-debris-analysis-rule adjp-vp+ed
  :pattern (adjp vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(define-debris-analysis-rule vp-ing-vp+ed
  :pattern (vp+ing vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(define-debris-analysis-rule s-comma-vp+ed
  :pattern (s "," vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-comma-vp+ed first second third))

(defun s-comma-vp+ed (s comma vp+ed)
  (declare (ignore comma))
  (s-vp+ed s vp+ed))

(defun s-vp+ed (s-edge vp+ed)
  (let* ((target
          (find-target-satisfying (right-fringe-of s-edge)
                                  #'(lambda(x)
                                      (and (np-target? x)
                                           (subcategorized-variable
                                            (edge-referent vp+ed)
                                            :object (edge-referent x))))))
         (target-ref (when target (edge-referent target)))
         (vp (edge-referent vp+ed))
         (pred (when target
                 (update-edge-as-lambda-predicate vp+ed target-ref :object))))
    (when pred
      (make-edge-spec
       :category (edge-category target)
       :form category::np
       :referent (bind-dli-variable 'predication pred (edge-referent target))
       :target target
       :direction :right))))



(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function comma-adverb-comma  first second third))

(defun comma-adverb-comma (comma-1 adverb comma-2)
  (declare (ignore comma-1 comma-2))
  (make-edge-spec
   :category (edge-category adverb)
   :form category::adverb
   :referent (edge-referent adverb)))


(define-debris-analysis-rule adverb-comma
  :pattern (adverb "," )
  :action (:function adverb-comma first second))

(defun adverb-comma (word-edge comma)
  (declare (ignore comma))
  (make-edge-spec
     :category (edge-category word-edge)
     :form (edge-form word-edge)
     :referent (edge-referent word-edge)))



(define-debris-analysis-rule subordinate-comma-clause
  :pattern (subordinate-clause "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule ifcomp-comma-clause
  :pattern (ifcomp "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule whethercomp-comma-clause
  :pattern (whethercomp "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-and-clause
  :pattern (subordinate-clause and s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-comma-clause
  :pattern (subordinate-s "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-and-clause
  :pattern (subordinate-s and s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-comma-clause
  :pattern (subordinate-clause "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-and-clause
  :pattern (subordinate-clause and s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-comma-clause
  :pattern (subordinate-s "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-and-clause
  :pattern (subordinate-s and s )
  :action (:function subordinate-comma-clause first second third))

(defun subordinate-comma-clause (sc comma s)
  (declare (ignore comma))
  (create-event-relation s sc))


(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-clause "," subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-s "," subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-ifcomp
  :pattern (subordinate-s "," ifcomp )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-clause "," subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-s "," subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-clause
  :pattern (subordinate-clause ";" subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-s
  :pattern (subordinate-clause ";" subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-s-semicolon-subordinate-s
  :pattern (subordinate-s ";" subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-clause
  :pattern (s ";" subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-s
  :pattern (s ";" subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(defun subordinate-comma-subordinate-clause (sc comma sc-2)
  (declare (ignore comma))
  (create-event-relation sc-2 sc))


(define-debris-analysis-rule clause-and-subordinate
  :pattern ( s conjunction subordinate-clause  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule clause-and-subordinate-s
  :pattern ( s conjunction subordinate-s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule transitive-clause-without-object-and-subordinate-s
  :pattern ( transitive-clause-without-object conjunction subordinate-s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule clause-and-clause
  :pattern ( s conjunction s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule transitive-clause-without-object-and-clause
  :pattern ( transitive-clause-without-object conjunction s  )
  :action (:function clause-and-subordinate  first second third))

(defun clause-and-subordinate (s conjunction sc)
  (create-event-relation s sc))


(define-debris-analysis-rule clause-comma-subordinate
  :pattern ( s "," subordinate-clause )
  :action (:function clause-comma-subordinate  first second third))

(define-debris-analysis-rule clause-comma-ifcomp
  :pattern ( s "," ifcomp )
  :action (:function clause-comma-subordinate  first second third))

(define-debris-analysis-rule clause-comma-subordinate-s
  :pattern ( s "," subordinate-s )
  :action (:function clause-comma-subordinate  first second third))

(defun clause-comma-subordinate (s comma sc)
  (declare (ignore comma))
  (create-event-relation s sc))


(define-debris-analysis-rule clause-subordinate
  :pattern ( s subordinate-clause )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule clause-ifcomp
  :pattern ( s ifcomp )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule question-ifcomp
  :pattern ( question ifcomp )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule clause-subordinate-s
  :pattern ( s subordinate-s )
  :action (:function clause-subordinate first second))

(defun clause-subordinate (s sc)
  (create-event-relation s sc))




(define-debris-analysis-rule when-relative-clause-comma
               :pattern (when-relative-clause "," s)
	       :action (:function when-relative-clause-comma  first second third))

(defun when-relative-clause-comma (wc comma s)
  (declare (ignore comma))
  (create-event-relation wc s))


(define-debris-analysis-rule where-relative-clause-comma
               :pattern (where-relative-clause "," s)
	       :action (:function where-relative-clause-comma  first second third))

(defun where-relative-clause-comma (wc comma s)
  (declare (ignore comma))
  (create-event-relation wc s))


(define-debris-analysis-rule s-when-relative-clause
               :pattern (s when-relative-clause)
	       :action (:function s-when-relative-clause first second))

(defun s-when-relative-clause (wc s)
   (create-event-relation wc s))


(define-debris-analysis-rule clause-subordinate-relative-clause
  :pattern ( s subordinate-relative-clause )
  :action (:function clause-subordinate-relative-clause  first second))

(define-debris-analysis-rule clause-comma-subordinate-relative-clause
  :pattern ( s "," subordinate-relative-clause )
  :action (:function clause-subordinate-relative-clause  first third))

(defun clause-subordinate-relative-clause (s sub-clause-edge)
  (let* ((target
          (find-target-satisfying
           (right-fringe-of s)
           #'(lambda (e)
               (and (np-target? e)
                    (subcategorized-variable (edge-referent sub-clause-edge)
                                             :subject (edge-referent e))))))
	 (conj (value-of 'subordinate-conjunction (edge-referent sub-clause-edge)))
	 (event (edge-referent s))
	 (sub-event
          (when target
            (update-edge-as-lambda-predicate
             sub-clause-edge
             (edge-referent target)))))
    (when sub-event					 
      (make-edge-spec
       :category category::event-relation
       :form category::s
       :referent (make-event-relation
                   conj s sub-event s)))))


(define-debris-analysis-rule clause-comma-subordinate-np
  :pattern ( s "," subordinate-conjunction np)
  :action (:function clause-comma-subordinate-np  first second third fourth))

(defun clause-comma-subordinate-np (s comma subordinate-conjunction np)
  (declare (ignore comma))
  (create-event-np-relation s subordinate-conjunction np))

(defun create-event-np-relation (event-edge sub-edge sub-np-edge)
  (let* ((conj (edge-referent sub-edge))
         (event (edge-referent event-edge))
         (sub-event (edge-referent sub-np-edge)))
    (when (or (itypep sub-event :process)
              (itypep sub-event :event-relation))
      (make-edge-spec
       :category category::event-relation
       :form category::event-relation
       :referent (make-event-relation conj event sub-event
                                      event-edge sub-np-edge)))))


(define-debris-analysis-rule clause-comma-subordinate-event-relation
  :pattern ( s "," subordinate-conjunction event-relation)
  :action (:function clause-comma-subordinate-event-relation  first second third fourth))

(defun clause-comma-subordinate-event-relation (s comma sconj event-relation)
  (declare (ignore comma))
  (create-event-relation s event-relation (edge-referent sconj)))


(define-debris-analysis-rule np-conj-pp
    ;; for the case where the rightmost NP in a conjunction can
    ;; take a PP, but was conjoined early
    :pattern (np pp)
    :action (:function np-conj-pp first second))

(define-debris-analysis-rule s-with-np-conj-pp
    ;; for the case where the rightmost NP in a conjunction can
    ;; take a PP, but was conjoined early
    :pattern (s pp)
    :action (:function np-conj-pp first second))


(defun np-conj-pp (np-containing-edge pp-edge)
  (let* ((prep (identify-preposition pp-edge))
         (*pobj-edge* (edge-right-daughter pp-edge))
         (pobj-referent (when (edge-p *pobj-edge*) (edge-referent *pobj-edge*))))
    (if (itypep (edge-category pp-edge) 'but-not)
        (make-edge-spec
         :category (itype-of (edge-referent np-containing-edge))
         :form category::np
         :referent (bind-dli-variable 'excluding pobj-referent (edge-referent np-containing-edge))
         :target np-containing-edge
         :direction :right)
        (let ((np-conj-edge
               (find-target-satisfying
                (right-fringe-of np-containing-edge)
                #'np-conjunction-edge?)))
          (when (and np-conj-edge
                     (not (eq np-conj-edge
                              (edge-left-daughter np-containing-edge))))
            (let* ((np-ref (edge-referent np-conj-edge))
                   (label (identify-preposition pp-edge))
                   (last-np
                    (and np-ref
                         (value-of 'items np-ref)
                         (car (last (value-of 'items np-ref)))))
                   (var-to-bind
                    (when last-np
                      (find-subcat-var pobj-referent label last-np)))
                   (target
                    (when var-to-bind
                      (cond
                        ((and (edge-p (edge-right-daughter np-conj-edge))
                              (eq (edge-referent (edge-right-daughter np-conj-edge))
                                  last-np))
                         (edge-right-daughter np-conj-edge))
                        ((and (edge-constituents np-conj-edge)
                              (edge-p (car (last (edge-constituents np-conj-edge))))
                              (eq (edge-referent (car (last (edge-constituents np-conj-edge))))
                                  last-np))
                         (car (last (edge-constituents np-conj-edge))))))))
              (when (and var-to-bind target)
                (make-edge-spec
                 :category (itype-of last-np)
                 :form category::np
                 :referent (bind-dli-variable var-to-bind pobj-referent last-np)
                 :target target
                 :direction :right
                 ))))))))



#+ignore
(define-debris-analysis-rule np-comma-np-comma-and-np
  :pattern ( np "," np "," and np)
  :action (:function
           np-comma-np-comma-and-np
           first second third fourth))

(define-debris-analysis-rule s-comma-np-comma-and-np
  :pattern ( s "," np "," and np)  
  :action (:function
           s-comma-np-comma-and-np
           first second third fourth fifth sixth))

(defun s-comma-np-comma-and-np ( s comma-1 np-1 comma-2 and-wd np-2)
  (declare (ignore comma-1 comma-2))
  (let* ((target (find-target-satisfying
                  (right-fringe-of s)
                  #'(lambda(x)
                      (and (np-target? x)
                           ;; avoid bad attachment to a bio-entity in
                           ;; "Transformation is associated with constitutive autophosphorylation of EGFR
                           ;;    , Shc phosphorylation, and STAT pathway activation"
                           (cond ((itypep (edge-referent np-1) 'bio-process)
                                  (itypep (edge-referent x) 'bio-process))
                                 ((itypep (edge-referent np-1) 'bio-entity)
                                  (itypep (edge-referent x) 'bio-entity))
                                 (t t)))))))
    (when target
      (let ((collection
             (make-an-individual 'collection
                                 :items `(,(edge-referent target)
                                           ,(make-maximal-projection
                                             (edge-referent np-1)
                                             np-1)
                                           ,(make-maximal-projection
                                             (edge-referent np-2)
                                             np-2))
                                 :number 3
                                 :type (itype-of (edge-referent target)))))
        (setq collection
              (if *description-lattice*
                  (find-or-make-lattice-description-for-collection collection)
                  collection ))
        (when target
          (make-edge-spec 
           :category (edge-category target)
           :form (edge-form target)
           :referent collection
           :target target
           :direction :right))))))


(define-debris-analysis-rule s-conjunction-np
  :pattern ( s conjunction np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-clause-and-np
  :pattern ( subordinate-clause and np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-s-and-np
  :pattern ( subordinate-s and np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-clause-or-np
  :pattern ( subordinate-clause or np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-s-or-np
  :pattern ( subordinate-s or np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule vp-and-np
  :pattern ( vp and np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule vp-or-np
  :pattern ( vp or np)  
  :action (:function s-conjunction-np
                     first second third))

(defun s-conjunction-np ( s conjunction np)
  (let* ((target
          (find-target-satisfying
           (right-fringe-of s)
           #'(lambda(x)
               (and (np-target? x)
                    (eq (itypep (edge-referent x) 'protein)
                        (itypep (edge-referent np) 'protein))))))
         (collection
          (when target
            (make-an-individual 'collection
                                :items `(,(edge-referent target)
                                          ,(make-maximal-projection
                                            (edge-referent np)
                                            np))
                                :number 2
                                :type (itype-of (edge-referent target))))))
    
    (when collection
      (setq collection
            (if *description-lattice*
                (find-or-make-lattice-description-for-collection collection)
                collection ))
      (when target
        (make-edge-spec 
         :category (edge-category target)
         :form (edge-form target)
         :referent collection
         :target target
         :direction :right)))))


;; low priority rules for treating present-participles as subjects
;; -- try to get the subject of the participials first

(defun make-subj-vp-rule-pair (subj vp)
  (let ((rule-name (intern (format nil "~s-~s" subj vp))))
    `(progn
       (define-debris-analysis-rule ,rule-name
           :pattern (,subj ,vp)
           ;; The action can fail. Returning nil ought to suffice
           :action (:function ,rule-name first second))

       (defun ,rule-name (,subj ,vp)
         (let* ((*right-edge-into-reference* ,vp)
                (*left-edge-into-reference* ,subj)
                (ref (assimilate-subject (edge-referent ,subj) (edge-referent ,vp))))
           (declare (special *right-edge-into-reference* *left-edge-into-reference*))
           (when ref
             (make-edge-spec 
              :category (edge-category ,vp)
              :form category::s
              :referent ref)))))))

(loop for subj in '(vp+ing vg+ing)
   do
     (loop for vp in '(vp vg vp+passive vg+passive)
        do
          (eval (make-subj-vp-rule-pair subj vp))))


(defun make-subj-vp+ing-rule-pair (subj)
  (let ((rule-name (intern (format nil "~s-VP+ING" subj))))
    `(progn
       (define-debris-analysis-rule ,rule-name
           :pattern (,subj vp+ing)
           ;; The action can fail. Returning nil ought to suffice
           :action (:function ,rule-name first second))

       (defun ,rule-name (,subj  host-vp)
         (let* ((*right-edge-into-reference* host-vp)
                (*left-edge-into-reference* ,subj)
                (ref (assimilate-subject-to-vp-ing (edge-referent ,subj) (edge-referent host-vp))))
           (declare (special *right-edge-into-reference* *left-edge-into-reference*))
           (when ref
             (make-edge-spec 
              :category (edge-category host-vp)
              :form category::s
              :referent ref)))))))

(loop for subj in '(vp+ing vg+ing)
   do
     (eval (make-subj-vp+ing-rule-pair subj)))


;;--- make it possible for ADJPs to post-modify NPs

(define-debris-analysis-rule np-adjective
    :pattern (np adjective)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule np-adjp
    :pattern (np adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule s-adjp
    :pattern (s adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule whethercomp-adjp
    :pattern (whethercomp adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule subordinate-clause-adjp
    :pattern (subordinate-clause adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule vp-adjp
    :pattern (vp adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule pp-adjp
    :pattern (pp adjp)
    :action (:function postmodifying-adj first second))

(defun postmodifying-adj (first-edge adjp-edge) ; examples 
  (let* ((adjp (edge-referent adjp-edge))
         (target
          (find-target-satisfying
           (right-fringe-of first-edge)
           #'(lambda (e)
               (and (np-target? e)
                    (subcategorized-variable adjp :subject (edge-referent e)))))))
    (when target
      (let ((pred
             (create-predication-and-edge-by-binding
              :subject (edge-referent target) adjp adjp-edge))) 
        (make-edge-spec
         :category (edge-category target)
         :form (edge-form target)
         :referent (bind-dli-variable 'predication pred (edge-referent target))
         :target target
         :direction :right)
        ))))


;;;-----------
;;; questions
;;;-----------

#| Most all of these question patterns are processed by functions
that are in q-patterns.lisp. These patterns are not anchored to
the beginning of the sentence as make-this-a-question-if-appropriate
assumed. |#

;;--- patterns starting with preposed-auxiliary

(loop for ap in '(adjp adjective comparative-adjective superlative-adjective
                  comparative superlative
                  comparative-adjp superlative-adjp
                  )
   do (loop for n in '(np proper-noun common-noun)
        do (let ((pattern `(preposed-auxiliary ,n ,ap))
                 (name (s-intern '#:aux-np- ap)))
             (define-debris-analysis-rule/expr name
               pattern
               '(:function polar-postmodifying-adj first second third)))))

(defun polar-postmodifying-adj (be-edge np-edge adjp-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (when (preposed-aux? :first-np-edge np-edge)
    (if (eq (cat-name (edge-category be-edge)) 'do)
        ;; there should be a verb, not an adjp, so fail
        ;;  possibly figure out whether the verb was swallowd by the np-edge
        ;;  as in "does RAS rise faster ..." where "rise" is mistakenly treated as a noun
        nil
        (let ((edges (list be-edge np-edge adjp-edge))
              (end-pos (fix-da-ending-pos *da-ending-position*)))
          (make-polar-adjective-question
           *da-starting-position* end-pos edges)))))

(loop for n in '(np proper-noun common-noun)
        do (let ((pattern `(preposed-auxiliary ,n vp+ed))
                 (name (s-intern '#:aux-np-vp+ed)))
             (define-debris-analysis-rule/expr name
               pattern
               '(:function polar-postmodifying-vp+ed first second third))))


(defun polar-postmodifying-vp+ed (be-edge np-edge vp+ed-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (when (preposed-aux? :first-np-edge np-edge)
    (when
        (eq (cat-name (edge-category be-edge)) 'be)
      ;; there should be a verb, not an adjp, so fail
      ;;  possibly figure out whether the verb was swallowd by the np-edge
      ;;  as in "does RAS rise faster ..." where "rise" is mistakenly treated as a noun
      (let ((edges (list be-edge np-edge vp+ed-edge))
            (end-pos (fix-da-ending-pos *da-ending-position*)))
        (make-polar-participle-question
         *da-starting-position* end-pos edges)))))

(loop for second-np in '(np proper-noun common-noun pronoun)
   do (loop for n in '(np proper-noun common-noun pronoun)
        do (let ((pattern `(preposed-auxiliary ,n ,second-np))
                 (name (s-intern '#:aux-np- second-np)))
             (define-debris-analysis-rule/expr name
               pattern
               '(:function polar-copular-np first second third)))))

(defun polar-copular-np (be-edge np-edge second-np-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (when (preposed-aux? :first-np-edge np-edge)
    (if (not (eq (cat-name (edge-category be-edge)) 'be))
        nil
        (let ((edges (list be-edge np-edge second-np-edge))
              (end-pos (fix-da-ending-pos *da-ending-position*)))
          (make-polar-copular-question
           *da-starting-position* end-pos edges)))))

(define-debris-analysis-rule aux-np-vp-adj
    :pattern (preposed-auxiliary proper-noun vp+ed adjective)
    :action (:function polar-reduced-rel first second third fourth))

(defun polar-reduced-rel (aux-edge noun-edge vp+ed-edge adj-edge)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (polar-reduced-relative aux-edge noun-edge vp+ed-edge adj-edge
                            *da-starting-position* end-pos)))


(define-debris-analysis-rule aux-s
    :pattern (preposed-auxiliary s)
    :action (:function da/preposed+s first second))

(define-debris-analysis-rule aux-transitive-without
    :pattern (preposed-auxiliary transitive-clause-without-object)
    :action (:function da/preposed+s first second))
;; "Does phosphorylated MAP2K1 behave like phosphorylated MAPK1?"

(define-debris-analysis-rule is-s-under-condition
    :pattern (preposed-auxiliary s ifcomp)
    :action (:function da/preposed+s first second)) ;;/// this fn ignores the ifcomp

(define-debris-analysis-rule is-s-vp
    :pattern (preposed-auxiliary s vp)
    :action (:function da-is-s-vp first second third))
;; Does phosphorylated MAP2K1 being high follow phosphorylated BRAF reaching a high value?"


(defun da-is-s-vp (aux-edge s-edge vp-edge)
  ;;/// do open variable check here?
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (polar-sentential-subject aux-edge s-edge vp-edge
                               *da-starting-position* end-pos)))


;;--- patterns starting in np (covering a wh)

(define-debris-analysis-rule wh-vg-np-vg
    :pattern (np vg np vg)
    :action (:function apply-question-displaced-vg
                       first second third fourth))

(define-debris-analysis-rule wh-vg-transitive-no-object
    :pattern (np vg transitive-clause-without-object) ;; np = "what genes"
    ;; "What genes does lung cancer target?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule np-modal-transitive-no-object
    :pattern (np modal s)
    ;; "What drug could I use to target pancreatic cancer?"
    :action  (:function wh-three-edges first second third))


(defun wh-three-edges (np vg open-vp)
  (declare (special *da-starting-position* *da-ending-position*
                    *da-constituent-edges*))
  (when (wh-edge? np) ;; null return fails the DA rule
    (let ((edges (if (= 3 (length *da-constituent-edges*))
                   *da-constituent-edges*
                   (list np vg open-vp)))
          (end-pos (fix-da-ending-pos *da-ending-position*)))
      (wh-initial-three-edges np edges *da-starting-position* end-pos))))


(define-debris-analysis-rule wh-be-thing
  :pattern (question-marker vg np) ;; "what color is the block"
  :action (:function apply-question-marker first second third))



(define-debris-analysis-rule wh-vp
    :pattern (wh-pronoun vp)
    ;; (p "How does knocking out p53 cause cancer via its effect on miRNAs?")
    :action (:function wh-vp-edge first second))

(defun wh-vp-edge (whpn vp)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    ;; can we tease out the aux at the beginning of the vp?
    (when *debug-questions*
      (push-debug `(,whpn ,vp))
      (break "wh-vp-edge not finished"))))


(define-debris-analysis-rule whpn-vg-transitive-no-object
    :pattern (wh-pronoun vg transitive-clause-without-object)
    ;; "What does stat regulate"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule  whpn-vg-s
    :pattern (wh-pronoun vg s)
    ;; "How does STAT3 affect c-fos"  "What does ERBB regulate?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule wh-modal-s
    :pattern (wh-pronoun modal s)
    ;; "How might a STAT3 mutation affect breast cancer?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule whpn-vp-noun-vg+ed
    :pattern (wh-pronoun vg proper-noun vg+ed)
    ;; "Where is STAT3 expressed?"
    :action (:function wh-four-edges  first second third fourth))

(define-debris-analysis-rule whpn-vp-noun-vp+ed
    :pattern (wh-pronoun vg proper-noun vp+ed)
    ;; "How is stat3 involved in apoptotic regulation?"
    :action (:function wh-four-edges  first second third fourth))

(defun wh-four-edges (wh vg noun adjp)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (wh-initial-four-edges wh (list vg noun adjp) *da-starting-position* end-pos)))

(defun wh-vp (wh vp)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (when *debug-questions*
      (push-debug `(,wh ,vp))
      (break "wh-vp"))))



;;--- prep-stranding questions

;; "What genes is stat3 upstream of?"
(define-debris-analysis-rule s-plus-prep
    :pattern (s preposition)
    :action (:function s+prep first second))

(define-debris-analysis-rule s-plus-prep
    :pattern (transitive-clause-without-object preposition)
    :action (:function s+prep first second))

(defun s+prep (s-edge prep-edge &optional third)
  ;; Want to feed wh-stranded-prep, so we need to identify
  ;; the wh-edge, which is probably the subject of the s and on
  ;; its left side
  (declare (special *da-starting-position* *da-ending-position*))
  (let ((subject (edge-left-daughter s-edge))
        (predicate (edge-right-daughter s-edge))
        (end-pos (fix-da-ending-pos *da-ending-position*)))
    (when (wh-edge? subject)
      (wh-stranded-prep subject ;; wh-edge
                        predicate ;; main-edge
                        prep-edge
                        *da-starting-position* end-pos))))




;;;-------------
;;; stray cases
;;;-------------

;;--- interjections

(define-debris-analysis-rule interjection-s
    :pattern (interjection S)
    :action (:function add-initial-interjection/no-comma first second))

(define-debris-analysis-rule interjection-comma-s
    :pattern (interjection "," S)
    :action (:function add-initial-interjection first second third))

(defun add-initial-interjection/no-comma (interjection-edge s-edge)
  (let* ((interjection (edge-referent interjection-edge))
         (s (edge-referent s-edge)))
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (bind-dli-variable 'modifier interjection s))))

(defun add-initial-interjection (interjection-edge comma s-edge)
  (declare (ignore comma))
  (add-initial-interjection/no-comma interjection-edge s-edge))



;;--- quantifiers

(define-debris-analysis-rule quantifier-to-np
    :pattern (quantifier)
    :action (:function raise-quantifier-to-np first))

(defun raise-quantifier-to-np (quantifier)
  (unless (itypep (edge-referent quantifier) 'either) ;; more often a part of a conjunction or partitive
    (make-edge-spec
     :category (edge-category quantifier)
     :form category::np
     :referent (edge-referent quantifier))))


;;--- other 

(define-debris-analysis-rule its-a-number
  :pattern (number)
  :action (:function its-a-number first))

(defun its-a-number (word-edge)
  (unless (eq 'np (form-cat-name word-edge))
    (let ((word-category (edge-category word-edge))
          (word-form (edge-form word-edge))
          (word-referent (edge-referent word-edge)))
      (let ((edge (make-completed-unary-edge
                   (edge-starts-at word-edge) ;; the edge vector
                   (edge-ends-at word-edge)
                   :its-a-number ;; rule
                   word-edge     ;; daughter
                   word-category 
                   category::np
                   word-referent)))
        (setf (edge-constituents edge) `(,word-edge))
        ;; (push-debug `(,edge)) (break "look at edge")
        edge))))

