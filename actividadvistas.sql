create database biblioteca;
use biblioteca;

create table Libro (
IdLibro int auto_increment not null primary key,
 Titulo nvarchar(100) not null,
Editorial nvarchar (100) not null,
Area nvarchar(100) not null
);

create table Autor(
 IdAutor int auto_increment not null primary key,
 Nombre nvarchar(100) not null,
Nacionalidad nvarchar (30) not null
 );
 
  create table LibAut(
 IdAutor int not null,
foreign key (IdAutor) References Autor (IdAutor),
IdLibro int,
foreign key (IdLibro) References Libro (IdLibro)
);

create table Estudiante(
IdLector int auto_increment not null primary key,
CI nvarchar (20) not null,
Nombre nvarchar(100) not null, 
Direccion nvarchar(100) not null,
Carrera nvarchar(60) not null,
Edad int not null
);

 create table Prestamo(
IdLector int not null,
 Foreign key (IdLector) References Estudiante (IdLector),
IdLibro int not null,
Foreign key (Idlibro) References Libro (Idlibro),
FechaPrestamo nchar (8),
FechaDevolución nchar (8),
Devuelto nchar (8)
);

insert into Libro
values (null, 'Diplomacia', 'B.M.', 'Politico'); # 1 fila afectada .
insert into Libro
values (null, 'Fundamentos de bases de datos', 'MCGRAW-HILL', 'Base De Datos');
insert into Libro
values (null, 'El último Emperador', 'Caralt', 'Autobiografias'); 
insert into Libro
 values (null, 'Fortunata y Jacinta', 'Plaza Janés', 'Novela'); 
 
 insert into Autor
 values (null,'Maquiavelo','Italia');
 insert into Autor
values (null, 'Henry Kissinger', 'Alemania'); # 1 fila afectada.
insert into Autor
values (null, 'Abraham Silberschatz', 'USA'); #1 fila afectada.
insert into Autor
values (null, 'Pu-Yi','China'); # 1 fila afectada.
insert into Autor
values (null, 'Pérez Galdós', 'España'); # 1 fila afectada.
insert into Autor
values (null, 'JOSÉ MANUEL ALARCÓN AGUÍN','España'); 

insert into Estudiante
values (null, '44.312-870-2', 'Yolanda Lozano Encabo','El Cid 45', 'Cs.Politicas', '19'); 
insert into Estudiante
values (null, '47.234.471-P', 'Juan Luis Lopez Vazquez','Jaime I,65', 'Administración', '21'); 
 insert into Estudiante
values (null, '73.735-398-C', 'Louisa Lopez Rubin',' Av. Clavijero 101', 'Informatica', '18');
insert into Estudiante
values (null, '84.954.509-A', 'Anselmo Menendez Garcia', 'Privada 102 Poniente 118',' Astronomia', '21'); 

insert into Prestamo
values (3,1,'25/03/12', '10/04/12', 'No');
insert into Prestamo
values (2,3, '03/02/13', '20/02/13', '22/02/13');
insert into Prestamo
values (4,2,'18/02/13','30/02/13', '25/02/13'); 
insert into Prestamo
values (1,4, '21/02/13', '03/03/13', '05/03/13');
insert into Prestamo
values (2,1, '21/02/99', '05/03/13','30/02/13');


CREATE INDEX IDX_LIBRO_LibrosxArea ON Libro (Titulo, Area) ; 

CREATE INDEX IDX_Autor_Nacion ON Autor (Nacionalidad);

CREATE INDEX IDX_ESTUDIANTE_CodigoE ON Estudiante (CI, Carrera);

SHOW INDEX FROM libro;
SHOW INDEX FROM autor;
SHOW INDEX FROM estudiante;

Create view Vistal
As
Select
Libro.Area,
Libro.Titulo,
Prestamo.IdLibro,
Prestamo.FechaPrestamo
from
Libro, Prestamo
where Libro.Idlibro=Prestamo.IdLibro;

select * from Vistal LIMIT 0,30;

Create view Vista2
As
Select
estudiante.CI,
estudiante.Nombre,
estudiante.Carrera,
libro.IdLibro,
prestamo.FechaPrestamo
from
estudiante, libro,prestamo
where Libro.Idlibro=Prestamo.IdLibro;

select * from Vista2 LIMIT 0,30;

Create view Vista3
As
Select
libro.IdLibro,
libro.Titulo,
autor.Nacionalidad
from
libro,autor;

select * from Vista3 LIMIT 0,30;
