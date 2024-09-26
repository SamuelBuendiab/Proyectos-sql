create database dimayor;
use dimayor;
/*PRIMERA TABLA*/
CREATE TABLE jugadores ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT,
    cedula int unique,
	nombre VARCHAR(255),
    fecha_nacimiento DATE,
    nacionalidad VARCHAR(55),
    posicion VARCHAR(55),
    equipo varchar(100),
    FOREIGN KEY (equipo_id) REFERENCES equipos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
drop table jugadores;
drop table equipos;
drop table dimayor;
drop table tecnicos;
/*SEGUNDA TABLA*/
CREATE TABLE equipos ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(255) UNIQUE,
    ciudad VARCHAR(255),
    estadio VARCHAR(25),
    aforo INT(8),
	fundacion INT(8)
);
/*TERCERA TABLA*/
CREATE TABLE tecnicos ( 
    identificacion INT(10) PRIMARY KEY,
    equipo_id INT,
    nombre varchar(50),
    apellido varchar(50),
    nacimiento date,
    pais_nacimiento varchar(50),
    ciudad_nacimiento varchar(50),
	FOREIGN KEY (equipo_id) REFERENCES equipos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
/*cuarta tabla*/
CREATE TABLE estadios ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) UNIQUE,
    ciudad VARCHAR(255),
    equipo_local VARCHAR(25),
    aforo double,
	fundacion INT(8)
);
/*quita tabla*/
CREATE TABLE partidos ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    estadio_id int,
    fecha datetime,
    ciudad VARCHAR(255),
    equipo_local VARCHAR(25),
    equipo_visitante VARCHAR(25),
    FOREIGN KEY (estadio_id) REFERENCES estadios(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
drop table partidos;
ALTER TABLE `dimayor`.`partidos` 
ADD COLUMN `goles` INT NULL DEFAULT NULL AFTER `equipo_visitante`;


/*sexta tabla*/
create table goles(
id int NOT null auto_increment,
partido_id int not null,
tiempo time,
jugador_id int not null,
cantidad int,
descripcion varchar(60),
primary key (id),
constraint partido_id foreign key (partido_id ) references partidos (id),
constraint jugador_id foreign key (jugador_id) references jugadores (id)
);
drop table goles;

/*septima tabla*/
CREATE TABLE dimayor ( 
temporada int auto_increment PRIMARY KEY,
equipos_id int not null,
partidos_id int not null,
constraint equipos_id foreign key (equipos_id ) references equipos (id),
constraint partidos_id foreign key (partidos_id) references partidos (id)
);
/*llenar tablas tabla*/

/*primera tabla*/
	
/*primer equipo*/
select*from jugadores;
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9145032', 'Kevin Mier','2000-05-18','colombiana','portero','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1093786', 'Francisco da Costa Aragão','1995-05-05','	brasileño','delantero','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1298304', 'Jefferson Duque','1987-05-17','colombiana','delantero','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1497502', 'Nelson Palacio','2001-06-16','colombiana','mediocampo','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1603826', 'Yerson Candelo','1992-02-24','colombiana','mediocampo','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1972046', 'Sebastián Gómez','1996-06-03','colombiana','mediocampo','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1204792', 'Jarlan Barrera','1995-09-16','colombiana','mediocampo','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1194470', 'Cristián Zapata','1986-09-30','colombiana','defensa','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9182710', 'Sergio Mosquera','1994-02-09','colombiana','defensa','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3218749', 'Cristian Devenis','2001-01-25','colombiana','defensa','Atletico Nacional');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2123849', 'Édier Ocampo Vidal','2000-10-03','colombiana','defensa','Atletico Nacional');
/*segundo equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('8920183', 'Sebastián Viera','1983-04-07','colombiana','portero','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('7421243', 'Carlos Bacca','1986-09-08','colombiana','delantero','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('0192834', 'Luis Sandoval','1999-06-01','colombiana','delantero','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1238549', 'Juan Fernando Quintero','1993-01-18','colombiana','mediocampo','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9834829', 'Léider Iván Berrío','1998-06-07','colombiana','mediocampo','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2139423', 'Léider Sebastián Berdugo','2002-02-19','colombiana','mediocampo','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1203443', 'Didier Moreno','1991-09-17','colombiana','mediocampo','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3282331', 'Federico Andueza','1997-05-25','uruguayo','defensa','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2243030', 'Andrey Estupiñán','1994-06-05','colombiana','defensa','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2130451', 'Edwin Herrera','1998-09-02','colombiana','defensa','Junior');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9409201', 'César Haydar','2001-03-31','colombiana','defensa','Junior');
/*tercero equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2212404', 'Kevin Dawson','1992-02-08','uruguayo','portero','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9381029', 'Kevin Velasco','1997-03-10','colombiana','delantero','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('5349102', 'Gustavo Ramírez','1990-05-13','paraguayo','delantero','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3230123', 'Daniel Andrés Mantilla ','1996-12-25','colombiana','mediocampo','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1294514', 'Rafael Guillermo Bustamante','1999-09-02','colombiana','mediocampo','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('0392840', 'Edwin Fabricio Castro','1992-02-21','colombiana','mediocampo','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2134814', 'Andrés Arroyo','2002-01-20','colombiana','mediocampo','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1481904', 'Germán Mera','1990-04-05','colombiano','defensa','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3810244', 'José Carlos Caldera','2002-02-04','colombiana','defensa','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('5219482', 'Aldair Gutierrez','1998-05-17','colombiana','defensa','Deportivo Cali');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1284148', 'Kevin Riascos','1995-06-21','colombiana','defensa','Deportivo Cali');
/*cuarto equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3928401', 'Alvaro Montero','1995-03-29','colombiana','portero','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3819044', 'Leonardo Castro','1992-06-14','colombiana','delantero','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9434831', 'Fernando Uribe','1988-01-01','colombiana','delantero','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('0491453', 'Daniel Felipe Cataño','1991-01-17','colombiana','mediocampo','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3253124', 'Oscar Cortés','2003-12-03','colombiana','mediocampo','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9541093', 'David Silva','1986-12-13','colombiana','mediocampo','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3489140', 'Juan David Torres','2001-03-31','colombiana','mediocampo','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1340134', 'Andrés Llinás','1997-06-23','colombiano','defensa','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2301244', 'Juan Pablo Vargas','1995-06-06','costa rica','defensa','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4321024', 'Stiven Vega','1998-05-22','colombiana','defensa','Millonarios');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4210234', 'Jorge Arias ','1992-10-13','colombiana','defensa','Millonarios');
/*quinto equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3410223', 'James José Aguirre','1992-05-21','colombiana','portero','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1829032', 'Teófilo Gutiérrez','1985-05-17','colombiana','delantero','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1093522', 'Jhord Bayron Garcés','1993-05-30','colombiana','delantero','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9128430', 'Cristhian Subero','1991-05-26','colombiana','mediocampo','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1389433', 'Javier Reina','1989-01-04','colombiana','mediocampo','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('0924729', 'Jáder Antonio Maza','1994-11-04','colombiana','mediocampo','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4892840', 'Juan Gabriel Marcelin','2000-05-05','colombiana','mediocampo','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3303857', 'Cristian Florez','1994-12-30','colombiano','defensa','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('5783041', 'Carlos Henao','1988-12-03','colombiano','defensa','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4109384', 'Francisco Javier Meza','1991-08-29','colombiana','defensa','Atletico Bucaramanga');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1804730', 'Jefferson Mena','1989-05-15','colombiana','defensa','Atletico Bucaramanga');
/*sexto equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4930941', 'Neto Volpi','1992-08-01','brasileño','portero','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3012948', 'Brayan Gil','2001-06-28','colombiana','delantero','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4329123', 'Diego Herazo','1996-04-14','colombiana','delantero','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4320193', 'Yeison Guzmán','1998-03-22','colombiana','mediocampo','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4239134', 'Jeison Lucumí','1995-04-08','colombiana','mediocampo','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('5310345', 'Cristian Estaban Trujillo ','1998-08-08','colombiana','mediocampo','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1203958', 'Kevin Andrés Pérez','1997-07-18','colombiana','mediocampo','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1239430', 'Julián Alveiro Quiñones','1989-11-05','colombiano','defensa','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4095913', 'Facundo Boné','1995-11-16','uruguayo','defensa','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('5245234', 'Léider Andrés Riascos','2000-07-04','colombiana','defensa','Deportes Tolima');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3940192', 'José Abad Cuenú','1995-02-17','colombiana','defensa','Deportes Tolima');
/*septimo equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3941541', 'Debinson Fernando Mateus','2000-10-28','colombiana','portero','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3210235', 'Dayro Moreno','1985-09-18','colombiana','delantero','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1205934', 'Santiago Mera Orejuela','2001-07-19','colombiana','delantero','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3465891', 'Sherman Cárdenas','1989-08-07','colombiana','mediocampo','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('6512454', 'Guillermo Celis','1993-05-08','colombiana','mediocampo','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('7624163', 'Alejandro Artunduaga','1997-09-09','colombiana','mediocampo','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('6745269', 'Juan David Rodriguez','1992-09-24','colombiana','mediocampo','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1547643', 'Nahuel Gallardo','1998-05-09','argentino','defensa','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9856321', 'Andrés Felipe Correa','1984-07-02','colombiano','defensa','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('7342342', 'Fainer Torijano','1988-08-31','colombiana','defensa','Once Caldas');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2213602', 'Santiago Jiménez Mejía','1998-03-23','colombiana','defensa','Once Caldas');

/*octavo equipo*/
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4823951', 'Jan Oblak','1993-01-07','slovaco','portero','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3184914', 'Xavi Hernández','1980-01-25','español','delantero','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1471241', 'Raúl González Blanco','1977-06-27','español','delantero','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3448319', 'Bruno Guimarães','1997-11-16','brazileño','mediocampo','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('9482739', 'Kevin De Bruyne','1991-05-28','belga','mediocampo','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('7194013', 'Fabián Ruiz Peña','1996-04-03','español','mediocampo','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2137473', 'Declan Rice','1999-01-14','ingles','mediocampo','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('2321944', 'Matthijs de Ligt','1999-06-12','holandes','defensa','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('4849301', 'Mario Hermoso','1995-06-18','español','defensa','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('3137758', 'Tosin Adarabioyo','1997-09-24','ingles','defensa','Samuel_Buendia');
INSERT INTO `dimayor`.`jugadores` (`cedula`, `nombre`,`fecha_nacimiento`,`nacionalidad`,`posicion`,`equipo`) VALUES ('1928374', 'Pascal Struijk','1999-06-11','belga','defensa','Samuel_Buendia');
/*segunda tabla*/

select*from equipos;
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Atletico Nacional', 'Medellin','Atanasio Girardot','40943','1947');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Junior', 'Barranquilla','Roberto Melendez ','46692','1924');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Deportivo Cali', 'Cali','Estadio Deportivo Cali','52000','1912');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Millonarios', 'Bogota','Nemésio Camacho El Campín','39000','1946');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Atletico Bucaramanga', 'Bucaramanga','EstadioAlfonso López','28000','1949');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Deportes Tolima', 'Ibague','Manuel Murillo Toro','28100','1954');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Once Caldas', 'Manizales','Palogrande','28678','1961');
insert into `dimayor`.`equipos` (`nombre_equipo`, `ciudad`,`estadio`,`aforo`,`fundacion`) VALUES ('Samuel_Buendia', 'Bogota','López Pumarejo','12000','2010');

/*tercera tabla*/
select*from tecnicos;
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('2371938', 'Paulo','Autuori','1956-08-25','Brazil','Rio de Janeiro');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('4385028', 'Hernán','Darío Gómez','1956-02-03','Colombia','Medellin');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('4572483', 'Jorge','Luiz Pinto','1952-12-16','Colombia','San Gil');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('3736522', 'Alberto','Gamero','1964-03-03','Colombia','Santa Marta');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('1239401', 'Alexis','Marquez','1976-06-27','Colombia','Pereira');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('4429895', 'Juan','Cruz Real','1976-10-08','Argentina','Tandil');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('2349195', 'Pedro','Sarmiento','1956-10-26','Colombia','Medellin');
insert into `dimayor`.`tecnicos` (`identificacion`, `nombre`,`apellido`,`nacimiento`,`pais_nacimiento`,`ciudad_nacimiento`) VALUES ('1033097130', 'Samuel','Buendia Benavides','2004-09-05','Colombia','Bogota');


/*cuarta tabla*/
select*from estadios;
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('Metropolitano Roberto Meléndez','Barranquilla','Junior','46.692','1986');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('Deportivo Cali','Palmira','Deportivo Cali','44.000','2010');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('General Santander','Cúcuta','Cúcuta Deportivo','42.901','1948');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('Atanasio Girardot','Medellín','Atlético Nacional','40.943','1953');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('Olímpico Pascual Guerrero','Cali','América','38.568','1937');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('El Campín','Bogotá','Millonarios','36.343','1938');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('Hernán Ramírez Villegas','Pereira','Deportivo Pereira','30.297','1971');
insert into `dimayor`.`estadios` (`nombre`, `ciudad`,`equipo_local`,`aforo`,`fundacion`) VALUES ('Palogrande','Manizales','Once Caldas','28.678','1994');

/*quienta tabla*/
select*from partidos;
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-02-16','Barranquilla','Junior','Once caldas','4');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-02-23','Medellin','Atletico nacional','Deportivo Cali','1');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-03-16','Pereira','Once caldas','Millonarios','2');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-03-30','Bogota','Deportes tolima','Junior','3');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-05-04','Medellin','Atletico nacional','Atletico bucaramanga','5');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-07-26','Ibague','Deportivo Cali','Deportes tolima','1');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-08-17','Cucuta','Atletico Bucaramanga','Samuel_Buendia','2');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-08-31','Manizales','Once Caldas','Junior','4');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-09-28','Medellin','Atletico Nacional','Millonarios','1');
insert into `dimayor`.`partidos` (`fecha`, `ciudad`,`equipo_local`,`equipo_visitante`,`goles`) VALUES ('2023-10-05','Palmira','Deportivo Cali','Samuel_Buendia','3');


/*sexta tabla*/
select*from goles;
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`,  `descripcion`) VALUES ('1', '1', '00:10:23', '13', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`,  `descripcion`) VALUES ('2', '1', '00:18:40', '18','tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('3', '1', '00:45:10', '14','tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`,  `descripcion`) VALUES ('4', '1', '01:15:15', '68','gol de penalti');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`,  `descripcion`) VALUES ('5', '2', '00:55:10', '3', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('6', '3', '00:05:10', '70', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('7', '3', '00:35:49', '36', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('8', '4', '01:25:00', '16', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('9', '4', '01:26:50', '18', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('10', '4', '01:29:40', '57', 'gol de penalti');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('11', '5', '00:10:15', '3', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('12', '5', '00:40:45', '3', 'gol de penalti');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('13', '5', '00:23:10', '46', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('14', '5', '00:58:20', '47', 'gol de cabeza');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('15', '5', '01:10:20', '2', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('16', '6', '01:20:15', '57', 'gol de cabeza');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('17', '7', '00:20:12', '80', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('18', '7', '00:36:10', '79', 'gol de penalti');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('19', '8', '00:16:23', '13', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('20', '8', '00:25:40', '13', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('21', '8', '00:40:20', '14', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('22', '8', '01:05:20', '72', 'gol de cabeza');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('23', '9', '00:56:20', '39', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('24', '10', '00:10:23', '24', 'tiro al arco');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('25', '10', '00:40:20', '83', 'tiro libre');
INSERT INTO `dimayor`.`goles` (`id`, `partido_id`, `tiempo`, `jugador_id`, `descripcion`) VALUES ('26', '10', '01:20:30', '84', 'gol de cabeza');


/*primera consulta*/
select*from jugadores;
/*segunda consulta*/
select*from jugadores where fecha_nacimiento < '2003-05-01' order by fecha_nacimiento ASC;
/*tercera consulta*/
select nombre,posicion from jugadores;
/*cuarta consulta*/
select*from jugadores where posicion ="delantero";
/*quinta consulta*/
select*from equipos;
select*from equipos where ciudad ="Bogota";
/*sexta consulta*/
select*from equipos where estadio="Atanasio Girardot";
/*septima consulta*/
select nombre,equipo_id from tecnicos;
/*octava consulta eh no la entendi*/
select fecha,ciudad,estadio_id from partidos;
/*novena consulta*/
select nombre_equipo,ciudad,estadio from equipos;
/*decima consulta*/
select equipo_id,ciudad_nacimiento,nombre from tecnicos;