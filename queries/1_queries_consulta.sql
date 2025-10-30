--Reconstrucción de una de las tablas de clase 1
SELECT b.nombre, b.email,c.promocion, c.fecha_comienzo, d.ciudad AS "campus", a.proyecto_hlf, a.proyecto_eda, a.proyecto_bbdd, a.proyecto_ml, a.proyecto_deployment 
FROM proyectos_ds AS a
LEFT JOIN alumnos AS b 
ON a.alumno_id = b.alumno_id
LEFT JOIN clases AS c 
ON b.clase_id = c.clase_id
LEFT JOIN campus AS d 
ON c.campus_id = d.campus_id
WHERE b.clase_id=1
