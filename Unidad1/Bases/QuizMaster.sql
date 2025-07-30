create database QuizMaster;

use QuizMaster;

create table grupo (
    id_grupo varchar(10) primary key,
    nombre varchar(50) not null
);

create table usuario (
    cedula varchar(10) primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    id_grupo varchar(10),
    foreign key (id_grupo) references grupo(id_grupo)
);

create table prueba (
    id_prueba int auto_increment primary key,
    nombre varchar(100) not null,
    fecha_creacion date not null,
    descripcion text
);

create table categoria (
    id_categoria int auto_increment primary key,
    nombre varchar(50) not null
);

create table pregunta (
    id_pregunta int auto_increment primary key,
    enunciado text not null,
    id_categoria int not null,
    foreign key (id_categoria) references categoria(id_categoria)
);

create table respuesta (
    id_respuesta int auto_increment primary key,
    id_pregunta int not null,
    texto text not null,
    es_correcta boolean not null,
    foreign key (id_pregunta) references pregunta(id_pregunta)
);

create table resultado (
    id_resultado int auto_increment primary key,
    id_prueba int not null,
    cedula_usuario varchar(10) not null,
    puntaje int not null,
    fecha date not null,
    foreign key (id_prueba) references prueba(id_prueba),
    foreign key (cedula_usuario) references usuario(cedula)
);