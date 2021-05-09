-- script: 'taller4-19'
-- resumen: Obtener, sin repeticiones, todos los pares de padrones de alumnos tales que ambos alumnos
--			rindieron la misma materia el mismo dia. Devuelva tambien la fecha y el codigo y numero
--			de la materia
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT n1.padron, n2.padron, n1.fecha, n1.codigo, n1.numero
FROM notas n1, notas n2
WHERE n1.padron < n2.padron
AND n1.numero = n2.numero
AND n1.codigo = n2.codigo
AND n1.fecha = n2.fecha