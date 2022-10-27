#!/bin/bash

## script to map fastq reads to rat genome using STAR

# run FASTqc first (use conda env fastqc_env)

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# define  the gene index
# define  the gene index

index=/bigdata/faustmanlab/bch/rat_150read_genome

# provide direction to fastq files
fold=/bigdata/faustmanlab/bch/testis_coculture_baseline/usftp21.novogene.com/01.RawData

FILES=($fold/A_827_S1/A_827_S1_1.fq.gz,$fold/B_827_S2/B_827_S2_1.fq.gz,$fold/C_827_S3/C_827_S3_1.fq.gz,$fold/D1_A2_Day3/D1_A2_Day3_1.fq.gz,$fold/D1_A3_Day5/D1_A3_Day5_1.fq.gz,$fold/D1_A4_Day7/D1_A4_Day7_1.fq.gz,$fold/D2_A3_Day5/D2_A3_Day5_1.fq.gz,$fold/D2_A4_Day7/D2_A4_Day7_1.fq.gz,$fold/D3_A2_Day3/D3_A2_Day3_1.fq.gz,$fold/D3_A3_Day5/D3_A3_Day5_1.fq.gz,$fold/D3_A4_Day7/D3_A4_Day7_1.fq.gz,$fold/D4_A2_Day3/D4_A2_Day3_1.fq.gz $fold/A_827_S1/A_827_S1_2.fq.gz,$fold/B_827_S2/B_827_S2_2.fq.gz,$fold/C_827_S3/C_827_S3_2.fq.gz,$fold/D1_A2_Day3/D1_A2_Day3_2.fq.gz,$fold/D1_A3_Day5/D1_A3_Day5_2.fq.gz,$fold/D1_A4_Day7/D1_A4_Day7_2.fq.gz,$fold/D2_A3_Day5/D2_A3_Day5_2.fq.gz,$fold/D2_A4_Day7/D2_A4_Day7_2.fq.gz,$fold/D3_A2_Day3/D3_A2_Day3_2.fq.gz,$fold/D3_A3_Day5/D3_A3_Day5_2.fq.gz,$fold/D3_A4_Day7/D3_A4_Day7_2.fq.gz,$fold/D4_A2_Day3/D4_A2_Day3_2.fq.gz)


STAR --runThreadN 4 --genomeDir $index --readFilesIn $FILES --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/$i"_"


echo "hopefully that worked!"