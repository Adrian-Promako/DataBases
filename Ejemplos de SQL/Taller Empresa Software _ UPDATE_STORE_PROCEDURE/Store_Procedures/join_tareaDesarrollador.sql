CREATE DEFINER=`root`@`localhost` PROCEDURE `join_tareaDesarrollador`(
in p_id_tarea int

)
BEGIN
select t.id_tarea, t.nombre_tarea, t.estado_tarea, t.prioridad_tarea, t.fechaInicio_tarea, t.fechaEntrega_tarea ,
d.nombre_desarrollador , d.especialidad, d.nivel_desarrollador
from tareas t join desarrolladores d
on t.id_desarrollador = d.id_desarrollador
where id_tarea = p_id_tarea;
END