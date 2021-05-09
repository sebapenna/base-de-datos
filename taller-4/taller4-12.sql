-- script: 'taller4-12'
-- resumen: Con el objetivo de traducir a otro idioma los nombres de materias 
--			y departamentos, devolver en una unica consulta los nombres de 
--			todas las materias y de todos los departamentos
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT nombre FROM materias
UNION
(SELECT nombre FROM departamentos);