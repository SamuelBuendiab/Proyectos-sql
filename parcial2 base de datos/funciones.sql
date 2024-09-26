/*Funciones*/;
use parcial2;
DELIMITER @
create function b_admin(entrada varchar(30))
returns varchar(30)
begin
declare salida varchar(30);
if exists(select * from administrativo where departamento = entrada ) then
set salida = CONCAT(entrada, ' Departamento Existente');
else
set salida = CONCAT(entrada, ' Departamento NO existente');
end if;
return salida;
end
@

drop function b_admin;

DELIMITER @
create function b_empleado (entrada int)
returns varchar(25)
begin 
declare salida varchar(25);
if exists (select * from empleado where id_empleado = entrada) then
set salida = ('Empleado Encontrado');
else
set salida = ('Empleado NO Encontrado');
end if;
return salida;
end
@

drop function b_empleado;


DELIMITER @
CREATE FUNCTION b_aula(entrada VARCHAR(3))
RETURNS VARCHAR(25)
BEGIN
    DECLARE salida VARCHAR(25);
    DECLARE aular INT;
    
    SELECT id_creadas INTO aular FROM clasescre WHERE aula = entrada LIMIT 1;
    
    IF EXISTS (SELECT * FROM clasescre WHERE aula = entrada) THEN
        SET salida = CONCAT("Numro de clase  ", aular);
    ELSE
        SET salida = 'No hay aulas';
    END IF;
    RETURN salida;
end
@




drop function b_aula;