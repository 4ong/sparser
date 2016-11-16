;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 Rusty Bobrow  -- all rights reserved
;;;
;;;      File:   "test-functions"
;;;    Module:   "tools:basics"
;;;   Version:   September 2015

;; utilities for testing in R3. Made format-item prettier 1/10/15.
;; 2/8/15 Turning off anaphora on sentence calls. 
;; 3/21/2015 new functions for saving information about actually 
;;   occurring sub-categorization cases

(in-package :sparser)


(defvar *save-chunk-edges*)
(defvar *all-chunk-edges*)
(defvar *relations*)
(defvar *DEC-TESTS*)
(defvar *JAN-DRY-RUN*)
(defvar *aspp2-whole*) ;; one of the local declares does not seem to work
(defparameter *show-semantics* t
  "Parameter default to run-test. If non-nil the semantic interpretation
  of the text is shown after it is parsed.")

(defparameter *sentences* nil
  "The set of sentences a general iterator
   runs over. Set by one of the corpus specifiers")

(defparameter *no-anaphora* t
  "Parameter default to run-test. If non-nil, the *do-anaphor* flag
  will be dynamically bound to nil so all discourse history
  and anaphora processing will be turned off. ")

;;;----------------------------
;;; Sentence corpus specifiers
;;;----------------------------
; These specify which corpus a general iterator
					; should run on.

(defun test-corpus (sentences &optional numbers)
  (setq *sentences* sentences)
  (reset-test)
  (if (null numbers)
      (setq numbers (loop for i from 1 to (length sentences) collect i)))
  (loop for i in numbers
     do
       (run-test i nil)))

(defun sem-test-corpus (sentences &optional numbers (suppress-indiv-uid nil))
  (let ((*suppress-indiv-uids* suppress-indiv-uid))
    (declare (special *suppress-indiv-uids*))
    (setq *sentences* sentences)
    (reset-test)
    (if (null numbers)
	(setq numbers (loop for i from 1 to (length sentences) collect i)))
    (loop for i in numbers
       do
	 (sem-test i))))
  

(defun test-overnight (&rest numbers)
  (declare (special *overnight-sentences*))
  (test-corpus *overnight-sentences* numbers))

(defun test-jan (&rest numbers)
  (declare (special *jan-dry-run*))
  (test-corpus  *jan-dry-run* numbers))

(defun test-dry-run (&rest numbers)
  (declare (special *jan-dry-run*))
  (test-corpus  *jan-dry-run* numbers))

(defun test-dec (&rest numbers)
  (declare (special *dec-tests*))
  (test-corpus   *dec-tests* numbers))

(defun test-erk (&rest numbers)
  (declare (special *erk-abstract*))
  (test-corpus *erk-abstract* numbers))


(defun test-aspp2 (&rest numbers)
  (declare (special *aspp2-whole*))
  (test-corpus *aspp2-whole* numbers))

(defun test-dynamic-model (&rest numbers)
  (declare (special *dynamic-model-sents*))
  (test-corpus *dynamic-model-sents* numbers))

(defun test-load-test (&rest numbers)
  (declare (special *load-test-sents*))
  (test-corpus *load-test-sents* numbers))

(defun test-sent (corpus n &key (multi-sent t) (no-syn-tree nil) (no-edges t) (quiet t) (stream *standard-output*))
  (declare (special *chunks* *overnight-sentences* *jan-dry-run*
                    *dec-tests* *erk-abstract* *aspp2-whole*
                    *load-test-sents*))
  (psem (clean-some-xml-from-string (get-sentence corpus n))
        :corpus corpus :n n
        :multi-sent multi-sent
        :no-syn-tree no-syn-tree
        :no-edges no-edges
        :quiet quiet
        :stream stream))

(defun psem (sent &key (corpus nil)(n 0)(multi-sent t) (no-syn-tree nil) (no-edges t) (quiet t) (stream *standard-output*))
  (let*
      ((*readout-segments-inline-with-text* nil) ;; quiet
       (*show-syn-tree* (not no-syn-tree))
       (*end-of-sentence-display-operation*
        (when multi-sent
          #'(lambda (sent)
              (display-sent-results sent corpus n :stream stream)))))
    (declare (special *show-syn-tree* *readout-segments-inline-with-text*
                      *end-of-sentence-display-operation*))
    (cond
      (quiet
       (if no-syn-tree (format stream "~%~%____________________________~%~s~%~%" sent))
       (pp sent)
       (unless multi-sent
         (display-sent-results sent corpus n :stream stream)))
      (t
       (eval `(p ,sent))))))
  

(defun clean-some-xml-from-string (str)
  (replace-all (replace-all str "<br>" " ") "'" ""))

(defun display-sent-parse (sent corpus n &key (stream *standard-output*))
  (let ((*readout-segments-inline-with-text* nil)) ;; quiet
    (pp sent)
    (display-sent-results sent corpus n :stream stream)))

(defun display-sent-results (sent corpus n &key (no-edges t) (quiet t) (stream *standard-output*))
  (show-sent-heading sent corpus n stream)
  (display-chunks stream)
  (show-sem-syn-forest stream)
  )

(defparameter *show-syn-tree* t)
(defun show-sem-syn-forest (&optional  (stream *standard-output*) (no-edges t))
  (declare (special *show-syn-tree*))
  (loop for edge in (all-tts)
     do
       (let
	   ((*no-edge-info* no-edges)
	    (*suppress-indiv-uids* t)
	    (ref (if (edge-p edge)
                     (edge-referent edge)
                     edge)))
	 (declare (special *no-edge-info* *suppress-indiv-uids*))
	 (format stream "~% --- ~s~%"
                 (if (edge-p edge)
                     (extract-string-spanned-by-edge edge)
                     edge))
	 (if (word-p ref)
	     (format stream "  ~s" ref)
	     (print-sem-tree (semtree ref) stream))
	 
	 (when *show-syn-tree*
           (format stream "~%~%------ Edge syntactic tree:~%")
           (ctree edge stream))
	 (format stream "~%~%"))))



(defun old-display-sent (sent corpus n &key (no-edges t) (quiet t) (stream *standard-output*))
  (show-sent-heading sent corpus n stream)
  (format stream "~%~%;;; ---------- Results of chunking:~%")
  (display-chunks stream)
  (format stream "~%~%;;; ------------ Semantics of treetops~%")
  (show-sem-forest stream no-edges)
  (format stream "~%~%;;; ----------- Syntactic structure of parse~%~%")
  (show-canonical-syntax-tree stream no-edges))

(defun get-sentence (corpus n)
  (declare (special *pathway-comments* *erk-abstract* *gyori* *load-test-sents*
                       *overnight-sentences* *comments*))
  (let ((sentences
	 (ecase corpus
	   ((:overnight overnight) *overnight-sentences*)
	   ((:dry-run :jan dry-run jan) *jan-dry-run*)
	   ((:dec-test dec-test) *dec-tests*)
	   ((:erk erk) *erk-abstract*)
	   ((:aspp2 aspp2) *aspp2-whole*)
	   ((:load load-test) *load-test-sents*)
           ((:comments comments) *comments*)
           ((:gyori gyori) *gyori*)
           ((:pathways :pathway-comments pathways) *pathway-comments*))))
    (second (nth (- n 1) sentences))))

(defun show-sent-heading (sent corpus n stream)
  (format stream "~a~%~%~s~&"
	  (if (null corpus) ""
	      (format nil "Corpus: ~s Sentence#: ~s" corpus n))
          (if (stringp sent)
              sent
              (sentence-string  sent))))

(defun display-chunks (stream)
  (declare (special *chunks*))
  (format stream ";;; ---------- Results of chunking:~%")
  (loop for chunk in (reverse *chunks*)
     do (print-segment-and-pending-out-of-segment-words
	 (chunk-start-pos chunk)
	 (chunk-end-pos chunk)
	 stream))
  (format stream "~%"))

(defun show-canonical-syntax-tree (stream &optional (no-edges t))
  (let
      ((*no-edge-info* no-edges))
    (declare (special *no-edge-info*))
    (ptree stream)))

(defun save-sent-parse (corpus n)
  (with-open-file (stream (sent-save-file corpus n)
                     :direction :output
                     :if-exists :overwrite
                     :if-does-not-exist :create)
    (test-sent corpus n :stream stream :multi-sent nil)))


(defparameter *p-sent* nil)
(defparameter *sent-snapshots-directory* nil)

(defun save-sent-snapshots (&optional
                            (corpora '(overnight dec-test dry-run aspp2 erk)))
  "Top-level sentence syntax/semantics snapshot creation routine."
  (let ((*sent-snapshots-directory* (create-snapshot-directory)))
    (loop for c in corpora
      do (terpri)
         (print c)
         (print (save-corpus-sents c))
      finally (return *sent-snapshots-directory*))))

(defun save-corpus-sents (name)
  (let ((corpus (get-sentence-corpus name))
        (*sent-snapshots-directory*
         (or *sent-snapshots-directory*
             (create-snapshot-directory))))         
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (let* ((variable (corpus-bound-variable corpus))
           (sentences (eval variable)))
      (loop for i from 1 to (length sentences)
            do (save-sent-parse name i)
            finally (return *sent-snapshots-directory*)))))

(defun create-snapshot-directory ()
  (declare (special *directory-for-tree-snapshots*))
  (ensure-directories-exist
   (make-pathname :directory (append (pathname-directory *directory-for-tree-snapshots*)
                                     (list (dtg-dir))))
   :verbose t))

(defun create-corpus-directory (corpus)
  (ensure-directories-exist
   (make-pathname :directory (append (pathname-directory *sent-snapshots-directory*)
                                     (list (format nil "~a"  corpus))))
   :verbose t))

(defun dtg-dir ()
  (multiple-value-bind (second minute hour date month year day)
      (decode-universal-time (get-universal-time))
    (declare (ignore day))
    (format nil "~4D~2,'0D~2,'0DT~2,'0D~2,'0D~2,'0D"
            year month date hour minute second)))
    
(defun sent-save-file (corpus n)
  (merge-pathnames
   (format nil "~a-~a.sparse" corpus n)
   (create-corpus-directory corpus)))

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (require :sb-posix))

(defun bless-sent-snapshots (&optional (directory (save-sent-snapshots))
                             (link-name "gold") &aux
                             (link (merge-pathnames
                                    (make-pathname :name link-name
                                                   :directory '(:relative :up))
                                    directory)))
  (declare (special *directory-for-tree-snapshots*))
  "Make a symbolic link to a blessed snapshot directory."
  (assert (directory-p directory) (directory) "Not a directory.")
  (ignore-errors (delete-file link))
  #+(and sbcl unix)
  (sb-posix:symlink
   (enough-namestring directory *directory-for-tree-snapshots*)
   (namestring link))
  #-(and sbcl unix)
  (error "Don't know how to make a symbolic link.")
  (truename link))

(defun compare-sent-snapshots (directory &optional (gold "gold/"))
  (declare (special *directory-for-tree-snapshots*))
  (let* ((*default-pathname-defaults* *directory-for-tree-snapshots*)
         (gold (merge-pathnames gold))
         (cwd (uiop:getcwd)))
    (unwind-protect
         (progn
           (uiop:chdir *directory-for-tree-snapshots*)
           (uiop:run-program (format nil "diff -qrw '~a' '~a'"
                                     (enough-namestring gold)
                                     (enough-namestring directory))
                             :ignore-error-status t
                             :output *standard-output*))
      (uiop:chdir cwd))))

;;;-------------------------------
;;; general iterators and friends
;;;-------------------------------

(defvar *known-breaks* nil
  "Bad pushes sentence number onto this list when you
   call it. Useful for marking sentences that get
   Lisp errors.")
 
(defvar *tested* '(0)
 "Retest pushes sentence numbers onto this list 
   as they are executed")


(defun reset-test ()
  "Set the two accumulators back to their initial values"
  (setq *tested* '(0))
  (setq *known-breaks* nil))

(defun reset-dectest ()
  (reset-test))

(defun retest (&optional (semantics *show-semantics*))
  "Loop over all the designated sentences calling
   run-test on each one"
  ;;(reset-test)
  (loop for i from (+ 1 (car *tested*)) to (length *sentences*) 
    unless (memq i *known-breaks*)
    do 
    (push i *tested*) 
    (run-test i semantics)))

(defun bad (&optional (semantics *show-semantics*))
  (push (car *tested*) *known-breaks*) 
  (retest semantics))

;;--- tailored iterators

(defun dectests (&optional (start 1))
  (declare (special *dec-tests*))
  (loop for i from start to (length *dec-tests*) do (dectest i)))

(defun jantests (&optional (start 1))
  (declare (special *jan-dry-run*))
  (loop for i from start to (length *jan-dry-run*) do (jantest i)))

(defun aspp2tests (&optional (start 1))
  (declare (special *aspp2-whole*))
  (loop for i from start to (length *aspp2-whole*) do (aspp2test i)))

;;;-------------------------
;;; Single sentence testers
;;;-------------------------

(defun dectest (n &optional (sentences *dec-tests*))
  (declare (special *dec-tests*))
  (run-test n nil t :sentences sentences))

(defun jantest (n &optional (sentences *jan-dry-run*))
  (declare (special *jan-dry-run*))
  (run-test n nil t :sentences sentences))

(defun aspp2test (n &optional (sentences *aspp2-whole*))
  (declare (special *aspp2-whole*))
  (run-test n nil nil :sentences sentences))


(defmacro test (n)
  `(run-test ,n))


(defun quiet-semantics (&optional (flag t))
  (setq *show-semantics* (not flag)))


(defun run-test (n &optional (semantics *show-semantics*) (no-anaphora *no-anaphora*)
                   &key (sentences *sentences*))
 
  (let ((*do-anaphora* (not no-anaphora))
        (test (nth (- n 1) sentences)))
    (declare (special *do-anaphora* *save-chunk-edges*))

    (format t "~&___________________________________________~%~%")
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (when *save-chunk-edges*
            ;;make the list of chunk edges show their sentence origin
            (push (cons n (cdr test)) *all-chunk-edges*))
          (when semantics ;;*show-semantics*
            (format t "~%---SEMANTIC FOREST---")
            (show-sem-forest)
            )))))

(defun show-sem-forest (&optional (stream *standard-output*) (no-edges nil))
  (let ((*no-edge-numbers* no-edges)
	(*suppress-indiv-uids* t))
    (declare (special *no-edge-numbers* *suppress-indiv-uids*))
    (loop for edge-tree in
	 (tts-edge-semantics)
       do
	 (format stream "~%")
	 (if (small? (second edge-tree))
	     (then
	       (format stream "~&~s" (car edge-tree))
	       (print-tree (second edge-tree) t 0 stream t))
	     (else
	       (format stream "-----  ~s" (car edge-tree))
	       (print-tree (second edge-tree) nil 0 stream))))))


(defun sem-test (n &optional (sentences *sentences*))
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    (declare (special *do-anaphora*))
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
      (print "skipping because of known problems")
      (else
        (pp (second test))
        ;; below is the code of what was formerly 'show-semantics'
        ;; before I took over the function to make it a sentence
        ;; based method
        (loop for tt in (all-tts)
          do (when (and (edge-p tt) (not (word-p (edge-category tt))))
               (format t "~&_____________________________~&")
               (print-treetop-tight tt (pos-edge-starts-at tt))
               (psemtree tt)))))))
          
                
(defun stest (n &optional (sentences *sentences*))
  "Variant on run-test using a different semantics extractor"
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    (declare (special *do-anaphora*))
    (format t "~&~%___________________________________________~%")
    (print (list n test))
    (terpri)
    (let ((*readout-relations* t)
          s-expressions )
      (declare (special *readout-relations*))
      (eval test)
      (initalize-model-collection)
      (format t "~&~%Relations:")
      (loop for r in *relations*
        do (let ((sexp (collect-model r)))
             (push sexp s-expressions)
             (pprint sexp)))
      (terpri)
      (reverse s-expressions))))

(defparameter *current-sentences* nil)
(defun p-nth-2sem (n &optional (sentences *current-sentences*))
  (when sentences (p2sem (nth n sentences))))
    
;; sentence a string.
(defun p2sem (sentence) 
  (format t "~2%----------------------------------------------~%Processing '~a'~%" sentence)
  (p sentence)
  (show-sem-forest))


;;;-------------------------------
;;; helper functions for sem tree
;;;-------------------------------

(defun tree-size (tree)
  (cond
   ((not (consp tree)) 1)
   (t
    (loop for elt in tree sum (tree-size elt)))))

(defparameter *no-small-trees* nil)

(defun small? (tree)
  (declare (special *no-small-trees*))
  (and (not *no-small-trees*)
       (< (tree-size tree) 5)))

(defun print-tree (tree &optional (last nil) (indent 0) (stream t)(tight nil))
  (if
   tight
   (nspaces 1 stream)
   (else
     (terpri stream)
     (nspaces indent stream)))
  (cond
   ((consp tree)
    (format stream "(")
    (format-item (car tree) stream)
    (when (cdr tree)
      (setq tight  (small? tree))
      (loop for items on (cdr tree) do 
        (print-tree (car items) 
                    (null (cdr items))
                    (+ indent 3) 
                    stream
                    tight)))
    (format stream ")"))
   (t
    (format-item tree stream)))
  (when (and (not last) (not tight))
   (terpri stream))
  tree)

(defun psemtree (x)
  (print-tree (semtree x)))

    
(defun format-item (item stream)
  (declare (special *suppress-indiv-uids*))
  (typecase item
    (psi (push-debug `(,item))
         (error "Something gerated a PSI and it shouldn't have: ~a" item))
    (individual
     (let* ((name (name-of-individual item))
            (pname (when name (typecase name
                                (word (word-pname name))
                                (polyword (pw-pname name))
                                (otherwise "")))))
       (if name
	   (format stream "~(~a~a~a ~s~)"
		   (cat-symbol (car (indiv-type item)))
		   (if *suppress-indiv-uids* "" "-")
		   (maybe-indiv-uid item)
		   pname)
	   (format stream "~(~a~a~a~)"
		   (cat-symbol (car (indiv-type item)))
		   (if *suppress-indiv-uids* "" "-")
		   (maybe-indiv-uid item)))))

    (otherwise
     (format stream "~(~S~)" item))))
   

(defun nspaces (n stream)
  (when (> n 0)
      (princ " " stream)
      (nspaces (- n 1) stream)))

(defun np (l &optional (stream t))
  (loop for ll in l do (print ll stream)))

(defun is-pp? (edge)
  (and
   (edge-p edge)
   (eq 'pp (simple-label (edge-form edge)))))

(defun case-pp-search ()
  (let
      ((res nil))
    (loop for res in
      (loop for i from 1 to (length *sentences* )
      when (setq res (case-pps i))
      collect res)
      do        
      (print "___________MISSING SUBCATS?_____________________________________________") 
      (np res))))

(defun case-pps (i)
  (progn 
    (format t "~&~&~&**************************************************************~&")
    (sem-test i)
    (let
        ((res (loop for pair in (adjacent-tts) 
                when (eq 'pp (car (edge-rep (second pair))))
                collect (loop for edge in pair collect (edge-rep edge)))))
      (np res)
      (and 
       res
       (cons
        (list i (nth (- i 1) *sentences*))
        res)))))

;; This function is used to produce a short-form symbol to represent
;;  any of various items (categories, polywords, words) for printout
;; It produces a symbol in the :sparser package
(defun simple-label (cat)
  (etypecase cat
    (null nil)
    (symbol cat)
    (category (intern (symbol-name (cat-symbol cat)) :sparser))
    (polyword (intern (pw-pname cat) :sparser))
    (word (intern (symbol-name (word-symbol cat)) :sparser))))

(defun edge-rep (edge)
  (cons (simple-label (edge-form edge))
        (cons
         (simple-label (edge-category edge))
         (and (is-pp? edge)
              (list
               (simple-label 
                (edge-category 
                 (edge-right-daughter edge))))))))
 
(defun init-reach-directory ()
  (when (find-package :r3)
    (save-article-semantics
     *use-xml*
     (pathname
      (ensure-directories-exist
       (concatenate 'string
                    (eval (intern "*R3-TRUNK*" (find-package :r3)))
                    "corpus/Reach-sentences/results/"))))))

(defun load-reach-sentences-if-needed ()
  (unless (boundp '*reach-article-sents*)
    (load (asdf:system-relative-pathname :r3 
                        "../corpus/Reach-sentences/rasmachine_sentences.lisp"))))

(defun test-reach-article-sents (sl-list &key (n 1000) (start 0) (save-output t)
                                           (break nil))
  (let ((*break-on-reach-errors* break))
    (declare (special *break-on-reach-errors*))
    (loop for sl in sl-list
       as i from (+ 1 start) to (+ start n)
       do
       ;; this may cause problems, but it should cause the sentences to be collected as part of the article
         (when save-output
           (let ((sls (pname sl)))
             (initialize-article-semantic-file-if-needed
              (subseq sls 1 (- (length sls) 1)))))
         (process-reach-article-sents sl)
         (close-article-semantic-file-if-needed))))

(defun test-reach-sentences (&key (n 1000)(start 0) (save-output t))
  (when save-output
    (init-reach-directory))
  (load-reach-sentences-if-needed)
  (test-reach-article-sents
   (eval '*reach-article-sents*) :start start :n n :save-output save-output))

(defparameter *break-on-reach-errors* nil)
(defparameter *article-name* nil
  "Used to carry the name of an article from process-reach-article-sents to save-article-sentence.")
(defparameter *compare-to-reach-results* nil)

(defun compare-test-reach (&key (n 1000)(start 0) (save-output t))
  (setq *compare-to-reach-results* t)
  (test-reach-sentences :n n :start start :save-output save-output))

(defun process-reach-article-sents (sl)
  (format t "Processing reach article sentences: ~s~%" sl)
  (let ((sents (symbol-value sl)))
    (if (or *break-on-reach-errors*
            (and (find-package :r3)
                 (eval (intern "*BREAK-DURING-READ*" (find-package :r3)))))
        (loop for s in sents do (qpp s))   
        (loop for s in sents
           as i from 0
           do (qepp s)
             (if *compare-to-reach-results*
                 (compare-to-reach (get-PMC-ID (string sl)) 
                                   i 
                                   (previous (sentence))))))))

(defun get-PMC-ID (sl)
    (remove-if-not #'digit-char-p sl))

(defparameter *reach-verbs* nil)
(defparameter *warn-reach-missing* t)
(defparameter *reach-sents* nil)
(defparameter *reach-sent-event-ht* (make-hash-table :size 1000 :test #'equalp))
(defparameter *missed-entities* nil)


(defun reach-pathname (reach-id)
  (make-pathname :name reach-id
                 :type "json"
                 :defaults
                 (asdf:system-relative-pathname
                  :r3
                  "../corpus/Reach-sentences/reach_reread/")))
                                

(defun compare-to-reach (PMCID sent-num curr-sent)
  (declare (special curr-sent))
  (let* ((reach-id (format nil "~d-~d" PMCID sent-num))
         (reach-path (reach-pathname reach-id))
         (decoded-reach (decode-reach-file reach-path))
         (entities (getf decoded-reach :entities))
         (sparser-sent-string
          (if curr-sent
              (sentence-string curr-sent)
              "MISSING TEXT IN SPARSER"))
         (reach-sent (string-left-trim " " (string-right-trim ".!?" (getf decoded-reach :SENTENCE))))
         (reach-event-triggers
          (loop for event in (getf decoded-reach :events) when (assoc :trigger event)
                collect
                  (list (cdr (assoc :trigger event))
                        (assoc :type event)
                        (assoc :subtype event)))))
    (declare (special reach-path decoded-reach entities))
    ;;(lsp-break "compare-to-reach")
    (push reach-sent *reach-sents*)
    
    (loop for trip in reach-event-triggers
          do
            (pushnew trip *reach-verbs* :test #'equalp)
            (push reach-id (gethash trip *reach-sent-event-ht*)))


    (unless (equal reach-sent sparser-sent-string)
      (warn "mismatched sentences ~% reach sentence   ~s ~% sparser sentence ~s"
            reach-sent
            sparser-sent-string))
    (when *warn-reach-missing*
      (multiple-value-bind (sub-bag-p missing)
          (sub-bag-p (get-reach-entities-strings entities) (get-individuals-strings curr-sent) :test #'equalp)
        (unless sub-bag-p
          
          (warn "missed REACH entities ~& ~s ~% in sentence ~s~%" ;; REACH verbs ~s~%"
                (loop for m in missing
                      collect
                        (loop for e in entities
                              when (equalp (cdr (assoc :text e)) m)
                              do
                                (pushnew (simplify-reach-entity e) *missed-entities* :test #'equal)
                                (return (simplify-reach-entity e))))
                sparser-sent-string
                ;;reach-event-triggers
                ))))))

(defun reach-event-examples (trip)
  (loop for reach-id in (gethash trip *reach-sent-event-ht*)
        collect
          (reach-id-events reach-id)))

(defun reach-sexpr (reach-id)
  (decode-reach-file (reach-pathname reach-id)))

(defun reach-id-events (reach-id)
  (getf (reach-sexpr reach-id) :events))
    
(defun sub-bag-p (sub-bag super-bag &key (test #'eql))
  (loop with result = t
        for elt in sub-bag
        if (find elt super-bag :test test)
        do (setq super-bag (remove elt super-bag :count 1 :test test))
        else collect elt into missing and do (setq result nil)
        finally (return (values result missing))))

(defun get-individuals-strings (curr-sent)
  (when curr-sent
    (mapcar #'(lambda (x) (string-trim " " (retrieve-surface-string x)))
            (when (slot-boundp (contents curr-sent) 'individuals)
              (sentence-individuals (contents curr-sent))))))

(defun get-reach-entities-strings (entities)
  (mapcar #'(lambda (x) (cdr (assoc :text x))) entities))


  
(defun reach-word-cats (str)
  (let* ((word (resolve str))
         (rs (when word (word-rules word))))
    (when rs
      (loop for c in
              (rs-distinct-categories rs)
            when (itypep c 'biological)
              collect c))))

(defun distinct-reach-verb-cats ()
  (loop for grp in
          (group-by
           (loop for v in *reach-verbs*
                 collect
                   (list v
                         (reach-word-cats (car v))))
           #'(lambda (x) (cdar x))
           #'(lambda (x) (list (caar x) (car (second x)))))
        collect
          (list
           (car grp)
           (loop for sg in (group-by (second grp) #'second #'car)
                   collect sg)))) ;;`(,(second sg) ,(car sg))))))

(defun group-by (l fn &optional (extract-fn #'identity))
  (let ((ht (make-hash-table :size (length l) :test #'equal)))
    (loop for item in l do
            (push (funcall extract-fn item)
                  (gethash (funcall fn item) ht)))
    (loop for key being the hash-keys of ht
            collect (list key (gethash key ht)))))


(defvar *rvcs* nil)
(defvar *rvcs1* nil)
(defvar *rvcs2* nil)
(defvar *rvcs3* nil)
(defvar *reach-to-sparser* nil)


(defparameter *svo/bio-verbs*
  '(ABLATE ABSORB ACCEPT ACCESS ACCOMPANY ACCOMPLISH ACCORD ACCOUNT ACHIEVE ACTIVE ADAPT ADDICT ADDRESS ADJUST ADMINISTERE ADMINISTRATE ADOPT AFFORD AGE AGGRAVATE AGRE AIM AIR ALLEVIATE ALLOWE ALPHABIND ALTER ALTERE ALTERNATE AMELIORATE ANDNONFAIL ANESTHETIZE ANGLE ANSWER ANTAGONIZE APPROVE ARISE ARM AROUSE ARREST ARTICLE ASCERTAIN ASCRIBE ASK ASSAYE ASSIST ATROPHY ATTACH ATTAIN ATTEMPT ATTRACT AUGMENT AUTHOR AVERAGE AVOID BACK BAIT BALANCE BARK BAY BEAR BED BEGIN BEHAVE BEIJ BELIEVE BELONG BEND BENEFIT BIAS BID BIND BIOSCREEEN BIOTINYLATE BLAST BLEOMYCININDUCE BLOCKADE BLOOD BLOT BLUNT BOLSTERE BOLT BONE BOOST BOX BRACKET BRANCH BREACH BRIDGE BRIEF BRING BROWN BUD BULK BUNDLE BURDEN BURGER BURST BYPASS CALCIFY CALCULATE CAP CAPTURE CARE CARRY CASE CELLSSHOWE CENTER CENTRE CHAIN CHANNEL CHAPERON CHARACTERISE CHARGE CHART CHECK CHEMOSENSITIZ CHIP CHOOSE CIRCLE CIRCULATE CITE CLAIM CLARIFY CLEAN CLEAVE CLOCK CLONE CLOSE CLUMP COACTIVATE COAT COCULTURE COIL COINCIDE COINCUBATE COLLABORATE COLLAPSE COLLECETE COLLECT COLOCALIZE COMBINE COME COMFIRM COMMUNICATE COMPARTMENTALISE COMPETE COMPLEMENT COMPLEXE COMPLICATE COMPOSE COMPOUND COMPRISE COMPUTE CONCEIVE CONCERN CONCERT CONCLUDE CONDITION CONDUCT CONE CONFINE CONFIRM CONFLICT CONJUGATE CONNECT CONSIST CONSOLIDATE CONSTRICT CONSUME CONTACT CONVERGE COORDINATE COPE COPPER COPY CORD CORE CORRECT CORRELATE CORROBORATE COSTAIN COTRANSFECT COTREAT COUNT COUNTER COUNTERACT COUPLE COURSE COW COX CREST CROSS CROSSLINK CROSSTALK CURVE CUT DAB DAMAGE DEAL DEAMIDAT DEBATE DECEASE DECELERATE DECIDE DECLARE DECLINE DECOMPOSE DECOUPLE DECOY DECTECT DEEM DEFECT DEFEND DEFINE DEGENERATE DEGRADATE DELINEATE DELIVER DELIVERE DEMAND DENATUR DENOTE DEPICT DEPOLARIZ DEPOSIT DEPOSITE DEPRES DEPRIVE DEREGULATE DESENSITIZE DESERVE DESIGN DESIGNATE DESTABILIZE DETERIORATE DEVASTATE DIACYLATE DIAGNOSE DICTATE DIET DIFFER DIFFERE DIFFERENTIATE DIG DILATE DIM DIMINSH DISABLE DISAGREE DISASSOCIATE DISCLOSE DISCONNECT DISCOVER DISCOVERE DISCRIMINATE DISCUS DISEASE DISINTEGRATE DISLODGE DISORDERE DISSOLVE DISTANCE DISTRESS DISTRIBUTE DISTURB DIVERGE DOCK DOCUMENT DOSE DOT DRAIN DRAW DRINK DRY DSRE DUMP DUPLICATE DYE EDDY EDGE EGG ELICITE EMANATE EMERGE EMPLOYE EMPTY EMULATE ENCAPSULATE ENCOUNTERE ENCOURAGE END ENDOCYTOSE ENFORCE ENGAGE ENGINEER ENLARGE ENRICH ENSUE ENSURE ENVISAGE EQUAL ESTIMATE EUTHANIZE EVADE EVALUATE EVINCE EVOKE EVOLVE EWING EXACERBATE EXACT EXCEED EXCLUDE EXECUTE EXEMPLIFY EXERCISE EXERT EXHIBITE EXPAND EXPERIENCE EXPLOIT EXPLORE EXPORT EXPOSE EXTEND EXTRACT FACE FAINT FEE FEED FEEL FIELD FILE FILM FINE FIR FIRM FISH FIT FIXE FLAG FLATTEN FLOAT FLOOD FLOW FLY FOAM FOCUS FOCUSE FOLD FOOT FORCE FORDOWNREGULAT FORK FORMYLATE FOSTER FRACTIONATE FRANK FREE FRIZZLE FRONT FRUIT FULFIL FUME FUNCTIONALIZE FUND FUSE GATE GET GIFT GLASS GO GOVERN GRADE GRANT GRAY GREY GRIND GTPBIND GUT HALT HAMPERE HAND HANDLE HANG HAPPEN HARBOUR HARVEST HAZARD HEAD HEAL HEAR HEAT HEIGHTEN HEIGHTENE HELP HIGHLIGHT HINDER HINDERE HINT HOG HOLD HOST HUMANIZE HYPOTHESISE IMAGE IMBALANCE IMMORTALIZE IMMUNOLABEL IMMUNOSTAIN IMPINGE IMPLANT IMPLEMENT IMPLY IMPORT INCOME INCREMENT INCUBATE INDCU INDEX INDEXE INFECT INFER INFILTRATE INFLAME INFRARE INHABIT INJECT INJURE INK INSTANCE INSTITUTE INSULT INTEGRATE INTEND INTENSIFY INTER INTEREST INTERNALISE INTERPOLATE INTERPRETE INTERRUPT INTERTWINE INTRODUCE INVADE INVOKE IONIS IONIZE IRRADIATE JAPAN JOIN JOINT KIL KILL KIP KIT KNOCK LABEL LABELE LANDSCAPE LAPSE LAST LAYER LEAGUE LEAK LEAVE LENGTHENE LESSEN LESSENE LET LIGHT LIST LIVE LOAD LOCATE LOCK LOOK LOWERE LUBRICATE LUTEINIZ LUTENIZ LYING MAKE MAN MANEUVER MANIFEST MANIPULATE MANTLE MANUFACTURE MAR MARK MASK MASTER MAT MATCH MATTER MATURATE MATURE MAXIMIZE MEDITATE MELANIZE MERGE METABOLISE METABOLIZE METAL MICROINJECT MILK MIMIC MIMICK MIND MINERALIZE MINIMIZE MIRRORE MIS MISFOLD MITIGATE MIXE MOB MOBILIZE MOCK MODEL MODELE MODERATE MOISTURIZ MONITORE MOTOR MOVE MUG MULTINUCLEAT MUSCLE MUSHROOM MYELINAT NAME NARROW NEAR NECK NEGATE NET NEUTRALIZE NICK NONLIGATE NONMYRISTOYLATE NONRANDOMIZE NONRESPOND NONSPLICE NONTREAT NORMALIZE NOTE NOTICE NUCLEAT NULLIFY OBLITERATE OBSTRUCT OCCUPY OCCURE OFFER OFFSET OFFSPR OIL OPEN OPENE OPPOSE OPTIMIZE ORCHESTRATE ORDER ORGANIZE ORPHAN OUTLAST OUTLINE OVARIECTOMIZE OVERCOME OVERLOAD OVERPRODUCE OVERSTIMULATE OVERWHELM OWING OXIDIZE PACE PAIN PAIR PAN PAPER PARALLELE PARK PATTERN PAUL PAW PEAK PEEL PEGYLATE PEMETREXE PENETRATE PEP PEPPER PERCEIVE PERISH PERK PERMEABILIZ PERMIT PERPETUATE PERSIST PERTAIN PERTURB PHASE PHENOCOPY PHOSPHOABLAT PHOSPHOLYLATE PHOSPHONATE PHOSPHORYALATE PHOSPORYLAT PHOTOAGE PICTURE PIG PILOT PIT PLANT PLATE PLAY PLOT POCKET POINT POISE POISON POLARIZE POLYTRAUMATIZE POOL PORE POSSESS POST POSTULATE POUR POWER PRACTICE PREASSEMBLE PRECIPITATE PRECONDITION PREEXIST PREINCUBATE PREMISE PRESSURE PRESUME PRETREAT PRETTY PREVAIL PREY PROCEED PROCES PROCURE PROFILE PROGRAM PROGRAMME PROGRESS PROHIBIT PROMISE PROMPT PRONOUNCE PROTOONCOGENESENCOD PROVOKE PUBLISH PULL PULP PULSE PUMP PURCHASE PURSUE PUSH QUANTIFY QUENCH RABBIT RADIOSENSITIZ RAFT RANDOMISE RANK RAP RAT RAY REALIZE REARRANGE REASON REASONE REBIND RECAPITULATE RECEIVE RECENSOR RECOGNIZE RECORD RECOUPL RECOVER RECOVERE RECYCLE REFER REFLECT REGARD REGENERATE REGRES REINFORCE REINSTATE REJOIN RELATE RELAY RELAYE RELOCALIZE REMODEL RENDER RENEW REPAIR REPEAT REPLACE REPRODUCE REPROGRAM REPUTE REROUT RESCUE RESEARCH RESEMBLE RESIDE RESOLVE RESORB RESPECT RESTORE RESTRAIN RESTRICT RESUME RETARD RETRIEVE REV REVERS REVERSE REVIEW RINSE RISE ROOM ROOT ROUGHEN ROW RUFFLE RULE RUN SAG SALT SATURATE SAVE SCAN SCATTER SCAVENGE SCHEDULE SCORE SCRAMBLE SCRATCH SEARCH SECRETE SEDATE SEED SEEK SEGMENT SEIZE SEND SENSE SENSITISE SENSITIZE SEPARATE SEQUESTER SEQUESTRATE SERRATE SEX SHAM SHANGHAI SHARE SHEAR SHED SHIFT SHOCK SHORTENE SHUT SHUTTLE SIDE SIGN SILENCE SIMULATE SIN SING SINGLE SKIN SKIP SLIGHT SLOWE SLUG SMEAR SMELT SMOKE SMOOTH SMOOTHENE SOIL SOLE SOLVE SORT SPACE SPAR SPEAK SPECIFY SPECULATE SPIKE SPIN SPITE SPLICE SPRE SPREAD SPROUT STACK STAGE STAIN STALE STANDARDIZE STARCH STEADY STEM STIFFEN STOP STORE STRAIN STREAM STRENGTHEN STRESS STRETCH STRIKE STRIP STRUCTURE STUNT SUB SUBMERGE SUBSTANTIATE SUBSTITUTE SUBTRACT SUFFERE SUM SUN SUPERVISE SUPPLEMENT SUPPOSE SUPRES SURGE SURPRISE SURROUND SURVEY SURVIVE SUSPECT SUSTAIN SWAP SWARM SYNCHRONIZE SYNERGIZE SYNTHESIS SYNTHESIZE TAIL TAKE TALK TAN TANGLE TAP TEMPT TESTIFY TETHERE THANK THICKEN TIE TIME TITRATE TOLL TOT TOTAL TRACE TRAFFICK TRAIN TRANSAMINATE TRANSDIFFERENTIAT TRANSDUCT TRANSECT TRANSLOCALIZE TRANSMIT TRANSPLANT TRANSPORT TREND TRIACYLATE TRIPLE TRY TUNE TUNNEL TURN TWIST ULCERATE UNAFFECT UNALTERE UNANSWERE UNCHARACTERIZE UNCOAT UNCONJUGATE UNCOUPLE UNCOVER UNCOVERE UNDERINDUCE UNDERLINE UNDERMINE UNDERSCORE UNDERTAKE UNDIFFERENTIAT UNDISTURB UNEXPLORE UNFOLD UNIDENTIFY UNINFECT UNINHIBITE UNIRRADIAT UNLABELE UNPASSAGE UNPUBLISH UNRECOGNIZE UNREGULATE UNRELATE UNREPAIR UNREPORT UNRESTRAIN UNSELECT UNSPECIFY UNTRANSFECT UNTRANSFORM UNTRANSLATE UNTREAT UNVEIL UTILISE UTILIZE VANISH VARY VASCULARIZE VIEW VISUALIZE VOID VOLUNTEER WALL WANT WARRANT WASH WASTE WATER WAVE WEIGHT WET WIND WIRE WISH WITHSTAND WONDERE WORD WOUND XENOGRAFT ZAP ZONE))

(defun analyze-reach-verbs ()
  (setq *rvcs* (distinct-reach-verb-cats))
  (setq *rvcs1*
        (loop for r in *rvcs*
              collect
                (list (car r)
                      (loop for rr in (second r) when (car rr) collect (second rr)))))
  (setq *rvcs2*
        (loop for x in *rvcs1*
              collect
                `(,(car x)
                   ,(loop for group in (second x)
                          collect
                            (list (car group)(reach-word-cats (car group)))))))
  (setq *rvcs3*
        (loop for xx in
                *rvcs2*
              append
                (loop for xxx in (second xx)
                      when (null (second xxx)) collect xxx)))
  (setq *reach-to-sparser*
        (loop for x in *rvcs2*
              collect
                (cond ((search "negative" (cdr (assoc :subtype (car x))))
                       (list (print (car x))
                             (mapcar #'pname
                                     (loop for cat in
                                             (loop for xx in (second x)
                                                   append (second xx))
                                           when (itypep cat 'negative-bio-control)
                                           collect cat))))
                      ((search "positive" (cdr (assoc :subtype (car x))))
                       (loop for cat in
                               (loop for xx in (second x) append (second xx))
                             when
                               (member (cat-name cat) *svo/bio-verbs*)
                             do
                               (format t "~%suppressing bogus verb ~s" (cat-name cat)))
                       (list (print (car x))
                             (mapcar #'pname
                                     (loop for cat in
                                             (loop for xx in (second x)
                                                   append (second xx))
                                           when
                                             (and (not (itypep cat 'negative-bio-control))
                                                  (not (member (cat-name cat) *svo/bio-verbs*)))
                                           collect cat))))
                      (t
                       (list (car x)
                             (mapcar #'pname (loop for xx in (second x) append (second xx)))))))))


(defun missed-entities ()
  (sort
   (loop for m in *missed-entities*
         unless
           (or
            ;;(search " " (car m))
            (search " inhibitor" (car m))
            (search "p-" (car m))
            (resolve (car m))
            (resolve (string-downcase (car m)))
            (equal (second m) "uaz")
            (member (getf m :type) '("site" "tissuetype") :test #'equal)
            (and (member (getf m :type) '("protein") :test #'equal)
                 (member (second m)  '("uaz" "uniprot") :test #'equal)))
         collect m)
   #'string<
   :key #'fourth))

(defun missed-uniprot ()
  (sort
   (loop for m in *missed-entities*
         when (and (member (getf m :type) '("protein") :test #'equal)
                   (equal "uniprot" (second m))
                   (not (resolve (car m)))
                   (not (equal (car m) "iN"))
                   (not (or
                         (eql 0 (search "p-" (car m)))
                         (eql 0 (search "phospho-"(car m)))
                         (eql 0 (search "phospho "(car m)))
                         (eql 0 (search "www"(car m)))
                         (eql 0 (search "-"(car m)))
                         (eql 0 (search ")" (car m)))
                         (search "-MEK" (car m))
                         (search "-ERK" (car m))
                         (search "-MAPK" (car m))
                         (search "-GFP" (car m))
                         (search ")" (car m))))
                   )
         collect m)
   #'string<
   :key #'car))
