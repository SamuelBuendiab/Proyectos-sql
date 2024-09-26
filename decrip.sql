/*decript */

select cast(aes_decrypt(pass,'12345')as char)from empleado;

select cast(aes_decrypt(pass,'gato123')as char)from cliente;