/* insercion en la tabla de pacientes */
insert into paciente (nombre_paciente,apellido_paciente,telefono_paciente,fecha_nacimiento)
values ('Juan David', 'González Rodríguez', '3104567892', '1994-05-14'),
('María Fernanda', 'Rodríguez López', '3126789451', '1998-11-22'),
('Carlos Andrés', 'Martínez Gómez', '3152346789', '1987-03-09'),
('Laura Sofía', 'Hernández Torres', '3185671234', '2001-07-18'),
('Andrés Felipe', 'Pérez Ramírez', '3203456781', '1992-01-30'),
('Camila', 'Moreno Vargas', '3119876543', '1999-09-12'),
('Santiago', 'Castro Díaz', '3176543219', '2003-04-25'),
('Valentina', 'Rojas Herrera', '3162349875', '1997-12-03'),
('Sebastián', 'Suárez Medina', '3008765432', '1995-06-16'),
('Daniela', 'Romero Cárdenas', '3194567823', '2000-08-07'
);
/* insercion en la tabla de odontologos */
insert into odontologo (nombre_odontologo, apellido_odontologo, especialidad_odontologo, telefono_odontologo, correo_odontologo)
values ('Juan Sebastián', 'García López', 'Ortodoncia', '3105678943', 'juan.garcia@clinicaodontologica.com'),
('María Alejandra', 'Rodríguez Pérez', 'Odontología General', '3124567890', 'maria.rodriguez@clinicaodontologica.com'),
('Carlos Andrés', 'Martínez Gómez', 'Endodoncia', '3156781234', 'carlos.martinez@clinicaodontologica.com'),
('Laura Fernanda', 'Hernández Vargas', 'Odontopediatría', '3182345678', 'laura.hernandez@clinicaodontologica.com'),
('Andrés Felipe', 'Torres Ramírez', 'Periodoncia', '3209876541', 'andres.torres@clinicaodontologica.com'),
('Camila Sofía', 'Moreno Díaz', 'Rehabilitación Oral', '3113456789', 'camila.moreno@clinicaodontologica.com'),
('Santiago', 'Castro Rojas', 'Cirugía Oral', '3174561230', 'santiago.castro@clinicaodontologica.com'
);
/* insertamos los tratamientos en la tabla correspondiente*/
insert into tratamiento (nombre_tratamiento, costo_tratamiento) 
values ('Limpieza dental', 80000),
('Blanqueamiento dental', 350000),
('Ortodoncia', 2500000),
('Endodoncia', 450000),
('Extracción dental', 120000),
('Diseño de sonrisa', 1800000),
('Profilaxis', 70000),
('Resina dental', 150000
);
/* ahora generamos los datos de las citas */
insert into cita (id_paciente, id_odontologo, id_tratamiento, fecha_cita, hora_cita, estado_cita) 
values (1, 1, 1, '2026-03-10', '09:00:00', 'programada'),
(2, 2, 2, '2026-03-11', '10:30:00', 'finalizada'),
(3, 3, 3, '2026-03-12', '14:00:00', 'programada'),
(4, 4, 4, '2026-03-13', '11:00:00', 'cancelada'),
(5, 5, 5, '2026-03-14', '15:30:00', 'finalizada'),
(6, 6, 6, '2026-03-15', '08:30:00', 'programada'),
(7, 7, 7, '2026-03-16', '13:00:00', 'programada'),
(8, 1, 2, '2026-03-17', '10:00:00', 'finalizada'),
(9, 2, 3, '2026-03-18', '09:30:00', 'programada'),
(10, 3, 1, '2026-03-19', '11:30:00', 'cancelada'),
(4, 4, 5, '2026-03-20', '14:30:00', 'finalizada'),
(5, 5, 6, '2026-03-21', '08:00:00', 'programada'),
(6, 6, 4, '2026-03-22', '12:00:00', 'programada'),
(7, 7, 2, '2026-03-23', '15:00:00', 'cancelada'),
(1, 1, 3, '2026-03-24', '09:45:00', 'programada');

/* Espacio para las consultas generadas */
select * from paciente;

/* Mostrar nombre y telefono de todos los odontologos */
select nombre_odontologo,apellido_odontologo,telefono_odontologo
from odontologo;

/*	Mostrar los tratamientos cuyo costo sea mayor a 400000 */
select * from tratamiento
where costo_tratamiento >= 400000;
/* prueba de alteracion de tabla tratamiento */
insert into tratamiento (nombre_tratamiento, costo_tratamiento) 
values ("prueba ", 0);

/* Mostrar los pacientes nacidos después del año 1995.  */
select * from paciente
where fecha_nacimiento >  "1995-12-31";

/*	Mostrar todas las citas programadas para una fecha específica. ejp: 2026-03-15	*/
select * from cita
where fecha_cita = "2026-03-15";

/*	Mostrar todas las citas cuyo estado sea Programada.  */
select * from cita
where estado_cita = "Programada";

/* Mostrar citas entre dos fechas */
select * from cita
where fecha_cita between "2026-03-15" and "2026-03-20";

/*	Mostrar los pacientes cuyo apellido sea 'Moreno Vargas'. */
select * from paciente
where apellido_paciente = "Moreno Vargas";


