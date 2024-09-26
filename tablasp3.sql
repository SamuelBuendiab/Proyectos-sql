create database parcial3;
use parcial3;

create table cliente(
cedula int primary key,
nombre varchar(20),
apellido varchar(20),
direccion varchar(30),
email varchar(50),
pass blob,
localidad varchar(30),
telefono int
);

create table clave(
clave varchar(20)
);


create table producto(
id int(3) primary key auto_increment,
nombre varchar(30),
tamprod varchar(5),
tipo varchar(20),
acabado varchar(20),
impresion varchar(20),
descripcion varchar(30),
precio decimal(10,2)
);

create table factura(
nfactura int primary key auto_increment,
pago decimal(10,2),
fecha date,
importe decimal(10,2),
env decimal(10,2),

nid int(3),
ncedula int,
foreign key (nid) references producto(id),
foreign key (ncedula) references cliente(cedula)
);

create table diseno(
iddiseno int(3) primary key auto_increment,
tamdiseno decimal(10,2),
formato varchar(10),

xidpro int(3),
foreign key (xidpro) references producto(id)
);

create table departament(
nombredepartament varchar(40) primary key,
email varchar(60)
);

create table empleado(
idemp int(3) primary key auto_increment,
nombre varchar(30),
apellidos varchar(30),
email varchar(50),
pass blob,
direccion varchar(50),
salario decimal(10,2),
comision decimal(10,2),
telefono int,

idprod int(3),
ndep varchar(40),
foreign key (idprod) references producto(id),
foreign key (ndep) references departament(nombredepartament)
)