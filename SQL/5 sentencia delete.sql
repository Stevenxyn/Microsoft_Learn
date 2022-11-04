if OBJECT_ID('Bandas') is not null
	drop table Bandas;

-- crear tablas
create table Bandas (
	nombre varchar(20),
	genero varchar (20),
	activo varchar (2),
	paisOrigen varchar (30),
);

go

insert into Bandas (nombre, genero,	activo, paisOrigen) values (
  'Cigarettes after sex',
  'relajado',
  'si',
  'Estados Unidos'
);

insert into Bandas (nombre, genero,	activo, paisOrigen) values (
  'Rammstein',
  'Metal',
  'si',
  'Alemania'
);

insert into Bandas (nombre, genero,	activo, paisOrigen) values (
  'Metallica',
  'Rock',
  'si',
  'Estados Unidos'
);

insert into Bandas (nombre, genero,	activo, paisOrigen) values (
  'Eden',
  'relajado',
  'si',
  'Estados Unidos'
);


--Eliminar bandas que sean de Alemania
delete from Bandas	
	where paisOrigen = 'Alemania';
select * from Bandas;

--Eliminar Bandas que se llamen Rammstein
select * from bandas;
	delete from Bandas
		where nombre = 'Rammstein';
select * from bandas;


-- Borrar todos los registros
select * from Bandas;
	delete from Bandas;
select * from Bandas;



