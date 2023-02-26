#bowtie：1.1.1
#Rfam:version 10.0
#miRBase ：version 22.0


bowtie -f -v mismatch -p 20 -S genome.fa sample.uniq.fa --al sample.genome.aligned.uniq.fa -un  sample.genome.unaligned.uniq.fa --quiet sam
bowtie -f -v mismatch  -p 20 -S Rfam.fa sample.uniq.fa --al sample.Rfam.aligned.uniq.fa -un  sample.Rfam.unaligned.uniq.fa --quiet sam
bowtie -f -v mismatch  -p 20 -S transcriptome.fa sample.Rfam.uniq.unaligned.fa --al sample.gene.aligned.uniq.fa -un  sample.gene.unaligned.uniq.fa --quiet sam
bowtie -f -v mismatch  -p 20 -SRepbase.fa sample.gene.uniq.unaligned.fa --al sample.repeat.aligned.uniq.fa -un  sample.repeat.unaligned.uniq.fa --quiet sam
bowtie -f -v mismatch  -p 20 -S miRNA.fa sample.repeat.uniq.unaligned.fa --al sample.miRNA.aligned.uniq.fa -un  sample.miRNA.unaligned.uniq.fa --quiet sam