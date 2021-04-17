-- script: 'copy_transporte'
-- resumen: carga los datos sobre transporte desde archivos csv
-- fecha creacion: 17-04-21
-- autor: Sebastian Penna

COPY public.paradas FROM '/home/spenna/Escritorio/BDD/TallerI/paradas.csv' DELIMITER ';' CSV HEADER ENCODING 'LATIN1';
COPY public.colectivos_por_parada FROM '/home/spenna/Escritorio/BDD/TallerI/colectivosPorParada.csv' DELIMITER ';' CSV HEADER ENCODING 'LATIN1';