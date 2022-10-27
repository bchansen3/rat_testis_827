#!/bin/bash

## script to map fastq reads to rat genome using STAR

# run FASTqc first (use conda env fastqc_env)

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# define  the gene index

index=/bigdata/faustmanlab/bch/rat_150read_genome

# provide direction to fastq files
FILES=/bigdata/faustmanlab/bch/gse85420/fastq/*.fq.gz

for f in $FILES
do
    echo $f
    base=$(basename $f .fq.gz)
    echo $base
    STAR --runThreadN 4 --genomeDir $index --readFilesIn $f --outSAMtype BAM SortedByCoordinate \
         --quantMode GeneCounts --readFilesCommand zcat --outFileNamePrefix /bigdata/faustmanlab/bch/gse85420/$base"_"
done

echo "hopefully that worked!"