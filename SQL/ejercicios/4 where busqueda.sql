/*
Trabaje con la tabla "libros" de una librería que guarda información referente a sus libros 
disponibles para la venta.

1- Elimine la tabla si existe.

2- Cree la tabla "libros". Debe tener la siguiente estructura:
 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15));

3- Visualice la estructura de la tabla "libros".

4- Ingrese los siguientes registros:
 El aleph,Borges,Emece;
 Martin Fierro,Jose Hernandez,Emece;
 Martin Fierro,Jose Hernandez,Planeta;
 Aprenda PHP,Mario Molina,Siglo XXI;

5- Seleccione los registros cuyo autor sea "Borges" (1 registro)

6- Seleccione los títulos de los libros cuya editorial sea "Emece" (2 registros)

7- Seleccione los nombres de las editoriales de los libros cuyo titulo sea "Martin Fierro" (2 
registros)
*/

--Si existe dicha BDD eliminamos y creamos una nueva
if object_id('libros') is not null
	drop table libros;

--Creamos la Tabla
create table libros(
	titulo varchar (30),
	autor varchar (30),
	editorial varchar (20)
);

--Ejecutar lo anterior primero al iniciar el query
go

-- Insertar datos a la tabla
insert into libros (titulo, autor, editorial) values (
	'Tiende tu cama',
	'Un soldado',
	'La gozosa'
);
insert into libros (titulo, autor, editorial) values (
	'Habitos atomicos',
	'Autor desconocido',
	'La casona'
);
insert into libros (titulo, autor, editorial) values (
	'Tiende tu cama',
	'Autor desconocido',
	'La gozosa'
);
insert into libros (titulo, autor, editorial) values (
	'Infierno de dante',
	'Dante Alighieri',
	'el pepe'
);
insert into libros (titulo, autor, editorial) values (
	'Mil años de soledad',
	'Garcia marquez',
	'el pepe'
);


--Mostrar las columnas de la tabla
-- exec sp_columns libros;

--Buscar los autores que sean el pepe
select titulo, editorial from libros		
	where editorial = 'el pepe';

--Buscar los autores que sean Autor desconocido
select * from libros	
	where autor = 'Autor desconocido';
