/*
Validar si existe la BDD si es asi
eliminarla
*/
if object_id('dispositivos')is not null
	drop table dispositivos;

--Crear la tabla
create table dispositivos (
	marca varchar (20),
	modelo varchar (20),
	color varchar (10),
	enVenta varchar (2),
	precio integer,
	IMEI bigint
)

go
--Pre visualizar las columnas de la tabla
--exec sp_columns dispositivos;
--Pre visualizar las tablas
--exec sp_tables dispositivos;

--Cargar datos a la tabla
insert into dispositivos(marca, modelo, color, enVenta, precio, IMEI) values(
	'iphone',
	'XR',
	'Negro',
	'si',
	1500000,
	123456789101112
);
insert into dispositivos(marca, modelo, color, enVenta, precio, IMEI) values(
	'iphone',
	'14',
	'rosado',
	'no',
	2800000,
	123456789101113
);
insert into dispositivos(marca, modelo, color, enVenta, precio, IMEI) values(
	'Samsung',
	'S10+',
	'Gris',
	'si',
	2500000,
	123456789101111
);

insert into dispositivos(marca, modelo, color, enVenta, precio, IMEI) values(
	'LG',
	'Pro max',
	'ngero',
	'no',
	50000,
	143456789101111
);


--Mostrar datos sin condiciones especificas
select * from dispositivos;

--Mostrar datos con sentencia where
select * from dispositivos
	where enVenta = 'si';

--Mostrar algunos datos con la siguiente restriccion
select marca, color, enVenta, precio from dispositivos
	where marca = 'iphone';

--Eliminar celulares  con precio igual a ese
delete from dispositivos
	where precio = 1000000;
select* from dispositivos;

--Eliminar celulares con precios menores a 1millon de pesos
delete from dispositivos
	where precio < 1000000;
select * from dispositivos;

--Eliminar todos los datos de la tabla 
delete from dispositivos;





