;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "treetop-records"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  April 2015

;; initiated 1/25/15. Next see 4/18/19

(in-package :sparser)

;;;--------------------------
;;; sentence-corpora defined
;;;--------------------------
;; Location is ignored right now 

(define-sentence-corpus dec-test *dec-tests*
  :location corpus
  :doc "Passages distributed December 16th, 2014 for extracting events")

(define-sentence-corpus dry-run *jan-dry-run*
  :location corpus
  :doc "two passages distributed January 5th, 2015")

(define-sentence-corpus overnight *overnight-sentences*
  :location corpus
  :doc "two short passages distributed at the PI meeting
    January 22d, 2015")

(define-sentence-corpus ERK *ERK-ABSTRACT*
  :location corpus
  :doc "material on ERK translocation to the nucleus")

(define-sentence-corpus aspp2 *aspp2-whole*
  :location corpus
  :doc "material from the article PMC3847091 Phosphorylation of ASPP2 by RAS/MAPK Pathway")                      

;;;-----------
;;; snapshots
;;;-----------

#| This file is automatically extended with the treetop snapshots
used for lightweight regression testing on named corpora. It should
be reaped periodically to remove earlier entries that are no long
relevant.  |#



;;___OVERNIGHT
(define-treetop-snapshot overnight "1/27/15 16:58:25"
 (1 . 5) (2 . 1) (3 . 20) (4 . 5) (5 . 3)
 (6 . 4) (7 . 2) (8 . 10) (9 . 16) (10 . 16)
 (11 . 9) (12 . 2) (13 . 4) (14 . 3) (15 . 11)
 (16 . 5) (17 . 6) (18 . 10) (19 . 6) (20 . 7))

(define-treetop-snapshot overnight "5/2/15 14:1:14"
  (1 . 5) (2 . 1) (3 . 12) (4 . 4) (5 . 1) (6 . 4) (7 . 2) (8 . 10)
  (9 . 13) (10 . 15) (11 . 9) (12 . 1) (13 . 1) (14 . 3) (15 . 9)
  (16 . 5) (17 . 6) (18 . 10) (19 . 6) (20 . 2))


;;___END OVERNIGHT

;;___DRY RUN
(define-treetop-snapshot dry-run "1/27/15 17:3:6"
 (1 . 1) (2 . 2) (3 . 6) (4 . 3) (5 . 4)
 (6 . 5) (7 . 13) (8 . 8) (9 . 6) (10 . 9)
 (11 . 3) (12 . 4) (13 . 9) (14 . 13) (15 . 5)
 (16 . 11) (17 . 3) (18 . 6) (19 . 8) (20 . 8)
 (21 . 6) (22 . 12) (23 . 5) (24 . 5) (25 . 3)
 (26 . 5) (27 . 6) (28 . 3) (29 . 3) (30 . 10)
 (31 . 2) (32 . 3) (33 . 5) (34 . 18) (35 . 4)
 (36 . 16) (37 . 1) (38 . 5) (39 . 2) (40 . 4)
 (41 . 12) (42 . 7))

(define-treetop-snapshot dry-run "4/16/15 23:45:2"
 (1 . 2) (2 . 5) (3 . 5) (4 . 1) (5 . 3) 
 (6 . 5) (7 . 11) (8 . 7) (9 . 1) (10 . 5)
 (11 . 3) (12 . 4) (13 . 10) (14 . 12) (15 . 4)
 (16 . 8) (17 . 3) (18 . 5) (19 . 6) (20 . 8)
 (21 . 2) (22 . 12) (23 . 4) (24 . 5) (25 . 2)
 (26 . 5) (27 . 6) (28 . 4) (29 . 2) (30 . 8)
 (31 . 2) (32 . 3) (33 . 5) (34 . 17) (35 . 4)
 (36 . 14) (37 . 1) (38 . 4) (39 . 1) (40 . 4)
 (41 . 12) (42 . 6))

(define-treetop-snapshot dry-run "4/18/15 13:12:34"
 (1 . 2) (2 . 3) (3 . 5) (4 . 1) (5 . 3)
 (6 . 7) (7 . 12) (8 . 7) (9 . 1) (10 . 5)
 (11 . 3) (12 . 4) (13 . 10) (14 . 12) (15 . 4)
 (16 . 8) (17 . 3) (18 . 5) (19 . 6) (20 . 8)
 (21 . 2) (22 . 12) (23 . 4) (24 . 5) (25 . 2)
 (26 . 5) (27 . 6) (28 . 4) (29 . 2) (30 . 8)
 (31 . 2) (32 . 3) (33 . 5) (34 . 17) (35 . 4)
 (36 . 14) (37 . 1) (38 . 4) (39 . 1) (40 . 4)
 (41 . 12) (42 . 6))

(define-treetop-snapshot dry-run "5/2/15 14:1:14"
  (1 . 1) (2 . 2) (3 . 5) (4 . 1) (5 . 3)
  (6 . 7) (7 . 12) (8 . 7) (9 . 1) (10 . 5) 
  (11 . 3) (12 . 4) (13 . 10) (14 . 12) (15 . 1) 
  (16 . 8) (17 . 1) (18 . 5) (19 . 6) (20 . 8) 
  (21 . 1) (22 . 11) (23 . 1) (24 . 5) (25 . 1)
  (26 . 5) (27 . 5) (28 . 4) (29 . 1) (30 . 6) 
  (31 . 1) (32 . 2) (33 . 5) (34 . 12) (35 . 4)
  (36 . 16) (37 . 1) (38 . 4) (39 . 1) (40 . 4) 
  (41 . 12) (42 . 6))

;;___END DRY RUN

;;___DEC TESt
(define-treetop-snapshot dec-test "1/27/15 17:36:30"
 (1 . 1) (2 . 8) (3 . 3) (4 . 3) (5 . 1)
 (6 . 7) (7 . 2) (8 . 3) (9 . 6) (10 . 3)
 (11 . 2) (12 . 4) (13 . 4) (14 . 10) (15 . 2)
 (16 . 3) (17 . 5) (18 . 17) (19 . 12) (20 . 19)
 (21 . 3) (22 . 14) (23 . 22) (24 . 19) (25 . 8)
 (26 . 6) (27 . 8) (28 . 7) (29 . 8) (30 . 1)
 (31 . 1) (32 . 8) (33 . 6) (34 . 8) (35 . 4)
 (36 . 15) (37 . 7) (38 . 11) (39 . 8) (40 . 6)
 (41 . 6) (42 . 9) (43 . 5) (44 . 4) (45 . 4)
 (46 . 8) (47 . 1) (48 . 7) (49 . 9) (50 . 6)
 (51 . 2) (52 . 8) (53 . 6) (54 . 2) (55 . 14)
 (56 . 6) (57 . 14))

(define-treetop-snapshot dec-test "4/18/15 13:14:36"
 (1 . 1) (2 . 7) (3 . 2) (4 . 3) (5 . 1)
 (6 . 6) (7 . 1) (8 . 1) (9 . 3) (10 . 1)
 (11 . 1) (12 . 1) (13 . 1) (14 . 11) (15 . 2)
 (16 . 3) (17 . 4) (18 . 16) (19 . 12) (20 . 19)
 (21 . 3) (22 . 9) (23 . 15) (24 . 18) (25 . 7)
 (26 . 5) (27 . 8) (28 . 3) (29 . 9) (30 . 1)
 (31 . 1) (32 . 8) (33 . 6) (34 . 7) (35 . 3)
 (36 . 15) (37 . 7) (38 . 11) (39 . 7) (40 . 6)
 (41 . 5) (42 . 5) (43 . 5) (44 . 4) (45 . 3)
 (46 . 6) (47 . 1) (48 . 4) (49 . 3) (50 . 1)
 (51 . 3) (52 . 9) (53 . 1) (54 . 1) (55 . 6)
 (56 . 1) (57 . 13))

(define-treetop-snapshot dec-test "4/16/15 23:47:2"
 (1 . 1) (2 . 7) (3 . 2) (4 . 3) (5 . 1)
 (6 . 6) (7 . 1) (8 . 1) (9 . 3) (10 . 1) 
 (11 . 1) (12 . 1) (13 . 1) (14 . 11) (15 . 2) 
 (16 . 3) (17 . 4) (18 . 16) (19 . 12) (20 . 19) 
 (21 . 3) (22 . 9) (23 . 15) (24 . 18) (25 . 7)
 (26 . 5) (27 . 8) (28 . 3) (29 . 9) (30 . 1)
 (31 . 1) (32 . 8) (33 . 6) (34 . 7) (35 . 3)
 (36 . 15) (37 . 7) (38 . 11) (39 . 7) (40 . 6)
 (41 . 5) (42 . 5) (43 . 5) (44 . 4) (45 . 3) 
 (46 . 6) (47 . 1) (48 . 4) (49 . 3) (50 . 1)
 (51 . 3) (52 . 9) (53 . 1) (54 . 1) (55 . 6)
 (56 . 1) (57 . 13))

(define-treetop-snapshot dec-test "5/2/15 14:1:14"
  (1 . 1) (2 . 7) (3 . 2) (4 . 3) (5 . 1) 
  (6 . 6) (7 . 1) (8 . 1) (9 . 3) (10 . 1) 
  (11 . 1) (12 . 1) (13 . 1) (14 . 11) (15 . 2)
  (16 . 3) (17 . 4) (18 . 16) (19 . 13) (20 . 19)
  (21 . 1) (22 . 8) (23 . 15) (24 . 18) (25 . 7)
  (26 . 4) (27 . 6) (28 . 3) (29 . 9) (30 . 1) 
  (31 . 1) (32 . 8) (33 . 5) (34 . 7) (35 . 3)
  (36 . 15) (37 . 7) (38 . 12) (39 . 6) (40 . 6) 
  (41 . 5) (42 . 5) (43 . 5) (44 . 4) (45 . 3) 
  (46 . 8) (47 . 1) (48 . 4) (49 . 3) (50 . 1)
  (51 . 3) (52 . 9) (53 . 1) (54 . 1) (55 . 7)
  (56 . 1) (57 . 13))

;;___END DEC TEST

;;___ERK
(define-treetop-snapshot erk "4/11/15 17:36:30"  
  (1 . 3) (2 . 4) (3 . 6) (4 . 4) (5 . 13) (6 . 4) 
  (7 . 17) (8 . 9) (9 . 9) (10 . 13) (11 . 8))

(define-treetop-snapshot erk "5/2/15 14:1:14" 
  (1 . 3) (2 . 1) (3 . 6) (4 . 4) (5 . 10) (6 . 1)
  (7 . 13) (8 . 9) (9 . 9) (10 . 11) (11 . 5))

;;___END ERK
