#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/N/dc2/scratch/twmccart/Mason/OSprobes/XP_015620933.1.fa
genomelibraries=/N/dc2/scratch/twmccart/3KRiceReads/data/*/*.library

echo "#!/bin/bash" >> "$(date +%F)"_Masonrun.pbs
echo "#PBS -k o" >> "$(date +%F)"_Masonrun.pbs
echo "#PBS -l nodes=1:ppn=24,walltime=10:00:00,vmem=60gb" >> "$(date +%F)"_Masonrun.pbs
echo "#PBS -M twmccart@iu.edu" >> "$(date +%F)"_Masonrun.pbs
echo "#PBS -m abe" >> "$(date +%F)"_Masonrun.pbs
echo "#PBS -N JobName" >> "$(date +%F)"_Masonrun.pbs
echo "#PBS -j oe" >> "$(date +%F)"_Masonrun.pbs

index=0
for query in $queries
do
    #if [ $index -lt 10 ]; then
    if true; then
        #echo "index is $index, query is $query"
        for library in $genomelibraries
            do
                ( sh SRAssembler_run_generator.sh $query $library protein "24" ) >> "$(date +%F)"_Masonrun.pbs
            done
        (( index += 1 ))
    else
        break
    fi
done

