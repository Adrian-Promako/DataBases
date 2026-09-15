/* Creacion de BD */
create database cardinalidad;/* usar la BD */
use cardinalidad;
/* crear tabla categoria*/
create table categorias(
id_categoria int primary key key auto_increment,
name_categoria varchar(50) not null,
descripcion_categoria text not null
);
/* creacion tabla producto*/
create table producto (
id_producto int primary key key auto_increment,  /* depende de requerimiento */
nombre_producto varchar (100) not null,
descripcion_producto text not null,
precio_producto int check (precio_producto > 0),
cantidad_producto int check (cantidad_producto >= 0),
/* creamos un campo adicional para la relacion */
id_categoria int not null,
foreign key(id_categoria) references categorias(id_categoria)
);

/*creacion tabla cliente*/
create table cliente(
id_cliente int primary key key auto_increment,
nombre_cliente varchar (50) not null,
apellido_cliente varchar (50) not null,
telefono_cliente varchar (100) not null,
direccion_cliente text not null, 
email_cliente varchar (100) not null
);
/* creacion tabla pedidos*/
create table pedido (
id_pedido int primary key key auto_increment,
fecha_pedido datetime not null,
estado_pedido enum ("pagado", "cancelado" , "pendiente", "enviado")not null,
metodo_pago varchar (50) not null,
metodo_envio varchar(30),
total_pedido varchar (50) not null,
direccion_envio text not null,
/*	campo de relacion	*/
id_cliente int not null,
foreign key (id_cliente) references cliente (id_cliente)
);