--tabla completa de toda la información de los alumnos de data science
SELECT a.alumno_id AS "ID del alumno", b.nombre AS "Nombre Completo", b.email, d.ciudad, a.vertical_id AS "ID del vertical",e.nombre as "Nombre del vertical", c.promocion, c.fecha_comienzo AS "fecha de inicio de las clases",  b.clase_id AS "Número de clase",  a.proyecto_hlf, a.proyecto_eda, a.proyecto_bbdd, a.proyecto_ml, a.proyecto_deployment
FROM proyectos_ds AS a
LEFT JOIN alumnos AS b  
ON a.alumno_id = b.alumno_id 
LEFT JOIN clases AS c 
ON b.clase_id = c.clase_id
LEFT JOIN campus AS d
ON c.campus_id = d.campus_id
LEFT JOIN vertical AS e
ON a.vertical_id = e.vertical_id
--ORDER BY "Nombre Completo"
--WHERE a.proyecto_hlf = 'No Apto' 
--WHERE a.proyecto_hlf = 'No Apto' OR a.proyecto_eda = 'No Apto' OR a.proyecto_bbdd = 'No Apto' OR a.proyecto_ml ='No Apto' OR a.proyecto_deployment = 'No Apto'
--WHERE a.proyecto_hlf = 'Apto' AND a.proyecto_eda = 'Apto' AND a.proyecto_bbdd = 'Apto' AND a.proyecto_ml ='Apto' AND a.proyecto_deployment = 'Apto'