;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "cars"
;;;   Module:  "model;core:mid-level:"
;;;  version:  April 2015

;; Moved here from ISR 4/10/16. 

(in-package :sparser)

#| Notes on vehicle/car per se
A car has a 
  make -- who created it: Ford, Delorian, kit cars
  model -- a named configuration of car by a manufacturer
  year -- the year it was sold / was available for sale as a new car

'extent' -- what predicates does that license?
  size: height, width, diameter (not depth)

Honda is a car-manufacturer. It has a division called Acura (also a c-m)
Acura has a car-model called the TSX, which had different features
depending on the model-year. I bound a instances of the 2004 Acura TSX,
which is now in good to excellent condition (terms from Kelly Blue Book)
with a very small number of scratches and cracks. 
|#

(define-category car-manufacturer
  :specializes maker-of-artifacts
  :restrict ((product motor-vehicle))
  :index (:permanent :key name)
  :realization (:proper-noun name))
#| Notes for Ford qua manufacturer of cars, 
Ford is a manufacturer
  what is manufactures is cars and trucks (farm equipment)
It creates artifacts,
  that concept licenses 'creator'{builder, assembler}
    and 'creation time' {birth date} 
      "came off the assembly line at <clock> on <date>"
It has buildings that it does its manufacturing in.
These are the place of the artifact creation
|#

(define-category motor-vehicle
  :specializes artifact
  :mixins (physical-surface ;;// has to be generalized 
           object
           named-type ;; "Honda"
;;//// Timing issue. This used to load almost last.
;; Particularly the location module was already loaded.
;; Could take middle level categories like these and
;; have a two-stage loader like we do with other moduless
;; Note that the ISR (C3) methods require these mixins
           has-spatial-location ;;// commits us to actual object
           spatial-region
           container
           can-change-location )
  :restrict ((made-by car-manufacturer)))

(define-category car-type
  :specializes named-type
  ;; SUV, sedan, hybrid, truck - not all exclusive
  ;; It's a label/classification that applies to the whole entity
  ;; so it's probably not an attribute
  :bindings (type-of 'motor-vehicle) ;;// that quote is an
  ;; quirk of the  likely out-mooded assumptions of the code in
  ;; attach-bindings-to-category
  :index (:permanent :key name)
  :realization (:common-noun name))

