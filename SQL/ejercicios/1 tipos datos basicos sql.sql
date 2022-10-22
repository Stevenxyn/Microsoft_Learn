/*Un videoclub que alquila películas en video almacena la información de sus películas en una tabla 
llamada "peliculas"; para cada película necesita los siguientes datos:
 -nombre, cadena de caracteres de 20 de longitud,
 -actor, cadena de caracteres de 20 de longitud,
 -duración, valor numérico entero.
 -cantidad de copias: valor entero.

1- Elimine la tabla, si existe:
2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:

3- Vea la estructura de la tabla:

4- Ingrese los siguientes registros:
- Mision imposible Tom Cruise 128,3 
- Mision imposible 2','Tom Cruise',130,2
- Mujer bonita ,'Julia Roberts',118,3
- Elsa y Fred ,'China Zorrilla',110,2

5- Muestre todos los registros.
*/

--Validar si existe la tabla eliminarla
if  object_id('peliculas')is not null
	drop table peliculas;

--Crear la tabla
create table peliculas (
	nombre varchar (20),
	actor varchar (20),
	duracion integer,
	cantidad integer
);

--Mostrar columnas
exec sp_columns peliculas;

--Inserccion de datos a la tabla

insert into peliculas (nombre,actor,duracion,cantidad) values (
	'Mision imposible',
	'Tom Cruise',
	128,
	5
);
insert into peliculas (nombre,actor,duracion,cantidad) values (
	'Mision imposible 2',
	'Tom Cruise',
	13,
	2
);
insert into peliculas (nombre,actor,duracion,cantidad) values (
	'Mujer Bonita',
	'Julia Roberts',
	118,
	12
);
insert into peliculas (nombre,actor,duracion,cantidad) values (
	'Elsa y Fred',
	'China Zorilla',
	110,
	1
);
insert into peliculas (nombre,actor,duracion,cantidad) values (
	'Jhon Wick',
	'Keanu Reves',
	148,
	13
);

--Mostrar la tabla peliculas con todos sus valores
select * from peliculas;