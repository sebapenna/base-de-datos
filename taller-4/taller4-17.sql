-- script: 'taller4-17'
-- resumen: Listar el padron de aquellos alumnos que tengan mas de una nota en la materia 75.15.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT n.padron
FROM notas n
WHERE n.codigo = 75 AND n.numero = 15
GROUP BY padron
HAVING COUNT(nota) > 1;

-- Solucion clase
SELECT DISTINCT n1.padron
FROM notas n1, notas n2
WHERE n1.padron = n2.padron AND n1.codigo = n2.codigo
AND n1.numero = n2.numero AND n1.fecha > n2.fecha
AND n1.codigo = 75 AND n1.numero = 15;