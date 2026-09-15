CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_clientes`(
in p_id_cliente int
)
BEGIN
delete from clientes
where id_cliente = p_id_cliente;
select * from clientes;
END