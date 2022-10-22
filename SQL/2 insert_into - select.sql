/*Agregar datos a una tabla*/

--si existe la tabla procedemos a:
if object_id('usuarios') is not null
	drop table usuarios;

/*Creacion de la tabla */
create table Usuarios(
	nombre varchar (30),
	clave varchar (10)
);

/*Insertar filas a la tabla*/
insert into Usuarios(nombre,clave) values ('Carlo Steven', '123carlos');

/*Para ver la tabla*/
select * from Usuarios;


insert into Usuarios (nombre,clave) values ('Spencer', 'Spencer123');
select * from Usuarios