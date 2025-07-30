create database veterinaria2;

use veterinaria2;

create table propietario(
    cedula varchar(10) primary key, 
    nombre varchar(25), 
    apellido varchar(25),
    direccion varchar(40)
);

create table mascota(
    id varchar(10) primary key, 
    nombre varchar(30), 
    tipo set('perro', 'gato') not null, 
    fecha_nacimiento date not null, 
    propietario varchar(10), 
    foreign key(propietario) references propietario(cedula)
);

