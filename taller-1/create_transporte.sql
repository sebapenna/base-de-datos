-- script: 'creacion_transporte'
-- resumen: crea dos tablas sobre las paradas y los colectivos por cada parada
-- fecha creacion: 17-04-21
-- autor: Sebastian Penna

DROP TABLE IF EXISTS public.paradas;
DROP TABLE IF EXISTS public.colectivos_por_parada;

CREATE TABLE public.paradas (
	cod_parada	INTEGER	NOT NULL,
	longitud	NUMERIC	NOT NULL,
	latitud		NUMERIC	NOT NULL,
	tipo_parada	VARCHAR(50),
	calle		VARCHAR(50),
	altura		INTEGER,
	entre1		VARCHAR(50),
	entre2		VARCHAR(50)
);

CREATE TABLE public.colectivos_por_parada(
	cod_parada		INTEGER	NOT NULL,
	num_colectivo	INTEGER	NOT NULL
);