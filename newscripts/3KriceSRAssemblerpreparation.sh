#!/bin/bash
set -euo pipefail

# This script takes a list of 3K rice genomes cultivar names (or directories)
# as input. Fastq readfiles are downloaded using the xgetreads script, library
# configuration files are generated, and SRAssembler is run in Pre-process mode
# in preparation for future runs.
# This script requires xgetreads, rice_line_metadata_20140521.tsv, and
# seq_file_mapping_to_SRA.txt.gz present in the same directory

trap '(echo $0; date; hostname) | mail -s "EARLY EXIT from $0" "twmccart@iu.edu"' EXIT

# If run with "*/" as the argument in a directory full of empty directories
# named after cultivars, the trailing "/" will be stripped.
cultivars=`echo $* | sed 's|[/]||g'`

for cultivar in $cultivars
do
# Download 3K reads
    # Red text to stand out
    echo -e "\e[1;31mcultivar is: $cultivar\e[0m"
    ./xgetreads $cultivar | \
    # This grep is necessary to eliminate some unwanted matches
    grep wget | \
    grep -o "ftp.*gz" | \
    xargs -n 1 -P "$(($(nproc) - 2 ))" wget --no-clobber --directory-prefix=./$cultivar/
    gunzip ./$cultivar/*.gz
    echo -e "\e[1;31mreads downloaded\e[0m"
# Generate SRAssembler library configuration files
    # The input list of sequence read files must be in interleaved order
    filearray=($(readlink -f ./$cultivar/*.fastq))
    # These variables can be changed, but all the libraries must have the same
    # settings
    insert_size=500
    direction=0
    format=fastq
    # Begin library generation
    rm -f ./$cultivar/${cultivar}.library
    index=0
    while (( index < ${#filearray[@]} ))
        do
            echo "[LIBRARY]" >> ./$cultivar/${cultivar}.library
            echo "insert_size=$insert_size" >> ./$cultivar/${cultivar}.library
            echo "direction=$direction" >> ./$cultivar/${cultivar}.library
            echo "r1=${filearray[$index]}" >> ./$cultivar/${cultivar}.library
            let "index += 1"
            echo "r2=${filearray[$index]}" >> ./$cultivar/${cultivar}.library
            let "index += 1"
            echo "format=$format" >> ./$cultivar/${cultivar}.library
            echo "" >> ./$cultivar/${cultivar}.library
        done
# Run SRAssembler with -P option to pre-process reads
    # Red text to stand out
    echo -e "\e[1;31mPre-processing reads\e[0m"
    # Assign some variables
    library=$(readlink -f ./$cultivar/${cultivar}.library)
    libraryname=$(expr "$library" : '.*/\(.*\)\..*')
    librarylocation=$(expr "$library" : '\(.*\)/.*')
    readslocation=$librarylocation"/SRA_reads_data"
    SRAconfigurationfile="/home/twmccart/SRAssembler/data/SRAssembler.conf"
    #SRAconfigurationfile="/scratch/twmccart/SRAssembler/data/SRAssembler.conf"
    # Run SRAssembler. A query and type are required even though the -P option
    # prevents any assembly from actually occuring.
    mpirun -n "$(($(nproc) - 2 ))" SRAssembler_MPI -p $SRAconfigurationfile -l $library -r $readslocation -o ./$cultivar -P -q $library -t cdna && {
    # Provided that SRAssembler runs correctly, remove files that are no longer
    # necessary. The reads are now available in the SRA_reads_data directories.
    mv ./$cultivar/output/msg.log ./$cultivar/processing_msg.log &&
    rm -r ./$cultivar/*.fastq ./$cultivar/output ./$cultivar/tmp
    echo -e "\e[1;31m$cultivar reads are processed.\e[0m"
    (date; hostname) | mail -s "$cultivar reads are processed" "twmccart@iu.edu"
    }
done

(echo $0; date; hostname) | mail -s "$0 run is complete" "twmccart@iu.edu"
# Restore exit status to normal so as to avoid warning email.
trap - EXIT
