#!/usr/bin/env bash
cd $CI_PROJECT_DIR
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -o $CI_PROJECT_DIR/output-mt --current "snakemake --dag preprocessing.done | dot -Tpdf > $CI_PROJECT_DIR/preprocessing.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -o $CI_PROJECT_DIR/output-mt --current "snakemake --dag assembly.done | dot -Tpdf > $CI_PROJECT_DIR/assembly.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -o $CI_PROJECT_DIR/output-mt --current "snakemake --dag binning.done | dot -Tpdf > $CI_PROJECT_DIR/binning.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -o $CI_PROJECT_DIR/output-mt --current "snakemake --dag report.done | dot -Tpdf > $CI_PROJECT_DIR/report.pdf"

./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -o $CI_PROJECT_DIR/output-mt-nf --current "snakemake --dag preprocessing.done | dot -Tpdf > $CI_PROJECT_DIR/preprocessing-nf.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -o $CI_PROJECT_DIR/output-mt-nf --current "snakemake --dag assembly.done | dot -Tpdf > $CI_PROJECT_DIR/assembly-nf.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -o $CI_PROJECT_DIR/output-mt-nf --current "snakemake --dag binning.done | dot -Tpdf > $CI_PROJECT_DIR/binning-nf.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -o $CI_PROJECT_DIR/output-mt-nf --current "snakemake --dag report.done | dot -Tpdf > $CI_PROJECT_DIR/report-nf.pdf"

./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -o $CI_PROJECT_DIR/output-mt-np --current "snakemake --dag preprocessing.done | dot -Tpdf > $CI_PROJECT_DIR/preprocessing-np.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -o $CI_PROJECT_DIR/output-mt-np --current "snakemake --dag assembly.done | dot -Tpdf > $CI_PROJECT_DIR/assembly-np.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -o $CI_PROJECT_DIR/output-mt-np --current "snakemake --dag binning.done | dot -Tpdf > $CI_PROJECT_DIR/binning-np.pdf"
./IMP -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -o $CI_PROJECT_DIR/output-mt-np --current "snakemake --dag report.done | dot -Tpdf > $CI_PROJECT_DIR/report-np.pdf"
