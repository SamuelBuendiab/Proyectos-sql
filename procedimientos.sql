create database procedimientos;
use procedimientos;
SET SQL_SAFE_UPDATES = 0;

  /*1*/
create table sangre (
codigo int  primary key auto_increment,
peso int(3),
estado varchar (50)
);

delimiter $
create procedure admini(in _peso int(3), in _estado varchar(50), out _mensaje varchar(30))
begin

if _peso > 50 then
set _mensaje ='peso valido';
insert into persona values (null, _peso, _estado);
else
set _mensaje ='no valido';
end if;
end
$

  /*2*/
create table cliente (
id int  primary key auto_increment,
cedula int (10),
nombre varchar (30),
apellido varchar (30)
);


delimiter $
create procedure inser (in _cedula int(10), in _nombre varchar (30), in _apellido varchar (30))
begin
insert into cliente values (null, _cedula,_nombre,_apellido);
end
$

delimiter $
create procedure actua (in _cedula int (10), in _nombre varchar (30),out mensaje varchar(30))
begin
set @sihay = 0;
select count(*) into @sihay from cliente where cedula = _cedula;
if @sihay > 0 then
update cliente set nombre =_nombre where cedula=_cedula;
set mensaje = 'actualizado';
else
set mensaje = 'cedula invalida';
end if;
end
$

delimiter $
create procedure eliminar (in _cedula int (10),out mensaje varchar(30))
begin
set @sihay = 0;
select count(*) into @sihay from cliente where cedula = _cedula;
if @sihay > 0 then
delete from cliente where cedula=_cedula;
set mensaje = 'Eliminado';
else
set mensaje = 'cedula invalida';
end if;
end
$

/*Datos de salida : Estos permiten regresar un valor o datos de una o varias variables a quien realizo el ingreso*/
/*Ejemplo : set @error=0  if(@error < 0) set @mensaje='Error en los datos'*/

/*El bucle while funciona de la manera en la que este se repite hasta que el sea falso lo establecido en el bucle*/
/* WHILE (a <= 10) DO
    SET x = a;
  END WHILE;*/
  
  
  /*3*/
  
  create table salario (
  cedula int(10),
  nombre varchar(40),
  salario decimal (10,2),
  transporte decimal (10,2),
  salud decimal (10,2)
  );
  
  delimiter $
  create procedure calculo (in _cedula int(10),in _nombre varchar(40),in _salario decimal(10,2), out mensaje varchar(20))
  begin
  DECLARE trans DECIMAL(10,2);
  DECLARE salud DECIMAL(10,2);
  
  set trans = (7 * _salario)/100 ;
  set salud = (4 * _salario)/100 ;
  insert into salario values(_cedula,_nombre,_salario,trans,salud);
  set mensaje = 'ingresado';
 
  end
  $
 
  drop procedure calculo;
  drop database procedimientos;
  