CREATE DATABASE ControlAcademico;

USE ControlAcademico;

CREATE TABLE UNIVERSIDAD (
    Nombre VARCHAR(255) UNIQUE PRIMARY KEY,
    Direccion VARCHAR(255) NOT NULL,
    Correo VARCHAR(255) NOT NULL,
    Telefono VARCHAR(255) NOT NULL
);

INSERT INTO UNIVERSIDAD (Nombre, Direccion, Correo, Telefono)
VALUES ('Universidad Francisco Marroquín', '6A Calle final, Cdad. de Guatemala 01010', "info@ufm.edu", '2338 7700');

SELECT * FROM UNIVERSIDAD;

CREATE TABLE Facultad (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    Universidad_Nombre VARCHAR(255) NOT NULL,
    FOREIGN KEY (Universidad_Nombre) REFERENCES UNIVERSIDAD(Nombre)
);

INSERT INTO Facultad (codigo, nombre, descripcion, Universidad_Nombre)
VALUES ("FCE", "Ciencias Económicas", "Se imparten cursos tanto de admin como de ingenieria", 'Universidad Francisco Marroquín');

SELECT * FROM Facultad;

CREATE TABLE Carrera (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    Facultad_Codigo VARCHAR(255) NOT NULL,
    FOREIGN KEY (Facultad_Codigo) REFERENCES Facultad(codigo)
);

INSERT INTO Carrera (codigo, nombre, descripcion, Facultad_Codigo)
VALUES ("CS", "Computer Science", "Se imparten cursos de ingenieria","FCE");

SELECT * FROM Carrera;

CREATE TABLE Pensum (
    Codigo VARCHAR(255),
    Carrera_Codigo VARCHAR(255),
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY (Codigo, Carrera_Codigo),
    FOREIGN KEY (Carrera_Codigo) REFERENCES Carrera(codigo)
);

INSERT INTO Pensum (Codigo, Carrera_Codigo, Estado)
VALUES ("CSP1","CS","Activo");

SELECT * FROM Pensum;

CREATE TABLE Catedratico (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    telefono_personal VARCHAR(255) UNIQUE,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL,
    especializacion VARCHAR(255) NOT NULL
);

INSERT INTO Catedratico (codigo, nombre, apellidos, direccion, telefono_personal, correo_electronico, especializacion)
VALUES
('C2016001', 'Juan', 'Pérez González', 'Calle Principal #123', '56781234', 'jperez1@ufm.edu', 'Matemáticas'),
('C2016002', 'María', 'Gómez López', 'Avenida Central #456', '56781235', 'mgomez1@ufm.edu', 'Ciencias Sociales'),
('C2017001', 'Luis', 'Ramírez Torres', 'Boulevard Sur #789', '56781236', 'lramirez1@ufm.edu', 'Física'),
('C2017002', 'Ana', 'Hernández Ruiz', 'Carrera Norte #321', '56781237', 'ahernandez1@ufm.edu', 'Química'),
('C2018001', 'Carlos', 'Martínez Pérez', 'Camino Real #654', '56781238', 'cmartinez1@ufm.edu', 'Economía'),
('C2018002', 'Lucía', 'Morales García', 'Vía Oriente #987', '56781239', 'lmorales1@ufm.edu', 'Ingeniería'),
('C2019001', 'Pedro', 'Sánchez Rodríguez', 'Paseo del Bosque #147', '56781240', 'psanchez1@ufm.edu', 'Historia'),
('C2019002', 'Sofía', 'Vargas Álvarez', 'Colonia Las Flores #258', '56781241', 'svargas1@ufm.edu', 'Psicología'),
('C2020001', 'Roberto', 'Jiménez Moreno', 'Plaza Mayor #369', '56781242', 'rjimenez1@ufm.edu', 'Administración'),
('C2020002', 'Isabel', 'Torres Fernández', 'Esquina Sur #741', '56781243', 'itorres1@ufm.edu', 'Arquitectura'),
('C2021001', 'Fernando', 'García Castro', 'Vía Central #852', '56781244', 'fgarcia1@ufm.edu', 'Derecho'),
('C2021002', 'Clara', 'López Sánchez', 'Callejón Norte #963', '56781245', 'clopez1@ufm.edu', 'Medicina'),
('C2022002', 'Elena', 'Díaz Ruiz', 'Parque Norte #258', '56781247', 'ediaz1@ufm.edu', 'Lenguas'),
('C2023001', 'Jorge', 'Pérez Torres', 'Bulevar Oriente #369', '56781248', 'jperez2@ufm.edu', 'Comunicación'),
('C2023002', 'Silvia', 'Martín Gómez', 'Carril Oeste #741', '56781249', 'smartin1@ufm.edu', 'Educación'),
('C2024001', 'Andrés', 'Guzmán Romero', 'Calle Oeste #852', '56781250', 'aguzman1@ufm.edu', 'Filosofía'),
('C2024002', 'Mónica', 'Ramos García', 'Avenida Sur #963', '56781251', 'mramos1@ufm.edu', 'Sociología'),
('C2016003', 'Patricia', 'Castillo Ramírez', 'Camino Real #147', '56781252', 'pcastillo1@ufm.edu', 'Matemáticas'),
('C2016004', 'Oscar', 'Santos López', 'Calle Central #258', '56781253', 'osantos1@ufm.edu', 'Biología'),
('C2017003', 'Gabriela', 'Rojas Fernández', 'Paseo del Bosque #369', '56781254', 'grojas1@ufm.edu', 'Tecnología'),
('C2017004', 'Héctor', 'Moreno Ruiz', 'Colonia Norte #741', '56781255', 'hmoreno1@ufm.edu', 'Computación'),
('C2018003', 'Paola', 'Núñez Castro', 'Boulevard Sur #852', '56781256', 'pnunez1@ufm.edu', 'Arte'),
('C2018004', 'Ramón', 'Ortiz Delgado', 'Avenida Central #963', '56781257', 'rortiz1@ufm.edu', 'Economía'),
('C2019003', 'Carla', 'Navarro Molina', 'Vía Oriente #147', '56781258', 'cnavarro1@ufm.edu', 'Historia'),
('C2019004', 'Alberto', 'Fuentes Pérez', 'Camino Norte #258', '56781259', 'afuentes1@ufm.edu', 'Literatura'),
('C2020003', 'Teresa', 'Luna Martínez', 'Calle Mayor #369', '56781260', 'tluna1@ufm.edu', 'Geografía'),
('C2020004', 'Emilio', 'Salazar Rodríguez', 'Pasaje Real #741', '56781261', 'esalazar1@ufm.edu', 'Física'),
('C2021003', 'Verónica', 'Ortega Romero', 'Colonia Sur #852', '56781262', 'vortega1@ufm.edu', 'Química'),
('C2021004', 'Pablo', 'Vidal García', 'Boulevard Este #963', '56781263', 'pvidal1@ufm.edu', 'Administración'),
('C2022003', 'Inés', 'Álvarez Torres', 'Calle del Sol #147', '56781264', 'ialvarez1@ufm.edu', 'Psicología'),
('C2022004', 'Daniel', 'Flores Núñez', 'Avenida del Norte #258', '56781265', 'dflores1@ufm.edu', 'Ingeniería'),
('C2023003', 'Marina', 'Pérez Ríos', 'Bulevar Real #369', '56781266', 'mperez1@ufm.edu', 'Derecho'),
('C2023004', 'Esteban', 'Torres Romero', 'Calle Sur #741', '56781267', 'etorres1@ufm.edu', 'Medicina'),
('C2024003', 'Gloria', 'Morales Ortega', 'Carril Central #852', '56781268', 'gmorales1@ufm.edu', 'Educación'),
('C2024004', 'Tomás', 'Reyes Díaz', 'Pasaje Este #963', '56781269', 'treyes1@ufm.edu', 'Computación'),
('C2016005', 'Rosario', 'Herrera Rojas', 'Plaza Principal #147', '56781270', 'rherrera1@ufm.edu', 'Arte'),
('C2016006', 'Federico', 'Mendoza Gómez', 'Callejón del Norte #258', '56781271', 'fmendoza1@ufm.edu', 'Tecnología'),
('C2017005', 'Elvira', 'González Santos', 'Esquina Real #369', '56781272', 'egonzalez1@ufm.edu', 'Filosofía'),
('C2017006', 'Rafael', 'López Vidal', 'Camino Sur #741', '56781273', 'rlopez1@ufm.edu', 'Economía');

SELECT * FROM Catedratico;

CREATE TABLE Curso (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    creditos_teoricos FLOAT NOT NULL,
    creditos_practicos FLOAT NOT NULL
);

INSERT INTO Curso (codigo, nombre, descripcion, creditos_teoricos, creditos_practicos)
VALUES
('FI001', 'Global Management and Entrepreneurship I', 'Introducción a la gestión y el espíritu empresarial global.', 3, 1.5),
('MA002', 'Introducción a la Matemática', 'Fundamentos básicos de matemáticas para principiantes.', 3, 1.5),
('MA001', 'Matemáticas 101', 'Conceptos esenciales de matemáticas para estudiantes nuevos.', 3, 1.5),
('EC001', 'Economía I', 'Principios básicos de economía para nuevos estudiantes.', 3, 1.5),
('CS001', 'Programación I', 'Introducción a la programación básica para principiantes.', 3, 1.5),
('HU001', 'Liderazgo Empresarial', 'Desarrollo de habilidades de liderazgo en el ámbito empresarial.', 3, 1.5),
('CS002', 'Programación Digital', 'Fundamentos de programación digital para estudiantes.', 3, 1.5),
('CS003', 'User Experience - UX', 'Diseño de experiencia de usuario y su impacto.', 3, 1.5),
('CYV01', 'Razonamiento Crítico', 'Desarrollo del pensamiento crítico para el análisis.', 3, 1.5),
('CYV02', 'Asesoría Lingüística', 'Habilidades de asesoramiento en lenguas.', 1, 0.5),
('SS001', 'Introducción al Derecho', 'Principios legales fundamentales para estudiantes.', 1.5, 0.75),
('SS002', 'Accounting Based Decision Making', 'Toma de decisiones basada en contabilidad.', 3, 1.5),
('SS003', 'Cálculo Diferencial', 'Cálculo diferencial para ingenieros y científicos.', 3, 1.5),
('SS004', 'Introducción a la Filosofía', 'Conceptos filosóficos básicos para principiantes.', 3, 1.5),
('SS005', 'Economía II', 'Economía avanzada para estudiantes de nivel intermedio.', 3, 1.5),
('SS006', 'Programación de Dispositivos Electrónicos', 'Programación para dispositivos electrónicos modernos.', 3, 1.5),
('SS007', 'Programación Orientada a Objetos', 'Fundamentos de programación orientada a objetos.', 3, 1.5),
('SS008', 'Matemática Discreta Aplicada', 'Aplicaciones de matemática discreta en la informática.', 3, 1.5),
('TS001', 'Marketing', 'Introducción al marketing y sus aplicaciones.', 3, 1.5),
('TS002', 'Statistical Thinking I', 'Pensamiento estadístico básico para análisis de datos.', 3, 1.5),
('TS003', 'Cálculo Integral', 'Cálculo integral avanzado para ingenieros.', 3, 1.5),
('TS004', 'Ética de la Libertad', 'Conceptos éticos sobre la libertad y su importancia.', 3, 1.5),
('TS005', 'Microeconomía', 'Estudio de la microeconomía en el mercado global.', 3, 1.5),
('TS006', 'Estructuras de Datos', 'Diseño y uso de estructuras de datos en programación.', 3, 1.5),
('TS007', 'Innovation Management and Agile Production', 'Gestión de la innovación y producción ágil.', 3, 1.5),
('TS008', 'Cost Analysis', 'Análisis de costos para la toma de decisiones.', 3, 1.5),
('CSV01', 'Scientific Computing', 'Computación científica para análisis de datos.', 3, 1.5),
('CS004', 'Global Management and Entrepreneurship II', 'Gestión global y emprendimiento avanzado.', 3, 1.5),
('CS005', 'Administración Financiera I', 'Fundamentos de la administración financiera.', 3, 1.5),
('CS006', 'Statistical Thinking II', 'Pensamiento estadístico avanzado.', 3, 1.5),
('CS007', 'Álgebra Lineal', 'Aplicaciones de álgebra lineal en la ingeniería.', 3, 1.5),
('CS008', 'Teorías Monetarias, Banca y Ciclos Económicos', 'Estudio de las teorías monetarias y los ciclos económicos.', 3, 1.5),
('CS009', 'Algoritmia y Complejidad', 'Análisis de algoritmos y su complejidad.', 3, 1.5),
('CS010', 'Automation Testing', 'Pruebas de automatización en el desarrollo de software.', 1.5, 0.75),
('CS011', 'DevOps', 'Metodologías de DevOps para desarrollo y operaciones.', 1.5, 0.75),
('QS001', 'Ecuaciones Diferenciales', 'Ecuaciones diferenciales para modelado matemático.', 3, 1.5),
('QS002', 'Filosofía de Hayek', 'Estudio de la filosofía de Friedrich Hayek.', 3, 1.5),
('QS003', 'Econometría I', 'Aplicaciones de econometría en los estudios económicos.', 3, 1.5),
('QS004', 'Seminario de Economía I', 'Seminario especializado en economía avanzada.', 0.75, 0.375),
('QS005', 'Arquitectura del Computador', 'Estudio de la arquitectura de computadoras modernas.', 3, 1.5),
('QS006', 'Datos I', 'Análisis de datos para el desarrollo de sistemas.', 3, 1.5),
('QS007', 'Programación Lineal', 'Programación lineal y sus aplicaciones.', 3, 1.5),
('QS008', 'Data Science', 'Introducción a la ciencia de datos.', 3, 1.5),
('QS009', 'Libertad en Acción I', 'Estudio de la libertad en la acción política.', 1.5, 0.75),
('SX001', 'Pensamiento Político Contemporáneo', 'Estudio de las ideas políticas contemporáneas.', 3, 1.5),
('SX002', 'Economía Austriaca I', 'Introducción a la economía austriaca.', 3, 1.5),
('SX003', 'Seminario de Economía II', 'Análisis avanzado de temas económicos.', 0.75, 0.375),
('SX004', 'Datos II', 'Desarrollo avanzado de análisis de datos.', 3, 1.5),
('SX005', 'Filosofía de Mises', 'Análisis de la filosofía de Ludwig von Mises.', 3, 1.5),
('SX006', 'Libertad en Acción II', 'Aplicación práctica de la libertad en la política.', 1.5, 0.75),
('SX007', 'Compiladores', 'Estudio y desarrollo de compiladores.', 3, 1.5),
('SX008', 'Ingeniería de Software', 'Desarrollo avanzado de software en ingeniería.', 3, 1.5),
('SP001', 'Administración Financiera II', 'Administración financiera avanzada para profesionales.', 3, 1.5),
('SP002', 'Public Choice', 'Estudio de la teoría de elección pública.', 1.5, 0.75),
('SP003', 'Seminario de Economía III', 'Tercer seminario especializado en economía.', 0.75, 0.375),
('SP004', 'Introducción a Redes', 'Fundamentos de redes informáticas para principiantes.', 3, 1.5),
('SP005', 'Business Intelligence', 'Análisis de inteligencia empresarial para la toma de decisiones.', 3, 1.5),
('SP006', 'Sistemas Operativos', 'Estudio de los sistemas operativos y su arquitectura.', 3, 1.5),
('SP007', 'Big Data', 'Análisis y gestión de grandes volúmenes de datos.', 3, 1.5),
('OS001', 'Ética Profesional', 'Principios éticos aplicados al entorno profesional.', 3, 1.5),
('OS002', 'Cloud & Inhouse Infrastructure', 'Infraestructura en la nube y en local.', 3, 1.5),
('OS003', 'Technologies and Freedom', 'Análisis de la tecnología y su relación con la libertad.', 3.5, 1.75),
('OS004', 'Taller Avanzado de Computer Science', 'Taller especializado en ciencias de la computación.', 3, 1.5),
('OS005', 'Seguridad Informática & Encriptación', 'Estudio de la seguridad informática y técnicas de cifrado.', 3, 1.5),
('OS006', 'Lean Six Sigma', 'Aplicación de la metodología Lean Six Sigma.', 3, 1.5),
('OR001', 'Conferencias', 'Participación en conferencias académicas y profesionales.', 1, 1);

SELECT * FROM Curso;

CREATE TABLE Curso_Prerequisito (
    Curso_Codigo VARCHAR(255),
    Curso_Prerequisito VARCHAR(255),
    PRIMARY KEY (Curso_Codigo, Curso_Prerequisito),
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(codigo),
    FOREIGN KEY (Curso_Prerequisito) REFERENCES Curso(codigo)
);

INSERT INTO Curso_Prerequisito (Curso_Codigo, Curso_Prerequisito)
VALUES

('SS001', 'FI001'),
('SS003', 'MA002'),
('SS004', 'CYV01'),
('SS005', 'EC001'),
('SS006', 'CS001'),
('SS007', 'CS001'),
('SS008', 'MA002'),
('TS001', 'FI001'),
('TS002', 'SS003'),
('TS003', 'SS003'),
('TS004', 'SS005'),
('TS005', 'SS005'),
('TS005', 'SS003'),
('TS006', 'SS007'),
('TS008', 'SS002'),
('CSV01', 'SS003'),
('CS004', 'FI001'),
('CS005', 'SS003'),
('CS005', 'TS008'),
('CS006', 'TS002'),
('CS007', 'SS003'),
('CS008', 'TS005'),
('CS009', 'TS006'),
('CS010', 'TS007'),
('CS011', 'TS007'),
('QS001', 'CS007'),
('QS002', 'CS008'),
('QS003', 'TS005'),
('QS004', 'CS008'),
('QS005', 'TS006'),
('QS006', 'TS006'),
('QS007', 'CS007'),
('QS008', 'CS001'),
('QS008', 'TS002'),
('QS009', 'SS005'),
('SX001', 'TS004'),
('SX002', 'TS005'),
('SX003', 'QS004'),
('SX004', 'QS006'),
('SX005', 'QS002'),
('SX006', 'SS005'),
('SX007', 'QS005'),
('SX008', 'QS005'),
('SP001', 'CS005'),
('SP002', 'SS005'),
('SP003', 'SX003'),
('SP004', 'QS005'),
('SP006', 'QS005'),
('SP007', 'QS006'),
('OS001', 'TS004'),
('OS005', 'SP004'),
('OS006', 'TS002');

SELECT * FROM Curso_Prerequisito;

CREATE TABLE HistorialPensum (
    Pensum_Codigo VARCHAR(255),
    fecha_Comienza DATE NOT NULL,
    Fecha_Termina DATE,
    Curso_Codigo VARCHAR(255),
    PRIMARY KEY (Pensum_Codigo, Curso_Codigo),
    FOREIGN KEY (Pensum_Codigo) REFERENCES Pensum(Codigo),
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(Codigo)
);

INSERT INTO HistorialPensum (Pensum_Codigo, fecha_Comienza, Fecha_Termina, Curso_Codigo)
VALUES
('CSP1', '2022-01-01', NULL, 'FI001'),
('CSP1', '2022-01-01', NULL, 'MA002'),
('CSP1', '2022-01-01', NULL, 'MA001'),
('CSP1', '2022-01-01', NULL, 'EC001'),
('CSP1', '2022-01-01', NULL, 'CS001'),
('CSP1', '2022-01-01', NULL, 'HU001'),
('CSP1', '2022-01-01', NULL, 'CS002'),
('CSP1', '2022-01-01', NULL, 'CS003'),
('CSP1', '2022-01-01', NULL, 'CYV01'),
('CSP1', '2022-01-01', NULL, 'CYV02'),
('CSP1', '2022-01-01', NULL, 'SS001'),
('CSP1', '2022-01-01', NULL, 'SS002'),
('CSP1', '2022-01-01', NULL, 'SS003'),
('CSP1', '2022-01-01', NULL, 'SS004'),
('CSP1', '2022-01-01', NULL, 'SS005'),
('CSP1', '2022-01-01', NULL, 'SS006'),
('CSP1', '2022-01-01', NULL, 'SS007'),
('CSP1', '2022-01-01', NULL, 'SS008'),
('CSP1', '2022-01-01', NULL, 'TS001'),
('CSP1', '2022-01-01', NULL, 'TS002'),
('CSP1', '2022-01-01', NULL, 'TS003'),
('CSP1', '2022-01-01', NULL, 'TS004'),
('CSP1', '2022-01-01', NULL, 'TS005'),
('CSP1', '2022-01-01', NULL, 'TS006'),
('CSP1', '2022-01-01', NULL, 'TS007'),
('CSP1', '2022-01-01', NULL, 'TS008'),
('CSP1', '2022-01-01', NULL, 'CSV01'),
('CSP1', '2022-01-01', NULL, 'CS004'),
('CSP1', '2022-01-01', NULL, 'CS005'),
('CSP1', '2022-01-01', NULL, 'CS006'),
('CSP1', '2022-01-01', NULL, 'CS007'),
('CSP1', '2022-01-01', NULL, 'CS008'),
('CSP1', '2022-01-01', NULL, 'CS009'),
('CSP1', '2022-01-01', NULL, 'CS010'),
('CSP1', '2022-01-01', NULL, 'CS011'),
('CSP1', '2022-01-01', NULL, 'QS001'),
('CSP1', '2022-01-01', NULL, 'QS002'),
('CSP1', '2022-01-01', NULL, 'QS003'),
('CSP1', '2022-01-01', NULL, 'QS004'),
('CSP1', '2022-01-01', NULL, 'QS005'),
('CSP1', '2022-01-01', NULL, 'QS006'),
('CSP1', '2022-01-01', NULL, 'QS007'),
('CSP1', '2022-01-01', NULL, 'QS008'),
('CSP1', '2022-01-01', NULL, 'QS009'),
('CSP1', '2022-01-01', NULL, 'SX001'),
('CSP1', '2022-01-01', NULL, 'SX002'),
('CSP1', '2022-01-01', NULL, 'SX003'),
('CSP1', '2022-01-01', NULL, 'SX004'),
('CSP1', '2022-01-01', NULL, 'SX005'),
('CSP1', '2022-01-01', NULL, 'SX006'),
('CSP1', '2022-01-01', NULL, 'SX007'),
('CSP1', '2022-01-01', NULL, 'SX008'),
('CSP1', '2022-01-01', NULL, 'SP001'),
('CSP1', '2022-01-01', NULL, 'SP002'),
('CSP1', '2022-01-01', NULL, 'SP003'),
('CSP1', '2022-01-01', NULL, 'SP004'),
('CSP1', '2022-01-01', NULL, 'SP005'),
('CSP1', '2022-01-01', NULL, 'SP006'),
('CSP1', '2022-01-01', NULL, 'SP007'),
('CSP1', '2022-01-01', NULL, 'OS001'),
('CSP1', '2022-01-01', NULL, 'OS002'),
('CSP1', '2022-01-01', NULL, 'OS003'),
('CSP1', '2022-01-01', NULL, 'OS004'),
('CSP1', '2022-01-01', NULL, 'OS005'),
('CSP1', '2022-01-01', NULL, 'OS006'),
('CSP1', '2022-01-01', NULL, 'OR001');

SELECT * FROM HistorialPensum;

CREATE TABLE Horario (
    Codigo VARCHAR(255) PRIMARY KEY,
    Curso_Codigo VARCHAR(255) NOT NULL,
    edificio VARCHAR(255) NOT NULL,
    salon VARCHAR(255) NOT NULL,
    dias VARCHAR(255) NOT NULL,
    hora_inicio TIME NOT NULL,
    costo_de_curso DECIMAL(10, 2) NOT NULL,
    hora_fin TIME NOT NULL,
    Seccion VARCHAR(255) NOT NULL,
    Catedratico_Codigo VARCHAR(255) NOT NULL,
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(codigo),
    FOREIGN KEY (Catedratico_Codigo) REFERENCES Catedratico(codigo)
);

INSERT INTO Horario (Codigo, Curso_Codigo, edificio, salon, dias, hora_inicio, costo_de_curso, hora_fin, Seccion, Catedratico_Codigo)
VALUES
('CS202401', 'FI001', 'Academico', 'A-101', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2020001'), -- Global Management and Entrepreneurship I
('CS202402', 'FI001', 'Academico', 'A-102', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2020001'),

('CS202403', 'MA002', 'Academico', 'A-201', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2016001'), -- Introducción a la Matemática
('CS202404', 'MA002', 'Academico', 'A-202', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2016001'),

('CS202405', 'MA001', 'Academico', 'A-301', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2016001'), -- Matemáticas 101
('CS202406', 'MA001', 'Academico', 'A-302', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2016001'),

('CS202407', 'EC001', 'Academico', 'A-401', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2020001'), -- Economía I
('CS202408', 'EC001', 'Academico', 'A-402', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2020001'),

('CS202409', 'CS001', 'Academico', 'A-501', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2017004'), -- Programación I
('CS202410', 'CS001', 'Academico', 'A-502', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2017004'),

('CS202411', 'HU001', 'Academico', 'A-601', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2020001'), -- Liderazgo Empresarial
('CS202412', 'HU001', 'Academico', 'A-602', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2020001'),

('CS202413', 'CS002', 'Academico', 'A-701', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2017004'), -- Programación Digital
('CS202414', 'CS002', 'Academico', 'A-702', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2017004'),

('CS202415', 'CS003', 'Academico', 'A-801', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2017004'), -- User Experience - UX
('CS202416', 'CS003', 'Academico', 'A-802', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2017004'),

('CS202417', 'CYV01', 'Academico', 'A-901', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2024002'), -- Razonamiento Crítico
('CS202418', 'CYV01', 'Academico', 'A-902', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2024002'),

('CS202419', 'CYV02', 'Academico', 'A-1001', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2022002'), -- Asesoría Lingüística
('CS202420', 'CYV02', 'Academico', 'A-1002', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2022002'),

('CS202421', 'SS001', 'Escuela de Negocios', 'EN-101', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2023003'), -- Introducción al Derecho
('CS202422', 'SS001', 'Escuela de Negocios', 'EN-102', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2023003'),

('CS202423', 'SS002', 'Escuela de Negocios', 'EN-201', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2020001'), -- Accounting Based Decision Making
('CS202424', 'SS002', 'Escuela de Negocios', 'EN-202', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2020001'),

('CS202425', 'SS003', 'Escuela de Negocios', 'EN-101', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2016001'), -- Cálculo Diferencial
('CS202426', 'SS003', 'Escuela de Negocios', 'EN-102', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2016001'),

('CS202427', 'SS004', 'Escuela de Negocios', 'EN-305', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2024001'), -- Introducción a la Filosofía
('CS202428', 'SS004', 'Escuela de Negocios', 'EN-402', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2024001'),

('CS202429', 'SS005', 'Academico', 'A-1101', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2020001'), -- Economía II
('CS202430', 'SS005', 'Academico', 'A-1102', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2020001'),

('CS202431', 'SS006', 'Academico', 'A-1201', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2017004'), -- Programación de Dispositivos Electrónicos
('CS202432', 'SS006', 'Academico', 'A-1202', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2017004'),

('CS202433', 'SS007', 'Academico', 'A-1301', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2017004'), -- Programación Orientada a Objetos
('CS202434', 'SS007', 'Academico', 'A-1302', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2017004'),

('CS202435', 'SS008', 'Academico', 'A-1401', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2016001'), -- Matemática Discreta Aplicada
('CS202436', 'SS008', 'Academico', 'A-1402', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2016001'),

('CS202437', 'TS001', 'Academico', 'A-1501', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2020001'), -- Marketing
('CS202438', 'TS001', 'Academico', 'A-1502', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2020001'),

('CS202439', 'TS002', 'Academico', 'A-1601', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2018001'), -- Statistical Thinking I
('CS202440', 'TS002', 'Academico', 'A-1602', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2018001'),

('CS202441', 'TS003', 'Academico', 'A-1701', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2016001'), -- Cálculo Integral
('CS202442', 'TS003', 'Academico', 'A-1702', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2016001'),

('CS202443', 'TS004', 'Academico', 'A-1801', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2024001'), -- Ética de la Libertad
('CS202444', 'TS004', 'Academico', 'A-1802', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2024001'),

('CS202445', 'TS005', 'Academico', 'A-1901', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2020001'), -- Microeconomía
('CS202446', 'TS005', 'Academico', 'A-1902', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2020001'),

('CS202447', 'TS006', 'Academico', 'A-2001', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2017004'), -- Estructuras de Datos
('CS202448', 'TS006', 'Academico', 'A-2002', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2017004'),

('CS202449', 'TS007', 'Academico', 'A-2101', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2020001'), -- Innovation Management and Agile Production
('CS202450', 'TS007', 'Academico', 'A-2102', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2020001'),

('CS202451', 'TS008', 'Academico', 'A-2201', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2020001'), -- Cost Analysis
('CS202452', 'TS008', 'Academico', 'A-2202', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2020001'),

('CS202453', 'CSV01', 'Academico', 'A-2301', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2017004'), -- Scientific Computing
('CS202454', 'CSV01', 'Academico', 'A-2302', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2017004'),

('CS202455', 'CS004', 'Academico', 'A-2401', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2020001'), -- Global Management and Entrepreneurship II
('CS202456', 'CS004', 'Academico', 'A-2402', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2020001'),

('CS202457', 'CS005', 'Academico', 'A-2501', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2020001'), -- Administración Financiera I
('CS202458', 'CS005', 'Academico', 'A-2502', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2020001'),

('CS202459', 'CS006', 'Academico', 'A-2601', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2018001'), -- Statistical Thinking II
('CS202460', 'CS006', 'Academico', 'A-2602', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2018001'),

('CS202461', 'CS007', 'Academico', 'A-2701', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2016001'), -- Álgebra Lineal
('CS202462', 'CS007', 'Academico', 'A-2702', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2016001'),

('CS202463', 'CS008', 'Academico', 'A-2801', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2016005'), -- Teorías Monetarias, Banca y Ciclos Económicos
('CS202464', 'CS008', 'Academico', 'A-2802', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2016005'),

('CS202465', 'CS009', 'Academico', 'A-2901', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2017004'), -- Algoritmia y Complejidad
('CS202466', 'CS009', 'Academico', 'A-2902', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2017004'),

('CS202467', 'CS010', 'Academico', 'A-3001', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2017004'), -- Automation Testing
('CS202468', 'CS010', 'Academico', 'A-3002', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2017004'),

('CS202469', 'CS011', 'Academico', 'A-3101', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2017004'), -- DevOps
('CS202470', 'CS011', 'Academico', 'A-3102', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2017004'),

('CS202471', 'QS001', 'Academico', 'A-3201', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2016001'), -- Ecuaciones Diferenciales
('CS202472', 'QS001', 'Academico', 'A-3202', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2016001'),

('CS202473', 'QS002', 'Academico', 'A-3301', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2024001'), -- Filosofía de Hayek
('CS202474', 'QS002', 'Academico', 'A-3302', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2024001'),

('CS202475', 'QS003', 'Academico', 'A-3401', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2020001'), -- Econometría I
('CS202476', 'QS003', 'Academico', 'A-3402', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2020001'),

('CS202477', 'QS004', 'Escuela de Negocios', 'EN-401', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2020001'), -- Seminario de Economía I
('CS202478', 'QS004', 'Escuela de Negocios', 'EN-402', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2020001'),

('CS202479', 'QS005', 'Academico', 'A-3501', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2017004'), -- Arquitectura del Computador
('CS202480', 'QS005', 'Academico', 'A-3502', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2017004'),

('CS202481', 'QS006', 'Academico', 'A-3601', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2017004'), -- Datos I
('CS202482', 'QS006', 'Academico', 'A-3602', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2017004'),

('CS202483', 'QS007', 'Escuela de Negocios', 'EN-602', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2016001'), -- Programación Lineal
('CS202484', 'QS007', 'Escuela de Negocios', 'EN-603', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2016001'),

('CS202485', 'QS008', 'Academico', 'A-3701', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2017004'), -- Data Science
('CS202486', 'QS008', 'Academico', 'A-3702', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2017004'),

('CS202487', 'QS009', 'Academico', 'A-3801', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2024001'), -- Libertad en Acción I
('CS202488', 'QS009', 'Academico', 'A-3802', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2024001'),

('CS202489', 'SX001', 'Academico', 'A-3901', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2024001'), -- Pensamiento Político Contemporáneo
('CS202490', 'SX001', 'Academico', 'A-3902', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2024001'),

('CS202491', 'SX002', 'Academico', 'A-4001', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2020001'), -- Economía Austriaca I
('CS202492', 'SX002', 'Academico', 'A-4002', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2020001'),

('CS202493', 'SX003', 'Academico', 'A-4101', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2020001'), -- Seminario de Economía II
('CS202494', 'SX003', 'Academico', 'A-4102', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2020001'),

('CS202495', 'SX004', 'Academico', 'A-4201', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2017004'), -- Datos II
('CS202496', 'SX004', 'Academico', 'A-4202', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2017004'),

('CS202497', 'SX005', 'Academico', 'A-4301', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2024001'), -- Filosofía de Mises
('CS202498', 'SX005', 'Academico', 'A-4302', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2024001'),

('CS202499', 'SX006', 'Academico', 'A-4401', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2024001'), -- Libertad en Acción II
('CS202500', 'SX006', 'Academico', 'A-4402', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2024001'),

('CS202501', 'SX007', 'Academico', 'A-4501', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2017004'), -- Compiladores
('CS202502', 'SX007', 'Academico', 'A-4502', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2017004'),

('CS202503', 'SX008', 'Academico', 'A-4601', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2017004'), -- Ingeniería de Software
('CS202504', 'SX008', 'Academico', 'A-4602', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2017004'),

('CS202505', 'SP001', 'Escuela de Negocios', 'EN-501', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2020001'), -- Administración Financiera II
('CS202506', 'SP001', 'Escuela de Negocios', 'EN-502', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2020001'),

('CS202507', 'SP002', 'Academico', 'A-4701', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2024001'), -- Public Choice
('CS202508', 'SP002', 'Academico', 'A-4702', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2024001'),

('CS202509', 'SP003', 'Academico', 'A-4801', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2020001'), -- Seminario de Economía III
('CS202510', 'SP003', 'Academico', 'A-4802', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2020001'),

('CS202511', 'SP004', 'Academico', 'A-4901', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2017004'), -- Introducción a Redes
('CS202512', 'SP004', 'Academico', 'A-4902', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2017004'),

('CS202513', 'SP005', 'Escuela de Negocios', 'EN-503', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2020001'), -- Business Intelligence
('CS202514', 'SP005', 'Escuela de Negocios', 'EN-504', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2020001'),

('CS202515', 'SP006', 'Academico', 'A-5001', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2017004'), -- Sistemas Operativos
('CS202516', 'SP006', 'Academico', 'A-5002', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2017004'),

('CS202517', 'SP007', 'Academico', 'A-5101', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2017004'), -- Big Data
('CS202518', 'SP007', 'Academico', 'A-5102', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2017004'),

('CS202519', 'OS001', 'Academico', 'A-5201', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2024001'), -- Ética Profesional
('CS202520', 'OS001', 'Academico', 'A-5202', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2024001'),

('CS202521', 'OS002', 'Academico', 'A-5301', 'Lunes y Miércoles', '08:00', 500.00, '09:20', 'A', 'C2017004'), -- Cloud & Inhouse Infrastructure
('CS202522', 'OS002', 'Academico', 'A-5302', 'Martes y Jueves', '10:00', 500.00, '11:20', 'B', 'C2017004'),

('CS202523', 'OS003', 'Academico', 'A-5401', 'Lunes y Miércoles', '09:30', 500.00, '10:50', 'A', 'C2017004'), -- Technologies and Freedom
('CS202524', 'OS003', 'Academico', 'A-5402', 'Martes y Jueves', '11:30', 500.00, '12:50', 'B', 'C2017004'),

('CS202525', 'OS004', 'Academico', 'A-5501', 'Lunes y Miércoles', '11:00', 500.00, '12:20', 'A', 'C2017004'), -- Taller Avanzado de Computer Science
('CS202526', 'OS004', 'Academico', 'A-5502', 'Martes y Jueves', '13:00', 500.00, '14:20', 'B', 'C2017004'),

('CS202527', 'OS005', 'Academico', 'A-5601', 'Lunes y Miércoles', '14:30', 500.00, '15:50', 'A', 'C2017004'), -- Seguridad Informática & Encriptación
('CS202528', 'OS005', 'Academico', 'A-5602', 'Martes y Jueves', '16:00', 500.00, '17:20', 'B', 'C2017004'),

('CS202529', 'OS006', 'Academico', 'A-5701', 'Lunes y Miércoles', '17:30', 500.00, '18:50', 'A', 'C2018001'), -- Lean Six Sigma
('CS202530', 'OS006', 'Academico', 'A-5702', 'Martes y Jueves', '19:00', 500.00, '20:20', 'B', 'C2018001');

SELECT * FROM Horario;

CREATE TABLE Estudiante (
    carne VARCHAR(255) UNIQUE PRIMARY KEY,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    sexo VARCHAR(255) NOT NULL,
    fecha_de_nacimiento DATE NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono_personal VARCHAR(255) NOT NULL,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL,
    numero_cuenta_corriente VARCHAR(255) NOT NULL
);

INSERT INTO Estudiante (carne, nombres, apellidos, sexo, fecha_de_nacimiento, direccion, telefono_personal, correo_electronico, numero_cuenta_corriente)
VALUES 
('20220289', 'Isaac', 'Cyrman Casafont', 'M', '2002-11-12', 'Carretera al Salvador Km 17.5', '12345678', 'isaaccyrman@ufm.edu', '001-203-436'),
('20220565', 'Franscisco Javier', 'Acuña Barrera', 'M', '2004-02-11', 'San Cristobal, zona 8 de Mixco', '12345678', 'franciscoab@ufm.edu', '243-934-301'),
('20220668', 'Luis Gennaro', 'Morales Villela', 'M', '2003-05-15', '20 avenida, 3 calle, zona 10', '12345678', 'lmorales@ufm.edu', '982-502-324'),
('20200424', 'Rodrigo', 'Reyes', 'M', '2000-08-20', 'Calle Principal 123', 'La montaña, zona 16', 'rreyes@ufm.edu', '432-870-325'),
('20221890', 'Sofia', 'Velásquez Ramírez', 'F', '2001-09-15', 'Colonia Las Flores, zona 1', '12345689', 'svelasquez@ufm.edu', '678-123-456'),
('20221901', 'Mateo', 'Fernández Pérez', 'M', '2002-03-19', 'Boulevard Santa Elena, zona 11', '12345690', 'mfernandez@ufm.edu', '789-321-123'),
('20222013', 'Daniela', 'Morales Alvarado', 'F', '2000-12-04', 'Residenciales Los Pinos, zona 14', '12345691', 'dmorales@ufm.edu', '321-456-789'),
('20222125', 'Sebastián', 'López Hernández', 'M', '2003-06-22', 'Ciudad Nueva, zona 2', '12345692', 'slopez@ufm.edu', '456-789-654'),
('20222237', 'Camila', 'Ruiz García', 'F', '2004-05-11', 'Colonia Ciudad Vieja, zona 15', '12345693', 'cruiz@ufm.edu', '987-654-123'),
('20222349', 'Diego', 'Jiménez Torres', 'M', '2002-07-09', 'San Rafael, zona 4', '12345694', 'djimenez@ufm.edu', '789-123-789'),
('20222461', 'Valeria', 'Martínez López', 'F', '2001-02-28', 'Avenida Centro América, zona 10', '12345695', 'vmartinez@ufm.edu', '654-789-987'),
('20222573', 'Lucas', 'Ramírez Cruz', 'M', '2000-10-05', 'Calle del Comercio, zona 8', '12345696', 'lramirez@ufm.edu', '987-123-321'),
('20222685', 'Elena', 'Castillo Mendoza', 'F', '2003-08-13', 'Urbanización Los Olivos, zona 9', '12345697', 'ecastillo@ufm.edu', '123-654-789'),
('20222797', 'Nicolas', 'Flores Santos', 'M', '2002-04-29', 'Avenida Las Palmas, zona 13', '12345698', 'nflores@ufm.edu', '321-789-456'),
('20222810', 'Valentina', 'González Rivera', 'F', '2001-03-01', 'Colonia El Paraíso, zona 16', '12345699', 'vgonzalez@ufm.edu', '654-321-123'),
('20222922', 'Emilio', 'Sánchez Ortiz', 'M', '2000-11-17', 'Condominio El Bosque, zona 12', '12345700', 'esanchez@ufm.edu', '789-654-321'),
('20223034', 'Gabriela', 'Ramírez Núñez', 'F', '2003-01-25', 'Barrio Las Cañas, zona 3', '12345701', 'gramirez@ufm.edu', '456-321-987'),
('20223146', 'Cristian', 'Alvarez Paredes', 'M', '2002-06-05', 'Villas de San Juan, zona 5', '12345702', 'calvarez@ufm.edu', '321-654-456'),
('20223258', 'Paola', 'Vargas Rojas', 'F', '2000-10-10', 'Colonia El Progreso, zona 4', '12345703', 'pvargas@ufm.edu', '789-123-654'),
('20223370', 'Mauricio', 'Mendoza Jiménez', 'M', '2001-12-30', 'Boulevard Las Brisas, zona 7', '12345704', 'mmendoza@ufm.edu', '987-456-321'),
('20223482', 'Isabella', 'García Méndez', 'F', '2003-09-22', 'Residenciales La Colina, zona 18', '12345705', 'igarcia@ufm.edu', '654-987-123'),
('20223594', 'Felipe', 'Pérez Díaz', 'M', '2004-07-02', 'Urbanización Santa Ana, zona 6', '12345706', 'fperez@ufm.edu', '456-123-987'),
('20223706', 'Victoria', 'López Márquez', 'F', '2002-05-18', 'Ciudad San Antonio, zona 9', '12345707', 'vlopez@ufm.edu', '321-789-654'),
('20223818', 'Andrés', 'Ortega Domínguez', 'M', '2000-08-14', 'Colonia Vista Hermosa, zona 17', '12345708', 'aortega@ufm.edu', '789-987-456');

SELECT * FROM Estudiante;

CREATE TABLE Asignacion (
    Carne_Estudiante VARCHAR(255),
    Horario_Codigo VARCHAR(255),
    Nota DECIMAL(5, 2) NOT NULL,
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY (Carne_Estudiante, Horario_Codigo),
    FOREIGN KEY (Carne_Estudiante) REFERENCES Estudiante(carne),
    FOREIGN KEY (Horario_Codigo) REFERENCES Horario(codigo)
);

INSERT INTO Asignacion (Carne_Estudiante, Horario_Codigo, Nota, Estado)
VALUES 

-- Ciclo Isaac 2023

('20220289', 'CS202437', 88.30, 'Aprobado'),
('20220289', 'CS202439', 92.50, 'Aprobado'),
('20220289', 'CS202441', 85.00, 'Aprobado'),
('20220289', 'CS202443', 90.00, 'Aprobado'),
('20220289', 'CS202445', 89.00, 'Aprobado'),
('20220289', 'CS202447', 87.50, 'Aprobado'),
('20220289', 'CS202449', 91.20, 'Aprobado'),
('20220289', 'CS202451', 86.40, 'Aprobado'),
('20220289', 'CS202453', 93.00, 'Aprobado'),
('20220289', 'CS202455', 88.75, 'Aprobado'),
('20220289', 'CS202457', 91.50, 'Aprobado'),
('20220289', 'CS202459', 85.70, 'Aprobado'),
('20220289', 'CS202461', 90.60, 'Aprobado'),
('20220289', 'CS202463', 89.30, 'Aprobado'),
('20220289', 'CS202465', 87.00, 'Aprobado'),
('20220289', 'CS202467', 88.90, 'Aprobado'),
('20220289', 'CS202469', 92.40, 'Aprobado'),

-- Ciclo Paco 2023

('20220565', 'CS202437', 75.20, 'Aprobado'),
('20220565', 'CS202440', 92.00, 'Aprobado'),
('20220565', 'CS202442', 81.30, 'Aprobado'),
('20220565', 'CS202444', 89.50, 'Aprobado'),
('20220565', 'CS202446', 77.40, 'Aprobado'),
('20220565', 'CS202448', 90.10, 'Aprobado'),
('20220565', 'CS202450', 67.80, 'Aprobado'),
('20220565', 'CS202452', 78.90, 'Aprobado'),
('20220565', 'CS202453', 85.70, 'Aprobado'),
('20220565', 'CS202456', 68.20, 'Aprobado'),
('20220565', 'CS202458', 95.00, 'Aprobado'),
('20220565', 'CS202460', 79.60, 'Aprobado'),
('20220565', 'CS202462', 91.80, 'Aprobado'),
('20220565', 'CS202464', 83.50, 'Aprobado'),
('20220565', 'CS202466', 84.90, 'Aprobado'),
('20220565', 'CS202467', 71.40, 'Aprobado'),
('20220565', 'CS202470', 66.30, 'Aprobado'),

-- Ciclo Rodrigo 2023

('20200424', 'CS202437', 80.40, 'Aprobado'),
('20200424', 'CS202440', 88.50, 'Aprobado'),
('20200424', 'CS202442', 91.00, 'Aprobado'),
('20200424', 'CS202444', 94.20, 'Aprobado'),
('20200424', 'CS202446', 75.60, 'Aprobado'),
('20200424', 'CS202448', 85.10, 'Aprobado'),
('20200424', 'CS202450', 69.30, 'Aprobado'),
('20200424', 'CS202452', 72.40, 'Aprobado'),
('20200424', 'CS202453', 87.80, 'Aprobado'),
('20200424', 'CS202456', 82.20, 'Aprobado'),
('20200424', 'CS202458', 74.30, 'Aprobado'),
('20200424', 'CS202460', 95.50, 'Aprobado'),
('20200424', 'CS202462', 76.60, 'Aprobado'),
('20200424', 'CS202464', 88.20, 'Aprobado'),
('20200424', 'CS202466', 78.40, 'Aprobado'),
('20200424', 'CS202468', 66.90, 'Aprobado'),
('20200424', 'CS202470', 70.10, 'Aprobado'),

-- Ciclo Luis 2023

('20220668', 'CS202437', 85.60, 'Aprobado'),
('20220668', 'CS202440', 73.20, 'Aprobado'),
('20220668', 'CS202442', 90.50, 'Aprobado'),
('20220668', 'CS202444', 79.30, 'Aprobado'),
('20220668', 'CS202446', 93.70, 'Aprobado'),
('20220668', 'CS202448', 81.40, 'Aprobado'),
('20220668', 'CS202450', 76.10, 'Aprobado'),
('20220668', 'CS202452', 95.80, 'Aprobado'),
('20220668', 'CS202453', 88.90, 'Aprobado'),
('20220668', 'CS202456', 70.20, 'Aprobado'),
('20220668', 'CS202458', 92.30, 'Aprobado'),
('20220668', 'CS202460', 84.50, 'Aprobado'),
('20220668', 'CS202462', 67.40, 'Aprobado'),
('20220668', 'CS202464', 80.20, 'Aprobado'),
('20220668', 'CS202466', 89.60, 'Aprobado'),
('20220668', 'CS202468', 72.90, 'Aprobado'),
('20220668', 'CS202470', 78.10, 'Aprobado');

SELECT * FROM Asignacion;

CREATE TABLE Ciclo (
    codigo VARCHAR(255) PRIMARY KEY,
    tipo_ciclo VARCHAR(255) NOT NULL,
    numero INT NOT NULL,
    Ano INT NOT NULL
);

INSERT INTO Ciclo (codigo, tipo_ciclo, numero, Ano)
VALUES 

('CIC202201', 'Semestral', 1, 2022),
('CIC202202', 'Verano', 1, 2022),
('CIC202203', 'Semestral', 2, 2022),
('CIC202204', 'Verano', 2, 2022),

('CIC202301', 'Semestral', 1, 2023),
('CIC202302', 'Verano', 1, 2023),
('CIC202303', 'Semestral', 2, 2023),
('CIC202304', 'Verano', 2, 2023),

('CIC202401', 'Semestral', 1, 2024),
('CIC202402', 'Verano', 1, 2024),
('CIC202403', 'Semestral', 2, 2024),
('CIC202404', 'Verano', 2, 2024),

('CIC202501', 'Semestral', 1, 2025),
('CIC202502', 'Verano', 1, 2025),
('CIC202503', 'Semestral', 2, 2025),
('CIC202504', 'Verano', 2, 2025);

SELECT * FROM Ciclo;

CREATE TABLE HistorialCiclos (
    Curso_Codigo VARCHAR(255),
    Ciclo_Codigo VARCHAR(255),
    fecha_Inicio DATE NOT NULL,
    Fecha_Fin DATE NOT NULL,
    PRIMARY KEY (Curso_Codigo, Ciclo_Codigo),
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(codigo),
    FOREIGN KEY (Ciclo_Codigo) REFERENCES Ciclo(codigo)
);

INSERT INTO HistorialCiclos (Curso_Codigo, Ciclo_Codigo, fecha_Inicio, Fecha_Fin)
VALUES

-- Ciclo CIC202201
('FI001', 'CIC202201', '2022-01-04', '2022-05-17'),
('MA002', 'CIC202201', '2022-01-04', '2022-05-17'),
('MA001', 'CIC202201', '2022-01-04', '2022-05-17'),
('EC001', 'CIC202201', '2022-01-04', '2022-05-17'),
('CS001', 'CIC202201', '2022-01-04', '2022-05-17'),
('HU001', 'CIC202201', '2022-01-04', '2022-05-17'),
('CS002', 'CIC202201', '2022-01-04', '2022-05-17'),
('CS003', 'CIC202201', '2022-01-04', '2022-05-17'),

-- Ciclo CIC202202
('CYV01', 'CIC202202', '2022-06-07', '2022-07-15'),
('CYV02', 'CIC202202', '2022-06-07', '2022-07-15'),

-- Ciclo CIC202203
('SS001', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS002', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS003', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS004', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS005', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS006', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS007', 'CIC202203', '2022-08-03', '2022-11-30'),
('SS008', 'CIC202203', '2022-08-03', '2022-11-30'),

-- Ciclo CIC202301
('TS001', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS002', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS003', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS004', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS005', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS006', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS007', 'CIC202301', '2023-01-01', '2023-05-31'),
('TS008', 'CIC202301', '2023-01-01', '2023-05-31'),

-- Ciclo CIC202302
('CSV01', 'CIC202302', '2023-01-01', '2023-05-31'),

-- Ciclo CIC202303
('CS004', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS005', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS006', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS007', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS008', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS009', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS010', 'CIC202303', '2023-01-01', '2023-05-31'),
('CS011', 'CIC202303', '2023-01-01', '2023-05-31'),

-- Ciclo CIC202401
('QS001', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS002', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS003', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS004', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS005', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS006', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS007', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS008', 'CIC202401', '2024-01-01', '2024-05-31'),
('QS009', 'CIC202401', '2024-01-01', '2024-05-31'),

-- Ciclo CIC202403
('SX001', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX002', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX003', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX004', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX005', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX006', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX007', 'CIC202403', '2024-01-01', '2024-05-31'),
('SX008', 'CIC202403', '2024-01-01', '2024-05-31'),

-- Ciclo CIC202501
('SP001', 'CIC202501', '2025-01-01', '2025-05-31'),
('SP002', 'CIC202501', '2025-01-01', '2025-05-31'),
('SP003', 'CIC202501', '2025-01-01', '2025-05-31'),
('SP004', 'CIC202501', '2025-01-01', '2025-05-31'),
('SP005', 'CIC202501', '2025-01-01', '2025-05-31'),
('SP006', 'CIC202501', '2025-01-01', '2025-05-31'),
('SP007', 'CIC202501', '2025-01-01', '2025-05-31'),

-- Ciclo CIC202503
('OS001', 'CIC202503', '2025-01-01', '2025-05-31'),
('OS002', 'CIC202503', '2025-01-01', '2025-05-31'),
('OS003', 'CIC202503', '2025-01-01', '2025-05-31'),
('OS004', 'CIC202503', '2025-01-01', '2025-05-31'),
('OS005', 'CIC202503', '2025-01-01', '2025-05-31'),
('OS006', 'CIC202503', '2025-01-01', '2025-05-31');

SELECT * FROM HistorialCiclos;