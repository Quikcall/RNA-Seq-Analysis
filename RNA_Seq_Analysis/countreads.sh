#!/bin/bash
for fq in `ls *.bam`
do
	echo ======
	echo $fq
	echo ======	
	htseq-count -f bam -s no -i gene_id $fq Homo_sapiens.GRCh38.96.gtf.gz > "$fq".readcounts
done

