#!/usr/bin/env python
# Takes as input a read library and a query protein, and then generates an SRAssembler run script to find the gene.
# Prints to STDOUT


# import modules
#from sys import argv  # gives us a list of command line arguments
import argparse

# Parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("--library", help="SRAssembler library configuration file")
parser.add_argument("--query", help="query fasta", )
parser.add_argument("--type", help="protein or cdna", )
args = parser.parse_args()

# Name some variables
# Separate file names and directory locations
queryname = ".".join(((args.query).split("/")[-1]).split(".")[0:-1])
querylocation = "/".join((args.query).split("/")[0:-1])
libraryname = ".".join(((args.library).split("/")[-1]).split(".")[0:-1])
librarylocation = "/".join((args.library).split("/")[0:-1])

outputdirectory = queryname + "_against_" + libraryname
SRAlocation = "/usr/local/bin/SRAssembler"
SRAconfigurationfile = "/scratch/twmccart/SRAssembler/data/SRAssembler.conf"
readslocation = librarylocation + "/SRA_reads_data"
#readslocation = "/scratch/twmccart/SRAssembler/IRBB7_testing/Sample_IRBB7_reads_data"

# Optional for assembling a script
print('')
print('echo "============================================================================================================"')

print("mkdir -p " + outputdirectory + " && " + SRAlocation + " -q " + args.query + " -t " + args.type + " -p " + SRAconfigurationfile + " -l " + args.library + " -r " + readslocation + " -x 50000 -o " + outputdirectory + " -A 0 -S 0 -s rice -n 10")
