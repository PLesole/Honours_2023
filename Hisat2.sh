hisat2 -x ./HISAT2/hisat2_GencodeV43_genome_tran/hisat2_Gv43_genome_tran \ #path to input index file generated from GENCODE genome fasta and gtf files up to before HISAT2 suffix .ht2,.ht, .hisat2
 -1 trimmed_A549_replicate_1_R1.fastq.gz,trimmed_A549_replicate_3_R1.fastq.gz,trimmed_A549_replicate_5_R1.fastq.gz -2 trimmed_A549_replicate_1_R2.fastq.gz,trimmed_A549_replicate_3_R2.fastq.gz,trimmed_A549_replicate_5_R2.fastq.gz \ #all mate ones (-1) and twos (-2) to be aligned to reference genome
 --no-softclip -S A549.sam # disable soft clipping and output alignment in sam format