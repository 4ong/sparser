;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;      File: "scripts"
;;;    Module: "init;loaders;"
;;;   Version: January 2016

(in-package :sparser)

(defvar script :default
  "Specifies a set of Sparser parameters, switch values, grammar files, etc.")

(defmacro defscript (name supers &rest script-options &aux
                     (script-doc ; optional string
                      (etypecase (car script-options)
                        (string (pop script-options))
                        (list (format nil "~(~a~) script flag." name))))
                     (script-variable ; pull this option out early
                      (or (cadr (assoc :script-variable script-options))
                          (cadar (push `(:script-variable
                                         ,(intern (format nil "*~a*" name)
                                                  *sparser-source-package*))
                                       script-options))))
                     (script (intern (string name) (find-package :keyword))))
  "Define a related group of parameters, switch values, and grammar modules.
A parameter flag is defined at macro expansion time, but the script options
are stashed on the script symbol's plist for the script function below."
  (assert (null supers) (supers) "Script inheritance is not yet supported.")
  `(progn
     (defparameter ,script-variable (string-equal script ',name) ,script-doc)
     (setf (get 'script ,script)
           ',(loop for (opt-name . opt-value) in script-options
                   append (ecase opt-name
                            (:parameters ; list of (name value &optional doc)
                             (check-type opt-value cons)
                             `(,opt-name ,opt-value))
                            (:script-variable ; defaulted above
                             (assert (eql script-variable (car opt-value)))
                             `(,opt-name ,(car opt-value)))
                            ((:grammar-configuration
                              :interfering-rules
                              :switches)
                             `(,opt-name ,(car opt-value))))))))

(pushnew
 (defun script (&optional (script script) &aux (options (get 'script script)))
   "Set script parameters and load grammar configuration."
   (declare (special script))
   (assert (and script options (boundp (getf options :script-variable)))
           (script options)
           "Invalid script ~a." script)

   (cond ((setq *grammar-configuration* (getf options :grammar-configuration))
          (lload (format nil "grammar-configurations;~a" *grammar-configuration*)))
         (*external-grammar-config*
          (load *external-grammar-config*)) ; n.b. "load" not "lload"
         (t (warn "No grammar configuration file specified.")))

   (dolist (parameter (getf options :parameters) script)
     (destructuring-bind (name value &optional (doc nil doc-p)) parameter
       (proclaim `(special ,name))
       (setf (symbol-value name) value)
       (when doc-p (setf (documentation name 'variable) doc)))))
 *pre-load-hooks*)

(defun current-script (script-name) (eq script script-name)) ;; hide the non-starred global

(pushnew
 (defun set-script-switches (&optional (script script))
   "Set script-specified switches."
   (declare (special script))
   (funcall (getf (get 'script script) :switches (constantly nil))))
 *post-load-hooks*)

(pushnew
 (defun turn-off-rules-interfering-with-script (&optional (script script))
   "Delete rules that interfere with a particular script."
   (declare (special script *sets-of-interfering-rules*))
   (let ((interfering-rules (getf (get 'script script) :interfering-rules)))
     (when interfering-rules
       (pushnew (cons script interfering-rules)
                *sets-of-interfering-rules*
                :test #'equal)
       (turn-off-interfering-rules script))))
 *post-load-hooks*)

(defscript bbn ()
  "Goes with a release of Sparser to BBN in the early 1990s to use
in conjunction with an early version of Hark. Notable for using the
'all-edges' protocol and coming with next to no built-in grammar."
  (:switches all-edges-setting))

(defscript biology ()
  "DARPA \"Big Mechanism\" project."
  (:script-variable *big-mechanism*)
  (:parameters
   (*clos* nil)
   (*description-lattice* t)
   (*index-under-permanent-instances* t))
  (:grammar-configuration "bio-grammar")
  (:interfering-rules ((sgml-label ("p")))) ; interferes with "p100"
  (:switches bio-setting))

(defscript blocks-world ()
  "Blocks-world configuration for CwC project."
  (:script-variable *CwC* "Communicating with Computers.")
  (:grammar-configuration "blocks-world")
  (:switches blocks-world-setting))

(defscript c3 ()
  (:grammar-configuration "c3-configuration")
  (:switches c3-setting))

(defscript default ()
  (:grammar-configuration "full grammar"))

(defscript ern ()
  "Loads Sparser in the right configuration for completing the ERN grammar
and setting up to do style work by collecting statistics."
  (:parameters
   (*lattice-points* t))
  (:grammar-configuration "full grammar")
  (:switches top-edges-setting/ddm))

(defscript fire ()
  "FIRE stands for 'Free-text Information and Relation Extraction'.
It is essentially GROK going forward."
  (:parameters
   (*load-ad-hoc-rules* t)
   (*do-strong-domain-modeling* t)
   (*new-dm&p* t)
   (*treat-single-capitalized-words-as-names* t)
   (*annotate-realizations* nil))
  (:grammar-configuration "full grammar")
  (:switches fire-setting))

(defscript grok ()
  "Settings for the GROK project. Among other customizations,
turns off the partially saturated-individuals facility in favor
of only using ordinary bindings."
  (:parameters
   (*load-ad-hoc-rules* t
    "Allows loading rules that don't have annotations for NLG.
We ultimately want to set this to nil, but not yet.")
   (*annotate-realizations* nil
    "Goes with load ad-hoc rules. If every rule was derived from
or associated with a schemea, we would switch both values.")
   (*incorporate-generic-lexicon* t
    "Include the COMLex lexicon."))
  (:grammar-configuration "grok")
  (:interfering-rules ((comma-number ("," number))))
  (:switches grok-setting))

(defscript just-dm&p ()
  "Domain Modeling & Population."
  (:parameters
   (*load-ad-hoc-rules* t)
   (*sit-rep-grammar* t))
  (:grammar-configuration "full-grammar")
  (:switches dm&p-setting))

(defscript no-grammar ()
  "Load an otherwise normal parsing engine, but with no grammar
beyond that which the parser requires for its own operation."
  (:parameters (*just-bracketing* t))
  (:grammar-configuration "just-bracketing")
  (:switches just-bracketing-setting))
