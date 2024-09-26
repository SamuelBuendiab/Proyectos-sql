create database campeonato;
use campeonato;

create table equipos(
idequipo int(2) primary key,
equipo varchar(50),
tecnico varchar(50),
fundacion date,
ciudad varchar(50),
direccion varchar(50),
telefonos varchar(50)
);

create table jugadores(
idjugador int(10)  primary key,
nombre varchar(25),
apellidos varchar(25),
nacimiento date,
tiposangre varchar(3),
codEquipo int(2),
foreign key (codEquipo) references equipos(idequipo)
);
drop database campeonato;
drop table jugadores;
select * from jugadores;
select * from equipos;


insert into jugadores values ("1",'Lopez', 'Marcos', '1995-05-24','O+','01');
insert into jugadores values("2",'Perez', 'Ana', '1998-09-21','A+','02');
insert into jugadores values("3",'Garcia', 'Juan', '1985-06-10','A-','03');
insert into jugadores values("4",'Perez', 'Luis', '1985-04-03','AB+','04');
insert into jugadores values("5",'Ramos', 'Martin', '1999-08-22','O+','05');
/*ingresar primero*/
insert into equipos values ("01",'Santa fe', 'Juan Marco', '1945-07-14','Bogota','avenida 19a 30sur','2318954762');
insert into equipos values("02",'Millonarios', 'Fernando Arias', '1966-09-11','Bogota','carrera 24a 58w norte','1298763245');
insert into equipos values("03",'Nacional', 'Juan Fonseca', '1955-10-10','Medellin','transversal 48a 20a 30a','4795136489');
insert into equipos values("04",'America', 'Luis diaz', '1950-03-13','Barranquilla','avenida 93 23norte','9468273168');
insert into equipos values("05",'Cali', 'Martin velandia', '1935-09-22','Cali','carrera 30a 39a sur','7246855103');

/*agregar nuevo campo en jugadores*/
alter table jugadores add cedula int(20) not null;
UPDATE `campeonato`.`jugadores` SET `cedula` = '1544789456' WHERE (`idjugador` = '1');
UPDATE `campeonato`.`jugadores` SET `cedula` = '1457894562' WHERE (`idjugador` = '2');
UPDATE `campeonato`.`jugadores` SET `cedula` = '1349856478' WHERE (`idjugador` = '3');
UPDATE `campeonato`.`jugadores` SET `cedula` = '1657942683' WHERE (`idjugador` = '4');
UPDATE `campeonato`.`jugadores` SET `cedula` = '1453657894' WHERE (`idjugador` = '5');

/*agregar sexto registro y remplazarlo*/
insert into jugadores values ('6','Maria', 'Mosquera', '1991-09-14','O-','06');
replace into jugadores values ('6','Maria', 'Vargas', '1993-09-14','AB+','06');

insert into equipos values ("06",'Barranquilla', 'Pedro Perez', '1985-11-04','Barranquilla','avenida 39bis 30norte','7648591364');
replace into equipos values ("06",'Barranquilla', 'Pedro Hernandez', '1945-11-04','Medellin','avenida 29bis 40sur','8648591364');

/*agregar nuevo campo en equipos*/
alter table equipos add Barrio varchar(40);

/*alterar tipo de dato en direccion*/
alter table equipos modify direccion varchar(70);

/*alterar tipo de dato en apellidos*/
alter table jugadores modify apellidos varchar(50);

/*cambiar nombre*/
alter table equipos change equipo nombreequipos varchar(50);

/*cambiar fecha de nacimiento*/
alter table jugadores change nacimiento Fechanacimiento date;

/*cambiar primary key*/
alter table jugadores add primary key (cedula);
alter table jugadores drop primary key;

/*cambiar nombre de las tablas*/
rename table equipos to TblEquipo;
rename table jugadores to TblJugadores;

/*elimnar un campo*/
alter table TblJugadores drop tiposangre;
