
#echo "============================================================================================================"
#echo " Test6: AtCESA7protein_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtCESA7protein_against_IRBB7
#../bin/SRAssembler -q AtCESA7protein.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Incomplete


#echo "============================================================================================================"
#echo " Test13: OsBIGgDNA_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p Os09g07300gDNA_against_IRBB7
#../bin/SRAssembler -q Os09g07300gDNA.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o Os09g07300gDNA_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Does not complete


echo "============================================================================================================"
echo "Test: 'Chr10:13976725-13977273'"
echo "============================================================================================================"
	
	mkdir -p 'Chr10:13976725-13977273'
	/scratch/twmccart/SRAssembler/IRBB7_testing/../bin/SRAssembler -q $FILE -t cdna -p /scratch/twmccart/SRAssembler/IRBB7_testing/SRAssemblerTest.conf -l ./Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o 'Chr10:13976725-13977273' -s rice -n 10 -w
	## The '-w' flag means that the run will continue for '-n' rounds unless the contigs can't be extended further.
