#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/vol1/*nt_ncRNAs/Chr*.fa
genomelibraries=/vol1/3KRiceReads/data/*/*.library

index=0
while [ $index -lt 10 ]
do
    for query in $queries
    do
        (( index += 1 ))
        for library in $genomelibraries
        do
            ( sh SRAssembler_run_generator.sh $query $library cdna "23" ) >> "$(date +%F)"_run.sh
        done
    done
done

