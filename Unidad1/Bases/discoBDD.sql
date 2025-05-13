create database disco;

use disco;

create table cancion(
    idCancion varchar(10) primary key,
    titulo varchar(25) not null
);

create table generoMusica(
    idGenero varchar(10) primary key,
    nombre varchar(25) not null
);

create table cantante(
    idCantante varchar(10) primary key,
    nombre varchar(25) not null,
    pais varchar(25) not null
);

create table disco(
    idDisco varchar(10) primary key,
    titulo varchar(25) not null unique,
    precio double,
    id_genero varchar(10) not null,
    id_cantante varchar(10) not null,
    foreign key(id_genero) references generoMusica(idGenero),
    foreign key(id_cantante) references cantante(idCantante)
);

create table cancion_disco(
    posicion int not null,
    id_disco varchar(10) not null,
    id_cancion varchar(10) not null,
    foreign key(id_disco) references disco(idDisco),
    foreign key(id_cancion) references cancion(idCancion)
);


