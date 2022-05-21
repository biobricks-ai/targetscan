---
title: TargetScan
namespace: TargetScan
description: Prediction of miRNA targets
dependencies: 
  - name: TargetScan
    url: https://www.targetscan.org/cgi-bin/targetscan/data_download.vert80.cgi
---

> TargetScan predicts biological targets of miRNAs by searching for the presence of conserved 8mer, 7mer, and 6mer sites that match the seed region of each miRNA (Lewis et al., 2005). As options, predictions with only poorly conserved sites and predictions with nonconserved miRNAs are also provided. Also identified are sites with mismatches in the seed region that are compensated by conserved 3' pairing (Friedman et al., 2009). In mammals, predictions are ranked based on the predicted efficacy of targeting as calculated using a biochemical model of miRNA-mediated repression, which was extended to all miRNA sequences using a convolutional neural network (McGeary, Lin, et al., 2019). As an option, predictions are also ranked on the basis of targeting efficacy estimated using cumulative weighted context++ scores of the sites (Agarwal et al., 2015). As another option, predictions are ranked by their probability of conserved targeting (PCT, Friedman et al., 2009). TargetScanHuman considers matches to human 3' UTRs and their orthologs, as defined by UCSC whole-genome alignments. Conserved targeting has also been detected within open reading frames (ORFs). A listing of these ORF sites can be found at the bottom of Supplemental Table 2 of Lewis et al., 2005.

Biobricks.ai transforms [TargetScan](https://www.targetscan.org/cgi-bin/targetscan/data_download.vert80.cgi) into parquet files. 

# Data overview 
- This directory contains data obtained from TargetScan. TargetScan is a resource for predicting miRNA binding targets.
- Txt (except for README), bed, and gff files have been converted to parquet files. Other files (eg, README files, perl scripts, etc.) have been left in their original formats and moved to data/.
- The data was downloaded from: https://www.targetscan.org/cgi-bin/targetscan/data_download.vert80.cgi
- Please view the contained README files and descriptions on the [TargetScan website](https://www.targetscan.org/cgi-bin/targetscan/data_download.vert80.cgi) for information on each file.

# Data Table List 
## Files in data/
`3Pseq_tags_AIRs/All_cell_lines.parquet`
`3Pseq_tags_AIRs/README.txt`
`3Pseq_tags_AIRs/tags_by_cell_line/HEK293.parquet`
`3Pseq_tags_AIRs/tags_by_cell_line/HeLa.parquet`
`3Pseq_tags_AIRs/tags_by_cell_line/Huh7.parquet`
`3Pseq_tags_AIRs/tags_by_cell_line/IMR90.parquet`
`All_Target_Locations.hg19/Targets_CS_pctiles.hg19.broadConsFam.parquet`
`All_Target_Locations.hg19/Targets_CS_pctiles.hg19.consFam.parquet`
`All_Target_Locations.hg19/Targets_CS_pctiles.hg19.nonConsFam.parquet`
`All_Target_Locations.hg19/Targets_CS_pctiles.hg19.otherFam.parquet`
`Conserved_Family_Info/Conserved_Family_Info.parquet`
`Conserved_Site_Context_Scores/Conserved_Site_Context_Scores.parquet`
`Gene_info/Gene_info.parquet`
`miR_Family_Info/miR_Family_Info.parquet`
`Nonconserved_Family_Info/Nonconserved_Family_Info.parquet`
`Nonconserved_Site_Context_Scores/Nonconserved_Site_Context_Scores.parquet`
`ORF_Sequences/ORF_Sequences.parquet`
`Predicted_Target_Locations.default_predictions.hg19/Predicted_Target_Locations.default_predictions.parquet`
`Predicted_Targets_Context_Scores.default_predictions/Predicted_Targets_Context_Scores.parquet`
`Predicted_Targets_Info.default_predictions/Predicted_Targets_Info.parquet`
`Summary_Counts.all_predictions/Summary_Counts.parquet`
`Summary_Counts.default_predictions/Summary_Counts.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/miR_Family_info_sample.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/PCT_parameters/7mer_1a_PCT_parameters.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/PCT_parameters/7mer_m8_PCT_parameters.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/PCT_parameters/8mer_PCT_parameters.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/PCT_parameters/Tree.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/README_BL_PCT_70.txt`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/targetscan_70_BL_bins.pl`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/targetscan_70_BL_PCT.pl`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/targetscan_70_output.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/UTR_Sequences_sample.parquet`
`targetscan_70_BL_PCT/TargetScan7_BL_PCT/UTRs_median_BLs_bins.parquet`
`targetscan_70/miR_Family_info_sample.parquet`
`targetscan_70/README_70.txt`
`targetscan_70/targetscan_70_output.parquet`
`targetscan_70/targetscan_70.pl`
`targetscan_70/UTR_Sequences_sample.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/Agarwal_2015_parameters.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/All_cell_lines.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/miR_Family_info_sample.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/miR_for_context_scores.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/ORF_8mer_counts_sample.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/ORF_Sequences_sample.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/README_CONTEXT_SCORES_70.txt`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.10090_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.10090.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.10116_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.10116.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.9031_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.9031.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.9606_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.9606.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.9615_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/CDC2L6.9615.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.10090_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.10090.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.10116_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.10116.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.9031_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.9031.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.9606_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.9606.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.9615_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/FNDC3A.9615.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.10090_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.10090.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.10116_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.10116.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.9031_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.9031.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.9606_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.9606.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.9615_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LIN28B.9615.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.10090_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.10090.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.10116_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.10116.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.9606_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.9606.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.9615_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/LPHN1.9615.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.10090_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.10090.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.10116_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.10116.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.9606_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.9606.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.9615_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/NLRP1.9615.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/ZNF197.10116_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/ZNF197.10116.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/ZNF197.9606_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/ZNF197.9606.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/ZNF197.9615_lunp`
`TargetScan7_context_scores/TargetScan7_context_scores/RNAplfold_in_out/ZNF197.9615.fa`
`TargetScan7_context_scores/TargetScan7_context_scores/TA_SPS_by_seed_region.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/Targets.BL_PCT.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/targetscan_70_context_scores_output.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/targetscan_70_context_scores.pl`
`TargetScan7_context_scores/TargetScan7_context_scores/targetscan_70_output.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/targetscan_count_8mers.pl`
`TargetScan7_context_scores/TargetScan7_context_scores/targetscan_mmu71_context_scores.pl`
`TargetScan7_context_scores/TargetScan7_context_scores/UTR_offset-6mer_sites_sample.parquet`
`TargetScan7_context_scores/TargetScan7_context_scores/UTR_Sequences_sample.parquet`
`TSHuman_7_hg19_3UTRs/TSHuman_7_hg19_3UTRs.parquet`
`UTR_Sequences/UTR_Sequences.parquet`

# Data can be downloaded using the following commands. To retrieve the data, make sure that dvc is downloaded

**Retrieving a single file**
```
dvc get git@github.com:insilica/oncindex-bricks.git bricks/TargetScan/data/UTR_Sequences/UTR_Sequences.parquet -o data/UTR_Sequences/UTR_Sequences.parquet
```

**It is advised to import files into a project so that you will be able to track changes in the data set**
```
dvc import git@github.com:insilica/oncindex-bricks.git bricks/meddra/data/ -o data
```
