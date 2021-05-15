-- script: 'taller4-24'
-- resumen: Obtener el padron de los alumnos que tienen nota en todas las materias.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT n.padron
FROM notas n
GROUP BY n.padron
HAVING COUNT(DISTINCT to_char(codigo,'fm00') || '.' || to_char(numero,'fm00')) = (SELECT COUNT(*) FROM materias);
-- DISTINCT (codigo, numero) no es estandar