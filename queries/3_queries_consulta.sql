--tabla completa de toda la información de los alumnos ordenados por orden alfabético
SELECT b.nombre AS "Nombre Completo", b.email,a.alumno_id AS "ID del alumno", d.ciudad, a.vertical_id AS "ID del vertical",e.nombre as "Nombre del vertical", c.promocion, c.fecha_comienzo AS "fecha de inicio de las clases",  b.clase_id AS "Número de clase"
FROM proyectos_ds AS a
LEFT JOIN alumnos AS b  
ON a.alumno_id = b.alumno_id 
LEFT JOIN clases AS c 
ON b.clase_id = c.clase_id
LEFT JOIN campus AS d
ON c.campus_id = d.campus_id
LEFT JOIN vertical AS e
ON a.vertical_id = e.vertical_id 
--WHERE a.proyecto_hlf = 'No Apto' OR a.proyecto_eda = 'No Apto' OR a.proyecto_bbdd = 'No Apto' OR a.proyecto_ml ='No Apto' OR a.proyecto_deployment = 'No Apto'
--WHERE a.proyecto_hlf = 'Apto' AND a.proyecto_eda = 'Apto' AND a.proyecto_bbdd = 'Apto' AND a.proyecto_ml ='Apto' AND a.proyecto_deployment = 'Apto'
UNION
SELECT g.nombre AS "Nombre Completo", g.email,f.alumno_id AS "ID del alumno", i.ciudad, f.vertical_id AS "ID del vertical",j.nombre as "Nombre del vertical", h.promocion, h.fecha_comienzo AS "fecha de inicio de las clases",  g.clase_id AS "Número de clase"
FROM proyectos_fs AS f
LEFT JOIN alumnos AS g  
ON f.alumno_id = g.alumno_id 
LEFT JOIN clases AS h 
ON g.clase_id = h.clase_id
LEFT JOIN campus AS i
ON h.campus_id = i.campus_id
LEFT JOIN vertical AS j
ON f.vertical_id = j.vertical_id
--WHERE f.proyecto_webdev = 'No Apto' OR f.proyecto_frontend = 'No Apto' OR f.proyecto_backend = 'No Apto' OR f.proyecto_react ='No Apto' OR f.proyecto_fullsatck = 'No Apto'
--WHERE f.proyecto_webdev = 'Apto' AND f.proyecto_frontend = 'Apto' AND f.proyecto_backend = 'Apto' AND f.proyecto_react ='Apto' AND f.proyecto_fullsatck = 'Apto'
ORDER BY "Nombre Completo"