#! /bin/bash
# This script takes a list of file names and outputs an SRAssembler library
# configuration file. 

# A useful way to input absolute paths of the reads you are using:
# find `pwd` -name "*.fastq" -print | sort | xargs /scratch/twmccart/SRAssembler/newscripts/generatelibrary.sh

# The input list of sequence read files must be in interleaved order
filearray=( $* )

# These variables can be changed, but all the libraries must have the same
# settings
insert_size=500
direction=0
format=fastq

index=0
while ((index<$#))
	do
		echo "[LIBRARY]"
		echo "insert_size=$insert_size"
		echo "direction=$direction"
		echo "r1=${filearray[$index]}"
		let "index += 1"
		echo "r2=${filearray[$index]}"
		let "index += 1"
		echo "format=$format"
		echo ""
	done
	
