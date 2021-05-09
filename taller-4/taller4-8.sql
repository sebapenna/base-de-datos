-- script: 'taller4-8'
-- resumen: Obtener el promedio de notas de las materias del departamento de codigo 75.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT AVG(nota)
FROM notas
WHERE codigo = 75;