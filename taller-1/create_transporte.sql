-- script: 'creacion_transporte'
-- resumen: crea dos tablas sobre las paradas y los colectivos por cada parada
-- fecha creacion: 17-04-21
-- ultima modificacion: 24-04-21
-- autor: Sebastian Penna

DROP TABLE IF EXISTS public.colectivos_por_parada;
DROP TABLE IF EXISTS public.paradas;

CREATE TABLE public.paradas (
	cod_parada	INTEGER	NOT NULL,
	longitud	NUMERIC	NOT NULL,
	latitud		NUMERIC	NOT NULL,
	tipo_parada	VARCHAR(50),
	calle		VARCHAR(50),
	altura		INTEGER,
	entre1		VARCHAR(50),
	entre2		VARCHAR(50),
	CONSTRAINT	PK_paradas PRIMARY KEY(cod_parada)
);

CREATE TABLE public.colectivos_por_parada(
	cod_parada		INTEGER	NOT NULL,
	num_colectivo	INTEGER	NOT NULL,
	CONSTRAINT FK_colectivos_por_parada FOREIGN KEY(cod_parada) REFERENCES public.paradas(cod_parada) ON DELETE NO ACTION,
	CONSTRAINT	PK_colectivos_por_parada PRIMARY KEY(cod_parada, num_colectivo)
);

ALTER TABLE public.colectivos_por_parada
			DROP CONSTRAINT FK_colectivos_por_parada,
			ADD CONSTRAINT FK_colectivos_por_parada 
				FOREIGN KEY(cod_parada) 
				REFERENCES public.paradas(cod_parada) 
				ON DELETE NO ACTION
				ON UPDATE CASCADE;