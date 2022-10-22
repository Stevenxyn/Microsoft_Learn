/*Una empresa almacena los datos de sus empleados en una tabla "empleados" que guarda los siguientes 
datos: nombre, documento, sexo, domicilio, sueldobasico.

1- Elimine la tabla, si existe:

2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
 create table empleados

3- Vea la estructura de la tabla:

4- Ingrese algunos registros:
'Juan Perez','22333444','m','Sarmiento 123',500
Ana Acosta','24555666','f','Colon 134',650
'Bartolome Barrios','27888999','m','Urquiza 479',800

5- Seleccione todos los registros.
*/

--Eliminacion de tabla si existe
if object_id('empleados')is not null
	drop table empleados;

--Creacion de tabla
create table empleados (
	nombre varchar (30),
	documento integer,
	sexo varchar(1),
	domicilio varchar(50), 
	sueldoBasico integer
);

--mostrar columnas de la tabla previamente creada
exec sp_columns empleados;

--Insertar filas a la BDD con empleados
insert into empleados (nombre, documento, sexo, domicilio, sueldoBasico) values (
	'Carlos Steven',
	1007548874,
	'm',
	'Ciudad verde',
	1500000
);
insert into empleados (nombre, documento, sexo, domicilio, sueldoBasico) values (
	'Lorena herrera',
	10014424,
	'f',
	'quito',
	1400000
);
insert into empleados (nombre, documento, sexo, domicilio, sueldoBasico) values (
	'Juan pepe',
	999999,
	'm',
	'Kennedy',
	2500000
);
insert into empleados (nombre, documento, sexo, domicilio, sueldoBasico) values (
	'Spencer garcia',
	41241512,
	'm',
	'Bosa',
	4500000
);
insert into empleados (nombre, documento, sexo, domicilio, sueldoBasico) values (
	'Erick silvado',
	45783113,
	'm',
	'Santander',
	800000
);

select * from empleados;