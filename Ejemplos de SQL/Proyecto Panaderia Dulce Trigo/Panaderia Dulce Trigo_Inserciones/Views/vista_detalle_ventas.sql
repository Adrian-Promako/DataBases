CREATE VIEW `vista_detalle_ventas` AS
select 
dv.id_detalle_venta, 
v.id_venta, v.fecha_venta,
p.nombre_producto,
dv.cantidad, dv.precio_unitario,
(dv.cantidad * dv.precio_unitario) as subtotal
from detalle_ventas dv
join ventas v
on dv.id_venta = v.id_venta;
join productos p
on dv.id_producto = p.id_producto;
