-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 04:46 AM
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
(4, 'Tecnologia', 'tecnologia', '2020-10-04 23:06:48'),
(5, 'Juguetes', 'juguetes', '2020-10-04 23:07:22'),
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
(1, '#000000', 'rgb(0, 0, 0)', 'rgb(0, 0, 0)', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\"\r\n	}, {\r\n		\"red\": \"fa-youtube\",\r\n		\"estilo\": \"youtubeBlanco\",\r\n		\"url\": \"http://youtube.com/\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/\"\r\n	},{\r\n		\"red\": \"fa-google-plus\",\r\n		\"estilo\": \"googleBlanco\",\r\n		\"url\": \"http://google.com/\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\"\r\n	}\r\n\r\n]', '2020-10-05 00:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `valoracion` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `nuevo` int(11) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `titulo`, `titular`, `descripcion`, `detalles`, `precio`, `portada`, `valoracion`, `ventas`, `oferta`, `precioOferta`, `descuentoOferta`, `nuevo`, `peso`, `entrega`) VALUES
(1, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\n}', 119, 'vistas/img/productos/destacados/1.png', 0, 404, 0, 11, 40, 1, 1, 10),
(2, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/2.png', 0, 404, 0, 11, 40, 1, 1, 10),
(3, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/3.png', 0, 404, 0, 11, 40, 1, 1, 10),
(4, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/4.png', 0, 404, 0, 11, 40, 1, 1, 10),
(5, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/5.png', 0, 404, 0, 11, 40, 1, 1, 10),
(6, 0, 1, 'fisico', 'YouKnow', 'Dron', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/6.png', 0, 500, 1, 11, 40, 1, 1, 10),
(7, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/7.png', 0, 404, 0, 11, 40, 1, 1, 10),
(8, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/8.png', 0, 404, 0, 11, 40, 1, 1, 10),
(9, 0, 1, 'fisico', 'YouKnow', 'Cables', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/9.png', 0, 404, 1, 11, 40, 1, 1, 10),
(10, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/10.png', 0, 404, 0, 11, 40, 1, 1, 10),
(11, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/11.png', 0, 404, 0, 11, 40, 1, 1, 10),
(12, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/12.png', 0, 404, 0, 11, 40, 1, 1, 10),
(13, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/13.png', 0, 404, 0, 11, 40, 1, 1, 10),
(14, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/14.png', 0, 404, 0, 11, 40, 1, 1, 10),
(15, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/15.png', 1, 404, 0, 11, 40, 1, 1, 10),
(16, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/16.png', 1, 404, 0, 11, 40, 1, 1, 10),
(17, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/17.png', 1, 404, 0, 11, 40, 1, 1, 10),
(18, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/18.png', 1, 404, 0, 11, 40, 1, 1, 10),
(19, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/19.png', 1, 404, 0, 11, 40, 1, 1, 10),
(20, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/20.png', 1, 404, 0, 11, 40, 1, 1, 10),
(21, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/21.png', 1, 404, 0, 11, 40, 1, 1, 10),
(22, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/22.png', 1, 404, 0, 11, 40, 1, 1, 10),
(23, 1, 1, 'fisico', 'YouKnow', 'Casaca negra', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/23.png', 1, 404, 1, 11, 40, 1, 1, 10),
(24, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/24.png', 1, 404, 0, 11, 40, 1, 1, 10),
(25, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/25.png', 1, 404, 0, 11, 40, 1, 1, 10),
(26, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/26.png', 0, 404, 0, 11, 40, 1, 1, 10),
(27, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/27.png', 0, 404, 0, 11, 40, 1, 1, 10),
(28, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/28.png', 0, 404, 0, 11, 40, 1, 1, 10),
(29, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/29.png', 0, 404, 0, 11, 40, 1, 1, 10),
(30, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/30.png', 0, 404, 0, 11, 40, 1, 1, 10),
(31, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/31.png', 0, 404, 0, 11, 40, 1, 1, 10),
(32, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/32.png', 1, 404, 1, 11, 40, 1, 1, 10),
(33, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/33.png', 1, 404, 0, 11, 40, 1, 1, 10),
(34, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/34.png', 1, 404, 0, 11, 40, 1, 1, 10),
(35, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/35.png', 1, 404, 1, 11, 40, 1, 1, 10),
(36, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/36.png', 1, 404, 0, 11, 40, 1, 1, 10),
(37, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/37.png', 1, 404, 0, 11, 40, 1, 1, 10),
(38, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/38.png', 1, 404, 0, 11, 40, 1, 1, 10),
(39, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/39.png', 1, 404, 0, 11, 40, 1, 1, 10),
(40, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/40.png', 1, 404, 0, 11, 40, 1, 1, 10),
(41, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/41.png', 1, 404, 0, 11, 40, 1, 1, 10),
(42, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/42.png', 1, 404, 0, 11, 40, 1, 1, 10),
(43, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/43.png', 1, 404, 0, 11, 40, 1, 1, 10),
(44, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/44.png', 1, 404, 0, 11, 40, 1, 1, 10),
(45, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/45.png', 1, 404, 0, 11, 40, 1, 1, 10),
(46, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/46.png', 1, 404, 0, 11, 40, 1, 1, 10),
(47, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/47.png', 1, 404, 0, 11, 40, 1, 1, 10),
(48, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/48.png', 1, 404, 0, 11, 40, 1, 1, 10),
(49, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/49.png', 1, 404, 0, 11, 40, 1, 1, 10),
(50, 1, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/50.png', 1, 404, 0, 11, 40, 1, 1, 10),
(51, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/51.png', 1, 404, 0, 11, 40, 1, 1, 10),
(52, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/52.png', 1, 404, 0, 11, 40, 1, 1, 10),
(53, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/53.png', 1, 404, 0, 11, 40, 1, 1, 10),
(54, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/54.png', 1, 404, 0, 11, 40, 1, 1, 10),
(55, 0, 1, 'fisico', 'YouKnow', 'Casaca roja', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '{\"Talla\": [36,38,40],\"Color\": [\"rojo\",\"negro\",\"blanco\"],\"Marca\":null\r\n}', 119, 'vistas/img/productos/destacados/55.png', 1, 404, 0, 11, 40, 1, 1, 10);

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
-- Indexes for table `productos`
--
ALTER TABLE `productos`
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
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
