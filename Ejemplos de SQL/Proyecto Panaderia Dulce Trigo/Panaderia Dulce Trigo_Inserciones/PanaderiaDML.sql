/* Modelo MDL del proyecto para almacenar inserciones, consultas y procedimientos ademas de las vistas*/
use panaderia_dulce_trigo;

/* insercion de datos para las categforias de productos de la panaderia */
insert into categorias (nombre_categoria, descripcion )
values 
('pan tradicional','panes de caracter tradicional colombiano'),
('pan dulce', 'panes de masa dulce'),
('hojaldres','productos realizados con masa de hojaldre'),
('reposteria', 'productos de reposteria, tortas y pasteles'	),
('bebidas','bedidad calientes y frias');

/* insercion de datos para la tabla productos */
insert into productos (nombre_producto, precio_producto, stock_producto, id_categoria)
values
('pan frances', 1200, 80, 1),
('pan blandito', 1000, 100, 1),
('croissant de chocolate', 4500, 40, 3),
('pastel gloria', 3500, 35, 3),
('roscon de bocadillo', 5000, 25, 2),
('roscon de arequipe', 5000, 25, 2),
('torta de chocolate completa', 45000, 10, 4),
('torta de amapola completa', 45000, 10, 4),
('torta de vainilla completa', 42000, 8, 4),
('cafe americano', 2500, 60, 5),
('capuchino', 4500, 45, 5),
('pan integral', 1800, 50, 1),
('milhoja', 5500, 20, 3),
('galletas de mantequilla', 3000, 70, 2),
('pastel de pollo', 6000, 30, 3),
('pastel de carne', 6500, 30, 3),
('empanada de pollo', 4000, 55, 1),
('donut de azucar', 3500, 30, 2),
('jugo natural', 5000, 25, 5);

/* insercion de datos dentro de la tabla de unidades de medida */
insert into unidades_medida (nombre_unidad)
values
('Kg'),
('Lb'),
('Gr'),
('Pq'),
('Lt'),
('ml'),
('und');

/* insercion de datos dentro de la tabla ingredientes */
insert into ingredientes ( nombre_ingrediente, stock_ingrediente, id_unidad	)
values 
('harina de trigo', 500, 1),
('azucar', 200, 1),
('sal', 50, 1),
('levadura', 200, 2),
('mantequilla', 300, 1),
('leche', 60, 5),
('huevos', 200, 7),
('esencia mantequilla',2000, 6),
('queso', 25, 1),
('chocolate', 18, 1),
('vainilla', 1000, 6),
('semilla amapola', 2000, 3),
('bocadillo', 14, 1),
('arequipe', 12, 1),
('jamon', 15, 1),
('pollo desmechado', 14, 1),
('carne molida', 15,1),
('aceite vegetal', 20, 5),
('cafe molido', 8, 1);
drop table unidades_medida;
/* inserciones dentro de la tabla proveedores */
insert into proveedores (nombre_proveedor, telefono_proveedor, direccion_proveedor)
values
('distribuidora harina "El lobo"  ', '3104567890', 'cra 10 #20-15 bogota'),
('lacteos colombiLacteos', '3115678901', 'calle 45 #18-22 bogota'),
('avicolas del cerro', '3126789012', 'cra 30 #50-10 bogota'),
('dulces y sabores reposteros ', '3137890123', 'calle 80 #25-14 bogota'),
('cafe premium  "La finquita" ', '3148901234', 'cra 15 #70-50 bogota'),
('quesos andinos', '3159012345', 'calle 90 #10-11 bogota'),
('embutidos nacionales', '3160123456', 'cra 22 #33-40 bogota'),
('productos carnicos de guadalupe ', '3171234567', 'calle 100 #50-12 bogota');
select * from proveedores;
/* inserciones en la tabla clientes */
insert into clientes ( nombre_cliente, apellido_cliente, telefono_cliente, correo_cliente)
values
('daniel', 'arias', '3201112233', 'daniel@gmail.com'),
('valentina', 'mejia', '3201112234', 'valentina@gmail.com'),
('sebastian', 'cruz', '3201112235', 'sebastian@gmail.com'),
('isabella', 'rojas', '3201112236', 'isabella@gmail.com'),
('samuel', 'garcia', '3201112237', 'samuel@gmail.com'),
('gabriela', 'mendoza', '3201112238', 'gabriela@gmail.com'),
('mateo', 'silva', '3201112239', 'mateo@gmail.com'),
('antonia', 'castillo', '3201112240', 'antonia@gmail.com'),
('alejandro', 'navarro', '3201112241', 'alejandro@gmail.com'),
('luisa', 'vega', '3201112242', 'luisa@gmail.com'),
('martin', 'parra', '3201112243', 'martin@gmail.com'),
('sofia', 'prieto', '3201112244', 'sofia@gmail.com'),
('nicolas', 'quintero', '3201112245', 'nicolas@gmail.com'),
('emma', 'beltran', '3201112246', 'emma@gmail.com'),
('david', 'salazar', '3201112247', 'david@gmail.com');	

/* inserciones tabla cargos */
insert into cargos (nombre_cargo)
values
('administrador'),
('panadero'),
('pastelero'),
('cajero'),
('mesero'),
('domiciliario');

/* inserciones tabla empleados */
insert into empleados ( nombre_empleado, apellido_empleado, salario_empleado, id_cargo)
values 
('abelardo', 'quintero', 2500000, 1),
('adrian', 'moreno', 1950000, 2),
('alexander', 'lancheros', 1800000, 2),
('brayan', 'mendez', 2100000, 3),
('thalia', 'pertuz', 1500000, 4),
('maria', 'torres', 1450000, 4),
('felipe', 'castro', 1400000, 5),
('angela', 'morales', 1400000, 5),
('jhon', 'perez', 1350000, 6),
('daniela', 'lopez', 1350000, 6);

/* insercion de datos dentro de pedidos */
insert into pedidos (id_cliente, id_empleado, total_pedido)
values
(1, 5, 12000),
(2, 6, 18500),
(3, 5, 25000),
(4, 6, 9800),
(5, 5, 36000),
(6, 6, 42000),
(7, 5, 15000),
(8, 6, 21000),
(9, 5, 34000),
(10, 6, 27500);

/* insertar datos de producto_ingredientes  */
insert into producto_ingrediente (id_producto, id_ingrediente, cantidad)
values
(1, 1, 0.50),
(1, 4, 0.02),
(2, 1, 0.40),
(3, 9, 0.15),
(3, 5, 0.10),
(4, 14, 0.20),
(5, 13, 0.25),
(6, 14, 0.25),
(7, 9, 0.50),
(7, 5, 0.30),
(8, 2, 0.40),
(9, 10, 0.15),
(10, 19, 0.05),
(11, 6, 0.20),
(11,19,0.05),
(12, 1, 0.45),
(13, 5, 0.15),
(14, 2, 0.12),
(15, 13, 0.25),
(16, 12, 0.25),
(17, 13, 0.20),
(18, 2, 0.10),
(19, 6, 0.30);

/* insercion tabla detalle_pedido */
insert into detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario)
values
(1, 1, 4, 1200),
(1, 10, 2, 2500),
(2, 3, 2, 4500),
(2, 14, 1, 3000),
(3, 7, 1, 45000),
(4, 2, 5, 1000),
(5, 5, 3, 5000),
(6, 9, 1, 42000),
(7, 15, 2, 6000),
(8, 18, 4, 3500),
(9, 11, 3, 4500),
(10, 12, 5, 1800),
(10, 19, 2, 5000);

/* inserciones en la tabla ingrediente_proveedor */
insert into ingrediente_proveedor (id_ingrediente, id_proveedor)
values 
(1, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 6),
(9, 4),
(10, 4),
(11, 4),
(12, 7),
(13, 7),
(14, 8),
(15, 5),
(16, 8),
(17, 8),
(18, 1),
(19, 5);

/* inseciones de ventas  */
insert into ventas (fecha_venta, total_venta, id_empleado)
values 
('2026-05-10', 25000, 1),
('2026-05-11', 18000, 2),
('2026-05-12', 35000, 2),
('2026-05-13', 45000, 1),
('2026-05-14', 5000, 2),
('2026-05-15', 250000, 1);
/* insecion para el detalle de venta */
insert into detalle_ventas
(id_venta, id_producto, cantidad, subtotal)
values
-- Venta 1 = 25000
(1, 1, 2, 10000),
(1, 3, 3, 15000),
-- Venta 2 = 18000
(2, 2, 2, 8000),
(2, 4, 2, 10000),
-- Venta 3 = 35000
(3, 1, 3, 15000),
(3, 5, 2, 20000),
-- Venta 4 = 45000
(4, 3, 5, 25000),
(4, 2, 2, 8000),
(4, 6, 2, 12000),
-- Venta 5 = 5000
(5, 4, 1, 5000),
-- Venta 6 = 250000
(6, 1, 10, 50000),
(6, 2, 10, 40000),
(6, 3, 20, 100000),
(6, 5, 6, 60000);
select * from detalle_ventas;

/* generacion de consulta usando el operador relacional > para mostras empleados que ganan mas de 1.500.000 en sueldo */
select * from empleados where salario_empleado > 1500000;

/* consulta para consultar ingredientes con un stock menor a 100 */
select * from ingredientes where stock_ingrediente < 100;

/* consulta para mostrar los productos con un precio >= 6000  */
select * from productos where precio_producto >= 6000;

/* consulta para mostrar ingredientes con un stock menor o igual a 50 */
select * from ingredientes where stock_ingrediente <= 50;

/* Consultas con la funcion SUM para determinar el total del stock en los ingredientes*/
select SUM(stock_ingrediente) AS total_stock
from ingredientes;
select id_categoria, COUNT(*) as total_productos
from productos
group by id_categoria;

/* Uso de la funcion AVG para calcular el promedio del salario de los empleados */
select AVG(salario_empleado) as promedio_salario
from empleados;
/* calcular el promedio del precio de producto por categoria */
select id_categoria, AVG(precio_producto) as promedio_precio
from productos
group by id_categoria;

/* Uso de la funcion MAX para mostrar el producto con el precio mas alto */
select MAX(precio_producto) as precio_maximo
from productos;
/* calcula el salario maximo por cargo de empleado	*/
SELECT id_cargo, MAX(salario_empleado) AS salario_maximo
FROM empleados
GROUP BY id_cargo;

/*	total de productos por categoria*/
SELECT id_categoria, COUNT(*) AS total_productos
FROM productos
GROUP BY id_categoria;

/* Stock mínimo por unidad de medida usando la funcion MIN*/
select id_unidad, MIN(stock_ingrediente) as stock_minimo
from ingredientes
group by id_unidad;

/* Promedio de precios por categoría */
SELECT id_categoria, AVG(precio_producto) AS promedio_precio
FROM productos
GROUP BY id_categoria;

/* ventas hechas el mes de mayo del año 2026*/ 
SELECT *
FROM ventas
WHERE MONTH(fecha_venta) = 5
AND YEAR(fecha_venta) = 2026;

/* ventas realizadas el dia 15 de mayo */
select * from ventas
where day(fecha_venta) = 15;
-- -------------------------------------------------------------------------------
/* consulta join para mostrar el detalle de las ventas con nombre del producto	*/
select
d.id_detalle, d.id_venta,
p.nombre_producto,
d.cantidad, d.subtotal
FROM detalle_ventas d
JOIN productos p
ON d.id_producto = p.id_producto;

/* mostrar producto con su categoria */
select p.nombre_producto, p.precio_producto,
c.id_categoria, c.nombre_categoria
from productos p join categorias c
on p.id_categoria = c.id_categoria;

/* consulta join para listar los productos y su unidad de medida, ademas de ver su stock*/
select
i.nombre_ingrediente, i.stock_ingrediente,
u.nombre_unidad
from ingredientes i
join unidades_medida u
on i.id_unidad = u.id_unidad;

/* creacion de store procedure para registrar una venta */
call registrar_venta ('2026-05-18', 5000, 4);

/* actualizar el telefono y la direccion de un proveedor */
call actualizar_proveedor (8,'3203405040', 'calle 53 sur # 17-24 bogotá' );

/* store procedure para consultar productos y precio por categoria */
call productos_por_categoria(3);

/* creacion de vistas */
select * from vista_productos_categorias;


create view vista_ingredientes_unidades as
select 
    i.id_ingrediente,
    i.nombre_ingrediente,
    i.stock_ingrediente,
    u.nombre_unidad
from ingredientes i
inner join unidades_medida u
on i.id_unidad = u.id_unidad;
select * from vista_ingredientes_unidades;


