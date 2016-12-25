;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :sparser)

(def-k-function k-location-p (individual))
;; Methods here are ordered most → least specific.
(def-k-method k-location-p ((individual category::deictic-location)) :deictic)
(def-k-method k-location-p ((individual category::location)) t)
(def-k-method k-location-p (individual) (declare (ignore individual)))

(rt:deftest k-location-p
  (values (k-location-p nil)
          (k-location-p category::region)
          (k-location-p category::location)
          (k-location-p category::deictic-location)
          (k-location-p (or (find-individual 'deictic-location :name "here")
                            (error "Don't know where \"here\" is."))))
  nil
  nil
  t
  :deictic
  :deictic)

(def-k-function k-member (item collection &key key test test-not)
  (:documentation "Is ITEM an element of COLLECTION?")
  (:method (item collection &key key test test-not)
    (declare (ignore item collection key test test-not)))
  (:method (item (collection list) &rest args)
    (apply #'member item collection args))
  (:method (item (collection category::collection) &rest args)
    (apply #'member item (collection-items collection) args)))

(rt:deftest k-member
  (progn
    (qepp "this and that.")
    (let ((collection (first (semtree (first (all-tts))))))
      (assert (itypep collection 'collection))
      (assert (every #'individual-p (collection-items collection)))
      (let ((items (collection-items collection)))
        (destructuring-bind (this that) items
          (values (null (k-member this nil))
                  (null (k-member this items))
                  (null (k-member that collection)))))))
  t
  nil
  nil)