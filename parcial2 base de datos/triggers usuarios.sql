/*trigger usuario*/

create table tb_seguridad_usuario(
nombre varchar(30),
tipo varchar(20),
pass varchar(30),
n_maestro int,
n_admin int,
fecha date,
accion varchar(15)
);
drop table tb_seguridad_usuario;

/*insertar trigger*/
DELIMITER @
Create trigger tr_insertar_usuario BEFORE INSERT ON usuario for each row
begin
insert into tb_seguridad_usuario values(new.nombre,new.tipo,new.pass,new.n_maestro,new.n_admin, curdate(),'Insertado');
end;
@
drop trigger tr_insertar_usuario;

INSERT INTO `parcial2`.`usuario` (`id_usuario`, `nombre`, `tipo`, `pass`, `n_maestro`, `n_admin`) VALUES ('12', 'Pipe ', 'Economia', '2039203', '2', '2');

/*trigger Actualizar*/
DELIMITER @
Create trigger tr_update_usuario BEFORE update ON usuario for each row
begin
insert into tb_seguridad_usuario value(new.nombre,new.tipo,new.pass,new.n_maestro,new.n_admin, curdate(),'Actualizado');
end;
@
Update usuario set nombre='Jhannet',tipo='Ingles',pass='113244',n_maestro='10',n_admin = '10' where id_usuario = 10;


/*trigger Eliminar*/
DELIMITER @
Create trigger tr_Delete_usuario BEFORE delete ON usuario for each row
begin
insert into tb_seguridad_usuario values(old.nombre,old.tipo,old.pass,old.n_maestro,old.n_admin, curdate(),'Eliminado');
end;
@

delete from usuario where id_usuario = 11;
SET FOREIGN_KEY_CHECKS=1; /*0 apagado 1 prendido verificacion foreing key para que permita eliminar*/