créate database Venta;

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
	descripción varchar(25) not null,
	existencia int not null,
	precio double
);

create table proveedor(
	códigoPro varchar(25) primary key,
	nombre varchar(25) not null,
	apellidos varchar(25) not null,
	teléfono varchar(12),
	provincia set(),
	dirección text
);