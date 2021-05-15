-- script: 'taller5-3'
-- resumen: responder preguntas
-- fecha creacion: 15-05-21
-- autor: Sebastian Penna

-- Obtenga un listado de los saldos ordenados en forma descendente. 
-- ¿Que puede inferir sobre el saldo de Ana del punto anterior? 
-- ¿Que ocurriria setenemos un listado de clientes formado por 6000 filas con 200 valores nulos?
SELECT *
FROM nulos.clientes
ORDER BY saldo DESC;
