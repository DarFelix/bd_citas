-- --------------------------------

-- CONSULTAS ESPERADAS

-- rango de cita por fecha
select * from citas where fecha_cita between '2022-08-02' and '2022-08-03';

-- rango de cita por fecha y hora
select * from citas where fecha_cita between '2022-08-02 05:00:00' and '2022-08-02 14:45:00';

-- citas pagadas
select * from citas where estado_pago = 'PAGADA';

-- datos de cita que atendio el medico con id = 5 (id cita, fecha cita, nombre y apellidos de paciente)
select 
c.cita_id ,
c.fecha_cita,
u.nombres ,
u.apellidos 
from usuarios u 
inner join citas c ON c.usuario_id = u.usuario_id 
where c.medico_id = 1;

-- medicos que atienden medicina general
select * from usuarios where especialidad_id = 1;

-- usuarios que son médicos
select * from usuarios where especialidad_id is not null;

-- mostrar nombre de tratamiento formulado en una determinada cita
select 
t.nombre 
from 
tratamientos t 
inner join citas c on t.cita_id = c.cita_id 
where c.cita_id = 1;

-- mostrar nombre y apellido de medico que atendio una cita determinada
select nombres , apellidos 
from 
usuarios u 
inner join citas c on c.medico_id = u.usuario_id 
where c.cita_id = 1;

-- mostrar nombre de especialidad que atiende un determinado médico

select e.nombre,
u.nombres,
u.apellidos 
from especialidades e 
inner join usuarios u on e.especialidad_id = u.especialidad_id 
where u.usuario_id = 1;

-- mostrar tarifa total y descuento de una cita determinada

select c.costo, dm.porcentaje
from consultas c 
inner join citas ci on c.consulta_id = ci.consulta_id 
inner join descuentos_motivos dm on dm.descuento_motivo_id = ci.descuento_motivo_id 
where ci.cita_id = 2;

-- mostrar nombres de usuario y su rol según su id de usuario

select u.nombres, u.apellidos, r.nombre 
from usuarios u 
inner join usuario_rol ur on u.usuario_id = ur.usuario_id 
inner join roles r on ur.rol_id = r.rol_id 
where u.usuario_id = 3;

-- mostrar tipo de cita de una cita buscada por id

select tc.nombre, ci.cita_id
from tipos_cita tc 
inner join consultas c on c.tipo_cita_id = tc.tipo_cita_id 
inner join citas ci on ci.consulta_id = c.consulta_id  -- order by ci.cita_id asc --ordena todas las citas de forma asc
where ci.cita_id = 1;


-- mostrar citas cercanas a una cita en un rango dado

select * from citas c where date_add(c.fecha_cita = '2022-08-01', interval 1 day);

select date_add('2022-08-01 06:20:00', interval 20 minute);
select date_sub('2022-08-01 06:20:00', interval 20 minute);

select * from citas c where c.fecha_cita between date_sub('2022-08-01 06:10:00',
interval 19 minute) and date_add('2022-08-01 06:10:00' , interval 19 minute) and c.medico_id = 1;

-- verificar si una persona con id = ? es un medico

select * from usuarios u where u.usuario_id = 5 and u.especialidad_id is not null;

-- buscar citas por el nombre de un medico
 
select * from citas c inner join usuarios u on c.medico_id = u.usuario_id where u.nombres = 'Ramiro';