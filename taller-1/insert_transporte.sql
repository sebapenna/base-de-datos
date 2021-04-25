-- script: 'insert_transporte'
-- resumen: carga un dato en la tabla paradas
-- fecha creacion: 17-04-21
-- ultima modificacion: 24-04-21
-- autor: Sebastian Penna

INSERT INTO public.paradas(
	cod_parada, longitud, latitud, tipo_parada, calle, altura, entre1, entre2)
	VALUES (1, 12.10, 10.12, 'comun', 'Belgrano', 1233, 'Libertad', 'Paseo Colon');


INSERT INTO public.colectivos_por_parada(cod_parada, num_colectivo)
	VALUES (1, 28);