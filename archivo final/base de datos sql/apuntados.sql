-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2024 a las 13:54:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_de_apuntados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuntados`
--

CREATE TABLE `apuntados` (
  `codPersona` int(100) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telefono` varchar(9) NOT NULL,
  `evento_Lunes` tinyint(1) DEFAULT 0,
  `evento_Martes` tinyint(1) DEFAULT 0,
  `evento_Miercoles` tinyint(1) DEFAULT 0,
  `evento_Jueves` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apuntados`
--

INSERT INTO `apuntados` (`codPersona`, `Nombre`, `Apellido`, `Email`, `Telefono`, `evento_Lunes`, `evento_Martes`, `evento_Miercoles`, `evento_Jueves`) VALUES
(1, 'Andoni', 'asgfqwa', 'u@gmail.com', '909090909', 1, 1, 1, 1),
(2, 'Andoni', 'asgfqwa', 'u@gmail.com', '909090909', 1, 1, 1, 1),
(3, 'andoain', 'sala', 'o@gmail.com', '123456789', 0, 0, 0, 1),
(4, 'andoain', 'sala', 'o@gmail.com', '123456789', 0, 0, 0, 1),
(5, 'andoain', 'sala', 'o@gmail.com', '123456789', 0, 0, 1, 0),
(6, 'andoain', 'sala', 'o@gmail.com', '123456789', 0, 0, 0, 1),
(15, '3', 'aver', 'i@gmail.com', '123456789', 1, 1, 0, 1),
(16, '3', 'aver', 'i@gmail.com', '123456789', 1, 1, 1, 1),
(17, 'asis', 'debdi', 'asisdebdi@gmail.com', '231423534', 0, 0, 1, 0),
(18, 'joacin', 'reyes', 'joacorey@gmail.com', '543278661', 1, 1, 0, 0),
(19, 'lucia', 'colins', 'lalu@gmail.com', '731105568', 1, 1, 1, 1),
(20, 'toni', 'boloni', 'bolones@gmail.com', '198845783', 1, 0, 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apuntados`
--
ALTER TABLE `apuntados`
  ADD PRIMARY KEY (`codPersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apuntados`
--
ALTER TABLE `apuntados`
  MODIFY `codPersona` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
