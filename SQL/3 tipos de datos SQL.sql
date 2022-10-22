/*Tipos de datos en SQL

varchar: Cadenas de caracteres secuencia de caracteres con longitud variable entre ()
integer: Valores numericos representamos cantidades enteras
float: con punto flotante bueno para precios 150.000
*/

--Validar si existe eliminarla
if object_id('libros') is not null
	drop table libros;

--Crear la tabla

create table libros(
	titulo varchar (80),
	autor varchar (40),
	editorial varchar (40),
	precio float,
	cantidad integer
);

--Ver las columnas
exec sp_columns libros;

--insertar datos a la tabla
insert into libros (titulo,autor,editorial,cantidad,precio) values(
	'Tiende tu cama',
	'Un soldado no se quien',
	'Editorial Grandeza',
	750,
	86.500
)
insert into libros (titulo,autor,editorial,precio,cantidad) values(
	'Habitos atomicos',
	'Autor desconocido',
	'La casona',
	55.000,
	250
);
insert into libros (titulo,autor,editorial,precio,cantidad) values (
	'Mil años de soledad',
	'Garcia marquez',
	'Propiedad',
	150.000,
	154
);
insert into libros (titulo,autor,editorial,precio,cantidad) values (
	'Infierno de dante',
	'Dante Alighieri',
	'El mundi',
	160.000,
	147
);

-- ver los datos de la tabla libros
select * from libros;