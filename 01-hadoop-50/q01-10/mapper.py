#! /usr/bin/env python
import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
infile = sys.stdin
#next(infile) # skip first line of input file
for line in infile:
    line = line.split(',')
    line = line[2]
    sys.stdout.write("{}\t1\n".format(line))
