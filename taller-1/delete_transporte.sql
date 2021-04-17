-- script: 'delete_transporte'
-- resumen: elimina el dato cargado durante el script 'insert_transporte'
-- fecha creacion: 17-04-21
-- autor: Sebastian Penna

DELETE FROM public.paradas
	WHERE cod_parada = 1;