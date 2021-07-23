-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2021 a las 03:28:29
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_for_grup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID_CUR` int(11) NOT NULL,
  `NOM_CUR` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DES_CUR` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CED_USU_CREA` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID_CUR`, `NOM_CUR`, `DES_CUR`, `CED_USU_CREA`) VALUES
(1, 'POO', 'EN ESTE CURSO SE EMPEZARA A REALIZAR PROGRAMACION ORIENTADA A OBJETOS, ESTA NOS AYUDA A TENER UNA FUNCIONALIDAD MAS FLEXIBLE EN NUESTROS PROGRAMAS.\r\nTIENE VARIAS VENTAJAS AL PROGRAMAR DE ESTA FORMA, EMPEZAREMOS ANALIZANDO ESTE CURSO DESDE SUS CUATRO PILARES FUNDAMENTALES:\r\n1.- ABSTRACCION\r\n2.- ENCAPSULAMIENTO\r\n3.- HERENCIA\r\n4.- POLIMORFISMO', '1234567890'),
(2, 'BD', 'EN EL CURSO DE BASE DE DATOS SE ENCEÑARAN LAS BASES PARA PODER CREAR UNA BASE DE DATOS QUE CUMPLA CON LA 3RA FORMA NORMAL DE LA MISMA, SE EMPEZARA DESDE LA INSTALACION DE UNA BASE DE DATOS EN ORACLE, Y SE IMLPMENETARAN LOS SISTEMAS TANTO EN ORACLE COMO EN ACCES (\"QUE PERMITE TENER UNA INTERFAZ MAS AGRADABLE A LA VISTA DE LOS USUARIOS\") ESTO CON EL FIN DE TENER UNA MEJOR INTERACCION CON LOS ALUMNOS.', '0123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_curso`
--

CREATE TABLE `detalle_curso` (
  `CED_USU_PER` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ID_CUR_PER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_curso`
--

INSERT INTO `detalle_curso` (`CED_USU_PER`, `ID_CUR_PER`) VALUES
('9876543210', 1),
('0123456789', 2),
('1234567890', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_publicacion`
--

CREATE TABLE `detalle_publicacion` (
  `ID_DET_PUB` int(11) NOT NULL,
  `ID_PUB_PER` int(11) NOT NULL,
  `CED_USU_PUB` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DET_PUB` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_publicacion`
--

INSERT INTO `detalle_publicacion` (`ID_DET_PUB`, `ID_PUB_PER`, `CED_USU_PUB`, `DET_PUB`) VALUES
(1, 2, '0123456789', 'RESPUESTA DEL USUARIO 1 HACIA UNA PUBLICACION QUE REALIZO EL ADMINISTRADOR\r\nESTA SECCION SE UTILIZA PARA RESPONDER A LAS PUBLICACIONES DE LOS USUARIOS'),
(2, 1, '1234567890', 'RESPUESTA DEL USUARIO ADMINISTRADOR HACIA EL USUARIO 2 QUE REALIZO UNA PUBLICACION, ESTE ESPACIO SE UTILIZA PARA RESPONDER LAS PUBLICACIONES QUE REALIZAN LOS USUARIOS ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `ID_MEN` int(11) NOT NULL,
  `CED_USU_ENV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CED_USU_REC` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DET_MEN` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `ID_PUB` int(11) NOT NULL,
  `CED_USU_PUB` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IMG_PUB` longblob DEFAULT NULL,
  `DES_PUB` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`ID_PUB`, `CED_USU_PUB`, `IMG_PUB`, `DES_PUB`) VALUES
(1, '9876543210', NULL, 'ESTO ES UN EJEMPLO DE PUBLICACION REALIZADA POR EL USUARIO 2\r\n-ITEMS A TRATAR\r\n-PUNTOS IMPORTANTES\r\n(\"CARACTERES ESPECIALES\")'),
(2, '1234567890', NULL, 'ESTO ES UNA PUBLICACION REALIZADA POR EL USUARIO ADMINISTRADOR\r\n-USUARIO: ADMI\r\n-CONTRASEÑA: ADMI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CED_USU` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NOM_USU` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `APE_USU` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `FEC_NAC` date NOT NULL,
  `FOT_USU` longblob DEFAULT NULL,
  `NIC_USU` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CONT_USU` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CED_USU`, `NOM_USU`, `APE_USU`, `FEC_NAC`, `FOT_USU`, `NIC_USU`, `CONT_USU`) VALUES
('0123456789', 'USU', 'USU', '1997-07-01', NULL, 'USU', 'USU'),
('1234567890', 'ADMIN', 'ADMIN', '1997-08-11', NULL, 'ADMIN', 'ADMIN'),
('9876543210', 'USUARIO2', 'USUARIO2', '1991-07-09', NULL, 'USU2', 'USU2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID_CUR`),
  ADD KEY `CED_USU_CREA` (`CED_USU_CREA`);

--
-- Indices de la tabla `detalle_curso`
--
ALTER TABLE `detalle_curso`
  ADD KEY `CED_USU_PER` (`CED_USU_PER`),
  ADD KEY `ID_CUR_PER` (`ID_CUR_PER`);

--
-- Indices de la tabla `detalle_publicacion`
--
ALTER TABLE `detalle_publicacion`
  ADD PRIMARY KEY (`ID_DET_PUB`),
  ADD KEY `CED_USU_PUB` (`CED_USU_PUB`),
  ADD KEY `ID_PUB_PER` (`ID_PUB_PER`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`ID_MEN`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`ID_PUB`),
  ADD KEY `CED_USU_PUB` (`CED_USU_PUB`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CED_USU`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `ID_CUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_publicacion`
--
ALTER TABLE `detalle_publicacion`
  MODIFY `ID_DET_PUB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `ID_MEN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `ID_PUB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`CED_USU_CREA`) REFERENCES `usuario` (`CED_USU`);

--
-- Filtros para la tabla `detalle_curso`
--
ALTER TABLE `detalle_curso`
  ADD CONSTRAINT `detalle_curso_ibfk_1` FOREIGN KEY (`CED_USU_PER`) REFERENCES `usuario` (`CED_USU`),
  ADD CONSTRAINT `detalle_curso_ibfk_2` FOREIGN KEY (`ID_CUR_PER`) REFERENCES `curso` (`ID_CUR`);

--
-- Filtros para la tabla `detalle_publicacion`
--
ALTER TABLE `detalle_publicacion`
  ADD CONSTRAINT `detalle_publicacion_ibfk_1` FOREIGN KEY (`CED_USU_PUB`) REFERENCES `usuario` (`CED_USU`),
  ADD CONSTRAINT `detalle_publicacion_ibfk_2` FOREIGN KEY (`ID_PUB_PER`) REFERENCES `publicacion` (`ID_PUB`);

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`CED_USU_PUB`) REFERENCES `usuario` (`CED_USU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
