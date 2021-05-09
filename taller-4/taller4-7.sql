-- script: 'taller4-7'
-- resumen: Obtener la mejor nota registrada en la materia 75.15
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT MAX(nota)
FROM notas
WHERE codigo = 75 AND numero = 15;