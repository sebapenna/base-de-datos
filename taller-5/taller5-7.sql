-- script: 'taller5-7'
-- resumen: responder preguntas
-- fecha creacion: 15-05-21
-- autor: Sebastian Penna

DROP TABLE IF EXISTS nulos.fabricas;

CREATE TABLE nulos.fabricas(
	cod_fabrica	INTEGER PRIMARY KEY,
	nombre		VARCHAR,
	localidad	VARCHAR
);

INSERT INTO nulos.fabricas
VALUES	(40, 'La Anonima', 'Mar del Plata'),
		(50, 'Estancias Yrigoyen', NULL);
		
SELECT *
FROM nulos.clientes c
WHERE NOT EXISTS (SELECT ''
				  FROM nulos.fabricas f
				  WHERE c.localidad = f.localidad);
-- RESPUESTA:
--	Devuelve aquellos clientes que no tienen una fabrica


SELECT *
FROM nulos.clientes c
WHERE localidad NOT IN (SELECT localidad
						FROM nulos.fabricas f);
-- RESPUESTA:
--	En caso de existir el valor NULL en el resultado del segundo select 
--	 voy a obtener siempre una tabla vacia porque no se sabe determinar
--	 si existe o no una localidad frente a NULL (WHERE no puede devolver verdadero
--	 si tiene null)
