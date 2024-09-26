create database parcial2;
use parcial2;

create table Direccion (
id_direccion int primary key not null,
n_calle varchar(30),
colonia varchar(25),
n_casa int
);

create table Persona (
n_identidad int primary key not null,
nombre varchar(40),
telefonos int(12),
n_direccion int,
foreign key (n_direccion) references Direccion(id_direccion)
);

create table Empleado(
id_empleado int primary key not null,
n_seguro int,
sueldo decimal(10,2),
horas int,
n_identidad int,
foreign key (n_identidad) references Persona(n_identidad)
);

create table Alumno(
id_alumno int primary key not null,
id_tutor int,
n_identidad int,
foreign key (n_identidad) references Persona(n_identidad)
);

create table administrativo(
id_admin int primary key not null,
cargo varchar(30),
departamento varchar(30),
n_empleado int,
foreign key (n_empleado) references Empleado(id_empleado)
);

create table maestro(
id_maestro int primary key not null,
areadoc varchar(20),
n_empleado int,
foreign key (n_empleado) references Empleado(id_empleado)
);

create table usuario(
id_usuario int not null primary key,
nombre varchar(30),
tipo varchar(20),
pass varchar(30),
n_maestro int,
n_admin int,
foreign key (n_maestro)references maestro(id_maestro),
foreign key (n_admin) references administrativo(id_admin)
);

create table clasescre(
id_creadas int not null primary key,
aula set("101","102","201","301"),
año year,
n_empleado int,
foreign key (n_empleado) references maestro(n_empleado)
);

create table matricula(
nota varchar(2),
n_alumno int,
n_ccreada int,
foreign key (n_alumno) references Alumno(id_alumno),
foreign key (n_ccreada) references clasescre(id_creadas)
);

create table Carrera(
id_carrera int primary key not null,
nombre set("Gastronomia","Informatica","Ingles","Matematicas")
);

create table Clase(
id_clase int primary key not null,
nombre set("Recetas","Base de datos","POO","Ingles 2","Algebra lineal"),
descripcion varchar (50),
horas int,
n_carrera int,
foreign key (n_carrera) references Carrera(id_carrera)
);


create table Seccion(
id_seccion int primary key not null,
cod_seccion int,
n_carrera int,
n_ccreada int,
foreign key (n_carrera) references Clase(n_carrera),
foreign key (n_ccreada) references clasescre(id_creadas)
);

drop database parcial2;