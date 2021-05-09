-- script: 'taller4-15'
-- resumen: Listar para cada carrera su nombre y el padron de los alumnos 
---			que esten anotados en ella. Incluir tambien las carreras sin alumnos inscriptos.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT c.nombre, padron
FROM inscripto_en
RIGHT OUTER JOIN carreras c USING (codigo);