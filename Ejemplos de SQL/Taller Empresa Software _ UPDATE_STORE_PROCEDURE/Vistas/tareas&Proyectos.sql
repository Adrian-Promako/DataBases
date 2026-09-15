CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `empresa_softwareii`.`vista_tareasproyectos` AS
    SELECT 
        `t`.`id_tarea` AS `id_tarea`,
        `t`.`nombre_tarea` AS `nombre_tarea`,
        `t`.`estado_tarea` AS `estado_tarea`,
        `t`.`prioridad_tarea` AS `prioridad_tarea`,
        `t`.`fechaInicio_tarea` AS `fechaInicio_tarea`,
        `t`.`fechaEntrega_tarea` AS `fechaEntrega_tarea`,
        `p`.`nombre_proyecto` AS `nombre_proyecto`
    FROM
        (`empresa_softwareii`.`tareas` `t`
        JOIN `empresa_softwareii`.`proyectos` `p` ON (`t`.`id_proyecto` = `p`.`id_proyecto`))