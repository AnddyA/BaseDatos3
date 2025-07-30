create database pasajesBDD;

use pasajesBDD;



create table horario(
    id int auto_increment primary key,
    hora_salida time not null,
    hora_llegada time not null,
    origen varchar(50) not null,
    destino varchar(50) not null
)

create table bus(
    placa varchar(10) primary key,
    marca varchar(50) not null,
    modelo varchar(50) not null,
    capacidad int not null,
    horario_id int not null,
    foreign key (horario_id) references horario(id)
)

create table asiento(
    numero int primary key,
    disponibilidad set('disponible', 'reservado', 'ocupado') not null
)

create table pasaje(
    id int auto_increment primary key,
    precio decimal(10,2) not null,
    asiento int not null,
    foreign key (asiento) references asiento(numero),
    horario int not null,
    foreign key (horario) references horario(id)
    bus varchar(10) not null,
    foreign key (bus) references bus(placa)
);

create table pasajero(
    id int auto_increment primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(100) not null unique,
    telefono varchar(15) not null
);
