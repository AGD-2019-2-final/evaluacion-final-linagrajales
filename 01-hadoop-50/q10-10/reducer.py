import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":

    curkey = None
    lista = []

    
    for line in sys.stdin:

        key, val = line.split("\t")
        val = int(val)
        
        
        

        if key == curkey:
           
            lista.append(val)

        else:
            
            if curkey is not None:
                
                lista.sort()
                lista = [str(val) for val in lista]
                datos = ','.join(lista)
                sys.stdout.write("{}\t{}\n".format(curkey, datos))
                lista = []

            curkey = key
            lista.append(val)
            
    lista.sort()
    lista = [str(val) for val in lista]
    datos = ','.join(lista)
    sys.stdout.write("{}\t{}\n".format(curkey, datos))