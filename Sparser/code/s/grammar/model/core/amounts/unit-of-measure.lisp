;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2000,2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "unit of measure"
;;;   module:  "model;core:amounts:"
;;;  Version:  March 2016

;; initiated 9/18/93 v2.3.  10/24/94 added defdata
;; 1.0 (9/6/00) Reworked indexing.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  unit-of-measure
  :specializes abstract ;; basically a typed number that applies to scalars
  :instantiates self
  :binds ((name :primitive word))
  :mixins (has-uid)
  :realization (:common-noun name))


;;;--------------------
;;; pro-forma def-form
;;;--------------------

(defun define-unit-of-measure (string)
  (define-individual 'unit-of-measure :name string))

;;;---------
;;; defdata
;;;---------

(define-autodef-data  'unit-of-measure
  :display-string "units of measure"
  :form 'define-unit-of-measure
  :dossier  "dossiers;units of measure"
  :module *amounts*
  :description "a word that names the units in which something can be measured: as in '15 ___ of stuff'"
  :examples "\"ton\", \"inch\", \"share\"" )

