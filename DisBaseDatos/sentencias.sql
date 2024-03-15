CREATE TABLE pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_paciente VARCHAR(30),
    apellido_paciente VARCHAR(30),
    edad_paciente INT,
    telefono VARCHAR(30),
    id_archivo_medico INT,
    enfermedad_cronica VARCHAR(30),
    direccion VARCHAR(30)
);

-- INSERT PARA LA TABLA DE PACIENTES --

INSERT INTO pacientes (nombre_paciente, apellido_paciente, edad_paciente, telefono, id_archivo_medico, enfermedad_cronica, direccion)
VALUES ('Juan', 'González', 35, '555-1234', 1, 'Hipertensión', 'Calle Principal 123');

INSERT INTO pacientes (nombre_paciente, apellido_paciente, edad_paciente, telefono, id_archivo_medico, enfermedad_cronica, direccion)
VALUES ('María', 'López', 45, '555-5678', 2, 'Diabetes', 'Avenida 5 de Mayo 456');

INSERT INTO pacientes (nombre_paciente, apellido_paciente, edad_paciente, telefono, id_archivo_medico, enfermedad_cronica, direccion)
VALUES ('Pedro', 'Martínez', 28, '555-9876', 3, 'Asma', 'Calle del Bosque 789');

INSERT INTO pacientes (nombre_paciente, apellido_paciente, edad_paciente, telefono, id_archivo_medico, enfermedad_cronica, direccion)
VALUES ('Ana', 'Ramírez', 50, '555-4321', 4, 'Artritis', 'Avenida Revolución 101');

INSERT INTO pacientes (nombre_paciente, apellido_paciente, edad_paciente, telefono, id_archivo_medico, enfermedad_cronica, direccion)
VALUES ('Luis', 'Hernández', 60, '555-8765', 5, 'Cáncer', 'Calle Rosas 222');


CREATE TABLE archivos_medicos (
    id_archivo_medico INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT REFERENCES pacientes(id_paciente),
    nombre_archivo VARCHAR(40),
    url_archivo VARCHAR(255)
);

-- INSERT PARA LA TABLA DE ARCHIVOS MEDICOS --

INSERT INTO archivos_medicos (id_paciente, nombre_archivo, url_archivo)
VALUES (1, 'Historial Clínico', 'http://ejemplo.com/historial1');

INSERT INTO archivos_medicos (id_paciente, nombre_archivo, url_archivo)
VALUES (2, 'Laboratorios', 'http://ejemplo.com/lab2');

INSERT INTO archivos_medicos (id_paciente, nombre_archivo, url_archivo)
VALUES (3, 'Radiografías', 'http://ejemplo.com/radiografias3');

INSERT INTO archivos_medicos (id_paciente, nombre_archivo, url_archivo)
VALUES (4, 'Análisis de Sangre', 'http://ejemplo.com/analisis4');

INSERT INTO archivos_medicos (id_paciente, nombre_archivo, url_archivo)
VALUES (5, 'Tomografías', 'http://ejemplo.com/tomografias5');


CREATE TABLE tipos_enfermedades (
    id_enfermedad INT PRIMARY KEY AUTO_INCREMENT,
    nombre_enfermedad VARCHAR,
    descripcion_enfermedad VARCHAR
);

-- INSERT PARA LA TABLA DE TIPOS DE ENFERMEDADES --

INSERT INTO tipos_enfermedades (nombre_enfermedad, descripcion_enfermedad)
VALUES ('Hipertensión', 'Afección caracterizada por una presión arterial alta.');

INSERT INTO tipos_enfermedades (nombre_enfermedad, descripcion_enfermedad)
VALUES ('Diabetes', 'Enfermedad crónica que afecta la forma en que el cuerpo utiliza la glucosa.');

INSERT INTO tipos_enfermedades (nombre_enfermedad, descripcion_enfermedad)
VALUES ('Asma', 'Trastorno respiratorio que provoca episodios de sibilancias, dificultad para respirar y opresión en el pecho.');

INSERT INTO tipos_enfermedades (nombre_enfermedad, descripcion_enfermedad)
VALUES ('Artritis', 'Inflamación de una o más articulaciones del cuerpo.');

INSERT INTO tipos_enfermedades (nombre_enfermedad, descripcion_enfermedad)
VALUES ('Cáncer', 'Enfermedad caracterizada por el crecimiento descontrolado y la propagación de células anormales.');


CREATE TABLE direcciones (
    id_direccion INT PRIMARY KEY AUTO_INCREMENT,
    calle VARCHAR(30),
    colonia VARCHAR(50),
    numero VARCHAR(30),
    pais INT,
    ciudad INT
);

-- INSERT PARA LA TABLA DE DIRECCIONES --

INSERT INTO direcciones (calle, colonia, numero, pais, ciudad)
VALUES ('Calle Principal', 'Centro', '123', 'México', 'Ciudad de México');

INSERT INTO direcciones (calle, colonia, numero, pais, ciudad)
VALUES ('Avenida Juárez', 'Reforma', '456', 'México', 'Puebla');

INSERT INTO direcciones (calle, colonia, numero, pais, ciudad)
VALUES ('Calle del Sol', 'Colinas del Valle', '789', 'México', 'Monterrey');

INSERT INTO direcciones (calle, colonia, numero, pais, ciudad)
VALUES ('Avenida del Bosque', 'Bosques de las Lomas', '101', 'México', 'Ciudad de México');

INSERT INTO direcciones (calle, colonia, numero, pais, ciudad)
VALUES ('Calle Flores', 'Las Rosas', '222', 'México', 'Guadalajara');


CREATE TABLE ciudades (
    id_ciudad INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40)
);

-- INSERT PARA LA TABLA DE CIUDADES --

INSERT INTO ciudades (id_ciudad, nombre)
VALUES (1, 'Ciudad de México');

INSERT INTO ciudades (id_ciudad, nombre)
VALUES (2, 'Puebla');

INSERT INTO ciudades (id_ciudad, nombre)
VALUES (3, 'Monterrey');

INSERT INTO ciudades (id_ciudad, nombre)
VALUES (4, 'Guadalajara');

INSERT INTO ciudades (id_ciudad, nombre)
VALUES (5, 'Querétaro');


CREATE TABLE paises (
    id_pais INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30)
);

-- INSERT PARA LA TABLA DE PAISES --
INSERT INTO paises (nombre_pais)
VALUES ('México');

INSERT INTO paises (nombre_pais)
VALUES ('Estados Unidos');

INSERT INTO paises (nombre_pais)
VALUES ('Canadá');

INSERT INTO paises (nombre_pais)
VALUES ('Argentina');

INSERT INTO paises (nombre_pais)
VALUES ('Brasil');

