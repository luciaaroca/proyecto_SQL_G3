--Asignación de los profesores ordenados por orden alfabéticos a las clases 
SELECT a.nombre AS "Nombre del profesor", a.profesor_id AS "ID del profesor", b.clase_id AS "Clase asignada" ,c.nombre AS "Nombre del vertical",a.vertical_id AS "ID del vertical", a.rol AS "Rol del profesor", a.modalidad,a.promocion, b.fecha_comienzo AS "fecha de comienzo", d.ciudad, a.campus_id AS "ID del campus"
FROM profesores AS a
INNER JOIN clases AS b
ON a.vertical_id = b.vertical_id AND a.campus_id = b.campus_id AND a.promocion = b.promocion
LEFT JOIN vertical AS c
ON a.vertical_id = c.vertical_id
LEFT JOIN campus AS d
ON a.campus_id = d.campus_id
ORDER BY a.nombre 

/* SELECT a.nombre AS "Nombre del profesor", a.profesor_id AS "ID del profesor", b.clase_id AS "Clase asignada" ,c.nombre AS "Nombre del vertical",a.vertical_id AS "ID del vertical", a.rol AS "Rol del profesor", a.modalidad,a.promocion, b.fecha_comienzo AS "fecha de comienzo", d.ciudad, a.campus_id AS "ID del campus"
FROM profesores AS a
FULL OUTER JOIN clases AS b
ON a.vertical_id = b.vertical_id AND a.campus_id = b.campus_id AND a.promocion = b.promocion
LEFT JOIN vertical AS c
ON a.vertical_id = c.vertical_id
LEFT JOIN campus AS d
ON a.campus_id = d.campus_id
ORDER BY a.nombre */

--SELECT * FROM clases

