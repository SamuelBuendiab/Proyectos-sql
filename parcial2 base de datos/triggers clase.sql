/*triggers Clase*/

create table tb_seguridad_clase(
nombre set("Recetas","Base de datos","POO","Ingles 2","Algebra lineal"),
descripcion varchar (50),
horas int,
n_carrera int,
fecha date,
accion varchar(15)
);

/*insertar trigger*/
DELIMITER @
Create trigger tr_insertar_clase BEFORE INSERT ON Clase for each row
begin
insert into tb_seguridad_clase values(new.nombre,new.descripcion,new.horas,new.n_carrera, curdate(),'Insertado');
end;
@

INSERT INTO `parcial2`.`clase` (`id_clase`, `nombre`, `descripcion`, `horas`, `n_carrera`) VALUES ('11', 'POO', 'Conocimiento y desarollo de objetos', '1', '1');


/*Trigger Actualizar*/
DELIMITER @
Create trigger tr_update_clase BEFORE update ON Clase for each row
begin
insert into tb_seguridad_clase value(new.nombre,new.descripcion,new.horas,new.n_carrera,curdate(),'Actualizado');
end;
@
Update clase set nombre='Base de datos',descripcion='Funcionamiento de base de datos',horas='5',n_carrera='10' where id_clase = 8;


/*trigger Eliminar*/
DELIMITER @
Create trigger tr_Delete_clase BEFORE delete ON Clase for each row
begin
insert into tb_seguridad_clase values(old.nombre,old.descripcion,old.horas,old.n_carrera, curdate(),'Eliminado');
end;
@

delete from Clase where id_clase = 11;
SET FOREIGN_KEY_CHECKS=1; /*0 apagado 1 prendido verificacion foreing key para que permita eliminar*/