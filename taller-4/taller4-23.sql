-- script: 'taller4-23'
-- resumen: Obtener el codigo y numero de la o las materias con mayor cantidad de notas registradas.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT codigo, numero, COUNT(nota)
FROM notas
GROUP BY codigo, numero
HAVING (COUNT(nota)) >= ALL (SELECT COUNT(nota)
							 FROM notas
							 GROUP BY codigo, numero);