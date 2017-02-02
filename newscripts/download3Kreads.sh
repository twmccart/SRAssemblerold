#! /bin/bash

#cultivars=`echo */ | sed 's|[/]||g'`
cultivars=`echo $* | sed 's|[/]||g'`

for cultivar in $cultivars
do
	echo "cultivar is:" $cultivar
	./xgetreads $cultivar | \
	# This grep is necessary to eliminate some unwanted matches
	grep wget | \
	grep -o "ftp.*gz" | \
	xargs wget --no-verbose --no-clobber --show-progress --directory-prefix=./$cultivar/
done

# This code can work if you download the lists of runs for your cultivars from
# NCBI SRA Run Selector and save each list in the appropriate directory.
# This method does not scale.

#cultivars=`echo */ | sed 's|[/]||g'`
#cultivars=`echo $* | sed 's|[/]||g'`
#for cultivar in $cultivars
#do
	#echo "cultivar is $cultivar"
	#for line in `cat $cultivar/SRR_Acc_List.txt`
	#do
		##echo "line is $line"
		#~/.aspera/connect/bin/ascp \
		#-i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh \
		#-k 1 -T -l200m \
		#anonftp@ftp.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/`expr "$line" : '\(^...\)'`/`expr "$line" : '\(^......\)'`/"$line"/"$line".sra \
		#./$cultivar/
	#done
	## Rename the SRR_Acc_List.txt file so that this script can be run again
	## when new cultivars are added.
	#mv $cultivar/SRR_Acc_List.txt $cultivar/SRR_Acc_List.txt.processed
#done
