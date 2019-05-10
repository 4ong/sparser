

___________________
0: "What genes does mir-128 regulate?"

                    SOURCE-START
e10   REGULATE      1 "What genes does mir-128 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does mir-128 regulate?"
 (:VAR MV5 :ISA REGULATE :OBJECT MV2 :AGENT MV6 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6 :ISA BIO-ENTITY :NAME "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c regulate?"
 (:VAR MV11 :ISA REGULATE :OBJECT MV7 :AGENT MV8 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV7 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV8 :ISA MICRO-RNA :RAW-TEXT "miR-200c" :NAME "MIR200C" :UID
  "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV13 :ISA TELL :THEME MV17 :THEME MV14 :PRESENT "PRESENT")
 (:VAR MV17 :ISA INVOLVE :THEME MV19 :PARTICIPANT MV16)
 (:VAR MV19 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV16 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV14 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV24 :ISA BE :SUBJECT MV23 :PREDICATE MV26 :PRESENT "PRESENT")
 (:VAR MV23 :ISA WHAT)
 (:VAR MV26 :ISA GENE :PREDICATION MV28 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV28 :ISA HAVE :POSSESSOR MV26 :THAT-REL T :THING-POSSESSED MV30
  :PRESENT "PRESENT")
 (:VAR MV30 :ISA EVIDENCE :FACT MV33 :PREDICATION MV29)
 (:VAR MV33 :ISA REGULATE :AGENT MV22 :PROGRESSIVE MV32 :RAW-TEXT "regulated")
 (:VAR MV22 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID
  "MIMAT0000421")
 (:VAR MV32 :ISA BE) (:VAR MV29 :ISA STRONG))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV39 :ISA BE :SUBJECT MV38 :PREDICATE MV41 :PRESENT "PRESENT")
 (:VAR MV38 :ISA WHAT) (:VAR MV41 :ISA INVOLVE :THEME MV43 :PARTICIPANT MV40)
 (:VAR MV43 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV40 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV47 :ISA BE :SUBJECT MV46 :PREDICATE MV49 :PRESENT "PRESENT")
 (:VAR MV46 :ISA WHAT) (:VAR MV49 :ISA ROLE :PROCESS MV51 :PARTICIPANT MV48)
 (:VAR MV51 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV48 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV55 :ISA BE :SUBJECT MV54 :PREDICATE MV57 :PRESENT "PRESENT")
 (:VAR MV54 :ISA WHAT) (:VAR MV57 :ISA ROLE :PROCESS MV61 :PARTICIPANT MV56)
 (:VAR MV61 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV59 :RAW-TEXT
  "regulation")
 (:VAR MV59 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV56 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV66 :ISA BE :SUBJECT MV65 :PREDICATE MV72 :PRESENT "PRESENT")
 (:VAR MV65 :ISA WHAT)
 (:VAR MV72 :ISA EVIDENCE :STATEMENT MV71 :HAS-DETERMINER "THE")
 (:VAR MV71 :ISA TARGET :AGENT MV63 :OBJECT MV64 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV63 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p"
  :UID "MIMAT0000243")
 (:VAR MV64 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME
  "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV77 :ISA REGULATE :OBJECT MV73 :AGENT MV74 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV73 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV74 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID
  "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV82 :ISA REGULATE :OBJECT MV78 :AGENT MV79 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV78 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV79 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p"
  :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV86 :ISA BE :SUBJECT MV85 :PREDICATE MV89 :PRESENT "PRESENT")
 (:VAR MV85 :ISA WHAT)
 (:VAR MV89 :ISA SIGNIFICANCE :AGENT MV83 :HAS-DETERMINER "THE" :MODIFIER MV88)
 (:VAR MV83 :ISA PROTEIN :CONTEXT MV84 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV84 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV88 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV97 :ISA BE :SUBJECT MV96 :PREDICATE MV100 :PRESENT "PRESENT")
 (:VAR MV96 :ISA WHAT)
 (:VAR MV100 :ISA SIGNIFICANCE :RESULT MV95 :AGENT MV94 :HAS-DETERMINER "THE"
  :MODIFIER MV99)
 (:VAR MV95 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV94 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV99 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
12: "What are synonyms for BRAF?"

                    SOURCE-START
e9    BE            1 "What are synonyms for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for BRAF?"
 (:VAR MV106 :ISA BE :SUBJECT MV105 :PREDICATE MV107 :PRESENT "PRESENT")
 (:VAR MV105 :ISA WHAT) (:VAR MV107 :ISA HAS-SYNONYM :ITEM MV109)
 (:VAR MV109 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are mutated in breast cancer?"
 (:VAR MV113 :ISA BE :SUBJECT MV112 :PREDICATE MV115 :PRESENT "PRESENT")
 (:VAR MV112 :ISA WHAT)
 (:VAR MV115 :ISA GENE :PREDICATION MV120 :QUANTIFIER MV114 :RAW-TEXT "genes")
 (:VAR MV120 :ISA MUTATION :OBJECT MV115 :THAT-REL T :CONTEXT MV111 :PRESENT
  "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV111 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV114 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV128 :ISA MUTATION :OBJECT MV124 :CONTEXT MV122 :PRESENT "PRESENT"
  :RAW-TEXT "mutated")
 (:VAR MV124 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV122 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?"
 (:VAR MV141 :ISA POLAR-QUESTION :STATEMENT MV139)
 (:VAR MV139 :ISA BIO-ACTIVATE :AGENT MV132 :OBJECT MV130 :RAW-TEXT "activate")
 (:VAR MV132 :ISA PHOSPHORYLATE :SITE MV138 :RAW-TEXT "phosphorylation")
 (:VAR MV138 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV136
  :AMINO-ACID MV135)
 (:VAR MV136 :ISA NUMBER :VALUE 221)
 (:VAR MV135 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV130 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?"
 (:VAR MV153 :ISA POLAR-QUESTION :STATEMENT MV151)
 (:VAR MV151 :ISA BIO-ACTIVATE :AGENT MV144 :OBJECT MV142 :RAW-TEXT "activate")
 (:VAR MV144 :ISA PHOSPHORYLATE :SITE MV150 :RAW-TEXT "phosphorylation")
 (:VAR MV150 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV148
  :AMINO-ACID MV147)
 (:VAR MV148 :ISA NUMBER :VALUE 222)
 (:VAR MV147 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV142 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV156 :ISA SIMULATE :OBJECT MV160 :PRESENT "PRESENT" :RAW-TEXT
  "Simulate")
 (:VAR MV160 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV155 :COMPONENT MV154)
 (:VAR MV155 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV154 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV162 :ISA BE :SUBJECT MV161 :PREDICATE MV164 :PRESENT "PRESENT")
 (:VAR MV161 :ISA WHAT)
 (:VAR MV164 :ISA MEMBER :SET MV166 :HAS-DETERMINER "THE")
 (:VAR MV166 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
19: "What are the members of MEK?"

                    SOURCE-START
e12   BE            1 "What are the members of MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of MEK?"
 (:VAR MV169 :ISA BE :SUBJECT MV168 :PREDICATE MV171 :PRESENT "PRESENT")
 (:VAR MV168 :ISA WHAT)
 (:VAR MV171 :ISA MEMBER :SET MV173 :HAS-DETERMINER "THE")
 (:VAR MV173 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
20: "What are the members of RAF?"

                    SOURCE-START
e12   BE            1 "What are the members of RAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAF?"
 (:VAR MV176 :ISA BE :SUBJECT MV175 :PREDICATE MV178 :PRESENT "PRESENT")
 (:VAR MV175 :ISA WHAT)
 (:VAR MV178 :ISA MEMBER :SET MV180 :HAS-DETERMINER "THE")
 (:VAR MV180 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
21: "What are the members of the RAF family?"

                    SOURCE-START
e18   BE            1 "What are the members of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of the RAF family?"
 (:VAR MV183 :ISA BE :SUBJECT MV182 :PREDICATE MV185 :PRESENT "PRESENT")
 (:VAR MV182 :ISA WHAT)
 (:VAR MV185 :ISA MEMBER :SET MV191 :HAS-DETERMINER "THE")
 (:VAR MV191 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
22: "What are the members of the RAS family?"

                    SOURCE-START
e16   BE            1 "What are the members of the RAS family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of the RAS family?"
 (:VAR MV195 :ISA BE :SUBJECT MV194 :PREDICATE MV197 :PRESENT "PRESENT")
 (:VAR MV194 :ISA WHAT)
 (:VAR MV197 :ISA MEMBER :SET MV193 :HAS-DETERMINER "THE")
 (:VAR MV193 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family"
  :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
23: "What is another name for BRAF?"

                    SOURCE-START
e13   BE            1 "What is another name for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for BRAF?"
 (:VAR MV202 :ISA BE :SUBJECT MV201 :PREDICATE MV205 :PRESENT "PRESENT")
 (:VAR MV201 :ISA WHAT)
 (:VAR MV205 :ISA HAS-NAME :ITEM MV208 :QUANTIFIER MV203)
 (:VAR MV208 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV203 :ISA ANOTHER :WORD "another"))

___________________
24: "What is another name for MAP2K1?"

                    SOURCE-START
e14   BE            1 "What is another name for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for MAP2K1?"
 (:VAR MV212 :ISA BE :SUBJECT MV211 :PREDICATE MV215 :PRESENT "PRESENT")
 (:VAR MV211 :ISA WHAT)
 (:VAR MV215 :ISA HAS-NAME :ITEM MV210 :QUANTIFIER MV213)
 (:VAR MV210 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV213 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV223 :ISA AFFECT :MANNER MV221 :AGENT MV219 :OBJECT MV220 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV221 :ISA HOW)
 (:VAR MV219 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV220 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1"
 (:VAR MV225 :ISA LIST :THEME MV227 :PRESENT "PRESENT")
 (:VAR MV227 :ISA GENE :PREDICATION MV228 :QUANTIFIER MV226 :RAW-TEXT "genes")
 (:VAR MV228 :ISA REGULATE :OBJECT MV227 :AGENT MV224 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV224 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV226 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1"
 (:VAR MV232 :ISA LIST :THEME MV236 :PRESENT "PRESENT")
 (:VAR MV236 :ISA GENE :PREDICATION MV237 :QUANTIFIER MV233 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV237 :ISA REGULATE :OBJECT MV236 :AGENT MV231 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV231 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV233 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1"
 (:VAR MV243 :ISA LIST :THEME MV245 :PRESENT "PRESENT")
 (:VAR MV245 :ISA GENE :PREDICATION MV246 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV246 :ISA REGULATE :OBJECT MV245 :AGENT MV242 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV242 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV251 :ISA BE :SUBJECT MV250 :PREDICATE MV256 :PRESENT "PRESENT")
 (:VAR MV250 :ISA WHAT)
 (:VAR MV256 :ISA REGULATOR :THEME MV260 :HAS-DETERMINER "THE" :PREDICATION
  MV253 :CONTEXT MV254 :RAW-TEXT "regulators")
 (:VAR MV260 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV249 MV259))
 (:VAR MV249 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV259 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV253 :ISA COMMON)
 (:VAR MV254 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV263 :ISA BE :SUBJECT MV262 :PREDICATE MV266 :PRESENT "PRESENT")
 (:VAR MV262 :ISA WHAT)
 (:VAR MV266 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV271 :HAS-DETERMINER
  "THE" :PREDICATION MV265 :RAW-TEXT "upstreams")
 (:VAR MV271 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV268 MV270))
 (:VAR MV268 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066")
 (:VAR MV270 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV265 :ISA COMMON))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV275 :ISA BE :SUBJECT MV274 :PREDICATE MV278 :PRESENT "PRESENT")
 (:VAR MV274 :ISA WHAT)
 (:VAR MV278 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV282 :HAS-DETERMINER
  "THE" :PREDICATION MV277 :RAW-TEXT "upstreams")
 (:VAR MV282 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV273 MV281))
 (:VAR MV273 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV281 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV277 :ISA COMMON))

___________________
32: "What are the genes that smad2 regulates?"

                    SOURCE-START
e16   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV286 :ISA BE :SUBJECT MV285 :PREDICATE MV288 :PRESENT "PRESENT")
 (:VAR MV285 :ISA WHAT)
 (:VAR MV288 :ISA GENE :PREDICATION MV290 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV290 :ISA REGULATE :OBJECT MV288 :THAT-REL T :AGENT MV284 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV284 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV295 :ISA BE :SUBJECT MV294 :PREDICATE MV297 :PRESENT "PRESENT")
 (:VAR MV294 :ISA WHAT)
 (:VAR MV297 :ISA MICRO-RNA :PREDICATION MV299 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV299 :ISA REGULATE :AGENT MV297 :THAT-REL T :OBJECT MV303 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV303 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE
  PROTEIN :NUMBER 5 :ITEMS (MV300 MV301 MV291 MV292 MV293))
 (:VAR MV300 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV301 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV291 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV292 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV293 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV306 :ISA BE :SUBJECT MV305 :PREDICATE MV308 :PRESENT "PRESENT")
 (:VAR MV305 :ISA WHAT)
 (:VAR MV308 :ISA MICRO-RNA :PREDICATION MV310 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV310 :ISA REGULATE :AGENT MV308 :THAT-REL T :OBJECT MV314 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV314 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV311 MV312 MV304))
 (:VAR MV311 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV312 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV304 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV316 :ISA BE :SUBJECT MV315 :PREDICATE MV318 :PRESENT "PRESENT")
 (:VAR MV315 :ISA WHAT)
 (:VAR MV318 :ISA REGULATOR :THEME MV320 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV320 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV325 :ISA REGULATE :OBJECT MV323 :AGENT MV322 :ORGAN MV328 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV323 :ISA WHAT)
 (:VAR MV322 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV328 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV333 :ISA REGULATE :OBJECT MV330 :AGENT-OR-CAUSE MV332 :ORGAN MV336
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV330 :ISA WHAT) (:VAR MV332 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV336 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV344 :ISA REGULATE :OBJECT MV340 :AGENT MV338 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV340 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV338 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV354 :ISA REGULATE :OBJECT MV347 :AGENT MV353 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV347 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV353 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV362 :ISA REGULATE :OBJECT MV357 :AGENT MV361 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV357 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV361 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV371 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV367 :AGENT MV364
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV367 :ISA THESE :QUANTIFIER MV365 :WORD "these")
 (:VAR MV365 :ISA WHICH)
 (:VAR MV364 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV381 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV377 :AGENT MV374
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV377 :ISA THESE :QUANTIFIER MV375 :WORD "these")
 (:VAR MV375 :ISA WHICH) (:VAR MV374 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
43: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV387 :ISA BIO-USE :AGENT MV385 :OBJECT MV388 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV385 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV388 :ISA THESE :WORD "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV393 :ISA REGULATE :LOCATION MV391 :AGENT MV389 :AFFECTED-PROCESS MV395
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV391 :ISA WHERE)
 (:VAR MV389 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV395 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV390 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV390 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV415 :ISA POLAR-QUESTION :STATEMENT MV402)
 (:VAR MV402 :ISA TELL :AGENT MV401 :THEME MV398 :BENEFICIARY MV403 :MODAL
  "CAN")
 (:VAR MV401 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV398 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV413 :QUANTIFIER MV404
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV413 :ISA SHARE :OBJECT MV398 :THAT-REL T :PARTICIPANT MV412 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV412 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV399 MV411))
 (:VAR MV399 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV411 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV404 :ISA ALL :WORD "all")
 (:VAR MV403 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV431 :ISA POLAR-QUESTION :STATEMENT MV420)
 (:VAR MV420 :ISA TELL :AGENT MV419 :THEME MV429 :THEME MV421 :MODAL "CAN")
 (:VAR MV419 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV429 :ISA SHARE :OBJECT MV416 :PARTICIPANT MV428 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV416 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV428 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV417 MV427))
 (:VAR MV417 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV427 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV421 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV433 :ISA BE :SUBJECT MV432 :PREDICATE MV435 :PRESENT "PRESENT")
 (:VAR MV432 :ISA WHAT)
 (:VAR MV435 :ISA REGULATOR :THEME MV437 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV437 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV442 :ISA REGULATE :OBJECT MV439 :AGENT MV441 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV439 :ISA WHAT)
 (:VAR MV441 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?"
 (:VAR MV444 :ISA BE :SUBJECT MV443 :PREDICATE MV445 :PRESENT "PRESENT")
 (:VAR MV443 :ISA WHAT)
 (:VAR MV445 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV453 :ISA POLAR-QUESTION :STATEMENT MV452)
 (:VAR MV452 :ISA INVOLVE :THEME MV446 :THEME MV450 :PAST "PAST")
 (:VAR MV446 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV450 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV463 :ISA POLAR-QUESTION :STATEMENT MV462)
 (:VAR MV462 :ISA INVOLVE :THEME MV454 :THEME MV460 :PAST "PAST")
 (:VAR MV454 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV460 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV458 :RAW-TEXT
  "regulation")
 (:VAR MV458 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV472 :ISA POLAR-QUESTION :STATEMENT MV471)
 (:VAR MV471 :ISA INVOLVE :THEME MV464 :THEME MV468 :PAST "PAST")
 (:VAR MV464 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV468 :ISA REGULATE :AFFECTED-PROCESS MV469 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV469 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV481 :ISA REGULATE :OBJECT MV477 :AGENT MV473 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV477 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV475 :RAW-TEXT
  "genes")
 (:VAR MV475 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV473 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV483 :ISA LIST :THEME MV487 :PRESENT "PRESENT")
 (:VAR MV487 :ISA GENE :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV485 :RAW-TEXT
  "genes")
 (:VAR MV485 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV497 :ISA INVOLVE :THEME MV490 :THEME MV496 :PRESENT "PRESENT")
 (:VAR MV490 :ISA GENE :PREDICATION MV491 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV491 :ISA REGULATE :OBJECT MV490 :AGENT MV488 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV488 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV496 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV501 :ISA LIST :THEME MV502 :PRESENT "PRESENT")
 (:VAR MV502 :ISA GENE :PREDICATION MV503 :RAW-TEXT "genes")
 (:VAR MV503 :ISA REGULATE :OBJECT MV502 :AGENT MV500 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV500 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV512 :ISA INVOLVE :THEME MV507 :THEME MV511 :PRESENT "PRESENT")
 (:VAR MV507 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV511 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV523 :ISA INVOLVE :THEME MV516 :THEME MV522 :PRESENT "PRESENT")
 (:VAR MV516 :ISA GENE :PREDICATION MV518 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV518 :ISA REGULATE :OBJECT MV516 :THAT-REL T :AGENT MV514 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV514 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV522 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV526 :ISA LIST :THEME MV528 :PRESENT "PRESENT")
 (:VAR MV528 :ISA GENE :PREDICATION MV529 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV529 :ISA REGULATE :OBJECT MV528 :AGENT MV525 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV525 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV533 :ISA LIST :THEME MV536 :PRESENT "PRESENT")
 (:VAR MV536 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV535 :RAW-TEXT
  "genes")
 (:VAR MV535 :ISA REGULATE :OBJECT MV536 :AGENT MV532 :RAW-TEXT "regulated")
 (:VAR MV532 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV543 :ISA REGULATE :OBJECT MV539 :AGENT MV537 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV539 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV537 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV551 :ISA INVOLVE :THEME MV546 :THEME MV550 :PRESENT "PRESENT")
 (:VAR MV546 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV550 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
63: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e17   IN            1 "What STAT3 regulated genes are involved in aptosis" 10
                    END-OF-SOURCE
("What STAT3 regulated genes are involved in aptosis"
 (:VAR MV563 :ISA WH-QUESTION :STATEMENT MV562 :VAR NIL :WH WHAT)
 (:VAR MV562 :ISA PREPOSITIONAL-PHRASE :POBJ MV560 :PREP "IN")
 (:VAR MV560 :ISA APTOSIS))

___________________
64: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV565 :ISA LET :COMPLEMENT MV582 :PRESENT "PRESENT")
 (:VAR MV582 :ISA KNOW :AGENT MV566 :STATEMENT MV581 :PRESENT "PRESENT")
 (:VAR MV566 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV581 :ISA WH-QUESTION :STATEMENT MV578 :WH IF)
 (:VAR MV578 :ISA INVOLVE :THEME MV572 :THEME MV577 :PRESENT "PRESENT")
 (:VAR MV572 :ISA GENE :QUANTIFIER MV569 :PREDICATION MV573 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV569 :ISA ANY :WORD "any")
 (:VAR MV573 :ISA REGULATE :OBJECT MV572 :AGENT MV564 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV564 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV577 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV584 :ISA LET :COMPLEMENT MV602 :PRESENT "PRESENT")
 (:VAR MV602 :ISA KNOW :AGENT MV585 :STATEMENT MV601 :PRESENT "PRESENT")
 (:VAR MV585 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV601 :ISA WH-QUESTION :STATEMENT MV598 :WH WHETHER)
 (:VAR MV598 :ISA INVOLVE :THEME MV592 :THEME MV597 :PRESENT "PRESENT")
 (:VAR MV592 :ISA GENE :QUANTIFIER MV589 :PREDICATION MV593 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV589 :ISA ANY :WORD "any")
 (:VAR MV593 :ISA REGULATE :OBJECT MV592 :AGENT MV583 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV583 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV597 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "Look up which genes targeted by stat3 are involved in apoptosis"

                    SOURCE-START
e24   LOOK-UP       1 "Look up which " 4
e22   INVOLVE       4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE
                    SOURCE-START
e24   VG            1 "Look up which " 4
e22   S             4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE


___________________
67: "Tell me how stat3 is involved in apoptosis"

                    SOURCE-START
e15   TELL          1 "Tell me " 3
e14   INVOLVE       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
                    SOURCE-START
e15   VG            1 "Tell me " 3
e14   HOWCOMP       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE


___________________
68: "Tell me if stat3 is involved in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me if stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me if stat3 is involved in apoptosis"
 (:VAR MV632 :ISA TELL :THEME MV641 :BENEFICIARY MV633 :PRESENT "PRESENT")
 (:VAR MV641 :ISA WH-QUESTION :STATEMENT MV639 :WH IF)
 (:VAR MV639 :ISA INVOLVE :THEME MV631 :THEME MV638 :PRESENT "PRESENT")
 (:VAR MV631 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV638 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV633 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV643 :ISA TELL :THEME MV653 :THEME MV644 :PRESENT "PRESENT")
 (:VAR MV653 :ISA WH-QUESTION :STATEMENT MV651 :WH WHETHER)
 (:VAR MV651 :ISA INVOLVE :THEME MV642 :THEME MV650 :PRESENT "PRESENT")
 (:VAR MV642 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV650 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV644 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV656 :ISA BE :SUBJECT MV655 :PREDICATE MV658 :PRESENT "PRESENT")
 (:VAR MV655 :ISA WHAT)
 (:VAR MV658 :ISA GENE :PREDICATION MV664 :EXPRESSES MV654 :PREDICATION MV657
  :RAW-TEXT "genes")
 (:VAR MV664 :ISA INVOLVE :THEME MV658 :THAT-REL T :THEME MV663 :PRESENT
  "PRESENT")
 (:VAR MV663 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV654 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV657 :ISA REGULATE :OBJECT MV658 :RAW-TEXT "regulated"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV668 :ISA BE :SUBJECT MV667 :PREDICATE MV670 :PRESENT "PRESENT")
 (:VAR MV667 :ISA WHAT)
 (:VAR MV670 :ISA GENE :PREDICATION MV676 :EXPRESSES MV666 :PREDICATION MV669
  :RAW-TEXT "genes")
 (:VAR MV676 :ISA INVOLVE :THEME MV670 :THAT-REL T :THEME MV675 :PRESENT
  "PRESENT")
 (:VAR MV675 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV666 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV669 :ISA REGULATE :OBJECT MV670 :RAW-TEXT "regulated"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV688 :ISA INVOLVE :THEME MV681 :THEME MV687 :PRESENT "PRESENT")
 (:VAR MV681 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV678 :HAS-DETERMINER
  "WHAT" :MODIFIER MV680 :RAW-TEXT "downstream")
 (:VAR MV678 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV680 :ISA GENE :RAW-TEXT "genes")
 (:VAR MV687 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV693 :ISA BE :SUBJECT MV692 :PREDICATE MV695 :PRESENT "PRESENT")
 (:VAR MV692 :ISA WHAT)
 (:VAR MV695 :ISA INVOLVE :THEME MV700 :PARTICIPANT MV691 :HAS-DETERMINER
  "THE")
 (:VAR MV700 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV698 :RAW-TEXT
  "regulation")
 (:VAR MV698 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV691 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV705 :ISA INVOLVE :THEME MV704 :THEME MV706 :PRESENT "PRESENT")
 (:VAR MV704 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV706 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
75: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV710 :ISA INVOLVE :THEME MV708 :THEME MV711 :PRESENT "PRESENT")
 (:VAR MV708 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV711 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV720 :ISA INVOLVE :THEME MV715 :THEME MV719 :PRESENT "PRESENT")
 (:VAR MV715 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV714 :RAW-TEXT
  "genes")
 (:VAR MV714 :ISA REGULATE :OBJECT MV715 :AGENT MV712 :RAW-TEXT "regulated")
 (:VAR MV712 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV719 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV733 :ISA INVOLVE :THEME MV725 :THEME MV732 :PRESENT "PRESENT")
 (:VAR MV725 :ISA GENE :ORGAN MV728 :HAS-DETERMINER "WHICH" :PREDICATION MV724
  :RAW-TEXT "genes")
 (:VAR MV728 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV724 :ISA REGULATE :OBJECT MV725 :AGENT MV722 :RAW-TEXT "regulated")
 (:VAR MV722 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV732 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV744 :ISA INVOLVE :THEME MV739 :THEME MV743 :PRESENT "PRESENT")
 (:VAR MV739 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV738 :RAW-TEXT
  "genes")
 (:VAR MV738 :ISA REGULATE :OBJECT MV739 :AGENT MV736 :RAW-TEXT "regulated")
 (:VAR MV736 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV743 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV748 :ISA BIO-ACTIVATE :AGENT MV747 :OBJECT MV746 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV747 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV746 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV750 :ISA BIO-ACTIVATE :AGENT MV749 :OBJECT MV751 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV749 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV751 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
81: "MAPK1 phosphorylates ELK1"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAPK1 phosphorylates ELK1" 6
                    END-OF-SOURCE
("MAPK1 phosphorylates ELK1"
 (:VAR MV754 :ISA PHOSPHORYLATE :AGENT MV752 :SUBSTRATE MV753 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV752 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV753 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV757 :ISA DEPHOSPHORYLATE :AGENT MV755 :SUBSTRATE MV756 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV755 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV756 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV759 :ISA UPREGULATE :AGENT MV758 :OBJECT MV760 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV758 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV760 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV764 :ISA BINDING :BINDER MV763 :DIRECT-BINDEE MV767 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV763 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV767 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV762 :MODIFIER MV766
  :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV762 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV766 :ISA LIGAND :RAW-TEXT "ligand"))

___________________
85: "revert that"

                    SOURCE-START
e0    REVERT        1 "revert " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE
                    SOURCE-START
e0    VG            1 "revert " 2
e2    DET           2 "that" 3
                    END-OF-SOURCE


___________________
86: "The EGFR-EGF complex binds another EGFR-EGF complex."

                    SOURCE-START
e19   BINDING       1 "The EGFR-EGF complex binds another EGFR-EGF complex" 12
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGF complex binds another EGFR-EGF complex."
 (:VAR MV774 :ISA BINDING :BINDER MV781 :DIRECT-BINDEE MV782 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV781 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV772 :COMPONENT MV771)
 (:VAR MV772 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV771 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV782 :ISA BIO-COMPLEX :QUANTIFIER MV775 :RAW-TEXT "EGFR-EGF" :COMPONENT
  MV777 :COMPONENT MV776)
 (:VAR MV775 :ISA ANOTHER :WORD "another")
 (:VAR MV777 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV776 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV788 :ISA BINDING :BINDER MV790 :DIRECT-BINDEE MV783 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV790 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV785 :COMPONENT MV785)
 (:VAR MV785 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV783 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
88: "undo that"

                    SOURCE-START
e0    UNDO          1 "undo " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE
                    SOURCE-START
e0    VG            1 "undo " 2
e2    DET           2 "that" 3
                    END-OF-SOURCE


___________________
89: "EGFR-bound GRB2 binds SOS1."

                    SOURCE-START
e12   BINDING       1 "EGFR-bound GRB2 binds SOS1" 9
                    PERIOD
                    END-OF-SOURCE
("EGFR-bound GRB2 binds SOS1."
 (:VAR MV797 :ISA BINDING :BINDER MV793 :DIRECT-BINDEE MV794 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV793 :ISA PROTEIN :PREDICATION MV796 :RAW-TEXT "GRB2" :UID "UP:P62993"
  :NAME "GRB2_HUMAN")
 (:VAR MV796 :ISA BINDING :DIRECT-BINDEE MV793 :BINDER MV795 :RAW-TEXT "bound")
 (:VAR MV795 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV794 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV801 :ISA BINDING :BINDER MV799 :DIRECT-BINDEE MV802 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV799 :ISA PROTEIN :PREDICATION MV800 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV800 :ISA BINDING :DIRECT-BINDEE MV799 :BINDER MV798 :RAW-TEXT "bound")
 (:VAR MV798 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV802 :ISA PROTEIN :PREDICATION MV809 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV809 :ISA BINDING :DIRECT-BINDEE MV802 :THAT-REL T :BINDEE MV808
  :PRESENT "PRESENT" :NEGATION MV805 :RAW-TEXT "bound")
 (:VAR MV808 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV805 :ISA NOT :WORD "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV814 :ISA BINDING :BINDER MV813 :DIRECT-BINDEE MV815 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV813 :ISA PROTEIN :PREDICATION MV812 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV812 :ISA BINDING :DIRECT-BINDEE MV813 :BINDER MV811 :RAW-TEXT "bound")
 (:VAR MV811 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV815 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV825 :ISA BINDING :BINDER MV819 :DIRECT-BINDEE MV826 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV819 :ISA PROTEIN :PREDICATION MV827 :PREDICATION MV818 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV827 :ISA BINDING :DIRECT-BINDEE MV819 :THAT-REL T :BINDEE MV816
  :PRESENT "PRESENT" :NEGATION MV822 :RAW-TEXT "bound")
 (:VAR MV816 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV822 :ISA NOT :WORD "not")
 (:VAR MV818 :ISA BINDING :DIRECT-BINDEE MV819 :BINDER MV817 :RAW-TEXT "bound")
 (:VAR MV817 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV826 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
93: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV829 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV834 :ISA AFFECT :MANNER MV831 :AGENT MV833 :OBJECT MV830 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV831 :ISA HOW)
 (:VAR MV833 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV830 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV843 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV837 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV837 :ISA HIGHLIGHT :THEME MV839 :PRESENT "PRESENT")
 (:VAR MV839 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV836 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV836 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV852 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV846 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV846 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV850 :THEME MV845 :PRESENT
  "PRESENT")
 (:VAR MV850 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV845 :ISA PROTEIN :PREDICATION MV847 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV847 :ISA PHOSPHORYLATE :SUBSTRATE MV845 :RAW-TEXT "phosphorylated"))

___________________
97: "Let's put AKT1, MAPK1 into mitochondrion."

                    SOURCE-START
e13   EXPLICIT-SUGGESTION 1 "Let's put AKT1" 7
e8                  "COMMA"
e5    PROTEIN       8 "MAPK1 " 10
e11   INTO          10 "into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e13   S             1 "Let's put AKT1" 7
e8                  "COMMA"
e5    PROPER-NOUN   8 "MAPK1 " 10
e11   PP            10 "into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE


___________________
98: "Let's show AKT1 on the top."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's show AKT1 on the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's show AKT1 on the top."
 (:VAR MV869 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV864 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV864 :ISA SHOW :AT-RELATIVE-LOCATION MV867 :STATEMENT-OR-THEME MV863
  :PRESENT "PRESENT")
 (:VAR MV867 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV863 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV880 :ISA POLAR-QUESTION :STATEMENT MV878)
 (:VAR MV878 :ISA DECREASE :AGENT MV870 :OBJECT MV874 :RAW-TEXT "decrease")
 (:VAR MV870 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV874 :ISA PROTEIN :INFO-CONTEXT MV877 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV877 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV895 :ISA POLAR-QUESTION :STATEMENT MV892)
 (:VAR MV892 :ISA DECREASE :AGENT MV881 :AFFECTED-PROCESS-OR-OBJECT MV886
  :RAW-TEXT "decrease")
 (:VAR MV881 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV886 :ISA BIO-AMOUNT :MEASURED-ITEM MV888 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV888 :ISA PROTEIN :INFO-CONTEXT MV891 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV891 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV906 :ISA POLAR-QUESTION :STATEMENT MV904)
 (:VAR MV904 :ISA DECREASE :AGENT MV898 :OBJECT MV896 :RAW-TEXT "decrease")
 (:VAR MV898 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV896 :ISA PROTEIN :INFO-CONTEXT MV903 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV903 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does FOS vanish if we increase the amount " 9
e26   OF            9 "of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e33   S             1 "Does FOS vanish if we increase the amount " 9
e26   PP            9 "of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV951 :ISA POLAR-QUESTION :STATEMENT MV950)
 (:VAR MV950 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV948 :EVENT MV944)
 (:VAR MV948 :ISA WH-QUESTION :STATEMENT MV945 :WH IF)
 (:VAR MV945 :ISA INCREASE :AGENT-OR-CAUSE MV934 :MULTIPLIER MV943
  :AFFECTED-PROCESS-OR-OBJECT MV938 :RAW-TEXT "increase")
 (:VAR MV934 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV943 :ISA N-FOLD :NUMBER MV942) (:VAR MV942 :ISA NUMBER :VALUE 10)
 (:VAR MV938 :ISA BIO-AMOUNT :MEASURED-ITEM MV929 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV929 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV944 :ISA VANISH :AGENT MV931 :RAW-TEXT "vanish")
 (:VAR MV931 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV971 :ISA POLAR-QUESTION :STATEMENT MV970)
 (:VAR MV970 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV968 :EVENT MV965)
 (:VAR MV968 :ISA WH-QUESTION :STATEMENT MV966 :WH IF)
 (:VAR MV966 :ISA INCREASE :AGENT-OR-CAUSE MV958 :MULTIPLIER MV964 :OBJECT
  MV953 :RAW-TEXT "increase")
 (:VAR MV958 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV964 :ISA N-FOLD :NUMBER MV963) (:VAR MV963 :ISA NUMBER :VALUE 10)
 (:VAR MV953 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV965 :ISA VANISH :AGENT MV952 :RAW-TEXT "vanish")
 (:VAR MV952 :ISA PROTEIN :PREDICATION MV955 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV955 :ISA PHOSPHORYLATE :SUBSTRATE MV952 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV995 :ISA POLAR-QUESTION :STATEMENT MV994)
 (:VAR MV994 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV992 :EVENT MV988)
 (:VAR MV992 :ISA WH-QUESTION :STATEMENT MV989 :WH IF)
 (:VAR MV989 :ISA INCREASE :AGENT-OR-CAUSE MV978 :MULTIPLIER MV987
  :AFFECTED-PROCESS-OR-OBJECT MV982 :RAW-TEXT "increase")
 (:VAR MV978 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV987 :ISA N-FOLD :NUMBER MV986) (:VAR MV986 :ISA NUMBER :VALUE 10)
 (:VAR MV982 :ISA BIO-AMOUNT :MEASURED-ITEM MV973 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV973 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV988 :ISA VANISH :AGENT MV972 :RAW-TEXT "vanish")
 (:VAR MV972 :ISA PROTEIN :PREDICATION MV975 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV975 :ISA PHOSPHORYLATE :SUBSTRATE MV972 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1007 :ISA POLAR-QUESTION :STATEMENT MV1005)
 (:VAR MV1005 :ISA INCREASE :CAUSE MV999 :ADVERB MV1002 :RAW-TEXT "increase")
 (:VAR MV999 :ISA BIO-AMOUNT :MEASURED-ITEM MV996 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV996 :ISA PROTEIN :PREDICATION MV1001 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1001 :ISA PHOSPHORYLATE :SUBSTRATE MV996 :RAW-TEXT "phosphorylated")
 (:VAR MV1002 :ISA EVER :NAME "ever"))

___________________
107: "Is MAP2K1 bound to MAPK1 eventually high?"

                    SOURCE-START
e4    BE            1 "Is " 2
e1    PROTEIN       2 "MAP2K1 " 6
e12   BINDING       6 "bound to MAPK1 " 10
e10   HIGH          10 "eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e4    PREPOSED-AUXILIARY  1 "Is " 2
e1    PROPER-NOUN   2 "MAP2K1 " 6
e12   VP+ED         6 "bound to MAPK1 " 10
e10   ADJECTIVE     10 "eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
108: "Is MAPK1 bound to MAP2K1 transient?"

                    SOURCE-START
e4    BE            1 "Is " 2
e1    PROTEIN       2 "MAPK1 " 4
e10   BINDING       4 "bound to MAP2K1 " 10
e8    TRANSIENT     10 "transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e4    PREPOSED-AUXILIARY  1 "Is " 2
e1    PROPER-NOUN   2 "MAPK1 " 4
e10   VP+ED         4 "bound to MAP2K1 " 10
e8    ADJECTIVE     10 "transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
109: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?"
 (:VAR MV1029 :ISA POLAR-QUESTION :STATEMENT MV1028)
 (:VAR MV1028 :ISA SUSTAINED :PARTICIPANT MV1024 :PAST "PAST")
 (:VAR MV1024 :ISA PROTEIN :PREDICATION MV1026 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1026 :ISA BINDING :DIRECT-BINDEE MV1024 :BINDER MV1023 :RAW-TEXT
  "bound")
 (:VAR MV1023 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1036 :ISA POLAR-QUESTION :STATEMENT MV1035)
 (:VAR MV1035 :ISA COPULAR-PREDICATION :ITEM MV1030 :VALUE MV1034 :PREDICATE
  MV1031)
 (:VAR MV1030 :ISA PROTEIN :PREDICATION MV1032 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1032 :ISA PHOSPHORYLATE :SUBSTRATE MV1030 :RAW-TEXT "phosphorylated")
 (:VAR MV1034 :ISA HIGH :ADVERB MV1033)
 (:VAR MV1033 :ISA ALWAYS :NAME "always") (:VAR MV1031 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1043 :ISA POLAR-QUESTION :STATEMENT MV1042)
 (:VAR MV1042 :ISA COPULAR-PREDICATION :ITEM MV1037 :VALUE MV1041 :PREDICATE
  MV1038)
 (:VAR MV1037 :ISA PROTEIN :PREDICATION MV1039 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1039 :ISA PHOSPHORYLATE :SUBSTRATE MV1037 :RAW-TEXT "phosphorylated")
 (:VAR MV1041 :ISA HIGH :ADVERB MV1040)
 (:VAR MV1040 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1038 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1050 :ISA POLAR-QUESTION :STATEMENT MV1049)
 (:VAR MV1049 :ISA COPULAR-PREDICATION :ITEM MV1044 :VALUE MV1048 :PREDICATE
  MV1045)
 (:VAR MV1044 :ISA PROTEIN :PREDICATION MV1046 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1046 :ISA PHOSPHORYLATE :SUBSTRATE MV1044 :RAW-TEXT "phosphorylated")
 (:VAR MV1048 :ISA HIGH :ADVERB MV1047) (:VAR MV1047 :ISA EVER :NAME "ever")
 (:VAR MV1045 :ISA BE))

___________________
113: "Is phosphorylated MAPK1 high at the end?"

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high " 6
e13   AT            6 "at the end" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "Is phosphorylated MAPK1 high " 6
e13   PP            6 "at the end" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
114: "Is phosphorylated MAPK1 high?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 high?"
 (:VAR MV1066 :ISA POLAR-QUESTION :STATEMENT MV1065)
 (:VAR MV1065 :ISA COPULAR-PREDICATION :ITEM MV1061 :VALUE MV1064 :PREDICATE
  MV1062)
 (:VAR MV1061 :ISA PROTEIN :PREDICATION MV1063 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1063 :ISA PHOSPHORYLATE :SUBSTRATE MV1061 :RAW-TEXT "phosphorylated")
 (:VAR MV1064 :ISA HIGH) (:VAR MV1062 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1078 :ISA POLAR-QUESTION :STATEMENT MV1077)
 (:VAR MV1077 :ISA SUSTAINED :PARTICIPANT MV1067 :LEVEL MV1075 :PAST "PAST")
 (:VAR MV1067 :ISA PROTEIN :PREDICATION MV1069 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1069 :ISA PHOSPHORYLATE :SUBSTRATE MV1067 :RAW-TEXT "phosphorylated")
 (:VAR MV1075 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1074 :RAW-TEXT
  "level")
 (:VAR MV1074 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1084 :ISA POLAR-QUESTION :STATEMENT MV1083)
 (:VAR MV1083 :ISA SUSTAINED :PARTICIPANT MV1079 :PAST "PAST")
 (:VAR MV1079 :ISA PROTEIN :PREDICATION MV1081 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1081 :ISA PHOSPHORYLATE :SUBSTRATE MV1079 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1090 :ISA POLAR-QUESTION :STATEMENT MV1089)
 (:VAR MV1089 :ISA COPULAR-PREDICATION :ITEM MV1085 :VALUE MV1088 :PREDICATE
  MV1086)
 (:VAR MV1085 :ISA PROTEIN :PREDICATION MV1087 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1087 :ISA PHOSPHORYLATE :SUBSTRATE MV1085 :RAW-TEXT "phosphorylated")
 (:VAR MV1088 :ISA TRANSIENT) (:VAR MV1086 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1101 :ISA POLAR-QUESTION :STATEMENT MV1100)
 (:VAR MV1100 :ISA COPULAR-PREDICATION :ITEM MV1099 :VALUE MV1097 :PREDICATE
  MV1093)
 (:VAR MV1099 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1092 :COMPONENT MV1091)
 (:VAR MV1092 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1091 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1097 :ISA HIGH :ADVERB MV1096) (:VAR MV1096 :ISA EVER :NAME "ever")
 (:VAR MV1093 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1110 :ISA POLAR-QUESTION :STATEMENT MV1107)
 (:VAR MV1107 :ISA BIO-FORM :AGENT MV1109 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1109 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1103 :COMPONENT MV1102)
 (:VAR MV1103 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1102 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1132 :ISA POLAR-QUESTION :STATEMENT MV1131)
 (:VAR MV1131 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1127 :EVENT MV1129)
 (:VAR MV1127 :ISA WH-QUESTION :STATEMENT MV1122 :WH IF)
 (:VAR MV1122 :ISA INCREASE :AGENT-OR-CAUSE MV1120 :ADVERB MV1126 :PRESENT
  "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1120 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1126 :ISA N-FOLD :NUMBER MV1124) (:VAR MV1124 :ISA NUMBER :VALUE 10)
 (:VAR MV1129 :ISA COPULAR-PREDICATION :ITEM MV1114 :VALUE MV1118 :PREDICATE
  MV1112)
 (:VAR MV1114 :ISA BIO-AMOUNT :MEASURED-ITEM MV1116 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1116 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1118 :ISA LOW :ADVERB MV1117) (:VAR MV1117 :ISA ALWAYS :NAME "always")
 (:VAR MV1112 :ISA BE))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1155 :ISA POLAR-QUESTION :STATEMENT MV1154)
 (:VAR MV1154 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1150 :EVENT MV1152)
 (:VAR MV1150 :ISA WH-QUESTION :STATEMENT MV1144 :WH IF)
 (:VAR MV1144 :ISA INCREASE :AGENT-OR-CAUSE MV1142 :MULTIPLIER MV1148 :OBJECT
  MV1133 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1142 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1148 :ISA N-FOLD :NUMBER MV1147) (:VAR MV1147 :ISA NUMBER :VALUE 100)
 (:VAR MV1133 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1152 :ISA COPULAR-PREDICATION :ITEM MV1136 :VALUE MV1140 :PREDICATE
  MV1134)
 (:VAR MV1136 :ISA BIO-AMOUNT :MEASURED-ITEM MV1138 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1138 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1140 :ISA LOW :ADVERB MV1139) (:VAR MV1139 :ISA ALWAYS :NAME "always")
 (:VAR MV1134 :ISA BE))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e40   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount " 13
e30   OF            13 "of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e40   S             1 "Is the amount of FOS ever high if we increase the amount " 13
e30   PP            13 "of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1208 :ISA POLAR-QUESTION :STATEMENT MV1207)
 (:VAR MV1207 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1203 :EVENT MV1205)
 (:VAR MV1203 :ISA WH-QUESTION :STATEMENT MV1193 :WH IF)
 (:VAR MV1193 :ISA INCREASE :AGENT-OR-CAUSE MV1191 :MULTIPLIER MV1200
  :AFFECTED-PROCESS-OR-OBJECT MV1195 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1191 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1200 :ISA N-FOLD :NUMBER MV1199) (:VAR MV1199 :ISA NUMBER :VALUE 100)
 (:VAR MV1195 :ISA BIO-AMOUNT :MEASURED-ITEM MV1182 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1182 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1205 :ISA COPULAR-PREDICATION :ITEM MV1185 :VALUE MV1189 :PREDICATE
  MV1183)
 (:VAR MV1185 :ISA BIO-AMOUNT :MEASURED-ITEM MV1187 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1187 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1189 :ISA HIGH :ADVERB MV1188) (:VAR MV1188 :ISA EVER :NAME "ever")
 (:VAR MV1183 :ISA BE))

___________________
124: "Is the amount of MAPK1 phosphorylated eventually high?"

                    SOURCE-START
e16   PHOSPHORYLATE 1 "Is the amount of MAPK1 phosphorylated " 8
e12   HIGH          8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "Is the amount of MAPK1 phosphorylated " 8
e12   ADJECTIVE     8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
125: "Is the amount of phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 eventually high?"
 (:VAR MV1229 :ISA POLAR-QUESTION :STATEMENT MV1228)
 (:VAR MV1228 :ISA COPULAR-PREDICATION :ITEM MV1222 :VALUE MV1226 :PREDICATE
  MV1220)
 (:VAR MV1222 :ISA BIO-AMOUNT :MEASURED-ITEM MV1219 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1219 :ISA PROTEIN :PREDICATION MV1224 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1224 :ISA PHOSPHORYLATE :SUBSTRATE MV1219 :RAW-TEXT "phosphorylated")
 (:VAR MV1226 :ISA HIGH :ADVERB MV1225)
 (:VAR MV1225 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1220 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1240 :ISA POLAR-QUESTION :STATEMENT MV1239)
 (:VAR MV1239 :ISA COPULAR-PREDICATION :ITEM MV1233 :VALUE MV1237 :PREDICATE
  MV1231)
 (:VAR MV1233 :ISA BIO-AMOUNT :MEASURED-ITEM MV1230 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1230 :ISA PROTEIN :PREDICATION MV1235 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1235 :ISA PHOSPHORYLATE :SUBSTRATE MV1230 :RAW-TEXT "phosphorylated")
 (:VAR MV1237 :ISA HIGH :ADVERB MV1236) (:VAR MV1236 :ISA EVER :NAME "ever")
 (:VAR MV1231 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1251 :ISA POLAR-QUESTION :STATEMENT MV1249)
 (:VAR MV1249 :ISA INCREASE :CAUSE MV1244 :ADVERB MV1247 :RAW-TEXT
  "increasing")
 (:VAR MV1244 :ISA BIO-AMOUNT :MEASURED-ITEM MV1241 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1241 :ISA PROTEIN :PREDICATION MV1246 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1246 :ISA PHOSPHORYLATE :SUBSTRATE MV1241 :RAW-TEXT "phosphorylated")
 (:VAR MV1247 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1261 :ISA POLAR-QUESTION :STATEMENT MV1260)
 (:VAR MV1260 :ISA COPULAR-PREDICATION :ITEM MV1255 :VALUE MV1258 :PREDICATE
  MV1253)
 (:VAR MV1255 :ISA BIO-AMOUNT :MEASURED-ITEM MV1252 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1252 :ISA PROTEIN :PREDICATION MV1257 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1257 :ISA PHOSPHORYLATE :SUBSTRATE MV1252 :RAW-TEXT "phosphorylated")
 (:VAR MV1258 :ISA HIGH) (:VAR MV1253 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1272 :ISA POLAR-QUESTION :STATEMENT MV1271)
 (:VAR MV1271 :ISA COPULAR-PREDICATION :ITEM MV1265 :VALUE MV1269 :PREDICATE
  MV1263)
 (:VAR MV1265 :ISA BIO-AMOUNT :MEASURED-ITEM MV1262 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1262 :ISA PROTEIN :PREDICATION MV1267 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1267 :ISA PHOSPHORYLATE :SUBSTRATE MV1262 :RAW-TEXT "phosphorylated")
 (:VAR MV1269 :ISA HIGH :ADVERB MV1268) (:VAR MV1268 :ISA SOMETIMES)
 (:VAR MV1263 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1288 :ISA POLAR-QUESTION :STATEMENT MV1287)
 (:VAR MV1287 :ISA SUSTAINED :PARTICIPANT MV1276 :LEVEL MV1284 :PAST "PAST")
 (:VAR MV1276 :ISA BIO-AMOUNT :MEASURED-ITEM MV1273 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1273 :ISA PROTEIN :PREDICATION MV1278 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1278 :ISA PHOSPHORYLATE :SUBSTRATE MV1273 :RAW-TEXT "phosphorylated")
 (:VAR MV1284 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1283 :RAW-TEXT
  "level")
 (:VAR MV1283 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1298 :ISA POLAR-QUESTION :STATEMENT MV1296)
 (:VAR MV1296 :ISA SUSTAINED :PARTICIPANT MV1292 :PAST "PAST")
 (:VAR MV1292 :ISA BIO-AMOUNT :MEASURED-ITEM MV1289 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1289 :ISA PROTEIN :PREDICATION MV1294 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1294 :ISA PHOSPHORYLATE :SUBSTRATE MV1289 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1308 :ISA POLAR-QUESTION :STATEMENT MV1307)
 (:VAR MV1307 :ISA COPULAR-PREDICATION :ITEM MV1302 :VALUE MV1305 :PREDICATE
  MV1300)
 (:VAR MV1302 :ISA BIO-AMOUNT :MEASURED-ITEM MV1299 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1299 :ISA PROTEIN :PREDICATION MV1304 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1304 :ISA PHOSPHORYLATE :SUBSTRATE MV1299 :RAW-TEXT "phosphorylated")
 (:VAR MV1305 :ISA TRANSIENT) (:VAR MV1300 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1319 :ISA POLAR-QUESTION :STATEMENT MV1317)
 (:VAR MV1317 :ISA COPULAR-PREDICATION :ITEM MV1312 :VALUE MV1316 :PREDICATE
  MV1315)
 (:VAR MV1312 :ISA BIO-AMOUNT :MEASURED-ITEM MV1309 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1309 :ISA PROTEIN :PREDICATION MV1314 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1314 :ISA PHOSPHORYLATE :SUBSTRATE MV1309 :RAW-TEXT "phosphorylated")
 (:VAR MV1316 :ISA HIGH) (:VAR MV1315 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount " 11
e25   OF            11 "of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e33   S             1 "is TGFBR1 eventually low if we increase the amount " 11
e25   PP            11 "of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1366 :ISA POLAR-QUESTION :STATEMENT MV1365)
 (:VAR MV1365 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1362 :EVENT MV1363)
 (:VAR MV1362 :ISA WH-QUESTION :STATEMENT MV1359 :WH IF)
 (:VAR MV1359 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1350 :MULTIPLIER
  MV1357 :RAW-TEXT "increased")
 (:VAR MV1350 :ISA BIO-AMOUNT :MEASURED-ITEM MV1343 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1343 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1357 :ISA N-FOLD :NUMBER MV1356) (:VAR MV1356 :ISA NUMBER :VALUE 100)
 (:VAR MV1363 :ISA COPULAR-PREDICATION :ITEM MV1342 :VALUE MV1347 :PREDICATE
  MV1344)
 (:VAR MV1342 :ISA PROTEIN :PREDICATION MV1345 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1345 :ISA ACTIVE) (:VAR MV1347 :ISA LOW :ADVERB MV1346)
 (:VAR MV1346 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1344 :ISA BE))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e31   OF            14 "of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e41   S             1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e31   PP            14 "of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e43   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e33   OF            15 "of SB-525334 100 fold" 21
                    END-OF-SOURCE
                    SOURCE-START
e43   S             1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e33   PP            15 "of SB-525334 100 fold" 21
                    END-OF-SOURCE


___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1429 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1423 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1423 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1426 :THEME
  MV1427 :PRESENT "PRESENT")
 (:VAR MV1426 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1427 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1421 MV1422))
 (:VAR MV1421 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1422 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1432 :ISA PHOSPHORYLATE :AGENT MV1430 :SUBSTRATE MV1431 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1430 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1431 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1433 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1436 :THEME
  MV1438 :PRESENT "PRESENT")
 (:VAR MV1436 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1438 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1441 :ISA PHOSPHORYLATE :AGENT MV1439 :SUBSTRATE MV1440 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1439 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1440 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1451 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1444 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1444 :ISA HIGHLIGHT :THEME MV1446 :PRESENT "PRESENT")
 (:VAR MV1446 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1443 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1443 :ISA PROTEIN :PREDICATION MV1449 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1449 :ISA PHOSPHORYLATE :SUBSTRATE MV1443 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1460 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1454 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1454 :ISA SHOW :AT-RELATIVE-LOCATION MV1458 :STATEMENT-OR-THEME MV1453
  :PRESENT "PRESENT")
 (:VAR MV1458 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1453 :ISA PROTEIN :PREDICATION MV1455 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1455 :ISA PHOSPHORYLATE :SUBSTRATE MV1453 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1473 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1463 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1463 :ISA SHOW :AT-RELATIVE-LOCATION MV1470 :STATEMENT-OR-THEME MV1465
  :PRESENT "PRESENT")
 (:VAR MV1470 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1465 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1462 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1462 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1482 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1475 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1475 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1480 :THEME MV1477 :PRESENT
  "PRESENT")
 (:VAR MV1480 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1477 :ISA ELEMENT :MODIFIER MV1476)
 (:VAR MV1476 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1487 :ISA AFFECT :MANNER MV1484 :AGENT MV1486 :OBJECT MV1483 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1484 :ISA HOW)
 (:VAR MV1486 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1483 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1491 :ISA AFFECT :MANNER MV1489 :AGENT MV1488 :OBJECT MV1492 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1489 :ISA HOW)
 (:VAR MV1488 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1492 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1495 :ISA BE :SUBJECT MV1494 :PREDICATE MV1497 :PRESENT "PRESENT")
 (:VAR MV1494 :ISA WHAT)
 (:VAR MV1497 :ISA PATH :ENDPOINTS MV1501 :HAS-DETERMINER "THE")
 (:VAR MV1501 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1499 MV1493))
 (:VAR MV1499 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1493 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1506 :ISA AFFECT :MANNER MV1504 :AGENT MV1503 :OBJECT MV1507 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1504 :ISA HOW)
 (:VAR MV1503 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1507 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1512 :ISA AFFECT :MANNER MV1510 :AGENT MV1508 :OBJECT MV1509 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1510 :ISA HOW)
 (:VAR MV1508 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1509 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1517 :ISA AFFECT :MANNER MV1514 :AGENT MV1516 :OBJECT MV1513 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1514 :ISA HOW)
 (:VAR MV1516 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1513 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1521 :ISA AFFECT :MANNER MV1518 :AGENT MV1520 :OBJECT MV1522 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1518 :ISA HOW)
 (:VAR MV1520 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1522 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1527 :ISA PHOSPHORYLATE :AMINO-ACID MV1525 :AGENT MV1523 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1525 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1523 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1530 :ISA AFFECT :AGENT MV1529 :OBJECT MV1531 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1529 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1531 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1534 :ISA BIO-ACTIVATE :AGENT MV1533 :OBJECT MV1535 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1533 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1535 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1544 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1539 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1539 :ISA LEARNING :STATEMENT MV1537 :PRESENT "PRESENT")
 (:VAR MV1537 :ISA PROTEIN :CONTEXT MV1538 :RAW-TEXT "AKT1" :UID "UP:P31749"
  :NAME "AKT1_HUMAN")
 (:VAR MV1538 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
157: "What is its relationship with BRAF?"

                    SOURCE-START
e10   WITH          1 "What is its relationship with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with BRAF?"
 (:VAR MV1552 :ISA WH-QUESTION :STATEMENT MV1551 :WH WHAT)
 (:VAR MV1551 :ISA PREPOSITIONAL-PHRASE :POBJ MV1550 :PREP "WITH")
 (:VAR MV1550 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
158: "What is its relationship with PTPN1?"

                    SOURCE-START
e11   WITH          1 "What is its relationship with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with PTPN1?"
 (:VAR MV1560 :ISA WH-QUESTION :STATEMENT MV1559 :WH WHAT)
 (:VAR MV1559 :ISA PREPOSITIONAL-PHRASE :POBJ MV1553 :PREP "WITH")
 (:VAR MV1553 :ISA PROTEIN :RAW-TEXT "PTPN1" :UID "UP:P18031" :NAME
  "PTN1_HUMAN"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1563 :ISA PHOSPHORYLATE :AGENT MV1561 :SUBSTRATE MV1562 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1561 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1562 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
  "IF140_HUMAN"))

___________________
160: "What is the next correlation of AKT1?"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "is " 3
e5    THE           3 "the " 4
e6 e7               "next" :: NEXT, SEQUENCER
e12   CORRELATION   5 "correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "What " 2
e3    VG            2 "is " 3
e5    DET           3 "the " 4
e6 e7               "next" :: NEXT, SEQUENCER
e12   NP            5 "correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
161: "Let's stop learning about AKT1."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e5    STOP-ENDURANT 4 "stop " 5
e9    LEARNING      5 "learning about AKT1" 9
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e1    INTERJECTION  1 "Let's " 4
e5    NP            4 "stop " 5
e9    VP+ING        5 "learning about AKT1" 9
                    PERIOD
                    END-OF-SOURCE


___________________
162: "What is the drug response on cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response on cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response on cells with TP53 alterations?"
 (:VAR MV1582 :ISA BE :SUBJECT MV1581 :PREDICATE MV1585 :PRESENT "PRESENT")
 (:VAR MV1581 :ISA WHAT)
 (:VAR MV1585 :ISA RESPONSE :BENEFICIARY MV1587 :HAS-DETERMINER "THE" :MODIFIER
  MV1584 :RAW-TEXT "response")
 (:VAR MV1587 :ISA CELL-TYPE :MUTATION MV1589)
 (:VAR MV1589 :ISA ALTER :OBJECT MV1580 :AGENT-OR-OBJECT MV1580 :RAW-TEXT
  "alterations")
 (:VAR MV1580 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1584 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1594 :ISA BE :SUBJECT MV1593 :PREDICATE MV1597 :PRESENT "PRESENT")
 (:VAR MV1593 :ISA WHAT)
 (:VAR MV1597 :ISA RESPONSE :CELL-TYPE MV1599 :HAS-DETERMINER "THE" :MODIFIER
  MV1596 :RAW-TEXT "response")
 (:VAR MV1599 :ISA CELL-TYPE :MUTATION MV1601)
 (:VAR MV1601 :ISA ALTER :OBJECT MV1592 :AGENT-OR-OBJECT MV1592 :RAW-TEXT
  "alterations")
 (:VAR MV1592 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1596 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1605 :ISA BE :SUBJECT MV1604 :PREDICATE MV1608 :PRESENT "PRESENT")
 (:VAR MV1604 :ISA WHAT)
 (:VAR MV1608 :ISA FREQUENCY :MEASURED-ITEM MV1610 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1607 :RAW-TEXT "frequency")
 (:VAR MV1610 :ISA PROTEIN :CONTEXT MV1612 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1612 :ISA GLIOBLASTOMA)
 (:VAR MV1607 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1618 :ISA BE :SUBJECT MV1617 :PREDICATE MV1621 :PRESENT "PRESENT")
 (:VAR MV1617 :ISA WHAT)
 (:VAR MV1621 :ISA FREQUENCY :MEASURED-ITEM MV1615 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1620 :RAW-TEXT "frequency")
 (:VAR MV1615 :ISA PROTEIN :CONTEXT MV1616 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1616 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1620 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1627 :ISA SHOW :STATEMENT-OR-THEME MV1630 :BENEFICIARY MV1628 :PRESENT
  "PRESENT")
 (:VAR MV1630 :ISA MUTATION :OBJECT MV1636 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1636 :ISA COLLECTION :CONTEXT MV1626 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1632 MV1634))
 (:VAR MV1626 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1632 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1634 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1628 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1640 :ISA SHOW :STATEMENT-OR-THEME MV1643 :BENEFICIARY MV1641 :PRESENT
  "PRESENT")
 (:VAR MV1643 :ISA MUTATION :OBJECT MV1645 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1645 :ISA PROTEIN :CONTEXT MV1639 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1639 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1641 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1651 :ISA BE :SUBJECT MV1650 :PREDICATE MV1653 :PRESENT "PRESENT")
 (:VAR MV1650 :ISA WHAT)
 (:VAR MV1653 :ISA MUTATION :OBJECT MV1655 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1655 :ISA PROTEIN :CONTEXT MV1649 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1649 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1661 :ISA BE :SUBJECT MV1660 :PREDICATE MV1673 :PRESENT "PRESENT")
 (:VAR MV1660 :ISA WHAT)
 (:VAR MV1673 :ISA QUALITY-PREDICATE :ITEM MV1671 :ATTRIBUTE MV1667)
 (:VAR MV1671 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1659 MV1670))
 (:VAR MV1659 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1670 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1667 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1665
  :MODIFIER MV1666)
 (:VAR MV1665 :ISA LIKELY :COMPARATIVE MV1663)
 (:VAR MV1663 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1666 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1686 :ISA POLAR-QUESTION :STATEMENT MV1683)
 (:VAR MV1683 :ISA THERE-EXISTS :VALUE MV1679 :PREDICATE MV1676)
 (:VAR MV1679 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1684 :PREDICATION
  MV1678 :RAW-TEXT "upstreams")
 (:VAR MV1684 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1674 MV1682))
 (:VAR MV1674 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1682 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1678 :ISA COMMON) (:VAR MV1676 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1690 :ISA BE :SUBJECT MV1689 :PREDICATE MV1693 :PRESENT "PRESENT")
 (:VAR MV1689 :ISA WHAT)
 (:VAR MV1693 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1697 :HAS-DETERMINER
  "THE" :PREDICATION MV1692 :RAW-TEXT "upstreams")
 (:VAR MV1697 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1687 MV1695 MV1688))
 (:VAR MV1687 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1695 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1688 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1692 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1709 :ISA COPULAR-PREDICATION :ITEM MV1703 :VALUE MV1699 :PREDICATE
  MV1704)
 (:VAR MV1703 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1699 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1701 :ALTERNATIVE MV1700)
 (:VAR MV1701 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1700 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1704 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1714 :ISA BE :SUBJECT MV1713 :PREDICATE MV1721 :PRESENT "PRESENT")
 (:VAR MV1713 :ISA WHAT)
 (:VAR MV1721 :ISA GENE :DISEASE MV1712 :HAS-DETERMINER "THE" :PREDICATION
  MV1710 :RAW-TEXT "genes")
 (:VAR MV1712 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1710 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1711)
 (:VAR MV1711 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1725 :ISA BE :SUBJECT MV1724 :PREDICATE MV1728 :PRESENT "PRESENT")
 (:VAR MV1724 :ISA WHAT)
 (:VAR MV1728 :ISA SIGNIFICANCE :RESULT MV1723 :AGENT MV1722 :HAS-DETERMINER
  "THE" :MODIFIER MV1727)
 (:VAR MV1723 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV1722 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1727 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1736 :ISA BE :SUBJECT MV1735 :PREDICATE MV1739 :PRESENT "PRESENT")
 (:VAR MV1735 :ISA WHAT)
 (:VAR MV1739 :ISA SIGNIFICANCE :AGENT MV1733 :HAS-DETERMINER "THE" :MODIFIER
  MV1738)
 (:VAR MV1733 :ISA PROTEIN :CONTEXT MV1734 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1734 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1738 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1745 :ISA BE :SUBJECT MV1744 :PREDICATE MV1748 :PRESENT "PRESENT")
 (:VAR MV1744 :ISA WHAT)
 (:VAR MV1748 :ISA SIGNIFICANCE :AGENT MV1750 :HAS-DETERMINER "THE" :MODIFIER
  MV1747)
 (:VAR MV1750 :ISA PROTEIN :CONTEXT MV1753 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1753 :ISA CANCER :ORGAN MV1752 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1752 :ISA PANCREAS) (:VAR MV1747 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1757 :ISA BE :SUBJECT MV1756 :PREDICATE MV1760 :PRESENT "PRESENT")
 (:VAR MV1756 :ISA WHAT)
 (:VAR MV1760 :ISA SIGNIFICANCE :AGENT MV1762 :HAS-DETERMINER "THE" :MODIFIER
  MV1759)
 (:VAR MV1762 :ISA PROTEIN :CONTEXT MV1765 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1765 :ISA CANCER :MODIFIER MV1764 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1764 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1759 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1769 :ISA PHOSPHORYLATE :AGENT MV1768 :SUBSTRATE MV1770 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1768 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1770 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
179: "EGF binds EGFR."

                    SOURCE-START
e4    BINDING       1 "EGF binds EGFR" 4
                    PERIOD
                    END-OF-SOURCE
("EGF binds EGFR."
 (:VAR MV1772 :ISA BINDING :BINDER MV1771 :DIRECT-BINDEE MV1773 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1771 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1773 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1779 :ISA BINDING :BINDER MV1775 :DIRECT-BINDEE MV1774 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1775 :ISA PROTEIN :PREDICATION MV1776 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1776 :ISA BINDING :DIRECT-BINDEE MV1775 :BINDEE MV1778 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1778 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1774 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1785 :ISA COPULAR-PREDICATION :ITEM MV1782 :VALUE MV1784 :PREDICATE
  MV1783)
 (:VAR MV1782 :ISA PROTEIN-FAMILY :PREDICATION MV1781 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1781 :ISA PHOSPHORYLATE :SUBSTRATE MV1782 :RAW-TEXT "Phosphorylated")
 (:VAR MV1784 :ISA ACTIVE) (:VAR MV1783 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1786 :ISA PROTEIN :PREDICATION MV1788 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1788 :ISA PHOSPHORYLATE :SUBSTRATE MV1786 :TARGET MV1787 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1787 :ISA PROTEIN :SITE MV1793 :MODIFIER MV1794 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1793 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1792
  :AMINO-ACID MV1791)
 (:VAR MV1792 :ISA NUMBER :VALUE 220)
 (:VAR MV1791 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1794 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1799 :ISA TRANSCRIBE :AGENT MV1796 :OBJECT MV1797 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1796 :ISA PROTEIN :PREDICATION MV1798 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1798 :ISA ACTIVE)
 (:VAR MV1797 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1826 :ISA POLAR-QUESTION :STATEMENT MV1825)
 (:VAR MV1825 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1821 :EVENT MV1823)
 (:VAR MV1821 :ISA WH-QUESTION :STATEMENT MV1811 :WH IF)
 (:VAR MV1811 :ISA INCREASE :AGENT-OR-CAUSE MV1809 :MULTIPLIER MV1818
  :AFFECTED-PROCESS-OR-OBJECT MV1813 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1809 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1818 :ISA N-FOLD :NUMBER MV1817) (:VAR MV1817 :ISA NUMBER :VALUE 10)
 (:VAR MV1813 :ISA BIO-AMOUNT :MEASURED-ITEM MV1800 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1800 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1823 :ISA COPULAR-PREDICATION :ITEM MV1803 :VALUE MV1807 :PREDICATE
  MV1801)
 (:VAR MV1803 :ISA BIO-AMOUNT :MEASURED-ITEM MV1805 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1805 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1807 :ISA HIGH :ADVERB MV1806) (:VAR MV1806 :ISA EVER :NAME "ever")
 (:VAR MV1801 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1838 :ISA POLAR-QUESTION :STATEMENT MV1836)
 (:VAR MV1836 :ISA DECREASE :AGENT MV1828 :OBJECT MV1832 :RAW-TEXT "decrease")
 (:VAR MV1828 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1832 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1835 :PREDICATION MV1831
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1835 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1831 :ISA PHOSPHORYLATE :SUBSTRATE MV1832 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1849 :ISA POLAR-QUESTION :STATEMENT MV1847)
 (:VAR MV1847 :ISA DECREASE :AGENT MV1840 :OBJECT MV1843 :RAW-TEXT "decrease")
 (:VAR MV1840 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV1843 :ISA PROTEIN :INFO-CONTEXT MV1846 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1846 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1854 :ISA REGULATE :MANNER MV1851 :AGENT MV1853 :OBJECT MV1850
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1851 :ISA HOW)
 (:VAR MV1853 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1850 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1859 :ISA BIO-ACTIVATE :MANNER MV1856 :AGENT MV1858 :OBJECT MV1855
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1856 :ISA HOW)
 (:VAR MV1858 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1855 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1865 :ISA POLAR-QUESTION :STATEMENT MV1864)
 (:VAR MV1864 :ISA INHIBIT :AGENT MV1861 :OBJECT MV1863 :RAW-TEXT "inhibit")
 (:VAR MV1861 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1863 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1876 :ISA SHARE :OBJECT MV1866 :PARTICIPANT MV1875 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1866 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1875 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1872 MV1873 MV1867))
 (:VAR MV1872 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1873 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1867 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
191: "Create a model where LCK phosphorylates CD3E"

                    SOURCE-START
e2    CREATE        1 "Create " 2
e13   MODEL         2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE
                    SOURCE-START
e2    VG            1 "Create " 2
e13   NP            2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE


___________________
192: "What is upstream of CD3E?"

                    SOURCE-START
e11   BE            1 "What is upstream of CD3E" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is upstream of CD3E?"
 (:VAR MV1888 :ISA BE :SUBJECT MV1887 :PREDICATE MV1889 :PRESENT "PRESENT")
 (:VAR MV1887 :ISA WHAT)
 (:VAR MV1889 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1886 :RAW-TEXT
  "upstream")
 (:VAR MV1886 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1897 :ISA WANT :AGENT MV1894 :THEME MV1905 :PRESENT "PRESENT")
 (:VAR MV1894 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1905 :ISA BIO-FIND :AGENT MV1894 :OBJECT MV1902 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1902 :ISA TREATMENT :DISEASE MV1893 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1893 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1914 :ISA BIO-USE :OBJECT MV1907 :MODAL MV1908 :AGENT MV1909 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1907 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1908 :ISA COULD) (:VAR MV1909 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1924 :ISA POLAR-QUESTION :STATEMENT MV1922)
 (:VAR MV1922 :ISA THERE-EXISTS :VALUE MV1919 :PREDICATE MV1916)
 (:VAR MV1919 :ISA DRUG :TARGET MV1921 :QUANTIFIER MV1918 :RAW-TEXT "drugs")
 (:VAR MV1921 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1918 :ISA ANY :WORD "any") (:VAR MV1916 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV1928 :ISA POLAR-QUESTION :STATEMENT MV1925)
 (:VAR MV1925 :ISA BE :SUBJECT MV1926 :PREDICATE MV1927)
 (:VAR MV1926 :ISA PRONOUN/PLURAL :WORD "they")
 (:VAR MV1927 :ISA KINASE :RAW-TEXT "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1938 :ISA POLAR-QUESTION :STATEMENT MV1932)
 (:VAR MV1932 :ISA BIO-FIND :AGENT MV1930 :OBJECT MV1934 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1930 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1934 :ISA DRUG :TARGET MV1936 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1936 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1956 :ISA POLAR-QUESTION :STATEMENT MV1943)
 (:VAR MV1943 :ISA TELL :AGENT MV1942 :THEME MV1939 :BENEFICIARY MV1944 :MODAL
  "CAN")
 (:VAR MV1942 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1939 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1954 :QUANTIFIER MV1945
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1954 :ISA SHARE :OBJECT MV1939 :THAT-REL T :PARTICIPANT MV1953 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1953 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1940 MV1952))
 (:VAR MV1940 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1952 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1945 :ISA ALL :WORD "all")
 (:VAR MV1944 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1972 :ISA POLAR-QUESTION :STATEMENT MV1961)
 (:VAR MV1961 :ISA TELL :AGENT MV1960 :THEME MV1970 :THEME MV1962 :MODAL "CAN")
 (:VAR MV1960 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1970 :ISA SHARE :OBJECT MV1957 :PARTICIPANT MV1969 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1957 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1969 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1958 MV1968))
 (:VAR MV1958 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1968 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1962 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1983 :ISA POLAR-QUESTION :STATEMENT MV1982)
 (:VAR MV1982 :ISA KNOW :AGENT MV1974 :STATEMENT MV1977)
 (:VAR MV1974 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1977 :ISA DRUG :TARGET MV1979 :QUANTIFIER MV1976 :RAW-TEXT "drugs")
 (:VAR MV1979 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1976 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1995 :ISA POLAR-QUESTION :STATEMENT MV1993)
 (:VAR MV1993 :ISA REGULATE :AGENT MV1984 :OBJECT MV1989 :RAW-TEXT "regulate")
 (:VAR MV1984 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1989 :ISA GENE :ORGAN MV1992 :HAS-DETERMINER "THE" :EXPRESSES MV1988
  :RAW-TEXT "gene")
 (:VAR MV1992 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1988 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2006 :ISA POLAR-QUESTION :STATEMENT MV2004)
 (:VAR MV2004 :ISA REGULATE :AGENT MV1996 :OBJECT MV2001 :RAW-TEXT "regulate")
 (:VAR MV1996 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2001 :ISA GENE :ORGAN MV2003 :HAS-DETERMINER "THE" :EXPRESSES MV1997
  :RAW-TEXT "gene")
 (:VAR MV2003 :ISA LIVER)
 (:VAR MV1997 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2014 :ISA POLAR-QUESTION :STATEMENT MV2013)
 (:VAR MV2013 :ISA REGULATE :AGENT MV2007 :OBJECT MV2012 :RAW-TEXT "regulate")
 (:VAR MV2007 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2012 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2008 :RAW-TEXT
  "gene")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2026 :ISA POLAR-QUESTION :STATEMENT MV2024)
 (:VAR MV2024 :ISA REGULATE :AGENT MV2015 :OBJECT MV2020 :RAW-TEXT "regulate")
 (:VAR MV2015 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2020 :ISA GENE :ORGAN MV2023 :HAS-DETERMINER "THE" :EXPRESSES MV2019
  :RAW-TEXT "gene")
 (:VAR MV2023 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2019 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2033 :ISA POLAR-QUESTION :STATEMENT MV2032)
 (:VAR MV2032 :ISA TARGET :AGENT MV2027 :OBJECT MV2028 :RAW-TEXT "target")
 (:VAR MV2027 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2028 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2040 :ISA POLAR-QUESTION :STATEMENT MV2039)
 (:VAR MV2039 :ISA TARGET :AGENT MV2034 :OBJECT MV2035 :RAW-TEXT "target")
 (:VAR MV2034 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2035 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2047 :ISA POLAR-QUESTION :STATEMENT MV2046)
 (:VAR MV2046 :ISA TARGET :AGENT MV2041 :OBJECT MV2042 :RAW-TEXT "target")
 (:VAR MV2041 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2042 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2054 :ISA POLAR-QUESTION :STATEMENT MV2053)
 (:VAR MV2053 :ISA TARGET :AGENT MV2048 :OBJECT MV2049 :RAW-TEXT "target")
 (:VAR MV2048 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2049 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2063 :ISA POLAR-QUESTION :STATEMENT MV2061)
 (:VAR MV2061 :ISA REGULATE :AGENT MV2055 :OBJECT MV2060 :RAW-TEXT "regulate")
 (:VAR MV2055 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2060 :ISA BIO-ENTITY :ORGAN MV2059 :NAME "cfors")
 (:VAR MV2059 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2072 :ISA POLAR-QUESTION :STATEMENT MV2070)
 (:VAR MV2070 :ISA REGULATE :AGENT MV2064 :OBJECT MV2067 :RAW-TEXT "regulate")
 (:VAR MV2064 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2067 :ISA PROTEIN :ORGAN MV2069 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2069 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2081 :ISA POLAR-QUESTION :STATEMENT MV2079)
 (:VAR MV2079 :ISA REGULATE :AGENT-OR-CAUSE MV2074 :OBJECT MV2076 :RAW-TEXT
  "regulate")
 (:VAR MV2074 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2076 :ISA PROTEIN :ORGAN MV2078 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2078 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2087 :ISA POLAR-QUESTION :STATEMENT MV2086)
 (:VAR MV2086 :ISA REGULATE :AGENT MV2082 :OBJECT MV2085 :RAW-TEXT "regulate")
 (:VAR MV2082 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2085 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2099 :ISA POLAR-QUESTION :STATEMENT MV2097)
 (:VAR MV2097 :ISA REGULATE :AGENT MV2088 :OBJECT MV2093 :RAW-TEXT "regulate")
 (:VAR MV2088 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2093 :ISA GENE :CELL-TYPE MV2096 :HAS-DETERMINER "THE" :EXPRESSES
  MV2092 :RAW-TEXT "gene")
 (:VAR MV2096 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2095)
 (:VAR MV2095 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2092 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2109 :ISA POLAR-QUESTION :STATEMENT MV2108)
 (:VAR MV2108 :ISA UTILIZE :PARTICIPANT MV2105 :OBJECT MV2100 :RAW-TEXT
  "utilize")
 (:VAR MV2105 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2107 :RAW-TEXT
  "pathway")
 (:VAR MV2107 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2100 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2119 :ISA POLAR-QUESTION :STATEMENT MV2118)
 (:VAR MV2118 :ISA UTILIZE :PARTICIPANT MV2116 :OBJECT MV2110 :RAW-TEXT
  "utilize")
 (:VAR MV2116 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2113 :RAW-TEXT
  "pathway")
 (:VAR MV2113 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2110 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2121 :ISA GIVE :THEME MV2128 :BENEFICIARY MV2122 :PRESENT "PRESENT")
 (:VAR MV2128 :ISA EVIDENCE :STATEMENT MV2127 :HAS-DETERMINER "THE")
 (:VAR MV2127 :ISA DECREASE :AGENT MV2126 :OBJECT MV2120 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2126 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2120 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2122 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2130 :ISA GIVE :THEME MV2137 :BENEFICIARY MV2131 :PRESENT "PRESENT")
 (:VAR MV2137 :ISA EVIDENCE :STATEMENT MV2136 :HAS-DETERMINER "THE")
 (:VAR MV2136 :ISA REGULATE :AGENT MV2135 :OBJECT MV2129 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2135 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2129 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2131 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV2142 :ISA POLAR-QUESTION :STATEMENT MV2138)
 (:VAR MV2138 :ISA BE :SUBJECT MV2139 :PREDICATE MV2141)
 (:VAR MV2139 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2141 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2150 :ISA POLAR-QUESTION :STATEMENT MV2149)
 (:VAR MV2149 :ISA INHIBIT :AGENT MV2143 :AGENT MV2147 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2143 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2147 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2159 :ISA POLAR-QUESTION :STATEMENT MV2154)
 (:VAR MV2154 :ISA BE :SUBJECT MV2151 :PREDICATE MV2152)
 (:VAR MV2151 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2152 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV2157 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV2157 :ISA GENE :EXPRESSES MV2153 :RAW-TEXT "gene")
 (:VAR MV2153 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2174 :ISA POLAR-QUESTION :STATEMENT MV2162)
 (:VAR MV2162 :ISA BE :SUBJECT MV2160 :PREDICATE MV2168)
 (:VAR MV2160 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2168 :ISA REGULATOR :QUANTIFIER MV2165 :THEME MV2171 :HAS-DETERMINER
  "THE" :RAW-TEXT "regulators")
 (:VAR MV2165 :ISA NUMBER :VALUE 1)
 (:VAR MV2171 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2161 :RAW-TEXT
  "gene")
 (:VAR MV2161 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2182 :ISA POLAR-QUESTION :STATEMENT MV2176)
 (:VAR MV2176 :ISA BE :SUBJECT MV2177 :PREDICATE MV2179)
 (:VAR MV2177 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV2179 :ISA INHIBITOR :PROTEIN MV2175 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV2175 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2190 :ISA POLAR-QUESTION :STATEMENT MV2183)
 (:VAR MV2183 :ISA BE :SUBJECT MV2184 :PREDICATE MV2186)
 (:VAR MV2184 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV2186 :ISA INHIBITOR :TARGET-OR-PROTEIN MV2188 :HAS-DETERMINER "AN"
  :RAW-TEXT "inhibitor")
 (:VAR MV2188 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV2195 :ISA POLAR-QUESTION :STATEMENT MV2191)
 (:VAR MV2191 :ISA BE :SUBJECT MV2194 :PREDICATE MV2193)
 (:VAR MV2194 :ISA BIO-ENTITY :NAME "fakeprotein")
 (:VAR MV2193 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV2200 :ISA POLAR-QUESTION :STATEMENT MV2197)
 (:VAR MV2197 :ISA BE :SUBJECT MV2196 :PREDICATE MV2199)
 (:VAR MV2196 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME
  "HMGA2_HUMAN")
 (:VAR MV2199 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2207 :ISA POLAR-QUESTION :STATEMENT MV2202)
 (:VAR MV2202 :ISA BE :SUBJECT MV2201 :PREDICATE MV2206)
 (:VAR MV2201 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2206 :ISA REGULATOR :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2204
  :RAW-TEXT "regulator")
 (:VAR MV2204 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2219 :ISA POLAR-QUESTION :STATEMENT MV2218)
 (:VAR MV2218 :ISA INVOLVE :THEME MV2208 :CONTEXT MV2215 :PAST "PAST")
 (:VAR MV2208 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2215 :ISA PATHWAY :QUANTIFIER MV2212 :CELLULAR-PROCESS MV2213
  :RAW-TEXT "pathways")
 (:VAR MV2212 :ISA ANY :WORD "any")
 (:VAR MV2213 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2229 :ISA POLAR-QUESTION :STATEMENT MV2228)
 (:VAR MV2228 :ISA INVOLVE :THEME MV2220 :THEME MV2226 :PAST "PAST")
 (:VAR MV2220 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2226 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2224 :RAW-TEXT
  "regulation")
 (:VAR MV2224 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2238 :ISA POLAR-QUESTION :STATEMENT MV2237)
 (:VAR MV2237 :ISA INVOLVE :THEME MV2230 :THEME MV2234 :PAST "PAST")
 (:VAR MV2230 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2234 :ISA REGULATE :AFFECTED-PROCESS MV2235 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2235 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2243 :ISA PHOSPHORYLATE :AMINO-ACID MV2240 :AGENT MV2242 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2240 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2242 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
231: "Is the first one a kinase"

                    SOURCE-START
e15   BE            1 "Is the first one a kinase" 7
                    END-OF-SOURCE
("Is the first one a kinase"
 (:VAR MV2252 :ISA POLAR-QUESTION :STATEMENT MV2244)
 (:VAR MV2244 :ISA BE :SUBJECT MV2249 :PREDICATE MV2251)
 (:VAR MV2249 :ISA NUMBER :QUANTIFIER MV2246 :VALUE 1)
 (:VAR MV2246 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV2251 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2263 :ISA POLAR-QUESTION :STATEMENT MV2262)
 (:VAR MV2262 :ISA THERE-EXISTS :VALUE MV2257 :PREDICATE MV2254)
 (:VAR MV2257 :ISA DRUG :PREDICATION MV2260 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2260 :ISA TARGET :AGENT MV2257 :THAT-REL T :OBJECT MV2261 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2261 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2254 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2276 :ISA POLAR-QUESTION :STATEMENT MV2274)
 (:VAR MV2274 :ISA THERE-EXISTS :VALUE MV2271 :PREDICATE MV2266)
 (:VAR MV2271 :ISA PATHWAY :PREDICATION MV2272 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2269 :RAW-TEXT "pathway")
 (:VAR MV2272 :ISA REGULATE :AFFECTED-PROCESS MV2271 :AGENT MV2264 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2264 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2269 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2266 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2292 :ISA POLAR-QUESTION :STATEMENT MV2289)
 (:VAR MV2289 :ISA THERE-EXISTS :VALUE MV2284 :PREDICATE MV2279)
 (:VAR MV2284 :ISA PATHWAY :PREDICATION MV2290 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2282 :RAW-TEXT "pathway")
 (:VAR MV2290 :ISA REGULATE :AFFECTED-PROCESS MV2284 :THAT-REL T :AGENT MV2277
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2277 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2282 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2279 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2294 :ISA LET :COMPLEMENT MV2308 :PRESENT "PRESENT")
 (:VAR MV2308 :ISA KNOW :AGENT MV2295 :STATEMENT MV2307 :PRESENT "PRESENT")
 (:VAR MV2295 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2307 :ISA WH-QUESTION :STATEMENT MV2306 :WH IF)
 (:VAR MV2306 :ISA THERE-EXISTS :VALUE MV2304 :PREDICATE MV2300)
 (:VAR MV2304 :ISA GENE :PREDICATION MV2305 :QUANTIFIER MV2301
  :CELLULAR-PROCESS MV2302 :RAW-TEXT "genes")
 (:VAR MV2305 :ISA REGULATE :OBJECT MV2304 :AGENT MV2293 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2293 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2301 :ISA ANY :WORD "any")
 (:VAR MV2302 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2300 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2310 :ISA LET :COMPLEMENT MV2316 :PRESENT "PRESENT")
 (:VAR MV2316 :ISA KNOW :AGENT MV2311 :STATEMENT MV2314 :PRESENT "PRESENT")
 (:VAR MV2311 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2314 :ISA GENE :PREDICATION MV2315 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2315 :ISA REGULATE :OBJECT MV2314 :AGENT MV2309 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2309 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2318 :ISA LIST :THEME MV2321 :PRESENT "PRESENT")
 (:VAR MV2321 :ISA GENE :PREDICATION MV2322 :QUANTIFIER MV2319 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2322 :ISA REGULATE :OBJECT MV2321 :AGENT MV2326 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2326 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2317 MV2325))
 (:VAR MV2317 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2325 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2319 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2329 :ISA LIST :THEME MV2330 :PRESENT "PRESENT")
 (:VAR MV2330 :ISA GENE :PREDICATION MV2331 :RAW-TEXT "genes")
 (:VAR MV2331 :ISA REGULATE :OBJECT MV2330 :AGENT MV2335 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2335 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2328 MV2334))
 (:VAR MV2328 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2334 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2338 :ISA LIST :THEME MV2340 :PRESENT "PRESENT")
 (:VAR MV2340 :ISA GENE :PREDICATION MV2348 :QUANTIFIER MV2339 :RAW-TEXT
  "genes")
 (:VAR MV2348 :ISA REGULATE :OBJECT MV2340 :THAT-REL T :AGENT MV2347 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2347 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2337 MV2346))
 (:VAR MV2337 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2346 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2339 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2351 :ISA LIST :THEME MV2357 :PRESENT "PRESENT")
 (:VAR MV2357 :ISA EVIDENCE :STATEMENT MV2356 :HAS-DETERMINER "THE")
 (:VAR MV2356 :ISA DECREASE :AGENT MV2355 :OBJECT MV2350 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2355 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2350 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2359 :ISA NAME-SOMETHING :PATIENT MV2362 :PRESENT "PRESENT")
 (:VAR MV2362 :ISA GENE :PREDICATION MV2363 :RAW-TEXT "genes")
 (:VAR MV2363 :ISA REGULATE :OBJECT MV2362 :AGENT MV2367 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2367 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2358 MV2366))
 (:VAR MV2358 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2366 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2384 :ISA COPULAR-PREDICATION :ITEM MV2374 :VALUE MV2379 :PREDICATE
  MV2378)
 (:VAR MV2374 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2375
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2372 :RAW-TEXT "genes")
 (:VAR MV2375 :ISA REGULATE :OBJECT MV2374 :AGENT MV2369 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2369 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2372 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2379 :ISA ACTIVE :ORGAN MV2382)
 (:VAR MV2382 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2378 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2402 :ISA COPULAR-PREDICATION :ITEM MV2393 :VALUE MV2397 :PREDICATE
  MV2396)
 (:VAR MV2393 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2394
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2391 :RAW-TEXT "genes")
 (:VAR MV2394 :ISA REGULATE :OBJECT MV2393 :AGENT MV2388 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2388 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2391 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2397 :ISA ACTIVE :ORGAN MV2400)
 (:VAR MV2400 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2396 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2417 :ISA COPULAR-PREDICATION :ITEM MV2408 :VALUE MV2415 :PREDICATE
  MV2414)
 (:VAR MV2408 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2409
  :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV2409 :ISA REGULATE :OBJECT MV2408 :AGENT MV2405 :ORGAN MV2412 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2405 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2412 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2415 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2414 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2431 :ISA COPULAR-PREDICATION :ITEM MV2425 :VALUE MV2429 :PREDICATE
  MV2428)
 (:VAR MV2425 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2426
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2424 :RAW-TEXT "genes")
 (:VAR MV2426 :ISA REGULATE :OBJECT MV2425 :AGENT MV2421 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2421 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2424 :ISA LIVER) (:VAR MV2429 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2428 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2444 :ISA COPULAR-PREDICATION :ITEM MV2438 :VALUE MV2442 :PREDICATE
  MV2441)
 (:VAR MV2438 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2439
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2437 :RAW-TEXT "genes")
 (:VAR MV2439 :ISA REGULATE :OBJECT MV2438 :AGENT MV2434 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2434 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2437 :ISA LIVER) (:VAR MV2442 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2441 :ISA BE :PRESENT "PRESENT"))

___________________
247: "Please find pathways involving SRF"

                    SOURCE-START
e8    BIO-FIND      1 "Please find pathways " 4
e7    INVOLVE       4 "involving SRF" 6
                    END-OF-SOURCE
                    SOURCE-START
e8    VP            1 "Please find pathways " 4
e7    VP+ING        4 "involving SRF" 6
                    END-OF-SOURCE


___________________
248: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV2454 :ISA SHOW :STATEMENT-OR-THEME MV2457 :BENEFICIARY MV2455 :PRESENT
  "PRESENT" :ADVERB MV2453)
 (:VAR MV2457 :ISA PATHWAY :PREDICATION MV2458 :MODIFIER MV2456 :RAW-TEXT
  "pathways")
 (:VAR MV2458 :ISA INVOLVE :THEME MV2457 :THEME MV2459 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2459 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2456 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2455 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2453 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2461 :ISA SHOW :STATEMENT-OR-THEME MV2463 :BENEFICIARY MV2462 :PRESENT
  "PRESENT" :ADVERB MV2460)
 (:VAR MV2463 :ISA PATHWAY :PREDICATION MV2464 :RAW-TEXT "pathways")
 (:VAR MV2464 :ISA INVOLVE :THEME MV2463 :THEME MV2465 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2465 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2462 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2460 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2467 :ISA BIO-ACTIVATE :AGENT MV2466 :OBJECT MV2468 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2466 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2468 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
251: "Remove the fact that MEK activates ERK"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    END-OF-SOURCE
("Remove the fact that MEK activates ERK"
 (:VAR MV2469 :ISA REMOVE :OBJECT MV2476 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2476 :ISA FACT :STATEMENT MV2474 :HAS-DETERMINER "THE")
 (:VAR MV2474 :ISA BIO-ACTIVATE :AGENT MV2473 :OBJECT MV2475 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2473 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2475 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
252: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV2479 :ISA BIO-ACTIVATE :AGENT MV2478 :OBJECT MV2480 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2478 :ISA PROTEIN-FAMILY :PREDICATION MV2477 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2477 :ISA INACTIVE)
 (:VAR MV2480 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
253: "Remove the fact that inactive MEK activates ERK"

                    SOURCE-START
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    END-OF-SOURCE
("Remove the fact that inactive MEK activates ERK"
 (:VAR MV2481 :ISA REMOVE :OBJECT MV2489 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2489 :ISA FACT :STATEMENT MV2487 :HAS-DETERMINER "THE")
 (:VAR MV2487 :ISA BIO-ACTIVATE :AGENT MV2486 :OBJECT MV2488 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2486 :ISA PROTEIN-FAMILY :PREDICATION MV2485 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2485 :ISA INACTIVE)
 (:VAR MV2488 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
254: "Show immune system pathways"

                    SOURCE-START
e5    SHOW          1 "Show immune system pathways" 5
                    END-OF-SOURCE
("Show immune system pathways"
 (:VAR MV2491 :ISA SHOW :STATEMENT-OR-THEME MV2492 :PRESENT "PRESENT")
 (:VAR MV2492 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2490 :RAW-TEXT "pathways")
 (:VAR MV2490 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2493 :ISA SHOW :STATEMENT-OR-THEME MV2495 :BENEFICIARY MV2494 :PRESENT
  "PRESENT")
 (:VAR MV2495 :ISA PATHWAY :PREDICATION MV2496 :RAW-TEXT "pathways")
 (:VAR MV2496 :ISA INVOLVE :THEME MV2495 :THEME MV2497 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2497 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2494 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2498 :ISA SHOW :STATEMENT-OR-THEME MV2500 :BENEFICIARY MV2499 :PRESENT
  "PRESENT")
 (:VAR MV2500 :ISA PATHWAY :PATHWAYCOMPONENT MV2502 :RAW-TEXT "pathways")
 (:VAR MV2502 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2504 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2504 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2499 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2507 :ISA SHOW :STATEMENT-OR-THEME MV2509 :BENEFICIARY MV2508 :PRESENT
  "PRESENT")
 (:VAR MV2509 :ISA PATHWAY :PATHWAYCOMPONENT MV2511 :RAW-TEXT "pathways")
 (:VAR MV2511 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2508 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2514 :ISA SHOW :STATEMENT-OR-THEME MV2521 :BENEFICIARY MV2515 :PRESENT
  "PRESENT")
 (:VAR MV2521 :ISA EVIDENCE :STATEMENT MV2520 :HAS-DETERMINER "THE")
 (:VAR MV2520 :ISA DECREASE :AGENT MV2519 :OBJECT MV2513 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2519 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2513 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2515 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2523 :ISA SHOW :STATEMENT-OR-THEME MV2534 :BENEFICIARY MV2524 :PRESENT
  "PRESENT")
 (:VAR MV2534 :ISA EVIDENCE :STATEMENT MV2529 :HAS-DETERMINER "THE")
 (:VAR MV2529 :ISA DECREASE :AGENT MV2528 :AFFECTED-PROCESS-OR-OBJECT MV2531
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2528 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2531 :ISA BIO-AMOUNT :MEASURED-ITEM MV2522 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2522 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2524 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2536 :ISA SHOW :STATEMENT-OR-THEME MV2543 :BENEFICIARY MV2537 :PRESENT
  "PRESENT")
 (:VAR MV2543 :ISA EVIDENCE :STATEMENT MV2542 :HAS-DETERMINER "THE")
 (:VAR MV2542 :ISA REGULATE :AGENT MV2541 :OBJECT MV2535 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2541 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2535 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2537 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2546 :ISA SHOW :STATEMENT-OR-THEME MV2544 :PRESENT "PRESENT")
 (:VAR MV2544 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2547 :RAW-TEXT
  "transcription factors")
 (:VAR MV2547 :ISA SHARE :OBJECT MV2544 :PARTICIPANT MV2551 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2551 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2545 MV2550))
 (:VAR MV2545 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2550 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
262: "Tell me how stat3 regulates apoptosis"

                    SOURCE-START
e10   TELL          1 "Tell me " 3
e9    REGULATE      3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE
                    SOURCE-START
e10   VG            1 "Tell me " 3
e9    HOWCOMP       3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE


___________________
263: "Tell me what apoptotic pathways are regulated by stat3 in the liver"

                    SOURCE-START
e27   TELL          1 "Tell me what apoptotic pathways are regulated by stat3 in the liver" 14
                    END-OF-SOURCE
("Tell me what apoptotic pathways are regulated by stat3 in the liver"
 (:VAR MV2561 :ISA TELL :THEME MV2573 :THEME MV2562 :PRESENT "PRESENT")
 (:VAR MV2573 :ISA REGULATE :AFFECTED-PROCESS MV2566 :AGENT MV2560 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2566 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2564
  :RAW-TEXT "pathways")
 (:VAR MV2564 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2560 :ISA PROTEIN :ORGAN MV2572 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2572 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2562 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2577 :ISA TELL :THEME MV2580 :BENEFICIARY MV2578 :PRESENT "PRESENT")
 (:VAR MV2580 :ISA GENE :PREDICATION MV2583 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2583 :ISA REGULATE :OBJECT MV2580 :AGENT MV2584 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2584 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2576 MV2582))
 (:VAR MV2576 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2582 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2578 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2586 :ISA TELL :THEME MV2596 :THEME MV2587 :PRESENT "PRESENT")
 (:VAR MV2596 :ISA REGULATE :AFFECTED-PROCESS MV2589 :AGENT MV2585 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2589 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2585 :ISA PROTEIN :ORGAN MV2595 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2595 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2587 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2602 :ISA INVOLVE :THEME MV2601 :THEME MV2604 :PRESENT "PRESENT")
 (:VAR MV2601 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2600 :RAW-TEXT
  "pathways")
 (:VAR MV2600 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2604 :ISA SIGNAL :MODIFIER MV2603 :RAW-TEXT "signaling")
 (:VAR MV2603 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2612 :ISA REGULATE :OBJECT MV2608 :AGENT MV2606 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2608 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2605 :RAW-TEXT
  "phosphatases")
 (:VAR MV2605 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2606 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2619 :ISA BE :SUBJECT MV2618 :PREDICATE MV2620 :PRESENT "PRESENT")
 (:VAR MV2618 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2616
  :RAW-TEXT "genes")
 (:VAR MV2616 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2620 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2614 :RAW-TEXT
  "downstream")
 (:VAR MV2614 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2630 :ISA REGULATE :OBJECT MV2628 :AGENT MV2624 :ORGAN MV2633 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2628 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2626
  :RAW-TEXT "genes")
 (:VAR MV2626 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2624 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2633 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2641 :ISA REGULATE :OBJECT MV2639 :AGENT MV2635 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2639 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2637
  :RAW-TEXT "genes")
 (:VAR MV2637 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2635 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2647 :ISA BE :SUBJECT MV2646 :PREDICATE MV2648 :PRESENT "PRESENT")
 (:VAR MV2646 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2644
  :RAW-TEXT "genes")
 (:VAR MV2644 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2648 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2646 :MODIFIER MV2642
  :RAW-TEXT "upstream")
 (:VAR MV2642 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2656 :ISA INVOLVE :THEME MV2655 :THEME MV2651 :PRESENT "PRESENT")
 (:VAR MV2655 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2653
  :RAW-TEXT "pathways")
 (:VAR MV2653 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2651 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2658 :ISA BE :SUBJECT MV2657 :PREDICATE MV2661 :PRESENT "PRESENT")
 (:VAR MV2657 :ISA WHAT)
 (:VAR MV2661 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2660 :RAW-TEXT "targets")
 (:VAR MV2660 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2665 :ISA BE :SUBJECT MV2664 :PREDICATE MV2667 :PRESENT "PRESENT")
 (:VAR MV2664 :ISA WHAT)
 (:VAR MV2667 :ISA INHIBITOR :QUANTIFIER MV2666 :PROTEIN MV2663 :RAW-TEXT
  "inhibitors")
 (:VAR MV2666 :ISA SOME :WORD "some")
 (:VAR MV2663 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2669 :ISA BE :SUBJECT MV2668 :PREDICATE MV2671 :PRESENT "PRESENT")
 (:VAR MV2668 :ISA WHAT)
 (:VAR MV2671 :ISA DRUG :PREDICATION MV2673 :QUANTIFIER MV2670 :RAW-TEXT
  "drugs")
 (:VAR MV2673 :ISA INHIBIT :AGENT MV2671 :THAT-REL T :OBJECT MV2674 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2674 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2670 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2677 :ISA BE :SUBJECT MV2676 :PREDICATE MV2679 :PRESENT "PRESENT")
 (:VAR MV2676 :ISA WHAT)
 (:VAR MV2679 :ISA GENE :CONTEXT MV2675 :QUANTIFIER MV2678 :RAW-TEXT "genes")
 (:VAR MV2675 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2682
  :RAW-TEXT "signaling pathway")
 (:VAR MV2682 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2678 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2686 :ISA BE :SUBJECT MV2685 :PREDICATE MV2688 :PRESENT "PRESENT")
 (:VAR MV2685 :ISA WHAT)
 (:VAR MV2688 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2684 :QUANTIFIER MV2687
  :RAW-TEXT "proteins")
 (:VAR MV2684 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2691
  :RAW-TEXT "signaling pathway")
 (:VAR MV2691 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2687 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2694 :ISA BE :SUBJECT MV2693 :PREDICATE MV2696 :PRESENT "PRESENT")
 (:VAR MV2693 :ISA WHAT)
 (:VAR MV2696 :ISA MEMBER :SET MV2698 :HAS-DETERMINER "THE")
 (:VAR MV2698 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
279: "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2704 :ISA BE :SUBJECT MV2703 :PREDICATE MV2706 :PRESENT "PRESENT")
 (:VAR MV2703 :ISA WHAT)
 (:VAR MV2706 :ISA MICRO-RNA :PREDICATION MV2708 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2708 :ISA REGULATE :AGENT MV2706 :THAT-REL T :OBJECT MV2712 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2712 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2709 MV2710 MV2700 MV2701 MV2702))
 (:VAR MV2709 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2710 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2700 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2701 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2702 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2714 :ISA BE :SUBJECT MV2713 :PREDICATE MV2716 :PRESENT "PRESENT")
 (:VAR MV2713 :ISA WHAT)
 (:VAR MV2716 :ISA REGULATOR :THEME MV2722 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2722 :ISA BIO-ENTITY :ORGAN MV2721 :NAME "MAPPK14")
 (:VAR MV2721 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2727 :ISA BE :SUBJECT MV2726 :PREDICATE MV2729 :PRESENT "PRESENT")
 (:VAR MV2726 :ISA WHAT)
 (:VAR MV2729 :ISA REGULATOR :THEME MV2725 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2725 :ISA PROTEIN :ORGAN MV2732 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2732 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2737 :ISA BE :SUBJECT MV2736 :PREDICATE MV2739 :PRESENT "PRESENT")
 (:VAR MV2736 :ISA WHAT)
 (:VAR MV2739 :ISA REGULATOR :THEME MV2735 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2735 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2744 :ISA BE :SUBJECT MV2743 :PREDICATE MV2746 :PRESENT "PRESENT")
 (:VAR MV2743 :ISA WHAT)
 (:VAR MV2746 :ISA REGULATOR :THEME MV2742 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2742 :ISA PROTEIN :ORGAN MV2749 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2749 :ISA LUNG))

___________________
284: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e20   IN            1 "What are the regulators of mapk14 in bladeeer" 10
                    END-OF-SOURCE
("What are the regulators of mapk14 in bladeeer"
 (:VAR MV2765 :ISA WH-QUESTION :STATEMENT MV2763 :WH WHAT)
 (:VAR MV2763 :ISA PREPOSITIONAL-PHRASE :POBJ MV2762 :PREP "IN")
 (:VAR MV2762 :ISA BIO-ENTITY :NAME "bladeeer"))

___________________
285: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2768 :ISA BE :SUBJECT MV2767 :PREDICATE MV2770 :PRESENT "PRESENT")
 (:VAR MV2767 :ISA WHAT)
 (:VAR MV2770 :ISA REGULATOR :THEME MV2766 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2766 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2787 :ISA COPULAR-PREDICATION :ITEM MV2776 :VALUE MV2774 :PREDICATE
  MV2777)
 (:VAR MV2776 :ISA WHAT) (:VAR MV2774 :ISA IN-COMMON :THEME MV2784)
 (:VAR MV2784 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2785 :RAW-TEXT
  "genes")
 (:VAR MV2785 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2781 MV2782 MV2775))
 (:VAR MV2781 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2782 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2775 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2777 :ISA BE :PREDICATE MV2773 :PRESENT "PRESENT")
 (:VAR MV2773 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2790 :ISA BE :SUBJECT MV2789 :PREDICATE MV2788 :PRESENT "PRESENT")
 (:VAR MV2789 :ISA WHAT)
 (:VAR MV2788 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2793 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2793 :ISA REGULATE :AGENT MV2788 :THAT-REL T :OBJECT MV2799 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2799 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2798 MV2797))
 (:VAR MV2798 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2797 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2804 :ISA BE :SUBJECT MV2803 :PREDICATE MV2800 :PRESENT "PRESENT")
 (:VAR MV2803 :ISA WHAT)
 (:VAR MV2800 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2807 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2807 :ISA REGULATE :AGENT MV2800 :THAT-REL T :OBJECT MV2814 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2814 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2808 MV2809 MV2813 MV2801 MV2802))
 (:VAR MV2808 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2809 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2813 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2801 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2802 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2820 :ISA BE :SUBJECT MV2819 :PREDICATE MV2815 :PRESENT "PRESENT")
 (:VAR MV2819 :ISA WHAT)
 (:VAR MV2815 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2823 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2823 :ISA REGULATE :AGENT MV2815 :THAT-REL T :OBJECT MV2827 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2827 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2824 MV2825 MV2816 MV2817 MV2818))
 (:VAR MV2824 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2825 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2816 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2817 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2818 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2832 :ISA BE :SUBJECT MV2831 :PREDICATE MV2836 :PRESENT "PRESENT")
 (:VAR MV2831 :ISA WHAT)
 (:VAR MV2836 :ISA REGULATOR :THEME MV2840 :HAS-DETERMINER "THE" :CONTEXT
  MV2834 :RAW-TEXT "regulators")
 (:VAR MV2840 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2828 MV2829 MV2838 MV2830))
 (:VAR MV2828 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2829 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2838 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2830 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2834 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2849 :ISA REGULATE :OBJECT MV2844 :AGENT MV2848 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2844 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2842
  :RAW-TEXT "genes")
 (:VAR MV2842 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :NAME "cell cycle"
  :UID "GO:0007049")
 (:VAR MV2848 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2854 :ISA REGULATE :OBJECT MV2851 :AGENT MV2853 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2851 :ISA WHAT)
 (:VAR MV2853 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2858 :ISA REGULATE :OBJECT MV2855 :AGENT-OR-CAUSE MV2857 :ORGAN MV2860
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2855 :ISA WHAT) (:VAR MV2857 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2860 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2866 :ISA TARGET :OBJECT MV2863 :AGENT MV2862 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2863 :ISA WHAT)
 (:VAR MV2862 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2870 :ISA REGULATE :OBJECT MV2868 :AGENT MV2867 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2868 :ISA WHAT)
 (:VAR MV2867 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2874 :ISA REGULATE :OBJECT MV2872 :AGENT MV2871 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2872 :ISA WHAT)
 (:VAR MV2871 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2878 :ISA REGULATE :OBJECT MV2876 :AGENT MV2875 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2876 :ISA WHAT)
 (:VAR MV2875 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2882 :ISA REGULATE :OBJECT MV2879 :AGENT MV2881 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2879 :ISA WHAT)
 (:VAR MV2881 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2885 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2884 :OBJECT MV2883 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2884 :ISA WHAT)
 (:VAR MV2883 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2899 :ISA BIO-USE :PATIENT MV2888 :MODAL MV2889 :AGENT MV2890 :THEME
  MV2898 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2888 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2889 :ISA COULD) (:VAR MV2890 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2898 :ISA TARGET :OBJECT MV2886 :RAW-TEXT "target")
 (:VAR MV2886 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2911 :ISA BIO-USE :OBJECT MV2902 :MODAL MV2903 :AGENT MV2904 :DISEASE
  MV2900 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2902 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2903 :ISA SHOULD) (:VAR MV2904 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2900 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2915 :ISA BE :SUBJECT MV2914 :PREDICATE MV2916 :PRESENT "PRESENT")
 (:VAR MV2914 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2916 :ISA INHIBITOR :PROTEIN MV2912 :RAW-TEXT "inhibitors")
 (:VAR MV2912 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2922 :ISA INHIBIT :AGENT MV2921 :OBJECT MV2919 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2921 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2919 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2925 :ISA REGULATE :AGENT MV2924 :OBJECT MV2926 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2924 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2926 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2930 :ISA TARGET :AGENT MV2928 :OBJECT MV2931 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2928 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2931 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2935 :ISA BE :SUBJECT MV2934 :PREDICATE MV2936 :PRESENT "PRESENT")
 (:VAR MV2934 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2936 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2932 :RAW-TEXT
  "downstream")
 (:VAR MV2932 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2950 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2942 :VALUE MV2949 :PREP
  "IN" :PREDICATE MV2943)
 (:VAR MV2942 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2949 :ISA GENE :CONTEXT MV2940 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2940 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2946
  :RAW-TEXT "signaling pathway")
 (:VAR MV2946 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2943 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2962 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2954 :VALUE MV2961 :PREP
  "IN" :PREDICATE MV2955)
 (:VAR MV2954 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2961 :ISA GENE :CONTEXT MV2952 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2952 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2958
  :RAW-TEXT "signaling pathways")
 (:VAR MV2958 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV2955 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2974 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2966 :VALUE MV2973 :PREP
  "IN" :PREDICATE MV2967)
 (:VAR MV2966 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2973 :ISA GENE :CONTEXT MV2970 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2970 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2964
  :RAW-TEXT "pathway")
 (:VAR MV2964 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV2967 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2986 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2978 :VALUE MV2985 :PREP
  "IN" :PREDICATE MV2979)
 (:VAR MV2978 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2985 :ISA GENE :CONTEXT MV2976 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2976 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2982
  :RAW-TEXT "signaling pathway")
 (:VAR MV2982 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2979 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV2999 :ISA INVOLVE :THEME MV2991 :CONTEXT MV2996 :PRESENT "PRESENT")
 (:VAR MV2991 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2996 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2989 :RAW-TEXT
  "pathway")
 (:VAR MV2989 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3010 :ISA INVOLVE :THEME MV3001 :CONTEXT MV3007 :PRESENT "PRESENT")
 (:VAR MV3001 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3007 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3006 :RAW-TEXT
  "pathway")
 (:VAR MV3006 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3021 :ISA INVOLVE :THEME MV3013 :CONTEXT MV3018 :PRESENT "PRESENT")
 (:VAR MV3013 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3018 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3011 :RAW-TEXT
  "pathway")
 (:VAR MV3011 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12"))

___________________
314: "What genes are involved in the immune system pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the immune system pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the immune system pathway?"
 (:VAR MV3032 :ISA INVOLVE :THEME MV3024 :CONTEXT MV3029 :PRESENT "PRESENT")
 (:VAR MV3024 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3029 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3022
  :RAW-TEXT "pathway")
 (:VAR MV3022 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3045 :ISA REGULATE :OBJECT MV3037 :AGENT MV3044 :PRESENT "PRESENT"
  :SUPERLATIVE MV3039 :ADVERB MV3040 :RAW-TEXT "regulated")
 (:VAR MV3037 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3044 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3033 MV3034 MV3035))
 (:VAR MV3033 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3034 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3035 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3039 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3040 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3060 :ISA REGULATE :OBJECT MV3052 :AGENT MV3059 :PRESENT "PRESENT"
  :SUPERLATIVE MV3054 :ADVERB MV3055 :RAW-TEXT "regulated")
 (:VAR MV3052 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3059 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3047 MV3048 MV3049 MV3050))
 (:VAR MV3047 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3048 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3049 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3050 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3054 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3055 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3075 :ISA REGULATE :OBJECT MV3067 :AGENT MV3074 :PRESENT "PRESENT"
  :SUPERLATIVE MV3069 :ADVERB MV3070 :RAW-TEXT "regulated")
 (:VAR MV3067 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3074 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3062 MV3063 MV3064 MV3065))
 (:VAR MV3062 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3063 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3064 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3065 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3069 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3070 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3083 :ISA REGULATE :OBJECT MV3078 :AGENT MV3082 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3078 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3082 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3094 :ISA REGULATE :OBJECT MV3087 :AGENT MV3093 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3087 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3093 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3085 MV3092))
 (:VAR MV3085 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3092 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3105 :ISA REGULATE :OBJECT MV3099 :AGENT MV3104 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3099 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3104 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3096 MV3097))
 (:VAR MV3096 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3097 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3115 :ISA REGULATE :OBJECT MV3108 :AGENT MV3114 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3108 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3114 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3123 :ISA REGULATE :OBJECT MV3118 :AGENT MV3122 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3118 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3122 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3134 :ISA REGULATE :OBJECT MV3127 :AGENT MV3133 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3127 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3133 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3125 MV3132))
 (:VAR MV3125 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3132 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3142 :ISA TARGET :OBJECT MV3138 :CAUSE MV3136 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3138 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3136 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3156 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3146 :VALUE MV3155 :PREP
  "IN" :PREDICATE MV3147)
 (:VAR MV3146 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3155 :ISA GENE :CONTEXT MV3144 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3144 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3152
  :RAW-TEXT "signaling pathway")
 (:VAR MV3152 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3147 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3166 :ISA BIO-USE :OBJECT MV3160 :CONTEXT MV3158 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3160 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3158 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3165
  :RAW-TEXT "signaling pathway")
 (:VAR MV3165 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019"))

___________________
327: "What genes does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What genes does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does lung cancer target?"
 (:VAR MV3173 :ISA TARGET :OBJECT MV3170 :CAUSE MV3168 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3170 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3168 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3179 :ISA TARGET :OBJECT MV3176 :AGENT MV3174 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3176 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3174 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3185 :ISA TARGET :OBJECT MV3182 :AGENT MV3180 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3182 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3180 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3190 :ISA UPREGULATE :OBJECT MV3188 :AGENT MV3186 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3188 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3186 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3195 :ISA REGULATE :OBJECT MV3193 :AGENT MV3191 :CELL-TYPE MV3198
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3193 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3191 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3198 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3197)
 (:VAR MV3197 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3204 :ISA REGULATE :OBJECT MV3202 :AGENT MV3200 :ORGAN MV3206 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3202 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3200 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3206 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3212 :ISA REGULATE :OBJECT MV3210 :AGENT MV3208 :ORGAN MV3214 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3210 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3208 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3214 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3220 :ISA REGULATE :OBJECT MV3218 :AGENT MV3216 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3218 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3216 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3228 :ISA REGULATE :OBJECT MV3223 :AGENT MV3221 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3223 :ISA GENE :ORGAN MV3226 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3226 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3221 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

                    SOURCE-START
e12   FROM          1 "What genes is stat3 upstream from" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream from?"
 (:VAR MV3237 :ISA WH-QUESTION :STATEMENT MV3236 :VAR NIL :WH WHAT)
 (:VAR MV3236 :ISA FROM :WORD "from"))

___________________
337: "What genes is stat3 upstream of?"

                    SOURCE-START
e12   BE            1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV3241 :ISA BE :SUBJECT MV3240 :PREDICATE MV3242 :PRESENT "PRESENT")
 (:VAR MV3240 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3242 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3240 :MODIFIER MV3238
  :RAW-TEXT "upstream")
 (:VAR MV3238 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3250 :ISA BE :SUBJECT MV3246 :PREDICATE MV3251 :PRESENT "PRESENT")
 (:VAR MV3246 :ISA GENE :PREDICATION MV3247 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3247 :ISA REGULATE :OBJECT MV3246 :AGENT MV3249 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3249 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3251 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3258 :ISA BE :SUBJECT MV3255 :PREDICATE MV3259 :PRESENT "PRESENT")
 (:VAR MV3255 :ISA GENE :PREDICATION MV3256 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3256 :ISA REGULATE :OBJECT MV3255 :AGENT MV3253 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3253 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3259 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3265 :ISA INVOLVE :THEME MV3264 :THEME MV3268 :PRESENT "PRESENT")
 (:VAR MV3264 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3263 :RAW-TEXT
  "pathways")
 (:VAR MV3263 :ISA IMMUNE :NAME "immune")
 (:VAR MV3268 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3266 MV3261))
 (:VAR MV3266 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3261 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3272 :ISA INVOLVE :THEME MV3271 :THEME MV3273 :PRESENT "PRESENT")
 (:VAR MV3271 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3270 :RAW-TEXT
  "pathways")
 (:VAR MV3270 :ISA IMMUNE :NAME "immune")
 (:VAR MV3273 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3278 :ISA INVOLVE :THEME MV3277 :THEME MV3281 :PRESENT "PRESENT")
 (:VAR MV3277 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3276 :RAW-TEXT
  "pathways")
 (:VAR MV3276 :ISA IMMUNE :NAME "immune")
 (:VAR MV3281 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3279 MV3274))
 (:VAR MV3279 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3274 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3285 :ISA INVOLVE :THEME MV3284 :THEME MV3295 :PRESENT "PRESENT")
 (:VAR MV3284 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3283 :RAW-TEXT
  "pathways")
 (:VAR MV3283 :ISA IMMUNE :NAME "immune")
 (:VAR MV3295 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3293 MV3294))
 (:VAR MV3293 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3294 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3297 :ISA INHIBIT :AGENT-OR-CAUSE MV3296 :OBJECT MV3298 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3296 :ISA WHAT)
 (:VAR MV3298 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3301 :ISA BE :SUBJECT MV3300 :PREDICATE MV3299 :PRESENT "PRESENT")
 (:VAR MV3300 :ISA WHAT)
 (:VAR MV3299 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3303 :ISA BE :SUBJECT MV3302 :PREDICATE MV3304 :PRESENT "PRESENT")
 (:VAR MV3302 :ISA WHAT)
 (:VAR MV3304 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3307 :ISA BE :SUBJECT MV3306 :PREDICATE MV3308 :PRESENT "PRESENT")
 (:VAR MV3306 :ISA WHAT)
 (:VAR MV3308 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3305 :RAW-TEXT
  "downstream")
 (:VAR MV3305 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3313 :ISA BE :SUBJECT MV3312 :PREDICATE MV3314 :PRESENT "PRESENT")
 (:VAR MV3312 :ISA WHAT)
 (:VAR MV3314 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3316 :ISA BE :SUBJECT MV3315 :PREDICATE MV3317 :PRESENT "PRESENT")
 (:VAR MV3315 :ISA WHAT) (:VAR MV3317 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3323 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3319 :AGENT MV3318
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3319 :ISA WHAT)
 (:VAR MV3318 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3327 :ISA BE :SUBJECT MV3326 :PREDICATE MV3333 :PRESENT "PRESENT")
 (:VAR MV3326 :ISA WHAT)
 (:VAR MV3333 :ISA EVIDENCE :STATEMENT MV3332 :HAS-DETERMINER "THE")
 (:VAR MV3332 :ISA DECREASE :AGENT MV3331 :OBJECT MV3325 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3331 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3325 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3336 :ISA BE :SUBJECT MV3335 :PREDICATE MV3346 :PRESENT "PRESENT")
 (:VAR MV3335 :ISA WHAT)
 (:VAR MV3346 :ISA EVIDENCE :STATEMENT MV3341 :HAS-DETERMINER "THE")
 (:VAR MV3341 :ISA DECREASE :AGENT MV3340 :AFFECTED-PROCESS-OR-OBJECT MV3343
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3340 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3343 :ISA BIO-AMOUNT :MEASURED-ITEM MV3334 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3334 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3348 :ISA BE :SUBJECT MV3347 :PREDICATE MV3350 :PRESENT "PRESENT")
 (:VAR MV3347 :ISA WHAT)
 (:VAR MV3350 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV3353 :HAS-DETERMINER "THE"
  :RAW-TEXT "target")
 (:VAR MV3353 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3359 :ISA REGULATE :OBJECT MV3357 :AGENT MV3355 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3357 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3355 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3367 :ISA REGULATE :AGENT MV3364 :OBJECT MV3371 :PRESENT "PRESENT"
  :ADVERB MV3365 :ADVERB MV3366 :RAW-TEXT "regulate")
 (:VAR MV3364 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3371 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3368 MV3369 MV3360 MV3361 MV3362))
 (:VAR MV3368 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3369 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3360 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3361 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3362 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3365 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3366 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3377 :ISA REGULATE :AGENT MV3376 :OBJECT MV3381 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3376 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3381 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3378 MV3379 MV3372 MV3373 MV3374))
 (:VAR MV3378 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3379 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3372 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3373 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3374 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3388 :ISA REGULATE :OBJECT MV3384 :AGENT MV3382 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3384 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3382 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3393 :ISA REGULATE :AGENT MV3392 :OBJECT MV3394 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3392 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3394 :ISA GENE :CONTEXT MV3390 :RAW-TEXT "genes")
 (:VAR MV3390 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3397
  :RAW-TEXT "signaling pathways")
 (:VAR MV3397 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019"))

___________________
359: "What pahtways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pahtways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pahtways involve SRF?"
 (:VAR MV3400 :ISA INVOLVE :THEME MV3402 :THEME MV3401 :PRESENT "PRESENT")
 (:VAR MV3402 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3401 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3413 :ISA COPULAR-PREDICATION :ITEM MV3405 :VALUE MV3407 :PREDICATE
  MV3406)
 (:VAR MV3405 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3407 :ISA COMMON :THEME MV3411)
 (:VAR MV3411 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3403 MV3410))
 (:VAR MV3403 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3410 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3406 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3416 :ISA INVOLVE :THEME MV3415 :THEME MV3417 :PRESENT "PRESENT")
 (:VAR MV3415 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3417 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3421 :ISA INVOLVE :THEME MV3420 :THEME MV3424 :PRESENT "PRESENT")
 (:VAR MV3420 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3424 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3422 MV3418))
 (:VAR MV3422 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3418 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3428 :ISA INVOLVE :THEME MV3427 :THEME MV3425 :PRESENT "PRESENT")
 (:VAR MV3427 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3425 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3430
  :RAW-TEXT "transcription factor")
 (:VAR MV3430 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e16   KINASE        1 "What pathways utilize srf and is srf a kinase" 10
                    END-OF-SOURCE
("What pathways utilize srf and is srf a kinase"
 (:VAR MV3441 :ISA WH-QUESTION :STATEMENT MV3439 :VAR NIL :WH WHAT)
 (:VAR MV3439 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
365: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3452 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3443 :VALUE MV3450 :PREP
  MV3445 :PREDICATE MV3444)
 (:VAR MV3443 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3450 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3445 :ISA IN :WORD "in") (:VAR MV3444 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3459 :ISA TARGET :OBJECT MV3455 :CAUSE MV3453 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3455 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3453 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3466 :ISA TARGET :OBJECT MV3463 :AGENT MV3461 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3463 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3461 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3472 :ISA TARGET :OBJECT MV3469 :CAUSE MV3467 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3469 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3467 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3478 :ISA TARGET :OBJECT MV3474 :AGENT MV3476 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3474 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3476 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3483 :ISA LEAD :AGENT MV3481 :THEME MV3486 :MODAL MV3482 :RAW-TEXT
  "lead")
 (:VAR MV3481 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3486 :ISA DEVELOPMENT :DISEASE MV3479 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3479 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV3482 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3494 :ISA LEAD :AGENT MV3492 :THEME MV3497 :MODAL MV3493 :RAW-TEXT
  "lead")
 (:VAR MV3492 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3497 :ISA DEVELOPMENT :DISEASE MV3490 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3490 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV3493 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3504 :ISA INVOLVE :THEME MV3503 :THEME MV3506 :PRESENT "PRESENT")
 (:VAR MV3503 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3502 :RAW-TEXT
  "pathways")
 (:VAR MV3502 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3506 :ISA SIGNAL :MODIFIER MV3505 :RAW-TEXT "signaling")
 (:VAR MV3505 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3508 :ISA REGULATE :AGENT-OR-CAUSE MV3507 :OBJECT MV3509 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3507 :ISA WHAT)
 (:VAR MV3509 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3512 :ISA REGULATE :AGENT-OR-CAUSE MV3511 :OBJECT MV3510 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3511 :ISA WHAT)
 (:VAR MV3510 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3515 :ISA REGULATE :AGENT-OR-CAUSE MV3514 :OBJECT MV3513 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3514 :ISA WHAT)
 (:VAR MV3513 :ISA PROTEIN :ORGAN MV3517 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3517 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3528 :ISA SHARE :OBJECT MV3519 :PARTICIPANT MV3527 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3519 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3527 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3525 MV3520))
 (:VAR MV3525 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3520 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3539 :ISA SHARE :OBJECT MV3530 :PARTICIPANT MV3538 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3530 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3538 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3531 MV3537))
 (:VAR MV3531 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3537 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3551 :ISA SHARE :OBJECT MV3541 :PARTICIPANT MV3550 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3541 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3550 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3542 MV3543 MV3549))
 (:VAR MV3542 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3543 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3549 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
379: "What tissues is STAT3 expressed in?"

                    SOURCE-START
e8    TISSUE        1 "What tissues " 3
e4    BE            3 "is " 4
e1    PROTEIN       4 "STAT3 " 6
e5    GENE-TRANSCRIPT-EXPRESS 6 "expressed " 7
e7    IN            7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e8    NP            1 "What tissues " 3
e4    VG            3 "is " 4
e1    PROPER-NOUN   4 "STAT3 " 6
e5    VG+ED         6 "expressed " 7
e7    PREPOSITION   7 "in" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
380: "What transcription factor produces SMURF2?"

                    SOURCE-START
e8    BIO-PRODUCE   1 "What transcription factor produces SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor produces SMURF2?"
 (:VAR MV3562 :ISA BIO-PRODUCE :AGENT MV3559 :OBJECT MV3560 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3559 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3560 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3566 :ISA TRANSCRIBE :AGENT MV3563 :OBJECT MV3564 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3563 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3564 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3582 :ISA COPULAR-PREDICATION :ITEM MV3567 :VALUE MV3574 :PREDICATE
  MV3573)
 (:VAR MV3567 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3574 :ISA COMMON :THEME MV3579)
 (:VAR MV3579 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3580 :RAW-TEXT
  "genes")
 (:VAR MV3580 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3568 MV3569 MV3577 MV3570 MV3571))
 (:VAR MV3568 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3569 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3577 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3570 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3571 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3573 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3596 :ISA COPULAR-PREDICATION :ITEM MV3583 :VALUE MV3589 :PREDICATE
  MV3588)
 (:VAR MV3583 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3589 :ISA COMMON :THEME MV3593)
 (:VAR MV3593 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3594 :RAW-TEXT
  "genes")
 (:VAR MV3594 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3584 MV3585 MV3586))
 (:VAR MV3584 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3585 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3586 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3588 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3601 :ISA REGULATE :OBJECT MV3599 :AGENT MV3597 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3599 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3597 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3610 :ISA COPULAR-PREDICATION :ITEM MV3602 :VALUE MV3605 :PREDICATE
  MV3604)
 (:VAR MV3602 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3605 :ISA COMMON :THEME MV3608)
 (:VAR MV3608 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3604 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3626 :ISA COPULAR-PREDICATION :ITEM MV3611 :VALUE MV3612 :PREDICATE
  MV3618)
 (:VAR MV3611 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3612 :ISA IN-COMMON :THEME MV3623)
 (:VAR MV3623 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3624 :RAW-TEXT
  "genes")
 (:VAR MV3624 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3613 MV3614 MV3621 MV3615 MV3616))
 (:VAR MV3613 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3614 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3621 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3615 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3616 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3618 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3640 :ISA COPULAR-PREDICATION :ITEM MV3627 :VALUE MV3628 :PREDICATE
  MV3633)
 (:VAR MV3627 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3628 :ISA IN-COMMON :THEME MV3637)
 (:VAR MV3637 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3638 :RAW-TEXT
  "genes")
 (:VAR MV3638 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3629 MV3630 MV3631))
 (:VAR MV3629 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3630 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3631 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3633 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3644 :ISA BE :SUBJECT MV3641 :PREDICATE MV3645 :PRESENT "PRESENT")
 (:VAR MV3641 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3645 :ISA REGULATOR :THEME MV3642 :RAW-TEXT "regulators")
 (:VAR MV3642 :ISA PROTEIN :ORGAN MV3648 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3648 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3654 :ISA BE :SUBJECT MV3651 :PREDICATE MV3655 :PRESENT "PRESENT")
 (:VAR MV3651 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3655 :ISA REGULATOR :THEME MV3652 :RAW-TEXT "regulators")
 (:VAR MV3652 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3670 :ISA SHARE :OBJECT MV3658 :PARTICIPANT MV3668 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3658 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3668 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3669 :RAW-TEXT
  "genes")
 (:VAR MV3669 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3665 MV3666 MV3659))
 (:VAR MV3665 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3666 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3659 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3675 :ISA REGULATE :AGENT MV3672 :OBJECT MV3673 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3672 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3673 :ISA PROTEIN :ORGAN MV3677 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3677 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3682 :ISA REGULATE :AGENT MV3679 :OBJECT MV3680 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3679 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3680 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3685 :ISA REGULATE :AGENT MV3683 :OBJECT MV3686 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3683 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3686 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
394: "What transcription factors regulate genes in the mapk signaling pathwya"

                    SOURCE-START
e19   REGULATE      1 "What transcription factors regulate genes in the mapk signaling pathwya" 11
                    END-OF-SOURCE
("What transcription factors regulate genes in the mapk signaling pathwya"
 (:VAR MV3689 :ISA REGULATE :AGENT MV3687 :THEME MV3695 :OBJECT MV3690 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3687 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3695 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3693
  :CELLULAR-PROCESS MV3694 :NAME "pathwya")
 (:VAR MV3693 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3694 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3690 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3698 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3700 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3700 :ISA REGULATE :OBJECT MV3698 :AGENT MV3697 :RAW-TEXT "regulated")
 (:VAR MV3697 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3704 :ISA TRANSCRIBE :AGENT MV3701 :OBJECT MV3702 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3701 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3702 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3707 :ISA UPREGULATE :AGENT-OR-CAUSE MV3706 :OBJECT MV3705 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3706 :ISA WHAT)
 (:VAR MV3705 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3713 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3709 :OBJECT MV3708
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3709 :ISA WHERE)
 (:VAR MV3708 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3717 :ISA INVOLVE :THEME MV3716 :THEME MV3718 :PRESENT "PRESENT")
 (:VAR MV3716 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3715 :RAW-TEXT
  "pathways")
 (:VAR MV3715 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3718 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3723 :ISA BIO-USE :AGENT MV3721 :OBJECT MV3724 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3721 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3720 :RAW-TEXT
  "pathways")
 (:VAR MV3720 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3724 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3728 :ISA REGULATE :AGENT MV3725 :OBJECT MV3726 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3725 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3726 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3732 :ISA REGULATE :AGENT-OR-CAUSE MV3729 :OBJECT MV3733 :PRESENT
  "PRESENT" :ADVERB MV3730 :RAW-TEXT "regulate")
 (:VAR MV3729 :ISA WHICH)
 (:VAR MV3733 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3730 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3742 :ISA REGULATE :OBJECT MV3738 :AGENT MV3734 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3738 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3736
  :RAW-TEXT "genes")
 (:VAR MV3736 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3734 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3749 :ISA BE :SUBJECT MV3748 :PREDICATE MV3750 :PRESENT "PRESENT")
 (:VAR MV3748 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3746
  :RAW-TEXT "genes")
 (:VAR MV3746 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3750 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3748 :MODIFIER MV3744
  :RAW-TEXT "upstream")
 (:VAR MV3744 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3759 :ISA TARGET :OBJECT MV3755 :AGENT MV3753 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3755 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3753 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3766 :ISA BE :SUBJECT MV3763 :PREDICATE MV3767 :PRESENT "PRESENT")
 (:VAR MV3763 :ISA GENE :PREDICATION MV3764 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3764 :ISA REGULATE :OBJECT MV3763 :AGENT MV3761 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3761 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3767 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3783 :ISA SHARE :OBJECT MV3775 :PARTICIPANT MV3781 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3775 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3774 :RAW-TEXT
  "pathways")
 (:VAR MV3774 :ISA IMMUNE :NAME "immune")
 (:VAR MV3781 :ISA GENE :EXPRESSES MV3782 :RAW-TEXT "genes")
 (:VAR MV3782 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3769 MV3770 MV3779 MV3771 MV3772))
 (:VAR MV3769 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3770 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3779 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3771 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3772 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3798 :ISA SHARE :OBJECT MV3790 :PARTICIPANT MV3796 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3790 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3789 :RAW-TEXT
  "pathways")
 (:VAR MV3789 :ISA IMMUNE :NAME "immune")
 (:VAR MV3796 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3797 :RAW-TEXT
  "genes")
 (:VAR MV3797 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3785 MV3786 MV3787))
 (:VAR MV3785 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3786 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3787 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3804 :ISA UTILIZE :PARTICIPANT MV3803 :OBJECT MV3805 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3803 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3802 :RAW-TEXT
  "pathways")
 (:VAR MV3802 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3805 :ISA GENE :PREDICATION MV3806 :RAW-TEXT "genes")
 (:VAR MV3806 :ISA REGULATE :OBJECT MV3805 :AGENT MV3800 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3800 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3812 :ISA UTILIZE :PARTICIPANT MV3811 :OBJECT MV3813 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3811 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3810 :RAW-TEXT
  "pathways")
 (:VAR MV3810 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3813 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3817 :ISA UTILIZE :PARTICIPANT MV3816 :OBJECT MV3818 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3816 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3815 :RAW-TEXT
  "pathways")
 (:VAR MV3815 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3818 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3826 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3822 :AGENT MV3819
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3822 :ISA PRONOUN/PLURAL :QUANTIFIER MV3820 :WORD "them")
 (:VAR MV3820 :ISA WHICH)
 (:VAR MV3819 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3836 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3831 :ORGAN MV3835
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3831 :ISA THESE :QUANTIFIER MV3829 :WORD "these")
 (:VAR MV3829 :ISA WHICH) (:VAR MV3835 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3847 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3841 :VALUE MV3845 :PREP
  MV3843 :PREDICATE MV3842)
 (:VAR MV3841 :ISA THESE :QUANTIFIER MV3839 :WORD "these")
 (:VAR MV3839 :ISA WHICH)
 (:VAR MV3845 :ISA PATHWAY :MODIFIER MV3844 :RAW-TEXT "pathways")
 (:VAR MV3844 :ISA IMMUNE :NAME "immune") (:VAR MV3843 :ISA IN :WORD "in")
 (:VAR MV3842 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3853 :ISA PHOSPHORYLATE :AMINO-ACID MV3850 :AGENT MV3852 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3850 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3852 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
416: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV3857 :ISA BE :SUBJECT MV3856 :PREDICATE MV3858 :PRESENT "PRESENT")
 (:VAR MV3856 :ISA THESE :QUANTIFIER MV3854 :WORD "these")
 (:VAR MV3854 :ISA WHICH) (:VAR MV3858 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3867 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3863 :AGENT MV3860
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3863 :ISA THOSE :QUANTIFIER MV3861 :WORD "those")
 (:VAR MV3861 :ISA WHICH)
 (:VAR MV3860 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3877 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3873 :AGENT MV3870
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3873 :ISA THESE :QUANTIFIER MV3871 :WORD "these")
 (:VAR MV3871 :ISA WHICH)
 (:VAR MV3870 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3887 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3882 :AGENT MV3886
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3882 :ISA THESE :QUANTIFIER MV3880 :WORD "these")
 (:VAR MV3880 :ISA WHICH) (:VAR MV3886 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3903 :ISA SHARE :OBJECT MV3895 :PARTICIPANT MV3901 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3895 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3901 :ISA GENE :EXPRESSES MV3902 :RAW-TEXT "genes")
 (:VAR MV3902 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3890 MV3891 MV3899 MV3892 MV3893))
 (:VAR MV3890 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3891 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3899 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3892 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3893 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3917 :ISA SHARE :OBJECT MV3908 :PARTICIPANT MV3916 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3908 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3916 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3905 MV3906 MV3915))
 (:VAR MV3905 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3906 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3915 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3933 :ISA SHARE :OBJECT MV3924 :PARTICIPANT MV3931 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3924 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3931 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3932 :RAW-TEXT
  "genes")
 (:VAR MV3932 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3919 MV3920 MV3929 MV3921 MV3922))
 (:VAR MV3919 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3920 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3929 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3921 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3922 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3939 :ISA INVOLVE :THEME MV3938 :THEME MV3941 :PRESENT "PRESENT")
 (:VAR MV3938 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3941 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3935 MV3936))
 (:VAR MV3935 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3936 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3944 :ISA INVOLVE :THEME MV3943 :THEME MV3945 :PRESENT "PRESENT")
 (:VAR MV3943 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3945 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3949 :ISA BIO-USE :AGENT MV3947 :OBJECT MV3950 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3947 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3950 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3954 :ISA BIO-USE :AGENT MV3952 :OBJECT MV3955 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3952 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3955 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3958 :ISA UTILIZE :PARTICIPANT MV3957 :OBJECT MV3959 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3957 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3959 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3962 :ISA UTILIZE :PARTICIPANT MV3961 :OBJECT MV3964 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3961 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3964 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3971 :ISA TARGET :OBJECT MV3967 :AGENT MV3965 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3967 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3965 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3976 :ISA UTILIZE :PARTICIPANT MV3975 :OBJECT MV3977 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3975 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3974 :RAW-TEXT
  "pathways")
 (:VAR MV3974 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3977 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3988 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3978 :VALUE MV3987 :PREP
  "IN" :PREDICATE MV3981)
 (:VAR MV3978 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3987 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3979
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3979 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3984
  :RAW-TEXT "signaling pathway")
 (:VAR MV3984 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV3981 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3993 :ISA REGULATE :AGENT MV3990 :OBJECT MV3991 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3990 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3991 :ISA PROTEIN :ORGAN MV3996 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3996 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4001 :ISA REGULATE :AGENT MV3998 :OBJECT MV3999 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3998 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3999 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e11   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4008 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4004 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4004 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4006 :THEME
  MV4003 :PRESENT "PRESENT")
 (:VAR MV4006 :ISA TOP-QUA-LOCATION)
 (:VAR MV4003 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4017 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4011 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4011 :ISA SHOW :AT-RELATIVE-LOCATION MV4015 :STATEMENT-OR-THEME MV4010
  :PRESENT "PRESENT")
 (:VAR MV4015 :ISA TOP-QUA-LOCATION)
 (:VAR MV4010 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4013 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4013 :ISA PHOSPHORYLATE :SUBSTRATE MV4010 :RAW-TEXT "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4020 :ISA BE :SUBJECT MV4019 :PREDICATE MV4023 :PRESENT "PRESENT")
 (:VAR MV4019 :ISA WHAT)
 (:VAR MV4023 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4027 :HAS-DETERMINER
  "THE" :PREDICATION MV4022 :RAW-TEXT "upstreams")
 (:VAR MV4027 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4018 MV4026))
 (:VAR MV4018 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4026 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4022 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4036 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4034 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4034 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4043 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4041 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4041 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4045 :ISA SHOW :AT-RELATIVE-LOCATION MV4048 :STATEMENT-OR-THEME MV4044
  :PRESENT "PRESENT")
 (:VAR MV4048 :ISA TOP-QUA-LOCATION)
 (:VAR MV4044 :ISA PROTEIN :PREDICATION MV4046 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4046 :ISA PHOSPHORYLATE :SUBSTRATE MV4044 :RAW-TEXT "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4052 :ISA BE :SUBJECT MV4051 :PREDICATE MV4055 :PRESENT "PRESENT")
 (:VAR MV4051 :ISA WHAT)
 (:VAR MV4055 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4059 :HAS-DETERMINER
  "THE" :PREDICATION MV4054 :RAW-TEXT "upstreams")
 (:VAR MV4059 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4050 MV4058))
 (:VAR MV4050 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4058 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4054 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4068 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4062 MV4066))
 (:VAR MV4062 :ISA BIO-ACTIVATE :AGENT MV4061 :OBJECT MV4063 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4061 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4063 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4066 :ISA BIO-ACTIVATE :AGENT MV4065 :OBJECT MV4067 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4065 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4067 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
442: "What is the path from RAF to MEK?"

                    SOURCE-START
e16   BE            1 "What is the path from RAF to MEK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path from RAF to MEK?"
 (:VAR MV4070 :ISA BE :SUBJECT MV4069 :PREDICATE MV4072 :PRESENT "PRESENT")
 (:VAR MV4069 :ISA WHAT)
 (:VAR MV4072 :ISA PATH :END MV4076 :START MV4074 :HAS-DETERMINER "THE")
 (:VAR MV4076 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4074 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
443: "remove the fact that mek activates erk"

                    SOURCE-START
e14   REMOVE        1 "remove the fact that mek activates erk" 8
                    END-OF-SOURCE
("remove the fact that mek activates erk"
 (:VAR MV4079 :ISA REMOVE :OBJECT MV4086 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4086 :ISA FACT :STATEMENT MV4084 :HAS-DETERMINER "THE")
 (:VAR MV4084 :ISA BIO-ACTIVATE :AGENT MV4083 :OBJECT MV4085 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4083 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4085 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
444: "let's show phosphorylated akt1 on top."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4094 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4089 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4089 :ISA SHOW :AT-RELATIVE-LOCATION MV4092 :STATEMENT-OR-THEME MV4088
  :PRESENT "PRESENT")
 (:VAR MV4092 :ISA TOP-QUA-LOCATION)
 (:VAR MV4088 :ISA PROTEIN :PREDICATION MV4090 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4090 :ISA PHOSPHORYLATE :SUBSTRATE MV4088 :RAW-TEXT "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4097 :ISA BE :SUBJECT MV4096 :PREDICATE MV4095 :PRESENT "PRESENT")
 (:VAR MV4096 :ISA WHAT)
 (:VAR MV4095 :ISA POSITIVE-REGULATOR :THEME MV4101 :RAW-TEXT
  "positive regulators")
 (:VAR MV4101 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4100 :RAW-TEXT
  "gene")
 (:VAR MV4100 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4106 :ISA REGULATE :AGENT MV4103 :OBJECT MV4107 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4103 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4107 :ISA PROTEIN :ORGAN MV4104 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4104 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4118 :ISA POLAR-QUESTION :STATEMENT MV4117)
 (:VAR MV4117 :ISA THERE-EXISTS :VALUE MV4114 :PREDICATE MV4111)
 (:VAR MV4114 :ISA DRUG :PREDICATION MV4115 :QUANTIFIER MV4113 :RAW-TEXT
  "drugs")
 (:VAR MV4115 :ISA INHIBIT :AGENT MV4114 :OBJECT MV4116 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4116 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4113 :ISA ANY :WORD "any") (:VAR MV4111 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4127 :ISA POLAR-QUESTION :STATEMENT MV4126)
 (:VAR MV4126 :ISA THERE-EXISTS :VALUE MV4123 :PREDICATE MV4120)
 (:VAR MV4123 :ISA DRUG :PREDICATION MV4124 :QUANTIFIER MV4122 :RAW-TEXT
  "drugs")
 (:VAR MV4124 :ISA TARGET :AGENT MV4123 :OBJECT MV4125 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4125 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4122 :ISA ANY :WORD "any") (:VAR MV4120 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4145 :ISA POLAR-QUESTION :STATEMENT MV4141)
 (:VAR MV4141 :ISA THERE-EXISTS :VALUE MV4133 :PREDICATE MV4130)
 (:VAR MV4133 :ISA GENE :PREDICATION MV4142 :ORGAN MV4136 :QUANTIFIER MV4132
  :RAW-TEXT "genes")
 (:VAR MV4142 :ISA REGULATE :OBJECT MV4133 :THAT-REL T :AGENT MV4128 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4128 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4136 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4132 :ISA ANY :WORD "any") (:VAR MV4130 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4163 :ISA POLAR-QUESTION :STATEMENT MV4159)
 (:VAR MV4159 :ISA THERE-EXISTS :VALUE MV4151 :PREDICATE MV4148)
 (:VAR MV4151 :ISA GENE :PREDICATION MV4152 :QUANTIFIER MV4150 :RAW-TEXT
  "genes")
 (:VAR MV4152 :ISA INVOLVE :THEME MV4151 :THEME MV4154 :PAST "PAST")
 (:VAR MV4154 :ISA APOPTOSIS :PREDICATION MV4160 :RAW-TEXT "apoptosis")
 (:VAR MV4160 :ISA REGULATE :AFFECTED-PROCESS MV4154 :THAT-REL T :AGENT MV4146
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4146 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4150 :ISA ANY :WORD "any") (:VAR MV4148 :ISA SYNTACTIC-THERE))

___________________
451: "Are there any genes stat3 is upstream of?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there " 3
e17   BE            3 "any genes stat3 is upstream " 9
e12   OF            9 "of" 10
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   SUBJ+VERB     1 "Are there " 3
e17   S             3 "any genes stat3 is upstream " 9
e12   PREPOSITION   9 "of" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
452: "Are there any inhibitors for JAK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any inhibitors for JAK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any inhibitors for JAK1?"
 (:VAR MV4184 :ISA POLAR-QUESTION :STATEMENT MV4182)
 (:VAR MV4182 :ISA THERE-EXISTS :VALUE MV4180 :PREDICATE MV4177)
 (:VAR MV4180 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4175 :QUANTIFIER MV4179
  :RAW-TEXT "inhibitors")
 (:VAR MV4175 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4179 :ISA ANY :WORD "any") (:VAR MV4177 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4197 :ISA POLAR-QUESTION :STATEMENT MV4194)
 (:VAR MV4194 :ISA THERE-EXISTS :VALUE MV4189 :PREDICATE MV4187)
 (:VAR MV4189 :ISA GENE :PREDICATION MV4190 :RAW-TEXT "genes")
 (:VAR MV4190 :ISA REGULATE :OBJECT MV4189 :AGENT MV4195 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4195 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4185 MV4193))
 (:VAR MV4185 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4193 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4187 :ISA SYNTACTIC-THERE))

___________________
454: "Can you find any apoptotic pathways stat3 is involved in?"

                    SOURCE-START
e24   BIO-FIND      1 "Can you find any apoptotic pathways stat3 " 9
e21   INVOLVE       9 "is involved " 11
e13   IN            11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e24   S             1 "Can you find any apoptotic pathways stat3 " 9
e21   VG+PASSIVE    9 "is involved " 11
e13   PREPOSITION   11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
455: "Can you find any apoptotic pathways that stat3 is involved in?"

                    SOURCE-START
e28   BIO-FIND      1 "Can you find any apoptotic pathways that stat3 is involved " 12
e15   IN            12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e28   S             1 "Can you find any apoptotic pathways that stat3 is involved " 12
e15   PREPOSITION   12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
456: "Can you look up which genes targeted by stat3 are involved in apoptosis?"

                    SOURCE-START
e32   LOOK-UP       1 "Can you look up which " 6
e28   INVOLVE       6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e32   TRANSITIVE-CLAUSE-WITHOUT-OBJECT  1 "Can you look up which " 6
e28   S             6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
457: "Can you show me genes regulated by ELK1"

                    SOURCE-START
e19   SHOW          1 "Can you show me genes regulated by ELK1" 10
                    END-OF-SOURCE
("Can you show me genes regulated by ELK1"
 (:VAR MV4257 :ISA POLAR-QUESTION :STATEMENT MV4251)
 (:VAR MV4251 :ISA SHOW :AGENT MV4250 :STATEMENT-OR-THEME MV4253 :BENEFICIARY
  MV4252 :MODAL "CAN")
 (:VAR MV4250 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4253 :ISA GENE :PREDICATION MV4254 :RAW-TEXT "genes")
 (:VAR MV4254 :ISA REGULATE :OBJECT MV4253 :AGENT MV4248 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4248 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4252 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4270 :ISA POLAR-QUESTION :STATEMENT MV4261)
 (:VAR MV4261 :ISA SHOW :AGENT MV4260 :STATEMENT-OR-THEME MV4263 :BENEFICIARY
  MV4262 :MODAL "CAN")
 (:VAR MV4260 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4263 :ISA GENE :PREDICATION MV4268 :RAW-TEXT "genes")
 (:VAR MV4268 :ISA REGULATE :OBJECT MV4263 :THAT-REL T :AGENT MV4258 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4258 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4262 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4280 :ISA POLAR-QUESTION :STATEMENT MV4273)
 (:VAR MV4273 :ISA SHOW :AGENT MV4272 :STATEMENT-OR-THEME MV4276 :BENEFICIARY
  MV4274 :MODAL "CAN")
 (:VAR MV4272 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4276 :ISA BIO-ENTITY :PREDICATION MV4278 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4278 :ISA INVOLVE :THEME MV4276 :THAT-REL T :THEME MV4279 :MODAL
  "CAN")
 (:VAR MV4279 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4274 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4291 :ISA POLAR-QUESTION :STATEMENT MV4284)
 (:VAR MV4284 :ISA TELL :AGENT MV4283 :THEME MV4287 :BENEFICIARY MV4285 :MODAL
  "CAN")
 (:VAR MV4283 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4287 :ISA GENE :PREDICATION MV4288 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4288 :ISA REGULATE :OBJECT MV4287 :AGENT MV4281 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4281 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4285 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4301 :ISA POLAR-QUESTION :STATEMENT MV4295)
 (:VAR MV4295 :ISA TELL :AGENT MV4294 :THEME MV4298 :BENEFICIARY MV4296 :MODAL
  "CAN")
 (:VAR MV4294 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4298 :ISA GENE :PREDICATION MV4300 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4300 :ISA REGULATE :OBJECT MV4298 :THAT-REL T :AGENT MV4292 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4292 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4296 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4315 :ISA POLAR-QUESTION :STATEMENT MV4305)
 (:VAR MV4305 :ISA TELL :AGENT MV4304 :THEME MV4308 :BENEFICIARY MV4306 :MODAL
  "CAN")
 (:VAR MV4304 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4308 :ISA GENE :PREDICATION MV4313 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4313 :ISA REGULATE :OBJECT MV4308 :THAT-REL T :AGENT MV4302 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4302 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4306 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4330 :ISA POLAR-QUESTION :STATEMENT MV4319)
 (:VAR MV4319 :ISA TELL :AGENT MV4318 :THEME MV4322 :BENEFICIARY MV4320 :MODAL
  "CAN")
 (:VAR MV4318 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4322 :ISA GENE :PREDICATION MV4329 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4329 :ISA REGULATE :OBJECT MV4322 :AGENT MV4316 :MODAL MV4317
  :RAW-TEXT "regulated")
 (:VAR MV4316 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4317 :ISA CAN) (:VAR MV4320 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4346 :ISA POLAR-QUESTION :STATEMENT MV4335)
 (:VAR MV4335 :ISA TELL :AGENT MV4334 :THEME MV4344 :THEME MV4336 :MODAL "CAN")
 (:VAR MV4334 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4344 :ISA SHARE :OBJECT MV4331 :PARTICIPANT MV4343 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4331 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4343 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4332 MV4342))
 (:VAR MV4332 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4342 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4336 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4359 :ISA POLAR-QUESTION :STATEMENT MV4350)
 (:VAR MV4350 :ISA TELL :AGENT MV4349 :THEME MV4357 :THEME MV4351 :MODAL "CAN")
 (:VAR MV4349 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4357 :ISA REGULATE :OBJECT MV4353 :AGENT MV4347 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4353 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4347 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4351 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4376 :ISA POLAR-QUESTION :STATEMENT MV4363)
 (:VAR MV4363 :ISA TELL :AGENT MV4362 :THEME MV4373 :THEME MV4364 :MODAL "CAN")
 (:VAR MV4362 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4373 :ISA REGULATE :OBJECT MV4366 :AGENT MV4360 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4366 :ISA GENE :ORGAN MV4369 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4369 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4360 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4364 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4385 :ISA POLAR-QUESTION :STATEMENT MV4380)
 (:VAR MV4380 :ISA TELL :AGENT MV4379 :THEME MV4383 :BENEFICIARY MV4381 :MODAL
  "CAN")
 (:VAR MV4379 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4383 :ISA GENE :PREDICATION MV4384 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4384 :ISA REGULATE :OBJECT MV4383 :AGENT MV4377 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4377 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4381 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4395 :ISA POLAR-QUESTION :STATEMENT MV4393)
 (:VAR MV4393 :ISA AFFECT :AGENT MV4386 :AFFECTED-PROCESS MV4391 :RAW-TEXT
  "affect")
 (:VAR MV4386 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4391 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4387 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4387 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4407 :ISA POLAR-QUESTION :STATEMENT MV4405)
 (:VAR MV4405 :ISA AFFECT :AGENT MV4396 :AFFECTED-PROCESS MV4401 :RAW-TEXT
  "affect")
 (:VAR MV4396 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4401 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4404 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4404 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4397 :RAW-TEXT
  "gene")
 (:VAR MV4397 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4420 :ISA POLAR-QUESTION :STATEMENT MV4418)
 (:VAR MV4418 :ISA INCREASE :AGENT MV4408 :AFFECTED-PROCESS MV4414 :RAW-TEXT
  "increase")
 (:VAR MV4408 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4414 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4417 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4417 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4409 :RAW-TEXT
  "gene")
 (:VAR MV4409 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4432 :ISA POLAR-QUESTION :STATEMENT MV4430)
 (:VAR MV4430 :ISA INCREASE :AGENT MV4421 :AFFECTED-PROCESS MV4426 :RAW-TEXT
  "increase")
 (:VAR MV4421 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4426 :ISA TRANSCRIBE :OBJECT MV4429 :RAW-TEXT "transcription")
 (:VAR MV4429 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4422 :RAW-TEXT
  "gene")
 (:VAR MV4422 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4442 :ISA POLAR-QUESTION :STATEMENT MV4440)
 (:VAR MV4440 :ISA AFFECT :AGENT MV4433 :AFFECTED-PROCESS MV4437 :RAW-TEXT
  "affect")
 (:VAR MV4433 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4437 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4439 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4439 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4452 :ISA POLAR-QUESTION :STATEMENT MV4451)
 (:VAR MV4451 :ISA CONTAIN :THEME MV4449 :PATIENT MV4443)
 (:VAR MV4449 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4446 :RAW-TEXT
  "pathway")
 (:VAR MV4446 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4443 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4455 :ISA BIO-FIND :OBJECT MV4457 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4457 :ISA TREATMENT :DISEASE MV4453 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4453 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4462 :ISA BIO-FIND :OBJECT MV4463 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4463 :ISA GENE :PREDICATION MV4467 :ORGAN MV4466 :RAW-TEXT "genes")
 (:VAR MV4467 :ISA REGULATE :OBJECT MV4463 :AGENT MV4460 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4460 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4466 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4473 :ISA BIO-FIND :OBJECT MV4474 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4474 :ISA GENE :PREDICATION MV4476 :RAW-TEXT "genes")
 (:VAR MV4476 :ISA REGULATE :OBJECT MV4474 :THAT-REL T :AGENT MV4471 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4471 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4480 :ISA BIO-FIND :OBJECT MV4477 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4477 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4481 :RAW-TEXT
  "transcription factors")
 (:VAR MV4481 :ISA SHARE :OBJECT MV4477 :PARTICIPANT MV4485 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4485 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4478 MV4484))
 (:VAR MV4478 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4484 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4491 :ISA BIO-ACTIVATE :MANNER MV4488 :AGENT MV4490 :OBJECT MV4487
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4488 :ISA HOW)
 (:VAR MV4490 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4487 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4496 :ISA REGULATE :MANNER MV4494 :AGENT MV4492 :OBJECT MV4498
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4494 :ISA HOW)
 (:VAR MV4492 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4498 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4493 :RAW-TEXT
  "gene")
 (:VAR MV4493 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:VAR MV4513 :ISA KNOCK-OUT :RAW-TEXT "knocking out" :CAUSE MV4500 :OBJECT
  MV4517)
 (:VAR MV4500 :ISA HOW)
 (:VAR MV4517 :ISA CANCER :MODIFIER MV4504 :MODIFIER MV4504)
 (:VAR MV4504 :ISA CAUSE :BY-MEANS-OF MV4515 :RAW-TEXT "cause")
 (:VAR MV4515 :ISA EFFECT :OBJECT MV4512 :PARTICIPANT MV4508 :RAW-TEXT
  "effect")
 (:VAR MV4512 :ISA MICRO-RNA :RAW-TEXT "miRNAs")
 (:VAR MV4508 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV4521 :ISA REGULATE :MANNER MV4519 :AGENT MV4518 :AFFECTED-PROCESS
  MV4522 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4519 :ISA HOW)
 (:VAR MV4518 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4522 :ISA APOPTOSIS :ORGAN MV4525 :RAW-TEXT "apoptosis")
 (:VAR MV4525 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4530 :ISA REGULATE :MANNER MV4528 :AGENT MV4527 :AFFECTED-PROCESS
  MV4531 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4528 :ISA HOW)
 (:VAR MV4527 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4531 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4535 :ISA REGULATE :MANNER MV4533 :AGENT MV4532 :OBJECT MV4538
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4533 :ISA HOW)
 (:VAR MV4532 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4538 :ISA GENE :CELLULAR-PROCESS MV4536 :RAW-TEXT "genes")
 (:VAR MV4536 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4549 :ISA INVOLVE :MANNER MV4540 :THEME MV4539 :THEME MV4546 :PAST
  "PAST")
 (:VAR MV4540 :ISA HOW)
 (:VAR MV4539 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4546 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4544 :RAW-TEXT
  "regulation")
 (:VAR MV4544 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4563 :ISA INVOLVE :MANNER MV4551 :THEME MV4550 :THEME MV4555 :PAST
  "PAST")
 (:VAR MV4551 :ISA HOW)
 (:VAR MV4550 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4555 :ISA REGULATE :OBJECT MV4559 :ORGAN MV4558 :AGENT-OR-OBJECT
  MV4559 :RAW-TEXT "regulation")
 (:VAR MV4559 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4558 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4573 :ISA INVOLVE :MANNER MV4565 :THEME MV4564 :THEME MV4569 :PAST
  "PAST")
 (:VAR MV4565 :ISA HOW)
 (:VAR MV4564 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4569 :ISA REGULATE :AFFECTED-PROCESS MV4570 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4570 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4583 :ISA BIO-USE :MANNER MV4575 :OBJECT MV4574 :THEME MV4581 :PAST
  "PAST" :RAW-TEXT "used")
 (:VAR MV4575 :ISA HOW)
 (:VAR MV4574 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4581 :ISA REGULATE :AFFECTED-PROCESS MV4580 :RAW-TEXT "regulate")
 (:VAR MV4580 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4595 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4587 :VALUE MV4594 :PREP
  "IN" :PREDICATE MV4588)
 (:VAR MV4587 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4586 :RAW-TEXT
  "genes")
 (:VAR MV4586 :ISA MANY :WORD "many")
 (:VAR MV4594 :ISA GENE :CONTEXT MV4584 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4586 :RAW-TEXT "genes")
 (:VAR MV4584 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4591
  :RAW-TEXT "signaling pathway")
 (:VAR MV4591 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV4588 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4604 :ISA AFFECT :MANNER MV4599 :MODAL MV4600 :AGENT MV4602 :OBJECT
  MV4598 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4599 :ISA HOW) (:VAR MV4600 :ISA MIGHT)
 (:VAR MV4602 :ISA MUTATION :OBJECT MV4597 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4597 :RAW-TEXT "mutation")
 (:VAR MV4597 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4598 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4612 :ISA POLAR-QUESTION :STATEMENT MV4607)
 (:VAR MV4607 :ISA BE :SUBJECT MV4605 :PREDICATE MV4609)
 (:VAR MV4605 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4609 :ISA REGULATOR :THEME MV4606 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4606 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4620 :ISA POLAR-QUESTION :STATEMENT MV4615)
 (:VAR MV4615 :ISA BE :SUBJECT MV4613 :PREDICATE MV4617)
 (:VAR MV4613 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4617 :ISA REGULATOR :THEME MV4614 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4614 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4630 :ISA POLAR-QUESTION :STATEMENT MV4623)
 (:VAR MV4623 :ISA BE :SUBJECT MV4621 :PREDICATE MV4625)
 (:VAR MV4621 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4625 :ISA REGULATOR :THEME MV4628 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4628 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4622 :RAW-TEXT
  "gene")
 (:VAR MV4622 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4640 :ISA POLAR-QUESTION :STATEMENT MV4633)
 (:VAR MV4633 :ISA BE :SUBJECT MV4631 :PREDICATE MV4635)
 (:VAR MV4631 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4635 :ISA REGULATOR :THEME MV4638 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4638 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4632 :RAW-TEXT
  "gene")
 (:VAR MV4632 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4649 :ISA POLAR-QUESTION :STATEMENT MV4644)
 (:VAR MV4644 :ISA BE :SUBJECT MV4641 :PREDICATE MV4642)
 (:VAR MV4641 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4642 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4647 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4647 :ISA GENE :EXPRESSES MV4643 :RAW-TEXT "gene")
 (:VAR MV4643 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4657 :ISA POLAR-QUESTION :STATEMENT MV4653)
 (:VAR MV4653 :ISA BE :SUBJECT MV4650 :PREDICATE MV4651)
 (:VAR MV4650 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4651 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4652 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4652 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4665 :ISA POLAR-QUESTION :STATEMENT MV4661)
 (:VAR MV4661 :ISA BE :SUBJECT MV4658 :PREDICATE MV4659)
 (:VAR MV4658 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4659 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4660 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4660 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4675 :ISA POLAR-QUESTION :STATEMENT MV4669)
 (:VAR MV4669 :ISA BE :SUBJECT MV4666 :PREDICATE MV4667)
 (:VAR MV4666 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4667 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4673 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4673 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4668 :RAW-TEXT
  "gene")
 (:VAR MV4668 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV4683 :ISA POLAR-QUESTION :STATEMENT MV4682)
 (:VAR MV4682 :ISA REGULATE :AGENT MV4676 :AGENT MV4677 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4676 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4677 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4693 :ISA POLAR-QUESTION :STATEMENT MV4687)
 (:VAR MV4687 :ISA BE :SUBJECT MV4684 :PREDICATE MV4685)
 (:VAR MV4684 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4685 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4691 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4691 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4686 :RAW-TEXT
  "gene")
 (:VAR MV4686 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV4695 :ISA LIST :THEME MV4696 :PRESENT "PRESENT")
 (:VAR MV4696 :ISA GENE :PREDICATION MV4697 :RAW-TEXT "genes")
 (:VAR MV4697 :ISA REGULATE :OBJECT MV4696 :AGENT MV4694 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4694 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4701 :ISA LIST :THEME MV4702 :PRESENT "PRESENT")
 (:VAR MV4702 :ISA GENE :PREDICATION MV4707 :RAW-TEXT "genes")
 (:VAR MV4707 :ISA REGULATE :OBJECT MV4702 :THAT-REL T :AGENT MV4700 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4700 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4710 :ISA LIST :THEME MV4712 :PRESENT "PRESENT")
 (:VAR MV4712 :ISA GENE :PREDICATION MV4714 :QUANTIFIER MV4711 :RAW-TEXT
  "genes")
 (:VAR MV4714 :ISA REGULATE :OBJECT MV4712 :THAT-REL T :AGENT MV4709 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4709 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4711 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4716 :ISA LIST :THEME MV4718 :PRESENT "PRESENT")
 (:VAR MV4718 :ISA GENE :PREDICATION MV4719 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4719 :ISA REGULATE :OBJECT MV4718 :AGENT MV4715 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4715 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4721 :ISA LIST :THEME MV4723 :PRESENT "PRESENT")
 (:VAR MV4723 :ISA GENE :PREDICATION MV4728 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4728 :ISA REGULATE :OBJECT MV4723 :THAT-REL T :AGENT MV4720 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4720 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4731 :ISA LIST :THEME MV4733 :PRESENT "PRESENT")
 (:VAR MV4733 :ISA GENE :PREDICATION MV4735 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4735 :ISA REGULATE :OBJECT MV4733 :AGENT MV4730 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4730 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4736 :ISA LIST :THEME MV4738 :PRESENT "PRESENT")
 (:VAR MV4738 :ISA BIO-ENTITY :PREDICATION MV4740 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4740 :ISA INVOLVE :THEME MV4738 :THAT-REL T :THEME MV4741 :PRESENT
  "PRESENT")
 (:VAR MV4741 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4743 :ISA SHOW :STATEMENT-OR-THEME MV4745 :BENEFICIARY MV4744 :PRESENT
  "PRESENT")
 (:VAR MV4745 :ISA GENE :PREDICATION MV4746 :RAW-TEXT "genes")
 (:VAR MV4746 :ISA REGULATE :OBJECT MV4745 :AGENT MV4742 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4742 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4744 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4750 :ISA SHOW :STATEMENT-OR-THEME MV4752 :BENEFICIARY MV4751 :PRESENT
  "PRESENT")
 (:VAR MV4752 :ISA GENE :PREDICATION MV4757 :RAW-TEXT "genes")
 (:VAR MV4757 :ISA REGULATE :OBJECT MV4752 :THAT-REL T :AGENT MV4749 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4749 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4751 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4760 :ISA SHOW :STATEMENT-OR-THEME MV4762 :BENEFICIARY MV4761 :PRESENT
  "PRESENT")
 (:VAR MV4762 :ISA GENE :PREDICATION MV4764 :RAW-TEXT "genes")
 (:VAR MV4764 :ISA REGULATE :OBJECT MV4762 :THAT-REL T :AGENT MV4759 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4759 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4761 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4765 :ISA SHOW :STATEMENT-OR-THEME MV4768 :BENEFICIARY MV4766 :PRESENT
  "PRESENT")
 (:VAR MV4768 :ISA BIO-ENTITY :PREDICATION MV4770 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4770 :ISA INVOLVE :THEME MV4768 :THAT-REL T :THEME MV4771 :PRESENT
  "PRESENT")
 (:VAR MV4771 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4766 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4785 :ISA SHOW :STATEMENT MV4783 :THEME MV4775 :PRESENT "PRESENT")
 (:VAR MV4783 :ISA SHARE :OBJECT MV4772 :PARTICIPANT MV4782 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4772 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4782 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4773 MV4781))
 (:VAR MV4773 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4781 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4775 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4796 :ISA SHOW :STATEMENT MV4794 :THEME MV4788 :PRESENT "PRESENT")
 (:VAR MV4794 :ISA REGULATE :OBJECT MV4790 :AGENT MV4786 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4790 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4786 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4788 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4798 :ISA SHOW :STATEMENT-OR-THEME MV4800 :PRESENT "PRESENT")
 (:VAR MV4800 :ISA GENE :PREDICATION MV4802 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4802 :ISA REGULATE :OBJECT MV4800 :AGENT MV4797 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4797 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4803 :ISA SHOW :STATEMENT-OR-THEME MV4805 :PRESENT "PRESENT")
 (:VAR MV4805 :ISA BIO-ENTITY :PREDICATION MV4807 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4807 :ISA INVOLVE :THEME MV4805 :THAT-REL T :THEME MV4808 :PRESENT
  "PRESENT")
 (:VAR MV4808 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4811 :ISA SHOW :STATEMENT-OR-THEME MV4809 :PRESENT "PRESENT")
 (:VAR MV4809 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4819 :RAW-TEXT
  "transcription factors")
 (:VAR MV4819 :ISA SHARE :OBJECT MV4809 :THAT-REL T :PARTICIPANT MV4818
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4818 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4810 MV4817))
 (:VAR MV4810 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4817 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4822 :ISA TELL :THEME MV4825 :BENEFICIARY MV4823 :PRESENT "PRESENT")
 (:VAR MV4825 :ISA GENE :PREDICATION MV4832 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4832 :ISA REGULATE :OBJECT MV4825 :AGENT MV4821 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4821 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4823 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4834 :ISA TELL :THEME MV4844 :THEME MV4835 :PRESENT "PRESENT")
 (:VAR MV4844 :ISA REGULATE :OBJECT MV4837 :AGENT MV4843 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4837 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4843 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4833 MV4842))
 (:VAR MV4833 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4842 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4835 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4847 :ISA TELL :THEME MV4854 :THEME MV4848 :PRESENT "PRESENT")
 (:VAR MV4854 :ISA REGULATE :OBJECT MV4850 :AGENT MV4846 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4850 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4846 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4848 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4858 :ISA BE :SUBJECT MV4857 :PREDICATE MV4856 :PRESENT "PRESENT")
 (:VAR MV4857 :ISA WHAT)
 (:VAR MV4856 :ISA POSITIVE-REGULATOR :THEME MV4860 :RAW-TEXT
  "positive regulators")
 (:VAR MV4860 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4864 :ISA BE :SUBJECT MV4863 :PREDICATE MV4866 :PRESENT "PRESENT")
 (:VAR MV4863 :ISA WHAT)
 (:VAR MV4866 :ISA REGULATOR :THEME MV4862 :QUANTIFIER MV4865 :RAW-TEXT
  "regulators")
 (:VAR MV4862 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4865 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4875 :ISA BE :SUBJECT MV4874 :PREDICATE MV4878 :PRESENT "PRESENT")
 (:VAR MV4874 :ISA WHAT)
 (:VAR MV4878 :ISA REGULATOR :THEME MV4882 :HAS-DETERMINER "THE" :PREDICATION
  MV4877 :RAW-TEXT "regulators")
 (:VAR MV4882 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4869 MV4870 MV4880 MV4871 MV4872 MV4873))
 (:VAR MV4869 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4870 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4880 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4871 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4872 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4873 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4877 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4886 :ISA BE :SUBJECT MV4885 :PREDICATE MV4889 :PRESENT "PRESENT")
 (:VAR MV4885 :ISA WHAT)
 (:VAR MV4889 :ISA REGULATOR :THEME MV4893 :HAS-DETERMINER "THE" :PREDICATION
  MV4888 :RAW-TEXT "regulators")
 (:VAR MV4893 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4884 MV4892))
 (:VAR MV4884 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4892 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4888 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4897 :ISA BE :SUBJECT MV4896 :PREDICATE MV4900 :PRESENT "PRESENT")
 (:VAR MV4896 :ISA WHAT)
 (:VAR MV4900 :ISA REGULATOR :THEME MV4904 :HAS-DETERMINER "THE" :PREDICATION
  MV4899 :RAW-TEXT "regulators")
 (:VAR MV4904 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4895 MV4903))
 (:VAR MV4895 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4903 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4899 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4907 :ISA BE :SUBJECT MV4906 :PREDICATE MV4910 :PRESENT "PRESENT")
 (:VAR MV4906 :ISA WHAT)
 (:VAR MV4910 :ISA REGULATOR :THEME MV4913 :HAS-DETERMINER "THE" :PREDICATION
  MV4909 :RAW-TEXT "regulators")
 (:VAR MV4913 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4909 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4920 :ISA REGULATE :OBJECT
  (#<gene 93472> (HAS-DETERMINER (#<what 90006>))
   (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "genes"))
  :AGENT MV4915 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4915 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4925 :ISA BE :SUBJECT MV4924 :PREDICATE MV4927 :PRESENT "PRESENT")
 (:VAR MV4924 :ISA WHAT)
 (:VAR MV4927 :ISA GENE :PREDICATION MV4929 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4929 :ISA REGULATE :OBJECT MV4927 :AGENT MV4923 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4923 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4934 :ISA BE :SUBJECT MV4933 :PREDICATE MV4938 :PRESENT "PRESENT")
 (:VAR MV4933 :ISA WHAT)
 (:VAR MV4938 :ISA REGULATOR :THEME MV4943 :HAS-DETERMINER "THE" :MODIFIER
  MV4937 :RAW-TEXT "regulators")
 (:VAR MV4943 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4940 MV4941 MV4930 MV4931 MV4932))
 (:VAR MV4940 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4941 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4930 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4931 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4932 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4937 :ISA FREQUENT :COMPARATIVE MV4936 :NAME "frequent")
 (:VAR MV4936 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4950 :ISA BE :SUBJECT MV4949 :PREDICATE MV4945 :PRESENT "PRESENT")
 (:VAR MV4949 :ISA WHAT)
 (:VAR MV4945 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4953 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4953 :ISA REGULATE :AGENT MV4945 :THAT-REL T :OBJECT MV4957 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4957 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4954 MV4955 MV4946 MV4947 MV4948))
 (:VAR MV4954 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4955 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4946 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4947 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4948 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4969 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4960 :VALUE MV4968 :PREP
  "IN" :PREDICATE MV4961)
 (:VAR MV4960 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4959 :RAW-TEXT
  "genes")
 (:VAR MV4959 :ISA OTHER :WORD "other")
 (:VAR MV4968 :ISA GENE :CONTEXT MV4965 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4959 :RAW-TEXT "genes")
 (:VAR MV4965 :ISA PATHWAY :QUANTIFIER MV4964 :RAW-TEXT "pathway")
 (:VAR MV4964 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4961 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4982 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4973 :VALUE MV4981 :PREP
  "IN" :PREDICATE MV4974)
 (:VAR MV4973 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4972 :RAW-TEXT
  "proteins")
 (:VAR MV4972 :ISA OTHER :WORD "other")
 (:VAR MV4981 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4978 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4972 :RAW-TEXT "proteins")
 (:VAR MV4978 :ISA PATHWAY :QUANTIFIER MV4977 :RAW-TEXT "pathway")
 (:VAR MV4977 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4974 :ISA BE :PRESENT "PRESENT"))

___________________
531: "What pathways are they in?"

                    SOURCE-START
e9    IN            1 "What pathways are they in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are they in?"
 (:VAR MV4989 :ISA WH-QUESTION :STATEMENT MV4988 :VAR NIL :WH WHAT)
 (:VAR MV4988 :ISA IN :WORD "in"))

___________________
532: "What pathways involve SOARING?"

                    SOURCE-START
e6    SOAR          1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV4993 :ISA WH-QUESTION :STATEMENT
  (#<soar 93536> (PRESENT #<ref-category PRESENT>)) :VAR NIL :WH WHAT))

___________________
533: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV5004 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4995 :VALUE MV5003 :PREP
  "IN" :PREDICATE MV4996)
 (:VAR MV4995 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5003 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5000 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV5000 :ISA PATHWAY :QUANTIFIER MV4999 :RAW-TEXT "pathway")
 (:VAR MV4999 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4996 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5009 :ISA INVOLVE :THEME MV5008 :THEME MV5006 :PRESENT "PRESENT")
 (:VAR MV5008 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5006 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5020 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5011 :VALUE MV5019 :PREP
  "IN" :PREDICATE MV5012)
 (:VAR MV5011 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5019 :ISA GENE :CONTEXT MV5016 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5016 :ISA PATHWAY :QUANTIFIER MV5015 :RAW-TEXT "pathway")
 (:VAR MV5015 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5012 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5032 :ISA ANSWER :PATIENT MV5023 :MODAL MV5025 :AGENT MV5026 :THEME
  MV5030 :PRESENT "PRESENT")
 (:VAR MV5023 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5025 :ISA CAN)
 (:VAR MV5026 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5030 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5036 :ISA REGULATE :AGENT MV5033 :OBJECT MV5034 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5033 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5034 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
  :NAME "SMAD" :COUNT 8 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "SMAD6_HUMAN") (:UID "UP:O43541"))
   (PROTEIN (:NAME "SMAD9_HUMAN") (:UID "UP:O15198"))
   (PROTEIN (:NAME "SMAD7_HUMAN") (:UID "UP:O15105"))
   (PROTEIN (:NAME "SMAD5_HUMAN") (:UID "UP:Q99717"))
   (PROTEIN (:NAME "SMAD1_HUMAN") (:UID "UP:Q15797"))
   (PROTEIN (:NAME "SMAD2_HUMAN") (:UID "UP:Q15796"))
   (PROTEIN (:NAME "SMAD4_HUMAN") (:UID "UP:Q13485"))
   (PROTEIN (:NAME "SMAD3_HUMAN") (:UID "UP:P84022")))
  :UID "FPLX:SMAD"))

___________________
538: "Where does stat3 regulate cfos"

                    SOURCE-START
e8    REGULATE      1 "Where does stat3 regulate cfos" 7
                    END-OF-SOURCE
("Where does stat3 regulate cfos"
 (:VAR MV5040 :ISA REGULATE :LOCATION MV5038 :AGENT MV5037 :OBJECT MV5041
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5038 :ISA WHERE)
 (:VAR MV5037 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5041 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5045 :ISA INVOLVE :THEME MV5044 :THEME MV5046 :PRESENT "PRESENT")
 (:VAR MV5044 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5043 :RAW-TEXT
  "pathways")
 (:VAR MV5043 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5046 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :NAME "adenosine 5'-triphosphate"
  :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5057 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5049 :VALUE MV5056 :PREP
  "IN" :PREDICATE MV5050)
 (:VAR MV5049 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5056 :ISA GENE :CONTEXT MV5047 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5047 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5053
  :RAW-TEXT "signaling pathway")
 (:VAR MV5053 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV5050 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5070 :ISA INVOLVE :THEME MV5061 :CONTEXT MV5059 :PRESENT "PRESENT")
 (:VAR MV5061 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5059 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5066
  :MODIFIER MV5067 :RAW-TEXT "signaling pathway")
 (:VAR MV5066 :ISA ONCOGENIC)
 (:VAR MV5067 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019"))

___________________
542: "Which kinases regulate x?"

                    SOURCE-START
e6    REGULATE      1 "Which kinases regulate x" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate x?"
 (:VAR MV5073 :ISA REGULATE :AGENT MV5072 :OBJECT MV5074 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5072 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5074 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5075 :ISA DOWNREGULATE :AGENT MV5077 :OBJECT MV5078 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5077 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5078 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5079 :ISA UPREGULATE :AGENT MV5081 :OBJECT MV5082 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5081 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5082 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5091 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5085 :VALUE MV5089 :PREP
  MV5087 :PREDICATE MV5086)
 (:VAR MV5085 :ISA THESE :QUANTIFIER MV5083 :WORD "these")
 (:VAR MV5083 :ISA WHICH)
 (:VAR MV5089 :ISA PATHWAY :MODIFIER MV5088 :RAW-TEXT "pathways")
 (:VAR MV5088 :ISA IMMUNE :NAME "immune") (:VAR MV5087 :ISA IN :WORD "in")
 (:VAR MV5086 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5101 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5096 :VALUE MV5099 :PREP
  MV5098 :PREDICATE MV5097)
 (:VAR MV5096 :ISA THESE :QUANTIFIER MV5094 :WORD "these")
 (:VAR MV5094 :ISA WHICH)
 (:VAR MV5099 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5093 :RAW-TEXT "pathways")
 (:VAR MV5093 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV5098 :ISA IN :WORD "in") (:VAR MV5097 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5105 :ISA BE :SUBJECT MV5104 :PREDICATE MV5107 :PRESENT "PRESENT")
 (:VAR MV5104 :ISA WHAT)
 (:VAR MV5107 :ISA GENE :PREDICATION MV5108 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5108 :ISA REGULATE :OBJECT MV5107 :AGENT MV5103 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5103 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5118 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5111 :VALUE MV5116 :PREP
  MV5113 :PREDICATE MV5112)
 (:VAR MV5111 :ISA THOSE :QUANTIFIER MV5109 :WORD "those")
 (:VAR MV5109 :ISA WHICH)
 (:VAR MV5116 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5115 :RAW-TEXT
  "pathway")
 (:VAR MV5115 :ISA IMMUNE :NAME "immune") (:VAR MV5113 :ISA IN :WORD "in")
 (:VAR MV5112 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5123 :ISA INVOLVE :THEME MV5122 :THEME MV5120 :PRESENT "PRESENT")
 (:VAR MV5122 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5120 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5133 :ISA POLAR-QUESTION :STATEMENT MV5126)
 (:VAR MV5126 :ISA SHOW :AGENT MV5125 :STATEMENT-OR-THEME MV5129 :BENEFICIARY
  MV5127 :MODAL "CAN")
 (:VAR MV5125 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5129 :ISA BIO-ENTITY :PREDICATION MV5131 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5131 :ISA INVOLVE :THEME MV5129 :THAT-REL T :THEME MV5132 :MODAL
  "CAN")
 (:VAR MV5132 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5127 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5139 :ISA POLAR-QUESTION :STATEMENT MV5138)
 (:VAR MV5138 :ISA INHIBIT :AGENT MV5136 :OBJECT MV5134 :RAW-TEXT "inhibit")
 (:VAR MV5136 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV5134 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5149 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5141 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5141 :ISA BUILD :ARTIFACT MV5143 :PRESENT "PRESENT")
 (:VAR MV5143 :ISA MODEL :OBJECT MV5147 :HAS-DETERMINER "A")
 (:VAR MV5147 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5146)
 (:VAR MV5146 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5167 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5165 MV5166))
 (:VAR MV5165 :ISA KNOW :AGENT MV5150 :STATEMENT MV5156 :PRESENT "PRESENT")
 (:VAR MV5150 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5156 :ISA BIO-ACTIVATE :AGENT MV5155 :OBJECT MV5157 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5155 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5157 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5166 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5159 MV5163))
 (:VAR MV5159 :ISA BIO-ACTIVATE :AGENT MV5158 :OBJECT MV5160 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5158 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5160 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5163 :ISA BIO-ACTIVATE :AGENT MV5162 :OBJECT MV5164 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5162 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5164 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
554: "MAP2K1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAP2K1 phosphorylates MAPK1" 8
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylates MAPK1."
 (:VAR MV5170 :ISA PHOSPHORYLATE :AGENT MV5168 :SUBSTRATE MV5169 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5168 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5169 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5173 :ISA DEPHOSPHORYLATE :AGENT MV5171 :SUBSTRATE MV5172 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5171 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5172 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5184 :ISA POLAR-QUESTION :STATEMENT MV5183)
 (:VAR MV5183 :ISA COPULAR-PREDICATION :ITEM MV5177 :VALUE MV5181 :PREDICATE
  MV5175)
 (:VAR MV5177 :ISA BIO-AMOUNT :MEASURED-ITEM MV5174 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5174 :ISA PROTEIN :PREDICATION MV5179 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5179 :ISA PHOSPHORYLATE :SUBSTRATE MV5174 :RAW-TEXT "phosphorylated")
 (:VAR MV5181 :ISA HIGH :ADVERB MV5180)
 (:VAR MV5180 :ISA ALWAYS :NAME "always") (:VAR MV5175 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5195 :ISA POLAR-QUESTION :STATEMENT MV5194)
 (:VAR MV5194 :ISA COPULAR-PREDICATION :ITEM MV5188 :VALUE MV5192 :PREDICATE
  MV5186)
 (:VAR MV5188 :ISA BIO-AMOUNT :MEASURED-ITEM MV5185 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5185 :ISA PROTEIN :PREDICATION MV5190 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5190 :ISA PHOSPHORYLATE :SUBSTRATE MV5185 :RAW-TEXT "phosphorylated")
 (:VAR MV5192 :ISA LOW :ADVERB MV5191) (:VAR MV5191 :ISA ALWAYS :NAME "always")
 (:VAR MV5186 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5205 :ISA POLAR-QUESTION :STATEMENT MV5204)
 (:VAR MV5204 :ISA VANISH :AGENT MV5203 :RAW-TEXT "vanish")
 (:VAR MV5203 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5197 :COMPONENT MV5196)
 (:VAR MV5197 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5196 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5215 :ISA POLAR-QUESTION :STATEMENT MV5214)
 (:VAR MV5214 :ISA VANISH :AGENT MV5213 :RAW-TEXT "vanish")
 (:VAR MV5213 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5207 :COMPONENT MV5206)
 (:VAR MV5207 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5206 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5243 :ISA POLAR-QUESTION :STATEMENT MV5242)
 (:VAR MV5242 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5239 :EVENT MV5235)
 (:VAR MV5239 :ISA WH-QUESTION :STATEMENT MV5236 :WH IF)
 (:VAR MV5236 :ISA INCREASE :AGENT-OR-CAUSE MV5225 :MULTIPLIER MV5234
  :AFFECTED-PROCESS-OR-OBJECT MV5229 :RAW-TEXT "increase")
 (:VAR MV5225 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5234 :ISA N-FOLD :NUMBER MV5233) (:VAR MV5233 :ISA NUMBER :VALUE 10)
 (:VAR MV5229 :ISA BIO-AMOUNT :MEASURED-ITEM MV5217 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5217 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5235 :ISA VANISH :CAUSE MV5220 :RAW-TEXT "vanish")
 (:VAR MV5220 :ISA BIO-AMOUNT :MEASURED-ITEM MV5216 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5216 :ISA PROTEIN :PREDICATION MV5222 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5222 :ISA PHOSPHORYLATE :SUBSTRATE MV5216 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5245 :ISA SHOW :STATEMENT-OR-THEME MV5252 :BENEFICIARY MV5246 :PRESENT
  "PRESENT")
 (:VAR MV5252 :ISA EVIDENCE :STATEMENT MV5251 :HAS-DETERMINER "THE")
 (:VAR MV5251 :ISA REGULATE :AGENT MV5250 :OBJECT MV5244 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5250 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5244 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5246 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5256 :ISA INCREASE :AGENT-OR-CAUSE MV5254 :AFFECTED-PROCESS-OR-OBJECT
  MV5258 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5254 :ISA WHAT)
 (:VAR MV5258 :ISA BIO-AMOUNT :MEASURED-ITEM MV5253 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5253 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5271 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5263 :VALUE MV5270 :PREP
  "IN" :PREDICATE MV5264)
 (:VAR MV5263 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5270 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5261 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5261 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5267
  :RAW-TEXT "signaling pathway")
 (:VAR MV5267 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV5264 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5284 :ISA POLAR-QUESTION :STATEMENT MV5282)
 (:VAR MV5282 :ISA REGULATE :AGENT MV5273 :OBJECT MV5278 :RAW-TEXT "regulate")
 (:VAR MV5273 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5278 :ISA GENE :ORGAN MV5281 :HAS-DETERMINER "THE" :EXPRESSES MV5274
  :RAW-TEXT "gene")
 (:VAR MV5281 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5274 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5291 :ISA REGULATE :OBJECT MV5287 :AGENT MV5285 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5287 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5285 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5300 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5296 :AGENT MV5293
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5296 :ISA THESE :QUANTIFIER MV5294 :WORD "these")
 (:VAR MV5294 :ISA WHICH)
 (:VAR MV5293 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5308 :ISA REGULATE :AGENT-OR-CAUSE MV5305 :OBJECT MV5309 :PRESENT
  "PRESENT" :ADVERB MV5306 :RAW-TEXT "regulate")
 (:VAR MV5305 :ISA THESE :QUANTIFIER MV5303 :WORD "these")
 (:VAR MV5303 :ISA WHICH)
 (:VAR MV5309 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5306 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5314 :ISA TRANSCRIBE :AGENT MV5311 :OBJECT MV5312 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5311 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5312 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5318 :ISA TRANSCRIBE :AGENT MV5315 :OBJECT MV5316 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5315 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5316 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5322 :ISA UTILIZE :PARTICIPANT MV5321 :OBJECT MV5323 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5321 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5320 :RAW-TEXT
  "pathways")
 (:VAR MV5320 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5323 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e17   REGULATE      1 "What transcription factors are in the calcium regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in the calcium regulated pathways?"
 (:VAR MV5334 :ISA WH-QUESTION :STATEMENT MV5330 :VAR NIL :WH WHAT)
 (:VAR MV5330 :ISA REGULATE :AFFECTED-PROCESS MV5331 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV5331 :ISA PATHWAY :RAW-TEXT "pathways"))

___________________
572: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5338 :ISA INVOLVE :THEME MV5337 :THEME MV5335 :PRESENT "PRESENT")
 (:VAR MV5337 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5335 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :NAME "immune system" :UID
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5345 :ISA INVOLVE :THEME MV5344 :THEME MV5348 :PRESENT "PRESENT")
 (:VAR MV5344 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5343 :RAW-TEXT
  "pathways")
 (:VAR MV5343 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5348 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5340 MV5346 MV5341))
 (:VAR MV5340 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5346 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5341 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5356 :ISA SHARE :OBJECT MV5350 :PARTICIPANT MV5355 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5350 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5355 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5364 :ISA REGULATE :OBJECT MV5359 :AGENT MV5363 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5359 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5363 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5367 :ISA BE :SUBJECT MV5366 :PREDICATE MV5369 :PRESENT "PRESENT")
 (:VAR MV5366 :ISA WHAT)
 (:VAR MV5369 :ISA PATHWAY :PATHWAYCOMPONENT MV5372 :PREDICATION MV5368
  :RAW-TEXT "pathways")
 (:VAR MV5372 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5368 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5386 :ISA SHARE :OBJECT MV5379 :PARTICIPANT MV5384 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5379 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5378 :RAW-TEXT
  "pathways")
 (:VAR MV5378 :ISA IMMUNE :NAME "immune")
 (:VAR MV5384 :ISA GENE :EXPRESSES MV5385 :RAW-TEXT "genes")
 (:VAR MV5385 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5374 MV5375 MV5376))
 (:VAR MV5374 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5375 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5376 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5395 :ISA REGULATE :OBJECT MV5391 :AGENT MV5389 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5391 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5388 :RAW-TEXT
  "phosphatase")
 (:VAR MV5388 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV5389 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5401 :ISA INVOLVE :THEME MV5400 :THEME MV5397 :PRESENT "PRESENT")
 (:VAR MV5400 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5399 :RAW-TEXT
  "pathways")
 (:VAR MV5399 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV5397 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV5406 :ISA POLAR-QUESTION :STATEMENT MV5403)
 (:VAR MV5403 :ISA BE :SUBJECT MV5402 :PREDICATE MV5405)
 (:VAR MV5402 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5405 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5411 :ISA POLAR-QUESTION :STATEMENT MV5409)
 (:VAR MV5409 :ISA BE :SUBJECT MV5407 :PREDICATE MV5408)
 (:VAR MV5407 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5408 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5415 :ISA BE :SUBJECT MV5414 :PREDICATE MV5417 :PRESENT "PRESENT")
 (:VAR MV5414 :ISA THESE :QUANTIFIER MV5412 :WORD "these")
 (:VAR MV5412 :ISA WHICH)
 (:VAR MV5417 :ISA KINASE :ENZYME MV5416 :RAW-TEXT "kinases")
 (:VAR MV5416 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5423 :ISA BE :SUBJECT MV5422 :PREDICATE MV5419 :PRESENT "PRESENT")
 (:VAR MV5422 :ISA THESE :QUANTIFIER MV5420 :WORD "these")
 (:VAR MV5420 :ISA WHICH)
 (:VAR MV5419 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinases" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5428 :ISA BE :SUBJECT MV5427 :PREDICATE MV5431 :PRESENT "PRESENT")
 (:VAR MV5427 :ISA THESE :QUANTIFIER MV5425 :WORD "these")
 (:VAR MV5425 :ISA WHICH)
 (:VAR MV5431 :ISA KINASE :AMINO-ACID MV5432 :RAW-TEXT "kinases")
 (:VAR MV5432 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5429 MV5430))
 (:VAR MV5429 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5430 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5437 :ISA BE :SUBJECT MV5436 :PREDICATE MV5438 :PRESENT "PRESENT")
 (:VAR MV5436 :ISA THESE :QUANTIFIER MV5434 :WORD "these")
 (:VAR MV5434 :ISA WHICH)
 (:VAR MV5438 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5443 :ISA BE :SUBJECT MV5442 :PREDICATE MV5444 :PRESENT "PRESENT")
 (:VAR MV5442 :ISA THESE :QUANTIFIER MV5440 :WORD "these")
 (:VAR MV5440 :ISA WHICH)
 (:VAR MV5444 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5449 :ISA BE :SUBJECT MV5448 :PREDICATE MV5450 :PRESENT "PRESENT")
 (:VAR MV5448 :ISA THESE :QUANTIFIER MV5446 :WORD "these")
 (:VAR MV5446 :ISA WHICH) (:VAR MV5450 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5456 :ISA BE :SUBJECT MV5455 :PREDICATE MV5457 :PRESENT "PRESENT")
 (:VAR MV5455 :ISA THESE :QUANTIFIER MV5453 :WORD "these")
 (:VAR MV5453 :ISA WHICH)
 (:VAR MV5457 :ISA RECEPTOR :MODIFIER MV5452 :RAW-TEXT "receptors")
 (:VAR MV5452 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinase" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5463 :ISA BE :SUBJECT MV5462 :PREDICATE MV5459 :PRESENT "PRESENT")
 (:VAR MV5462 :ISA THESE :QUANTIFIER MV5460 :WORD "these")
 (:VAR MV5460 :ISA WHICH)
 (:VAR MV5459 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5469 :ISA BE :SUBJECT MV5468 :PREDICATE MV5465 :PRESENT "PRESENT")
 (:VAR MV5468 :ISA THESE :QUANTIFIER MV5466 :WORD "these")
 (:VAR MV5466 :ISA WHICH)
 (:VAR MV5465 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5475 :ISA BE :SUBJECT MV5474 :PREDICATE MV5471 :PRESENT "PRESENT")
 (:VAR MV5474 :ISA THESE :QUANTIFIER MV5472 :WORD "these")
 (:VAR MV5472 :ISA WHICH)
 (:VAR MV5471 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5480 :ISA BE :SUBJECT MV5479 :PREDICATE MV5481 :PRESENT "PRESENT")
 (:VAR MV5479 :ISA THESE :QUANTIFIER MV5477 :WORD "these")
 (:VAR MV5477 :ISA WHICH)
 (:VAR MV5481 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5486 :ISA BE :SUBJECT MV5485 :PREDICATE MV5487 :PRESENT "PRESENT")
 (:VAR MV5485 :ISA THESE :QUANTIFIER MV5483 :WORD "these")
 (:VAR MV5483 :ISA WHICH)
 (:VAR MV5487 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5492 :ISA BE :SUBJECT MV5491 :PREDICATE MV5493 :PRESENT "PRESENT")
 (:VAR MV5491 :ISA THESE :QUANTIFIER MV5489 :WORD "these")
 (:VAR MV5489 :ISA WHICH)
 (:VAR MV5493 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5498 :ISA BE :SUBJECT MV5497 :PREDICATE MV5500 :PRESENT "PRESENT")
 (:VAR MV5497 :ISA THESE :QUANTIFIER MV5495 :WORD "these")
 (:VAR MV5495 :ISA WHICH)
 (:VAR MV5500 :ISA RECEPTOR :MODIFIER MV5499 :RAW-TEXT "receptors")
 (:VAR MV5499 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5506 :ISA BE :SUBJECT MV5505 :PREDICATE MV5502 :PRESENT "PRESENT")
 (:VAR MV5505 :ISA THESE :QUANTIFIER MV5503 :WORD "these")
 (:VAR MV5503 :ISA WHICH)
 (:VAR MV5502 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
  "receptor tyrosine kinase" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TKTL1_HUMAN") (:UID "UP:P51854"))
   (PROTEIN (:NAME "NTRK1_HUMAN") (:UID "UP:P04629")))
  :UID "NCIT:C17660"))

___________________
597: "Which of these are transcription factors?"

                    SOURCE-START
e10   BE            1 "Which of these are transcription factors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are transcription factors?"
 (:VAR MV5512 :ISA BE :SUBJECT MV5511 :PREDICATE MV5508 :PRESENT "PRESENT")
 (:VAR MV5511 :ISA THESE :QUANTIFIER MV5509 :WORD "these")
 (:VAR MV5509 :ISA WHICH)
 (:VAR MV5508 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5518 :ISA BE :SUBJECT MV5517 :PREDICATE MV5519 :PRESENT "PRESENT")
 (:VAR MV5517 :ISA THESE :QUANTIFIER MV5515 :WORD "these")
 (:VAR MV5515 :ISA WHICH)
 (:VAR MV5519 :ISA PROTEIN :MODIFIER MV5514 :RAW-TEXT "proteins")
 (:VAR MV5514 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5524 :ISA BE :SUBJECT MV5523 :PREDICATE MV5527 :PRESENT "PRESENT")
 (:VAR MV5523 :ISA THESE :QUANTIFIER MV5521 :WORD "these")
 (:VAR MV5521 :ISA WHICH)
 (:VAR MV5527 :ISA PHOSPHATASE :MODIFIER MV5528 :RAW-TEXT "phosphatases")
 (:VAR MV5528 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5525 MV5526))
 (:VAR MV5525 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5526 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5533 :ISA BE :SUBJECT MV5532 :PREDICATE MV5535 :PRESENT "PRESENT")
 (:VAR MV5532 :ISA THESE :QUANTIFIER MV5530 :WORD "these")
 (:VAR MV5530 :ISA WHICH)
 (:VAR MV5535 :ISA PHOSPHATASE :MODIFIER MV5534 :RAW-TEXT "phosphatases")
 (:VAR MV5534 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5540 :ISA PHOSPHORYLATE :AMINO-ACID MV5537 :AGENT MV5539 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5537 :ISA WHAT)
 (:VAR MV5539 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
602: "which of these are exclusively expressed in liver?"

                    SOURCE-START
e16   GENE-TRANSCRIPT-EXPRESS 1 "which of these are exclusively expressed in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("which of these are exclusively expressed in liver?"
 (:VAR MV5549 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5543 :ORGAN MV5548
  :PRESENT "PRESENT" :ADVERB MV5545 :RAW-TEXT "expressed")
 (:VAR MV5543 :ISA THESE :QUANTIFIER MV5541 :WORD "these")
 (:VAR MV5541 :ISA WHICH) (:VAR MV5548 :ISA LIVER)
 (:VAR MV5545 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5554 :ISA REGULATE :AGENT-OR-CAUSE MV5553 :OBJECT MV5552 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5553 :ISA WHAT)
 (:VAR MV5552 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5557 :ISA INCREASE :AGENT-OR-CAUSE MV5555 :AFFECTED-PROCESS-OR-OBJECT
  MV5559 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5555 :ISA WHAT)
 (:VAR MV5559 :ISA BIO-AMOUNT :MEASURED-ITEM MV5561 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5561 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5564 :ISA UPREGULATE :AGENT-OR-CAUSE MV5563 :OBJECT MV5565 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5563 :ISA WHAT)
 (:VAR MV5565 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5567 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5566 :OBJECT MV5568 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5566 :ISA WHAT)
 (:VAR MV5568 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5570 :ISA DECREASE :AGENT-OR-CAUSE MV5569 :AFFECTED-PROCESS-OR-OBJECT
  MV5572 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5569 :ISA WHAT)
 (:VAR MV5572 :ISA BIO-AMOUNT :MEASURED-ITEM MV5574 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5574 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5577 :ISA REGULATE :AGENT-OR-CAUSE MV5576 :OBJECT MV5578 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5576 :ISA WHAT)
 (:VAR MV5578 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    SOURCE-START
e11   FROM          1 "What regulates GLUL from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the literature?"
 (:VAR MV5586 :ISA WH-QUESTION :STATEMENT MV5585 :WH WHAT)
 (:VAR MV5585 :ISA PREPOSITIONAL-PHRASE :POBJ MV5584 :PREP "FROM")
 (:VAR MV5584 :ISA LITERATURE :HAS-DETERMINER "THE"))

___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e12   FROM          1 "What regulates GLUL from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the GEO RNAi database?"
 (:VAR MV5594 :ISA WH-QUESTION :STATEMENT MV5593 :WH WHAT)
 (:VAR MV5593 :ISA PREPOSITIONAL-PHRASE :POBJ MV5587 :PREP "FROM")
 (:VAR MV5587 :ISA DATABASE :HAS-DETERMINER "THE" :NAME "GEO RNAi database"
  :UID "GEO-RNAi"))

___________________
611: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5597 :ISA REGULATE :AGENT MV5596 :OBJECT MV5600 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5596 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5600 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5599 :RAW-TEXT
  "gene")
 (:VAR MV5599 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5601 :ISA DOWNREGULATE :AGENT MV5603 :OBJECT MV5606 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5603 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5606 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5605 :RAW-TEXT
  "gene")
 (:VAR MV5605 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5609 :ISA BE :SUBJECT MV5608 :PREDICATE MV5607 :PRESENT "PRESENT")
 (:VAR MV5608 :ISA WHAT)
 (:VAR MV5607 :ISA POSITIVE-REGULATOR :THEME MV5613 :RAW-TEXT
  "positive regulators")
 (:VAR MV5613 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5612 :RAW-TEXT
  "gene")
 (:VAR MV5612 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5617 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5616 :OBJECT MV5615 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5616 :ISA WHAT)
 (:VAR MV5615 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5620 :ISA SHOW :STATEMENT-OR-THEME MV5631 :BENEFICIARY MV5621 :PRESENT
  "PRESENT")
 (:VAR MV5631 :ISA EVIDENCE :STATEMENT MV5626 :HAS-DETERMINER "THE")
 (:VAR MV5626 :ISA INCREASE :AGENT MV5618 :AFFECTED-PROCESS-OR-OBJECT MV5628
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5618 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5628 :ISA BIO-AMOUNT :MEASURED-ITEM MV5619 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5619 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5621 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
616: "Show me the evidence that KRAS decreasse the amount of FZD8."

                    SOURCE-START
e22   SHOW          1 "Show me the evidence " 5
e8    THAT          5 "that " 6
e17   BIO-ENTITY    6 "KRAS decreasse " 8
e20   BIO-AMOUNT    8 "the amount of FZD8" 13
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   VP            1 "Show me the evidence " 5
e8    DET           5 "that " 6
e17   NP            6 "KRAS decreasse " 8
e20   NP            8 "the amount of FZD8" 13
                    PERIOD
                    END-OF-SOURCE


___________________
617: "What is the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras regulates frizzled8?"
 (:VAR MV5646 :ISA BE :SUBJECT MV5645 :PREDICATE MV5652 :PRESENT "PRESENT")
 (:VAR MV5645 :ISA WHAT)
 (:VAR MV5652 :ISA EVIDENCE :STATEMENT MV5651 :HAS-DETERMINER "THE")
 (:VAR MV5651 :ISA REGULATE :AGENT MV5650 :OBJECT MV5644 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5650 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5644 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5654 :ISA BE :SUBJECT MV5653 :PREDICATE MV5663 :PRESENT "PRESENT")
 (:VAR MV5653 :ISA WHAT)
 (:VAR MV5663 :ISA EVIDENCE :STATEMENT MV5659 :HAS-DETERMINER "THE")
 (:VAR MV5659 :ISA BINDING :BINDER MV5658 :DIRECT-BINDEE MV5662 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5658 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5662 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5661 :RAW-TEXT
  "gene")
 (:VAR MV5661 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5671 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5665 :ORGAN MV5670
  :PRESENT "PRESENT" :ADVERB MV5667 :RAW-TEXT "expressed")
 (:VAR MV5665 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5670 :ISA LIVER) (:VAR MV5667 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5679 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5677 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5677 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5688 :ISA POLAR-QUESTION :STATEMENT MV5686)
 (:VAR MV5686 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5680 :ORGAN MV5685 :ADVERB
  MV5682 :RAW-TEXT "expressed")
 (:VAR MV5680 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5685 :ISA LIVER) (:VAR MV5682 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5693 :ISA AFFECT :MANNER MV5691 :AGENT MV5689 :OBJECT MV5690 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5691 :ISA HOW)
 (:VAR MV5689 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5690 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5698 :ISA AFFECT :MANNER MV5695 :AGENT MV5697 :OBJECT MV5694 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5695 :ISA HOW)
 (:VAR MV5697 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5694 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5702 :ISA BE :SUBJECT MV5701 :PREDICATE MV5707 :PRESENT "PRESENT")
 (:VAR MV5701 :ISA WHAT)
 (:VAR MV5707 :ISA REGULATOR :THEME MV5710 :HAS-DETERMINER "THE" :PREDICATION
  MV5704 :CONTEXT MV5705 :RAW-TEXT "regulators")
 (:VAR MV5710 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5699 MV5700))
 (:VAR MV5699 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5700 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5704 :ISA COMMON)
 (:VAR MV5705 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5715 :ISA BE :SUBJECT MV5714 :PREDICATE MV5717 :PRESENT "PRESENT")
 (:VAR MV5714 :ISA WHAT)
 (:VAR MV5717 :ISA PATH :ENDPOINTS MV5720 :HAS-DETERMINER "THE")
 (:VAR MV5720 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5712 MV5713))
 (:VAR MV5712 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5713 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5727 :ISA POLAR-QUESTION :STATEMENT MV5726)
 (:VAR MV5726 :ISA AFFECT :AGENT MV5722 :OBJECT MV5725 :RAW-TEXT "affect")
 (:VAR MV5722 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5725 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
627: "MAP3K7 regulates IKK"

                    SOURCE-START
e5    REGULATE      1 "MAP3K7 regulates IKK" 7
                    END-OF-SOURCE
("MAP3K7 regulates IKK"
 (:VAR MV5729 :ISA REGULATE :AGENT MV5728 :OBJECT MV5730 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5728 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5730 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
628: "MAP3K7 positively regulates IKK"

                    SOURCE-START
e6    UPREGULATE    1 "MAP3K7 positively regulates IKK" 8
                    END-OF-SOURCE
("MAP3K7 positively regulates IKK"
 (:VAR MV5732 :ISA UPREGULATE :AGENT MV5731 :OBJECT MV5733 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5731 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5733 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
629: "NFkappaB positively regulates CXCL8."

                    SOURCE-START
e7    UPREGULATE    1 "NFkappaB positively regulates CXCL8" 6
                    PERIOD
                    END-OF-SOURCE
("NFkappaB positively regulates CXCL8."
 (:VAR MV5734 :ISA UPREGULATE :AGENT MV5736 :OBJECT MV5735 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5736 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5735 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5746 :ISA POLAR-QUESTION :STATEMENT MV5745)
 (:VAR MV5745 :ISA REGULATE :AGENT MV5740 :OBJECT MV5744 :RAW-TEXT "regulate")
 (:VAR MV5740 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5744 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5738 :RAW-TEXT
  "gene")
 (:VAR MV5738 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5748 :ISA SHOW :STATEMENT-OR-THEME MV5756 :BENEFICIARY MV5749 :PRESENT
  "PRESENT")
 (:VAR MV5756 :ISA EVIDENCE :STATEMENT MV5755 :HAS-DETERMINER "THE")
 (:VAR MV5755 :ISA REGULATE :AGENT MV5753 :OBJECT MV5747 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5753 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5747 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5749 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5764 :ISA POLAR-QUESTION :STATEMENT MV5763)
 (:VAR MV5763 :ISA REGULATE :AGENT MV5759 :OBJECT MV5762 :RAW-TEXT "regulate")
 (:VAR MV5759 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5762 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5757 :RAW-TEXT
  "gene")
 (:VAR MV5757 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5767 :ISA DECREASE :AGENT MV5766 :AFFECTED-PROCESS-OR-OBJECT MV5769
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5766 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5769 :ISA BIO-AMOUNT :MEASURED-ITEM MV5765 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5765 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5777 :ISA POLAR-QUESTION :STATEMENT MV5776)
 (:VAR MV5776 :ISA REGULATE :AGENT MV5775 :OBJECT MV5774 :RAW-TEXT "regulate")
 (:VAR MV5775 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5774 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
635: "Does TNF regulate the ERK gene?"

                    SOURCE-START
e13   REGULATE      1 "Does TNF regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate the ERK gene?"
 (:VAR MV5785 :ISA POLAR-QUESTION :STATEMENT MV5784)
 (:VAR MV5784 :ISA REGULATE :AGENT MV5779 :OBJECT MV5783 :RAW-TEXT "regulate")
 (:VAR MV5779 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5783 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5782 :RAW-TEXT
  "gene")
 (:VAR MV5782 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
636: "What are the pathways between TNG and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNG and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNG and ERK?"
 (:VAR MV5787 :ISA BE :SUBJECT MV5786 :PREDICATE MV5789 :PRESENT "PRESENT")
 (:VAR MV5786 :ISA WHAT)
 (:VAR MV5789 :ISA PATHWAY :PATHWAYCOMPONENT MV5794 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5794 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5791 MV5793))
 (:VAR MV5791 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5793 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
637: "What are the pathways between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNF and ERK?"
 (:VAR MV5797 :ISA BE :SUBJECT MV5796 :PREDICATE MV5799 :PRESENT "PRESENT")
 (:VAR MV5796 :ISA WHAT)
 (:VAR MV5799 :ISA PATHWAY :PATHWAYCOMPONENT MV5804 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5804 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5801 MV5803))
 (:VAR MV5801 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5803 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
638: "Does NFkappaB regulate ERK?"

                    SOURCE-START
e9    REGULATE      1 "Does NFkappaB regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate ERK?"
 (:VAR MV5812 :ISA POLAR-QUESTION :STATEMENT MV5811)
 (:VAR MV5811 :ISA REGULATE :AGENT MV5807 :OBJECT MV5810 :RAW-TEXT "regulate")
 (:VAR MV5807 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5810 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
639: "Does NFkappaB regulate the ERK gene?"

                    SOURCE-START
e14   REGULATE      1 "Does NFkappaB regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the ERK gene?"
 (:VAR MV5821 :ISA POLAR-QUESTION :STATEMENT MV5820)
 (:VAR MV5820 :ISA REGULATE :AGENT MV5814 :OBJECT MV5819 :RAW-TEXT "regulate")
 (:VAR MV5814 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5819 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5818 :RAW-TEXT
  "gene")
 (:VAR MV5818 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
640: "What pathways exist between NFkappaB and ERK?"

                    SOURCE-START
e14   COPULAR-PREDICATE 1 "What pathways exist between NFkappaB and ERK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways exist between NFkappaB and ERK?"
 (:VAR MV5834 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5823 :VALUE MV5833 :PREP
  "BETWEEN" :PREDICATE MV5824)
 (:VAR MV5823 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5833 :ISA PATHWAY :PATHWAYCOMPONENT MV5830 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5830 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5827 MV5829))
 (:VAR MV5827 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5829 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5824 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5840 :ISA AFFECT :MANNER MV5836 :AGENT MV5838 :OBJECT MV5841 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5836 :ISA HOW)
 (:VAR MV5838 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5841 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
642: "MAP3K7 activates IKK"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "MAP3K7 activates IKK" 7
                    END-OF-SOURCE
("MAP3K7 activates IKK"
 (:VAR MV5843 :ISA BIO-ACTIVATE :AGENT MV5842 :OBJECT MV5844 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5842 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5844 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199"))

___________________
643: "IKK activates TNF"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "IKK activates TNF" 4
                    END-OF-SOURCE
("IKK activates TNF"
 (:VAR MV5846 :ISA BIO-ACTIVATE :AGENT MV5845 :OBJECT MV5847 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5845 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5847 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5849 :ISA BE :SUBJECT MV5848 :PREDICATE MV5851 :PRESENT "PRESENT")
 (:VAR MV5848 :ISA WHAT)
 (:VAR MV5851 :ISA PATH :ENDPOINTS MV5856 :HAS-DETERMINER "THE")
 (:VAR MV5856 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5853 MV5855))
 (:VAR MV5853 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5855 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
645: "Does TNF regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNF regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate ERK?" (:VAR MV5863 :ISA POLAR-QUESTION :STATEMENT MV5862)
 (:VAR MV5862 :ISA REGULATE :AGENT MV5859 :OBJECT MV5861 :RAW-TEXT "regulate")
 (:VAR MV5859 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5861 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
646: "How does MAP3K7 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3K7 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3K7 affect CXCL8?"
 (:VAR MV5868 :ISA AFFECT :MANNER MV5866 :AGENT MV5864 :OBJECT MV5865 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5866 :ISA HOW)
 (:VAR MV5864 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5865 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5870 :ISA BIO-ACTIVATE :AGENT MV5869 :OBJECT MV5871 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5869 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5871 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
648: " Active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL8"
 (:VAR MV5875 :ISA DECREASE :AGENT MV5874 :AFFECTED-PROCESS-OR-OBJECT MV5877
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5874 :ISA PROTEIN-FAMILY :PREDICATION MV5873 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5873 :ISA ACTIVE)
 (:VAR MV5877 :ISA BIO-AMOUNT :MEASURED-ITEM MV5872 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5872 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5883 :ISA BE :SUBJECT MV5882 :PREDICATE MV5886 :PRESENT "PRESENT")
 (:VAR MV5882 :ISA WHAT)
 (:VAR MV5886 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5889 :HAS-DETERMINER
  "THE" :PREDICATION MV5885 :RAW-TEXT "upstreams")
 (:VAR MV5889 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5880 MV5881))
 (:VAR MV5880 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5881 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5885 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5895 :ISA AFFECT :MANNER MV5893 :AGENT MV5891 :OBJECT MV5892 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5893 :ISA HOW)
 (:VAR MV5891 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5892 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5901 :ISA POLAR-QUESTION :STATEMENT MV5900)
 (:VAR MV5900 :ISA REGULATE :AGENT MV5896 :OBJECT MV5897 :RAW-TEXT "regulate")
 (:VAR MV5896 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5897 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5909 :ISA POLAR-QUESTION :STATEMENT MV5908)
 (:VAR MV5908 :ISA REGULATE :AGENT MV5902 :OBJECT MV5907 :RAW-TEXT "regulate")
 (:VAR MV5902 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5907 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5903 :RAW-TEXT
  "gene")
 (:VAR MV5903 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5914 :ISA AFFECT :MANNER MV5912 :AGENT MV5910 :OBJECT MV5911 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5912 :ISA HOW)
 (:VAR MV5910 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5911 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5917 :ISA BE :SUBJECT MV5916 :PREDICATE MV5919 :PRESENT "PRESENT")
 (:VAR MV5916 :ISA WHAT)
 (:VAR MV5919 :ISA PATH :ENDPOINTS MV5923 :HAS-DETERMINER "THE")
 (:VAR MV5923 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5921 MV5915))
 (:VAR MV5921 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5915 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5934 :ISA POLAR-QUESTION :STATEMENT MV5932)
 (:VAR MV5932 :ISA REGULATE :AGENT MV5927 :AFFECTED-PROCESS MV5930 :RAW-TEXT
  "regulate")
 (:VAR MV5927 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5930 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5925 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5925 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5938 :ISA DECREASE :AGENT MV5937 :AFFECTED-PROCESS MV5940 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5937 :ISA PROTEIN-FAMILY :PREDICATION MV5936 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5936 :ISA ACTIVE)
 (:VAR MV5940 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5935 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5935 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5946 :ISA DECREASE :AGENT MV5945 :AFFECTED-PROCESS-OR-OBJECT MV5948
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5945 :ISA PROTEIN-FAMILY :PREDICATION MV5944 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5944 :ISA ACTIVE)
 (:VAR MV5948 :ISA BIO-AMOUNT :MEASURED-ITEM MV5943 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5943 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5954 :ISA DECREASE :AGENT MV5953 :AFFECTED-PROCESS-OR-OBJECT MV5956
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5953 :ISA PROTEIN-FAMILY :PREDICATION MV5952 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5952 :ISA ACTIVE)
 (:VAR MV5956 :ISA BIO-AMOUNT :MEASURED-ITEM MV5951 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5951 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5961 :ISA INHIBIT :AGENT MV5959 :AFFECTED-PROCESS MV5963 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5959 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5963 :ISA BIO-ACTIVITY :PARTICIPANT MV5960 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5960 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5977 :ISA POLAR-QUESTION :STATEMENT MV5975)
 (:VAR MV5975 :ISA DECREASE :AGENT MV5966 :OBJECT MV5967 :RAW-TEXT "decrease")
 (:VAR MV5966 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5967 :ISA PROTEIN :INFO-CONTEXT MV5974 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5974 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5988 :ISA POLAR-QUESTION :STATEMENT MV5986)
 (:VAR MV5986 :ISA DECREASE :AGENT MV5978 :OBJECT MV5979 :RAW-TEXT "decrease")
 (:VAR MV5978 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5979 :ISA PROTEIN :INFO-CONTEXT MV5985 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5985 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5990 :ISA BIO-ACTIVATE :AGENT MV5989 :OBJECT MV5991 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5989 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5991 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB"))

___________________
663: "I want to find out how tofacitinib decreases IL2"

                    SOURCE-START
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    END-OF-SOURCE
("I want to find out how tofacitinib decreases IL2"
 (:VAR MV5997 :ISA WANT :AGENT MV5994 :THEME MV6008 :PRESENT "PRESENT")
 (:VAR MV5994 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6008 :ISA FIND-OUT :AGENT MV5994 :STATEMENT MV6005)
 (:VAR MV6005 :ISA WH-QUESTION :STATEMENT MV6004 :VAR NIL :WH HOW)
 (:VAR MV6004 :ISA DECREASE :AGENT MV6003 :OBJECT MV5993 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6003 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV5993 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e29   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6013 :ISA WANT :AGENT MV6010 :THEME MV6028 :PRESENT "PRESENT")
 (:VAR MV6010 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6028 :ISA FIND-OUT :AGENT MV6010 :STATEMENT MV6025)
 (:VAR MV6025 :ISA WH-QUESTION :STATEMENT MV6020 :VAR NIL :WH HOW)
 (:VAR MV6020 :ISA DECREASE :AGENT MV6019 :OBJECT MV6021 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6019 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6021 :ISA PROTEIN :CELL-TYPE MV6023 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6023 :ISA CELL-TYPE :CELL-LINE MV6009)
 (:VAR MV6009 :ISA CELL-LINE :NAME "BT-20" :UID "CVCL:0178"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6034 :ISA WANT :AGENT MV6031 :THEME MV6048 :PRESENT "PRESENT")
 (:VAR MV6031 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6048 :ISA FIND-OUT :AGENT MV6031 :STATEMENT MV6045)
 (:VAR MV6045 :ISA WH-QUESTION :STATEMENT MV6040 :VAR NIL :WH HOW)
 (:VAR MV6040 :ISA BIO-ACTIVATE :AGENT MV6029 :OBJECT MV6041 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6029 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6041 :ISA PROTEIN :CELL-TYPE MV6043 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6043 :ISA CELL-TYPE :CELL-LINE MV6030)
 (:VAR MV6030 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6054 :ISA POLAR-QUESTION :STATEMENT MV6053)
 (:VAR MV6053 :ISA PHOSPHORYLATE :AGENT MV6050 :SUBSTRATE MV6052 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6050 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6052 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
667: "Does STAT3 inhibit the c-fos gene?"

                    SOURCE-START
e15   INHIBIT       1 "Does STAT3 inhibit the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 inhibit the c-fos gene?"
 (:VAR MV6062 :ISA POLAR-QUESTION :STATEMENT MV6061)
 (:VAR MV6061 :ISA INHIBIT :AGENT MV6055 :OBJECT MV6060 :RAW-TEXT "inhibit")
 (:VAR MV6055 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6060 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6056 :RAW-TEXT
  "gene")
 (:VAR MV6056 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6070 :ISA POLAR-QUESTION :STATEMENT MV6069)
 (:VAR MV6069 :ISA STIMULATE :AGENT MV6063 :OBJECT MV6068 :RAW-TEXT
  "stimulate")
 (:VAR MV6063 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6068 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6064 :RAW-TEXT
  "gene")
 (:VAR MV6064 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6075 :ISA WANT :AGENT MV6072 :THEME MV6091 :PRESENT "PRESENT")
 (:VAR MV6072 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6091 :ISA FIND-OUT :AGENT MV6072 :STATEMENT MV6088)
 (:VAR MV6088 :ISA WH-QUESTION :STATEMENT MV6082 :VAR NIL :WH HOW)
 (:VAR MV6082 :ISA DECREASE :AGENT MV6081 :OBJECT MV6083 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6081 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6083 :ISA PROTEIN :CELL-TYPE MV6086 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6086 :ISA CELL-TYPE :CELL-LINE MV6071 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6085)
 (:VAR MV6071 :ISA CELL-LINE :NAME "SK-MEL-133" :UID "CVCL:6082")
 (:VAR MV6085 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6096 :ISA POLAR-QUESTION :STATEMENT MV6093)
 (:VAR MV6093 :ISA BE :SUBJECT MV6094 :PREDICATE MV6092)
 (:VAR MV6094 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6092 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6098 :ISA LIST :THEME MV6101 :PRESENT "PRESENT")
 (:VAR MV6101 :ISA GENE :PREDICATION MV6102 :QUANTIFIER MV6099 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6102 :ISA REGULATE :OBJECT MV6101 :AGENT MV6106 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6106 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6097 MV6105))
 (:VAR MV6097 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6105 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6099 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6109 :ISA LIST :THEME MV6113 :PRESENT "PRESENT")
 (:VAR MV6113 :ISA GENE :PREDICATION MV6114 :QUANTIFIER MV6110 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6114 :ISA REGULATE :OBJECT MV6113 :AGENT MV6118 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6118 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6108 MV6117))
 (:VAR MV6108 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6117 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6110 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6124 :ISA SHOW :STATEMENT-OR-THEME MV6127 :BENEFICIARY MV6125 :PRESENT
  "PRESENT")
 (:VAR MV6127 :ISA MUTATION :OBJECT MV6132 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6132 :ISA COLLECTION :CONTEXT MV6123 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6122 MV6130))
 (:VAR MV6123 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6122 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6130 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6125 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6138 :ISA BE :SUBJECT MV6137 :PREDICATE MV6140 :PRESENT "PRESENT")
 (:VAR MV6137 :ISA WHAT)
 (:VAR MV6140 :ISA MUTATION :OBJECT MV6145 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6145 :ISA COLLECTION :CONTEXT MV6136 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6135 MV6143))
 (:VAR MV6136 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6135 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6143 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6152 :ISA BE :SUBJECT MV6151 :PREDICATE MV6159 :PRESENT "PRESENT")
 (:VAR MV6151 :ISA WHAT)
 (:VAR MV6159 :ISA GENE :DISEASE MV6150 :HAS-DETERMINER "THE" :PREDICATION
  MV6148 :RAW-TEXT "genes")
 (:VAR MV6150 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6148 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6149)
 (:VAR MV6149 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6164 :ISA BE :SUBJECT MV6163 :PREDICATE MV6171 :PRESENT "PRESENT")
 (:VAR MV6163 :ISA WHAT)
 (:VAR MV6171 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6160 :RAW-TEXT
  "genes")
 (:VAR MV6160 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6161)
 (:VAR MV6161 :ISA PROTEIN :CONTEXT MV6162 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6162 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6173 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6172
  :AFFECTED-PROCESS-OR-OBJECT MV6174 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6172 :ISA WHAT) (:VAR MV6174 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6178 :ISA HAVE :POSSESSOR MV6177 :THING-POSSESSED MV6180 :PRESENT
  "PRESENT")
 (:VAR MV6177 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6180 :ISA EVIDENCE :FACT MV6183 :PREDICATION MV6179)
 (:VAR MV6183 :ISA REGULATE :AGENT MV6175 :PROGRESSIVE MV6182 :RAW-TEXT
  "regulated")
 (:VAR MV6175 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6182 :ISA BE) (:VAR MV6179 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6189 :ISA INCREASE :AGENT-OR-CAUSE MV6187 :AFFECTED-PROCESS-OR-OBJECT
  MV6191 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6187 :ISA WHAT)
 (:VAR MV6191 :ISA BIO-AMOUNT :MEASURED-ITEM MV6193 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6193 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6197 :ISA INHIBIT :AGENT-OR-CAUSE MV6196 :OBJECT MV6195 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6196 :ISA WHAT)
 (:VAR MV6195 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6201 :ISA BE :SUBJECT MV6200 :PREDICATE MV6213 :PRESENT "PRESENT")
 (:VAR MV6200 :ISA WHAT)
 (:VAR MV6213 :ISA QUALITY-PREDICATE :ITEM MV6211 :ATTRIBUTE MV6207)
 (:VAR MV6211 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6198 MV6209 MV6199))
 (:VAR MV6198 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6209 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6199 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6207 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6205
  :MODIFIER MV6206)
 (:VAR MV6205 :ISA LIKELY :COMPARATIVE MV6203)
 (:VAR MV6203 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6206 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6216 :ISA BE :SUBJECT MV6215 :PREDICATE MV6225 :PRESENT "PRESENT")
 (:VAR MV6215 :ISA WHAT)
 (:VAR MV6225 :ISA QUALITY-PREDICATE :ITEM MV6214 :ATTRIBUTE MV6222)
 (:VAR MV6214 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6222 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6220
  :MODIFIER MV6221)
 (:VAR MV6220 :ISA LIKELY :COMPARATIVE MV6218)
 (:VAR MV6218 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6221 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6229 :ISA BE :SUBJECT MV6228 :PREDICATE MV6232 :PRESENT "PRESENT")
 (:VAR MV6228 :ISA WHAT)
 (:VAR MV6232 :ISA SIGNIFICANCE :AGENT MV6226 :HAS-DETERMINER "THE" :MODIFIER
  MV6231)
 (:VAR MV6226 :ISA PROTEIN :CONTEXT MV6227 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6227 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV6231 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6244 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6240 :AGENT MV6237
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6240 :ISA THOSE :QUANTIFIER MV6238 :WORD "those")
 (:VAR MV6238 :ISA WHICH)
 (:VAR MV6237 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6260 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6251 :VALUE MV6259 :PREP
  "IN" :PREDICATE MV6252)
 (:VAR MV6251 :ISA GENE :QUANTIFIER MV6248 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6248 :ISA WHICH)
 (:VAR MV6259 :ISA GENE :CONTEXT MV6247 :QUANTIFIER MV6248 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6247 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6255
  :RAW-TEXT "signaling pathway")
 (:VAR MV6255 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV6252 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6271 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6265 :VALUE MV6269 :PREP
  MV6267 :PREDICATE MV6266)
 (:VAR MV6265 :ISA THESE :QUANTIFIER MV6263 :WORD "these")
 (:VAR MV6263 :ISA WHICH)
 (:VAR MV6269 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6262 :RAW-TEXT
  "pathway")
 (:VAR MV6262 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6267 :ISA IN :WORD "in") (:VAR MV6266 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6280 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6275 :ORGAN MV6279
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6275 :ISA PRONOUN/PLURAL :QUANTIFIER MV6273 :WORD "them")
 (:VAR MV6273 :ISA WHICH) (:VAR MV6279 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6295 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6287 :AGENT MV6294
  :PRESENT "PRESENT" :SUPERLATIVE MV6289 :ADVERB MV6290 :RAW-TEXT "regulated")
 (:VAR MV6287 :ISA PRONOUN/PLURAL :QUANTIFIER MV6285 :WORD "them")
 (:VAR MV6285 :ISA WHICH)
 (:VAR MV6294 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6283 MV6284))
 (:VAR MV6283 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6284 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6289 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6290 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6302 :ISA TARGET :AGENT MV6298 :OBJECT MV6299 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6298 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6299 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   TARGET        1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6308 :ISA TARGET :AGENT-OR-CAUSE MV6306 :OBJECT MV6303 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV6306 :ISA THOSE :QUANTIFIER MV6304 :WORD "those")
 (:VAR MV6304 :ISA WHICH)
 (:VAR MV6303 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6311 :ISA BE :SUBJECT MV6310 :PREDICATE MV6312 :PRESENT "PRESENT")
 (:VAR MV6310 :ISA WHAT)
 (:VAR MV6312 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6315 :ISA BE :SUBJECT MV6314 :PREDICATE MV6313 :PRESENT "PRESENT")
 (:VAR MV6314 :ISA WHAT)
 (:VAR MV6313 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV6321 :ISA DO :PATIENT MV6316 :PRESENT "PRESENT")
 (:VAR MV6316 :ISA WHAT))

___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6331 :ISA POLAR-QUESTION :STATEMENT MV6329)
 (:VAR MV6329 :ISA THERE-EXISTS :VALUE MV6327 :PREDICATE MV6324)
 (:VAR MV6327 :ISA INHIBITOR :PROTEIN MV6322 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6322 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6324 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6333 :ISA NAME-SOMETHING :PATIENT MV6337 :PRESENT "PRESENT")
 (:VAR MV6337 :ISA DRUG :PREDICATION MV6339 :QUANTIFIER MV6336 :RAW-TEXT
  "drugs")
 (:VAR MV6339 :ISA INHIBIT :AGENT MV6337 :THAT-REL T :OBJECT MV6332 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6332 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6336 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6351 :ISA POLAR-QUESTION :STATEMENT MV6350)
 (:VAR MV6350 :ISA THERE-EXISTS :VALUE MV6348 :PREDICATE MV6342)
 (:VAR MV6348 :ISA INHIBITOR :QUANTIFIER MV6344 :PROTEIN MV6349 :RAW-TEXT
  "inhibitors")
 (:VAR MV6344 :ISA ANY :WORD "any")
 (:VAR MV6349 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6342 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6361 :ISA POLAR-QUESTION :STATEMENT MV6359)
 (:VAR MV6359 :ISA THERE-EXISTS :VALUE MV6355 :PREDICATE MV6353)
 (:VAR MV6355 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV6358 :RAW-TEXT "targets")
 (:VAR MV6358 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6353 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6365 :ISA INHIBIT :OBJECT MV6362 :AGENT MV6364 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6362 :ISA WHAT)
 (:VAR MV6364 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6370 :ISA TARGET :OBJECT MV6366 :AGENT MV6368 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6366 :ISA WHAT)
 (:VAR MV6368 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6377 :ISA POLAR-QUESTION :STATEMENT MV6376)
 (:VAR MV6376 :ISA TARGET :AGENT MV6372 :OBJECT MV6375 :RAW-TEXT "target")
 (:VAR MV6372 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6375 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6380 :ISA BE :SUBJECT MV6379 :PREDICATE MV6382 :PRESENT "PRESENT")
 (:VAR MV6379 :ISA WHAT)
 (:VAR MV6382 :ISA TARGET-PROTEIN :QUANTIFIER MV6381 :TREATMENT MV6385
  :RAW-TEXT "targets")
 (:VAR MV6381 :ISA SOME :WORD "some")
 (:VAR MV6385 :ISA TREATMENT :DISEASE MV6378 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6378 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6389 :ISA BE :SUBJECT MV6388 :PREDICATE MV6391 :PRESENT "PRESENT")
 (:VAR MV6388 :ISA WHAT)
 (:VAR MV6391 :ISA TARGET-PROTEIN :QUANTIFIER MV6390 :DISEASE MV6387 :RAW-TEXT
  "targets")
 (:VAR MV6390 :ISA SOME :WORD "some")
 (:VAR MV6387 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6400 :ISA LEAD :AGENT MV6397 :THEME MV6403 :MODAL MV6399 :RAW-TEXT
  "lead")
 (:VAR MV6397 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6403 :ISA DEVELOPMENT :DISEASE MV6395 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6395 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6399 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6411 :ISA LEAD :AGENT MV6409 :THEME MV6414 :MODAL MV6410 :RAW-TEXT
  "lead")
 (:VAR MV6409 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6414 :ISA DEVELOPMENT :DISEASE MV6407 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6407 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6410 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6423 :ISA LEAD :AGENT MV6421 :THEME MV6418 :MODAL MV6422 :RAW-TEXT
  "lead")
 (:VAR MV6421 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6420 :RAW-TEXT
  "genes")
 (:VAR MV6420 :ISA MUTATION :OBJECT MV6421 :RAW-TEXT "mutated")
 (:VAR MV6418 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6422 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6428 :ISA BE :SUBJECT MV6427 :PREDICATE MV6432 :PRESENT "PRESENT")
 (:VAR MV6427 :ISA WHAT)
 (:VAR MV6432 :ISA MUTATION :OBJECT MV6431 :PREDICATION MV6434 :HAS-DETERMINER
  "THE" :MODIFIER MV6430 :AGENT-OR-OBJECT MV6431 :RAW-TEXT "mutation")
 (:VAR MV6431 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6434 :ISA LEAD :AGENT MV6432 :THAT-REL T :THEME MV6426 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6426 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6430 :ISA TOP-QUA-LOCATION))

___________________
707: "I would like to find a treatement for pancreatic cancer."

                    SOURCE-START
e22   LIKE          1 "I would like " 4
e21   FIND-OUT      4 "to find " 6
e19   TREATEMENT    6 "a treatement " 8
e20   FOR           8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   S             1 "I would like " 4
e21   INFINITIVE    4 "to find " 6
e19   NP            6 "a treatement " 8
e20   PP            8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE


___________________
708: "What drug could I use to treat pancreatic cancer?"

                    SOURCE-START
e19   BIO-USE       1 "What drug could I use to treat pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to treat pancreatic cancer?"
 (:VAR MV6464 :ISA BIO-USE :PATIENT MV6454 :MODAL MV6455 :AGENT MV6456 :THEME
  MV6463 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6454 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6455 :ISA COULD) (:VAR MV6456 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6463 :ISA TREATMENT :DISEASE MV6452 :RAW-TEXT "treat")
 (:VAR MV6452 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6467 :ISA BE :SUBJECT MV6466 :PREDICATE MV6469 :PRESENT "PRESENT")
 (:VAR MV6466 :ISA WHAT)
 (:VAR MV6469 :ISA DRUG :TREATMENT MV6471 :QUANTIFIER MV6468 :RAW-TEXT "drugs")
 (:VAR MV6471 :ISA TREATMENT :DISEASE MV6465 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6465 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6468 :ISA SOME :WORD "some"))

___________________
710: "I'd like to find a treatement for pancreatic cancer."

                    SOURCE-START
e24   LIKE          1 "I'd like " 5
e23   FIND-OUT      5 "to find " 7
e21   TREATEMENT    7 "a treatement " 9
e22   FOR           9 "for pancreatic cancer" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e24   S             1 "I'd like " 5
e23   INFINITIVE    5 "to find " 7
e21   NP            7 "a treatement " 9
e22   PP            9 "for pancreatic cancer" 12
                    PERIOD
                    END-OF-SOURCE


___________________
711: "How can i treat pancreatic cancer?"

                    SOURCE-START
e2    HOW           1 "How " 2
e3    MODAL         2 "can " 3
                    "i"
e5    TREATMENT     4 "treat pancreatic cancer" 7
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "How " 2
e3    MODAL         2 "can " 3
                    "i"
e5    VP            4 "treat pancreatic cancer" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
712: "Does MEK act on ERK?"

                    SOURCE-START
e11   BIO-ACT       1 "Does MEK act on ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK act on ERK?" (:VAR MV6500 :ISA POLAR-QUESTION :STATEMENT MV6498)
 (:VAR MV6498 :ISA BIO-ACT :AGENT MV6494 :ACTED-ON MV6497 :RAW-TEXT "act")
 (:VAR MV6494 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6497 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
713: "Let's build a model"

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    END-OF-SOURCE
("Let's build a model"
 (:VAR MV6505 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6502 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6502 :ISA BUILD :ARTIFACT MV6504 :PRESENT "PRESENT")
 (:VAR MV6504 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6508 :ISA BIO-ACTIVATE :AGENT MV6507 :OBJECT MV6506 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6507 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6506 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6510 :ISA BIO-ACTIVATE :AGENT MV6509 :OBJECT MV6511 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6509 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6511 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
716: "Remove the fact that hras activates ras"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that hras activates ras" 8
                    END-OF-SOURCE
("Remove the fact that hras activates ras"
 (:VAR MV6512 :ISA REMOVE :OBJECT MV6519 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6519 :ISA FACT :STATEMENT MV6517 :HAS-DETERMINER "THE")
 (:VAR MV6517 :ISA BIO-ACTIVATE :AGENT MV6516 :OBJECT MV6518 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6516 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6518 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663"))

___________________
717: "Can you tell me what is in the model?"

                    SOURCE-START
e22   TELL          1 "Can you tell me what is in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what is in the model?"
 (:VAR MV6531 :ISA POLAR-QUESTION :STATEMENT MV6522)
 (:VAR MV6522 :ISA TELL :AGENT MV6521 :THEME MV6530 :THEME MV6523 :MODAL "CAN")
 (:VAR MV6521 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6530 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6524 :VALUE MV6528 :PREP
  MV6526 :PREDICATE MV6525)
 (:VAR MV6524 :ISA WHAT) (:VAR MV6528 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6526 :ISA IN :WORD "in") (:VAR MV6525 :ISA BE :MODAL "CAN")
 (:VAR MV6523 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6535 :ISA SUMMARIZE :STATEMENT MV6534 :PRESENT "PRESENT")
 (:VAR MV6534 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6540 :ISA SUMMARIZE :STATEMENT MV6539 :PRESENT "PRESENT")
 (:VAR MV6539 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6538)
 (:VAR MV6538 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6542 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6541 :SUBSTRATE MV6543
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6541 :ISA WHAT)
 (:VAR MV6543 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6545 :ISA BINDING :BINDER MV6544 :DIRECT-BINDEE MV6546 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6544 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6546 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6551 :ISA BIO-ACTIVATE :OBJECT MV6547 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6547 :ISA PROTEIN :PREDICATION MV6548 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6548 :ISA PHOSPHORYLATE :SUBSTRATE MV6547 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6555 :ISA DEPHOSPHORYLATE :AGENT MV6552 :SUBSTRATE MV6553 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6552 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6553 :ISA PROTEIN :PREDICATION MV6561 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6561 :ISA BINDING :DIRECT-BINDEE MV6553 :THAT-REL T :BINDEE MV6554
  :PRESENT "PRESENT" :NEGATION MV6558 :RAW-TEXT "bound")
 (:VAR MV6554 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6558 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6572 :ISA PHOSPHORYLATE :AGENT MV6563 :SUBSTRATE MV6565 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6563 :ISA PROTEIN :PREDICATION MV6573 :PREDICATION MV6566 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6573 :ISA BINDING :DIRECT-BINDEE MV6563 :THAT-REL T :BINDEE MV6564
  :PRESENT "PRESENT" :NEGATION MV6569 :RAW-TEXT "bound")
 (:VAR MV6564 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6569 :ISA NOT :WORD "not") (:VAR MV6566 :ISA ACTIVE)
 (:VAR MV6565 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6579 :ISA BIO-ACTIVATE :OBJECT MV6575 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6575 :ISA PROTEIN :PREDICATION MV6576 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6576 :ISA PHOSPHORYLATE :SUBSTRATE MV6575 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6583 :ISA DEPHOSPHORYLATE :AGENT MV6580 :SUBSTRATE MV6581 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6580 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6581 :ISA PROTEIN :PREDICATION MV6589 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6589 :ISA BINDING :DIRECT-BINDEE MV6581 :THAT-REL T :BINDEE MV6582
  :PRESENT "PRESENT" :NEGATION MV6586 :RAW-TEXT "bound")
 (:VAR MV6582 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6586 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6603 :ISA PHOSPHORYLATE :AGENT MV6592 :SUBSTRATE MV6591 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6592 :ISA PROTEIN :PREDICATION MV6606 :MUTATION MV6605 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6606 :ISA BINDING :DIRECT-BINDEE MV6592 :THAT-REL T :BINDEE MV6602
  :PRESENT "PRESENT" :NEGATION MV6599 :RAW-TEXT "bound")
 (:VAR MV6602 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6599 :ISA NOT :WORD "not")
 (:VAR MV6605 :ISA POINT-MUTATED-PROTEIN :POSITION MV6594 :NEW-AMINO-ACID
  MV6596 :ORIGINAL-AMINO-ACID MV6593)
 (:VAR MV6594 :ISA NUMBER :VALUE 600)
 (:VAR MV6596 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6593 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6591 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6612 :ISA COPULAR-PREDICATION :ITEM MV6608 :VALUE MV6611 :PREDICATE
  MV6610)
 (:VAR MV6608 :ISA PROTEIN :PREDICATION MV6609 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6609 :ISA PHOSPHORYLATE :SUBSTRATE MV6608 :RAW-TEXT "Phosphorylated")
 (:VAR MV6611 :ISA ACTIVE) (:VAR MV6610 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6615 :ISA PHOSPHORYLATE :AGENT MV6613 :SUBSTRATE MV6614 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6613 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6614 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6624 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6618 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6618 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6622 :THEME MV6617 :PRESENT
  "PRESENT")
 (:VAR MV6622 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6617 :ISA PROTEIN :PREDICATION MV6619 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6619 :ISA PHOSPHORYLATE :SUBSTRATE MV6617 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6632 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6627 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6627 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6630 :THEME
  MV6626 :PRESENT "PRESENT")
 (:VAR MV6630 :ISA TOP-QUA-LOCATION)
 (:VAR MV6626 :ISA PROTEIN :PREDICATION MV6628 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6628 :ISA PHOSPHORYLATE :SUBSTRATE MV6626 :RAW-TEXT "phosphorylated"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e8    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6634 :ISA SHOW :AT-RELATIVE-LOCATION MV6636 :STATEMENT-OR-THEME MV6633
  :PRESENT "PRESENT")
 (:VAR MV6636 :ISA TOP-QUA-LOCATION)
 (:VAR MV6633 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6645 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6640 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6640 :ISA HIGHLIGHT :THEME MV6641 :PRESENT "PRESENT")
 (:VAR MV6641 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6639 :RAW-TEXT
  "upstream")
 (:VAR MV6639 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6654 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6647 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6647 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6652 :THEME MV6649 :PRESENT
  "PRESENT")
 (:VAR MV6652 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6649 :ISA ELEMENT :MODIFIER MV6648)
 (:VAR MV6648 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6657 :ISA BE :SUBJECT MV6656 :PREDICATE MV6660 :PRESENT "PRESENT")
 (:VAR MV6656 :ISA WHAT)
 (:VAR MV6660 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6664 :HAS-DETERMINER
  "THE" :PREDICATION MV6659 :RAW-TEXT "downstreams")
 (:VAR MV6664 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6655 MV6663))
 (:VAR MV6655 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6663 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6659 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6679 :ISA POLAR-QUESTION :STATEMENT MV6676)
 (:VAR MV6676 :ISA THERE-EXISTS :VALUE MV6672 :PREDICATE MV6669)
 (:VAR MV6672 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6677 :PREDICATION
  MV6671 :RAW-TEXT "upstreams")
 (:VAR MV6677 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6666 MV6674 MV6667))
 (:VAR MV6666 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6674 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6667 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6671 :ISA COMMON) (:VAR MV6669 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6684 :ISA BE :SUBJECT MV6683 :PREDICATE MV6689 :PRESENT "PRESENT")
 (:VAR MV6683 :ISA WHAT)
 (:VAR MV6689 :ISA REGULATOR :THEME MV6692 :HAS-DETERMINER "THE" :PREDICATION
  MV6686 :CONTEXT MV6687 :RAW-TEXT "regulators")
 (:VAR MV6692 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6680 MV6681 MV6682))
 (:VAR MV6680 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6681 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6682 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6686 :ISA COMMON)
 (:VAR MV6687 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6697 :ISA BE :SUBJECT MV6696 :PREDICATE MV6701 :PRESENT "PRESENT")
 (:VAR MV6696 :ISA WHAT)
 (:VAR MV6701 :ISA REGULATOR :THEME MV6704 :PREDICATION MV6698 :CONTEXT MV6699
  :RAW-TEXT "regulators")
 (:VAR MV6704 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6694 MV6695))
 (:VAR MV6694 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6695 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6698 :ISA COMMON)
 (:VAR MV6699 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6711 :ISA BE :SUBJECT MV6710 :PREDICATE MV6706 :PRESENT "PRESENT")
 (:VAR MV6710 :ISA WHAT)
 (:VAR MV6706 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6717 :PREDICATION MV6712
  :CONTEXT MV6713 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6717 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6707 MV6708 MV6709))
 (:VAR MV6707 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6708 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6709 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6712 :ISA COMMON)
 (:VAR MV6713 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6722 :ISA BE :SUBJECT MV6721 :PREDICATE MV6724 :PRESENT "PRESENT")
 (:VAR MV6721 :ISA WHAT)
 (:VAR MV6724 :ISA MUTATION :OBJECT MV6730 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6730 :ISA COLLECTION :CONTEXT MV6720 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6726 MV6719 MV6728))
 (:VAR MV6720 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6726 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6719 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6728 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6736 :ISA BE :SUBJECT MV6735 :PREDICATE MV6739 :PRESENT "PRESENT")
 (:VAR MV6735 :ISA WHAT)
 (:VAR MV6739 :ISA FREQUENCY :MEASURED-ITEM MV6733 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6738 :RAW-TEXT "frequency")
 (:VAR MV6733 :ISA PROTEIN :CONTEXT MV6734 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6734 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6738 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6754 :ISA COPULAR-PREDICATION :ITEM MV6748 :VALUE MV6744 :PREDICATE
  MV6749)
 (:VAR MV6748 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6744 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6746 :ALTERNATIVE MV6745)
 (:VAR MV6746 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6745 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6749 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6765 :ISA COPULAR-PREDICATION :ITEM MV6759 :VALUE MV6755 :PREDICATE
  MV6760)
 (:VAR MV6759 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6755 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6756)
 (:VAR MV6756 :ISA PROTEIN :CONTEXT MV6757 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6757 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6760 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6768 :ISA BE :SUBJECT MV6767 :PREDICATE MV6774 :PRESENT "PRESENT")
 (:VAR MV6767 :ISA WHAT)
 (:VAR MV6774 :ISA QUALITY-PREDICATE :ITEM MV6766 :ATTRIBUTE MV6771)
 (:VAR MV6766 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6771 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6770)
 (:VAR MV6770 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6778 :ISA REGULATE :MANNER MV6775 :AGENT MV6777 :OBJECT MV6779
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6775 :ISA HOW)
 (:VAR MV6777 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV6779 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6781 :ISA BE :SUBJECT MV6780 :PREDICATE MV6782 :PRESENT "PRESENT")
 (:VAR MV6780 :ISA WHAT)
 (:VAR MV6782 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6794 :ISA POLAR-QUESTION :STATEMENT MV6783)
 (:VAR MV6783 :ISA BE :SUBJECT MV6784 :PREDICATE MV6786)
 (:VAR MV6784 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6786 :ISA MEMBER :SET MV6792 :HAS-DETERMINER "A")
 (:VAR MV6792 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
748: "What genes are in RAS?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "What genes are in RAS" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in RAS?"
 (:VAR MV6801 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6796 :VALUE MV6799 :PREP
  MV6798 :PREDICATE MV6797)
 (:VAR MV6796 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6799 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6798 :ISA IN :WORD "in") (:VAR MV6797 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6812 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6803 :VALUE MV6810 :PREP
  MV6805 :PREDICATE MV6804)
 (:VAR MV6803 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6810 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6805 :ISA IN :WORD "in") (:VAR MV6804 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6814 :ISA BE :SUBJECT MV6813 :PREDICATE MV6818 :PRESENT "PRESENT")
 (:VAR MV6813 :ISA WHAT)
 (:VAR MV6818 :ISA HAS-NAME :QUANTIFIER MV6815 :QUANTIFIER MV6816 :ITEM MV6821)
 (:VAR MV6815 :ISA SOME :WORD "some") (:VAR MV6816 :ISA OTHER :WORD "other")
 (:VAR MV6821 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
751: "What are synonyms for ERK?"

                    SOURCE-START
e9    BE            1 "What are synonyms for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for ERK?"
 (:VAR MV6824 :ISA BE :SUBJECT MV6823 :PREDICATE MV6825 :PRESENT "PRESENT")
 (:VAR MV6823 :ISA WHAT) (:VAR MV6825 :ISA HAS-SYNONYM :ITEM MV6827)
 (:VAR MV6827 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
752: "What transcription factors are shared by CXCL8, CXCL10, and IL2?"

                    SOURCE-START
e21   SHARE         1 "What transcription factors are shared by CXCL8, CXCL10, and IL2" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
 (:VAR MV6839 :ISA SHARE :OBJECT MV6829 :PARTICIPANT MV6838 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6829 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6838 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6830 MV6831 MV6832))
 (:VAR MV6830 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV6831 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6832 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV6843 :ISA BE :SUBJECT MV6842 :PREDICATE MV6845 :PRESENT "PRESENT")
 (:VAR MV6842 :ISA WHAT)
 (:VAR MV6845 :ISA PATH :ENDPOINTS MV6849 :HAS-DETERMINER "THE")
 (:VAR MV6849 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6847 MV6841))
 (:VAR MV6847 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6841 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?"
 (:VAR MV6855 :ISA POLAR-QUESTION :STATEMENT MV6853)
 (:VAR MV6853 :ISA BE :SUBJECT MV6851 :PREDICATE MV6852)
 (:VAR MV6851 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6852 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
755: "Remove the fact that active MEK activates ERK from the model."

                    SOURCE-START
e22   REMOVE        1 "Remove the fact that active MEK activates ERK " 9
e17   FROM          9 "from the model" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e22   VP            1 "Remove the fact that active MEK activates ERK " 9
e17   PP            9 "from the model" 12
                    PERIOD
                    END-OF-SOURCE


___________________
756: "Active MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Active MEK activates ERK" 5
                    END-OF-SOURCE
("Active MEK activates ERK"
 (:VAR MV6871 :ISA BIO-ACTIVATE :AGENT MV6870 :OBJECT MV6872 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6870 :ISA PROTEIN-FAMILY :PREDICATION MV6869 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6869 :ISA ACTIVE)
 (:VAR MV6872 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
757: "What is in the model?"

                    SOURCE-START
e10   COPULAR-PREDICATION 1 "What is in the model" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is in the model?"
 (:VAR MV6879 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6873 :VALUE MV6877 :PREP
  MV6875 :PREDICATE MV6874)
 (:VAR MV6873 :ISA WHAT) (:VAR MV6877 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6875 :ISA IN :WORD "in") (:VAR MV6874 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV6890 :ISA POLAR-QUESTION :STATEMENT MV6889)
 (:VAR MV6889 :ISA COPULAR-PREDICATION :ITEM MV6882 :VALUE MV6887 :PREDICATE
  MV6880)
 (:VAR MV6882 :ISA BIO-AMOUNT :MEASURED-ITEM MV6885 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6885 :ISA PROTEIN-FAMILY :PREDICATION MV6884 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6884 :ISA PHOSPHORYLATE :SUBSTRATE MV6885 :RAW-TEXT "phosphorylated")
 (:VAR MV6887 :ISA HIGH :ADVERB MV6886) (:VAR MV6886 :ISA EVER :NAME "ever")
 (:VAR MV6880 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV6901 :ISA COPULAR-PREDICATION :ITEM MV6894 :VALUE MV6891 :PREDICATE
  MV6895)
 (:VAR MV6894 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6891 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6892 :ALTERNATIVE MV6897)
 (:VAR MV6892 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224")
 (:VAR MV6897 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6895 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV6911 :ISA SHARE :OBJECT MV6902 :PARTICIPANT MV6910 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6902 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV6910 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6903 MV6904))
 (:VAR MV6903 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6904 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV6920 :ISA REGULATE :AGENT MV6917 :OBJECT MV6922 :PRESENT "PRESENT"
  :ADVERB MV6918 :ADVERB MV6919 :RAW-TEXT "regulate")
 (:VAR MV6917 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV6922 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6913 MV6914 MV6915))
 (:VAR MV6913 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6914 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6915 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6918 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6919 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV6924 :ISA BE :SUBJECT MV6923 :PREDICATE MV6934 :PRESENT "PRESENT")
 (:VAR MV6923 :ISA WHAT)
 (:VAR MV6934 :ISA QUALITY-PREDICATE :ITEM MV6932 :ATTRIBUTE MV6930)
 (:VAR MV6932 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6930 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6928
  :MODIFIER MV6929)
 (:VAR MV6928 :ISA LIKELY :COMPARATIVE MV6926)
 (:VAR MV6926 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6929 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?" (:VAR MV6939 :ISA POLAR-QUESTION :STATEMENT MV6935)
 (:VAR MV6935 :ISA BE :SUBJECT MV6936 :PREDICATE MV6938)
 (:VAR MV6936 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6938 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?"
 (:VAR MV6951 :ISA POLAR-QUESTION :STATEMENT MV6942)
 (:VAR MV6942 :ISA TELL :AGENT MV6941 :THEME MV6950 :THEME MV6943 :MODAL "CAN")
 (:VAR MV6941 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6950 :ISA WH-QUESTION :STATEMENT MV6947 :WH WHETHER)
 (:VAR MV6947 :ISA BE :SUBJECT MV6946 :PREDICATE MV6949 :MODAL "CAN")
 (:VAR MV6946 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6949 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6943 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV6955 :ISA WANT :AGENT MV6952 :THEME MV6965 :PRESENT "PRESENT")
 (:VAR MV6952 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6965 :ISA KNOW :AGENT MV6952 :STATEMENT MV6964)
 (:VAR MV6964 :ISA WH-QUESTION :STATEMENT MV6960 :WH IF)
 (:VAR MV6960 :ISA BE :SUBJECT MV6959 :PREDICATE MV6962 :PRESENT "PRESENT")
 (:VAR MV6959 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6962 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
766: "What does BRAF do?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    DO            2 "does " 3
e2    PROTEIN       3 "BRAF " 4
e3    DO            4 "do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e0    WH-PRONOUN    1 "What " 2
e1    VG            2 "does " 3
e2    PROPER-NOUN   3 "BRAF " 4
e3    VG            4 "do" 5
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
767: "What type of protein is BRAF?"

                    SOURCE-START
e11   BE            1 "What type of protein is BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What type of protein is BRAF?"
 (:VAR MV6974 :ISA BE :SUBJECT MV6971 :PREDICATE MV6975 :PRESENT "PRESENT")
 (:VAR MV6971 :ISA TYPE :MOLECULE-TYPE MV6973 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "type")
 (:VAR MV6973 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV6975 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV6978 :ISA BE :SUBJECT MV6977 :PREDICATE MV6980 :PRESENT "PRESENT")
 (:VAR MV6977 :ISA WHAT)
 (:VAR MV6980 :ISA BIO-ACTIVITY :PARTICIPANT MV6985 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6985 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID
  "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?"
 (:VAR MV6995 :ISA POLAR-QUESTION :STATEMENT MV6988)
 (:VAR MV6988 :ISA BE :SUBJECT MV6989 :PREDICATE MV6994)
 (:VAR MV6989 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6994 :ISA COLLECTION :RAW-TEXT "a kinase or a transcription factor"
  :TYPE KINASE :NUMBER 2 :ITEMS (MV6991 MV6987))
 (:VAR MV6991 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6987 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV7002 :ISA TARGET :OBJECT MV6998 :AGENT MV6996 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV6998 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6996 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV7008 :ISA NAME-SOMETHING :PATIENT MV7004 :PRESENT "PRESENT")
 (:VAR MV7004 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7011 :RAW-TEXT
  "transcription factors")
 (:VAR MV7011 :ISA SHARE :OBJECT MV7004 :PARTICIPANT MV7014 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7014 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV7005 MV7006 MV7007))
 (:VAR MV7005 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV7006 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV7007 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV7018 :ISA TELL :THEME MV7023 :BENEFICIARY MV7019 :PRESENT "PRESENT")
 (:VAR MV7023 :ISA WH-QUESTION :STATEMENT MV7021 :WH IF)
 (:VAR MV7021 :ISA BE :SUBJECT MV7016 :PREDICATE MV7017 :PRESENT "PRESENT")
 (:VAR MV7016 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7017 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV7019 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV7027 :ISA SHOW :STATEMENT-OR-THEME MV7024 :BENEFICIARY MV7028 :PRESENT
  "PRESENT")
 (:VAR MV7024 :ISA SIGNALING-PATHWAY :PREDICATION MV7029 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7029 :ISA SHARE :OBJECT MV7024 :PARTICIPANT MV7032 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7032 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7025 MV7026))
 (:VAR MV7025 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7026 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7028 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV7037 :ISA GIVE :THEME MV7034 :BENEFICIARY MV7038 :PRESENT "PRESENT")
 (:VAR MV7034 :ISA SIGNALING-PATHWAY :PREDICATION MV7039 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7039 :ISA SHARE :OBJECT MV7034 :PARTICIPANT MV7042 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7042 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7035 MV7036))
 (:VAR MV7035 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7036 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7038 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e46   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:VAR MV7071 :ISA POLAR-QUESTION :STATEMENT MV7070)
 (:VAR MV7070 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7066 :EVENT MV7068)
 (:VAR MV7066 :ISA WH-QUESTION :STATEMENT MV7055 :WH IF)
 (:VAR MV7055 :ISA INCREASE :AGENT-OR-CAUSE MV7053 :MULTIPLIER MV7063
  :AFFECTED-PROCESS-OR-OBJECT MV7057 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7053 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7063 :ISA N-FOLD :NUMBER MV7062) (:VAR MV7062 :ISA NUMBER :VALUE 10)
 (:VAR MV7057 :ISA BIO-AMOUNT :MEASURED-ITEM MV7059 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7059 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7068 :ISA COPULAR-PREDICATION :ITEM MV7046 :VALUE MV7051 :PREDICATE
  MV7044)
 (:VAR MV7046 :ISA BIO-AMOUNT :MEASURED-ITEM MV7049 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7049 :ISA PROTEIN-FAMILY :PREDICATION MV7048 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7048 :ISA PHOSPHORYLATE :SUBSTRATE MV7049 :RAW-TEXT "phosphorylated")
 (:VAR MV7051 :ISA HIGH :ADVERB MV7050) (:VAR MV7050 :ISA EVER :NAME "ever")
 (:VAR MV7044 :ISA BE))

___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV7074 :ISA PHOSPHORYLATE :AGENT MV7073 :SUBSTRATE MV7075 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7073 :ISA PROTEIN-FAMILY :PREDICATION MV7072 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7072 :ISA ACTIVE)
 (:VAR MV7075 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
777: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e32   OF            14 "of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e42   S             1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e32   PP            14 "of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV7104 :ISA BE :SUBJECT MV7103 :PREDICATE MV7106 :PRESENT "PRESENT")
 (:VAR MV7103 :ISA WHAT)
 (:VAR MV7106 :ISA PATHWAY :PREDICATION MV7108 :QUANTIFIER MV7105 :RAW-TEXT
  "pathways")
 (:VAR MV7108 :ISA AFFECT :AGENT MV7106 :THAT-REL T :OBJECT MV7109 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7109 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7105 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7111 :ISA BE :SUBJECT MV7110 :PREDICATE MV7113 :PRESENT "PRESENT")
 (:VAR MV7110 :ISA WHAT)
 (:VAR MV7113 :ISA PATHWAY :PREDICATION MV7115 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7115 :ISA AFFECT :AGENT MV7113 :THAT-REL T :OBJECT MV7116 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7116 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7126 :ISA REGULATE :OBJECT MV7120 :AGENT MV7125 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7120 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7125 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7117 MV7118))
 (:VAR MV7117 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7118 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7130 :ISA BE :SUBJECT MV7129 :PREDICATE MV7132 :PRESENT "PRESENT")
 (:VAR MV7129 :ISA WHAT)
 (:VAR MV7132 :ISA GENE :PREDICATION MV7137 :QUANTIFIER MV7131 :RAW-TEXT
  "genes")
 (:VAR MV7137 :ISA REGULATE :OBJECT MV7132 :THAT-REL T :AGENT MV7128 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7128 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7131 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7143 :ISA CONTAIN :THEME MV7142 :PATIENT MV7145 :PRESENT "PRESENT")
 (:VAR MV7142 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7145 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7139 MV7140))
 (:VAR MV7139 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7140 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7148 :ISA REMOVE :OBJECT MV7157 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7157 :ISA FACT :STATEMENT MV7152 :HAS-DETERMINER "THE")
 (:VAR MV7152 :ISA BIO-ACTIVATE :AGENT MV7146 :OBJECT MV7147 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7146 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7147 :ISA PROTEIN :INFO-CONTEXT MV7155 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7155 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
784: "Remove active IL10 activates STAT3 from the model"

                    SOURCE-START
e15   REMOVE        1 "Remove active IL10 " 5
e14   BIO-ACTIVATE  5 "activates STAT3 " 8
e13   FROM          8 "from the model" 11
                    END-OF-SOURCE
                    SOURCE-START
e15   VP            1 "Remove active IL10 " 5
e14   VP            5 "activates STAT3 " 8
e13   PP            8 "from the model" 11
                    END-OF-SOURCE


___________________
785: "What are some paths between BRAF and AKT1?"

                    SOURCE-START
e14   BE            1 "What are some paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some paths between BRAF and AKT1?"
 (:VAR MV7169 :ISA BE :SUBJECT MV7168 :PREDICATE MV7171 :PRESENT "PRESENT")
 (:VAR MV7168 :ISA WHAT)
 (:VAR MV7171 :ISA PATH :ENDPOINTS MV7175 :QUANTIFIER MV7170)
 (:VAR MV7175 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7173 MV7167))
 (:VAR MV7173 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7167 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7170 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7182 :ISA POLAR-QUESTION :STATEMENT MV7181)
 (:VAR MV7181 :ISA BIO-ACTIVATE :AGENT MV7177 :OBJECT MV7178 :RAW-TEXT
  "activate")
 (:VAR MV7177 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7178 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7185 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7184 :MODIFIER
  MV7186 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7184 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7186 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7195 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7189 :VALUE MV7187 :PREP
  MV7191 :PREDICATE MV7190)
 (:VAR MV7189 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7187 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7193
  :RAW-TEXT "signalling pathway" :NAME "signalling cascade" :UID "GO:0007165")
 (:VAR MV7193 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
  "mitogen activated protein kinase" :COUNT 13 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK14_HUMAN") (:UID "UP:Q16539"))
   (PROTEIN (:NAME "MK11_HUMAN") (:UID "UP:Q15759"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK10_HUMAN") (:UID "UP:P53779"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK09_HUMAN") (:UID "UP:P45984"))
   (PROTEIN (:NAME "MK08_HUMAN") (:UID "UP:P45983"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361"))
   (PROTEIN (:NAME "MK13_HUMAN") (:UID "UP:O15264")))
  :UID "PR:000000019")
 (:VAR MV7191 :ISA IN :WORD "in") (:VAR MV7190 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7200 :ISA TARGET :AGENT MV7202 :OBJECT MV7201 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7202 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7201 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7206 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7207 :NAME
  "ELLK1")
 (:VAR MV7207 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7220 :ISA POLAR-QUESTION :STATEMENT MV7217)
 (:VAR MV7217 :ISA INCREASE :AGENT MV7208 :AFFECTED-PROCESS MV7213 :RAW-TEXT
  "increase")
 (:VAR MV7208 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7213 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7209 :RAW-TEXT
  "expression")
 (:VAR MV7209 :ISA PROTEIN :ORGAN MV7216 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7216 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7230 :ISA POLAR-QUESTION :STATEMENT MV7228)
 (:VAR MV7228 :ISA AFFECT :AGENT MV7221 :AFFECTED-PROCESS MV7225 :RAW-TEXT
  "affect")
 (:VAR MV7221 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7225 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7227 :OBJECT MV7222
  :RAW-TEXT "expression")
 (:VAR MV7227 :ISA LIVER)
 (:VAR MV7222 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7237 :ISA POLAR-QUESTION :STATEMENT MV7236)
 (:VAR MV7236 :ISA ALTER :AGENT MV7231 :AFFECTED-PROCESS MV7235 :RAW-TEXT
  "alter")
 (:VAR MV7231 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7235 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7232 :RAW-TEXT
  "expression")
 (:VAR MV7232 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7245 :ISA POLAR-QUESTION :STATEMENT MV7241)
 (:VAR MV7241 :ISA BE :SUBJECT MV7238 :PREDICATE MV7239)
 (:VAR MV7238 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7239 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV7240 :HAS-DETERMINER "A"
  :RAW-TEXT "transcriptional regulator" :NAME "transcriptional regulator" :UID
  "XFAM:PF02082")
 (:VAR MV7240 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV7248 :ISA INHIBIT :AGENT MV7247 :OBJECT MV7249 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7247 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7249 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7252 :ISA UPREGULATE :AGENT MV7250 :OBJECT MV7251 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7250 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7251 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7256 :ISA TRANSCRIBE :OBJECT MV7254 :AGENT MV7253 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7254 :ISA WHAT)
 (:VAR MV7253 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7259 :ISA BE :SUBJECT MV7258 :PREDICATE MV7257 :PRESENT "PRESENT")
 (:VAR MV7258 :ISA WHAT)
 (:VAR MV7257 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "PI3R5_HUMAN") (:UID "UP:Q8WYR1"))
   (PROTEIN (:NAME "PK3C3_HUMAN") (:UID "UP:Q8NEB9"))
   (PROTEIN (:NAME "PK3CA_HUMAN") (:UID "UP:P42336"))
   (PROTEIN (:NAME "P3C2G_HUMAN") (:UID "UP:O75747")))
  :UID "XFAM:PF00454"))

___________________
799: "What is MEK?"

                    SOURCE-START
e4    BE            1 "What is MEK" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MEK?"
 (:VAR MV7261 :ISA BE :SUBJECT MV7260 :PREDICATE MV7262 :PRESENT "PRESENT")
 (:VAR MV7260 :ISA WHAT)
 (:VAR MV7262 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
800: "What phosphorylates ERK?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates ERK" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates ERK?"
 (:VAR MV7264 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7263 :SUBSTRATE MV7265
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7263 :ISA WHAT)
 (:VAR MV7265 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360"))

___________________
801: "What drugs target AKT?"

                    SOURCE-START
e7    TARGET        1 "What drugs target AKT" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target AKT?"
 (:VAR MV7269 :ISA TARGET :AGENT MV7267 :OBJECT MV7270 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7267 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7270 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066"))

___________________
802: "What regulates ELLK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELLK1?"
 (:VAR MV7273 :ISA REGULATE :AGENT-OR-CAUSE MV7272 :OBJECT MV7271 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7272 :ISA WHAT) (:VAR MV7271 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7276 :ISA REGULATE :AGENT-OR-CAUSE MV7275 :OBJECT MV7274 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7275 :ISA WHAT)
 (:VAR MV7274 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7287 :ISA POLAR-QUESTION :STATEMENT MV7286)
 (:VAR MV7286 :ISA TARGET :AGENT MV7285 :OBJECT MV7278 :RAW-TEXT "target")
 (:VAR MV7285 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7278 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    SOURCE-START
e18   OF            1 "What are the mutations of PTEEN in prostate cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEEN in prostate cancer?"
 (:VAR MV7298 :ISA WH-QUESTION :STATEMENT MV7297 :WH WHAT)
 (:VAR MV7297 :ISA PREPOSITIONAL-PHRASE :POBJ MV7295 :PREP "OF")
 (:VAR MV7295 :ISA BIO-ENTITY :CONTEXT MV7288 :NAME "PTEEN")
 (:VAR MV7288 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224"))

___________________
806: "What does selumitinibib target?"

                    SOURCE-START
e6    TARGET        1 "What does selumitinibib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does selumitinibib target?"
 (:VAR MV7302 :ISA TARGET :OBJECT MV7299 :AGENT MV7303 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7299 :ISA WHAT) (:VAR MV7303 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?" (:VAR MV7308 :ISA POLAR-QUESTION :STATEMENT MV7305)
 (:VAR MV7305 :ISA BE :SUBJECT MV7304 :PREDICATE MV7307)
 (:VAR MV7304 :ISA BIO-ENTITY :NAME "ELLK1")
 (:VAR MV7307 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7310 :ISA REGULATE :AGENT-OR-CAUSE MV7309 :OBJECT MV7311 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7309 :ISA WHAT)
 (:VAR MV7311 :ISA PROTEIN :VARIANT-NUMBER MV7313 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7313 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7317 :ISA TARGET :OBJECT MV7314 :AGENT MV7318 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7314 :ISA WHAT) (:VAR MV7318 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7322 :ISA BE :SUBJECT MV7321 :PREDICATE MV7327 :PRESENT "PRESENT")
 (:VAR MV7321 :ISA WHAT)
 (:VAR MV7327 :ISA EVIDENCE :STATEMENT MV7326 :HAS-DETERMINER "THE")
 (:VAR MV7326 :ISA PHOSPHORYLATE :AGENT MV7319 :SUBSTRATE MV7320 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7319 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7320 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
811: "Remove STAT3 from the model."

                    SOURCE-START
e9    REMOVE        1 "Remove STAT3 " 4
e8    FROM          4 "from the model" 7
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e9    VP            1 "Remove STAT3 " 4
e8    PP            4 "from the model" 7
                    PERIOD
                    END-OF-SOURCE


___________________
812: "Remove the last interaction from the model."

                    SOURCE-START
e13   REMOVE        1 "Remove the last interaction " 5
e12   FROM          5 "from the model" 8
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e13   VP            1 "Remove the last interaction " 5
e12   PP            5 "from the model" 8
                    PERIOD
                    END-OF-SOURCE


___________________
813: "IL10 activates STAT3"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "IL10 activates STAT3" 6
                    END-OF-SOURCE
("IL10 activates STAT3"
 (:VAR MV7344 :ISA BIO-ACTIVATE :AGENT MV7342 :OBJECT MV7343 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7342 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7343 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7355 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7347 :VALUE MV7354 :PREP
  "IN" :PREDICATE MV7348)
 (:VAR MV7347 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7346 :RAW-TEXT
  "interactions")
 (:VAR MV7346 :ISA MANY :WORD "many")
 (:VAR MV7354 :ISA INTERACT :INFO-CONTEXT MV7351 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7346 :RAW-TEXT "interactions")
 (:VAR MV7351 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7348 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7368 :ISA POLAR-QUESTION :STATEMENT MV7366)
 (:VAR MV7366 :ISA DECREASE :AGENT MV7359 :AFFECTED-PROCESS-OR-OBJECT MV7363
  :RAW-TEXT "decrease")
 (:VAR MV7359 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV7363 :ISA BIO-AMOUNT :MEASURED-ITEM MV7357 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7357 :ISA PROTEIN :PREDICATION MV7365 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7365 :ISA PHOSPHORYLATE :SUBSTRATE MV7357 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7373 :ISA BIO-ACTIVATE :OBJECT MV7371 :AGENT MV7369 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7371 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7369 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7378 :ISA BIO-ACTIVATE :OBJECT MV7376 :AGENT MV7374 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7376 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7374 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7382 :ISA BIO-ACTIVATE :OBJECT MV7380 :AGENT MV7379 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7380 :ISA WHAT)
 (:VAR MV7379 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7386 :ISA PHOSPHORYLATE :AMINO-ACID MV7384 :AGENT MV7383 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7384 :ISA WHAT)
 (:VAR MV7383 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7391 :ISA REGULATE :OBJECT MV7389 :AGENT MV7387 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7389 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7387 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7401 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7394 MV7400))
 (:VAR MV7394 :ISA INVOLVE :THEME MV7393 :THEME MV7395 :PRESENT "PRESENT")
 (:VAR MV7393 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7395 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7400 :ISA BINDING :DIRECT-BINDEE MV7397 :BINDER MV7399 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7397 :ISA WHAT)
 (:VAR MV7399 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7404 :ISA INVOLVE :THEME MV7403 :THEME MV7405 :PRESENT "PRESENT")
 (:VAR MV7403 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7405 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7409 :ISA BINDING :DIRECT-BINDEE MV7406 :BINDER MV7408 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7406 :ISA WHAT)
 (:VAR MV7408 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    SOURCE-START
e16   KINASE        1 "What pathways involve SRF and is SRF a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and is SRF a kinase?"
 (:VAR MV7420 :ISA WH-QUESTION :STATEMENT MV7418 :VAR NIL :WH WHAT)
 (:VAR MV7418 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    SOURCE-START
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:VAR MV7431 :ISA POLAR-QUESTION :STATEMENT MV7430)
 (:VAR MV7430 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
  (((:AGENT (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
    (:SUBSTRATE (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482")))
    (:RAW-TEXT "phosphorylate"))
   ((:AGENT (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
    (:OBJECT (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482")))
    (:RAW-TEXT "activate")))
  :NUMBER 2))

___________________
826: "Does MAP2K1 phosphorylate MAPK3?"

                    SOURCE-START
e10   PHOSPHORYLATE 1 "Does MAP2K1 phosphorylate MAPK3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate MAPK3?"
 (:VAR MV7437 :ISA POLAR-QUESTION :STATEMENT MV7436)
 (:VAR MV7436 :ISA PHOSPHORYLATE :AGENT MV7432 :SUBSTRATE MV7433 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7432 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7433 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7441 :ISA BIO-ACTIVATE :AGENT MV7440 :OBJECT MV7438 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7440 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7438 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7447 :ISA TARGET :AGENT MV7445 :AFFECTED-PROCESS MV7448 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7445 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7448 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7451 :RAW-TEXT
  "upstreams")
 (:VAR MV7451 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7442 MV7443))
 (:VAR MV7442 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7443 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7457 :ISA TARGET :AGENT MV7455 :OBJECT MV7453 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7455 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7453 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7462 :ISA TARGET :AGENT MV7460 :OBJECT MV7458 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7460 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7458 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7469 :ISA TARGET :AGENT MV7467 :OBJECT MV7463 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7467 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7463 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7470 :RAW-TEXT
  "transcription factors")
 (:VAR MV7470 :ISA SHARE :OBJECT MV7463 :PARTICIPANT MV7473 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7473 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7464 MV7465))
 (:VAR MV7464 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7465 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7480 :ISA TARGET :OBJECT MV7477 :AGENT MV7475 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7477 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7475 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7486 :ISA TARGET :OBJECT MV7481 :AGENT MV7482 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7481 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7482 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7497 :ISA COPULAR-PREDICATION :ITEM MV7491 :VALUE MV7487 :PREDICATE
  MV7492)
 (:VAR MV7491 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7487 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7489 :ALTERNATIVE MV7488)
 (:VAR MV7489 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7488 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7492 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7501 :ISA TARGET :AGENT MV7499 :OBJECT MV7502 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7499 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7502 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7513 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7505 :VALUE MV7512 :PREP
  "IN" :PREDICATE MV7506)
 (:VAR MV7505 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7512 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7503 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7503 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7509
  :RAW-TEXT "signaling pathway")
 (:VAR MV7509 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7506 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7516 :ISA BE :SUBJECT MV7515 :PREDICATE MV7518 :PRESENT "PRESENT")
 (:VAR MV7515 :ISA WHAT)
 (:VAR MV7518 :ISA MUTATION :OBJECT MV7520 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7520 :ISA PROTEIN :CONTEXT MV7523 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7523 :ISA CANCER :PREDICATION MV7522) (:VAR MV7522 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7527 :ISA BE :SUBJECT MV7526 :PREDICATE MV7529 :PRESENT "PRESENT")
 (:VAR MV7526 :ISA WHAT)
 (:VAR MV7529 :ISA MUTATION :OBJECT MV7531 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7531 :ISA PROTEIN :CONTEXT MV7534 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7534 :ISA CANCER :ORGAN MV7533) (:VAR MV7533 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7538 :ISA REMOVE :OBJECT MV7548 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7548 :ISA FACT :STATEMENT MV7542 :HAS-DETERMINER "THE")
 (:VAR MV7542 :ISA TRANSCRIBE :AGENT MV7537 :OBJECT MV7543 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7537 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7543 :ISA BIO-ENTITY :INFO-CONTEXT MV7546 :NAME "FAKE")
 (:VAR MV7546 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7550 :ISA TRANSCRIBE :AGENT MV7549 :OBJECT MV7551 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7549 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7551 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7553 :ISA REMOVE :OBJECT MV7563 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7563 :ISA FACT :STATEMENT MV7557 :HAS-DETERMINER "THE")
 (:VAR MV7557 :ISA TRANSCRIBE :AGENT MV7552 :OBJECT MV7558 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7552 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7558 :ISA PROTEIN :INFO-CONTEXT MV7561 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7561 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7576 :ISA SHARE :OBJECT MV7564 :PARTICIPANT MV7575 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7564 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7575 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7565 MV7574))
 (:VAR MV7565 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7574 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7587 :ISA SHARE :OBJECT MV7578 :PARTICIPANT MV7586 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7578 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7586 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7579 MV7580))
 (:VAR MV7579 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7580 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7594 :ISA BIO-USE :OBJECT MV7590 :AGENT MV7592 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7590 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7592 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7596 :ISA BE :SUBJECT MV7595 :PREDICATE MV7598 :PRESENT "PRESENT")
 (:VAR MV7595 :ISA WHAT)
 (:VAR MV7598 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7607 :ISA ASK :PATIENT MV7600 :MODAL MV7601 :AGENT MV7602 :PRESENT
  "PRESENT")
 (:VAR MV7600 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7601 :ISA CAN)
 (:VAR MV7602 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7616 :ISA ASK :PATIENT MV7609 :MODAL MV7610 :AGENT MV7611 :PRESENT
  "PRESENT")
 (:VAR MV7609 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7610 :ISA CAN)
 (:VAR MV7611 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7625 :ISA ASK :PATIENT MV7618 :MODAL MV7619 :AGENT MV7620 :PRESENT
  "PRESENT")
 (:VAR MV7618 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7619 :ISA CAN)
 (:VAR MV7620 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7629 :ISA REGULATE :OBJECT MV7627 :AGENT MV7626 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7627 :ISA WHAT)
 (:VAR MV7626 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7633 :ISA BE :SUBJECT MV7632 :PREDICATE MV7634 :PRESENT "PRESENT")
 (:VAR MV7632 :ISA THESE :QUANTIFIER MV7630 :WORD "these")
 (:VAR MV7630 :ISA WHICH) (:VAR MV7634 :ISA KINASE :RAW-TEXT "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    SOURCE-START
e10   IN            1 "What pathways is ERK1 in" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is ERK1 in?"
 (:VAR MV7641 :ISA WH-QUESTION :STATEMENT MV7640 :VAR NIL :WH WHAT)
 (:VAR MV7640 :ISA IN :WORD "in"))

___________________
852: "Which of these is AKT1 in?"

                    SOURCE-START
e13   IN            1 "Which of these is AKT1 in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these is AKT1 in?"
 (:VAR MV7649 :ISA WH-QUESTION :STATEMENT MV7647 :WH WHICH)
 (:VAR MV7647 :ISA IN :WORD "in"))

___________________
853: "What pathways are ERK1 and AKT1 in?"

                    SOURCE-START
e14   IN            1 "What pathways are ERK1 and AKT1 in" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are ERK1 and AKT1 in?"
 (:VAR MV7658 :ISA WH-QUESTION :STATEMENT MV7656 :VAR NIL :WH WHAT)
 (:VAR MV7656 :ISA IN :WORD "in"))

___________________
854: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV7663 :ISA TARGET :AGENT MV7661 :OBJECT MV7659 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7661 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7659 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   TARGET        1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7669 :ISA TARGET :AGENT-OR-CAUSE MV7667 :OBJECT MV7664 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7667 :ISA THESE :QUANTIFIER MV7665 :WORD "these")
 (:VAR MV7665 :ISA WHICH)
 (:VAR MV7664 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7679 :ISA POLAR-QUESTION :STATEMENT MV7677)
 (:VAR MV7677 :ISA REGULATE :AGENT-OR-CAUSE MV7675 :OBJECT MV7671 :RAW-TEXT
  "regulate")
 (:VAR MV7675 :ISA THESE :QUANTIFIER MV7673 :WORD "these")
 (:VAR MV7673 :ISA ANY :WORD "any")
 (:VAR MV7671 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7682 :ISA REGULATE :AGENT-OR-CAUSE MV7681 :OBJECT MV7680 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7681 :ISA WHAT)
 (:VAR MV7680 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7685 :ISA INVOLVE :THEME MV7684 :THEME MV7686 :PRESENT "PRESENT")
 (:VAR MV7684 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7686 :ISA THESE :WORD "these"))

___________________
859: "What are the targets of NG25?"

                    SOURCE-START
e14   BE            1 "What are the targets of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of NG25?"
 (:VAR MV7689 :ISA BE :SUBJECT MV7688 :PREDICATE MV7691 :PRESENT "PRESENT")
 (:VAR MV7688 :ISA WHAT)
 (:VAR MV7691 :ISA TARGET-PROTEIN :AGENT MV7687 :HAS-DETERMINER "THE" :RAW-TEXT
  "targets")
 (:VAR MV7687 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
860: "What is their most likely cellular location?"

                    SOURCE-START
e13   BE            1 "What is their most likely cellular location" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is their most likely cellular location?"
 (:VAR MV7696 :ISA BE :SUBJECT MV7695 :PREDICATE MV7702 :PRESENT "PRESENT")
 (:VAR MV7695 :ISA WHAT)
 (:VAR MV7702 :ISA LOCATION-OF :THEME MV7697 :PREDICATION MV7700 :MODIFIER
  MV7701)
 (:VAR MV7697 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7700 :ISA LIKELY :COMPARATIVE MV7698)
 (:VAR MV7698 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7701 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7707 :ISA POLAR-QUESTION :STATEMENT MV7705)
 (:VAR MV7705 :ISA BE :SUBJECT MV7703 :PREDICATE MV7704)
 (:VAR MV7703 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV7704 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?" (:VAR MV7712 :ISA POLAR-QUESTION :STATEMENT MV7708)
 (:VAR MV7708 :ISA BE :SUBJECT MV7709 :PREDICATE MV7711)
 (:VAR MV7709 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7711 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7715 :ISA BE :SUBJECT MV7714 :PREDICATE MV7713 :PRESENT "PRESENT")
 (:VAR MV7714 :ISA WHAT)
 (:VAR MV7713 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7720 :ISA TARGET :OBJECT MV7716 :AGENT-OR-CAUSE MV7718 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7716 :ISA WHAT) (:VAR MV7718 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7725 :ISA REGULATE :OBJECT MV7723 :AGENT MV7721 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7723 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7721 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    SOURCE-START
e10   IN            1 "What pathways is it in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is it in?"
 (:VAR MV7731 :ISA WH-QUESTION :STATEMENT MV7730 :VAR NIL :WH WHAT)
 (:VAR MV7730 :ISA IN :WORD "in"))

___________________
867: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV7734 :ISA BE :SUBJECT MV7733 :PREDICATE MV7736 :PRESENT "PRESENT")
 (:VAR MV7733 :ISA WHAT)
 (:VAR MV7736 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7732 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7732 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7746 :ISA POLAR-QUESTION :STATEMENT MV7745)
 (:VAR MV7745 :ISA TARGET :AGENT-OR-CAUSE MV7741 :OBJECT MV7744 :RAW-TEXT
  "target")
 (:VAR MV7741 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7744 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
869: "Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."

                    SOURCE-START
e15   INHIBIT       1 "Tofacitinib inhibits JAK1 and active STAT3 " 9
e13   TRANSCRIBE    9 "transcribes IL2" 12
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "Tofacitinib inhibits JAK1 and active STAT3 " 9
e13   VP            9 "transcribes IL2" 12
                    PERIOD
                    END-OF-SOURCE


___________________
870: "JAK1 activates STAT3"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "JAK1 activates STAT3" 6
                    END-OF-SOURCE
("JAK1 activates STAT3"
 (:VAR MV7758 :ISA BIO-ACTIVATE :AGENT MV7756 :OBJECT MV7757 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7756 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7757 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7764 :ISA WANT :AGENT MV7761 :THEME MV7774 :PRESENT "PRESENT")
 (:VAR MV7761 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7774 :ISA FIND-OUT :AGENT MV7761 :STATEMENT MV7771)
 (:VAR MV7771 :ISA WH-QUESTION :STATEMENT MV7770 :VAR NIL :WH HOW)
 (:VAR MV7770 :ISA BIO-ACTIVATE :AGENT MV7759 :OBJECT MV7760 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7759 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7760 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7780 :ISA WANT :AGENT MV7777 :THEME MV7794 :PRESENT "PRESENT")
 (:VAR MV7777 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7794 :ISA FIND-OUT :AGENT MV7777 :STATEMENT MV7791)
 (:VAR MV7791 :ISA WH-QUESTION :STATEMENT MV7786 :VAR NIL :WH HOW)
 (:VAR MV7786 :ISA BIO-ACTIVATE :AGENT MV7775 :OBJECT MV7787 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7775 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7787 :ISA PROTEIN :CELL-TYPE MV7789 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7789 :ISA CELL-TYPE :CELL-LINE MV7776)
 (:VAR MV7776 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7799 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7796 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7796 :ISA BUILD :ARTIFACT MV7798 :PRESENT "PRESENT")
 (:VAR MV7798 :ISA MODEL :HAS-DETERMINER "A"))

___________________
874: "Mek phosphorylates MAPK; MapK phosphorylates RSK"

                    SOURCE-START
e10   PHOSPHORYLATE 1 "Mek phosphorylates MAPK" 4
e3    SEMICOLON     4 "; " 5
e8    PHOSPHORYLATE 5 "MapK phosphorylates RSK" 8
                    END-OF-SOURCE
                    SOURCE-START
e10   S             1 "Mek phosphorylates MAPK" 4
e3    PUNCTUATION   4 "; " 5
e8    S             5 "MapK phosphorylates RSK" 8
                    END-OF-SOURCE


___________________
875: "What kinases regulate IL2?"

                    SOURCE-START
e7    REGULATE      1 "What kinases regulate IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate IL2?"
 (:VAR MV7809 :ISA REGULATE :AGENT MV7808 :OBJECT MV7806 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7808 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7806 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7810 :ISA UPREGULATE :AGENT-OR-CAUSE MV7812 :OBJECT MV7811 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7812 :ISA WHAT)
 (:VAR MV7811 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7816 :ISA HAVE :POSSESSOR MV7814 :THING-POSSESSED MV7818 :MODAL
  MV7815)
 (:VAR MV7814 :ISA WHAT)
 (:VAR MV7818 :ISA EFFECT :OBJECT MV7813 :AFFECTED-PROCESS MV7821
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7813 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7821 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7815 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7834 :ISA POLAR-QUESTION :STATEMENT MV7832)
 (:VAR MV7832 :ISA THERE-EXISTS :VALUE MV7830 :PREDICATE MV7827)
 (:VAR MV7830 :ISA DRUG :TARGET MV7825 :QUANTIFIER MV7829 :RAW-TEXT "drugs")
 (:VAR MV7825 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7829 :ISA ANY :WORD "any") (:VAR MV7827 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7838 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7837 :OBJECT MV7835
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7837 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7835 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7843 :ISA REGULATE :MANNER MV7841 :AGENT MV7839 :OBJECT MV7840
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7841 :ISA HOW)
 (:VAR MV7839 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7840 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7848 :ISA BE :SUBJECT MV7847 :PREDICATE MV7844 :PRESENT "PRESENT")
 (:VAR MV7847 :ISA WHAT)
 (:VAR MV7844 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7850 :RAW-TEXT
  "transcription factors")
 (:VAR MV7850 :ISA BINDING :BINDER MV7844 :THAT-REL T :DIRECT-BINDEE MV7853
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7853 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7854 :RAW-TEXT
  "genes")
 (:VAR MV7854 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7845 MV7846))
 (:VAR MV7845 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7846 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7859 :ISA REGULATE :AGENT MV7858 :OBJECT MV7862 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7858 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7862 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7855 MV7856))
 (:VAR MV7855 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7856 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
883: "What factors from the literature regulate IL15 and IL2?"

                    SOURCE-START
e13   FACTOR        1 "What factors " 3
e16   FROM          3 "from the literature " 6
e15   REGULATE      6 "regulate IL15 and IL2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   NP            1 "What factors " 3
e16   PP            3 "from the literature " 6
e15   VP            6 "regulate IL15 and IL2" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
884: "What relations in the literature match tofacitinib inhibits IL15?"

                    SOURCE-START
e13   RELATION      1 "What relations " 3
e18   IN            3 "in the literature match tofacitinib " 8
e17   INHIBIT       8 "inhibits IL15" 11
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   NP            1 "What relations " 3
e18   PP            3 "in the literature match tofacitinib " 8
e17   VP            8 "inhibits IL15" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
885: "What is MAP3K7?"

                    SOURCE-START
e5    BE            1 "What is MAP3K7" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAP3K7?"
 (:VAR MV7887 :ISA BE :SUBJECT MV7886 :PREDICATE MV7885 :PRESENT "PRESENT")
 (:VAR MV7886 :ISA WHAT)
 (:VAR MV7885 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?" (:VAR MV7892 :ISA POLAR-QUESTION :STATEMENT MV7889)
 (:VAR MV7889 :ISA BE :SUBJECT MV7888 :PREDICATE MV7891)
 (:VAR MV7888 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7891 :ISA PROTEIN :HAS-DETERMINER "A" :RAW-TEXT "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7896 :ISA TRANSCRIBE :OBJECT MV7894 :AGENT MV7893 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7894 :ISA WHAT)
 (:VAR MV7893 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7905 :ISA POLAR-QUESTION :STATEMENT MV7903)
 (:VAR MV7903 :ISA THERE-EXISTS :VALUE MV7901 :PREDICATE MV7899)
 (:VAR MV7901 :ISA DRUG :TARGET MV7897 :RAW-TEXT "drugs")
 (:VAR MV7897 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7899 :ISA SYNTACTIC-THERE))

___________________
889: "What relations in the literature match tofacitinib?"

                    SOURCE-START
e15   IN            1 "What relations in the literature match tofacitinib" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What relations in the literature match tofacitinib?"
 (:VAR MV7915 :ISA WH-QUESTION :STATEMENT MV7914 :VAR NIL :WH WHAT)
 (:VAR MV7914 :ISA PREPOSITIONAL-PHRASE :POBJ MV7913 :PREP "IN")
 (:VAR MV7913 :ISA DRUG :HAS-DETERMINER "THE" :MODIFIER MV7910 :MODIFIER MV7912
  :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID "NCIT:C95800")
 (:VAR MV7910 :ISA LITERATURE) (:VAR MV7912 :ISA MATCH-ENDURANT))

___________________
890: "What relations in the literature match STAT3 regulates IL15 ?"

                    SOURCE-START
e14   RELATION      1 "What relations " 3
e19   IN            3 "in the literature match " 7
e18   REGULATE      7 "STAT3 regulates IL15 " 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e14   NP            1 "What relations " 3
e19   PP            3 "in the literature match " 7
e18   S             7 "STAT3 regulates IL15 " 12
                    QUESTION-MARK
                    END-OF-SOURCE
891 sentences in *list-of-bio-utterances*
