-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2023 a las 02:54:07
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
-- Base de datos: `mydb2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers`
--

CREATE TABLE `subscribers` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `interests` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subscribers`
--

INSERT INTO `subscribers` (`name`, `email`, `age`, `interests`) VALUES
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('Eduardo', 'ubbububu@gmail.com', 23, 'soccer and basket'),
('Eduardo', 'ubbububu@gmail.com', 23, 'soccer and basket'),
('Daniela ', 'ubbububu@gmail.com', 33, 'i like to practice many sports and love music as well'),
('Kevin Sempertegui', 'kevin_lol52@hotmail.', 23, 'soccer and basket'),
('victor', 'jeuj@outlook.com', 23, 'soccer and basket');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
