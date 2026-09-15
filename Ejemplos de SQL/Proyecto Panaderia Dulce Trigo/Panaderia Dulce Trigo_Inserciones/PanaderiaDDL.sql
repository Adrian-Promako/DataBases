/* Creacion de la base de datos*/
create database  panaderia_dulce_trigo;
/* Uso de la base de datos*/
use panaderia_dulce_trigo;

/* creacion de la tabla categorias	*/
create table categorias (
id_categoria int auto_increment primary key,
nombre_categoria varchar (100) not null,
descripcion text
);

/* creacion de la tabla ingredientes */
create table productos (
id_producto int auto_increment primary key,
nombre_producto varchar (100) not null,
precio_producto decimal (10,2) not null,
stock_producto int default 0 check (stock_producto >=0 ),
id_categoria int not null,
foreign key (id_categoria) references categorias (id_categoria)
on delete restrict
on update cascade
);

/* creacion de tabla que relacione unidades de medida de los ingredientes */
create table unidades_medida (
id_unidad int auto_increment primary key,
nombre_unidad enum ("Kg","Lb","Gr","Pq","Lt","ml","und")not null
);
/* creacion tabla ingredientes */
create table ingredientes (
id_ingrediente int auto_increment primary key,
nombre_ingrediente varchar (100) not null,
stock_ingrediente decimal (10,2)not null,
id_unidad int not null,
foreign key (id_unidad) references unidades_medida (id_unidad)
on delete restrict
on update cascade
);

/* creacion tabla proveedores 	*/
create table proveedores (
id_proveedor int auto_increment primary key,
nombre_proveedor varchar (100) not null,
telefono_proveedor varchar (100) ,
direccion_proveedor varchar (100)
);

/* creacion tabla clientes */
create table clientes (
id_cliente int auto_increment primary key,
nombre_cliente varchar (100) not null,
apellido_cliente varchar (100) not null,
telefono_cliente varchar (100),
correo_cliente varchar (100) unique
);

/* crear la tabla de cargos */
create table cargos (
id_cargo int auto_increment primary key,
nombre_cargo varchar (100) not null unique 
);
/* creacion tabla empleados */
create table empleados (
id_empleado int auto_increment primary key,
nombre_empleado varchar (100) not null,
apellido_empleado varchar (100) not null,
salario_empleado decimal (10,2) not null check(salario_empleado >0) ,
id_cargo int not null,
foreign key (id_cargo) references cargos (id_cargo) 
);

/* creacion tabla de pedidos */
create table pedidos (
id_pedido int auto_increment primary key,
fecha_pedido datetime default current_timestamp,
id_cliente int not null,
id_empleado int not null,
total_pedido decimal (10,2) default 0,
foreign key (id_cliente) references clientes (id_cliente)
on delete restrict
on update cascade,
foreign key (id_empleado) references empleados (id_empleado)
on delete restrict
on update cascade
);

/* creacion tabla producto-ingredientes */
create table producto_ingrediente (
id_producto int,
id_ingrediente int,
cantidad decimal (10,2),
primary key (id_producto, id_ingrediente) ,
foreign key (id_producto) references productos (id_producto)
on delete cascade
on update cascade,
foreign key (id_ingrediente) references ingredientes (id_ingrediente)
on delete restrict
on update cascade
);

/* creacion de la tabla pedido-producto */
create table detalle_pedido (
id_pedido int,
id_producto int,
cantidad int,
precio_unitario decimal (10,2),
primary key (id_pedido, id_producto),
foreign key (id_pedido) references pedidos (id_pedido)
on delete cascade
on update cascade,
foreign key (id_producto) references productos (id_producto)
on delete restrict
on update cascade
);

/* creacion tabla ingrediente-proveedor */
create table ingrediente_proveedor (
id_ingrediente int,
id_proveedor int,
primary key (id_ingrediente, id_proveedor),
foreign key (id_ingrediente) references ingredientes (id_ingrediente)
on delete cascade
on update cascade,
foreign key (id_proveedor)  references proveedores (id_proveedor)
on delete cascade
on update cascade
);

/* tabla para registrar ventas */
create table ventas (
    id_venta int auto_increment primary key,
    fecha_venta date not null,
    total_venta decimal(10,2),
    id_empleado int not null,
    foreign key (id_empleado) references empleados (id_empleado)
);
/* creacion de tabla para detalle de las ventas */
create table detalle_ventas (
id_detalle int auto_increment primary key,
id_venta int not null,
id_producto int not null,
cantidad int not null,
subtotal decimal (10,2) not null,
foreign key (id_venta) references ventas (id_venta),
foreign key (id_producto) references productos (id_producto)
);

/*aclarar la diferencia entre on delete restrict & on delete cascade
** CASCADE en pedidos → clientes permite borrar cliente y sus pedidos
** RESTRICT en productos evita borrar categorías usadas
*/


