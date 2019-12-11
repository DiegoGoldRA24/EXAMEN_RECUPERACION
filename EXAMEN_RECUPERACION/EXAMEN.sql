-- 1
select
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo;

-- 2
select
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
order by departamento.nombre asc;

-- 3

select 
distinct(departamento.codigo),
departamento.nombre as departamento
from departamento
left join empleado on departamento.codigo = empleado.codigo_departamento
where empleado.codigo_departamento is not null;

-- 4
select 
departamento.codigo,
departamento.nombre as departamento,
(departamento.presupuesto - departamento.gastos) as PA
from departamento
left join empleado on departamento.codigo = empleado.codigo_departamento
where empleado.codigo_departamento is not null;


-- 5

select
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.nif = '38382980M';

-- 6
select
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.nombre = 'Pepe';

-- 7
select
empleado.nif,
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where departamento.nombre = 'I+D';

-- 8
select
empleado.nif,
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where departamento.nombre IN ('Sistemas','Contabilidad','I+D');

-- 9
select
empleado.nif,
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre,
departamento.presupuesto
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where departamento.presupuesto NOT BETWEEN 100000 AND 200000;

-- 10
select
empleado.nif,
empleado.nombre,
empleado.apellido1,
empleado.apellido2
 as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.apellido2 is null;