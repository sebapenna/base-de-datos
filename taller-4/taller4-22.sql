-- script: 'taller4-22'
-- resumen: Para cada alumno con al menos tres notas, devuelva su padron, nombre, promedio de notas
--			y mejor nota registrada.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT padron, nombre, AVG(n.nota), MAX(n.nota)
FROM alumnos a
INNER JOIN notas n USING(padron)
GROUP BY padron
HAVING COUNT(n.nota) >= 3;