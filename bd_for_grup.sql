-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2021 a las 17:13:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.2.34

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
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `COD_COM` int(11) NOT NULL,
  `TEX_COM` longtext COLLATE utf8_unicode_ci NOT NULL,
  `COD_USU_ENV` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `COD_CUR` int(11) NOT NULL,
  `COD_USU_CRE` smallint(6) NOT NULL,
  `NOM_CUR` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviar_comentario`
--

CREATE TABLE `enviar_comentario` (
  `COD_ENV` int(11) NOT NULL,
  `FEC_ENV` datetime NOT NULL DEFAULT current_timestamp(),
  `COD_COM_ENV` int(11) NOT NULL,
  `COD_CUR_ENV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviar_mensaje`
--

CREATE TABLE `enviar_mensaje` (
  `COD_ENV` int(11) NOT NULL,
  `FEC_ENV` datetime NOT NULL DEFAULT current_timestamp(),
  `COD_USU_REM` smallint(6) NOT NULL,
  `COD_USU_REC` smallint(6) NOT NULL,
  `COD_MEN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `COD_MEN` int(11) NOT NULL,
  `TEX_MEN` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `COD_REG` int(11) NOT NULL,
  `FEC_REG` datetime NOT NULL DEFAULT current_timestamp(),
  `COD_CUR_REG` int(11) NOT NULL,
  `COD_USU_REG` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `COD_USU` smallint(6) NOT NULL,
  `NOM_USU` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `APE_USU` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `COR_USU` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TEL_USU` int(10) NOT NULL,
  `NIC_USU` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `CON_USU` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `ADM_USU` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`COD_COM`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`COD_CUR`);

--
-- Indices de la tabla `enviar_comentario`
--
ALTER TABLE `enviar_comentario`
  ADD PRIMARY KEY (`COD_ENV`);

--
-- Indices de la tabla `enviar_mensaje`
--
ALTER TABLE `enviar_mensaje`
  ADD PRIMARY KEY (`COD_ENV`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`COD_MEN`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`COD_REG`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`COD_USU`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `COD_COM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `COD_CUR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enviar_comentario`
--
ALTER TABLE `enviar_comentario`
  MODIFY `COD_ENV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enviar_mensaje`
--
ALTER TABLE `enviar_mensaje`
  MODIFY `COD_ENV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `COD_MEN` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `COD_REG` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `COD_USU` smallint(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
