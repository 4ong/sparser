;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;char-level:"   ("character level processing")
;;;  Version:  3.0 September 1992

;; 3.0 (9/15/92 v2.3) bumped version to accomodate changes to tokenizer
;; 3.1 (8/2/94) bumped [setup/string] to 3 to preserve the original alg.
;;      while making substantial changes

(in-package :sparser)

(lload "chars;state")
(lload "chars;setup-string")
(lload "chars;setup-file")
(lload "chars;setup-switch")

(lload "chars;display")

(lload "chars;testing")
(lload "chars;testing-file")

