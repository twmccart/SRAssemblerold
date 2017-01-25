#!/bin/bash

#echo "============================================================================================================"
#echo " Test1: AtGAUT1 against Physcomitrella."
#echo "============================================================================================================"

#mkdir -p AtGAUT1_against_SRR4023119
#../bin/SRAssembler -q AtGAUT1.fa -t protein -p SRAssemblerTest.conf -l SRR4023119.library -r ./SRR4023119_reads_data -x 50000 -o AtGAUT1_against_SRR4023119 -A 0 -S 0 -s arabidopsis -n 10

#echo "============================================================================================================"
#echo " Test2: AtPAE8 against Physcomitrella"
#echo "============================================================================================================"

#mkdir -p AtPAE8_against_SRR4023119
#../bin/SRAssembler -q AtPAE8.fa -t protein -p SRAssemblerTest.conf -l SRR4023119.library -r ./SRR4023119_reads_data -x 50000 -o AtPAE8_against_SRR4023119 -A 0 -S 0 -s arabidopsis -n 10

#echo "============================================================================================================"
#echo " Test3: AtPAE9 against Physcomitrella"
#echo "============================================================================================================"

#mkdir -p AtPAE9_against_SRR4023119
#../bin/SRAssembler -q AtPAE9.fa -t protein -p SRAssemblerTest.conf -l SRR4023119.library -r ./SRR4023119_reads_data -x 50000 -o AtPAE9_against_SRR4023119 -A 0 -S 0 -s arabidopsis -n 10

#echo "============================================================================================================"
#echo " Test4: AtPMEI1 against Physcomitrella"
#echo "============================================================================================================"

#mkdir -p AtPMEI1_against_SRR4023119
#../bin/SRAssembler -q AtPMEI1.fa -t protein -p SRAssemblerTest.conf -l SRR4023119.library -r ./SRR4023119_reads_data -x 50000 -o AtPMEI1_against_SRR4023119 -A 0 -S 0 -s arabidopsis -n 10

#echo "============================================================================================================"
#echo " Test5: AtPMEI2 against Physcomitrella"
#echo "============================================================================================================"

#mkdir -p AtPMEI2_against_SRR4023119
#../bin/SRAssembler -q AtPMEI2.fa -t protein -p SRAssemblerTest.conf -l SRR4023119.library -r ./SRR4023119_reads_data -x 50000 -o AtPMEI2_against_SRR4023119 -A 0 -S 0 -s arabidopsis -n 10

echo "============================================================================================================"
echo " Test6: AtCESA7protein against Physcomitrella"
echo "============================================================================================================"

mkdir -p AtCESA7protein_against_SRR4023119
../bin/SRAssembler -q AtCESA7protein.fa -t protein -p SRAssemblerTest.conf -l SRR4023119.library -r ./SRR4023119_reads_data -x 50000 -o AtCESA7protein_against_SRR4023119 -A 0 -S 0 -s arabidopsis -n 10
# This actually completes and produces a contig that is small, but matches.
