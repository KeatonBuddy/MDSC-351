# MDSC Projects Completed During Bachelor of Health Sciences in Bioinformatics at University of Calgary

# Project 1: ER Stress Pathway (IRE1α/XBP) in Cancer Viability
## Overview
This project investigates the endoplasmic reticulum (ER) stress response pathway, specifically the IRE1α/XBP axis, and its critical role in cancer cell viability. Under conditions of increased MYC oncogene expression, cancer cells experience heightened ER stress. This stress activates the IRE1α enzyme, leading to splicing and activation of the transcription factor XBP. The activated IRE1α/XBP pathway promotes survival by adapting cancer cells to ER stress conditions.

## Objectives
- Explore the connection between MYC oncogene expression and ER stress in cancer.

- Investigate how the IRE1α/XBP pathway helps cancer cells survive and proliferate.

- Evaluate the therapeutic potential of pharmacological inhibitors targeting the IRE1α/XBP pathway in cancer treatment.

## Methodology
- Reviewed literature and studies involving IRE1α/XBP and MYC-driven cancers.

- Evaluated the impact of the IRE1α inhibitor (B-I09) on cancer cell growth, apoptosis, and lipid metabolism.

- Examined lipid biosynthesis genes, particularly stearoyl-CoA desaturase (SCD), which supports cancer viability under ER stress conditions.

## Key Findings
- Pharmacological inhibition of IRE1α/XBP significantly reduces cancer cell viability, especially in high MYC-expressing cells.

- The IRE1α/XBP pathway sustains cancer cell survival through lipid metabolism (e.g., SCD-mediated pathways).

## Implications and Future Work
- Targeting the IRE1α/XBP pathway presents a promising therapeutic strategy for treating MYC-driven cancers. Further research is needed on the safety and broader efficacy of these inhibitors in various cancer types.

# Project 2: The Role of Profilin in ALS Pathogenesis
## Overview
This project examines Profilin, an actin-binding protein essential for cytoskeletal integrity and cell signaling, focusing on its role in the pathogenesis of Amyotrophic Lateral Sclerosis (ALS). ALS is a severe neurodegenerative disease marked by motor neuron death and muscle weakening, linked to mutations in the Profilin gene (PFN1).

## Objectives
- Understand Profilin's role in cellular functions, including actin polymerization and signaling pathways.

- Investigate the consequences of Profilin mutations observed in familial ALS cases.

- Explore the connection between mutated Profilin, TDP-43 protein aggregation, and ALS disease progression.

## Methodology
- Conducted a thorough literature review and analysis of experiments detailing Profilin functions.

- Analyzed studies linking ALS-linked Profilin mutations to pathological TDP-43 aggregation.

- Reviewed genetic sequencing studies correlating Profilin mutations with familial ALS occurrences.

## Key Findings
- Profilin mutations disrupt normal actin dynamics and contribute to cytoplasmic aggregation of proteins such as TDP-43.

- ALS-linked Profilin mutants lead to increased cellular aggregates, causing neuronal death and ALS progression.

## Implications and Future Work
Insights from Profilin studies could guide new diagnostic strategies, helping identify ALS risk early through genetic screening. Additionally, targeting Profilin-related aggregation pathways may offer novel therapeutic strategies for treating ALS

# Project 3: Genome-Wide Association Study (GWAS) of Flowering Time at 10°C in Arabidopsis thaliana
## Overview
This project performs a genome-wide association study to uncover genetic variants associated with accelerated flowering time in Arabidopsis thaliana at 10°C, testing the hypothesis that chromosome 3 harbors significant loci.

## Objectives

- Identify genomic loci linked to early flowering at 10°C.

- Test the hypothesis of significant associations on chromosome 3.

## Methodology

- Acquired genotype (call_method_54.tair9.FT10.csv) and phenotype (FT10.txt) datasets, matched samples, and removed NAs.

- Binarized allele calls into ±1.

- Conducted GWAS using the rrBLUP::GWAS() function and visualized results with Manhattan and QQ plots.

## Key Findings

- Significant association peaks identified on chromosomes 1, 2, and 4, rather than chromosome 3.

- QQ plot indicated limited deviation from the null, suggesting modest statistical power citeturn1file3.

## Implications and Future Work

- Loci on chromosomes 1, 2, and 4 are prime candidates for functional follow-up studies.

- Future work should increase sample size, refine phenotype measurements, and validate candidate variants experimentally.
