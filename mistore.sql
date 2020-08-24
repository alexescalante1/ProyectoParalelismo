-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 04:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mistore`
--
CREATE DATABASE IF NOT EXISTS `mistore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mistore`;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'Ropa', 'ropa', '2020-08-24 01:47:38'),
(2, 'Calzado', 'calzado', '2020-08-24 01:47:45'),
(3, 'Accesorios', 'accesorios', '2020-08-24 01:47:52'),
(4, 'Electrónica', 'tecnologia', '2020-08-24 01:48:04'),
(5, 'Juguetes', 'cursos', '2020-08-24 01:48:12'),
(6, 'Deporte', 'deporte', '2020-08-24 01:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', 'rgb(238, 165, 7)', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\"\r\n	}, {\r\n		\"red\": \"fa-youtube\",\r\n		\"estilo\": \"youtubeBlanco\",\r\n		\"url\": \"http://youtube.com/\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/\"\r\n	},{\r\n		\"red\": \"fa-google-plus\",\r\n		\"estilo\": \"googleBlanco\",\r\n		\"url\": \"http://google.com/\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\"\r\n	}\r\n\r\n]', '2020-08-24 01:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Ropa para dama', 1, 'ropa-para-dama', '0000-00-00 00:00:00'),
(2, 'Ropa para hombre', 1, 'ropa-para-hombre', '0000-00-00 00:00:00'),
(3, 'Ropa deportiva', 1, 'ropa-deportiva', '0000-00-00 00:00:00'),
(4, 'Ropa infantil', 1, 'ropa-infantil', '0000-00-00 00:00:00'),
(5, 'Calzado para dama', 2, 'calzado-para-dama', '0000-00-00 00:00:00'),
(6, 'Calzado para hombre', 2, 'calzado-para-hombre', '0000-00-00 00:00:00'),
(7, 'Calzado deportivo', 2, 'calzado-deportivo', '0000-00-00 00:00:00'),
(8, 'Calzado infantil', 2, 'calzado-infantil', '0000-00-00 00:00:00'),
(9, 'Bolsos', 3, 'bolsos', '0000-00-00 00:00:00'),
(10, 'Relojes', 3, 'relojes', '0000-00-00 00:00:00'),
(11, 'Pulseras', 3, 'pulseras', '0000-00-00 00:00:00'),
(12, 'Collares', 3, 'collares', '0000-00-00 00:00:00'),
(13, 'Gafas de sol', 3, 'gafas-de-sol', '0000-00-00 00:00:00'),
(14, 'Teléfonos Móvil', 4, 'telefonos-movil', '2020-08-23 15:49:56'),
(15, 'Tabletas Electrónicas', 4, 'tabletas-electronicas', '2020-08-23 15:50:02'),
(16, 'Computadoras', 4, 'computadoras', '0000-00-00 00:00:00'),
(17, 'Auriculares', 4, 'auriculares', '0000-00-00 00:00:00'),
(18, 'Colección', 5, 'coleccion', '2020-08-24 01:53:26'),
(19, 'Juegos de Mesa', 5, 'juegos-de-mesa', '2020-08-24 01:53:41'),
(20, 'Figuras de Acción', 5, 'figuras-accion', '2020-08-24 01:53:51'),
(21, 'Para Exterior', 5, 'exterior', '2020-08-24 01:54:00'),
(22, 'Natación', 6, 'natacion', '2020-08-24 01:54:50'),
(23, 'Ciclismo', 6, 'ciclismo', '2020-08-24 01:57:07'),
(24, 'Pesca', 6, 'pesca', '2020-08-24 01:57:19'),
(25, 'Moda Deportiva', 6, 'moda-deportiva', '2020-08-24 01:57:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
