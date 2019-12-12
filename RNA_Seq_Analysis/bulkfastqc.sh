#!/bin/bash
for fq in `ls *.fastq.gz`
do
	echo $fq
	fastqc $fq
done