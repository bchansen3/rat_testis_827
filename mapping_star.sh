#!/bin/bash

## script to map fastq reads to rat genome using STAR

# run FASTqc first (use conda env fastqc_env)

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# define  the gene index

index=/bigdata/faustmanlab/bch/rat_150read_genome

# provide direction to fastq files
<<<<<<< HEAD
fold=/bigdata/faustmanlab/bch/testis_coculture_baseline/usftp21.novogene.com/01.RawData


# A_827_S1
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/A_827_S1/A_827_S1_1.fq.gz $fold/A_827_S1/A_827_S1_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/A_827_S1/

# B_827_S2
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/B_827_S2/B_827_S2_1.fq.gz $fold/B_827_S2/B_827_S2_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/B_827_S2/
# C_827_S3
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/C_827_S3/C_827_S3_1.fq.gz $fold/C_827_S3/C_827_S3_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/C_827_S3/
# D1_A2_Day3
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D1_A2_Day3/D1_A2_Day3_1.fq.gz $fold/D1_A2_Day3/D1_A2_Day3_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D1_A2_Day3/

# D1_A3_Day5
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D1_A3_Day5/D1_A3_Day5_1.fq.gz $fold/D1_A3_Day5/D1_A3_Day5_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D1_A3_Day5/

# D2_A4_Day7
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D2_A4_Day7/D2_A4_Day7_1.fq.gz $fold/D2_A4_Day7/D2_A4_Day7_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D2_A4_Day7/

# D1_A4_Day7
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D1_A4_Day7/D1_A4_Day7_1.fq.gz $fold/D1_A4_Day7/D1_A4_Day7_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D1_A4_Day7/

# D2_A3_Day5
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D2_A3_Day5/D2_A3_Day5_1.fq.gz $fold/D2_A3_Day5/D2_A3_Day5_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D2_A3_Day5/

# D3_A4_Day7
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D3_A4_Day7/D3_A4_Day7_1.fq.gz $fold/D3_A4_Day7/D3_A4_Day7_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D3_A4_Day7

# D3_A2_Day3
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D3_A2_Day3/D3_A2_Day3_1.fq.gz $fold/D3_A2_Day3/D3_A2_Day3_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D3_A2_Day3

# D3_A3_Day5
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D3_A3_Day5/D3_A3_Day5_1.fq.gz $fold/D3_A3_Day5/D3_A3_Day5_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D3_A3_Day5/

# D4_A2_Day3
STAR --runThreadN 4 --genomeDir $index --readFilesIn $fold/D4_A2_Day3/D4_A2_Day3_1.fq.gz $fold/D4_A2_Day3/D4_A2_Day3_2.fq.gz \
     --outSAMtype BAM SortedByCoordinate \
     --quantMode GeneCounts --readFilesCommand zcat \
     --outFileNamePrefix /bigdata/faustmanlab/bch/testis_coculture_baseline/aligned/D4_A2_Day3/
=======
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
>>>>>>> a430e8d3efa794bc353d74601afa813c527ccf15
