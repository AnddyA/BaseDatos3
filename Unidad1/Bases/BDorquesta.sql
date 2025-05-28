create database BDorquesta;

use BDorquesta;

create table orchestras(
    id int primary key auto_increment,
    name varchar(32) not null,
    rating decimal not null,
    city_origin varchar(32) not null,
    country_origin varchar(32) not null,
    year int not null
);

create table concerts(
    id int primary key auto_increment,
    city varchar(64) not null,
    country varchar(32) not null,
    year int not null,
    rating decimal not null,
    orchestra_id int,
    foreign key (orchestra_id) references orchestras(id)
);

create table members(
    id int primary key auto_increment,
    name varchar(64) not null,
    position varchar(32) not null,
    experience int not null,
    wage int not null,
    orchestra_id int,
    foreign key (orchestra_id) references orchestras(id)
);

INSERT INTO orchestras (name, rating, city_origin, country_origin, year) VALUES
('Orquesta de Bogotá', 9.2, 'Bogotá', 'Colombia', 1967),
('Orquesta Nacional de México', 9.0, 'Ciudad de México', 'México', 1928),
('Orquesta Simón Bolívar', 9.5, 'Caracas', 'Venezuela', 1978),
('Orquestra de São Paulo', 9.4, 'São Paulo', 'Brasil', 1954),
('Orquesta de Montevideo', 8.7, 'Montevideo', 'Uruguay', 1958);


INSERT INTO concerts (city, country, year, rating, orchestra_id) VALUES
('Medellín', 'Colombia', 2023, 9.0, 1),
('Guadalajara', 'México', 2022, 8.8, 2),
('Buenos Aires', 'Argentina', 2023, 9.4, 3),
('Lima', 'Perú', 2024, 9.1, 4),
('Asunción', 'Paraguay', 2023, 8.5, 5),
('Caracas', 'Venezuela', 2022, 9.6, 3),
('Brasilia', 'Brasil', 2023, 9.2, 4);

INSERT INTO members (name, position, experience, wage, orchestra_id) VALUES
('Carlos Gómez', 'Director', 20, 8500, 1),
('Mariana Rodríguez', 'Violinista', 10, 4200, 1),
('Luis Pérez', 'Cellista', 8, 3900, 1),

('Ana Torres', 'Directora', 25, 9000, 2),
('Eduardo Martínez', 'Trompetista', 12, 4100, 2),
('Sofía Morales', 'Percusionista', 6, 3500, 2),

('Gustavo Dudamel', 'Director', 22, 9500, 3),
('Isabel Herrera', 'Violinista', 14, 4600, 3),
('José Rivas', 'Clarinetista', 9, 3700, 3),

('Camila Silva', 'Directora', 18, 8700, 4),
('Rafael Costa', 'Flautista', 7, 3600, 4),
('Luciana Almeida', 'Oboísta', 11, 4000, 4),

('Martín Benítez', 'Director', 19, 8400, 5),
('Valentina López', 'Violinista', 10, 4100, 5),
('Diego Cabrera', 'Trombonista', 8, 3800, 5);


select * from orchestras;
select * from concerts;
select * from members;
select name from orchestras where year > 2000;
select distinct city from concerts where year > 2022;   
SELECT name FROM orchestras WHERE city_origin IN (SELECT city FROM concerts);
