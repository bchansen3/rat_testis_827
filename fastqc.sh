#!/bin/bash

source ~/miniconda3/bin/activate

conda activate fastqc_env

echo "activated"

cd /bigdata/faustmanlab/bch/testis_coculture_baseline/usftp21.novogene.com/01.RawData/

echo "here"

fastqc */*.fq.gz

multiqc .

echo "DONE"