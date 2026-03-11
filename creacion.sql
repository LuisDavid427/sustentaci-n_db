-- creación de la base de datos
create database panaderia_db;
use panaderia_db;

-- creación de tablas
create table categorias (
    id_categoria int auto_increment primary key,
    nombre varchar(50) not null
);

create table productos (
    id_producto int auto_increment primary key,
    nombre varchar(100) not null,
    precio decimal(10,2) not null,
    stock int default 0,
    id_categoria int,
    index (nombre),
    foreign key (id_categoria) references categorias(id_categoria)
);

create table clientes (
    id_cliente int auto_increment primary key,
    nombre varchar(100) not null,
    telefono varchar(15)
);

create table ventas (
    id_venta int auto_increment primary key,
    fecha datetime default current_timestamp,
    id_cliente int,
    foreign key (id_cliente) references clientes(id_cliente)
);

create table detalle_ventas (
    id_detalle int auto_increment primary key,
    id_venta int,
    id_producto int,
    cantidad int not null,
    precio_unitario decimal(10,2) not null,
    foreign key (id_venta) references ventas(id_venta),
    foreign key (id_producto) references productos(id_producto)
);

-- inserción de datos iniciales
insert into categorias (nombre) values ('panadería'), ('pastelería'), ('bebidas');

insert into productos (nombre, precio, stock, id_categoria) values 
('pan de bono', 1200.00, 80, 1),
('mojicón', 1500.00, 40, 1),
('milhoja', 4500.00, 15, 2),
('jugo de naranja', 3000.00, 20, 3),
('buñuelo', 1000.00, 100, 1);

insert into clientes (nombre, telefono) values 
('luis sanchez', '3101234567'),
('andres cuellar', '3209876543'),
('maria lopez', '3155554433');

insert into ventas (id_cliente) values (1), (2), (3);

insert into detalle_ventas (id_venta, id_producto, cantidad, precio_unitario) values 
(1, 1, 5, 1200.00),
(1, 5, 10, 1000.00),
(2, 3, 2, 4500.00),
(3, 4, 1, 3000.00);