CREATE DATABASE ControlAcademico;

USE ControlAcademico;

CREATE TABLE UNIVERSIDAD (
    Nombre VARCHAR(255) UNIQUE PRIMARY KEY,
    Direccion VARCHAR(255) NOT NULL,
    Correo VARCHAR(255) NOT NULL,
    Telefono VARCHAR(255) NOT NULL
);

CREATE TABLE Facultad (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    Universidad_Nombre VARCHAR(255) NOT NULL,
    FOREIGN KEY (Universidad_Nombre) REFERENCES UNIVERSIDAD(Nombre)
);

CREATE TABLE Carrera (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    Facultad_Codigo VARCHAR(255) NOT NULL,
    FOREIGN KEY (Facultad_Codigo) REFERENCES Facultad(codigo)
);

CREATE TABLE Pensum (
    Codigo VARCHAR(255),
    Carrera_Codigo VARCHAR(255),
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY (Codigo, Carrera_Codigo),
    FOREIGN KEY (Carrera_Codigo) REFERENCES Carrera(codigo)
);

CREATE TABLE Catedratico (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    telefono_personal VARCHAR(255) UNIQUE,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL,
    especializacion VARCHAR(255) NOT NULL
);

CREATE TABLE Curso (
    codigo VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    creditos_teoricos INT NOT NULL,
    creditos_practicos INT NOT NULL,
    Seccion VARCHAR(255) NOT NULL,
    Catedratico_Codigo VARCHAR(255) NOT NULL,
    FOREIGN KEY (Catedratico_Codigo) REFERENCES Catedratico(codigo)
);

CREATE TABLE Curso_Prerequisito (
    Curso_Codigo VARCHAR(255),
    Curso_Prerequisito VARCHAR(255),
    PRIMARY KEY (Curso_Codigo, Curso_Prerequisito),
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(codigo),
    FOREIGN KEY (Curso_Prerequisito) REFERENCES Curso(codigo)
);

CREATE TABLE HistorialPensum (
    Pensum_Codigo VARCHAR(255),
    fecha_Comienza INT NOT NULL,
    Fecha_Termina INT,
    Curso_Codigo VARCHAR(255),
    PRIMARY KEY (Pensum_Codigo, Curso_Codigo),
    FOREIGN KEY (Pensum_Codigo) REFERENCES Pensum(Codigo),
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(Codigo)
);

CREATE TABLE Horario (
    Codigo VARCHAR(255) PRIMARY KEY,
    Curso_Codigo VARCHAR(255) NOT NULL,
    edificio VARCHAR(255) NOT NULL,
    salon VARCHAR(255) NOT NULL,
    dias VARCHAR(255) NOT NULL,
    hora_inicio TIME NOT NULL,
    costo_de_curso DECIMAL(10, 2) NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(codigo)
);

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

CREATE TABLE Asignacion (
    Carne_Estudiante VARCHAR(255),
    Horario_Codigo VARCHAR(255),
    Nota DECIMAL(5, 2) NOT NULL,
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY (Carne_Estudiante, Horario_Codigo),
    FOREIGN KEY (Carne_Estudiante) REFERENCES Estudiante(carne),
    FOREIGN KEY (Horario_Codigo) REFERENCES Horario(codigo)
);

CREATE TABLE Ciclo (
    codigo VARCHAR(255) PRIMARY KEY,
    tipo_ciclo VARCHAR(255) NOT NULL,
    numero INT NOT NULL,
    Anio INT NOT NULL
);

CREATE TABLE HistorialCiclos (
    Curso_Codigo VARCHAR(255),
    Ciclo_Codigo VARCHAR(255),
    fecha_Inicio INT NOT NULL,
    Fecha_Fin INT NOT NULL,
    PRIMARY KEY (Curso_Codigo, Ciclo_Codigo),
    FOREIGN KEY (Curso_Codigo) REFERENCES Curso(codigo),
    FOREIGN KEY (Ciclo_Codigo) REFERENCES Ciclo(codigo)
);