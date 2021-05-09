-- script: 'taller4-13'
-- resumen: Devolver para cada materia su nombre y el nombre del departamento.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT m.codigo, m.nombre, d.nombre FROM materias m INNER JOIN departamentos d USING(codigo);