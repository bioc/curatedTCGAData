\name{THYM-v2.1.0}
\alias{ THYM-v2.1.0 }
\docType{data}
\title{ Thymoma }
\description{
A document describing the TCGA cancer code
}

\details{
\preformatted{
> experiments( THYM )
ExperimentList class object of length 11:
 [1] THYM_CNASNP-20160128: RaggedExperiment with 105646 rows and 248 columns
 [2] THYM_CNVSNP-20160128: RaggedExperiment with 15571 rows and 248 columns
 [3] THYM_GISTIC_AllByGene-20160128: SummarizedExperiment with 24776 rows and 123 columns
 [4] THYM_GISTIC_Peaks-20160128: RangedSummarizedExperiment with 16 rows and 123 columns
 [5] THYM_GISTIC_ThresholdedByGene-20160128: SummarizedExperiment with 24776 rows and 123 columns
 [6] THYM_Mutation-20160128: RaggedExperiment with 3064 rows and 123 columns
 [7] THYM_RNASeq2Gene-20160128: SummarizedExperiment with 20501 rows and 122 columns
 [8] THYM_RPPAArray-20160128: SummarizedExperiment with 192 rows and 90 columns
 [9] THYM_miRNASeqGene-20160128: SummarizedExperiment with 1046 rows and 126 columns
 [10] THYM_RNASeq2GeneNorm-20160128: SummarizedExperiment with 18286 rows and 122 columns
 [11] THYM_Methylation-20160128: SummarizedExperiment with 485577 rows and 126 columns

> rownames( THYM )
CharacterList of length 11
[["THYM_CNASNP-20160128"]] character(0)
[["THYM_CNVSNP-20160128"]] character(0)
[["THYM_GISTIC_AllByGene-20160128"]] character(0)
[["THYM_GISTIC_Peaks-20160128"]] 1 8 9 10 11 12 13 14 2 15 3 4 16 5 17 18
[["THYM_GISTIC_ThresholdedByGene-20160128"]] character(0)
[["THYM_Mutation-20160128"]] character(0)
[["THYM_RNASeq2Gene-20160128"]] A1BG A1CF A2BP1 A2LD1 ... ZZZ3 psiTPTE22 tAKR
[["THYM_RPPAArray-20160128"]] 14-3-3_beta ... p90RSK_pT359_S363
[["THYM_miRNASeqGene-20160128"]] hsa-let-7a-1 hsa-let-7a-2 ... hsa-mir-99b
[["THYM_RNASeq2GeneNorm-20160128"]] A1BG A2BP1 A2LD1 ... ZZEF1 ZZZ3 psiTPTE22
...
<1 more element>

> colnames( THYM )
CharacterList of length 11
[["THYM_CNASNP-20160128"]] TCGA-3G-AB0O-01A-22D-A422-01 ...
[["THYM_CNVSNP-20160128"]] TCGA-3G-AB0O-01A-22D-A422-01 ...
[["THYM_GISTIC_AllByGene-20160128"]] TCGA-3G-AB0O-01A-22D-A422-01 ...
[["THYM_GISTIC_Peaks-20160128"]] TCGA-3G-AB0O-01A-22D-A422-01 ...
[["THYM_GISTIC_ThresholdedByGene-20160128"]] TCGA-3G-AB0O-01A-22D-A422-01 ...
[["THYM_Mutation-20160128"]] TCGA-3G-AB0O-01A-22D-A423-09 ...
[["THYM_RNASeq2Gene-20160128"]] TCGA-3G-AB0O-01A-22R-A42C-07 ...
[["THYM_RPPAArray-20160128"]] TCGA-3G-AB0O-01A-11-A45R-20 ...
[["THYM_miRNASeqGene-20160128"]] TCGA-3G-AB0O-01A-22R-A42W-13 ...
[["THYM_RNASeq2GeneNorm-20160128"]] TCGA-3G-AB0O-01 ... TCGA-ZT-A8OM-01
...
<1 more element>

Sizes of each ExperimentList element:

                                    assay size.Mb
1                    THYM_CNASNP-20160128  2.9 Mb
2                    THYM_CNVSNP-20160128  0.5 Mb
3          THYM_GISTIC_AllByGene-20160128 26.7 Mb
4              THYM_GISTIC_Peaks-20160128  0.1 Mb
5  THYM_GISTIC_ThresholdedByGene-20160128 26.6 Mb
6                  THYM_Mutation-20160128  3.3 Mb
7               THYM_RNASeq2Gene-20160128 21.7 Mb
8                 THYM_RPPAArray-20160128  0.2 Mb
9              THYM_miRNASeqGene-20160128  1.2 Mb
10          THYM_RNASeq2GeneNorm-20160128 19.3 Mb
11              THYM_Methylation-20160128   75 Mb

---------------------------
Overall survival time-to-event summary (in years):
---------------------------

Call: survfit(formula = survival::Surv(colDat$days_to_death/365, colDat$vital_status) ~ 
    -1)

   115 observations deleted due to missingness 
     n events median 0.95LCL 0.95UCL
[1,] 9      9   2.34    1.04      NA


---------------------------
Available sample meta-data:
---------------------------

years_to_birth:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  17.00   49.50   60.00   58.15   68.50   84.00       1 

vital_status:
  0   1 
115   9 

days_to_death:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    124     379     853    1423    2488    3488     115 

days_to_last_followup:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   14.0   725.2  1267.5  1486.3  1947.0  4575.0      10 

tumor_tissue_site:
anterior mediastinum               thymus 
                  27                   97 

gender:
female   male 
    60     64 

date_of_initial_pathologic_diagnosis:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   2000    2008    2010    2010    2012    2013       1 

radiation_therapy:
 no yes 
 81  43 


race:
                    asian black or african american                     white 
                       13                         6                       103 
                     NA's 
                        2 

ethnicity:
    hispanic or latino not hispanic or latino                   NA's 
                    10                    100                     14 

Including an additional 685 columns
}}
\keyword{datasets}
