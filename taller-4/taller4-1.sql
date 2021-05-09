-- script: 'taller4-1'
-- resumen: todos los datos de las notas que no sean de la materia 75.1
-- fecha creacion: 08-05-21
-- autor: Sebastian Penna
SELECT * FROM notas WHERE NOT ((codigo=75) AND (numero=1));
