-- script: 'taller4-9'
-- resumen: Obtener el promedio de nota de aprobaci´on de las materias del departamento de codigo 75
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT AVG(nota)
FROM notas
WHERE nota >= 4 AND codigo = 75;