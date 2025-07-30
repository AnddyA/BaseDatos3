create database biblioteca;

use biblioteca;

create table autor (
    codigo varchar(10) primary key,
    nombre varchar(25) not null
);

create table libro (
    isbn varchar(10),
    codigoL varchar(10),
    titulo varchar(25) not null,
    autor_codigo varchar(10) not null,
    numero_paginas int,
    editorial varchar(10) not null,
    primary key (isbn, codigoL),
    foreign key (autor_codigo) references autor(codigo)
);

create table ejemplar (
    codigoE varchar(10) primary key,
    isbn_libro varchar(13) not null,
    localizacion text not null,
    foreign key (isbn_libro) references libro(isbn)
);

create table usuario (
    codigoU varchar(10) primary key,
    nombre varchar(25) not null,
    direccion text not null,
    telefono varchar(10) not null
);

create table prestamo (
    codigoP varchar(10) primary key,
    fecha_prestamo date not null,
    fecha_devolucion date not null,
    ejemplar_codigoE varchar(10) not null,
    usuario_codigoU varchar(10) not null,
    foreign key (ejemplar_codigoE) references ejemplar(codigoE),
    foreign key (usuario_codigoU) references usuario(codigoU)
);