/* Consultas*/

/* Remplazar 3 registros*/
update clasescre set aula = '102' where id_creadas = 1;
update clase set nombre = 'Ingles 2' where id_clase = 3;
update maestro set areadoc = 'Programacion' where id_maestro = 1;

/* Modificar 3 campos de la tabla clase*/
alter table clase modify descripcion varchar(70);
alter table clase modify horas int(1);
alter table clase modify nombre set("Recetas","Base de datos","POO","Ingles 2","Algebra lineal","Emprendimiento");

/* adicionar campo cedula a la tabla alumno*/
alter table alumno add cedula int(20) not null;

/*adicionar y cambiar nombre del campo fecha en la tabla alumno*/
alter table alumno add fecha date;
alter table alumno change fecha diadeinscripcion date ;

/* cambiar el nombre del campo direccion de l;a tabla direccion y cambir tipo de dato a int20*/
alter table direccion change id_direccion direccion int(20);