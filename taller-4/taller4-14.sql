-- script: 'taller4-14'
-- resumen: Para cada 10 registrado, devuelva el padron y nombre del
--			alumno y el nombre de la materia correspondientes a dicha nota.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT padron, a.nombre, m.nombre
FROM notas n INNER JOIN alumnos a USING(padron)
INNER JOIN materias m USING (codigo, numero)
WHERE n.nota = 10;
