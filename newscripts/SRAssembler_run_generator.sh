#!/usr/bin/bash
set -euo pipefail
# Take as arguments the path to the query fasta file,the library configuration file, the query type, and optionally the number of nodes to use in MPI mode

if [ $# -lt 3 ] || [ $# -gt 4 ] ; then
    echo "Usage: SRAssembler_run_generator.sh query_path library_path query_type [mpi node number]" >/dev/tty ;
    exit 1
fi

query=$1
queryname=$(expr "$query" : '.*/\(.*\)\..*')

library=$2
libraryname=$(expr "$library" : '.*/\(.*\)\..*')
librarylocation=$(expr "$library" : '\(.*\)/.*')

# This should be "protein" or "cdna"
querytype=$3

outputdirectory=$queryname"_against_"$libraryname
SRAlocation="/usr/local/bin"
SRAconfigurationfile="/scratch/twmccart/SRAssembler/data/SRAssembler.conf"
readslocation=$librarylocation"/SRA_reads_data"

if [ ! -z $4 ] ; then
    echo ""
    echo "mkdir -p "$outputdirectory" && mpirun -n "$4" "${SRAlocation}/SRAssembler_MPI" -q "$query" -t "$querytype" -p "$SRAconfigurationfile" -l "$library" -r "$readslocation" -o "$outputdirectory" -A 0 -S 0 -s rice -n 10 -c 0.9"
else
    echo ""
    echo "mkdir -p "$outputdirectory" && "$SRAlocation"/SRAssembler -q "$query" -t "$querytype" -p "$SRAconfigurationfile" -l "$library" -r "$readslocation" -o "$outputdirectory" -A 0 -S 0 -s rice -n 10 -c 0.9"
fi
