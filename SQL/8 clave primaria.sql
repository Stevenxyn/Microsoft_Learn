/*
Una clave primaria es un campo (o varios) que identifica un solo registro (fila) en una tabla.
Para un valor del campo clave existe solamente un registro.

Veamos un ejemplo, si tenemos una tabla con datos de personas, el número de documento puede establecerse como clave primaria, es un valor que no se repite; puede haber personas con igual apellido y nombre, incluso el mismo domicilio (padre e hijo por ejemplo), pero su documento será siempre distinto.

Si tenemos la tabla "usuarios", el nombre de cada usuario puede establecerse como clave primaria, es un valor que no se repite; puede haber usuarios con igual clave, pero su nombre de usuario será siempre diferente.

Podemos establecer que un campo sea clave primaria al momento de crear la tabla o luego que ha sido creada. Vamos a aprender a establecerla al crear la tabla. Hay 2 maneras de hacerlo, por ahora veremos la sintaxis más sencilla.

Tenemos nuestra tabla "usuarios" definida con 2 campos ("nombre" y "clave").
La sintaxis básica y general es la siguiente:

 create table NOMBRETABLA(
  CAMPO TIPO,
  ...
  primary key (NOMBRECAMPO)
 );
En el siguiente ejemplo definimos una clave primaria, para nuestra tabla "usuarios" para asegurarnos que cada usuario tendrá un nombre diferente y único:

 create table usuarios(
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
 );
Lo que hacemos agregar luego de la definición de cada campo, "primary key" y entre paréntesis, el nombre del campo que será clave primaria.

Una tabla sólo puede tener una clave primaria. Cualquier campo (de cualquier tipo) puede ser clave primaria, debe cumplir como requisito, que sus valores no se repitan ni sean nulos. Por ello, al definir un campo como clave primaria, automáticamente SQL Server lo convierte a "not null".

Luego de haber establecido un campo como clave primaria, al ingresar los registros, SQL Server controla que los valores para el campo establecido como clave primaria no estén repetidos en la tabla; si estuviesen repetidos, muestra un mensaje y la inserción no se realiza. Es decir, si en nuestra tabla "usuarios" ya existe un usuario con nombre "juanperez" e intentamos ingresar un nuevo usuario con nombre "juanperez", aparece un mensaje y la instrucción "insert" no se ejecuta.

Igualmente, si realizamos una actualización, SQL Server controla que los valores para el campo establecido como clave primaria no estén repetidos en la tabla, si lo estuviese, aparece un mensaje indicando que se viola la clave primaria y la actualización no se realiza.

https://www.tutorialesprogramacionya.com/sqlserverya/temarios/descripcion.php?inicio=0&cod=18&punto=12
*/

if object_id('peliculas')is not null
	drop table peliculas;

/*
	Clave primaria funciona para tener un IDENTIFICADOR
	de cada dato este no podra ser igual a ninguna ya que mostrara error
	este sirve por ejemplo para los CC de cada persona o serial de cada
	Celular porque con esto identificamos que es unico en toda la BDD

*/

create table peliculas (
	nombre varchar(30)not null,
	genero varchar(30),
	codigo integer not null,
	PRIMARY KEY(codigo),
	disponibilidad varchar(2) not null
)

--Asignando PK con datos necesarios establecidos con el not null
insert into peliculas (nombre, genero, codigo, disponibilidad)
	values ('Piratas', 'Aventura', 123456, 'si');

--Asignando mismo PK mostrara error que no se pueden tener duplicados
insert into peliculas (nombre, genero, codigo, disponibilidad)
	values ('Cars', 'Carreras', 123456, 'no');

--Como se puso not null no recibe nulls y sale error
insert into peliculas (nombre, genero, codigo, disponibilidad)
	values ('Dahmer', 'Documental', null, 'si');

--Registra exitosamente datos sin nulls y sin PK duplicadas
insert into peliculas (nombre, genero, codigo, disponibilidad)
	values ('Dahmer', 'Documental', 41252, 'si');

insert into peliculas (nombre, genero, codigo, disponibilidad)
	values ('Jhon wick', 'Accion', 111242, 'no');


select * from peliculas;

--Modificcar PK a ya existentes dara error
update peliculas set codigo = 41252
	where genero = 'documentales';
select * from peliculas;

--Eliminar dato y agregar el mismo PK del eliminado
delete from peliculas
	where codigo = 4125242;
select * from peliculas;


insert into peliculas (nombre, genero, codigo, disponibilidad)
	values ('La vida la vida la vidaa', 'Documentales', 4125242, 'si');
	select * from peliculas;

select nombre, disponibilidad from peliculas	
	where disponibilidad = 'si';

select nombre, disponibilidad from peliculas	
	where disponibilidad = 'no';


