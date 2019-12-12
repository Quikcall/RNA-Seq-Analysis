#!/bin/bash

for fq in `ls *.fastq.gz`
do
	echo $fq
	java -jar /opt/conda/pkgs/trimmomatic-0.39-1/share/trimmomatic-0.39-1/trimmomatic.jar SE $fq TRIMMED_"$fq" ILLUMINACLIP:/NGSDatasets/adapters/IlluminaHiSeq2000/TruSeq3-SE.fa:2:30:10 HEADCROP:12
done