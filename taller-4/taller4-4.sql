-- script: 'taller4-4'
-- resumen: Idem al anterior pero mostrando los resultados paginados en 
--			paginas de 5 resultados cada una, devolviendo la segunda pagina
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna
SELECT padron, codigo, numero, fecha, nota * 10 AS nota
FROM notas
ORDER BY padron, codigo, numero, fecha	-- Garantiza criterio de orden sea siempre el mismo
OFFSET 5 FETCH FIRST 5 ROWS ONLY;