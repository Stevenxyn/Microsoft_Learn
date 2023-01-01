--https://www.tutorialesprogramacionya.com/sqlserverya/temarios/descripcion.php?inicio=0&cod=17&punto=11

if object_id('libros') is not null
	drop table libros;

/*
	los tipos de datos asignados con not null no permitira agregar valores
	nulos, deben ser diligenciados con datos o mostrara error.

	los que tengan null permitiran agregar valores con null ya que por defecto
	estan con null en segundo plano o se los podemos agregar pero este si dejara
	recibir valores con null:
	"con o sin null recibe valores null"
	autor varchar(12)null
	autor varchar(12)

	OJO es diferente un valor null a valores en 0 o vacios
	null == valor que no existe / desconocido
*/

create table libros (
	nombre varchar(30)not null,
	editorial varchar(30)not null,
	autor varchar(30) null,
	precio float
);

insert into libros (nombre, editorial, autor, precio)
	values ('Clean code', null, 'Autor desconocido', null);
	/* Cannot insert the value NULL into column 'editorial', table 'prueba.dbo.libros'; 
	column does not allow nulls. INSERT fails.*/
select * from libros;

insert into libros (nombre, editorial, autor, precio)
	values ('Libro numero 2', 'editorial pro 1', null, 150.000);

insert into libros (nombre, editorial, autor, precio)
	values ('Libro numero 3', 'editorial pro 1', null, null);

insert into libros (nombre, editorial, autor, precio)
	values ('Libro numero 4', 'editorial pro 1', 'Autor pro', null);

insert into libros (nombre, editorial, autor, precio)
	values ('Libro numero 5', 'editorial pro 1', ' ', null);

insert into libros (nombre, editorial, autor, precio)
	values ('Libro numero 6', 'editorial pro 1', '', 0);

insert into libros (nombre, editorial, autor, precio)
	values ('Libro numero 7', 'editorial pro 42', 'Desconocido', 260.5);

select * from libros;

--Trae los valores con autor nulos
select * from libros
	where autor is null;

--Trae los valores con autores que no son nulos
select * from libros
	where autor is not null;

--Diferencia de tipos de dato ingresado
select nombre, autor, precio from libros	
	where autor = '';

--Error al llamar tipos numericos en un string
select nombre, autor, precio from libros	
	where autor = 0;

select * from libros;





