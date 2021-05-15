-- script: 'taller5-8'
-- resumen: responder preguntas
-- fecha creacion: 15-05-21
-- autor: Sebastian Penna

--	Ejecute la sentencia DELETE FROM fabricas WHERE cod_fabrica=40;. 
--	Luego obtenga todos los pares (cod cliente, cod fabrica) tales que no se encuentren en la misma
--	ciudad, o bien la fabrica no se encuentre en Rosario. Analice el resultado e indique si el
--	mismo se contrapone a la realidad
DELETE FROM nulos.fabricas WHERE cod_fabrica=40;

SELECT	c.cod_cliente, f.cod_fabrica
FROM 	nulos.clientes c, nulos.fabricas f
WHERE	(c.localidad <> f.localidad) OR (f.localidad <> 'Rosario')