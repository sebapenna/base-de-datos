-- script: 'taller4-17'
-- resumen: Listar el padron de aquellos alumnos que tengan mas de una nota en la materia 75.15.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT n.padron
FROM notas n
WHERE n.codigo = 75 AND n.numero = 15
GROUP BY padron
HAVING COUNT(nota) > 1;
