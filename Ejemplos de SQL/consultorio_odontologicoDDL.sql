/*Creacion de  la base de datos*/
create database consultorio_odontologico;
/*Selecciona on usar la BD */
use consultorio_odontologico;
/* Creacion de las tablas*/
create table paciente (
id_paciente int primary key auto_increment,
nombre_paciente varchar (100) not null,
apellido_paciente varchar(100)not null,
telefono_paciente varchar (50),
fecha_nacimiento date not null
);
/* crear tabla odontologo */
create table odontologo (
id_odontologo int primary key auto_increment,
nombre_odontologo varchar (100) not null,
apellido_odontologo varchar (100) not null,
especialidad_odontologo varchar (100) not null,
telefono_odontologo varchar (50) not null,
correo_odontologo varchar(100) not null
);
/*crear tabla de tratamiento*/
create table tratamiento(
id_tratamiento int primary key auto_increment,
nombre_tratamiento varchar (50) not null,
costo_tratamiento int (100) check (costo_tratamiento  > 0)
);
/* alterar tabla para evitar su eliminacion */
alter table tratamiento add constraint chk_costo_tratamiento
check (costo_tratamiento  > 0);

/*crear tabla de citas*/
create table cita (
id_cita int primary key auto_increment,
id_paciente int not null,
id_odontologo int not null,
id_tratamiento int not null,
fecha_cita date not null,
hora_cita time not null,
estado_cita ENUM("Programada", "Cancelada", "Finalizada") not null,
FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
FOREIGN KEY (id_odontologo) REFERENCES odontologo(id_odontologo),
FOREIGN KEY (id_tratamiento) REFERENCES tratamiento(id_tratamiento)
);