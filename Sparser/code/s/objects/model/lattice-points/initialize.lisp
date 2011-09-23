;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "initialize"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  0.1 February 2005

;; initiated 11/29/97. Moved code in from other files 7/7/98. 9/3/99 renamed
;; Construct-self-lattice-point to avoid brain-dead conflict with the
;; constructor of the structure. 9/7 extended that routine to set the 
;; upward pointer of the new node so that you can successfully climb
;; through it. 3/20/00 Added to Index-node-to-top-point so that it would
;; properly set the down pointers of the top-lp, thereby fixing bug that
;; find wasn't working.
;; 0.1 (6/21) Reworked the constructors to use the resource mechanism.
;; (2/8/05) Added category-of-self-lattice-point. (2/9) fixed bug in
;; Index-node-to-top-point when the entry exists but the new lp node
;; isn't in it and there's just one lp in the entry at this point. (2/17) fixed
;; problem with Find-self-node returning a list instead of the self-lp.

(in-package :sparser)


;;;-------------
;;; entry point 
;;;-------------

;; Called from Decode-category-parameter-list. Returned value becomes
;; the value of the category's lattice-position field.

(defun initialize-top-lattice-point (category &key specializes)
  (let ((lp (get-lp 'top-lattice-point
             :category category
             :super-category specializes))
        (vars (cat-slots category)))

    (setf (lp-index-by-variable lp)
          (mapcar #'(lambda (var) (list var)) 
                  (cons category vars)))

    (setf (lp-variables-bound lp) nil)
    (setf (lp-variables-free lp) (cons category vars))

    lp ))


;;;-----------------------------------------------------
;;; The lattice point that soaks up the category per-se
;;;-----------------------------------------------------

(defun find-self-node (category)
  (let ((result (traverse-from-lattice-point-down-for
                 category (cat-lattice-position category))))
    (unless (consp result)
      (setq result (list result)))
    (dolist (node result nil)
      (when (typep node 'self-lattice-point)
        (return node)))))


(defun construct-self-lattice-point (category top-lp)
  (let ((node (get-lp 'self-lattice-point)))
    (setf (lp-variables-bound node) (list category))
    (setf (lp-variables-free node)
          (remove category (lp-variables-free top-lp)))
    (setf (lp-upward-pointers node) (list top-lp))
    (setf (lp-down-pointers node) nil)
    (index-node-to-top-point category node top-lp)
    (tr :make-self-lp top-lp)
    node))


(defun category-of-self-lattice-point (lp)
  (dolist (var (lp-variables-bound lp))
    (when (typep var 'referential-category)
      (return-from category-of-self-lattice-point var)))
  (break "Cannot locate the categor of the self-lattice-point~%~a" lp))


;;;-----------------------
;;; middle lattice-points
;;;-----------------------

;; Given a lattice-point, construct the node below it that
;; binds this particular variable

(defun new-lattice-point (starting-lattice-point variable
                          &optional
                          (top-lp (climb-lattice-to-top
                                   starting-lattice-point)))

  (let ((node (get-lp 'psi-lattice-point)))
    (setf (lp-variables-bound node)
          (cons variable (lp-variables-bound starting-lattice-point)))
    (setf (lp-variables-free node)
          (remove variable (lp-variables-free starting-lattice-point)))
    (setf (lp-down-pointers node) nil)
    (setf (lp-upward-pointers node) (list starting-lattice-point))
    (index-node-to-top-point variable node top-lp)
    (tr :created-lp-to-extend-lp-via-var
        node starting-lattice-point variable)
    node ))
   

;;;----------
;;; indexing
;;;----------

(defun cross-index-node-to-top-point (node top-lp)
  (dolist (var (lp-variables-bound node))
    (index-node-to-top-point var node top-lp)))

(defun index-node-to-top-point (variable node top-lp)
  ;; 1. put a value in the index-by-variable field
  (let ((field (lp-index-by-variable top-lp)))
    (if (null field)
      (setf (lp-index-by-variable top-lp)
            `( (,variable ,node) ))
      (let ((variable-entry (assoc variable field)))
        (if (null variable-entry)
          (setf (lp-index-by-variable top-lp)
                (cons `(,variable ,node) field))
          (rplacd variable-entry
                  (cons node (cdr variable-entry)))))))
  ;; 2. Set the down link
  (let ((down-links (lp-down-pointers top-lp)))
    (if (null down-links)
      ;; no downlinks before
      (setf (lp-down-pointers top-lp)
            `( (,variable . ,node) ))
      (let ((entry (assq variable down-links)))
        ;; no downlink for this variable
        (if (null entry)
          (push `(,variable . ,node)
                (lp-down-pointers top-lp))
          ;; no downlink from this variable to this sub-lattice-point
          (if (and (consp (cdr entry))
                   (null (memq node (cdr entry))))
            (rplacd (cdr entry)
                    (cons node (cdr entry)))
            (rplacd entry
                    (list node (cdr entry)))))))))

   


;;;------------------------
;;; clearing out a lattice
;;;------------------------

(defun clear-lattice (category)
  (let ((top-lp (cat-lattice-position category)))
    (reclaim-lattice (find-lp-daughter category top-lp))
    (setf (lp-index-by-variable top-lp) nil)))

(defun reclaim-lattice (top-lp)
  (when top-lp
    (dolist (lp (lp-down-pointers top-lp))
      (reclaim-lattice lp))
    (reclaim-lattice-point top-lp)))

(defun reclaim-lattice-point (lp)
  ;; Stub for when resources are used.
  (declare (ignore lp)))
