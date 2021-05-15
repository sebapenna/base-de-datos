-- script: 'taller4-21'
-- resumen: Para cada carrera devuelva su nombre y la cantidad de alumnos inscriptos. Incluya las
--			carreras sin alumnos.
-- fecha creacion: 09-05-21
-- autor: Sebastian Penna
SELECT codigo, nombre, COUNT(DISTINCT padron)
FROM carreras
LEFT OUTER JOIN inscripto_en USING(codigo)
GROUP BY codigo;