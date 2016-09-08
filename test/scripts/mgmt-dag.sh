#!/usr/bin/env bash
cd $CI_PROJECT_DIR

set -e
echo 'MGMT default DAGs'
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output --current "bash -c 'snakemake --dag preprocessing.done | dot -Tpdf output/preprocessing.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output --current "bash -c 'snakemake --dag assembly.done | dot -Tpdf output/assembly.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output --current "bash -c 'snakemake --dag binning.done | dot -Tpdf output/binning.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/default.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output --current "bash -c 'snakemake --dag report.done | dot -Tpdf output/report.pdf'"

echo 'MGMT no filtering DAGs'
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-nf --current "bash -c 'snakemake --dag preprocessing.done | dot -Tpdf output/preprocessing-nf.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-nf --current "bash -c 'snakemake --dag assembly.done | dot -Tpdf output/assembly-nf.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-nf --current "bash -c 'snakemake --dag binning.done | dot -Tpdf output/binning-nf.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_filtering.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-nf --current "bash -c 'snakemake --dag report.done | dot -Tpdf output/report-nf.pdf'"

echo 'MGMT skip preprocessing DAGs'
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-np --current "bash -c 'snakemake --dag preprocessing.done | dot -Tpdf output/preprocessing-np.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-np --current "bash -c 'snakemake --dag assembly.done | dot -Tpdf output/assembly-np.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-np --current "bash -c 'snakemake --dag binning.done | dot -Tpdf output/binning-np.pdf'"
./IMP -m $CI_PROJECT_DIR/test/MG.R1.small.fq -m $CI_PROJECT_DIR/test/MG.R2.small.fq -t $CI_PROJECT_DIR/test/MT.R1.small.fq -t $CI_PROJECT_DIR/test/MT.R2.small.fq -c $CI_PROJECT_DIR/test/no_preprocessing.conf.json -d /mnt/data/db -o $CI_PROJECT_DIR/output-np --current "bash -c 'snakemake --dag report.done | dot -Tpdf output/report-np.pdf'"
