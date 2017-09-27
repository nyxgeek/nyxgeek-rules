#!/bin/bash

# 2017 - @nyxgeek - TrustedSec
# this script takes a wordlist as input, and creates two files from it: HEAD.out and TAIL.out
# you should then feed those files into hashcat as parts of a combinator attack

# the idea here is to create lists compromised of various subsections of known passwords
# human generated patterns + human generated patterns = more human generated patterns

# described in DerbyCon 7.0 Talk, 100 Million Secrets
# https://github.com/nyxgeek/dumpsniffer

INPUTFILE=$1


printf "Making HEAD file...\t"
cat $INPUTFILE | cut -c1-4 >> cb-head.tmp
cat $INPUTFILE | cut -c1-5 >> cb-head.tmp
cat $INPUTFILE | cut -c1-6 >> cb-head.tmp
sort -u cb-head.tmp > HEAD.out
rm cb-head.tmp

echo "file written to `pwd`/HEAD.out  -  Total lines: `wc -l HEAD.out | awk '{print $1}'`"


printf "Making TAIL file...\t"
cat $INPUTFILE | rev | cut -c1-4 >> cb-tail.tmp
cat $INPUTFILE | rev | cut -c1-5 >> cb-tail.tmp
cat $INPUTFILE | rev | cut -c1-6 >> cb-tail.tmp
sort -u cb-tail.tmp > TAIL.out
rm cb-tail.tmp

echo "file written to `pwd`/TAIL.out  -  Total lines: `wc -l TAIL.out | awk '{print $1}'`"

printf "\n\nExample (first 5 lines):\n\nHEAD.out\t\t\t    TAIL.out\n--------\t\t\t    --------\n";pr -m -t HEAD.out TAIL.out | head -n 5
