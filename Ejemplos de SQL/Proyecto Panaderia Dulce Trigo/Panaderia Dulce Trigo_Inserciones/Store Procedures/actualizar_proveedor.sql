CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_proveedor`(
in p_id_proveedor int,
in p_telefono_proveedor varchar(100),
in p_direccion_proveedor varchar (100)
)
BEGIN
update proveedores
set telefono_proveedor = p_telefono_proveedor, direccion_proveedor = p_direccion_proveedor
where id_proveedor = p_id_proveedor;
select * from proveedores;
END