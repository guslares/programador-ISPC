create database pelu_canina;
USE pelu_canina;
CREATE TABLE dueno (
dni int NOT NULL,
nombre varchar(30) NOT NULL,
apellido varchar(20) NOT NULL,
telefono int NOT NULL,
direccion varchar(50) NOT NULL,
PRIMARY KEY (dni)
);

CREATE TABLE perro (
id_can int NOT NULL auto_increment,
nombre_can varchar(15) NOT NULL,
fecha_nac date NOT NULL,
sexo char NOT NULL,
dni_dueno int NOT NULL,
PRIMARY KEY (id_can),
FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
);

CREATE TABLE historial (
id_historial int NOT NULL auto_increment,
fecha date NOT NULL,
perro int NOT NULL,
descripcion varchar(255) NOT NULL,
monto decimal (10,2) NOT NULL,
PRIMARY KEY (id_historial),
FOREIGN KEY (perro) REFERENCES perro(id_can)
);


INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("40363849", "ELTON", "TITO", "1160524444", "RIO DE JANEIRO 575");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("32568999", "SUSANA", "ORIA", "1154893698", "PLANES 1251");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("46593866", "ELVIO", "LINISTA", "1146892222", "REPETTO 235");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("35668895", "AQUILES", "CASTRO", "1156894848", "RIVADAVIA 5254");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("94636987", "PEDRO", "ESCAMOSO", "1155880203", "ROSARIO 841");
INSERT INTO dueno (dni, nombre, apellido, telefono, direccion) VALUES ("20363849", "AQUINO", "PASANADA", "1150554444", "PARRAL 46");

INSERT INTO perro (nombre_can, fecha_nac, sexo, dni_dueno) VALUES ("MORITA", "2018-01-15", "H", "40363849");
INSERT INTO perro (nombre_can, fecha_nac, sexo, dni_dueno) VALUES ("CIRO", "2008-11-03", "M", "32568999");
INSERT INTO perro (nombre_can, fecha_nac, sexo, dni_dueno) VALUES ("NEGRO", "2019-01-22", "M", "46593866");
INSERT INTO perro (nombre_can, fecha_nac, sexo, dni_dueno) VALUES ("PANCHO", "2019-01-28", "M", "35668895");
INSERT INTO perro (nombre_can, fecha_nac, sexo, dni_dueno) VALUES ("SOFIA", "2012-02-20", "H", "20363849");
INSERT INTO perro (nombre_can, fecha_nac, sexo, dni_dueno) VALUES ("TIMON", "2021-01-02", "M", "94636987");

-- punto 4 / Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE perro set fecha_nac = "2021-05-03" where id_can = 3;

-- punto 12 / Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
select * from perro where sexo = "M" and fecha_nac between "2020-01-01" and "2022-12-31";
