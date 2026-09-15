CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_venta`(
in fecha date,
in total decimal (10,2),
in empleado int 
)
BEGIN
insert into ventas (fecha_venta, total_venta, id_empleado)
values (fecha, total, empleado);
select * from ventas; 
END