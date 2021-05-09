-- script: 'taller4-11'
-- resumen: Devolver los padrones de los alumnos que no registran nota en materias.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT padron FROM alumnos
EXCEPT 
SELECT padron FROM notas;