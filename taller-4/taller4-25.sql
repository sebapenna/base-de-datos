-- script: 'taller4-25'
-- resumen: Obtener el promedio general de notas por alumno (cuantas notas tiene en promedio un
--			alumno), considerando  ́unicamente alumnos con al menos una nota
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT AVG(cant_notas.cant)
FROM (SELECT COUNT(nota) AS cant
	  FROM notas
	  GROUP BY padron
	  HAVING COUNT(nota) >= 1) AS cant_notas;
