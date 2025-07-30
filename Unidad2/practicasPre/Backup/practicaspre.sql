-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2025 a las 11:55:08
-- Versión del servidor: 10.5.29-MariaDB-log
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicaspre`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id_cuenta` int(11) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id_cuenta`, `cedula`, `gmail`, `contrasena`) VALUES
(1, '0102030401', 'ana.martinez@correo.com', 'ana#2025'),
(2, '0102030402', 'luis.gomez@correo.com', 'luis@123'),
(3, '0102030403', 'camila.rodri@correo.com', 'cami@2025'),
(4, '0102030404', 'lucia.fernandez@correo.com', 'lucia2025'),
(5, '0102030405', 'javierp@correo.com', 'javi$pass'),
(6, '0102030406', 'marta.diaz@correo.com', 'marta@diaz'),
(7, '0102030407', 'david.sanchez@correo.com', 'david2025'),
(8, '0102030408', 'laura.ramirez@correo.com', 'laura@pass'),
(9, '0102030409', 'andres.castillo@correo.com', 'andres!pass'),
(10, '0102030410', 'paula.morales@correo.com', 'paula_2025'),
(11, '0102030411', 'sofia.rojas@correo.com', 'sofi@123'),
(12, '0102030412', 'manuel.herrera@correo.com', 'manuel@25'),
(13, '0102030413', 'julia.ortega@correo.com', 'julia2025'),
(14, '0102030414', 'pedro.vargas@correo.com', 'pedro_pass'),
(15, '0102030415', 'elena.cruz@correo.com', 'elena#25'),
(16, '0102030416', 'diego.lopez@correo.com', 'diego@pass'),
(17, '0102030417', 'isabel.jimenez@correo.com', 'isabel123'),
(18, '0102030418', 'alberto.silva@correo.com', 'alberto2025'),
(19, '0102030419', 'clara.torres@correo.com', 'clara@pass'),
(20, '0102030420', 'hugo.navarro@correo.com', 'hugo#25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialriesgo`
--

CREATE TABLE `historialriesgo` (
  `id_historial` int(11) NOT NULL,
  `id_riesgo` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `descripcion_accion` varchar(200) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historialriesgo`
--

INSERT INTO `historialriesgo` (`id_historial`, `id_riesgo`, `descripcion`, `descripcion_accion`, `fecha`) VALUES
(1, 1, 'Falla crítica detectada', 'Se aplicó backup de emergencia', '2025-07-01'),
(2, 2, 'Intento de acceso no autorizado', 'Se bloquearon las IP sospechosas', '2025-07-02'),
(3, 3, 'Error en pasarela Stripe', 'Se reinició el servicio', '2025-07-03'),
(4, 4, 'Mantenimiento completado', 'Se renovaron licencias', '2025-07-04'),
(5, 5, 'Desviación en gastos detectada', 'Se revisó presupuesto', '2025-07-05'),
(6, 6, 'Campaña lanzada', 'Se aumentó tráfico en 20%', '2025-07-06'),
(7, 7, 'Stock mal contabilizado', 'Se recalibraron sensores', '2025-07-07'),
(8, 8, 'Algoritmo optimizado', 'Se redujo tiempo de simulación', '2025-07-08'),
(9, 9, 'Conexión IoT inestable', 'Se reemplazó módulo de red', '2025-07-09'),
(10, 10, 'Usuarios capacitados', 'Se mejoró adopción del sistema', '2025-07-10'),
(11, 11, 'Tutores insuficientes', 'Se contrataron 3 tutores extra', '2025-07-11'),
(12, 12, 'Costos energéticos altos', 'Se instalaron paneles solares', '2025-07-12'),
(13, 13, 'Modelos desactualizados', 'Se implementó nueva versión', '2025-07-13'),
(14, 14, 'Sistema de alertas corregido', 'Se realizaron pruebas de campo', '2025-07-14'),
(15, 15, 'Conflictos de horarios', 'Se integró con Google Calendar', '2025-07-15'),
(16, 16, 'Falla de pagos recurrente', 'Se migró a plataforma Stripe', '2025-07-16'),
(17, 17, 'Privacidad comprometida', 'Se añadió 2FA obligatorio', '2025-07-17'),
(18, 18, 'Errores en mediciones de estrés', 'Se ajustó algoritmo de análisis', '2025-07-18'),
(19, 19, 'Baja asistencia en eventos', 'Se creó campaña publicitaria', '2025-07-19'),
(20, 20, 'Errores en GPS de buses', 'Se actualizó software de rutas', '2025-07-20');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `planes_riesgo_media`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `planes_riesgo_media` (
`descripcion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgo`
--

CREATE TABLE `planriesgo` (
  `id_plan` int(11) NOT NULL,
  `id_riesgo` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estrategia` varchar(200) NOT NULL,
  `fecha_implementacion` date NOT NULL,
  `eficiencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planriesgo`
--

INSERT INTO `planriesgo` (`id_plan`, `id_riesgo`, `descripcion`, `estrategia`, `fecha_implementacion`, `eficiencia`) VALUES
(1, 1, 'Respaldo diario de servidor', 'Implementar backups automáticos', '2025-07-05', 'Alta'),
(2, 2, 'Cifrado avanzado de datos', 'Usar AES-256 en bases de datos', '2025-07-06', 'Muy Alta'),
(3, 3, 'Revisión de pasarela de pago', 'Auditoría mensual', '2025-07-07', 'Media'),
(4, 4, 'Programa de mantenimiento', 'Contratar servicio externo', '2025-07-08', 'Alta'),
(5, 5, 'Monitoreo de gastos', 'Alertas automáticas en dashboard', '2025-07-09', 'Alta'),
(6, 6, 'Estrategia de marketing', 'Campaña para atraer estudiantes', '2025-07-10', 'Media'),
(7, 7, 'Control de stock en tiempo real', 'Instalar sensores RFID', '2025-07-11', 'Muy Alta'),
(8, 8, 'Optimización del algoritmo', 'Reducir carga en simulación', '2025-07-12', 'Alta'),
(9, 9, 'Revisión de hardware IoT', 'Actualizar firmware', '2025-07-13', 'Media'),
(10, 10, 'Capacitación de usuarios', 'Entrenamientos semanales', '2025-07-14', 'Alta'),
(11, 11, 'Contratación de tutores extra', 'Campaña de reclutamiento', '2025-07-15', 'Alta'),
(12, 12, 'Instalación de paneles solares', 'Reducción de consumo eléctrico', '2025-07-16', 'Alta'),
(13, 13, 'Actualización de modelos', 'Implementar última versión Arena', '2025-07-17', 'Alta'),
(14, 14, 'Revisión del sistema de alertas', 'Probar en entornos reales', '2025-07-18', 'Alta'),
(15, 15, 'Sincronización con Google Calendar', 'Integración API', '2025-07-19', 'Media'),
(16, 16, 'Migración a pasarela segura', 'Usar Stripe para pagos', '2025-07-20', 'Muy Alta'),
(17, 17, 'Políticas de privacidad reforzadas', 'Implementar autenticación 2FA', '2025-07-21', 'Alta'),
(18, 18, 'Pruebas de estrés continuas', 'Analizar patrones de respuesta', '2025-07-22', 'Media'),
(19, 19, 'Campaña de marketing de eventos', 'Promoción en redes sociales', '2025-07-23', 'Alta'),
(20, 20, 'Revisión de rutas de buses', 'Optimizar rutas con GPS', '2025-07-24', 'Muy Alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'SGR Académico', 'Gestión de riesgos en proyectos estudiantiles', 'Activo'),
(2, 'Plataforma E-Learning', 'Sistema de cursos en línea', 'En Progreso'),
(3, 'App Salud', 'Monitoreo de bienestar físico', 'Finalizado'),
(4, 'Gestión Biblioteca', 'Digitalización de bibliotecas', 'Activo'),
(5, 'Control Financiero', 'Software de control de gastos', 'Inactivo'),
(6, 'Sistema Quiz', 'Evaluaciones académicas en línea', 'Activo'),
(7, 'Inventario UNL', 'Control de equipos universitarios', 'En Progreso'),
(8, 'Simulación Tráfico', 'Modelado en Pygame', 'Activo'),
(9, 'Plataforma IoT', 'Monitoreo de sensores remotos', 'Inactivo'),
(10, 'CRM Estudiantil', 'Gestión de relaciones con estudiantes', 'Finalizado'),
(11, 'App Tutorías', 'Conexión de tutores y alumnos', 'Activo'),
(12, 'Control Energía', 'Sistema de ahorro eléctrico', 'Activo'),
(13, 'Simulador Arena', 'Procesos industriales en Arena', 'En Progreso'),
(14, 'App Seguridad', 'Alertas de seguridad en campus', 'Inactivo'),
(15, 'Calendario Académico', 'Gestión de tareas y trabajos', 'Activo'),
(16, 'Sistema de Pagos', 'Pagos en línea para matrículas', 'Activo'),
(17, 'Red Social UNL', 'Comunicación entre estudiantes', 'En Progreso'),
(18, 'Monitor Estrés', 'Evaluación de estrés académico', 'Activo'),
(19, 'Gestión de Eventos', 'Organización de eventos UNL', 'Inactivo'),
(20, 'App Transporte', 'Seguimiento de buses universitarios', 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `proyectos_prioridad_baja`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `proyectos_prioridad_baja` (
`id_proyecto` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `proyectos_sin_riesgos_abiertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `proyectos_sin_riesgos_abiertos` (
`id_proyecto` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisito`
--

CREATE TABLE `requisito` (
  `id_requisito` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `requisito`
--

INSERT INTO `requisito` (`id_requisito`, `id_proyecto`, `descripcion`) VALUES
(1, 1, 'Debe gestionar riesgos y categorías'),
(2, 2, 'Debe permitir cursos en tiempo real'),
(3, 3, 'Control de datos de salud y bienestar'),
(4, 4, 'Manejo digital de préstamos de libros'),
(5, 5, 'Control financiero con reportes mensuales'),
(6, 6, 'Evaluaciones por categorías académicas'),
(7, 7, 'Registro y control de inventario universitario'),
(8, 8, 'Simulación del tráfico vehicular en tiempo real'),
(9, 9, 'Monitoreo de sensores conectados vía IoT'),
(10, 10, 'CRM para estudiantes y seguimiento académico'),
(11, 11, 'Sistema de tutorías personalizadas'),
(12, 12, 'Monitoreo y control del consumo de energía'),
(13, 13, 'Simulación de procesos industriales en Arena'),
(14, 14, 'Alertas y monitoreo de seguridad en campus'),
(15, 15, 'Calendario académico integrado con notificaciones'),
(16, 16, 'Pasarela de pagos segura para matrículas'),
(17, 17, 'Red social para interacción entre estudiantes'),
(18, 18, 'Evaluación continua del estrés académico'),
(19, 19, 'Gestión y organización de eventos institucionales'),
(20, 20, 'Seguimiento y control de transporte universitario');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `requisitos_proyectos_finalizados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `requisitos_proyectos_finalizados` (
`id_proyecto` int(11)
,`descripcion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riesgo`
--

CREATE TABLE `riesgo` (
  `id_riesgo` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `prioridad` varchar(20) NOT NULL,
  `categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `riesgo`
--

INSERT INTO `riesgo` (`id_riesgo`, `id_proyecto`, `descripcion`, `estado`, `prioridad`, `categoria`) VALUES
(1, 1, 'Falla en servidor principal', 'Abierto', 'Alta', 'Técnico'),
(2, 2, 'Fuga de datos de usuarios', 'Mitigado', 'Alta', 'Legal'),
(3, 3, 'Errores en pagos recurrentes', 'Abierto', 'Media', 'Financiero'),
(4, 4, 'Falta de mantenimiento en bibliotecas', 'Cerrado', 'Baja', 'Operacional'),
(5, 5, 'Inestabilidad en control de gastos', 'Abierto', 'Alta', 'Financiero'),
(6, 6, 'Baja concurrencia de usuarios', 'Mitigado', 'Media', 'Técnico'),
(7, 7, 'Pérdida de inventario por mala gestión', 'Abierto', 'Alta', 'Operacional'),
(8, 8, 'Retraso en simulación de tráfico', 'En Progreso', 'Baja', 'Técnico'),
(9, 9, 'Conexión inestable en sensores IoT', 'Abierto', 'Alta', 'Técnico'),
(10, 10, 'Fallas en sincronización de CRM', 'Cerrado', 'Media', 'Operacional'),
(11, 11, 'Falta de tutores disponibles', 'Abierto', 'Alta', 'Operacional'),
(12, 12, 'Altos costos de energía', 'Mitigado', 'Media', 'Financiero'),
(13, 13, 'Modelos Arena desactualizados', 'En Progreso', 'Baja', 'Técnico'),
(14, 14, 'Sistema de alertas no notifica', 'Cerrado', 'Alta', 'Técnico'),
(15, 15, 'Conflictos de horario en calendario', 'Abierto', 'Media', 'Operacional'),
(16, 16, 'Falla en pasarela de pagos', 'Mitigado', 'Alta', 'Financiero'),
(17, 17, 'Problemas de privacidad en red social', 'Abierto', 'Alta', 'Legal'),
(18, 18, 'Resultados incorrectos en test de estrés', 'En Progreso', 'Media', 'Técnico'),
(19, 19, 'Falta de difusión en eventos', 'Abierto', 'Baja', 'Operacional'),
(20, 20, 'Errores en rutas de transporte', 'Cerrado', 'Alta', 'Técnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cedula`, `nombre`, `apellido`) VALUES
('0102030401', 'Ana', 'Martínez'),
('0102030402', 'Luis', 'Gómez'),
('0102030403', 'Camila', 'Rodríguez'),
('0102030404', 'Lucía', 'Fernández'),
('0102030405', 'Javier', 'Pérez'),
('0102030406', 'Marta', 'Díaz'),
('0102030407', 'David', 'Sánchez'),
('0102030408', 'Laura', 'Ramírez'),
('0102030409', 'Andrés', 'Castillo'),
('0102030410', 'Paula', 'Morales'),
('0102030411', 'Sofía', 'Rojas'),
('0102030412', 'Manuel', 'Herrera'),
('0102030413', 'Julia', 'Ortega'),
('0102030414', 'Pedro', 'Vargas'),
('0102030415', 'Elena', 'Cruz'),
('0102030416', 'Diego', 'López'),
('0102030417', 'Isabel', 'Jiménez'),
('0102030418', 'Alberto', 'Silva'),
('0102030419', 'Clara', 'Torres'),
('0102030420', 'Hugo', 'Navarro');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_proyectos_financieros`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_proyectos_financieros` (
`descripcion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `planes_riesgo_media`
--
DROP TABLE IF EXISTS `planes_riesgo_media`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `planes_riesgo_media`  AS SELECT `planriesgo`.`descripcion` AS `descripcion` FROM `planriesgo` WHERE `planriesgo`.`eficiencia` = 'Media' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `proyectos_prioridad_baja`
--
DROP TABLE IF EXISTS `proyectos_prioridad_baja`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyectos_prioridad_baja`  AS SELECT DISTINCT `p`.`id_proyecto` AS `id_proyecto` FROM (`proyecto` `p` join `riesgo` `r` on(`p`.`id_proyecto` = `r`.`id_proyecto`)) WHERE `r`.`prioridad` = 'Baja' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `proyectos_sin_riesgos_abiertos`
--
DROP TABLE IF EXISTS `proyectos_sin_riesgos_abiertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyectos_sin_riesgos_abiertos`  AS SELECT `proyecto`.`id_proyecto` AS `id_proyecto` FROM `proyecto` WHERE !(`proyecto`.`id_proyecto` in (select `riesgo`.`id_proyecto` from `riesgo` where `riesgo`.`estado` = 'Abierto')) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `requisitos_proyectos_finalizados`
--
DROP TABLE IF EXISTS `requisitos_proyectos_finalizados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `requisitos_proyectos_finalizados`  AS SELECT `r`.`id_proyecto` AS `id_proyecto`, `r`.`descripcion` AS `descripcion` FROM (`requisito` `r` join `proyecto` `p` on(`r`.`id_proyecto` = `p`.`id_proyecto`)) WHERE `p`.`estado` = 'Finalizado' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_proyectos_financieros`
--
DROP TABLE IF EXISTS `vista_proyectos_financieros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_proyectos_financieros`  AS SELECT DISTINCT `p`.`descripcion` AS `descripcion` FROM (`proyecto` `p` join `riesgo` `r` on(`p`.`id_proyecto` = `r`.`id_proyecto`)) WHERE `r`.`categoria` = 'Financiero' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id_cuenta`),
  ADD KEY `cedula` (`cedula`);

--
-- Indices de la tabla `historialriesgo`
--
ALTER TABLE `historialriesgo`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_riesgo` (`id_riesgo`);

--
-- Indices de la tabla `planriesgo`
--
ALTER TABLE `planriesgo`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_riesgo` (`id_riesgo`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `requisito`
--
ALTER TABLE `requisito`
  ADD PRIMARY KEY (`id_requisito`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `riesgo`
--
ALTER TABLE `riesgo`
  ADD PRIMARY KEY (`id_riesgo`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `historialriesgo`
--
ALTER TABLE `historialriesgo`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `planriesgo`
--
ALTER TABLE `planriesgo`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `requisito`
--
ALTER TABLE `requisito`
  MODIFY `id_requisito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `riesgo`
--
ALTER TABLE `riesgo`
  MODIFY `id_riesgo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `usuario` (`cedula`);

--
-- Filtros para la tabla `historialriesgo`
--
ALTER TABLE `historialriesgo`
  ADD CONSTRAINT `historialriesgo_ibfk_1` FOREIGN KEY (`id_riesgo`) REFERENCES `riesgo` (`id_riesgo`);

--
-- Filtros para la tabla `planriesgo`
--
ALTER TABLE `planriesgo`
  ADD CONSTRAINT `planriesgo_ibfk_1` FOREIGN KEY (`id_riesgo`) REFERENCES `riesgo` (`id_riesgo`);

--
-- Filtros para la tabla `requisito`
--
ALTER TABLE `requisito`
  ADD CONSTRAINT `requisito_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`);

--
-- Filtros para la tabla `riesgo`
--
ALTER TABLE `riesgo`
  ADD CONSTRAINT `riesgo_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
