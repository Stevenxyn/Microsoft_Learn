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

select * from identittyPrueba2;

--indica el valor inicial ingresado en la creacion de la tabla
select IDENT_SEED('identittyPrueba2');
--Indica el contador que suma cada vez que se agrega un dato
select IDENT_INCR('identittyPrueba2');

/* Con esta funcion activaremos ingreso manual del identity PERO si no se tiene cuidado
repitira valores*/

set identity_insert identittyPrueba2 on;
--Dara error ya que pide que ingresemos el codigo identitty manualmente
insert into identittyPrueba2 (nombre, serial, precio) values (
	'Mazorca',
	223332241,
	11.5
);

--Forma correcta
insert into identittyPrueba2 (codigo, nombre, serial, precio) values (
	110,
	'Mazorca',
	223332241,
	11.5
);
select * from identittyPrueba2;

--CUIDADO permite tener codigos repetidos
insert into identittyPrueba2 (codigo, nombre, serial, precio) values (
	110,
	'Mazorca COPIADA',
	22333225,
	11.5
);
select * from identittyPrueba2;

--Desactivar el modo agregar valores identity manualmente
set identity_insert identittyPrueba2 off;
--De esta manera pone automaticamente el codigo sin repetir y sin ponerlo manualmente
insert into identittyPrueba2 (nombre, serial, precio) values (
	'Papaya',
	2233255,
	201.5
);
select * from identittyPrueba2;