-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2019 a las 01:26:29
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fincamex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_articulos`
--

CREATE TABLE `cat_articulos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `unidad_medida` varchar(20) DEFAULT NULL,
  `precio` float(7,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `tasa_iva` char(1) NOT NULL COMMENT '1.-Exento,2.-0, 3.-16'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_articulos`
--

INSERT INTO `cat_articulos` (`id`, `codigo`, `descripcion`, `unidad_medida`, `precio`, `existencia`, `tasa_iva`) VALUES
(4, '00004', 'silla', 'plastico', 4250.00, 0, ''),
(5, '00005', 'mesa', 'contemporanea', 560.00, 3, ''),
(6, '00006', 'clave autorgenerada', '', 24.00, 1, ''),
(7, '2', 'este no esta', 'si esta', 600.00, 23, ''),
(8, '3', 'tres', '', 3.00, 3, ''),
(9, '00007', 'brincando', 'nrr', 34.00, 1, ''),
(10, '00024', 'desde', 'el rute', 33.44, 3, '3'),
(12, 'codig', 'codigo uno', 'litros', 55.00, 0, '1'),
(19, 'cod11', 'no edita codigo', '', 33.00, 17, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_clientes`
--

CREATE TABLE `cat_clientes` (
  `id` int(11) NOT NULL,
  `regimen` char(1) NOT NULL COMMENT '1.-persona fisica, 2.-persona moral',
  `nombre` varchar(20) NOT NULL,
  `apellido_paterno` varchar(20) DEFAULT NULL,
  `apellido_materno` varchar(20) DEFAULT NULL,
  `rfc` varchar(12) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `numero` smallint(6) DEFAULT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `codigo_postal` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_clientes`
--

INSERT INTO `cat_clientes` (`id`, `regimen`, `nombre`, `apellido_paterno`, `apellido_materno`, `rfc`, `telefono`, `correo`, `calle`, `numero`, `colonia`, `municipio`, `estado`, `codigo_postal`) VALUES
(1, '', 'luz maria', 'mendoza', 'reyes', 'rfc130789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'eva liz', 'mendozz', 'reyes', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'existo', 'luego', 'no e', 'existos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'con routing', 'rout', 'rout', 'asdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2', 'moral', '', '', 'rfcsinvalida', '1234567489', 'correo sin validar', 'calle', 1234, 'hcolonia', 'municipio', 12, 32767),
(9, '1', 'vacio', '', '', 'asfasfasf', '', 'vacio@com.com', '', 0, '', '', 0, 0),
(10, '1', 'luz', 'mendoza', 'mendoza', 'MERL8907139Q', '', '', '', 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_folios`
--

CREATE TABLE `cat_folios` (
  `id` int(11) NOT NULL,
  `tipo_folio` char(1) NOT NULL COMMENT '1.-articulos,2.-clientes,3.-ventas',
  `folio` char(5) NOT NULL,
  `consecutivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_folios`
--

INSERT INTO `cat_folios` (`id`, `tipo_folio`, `folio`, `consecutivo`) VALUES
(10, '3', '00001', 1),
(11, '3', '00002', 2),
(12, '3', '00003', 3),
(13, '3', '00004', 4),
(15, '3', '00005', 5),
(17, '1', '00001', 1),
(18, '1', '00002', 2),
(19, '1', '00003', 6),
(20, '1', '00007', 7),
(22, '1', '00008', 8),
(23, '2', '00001', 1),
(25, '2', '00002', 2),
(26, '1', '00009', 9),
(28, '1', '00010', 10),
(29, '1', '00011', 11),
(30, '1', '00012', 12),
(31, '1', '00013', 13),
(32, '1', '00014', 14),
(33, '1', '00015', 15),
(34, '1', '00016', 16),
(35, '1', '00017', 17),
(36, '1', '00018', 18),
(37, '1', '00019', 19),
(38, '1', '00020', 20),
(39, '1', '00021', 21),
(40, '1', '00022', 22),
(43, '2', '00003', 3),
(44, '2', '00004', 4),
(45, '2', '00005', 5),
(47, '2', '00006', 6),
(48, '2', '00007', 7),
(50, '2', '00008', 8),
(52, '1', '00023', 23),
(54, '3', '00006', 6),
(55, '3', '00007', 7),
(56, '3', '00008', 8),
(57, '3', '00009', 9),
(58, '3', '00010', 10),
(59, '3', '00011', 11),
(60, '2', '00009', 9),
(61, '1', '00024', 24),
(62, '3', '00012', 12),
(63, '3', '00013', 13),
(64, '2', '00010', 10),
(67, '1', '00025', 25),
(68, '2', '00011', 11),
(69, '3', '00014', 14),
(70, '3', '00015', 15),
(71, '3', '00016', 16),
(72, '3', '00017', 17),
(73, '3', '00018', 18),
(74, '3', '00019', 19),
(75, '1', '00026', 26),
(76, '1', '00027', 27),
(77, '1', '00028', 28),
(78, '1', '00029', 29),
(79, '3', '00020', 20),
(80, '1', '00030', 30),
(81, '2', '00012', 12),
(82, '3', '00021', 21),
(83, '3', '00022', 22),
(84, '3', '00023', 23),
(85, '1', '00031', 31),
(86, '2', '00013', 13),
(87, '3', '00024', 24),
(88, '3', '00025', 25),
(89, '3', '00026', 26),
(90, '3', '00027', 27),
(91, '3', '00028', 28),
(92, '3', '00029', 29),
(93, '3', '00030', 30),
(94, '3', '00031', 31),
(95, '3', '00032', 32),
(96, '3', '00033', 33),
(97, '3', '00034', 34),
(98, '3', '00035', 35),
(99, '3', '00036', 36),
(100, '3', '00037', 37),
(101, '3', '00038', 38),
(102, '3', '00039', 39),
(103, '3', '00040', 40),
(104, '3', '00041', 41),
(105, '3', '00042', 42),
(106, '3', '00043', 43),
(107, '3', '00044', 44),
(108, '3', '00045', 45),
(109, '3', '00046', 46),
(110, '3', '00047', 47),
(111, '1', '00032', 32),
(112, '1', '00033', 33),
(113, '1', '00034', 34),
(114, '1', '00035', 35),
(115, '3', '00048', 48),
(116, '1', '00036', 36),
(117, '2', '00014', 14),
(118, '3', '00049', 49),
(119, '3', '00050', 50),
(120, '3', '00051', 51),
(121, '1', '00037', 37),
(124, '1', '00038', 38),
(125, '3', '00052', 52),
(126, '3', '00053', 53),
(127, '3', '00054', 54),
(128, '3', '00055', 55),
(129, '3', '00056', 56),
(130, '3', '00057', 57),
(131, '3', '00058', 58),
(132, '3', '00059', 59),
(133, '3', '00060', 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_general`
--

CREATE TABLE `config_general` (
  `tasa_financiamiento` double NOT NULL,
  `porc_enganche` int(11) NOT NULL,
  `plazo_maximo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config_general`
--

INSERT INTO `config_general` (`tasa_financiamiento`, `porc_enganche`, `plazo_maximo`) VALUES
(2.8, 20, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` float(7,2) NOT NULL,
  `subtotal` double(7,2) NOT NULL,
  `iva` float(7,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_cliente`, `total`, `subtotal`, `iva`, `fecha`) VALUES
(1, 1, 4160.84, 0.00, 0.00, '2018-12-25 18:59:34'),
(2, 2, 548.25, 0.00, 0.00, '2018-12-25 19:06:03'),
(3, 1, 5257.34, 0.00, 0.00, '2018-12-25 19:12:01'),
(4, 1, 4160.84, 0.00, 0.00, '2018-12-26 13:47:46'),
(5, 1, 77.58, 66.88, 10.70, '2019-01-11 12:11:32'),
(6, 9, 33.00, 33.00, 0.00, '2019-01-11 16:59:13'),
(7, 10, 99.00, 99.00, 0.00, '2019-01-26 00:00:00'),
(8, 9, 33.00, 33.00, 0.00, '2019-01-30 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas_detalle`
--

INSERT INTO `ventas_detalle` (`id`, `id_venta`, `id_articulo`, `cantidad`) VALUES
(1, 2, 5, 1),
(2, 3, 4, 1),
(3, 3, 5, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_articulos`
--
ALTER TABLE `cat_articulos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave` (`codigo`);

--
-- Indices de la tabla `cat_clientes`
--
ALTER TABLE `cat_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat_folios`
--
ALTER TABLE `cat_folios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_clientes` (`id_cliente`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ventas` (`id_venta`),
  ADD KEY `fk_articulos` (`id_articulo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_articulos`
--
ALTER TABLE `cat_articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `cat_clientes`
--
ALTER TABLE `cat_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cat_folios`
--
ALTER TABLE `cat_folios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `cat_clientes` (`id`);

--
-- Filtros para la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD CONSTRAINT `fk_articulos` FOREIGN KEY (`id_articulo`) REFERENCES `cat_articulos` (`id`),
  ADD CONSTRAINT `fk_ventas` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
