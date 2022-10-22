/*Crear una BDD y actualizar el Object 
Explorar para verla*/

CREATE DATABASE BDD_PRUEBAS;


/*Crear mas cosas dentro de la BDD creada
previamente debemos seleccionar la BDD
y dar New Query para que asi aplique los
Querys a esa BDD en especial*/

CREATE TABLE usuarios (
 nombre varchar (30),
 clave varchar (30)
);


/*Para ver estructura de una tabla 
"sp_columns y sp_tables" son procesos
 almacenado*/
EXEC sp_columns usuarios;
EXEC sp_tables usuarios;


/*Eliminar tablas*/
DROP TABLE juguetes;


