/* insercion en la tabla de categoria*/
insert into categorias (name_categoria,descripcion_categoria)
values ("Electrodomesticos", "Tecnologia para tu hogar"),
("Farmacia", "Productos de Medicina y salud, cuidado personal y de las mascotas"),
("Juegos y juguetes", "Todo para la diversion y el juego");
/* Consulta basica */
select * from categorias;
/* insertar 3 productos por cada categoria*/
insert into producto (nombre_producto,descripcion_producto,precio_producto,cantidad_producto,id_categoria)
values ("Televisor led"," Televisor tecnologia led de 100 pulgadas",8500000, 100, 1),
("Celular Xiaomi", "telefono inteligente Snapdragon 12Gb Ram 512GB", 1400000, 50, 1),
("Laptop Lenovo y480", "Computador portatil 15 pulgadas, intel core i7, 16 Gb ram 1TB", 2500000, 100,1),
("Dolex niños", "acetaminofen 500mg", 20000, 150, 2),
("Doloran", "Adios dolores, dolores le tiene mieda a doloran", 50000, 200, 2),
("Desorrodante Rexona", "Rexona no te abandona, Desodorante antitrasnpirante 120 ml", 35000, 400, 2),
("Max Steel hero", "Munieco de Mattel con accesorios incluidos", 40000, 500, 3),
("Dron QuadHeli 3", "Dron de 4 motores servo 5600 MaH usb tipo C FPV", 1500000, 125, 3),
("Land Rover Defender D90 RC", "Carro radio control edicion camel trophy 4x4", 890000, 20, 3);

select * from producto;
/* falta agregar dos productos de  categorias de juguete */
