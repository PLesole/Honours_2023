#!/bin/bash
grep -P "\tgene\t" Gencode.v43.primary_assembly.annotation.gtf | cut -f1,4,5,7,9 | \ #extract genes from gtf file and extract columns 1,4,5,7,9
sed 's/[[:space:]]/\t/g' | sed 's/[;|"]//g' | \ # replace spaces with tabs and remove characters such as ; and "
awk -F $'\t' 'BEGIN { OFS=FS } { print $1,$2-1,$3,$6,".",$4,$10,$12,$14 }' | \ # awk sets input and output field separators into tabs and prints modified version of input data; $2-1 used to convert 1-based genomic coordinates into 0-based format
sort -k1,1 -k2,2n > Gencode.v43.primary_assembly.annotation.bed # sort input using first and second columns and saved into bed file