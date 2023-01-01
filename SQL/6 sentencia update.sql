--En el dado caso que exista eliminela
if object_id('usuarios') is not null
	drop table usuarios;

--Crear la tabla
create table usuarios (
	nombre varchar (20),
	edad tinyint,
	correo varchar (30),
	contrasena varchar (20),
);
go

insert into usuarios (nombre, edad, correo, contrasena) values (
	'Carlos Lopez',
	23,
	'carlos@gmail.com',
	'Mondongo123'
);

insert into usuarios (nombre, edad, correo, contrasena) values (
	'Spencer',
	3,
	'spencer@gmail.com',
	'spencer1233'
);

insert into usuarios (nombre, edad, correo, contrasena) values (
	'Raquel',
	22,
	'rquel@gmail.com',
	'123rq'
);

select * from usuarios;

--Update cambia todas las contraseñas PONER WHERE!
update usuarios set contrasena = 'Cambio Todo';
select * from usuarios;

--Cambia todas las edades y nombres a los usuarios PONER WHERE!
update usuarios set edad = 55, nombre = 'Cambia too';

--Cambiar dato a determinados usuarios
update usuarios set contrasena = 'cambio1a'
	where correo = 'carlos@gmail.com';
select * from usuarios;

--Cambiar 1 o mas datos a usuario determinado con WHERE
update usuarios set 
	nombre = 'Spencer Lopez',
	edad = 4,
	correo = 'spencer1999@uniminuto.edu.co',
	contrasena = 'purina2a'
where correo = 'spencer@gmail.com';
select * from usuarios;

--Si se usa update y no existe mostrara error:  Invalid column name 'color'.
update usuarios set color = 'rojo';

--Si se aplica un update donde el where no hay coincidencia no hara nada
update usuarios set nombre = 'Spencer Lopez'
	where nombre = 'No existe';
	select * from usuarios;




