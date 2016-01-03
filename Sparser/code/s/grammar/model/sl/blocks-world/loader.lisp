;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015-2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "loader"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  January 2016

;; Initiated 10/6/15. Added vocabulary 12/3/15. interface on 1/2/16.

(in-package :sparser)

(when (find-package :mumble)
  (gload "blocks;experiments")
  (gload "blocks;vocabulary")
  (gload "blocks;interface"))

