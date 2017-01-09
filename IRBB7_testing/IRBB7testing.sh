#!/bin/bash

#echo "============================================================================================================"
#echo " Test1: AtGAUT1_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtGAUT1_against_IRBB7
#../bin/SRAssembler -q AtGAUT1.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtGAUT1_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test2: AtPAE8_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtPAE8_against_IRBB7
#../bin/SRAssembler -q AtPAE8.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtPAE8_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test3: AtPAE9_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtPAE9_against_IRBB7
#../bin/SRAssembler -q AtPAE9.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtPAE9_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test4: AtPMEI1_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtPMEI1_against_IRBB7
#../bin/SRAssembler -q AtPMEI1.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtPMEI1_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test5: AtPMEI2_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtPMEI2_against_IRBB7
#../bin/SRAssembler -q AtPMEI2.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtPMEI2_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

echo "============================================================================================================"
echo " Test6: AtCESA7protein_against_IRBB7"
echo "============================================================================================================"

mkdir -p AtCESA7protein_against_IRBB7
../bin/SRAssembler -q AtCESA7protein.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Incomplete

#echo "============================================================================================================"
#echo " Test7: OsCESA9protein_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p OsCESA9protein_against_IRBB7
#../bin/SRAssembler -q OsCESA9protein.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o OsCESA9protein_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test8: OsCESA9CDS_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p OsCESA9CDS_against_IRBB7
#../bin/SRAssembler -q OsCESA9CDS.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o OsCESA9CDS_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test9: AtCESA7protein_against_IRBB7_one_round"
#echo "============================================================================================================"

#mkdir -p AtCESA7protein_against_IRBB7_one_round
#../bin/SRAssembler -q AtCESA7protein.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_against_IRBB7_one_round -A 0 -S 0 -s rice -n 1
# Completed

#echo "============================================================================="
#echo " Test10: OsCESA9gDNA_against_IRBB7"
#echo "============================================================================="

#mkdir -p OsCESA9gDNA_against_IRBB7
#../bin/SRAssembler -q OsCESA9gDNA.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o OsCESA9gDNA_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test11: OsBIGcds_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p LOC_Os09g07300CDS_against_IRBB7
#../bin/SRAssembler -q LOC_Os09g07300CDS.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o LOC_Os09g07300CDS_against_IRBB7 -A 0 -S 0 -s rice -n 10
#Completed

#echo "============================================================================================================"
#echo " Test12: OsBIGprotein_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p LOC_Os09g07300.1_translation_against_IRBB7
#../bin/SRAssembler -q LOC_Os09g07300.1_translation.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o LOC_Os09g07300.1_translation_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Completed

#echo "============================================================================================================"
#echo " Test13: OsBIGgDNA_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p Os09g07300gDNA_against_IRBB7
#../bin/SRAssembler -q Os09g07300gDNA.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o Os09g07300gDNA_against_IRBB7 -A 0 -S 0 -s rice -n 10
# Does not complete
