/*
Trabaje con la tabla "agenda" que registra la información referente a sus amigos.

1- Elimine la tabla si existe:

2- Cree la tabla con los siguientes campos: apellido 
(cadena de 30), 
nombre (cadena de 20), 
domicilio (cadena de 30) 
y telefono (cadena de 11):

3- Ingrese los siguientes registros 
 Alvarez,Alberto,Colon 123,4234567,
 Juarez,Juan,Avellaneda 135,4458787,
 Lopez,Maria,Urquiza 333,4545454,
 Lopez,Jose,Urquiza 333,4545454,
 Salas,Susana,Gral. Paz 1234,4123456.

4- Elimine el registro cuyo nombre sea "Juan" 

5- Elimine los registros cuyo número telefónico sea igual a "4545454" 

6- Muestre la tabla.

7- Elimine todos los registros 

8- Muestre la tabla.

*/

if object_id('agenda') is not null
	drop table agenda;

create table agenda (
	nombre varchar (30),
	apellido varchar (20),
	domicilio varchar (30),
	telefono bigint
);

go

insert into agenda (nombre, apellido, domicilio, telefono) values (
	'Alberto', 'Alvarez', 'Colon 123', 4234567
);

insert into agenda (nombre, apellido, domicilio, telefono) values (
	'Juan', 'Juarez', 'Avellaneda 135', 4458787
);

insert into agenda (nombre, apellido, domicilio, telefono) values (
	'Maria', 'Lopez', 'Urquiza 333', 4545454
);

insert into agenda (nombre, apellido, domicilio, telefono) values (
	'Jose', 'Lopez', 'Urquiza 333', 4545454
);

insert into agenda (nombre, apellido, domicilio, telefono) values (
	'Susana', 'Salas', 'Gral. Paz 1234', 4123456
);

-- mostrar toda la tabla de datos
select * from agenda;

--Elimine el registro cuyo nombre sea "Juan" 
delete from agenda	
	where nombre = 'Juan';
select * from agenda;

/*Elimine los registros cuyo número telefónico sea
igual a "4545454"*/
delete from agenda	
	where telefono = 4545454;
select * from agenda;

--Eliminar todos los registros
delete from agenda;
select * from agenda;
