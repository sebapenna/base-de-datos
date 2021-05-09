-- script: 'taller4-20'
-- resumen: Para cada departamento, devuelva su codigo, nombre, la cantidad de materias que tiene y la
--			cantidad total de notas registradas en materias del departamento. Ordene por la cantidad
--			de materias descendente.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT d.codigo, d.nombre, COUNT(DISTINCT m.numero) AS materias, COUNT(n.nota) AS notas
FROM departamentos d
LEFT OUTER JOIN materias m USING (codigo)
LEFT OUTER JOIN notas n USING (codigo, numero)
GROUP BY d.codigo
ORDER BY COUNT(DISTINCT m.numero) DESC;
