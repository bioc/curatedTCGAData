\name{READ-v2.1.0}
\alias{ READ-v2.1.0 }
\docType{data}
\title{ Rectum adenocarcinoma }
\description{
A document describing the TCGA cancer code
}

\details{
\preformatted{
> experiments( READ )
ExperimentList class object of length 17:
 [1] READ_CNASeq-20160128: RaggedExperiment with 56380 rows and 70 columns
 [2] READ_CNASNP-20160128: RaggedExperiment with 156806 rows and 316 columns
 [3] READ_CNVSNP-20160128: RaggedExperiment with 35765 rows and 316 columns
 [4] READ_GISTIC_AllByGene-20160128: SummarizedExperiment with 24776 rows and 165 columns
 [5] READ_GISTIC_Peaks-20160128: RangedSummarizedExperiment with 55 rows and 165 columns
 [6] READ_GISTIC_ThresholdedByGene-20160128: SummarizedExperiment with 24776 rows and 165 columns
 [7] READ_mRNAArray-20160128: SummarizedExperiment with 17814 rows and 72 columns
 [8] READ_Mutation-20160128: RaggedExperiment with 22075 rows and 69 columns
 [9] READ_RNASeq2Gene-20160128: SummarizedExperiment with 20501 rows and 105 columns
 [10] READ_RNASeq2GeneNorm_illuminaga-20160128: SummarizedExperiment with 20501 rows and 72 columns
 [11] READ_RNASeq2GeneNorm_illuminahiseq-20160128: SummarizedExperiment with 20501 rows and 105 columns
 [12] READ_RNASeqGene-20160128: SummarizedExperiment with 20502 rows and 72 columns
 [13] READ_RPPAArray-20160128: SummarizedExperiment with 208 rows and 131 columns
 [14] READ_miRNASeqGene-20160128: SummarizedExperiment with 705 rows and 76 columns
 [15] READ_RNASeq2GeneNorm-20160128: SummarizedExperiment with 18115 rows and 177 columns
 [16] READ_Methylation_methyl27-20160128: SummarizedExperiment with 27578 rows and 73 columns
 [17] READ_Methylation_methyl450-20160128: SummarizedExperiment with 485577 rows and 106 columns

> rownames( READ )
CharacterList of length 17
[["READ_CNASeq-20160128"]] character(0)
[["READ_CNASNP-20160128"]] character(0)
[["READ_CNVSNP-20160128"]] character(0)
[["READ_GISTIC_AllByGene-20160128"]] character(0)
[["READ_GISTIC_Peaks-20160128"]] 23 24 25 1 2 26 27 ... 54 55 18 19 20 56 57
[["READ_GISTIC_ThresholdedByGene-20160128"]] character(0)
[["READ_mRNAArray-20160128"]] ELMO2 CREB3L1 RPS11 PNMA1 ... SNRPD2 AQP7 CTSC
[["READ_Mutation-20160128"]] character(0)
[["READ_RNASeq2Gene-20160128"]] A1BG A1CF A2BP1 A2LD1 ... ZZZ3 psiTPTE22 tAKR
[["READ_RNASeq2GeneNorm_illuminaga-20160128"]] A1BG A1CF ... psiTPTE22 tAKR
...
<7 more elements>

> colnames( READ )
CharacterList of length 17
[["READ_CNASeq-20160128"]] TCGA-AF-2691-01A-01D-1167-02 ...
[["READ_CNASNP-20160128"]] TCGA-AF-2687-01A-02D-1732-01 ...
[["READ_CNVSNP-20160128"]] TCGA-AF-2687-01A-02D-1732-01 ...
[["READ_GISTIC_AllByGene-20160128"]] TCGA-AF-2687-01A-02D-1732-01 ...
[["READ_GISTIC_Peaks-20160128"]] TCGA-AF-2687-01A-02D-1732-01 ...
[["READ_GISTIC_ThresholdedByGene-20160128"]] TCGA-AF-2687-01A-02D-1732-01 ...
[["READ_mRNAArray-20160128"]] TCGA-AF-2689-11A-01R-1758-07 ...
[["READ_Mutation-20160128"]] TCGA-AF-2689-01A-01W-0831-10 ... TCGA-AG-A036-01
[["READ_RNASeq2Gene-20160128"]] TCGA-AF-2687-01A-02R-1736-07 ...
[["READ_RNASeq2GeneNorm_illuminaga-20160128"]] TCGA-AF-2691-01A-01R-0821-07...
...
<7 more elements>

Sizes of each ExperimentList element:

                                         assay size.Mb
1                         READ_CNASeq-20160128  1.5 Mb
2                         READ_CNASNP-20160128  4.3 Mb
3                         READ_CNVSNP-20160128  1.1 Mb
4               READ_GISTIC_AllByGene-20160128 34.7 Mb
5                   READ_GISTIC_Peaks-20160128  0.2 Mb
6       READ_GISTIC_ThresholdedByGene-20160128 34.5 Mb
7                      READ_mRNAArray-20160128   12 Mb
8                       READ_Mutation-20160128  9.6 Mb
9                    READ_RNASeq2Gene-20160128   19 Mb
10    READ_RNASeq2GeneNorm_illuminaga-20160128 13.8 Mb
11 READ_RNASeq2GeneNorm_illuminahiseq-20160128   19 Mb
12                    READ_RNASeqGene-20160128 13.8 Mb
13                     READ_RPPAArray-20160128  0.3 Mb
14                  READ_miRNASeqGene-20160128  0.5 Mb
15               READ_RNASeq2GeneNorm-20160128 26.7 Mb
16          READ_Methylation_methyl27-20160128  4.9 Mb
17         READ_Methylation_methyl450-20160128   75 Mb

---------------------------
Overall survival time-to-event summary (in years):
---------------------------

Call: survfit(formula = survival::Surv(colDat$days_to_death/365, colDat$vital_status) ~ 
    -1)

   142 observations deleted due to missingness 
      n events median 0.95LCL 0.95UCL
[1,] 27     27      2    1.44    3.25


---------------------------
Available sample meta-data:
---------------------------

years_to_birth:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  31.00   57.00   66.00   64.37   72.00   90.00 

vital_status:
  0   1 
141  28 

days_to_death:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   59.0   347.5   730.0   786.1  1193.0  1741.0     142 

days_to_last_followup:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    0.0   366.0   625.0   779.5  1096.0  3932.0      28 

tumor_tissue_site:
rectum   NA's 
   166      3 




pathology_M_stage:
  m0   m1  m1a   mx NA's 
 128   22    2   14    3 

gender:
female   male 
    77     92 

date_of_initial_pathologic_diagnosis:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1999    2007    2009    2008    2010    2012 

days_to_last_known_alive:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   31.0   292.2   863.0  1420.1  2214.5  3667.0     161 

radiation_therapy:
  no  yes NA's 
 114   22   33 

histological_type:
         rectal adenocarcinoma rectal mucinous adenocarcinoma 
                           150                             13 
                          NA's 
                             6 

tumor_stage:
stage iia      NA's 
        1       168 

residual_tumor:
  r0   r1   r2   rx NA's 
 126    2   12    5   24 

number_of_lymph_nodes:
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  0.000   0.000   0.000   2.692   3.000  31.000      10 

ethnicity:
    hispanic or latino not hispanic or latino                   NA's 
                     1                     84                     84 

Including an additional 2242 columns
}}
\keyword{datasets}
