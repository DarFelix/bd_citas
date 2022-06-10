use bd_citas;

insert into roles (rol_id, nombre) values ('ADMIN', 'Administrador');
insert into roles (rol_id, nombre) values ('MEDIC', 'Médico');
insert into roles (rol_id, nombre) values ('CASHIER', 'Cajero');

insert into especialidades (nombre) values ('Medicina general');
insert into especialidades (nombre) values ('Medicina interna');
insert into especialidades (nombre) values ('Nutrición');
insert into especialidades (nombre) values ('Ginecología');
insert into especialidades (nombre) values ('Psicología');
insert into especialidades (nombre) values ('Pediatría');
insert into especialidades (nombre) values ('Cardiología');
insert into especialidades (nombre) values ('Gastroenterología');
insert into especialidades (nombre) values ('Dermatología');

insert into tipos_cita (nombre) values ('General');
insert into tipos_cita (nombre) values ('Especialista');

insert into motivos (nombre) values ('APERTURA');
insert into motivos (nombre) values ('CONTROL');

insert into descuentos_motivos (motivo_id, porcentaje, estado, fecha_creacion, fecha_actualizacion) values
(1, 0, 'ACTIVO', now(), null );
insert into descuentos_motivos (motivo_id, porcentaje, estado, fecha_creacion, fecha_actualizacion) values
(2, 5, 'ACTIVO', now(), null );

insert into consultas (tipo_cita_id, especialidad_id, costo) values (1, 1, 35000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (1, 2, 70000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 3, 70000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 4, 90000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 5, 70000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 6, 90000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 7, 90000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 8, 90000);
insert into consultas (tipo_cita_id, especialidad_id, costo) values (2, 9, 90000);

insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Ramiro', 'Conde', 'CC', '79222879', '1950-03-01', 
'6042223344', 'raco@live.com', null, 'ADMIN', 'ACTIVO', 1, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Luna', 'Giraldo', 'CC', '20222879', '1960-07-01', 
'6042223322', 'lugi@live.com', null,'ADMIN',  'ACTIVO', 2, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Angela', 'Mendez', 'CC', '23111879', '1970-10-01', 
'6012223344', 'angez@live.com', null,'ADMIN', 'ACTIVO', 3, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Luis', 'Orjuela', 'CC', '19111879', '1980-11-01', 
'6017223344', 'luorla@live.com', null,'ADMIN',  'ACTIVO', 4, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Pepe', 'Sierra', 'CC', '222333', '1920-11-01', 
'6017223344', 'pesi@live.com', null,'ADMIN',  'ACTIVO', null, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Ana', 'Mora', 'CC', '22111879', '1950-11-01', 
'6017223341', 'amora@live.com', null, 'ADMIN', 'ACTIVO', null, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Manuel', 'Alvarez', 'CC', '19511879', '1950-11-01', 
'6057223341', 'mavez@live.com',null,'ADMIN', 'ACTIVO', null, now(), null );
insert into usuarios (nombres, apellidos, tipo_doc, numero_doc, fecha_nacimiento, telefono, correo, pass, rol_id, estado_usuario,
especialidad_id, fecha_creacion, fecha_actualizacion) values ('Erika', 'Paez', 'CC', '23511222', '1990-11-01', 
'6037223341', 'epaz@live.com', null,'ADMIN', 'ACTIVO', null, now(), null );

insert into citas ( fecha_cita, usuario_id, medico_id, consulta_id, estado_atencion, estado_pago, descuento_motivo_id,
fecha_creacion, fecha_actualizacion) values ('2022-08-01 06:00:00', 7, 1, 1, 'PENDIENTE', 'NO_PAGADA', 1, now(), null);
insert into citas ( fecha_cita, usuario_id, medico_id, consulta_id, estado_atencion, estado_pago, descuento_motivo_id,
fecha_creacion, fecha_actualizacion) values ('2022-08-01 06:20:00', 8, 1, 1, 'PENDIENTE', 'NO_PAGADA', 1, now(), null);
insert into citas ( fecha_cita, usuario_id, medico_id, consulta_id, estado_atencion, estado_pago, descuento_motivo_id,
fecha_creacion, fecha_actualizacion) values ('2022-08-01 06:20:00', 7, 2, 1, 'PENDIENTE', 'NO_PAGADA', 1, now(), null);
insert into citas ( fecha_cita, usuario_id, medico_id, consulta_id, estado_atencion, estado_pago, descuento_motivo_id,
fecha_creacion, fecha_actualizacion) values ('2022-08-01 06:40:00', 8, 1, 1, 'PENDIENTE', 'NO_PAGADA', 1, now(), null);
insert into citas ( fecha_cita, usuario_id, medico_id, consulta_id, estado_atencion, estado_pago, descuento_motivo_id,
fecha_creacion, fecha_actualizacion) values ('2022-08-02 06:00:00', 7, 1, 1, 'PENDIENTE', 'PAGADA', 2, now(), null);

insert into tratamientos (nombre, especialidad_id, diagnostico, cita_id, fecha_creacion, fecha_actualizacion) values (
'medicalizacion dolor', 1, 'cefalea', 1, now(), null);
insert into tratamientos (nombre, especialidad_id, diagnostico, cita_id, fecha_creacion, fecha_actualizacion) values (
'terapia fisica', 2, 'luxacion', 2, now(), null);

