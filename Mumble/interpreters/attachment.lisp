;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10 -*-
;;; MUMBLE-86:  interpreters> attachment

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (C) 2017 David D. McDonald. All Rights Reserved

(in-package :mumble)

;############################################################
;  ATTACH is used for attaching further specifications which 
;  are annotated with an attachment function (i.e. an attachment
;   point or an attachment class).
;############################################################

(defun attach (rspec attachment-point)
  "Called by Process-further-specifications. Checks whether the
   context permits this attachment calls the dispatch to have it done.
   Does nothing to the rspec other than pass it along into its attached slot."
  (landmark 'attaching-via-attachment-fn rspec attachment-point)
  (if (available-in-present-context attachment-point)
    (let ((position (position-of-ap-in-present-context attachment-point)))
      (attach-at-attachment-point attachment-point rspec position))
    (let ((root-node (name (node *current-phrasal-root*))))
      (mbug "The ~a attachment point isn't available within a ~a node~%" 
            (name attachment-point) root-node))))

(defun available-in-present-context (at-pt)
  (let ((available-attachment-points (available-aps *current-phrasal-root*)))
    (assoc at-pt available-attachment-points)))

(defun position-of-ap-in-present-context (at-pt)
  (cdr (assoc at-pt (available-aps *current-phrasal-root*))))


(defun attach-at-attachment-point (at-pt rspec position)
  (etypecase at-pt
    (splicing-attachment-point (attach-by-splicing at-pt position rspec))
    (lowering-attachment-point (attach-by-lowering at-pt position rspec)))
  (mapcar #'(lambda (act)
	    (carry-out-action act rspec))
	  (actions at-pt)))






(defun process-accessories-&-further-specifications (root bundle)
  (case (name (bundle-type bundle))
    (general-np (process-np-accessories root bundle))
    (general-clause  (process-clausal-accessories bundle)))
  (process-further-specifications
    (further-specifications bundle)))

(defun carry-out-action (action bundle)
  (dbind (action-type action-value) action
    (ecase action-type
      (:set-state
       (dbind (field value) action-value
	 (update-state-field field value *current-phrasal-root*)))
      (:set-accessory-value
	(change-accessory-value (car action-value)
				(cadr action-value)
				bundle))
      )))

(defun change-accessory-value (accessory-name accessory-value bundle)
  (let* ((AT (accessory-type-named accessory-name))
	 (AV (accessory-value-named accessory-value))
	 (accessory-pair (assoc AT (accessories bundle))))
    (rplacd accessory-pair AV)))



(defun attach-by-splicing  (at-pt position contents)
  (landmark 'attach-by-splicing (link at-pt) position contents)
  (case (link at-pt)
    (previous  (let ((before (previous position))
		     (after position)
		     (slot-name (new-slot at-pt)))
		 (splice-in before after contents slot-name)))
    (next      (let ((before position)
		     (after (update position))
		     (slot-name (new-slot at-pt)))
		 (splice-in before after contents slot-name)))
    (first (if (nodep position)
	       (let ((before position)
		     (after   (first-constituent position))
		     (slot-name (new-slot at-pt)))
		 (splice-in before after contents slot-name))
	       (mbug "unexpected position type")))
    (last (if (nodep position)
	      (let ((before (last-constituent position))
		    (after   position)
		    (slot-name (new-slot at-pt)))
		(splice-in before after contents slot-name))
	      (mbug "unexpected position type--~A" position)))
    (otherwise (mbug "unexpected type of link--~A" (link at-pt)))))


(defun splice-in (before after contents slot-name)
  (let ((slot (make-slot :name (name slot-name)
                         :labels (list slot-name)
                         :visited-status 'new
                         :next after
                         :contents contents)))
    (cond ((and (slotp before) (slotp after))
           (set-links-for-slot before slot)
           (set-links-for-slot  slot after))
          
          ((and (slotp before) (nodep after))
           (set-links-for-slot before slot)
           (set-links-for-last-constituent after slot))
          
          ((and (nodep before) (slotp after))
           (set-links-for-first-constituent before slot)
           (set-links-for-slot  slot after))
          
          ((and (null before) (nodep after))
           (set-links-for-slot  slot after))
          
          ((and (nodep before) (null after))
           (set-links-for-slot before slot)))
    slot))


(defun attach-by-lowering (at-pt position rspec)
  (declare (ignore at-pt))
  (let* ((matrix-rspec  (rspec-relevant-to-check rspec))
	 (rfun (realization-function matrix-rspec))
	 (choices (list-of-choices rfun))
	 (choice (choose-from-filtered-choice-set choices))
	 (embedded-rspec (original-rspec (context-object position))))
    (let-with-dynamic-extent
      ((*tree-fam-parameter-argument-list*
	     (create-tree-fam-parameter-argument-list
	       rfun
	       (parameters rfun)
	       (substitute position
			   embedded-rspec
			   (arguments matrix-rspec)))))
  
	  
      (let ((result (instantiate-phrase (choice choice) (argument-list choice))))
	(when (bundle-specificationp rspec)
	  (entering-new-context result)
          (process-accessories-&-further-specifications result rspec)
          (leaving-previous-context result))))))

