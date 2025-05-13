create database Venta;

use venta;

create table cliente(
	codigoC varchar(25) primary key,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	direccion text,
	telefono varchar(12),
	correo varchar(50) unique
);

create table producto(
	codigoP varchar(10) primary key,
	descripcion varchar(25) not null,
	existencia int not null,
	precio double
);

create table proveedor(
	codigoPro varchar(25) primary key,
	nombre varchar(25) not null,
	apellidos varchar(25) not null,
	telefono varchar(12),
	provincia set('Loja', 'Zamora', 'El Oro'),
	direccion text
);

create table compra(
	idCompra int auto_increment primary key,
	total_compra double not null,
	fecha date not null,
	cedula_cliente varchar(25) not null,
	codigo_producto varchar(25) not null,
	foreign key(cedula_cliente) references cliente(codigoC),
	foreign key(codigo_producto) references producto(codigoP)
);

create table suministra(
	idSuminstra int auto_increment primary key,
	codigo_producto varchar(25) not null,
	codigo_proveedor varchar(25) not null,
	foreign key(codigo_producto) references producto(codigoP),
	foreign key(codigo_proveedor) references proveedor(codigoPro)
);

insert into cliente(codigoC, nombre, apellido, direccion, telefono, correo) values
('C001', 'Andy', 'Apolo', 'Av. Pablo Palacio 874', '0968972104', 'andy.apolo@gmail.com'),
('C002', 'Jostin', 'Gutierrez', 'San Cayetano 125', '0984265321',  'jostin.gutierrez@gmail.com'),
('C003', 'Ana', 'Mendieta', 'La Tebaida 452', '0964512365', 'ana.mendieta@gmail.com'),
('C004', 'Naiara', 'Ramon', 'Daniel Alvares 584', '0930669878', 'naia.ramon@gmail.com');


select * from cliente order by nombre;
select * from cliente where nombre like 'a%';
select * from cliente where nombre not in ('','');


