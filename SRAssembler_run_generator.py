#! /usr/bin/env python
# Takes as input a set of reads and a BUSCO protein, and then generates an SRAssembler run script to find the gene.
# Prints to STDOUT, so redirect to file.


# import modules
#from sys import argv  # gives us a list of command line arguments
import argparse

# Parse arguments
parser = argparse.ArgumentParser()
parser.add_argument("--library", help="SRAssembler library configuration file")
parser.add_argument("--query", help="query protein", )
args = parser.parse_args()

# Name some variables
# Peel off the filetype designation from the query file
queryname = ".".join(args.query.split(".")[0:-1])
libraryname = ".".join(args.library.split(".")[0:-1])
outputdirectory = queryname + "_against_" + libraryname
SRAlocation = "usr/local/bin/SRAssembler"
SRAconfigurationfile = "/scratch/twmccart/SRAssembler/data/SRAssembler.conf"



print "mkdir -p ", outputdirectory
print SRAlocation, " -q ", args.query, " -t protein -p ", SRAconfigurationfile, " -l ", args.library, " -r ./", libraryname, "_reads_data -x 50000 -o ", outputdirectory, " -A 0 -S 0 -s rice -n 10"
