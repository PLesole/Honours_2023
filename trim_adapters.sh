#!/bin/bash 
input_files_R1=(*_R1.fastq.gz) #input files for read 1
input_files_R2=(*_R2.fastq.gz) # input files for read 2
for ((i = 0; i < ${#input_files_R1[@]}; i++)) # loop through read 1 input because for each read 1 there is a read 2 
do
output_file_R1="${input_files_R1[$i]%.fastq.gz}_trimmed.fastq.gz" # trimmed output files
output_file_R2="${input_files_R2[$i]%.fastq.gz}_trimmed.fastq.gz"
max_length=80 #maximum length of reads after trimming; reads exceeding this length after trimming are discarded
cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -l $max_length -M $max_length -o "$output_file_R1" -p "$output_file_R2"  "${input_files_R1[$i]}" "${input_files_R2[$i]}"
done 
#adapter sequences are for libraries prepped with Illumina TruSeq stranded mRNA 