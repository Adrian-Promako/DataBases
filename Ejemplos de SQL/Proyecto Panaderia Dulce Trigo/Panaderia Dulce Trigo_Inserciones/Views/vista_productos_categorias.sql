CREATE VIEW `vista_productos_categorias` AS
select p.id_producto, p.nombre_producto, p.precio_producto, p.stock_producto,
c.nombre_categoria
from productos p
join categorias c
on p.id_categoria = c.id_categoria;