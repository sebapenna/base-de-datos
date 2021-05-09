-- script: 'taller4-6'
-- resumen: Obtener el padron de los alumnos que ingresaron a la facultad en el anio 2010
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT padron
FROM alumnos
WHERE EXTRACT (YEAR from fecha_ingreso) = 2010;

-- Para aprovechar indice
SELECT padron, nombre
FROM alumnos
WHERE fecha_ingreso BETWEEN '2010-01-01' AND '2010-12-31';