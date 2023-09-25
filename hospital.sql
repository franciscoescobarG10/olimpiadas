-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 19:09:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id citas` int(8) NOT NULL,
  `fecha/hora` datetime NOT NULL,
  `id del usuario` int(10) NOT NULL,
  `medico` int(10) NOT NULL,
  `motivo` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial clinico`
--

CREATE TABLE `historial clinico` (
  `id historial` int(8) NOT NULL,
  `id usuario` int(8) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `historia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciar sesión`
--

CREATE TABLE `iniciar sesión` (
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `id del usuario` int(10) NOT NULL,
  `Email` text NOT NULL,
  `Movil` text NOT NULL,
  `Contraseña` text NOT NULL,
  `Confirmar contraseña` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin', '$2y$10$oVzaUCqroAQlN8Ss3usLb.4MmOZXzvKOatltGvMt3NC9wbD6riNFO'),
(6, 'USUARIONUEVO', '$2y$10$eF5u5TX976AxN.FuZZqAhebd5tnfaokTrkvoxcM5N.9eZ4/xG2VT6'),
(7, 'ivan', '$2y$10$ZiFTPIyvJNxiZYd4Jw.avuPhc7.jSsh0YBLopq2PANozu5sLmG/96');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id citas`);

--
-- Indices de la tabla `historial clinico`
--
ALTER TABLE `historial clinico`
  ADD PRIMARY KEY (`id historial`);

--
-- Indices de la tabla `iniciar sesión`
--
ALTER TABLE `iniciar sesión`
  ADD PRIMARY KEY (`id del usuario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id citas` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial clinico`
--
ALTER TABLE `historial clinico`
  MODIFY `id historial` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `iniciar sesión`
--
ALTER TABLE `iniciar sesión`
  MODIFY `id del usuario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
