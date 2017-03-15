#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/vol1/*nt_ncRNAs/Chr*.fa
genomelibraries=/vol1/3KRiceReads/data/*/*.library

index=0
for query in $queries
do
    if [ $index -lt 10 ]; then
        #echo "index is $index, query is $query"
        for library in $genomelibraries
            do
                ( sh SRAssembler_run_generator.sh $query $library cdna "23" ) >> "$(date +%F)"_run.sh
            done
        (( index += 1 ))
    else
        break
    fi
done

