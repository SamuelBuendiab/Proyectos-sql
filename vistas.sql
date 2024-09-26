use parcial3;

create view Vista1
as
select
diseno.iddiseno,
diseno.tamdiseno,
producto.nombre,
producto.tipo,
producto.precio
from
diseno,producto
where producto.id=diseno.xidpro;

drop view Vista1;
/**/
create view Vista2
as
select
empleado.nombre,
empleado.email,
departament.nombredepartament
from
empleado,departament
where empleado.ndep=departament.nombredepartament;
drop view Vista2;

/**/
create view Vista3
as
select
cliente.nombre,
cliente.email,
factura.fecha,
factura.pago
from
cliente,factura
where  cliente.cedula=factura.ncedula;

drop view Vista3;



