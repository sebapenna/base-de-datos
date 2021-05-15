-- script: 'taller5-2'
-- resumen: responder preguntas
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna

-- a) ¿Cual es el saldo total de los clientes?
SELECT SUM(saldo) AS total
FROM nulos.clientes;

-- b) ¿Que puede inferir sobre el saldo de Ana?
SELECT saldo
FROM nulos.clientes
WHERE nombre ILIKE 'Ana';

-- c) ¿Cual es el promedio de saldos de los clientes?
SELECT AVG(saldo) as prom_saldos
FROM nulos.clientes;

-- d) ¿Cuales son el maximo y minimo saldo?
SELECT MAX(saldo), MIN(saldo)
FROM nulos.clientes;

