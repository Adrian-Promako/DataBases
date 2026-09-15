CREATE DEFINER=`root`@`localhost` PROCEDURE `join_ProyeCliente`(
)
BEGIN
select c.nombre_cliente,
count(p.id_proyecto) as cantidad_proyectos
from clientes c
join proyectos p 
on c.id_cliente = p.id_cliente group by c.nombre_cliente;
END