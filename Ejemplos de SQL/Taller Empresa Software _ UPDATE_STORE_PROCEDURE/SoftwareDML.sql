/* Archivo de inserciones & consultas para el proyecto */
/* insertamos algunas ciudades listadas antes a modo ejemplo*/
insert into ciudades (nombre_ciudad)
values ("Bogota"),
("Cali"),
("Medellin"),
("Popayan"),
("Bucaramanga"),
("Barranquilla");
	select * from ciudades;    
/* Insertamos los valores correspondientes a los clientes en su tabla */
insert into clientes (nombre_cliente , correo_cliente, telefono_cliente, fecha_registro, id_ciudad )
values ('Carlos Ramírez', 'carlos.ramirez@gmail.com', '3101234567', '2024-01-15 08:00:00', 1),
('Laura Ospina', 'laura.ospina@hotmail.com', '3157654321', '2024-02-20 09:30:00', 2),
('Andrés Martínez', 'andres.martinez@yahoo.com', '3204567890', '2024-03-10 10:15:00', 1),
('Sofía Hernández',  'sofia.hernandez@gmail.com', '3112345678', '2024-04-05 11:00:00', 3),
('Miguel Torres', 'miguel.torres@outlook.com', '3189876543', '2024-05-18 14:00:00', 5),
("Andres Moreno" , "Ander20215@gmail.com", "3205405421", "2024-03-05 13:00:00", 6),
("Julian Daza", "JDaza3254@outlook.com.co", "3512102356", "2024-04-20 15:00:00", 4 );
	select * from clientes;

/* insercion campos para los proyectos */
insert into proyectos (nombre_proyecto, descripcion_proyecto, fechaInicio_proyecto, fechaEstimada_proyecto, estado_proyecto, id_cliente)
values 
('App Inventario',       'Sistema de gestión de inventario',      '2024-01-20 08:00:00', '2024-06-20 08:00:00', 'Finalizado',     1),
('Portal Web Corporativo','Desarrollo de portal web empresarial', '2024-02-01 08:00:00', '2024-08-01 08:00:00', 'En desarrollo',  2),
('App Móvil Ventas',     'Aplicación móvil para fuerza de ventas','2024-03-15 08:00:00', '2024-09-15 08:00:00', 'En desarrollo',  3),
('Sistema de Nómina',    'Automatización del proceso de nómina',  '2024-01-10 08:00:00', '2024-05-10 08:00:00', 'Finalizado',     4),
('Plataforma E-learning','Campus virtual para capacitaciones',    '2024-04-01 08:00:00', '2024-12-01 08:00:00', 'Iniciado',       5),
('CRM Empresarial',      'Sistema de gestión de clientes',        '2024-05-01 08:00:00', '2024-11-01 08:00:00', 'En desarrollo',  6),
('API de Pagos',         'Integración con pasarelas de pago',     '2024-06-01 08:00:00', '2024-10-01 08:00:00', 'Iniciado',       7),
('Dashboard Analytics',  'Panel de métricas y reportes',          '2024-03-01 08:00:00', '2024-07-01 08:00:00', 'Cancelado',      1);
	select * from proyectos;

/* insertamos valores para los desarrolladores */
insert into desarrolladores (nombre_desarrollador, especialidad, anios_experiencia, correo_desarrollador, nivel_desarrollador, id_proyecto)
VALUES 
('Juan Pérez',       'Backend',   5, 'juan.perez@gmail.com',      'Senior',     1),
('María Gómez',      'Frontend',  3, 'maria.gomez@gmail.com',     'SemiSenior', 2),
('Luis Castillo',    'Fullstack', 7, 'luis.castillo@hotmail.com', 'Senior',     2),
('Valentina Ríos',   'QA',        2, 'vale.rios@gmail.com',       'Junior',     1),
('Santiago Mora',    'DevOps',    4, 'santi.mora@outlook.com',    'SemiSenior', 2),
('Camila Vargas',    'Frontend',  1, 'cami.vargas@gmail.com',     'Junior',     3),
('Daniel Suárez',    'Backend',   6, 'daniel.suarez@yahoo.com',   'Senior',     3),
('Paola Jiménez',    'QA',        3, 'paola.jimenez@gmail.com',   'SemiSenior', 4),
('Sebastián Cruz',   'Fullstack', 2, 'seba.cruz@hotmail.com',     'Junior',     5),
('Natalia Bermúdez', 'DevOps',    8, 'nata.bermudez@gmail.com',   'Senior',     5);
	select * from desarrolladores;
        	
/* inserciones de las asignaciones */
insert into asignaciones ( id_proyecto, id_desarrollador, rol_asignacion, fecha_asignacion)
values 
(1, 1,  'Líder técnico',       '2024-01-20'),
(1, 4,  'Tester',              '2024-01-21'),
(2, 2,  'Desarrollador UI',    '2024-02-01'),
(2, 3,  'Arquitecto',          '2024-02-02'),
(2, 5,  'DevOps',              '2024-02-03'),
(3, 6,  'Desarrollador UI',    '2024-03-15'),
(3, 7,  'Desarrollador API',   '2024-03-16'),
(4, 8,  'Tester',              '2024-01-10'),
(4, 1,  'Desarrollador',       '2024-01-11'),
(5, 9,  'Desarrollador',       '2024-04-01'),
(5, 10, 'DevOps',              '2024-04-02'),
(6, 2,  'Desarrollador UI',    '2024-05-01'),
(6, 7,  'Líder técnico',       '2024-05-02'),
(7, 3,  'Arquitecto API',      '2024-06-01'),
(8, 4,  'Tester',              '2024-03-01');
	select * from asignaciones;
    
    
/* inserciones para las tareas */
/*	modificacion necesaria para agregar el estado <cancelado> en las tareas posterior a un analisis posterior */
/* ALTER TABLE tareas 
MODIFY estado_tarea ENUM('Pendiente', 'En progreso', 'Completada', 'Cancelado') NOT NULL; */

insert into tareas ( nombre_tarea, estado_tarea, prioridad_tarea, fechaInicio_tarea, fechaEntrega_tarea	,id_proyecto, id_desarrollador)
values
('Diseño de base de datos',         'Completada',   'Alta',  '2024-01-20', '2024-01-25', 1, 1),
('Desarrollo módulo login',         'Completada',   'Alta',  '2024-01-26', '2024-02-05', 1, 1),
('Pruebas unitarias inventario',    'Completada',   'Media', '2024-02-06', '2024-02-15', 1, 4),
('Maquetación portal web',          'En progreso',  'Alta',  '2024-02-05', '2024-03-05', 2, 2),
('Configuración servidor',          'En progreso',  'Alta',  '2024-02-10', '2024-03-10', 2, 5),
('Integración API REST',            'Pendiente',    'Media', '2024-03-01', '2024-04-01', 2, 3),
('Diseño pantallas móvil',          'En progreso',  'Alta',  '2024-03-15', '2024-04-15', 3, 6),
('Desarrollo módulo ventas',        'Pendiente',    'Alta',  '2024-04-01', '2024-05-01', 3, 7),
('Cálculo liquidación nómina',      'Completada',   'Alta',  '2024-01-10', '2024-02-10', 4, 1),
('Pruebas nómina',                  'Completada',   'Media', '2024-02-11', '2024-03-01', 4, 8),
('Diseño cursos virtuales',         'Pendiente',    'Baja',  '2024-04-05', '2024-05-05', 5, 9),
('Configuración plataforma',        'Pendiente',    'Media', '2024-04-10', '2024-05-10', 5, 10),
('Módulo gestión contactos',        'En progreso',  'Alta',  '2024-05-05', '2024-06-05', 6, 7),
('Reportes CRM',                    'Pendiente',    'Media', '2024-05-15', '2024-06-15', 6, 2),
('Integración pasarela PSE',        'Pendiente',    'Alta',  '2024-06-05', '2024-07-05', 7, 3),
('Integración pasarela Wompi',      'Pendiente',    'Alta',  '2024-06-10', '2024-07-10', 7, 3),
('Diseño dashboard métricas',       'Cancelado',    'Media', '2024-03-05', '2024-04-05', 8, 2),
('Conexión fuentes de datos',       'Cancelado',    'Alta',  '2024-03-10', '2024-04-10', 8, 4),
('Pruebas de carga API',            'Pendiente',    'Baja',  '2024-06-15', '2024-07-15', 7, 9),
('Documentación técnica general',   'Pendiente',    'Baja',  '2024-06-20', '2024-07-20', 6, 10);
	select * from tareas;


/* consulta inner join entre cliente y proyectos*/
Select 	clientes.id_cliente, clientes.nombre_cliente, clientes.correo_cliente, clientes.telefono_cliente,
proyectos.nombre_proyecto, proyectos.fechaInicio_proyecto, proyectos.fechaEstimada_proyecto, proyectos.estado_proyecto
from clientes join proyectos
on clientes.id_cliente = proyectos.id_cliente;

/* consulta Join de clientes y proyectos "rapida" con alias */
Select 	c.id_cliente, c.nombre_cliente, c.correo_cliente, c.telefono_cliente,
p.nombre_proyecto, p.fechaInicio_proyecto, p.fechaEstimada_proyecto, p.estado_proyecto
from clientes c  join proyectos p
on c.id_cliente = p.id_cliente;

/* consulta Join de clientes y proyectos "rapida" con alias agregamos el desarrollador */
Select 	c.id_cliente, c.nombre_cliente, c.correo_cliente, c.telefono_cliente,
p.nombre_proyecto, p.fechaInicio_proyecto, p.fechaEstimada_proyecto, p.estado_proyecto, d.nombre_desarrollador
from clientes c  join proyectos p
on c.id_cliente = p.id_cliente
join desarrolladores d
on p.id_proyecto = d.id_proyecto;

/* Listar tareas junto con el proyecto al que pertenecen  */
select t.id_tarea, t.nombre_tarea,	t.estado_tarea,	t.prioridad_tarea,	t.fechaInicio_tarea, t.fechaEntrega_tarea,		
p.nombre_proyecto
from tareas t join proyectos p
on t.id_proyecto = p.id_proyecto;

/*   Mostrar proyectos con desarrolladores y roles
aqui se relaciona tres tablas desarrolladores, proyectos y asignaciones 
se unen primero las tablas de proyecto & asignaciones, luego asignaciones y desarrolladores */

 select p.nombre_proyecto, p.descripcion_proyecto, 
 d.nombre_desarrollador,a.id_desarrollador, d.especialidad, d.nivel_desarrollador
 from proyectos p join asignaciones a
 on p.id_proyecto = a.id_proyecto
 join desarrolladores d
 on a.id_desarrollador = d.Id_desarrollador;

/*  Listar tareas junto con el desarrollador asignado */
select t.id_tarea, t.nombre_tarea, t.estado_tarea, t.prioridad_tarea, t.fechaInicio_tarea, t.fechaEntrega_tarea ,
d.nombre_desarrollador , d.especialidad, d.nivel_desarrollador
from tareas t join desarrolladores d
on t.id_desarrollador = d.id_desarrollador;


/* listar proyectos posterior a una fecha */
select  p.nombre_proyecto, p.descripcion_proyecto, p.fechaInicio_proyecto, p.fechaEstimada_proyecto, p.estado_proyecto
from proyectos p
where p.fechaInicio_proyecto > '2024-03-01';

/* Tareas con prioridad alta o pendientes*/

select t.nombre_tarea, t.estado_tarea, t.prioridad_tarea, t.fechaInicio_tarea, t.fechaEntrega_tarea
from tareas t
where t.prioridad_tarea = 'Alta' or t.estado_tarea = 'Pendiente';

/* Desarrolladores que NO son Junior  */
select * from desarrolladores
where nivel_desarrollador <> "Junior";

/* Proyectos ordenados por fecha de inicio  */
select *
from proyectos
order by fechaInicio_proyecto asc, estado_proyecto;

/* Desarrolladores por años de experiendcia */
select nombre_desarrollador, especialidad, anios_experiencia, nivel_desarrollador
from desarrolladores order by anios_experiencia desc;

/* Seleccion de tareas por prioridad */
select nombre_tarea, estado_tarea, prioridad_tarea, fechaInicio_tarea, fechaEntrega_tarea
from tareas order by  prioridad_tarea asc;

/* Cantidad de proyectos por cliente */
select c.nombre_cliente,
count(p.id_proyecto) as cantidad_proyectos
from clientes c
join proyectos p 
on c.id_cliente = p.id_cliente group by c.nombre_cliente;

/* ---Numero de tareas por proyecto */
select p.nombre_proyecto,
COUNT(t.id_tarea) AS numero_tareas
from proyectos p
join tareas t 
on p.id_proyecto = t.id_proyecto group by p.nombre_proyecto;

/* Promedio de experiencia de desarrolladores */
select 
count(id_desarrollador) as total_desarrolladores,
avg(anios_experiencia) as promedio_experiencia,
max(anios_experiencia) as mayor_experiencia,
min(anios_experiencia) as menor_experiencia
from desarrolladores;

/* Fechas máxima y mínima de proyectos  */
select 
min(fechaInicio_proyecto) as fecha_minima,
max(fechaInicio_proyecto) as fecha_maxima from proyectos;

/* llamar al procedimiento almacenado para ingresar ciudades */
call insert_ciudad ("Chiquinquira");

/* llamar procedimiento para agregar clientes */
call insert_cliente ("Peperola Perezosos", "GUEAR@gmail.com","3203542012","2024-01-24", 3);

/* Delete un cliente -------------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_clientes`(
in p_id_cliente int
)
BEGIN
delete from cliente
where id_cliente = p_id_cliente;
select * from clientes;
END */

/*llamado store_procedure para borrar un cliente */
call delete_clientes(8);
select * from clientes;

/* Store_Procedure con consultas join ----------------
CREATE DEFINER=`root`@`localhost` PROCEDURE `join_ProyeCliente`(

)
BEGIN
select c.nombre_cliente,
count(p.id_proyecto) as cantidad_proyectos
from clientes c
join proyectos p 
on c.id_cliente = p.id_cliente group by c.nombre_cliente;
END */
call join_ProyeCliente;

/* consulta join con varios datos en base a un parametro  en base al id_tarea -------------
select t.id_tarea, t.nombre_tarea, t.estado_tarea, t.prioridad_tarea, t.fechaInicio_tarea, t.fechaEntrega_tarea ,
d.nombre_desarrollador , d.especialidad, d.nivel_desarrollador
from tareas t join desarrolladores d
on t.id_desarrollador = d.id_desarrollador
where id_tarea = 2;  */
call join_tareaDesarrollador (4);

 /* llamar vista que hemos creado con el objeto "view" vista_tareasproyectos */
 select * from vista_tareasproyectos;


