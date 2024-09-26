-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2023 a las 17:46:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `Inst` int(11) NOT NULL,
  `costos` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `inves` int(11) NOT NULL,
  `otros` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`Inst`, `costos`, `ventas`, `inves`, `otros`, `fecha`) VALUES
(1000, 500, 15000, 2000, 300, '2013-08-13'),
(1500, 600, 17000, 2200, 200, '2014-12-26'),
(1900, 600, 20000, 2800, 500, '2015-08-19'),
(2100, 700, 25000, 3000, 400, '2016-01-22'),
(3000, 1000, 45000, 4000, 800, '2017-01-18'),
(3200, 2000, 50000, 4300, 1000, '2018-11-14'),
(3700, 2500, 5000, 2800, 10000, '2019-09-24'),
(3000, 2000, 8000, 2300, 900, '2020-11-20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
