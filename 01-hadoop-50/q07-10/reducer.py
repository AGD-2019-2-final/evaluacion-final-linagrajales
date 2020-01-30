#! /usr/bin/env python
import sys
#
#  >>> Escriba el codigo del reducer a partir de este punto <<<
#

for line in sys.stdin:

    key, date, val = line.split("\t")
    val = int(val)
    tipo = key
            
           
    sys.stdout.write("{}\t{}\t{}\n".format(key, date, val))
