-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2023 a las 17:12:31
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
-- Base de datos: `construccionweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Password` int(15) NOT NULL,
  `Telefono` int(12) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `Tiempo` time(3) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Sexo` varchar(100) NOT NULL,
  `Carrera` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`Nombre`, `Apellido`, `Correo`, `Usuario`, `Password`, `Telefono`, `fechanacimiento`, `Tiempo`, `Pais`, `Ciudad`, `Color`, `Sexo`, `Carrera`) VALUES
('[David]', '[Labrador]', '[labrado@hotmail.com]', '[David293]', 4928234, 0, '0000-00-00', '00:00:00.000', '[Ecuador]', '[Quito]', '[Azul]', '[Hombre]', '[Ingles]'),
('Mariana', 'Cordero', 'cordero@gmail.com', 'Marta3901', 24021413, 321494222, '2004-08-03', '12:18:45.000', 'Colombia', 'Medellin', 'Verde', 'Mujer', 'Comunicacion'),
('Iban', 'Bermudez', 'ibanbermides@hotmail.com', 'ibermud234', 1203932, 12394021, '2005-08-05', '03:20:23.000', 'Peru', 'Lima', 'Rojo', 'No responde', 'Mecatronica'),
('Antonia', 'Vazquez', 'vasquez@gmail.com', 'antoniavasss', 12344324, 32112354, '2006-08-09', '20:12:33.000', 'Ecuador', 'Quito', 'purpura', 'Mujer', 'Informatica'),
('Diego', 'Peinado', 'peinado@gmail.com', 'Diegopein', 2315234, 231455422, '2003-05-05', '16:11:35.000', 'Peru', 'Lima', 'Amarillo', 'Hombre', 'Telecomunicaiones'),
('Martha', 'Mendoza', 'Mataaa@outlook.com', 'menmarth23', 4234123, 33214545, '2005-10-14', '02:18:36.000', 'Colombia', 'Bogota', 'Cian', 'No responde', 'Comunicacion'),
('Alfredo', 'Puerta', 'alfredo@hotmail.com', 'puertalafa2', 32123412, 321345463, '1994-04-19', '17:08:25.000', 'Colombia', 'Bogota', 'blanco', 'Hombre', 'Animacion'),
('Claudia', 'Mosquera', 'Clamoswe@gmail.com', 'clac3021', 21341342, 32134452, '2004-08-25', '21:18:35.000', 'Peru', 'Lima', 'Rojo', 'Mujer', 'Animacion'),
('Imane', 'Simon', 'simone21@gmail.com', 'simonwq22212', 3412123, 12345221, '1995-04-16', '11:58:45.000', 'Ecuador', 'Quito', 'Magenta', 'No responde', 'Cine y television'),
('[David]', '[Labrador]', '[labrado@hotmail.com]', '[David293]', 4928234, 0, '0000-00-00', '00:00:00.000', '[Ecuador]', '[Quito]', '[Azul]', '[Hombre]', '[Ingles]'),
('Mariana', 'Cordero', 'cordero@gmail.com', 'Marta3901', 24021413, 321494222, '2004-08-03', '12:18:45.000', 'Colombia', 'Medellin', 'Verde', 'Mujer', 'Comunicacion'),
('Iban', 'Bermudez', 'ibanbermides@hotmail.com', 'ibermud234', 1203932, 12394021, '2005-08-05', '03:20:23.000', 'Peru', 'Lima', 'Rojo', 'No responde', 'Mecatronica'),
('Antonia', 'Vazquez', 'vasquez@gmail.com', 'antoniavasss', 12344324, 32112354, '2006-08-09', '20:12:33.000', 'Ecuador', 'Quito', 'purpura', 'Mujer', 'Informatica'),
('Diego', 'Peinado', 'peinado@gmail.com', 'Diegopein', 2315234, 231455422, '2003-05-05', '16:11:35.000', 'Peru', 'Lima', 'Amarillo', 'Hombre', 'Telecomunicaiones'),
('Martha', 'Mendoza', 'Mataaa@outlook.com', 'menmarth23', 4234123, 33214545, '2005-10-14', '02:18:36.000', 'Colombia', 'Bogota', 'Cian', 'No responde', 'Comunicacion'),
('Alfredo', 'Puerta', 'alfredo@hotmail.com', 'puertalafa2', 32123412, 321345463, '1994-04-19', '17:08:25.000', 'Colombia', 'Bogota', 'blanco', 'Hombre', 'Animacion'),
('Claudia', 'Mosquera', 'Clamoswe@gmail.com', 'clac3021', 21341342, 32134452, '2004-08-25', '21:18:35.000', 'Peru', 'Lima', 'Rojo', 'Mujer', 'Animacion'),
('Imane', 'Simon', 'simone21@gmail.com', 'simonwq22212', 3412123, 12345221, '1995-04-16', '11:58:45.000', 'Ecuador', 'Quito', 'Magenta', 'No responde', 'Cine y television'),
('Samuel', '@Buendia', 'samuel.buendiab@uniagustiniana.edu.co', 'samuelb', 2314342, 2147483647, '2004-09-05', '23:09:00.000', 'Colombia', 'Bogota', 'Azul', 'Masculino', 'Tecnologia de software'),
('Juan', '@Hernandes', 'Juan@gmail.com', 'Juanherrr', 40328914, 203948201, '2006-02-05', '15:30:00.000', 'Peru', 'Lima', 'Negro', 'Masculino', 'Arquitectura'),
('Pedro', '@Gomez', 'pedrogom@gmail.com', 'pedrogoms', 34123, 301928423, '2007-02-08', '20:44:00.000', 'Ecuador', 'quito', 'Negro', 'Masculino', 'Matematicas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
