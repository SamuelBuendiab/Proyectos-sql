/*Triggers Alumno*/

create table tb_seguridad_alumno(
id_tutor int,
n_identidad int,
fecha date,
accion varchar(15)
);

/*insertar trigger*/
DELIMITER @
Create trigger tr_insertar_alumno BEFORE INSERT ON alumno for each row
begin
insert into tb_seguridad_alumno values(new.id_tutor,new.n_identidad,curdate(),'Insertado');
end;
@

INSERT INTO `parcial2`.`alumno` (`id_alumno`, `id_tutor`, `n_identidad`) VALUES ('11', '3902924', '1029384');
SET FOREIGN_KEY_CHECKS=0; /*0 apagado 1 prendido verificacion foreing key para que permita eliminar*/

/*Trigger Actualizar*/
DELIMITER @
Create trigger tr_update_alumno BEFORE update ON alumno for each row
begin
insert into tb_seguridad_alumno value(new.id_tutor,new.n_identidad,curdate(),'Actualizado');
end;
@
Update alumno set id_tutor='3148291',n_identidad='484923' where id_alumno = 11;

/*trigger Eliminar*/
DELIMITER @
Create trigger tr_Delete_alumno BEFORE delete ON alumno for each row
begin
insert into tb_seguridad_alumno values(old.id_tutor,old.n_identidad,curdate(),'Eliminado');
end;
@
delete from alumno where id_alumno = 11;