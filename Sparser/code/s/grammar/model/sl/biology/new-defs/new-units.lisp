(in-package :sparser)


(def-indiv-with-id unit-of-measure "mol" "UO:0000013" :name "mole" :maintain-case t) 
(def-indiv-with-id unit-of-measure "mmol" "UO:0000040" :name "millimole") 
(def-indiv-with-id unit-of-measure "umol" "UO:0000039" :name "micromole")
(def-indiv-with-id unit-of-measure "nmol" "UO:0000041" :name "nanomole")
(def-indiv-with-id unit-of-measure "pmol" "UO:0000042" :name "picomole") 
(def-indiv-with-id unit-of-measure "fmol" "UO:0000043" :name "femtomole")
(def-indiv-with-id unit-of-measure "amol" "UO:0000044" :name "attomole") 

(def-indiv-with-id unit-of-measure "Gram" "UO:0000021" :name "gram") 
(def-indiv-with-id unit-of-measure "mg" "UO:0000023" :name "microgram" :maintain-case t)
(def-indiv-with-id unit-of-measure "picogram" "UO:0000025" :name "picogram") 
(def-indiv-with-id unit-of-measure "ng" "UO:0000024" :name "nanogram") 

(def-indiv-with-id unit-of-measure "molar" "UO:0000062" :name "molar") 
(def-indiv-with-id unit-of-measure "mM" "UO:0000063" :name "millimolar" :maintain-case t) 
(def-indiv-with-id unit-of-measure "μM" "UO:0000064" :name "micromolar" :maintain-case t) 
(def-indiv-with-id unit-of-measure "nM" "UO:0000065" :name "nanomolar" :maintain-case t) 
(def-indiv-with-id unit-of-measure "pM" "UO:0000066" :name "picomolar" :maintain-case t) 

(def-indiv-with-id unit-of-measure "cm" "UO:0000015" :name "centimeter" :maintain-case t)
(def-indiv-with-id unit-of-measure "mm" "UO:0000016" :name "millimeter" :maintain-case t)
(def-indiv-with-id unit-of-measure "μm" "UO:0000017" :name "micrometer" :maintain-case t) 
(def-indiv-with-id unit-of-measure "nm" "UO:0000018" :name "nanometer" :maintain-case t)

(def-indiv-with-id unit-of-measure "mL" "UO:0000098" :name "milliliter" :synonyms ("millilitre" "ml") :maintain-case t)
(def-indiv-with-id unit-of-measure "nanoliter" "UO:0000102" :name "nanoliter") 
(def-indiv-with-id unit-of-measure "picoliter" "UO:0000103" :name "picoliter") 
(def-indiv-with-id unit-of-measure "femtoliter" "UO:0000104" :name "femtoliter") 

(def-indiv-with-id unit-of-measure "ng/ml" "UO:0000275" :name "nanogram per milliliter") 
(def-indiv-with-id unit-of-measure "g/l" "UO:0000175" :name "gram per liter" :maintain-case t) 
(def-indiv-with-id unit-of-measure "CFU" "UO:0000210" :name "colony forming unit" :maintain-case t) 

(eval `(def-indiv-with-id unit-of-measure "angstrom" "UO:0000019"
                          :name "angstrom"
                          :synonyms (,(format nil "~a" #\LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE))))

(def-indiv-with-id unit-of-measure "Gray" "UO:0000134" :name "Gray") 
(def-indiv-with-id unit-of-measure "mGy" "UO:0000142" :name "milligray" :maintain-case t) 

(def-indiv-with-id unit-of-measure "Da" "UO:0000221" :name "dalton" :maintain-case t)
(def-indiv-with-id unit-of-measure "kDa" "UO:0000222" :name "kilodalton" :maintain-case t :synonyms ("kD"))

(def-indiv-with-id unit-of-measure "NSV" "UO:0000144" :name "nanosievert" :maintain-case t) 
(def-indiv-with-id unit-of-measure "Pascal" "UO:0000110" :name "pascal") 
(def-indiv-with-id unit-of-measure "Tesla" "UO:0000228" :name "tesla") 
(def-indiv-with-id unit-of-measure "Weber" "UO:0000226" :name "weber") 
(def-indiv-with-id unit-of-measure "mCi" "UO:0000145" :name "millicurie" :maintain-case t) 
(def-indiv-with-id unit-of-measure "lux" "UO:0000116" :name "lux" :maintain-case t) 
(def-indiv-with-id unit-of-measure "kbps" "UO:0000328" :name "kilobasepair") 
(def-indiv-with-id unit-of-measure "rad" "UO:0000135" :name "rad" :maintain-case t) 
(def-indiv-with-id unit-of-measure "ppm" "UO:0000169" :name "parts per million" :maintain-case t) 
(def-indiv-with-id unit-of-measure "ppb" "UO:0000170" :name "parts per billion" :maintain-case t) 
(def-indiv-with-id unit-of-measure "Siemens" "UO:0000264" :name "siemens") 
(def-indiv-with-id unit-of-measure "mmHg" "UO:0000272" :name "millimetres of mercury") 
(def-indiv-with-id unit-of-measure "kV" "UO:0000248" :name "kilovolt" :maintain-case t)
(def-indiv-with-id unit-of-measure "mA" "UO:0000037" :name "milliampere" :maintain-case t)
(def-indiv-with-id unit-of-measure "mV" "UO:0000247" :name "millivolt" :maintain-case t)
(def-indiv-with-id unit-of-measure "cpm" "UO:0000148" :name "counts per minute" :maintain-case t :synonyms ("c.p.m.")) ;"c.p.m./pmol" activity of a radionuclide
(def-indiv-with-id unit-of-measure "pH" "UO:0000196" :name "pH" :maintain-case t)

