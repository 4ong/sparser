;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "walk-individuals"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  June 2017

;; Initialized 6/12/17. Routines for walking around the description lattice
;; to find individuals with various properties.

(in-package :sparser)

(defun vv-of (i)
  "Walk up the dlvv chain and return all the values"
  (format t "  ~a" i)
  (let ((uplink (indiv-uplinks i)))
    ;; e.g. ((#<dl-vv has-determiner + #<the 106>> . #<protein 74245>))
    (let* ((wrapper (car uplink))
           (dlvv (car wrapper))
           (variable (dlvv-variable dlvv))
           (value (dlvv-value dlvv))
           (individual-added-to (cdr wrapper))
           (list `(,dlvv)))
      ;;(lsp-break "wrapper = ~a" wrapper)
      (unless (eq variable :superc)
        (cons (car (vv-of individual-added-to))
              wrapper)))))
  
#|
sp> (p/s "the phorphorylated human liver protein")
[the phorphorylated human liver protein]
                    source-start
e10   PROTEIN       1 "the phorphorylated human liver protein" 6
                    end-of-source
(#<protein 74246> 
   (has-determiner (#<the 106> (word "the")))
   (predication (#<phorphorylate 74244> (object *lambda-var*)))
   (organism (#<human 1830>)) 
   (non-cellular-location (#<liver 74240>))
   (raw-text "protein"))

sp> (defvar i (i# 74246))
i
sp> (indiv-uplinks i)
((#<dl-vv has-determiner + #<the 106>> . #<protein 74245>))
sp> (caar *)
#<dl-vv has-determiner + #<the 106>>
sp> (indiv-uplinks (i# 74245))
((#<dl-vv predication + #<phorphorylate 74244>> . #<protein 74243>))
sp> (indiv-uplinks (i# 74243))
((#<dl-vv organism + #<human 1830>> . #<protein 74242>))
sp> (indiv-uplinks (i# 74242))
((#<dl-vv non-cellular-location + #<liver 74240>> . #<protein 74241>))
sp> (indiv-uplinks (i# 74241))
((#<dl-vv raw-text + protein> . #<protein 2183>))
sp> (indiv-uplinks (i# 2183))
((#<dl-vv superc + nil> . #<in-ras2-model 2189>)
 (#<dl-vv superc + nil> . #<reactome-category 2188>)
 (#<dl-vv superc + nil> . #<peptide 2184>))
|#

