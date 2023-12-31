\name{GBM-v2.1.0}
\alias{ GBM-v2.1.0 }
\docType{data}
\title{ Glioblastoma multiforme }
\description{
A document describing the TCGA cancer code
}

\details{
\preformatted{
> experiments( GBM )
ExperimentList class object of length 18:
 [1] GBM_CNACGH_CGH_hg_244a-20160128: RaggedExperiment with 81512 rows and 438 columns
 [2] GBM_CNACGH_CGH_hg_415k_g4124a-20160128: RaggedExperiment with 57975 rows and 338 columns
 [3] GBM_CNASNP-20160128: RaggedExperiment with 602338 rows and 1104 columns
 [4] GBM_CNVSNP-20160128: RaggedExperiment with 146852 rows and 1104 columns
 [5] GBM_GISTIC_AllByGene-20160128: SummarizedExperiment with 24776 rows and 577 columns
 [6] GBM_GISTIC_Peaks-20160128: RangedSummarizedExperiment with 68 rows and 577 columns
 [7] GBM_GISTIC_ThresholdedByGene-20160128: SummarizedExperiment with 24776 rows and 577 columns
 [8] GBM_miRNAArray-20160128: SummarizedExperiment with 534 rows and 565 columns
 [9] GBM_mRNAArray_huex-20160128: SummarizedExperiment with 18632 rows and 431 columns
 [10] GBM_mRNAArray_TX_g4502a-20160128: SummarizedExperiment with 17814 rows and 502 columns
 [11] GBM_mRNAArray_TX_ht_hg_u133a-20160128: SummarizedExperiment with 12042 rows and 528 columns
 [12] GBM_Mutation-20160128: RaggedExperiment with 22073 rows and 290 columns
 [13] GBM_RNASeq2Gene-20160128: SummarizedExperiment with 20501 rows and 166 columns
 [14] GBM_RPPAArray-20160128: SummarizedExperiment with 208 rows and 244 columns
 [15] GBM_miRNASeqGene-20160128: SummarizedExperiment with 1046 rows and 0 columns
 [16] GBM_RNASeq2GeneNorm-20160128: SummarizedExperiment with 18199 rows and 166 columns
 [17] GBM_Methylation_methyl27-20160128: SummarizedExperiment with 27578 rows and 285 columns
 [18] GBM_Methylation_methyl450-20160128: SummarizedExperiment with 485577 rows and 154 columns

> rownames( GBM )
CharacterList of length 18
[["GBM_CNACGH_CGH_hg_244a-20160128"]] character(0)
[["GBM_CNACGH_CGH_hg_415k_g4124a-20160128"]] character(0)
[["GBM_CNASNP-20160128"]] character(0)
[["GBM_CNVSNP-20160128"]] character(0)
[["GBM_GISTIC_AllByGene-20160128"]] character(0)
[["GBM_GISTIC_Peaks-20160128"]] 25 26 1 27 28 2 29 3 ... 65 22 23 66 67 24 68
[["GBM_GISTIC_ThresholdedByGene-20160128"]] character(0)
[["GBM_miRNAArray-20160128"]] ebv-miR-BART1-3p ... kshv-miR-K12-9*
[["GBM_mRNAArray_huex-20160128"]] C9orf152 ELMO2 RPS11 ... SLC39A6 CTSC AQP7
[["GBM_mRNAArray_TX_g4502a-20160128"]] 15E1.2 2'-PDE ... tcag7.23 tcag7.350
...
<8 more elements>

> colnames( GBM )
CharacterList of length 18
[["GBM_CNACGH_CGH_hg_244a-20160128"]] TCGA-02-0001-01C-01D-0185-02 ...
[["GBM_CNACGH_CGH_hg_415k_g4124a-20160128"]] TCGA-02-2466-01A-01D-0787-02 ...
[["GBM_CNASNP-20160128"]] TCGA-02-0001-01C-01D-0182-01 ...
[["GBM_CNVSNP-20160128"]] TCGA-02-0001-01C-01D-0182-01 ...
[["GBM_GISTIC_AllByGene-20160128"]] TCGA-02-0001-01C-01D-0182-01 ...
[["GBM_GISTIC_Peaks-20160128"]] TCGA-02-0001-01C-01D-0182-01 ...
[["GBM_GISTIC_ThresholdedByGene-20160128"]] TCGA-02-0001-01C-01D-0182-01 ...
[["GBM_miRNAArray-20160128"]] TCGA-02-0001-01C-01T-0179-07 ...
[["GBM_mRNAArray_huex-20160128"]] TCGA-02-0001-01C-01R-0178-03 ...
[["GBM_mRNAArray_TX_g4502a-20160128"]] TCGA-02-0001-01C-01R-0179-07 ...
...
<8 more elements>

Sizes of each ExperimentList element:

                                    assay  size.Mb
1         GBM_CNACGH_CGH_hg_244a-20160128   2.3 Mb
2  GBM_CNACGH_CGH_hg_415k_g4124a-20160128   1.7 Mb
3                     GBM_CNASNP-20160128  16.4 Mb
4                     GBM_CNVSNP-20160128   4.2 Mb
5           GBM_GISTIC_AllByGene-20160128 112.7 Mb
6               GBM_GISTIC_Peaks-20160128   0.5 Mb
7   GBM_GISTIC_ThresholdedByGene-20160128 112.5 Mb
8                 GBM_miRNAArray-20160128   2.5 Mb
9             GBM_mRNAArray_huex-20160128  63.7 Mb
10       GBM_mRNAArray_TX_g4502a-20160128  70.5 Mb
11  GBM_mRNAArray_TX_ht_hg_u133a-20160128  50.1 Mb
12                  GBM_Mutation-20160128    31 Mb
13               GBM_RNASeq2Gene-20160128  28.5 Mb
14                 GBM_RPPAArray-20160128   0.5 Mb
15              GBM_miRNASeqGene-20160128   0.2 Mb
16           GBM_RNASeq2GeneNorm-20160128  25.3 Mb
17      GBM_Methylation_methyl27-20160128   4.9 Mb
18     GBM_Methylation_methyl450-20160128    75 Mb

---------------------------
Overall survival time-to-event summary (in years):
---------------------------

Call: survfit(formula = survival::Surv(colDat$days_to_death/365, colDat$vital_status) ~ 
    -1)

   109 observations deleted due to missingness 
       n events median 0.95LCL 0.95UCL
[1,] 490    490   1.05   0.981    1.16


---------------------------
Available sample meta-data:
---------------------------

years_to_birth:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  10.00   50.00   59.00   57.82   68.00   89.00       4 

vital_status:
   0    1 NA's 
 104  491    4 

days_to_death:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    3.0   170.5   382.0   504.5   609.2  3881.0     109 

days_to_last_followup:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    0.0   156.2   261.0   479.4   628.0  2818.0     497 

tumor_tissue_site:
brain  NA's 
  595     4 

gender:
female   male   NA's 
   230    365      4 

date_of_initial_pathologic_diagnosis:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   1989    2002    2006    2005    2009    2013       4 

radiation_therapy:
  no  yes NA's 
  78  489   32 

karnofsky_performance_score:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   0.00   70.00   80.00   77.04   80.00  100.00     157 

histological_type:
  glioblastoma multiforme (gbm)             treated primary gbm 
                             31                              20 
untreated primary (de novo) gbm                            NA's 
                            544                               4 

race:
                    asian black or african american                     white 
                       13                        51                       506 
                     NA's 
                       29 

ethnicity:
    hispanic or latino not hispanic or latino                   NA's 
                    13                    489                     97 

Including an additional 4368 columns
}}
\keyword{datasets}
