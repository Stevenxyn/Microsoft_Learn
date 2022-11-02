/*
Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.

1- Elimine "agenda", si existe:


2- Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), 
domicilio (cadena de 30) y telefono (cadena de 11).

3- Visualice la estructura de la tabla "agenda".

4- Ingrese los siguientes registros:
 Acosta, Ana, Colon 123, 4234567;
 Bustamante, Betina, Avellaneda 135, 4458787;
 Lopez, Hector, Salta 545, 4887788; 
 Lopez, Luis, Urquiza 333, 4545454;
 Lopez, Marisa, Urquiza 333, 4545454.

5- Seleccione todos los registros de la tabla

6- Seleccione el registro cuyo nombre sea "Marisa" (1 registro)

7- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)

8- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)
*/

--Eliminacion de tabla con los datos si existe solamente
if object_id('agenda')is not null
	drop table agenda;

--Crear tabla en el dado caso que no exista
create table agenda (
	nombre varchar (30),
	apellido varchar (20),
	direccion varchar (40),
	telefono bigint
);

--Que ejecute primero lo anterior al empezar a lanzar el script
go

--Insertar datos a la tabla previamente creada
insert into agenda(nombre, apellido, direccion, telefono) values (
	'Lorena',
	'Herrera',
	'Quevedo 120',
	301948102
);
insert into agenda(nombre, apellido, direccion, telefono) values (
	'Ana',
	'Acosta',
	'Colon 123',
	4234567
);
insert into agenda(nombre, apellido, direccion, telefono) values (
	'Luis',
	'Lopez',
	'Urquiza 333',
	4545454
);
insert into agenda(nombre, apellido, direccion, telefono) values (
	'Marisa',
	'Lopez',
	'Urquiza 333',
	4545454
);
insert into agenda(nombre, apellido, direccion, telefono) values (
	'Diana',
	'Rodriguez',
	'Astromelia II',
	320362697420
);

-- Mostrar las columnas de las tablas
exec sp_columns agenda;

select * from agenda;

--Aplicando filtros con sentencia where
select * from agenda
	where nombre = 'Marisa';

--Buscar que tengan domicilios iguales
select * from agenda	
	where direccion = 'Urquiza 333';

--Buscar que tenga numero de telefonos iguales
select nombre, telefono from agenda	
	where telefono = 4545454;