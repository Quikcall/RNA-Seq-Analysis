for num in {5..8}
do
	fq="SRR663890$num"
	echo ===============
	echo $fq
	echo ===============
	bwa samse chr17.fa.gz "TRIMMED_$fq".fastq.gz.sai "TRIMMED_$fq".fastq.gz | samtools view -S - -b > "$fq".bam
done