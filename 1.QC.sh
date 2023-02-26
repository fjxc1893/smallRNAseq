#cutadapt: 1.14   
#Fastx-Toolkit: 0.0.14
#NGSQCToolkit: v2.3.3

cutadapt -a sample Sample_data/sample/sample_R1.fastq.gz -m 1 > Sample_data/sample/sample.deadaptor.fq
Fastx-toolkit/0.0.14/bin/fastq_quality_filter -q 20 -p 80 -i Sample_data/sample/sample.deadaptor.length.fastq -o Sample_data/sample/sample.2.fq -Q 33
NGS_QC_Toolkit/NGSQCToolkit_v2.3.3/Trimming/AmbiguityFiltering.pl -i Sample_data/sample/sample.2.fq -o Sample_data/sample/sample.clean.reads.fq
Fastx-toolkit/0.0.14/bin/fastq_to_fasta -n -i Sample_data/sample/sample.clean.reads.fq -o Sample_data/sample/sample.fa
Fastx-toolkit/0.0.14/bin/fastx_collapser -v -i Sample_data/sample/sample.fa -o Sample_data/sample/sample.uniq.fa -Q33