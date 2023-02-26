#v3.3a

#miranda for animal
miranda miRNA.fa transcriptome.fa -sc 150 -en -30  -strict -quiet  -out miRNA.target.info.txt

#targetfinder for plant
perl targetfinder_threads.pl -t 10 -f miRNA.fa -d transcriptome.fa -p classic -o target.result.txt