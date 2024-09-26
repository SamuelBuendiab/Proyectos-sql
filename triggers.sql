use parcial3;

create table if not exists tb_seguridad_empleado(
nombre varchar(30),
apellidos varchar(30),
email varchar(50),
direccion varchar(50),
salario decimal(10,2),
comision decimal(10,2),
telefono int,
fecha_accion date,
accion varchar(15)
);
drop table tb_seguridad_empleado;
drop trigger tr_insertar_empleado;
drop trigger tr_actualizar_empleado;
drop trigger tr_delete_empleado;

DELIMITER @
Create trigger tr_insertar_empleado BEFORE INSERT ON empleado for each row
begin
insert into tb_seguridad_empleado values (new.nombre,new.apellidos,new.email,new.direccion,new.salario,new.comision,new.telefono, curdate(),'Insertado');
end;
@

DELIMITER @
Create trigger tr_actualizar_empleado BEFORE Update ON empleado for each row
begin
insert into tb_seguridad_empleado values (new.nombre,new.apellidos,new.email,new.direccion,new.salario,new.comision,new.telefono, curdate(),'Actualizado');
end;
@

UPDATE `parcial3`.`empleado` SET `ndep` = 'contabilidad' WHERE (`idemp` = '11');

DELIMITER @
Create trigger tr_delete_empleado BEFORE delete ON empleado for each row
begin
insert into tb_seguridad_empleado values (old.nombre,old.apellidos,old.email,old.direccion,old.salario,old.comision,old.telefono, curdate(),'Eliminado');
end;
@

DELETE FROM `parcial3`.`empleado` WHERE (`idemp` = '11');
