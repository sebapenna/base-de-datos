-- script: 'taller4-3'
-- resumen: Para cada nota registrada, devuelva el padron, codigo de 
--			departamento, numero de materia, fecha y nota expresada 
--			como un valor entre 1 y 100
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna
SELECT padron, codigo, numero, fecha, nota * 10 AS nota
FROM notas;