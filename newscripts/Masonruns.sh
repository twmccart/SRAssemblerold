#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/N/dc2/scratch/twmccart/Mason/OSprobes/*.fa
genomelibraries=/N/dc2/scratch/twmccart/3KRiceReads/data/*/*.library

for query in $queries; do
    echo "#!/bin/bash" > ${query%.fa}_Masonrun.pbs
    echo "#PBS -k o" >> ${query%.fa}_Masonrun.pbs
    echo "#PBS -l procs=24,walltime=24:00:00,vmem=60gb" >> ${query%.fa}_Masonrun.pbs
    echo "#PBS -M twmccart@iu.edu" >> ${query%.fa}_Masonrun.pbs
    echo "#PBS -m abe" >> ${query%.fa}_Masonrun.pbs
    echo "#PBS -N ${query##*/}" >> ${query%.fa}_Masonrun.pbs
    echo "#PBS -j oe" >> ${query%.fa}_Masonrun.pbs
    for library in $genomelibraries; do
        ( sh SRAssembler_run_generatorMason.sh $query $library protein "24" ) >> ${query%.fa}_Masonrun.pbs
        done
    cp ${query%.fa}_Masonrun.pbs /N/dc2/scratch/twmccart/Mason/
done

