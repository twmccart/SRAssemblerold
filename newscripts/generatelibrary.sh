#! /bin/bash
# This script takes a .tsv input file
# Each line in the file should have filenames 
filearray=( $* )
insert_size=500
direction=0
format=fastq

index=0
for i in {0..`expr $#/2`..1}
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
	
