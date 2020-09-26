-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-09-2015 a las 00:52:00
-- Versión del servidor: 5.6.25-0ubuntu0.15.04.1
-- Versión de PHP: 5.6.4-4ubuntu6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `autos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio`
--

CREATE TABLE IF NOT EXISTS `accesorio` (
  `cod_accesorio` int(11) NOT NULL,
  `desc_accesorio` varchar(50) DEFAULT NULL,
  `precio_accesorio` varchar(20) DEFAULT NULL,
  `nom_accesorio` varchar(50) DEFAULT NULL,
  `catidad_accesorio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accesorio`
--

INSERT INTO `accesorio` (`cod_accesorio`, `desc_accesorio`, `precio_accesorio`, `nom_accesorio`, `catidad_accesorio`) VALUES
(0, 'zapotex', '', 'Guineo Avenda&ntilde;o', NULL),
(1000001, 'Llanta aro 15 Cromada NFS', '150.000', 'Llantas 15 CR', 16),
(1000002, 'Llanta aro 14 Aleacion NFS', '130.000', 'Llantas 14 CR', 16),
(1000003, 'Llanta aro 16 Acero Inox RF', '190.000', 'Llantas 16 CR', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
`id_ciudad` int(11) NOT NULL,
  `nom_ciudad` varchar(30) DEFAULT NULL,
  `zona` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nom_ciudad`, `zona`) VALUES
(1, 'Arica', 1),
(2, 'Iquique', 1),
(3, 'Tocopilla', 1),
(4, 'Calama', 1),
(5, 'Antofagasta', 1),
(6, 'Copiapo', 1),
(7, 'La Serena', 1),
(8, 'Coquimbo', 1),
(9, 'Valparaiso', 2),
(10, 'Santiago', 2),
(11, 'Rancagua', 2),
(12, 'San Fernando', 2),
(13, 'Talca', 2),
(14, 'Linares', 2),
(15, 'Chillan', 3),
(16, 'Concepcion', 3),
(17, 'Talcahuano', 3),
(18, 'Los Angeles', 3),
(19, 'Angol', 3),
(20, 'Temuco', 4),
(21, 'Freire', 4),
(22, 'Villarrica', 4),
(23, 'Pucon', 4),
(24, 'Pitrufquen', 4),
(25, 'Lonchoche', 4),
(26, 'Valdivia', 5),
(27, 'Paillaco', 5),
(28, 'Rio Bueno', 5),
(29, 'La Union', 5),
(30, 'Osorno', 5),
(31, 'Purranque', 5),
(32, 'Llanquihue', 5),
(33, 'Frutillar', 5),
(34, 'Puerto Varas', 5),
(35, 'Puerto Montt', 5),
(36, 'Calbuco', 5),
(37, 'Los Muermos', 5),
(38, 'Maullin', 5),
(39, 'Ancud', 6),
(40, 'Quemchi', 6),
(41, 'Castro', 6),
(42, 'Dalcahue', 6),
(43, 'Chonchi', 6),
(44, 'Quellon', 6),
(45, 'Queilen', 6),
(46, 'Puerto Cisnes', 7),
(47, 'Aysen', 7),
(48, 'Chacabuco', 7),
(49, 'Coyhaique', 7),
(50, 'Balmaceda', 7),
(51, 'Cochrane', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `rut_cliente` varchar(12) NOT NULL,
  `nombre_cliente` varchar(40) DEFAULT NULL,
  `apepat_cliente` varchar(40) DEFAULT NULL,
  `apemat_cliente` varchar(40) DEFAULT NULL,
  `dire_cliente` varchar(50) DEFAULT NULL,
  `ciudad_cliente` varchar(30) DEFAULT NULL,
  `email_cliente` varchar(40) DEFAULT NULL,
  `fono_cliente` varchar(20) DEFAULT NULL,
  `user_cliente` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`rut_cliente`, `nombre_cliente`, `apepat_cliente`, `apemat_cliente`, `dire_cliente`, `ciudad_cliente`, `email_cliente`, `fono_cliente`, `user_cliente`) VALUES
('13.593.532-8', 'ROBERTO', 'GUINEO', 'AVENDA&Atilde;&plusmn;O', 'PASAJE 5', 'PUERTO MONTT', 'rguineoa@gmail.com', '82992168', 'zapotex'),
('13593532-8', 'Alexis', 'Sanchez', 'Salas', 'Cardonal 2015', 'Puerto Montt', 'asanchezs@hotmail.com', '65 2 313135', 'asanchez'),
('15.287.773-0', 'KATHERINE', 'KANOPKE', 'BELQUEN', 'PASAJE 5,1031', 'PUERTO MONTT', 'katy@gmail.com', '2713799', 'katy'),
('15123321-K', 'Ramis', 'Karaeski', 'Karaeski', 'Antonio Varas', 'Puerto Montt', 'rkaraeski@gmail.com', '65 2 252525', 'rkaraeski'),
('15287773-0', 'Christy', 'Mack', 'Cuevas', 'Perez Rosales 2812', 'Puerto Montt', 'cmack@yahoo.com', '65 2 696998', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deta_accesorio`
--

CREATE TABLE IF NOT EXISTS `deta_accesorio` (
`id_deta` int(11) NOT NULL,
  `cod_deta` int(11) DEFAULT NULL,
  `cod_accesorio` int(11) DEFAULT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deta_accesorio`
--

INSERT INTO `deta_accesorio` (`id_deta`, `cod_deta`, `cod_accesorio`, `estado`) VALUES
(4, 1, 1000001, 'Pendiente'),
(5, 1, 1000002, 'Pendiente'),
(6, 2, 1000001, 'Pendiente'),
(7, 2, 1000002, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fac`
--

CREATE TABLE IF NOT EXISTS `detalle_fac` (
`cod_deta` int(11) NOT NULL,
  `cod_factura` int(11) DEFAULT NULL,
  `id_vehiculo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_fac`
--

INSERT INTO `detalle_fac` (`cod_deta`, `cod_factura`, `id_vehiculo`) VALUES
(1, 123456, '666777'),
(2, 123457, '666888'),
(3, 123458, '666999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `rut_empresa` varchar(12) NOT NULL,
  `nombre_empresa` varchar(40) DEFAULT NULL,
  `giro_empresa` varchar(50) DEFAULT NULL,
  `dire_empresa` varchar(50) DEFAULT NULL,
  `fono_empresa` varchar(20) DEFAULT NULL,
  `email_empresa` varchar(40) DEFAULT NULL,
  `ciudad_empresa` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`rut_empresa`, `nombre_empresa`, `giro_empresa`, `dire_empresa`, `fono_empresa`, `email_empresa`, `ciudad_empresa`) VALUES
('76189096-4', 'FourWheels Ltda.', 'Venta de Vehiculos', 'Las Quemas 1480', '65 2 696969', 'info@fourwheels.cl', 'Puerto Montt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `cod_factura` int(11) NOT NULL,
  `fecha_factura` date DEFAULT NULL,
  `rut_cliente` varchar(12) DEFAULT NULL,
  `estado_factura` varchar(20) DEFAULT NULL,
  `nom_vendedor` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`cod_factura`, `fecha_factura`, `rut_cliente`, `estado_factura`, `nom_vendedor`) VALUES
(123456, '2015-09-11', '13.593.532-8', 'PENDIENTE', 'Jose Jara'),
(123457, '2015-09-10', '15123321-K', 'PENDIENTE', 'Jose Jara'),
(123458, '2015-09-19', '15287773-0', 'PENDIENTE', 'Jose Jara');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id_login` int(11) NOT NULL,
  `nom_user` varchar(30) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `formulario` varchar(70) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_login`, `nom_user`, `hora`, `fecha`, `formulario`) VALUES
(1, 'admin', '17:47:33', '2015-09-19', '/autos/administracion/admin.php'),
(2, 'admin', '17:48:46', '2015-09-19', '/autos/administracion/mant_vehiculo.php'),
(3, 'admin', '17:49:04', '2015-09-19', '/autos/administracion/usuarios.php'),
(4, 'admin', '17:49:08', '2015-09-19', '/autos/administracion/list_vendedor.php'),
(5, 'admin', '17:49:12', '2015-09-19', '/autos/administracion/list_vehiculo.php'),
(6, 'admin', '17:49:58', '2015-09-19', '/autos/administracion/list_vehiculo.php'),
(7, 'admin', '17:50:01', '2015-09-19', '/autos/administracion/list_vendedor.php'),
(8, 'admin', '17:50:04', '2015-09-19', '/autos/administracion/list_cliente.php'),
(9, 'admin', '17:50:11', '2015-09-19', '/autos/administracion/list_cliente.php'),
(10, 'admin', '17:50:16', '2015-09-19', '/autos/administracion/mant_cliente.php'),
(11, 'admin', '17:50:58', '2015-09-19', '/autos/administracion/list_vendedor.php'),
(12, 'admin', '17:51:01', '2015-09-19', '/autos/administracion/list_cliente.php'),
(13, 'admin', '17:51:08', '2015-09-19', '/autos/administracion/mant_cliente.php'),
(14, 'admin', '17:51:19', '2015-09-19', '/autos/administracion/mant_vehiculo.php'),
(15, 'admin', '17:51:39', '2015-09-19', '/autos/administracion/mant_vehiculo.php'),
(16, 'admin', '17:51:42', '2015-09-19', '/autos/administracion/list_vehiculo.php'),
(17, 'admin', '23:22:14', '2015-09-19', '/autos/administracion/admin.php'),
(18, 'admin', '23:33:43', '2015-09-19', '/autos/administracion/admin.php'),
(19, 'admin', '23:56:21', '2015-09-19', '/autos/administracion/admin.php'),
(20, 'admin', '11:41:41', '2015-09-20', '/autos/administracion/admin.php'),
(21, 'admin', '11:41:45', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(22, 'admin', '11:42:08', '2015-09-20', '/autos/administracion/list_vehiculo.php'),
(23, 'admin', '11:42:28', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(24, 'admin', '11:42:42', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(25, 'admin', '11:42:58', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(26, 'admin', '11:43:12', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(27, 'admin', '11:43:36', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(28, 'admin', '11:43:39', '2015-09-20', '/autos/administracion/list_vehiculo.php'),
(29, 'admin', '11:44:17', '2015-09-20', '/autos/administracion/list_vehiculo.php'),
(30, 'admin', '11:45:54', '2015-09-20', '/autos/administracion/list_vehiculo.php'),
(31, 'admin', '11:46:28', '2015-09-20', '/autos/administracion/admin.php'),
(32, 'admin', '21:37:01', '2015-09-20', '/autos/administracion/admin.php'),
(33, 'admin', '21:37:04', '2015-09-20', '/autos/administracion/list_vehiculo.php'),
(34, 'admin', '21:52:54', '2015-09-20', '/autos/administracion/mant_vehiculo.php'),
(35, 'admin', '10:44:48', '2015-09-21', '/autos/administracion/admin.php'),
(36, 'admin', '11:54:13', '2015-09-21', '/autos/administracion/admin.php'),
(37, 'admin', '11:54:15', '2015-09-21', '/autos/administracion/list_vehiculo.php'),
(38, 'admin', '12:07:55', '2015-09-21', '/autos/administracion/mant_accesorio.php'),
(39, 'admin', '12:07:58', '2015-09-21', '/autos/administracion/usuarios.php'),
(40, 'admin', '12:08:04', '2015-09-21', '/autos/administracion/mant_vendedor.php'),
(41, 'admin', '14:28:04', '2015-09-21', '/autos/administracion/admin.php'),
(42, 'admin', '14:28:13', '2015-09-21', '/autos/administracion/admin.php'),
(43, 'admin', '23:05:09', '2015-09-21', '/autos/administracion/admin.php'),
(44, 'admin', '23:05:15', '2015-09-21', '/autos/administracion/usuarios.php'),
(45, 'admin', '23:30:07', '2015-09-21', '/autos/administracion/usuarios.php'),
(46, 'admin', '23:31:22', '2015-09-21', '/autos/administracion/usuarios.php'),
(47, 'admin', '23:32:27', '2015-09-21', '/autos/administracion/usuarios.php'),
(48, 'admin', '23:32:31', '2015-09-21', '/autos/administracion/usuarios.php'),
(49, 'admin', '23:32:42', '2015-09-21', '/autos/administracion/usuarios.php'),
(50, 'admin', '23:33:51', '2015-09-21', '/autos/administracion/usuarios.php'),
(51, 'admin', '23:33:53', '2015-09-21', '/autos/administracion/usuarios.php'),
(52, 'admin', '23:33:53', '2015-09-21', '/autos/administracion/usuarios.php'),
(53, 'admin', '23:33:53', '2015-09-21', '/autos/administracion/usuarios.php'),
(54, 'admin', '23:33:53', '2015-09-21', '/autos/administracion/usuarios.php'),
(55, 'admin', '23:33:54', '2015-09-21', '/autos/administracion/usuarios.php'),
(56, 'admin', '23:33:54', '2015-09-21', '/autos/administracion/usuarios.php'),
(57, 'admin', '23:35:44', '2015-09-21', '/autos/administracion/usuarios.php'),
(58, 'admin', '23:36:21', '2015-09-21', '/autos/administracion/usuarios.php'),
(59, 'admin', '23:36:45', '2015-09-21', '/autos/administracion/usuarios.php'),
(60, 'admin', '23:38:00', '2015-09-21', '/autos/administracion/usuarios.php'),
(61, 'admin', '23:38:49', '2015-09-21', '/autos/administracion/usuarios.php'),
(62, 'admin', '23:38:59', '2015-09-21', '/autos/administracion/usuarios.php'),
(63, 'admin', '23:38:59', '2015-09-21', '/autos/administracion/usuarios.php'),
(64, 'admin', '23:39:00', '2015-09-21', '/autos/administracion/usuarios.php'),
(65, 'admin', '23:39:00', '2015-09-21', '/autos/administracion/usuarios.php'),
(66, 'admin', '23:39:00', '2015-09-21', '/autos/administracion/usuarios.php'),
(67, 'admin', '23:39:00', '2015-09-21', '/autos/administracion/usuarios.php'),
(68, 'admin', '23:39:00', '2015-09-21', '/autos/administracion/usuarios.php'),
(69, 'admin', '23:41:25', '2015-09-21', '/autos/administracion/usuarios.php'),
(70, 'admin', '23:41:31', '2015-09-21', '/autos/administracion/usuarios.php'),
(71, 'admin', '23:41:41', '2015-09-21', '/autos/administracion/usuarios.php'),
(72, 'admin', '23:42:50', '2015-09-21', '/autos/administracion/usuarios.php'),
(73, 'admin', '23:53:13', '2015-09-21', '/autos/administracion/usuarios.php'),
(74, 'admin', '00:06:49', '2015-09-22', '/autos/administracion/usuarios.php'),
(75, 'admin', '00:06:51', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(76, 'admin', '00:07:25', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(77, 'admin', '00:09:35', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(78, 'admin', '00:24:57', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(79, 'admin', '00:25:41', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(80, 'admin', '00:26:12', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(81, 'admin', '00:28:18', '2015-09-22', '/autos/administracion/usuarios.php'),
(82, 'admin', '12:03:10', '2015-09-22', '/autos/administracion/admin.php'),
(83, 'admin', '12:03:18', '2015-09-22', '/autos/administracion/usuarios.php'),
(84, 'admin', '12:05:48', '2015-09-22', '/autos/administracion/usuarios.php'),
(85, 'admin', '12:06:02', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(86, 'admin', '12:06:08', '2015-09-22', '/autos/administracion/usuarios.php'),
(87, 'admin', '12:07:32', '2015-09-22', '/autos/administracion/usuarios.php'),
(88, 'admin', '12:07:34', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(89, 'admin', '12:25:45', '2015-09-22', '/autos/administracion/usuarios.php'),
(90, 'admin', '12:25:47', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(91, 'admin', '12:26:20', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(92, 'admin', '12:26:23', '2015-09-22', '/autos/administracion/usuarios.php'),
(93, 'admin', '12:26:26', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(94, 'admin', '12:26:53', '2015-09-22', '/autos/administracion/usuarios.php'),
(95, 'admin', '12:27:34', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(96, 'admin', '12:28:56', '2015-09-22', '/autos/administracion/usuarios.php'),
(97, 'admin', '12:28:58', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(98, 'admin', '12:32:32', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(99, 'admin', '12:32:36', '2015-09-22', '/autos/administracion/usuarios.php'),
(100, 'admin', '12:32:38', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(101, 'admin', '12:34:07', '2015-09-22', '/autos/administracion/usuarios.php'),
(102, 'admin', '12:34:10', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(103, 'admin', '12:35:51', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(104, 'admin', '12:36:04', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(105, 'admin', '12:36:42', '2015-09-22', '/autos/administracion/usuarios.php'),
(106, 'admin', '12:43:41', '2015-09-22', '/autos/administracion/usuarios.php'),
(107, 'admin', '12:43:44', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(108, 'admin', '12:48:48', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(109, 'admin', '12:48:55', '2015-09-22', '/autos/administracion/usuarios.php'),
(110, 'admin', '12:48:59', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(111, 'admin', '13:29:35', '2015-09-22', '/autos/administracion/mant_cliente.php'),
(112, 'admin', '13:29:37', '2015-09-22', '/autos/administracion/mant_vehiculo.php'),
(113, 'admin', '13:29:40', '2015-09-22', '/autos/administracion/list_vehiculo.php'),
(114, 'admin', '13:29:44', '2015-09-22', '/autos/administracion/list_vendedor.php'),
(115, 'admin', '13:29:52', '2015-09-22', '/autos/administracion/list_cliente.php'),
(116, 'admin', '13:50:29', '2015-09-22', '/autos/administracion/mant_cliente.php'),
(117, 'admin', '13:50:31', '2015-09-22', '/autos/administracion/usuarios.php'),
(118, 'admin', '13:50:35', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(119, 'admin', '14:01:43', '2015-09-22', '/autos/administracion/usuarios.php'),
(120, 'admin', '14:01:51', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(121, 'admin', '14:04:05', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(122, 'admin', '14:07:33', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(123, 'admin', '14:14:06', '2015-09-22', '/autos/administracion/usuarios.php'),
(124, 'admin', '14:14:09', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(125, 'admin', '14:14:11', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(126, 'admin', '14:14:17', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(127, 'admin', '14:15:36', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(128, 'admin', '14:16:07', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(129, 'admin', '14:26:37', '2015-09-22', '/autos/administracion/usuarios.php'),
(130, 'admin', '14:26:39', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(131, 'admin', '14:28:38', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(132, 'admin', '14:28:58', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(133, 'admin', '14:29:11', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(134, 'admin', '14:29:35', '2015-09-22', '/autos/administracion/mant_usuario.php'),
(135, 'admin', '14:39:22', '2015-09-22', '/autos/administracion/usuarios.php'),
(136, 'admin', '14:41:33', '2015-09-22', '/autos/administracion/usuario_edit.php'),
(137, 'admin', '14:42:07', '2015-09-22', '/autos/administracion/usuarios.php'),
(138, 'dguineo', '14:42:22', '2015-09-22', '/autos/administracion/admin.php'),
(139, 'dguineo', '14:42:32', '2015-09-22', '/autos/administracion/usuarios.php'),
(140, 'admin', '15:28:45', '2015-09-22', '/autos/administracion/admin.php'),
(141, 'admin', '15:28:50', '2015-09-22', '/autos/administracion/usuarios.php'),
(142, 'admin', '15:30:13', '2015-09-22', '/autos/administracion/usuarios.php'),
(143, 'admin', '15:51:52', '2015-09-22', '/autos/administracion/usuarios.php'),
(144, 'admin', '15:52:00', '2015-09-22', '/autos/administracion/usuarios.php'),
(145, 'admin', '15:52:02', '2015-09-22', '/autos/administracion/usuarios.php'),
(146, 'admin', '15:52:03', '2015-09-22', '/autos/administracion/usuarios.php'),
(147, 'admin', '15:52:03', '2015-09-22', '/autos/administracion/usuarios.php'),
(148, 'admin', '15:52:03', '2015-09-22', '/autos/administracion/usuarios.php'),
(149, 'admin', '15:52:03', '2015-09-22', '/autos/administracion/usuarios.php'),
(150, 'admin', '15:52:42', '2015-09-22', '/autos/administracion/usuarios.php'),
(151, 'admin', '15:53:03', '2015-09-22', '/autos/administracion/usuarios.php'),
(152, 'admin', '15:57:08', '2015-09-22', '/autos/administracion/usuarios.php'),
(153, 'admin', '15:57:10', '2015-09-22', '/autos/administracion/usuarios.php'),
(154, 'admin', '15:57:11', '2015-09-22', '/autos/administracion/usuario_del.php'),
(155, 'admin', '15:57:37', '2015-09-22', '/autos/administracion/usuario_del.php'),
(156, 'admin', '15:58:10', '2015-09-22', '/autos/administracion/usuario_del.php'),
(157, 'admin', '16:03:27', '2015-09-22', '/autos/administracion/usuarios.php'),
(158, 'admin', '16:03:39', '2015-09-22', '/autos/administracion/usuario_del.php'),
(159, 'admin', '16:03:44', '2015-09-22', '/autos/administracion/usuarios.php'),
(160, 'admin', '16:04:16', '2015-09-22', '/autos/administracion/usuarios.php'),
(161, 'admin', '16:04:19', '2015-09-22', '/autos/administracion/usuarios.php'),
(162, 'admin', '16:04:21', '2015-09-22', '/autos/administracion/usuario_del.php'),
(163, 'admin', '16:04:24', '2015-09-22', '/autos/administracion/usuarios.php'),
(164, 'admin', '16:04:32', '2015-09-22', '/autos/administracion/usuario_del.php'),
(165, 'admin', '16:04:37', '2015-09-22', '/autos/administracion/usuarios.php'),
(166, 'admin', '16:05:01', '2015-09-22', '/autos/administracion/usuarios.php'),
(167, 'admin', '16:05:04', '2015-09-22', '/autos/administracion/usuario_del.php'),
(168, 'admin', '16:05:08', '2015-09-22', '/autos/administracion/usuarios.php'),
(169, 'admin', '22:20:20', '2015-09-22', '/autos/administracion/admin.php'),
(170, 'admin', '22:20:23', '2015-09-22', '/autos/administracion/mant_accesorio.php'),
(171, 'admin', '22:20:33', '2015-09-22', '/autos/administracion/usuarios.php'),
(172, 'admin', '22:21:42', '2015-09-22', '/autos/administracion/usuarios.php'),
(173, 'admin', '22:21:46', '2015-09-22', '/autos/administracion/usuarios.php'),
(174, 'admin', '22:23:09', '2015-09-22', '/autos/administracion/usuarios.php'),
(175, 'admin', '23:27:33', '2015-09-22', '/autos/administracion/admin.php'),
(176, 'admin', '23:29:29', '2015-09-22', '/autos/administracion/mant_accesorio.php'),
(177, 'admin', '23:29:32', '2015-09-22', '/autos/administracion/usuarios.php'),
(178, 'admin', '23:29:36', '2015-09-22', '/autos/administracion/mant_vendedor.php'),
(179, 'admin', '23:32:07', '2015-09-22', '/autos/administracion/mant_vendedor.php'),
(180, 'admin', '23:32:20', '2015-09-22', '/autos/administracion/mant_vehiculo.php'),
(181, 'admin', '23:32:43', '2015-09-22', '/autos/administracion/mant_vehiculo.php'),
(182, 'admin', '23:34:25', '2015-09-22', '/autos/administracion/mant_vehiculo.php'),
(183, 'admin', '23:35:37', '2015-09-22', '/autos/administracion/admin.php'),
(184, 'admin', '00:06:04', '2015-09-23', '/autos/administracion/list_vehiculo.php'),
(185, 'admin', '00:06:10', '2015-09-23', '/autos/administracion/admin.php'),
(186, 'admin', '19:57:40', '2015-09-23', '/autos/administracion/admin.php'),
(187, 'admin', '21:53:29', '2015-09-23', '/autos/administracion/admin.php'),
(188, 'admin', '21:53:32', '2015-09-23', '/autos/administracion/mant_cliente.php'),
(189, 'admin', '22:03:51', '2015-09-23', '/autos/administracion/admin.php'),
(190, 'admin', '22:04:08', '2015-09-23', '/autos/administracion/mant_vehiculo.php'),
(191, 'admin', '22:05:21', '2015-09-23', '/autos/administracion/mant_vehiculo.php'),
(192, 'admin', '22:12:48', '2015-09-23', '/autos/administracion/mant_cliente.php'),
(193, 'zapotex', '23:24:52', '2015-09-23', '/autos/cliente/cliente.php'),
(194, 'zapotex', '23:24:57', '2015-09-23', '/autos/cliente/mis_compras.php'),
(195, 'zapotex', '23:25:11', '2015-09-23', '/autos/cliente/mis_compras.php'),
(196, 'zapotex', '23:25:12', '2015-09-23', '/autos/cliente/mis_compras.php'),
(197, 'zapotex', '23:25:31', '2015-09-23', '/autos/cliente/cliente.php'),
(198, 'zapotex', '23:25:39', '2015-09-23', '/autos/cliente/mis_compras.php'),
(199, 'admin', '00:57:55', '2015-09-24', '/autos/administracion/admin.php'),
(200, 'admin', '00:58:17', '2015-09-24', '/autos/administracion/admin.php'),
(201, 'admin', '00:58:24', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(202, 'admin', '01:19:54', '2015-09-24', '/autos/administracion/admin.php'),
(203, 'admin', '01:19:57', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(204, 'admin', '01:21:45', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(205, 'admin', '01:22:27', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(206, 'admin', '01:22:37', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(207, 'admin', '01:23:45', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(208, 'admin', '01:24:05', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(209, 'admin', '01:24:35', '2015-09-24', '/autos/administracion/admin.php'),
(210, 'admin', '01:24:40', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(211, 'admin', '01:25:07', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(212, 'admin', '01:25:26', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(213, 'admin', '01:26:01', '2015-09-24', '/autos/administracion/admin.php'),
(214, 'admin', '01:26:05', '2015-09-24', '/autos/administracion/list_vehiculo.php'),
(215, 'admin', '01:26:16', '2015-09-24', '/autos/administracion/list_vehiculo.php'),
(216, 'admin', '01:26:18', '2015-09-24', '/autos/administracion/mant_accesorio.php'),
(217, 'admin', '01:27:18', '2015-09-24', '/autos/administracion/mant_accesorio.php'),
(218, 'admin', '01:28:25', '2015-09-24', '/autos/administracion/mant_accesorio.php'),
(219, 'admin', '01:28:44', '2015-09-24', '/autos/administracion/mant_accesorio.php'),
(220, 'admin', '01:29:39', '2015-09-24', '/autos/administracion/mant_vendedor.php'),
(221, 'admin', '01:30:01', '2015-09-24', '/autos/administracion/mant_vehiculo.php'),
(222, 'admin', '01:30:03', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(223, 'admin', '01:30:07', '2015-09-24', '/autos/administracion/mant_accesorio.php'),
(224, 'admin', '01:30:10', '2015-09-24', '/autos/administracion/usuarios.php'),
(225, 'admin', '01:30:17', '2015-09-24', '/autos/administracion/mant_vendedor.php'),
(226, 'admin', '01:30:20', '2015-09-24', '/autos/administracion/mant_cliente.php'),
(227, 'zapotex', '01:35:43', '2015-09-24', '/autos/cliente/cliente.php'),
(228, 'zapotex', '01:36:23', '2015-09-24', '/autos/cliente/cliente.php'),
(229, 'zapotex', '01:37:39', '2015-09-24', '/autos/cliente/cliente.php'),
(230, 'zapotex', '01:38:03', '2015-09-24', '/autos/cliente/cliente.php'),
(231, 'zapotex', '01:40:37', '2015-09-24', '/autos/cliente/mis_compras.php'),
(232, 'zapotex', '01:46:51', '2015-09-24', '/autos/cliente/mis_compras.php'),
(233, 'zapotex', '01:47:00', '2015-09-24', '/autos/cliente/mis_compras.php'),
(234, 'zapotex', '01:47:52', '2015-09-24', '/autos/cliente/mis_compras.php'),
(235, 'zapotex', '01:50:11', '2015-09-24', '/autos/cliente/mis_compras.php'),
(236, 'zapotex', '01:51:57', '2015-09-24', '/autos/cliente/mis_compras.php'),
(237, 'zapotex', '01:52:38', '2015-09-24', '/autos/cliente/mis_compras.php'),
(238, 'zapotex', '01:54:54', '2015-09-24', '/autos/cliente/mis_compras.php'),
(239, 'zapotex', '01:59:36', '2015-09-24', '/autos/cliente/mis_compras.php'),
(240, 'zapotex', '02:01:36', '2015-09-24', '/autos/cliente/mis_compras.php'),
(241, 'zapotex', '02:03:13', '2015-09-24', '/autos/cliente/mis_compras.php'),
(242, 'zapotex', '02:03:33', '2015-09-24', '/autos/cliente/mis_compras.php'),
(243, 'zapotex', '02:03:34', '2015-09-24', '/autos/cliente/mis_compras.php'),
(244, 'zapotex', '02:03:35', '2015-09-24', '/autos/cliente/mis_compras.php'),
(245, 'zapotex', '02:03:35', '2015-09-24', '/autos/cliente/mis_compras.php'),
(246, 'zapotex', '02:03:36', '2015-09-24', '/autos/cliente/mis_compras.php'),
(247, 'zapotex', '02:09:31', '2015-09-24', '/autos/cliente/mis_compras.php'),
(248, 'zapotex', '02:12:22', '2015-09-24', '/autos/cliente/mis_compras.php'),
(249, 'zapotex', '02:13:37', '2015-09-24', '/autos/cliente/mis_compras.php'),
(250, 'zapotex', '02:15:05', '2015-09-24', '/autos/cliente/mis_compras.php'),
(251, 'zapotex', '02:15:38', '2015-09-24', '/autos/cliente/mis_compras.php'),
(252, 'zapotex', '02:16:04', '2015-09-24', '/autos/cliente/mis_compras.php'),
(253, 'zapotex', '02:17:25', '2015-09-24', '/autos/cliente/mis_compras.php'),
(254, 'zapotex', '02:27:54', '2015-09-24', '/autos/cliente/cliente.php'),
(255, 'zapotex', '02:28:22', '2015-09-24', '/autos/cliente/mis_compras.php'),
(256, 'zapotex', '02:28:55', '2015-09-24', '/autos/cliente/mis_compras.php'),
(257, 'zapotex', '02:31:17', '2015-09-24', '/autos/cliente/mis_compras.php'),
(258, 'zapotex', '02:32:10', '2015-09-24', '/autos/cliente/mis_compras.php'),
(259, 'zapotex', '02:32:52', '2015-09-24', '/autos/cliente/mis_compras.php'),
(260, 'zapotex', '02:38:16', '2015-09-24', '/autos/cliente/mis_compras.php'),
(261, 'admin', '17:55:54', '2015-09-24', '/autos/administracion/admin.php'),
(262, 'zapotex', '21:56:07', '2015-09-24', '/autos/cliente/cliente.php'),
(263, 'zapotex', '21:56:10', '2015-09-24', '/autos/cliente/mis_compras.php'),
(264, 'admin', '19:21:42', '2015-09-25', '/autos/administracion/admin.php'),
(265, 'admin', '19:21:52', '2015-09-25', '/autos/administracion/mant_vehiculo.php'),
(266, 'admin', '19:22:11', '2015-09-25', '/autos/administracion/mant_cliente.php'),
(267, 'admin', '19:22:21', '2015-09-25', '/autos/administracion/mant_accesorio.php'),
(268, 'admin', '19:26:08', '2015-09-25', '/autos/administracion/mant_accesorio.php'),
(269, 'admin', '19:26:11', '2015-09-25', '/autos/administracion/usuarios.php'),
(270, 'admin', '19:26:54', '2015-09-25', '/autos/administracion/usuario_edit.php'),
(271, 'admin', '19:27:09', '2015-09-25', '/autos/administracion/usuarios.php'),
(272, 'admin', '19:27:13', '2015-09-25', '/autos/administracion/usuario_del.php'),
(273, 'admin', '19:59:38', '2015-09-25', '/autos/administracion/mant_cliente.php'),
(274, 'admin', '20:01:10', '2015-09-25', '/autos/administracion/list_cliente.php'),
(275, 'admin', '20:01:24', '2015-09-25', '/autos/administracion/usuarios.php'),
(276, 'admin', '20:29:26', '2015-09-25', '/autos/administracion/usuarios.php'),
(277, 'admin', '20:29:28', '2015-09-25', '/autos/administracion/estado_factura.php'),
(278, 'admin', '20:30:31', '2015-09-25', '/autos/administracion/estado_factura.php'),
(279, 'admin', '20:30:34', '2015-09-25', '/autos/administracion/estado_factura.php'),
(280, 'admin', '20:32:09', '2015-09-25', '/autos/administracion/estado_factura.php'),
(281, 'admin', '20:33:14', '2015-09-25', '/autos/administracion/estado_factura.php'),
(282, 'admin', '20:34:25', '2015-09-25', '/autos/administracion/estado_factura.php'),
(283, 'admin', '20:34:55', '2015-09-25', '/autos/administracion/estado_factura.php'),
(284, 'admin', '20:35:30', '2015-09-25', '/autos/administracion/estado_factura.php'),
(285, 'admin', '20:35:55', '2015-09-25', '/autos/administracion/estado_factura.php'),
(286, 'admin', '20:37:19', '2015-09-25', '/autos/administracion/estado_factura.php'),
(287, 'admin', '20:37:37', '2015-09-25', '/autos/administracion/estado_factura.php'),
(288, 'admin', '20:40:44', '2015-09-25', '/autos/administracion/list_vehiculo.php'),
(289, 'admin', '14:24:18', '2015-09-26', '/autos/administracion/admin.php'),
(290, 'admin', '14:28:47', '2015-09-26', '/autos/administracion/estado_factura.php'),
(291, 'admin', '15:43:54', '2015-09-26', '/autos/administracion/admin.php'),
(292, 'admin', '15:44:01', '2015-09-26', '/autos/administracion/estado_factura.php'),
(293, 'admin', '15:44:03', '2015-09-26', '/autos/administracion/factura.php'),
(294, 'admin', '15:46:39', '2015-09-26', '/autos/administracion/factura.php'),
(295, 'admin', '15:50:27', '2015-09-26', '/autos/administracion/factura.php'),
(296, 'admin', '15:54:01', '2015-09-26', '/autos/administracion/factura.php'),
(297, 'admin', '15:54:41', '2015-09-26', '/autos/administracion/factura.php'),
(298, 'admin', '15:54:56', '2015-09-26', '/autos/administracion/factura.php'),
(299, 'admin', '15:55:20', '2015-09-26', '/autos/administracion/factura.php'),
(300, 'admin', '15:56:08', '2015-09-26', '/autos/administracion/factura.php'),
(301, 'admin', '15:56:32', '2015-09-26', '/autos/administracion/factura.php'),
(302, 'admin', '15:56:51', '2015-09-26', '/autos/administracion/factura.php'),
(303, 'admin', '15:57:45', '2015-09-26', '/autos/administracion/factura.php'),
(304, 'admin', '15:58:01', '2015-09-26', '/autos/administracion/factura.php'),
(305, 'admin', '16:13:33', '2015-09-26', '/autos/administracion/factura.php'),
(306, 'admin', '16:17:00', '2015-09-26', '/autos/administracion/estado_factura.php'),
(307, 'admin', '16:17:02', '2015-09-26', '/autos/administracion/factura.php'),
(308, 'admin', '16:18:36', '2015-09-26', '/autos/administracion/factura.php'),
(309, 'admin', '16:19:21', '2015-09-26', '/autos/administracion/factura.php'),
(310, 'admin', '16:20:33', '2015-09-26', '/autos/administracion/estado_factura.php'),
(311, 'admin', '16:20:52', '2015-09-26', '/autos/administracion/estado_factura.php'),
(312, 'admin', '16:20:55', '2015-09-26', '/autos/comun/factura.php'),
(313, 'admin', '16:30:11', '2015-09-26', '/autos/comun/factura.php'),
(314, 'admin', '16:30:16', '2015-09-26', '/autos/comun/factura.php'),
(315, 'admin', '16:30:25', '2015-09-26', '/autos/comun/factura.php'),
(316, 'admin', '16:32:46', '2015-09-26', '/autos/comun/factura.php'),
(317, 'admin', '16:34:47', '2015-09-26', '/autos/comun/factura.php'),
(318, 'admin', '16:37:09', '2015-09-26', '/autos/comun/factura.php'),
(319, 'admin', '16:37:13', '2015-09-26', '/autos/comun/factura.php'),
(320, 'admin', '16:37:13', '2015-09-26', '/autos/comun/factura.php'),
(321, 'admin', '16:37:14', '2015-09-26', '/autos/comun/factura.php'),
(322, 'admin', '16:37:14', '2015-09-26', '/autos/comun/factura.php'),
(323, 'admin', '16:37:31', '2015-09-26', '/autos/comun/factura.php'),
(324, 'admin', '16:40:29', '2015-09-26', '/autos/comun/factura.php'),
(325, 'admin', '16:40:49', '2015-09-26', '/autos/comun/factura.php'),
(326, 'admin', '16:43:13', '2015-09-26', '/autos/comun/factura.php'),
(327, 'admin', '16:43:32', '2015-09-26', '/autos/comun/factura.php'),
(328, 'admin', '16:43:36', '2015-09-26', '/autos/comun/factura.php'),
(329, 'admin', '16:43:46', '2015-09-26', '/autos/comun/factura.php'),
(330, 'admin', '16:44:22', '2015-09-26', '/autos/comun/factura.php'),
(331, 'admin', '16:44:30', '2015-09-26', '/autos/comun/factura.php'),
(332, 'admin', '16:44:35', '2015-09-26', '/autos/comun/factura.php'),
(333, 'admin', '16:53:34', '2015-09-26', '/autos/comun/factura.php'),
(334, 'admin', '17:00:45', '2015-09-26', '/autos/comun/factura.php'),
(335, 'admin', '17:08:40', '2015-09-26', '/autos/comun/factura.php'),
(336, 'admin', '17:09:41', '2015-09-26', '/autos/comun/factura.php'),
(337, 'admin', '17:10:12', '2015-09-26', '/autos/comun/factura.php'),
(338, 'admin', '17:10:47', '2015-09-26', '/autos/comun/factura.php'),
(339, 'admin', '17:12:04', '2015-09-26', '/autos/comun/factura.php'),
(340, 'admin', '17:13:54', '2015-09-26', '/autos/comun/factura.php'),
(341, 'admin', '17:14:29', '2015-09-26', '/autos/comun/factura.php'),
(342, 'admin', '17:15:26', '2015-09-26', '/autos/comun/factura.php'),
(343, 'admin', '17:31:26', '2015-09-26', '/autos/comun/factura.php'),
(344, 'admin', '17:32:56', '2015-09-26', '/autos/comun/factura.php'),
(345, 'admin', '17:35:08', '2015-09-26', '/autos/comun/factura.php'),
(346, 'admin', '17:36:05', '2015-09-26', '/autos/comun/factura.php'),
(347, 'admin', '17:43:02', '2015-09-26', '/autos/comun/factura.php'),
(348, 'admin', '17:48:44', '2015-09-26', '/autos/administracion/estado_factura.php'),
(349, 'admin', '17:48:47', '2015-09-26', '/autos/administracion/admin.php'),
(350, 'admin', '17:48:50', '2015-09-26', '/autos/administracion/estado_factura.php'),
(351, 'admin', '17:52:25', '2015-09-26', '/autos/comun/factura.php'),
(352, 'admin', '18:06:36', '2015-09-26', '/autos/comun/factura.php'),
(353, 'admin', '18:07:57', '2015-09-26', '/autos/comun/factura.php'),
(354, 'admin', '18:12:45', '2015-09-26', '/autos/comun/factura.php'),
(355, 'admin', '18:13:31', '2015-09-26', '/autos/comun/factura.php'),
(356, 'admin', '18:24:45', '2015-09-26', '/autos/administracion/admin.php'),
(357, 'admin', '18:25:09', '2015-09-26', '/autos/comun/factura.php'),
(358, 'admin', '18:26:30', '2015-09-26', '/autos/comun/factura.php'),
(359, 'admin', '18:26:35', '2015-09-26', '/autos/comun/factura.php'),
(360, 'admin', '18:26:37', '2015-09-26', '/autos/comun/factura.php'),
(361, 'admin', '18:26:46', '2015-09-26', '/autos/administracion/estado_factura.php'),
(362, 'admin', '18:26:49', '2015-09-26', '/autos/comun/factura.php'),
(363, 'admin', '18:27:55', '2015-09-26', '/autos/comun/factura.php'),
(364, 'admin', '18:28:49', '2015-09-26', '/autos/comun/factura.php'),
(365, 'admin', '18:29:46', '2015-09-26', '/autos/comun/factura.php'),
(366, 'admin', '18:30:38', '2015-09-26', '/autos/comun/factura.php'),
(367, 'admin', '18:30:54', '2015-09-26', '/autos/comun/factura.php'),
(368, 'admin', '18:30:59', '2015-09-26', '/autos/comun/factura.php'),
(369, 'admin', '18:31:01', '2015-09-26', '/autos/comun/factura.php'),
(370, 'admin', '18:31:23', '2015-09-26', '/autos/comun/factura.php'),
(371, 'admin', '18:31:32', '2015-09-26', '/autos/comun/factura.php'),
(372, 'admin', '18:31:38', '2015-09-26', '/autos/comun/factura.php'),
(373, 'admin', '18:31:43', '2015-09-26', '/autos/comun/factura.php'),
(374, 'admin', '18:33:00', '2015-09-26', '/autos/comun/factura.php'),
(375, 'admin', '18:34:05', '2015-09-26', '/autos/comun/factura.php'),
(376, 'admin', '18:34:55', '2015-09-26', '/autos/comun/factura.php'),
(377, 'admin', '18:35:06', '2015-09-26', '/autos/comun/factura.php'),
(378, 'admin', '18:35:33', '2015-09-26', '/autos/comun/factura.php'),
(379, 'admin', '18:38:04', '2015-09-26', '/autos/comun/factura.php'),
(380, 'admin', '18:41:28', '2015-09-26', '/autos/comun/factura.php'),
(381, 'admin', '18:42:17', '2015-09-26', '/autos/comun/factura.php'),
(382, 'admin', '18:42:37', '2015-09-26', '/autos/comun/factura.php'),
(383, 'admin', '18:42:42', '2015-09-26', '/autos/comun/factura.php'),
(384, 'admin', '18:48:21', '2015-09-26', '/autos/comun/factura.php'),
(385, 'admin', '18:49:16', '2015-09-26', '/autos/comun/factura.php'),
(386, 'admin', '18:51:41', '2015-09-26', '/autos/comun/factura.php'),
(387, 'admin', '18:52:32', '2015-09-26', '/autos/comun/factura.php'),
(388, 'admin', '18:52:50', '2015-09-26', '/autos/comun/factura.php'),
(389, 'admin', '18:59:06', '2015-09-26', '/autos/comun/factura.php'),
(390, 'admin', '19:00:18', '2015-09-26', '/autos/comun/factura.php'),
(391, 'admin', '19:00:23', '2015-09-26', '/autos/comun/factura.php'),
(392, 'admin', '19:01:23', '2015-09-26', '/autos/comun/factura.php'),
(393, 'admin', '19:01:30', '2015-09-26', '/autos/comun/factura.php'),
(394, 'admin', '19:02:40', '2015-09-26', '/autos/comun/factura.php'),
(395, 'admin', '19:02:44', '2015-09-26', '/autos/comun/factura.php'),
(396, 'admin', '19:03:15', '2015-09-26', '/autos/comun/factura.php'),
(397, 'admin', '19:03:21', '2015-09-26', '/autos/comun/factura.php'),
(398, 'admin', '19:04:24', '2015-09-26', '/autos/comun/factura.php'),
(399, 'admin', '19:04:55', '2015-09-26', '/autos/comun/factura.php'),
(400, 'admin', '19:04:58', '2015-09-26', '/autos/comun/factura.php'),
(401, 'admin', '19:05:05', '2015-09-26', '/autos/comun/factura.php'),
(402, 'admin', '19:05:05', '2015-09-26', '/autos/comun/factura.php'),
(403, 'admin', '19:05:05', '2015-09-26', '/autos/comun/factura.php'),
(404, 'admin', '19:06:26', '2015-09-26', '/autos/comun/factura.php'),
(405, 'admin', '19:08:05', '2015-09-26', '/autos/comun/factura.php'),
(406, 'admin', '19:09:22', '2015-09-26', '/autos/comun/factura.php'),
(407, 'admin', '19:10:26', '2015-09-26', '/autos/comun/factura.php'),
(408, 'admin', '19:10:53', '2015-09-26', '/autos/comun/factura.php'),
(409, 'admin', '19:11:02', '2015-09-26', '/autos/comun/factura.php'),
(410, 'admin', '19:13:02', '2015-09-26', '/autos/comun/factura.php'),
(411, 'admin', '19:14:38', '2015-09-26', '/autos/comun/factura.php'),
(412, 'admin', '19:15:21', '2015-09-26', '/autos/comun/factura.php'),
(413, 'admin', '19:15:48', '2015-09-26', '/autos/comun/factura.php'),
(414, 'admin', '19:16:26', '2015-09-26', '/autos/comun/factura.php'),
(415, 'admin', '19:18:26', '2015-09-26', '/autos/comun/factura.php'),
(416, 'admin', '19:19:13', '2015-09-26', '/autos/comun/factura.php'),
(417, 'admin', '19:21:21', '2015-09-26', '/autos/comun/factura.php'),
(418, 'admin', '19:36:11', '2015-09-26', '/autos/comun/factura.php'),
(419, 'admin', '19:39:51', '2015-09-26', '/autos/administracion/estado_factura.php'),
(420, 'admin', '19:52:51', '2015-09-26', '/autos/comun/factura.php'),
(421, 'admin', '19:56:39', '2015-09-26', '/autos/comun/factura.php'),
(422, 'admin', '19:56:45', '2015-09-26', '/autos/comun/factura.php'),
(423, 'admin', '19:57:31', '2015-09-26', '/autos/comun/factura.php'),
(424, 'admin', '19:59:52', '2015-09-26', '/autos/comun/factura.php'),
(425, 'admin', '20:01:17', '2015-09-26', '/autos/comun/factura.php'),
(426, 'admin', '20:01:45', '2015-09-26', '/autos/comun/factura.php'),
(427, 'admin', '20:01:54', '2015-09-26', '/autos/comun/factura.php'),
(428, 'admin', '20:02:35', '2015-09-26', '/autos/comun/factura.php'),
(429, 'admin', '20:02:55', '2015-09-26', '/autos/comun/factura.php'),
(430, 'admin', '20:04:44', '2015-09-26', '/autos/comun/factura.php'),
(431, '', '22:42:27', '2015-09-26', '/autos/comun/factura.php'),
(432, '', '22:50:47', '2015-09-26', '/autos/comun/factura.php'),
(433, '', '22:51:58', '2015-09-26', '/autos/comun/factura.php'),
(434, '', '22:52:11', '2015-09-26', '/autos/comun/factura.php'),
(435, '', '23:00:35', '2015-09-26', '/autos/comun/factura.php'),
(436, '', '23:01:32', '2015-09-26', '/autos/comun/factura.php'),
(437, '', '23:01:36', '2015-09-26', '/autos/comun/factura.php'),
(438, '', '23:02:24', '2015-09-26', '/autos/comun/factura.php'),
(439, '', '23:02:26', '2015-09-26', '/autos/comun/factura.php'),
(440, '', '23:02:27', '2015-09-26', '/autos/comun/factura.php'),
(441, '', '23:02:27', '2015-09-26', '/autos/comun/factura.php'),
(442, '', '23:02:51', '2015-09-26', '/autos/comun/factura.php'),
(443, '', '23:04:31', '2015-09-26', '/autos/comun/factura.php'),
(444, '', '23:04:44', '2015-09-26', '/autos/comun/factura.php'),
(445, '', '23:05:27', '2015-09-26', '/autos/comun/factura.php'),
(446, '', '23:09:27', '2015-09-26', '/autos/comun/factura.php'),
(447, '', '23:10:00', '2015-09-26', '/autos/comun/factura.php'),
(448, '', '23:10:03', '2015-09-26', '/autos/comun/factura.php'),
(449, '', '23:10:05', '2015-09-26', '/autos/comun/factura.php'),
(450, '', '23:10:05', '2015-09-26', '/autos/comun/factura.php'),
(451, '', '23:10:09', '2015-09-26', '/autos/comun/factura.php'),
(452, '', '23:11:38', '2015-09-26', '/autos/comun/factura.php'),
(453, '', '23:12:10', '2015-09-26', '/autos/comun/factura.php'),
(454, '', '23:12:12', '2015-09-26', '/autos/comun/factura.php'),
(455, '', '23:12:16', '2015-09-26', '/autos/comun/factura.php'),
(456, '', '23:12:48', '2015-09-26', '/autos/comun/factura.php'),
(457, '', '23:13:16', '2015-09-26', '/autos/comun/factura.php'),
(458, '', '23:13:34', '2015-09-26', '/autos/comun/factura.php'),
(459, '', '23:13:36', '2015-09-26', '/autos/comun/factura.php'),
(460, '', '23:13:53', '2015-09-26', '/autos/comun/factura.php'),
(461, '', '23:15:30', '2015-09-26', '/autos/comun/factura.php'),
(462, '', '23:15:34', '2015-09-26', '/autos/comun/factura.php'),
(463, '', '23:15:45', '2015-09-26', '/autos/comun/factura.php'),
(464, '', '23:15:52', '2015-09-26', '/autos/comun/factura.php'),
(465, '', '23:15:58', '2015-09-26', '/autos/comun/factura.php'),
(466, '', '23:16:11', '2015-09-26', '/autos/comun/factura.php'),
(467, '', '23:17:26', '2015-09-26', '/autos/comun/factura.php'),
(468, '', '23:17:54', '2015-09-26', '/autos/comun/factura.php'),
(469, '', '23:18:14', '2015-09-26', '/autos/comun/factura.php'),
(470, '', '23:18:45', '2015-09-26', '/autos/comun/factura.php'),
(471, '', '23:19:24', '2015-09-26', '/autos/comun/factura.php'),
(472, '', '23:19:32', '2015-09-26', '/autos/comun/factura.php'),
(473, '', '23:22:46', '2015-09-26', '/autos/comun/factura.php'),
(474, '', '23:25:27', '2015-09-26', '/autos/comun/factura.php'),
(475, '', '23:29:37', '2015-09-26', '/autos/comun/factura.php'),
(476, '', '23:30:25', '2015-09-26', '/autos/comun/factura.php'),
(477, '', '23:30:29', '2015-09-26', '/autos/comun/factura.php'),
(478, '', '23:30:58', '2015-09-26', '/autos/comun/factura.php'),
(479, '', '23:32:27', '2015-09-26', '/autos/comun/factura.php'),
(480, '', '23:32:59', '2015-09-26', '/autos/comun/factura.php'),
(481, '', '23:33:31', '2015-09-26', '/autos/comun/factura.php'),
(482, '', '23:33:45', '2015-09-26', '/autos/comun/factura.php'),
(483, '', '23:34:06', '2015-09-26', '/autos/comun/factura.php'),
(484, '', '23:34:34', '2015-09-26', '/autos/comun/factura.php'),
(485, '', '23:35:31', '2015-09-26', '/autos/comun/factura.php'),
(486, '', '23:35:37', '2015-09-26', '/autos/comun/factura.php'),
(487, '', '23:36:16', '2015-09-26', '/autos/comun/factura.php'),
(488, '', '23:37:06', '2015-09-26', '/autos/comun/factura.php'),
(489, '', '23:38:09', '2015-09-26', '/autos/comun/factura.php'),
(490, '', '23:38:17', '2015-09-26', '/autos/comun/factura.php'),
(491, '', '23:38:24', '2015-09-26', '/autos/comun/factura.php'),
(492, '', '23:38:29', '2015-09-26', '/autos/comun/factura.php'),
(493, '', '23:38:35', '2015-09-26', '/autos/comun/factura.php'),
(494, '', '23:39:52', '2015-09-26', '/autos/comun/factura.php'),
(495, '', '23:40:18', '2015-09-26', '/autos/comun/factura.php'),
(496, '', '23:40:24', '2015-09-26', '/autos/comun/factura.php'),
(497, '', '23:40:39', '2015-09-26', '/autos/comun/factura.php'),
(498, '', '23:40:44', '2015-09-26', '/autos/comun/factura.php'),
(499, '', '23:42:10', '2015-09-26', '/autos/comun/factura.php'),
(500, '', '23:43:15', '2015-09-26', '/autos/comun/factura.php'),
(501, '', '00:04:08', '2015-09-27', '/autos/comun/factura.php'),
(502, '', '00:04:24', '2015-09-27', '/autos/comun/factura.php'),
(503, '', '00:04:45', '2015-09-27', '/autos/comun/factura.php'),
(504, '', '00:04:48', '2015-09-27', '/autos/comun/factura.php'),
(505, '', '00:04:51', '2015-09-27', '/autos/comun/factura.php'),
(506, '', '00:05:30', '2015-09-27', '/autos/comun/factura.php'),
(507, '', '00:05:32', '2015-09-27', '/autos/comun/factura.php'),
(508, '', '00:12:43', '2015-09-27', '/autos/comun/factura.php'),
(509, '', '00:12:49', '2015-09-27', '/autos/comun/factura.php'),
(510, '', '00:16:16', '2015-09-27', '/autos/comun/factura.php'),
(511, '', '00:17:15', '2015-09-27', '/autos/comun/factura.php'),
(512, '', '00:17:42', '2015-09-27', '/autos/comun/factura.php'),
(513, '', '00:21:35', '2015-09-27', '/autos/comun/factura.php'),
(514, '', '00:24:23', '2015-09-27', '/autos/comun/factura.php'),
(515, '', '00:25:56', '2015-09-27', '/autos/comun/factura.php'),
(516, '', '00:33:15', '2015-09-27', '/autos/comun/factura.php'),
(517, '', '00:34:43', '2015-09-27', '/autos/comun/factura.php'),
(518, '', '00:35:04', '2015-09-27', '/autos/comun/factura.php'),
(519, '', '00:37:12', '2015-09-27', '/autos/comun/factura.php'),
(520, '', '00:38:52', '2015-09-27', '/autos/comun/factura.php'),
(521, '', '00:39:11', '2015-09-27', '/autos/comun/factura.php'),
(522, '', '00:41:39', '2015-09-27', '/autos/comun/factura.php'),
(523, '', '00:44:25', '2015-09-27', '/autos/comun/factura.php'),
(524, '', '00:45:32', '2015-09-27', '/autos/comun/factura.php'),
(525, '', '00:45:41', '2015-09-27', '/autos/comun/factura.php'),
(526, '', '00:46:52', '2015-09-27', '/autos/comun/factura.php'),
(527, '', '00:47:44', '2015-09-27', '/autos/comun/factura.php'),
(528, '', '00:47:52', '2015-09-27', '/autos/comun/factura.php'),
(529, '', '00:48:15', '2015-09-27', '/autos/comun/factura.php'),
(530, '', '00:48:18', '2015-09-27', '/autos/comun/factura.php'),
(531, '', '00:48:20', '2015-09-27', '/autos/comun/factura.php'),
(532, 'admin', '00:50:06', '2015-09-27', '/autos/administracion/admin.php'),
(533, 'admin', '00:50:09', '2015-09-27', '/autos/administracion/estado_factura.php'),
(534, 'admin', '00:50:44', '2015-09-27', '/autos/administracion/estado_factura.php'),
(535, 'admin', '00:50:53', '2015-09-27', '/autos/administracion/estado_factura.php'),
(536, 'admin', '00:50:59', '2015-09-27', '/autos/administracion/estado_factura.php'),
(537, 'admin', '00:51:11', '2015-09-27', '/autos/comun/factura.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
`id_marca` int(11) NOT NULL,
  `nom_marca` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nom_marca`) VALUES
(1, 'Audi'),
(2, 'Peugeot'),
(3, 'Citroen'),
(4, 'Toyota'),
(5, 'Chevrolet'),
(6, 'BMW'),
(7, 'Mercedez Benz'),
(8, 'Great Wall'),
(9, 'Honda'),
(10, 'Nissan'),
(11, 'Suzuki'),
(12, 'Mitsubishi'),
(13, 'KIA'),
(14, 'Hyundai'),
(15, 'Lincoln'),
(16, 'Lifan'),
(17, 'Volvo'),
(18, 'FAW'),
(19, 'Jeep'),
(20, 'Hummer'),
(21, 'Volskwagen'),
(22, 'Lada'),
(23, 'Fiat'),
(24, 'General Motors'),
(25, 'Dodge');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
`id_modelo` int(11) NOT NULL,
  `nom_modelo` varchar(30) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `nom_modelo`, `id_marca`) VALUES
(1, 'A1', 1),
(2, 'TT Rouster', 1),
(3, '206', 2),
(4, '207', 2),
(5, '208', 2),
(6, '208 GTI', 2),
(7, '308 GT', 2),
(8, '508 RHX', 2),
(9, '301', 2),
(10, '508', 2),
(11, '2008', 2),
(12, '3008', 2),
(13, 'Xara Picasso', 3),
(14, 'C Zero', 3),
(15, 'C1', 3),
(16, 'C3', 3),
(17, 'C4', 3),
(18, 'C4 Cactus', 3),
(19, 'Yaris', 4),
(20, 'Yaris Sport', 4),
(21, 'Corolla', 4),
(22, 'Auris', 4),
(23, 'Camri', 4),
(24, 'FT 86', 4),
(25, 'Spark', 5),
(26, 'Spark GT', 5),
(27, 'Sail', 5),
(28, 'Sail Classic', 5),
(29, 'Aveo Sedan', 5),
(30, 'Aveo Hatchback', 5),
(31, 'Cruze 5', 5),
(32, 'Cruze Sedan', 5),
(33, 'Camaro Cupe', 5),
(34, 'Camaro Convertible', 5),
(35, 'Camaro ZL1', 5),
(36, 'Serie 3 Sedan', 6),
(37, 'CLC Kompressor', 7),
(38, 'VOLEXX C30', 8),
(39, 'Civic', 9),
(40, 'Platina', 10),
(41, 'Baleno', 11),
(42, 'Celerio', 11),
(43, 'Lancer', 12),
(44, 'RIO 5', 13),
(45, 'RIO', 13),
(46, 'Morning', 13),
(47, 'Cerato', 13),
(48, 'Velaster', 14),
(49, 'Elantra', 14),
(50, 'Tucson', 14),
(51, 'Navigator', 15),
(52, 'NKC', 15),
(53, '530', 16),
(54, 'XC90', 17),
(55, 'Oley', 18),
(56, 'Patriot', 19),
(57, 'Compass', 19),
(58, 'H2', 20),
(59, 'Golf', 21),
(60, 'Samara', 22),
(61, 'Palio', 23),
(62, 'Regal GC', 24),
(63, 'GMC Yucon', 24),
(64, 'Challenger', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id_usuario` int(11) NOT NULL,
  `nom_user` varchar(30) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `privilegio` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apepat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nom_user`, `pass`, `privilegio`, `nombre`, `apepat`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 'Rodrigo', 'Ruiz'),
(2, 'vendedor', '0407e8c8285ab85509ac2884025dcf42', 1, 'Jose', 'Jara'),
(4, 'zapotex', '5e0719e565ce9ae65fb3b5431d1e3409', 0, 'ROBERTO', 'GUINEO'),
(6, 'katy', '4cc419dd1c0fa93286b60bf3815a1e9c', 0, 'KATHERINE', 'KANOPKE'),
(7, 'hortencia', '533107c202fe579936fb59f9bde33e2e', 1, 'Hortencia', 'Avenda&ntilde;o Borquez'),
(8, 'dguineo', 'f143c111661f45660a286008af9f2240', 2, 'Daniela', 'Guineo Avenda&ntilde;o'),
(9, 'aavendano', '982950531a0ac6c5a2e6e4cc77a20fd2', 0, 'Andres', 'Avenda&ntilde;o Avenda&ntilde;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
  `id_vehiculo` varchar(50) NOT NULL,
  `id_modelo` int(11) DEFAULT NULL,
  `color_vehiculo` varchar(30) DEFAULT NULL,
  `precio_vehiculo` varchar(20) DEFAULT NULL,
  `tipo_vehiculo` varchar(30) DEFAULT NULL,
  `anno_vehiculo` varchar(4) DEFAULT NULL,
  `estado_vehiculo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `id_modelo`, `color_vehiculo`, `precio_vehiculo`, `tipo_vehiculo`, `anno_vehiculo`, `estado_vehiculo`) VALUES
('098765435678', 55, 'Rojo', '7.000.000', 'Automovil', '2016', 'Stock'),
('11111111', 58, 'Verde', '20.000.000', 'Automovil', '2016', 'Stock'),
('1566666', 51, 'Rojo', '10.000.000', 'Automovil', '2016', 'Stock'),
('222222', 46, 'amarillo', '5.000.000', 'Automovil', '2016', 'Reservado'),
('565656565', 33, 'Rojo', '15.000.000', 'Automovil', '2016', 'Stock'),
('656565', 28, 'gris', '7.000.000', 'Automovil', '2016', 'Reservado'),
('666777', 10, 'Rojo', '10.000.000', 'Automovil', '2016', 'Vendido'),
('666888', 20, 'Blanco', '12.000.000', 'Automovil', '2015', 'Vendido'),
('666999', 30, 'Azul', '11.000.000', 'Automovil', '2016', 'Stock'),
('7798989', 44, 'gris', '2.000.000', 'Automovil', '2016', 'Stock'),
('78868612', 38, 'Marron', '9.000.000', 'Automovil', '2016', 'Reservado'),
('798798123', 25, 'negro', '6.000.000', 'Automovil', '2016', 'Vendido'),
('876545678', 30, 'Rojo', '11.000.000', 'Automovil', '2016', 'Stock'),
('999990000', 54, 'rojo', '9.000.000', 'Automovil', '2016', 'Reservado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorio`
--
ALTER TABLE `accesorio`
 ADD PRIMARY KEY (`cod_accesorio`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
 ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`rut_cliente`);

--
-- Indices de la tabla `deta_accesorio`
--
ALTER TABLE `deta_accesorio`
 ADD PRIMARY KEY (`id_deta`), ADD KEY `cod_deta` (`cod_deta`), ADD KEY `cod_accesorio` (`cod_accesorio`);

--
-- Indices de la tabla `detalle_fac`
--
ALTER TABLE `detalle_fac`
 ADD PRIMARY KEY (`cod_deta`), ADD KEY `cod_factura` (`cod_factura`), ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
 ADD PRIMARY KEY (`rut_empresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
 ADD PRIMARY KEY (`cod_factura`), ADD KEY `rut_cliente` (`rut_cliente`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id_login`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
 ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
 ADD PRIMARY KEY (`id_modelo`), ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
 ADD PRIMARY KEY (`id_vehiculo`), ADD KEY `id_modelo` (`id_modelo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `deta_accesorio`
--
ALTER TABLE `deta_accesorio`
MODIFY `id_deta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `detalle_fac`
--
ALTER TABLE `detalle_fac`
MODIFY `cod_deta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=538;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `deta_accesorio`
--
ALTER TABLE `deta_accesorio`
ADD CONSTRAINT `deta_accesorio_ibfk_1` FOREIGN KEY (`cod_deta`) REFERENCES `detalle_fac` (`cod_deta`),
ADD CONSTRAINT `deta_accesorio_ibfk_2` FOREIGN KEY (`cod_accesorio`) REFERENCES `accesorio` (`cod_accesorio`);

--
-- Filtros para la tabla `detalle_fac`
--
ALTER TABLE `detalle_fac`
ADD CONSTRAINT `detalle_fac_ibfk_1` FOREIGN KEY (`cod_factura`) REFERENCES `factura` (`cod_factura`),
ADD CONSTRAINT `detalle_fac_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`rut_cliente`);

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`);
--
-- Base de datos: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE IF NOT EXISTS `pma__bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE IF NOT EXISTS `pma__column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__column_info`
--

INSERT INTO `pma__column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'autos', 'vehiculo', 'precio_vehiculo', '', '', '_', ''),
(2, 'autos', 'vehiculo', 'anno_vehiculo', '', '', '_', ''),
(3, 'autos', 'deta_accesorio', 'estado', '', '', '_', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma__designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE IF NOT EXISTS `pma__history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"autos","table":"accesorio"},{"db":"autos","table":"deta_accesorio"},{"db":"autos","table":"detalle_fac"},{"db":"autos","table":"factura"},{"db":"autos","table":"vehiculo"},{"db":"autos","table":"modelo"},{"db":"autos","table":"marca"},{"db":"autos","table":"cliente"},{"db":"autos","table":"login"},{"db":"autos","table":"usuarios"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-09-05 23:08:08', '{"lang":"es","collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE IF NOT EXISTS `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE IF NOT EXISTS `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_coords`
--
ALTER TABLE `pma__designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
 ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
 ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
