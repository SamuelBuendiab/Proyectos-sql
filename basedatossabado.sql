create database registros;

use registros;

create table cliente(
idcliente varchar(50) primary key,
Nombre varchar(100),
Ciudad varchar(100),
fecha_nacimiento date,
direccion varchar (100),
telefono int(15)

);
ALTER TABLE `registros`.`cliente` 
ADD COLUMN `apellido` VARCHAR(100) NULL AFTER `Nombre`;


create table ciudad(
codigo varchar(15) primary key,
Nombre varchar(100),
superficie float,
poblacion int(15),
altura int(15)

);

INSERT INTO `registros`.`ciudad` (`codigo`, `Nombre`, `superficie`, `poblacion`, `altura`) VALUES ('1', 'Medellin', '382', '2500000', '1495');
INSERT INTO `registros`.`ciudad` (`codigo`, `Nombre`, `superficie`, `poblacion`, `altura`) VALUES ('2', 'Tunja', '121', '1720000', '2800');
INSERT INTO `registros`.`ciudad` (`codigo`, `Nombre`, `superficie`, `poblacion`, `altura`) VALUES ('3', 'Bucaramanga', '162', '582000', '959');
INSERT INTO `registros`.`ciudad` (`codigo`, `Nombre`, `superficie`, `poblacion`, `altura`) VALUES ('4', 'Bogota', '1636', '7181000', '2600');
INSERT INTO `registros`.`ciudad` (`codigo`, `Nombre`, `superficie`, `poblacion`, `altura`) VALUES ('5', 'Barrancabermeja', '1154', '192000', '75');



INSERT INTO `registros`.`cliente` (`idcliente`, `Nombre`, `Ciudad`, `fecha_nacimiento`, `direccion`, `telefono`) VALUES ('1', 'Lorena', 'Medellin', '1973-10-02', 'carrera93a 100#', '20312938');
INSERT INTO `registros`.`cliente` (`idcliente`, `Nombre`, `Ciudad`, `fecha_nacimiento`, `direccion`, `telefono`) VALUES ('2', 'David', 'Bogota', '1994-11-12', 'avenida 39 manzana3', '18304739');
INSERT INTO `registros`.`cliente` (`idcliente`, `Nombre`, `Ciudad`, `fecha_nacimiento`, `direccion`) VALUES ('3', 'Marta', 'tunja', '1971-05-22', 'transverlar 35a 23b');
INSERT INTO `registros`.`cliente` (`idcliente`, `Nombre`, `Ciudad`, `fecha_nacimiento`, `direccion`, `telefono`) VALUES ('4', 'Sara', 'Barrancabermeja', '1989-09-15', 'carrera 83w 89#', '57482104');
INSERT INTO `registros`.`cliente` (`idcliente`, `Nombre`, `Ciudad`, `fecha_nacimiento`, `direccion`, `telefono`) VALUES ('5', 'Juan', 'Barranquilla', '2000-10-15', 'avenida 20 apto 492', '31246594');

UPDATE `registros`.`cliente` SET `apellido` = 'Herrera' WHERE (`idcliente` = '1');
UPDATE `registros`.`cliente` SET `apellido` = 'Martines' WHERE (`idcliente` = '2');
UPDATE `registros`.`cliente` SET `apellido` = 'Velandia' WHERE (`idcliente` = '3');
UPDATE `registros`.`cliente` SET `apellido` = 'Rodrigues' WHERE (`idcliente` = '4');
UPDATE `registros`.`cliente` SET `apellido` = 'Fonseca' WHERE (`idcliente` = '5');

-- consulta 1  Cuáles sonlos clientes deaseo?

select * from cliente;

-- consulta 2 Cuáles sonlas identificaciones,los nombres y los apellidos delos clientes de aseo?

select Nombre,apellido from cliente;

-- consulta 3 Cuáles clientes se llaman Lorena?

select * from cliente where Nombre='Lorena';

-- consulta 4 Cuáles clientes nacieron después del año 1975?

select * from cliente where fecha_nacimiento > '1975-00-00';

-- consulta 5 Cuáles clientes no tienen un número de teléfono asociado?

select * from cliente where telefono IS NULL;

-- consulta 6 Cuálesciudadestienen más de 1400000 habitantes (población)?

select nombre,poblacion from ciudad where poblacion > '1400000';

-- consulta 7 Cuáles ciudades están entre los200 y los500 metros sobre el nivel del mar (Altitud)?

select*from ciudad where altura between '200' and '500';

-- consulta 8 Cuáles ciudades tienen por código 6543, 2587 o 3485?

SELECT* FROM ciudad WHERE codigo IN ( 6543, 2587,3485 );

-- consulta 9 Cuáles ciudades tienen una superficie de 0 y una altitud de 320?

select*from ciudad where superficie=0 and altura=320;

-- consulta 10 Cuálesciudades tienen un nombre que comience por B (desde la A hasta la F) o, cuya superficie sea inferior a 0?

select * from ciudad where superficie < 0 or nombre like'[A-F]%';

-- consulta 11  Cuáles ciudades tienen entre 350000 y 450000 habitantes (población)?

select * from ciudad where poblacion between 350000 and 450000;

select * from ciudad where nombre like '[I]%';

