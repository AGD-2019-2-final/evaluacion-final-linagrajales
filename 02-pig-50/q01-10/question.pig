-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
fs -rm -f -r data.tsv
fs -put data.tsv
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

file = LOAD 'data.tsv' 
       AS (f1: CHARARRAY, 
           f2: CHARARRAY, 
           f3: INT);
           
grouped = GROUP file BY f1;
counted = FOREACH grouped GENERATE group, COUNT(file);
STORE counted INTO 'output';

fs -copyToLocal output output
