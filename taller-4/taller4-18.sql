-- script: 'taller4-18'
-- resumen: Obtenga el padron y nombre de los alumnos que aprobaron la materia 71.14 y no aprobaron la materia 71.15
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT n.padron, a.nombre
FROM notas n 
INNER JOIN alumnos a ON(codigo = 75 AND numero = 15 AND nota >= 4 AND a.padron = n.padron)
EXCEPT
SELECT n.padron, a.nombre
FROM notas n
INNER JOIN alumnos a ON(codigo = 75 AND numero = 15 AND nota < 4 AND a.padron = n.padron);

-- Respuesta clase
SELECT a.padron, a.nombre 
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 14 AND n.nota >= 4
EXCEPT
SELECT a.padron, a.nombre 
FROM alumnos a INNER JOIN notas n USING(padron)
WHERE n.codigo = 71 AND n.numero = 15 AND n.nota >= 4
