-- script: 'dump_transporte'
-- resumen: exporta y realiza dump sobre las tablas de transporte
-- fecha creacion: 17-04-21
-- autor: Sebastian Penna

COPY public.paradas TO '/home/spenna/Escritorio/BDD/TallerI/tabla_paradas.csv' DELIMITER ';' CSV HEADER ENCODING 'LATIN1';
COPY public.colectivos_por_parada TO '/home/spenna/Escritorio/BDD/TallerI/tabla_colectivosPorParada.csv' DELIMITER ';' CSV HEADER ENCODING 'LATIN1';