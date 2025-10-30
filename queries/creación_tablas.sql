CREATE TABLE campus (
campus_id TEXT NOT NULL PRIMARY KEY, 
ciudad TEXT
);

INSERT INTO campus VALUES
('C1', 'Madrid'),
('C2', 'Valencia');


CREATE TABLE vertical (
vertical_id TEXT NOT NULL PRIMARY KEY,
nombre TEXT 
);

INSERT INTO vertical VALUES 
('DS', 'Data Science'), 
('FS', 'Full Stack');


CREATE TABLE profesores(
profesor_id TEXT PRIMARY KEY,
nombre TEXT NOT NULL,
rol TEXT,
vertical_id TEXT,
promocion TEXT,
campus_id TEXT,
modalidad TEXT,
FOREIGN KEY (vertical_id) REFERENCES vertical(vertical_id),
FOREIGN KEY (campus_id) REFERENCES campus (campus_id)
);


INSERT INTO profesores VALUES
('P1', 'Noa Yáñez', 'TA', 'DS', 'Septiembre', 'C1', 'Presencial'),
('P2', 'Saturnina Benitez', 'TA', 'DS', 'Septiembre', 'C1', 'Presencial'),
('P3', 'Anna Feliu', 'TA', 'FS', 'Septiembre', 'C1', 'Presencial'),
('P4', 'Rosalva Ayuso', 'TA', 'FS', 'Septiembre', 'C2', 'Presencial'),
('P5', 'Ana Sofía Ferrer', 'TA', 'FS', 'Febrero', 'C2', 'Presencial'),
('P6', 'Angélica Corral', 'TA', 'FS', 'Febrero', 'C1', 'Presencial'),
('P7', 'Ariel Lledó', 'TA', 'DS', 'Septiembre', 'C1', 'Presencial'),
('P8', 'Mario Prats', 'LI', 'FS', 'Febrero', 'C2', 'Online'),
('P9', 'Luis Ángel Suárez', 'LI', 'FS', 'Septiembre', 'C1', 'Online'),
('P10', 'María Dolores Diaz', 'LI', 'DS', 'Septiembre', 'C1', 'Online');


CREATE TABLE clases (
Clase_id INTEGER PRIMARY KEY,
promocion TEXT NOT NULL, 
fecha_comienzo DATE NOT NULL, 
campus_id TEXT NOT NULL,
vertical_id TEXT, 
FOREIGN KEY (vertical_id) REFERENCES vertical(vertical_id),
FOREIGN KEY (campus_id) REFERENCES campus (campus_id)
);

INSERT INTO clases VALUES
(1, 'Septiembre', '2023-09-18', 'C1', 'DS'),
(2, 'Febrero',   '2024-02-12', 'C1', 'DS'),
(3, 'Septiembre', '2023-09-18', 'C1', 'FS'),
(4, 'Febrero',   '2024-02-12', 'C2', 'FS');


CREATE TABLE alumnos (
alumno_id TEXT PRIMARY KEY,
email TEXT, 
nombre TEXT NOT NULL,
clase_id INTEGER,
FOREIGN KEY (clase_id) REFERENCES clases(clase_id)
);

INSERT INTO alumnos VALUES
('A1', 'Jafet_Casals@gmail.com', 'Jafet Casals', 1),
('A2', 'Jorge_Manzanares@gmail.com', 'Jorge Manzanares', 1),
('A3', 'Onofre_Adadia@gmail.com', 'Onofre Adadia', 1),
('A4', 'Merche_Prada@gmail.com', 'Merche Prada', 1),
('A5', 'Pilar_Abella@gmail.com', 'Pilar Abella', 1),
('A6', 'Leoncio_Tena@gmail.com', 'Leoncio Tena', 1),
('A7', 'Odalys_Torrijos@gmail.com', 'Odalys Torrijos', 1),
('A8', 'Eduardo_Caparrós@gmail.com', 'Eduardo Caparrós', 1),
('A9', 'Ignacio_Goicoechea@gmail.com', 'Ignacio Goicoechea', 1),
('A10', 'Clementina_Santos@gmail.com', 'Clementina Santos', 1),
('A11', 'Daniela_Falcó@gmail.com', 'Daniela Falcó', 1),
('A12', 'Abraham_Vélez@gmail.com', 'Abraham Vélez', 1),
('A13', 'Maximiliano_Menéndez@gmail.com', 'Maximiliano Menéndez', 1),
('A14', 'Anita_Heredia@gmail.com', 'Anita Heredia', 1),
('A15', 'Eli_Casas@gmail.com', 'Eli Casas', 1),
('A16', 'Guillermo_Borrego@gmail.com', 'Guillermo Borrego', 2),
('A17', 'Sergio_Aguirre@gmail.com', 'Sergio Aguirre',2),
('A18', 'Carlito_Carrión@gmail.com', 'Carlito Carrión', 2),
('A19', 'Haydée_Figueroa@gmail.com', 'Haydée Figueroa', 2),
('A20', 'Chita_Mancebo@gmail.com', 'Chita Mancebo', 2),
('A21', 'Joaquina_Asensio@gmail.com', 'Joaquina Asensio', 2),
('A22', 'Cristian_Sarabia@gmail.com', 'Cristian Sarabia', 2),
('A23', 'Isabel_Ibáñez@gmail.com', 'Isabel Ibáñez', 2),
('A24', 'Desiderio_Jordá@gmail.com', 'Desiderio Jordá', 2),
('A25', 'Rosalina_Llanos@gmail.com', 'Rosalina Llanos',2),
('A26', 'Amor_Larrañaga@gmail.com', 'Amor Larrañaga', 3),
('A27', 'Teodoro_Alberola@gmail.com', 'Teodoro Alberola', 3),
('A28', 'Cleto_Plana@gmail.com', 'Cleto Plana', 3),
('A29', 'Aitana_Sebastián@gmail.com', 'Aitana Sebastián', 3),
('A30', 'Dolores_Valbuena@gmail.com', 'Dolores Valbuena', 3),
('A31', 'Julie_Ferrer@gmail.com', 'Julie Ferrer', 3),
('A32', 'Mireia_Cabañas@gmail.com', 'Mireia Cabañas', 3),
('A33', 'Flavia_Amador@gmail.com', 'Flavia Amador', 3),
('A34', 'Albino_Macias@gmail.com', 'Albino Macias', 3),
('A35', 'Ester_Sánchez@gmail.com', 'Ester Sánchez', 3),
('A36', 'Luis_Miguel_Galvez@gmail.com', 'Luis Miguel Galvez', 3),
('A37', 'Loida_Arellano@gmail.com', 'Loida Arellano', 3),
('A38', 'Heraclio_Duque@gmail.com', 'Heraclio Duque', 3),
('A39', 'Herberto_Figueras@gmail.com', 'Herberto Figueras', 3),
('A40', 'Teresa_Laguna@gmail.com', 'Teresa Laguna',4), 
('A41', 'Estrella_Murillo@gmail.com', 'Estrella Murillo',4), 
('A42', 'Ernesto_Uriarte@gmail.com', 'Ernesto Uriarte',4), 
('A43', 'Daniela_Guitart@gmail.com', 'Daniela Guitart',4), 
('A44', 'Timoteo_Trillo@gmail.com', 'Timoteo Trillo',4), 
('A45', 'Ricarda_Tovar@gmail.com', 'Ricarda Tovar',4), 
('A46', 'Alejandra_Vilaplana@gmail.com', 'Alejandra Vilaplana',4), 
('A47', 'Daniel_Rosselló@gmail.com', 'Daniel Rosselló',4), 
('A48', 'Rita_Olivares@gmail.com', 'Rita Olivares',4), 
('A49', 'Cleto_Montes@gmail.com', 'Cleto Montes',4), 
('A50', 'Marino_Castilla@gmail.com', 'Marino Castilla',4), 
('A51', 'Estefanía_Valcárcel@gmail.com', 'Estefanía Valcárcel',4), 
('A52', 'Noemí_Vilanova@gmail.com', 'Noemí Vilanova', 4);



CREATE TABLE proyectos_fs (
alumno_id TEXT NOT NULL PRIMARY KEY, 
vertical_id TEXT NOT NULL,
Proyecto_WebDev TEXT,
Proyecto_FrontEnd TEXT,
Proyecto_Backend TEXT,
Proyecto_React TEXT,	
Proyecto_FullSatck TEXT,
FOREIGN KEY (alumno_id) REFERENCES alumnos(alumno_id),
FOREIGN KEY (vertical_id) REFERENCES vertical(vertical_id)
);

INSERT INTO proyectos_fs VALUES
('A26', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'No Apto'),
('A27', 'FS', 'No Apto', 'No Apto', 'Apto', 'No Apto', 'Apto'),
('A28', 'FS', 'Apto', 'No Apto', 'Apto', 'No Apto', 'Apto'),
('A29', 'FS', 'Apto', 'No Apto', 'Apto', 'No Apto', 'Apto'),
('A30', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'No Apto'),
('A31', 'FS', 'No Apto', 'No Apto', 'No Apto', 'Apto', 'No Apto'),
('A32', 'FS', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A33', 'FS', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
('A34', 'FS', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A35', 'FS', 'No Apto', 'Apto', 'Apto', 'No Apto', 'Apto'),
('A36', 'FS', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A37', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A38', 'FS', 'Apto', 'Apto', 'No Apto', 'No Apto', 'No Apto'),
('A39', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A40', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A41', 'FS', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
('A42', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A43', 'FS', 'Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
('A44', 'FS', 'No Apto', 'Apto', 'Apto', 'Apto', 'No Apto'),
('A45', 'FS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A46', 'FS', 'No Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
('A47', 'FS', 'No Apto', 'No Apto', 'Apto', 'No Apto', 'No Apto'),
('A48', 'FS', 'No Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
('A49', 'FS', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
('A50', 'FS', 'No Apto', 'No Apto', 'Apto', 'No Apto', 'No Apto'),
('A51', 'FS', 'Apto', 'Apto', 'No Apto', 'No Apto', 'Apto'),
('A52', 'FS', 'Apto', 'No Apto', 'No Apto', 'Apto', 'Apto');


CREATE TABLE proyectos_ds(
alumno_id TEXT NOT NULL PRIMARY KEY, 
vertical_id TEXT NOT NULL,
proyecto_hlf TEXT,
proyecto_eda TEXT,
proyecto_bbdd TEXT,
proyecto_ml TEXT,
proyecto_deployment TEXT,
FOREIGN KEY (alumno_id) REFERENCES alumnos(alumno_id),
FOREIGN KEY (vertical_id) REFERENCES vertical(vertical_id)
);

INSERT INTO proyectos_ds VALUES 
('A1', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A2', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A3', 'DS', 'Apto', 'Apto', 'Apto', 'No Apto', 'Apto'),
('A4', 'DS', 'Apto', 'No Apto', 'No Apto', 'Apto', 'No Apto'),
('A5', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A6', 'DS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A7', 'DS', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A8', 'DS', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A9', 'DS', 'Apto', 'Apto', 'Apto', 'No Apto', 'Apto'),
('A10', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A11', 'DS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A12', 'DS', 'Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
('A13', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A14', 'DS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A15', 'DS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A16', 'DS', 'Apto', 'No Apto', 'No Apto', 'Apto', 'No Apto'),
('A17', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'No Apto'),
('A18', 'DS', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A19', 'DS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
('A20', 'DS', 'No Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
('A21', 'DS', 'No Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
('A22', 'DS', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
('A23', 'DS', 'No Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
('A24', 'DS', 'No Apto', 'Apto', 'No Apto', 'No Apto', 'Apto'),
('A25', 'DS', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto')

