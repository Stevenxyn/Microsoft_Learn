/*
DELETE elimina todos los registros de la tabla Y si se tiene valor identity este al agregar un nuevo 
dato toma el ultimo valor ya no existente y sigue  contando desde el ultimo.

TRUNCATE table es mas rapido que delete al eliminar datos de la tabla y mantiene la estructura de la tabla
Y si se tiene un valor identity este lo reincia y se empiezan a agregar datos desde el 1 a comparacion de
eliminar con DELETE que mantiene la enumeracion

drop table elimina todos los datos y la tabla MUY PELIGROSO UWU
*/

create table identittyPrueba2 (
	--con el (100,5) indicamos que inicie en 100 y aumente de 5 en 5
	codigo int identity(100,5),
	nombre varchar(30),
	serial int not null PRIMARY KEY(serial),
	precio float
)
go

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Aguacate',
	122333,
	12.5
);

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Manzanas',
	1223334444,
	22.5
);

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Bananas',
	1233344,
	11.5
);

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Pepinos',
	223334441,
	11.5
);

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Yuca',
	22462441,
	11.5
);

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Mora',
	226124441,
	11.5
);

insert into identittyPrueba2 (nombre, serial, precio) values (
	'Tomates',
	221234441,
	11.5
);

select * from identittyPrueba2;

--DELETE Elimina todo pero mantiene el valor identity si se agregan mas
select * from identittyPrueba2;
delete from identittyPrueba2;
select * from identittyPrueba2;
insert into identittyPrueba2 (nombre, serial, precio) values (
	'Agregando con delete',
	5225,
	99.5
);
--Se ve que mantiene el codigo ya que no lo reinicia
select * from identittyPrueba2;

--TRUNCATE TABLE Elimina todo pero tambien reinicia valor identity
select * from identittyPrueba2;
truncate table identittyPrueba2;
select * from identittyPrueba2;
--Al agregar inicia otra vez desde 0 el valor identity
insert into identittyPrueba2 (nombre, serial, precio) values (
	'Agregando truncate table',
	1111,
	59.5
);
select * from identittyPrueba2;

--DROP TABLE me elimina todo mejor no la uso JEJEJAES