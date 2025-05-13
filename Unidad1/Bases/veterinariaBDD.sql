create database veterinaria;

use veterinaria;

create table propietario(
	cedula varchar(10)primary key, 
    nombre varchar(25), 
    apellido varchar(25),
    direccion varchar(40));
    
create table telefono(
	id int auto_increment primary key, 
	cedula varchar(10),
    telefono varchar(10),
    foreign key(cedula)references propietario(cedula));
    
create table familiacontacto(
    cedula varchar(10),
    propietario varchar(25),
    nombre varchar(25),
    telefono varchar(10),
    primary key(cedula, propietario),
    foreign key(propietario) references propietario(cedula));
    
create table mascota(
	id varchar(10) primary key, 
    nombre varchar(30), 
    tipo varchar(30), 
    fecha_nacimiento date, 
    propietario varchar(10), 
	foreign key(propietario) references propietario(cedula));

create table personal(
	codigo varchar(10)primary key,
    cedula varchar(15) unique,
    nombre varchar(30)not null);
    
    
create table veterinario(
	codigo varchar(10)primary key,
    fecha_alta date,
    especialidad varchar(25),
    foreign key(codigo)references personal(codigo));
    
create table auxiliar(
	id int auto_increment,
    codigo varchar(10),
    base_cotizacion double,
    primary key(id, codigo),
    foreign key(codigo)references personal(codigo));

ALTER TABLE mascota MODIFY nombre VARCHAR(30) NOT NULL;           #editar algun atributo uno por uno
ALTER TABLE mascota MODIFY tipo set("perro","gato")not null;
ALTER TABLE mascota MODIFY fecha_nacimiento DATE NOT NULL;
ALTER TABLE mascota MODIFY propietario VARCHAR(10);


drop table mascota;  #borrar la tabla 
ALTER TABLE mascota drop column tipo;             # borrar la columna con el nuevo atributo 


