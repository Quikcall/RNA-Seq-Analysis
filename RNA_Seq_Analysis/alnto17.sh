#!/bin/bash
for fq in `ls TRIMMED*.fastq.gz`
do
	echo $fq
	bwa aln chr17.fa.gz $fq > "$fq".sai
done