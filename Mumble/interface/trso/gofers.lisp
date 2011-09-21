;;; -*- Mode: Lisp; Syntax: Common-lisp; Package: MUMBLE; -*-;;; copyright (c) 1999-2000 David D. McDonald, all rights reserved;;; $Id$;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved;;;;;;     file: "gofers";;;   module: "/Mumble/interface/tsro/";;;  version: December 2009;; written 7/4/99. Extended 8/23 through 9/99. 1/4/00 added facilities for;; tsro-choosers. Resumed tweaking 6/21.;; 0.1 (7/25) Rewrote ETF-or-rdata as Analyze-realization-data to do a far more;;      extensive examination. Fixing bugs and adding traces through 8/27.;; 12/27/09 Moved here from stravinsky: ts-readers;drivers since it's already;;   doing a lot of the heavy lifting even if it is still in bundle-speak.;;   Only changed enough to load and execute.(in-package :mumble);;;-----------------------------------------------------;;; getting the realizations associated with a category;;;-----------------------------------------------------(defun ETF-or-rdata (category)  (declare (ignore category))  (break "Who's the caller - renamed 'analyze-realization-data"))(defun analyze-realization-data (category)  ;; called from standard-tsro-via-category  (when (cat-realization category)    ;; // the organization of this plist is not particularly coherent    (let ((realization-data (cat-realization category))          schema  etf  word-pattern)      (do ((item (first realization-data) (first rest))           (next-item (second realization-data) (second rest))           (rest (cdr realization-data) (cdr rest)))          ((null item)) ;; there can be multiple schema        ;; first case that was written        (when (and (consp item)                   (eq (car item) :schema))          (setq schema (second item)))        ;; Ordinal is like this        (when (eq item :schema)          (setq schema next-item))        (when schema          (dolist (term schema)            (when (typep term 'sparser::exploded-tree-family)              (push term etf))            (when (and (consp term)                       (keywordp (first term))                       (sparser::defined-type-of-single-word                          (first term)))              (setq word-pattern term)))          (setq schema nil)))        (values etf word-pattern))));;;--------------------------------;;; mumble words for sparser words;;;--------------------------------(defun stored-mumble-word-for-sparser-word (s-word)  (cadr (memq :mumble-word (sparser::indiv-plist s-word))))(defun get-mumble-word-for-sparser-word (s-word &optional pos)  (or (stored-mumble-word-for-sparser-word s-word)      (let ((pname (sparser::word-pname s-word)))        (unless pos 	  (setq pos 'mumble::noun))        (let ((m-word (mumble::define-word/expr pname (list pos))))          (store-mumble-word-for-sparser-word s-word m-word)          m-word ))))(defun store-mumble-word-for-sparser-word (s-word m-word)  ;(setf (getf (sparser::indiv-plist s-word) :mumble-word)  ;      m-word)  ;; It says that 'detached plist doesn't satisfy ccl::plistp.'  ;; Probably because the :permanent tag at its end isn't paired.  (setf (sparser::indiv-plist s-word)        (cons :mumble-word (cons m-word (sparser::indiv-plist s-word)))));;;-----------------------------------------------------------;;; finding the trso lspec-builder & friends given a category;;;-----------------------------------------------------------;;--- indexing(defparameter *etf-to-lspec-schemas* (make-hash-table :test #'eq))(defun lss-for-etf (etf)  (gethash etf *etf-to-lspec-schemas*))(defun lspec-schema-for-etf-named (name-of-etf)  (let ((etf (etf-named name-of-etf)))    (or etf        (break "There is no ETF named ~a" name-of-etf))));; move to ETF code(defun etf-named (name-of-etf)  (let ((s-name (intern (symbol-name name-of-etf)                        (find-package :sparser))))    (sparser::exploded-tree-family-named s-name)))    ;;--- object(defstruct (lspec-schema (:include sparser::unit)                         (:conc-name "lss-")                         (:print-function print-lspec-schema))  etf  bundle-type  kernel-type  argument-accessors  )(defun print-lspec-schema (lss stream depth)  (declare (ignore depth))  (format stream "#<lspec-schema ~a>"          (sparser::etf-name (lss-etf lss))))(defun new-lspec-schema (etf)  (let ((lss (make-lspec-schema :etf etf)))    (setf (gethash etf *etf-to-lspec-schemas*) lss)    lss ))  ;;--- form(defmacro define-lspec-schema-for (name-of-etf &rest plist)  `(define-lspec-schema-for/expr ',name-of-etf ',plist))(defun define-lspec-schema-for/expr (name-of-etf plist)  (let ((etf (etf-named name-of-etf)))    (unless etf      (cerror "There is no ETF named ~a" name-of-etf)      (return-from define-lspec-schema-for/expr))    (let ((lss (lss-for-etf etf)))      (unless lss        (setq lss (new-lspec-schema etf)))      (apply #'decode-lss-parameter-list lss plist)      lss )))(defun decode-lss-parameter-list (lss &key bundle kernel accessors)  ;; Converts symbols to objects ('postproceses')  (unless (and bundle kernel accessors)    (break "Missing one or more elements of lspec schema"))  (let* ((mumble (find-package :mumble))         (sparser (find-package :sparser))         (m-bundle-name (intern (symbol-name bundle) mumble))         (m-kernel-name (intern (symbol-name kernel) mumble)))                                 (let ((bundle-type (mumble::bundle-type-named m-bundle-name))          (kernel-type           (or (mumble::mumble-value m-kernel-name                                     'mumble::tree-family)               (mumble::mumble-value m-kernel-name                                     'mumble::single-choice)               (break "Kernel symbol ~a is either undefined ~                       or its type is not one of the expected ones"		       m-kernel-name)))          (arguments           (mapcar #'(lambda (s) (intern (symbol-name s) sparser))                   accessors)))      (setf (lss-bundle-type lss) bundle-type)      (setf (lss-kernel-type lss) kernel-type)      (setf (lss-argument-accessors lss) arguments)      lss )));;--- runtime (defun Lspec-schema-values (etf)  (let ((lss (lss-for-etf etf)))    (unless lss      (break "No lspec-schema has been defined for ~a" etf))    (values (lss-bundle-type lss)            (lss-kernel-type lss)            (lss-argument-accessors lss))))(defun map-schema-arguments-to-unit (args etf category unit)  ;; The args are the names of parameters or labels in the  ;; governing schema, which is one of the posibilities for  ;; realizing objects of that catgory. We map them back  ;; to the slots in the category and gets their values  ;; for this unit.  (let* ((realization/s (cat-realization category))         (field (find-schema-field-in-cat-realization                  realization/s etf))         (map (third field)))    (let ( values )      (dolist (symbol args)        (if (lspec-access-function? symbol)          (push (funcall symbol unit) values)          (push (map-schema-argument-to-value-in-unit                  symbol unit category map)                values)))      (nreverse values))))(defun map-schema-argument-to-value-in-unit (etf-label unit                                             category                                             labels-to-unit-map)  (let* ((variable-based-map           (sparser::reformulate-realization-map category                                                 labels-to-unit-map))         (variable (cdr (assq etf-label variable-based-map))))    (unless variable      (break "No instance of the label ~a in the mapping for~              ~%  ~a" etf-label unit))    (sparser::value-of-mapping-term variable unit)))(defvar *symbols-to-lspec-access-functions* (make-hash-table))(defun register-lspec-access-function (symbol)  (setf (gethash symbol *symbols-to-lspec-access-functions*) t))(defun lspec-access-function? (symbol)  (gethash symbol *symbols-to-lspec-access-functions*));; Ad-hoc. The structure of the realization should be revised;; to be an alist for all elements. //move and document(defun find-schema-field-in-cat-realization (realization-data etf)  ;; This is awfully similar to analyze-realization-data, but we're  ;; called from map-schema-arguments-to-unit, where they ultimately  ;; want the mapping field, so they need the entire sublist and  ;; not just the etf.  (do ((item (first realization-data) (first rest))       (next-item (second realization-data) (second rest))       (rest (cdr realization-data) (cdr rest)))      ((null item)        (break "Could not find etf"))    (when (eq item :schema)      (return next-item))    (when (and (consp item)               (eq (first item) :schema))      (when (eq (second (second item))                etf)        (return (second item))))));;;----------------------------------------------------------------------;;; machinery for defining a category as doing all the operations itself;;;----------------------------------------------------------------------(defparameter *categories-to-special-case-tsro-routines*  (make-hash-table));; Called from Assemble-lspec -- if it returns a value we'll funcall it;; to produce the lspec for the unit (included just for tracing puroses).(defun special-case-tsro (category unit)  (let ((fn (gethash category                      *categories-to-special-case-tsro-routines*)))    (when fn      (tr :special-case category unit fn))    fn ))(defmacro define-special-case-tsro (name-of-category &body body)  `(define-special-case-tsro/expr ',name-of-category ',body))(defun define-special-case-tsro/expr (name-of-category body)  (let ((category (category-named name-of-category)))    (unless category      (error "There is no category named ~a" name-of-category))    (let ((tsro-name (intern (string-append (symbol-name name-of-category)                                            "-tsro")                             (find-package :mumble))))      (setf (gethash category *categories-to-special-case-tsro-routines*)            tsro-name)      (eval `(defun ,tsro-name (unit)               ,@body))      t )));;;------------------------------;;; categories realized as words;;;------------------------------(defparameter *category-realized-as-a-word* (make-hash-table))(defun register-category-as-realized-as-a-word (name-of-category)  (let* ((sname (intern (symbol-name name-of-category)                        (find-package :sparser)))         (category (sparser::category-named sname)))    (unless category      (error "There is no category named ~a" name-of-category))    (setf (gethash category *category-realized-as-a-word*) t)    category ))(defun realized-as-a-word? (category)  (or (gethash category *category-realized-as-a-word*)      (find-word-realization-within-category-realization category)));; !! This stuff should be built into the construction of the;; unit as it unpacks the rule-schemas. That way we can do away;; with the registry and leave the word in a convenient place.(defun extract-mword-from-rule (unit category)  (let ((word         (or (find-word-realization-within-category-realization category)             ;; This doesn't really work because the rnodes are (always? or             ;; is it a 'get around a bug' thing?) on the lattice point             ;; rather than the individual.             (let ((rnodes (sparser::indiv-rnodes unit)))               (unless rnodes                 (break "Setup bug: No rnodes on ~a" unit))               (let* ((rnode (first rnodes)) ;;/// way too arbitrary                      (cfr (sparser::rn-cfr rnode)))                 (unless cfr                   (break "Assumption bug: no cfr in rnode ~a" rnode))                 (let* ((word (sparser::cfr-rhs cfr)))                   (unless (and word (typep word 'sparser::word))                     (break "The rhs of ~a~%isn't a word/sparser word: ~a"                            cfr word))                   word))))))    (tr :word-from-rule unit word)    (get-mumble-word-for-sparser-word word)));;Daniel 9/22/99 "we're going to play while the movie" (= during);; Shouldn't have to explicitly register these things since;; it's lying around to be seen.(defun find-word-realization-within-category-realization (category)  (let ((realization (cat-realization category)))    (when realization      (dolist (element realization nil)        (unless (eq element :rules)          (when (eq (car element) :schema)            (let* ((schema (second element))                   (first-term (first schema))) ;; too arbitrary !!              (unless (eq first-term :no-head-word)                (when (keywordp (car first-term))                  (return-from Find-word-realization-within-category-realization                    (and (sparser::word-p (cdr first-term))                         (cdr first-term))))))))))))            ;;;-----------------;;; tsro 'choosers';;;-----------------(defparameter *categories-to-tsro-choosers*  (make-hash-table))(defun tsro-chooser (category)  (gethash category *categories-to-tsro-choosers*))(defmacro define-tsro-chooser (name-of-category &body body)  `(define-tsro-chooser/expr ',name-of-category 'body))(defun define-tsro-chooser/expr (name-of-category body)  (let ((category (category-named name-of-category)))    (unless category      (error "There is no category named ~a" name-of-category))    (let ((tsro-name (intern (string-append (symbol-name name-of-category)                                            "-tsro")                             (find-package :mumble))))      (setf (gethash category *categories-to-tsro-choosers*)            tsro-name)      (eval `(defun ,tsro-name (unit)               ,@body))      t )))