;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2013-2017 David D. McDonald -- all rights reserved
;;;
;;;     File:  "binding-centric"
;;;   Module:  "interface;mumble;"
;;;  Version:  October 2017

;; Broken out from interface 4/7/13.
;; Completely rewritten 8/16 by AFP.

(in-package :mumble)

;; (setq m::*trace-archie* t)

;;;------------------
;;;  Realize method
;;;------------------

(defmethod realize ((i sp::individual))
  "Realize a Sparser individual. Special cases are handled here,
   then falls through to realize-via-bindings."
  (when m::*trace-archie*
    (display-current-position))
  (cond ((sp::itypep i 'sp::collection)
         (let ((items (sp::value-of 'sp::items i))
               (type (sp::value-of 'sp::type i)))
           (tr "Realizing collection ~a" i)
           (if (null items)
             (plural (realize-via-category i type))
             (cl:labels ((conjoin (one &optional two &rest more)
                           (let ((conjunction
                                  (make-dtn :referent `(and ,one ,two)
                                            :resource (phrase-named
                                                       'two-item-conjunction))))
                             (make-complement-node 'one one conjunction)
                             (make-complement-node 'two two conjunction)
                             (if more
                               (apply #'conjoin conjunction more)
                               conjunction))))
               (apply #'conjoin items)))))

        ((sp::itypep i 'sp::number)
         (tr "Realizing number ~a" i)
         (realize-number i))

        ((sp::itypep i 'sp::polar-question)
         (tr "Realizing polar-question ~a" i)
         (discourse-unit (question (realize (sp::value-of 'sp::statement i)))))

        ((sp::itypep i 'sp::wh-question/attribute)
         (tr "Realizing wh/attribute question ~a" i)
         (realize-wh-question/attribute i))

        ((sp::itype i 'sp::wh-question)
         (tr "Realizing wh question ~a" i)
         (realize-wh-question i))

        ((sp::itypep i 'sp::copular-predication)
         (tr "Realizing copular-predication ~a" i)
         (realize-copular-predication i))

        ((sp::itypep i 'sp::explicit-suggestion)
         (tr "Realizing explicit-suggestion ~a" i)
         (let ((dtn (realize-via-bindings (sp::value-of 'sp::suggestion i)))
               (m (sp::value-of 'sp::marker i))
               (ap 'initial-adverbial))
           (make-adjunction-node (make-lexicalized-attachment ap m) dtn)
           dtn))

        ((sp::itypep i 'sp::there-exists)
         (tr "Realizing there-exists ~a" i) ;;/// explicit call
         (let ((be (realize-via-bindings (sp::value-of 'sp::predicate i)
                                         :pos 'verb
                                         :resource (phrase-named 's-be-comp))))
           (attach-subject (find-word "there" 'pronoun) be)
           (attach-complement (sp::value-of 'sp::value i) be)
           be))
               
        ((and (null (sp::indiv-binds i)) ;; nothing for realize-via-bindings to chew on
              (sp::rdata-head-word i t))
         ;; But there is a word associated with this individual.
         ;; Use its lexicalized phrase as the resource"
         (tr "Realizing ~a, with no bindings" i)
         (let ((lp (find-lexicalized-phrase i)))
           (tr "Using lexical resource ~a" lp)
           (assert lp (i) "No lexicalized resource on ~a" i)
           (make-dtn :referent i :resource lp)))
        
        (t (realize-via-bindings i))))


;;;----------------------
;;; realize-via-bindings
;;;----------------------

(defgeneric realize-via-bindings (i &key pos resource)
  (:documentation "Splits into two alternatives that then join to
   a common path where they walk over the individual's bindings.
   In the 'old' style the caller has determined the part of speech 
   and resource to use. In the 'new' style we determine the pos
   locally by considering the resources available to realize the
   individual, what it binds, and what the context is. The new
   style also emphasizes the use of predefined mappings for the
   distribution of bindings over open constituent positions in the
   phrase that realizes the individual's head word.")
  (:method ((i sp::individual) &key pos resource)
    "First split on resources 'supplied by caller' vs 'taken off the individual"
    (if (and pos resource)
      (old-style-realize-via-bindings i pos resource)
      (new-style-realize-via-bindings i))))

(defun old-style-realize-via-bindings (i pos resource)
  "Used for there-exists, copular-predication. Goes straight
   to the common path"
  (tr "Old style: ~a ~a ~a" i pos resource) 
  (realize-via-bindings-common-path i pos resource))

(defun new-style-realize-via-bindings (i)
  "First figure out what part of speech the individual has (which
   looks both at the individual and the syntactic context). 
   Look up the lexicalized phrase that's linked to the individual,
   and look up the mapping data on the individual given the part of speech
   (if any). Then go to the common path."
  (let* ((pos (determine-pos i))
         (lp (find-lexicalized-phrase i))
         (rdata (sp::has-mumble-rdata i :pos pos)))
    (assert (or lp rdata) (i) "Couldn't get lexicalized phrase for ~a" i)
    (when rdata ;; its lp can be more specific (e.g. "want")
      (setq lp (linked-phrase rdata)))
    (tr "Realize-via-bindings for ~a~
       ~%  lp = ~a~
       ~%  pos = ~a~
       ~%  rdata = ~a" i lp pos rdata)
    (realize-via-bindings-common-path i pos lp rdata)))

(defun realize-via-bindings-common-path (i pos resource &optional rdata)
  "Make the dtn. Run the appropriate loop over the bindings.
   Call the verb-centric cleanup handler."
  (let ((dtn (make-dtn :referent i :resource resource)))
    (if rdata
      (loop-over-some-bindings i pos dtn rdata)
      (loop-over-bindings i pos dtn))
    (verb-aux-handler dtn i) ;; formerly called 'tense'
    dtn))
 
(defun loop-over-some-bindings (i pos dtn rdata)
  "Use the map on the rdata to handle the core bindings
   then use the normal binding loop dispatch for the rest."
  (let ((map (parameter-variable-map rdata)))
    (let ((handled
           (loop for pvp in map
              as variable = (corresponding-variable pvp)
              as parameter = (corresponding-parameter pvp)
              as value = (wrap-if-abstracted
                          (value-of-map-var variable i))
              do (when value
                   (make-complement-node parameter value dtn))
              collect variable)))
      ;; do all the bindings that weren't in the mapping
      (loop for binding in (reverse (sp::indiv-binds i))
         as variable = (sp::binding-variable binding)
         as var-name = (sp::var-name variable)
         unless (memq variable handled)
         do (attach-via-binding binding var-name dtn pos))
      dtn)))

(defun loop-over-bindings (i pos dtn)
  "Handle every binding on i"
  (loop
     for binding in (reverse (sp::indiv-binds i))
     as variable = (sp::binding-variable binding)
     as var-name = (sp::var-name variable)
     do (attach-via-binding binding var-name dtn pos)
     finally (return dtn)))



;;-------- attach-via-binding

(defgeneric attach-via-binding (binding var-name dtn pos)
  (:documentation "Dispatch off the identity of the variable to
    determine how to add the value of the binding to the dtn
    that was passed in. 
       The part-of-speech argument is the pos of the individual
    these bindings are on.")
 
  (:method (binding var-name dtn pos)
    "Attach a binding as a subject, object, or prepositional phrase."
    (declare (ignore var-name))
    (unless (ignorable-variable? (sp::binding-variable binding))
      (let* ((individual (sp::binding-body binding))
             (variable (sp::binding-variable binding))
             (value (sp::binding-value binding))
             (subcats (stable-sort ; prefer shorter words
                       (typecase value
                         ((or sp::referential-category sp::individual)
                          (sp::find-subcat-labels value variable individual)))
                       #'< :key (lambda (label)
                                  (etypecase label
                                    ((or string symbol)
                                     (length (string label)))
                                    ((or sp::word sp::polyword)
                                     (length (sp::pname label)))))))
             (prep (or (find-if #'sp::word-p subcats) ; prefer single words
                       (find-if #'sp::polyword-p subcats))))
        (tr "unmarked binding: ~a~
         ~%  i = ~a var = ~a pos = ~a" binding individual variable pos)
        (cond ((eql value sp::**lambda-var**)) ;; effectively a trace
              ((or (eql variable (sp::subject-variable individual))
                   (find :subject subcats))
               (if (current-position-p 'complement-of-be)
                 (attach-pp "by" value dtn pos) ; passive subject
                 (attach-subject value dtn)))
              (prep ;; should at least precede object check
               (tr "Preposition: ~a ~a" prep value)
               (attach-pp (word-for prep 'preposition) value dtn pos))
              ((or (eql variable (sp::object-variable individual))
                   (find :object subcats))
               (attach-object value dtn))
              ((sp::itypep value 'sp::attribute-value) ; a modifier like 'red'
               (tr "attribute-value: ~a" value)
               (attach-adjective value dtn pos))
              ((find :thatcomp subcats)
               (tr "thatcomp: ~a" value)
               (make-adjunction-node
                (make-lexicalized-attachment 'restrictive-relative-clause value)
                dtn))
              ((find :m subcats)
               (tr "M subcat label: ~a" value)
               (attach-adjective value dtn pos))
              (t 
               (tr "No handler for unmarked binding ~a" variable))))))
  
  (:method (binding (var-name (eql 'sp::has-determiner)) dtn pos)
    "Attach a determiner."
    (tr "Binding var is has-determiner: ~a" binding)
    (case (sp::cat-name (sp::itype-of (sp::binding-value binding)))
      (sp::a (initially-indefinite dtn))
      (sp::the (always-definite dtn))
      (sp::that (attach-adjective "that" dtn 'noun))))

  (:method (binding (var-name (eql 'sp::is-plural)) dtn variable)
    (plural dtn))
  
  (:method (binding (var-name (eql 'sp::modifier)) dtn pos)
    "Attach a modifier as an adjective."
    (tr "Binding var is modifier: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))
    
  (:method (binding (var-name (eql 'sp::qualifier)) dtn pos)
    "Attach a qualifier, probably to an adjective head"
    ;; Canonical example is "quite certain", where 'quite' is an intensifier
    ;; see interpret-adverb+adjective and k-method is core/adjuncts/others.lisp
    (tr "Binding var is qualifier: ~a" binding)
    (let ((value (sp::binding-value binding)))
      (if (sp::itypep value 'sp::intensifier)
        (add-attachment 'intensifier value dtn)
        (warn "Don't know what to do with qualifier binding ~a" binding))))
  
  (:method (binding (var-name (eql 'cl:number)) dtn pos) ;; "a three step staircase"
    "Attach a numeric quantifier as an adjective so it retains its determiner."
    (tr "Binding var is number: ~a" binding)
    (attach-adjective (realize-number (sp::binding-value binding))
                      dtn pos))
  
  (:method (binding (var-name (eql 'sp::adverb)) dtn pos)
    "Attach an adverb."
    (tr "Binding var is adverb: ~a" binding)
    (attach-adverb (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::modal)) dtn pos)
    "Attach a modal."
    (tr "Binding var is modal: ~a" binding)
    ;;(break "modal")
    (add-accessory dtn ;; at least use add-feature
                   :tense-modal
                   (word-for (sp::binding-value binding) pos)
                   t))

  (:method (binding (var-name (eql 'sp::negation)) dtn pos)
    "Attach a negation."
    (tr "Binding var is negation: ~a" binding)
    (negate dtn))

  
  (:method (binding (var-name (eql 'sp::position)) dtn pos)
    "Attach a position as a premodifier."
    (tr "Binding var is position: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::predicate)) dtn pos)
    "Attach a predicate as a diff from the subject or object description."
    (tr "predicate binding: ~a" binding)
    (loop with value = (sp::binding-value binding)
          with complement = (loop with s/o = (list (parameter-named 's)
                                                   (parameter-named 'o))
                                  for c in (complements dtn)
                                  when (and (find (phrase-parameter c) s/o)
                                            (sp::itypep (referent c)
                                                        (sp::itype-of value)))
                                  return (referent c))
          for binding in (set-difference (and (sp::individual-p value)
                                              (sp::indiv-binds value))
                                         (and (sp::individual-p complement)
                                              (sp::indiv-binds complement))
                                         :key #'sp::binding-variable)
       do (attach-adjective (sp::binding-value binding) dtn pos)))
  
  (:method (binding (var-name (eql 'sp::predication)) dtn pos)
    "Attach a predication as either a premodifier or a relative clause."
    (tr "predication binding: ~a" binding)
    (let* ((individual (sp::binding-body binding))
           (predicate (sp::binding-value binding)))
      (if (heavy-predicate-p predicate)
        (make-adjunction-node
         (make-lexicalized-attachment
          'restrictive-relative-clause
          ;; We don't have to realize it now. We can wait, which
          ;; lets us use more context once we're in a slot. 
          #+ignore(realize-via-bindings predicate :pos 'verb)
          predicate)
         dtn)
        (attach-adjective predicate dtn pos))))
  
  (:method (binding (var-name (eql 'sp::quantifier)) dtn pos)
    "Attach a quantifier as a premodifier."
    (tr "Binding var is quantifier: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))

  (:method (binding (var-name (eql 'sp::parts)) dtn pos)
    (tr "Bindng var is parts (of): ~a" binding)
    "This variable is defined by partonomic and will hold a set -of- parts"
    (attach-pp (find-word "of") (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::time)) dtn pos)
    "Attach a time as an adverbial."
    (declare (ignore pos))
    (tr "Binding var is time: ~a" binding)
    (make-adjunction-node
     (make-lexicalized-attachment 'adverbial-preceding (sp::binding-value binding))
     dtn))
  
  (:method (binding (var-name (eql 'sp::location)) dtn pos)
    "Look at how the location will be realized and selected an attachment
     point that fits."
    (let* ((i (sp::binding-value binding)))
      (tr "location binding: ~a" i)
      (let ((ap (cond
                 ((heavy-predicate-p i) 'np-prep-complement)
                  (t 'nominal-premodifier))))
        (make-adjunction-node
         (make-lexicalized-attachment ap i)
         dtn)))))
    


(defgeneric realize-via-category (i category) ;; "a big red block."
  (:documentation "Use the category as the source of the head, then add
    any other binding on the individual")
  ;; Used for handling the type-case in conjunctions
  (:method ((i sp::individual) (c sp::referential-category))
    (let ((lp (find-category-lp c)))
      (tr "realizing ~a via its category" i)
      (assert lp (c) "No lexicalized resource on ~a" c)
      (let ((pos (lookup-pos lp))
            (dtn (make-dtn :referent i :resource lp)))
        (loop-over-bindings i pos dtn)))))
