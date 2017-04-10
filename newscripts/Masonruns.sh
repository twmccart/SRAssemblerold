#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/N/dc2/scratch/twmccart/Mason/OSprobes/*.fa
genomelibraries=/N/dc2/scratch/twmccart/3KRiceReads/data/*/*.library

for query in $queries; do
    echo "#!/bin/bash" > ${query}_Masonrun.pbs
    echo "#PBS -k o" >> ${query}_Masonrun.pbs
    echo "#PBS -l nodes=1:ppn=24,walltime=10:00:00,vmem=60gb" >> ${query}_Masonrun.pbs
    echo "#PBS -M twmccart@iu.edu" >> ${query}_Masonrun.pbs
    echo "#PBS -m abe" >> ${query}_Masonrun.pbs
    echo "#PBS -N ${query}" >> ${query}_Masonrun.pbs
    echo "#PBS -j oe" >> ${query}_Masonrun.pbs
    for library in $genomelibraries; do
        ( sh SRAssembler_run_generator.sh $query $library protein "24" ) >> ${query}_Masonrun.pbs
        done
done

