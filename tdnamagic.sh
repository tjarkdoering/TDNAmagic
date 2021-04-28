#!/bin/sh

# Author : Tjark Döring (https://github.com/tjarkdoering)
# Purpose : To remove unnecessary file moving from the workflow of using TDNAscan.
# How does it work : From your working directory, the called for files are copied to TDNAscan directory. From there the program is executed and the output is copied back to your working directory. After some cleanup, everything should be good. It's like... magic...
# Disclaimer : Use at your own risk.

# Usage : Similar to TDNAscan (to avoid confusion), but you will have to not add the -p argument. Example below:
#  sh tdnamagic.sh -1 forward.fq -2 reverse.fq -t t-dna.fa -g ref_genome.fa
# (the sh can usually be omitted)


# Enter your Path to the TDNAscan below
path_tdnascan=/path/to/your/TDNAscan/


# Storing the working dir for later use
path_projectdir=$(pwd)


# Communicate stuff to the user
echo "Hi $USER, thanks for using TDNAmagic, good luck with your work!"
echo "You have given me $# arguments. Good so far."

echo
echo "TDNAscan directory is:"
echo $path_tdnascan

echo
echo "and you are working in:"
echo $path_projectdir


# Change into TDNAscan dir
cd $path_tdnascan


# Invoke tdnascan with arguments given by user
# python tdnascan.py --version
python tdnascan.py -1 $2 -2 $4 -t $6 -g $8 -t TDNAoutput


# move the file that should be in the output dir into it
mv nameofthatonefile TDNAoutput


# Move the output dir to working dir
mv TDNAoutput $path_projectdir

cd $path_projectdir

echo
echo "Something happened. Check you files. Bye."

