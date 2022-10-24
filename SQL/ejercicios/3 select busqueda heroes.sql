/*
Nuestro videojuego necesita almacenar a todos los heroes,
estos se diferencian por:
nombre, rol, tipo de daño, precio, sexo.

Crea una tabla para almacenar los heroes aplicando los tipos de datos a convenir

y filta de esta forma llamando las siguientes columnas

nombre, rol, precio
llama a toda la tabla
tipo de daño, precio, sexo

*/

if object_id('heroes') is not null
	drop table heroes;

--Creacion de tabla
create table heroes(
	nombreHeroe varchar(35),
	rol varchar(15),
	tipoDaño varchar(15),
	sexo varchar (1),
	precio integer
);
--Ver columnas
exec sp_columns heroes;

--para que primero haga lo de arriba para eso sirve go para crear bloques de ejecucion
go

--Inserccion de heroes 
insert into heroes (nombreHeroe,rol,tipoDaño,sexo,precio) values (
	'Fanny',
	'Asesino',
	'Fisico',
	'f',
	32000
);
insert into heroes (nombreHeroe,rol,tipoDaño,sexo,precio) values (
	'Gusion',
	'Asesino',
	'Magico',
	'm',
	22000
);
insert into heroes (nombreHeroe,rol,tipoDaño,sexo,precio) values (
	'Moskov',
	'tirador',
	'Fisico',
	'm',
	74000
);
insert into heroes (nombreHeroe,rol,tipoDaño,sexo,precio) values (
	'Karrie',
	'Tirador',
	'Hibrido',
	'f',
	42000
);
insert into heroes (nombreHeroe,rol,tipoDaño,sexo,precio) values (
	'Minotauro',
	'Tanque',
	'fisico',
	'm',
	44000
);
insert into heroes (nombreHeroe,rol,tipoDaño,sexo,precio) values (
	'Atlas',
	'Tanque',
	'Magico',
	'm',
	53000
);
go

--Consultas: Trater toda la tabla
select * from heroes;

--Consulta: Traer nombre, rol, precio
select nombreHeroe,rol,precio from heroes;

--Consulta: llama a toda la tabla
select * from heroes;

--Consulta: tipo de daño, precio, sexo
select tipoDaño, precio, sexo from heroes;

