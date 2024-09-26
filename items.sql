-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2023 a las 17:49:03
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

create database tienda;

CREATE TABLE `items` (
  `id_prod` int(3) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` int(3) DEFAULT NULL,
  `disponi` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `items`
--


INSERT INTO `items` (`id_prod`, `nombre`, `descripcion`, `precio`, `descuento`, `disponi`) VALUES
(2, 'Televisor Sony', 'Televisor marca sony 4k Smart Tv', 1600000.00, 15, 1),
(3, 'Ps vita', 'Consola de videojuegos Ps vita Perfecta para Pequeñas sesiones dejuego', 500000.00, 0, 1),
(4, 'PSP', 'Consola Retro Psp para coleccion', 300000.00, 10, 1),
(5, 'Telefono Samsung', 'Telefono Samsung s10+ Perfecto para tareas cotidianas', 800000.00, 20, 1),
(6, 'Portatil Asus', 'Portatil asus perfecto para offina o trabajos en casa', 1300000.00, 0, 1),
(7, 'Portatil Gigabyte', 'Portatil Gamer gigabyte perfecto para jugar videojuegos o trabajo pesados', 2200000.00, 5, 1),
(8, 'Samsung Tv', 'Televisor smart Tv samsung para el consumo audiovisual', 1600000.00, 0, 1),
(9, 'Iphone 14', 'Lo ultimo en tecnología de Apple perfecto para la toma de fotos y actividades diarias', 2500000.00, 5, 1),
(10, 'Monitor Msi 24', ' Monitor msi de 24 pulgadas ideal para juegos o trabajo comun', 600000.00, 0, 1),
(11, 'Camara Nikon', 'Camara Profesional Dls para trabajo o para ellos que quieren la mejor calidad en momentos importante', 950000.00, 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id_prod` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
