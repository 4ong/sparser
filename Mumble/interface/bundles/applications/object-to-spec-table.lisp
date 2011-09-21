;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-;;;;;; MUMBLE-86:  interface>applications> object-to-specification-table;;;;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald and the;;;    Mumble Development Group.  All rights reserved.;;;    Permission is granted to use and copy this file of the Mumble-86 system for;;;    non-commercial purposes.;; ChangeLog;;  2/16/95 ddm -- Converted Symbolics idioms to CommonLisp(in-package "MUMBLE")(export '(default-specification define-default-specification          define-default-specification-for-a-class ))(defvar OBJECT-TO-SPECIFICATION-TABLE (make-hash-table ))(defun DEFAULT-SPECIFICATION (obj)  ;; original: (send object-to-specification-table  :get-hash obj)  (gethash obj object-to-specification-table))(defmacro DEFINE-DEFAULT-SPECIFICATION (object-expression &rest plist)  `(define-default-specification/expr ',object-expression ',plist))(defun Define-default-specification/expr (object-expression plist)  (let ((real-object (eval object-expression))	(template-name (cadr (member ':template-name plist)))	(arguments     (cadr (member ':arguments plist))))    (create-entry-and-associate-with-object       real-object template-name arguments)))(defun CREATE-ENTRY-AND-ASSOCIATE-WITH-OBJECT (object					       template-name					       arguments)  (let* ((entry-name (name-symbol-for-object object))	 (entry	   (create-and-catalog entry-name 'table-entry-for-individuals	      'name entry-name	      'object-assigned object	      'template template-name	      'arguments-to-the-template arguments)))    ;;(send object-to-specification-table  :put-hash object entry)    (setf (gethash object object-to-specification-table) entry)))(define-postprocessing-function  TABLE-ENTRY-FOR-INDIVIDUALS  (E)    (let ((template-name (template E))	(argument-list (arguments-to-the-template E)))    ;;this is the point changed!!    (if (symbolp template-name)	(then	  (set-template	    E  (return-object-of-type 'specification-template template-name))	  (let-with-dynamic-extent ((self (object-assigned E)))	    (set-arguments-to-the-template 	      E	      (mapcar #'eval		      (mapcar #'decode-specification-argument-for-individuals			      argument-list)))))       (else ;new stuff	 (mbug "template-name is a list - ~A" template-name))       )))(defun DECODE-SPECIFICATION-ARGUMENT-FOR-INDIVIDUALS (arg)  "returns an object that will be passed to Eval at postprocessing time"  (typecase arg    (symbol arg)    (string (word-for-string arg))    (cons arg)    (otherwise (mbug "Unanticipated type of object among the arguments to ~                      a specification template:~%   ~A" arg))))(defun NAME-SYMBOL-FOR-OBJECT  (obj)  (typecase obj    (symbol obj)    (otherwise (intern (short-print-form obj)))    ))(defmacro DEFINE-DEFAULT-SPECIFICATION-FOR-A-CLASS (class-expression						    &rest plist)  `(DEFINE-DEFAULT-SPECIFICATION-FOR-A-CLASS/expr ',class-expression ',plist))(defun DEFINE-DEFAULT-SPECIFICATION-FOR-A-CLASS/expr (class-expression plist)  (let ((real-object (eval class-expression))	(template-name (cadr (member ':template-name plist)))	(arguments     (cadr (member ':arguments plist))))    (create-entry-for-class-and-associate-with-Object       real-object template-name arguments)))(defun CREATE-ENTRY-FOR-CLASS-AND-ASSOCIATE-WITH-OBJECT (object							 template-name							 arguments)  (let* ((entry-name (name-symbol-for-object  object))	 (entry	   (create-and-catalog entry-name 'table-entry-for-classes	      'name entry-name	      'object-assigned object	      'template template-name	      'argument-expressions-to-the-template arguments)))    ;;(send object-to-specification-table  :put-hash object entry)    (setf (gethash object object-to-specification-table) entry)))(define-postprocessing-function  TABLE-ENTRY-FOR-CLASSES  (E)    (let ((template-name (template E))	(argument-list (arguments-to-the-template E)))    (set-template E		  (return-object-of-type 'specification-template template-name))    (set-argument-expressions-to-the-template E	       (mapcar #'decode-specification-argument-for-classes		       argument-list)  )))(defun DECODE-SPECIFICATION-ARGUMENT-FOR-CLASSES (arg)  "returns an object that will be passed to Eval at run time"  (etypecase arg    (symbol arg)    (string `',(word-for-string arg))    (cons arg) ))