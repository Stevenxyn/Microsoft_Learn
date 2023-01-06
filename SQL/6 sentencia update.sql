-- Ver columnas existentes de empleados;
exec sp_columns empleados;

--Sin where se actualizan todos los datos nombre de la taba por el que le dejamos
update empleados set nombre = 'Carlos Steven';
select * from empleados;

--Actualizar datos de la tabla pero a los que la condicion where dice
update empleados set nombre = 'Joel Mateo'
	where documento = 1007548874;
 select * from empleados;

update empleados set nombre = 'Lorena Herrera'
	where documento = 10014424;

update empleados set nombre = 'Erick Bello'
	where documento = 41241512;

update empleados set nombre = 'Hermenegildo'
	where documento = 45783113;

update empleados set sueldoBasico = 800000
	where documento = 45783113;


 select * from empleados;
