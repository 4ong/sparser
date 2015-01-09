(in-package :sparser) 
(defparameter *dec-tests*
  '((p "We selected four drugs for our studies (Figures S1A–S1D).")
    (p "Sorafenib is a class II (inactive conformation binder) drug (Wan et al., 2004) that inhibits V600EBRAF at 40 nM, CRAF at 13 nM, and several other kinases in the low nM range (Wilhelm et al., 2004).")

    (p "It is the least-selective drug that we used.")
    (p "PLX4720 is a class I (active conformation binder) inhibitor that is highly selective and inhibits V600EBRAF at 13 nM (Tsai et al., 2008).")
    (p "885-A (Figure S1C) is a close analog of the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF.")
    (p "It inhibits V600EBRAF at 2 nM (Figure S1E), is ineffective against a panel of 64 other protein kinases (Table S1), and preferentially blocks BRAF mutant cancer cell proliferation (Figure S1F).")
    (p "Finally, we also used the potent and selective MEK inhibitor PD184352 (Sebolt-Leopold et al., 1999).")
    (p "As expected, all four drugs blocked ERK activity in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2).")
    (p "Similarly, all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G).")
    (p "We also tested the drugs in D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2).")
    (p "As expected, PD184352 and sorafenib inhibited ERK in all of these lines (Figure 1A).")
    (p "Surprisingly, however, PLX4720 and 885-A caused an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A).")
    (p "NRAS or CRAF depletion by RNA interference (RNAi) blocked MEK/ERK activation by PLX4720 and 885-A in NRAS mutant cells (Figure 1B and 1C) and we show that 885-A activated CRAF in these cells (Figure 1D).")
    (p "We previously reported that oncogenic RAS requires CRAF but not BRAF to activate MEK (Dumaz et al., 2006) and consistent with this, BRAF is inactive in NRAS mutant cells (Figure 1E).")
    (p "These data therefore present an intriguing paradox.")
    (p "BRAF is not active and is not required for MEK/ERK activation in RAS mutant cells.")
    (p "Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells, so we studied the underlying mechanism(s).")
    (p "In this study, we show that inhibition of BRAF by chemical or genetic means in the presence of oncogenic or growth-factor activated RAS induces BRAF binding to CRAF, leading to CRAF hyperactivation and consequently elevated MEK and ERK signaling.")
    (p "The mechanism we describe is another paradigm of RAF activation downstream of RAS and based on our findings, we propose the following mechanism by which this occurs.")
    (p "We posit that in RAS mutant cells, BRAF maintains itself in an inactive conformation through its own kinase activity, either through auto-phosphorylation, or by phosphorylating a partner protein that then keeps it inactive (Figure 7A).")
    (p "We are currently using mass-spectrometry and mutagenic approaches to elucidate the underlying mechanism.")
    (p "We propose that when BRAF is  inhibited, it escapes this auto-inhibited fate and is recruited to the plasma membrane by RAS, where it forms a stable complex with CRAF.")
    (p "Critically, we posit that because it is inhibited, BRAF does not directly phosphorylate MEK, but rather it acts as a scaffold whose function is to enhance CRAF activation, thereby allowing CRAF to hyperactivate the pathway (Figure 7B).")
    (p "We do not know the stoichiometry of the components in these complexes, but since BRAF and CRAF must both bind to RAS for complex formation, it seems likely that at least two RAS proteins are needed to stimulate formation of the complex (Figure 7B).")
    (p " Next, we tested whether overexpression of these genes was sufficient to activate the MAPK pathway.")
    (p "At baseline, COT expression increased ERK phosphorylation in a manner comparable to MEK1DD, consistent with MAP kinase pathway activation (Fig. 2a and Supplementary Fig. 6).")
    (p "Overexpression of wild-type COT or C-RAF resulted in constitutive phosphorylation of ERK and MEK in the presence of PLX4720, whereas kinase-dead derivatives had no effect (Fig. 2a, Supplementary Fig. 7).")
    (p "Based on these results, we hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling.")
    (p "Notably, of the nine candidate ORFs from our initial screen, a subset (3) did not show persistent ERK/MEK phosphorylation following RAF inhibition, suggesting MAPK pathway-independent alteration of drug sensitivity (Supplementary Fig. 8).")
    (p "a dummy sentence.")
    (p "a dummy sentence.")
    (p "Several groups have shown that C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition.");; fixed typo with 18-20 at end of sentence
    (p "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible following treatment with PLX4720 (Supplementary Fig. 9).")
    (p "However, endogenous C-RAF phosphorylation at S338, an event required for C-RAF activation, remained low (Supplementary Fig. 9).")
    (p "In contrast, ectopically expressed C-RAF was phosphorylated on S338 (Supplementary Fig. 9) and its PLX4720 resistance phenotype was associated with sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9).")
    (p "Moreover, ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22) was more effective than wild-type C-RAF in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10), further indicating that elevated C-RAF activity may direct resistance to this agent.");;fixed typo with unbalanced paren
    (p "Consistent with this model, oncogenic alleles of NRAS and KRAS conferred PLX4720 resistance in A375 cells (Fig. 2b) and yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment (Fig. 2c).")
    (p "Thus, although genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations) tend to show mutual exclusivity with B-RAFV600E mutation, such co-occurring events [19, 20] might be favored in the context of acquired resistance to B-RAF inhibition.")
    (p " We then considered whether COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF.")
    (p "Here, we queried the OUMS-23 and RPMI-7951 cell lines for sensitivity to the MEK1/2 inhibitor CI-1040.")
    (p "Interestingly, both cell lines were refractory to MEK inhibition (Fig. 4a) and displayed sustained ERK phosphorylation even at 1 μM CI-1040 (Fig. 4b).")
    (p "Ectopic COT expression in A375 and SKMEL28 cells also conferred decreased sensitivity to the MEK inhibitors CI-1040 and AZD6244, suggesting that COT expression alone was sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17).")
    (p "Similar to results observed with pharmacological MEK inhibitors, MEK1/2 knockdown only modestly suppressed COT–mediated ERK phosphorylation in A375 cells (Supplementary Fig. 18).")
    (p "In accordance with prior observations24, these data raised the possibility that COT may activate ERK through MEK-independent and MEK-dependent mechanisms.")
    (p "To test this hypothesis directly, we performed an in vitro kinase assay using recombinant COT and ERK1.")
    (p "Indeed, recombinant COT induced pThr202/Tyr204 phosphorylation of ERK1 in vitro (Supplementary Fig.  18) suggesting that in certain contexts, COT expression may potentiate ERK activation in a MEK-independent manner.")
    (p "another dummy sentence.")
    (p " Oncogenic mutations in the serine/threonine kinase B-RAF are found in 50–70% of malignant melanomas 1.")
    (p "Pre-clinical studies have demonstrated that the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5] —an observation that has been validated by the success of RAF and MEK inhibitors in clinical trials 6–8.")
    (p "However, clinical responses to targeted anticancer therapeutics are frequently confounded by de novo or acquired resistance [9–11].")
    (p "Identification of resistance mechanisms in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12].")
    (p "Here, we expressed ~600 kinase and kinase-related open reading frames (ORFs) in parallel to functionally interrogate resistance to a selective RAF kinase inhibitor.")
    (p "We identified MAP3K8 (COT/TPL2) as a MAPK pathway agonist that drives resistance to RAF inhibition in BRAFV600E cell lines.")
    (p "COT activates ERK primarily through MEK-dependent mechanisms that do not require RAF signaling.")
    (p "Moreover, COT expression is associated with de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells and tissue obtained from relapsing patients following treatment with MEK or RAF inhibition.")
    (p "We further identify combinatorial MAPK pathway inhibition or targeting of COT kinase activity as possible therapeutic strategies for reducing MAPK pathway activation in this setting.")
    (p "Together, these results provide new insights into resistance mechanisms involving the MAPK pathway and articulate an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies.")))


(defvar *known-breaks* nil)
(defvar *tested* '(0))
(defun reset-dectest ()
  (setq *tested* '(0)))

(defun reset-test ()
  (setq *tested* '(0)))

(defparameter *sentences* *dec-tests*)
(defun test-jan ()
  (setq *sentences* *jan-dry-run*)
  nil)

(defun test-dec ()
  (setq *sentences* *dec-tests*)
  nil)

(defun dectest(n &optional (sentences *sentences*))
  (let ((test  (nth (- n 1) sentences)))
    (print (list n test))
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (terpri) 
          (terpri)
          (print "SEMANTIC FOREST ------------------------------------")
          (pprint
           (tts-semantics))
          (print "___________________________________________")
          (terpri)
          (terpri)
          (terpri)
          ))))

(defun retest () 
  (loop for i from (+ 1 (car *tested*)) to 100 
    when (<= i (length *sentences*))
    do 
    (push i *tested*) (dectest i)))



(defun bad () 
  (push (car *tested*) *known-breaks*) 
  (retest))



	 
