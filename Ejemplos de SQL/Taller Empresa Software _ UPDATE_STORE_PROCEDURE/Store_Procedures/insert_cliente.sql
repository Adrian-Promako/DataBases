CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_cliente`(
in p_nombre_cliente varchar (50),
in p_correo_cliente varchar (50),
in p_telefono_cliente varchar (50),
in p_fecha_registro datetime,
in p_id_ciudad varchar (50)
)
BEGIN
insert into clientes (nombre_cliente, correo_cliente, telefono_cliente, fecha_registro, id_ciudad )
values ( p_nombre_cliente, p_correo_cliente , p_telefono_cliente ,p_fecha_registro , p_id_ciudad);

select * from clientes;
END