#! /bin/bash
# Argument 1 should be the library configuration file

libraryfile=$1
BUSCOlist=`find /scratch/twmccart/SRAssembler/BUSCO/eukaryota_odb9_individualBUSCOs/ -name "*.fa" -print | shuf -n 10`

for BUSCO in $BUSCOlist
do
	command=`python /scratch/twmccart/SRAssembler/SRAssembler_run_generator.py --query $BUSCO --library $libraryfile`
	echo $command
	echo ""
	# source $command
done

