#! /bin/bash
# Argument 1 should be the library configuration file

libraryfile=$1
BUSCOlist=`find /scratch/twmccart/SRAssembler/BUSCO/eukaryota_odb9_individualBUSCOs/ -name "*.fa" -print | shuf -n 10`

for BUSCO in $BUSCOlist
do
	command=`bash ~/Scripts/SRAssembler_run_generator.sh $BUSCO $libraryfile "protein" `
	echo $command ";"
	#echo ""
	#source $command
done


