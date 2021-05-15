-- script: 'taller5-1'
-- resumen: crear esquema nulos e insertar datos en tabla
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna
DROP TABLE IF EXISTS nulos.clientes;
DROP SCHEMA IF EXISTS nulos;
CREATE SCHEMA nulos;

CREATE TABLE nulos.clientes(
	cod_cliente	INTEGER	PRIMARY KEY,
	nombre		VARCHAR, 
	saldo		INTEGER,
	localidad	VARCHAR
);

INSERT INTO nulos.clientes
VALUES	(10, 'Juan', 20, NULL),
		(20, 'Pablo', 40, NULL),
		(30, 'Ana', NULL, 'Mar del Plata');
