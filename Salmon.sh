#!/bin/bash

Transcriptome_index=~/Palesa/salmon/salmon_V43_index/salmon_v43_index
OD=~/Palesa/Honours_2023
FASTQ_files=~/Palesa/DataFiles

for reads in trimmed_A549_replicate_1 trimmed_A549_replicate_3 trimmed_A549_replicate_5
 do
  replicate_R1=${reads}_R1.fastq.gz
  replicate_R2=${reads}_R2.fastq.gz
  salmon quant -i $Transcriptome_index -l A -1 $FASTQ_files/$replicate_R1 -2 $FASTQ_files/$replicate_R2 --seqBias --gcBias -o $OD/salmon_output
done

for reads in trimmed_K562_replicate_3 trimmed_K562_replicate_4 trimmed_K562_replicate_5
 do
  replicate_R1=${reads}_R1.fastq.gz
  replicate_R2=${reads}_R2.fastq.gz
  salmon quant -i $Transcriptome_index -l A -1 $FASTQ_files/$replicate_R1 -2 $FASTQ_files/$replicate_R2 --seqBias --gcBias -o $OD/salmon_output
done
