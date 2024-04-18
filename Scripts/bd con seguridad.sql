-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 07:02:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
use siu;
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aplicaciones`
--

CREATE TABLE `tbl_aplicaciones` (
  `pk_id_aplicacion` int(11) NOT NULL,
  `nombre_aplicacion` varchar(50) NOT NULL,
  `descripcion_aplicacion` varchar(150) NOT NULL,
  `estado_aplicacion` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignacionesperfilsusuario`
--

CREATE TABLE `tbl_asignacionesperfilsusuario` (
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asignacionmoduloaplicacion`
--

CREATE TABLE `tbl_asignacionmoduloaplicacion` (
  `fk_id_modulos` int(11) NOT NULL,
  `fk_id_aplicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacoradeeventos`
--

CREATE TABLE `tbl_bitacoradeeventos` (
  `pk_id_bitacora` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_aplicacion` int(11) NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time NOT NULL,
  `host_bitacora` varchar(45) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `accion_bitacora` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modulos`
--

CREATE TABLE `tbl_modulos` (
  `pk_id_modulos` int(11) NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL,
  `descripcion_modulo` varchar(150) NOT NULL,
  `estado_modulo` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfiles`
--

CREATE TABLE `tbl_perfiles` (
  `pk_id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(150) NOT NULL,
  `estado_perfil` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisosaplicacionesusuario`
--

CREATE TABLE `tbl_permisosaplicacionesusuario` (
  `fk_id_aplicacion` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT 0,
  `modificar_permiso` tinyint(1) DEFAULT 0,
  `eliminar_permiso` tinyint(1) DEFAULT 0,
  `buscar_permiso` tinyint(1) DEFAULT 0,
  `imprimir_permiso` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisosaplicacionperfil`
--

CREATE TABLE `tbl_permisosaplicacionperfil` (
  `fk_id_perfil` int(11) NOT NULL,
  `fk_id_aplicacion` int(11) NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT 0,
  `modificar_permiso` tinyint(1) DEFAULT 0,
  `eliminar_permiso` tinyint(1) DEFAULT 0,
  `buscar_permiso` tinyint(1) DEFAULT 0,
  `imprimir_permiso` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `pk_id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `username_usuario` varchar(20) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `estado_usuario` tinyint(4) NOT NULL DEFAULT 0,
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_aplicacionusuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_aplicacionusuario` (
`Aplicacion` int(11)
,`ID` int(11)
,`Usuario` varchar(50)
,`Insertar` tinyint(1)
,`Editar` tinyint(1)
,`Eliminar` tinyint(1)
,`Buscar` tinyint(1)
,`Reporte` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_aplicacion_perfil`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_aplicacion_perfil` (
`ID` int(11)
,`Perfil` varchar(50)
,`Aplicacion` int(11)
,`Insertar` tinyint(1)
,`Modificar` tinyint(1)
,`Eliminar` tinyint(1)
,`Buscar` tinyint(1)
,`Reporte` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_modulo_aplicacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_modulo_aplicacion` (
`ID` int(11)
,`Modulo` varchar(50)
,`Aplicacion` int(11)
,`Nombre` varchar(50)
,`Descripcion` varchar(150)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_perfil_usuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_perfil_usuario` (
`ID` int(11)
,`Usuario` varchar(50)
,`nickName` varchar(20)
,`perfil` int(11)
,`Nombre` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_aplicacionusuario`
--
DROP TABLE IF EXISTS `vista_aplicacionusuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_aplicacionusuario`  AS SELECT `b`.`fk_id_aplicacion` AS `Aplicacion`, `b`.`fk_id_usuario` AS `ID`, `a`.`nombre_usuario` AS `Usuario`, `b`.`guardar_permiso` AS `Insertar`, `b`.`modificar_permiso` AS `Editar`, `b`.`eliminar_permiso` AS `Eliminar`, `b`.`buscar_permiso` AS `Buscar`, `b`.`imprimir_permiso` AS `Reporte` FROM (`tbl_permisosaplicacionesusuario` `b` join `tbl_usuarios` `a` on(`a`.`pk_id_usuario` = `b`.`fk_id_usuario`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_aplicacion_perfil`
--
DROP TABLE IF EXISTS `vista_aplicacion_perfil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_aplicacion_perfil`  AS SELECT `b`.`fk_id_perfil` AS `ID`, `a`.`nombre_perfil` AS `Perfil`, `b`.`fk_id_aplicacion` AS `Aplicacion`, `b`.`guardar_permiso` AS `Insertar`, `b`.`modificar_permiso` AS `Modificar`, `b`.`eliminar_permiso` AS `Eliminar`, `b`.`buscar_permiso` AS `Buscar`, `b`.`imprimir_permiso` AS `Reporte` FROM (`tbl_permisosaplicacionperfil` `b` join `tbl_perfiles` `a` on(`a`.`pk_id_perfil` = `b`.`fk_id_perfil`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_modulo_aplicacion`
--
DROP TABLE IF EXISTS `vista_modulo_aplicacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_modulo_aplicacion`  AS SELECT `b`.`fk_id_modulos` AS `ID`, `a`.`nombre_modulo` AS `Modulo`, `b`.`fk_id_aplicacion` AS `Aplicacion`, `c`.`nombre_aplicacion` AS `Nombre`, `c`.`descripcion_aplicacion` AS `Descripcion` FROM ((`tbl_asignacionmoduloaplicacion` `b` join `tbl_modulos` `a` on(`a`.`pk_id_modulos` = `b`.`fk_id_modulos`)) join `tbl_aplicaciones` `c` on(`c`.`pk_id_aplicacion` = `b`.`fk_id_aplicacion`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_perfil_usuario`
--
DROP TABLE IF EXISTS `vista_perfil_usuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_perfil_usuario`  AS SELECT `b`.`fk_id_usuario` AS `ID`, `a`.`nombre_usuario` AS `Usuario`, `a`.`username_usuario` AS `nickName`, `b`.`fk_id_perfil` AS `perfil`, `c`.`nombre_perfil` AS `Nombre` FROM ((`tbl_asignacionesperfilsusuario` `b` join `tbl_usuarios` `a` on(`a`.`pk_id_usuario` = `b`.`fk_id_usuario`)) join `tbl_perfiles` `c` on(`c`.`pk_id_perfil` = `b`.`fk_id_perfil`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_aplicaciones`
--
ALTER TABLE `tbl_aplicaciones`
  ADD PRIMARY KEY (`pk_id_aplicacion`);

--
-- Indices de la tabla `tbl_asignacionesperfilsusuario`
--
ALTER TABLE `tbl_asignacionesperfilsusuario`
  ADD PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil`),
  ADD KEY `fk_id_perfil` (`fk_id_perfil`);

--
-- Indices de la tabla `tbl_asignacionmoduloaplicacion`
--
ALTER TABLE `tbl_asignacionmoduloaplicacion`
  ADD PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion`),
  ADD KEY `fk_id_aplicacion` (`fk_id_aplicacion`);

--
-- Indices de la tabla `tbl_bitacoradeeventos`
--
ALTER TABLE `tbl_bitacoradeeventos`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`),
  ADD KEY `fk_id_aplicacion` (`fk_id_aplicacion`);

--
-- Indices de la tabla `tbl_modulos`
--
ALTER TABLE `tbl_modulos`
  ADD PRIMARY KEY (`pk_id_modulos`);

--
-- Indices de la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indices de la tabla `tbl_permisosaplicacionesusuario`
--
ALTER TABLE `tbl_permisosaplicacionesusuario`
  ADD PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`);

--
-- Indices de la tabla `tbl_permisosaplicacionperfil`
--
ALTER TABLE `tbl_permisosaplicacionperfil`
  ADD PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  ADD KEY `fk_id_aplicacion` (`fk_id_aplicacion`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`pk_id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacoradeeventos`
--
ALTER TABLE `tbl_bitacoradeeventos`
  MODIFY `pk_id_bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_perfiles`
--
ALTER TABLE `tbl_perfiles`
  MODIFY `pk_id_perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `pk_id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_asignacionesperfilsusuario`
--
ALTER TABLE `tbl_asignacionesperfilsusuario`
  ADD CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  ADD CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`);

--
-- Filtros para la tabla `tbl_asignacionmoduloaplicacion`
--
ALTER TABLE `tbl_asignacionmoduloaplicacion`
  ADD CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_1` FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  ADD CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`);

--
-- Filtros para la tabla `tbl_bitacoradeeventos`
--
ALTER TABLE `tbl_bitacoradeeventos`
  ADD CONSTRAINT `tbl_bitacoradeeventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  ADD CONSTRAINT `tbl_bitacoradeeventos_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`);

--
-- Filtros para la tabla `tbl_permisosaplicacionesusuario`
--
ALTER TABLE `tbl_permisosaplicacionesusuario`
  ADD CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  ADD CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`);

--
-- Filtros para la tabla `tbl_permisosaplicacionperfil`
--
ALTER TABLE `tbl_permisosaplicacionperfil`
  ADD CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  ADD CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
