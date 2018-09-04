;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2018 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "space"
;;;   Module:  "model;core:kinds:"
;;;  version:  September 2018

;; Broken out of container-and-suv 11/11/13. Moved to kinds 4/14/14 and
;; included container. 2/1/16 merging with the location in places.

(in-package :sparser) 


(define-category location
  :instantiates self
  :specializes region
  :restrict ((name  name-of-location)) ;;/// try including names module 
  :documentation "The most general notion of a location, as a place
 where something can be.
   'My wedding ring is on my (left ring) finger'
   'My cell phone is in my pocket'
 The pants pocket is the place. To express the relation of
      [ David's-cell-phone.location = pocket of his jeans ]
  we need to say 'is in', where the choice of preposition is
  idiosyncratically dependent on the category of location"
  :index (:key name))

(let ((*inhibit-constructing-comparatives* t))
  (declare (special *inhibit-constructing-comparatives*))
#| This isn't right. 'space' is a generic/mass kind of stuff
so it's interpretation shouldn't be a location instance.
/// So redesign it all in a bit. This gets the vocabulary in. |#
(define-realization location
    :noun ("space" "location")
    :adj ("spatial" "spatio"))
) ;; close let -- other use of this is 'time'

(define-category bounded-region
  :specializes region
  :instantiates nil
  :documentation "This is an abstract class that just provides
 variables for the essence of any container-like thing without
 also committing to what kind of thing is caontained in the
 interior region and that there is a boundary.
     Boundary is the thing that separates the region from its melieu
 so as to distinguish  things that are inside the region from those that 
 are outside it. In real stuff (as opposed to mathematical idealizations),
 the boundary has substance and is an entity in its own right: the
 membrane of a cell, the border (DMZ) between two countries, the cover
 of a book. Ontologically, a boundary is a Feature, dependent on the
 Region for its existence."
  :binds ((interior region)
          (boundary)
          (containing-region region)))


(define-category container
  :specializes bounded-region
  :binds ((contents))
  :documentation
 "A container is a region that has (at least the potential) to contain
 stuff -- to have stuff in it, particularly stuff that can move in or
 out of it. Containers can have other containers among their contents.
 We separate out 'containment' from 'region' because regions don't
 have to have contents, just extent.
    Like the 'applicable-domain' of Region, the original version of
 Container had a 'kind-of-thing-contained', but again, it was only
 going to be informational without 2d order machinery, and we can get
 much of the same effect through range restrictions on the 'contents'
 slot.")



;;;------------------
;;; mixin predicates
;;;------------------

#|  /// We need something of this sort as predicates on physical. 
 (Property containedIn
   "One step containment. Relates an item to the container it is
   (immediately) in, if any."
   (range Container)
   (min-cardinality 0))

 (Predicate inside
   "Is the the item in the container or in any of the containers it contains?"
   (item top!Thing) (container Container))

 (Predicate outside
   "Is the item not in the container?"
   (item top!Thing) (container Container))
|#
