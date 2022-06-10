CREATE DATABASE IF NOT EXISTS bd_citas
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

use bd_citas;

drop table if exists roles;
drop table if exists especialidades;
drop table if exists tipos_cita;
drop table if exists motivos;
drop table if exists DESCUENTOS_MOTIVOS;
drop table if exists consultas;
drop table if exists tratamientos;
drop table if exists usuarios;
drop table if exists citas;

create table roles (
rol_id varchar(50) not null,
nombre varchar(50) not null,
primary key (rol_id)
);

create table especialidades(
 especialidad_id int not null auto_increment,
 nombre varchar(100) not null,
 primary key (especialidad_id)
 );
 
create table tipos_cita(
tipo_cita_id int not null auto_increment,
nombre varchar(50),
primary key (tipo_cita_id)
);

create table motivos(
motivo_id int not null auto_increment,
nombre varchar (50) not null,
primary key(motivo_id)
);

create table DESCUENTOS_MOTIVOS(
descuento_motivo_id int not null auto_increment,
motivo_id int not null,
porcentaje int not null,
estado varchar (50) not null,
fecha_creacion datetime,
fecha_actualizacion datetime,
primary key (descuento_motivo_id),
key(motivo_id)
);

create table consultas(
consulta_id int not null auto_increment,
tipo_cita_id int not null,
especialidad_id int not null,
costo double not null,
primary key (consulta_id),
unique(tipo_cita_id, especialidad_id),
key (tipo_cita_id),
key (especialidad_id)
);

create table tratamientos (
tratamiento_id int not null auto_increment,
nombre varchar(50) not null,
especialidad_id int not null,
diagnostico blob not null,
cita_id int not null,
fecha_creacion datetime,
fecha_actualizacion datetime,
primary key (tratamiento_id),
key (especialidad_id),
key (cita_id)
);

create table usuarios(
usuario_id int not null auto_increment,
nombres varchar(100) not null,
apellidos varchar(100) not null,
tipo_doc varchar (50) not null,
numero_doc varchar (50) not null,
fecha_nacimiento date not null,
telefono varchar(50) not null,
correo varchar(50),
pass varchar(255),
rol_id varchar(50),
estado_usuario varchar(50),
especialidad_id int, 
fecha_creacion datetime,
fecha_actualizacion datetime,
primary key (usuario_id),
key(especialidad_id)
);

create table citas(
cita_id int not null auto_increment,
fecha_cita datetime not null,
usuario_id int not null,
medico_id int not null,
consulta_id int not null,
estado_atencion varchar(50) not null,
estado_pago varchar(50) not null,
descuento_motivo_id int not null,
fecha_creacion datetime,
fecha_actualizacion datetime,
primary key(cita_id),
key (usuario_id),
key (consulta_id),
key (descuento_motivo_id)
);


alter table descuentos_motivos add constraint FK_descuentos_motivos_motivos foreign key (motivo_id) references motivos (motivo_id);

alter table consultas add constraint FK_consultas_tipos_cita foreign key (tipo_cita_id) references tipos_cita (tipo_cita_id);
alter table consultas add constraint FK_consultas_especialidades foreign key (especialidad_id) references especialidades (especialidad_id);

alter table tratamientos add constraint FK_tratamientos_especialidades foreign key (especialidad_id) references especialidades (especialidad_id);
alter table tratamientos add constraint FK_tratamientos_citas foreign key (cita_id) references citas (cita_id);

alter table usuarios add constraint FK_usuarios_especialidades foreign key (especialidad_id) references especialidades (especialidad_id);
alter table usuarios add constraint FK_usuarios_roles foreign key (rol_id) references roles (rol_id);

alter table citas add constraint FK_citas_usuarios foreign key (usuario_id) references usuarios (usuario_id);
alter table citas add constraint FK_citas_usuarios_medicos foreign key (medico_id) references usuarios (usuario_id);
alter table citas add constraint FK_citas_consultas foreign key (consulta_id) references consultas (consulta_id);
alter table citas add constraint FK_citas_descuentos_motivos foreign key (descuento_motivo_id) references descuentos_motivos(descuento_motivo_id);



