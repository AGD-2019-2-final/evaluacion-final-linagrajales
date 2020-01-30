-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
fs -rm -f -r data.tsv
fs -put data.tsv

file = LOAD 'data.tsv' 
       AS (f1: CHARARRAY, 
           f2: CHARARRAY, 
           f3: INT);
           
ordered = ORDER file BY f3;
col3 = FOREACH ordered GENERATE f3;
minimun = LIMIT col3 5;
STORE minimun INTO 'output';

fs -copyToLocal output output
