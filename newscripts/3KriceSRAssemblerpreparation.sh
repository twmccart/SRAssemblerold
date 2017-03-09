#! /bin/bash
set -e
set -u
# This script takes a list of 3K rice genomes cultivar names (or directories)
# as input. Fastq readfiles are downloaded using the xgetreads script, library
# configuration files are generated, and SRAssembler is run in Pre-process mode
# in preparation for future runs.

# If run with "*/" as the argument in a directory full of empty directories named after cultivars, the trailing "/" will be stripped.
cultivars=`echo $* | sed 's|[/]||g'`

for cultivar in $cultivars
do
# Download 3K reads
	echo "cultivar is:" $cultivar
	./xgetreads $cultivar | \
	# This grep is necessary to eliminate some unwanted matches
	grep wget | \
	grep -o "ftp.*gz" | \
	xargs -n 1 -P 8 wget --no-clobber --directory-prefix=./$cultivar/
	gunzip ./$cultivar/*.gz && rm ./$cultivar/*.gz
	echo "reads downloaded"
# Generate SRAssembler library configuration files
	# The input list of sequence read files must be in interleaved order
	filearray=$(readlink -f ./$cultivar/*.fastq)
	# These variables can be changed, but all the libraries must have the same
	# settings
	insert_size=500
	direction=0
	format=fastq
	# Begin library generation
	index=0
	while ((index<$#))
		do
			echo "[LIBRARY]" >> ./$cultivar/${cultivar}.library
			echo "insert_size=$insert_size" >> ./$cultivar/${cultivar}.library
			echo "direction=$direction" >> ./$cultivar/${cultivar}.library
			echo "r1=${filearray[$index]}" >> ./$cultivar/${cultivar}.library
			let "index += 1" >> ./$cultivar/${cultivar}.library
			echo "r2=${filearray[$index]}" >> ./$cultivar/${cultivar}.library
			let "index += 1" >> ./$cultivar/${cultivar}.library
			echo "format=$format" >> ./$cultivar/${cultivar}.library
			echo "" >> ./$cultivar/${cultivar}.library
		done
# Run SRAssembler with -P option to pre-process reads
	echo "Pre-processing reads"
	# Assign some variables
	library=$(readlink -f ./$cultivar/${cultivar}.library)
	libraryname=$(expr "$library" : '.*/\(.*\)\..*')
	librarylocation=$(expr "$library" : '\(.*\)/.*')
	readslocation=$librarylocation"/SRA_reads_data"
	SRAconfigurationfile="~/SRAssembler/data/SRAssembler.conf"
	# Run SRAssembler. A query and type are required even though the -P option
	# prevents any assembly from actually occuring.
	SRAssembler -p $SRAconfigurationfile -l $library -r $readslocation -P -q $library -t cdna && \
	# Provided that SRAssembler runs correctly, remove files that are no longer
	# necessary. The reads are now available in the SRA_reads_data directories.
	mv ./$cultivar/output/msg.log ./$cultivar/ && \
	rm -r ./$cultivar/*.fastq ./$cultivar/output ./$cultivar/tmp
	echo "$cultivar reads are processed."
done

