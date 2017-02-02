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

#echo "============================================================================================================"
#echo " Test6: AtCESA7protein_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtCESA7protein_against_IRBB7
#../bin/SRAssembler -q AtCESA7protein.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_against_IRBB7 -A 0 -S 0 -s rice -n 10
## After adjusting Vmatch outputs, this completes in round 3 with 15 contig matches.

echo "============================================================================================================"
echo " Test7: OsCESA9protein_against_IRBB7"
echo "============================================================================================================"

mkdir -p OsCESA9protein_against_IRBB7.newSRAssembler
../bin/SRAssembler -q OsCESA9protein.fa -t protein -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o OsCESA9protein_against_IRBB7.newSRAssembler -A 0 -S 0 -s rice -n 10
## Completed

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
## Completes in round 9 with two huge contigs.

#echo "============================================================================================================"
#echo " Test14: AtCESA7CDS_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtCESA7CDS_against_IRBB7
#../bin/SRAssembler -q AtCESA7CDS.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtCESA7CDS_against_IRBB7 -A 0 -S 0 -s rice -n 10
## This run finished, but does not have any good final matching contigs


#echo "============================================================================================================"
#echo " Test15: AtCESA7gDNA_against_IRBB7"
#echo "============================================================================================================"

#mkdir -p AtCESA7gDNA_against_IRBB7
#../bin/SRAssembler -q AtCESA7gDNA.fa -t cdna -p SRAssemblerTest.conf -l Sample_IRBB7.library -r ./Sample_IRBB7_reads_data -x 50000 -o AtCESA7gDNA_against_IRBB7 -A 0 -S 0 -s rice -n 10
## This run finished, but does not have any good final matching contigs

#echo "============================================================================================================"
#mkdir -p AtCESA7proteinNhalf_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7proteinNhalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinNhalf_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10
## This ran to conclusion. 10 contigs identified as matches.

#echo "============================================================================================================"
#mkdir -p AtCESA7proteinChalf_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7proteinChalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinChalf_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10
## This ran to conclusion. 19 contigs identified as matches.

#echo "============================================================================================================"

#mkdir -p AtCESA7proteinmiddlehalf_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7proteinmiddlehalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinmiddlehalf_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10
## This ran to conclusion. 13 contigs identified as matches.

#echo "============================================================================================================"
#mkdir -p AtCESA7proteinNhalf_against_Sample_IRBB7_long && /usr/local/bin/SRAssembler -q AtCESA7proteinNhalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinNhalf_against_Sample_IRBB7_long -A 0 -S 0 -s rice -n 10 -c 0.9
# Notice the min_coverage argument.
# This ran to completion in round 2, and produced 10 matching contigs. I'm removing the results.

#echo "============================================================================================================"
#mkdir -p AtCESA7proteinChalf_against_Sample_IRBB7_long && /usr/local/bin/SRAssembler -q AtCESA7proteinChalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinChalf_against_Sample_IRBB7_long -A 0 -S 0 -s rice -n 10 -c 0.9
## Notice the min_coverage argument.
## This ran to completion in round 2, and produced 19 matching contigs. I'm removing the results.


#echo "============================================================================================================"

#mkdir -p AtCESA7proteinmiddlehalf_against_Sample_IRBB7_long && /usr/local/bin/SRAssembler -q AtCESA7proteinmiddlehalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinmiddlehalf_against_Sample_IRBB7_long -A 0 -S 0 -s rice -n 10 -c 0.9
## Notice the min_coverage argument.
## This ran to completion in round 2, and produced 13 matching contigs. I'm removing the results.


#echo "============================================================================================================"
#mkdir -p AtCESA7proteinNhalf_against_Sample_IRBB7_long && /usr/local/bin/SRAssembler -q AtCESA7proteinNhalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinNhalf_against_Sample_IRBB7_long -A 0 -S 0 -s rice -n 10 -w
## Notice the min_coverage argument.
## This ran 10 rounds without a problem and produced 8 matching contigs.



#echo "============================================================================================================"
#mkdir -p AtCESA7proteinChalf_against_Sample_IRBB7_long && /usr/local/bin/SRAssembler -q AtCESA7proteinChalf.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7proteinChalf_against_Sample_IRBB7_long -A 0 -S 0 -s rice -n 10 -w
## Notice the min_coverage argument.
## This caused a storage explosion in round 3


#echo "============================================================================================================"
#mkdir -p AtCESA7protein_0.5-0.75_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7protein_0.5-0.75.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_0.5-0.75_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10 -w
## This caused a storage explosion in round 6


#echo "============================================================================================================"
#mkdir -p AtCESA7protein_0.75-1.0_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7protein_0.75-1.0.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_0.75-1.0_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10 -w
## It looks like this was going to cause a storage explosion in round 3, but the vmatch results files were ~0.5 GB rather than 2 GB.

#echo "============================================================================================================"
#mkdir -p AtCESA7protein_0.5-0.625_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7protein_0.5-0.625.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_0.5-0.625_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10 -w
## Completed without incident. produced 10 matching contigs

#echo "============================================================================================================"
#mkdir -p AtCESA7protein_0.625-0.75_against_Sample_IRBB7 && /usr/local/bin/SRAssembler -q AtCESA7protein_0.625-0.75.fa -t protein -p /scratch/twmccart/SRAssembler/data/SRAssembler.conf -l Sample_IRBB7.library -r /scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data -x 50000 -o AtCESA7protein_0.625-0.75_against_Sample_IRBB7 -A 0 -S 0 -s rice -n 10 -w
## Completed without incident. produced 8 matching contigs
