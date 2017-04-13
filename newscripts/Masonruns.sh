#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/N/dc2/scratch/twmccart/Mason/OSprobes/*.fa
genomelibraries=/N/dc2/scratch/twmccart/3KRiceReads/data/*/*.library

title="32ppn"

for query in $queries; do
    echo "#!/bin/bash" > ${query%.fa}_Masonrun.${title}.pbs
    echo "#PBS -k o" >> ${query%.fa}_Masonrun.${title}.pbs
    echo "#PBS -l nodes=1:ppn=32,walltime=24:00:00,vmem=60gb" >> ${query%.fa}_Masonrun.${title}.pbs
    echo "#PBS -M twmccart@iu.edu" >> ${query%.fa}_Masonrun.${title}.pbs
    echo "#PBS -m abe" >> ${query%.fa}_Masonrun.${title}.pbs
    echo "#PBS -N ${query##*/}.${title}" >> ${query%.fa}_Masonrun.${title}.pbs
    echo "#PBS -j oe" >> ${query%.fa}_Masonrun.${title}.pbs
    for library in $genomelibraries; do
        ( sh ~/SRAssembler/newscripts/SRAssembler_run_generatorMason.sh $query $library protein "32" ) >>
 ${query%.fa}_Masonrun.${title}.pbs
        done
    cp ${query%.fa}_Masonrun.${title}.pbs /N/dc2/scratch/twmccart/Mason/
done
