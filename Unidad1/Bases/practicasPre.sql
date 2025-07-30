create database practicasPre;
use practicasPre;

create table usuario(
    cedula varchar(10) not null primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null
);

create table cuenta(
    id_cuenta int not null auto_increment primary key,
    cedula varchar(10) not null,
    gmail varchar(50) not null,
    contrasena varchar(50) not null,
    foreign key (cedula) references usuario(cedula)
);

create table proyecto(
    id_proyecto int not null auto_increment primary key,
    nombre varchar(50) not null,
    descripcion varchar(200) not null,
    estado varchar(20) not null
);

create table requisito(
    id_requisito int not null auto_increment primary key,
    id_proyecto int not null,
    descripcion varchar(200) not null,
    foreign key (id_proyecto) references proyecto(id_proyecto)
);

create table riesgo(
    id_riesgo int not null auto_increment primary key,
    id_proyecto int not null,
    descripcion varchar(200) not null,
    estado varchar(20) not null,
    prioridad varchar(20) not null,
    categoria varchar(20) not null,
    foreign key (id_proyecto) references proyecto(id_proyecto)
);

create table planRiesgo(
    id_plan int not null auto_increment primary key,
    id_riesgo int not null,
    descripcion varchar(200) not null,
    estrategia varchar(200) not null,
    fecha_implementacion date not null,
    eficiencia varchar(20) not null,
    foreign key (id_riesgo) references riesgo(id_riesgo)
);

create table historialRiesgo(
    id_historial int not null auto_increment primary key,
    id_riesgo int not null,
    descripcion varchar(200) not null,
    descripcion_accion varchar(200) not null,
    fecha date not null,
    foreign key (id_riesgo) references riesgo(id_riesgo)
);

//Insertar datos
insert into usuario (cedula, nombre, apellido) values
('0705760361', 'Andy', 'Apolo'),
('1122334455', 'Justin', 'Gutierrez');

insert into cuenta (cedula, gmail, contrasena) values
('0705760361', 'andy.apolo@gmail.com', 'andy123');

//modificar/actualizar datos
update usuario set nombre = 'Jahir' where cedula = '0705760361';
update cuenta set gmail = 'apoloandy66@gmai.com' where cedula = '0705760361';
update cuenta set contrasena = 'AndyApolo2004' where cedula = '0705760361';

//Datos
INSERT INTO usuario (cedula, nombre, apellido) VALUES
('0102030401','Ana','Martínez'),
('0102030402','Luis','Gómez'),
('0102030403','Camila','Rodríguez'),
('0102030404','Lucía','Fernández'),
('0102030405','Javier','Pérez'),
('0102030406','Marta','Díaz'),
('0102030407','David','Sánchez'),
('0102030408','Laura','Ramírez'),
('0102030409','Andrés','Castillo'),
('0102030410','Paula','Morales'),
('0102030411','Sofía','Rojas'),
('0102030412','Manuel','Herrera'),
('0102030413','Julia','Ortega'),
('0102030414','Pedro','Vargas'),
('0102030415','Elena','Cruz'),
('0102030416','Diego','López'),
('0102030417','Isabel','Jiménez'),
('0102030418','Alberto','Silva'),
('0102030419','Clara','Torres'),
('0102030420','Hugo','Navarro');


INSERT INTO cuenta (cedula, gmail, contrasena) VALUES
('0102030401','ana.martinez@correo.com','ana#2025'),
('0102030402','luis.gomez@correo.com','luis@123'),
('0102030403','camila.rodri@correo.com','cami@2025'),
('0102030404','lucia.fernandez@correo.com','lucia2025'),
('0102030405','javierp@correo.com','javi$pass'),
('0102030406','marta.diaz@correo.com','marta@diaz'),
('0102030407','david.sanchez@correo.com','david2025'),
('0102030408','laura.ramirez@correo.com','laura@pass'),
('0102030409','andres.castillo@correo.com','andres!pass'),
('0102030410','paula.morales@correo.com','paula_2025'),
('0102030411','sofia.rojas@correo.com','sofi@123'),
('0102030412','manuel.herrera@correo.com','manuel@25'),
('0102030413','julia.ortega@correo.com','julia2025'),
('0102030414','pedro.vargas@correo.com','pedro_pass'),
('0102030415','elena.cruz@correo.com','elena#25'),
('0102030416','diego.lopez@correo.com','diego@pass'),
('0102030417','isabel.jimenez@correo.com','isabel123'),
('0102030418','alberto.silva@correo.com','alberto2025'),
('0102030419','clara.torres@correo.com','clara@pass'),
('0102030420','hugo.navarro@correo.com','hugo#25');


INSERT INTO proyecto (id_proyecto, nombre, descripcion, estado) VALUES
(1,'SGR Académico','Gestión de riesgos en proyectos estudiantiles','Activo'),
(2,'Plataforma E-Learning','Sistema de cursos en línea','En Progreso'),
(3,'App Salud','Monitoreo de bienestar físico','Finalizado'),
(4,'Gestión Biblioteca','Digitalización de bibliotecas','Activo'),
(5,'Control Financiero','Software de control de gastos','Inactivo'),
(6,'Sistema Quiz','Evaluaciones académicas en línea','Activo'),
(7,'Inventario UNL','Control de equipos universitarios','En Progreso'),
(8,'Simulación Tráfico','Modelado en Pygame','Activo'),
(9,'Plataforma IoT','Monitoreo de sensores remotos','Inactivo'),
(10,'CRM Estudiantil','Gestión de relaciones con estudiantes','Finalizado'),
(11,'App Tutorías','Conexión de tutores y alumnos','Activo'),
(12,'Control Energía','Sistema de ahorro eléctrico','Activo'),
(13,'Simulador Arena','Procesos industriales en Arena','En Progreso'),
(14,'App Seguridad','Alertas de seguridad en campus','Inactivo'),
(15,'Calendario Académico','Gestión de tareas y trabajos','Activo'),
(16,'Sistema de Pagos','Pagos en línea para matrículas','Activo'),
(17,'Red Social UNL','Comunicación entre estudiantes','En Progreso'),
(18,'Monitor Estrés','Evaluación de estrés académico','Activo'),
(19,'Gestión de Eventos','Organización de eventos UNL','Inactivo'),
(20,'App Transporte','Seguimiento de buses universitarios','Finalizado');


INSERT INTO requisito (id_proyecto, descripcion) VALUES
(1,'Debe gestionar riesgos y categorías'),
(2,'Debe permitir cursos en tiempo real'),
(3,'Control de datos de salud y bienestar'),
(4,'Manejo digital de préstamos de libros'),
(5,'Control financiero con reportes mensuales'),
(6,'Evaluaciones por categorías académicas'),
(7,'Registro y control de inventario universitario'),
(8,'Simulación del tráfico vehicular en tiempo real'),
(9,'Monitoreo de sensores conectados vía IoT'),
(10,'CRM para estudiantes y seguimiento académico'),
(11,'Sistema de tutorías personalizadas'),
(12,'Monitoreo y control del consumo de energía'),
(13,'Simulación de procesos industriales en Arena'),
(14,'Alertas y monitoreo de seguridad en campus'),
(15,'Calendario académico integrado con notificaciones'),
(16,'Pasarela de pagos segura para matrículas'),
(17,'Red social para interacción entre estudiantes'),
(18,'Evaluación continua del estrés académico'),
(19,'Gestión y organización de eventos institucionales'),
(20,'Seguimiento y control de transporte universitario');


INSERT INTO riesgo (id_riesgo,id_proyecto,descripcion,estado,prioridad,categoria) VALUES
(1,1,'Falla en servidor principal','Abierto','Alta','Técnico'),
(2,2,'Fuga de datos de usuarios','Mitigado','Alta','Legal'),
(3,3,'Errores en pagos recurrentes','Abierto','Media','Financiero'),
(4,4,'Falta de mantenimiento en bibliotecas','Cerrado','Baja','Operacional'),
(5,5,'Inestabilidad en control de gastos','Abierto','Alta','Financiero'),
(6,6,'Baja concurrencia de usuarios','Mitigado','Media','Técnico'),
(7,7,'Pérdida de inventario por mala gestión','Abierto','Alta','Operacional'),
(8,8,'Retraso en simulación de tráfico','En Progreso','Baja','Técnico'),
(9,9,'Conexión inestable en sensores IoT','Abierto','Alta','Técnico'),
(10,10,'Fallas en sincronización de CRM','Cerrado','Media','Operacional'),
(11,11,'Falta de tutores disponibles','Abierto','Alta','Operacional'),
(12,12,'Altos costos de energía','Mitigado','Media','Financiero'),
(13,13,'Modelos Arena desactualizados','En Progreso','Baja','Técnico'),
(14,14,'Sistema de alertas no notifica','Cerrado','Alta','Técnico'),
(15,15,'Conflictos de horario en calendario','Abierto','Media','Operacional'),
(16,16,'Falla en pasarela de pagos','Mitigado','Alta','Financiero'),
(17,17,'Problemas de privacidad en red social','Abierto','Alta','Legal'),
(18,18,'Resultados incorrectos en test de estrés','En Progreso','Media','Técnico'),
(19,19,'Falta de difusión en eventos','Abierto','Baja','Operacional'),
(20,20,'Errores en rutas de transporte','Cerrado','Alta','Técnico');


INSERT INTO planRiesgo (id_riesgo,descripcion,estrategia,fecha_implementacion,eficiencia) VALUES
(1,'Respaldo diario de servidor','Implementar backups automáticos','2025-07-05','Alta'),
(2,'Cifrado avanzado de datos','Usar AES-256 en bases de datos','2025-07-06','Muy Alta'),
(3,'Revisión de pasarela de pago','Auditoría mensual','2025-07-07','Media'),
(4,'Programa de mantenimiento','Contratar servicio externo','2025-07-08','Alta'),
(5,'Monitoreo de gastos','Alertas automáticas en dashboard','2025-07-09','Alta'),
(6,'Estrategia de marketing','Campaña para atraer estudiantes','2025-07-10','Media'),
(7,'Control de stock en tiempo real','Instalar sensores RFID','2025-07-11','Muy Alta'),
(8,'Optimización del algoritmo','Reducir carga en simulación','2025-07-12','Alta'),
(9,'Revisión de hardware IoT','Actualizar firmware','2025-07-13','Media'),
(10,'Capacitación de usuarios','Entrenamientos semanales','2025-07-14','Alta'),
(11,'Contratación de tutores extra','Campaña de reclutamiento','2025-07-15','Alta'),
(12,'Instalación de paneles solares','Reducción de consumo eléctrico','2025-07-16','Alta'),
(13,'Actualización de modelos','Implementar última versión Arena','2025-07-17','Alta'),
(14,'Revisión del sistema de alertas','Probar en entornos reales','2025-07-18','Alta'),
(15,'Sincronización con Google Calendar','Integración API','2025-07-19','Media'),
(16,'Migración a pasarela segura','Usar Stripe para pagos','2025-07-20','Muy Alta'),
(17,'Políticas de privacidad reforzadas','Implementar autenticación 2FA','2025-07-21','Alta'),
(18,'Pruebas de estrés continuas','Analizar patrones de respuesta','2025-07-22','Media'),
(19,'Campaña de marketing de eventos','Promoción en redes sociales','2025-07-23','Alta'),
(20,'Revisión de rutas de buses','Optimizar rutas con GPS','2025-07-24','Muy Alta');


INSERT INTO historialRiesgo (id_riesgo,descripcion,descripcion_accion,fecha) VALUES
(1,'Falla crítica detectada','Se aplicó backup de emergencia','2025-07-01'),
(2,'Intento de acceso no autorizado','Se bloquearon las IP sospechosas','2025-07-02'),
(3,'Error en pasarela Stripe','Se reinició el servicio','2025-07-03'),
(4,'Mantenimiento completado','Se renovaron licencias','2025-07-04'),
(5,'Desviación en gastos detectada','Se revisó presupuesto','2025-07-05'),
(6,'Campaña lanzada','Se aumentó tráfico en 20%','2025-07-06'),
(7,'Stock mal contabilizado','Se recalibraron sensores','2025-07-07'),
(8,'Algoritmo optimizado','Se redujo tiempo de simulación','2025-07-08'),
(9,'Conexión IoT inestable','Se reemplazó módulo de red','2025-07-09'),
(10,'Usuarios capacitados','Se mejoró adopción del sistema','2025-07-10'),
(11,'Tutores insuficientes','Se contrataron 3 tutores extra','2025-07-11'),
(12,'Costos energéticos altos','Se instalaron paneles solares','2025-07-12'),
(13,'Modelos desactualizados','Se implementó nueva versión','2025-07-13'),
(14,'Sistema de alertas corregido','Se realizaron pruebas de campo','2025-07-14'),
(15,'Conflictos de horarios','Se integró con Google Calendar','2025-07-15'),
(16,'Falla de pagos recurrente','Se migró a plataforma Stripe','2025-07-16'),
(17,'Privacidad comprometida','Se añadió 2FA obligatorio','2025-07-17'),
(18,'Errores en mediciones de estrés','Se ajustó algoritmo de análisis','2025-07-18'),
(19,'Baja asistencia en eventos','Se creó campaña publicitaria','2025-07-19'),
(20,'Errores en GPS de buses','Se actualizó software de rutas','2025-07-20');




//Obtener los proyectos que tengas un riesgo con categoría Financiero
SELECT DISTINCT p.descripcion FROM proyecto p
JOIN riesgo r ON p.id_proyecto = r.id_proyecto WHERE r.categoria = 'Financiero';

//Mostrar las descripciones de los planes de riesgo cuya eficiencia sea media
SELECT descripcion FROM planRiesgo
WHERE eficiencia = 'Media';

//Listar el id de los proyecto que tengan riesgo de prioridad baja
SELECT DISTINCT p.id_proyecto FROM proyecto p
JOIN riesgo r ON p.id_proyecto = r.id_proyecto WHERE r.prioridad = 'Baja';

//Listar IDs de proyectos sin riesgos con estado Abierto
SELECT id_proyecto FROM proyecto WHERE id_proyecto
NOT IN (SELECT id_proyecto FROM riesgo WHERE estado = 'Abierto');

//Mostrar el id y descripciones de requisitos de proyectos finalizados
SELECT r.id_proyecto, r.descripcion FROM requisito r JOIN proyecto p
ON r.id_proyecto = p.id_proyecto WHERE p.estado = 'Finalizado';

//views
//Obtener los proyectos que tengas un riesgo con categoría Financiero
CREATE VIEW proyectos_financieros AS
SELECT DISTINCT p.descripcion FROM proyecto p
JOIN riesgo r ON p.id_proyecto = r.id_proyecto WHERE r.categoria = 'Financiero';

//Mostrar las descripciones de los planes de riesgo cuya eficiencia sea media
CREATE VIEW planes_riesgo_media AS
SELECT descripcion FROM planRiesgo
WHERE eficiencia = 'Media';

//Listar el id de los proyecto que tengan riesgo de prioridad baja
CREATE VIEW proyectos_prioridad_baja AS
SELECT DISTINCT p.id_proyecto FROM proyecto p
JOIN riesgo r ON p.id_proyecto = r.id_proyecto WHERE r.prioridad = 'Baja';

//Listar IDs de proyectos sin riesgos con estado Abierto
CREATE VIEW proyectos_sin_riesgos_abiertos AS
SELECT id_proyecto FROM proyecto WHERE id_proyecto
NOT IN (SELECT id_proyecto FROM riesgo WHERE estado = 'Abierto');

//Mostrar el id y descripciones de requisitos de proyectos finalizados
CREATE VIEW requisitos_proyectos_finalizados AS
SELECT r.id_proyecto, r.descripcion FROM requisito r JOIN proyecto p
ON r.id_proyecto = p.id_proyecto WHERE p.estado = 'Finalizado';