-- script: 'taller5-4'
-- resumen: responder preguntas
-- fecha creacion: 15-05-21
-- autor: Sebastian Penna

--Considere la siguiente consulta:
SELECT *
FROM nulos.clientes
WHERE localidad ILIKE 'mar del plata';

-- Exprese el resultado de la misma en lenguaje coloquial suponiendo que 
--	no existen valores nulos en la tabla
-- RESPUESTA: los clientes que VIVEN en mar del plata

-- Exprese el resultado de la misma en lenguaje coloquial suponiendo que 
--	existen valores nulos.
-- RESPUESTA: los clientes que SABEMOS que viven en mar del plata			
