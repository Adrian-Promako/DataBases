/* creacion de la base de datos */
create database empresa_softwareII;

/* seleccionamos la base de datos */
use empresa_softwareII;

/* creacion tabla ciudades complememtaria  */
create table ciudades (
id_ciudad int primary key auto_increment not null,
nombre_ciudad varchar (50) not null
);


/* creacion de las tablas */
create table clientes (
id_cliente int primary key auto_increment,
nombre_cliente varchar (100) not null,
correo_cliente varchar (100) not null unique,
telefono_cliente varchar (20) not null,
fecha_registro datetime not null,
id_ciudad int null,
foreign key (id_ciudad) references ciudades (id_ciudad)
);


/* creacion tabla de proyectos */
create table proyectos (
id_proyecto int primary key auto_increment,
nombre_proyecto varchar (100) not null,
descripcion_proyecto varchar (100) not null,
fechaInicio_proyecto datetime not null,
fechaEstimada_proyecto datetime not null,
estado_proyecto enum ("Iniciado","Finalizado","En desarrollo", "Cancelado") not null,
id_cliente int not null,

foreign key (id_cliente) references clientes (id_cliente)
);

/*creacion tabla desarrolladores */
create table desarrolladores (
id_desarrollador int primary key auto_increment,
nombre_desarrollador varchar (100) not null,
especialidad enum ( "Backend","Frontend","Fullstack","QA","DevOps")not null,
anios_experiencia tinyint unsigned not null,
correo_desarrollador varchar (50) unique not null,
nivel_desarrollador enum ("Junior","SemiSenior","Senior")not null,
id_proyecto int not null,

foreign key (id_proyecto) references proyectos (id_proyecto)
);

/* creacion tabla de asignaciones que va a relacionar los proyectos y los desarrolladores*/
create table asignaciones (
id_asignacion int primary key not null auto_increment,
id_proyecto int not null,
id_desarrollador int not null,
rol_asignacion varchar (100) not null,
fecha_asignacion date not null,

foreign key (id_proyecto) references proyectos (id_proyecto),
foreign key (id_desarrollador) references desarrolladores (id_desarrollador)
);

/* creacion de la tabla de tareas */
create table tareas (
id_tarea int primary key not null auto_increment,
nombre_tarea text not null,
estado_tarea enum ("Pendiente", "En progreso", "Completada","Cancelado") not null,
prioridad_tarea enum ("Alta", "Media", "Baja") not null,
fechaInicio_tarea date not null,
fechaEntrega_tarea date not null,

id_proyecto int not null,
id_desarrollador int not null,
foreign key (id_proyecto) references proyectos (id_proyecto),
foreign key (id_desarrollador) references desarrolladores (id_desarrollador)
);


/* procedimiento almacenado de la tabla ciudades, por ejemplo la insercion de ciudades ---------
create procedure insert_ciudad ( 
in city varchar(50)
)
begin 
insert into ciudades (nombre_ciudad)
values (city);
end//
delimiter; 
*/

/* procedimiento almacenado de agregar cliente ------------------
create procedure insert_cliente (
in clientName varchar (100),
in clientEmail varchar (100),
in clientPhone varchar(20),
in clientDate datetime
)
begin 
insert into clientes (nombre_cliente, correo_cliente, telefono_cliente, fecha_registro)
values (clientName, clientEmail, clientPhone, clientDate);
end /*










