\name{SARC-v2.1.0}
\alias{ SARC-v2.1.0 }
\docType{data}
\title{ Sarcoma }
\description{
A document describing the TCGA cancer code
}

\details{
\preformatted{
> experiments( SARC )
ExperimentList class object of length 11:
 [1] SARC_CNASNP-20160128: RaggedExperiment with 337377 rows and 516 columns
 [2] SARC_CNVSNP-20160128: RaggedExperiment with 106739 rows and 513 columns
 [3] SARC_GISTIC_AllByGene-20160128: SummarizedExperiment with 24776 rows and 257 columns
 [4] SARC_GISTIC_Peaks-20160128: RangedSummarizedExperiment with 64 rows and 257 columns
 [5] SARC_GISTIC_ThresholdedByGene-20160128: SummarizedExperiment with 24776 rows and 257 columns
 [6] SARC_Mutation-20160128: RaggedExperiment with 20376 rows and 247 columns
 [7] SARC_RNASeq2Gene-20160128: SummarizedExperiment with 20501 rows and 265 columns
 [8] SARC_RPPAArray-20160128: SummarizedExperiment with 192 rows and 226 columns
 [9] SARC_miRNASeqGene-20160128: SummarizedExperiment with 1046 rows and 263 columns
 [10] SARC_RNASeq2GeneNorm-20160128: SummarizedExperiment with 18165 rows and 265 columns
 [11] SARC_Methylation-20160128: SummarizedExperiment with 485577 rows and 269 columns

> rownames( SARC )
CharacterList of length 11
[["SARC_CNASNP-20160128"]] character(0)
[["SARC_CNVSNP-20160128"]] character(0)
[["SARC_GISTIC_AllByGene-20160128"]] character(0)
[["SARC_GISTIC_Peaks-20160128"]] 26 1 2 3 27 28 4 29 ... 21 63 22 64 23 65 66
[["SARC_GISTIC_ThresholdedByGene-20160128"]] character(0)
[["SARC_Mutation-20160128"]] character(0)
[["SARC_RNASeq2Gene-20160128"]] A1BG A1CF A2BP1 A2LD1 ... ZZZ3 psiTPTE22 tAKR
[["SARC_RPPAArray-20160128"]] 14-3-3_beta ... p90RSK_pT359_S363
[["SARC_miRNASeqGene-20160128"]] hsa-let-7a-1 hsa-let-7a-2 ... hsa-mir-99b
[["SARC_RNASeq2GeneNorm-20160128"]] A1BG A2BP1 A2LD1 ... ZZEF1 ZZZ3 psiTPTE22
...
<1 more element>

> colnames( SARC )
CharacterList of length 11
[["SARC_CNASNP-20160128"]] TCGA-3B-A9HI-01A-11D-A386-01 ...
[["SARC_CNVSNP-20160128"]] TCGA-3B-A9HI-01A-11D-A386-01 ...
[["SARC_GISTIC_AllByGene-20160128"]] TCGA-3B-A9HI-01A-11D-A386-01 ...
[["SARC_GISTIC_Peaks-20160128"]] TCGA-3B-A9HI-01A-11D-A386-01 ...
[["SARC_GISTIC_ThresholdedByGene-20160128"]] TCGA-3B-A9HI-01A-11D-A386-01 ...
[["SARC_Mutation-20160128"]] TCGA-3B-A9HI-01A-11D-A387-09 ...
[["SARC_RNASeq2Gene-20160128"]] TCGA-3B-A9HI-01A-11R-A38C-07 ...
[["SARC_RPPAArray-20160128"]] TCGA-3B-A9HI-01A-21-A456-20 ...
[["SARC_miRNASeqGene-20160128"]] TCGA-3B-A9HI-01A-11R-A38N-13 ...
[["SARC_RNASeq2GeneNorm-20160128"]] TCGA-3B-A9HI-01 ... TCGA-Z4-AAPG-01
...
<1 more element>

Sizes of each ExperimentList element:

                                    assay size.Mb
1                    SARC_CNASNP-20160128  9.2 Mb
2                    SARC_CNVSNP-20160128    3 Mb
3          SARC_GISTIC_AllByGene-20160128 52.2 Mb
4              SARC_GISTIC_Peaks-20160128  0.2 Mb
5  SARC_GISTIC_ThresholdedByGene-20160128 51.9 Mb
6                  SARC_Mutation-20160128 19.5 Mb
7               SARC_RNASeq2Gene-20160128   44 Mb
8                 SARC_RPPAArray-20160128  0.4 Mb
9              SARC_miRNASeqGene-20160128  2.3 Mb
10          SARC_RNASeq2GeneNorm-20160128   39 Mb
11              SARC_Methylation-20160128   75 Mb

---------------------------
Overall survival time-to-event summary (in years):
---------------------------

Call: survfit(formula = survival::Surv(colDat$days_to_death/365, colDat$vital_status) ~ 
    -1)

   162 observations deleted due to missingness 
      n events median 0.95LCL 0.95UCL
[1,] 99     99   1.78    1.51    2.46


---------------------------
Available sample meta-data:
---------------------------

years_to_birth:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  20.00   53.00   61.00   60.88   71.00   90.00       1 

vital_status:
  0   1 
162  99 

days_to_death:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   17.0   322.5   648.0   863.6  1169.5  2694.0     162 

days_to_last_followup:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   15.0   585.8  1092.0  1391.1  1891.8  5723.0      99 


gender:
female   male 
   142    119 

date_of_initial_pathologic_diagnosis:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   1994    2007    2010    2009    2012    2013       4 

radiation_therapy:
  no  yes NA's 
 181   74    6 


residual_tumor:
  r0   r1   r2   rx NA's 
 155   70    9   26    1 

race:
                    asian black or african american                     white 
                        6                        18                       228 
                     NA's 
                        9 

ethnicity:
    hispanic or latino not hispanic or latino                   NA's 
                     5                    223                     33 

Including an additional 1413 columns
}}
\keyword{datasets}
