-- script: 'taller4-5'
-- resumen: Ejecute una consulta SQL que devuelva el padron y 
--			nombre de los alumnos cuyo apellido es  "Molina"
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna
SELECT padron, nombre
FROM alumnos
WHERE apellido ILIKE 'molina';