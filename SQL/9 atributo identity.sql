/*
Aplica para unicamente los valores numericos
sirve para generar valores UNICOS para cada producto 
solamente se puede tener uno POR TABLA esto lo que hace 
es numerar cada insert que se va agregando con un numero unico
NO permite modificar, tampoco al asigarle un valor al insertarlo no permitira ya que se pone automaticamente.

Pero si podemos indicarle desde donde inicie y en que cantidad vaya aumentando cada registro
*/

create table identtyPrueba (
	codigo int identity,
	nombre varchar(30)not null,
	precio float null
);

/*
Cannot insert explicit value for identity column 
in table 'identtyPrueba' when IDENTITY_INSERT is 
set to OFF.

ERROR porque el dato con identity no permite
asignar valores ya que se pone automaticamente
*/
insert into identtyPrueba 
 (codigo, nombre, precio) values (
	'1',
	'Manzana',
	15.1
 );
 select * from identtyPrueba;

 insert into identtyPrueba 
 (nombre, precio) values (
	'Manzana',
	15.1
 );
 
 insert into identtyPrueba 
 (nombre, precio) values (
	'Pera',
	11.2
 );

 insert into identtyPrueba 
 (nombre, precio) values (
	'Mandarina',
	10.5
 );

  insert into identtyPrueba 
 (nombre, precio) values (
	'Mandarina',
	10.5
 );

  insert into identtyPrueba 
 (nombre, precio) values (
	'Mandarina',
	10.5
 );

  insert into identtyPrueba 
 (nombre, precio) values (
	'Mandarina',
	10.5
 );

  insert into identtyPrueba 
 (nombre, precio) values (
	'Mandarina',
	10.5
 );

select * from identtyPrueba;
select * from identtyPrueba
	where codigo <= 2;

--Actualizar
update identtyPrueba set precio = 66.5
	where codigo >= 6;
	select * from identtyPrueba

--Eliminar
delete from identtyPrueba
	where codigo = 3;
select * from identtyPrueba


--Descripcion mas detallada
exec sp_columns identtyPrueba;






