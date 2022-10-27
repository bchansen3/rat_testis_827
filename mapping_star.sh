#!/bin/bash

## script to map fastq reads to rat genome using STAR

# run FASTqc first (use conda env fastqc_env)

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# define  the gene index

index=/bigdata/faustmanlab/bch/rat_150read_genome

# provide direction to fastq files
FILES=/bigdata/faustmanlab/bch/gse85420/fastq/*.fq.gz


for i in $(raw_data/270,raw_data/272, raw_data/274,raw_data/278C,raw_data/284C); do 
/DataAnalysis/STAR-2.7.5a/bin/Linux_x86_64/./STAR --genomeDir /DataAnalysis/Manoj-data/test-star/SAindex \
    --readFilesIn raw_data/${i}_R1.fastq raw_data/${i}_R2.fastq \
    --runThreadN 8 --outFileNamePrefix aligned/$i. \
    --outSAMtype BAM SortedByCoordinate \
    --quantMode GeneCounts; done

for f in $FILES
do
    echo $f
    base=$(basename $f .fq.gz)
    echo $base
    STAR --runThreadN 4 --genomeDir $index --readFilesIn $f --outSAMtype BAM SortedByCoordinate \
         --readFilesCommand zcat --outFileNamePrefix /bigdata/faustmanlab/bch/gse85420/$base"_"
done

echo "hopefully that worked!"
