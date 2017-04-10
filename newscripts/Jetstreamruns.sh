#!/usr/bin/bash
set -euo pipefail

# These must be absolute paths
queries=/vol_c/RiceProteinsforVolker/*.fa
genomelibraries=/vol_b/3KRiceReads/data/*/*.library

echo $'trap \'(echo $0; date; hostname) | mailx -s \"EARLY EXIT from $0\" \"twmccart@iu.edu\"\' EXIT' >> "$(date +%F)"_run.sh

index=0
for query in $queries
do
    #if [ $index -lt 10 ]; then
    if true; then
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
echo $'(echo $0; date; hostname) | mailx -s \"$0 run is complete\" \"twmccart@iu.edu\"' >> "$(date +%F)"_run.sh
echo "trap - EXIT" >> "$(date +%F)"_run.sh
