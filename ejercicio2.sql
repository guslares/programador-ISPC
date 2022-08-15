DROP DATABASE IF EXISTS peluqueria_canina;
CREATE DATABASE peluqueria_canina CHARACTER SET utf8mb4;
USE peluqueria_canina;

CREATE TABLE dueno (
  id INT NOT NULL AUTO_INCREMENT,
  dni INT PRIMARY KEY NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  telefono VARCHAR(15) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE perro (
  id_perro INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  sexo ENUM('H', 'M') NOT NULL,
  dni_dueno INT NOT NULL,
  PRIMARY KEY (id_perro),
  FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
);

 CREATE TABLE historial (
    id_historial INT NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    perro INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    monto FLOAT UNSIGNED NOT NULL
    PRIMARY KEY (id_historial)
    FOREIGN KEY (perro) REFERENCES perro(id_perro),

);
-- dueno
INSERT INTO dueno VALUES (1, '32568452', 'Leandro', 'Artes', 'Salta 125', '3514589562');
INSERT INTO dueno VALUES (2, '10005478', 'Andres', 'Salima', 'San Lorenzo 874', '3704258964');
INSERT INTO dueno VALUES (3, '45023698', 'Carmen', 'Gomez','Salguero 225', '3546985712');
INSERT INTO dueno VALUES (4, '23569412', 'Leticia','Gutierrez', 'Mitre 250', '3534589654');
INSERT INTO dueno VALUES (5, '35698415', 'Ana', 'Gonzalez', 'Illia 265', '34158756687');
INSERT INTO dueno VALUES (6, '31452004', 'Angel', 'Stica', 'Obispo Oro 157', '01150896725');

-- perro
INSERT INTO perro VALUES (1,'pericles', '2022/08/21', 'M','32568452');
INSERT INTO perro VALUES (2,'pichi', '2021/05/15', 'H','10005478');
INSERT INTO perro VALUES (3,'grecia', '2010/6/20', 'H','45023698');
INSERT INTO perro VALUES (4,'tadeo', '2018/03/11', 'M','23569412');
INSERT INTO perro VALUES (5,'merlin', '2020/06/10', 'M','35698415');
INSERT INTO perro VALUES (6,'bugy', '2019/04/13', 'H','31452004');

-- historial
INSERT INTO historial VALUES (1, '2021/04/23', 1, 'vacunas', 5000);
INSERT INTO historial VALUES (2, '2020/03/24', 2, 'vacunas', 3000);
INSERT INTO historial VALUES (3, '2019/09/23', 3, 'castración', 8000);
INSERT INTO historial VALUES (4, '2022/07/05', 4, 'vacunas', 2500);
INSERT INTO historial VALUES (5, '2022/07/23', 5, 'castración', 8000);
INSERT INTO historial VALUES (6, '2010/10/13', 6, 'vacunas', 6500);

-- Actualizar la dirección de un dueño
UPDATE dueno
  SET direccion='Libertad 123'
  WHERE dni='32568452';