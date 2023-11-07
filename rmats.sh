#!/bin/bash

#code to run prep and post step simultaneously
time python rmats.py --b1 A549_bam.txt --b2 K562_bam.txt --gtf ./Gencode.v43.primary_assembly.annotation.gtf -t paired --libType fr-firststrand --readLength 80 --variable-read-length --nthread 4 --task both --od . --tmp . 
# time print out time taken to run code
# --b1 and b2 text file containing paths to bam files for sample 1 and 2
# --gtf refer3ence gtf used in read alignment 
# -t state if reads are paired-end or single-end
# --libType state if data is stranded or unstranded 
# --task both runs both prep and prep step 
# output directory (od) and directory for tmp files (tmp) in current directory (.)      
# required read length to determine intron length for PSI calculations ; variable read length used if fastq files were trimmed prior to read alignment          

# code to run stat step
time python --od . --tmp . --task stat 
# od and tmp must be directory containing tmp and output files after post step  