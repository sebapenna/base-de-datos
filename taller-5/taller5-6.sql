-- script: 'taller5-6'
-- resumen: responder preguntas
-- fecha creacion: 15-05-21
-- autor: Sebastian Penna

--	Exprese en lenguaje coloquial cual sera la diferencia entre el resultado de las siguientes dos consultas:
SELECT *
FROM nulos.clientes
WHERE saldo NOT IN (10,20);

SELECT *
FROM nulos.clientes
WHERE saldo IN (10,20);

-- RESPUESTA:
--	La primer consulta nos dara aquellos clientes que NO tienen saldo con valor 10 o 20
-- 	La segunda consulta nos dara aquellos clientes que TIENE saldo con valor 10 o 20