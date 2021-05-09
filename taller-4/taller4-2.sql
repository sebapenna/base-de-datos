-- script: 'taller4-2'
-- resumen: Devuelva para cada materia dos columnas: una llamada “codigo” que contenga una concatenacion 
--			del codigo de departamento, un punto y el numero de materia, con el formato “XX.YY” (ambos 
--			valores con dos digitos, agregando ceros a la izquierda en caso de ser necesario) y otra con 
--			el nombre de la materi
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna
SELECT LPAD(CAST (codigo as VARCHAR), 2, '0') || '.' || LPAD(CAST (numero as VARCHAR), 2, '0') AS codigo, nombre FROM materias;