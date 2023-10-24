#!/bin/bash

REF_GENOME_INDEX="./HISAT2/hisat2_GencodeV43_genome_tran/hisat2_Gv43_genome_tran"
OD=~/Palesa/Honours_2023

for file in trimmed_A549_replicate_1 trimmed_A549_replicate_3 trimmed_A549_replicate_5 
 do
    replicate_R1=${file}_R1.fastq.gz
    replicate_R2=${file}_R2.fastq.gz
    output_prefix=$file
    hisat2 -x $REF_GENOME_INDEX -1 $replicate_R1 -2 $replicate_R2 --no-softclip -S $OD/${output_prefix}.sam
 done

for file in trimmed_K562_replicate_3 trimmed_K562_replicate_4 trimmed_K562_replicate_5 
do
    replicate_R1=${file}_R1.fastq.gz
    replicate_R2=${file}_R2.fastq.gz
    output_prefix=$file
    hisat2 -x $REF_GENOME_INDEX -1 $replicate_R1 -2 $replicate_R2 --no-softclip -S $OD/${output_prefix}.sam
done

