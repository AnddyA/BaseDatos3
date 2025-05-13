create database camioneroBDD;

use camioneroBDD;

create table camionero (
    cedula varchar(10) primary key,
    nombre varchar(25) not null,
    direccion text,
    telefono varchar(10) not null,
    salario double not null,
    poblacion text
);

create table camion (
    matricula varchar(10) primary key,
    modelo varchar(25) not null,
    tipo varchar(10) not null,
    potencia double not null,
    cedula_camionero varchar(10) not null,
    foreign key (cedula_camionero) references camionero(cedula)
);

create table provincia (
    codigo varchar(10) primary key,
    nombre varchar(25) not null
);

create table paquete (
    codigo varchar(10) primary key,
    descripcion text,
    direccion_destino text not null,
    cedula_camionero varchar(10) not null,
    foreign key (cedula_camionero) references camionero(cedula)
);