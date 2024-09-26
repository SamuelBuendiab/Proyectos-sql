use parcial3;



/*procedimiento de almacenado para cliente*/
delimiter $
create procedure insercliente (in _cedula int, in _nombre varchar (20), _apellido varchar (20), _direccion varchar (30), _email varchar (30), _contrasena varchar(20), _clave varchar(20),_localidad varchar (30), _telefono int,out mensaje varchar(30))
begin
set @sihay = 0;
select count(*) into @sihay from cliente where cedula = _cedula;
if @sihay < 1 then
insert into cliente values (_cedula,_nombre,_apellido,_direccion,_email,aes_encrypt(_contrasena,_clave),_localidad,_telefono);
insert into clave values(_clave);
set mensaje = 'ingresado';
else
set mensaje = 'no ingresado';
end if;
end
$
drop procedure insertempl;

/* ingreasr dato repetido a cliente*/
set @mensaje = '0';
call parcial3.insercliente(123, 'Juan', 'pablo', 'cr30 23 23', 'ppablo@gmail.com', '234213', '12344', 'kennedy', 4342234, @mensaje);
select @mensaje;



/*procedimiento de almacenado para producto*/

delimiter $
create procedure insertprod (in _nombre varchar (20), _tampro varchar (5), _tipo varchar (20), _acabado varchar (20), _impresion varchar(20), _descripcion varchar(30),_precio decimal(10,2),out mensaje varchar(30))
begin
set @sihay = 0;
select count(*) into @sihay from producto where nombre = _nombre;
if @sihay < 1 then
insert into producto values (null,_nombre,_tampro,_tipo,_acabado,_impresion,_descripcion,_precio);
set mensaje = 'ingresado';
else
set mensaje = 'no ingresado';
end if;
end
$
drop procedure insertprod;


/*procedimiento de almacenado para factura*/
delimiter $
create procedure inserfact (in _pago decimal(10,2),in _importe decimal(10,2), in _env decimal(10,2),in _nidproducto int(3), in _ncedula int,out mensaje varchar(50))
begin
	declare v_nid int;
    declare v_ncedula int;
    
    select id into v_nid from producto where id = _nidproducto;
    select cedula into v_ncedula from cliente where cedula = _ncedula;
    
    if v_nid is not null and v_ncedula is not null then
insert into factura values (null,_pago,curdate(),_importe,_env,_nidproducto,_ncedula);
else
set mensaje = "Erro en id produco o cedula";
end if;
end
$
drop procedure inserfact;


/*procedimiento de almacenado para diseno*/
delimiter $
create procedure inserdiseno (in _tamdiseno decimal(10,2),in _formato varchar(10),in _nidproducto int(3),out mensaje varchar(40))
begin
	declare v_nid int;
    
    select id into v_nid from producto where id = _nidproducto;

    if v_nid is not null then
insert into diseno values (null,_tamdiseno,_formato,_nidproducto);
else
set mensaje = "Erro en id produco";
end if;
end
$
drop procedure inserdiseno;


/*procedimiento de almacenado para departamento*/
delimiter $
create procedure inserdepartament (in _nombredepartament varchar(40), in _email varchar (60))
begin
insert into departament values (_nombredepartament,_email);
end
$
drop procedure inserdepartament;


/*procedimiento de almacenado para empleado*/
delimiter $
create procedure inserempl (in _nombre varchar(30),in _apellidos varchar(30),in _email varchar(50),in _pass varchar(30),in _clave varchar(20),in _direccion varchar(50), in _salario decimal(10,2), in _comision decimal(10,2), in _tel int(11),in _idproducto int(3),in _nomDepartament varchar(40) ,out mensaje varchar(50))
begin
	declare v_nid int;
    declare v_ndep int;
    
    select id into v_nid from producto where id = _idproducto;
    select nombredepartament into v_ndep from departament where nombredepartament = _nomDepartament;
    
    if v_nid is not null and v_ndep is not null then
insert into empleado values (null,_nombre,_apellidos,_email,aes_encrypt(_pass,_clave),_direccion,_salario,_comision,_tel,_idproducto, _nomDepartament);
insert into clave values(_clave);
set mensaje = "ingresado";
else
set mensaje = "Erro en id produco o nombre depart";
end if;
end
$

drop procedure inserempl;
