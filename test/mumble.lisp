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
  (let ((conj (make-dtn :referent `(and ,a ,b)
			:resource (phrase-named 'two-item-conjunction))))
    (make-complement-node 'one a conj)
    (make-complement-node 'two b conj)
    conj))

(defgeneric make-simple-dtn (word pos &key)
  (:method ((word word) pos &rest args)
    (apply #'make-simple-dtn (pname word) pos args))
  (:method ((word string) pos &key (referent (intern word :mumble)))
    (make-dtn :referent referent
              :resource (ecase pos
                          (noun (noun word))
			  (prep (prep word))
                          (verb (verb word 'svo))))))

(defun about () (make-simple-dtn "about" 'prep))
(defun active () (predicate "active"))
(defun barber () (singular (masc-&-third-person (make-simple-dtn "barber" 'noun))))
(defun be () (make-simple-dtn "be" 'verb))
(defun big () (adjectivial-modifier "big"))
(defun book (&rest args) (apply #'make-simple-dtn "book" 'noun args))
(defun bone () (make-simple-dtn "bone" 'noun))
(defun buy () (make-simple-dtn "buy" 'verb))
(defun cat () (singular (masc-&-third-person (make-simple-dtn "cat" 'noun))))
(defun drink () (make-simple-dtn "drink" 'verb))
(defun have () (make-simple-dtn "have" 'verb))
(defun house () (make-simple-dtn "house" 'noun))
(defun in () (make-simple-dtn "in" 'prep))
(defun kras () (make-simple-dtn "KRAS" 'noun))
(defun lick () (make-simple-dtn "lick" 'verb))
(defun like () (make-simple-dtn "like" 'verb))
(defun mat () (make-simple-dtn "mat" 'noun))
(defun mouse () (make-simple-dtn "mouse" 'noun))
(defun milk () (make-simple-dtn "milk" 'noun))
(defun mutation () (make-simple-dtn "mutation" 'noun))
(defun on () (make-simple-dtn "on" 'prep))
(defun shave () (make-simple-dtn "shave" 'verb))
(defun simon () (singular (masc-&-third-person (make-simple-dtn "Simon" 'noun))))
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

(deftest (say cat on mat)
  (let ((be (present-tense (be)))
        (on (on))
        (cat (always-definite (cat)))
        (mat (always-definite (mat))))
    (make-complement-node 's cat be)
    (make-complement-node 'o on be)
    (make-complement-node 'prep-object mat on)
    (mumble-says be))
  "the cat is on the mat")

(deftest (say snap bone)
  (let ((me (me))
        (snap (present-tense (snap)))
        (bone (always-definite (bone))))
    (make-complement-node 's me snap)
    (make-complement-node 'o bone snap)
    (mumble-says snap))
  "I snap the bone")

(deftest (say snapped bone)
  (let ((me (me))
        (snap (past-tense (snap)))
        (bone (initially-indefinite (bone))))
    (make-complement-node 's me snap)
    (make-complement-node 'o bone snap)
    (mumble-says snap))
  "I snapped a bone")

(deftest (say snapped big bone)
  (let ((me (me))
	(snap (past-tense (snap)))
	(bone (always-definite (bone)))
	(big (big)))
    (make-complement-node 's me snap)
    (make-complement-node 'o bone snap)
    (make-adjunction-node big bone)
    (mumble-says snap))
  "I snapped the big bone")

(deftest (say bone was snapped)
  (let ((me (me))
        (snap (past-tense (snap)))
        (bone (always-definite (bone))))
    (make-complement-node 's me snap)
    (make-complement-node 'o bone snap)
    (passive snap)
    (mumble-says snap))
  "the bone was snapped")

(deftest (say bone that was snapped)
  (let* ((bone (always-definite (bone)))
         (snap (past-tense (snap)))
         (that (make-lexicalized-attachment 'restrictive-relative-clause snap)))
    (passive snap) ; no subject
    (make-complement-node 'o bone snap)
    (make-adjunction-node that bone)
    (mumble-says bone))
  "the bone that was snapped")

(deftest (say not drink milk)
  (let ((me (me))
        (drink (negate (present-tense (drink))))
        (milk (neuter-&-third-person (milk))))
    (make-complement-node 's me drink)
    (make-complement-node 'o milk drink)
    (mumble-says drink))
  "I don't drink milk")

(deftest (say bought milk)
  (let ((me (me))
        (buy (past-tense (buy)))
        (milk (neuter-&-third-person (milk))))
    (make-complement-node 's me buy)
    (make-complement-node 'o milk buy)
    (mumble-says buy))
  "I bought milk")

(deftest (say not bought milk)
  (let ((me (me))
        (buy (negate (past-tense (buy))))
        (milk (neuter-&-third-person (milk))))
    (make-complement-node 's me buy)
    (make-complement-node 'o milk buy)
    (mumble-says buy))
  "I didn't buy milk")

(deftest (ask bought milk)
  (let ((me (me))
        (buy (question (past-tense (buy))))
	(milk (neuter-&-third-person (milk))))
    (make-complement-node 's me buy)
    (make-complement-node 'o milk buy)
    (mumble-says (discourse-unit buy)))
  "Did I buy milk?")

(deftest (say drink and like)
  (let* ((me (me))
         (drink (negate (present-tense (drink))))
         (milk (neuter-&-third-person (milk)))
         (like (present-tense (like)))
         (cat (neuter-&-third-person (plural (cat))))
         (conj (conjoin drink like)))
    (make-complement-node 's me drink)
    (make-complement-node 'o milk drink)
    (make-complement-node 's me like)
    (make-complement-node 'o cat like)
    (mumble-says conj))
  "I don't drink milk and I like cats")

(deftest (say bought book and read it)
  (let* ((me (me))
         (buy (past-tense (buy)))
         (read (past-tense (make-simple-dtn "read" 'verb))) ; cf. CL:READ
         (book (initially-indefinite (neuter-&-third-person (book))))
         (conj (conjoin buy read)))
    (make-complement-node 's me buy)
    (make-complement-node 'o book buy)
    (make-complement-node 's me read)
    (make-complement-node 'o book read)
    (mumble-says conj))
  "I bought a book and I read it")

(defstruct test-book)
(defstruct (special-book (:include test-book)))

#+(or) ; one-anaphora not yet ready for prime-time
(deftest (say bought book and read one)
  (let* ((me (me))
         (buy (past-tense (buy)))
         (read (past-tense (make-simple-dtn "read" 'verb)))
         (book1 (initially-indefinite (book :referent (make-test-book))))
         (book2 (initially-indefinite (book :referent (make-special-book))))
         (conj (conjoin buy read)))
    (make-complement-node 's me buy)
    (make-complement-node 's me read)
    (make-complement-node 'o book1 buy)
    (make-complement-node 'o book2 read)
    (mumble-says conj))
  "I bought a book and I read one")

(deftest (say cat licks itself)
  (let ((cat (always-definite (neuter-&-third-person (cat))))
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

(deftest (say simon bought book about self)
  (let* ((buy (past-tense (buy)))
	 (simon (simon))
	 (about (about))
	 (about-simon (make-lexicalized-attachment 'np-prep-complement about))
	 (book (initially-indefinite (neuter-&-third-person (book)))))
    (make-complement-node 'prep-object simon about)
    (make-adjunction-node about-simon book)
    (make-complement-node 's simon buy)
    (make-complement-node 'o book buy)
    (mumble-says buy))
  "Simon bought a book about himself")

(deftest (say simon wants barber to shave self)
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

(deftest (say simon wants barber to shave him)
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
  (let ((cat (neuter-&-third-person (cat)))
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

(deftest (say simon likes barber\'s cat)
  (let ((barber (always-definite (barber)))
        (cat (neuter-&-third-person (cat)))
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

(deftest (say like cats that drink milk)
  (let* ((cats (neuter-&-third-person (plural (cat))))
	 (like (present-tense (like)))
	 (drink (present-tense (drink)))
	 (that-drink (make-lexicalized-attachment 'restrictive-relative-clause drink))
	 (milk (milk))
	 (me (me)))
    (make-complement-node 'o cats like)
    (make-complement-node 's me like)
    (make-adjunction-node that-drink cats)
    (make-complement-node 'o milk drink)
    (make-complement-node 's cats drink)
    (mumble-says like))
  "I like cats that drink milk")

(deftest (say drink milk in house)
  (let* ((drink (present-tense (drink)))
         (house (always-definite (house)))
         (in (in))
         (in-house (make-lexicalized-attachment 'vp-prep-complement in))
         (milk (milk))
         (me (me)))
    (make-complement-node 'prep-object house in)
    (make-adjunction-node in-house drink)
    (make-complement-node 'o milk drink)
    (make-complement-node 's me drink)
    (mumble-says drink))
  "I drink milk in the house")

#+ignore  ;; what's with passing nil to noun? 'nil' isn't the basis of a word
(deftest (say mutation that makes kras active)
  (let* ((percent (make-dtn :resource (noun nil 'percent)))
	 (patients (plural (make-dtn :resource (noun "patient" 'partitive))))
	 (have (present-tense (have)))
	 (mutation (initially-indefinite (mutation)))
	 (in (in))
	 (kras (kras))
	 (in-kras (make-lexicalized-attachment 'np-prep-adjunct in))
	 (make (present-tense (make-dtn :referent :make
					:resource (verb "make" 'svo-adj))))
	 (that-make (make-lexicalized-attachment 'restrictive-relative-clause make))
	 (active (active)))
    (make-complement-node 'amount "88" percent)
    (make-complement-node 's patients have)
    (make-complement-node 'quant percent patients)
    (make-complement-node 'o mutation have)
    (make-adjunction-node in-kras mutation)
    (make-complement-node 'prep-object kras in)
    (make-adjunction-node that-make mutation)
    (make-complement-node 's mutation make)
    (make-complement-node 'o kras make)
    (make-complement-node 'adj active make)
    (mumble-says have))
  "88% of patients have a mutation in KRAS that makes it active")
