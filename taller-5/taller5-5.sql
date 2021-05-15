-- script: 'taller5-5'
-- resumen: responder preguntas
-- fecha creacion: 15-05-21
-- autor: Sebastian Penna

--	Exprese en lenguaje coloquial cual sera el resultado de la siguiente consulta:
SELECT *
FROM clientes
WHERE localidad ILIKE 'mar del plata'
UNION
SELECT *
FROM clientes
WHERE localidad NOT ILIKE 'mar del plata';	

-- RESPUESTA: 
--	Todos los cliente que SABEMOS donde viven