#!/bin/bash

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# set directory
cd /bigdata/faustmanlab/bch/

# STAR command 

STAR --runThreadN 4 \
--runMode genomeGenerate \
--genomeDir /bigdata/faustmanlab/bch/rat_150read_genome \
--genomeFastaFiles /bigdata/faustmanlab/bch/toplevel/Rattus_norvegicus.mRatBN7.2.dna.toplevel.fa \
--sjdbGTFfile /bigdata/faustmanlab/bch/rat_genome/gtf_file/Rattus_norvegicus.mRatBN7.2.108.gtf \
--sjdbOverhang 149