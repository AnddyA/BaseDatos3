create database apolo_articulo;

use apolo_articulo;

create table componente(
    CodC varchar(10) primary key,
    CNombre varchar(25) not null,
    Color varchar(10) not null,
    Ciudad varchar(25) not null,
    Peso double not null
);

create table articulo(
    CodA varchar(10) primary key,
    ANombre varchar(25) not null,
    Ciudad varchar(25) not null
);
create table proveedor(
    CodP varchar(10) primary key,
    PNombre varchar(25) not null,
    Categoria varchar(25) not null,
    Ciudad varchar(25) not null
);

create table envio(
    CodC varchar(10) not null,
    CodA varchar(10) not null,
    CodP varchar(10) not null,
    Cantidad double not null,
    foreign key (CodC) references componente(CodC),
    foreign key (CodA) references articulo(CodA),
    foreign key (CodP) references proveedor(CodP)
);


#Insertar datos en Componentes
INSERT INTO componente (CodC, CNombre, Color, Ciudad, Peso) VALUES
('C3', 'C4B', 'Azul', 'Cochabamba', 17),
('C5', 'VT8', 'Azul', 'Chiquisaca', 12),
('C1', 'X3A', 'Rojo', 'La Paz', 12),
('C6', 'C30', 'Rojo', 'La Paz', 19),
('C2', 'B85', 'Verde', 'Chiquisaca', 17),
('C4', 'C4B', 'Rojo', 'La Paz', 14);

#Insertar datos en Articulos
INSERT INTO articulo (CodA, ANombre, Ciudad) VALUES
('T6', 'Terminal', 'Tarija'),
('T2', 'Perforadora', 'Cochabamba'),
('T4', 'Consola', 'Santa Cruz'),
('T3', 'Lectora', 'Santa Cruz'),
('T5', 'Mezcladora', 'La Paz'),
('T7', 'Cinta', 'La Paz'),
('T1', 'Clasificadora', 'Chiquisaca');

#Insertar datos en Proveedores
INSERT INTO proveedor (CodP, PNombre, Categoria, Ciudad) VALUES
('P5', 'Eva', 30, 'Santa Cruz'),
('P2', 'Juan', 10, 'Chiquisaca'),
('P1', 'Carlos', 20, 'La Paz'),
('P3', 'José', 30, 'La Paz'),
('P4', 'Lucy', 20, 'La Paz');

#Insertar datos en Envios
INSERT INTO envio (CodP, CodC, CodA, Cantidad) VALUES
('P2', 'C3', 'T3', 200),
('P3', 'C4', 'T2', 500),
('P2', 'C3', 'T1', 400),
('P3', 'C3', 'T1', 200),
('P4', 'C6', 'T3', 300),
('P4', 'C6', 'T7', 300),
('P2', 'C3', 'T4', 500),
('P1', 'C1', 'T1', 200),
('P2', 'C3', 'T2', 200),
('P1', 'C1', 'T4', 700),
('P5', 'C2', 'T2', 200);


#1
SELECT * FROM articulo WHERE Ciudad = 'Santa Cruz';
#2
SELECT P.CodP FROM proveedor AS P INNER JOIN envio AS E ON P.CodP = E.CodP WHERE E.CodA = 'T1';
#3
SELECT DISTINCT color, ciudad FROM componente;
#4
SELECT CodP FROM envio WHERE CodA = 'T1' AND CodC = 'C1';
#5
SELECT DISTINCT a.ANombre FROM articulo a JOIN envio e ON a.CodA = e.CodA WHERE e.CodP = 'P1' ORDER BY a.ANombre;
#6
SELECT DISTINCT e.CodC FROM envio e JOIN articulo a ON e.CodA = a.CodA WHERE a.Ciudad = 'Chiquisaca';
