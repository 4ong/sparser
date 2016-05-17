;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Package: MUMBLE -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :mumble)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (use-package :rt))

(defun mumble-says (content)
  (with-output-to-string (*mumble-text-output*)
    (say content)))

(defun me ()
  (make-dtn :referent :me
            :resource (mumble-value 'first-person-singular 'pronoun)))

(defun conjoin (a b)
  (make-dtn :referent `(and ,a ,b)
            :resource (phrase-named 'two-item-conjunction)))

(defgeneric make-simple-dtn (word pos &key)
  (:method ((word word) pos &rest args)
    (apply #'make-simple-dtn (pname word) pos args))
  (:method ((word string) pos &key (referent (intern word :mumble)))
    (make-dtn :referent referent
              :resource (ecase pos
                          (adj (adjective word))
                          (noun (noun word))
			  (prep (prep word))
                          (verb (verb word))))))

(defun about () (make-simple-dtn "about" 'prep))
(defun barber () (masc-&-third-person (singular (make-simple-dtn "barber" 'noun))))
(defun book () (make-simple-dtn "book" 'noun))
(defun bone () (make-simple-dtn "bone" 'noun))
(defun buy () (make-simple-dtn "buy" 'verb))
(defun cat () (make-simple-dtn "cat" 'noun))
(defun drink () (make-simple-dtn "drink" 'verb))
(defun lick () (make-simple-dtn "lick" 'verb))
(defun like () (make-simple-dtn "like" 'verb))
(defun mouse () (make-simple-dtn "mouse" 'noun))
(defun milk () (make-simple-dtn "milk" 'noun))
(defun shave () (make-simple-dtn "shave" 'verb))
(defun simon () (masc-&-third-person (singular (make-simple-dtn "Simon" 'noun))))
(defun snap () (make-simple-dtn "snap" 'verb))
(defun want () (make-simple-dtn "want" 'verb))

(deftest (say nil)
  (mumble-says nil)
  "")

(deftest (say cat)
  (mumble-says (find-word "cat"))
  "cat")

(deftest (say cats)
  (mumble-says (plural (cat)))
  "cats")

(deftest (say mice)
  (mumble-says (plural (mouse)))
  "mice")

(deftest (say snap bone)
  (let ((me (me))
        (snap (present-tense (snap)))
        (bone (always-definite (singular (bone)))))
    (make-complement-node 's me snap)
    (make-complement-node 'o bone snap)
    (mumble-says snap))
  "I snap the bone")

(deftest (say snapped bone)
  (let ((me (me))
        (snap (past-tense (snap)))
        (bone (initially-indefinite (singular (bone)))))
    (make-complement-node 's me snap)
    (make-complement-node 'o bone snap)
    (mumble-says snap))
  "I snapped a bone")

(deftest (say not drink milk)
  (let ((me (me))
        (drink (negate (present-tense (drink))))
        (milk (neuter-&-third-person (singular (milk)))))
    (make-complement-node 's me drink)
    (make-complement-node 'o milk drink)
    (mumble-says drink))
  "I don't drink milk")

(deftest (say bought milk)
  (let ((me (me))
        (buy (past-tense (buy)))
        (milk (neuter-&-third-person (singular (milk)))))
    (make-complement-node 's me buy)
    (make-complement-node 'o milk buy)
    (mumble-says buy))
  "I bought milk")

(deftest (say not bought milk)
  (let ((me (me))
        (buy (negate (past-tense (buy))))
        (milk (neuter-&-third-person (singular (milk)))))
    (make-complement-node 's me buy)
    (make-complement-node 'o milk buy)
    (mumble-says buy))
  "I didn't buy milk")

(deftest (ask bought milk)
  (let ((me (me))
        (buy (question (past-tense (buy))))
	(milk (neuter-&-third-person (singular (milk)))))
    (make-complement-node 's me buy)
    (make-complement-node 'o milk buy)
    (mumble-says (discourse-unit buy)))
  "Did I buy milk?")

(deftest (say drink and like)
  (let* ((me (me))
         (drink (negate (present-tense (drink))))
         (milk (neuter-&-third-person (singular (milk))))
         (like (present-tense (like)))
         (cat (neuter-&-third-person (plural (cat))))
         (conj (conjoin drink like)))
    (make-complement-node 's me drink)
    (make-complement-node 'o milk drink)
    (make-complement-node 's me like)
    (make-complement-node 'o cat like)
    (make-complement-node 'one drink conj)
    (make-complement-node 'two like conj)
    (mumble-says conj))
  "I don't drink milk and I like cats")

(deftest (say bought and read book)
  (let* ((me (me))
         (buy (past-tense (buy)))
         (read (past-tense (make-simple-dtn "read" 'verb))) ; cf. CL:READ
         (book (initially-indefinite (neuter-&-third-person (singular (book)))))
         (conj (conjoin buy read)))
    (make-complement-node 's me buy)
    (make-complement-node 'o book buy)
    (make-complement-node 's me read)
    (make-complement-node 'o book read)
    (make-complement-node 'one buy conj)
    (make-complement-node 'two read conj)
    (mumble-says conj))
  "I bought a book and I read it")

(deftest (say cat licks itself)
  (let ((cat (always-definite (neuter-&-third-person (singular (cat)))))
        (lick (present-tense (lick))))
    (make-complement-node 's cat lick)
    (make-complement-node 'o cat lick)
    (mumble-says lick))
  "the cat licks itself")

(deftest (say cats lick themselves)
  (let ((cats (neuter-&-third-person (plural (cat))))
        (lick (present-tense (lick))))
    (make-complement-node 's cats lick)
    (make-complement-node 'o cats lick)
    (mumble-says lick))
  "cats lick themselves")

(deftest (say simon bought book self)
  (let* ((buy (past-tense (buy)))
	 (simon (simon))
	 (about (about))
	 (about-simon (make-lexicalized-attachment 'np-prep-complement about))
	 (book (initially-indefinite (neuter-&-third-person (singular (book))))))
    (make-complement-node 'prep-object simon about)
    (make-adjunction-node about-simon book)
    (make-complement-node 's simon buy)
    (make-complement-node 'o book buy)
    (mumble-says buy))
  "Simon bought a book about himself")

(deftest (say simon want barber shave self)
  (let ((barber (always-definite (barber)))
	(simon (simon))
	(want (present-tense (want)))
	(shave (shave)))
    (make-complement-node 's simon want)
    (make-complement-node 'o shave want)
    (make-complement-node 's barber shave)
    (make-complement-node 'o barber shave) 
    (mumble-says want))
   "Simon wants the barber to shave himself")

(deftest (say simon want barber shave)
  (let ((barber (always-definite (barber)))
	(simon (simon))
	(want (present-tense (want)))
	(shave (shave)))
    (make-complement-node 's simon want)
    (make-complement-node 'o shave  want)
    (make-complement-node 's barber shave)
    (make-complement-node 'o simon shave)
    (mumble-says want))
  "Simon wants the barber to shave him")

(deftest (say simon likes his cat)
  (let ((cat (neuter-&-third-person (singular (cat))))
        (simons-cat (make-dtn :referent :cat
                              :resource (phrase-named 'possessive-np)))
        (simon (simon))
        (like (present-tense (like))))
    (make-complement-node 'p simon simons-cat)
    (make-complement-node 'n cat simons-cat)
    (make-complement-node 's simon like)
    (make-complement-node 'o simons-cat like)
    (mumble-says like))
  "Simon likes his cat")

(deftest (say simon likes the barbers cat)
  (let ((barber (always-definite (barber)))
        (cat (neuter-&-third-person (singular (cat))))
        (barbers-cat (make-dtn :referent :cat
                               :resource (phrase-named 'possessive-np)))
        (simon (simon))
        (like (present-tense (like))))
    (make-complement-node 'p barber barbers-cat)
    (make-complement-node 'n cat barbers-cat)
    (make-complement-node 's simon like)
    (make-complement-node 'o barbers-cat like)
    (mumble-says like))
  "Simon likes the barber's cat")
