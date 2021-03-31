-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2021 a las 21:08:44
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbpediatria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add area', 7, 'add_area'),
(26, 'Can change area', 7, 'change_area'),
(27, 'Can delete area', 7, 'delete_area'),
(28, 'Can view area', 7, 'view_area'),
(29, 'Can add clasificacion', 8, 'add_clasificacion'),
(30, 'Can change clasificacion', 8, 'change_clasificacion'),
(31, 'Can delete clasificacion', 8, 'delete_clasificacion'),
(32, 'Can view clasificacion', 8, 'view_clasificacion'),
(33, 'Can add grupo alimento', 9, 'add_grupoalimento'),
(34, 'Can change grupo alimento', 9, 'change_grupoalimento'),
(35, 'Can delete grupo alimento', 9, 'delete_grupoalimento'),
(36, 'Can view grupo alimento', 9, 'view_grupoalimento'),
(37, 'Can add sub categoria', 10, 'add_subcategoria'),
(38, 'Can change sub categoria', 10, 'change_subcategoria'),
(39, 'Can delete sub categoria', 10, 'delete_subcategoria'),
(40, 'Can view sub categoria', 10, 'view_subcategoria'),
(41, 'Can add tipo catalogo', 11, 'add_tipocatalogo'),
(42, 'Can change tipo catalogo', 11, 'change_tipocatalogo'),
(43, 'Can delete tipo catalogo', 11, 'delete_tipocatalogo'),
(44, 'Can view tipo catalogo', 11, 'view_tipocatalogo'),
(45, 'Can add tipo comensal', 12, 'add_tipocomensal'),
(46, 'Can change tipo comensal', 12, 'change_tipocomensal'),
(47, 'Can delete tipo comensal', 12, 'delete_tipocomensal'),
(48, 'Can view tipo comensal', 12, 'view_tipocomensal'),
(49, 'Can add tipo dieta', 13, 'add_tipodieta'),
(50, 'Can change tipo dieta', 13, 'change_tipodieta'),
(51, 'Can delete tipo dieta', 13, 'delete_tipodieta'),
(52, 'Can view tipo dieta', 13, 'view_tipodieta'),
(53, 'Can add tipo servicio', 14, 'add_tiposervicio'),
(54, 'Can change tipo servicio', 14, 'change_tiposervicio'),
(55, 'Can delete tipo servicio', 14, 'delete_tiposervicio'),
(56, 'Can view tipo servicio', 14, 'view_tiposervicio'),
(57, 'Can add unidad medida', 15, 'add_unidadmedida'),
(58, 'Can change unidad medida', 15, 'change_unidadmedida'),
(59, 'Can delete unidad medida', 15, 'delete_unidadmedida'),
(60, 'Can view unidad medida', 15, 'view_unidadmedida'),
(61, 'Can add Producto', 16, 'add_producto'),
(62, 'Can change Producto', 16, 'change_producto'),
(63, 'Can delete Producto', 16, 'delete_producto'),
(64, 'Can view Producto', 16, 'view_producto'),
(65, 'Can add empleado', 17, 'add_empleado'),
(66, 'Can change empleado', 17, 'change_empleado'),
(67, 'Can delete empleado', 17, 'delete_empleado'),
(68, 'Can view empleado', 17, 'view_empleado'),
(69, 'Can add categoria', 18, 'add_categoria'),
(70, 'Can change categoria', 18, 'change_categoria'),
(71, 'Can delete categoria', 18, 'delete_categoria'),
(72, 'Can view categoria', 18, 'view_categoria'),
(73, 'Can add articulo', 19, 'add_articulo'),
(74, 'Can change articulo', 19, 'change_articulo'),
(75, 'Can delete articulo', 19, 'delete_articulo'),
(76, 'Can view articulo', 19, 'view_articulo'),
(77, 'Can add cie10', 20, 'add_cie10'),
(78, 'Can change cie10', 20, 'change_cie10'),
(79, 'Can delete cie10', 20, 'delete_cie10'),
(80, 'Can view cie10', 20, 'view_cie10'),
(81, 'Can add cie9', 21, 'add_cie9'),
(82, 'Can change cie9', 21, 'change_cie9'),
(83, 'Can delete cie9', 21, 'delete_cie9'),
(84, 'Can view cie9', 21, 'view_cie9'),
(85, 'Can add Encabezado Menú', 22, 'add_menu'),
(86, 'Can change Encabezado Menú', 22, 'change_menu'),
(87, 'Can delete Encabezado Menú', 22, 'delete_menu'),
(88, 'Can view Encabezado Menú', 22, 'view_menu'),
(89, 'Can add Encabezado Receta', 23, 'add_receta'),
(90, 'Can change Encabezado Receta', 23, 'change_receta'),
(91, 'Can delete Encabezado Receta', 23, 'delete_receta'),
(92, 'Can view Encabezado Receta', 23, 'view_receta'),
(93, 'Can add Detalle Receta', 24, 'add_recetadet'),
(94, 'Can change Detalle Receta', 24, 'change_recetadet'),
(95, 'Can delete Detalle Receta', 24, 'delete_recetadet'),
(96, 'Can view Detalle Receta', 24, 'view_recetadet'),
(97, 'Can add Detalle Menú', 25, 'add_menudet'),
(98, 'Can change Detalle Menú', 25, 'change_menudet'),
(99, 'Can delete Detalle Menú', 25, 'delete_menudet'),
(100, 'Can view Detalle Menú', 25, 'view_menudet'),
(101, 'Can add encuesta pacientes', 26, 'add_encuestapacientes'),
(102, 'Can change encuesta pacientes', 26, 'change_encuestapacientes'),
(103, 'Can delete encuesta pacientes', 26, 'delete_encuestapacientes'),
(104, 'Can view encuesta pacientes', 26, 'view_encuestapacientes'),
(105, 'Can add encuesta medicos', 27, 'add_encuestamedicos'),
(106, 'Can change encuesta medicos', 27, 'change_encuestamedicos'),
(107, 'Can delete encuesta medicos', 27, 'delete_encuestamedicos'),
(108, 'Can view encuesta medicos', 27, 'view_encuestamedicos'),
(109, 'Can add tipo estatus', 28, 'add_tipoestatus'),
(110, 'Can change tipo estatus', 28, 'change_tipoestatus'),
(111, 'Can delete tipo estatus', 28, 'delete_tipoestatus'),
(112, 'Can view tipo estatus', 28, 'view_tipoestatus'),
(113, 'Can add tipo registro', 29, 'add_tiporegistro'),
(114, 'Can change tipo registro', 29, 'change_tiporegistro'),
(115, 'Can delete tipo registro', 29, 'delete_tiporegistro'),
(116, 'Can view tipo registro', 29, 'view_tiporegistro'),
(117, 'Can add procedencia paciente', 30, 'add_procedenciapaciente'),
(118, 'Can change procedencia paciente', 30, 'change_procedenciapaciente'),
(119, 'Can delete procedencia paciente', 30, 'delete_procedenciapaciente'),
(120, 'Can view procedencia paciente', 30, 'view_procedenciapaciente'),
(121, 'Can add registro', 31, 'add_registro'),
(122, 'Can change registro', 31, 'change_registro'),
(123, 'Can delete registro', 31, 'delete_registro'),
(124, 'Can view registro', 31, 'view_registro'),
(125, 'Can add programa', 32, 'add_programa'),
(126, 'Can change programa', 32, 'change_programa'),
(127, 'Can delete programa', 32, 'delete_programa'),
(128, 'Can view programa', 32, 'view_programa'),
(129, 'Can add tipo programa', 33, 'add_tipoprograma'),
(130, 'Can change tipo programa', 33, 'change_tipoprograma'),
(131, 'Can delete tipo programa', 33, 'delete_tipoprograma'),
(132, 'Can view tipo programa', 33, 'view_tipoprograma'),
(133, 'Can add entidad federativa', 34, 'add_entidadfederativa'),
(134, 'Can change entidad federativa', 34, 'change_entidadfederativa'),
(135, 'Can delete entidad federativa', 34, 'delete_entidadfederativa'),
(136, 'Can view entidad federativa', 34, 'view_entidadfederativa'),
(137, 'Can add plaza', 35, 'add_plaza'),
(138, 'Can change plaza', 35, 'change_plaza'),
(139, 'Can delete plaza', 35, 'delete_plaza'),
(140, 'Can view plaza', 35, 'view_plaza'),
(141, 'Can add puesto', 36, 'add_puesto'),
(142, 'Can change puesto', 36, 'change_puesto'),
(143, 'Can delete puesto', 36, 'delete_puesto'),
(144, 'Can view puesto', 36, 'view_puesto'),
(145, 'Can add empleados seguro popular', 37, 'add_empleadosseguropopular'),
(146, 'Can change empleados seguro popular', 37, 'change_empleadosseguropopular'),
(147, 'Can delete empleados seguro popular', 37, 'delete_empleadosseguropopular'),
(148, 'Can view empleados seguro popular', 37, 'view_empleadosseguropopular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$RxRVwjiQGFNF$kQIaOSLfqw2xIRancBIYTLTXGli2EA9TYzkORXnMNJ4=', '2021-03-30 14:20:51.666386', 1, 'lmerino', '', '', '', 1, 1, '2020-11-30 14:59:25.597312'),
(2, 'pbkdf2_sha256$216000$dzDXyPHvI8mc$zp9g9QIZO0u0iIsb8v16/gzCuMK4DfYfzFbdJa6v9hU=', '2021-02-19 19:45:35.713921', 0, 'dietetica', 'Usuario', 'Dietetica', '', 0, 1, '2020-11-30 18:05:40.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 33),
(2, 2, 34),
(3, 2, 36),
(4, 2, 45),
(5, 2, 46),
(6, 2, 48),
(7, 2, 49),
(8, 2, 50),
(9, 2, 52),
(32, 2, 53),
(33, 2, 54),
(12, 2, 56),
(13, 2, 57),
(14, 2, 58),
(15, 2, 60),
(16, 2, 62),
(17, 2, 64),
(18, 2, 85),
(19, 2, 86),
(20, 2, 88),
(21, 2, 89),
(22, 2, 90),
(23, 2, 92),
(24, 2, 93),
(25, 2, 94),
(26, 2, 95),
(27, 2, 96),
(28, 2, 97),
(29, 2, 98),
(30, 2, 99),
(31, 2, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_area`
--

CREATE TABLE `catalogos_area` (
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nombre_corto` varchar(100) DEFAULT NULL,
  `ruta_oficios` varchar(50) DEFAULT NULL,
  `ruta_acuses` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_area`
--

INSERT INTO `catalogos_area` (`habilitado`, `created`, `updated`, `clave`, `nombre`, `nombre_corto`, `ruta_oficios`, `ruta_acuses`) VALUES
(1, NULL, '2020-11-27', '01', 'DIRECCION MEDICA', 'DM', 'OFICIOSDM', 'ACUSESDM'),
(1, NULL, NULL, '011', 'SUBDIRECCION DE MEDICINA', 'SM', NULL, NULL),
(1, NULL, NULL, '0111', 'DEPARTAMENTO DE MEDICINA INTERNA', 'DMI', NULL, NULL),
(1, NULL, NULL, '01111', 'SERVICIO DE ALERGIA', 'SA', NULL, NULL),
(1, NULL, NULL, '01112', 'SERVICIO DE CARDIOLOGIA', 'SC', NULL, NULL),
(1, NULL, NULL, '01113', 'CLINICA DE ATENCION INTEGRAL AL NIÑO MALTRATADO', 'CAINM', NULL, NULL),
(1, NULL, NULL, '01114', 'SERVICIO DE INMUNOLOGIA', 'SI', NULL, NULL),
(1, NULL, NULL, '01115', 'SERVICIO DE NEUROLOGIA', 'SN', NULL, NULL),
(1, NULL, NULL, '0112', 'DEPARTAMENTO DE INFECTOLOGIA', 'DI', NULL, NULL),
(1, NULL, NULL, '01121', 'SERVICIO DE PARASITOLOGIA', 'SP', NULL, NULL),
(1, NULL, NULL, '0113', 'DEPARTAMENTO DE ESPECIALIDADES MEDICAS', 'DEM', NULL, NULL),
(1, NULL, NULL, '01131', 'SERVICIO DE DERMATOLOGIA', 'SD', NULL, NULL),
(1, NULL, NULL, '01132', 'SERVICIO DE ENDOCRINOLOGIA', 'SE', NULL, NULL),
(1, NULL, NULL, '01133', 'SERVICIO DE GASTROENTEROLOGIA Y NUTRICION', 'SGN', NULL, NULL),
(1, NULL, NULL, '01134', 'SERVICIO DE SALUD REPRODUCTIVA', 'SSR', NULL, NULL),
(1, NULL, NULL, '0114', 'DEPARTAMENTO DE NEFROLOGIA', 'DN', NULL, NULL),
(1, NULL, NULL, '01201', 'SERVICIO DE CIRUGIA CARDIOVASCULAR', 'SCC', NULL, NULL),
(1, NULL, NULL, '01202', 'SERVICIO DE CIRUGIA ONCOLOGICA', 'SCO', NULL, NULL),
(1, NULL, NULL, '01203', 'SERVICIO DE CIRUGIA PLASTICA Y RECONSTRUCTIVA', 'SCPR', NULL, NULL),
(1, NULL, NULL, '01205', 'SERVICIO DE OTORRINOLARINGOLOGIA', 'SO', NULL, NULL),
(1, NULL, NULL, '01206', 'SERVICIO DE UROLOGIA', 'SU', NULL, NULL),
(1, NULL, NULL, '01207', 'SERVICIO DE COMUNICACION HUMANA', 'SCH', NULL, NULL),
(1, NULL, NULL, '0121', 'DEPARTAMENTO DE NEUMOLOGIA Y CIRUGIA DEL TORAX', 'DNCT', NULL, NULL),
(1, NULL, NULL, '0122', 'DEPARTAMENTO DE CIRUGIA GENERAL', 'DCG', NULL, NULL),
(1, NULL, NULL, '0123', 'DEPARTAMENTO DE NEUROCIRUGIA', 'DNC', NULL, NULL),
(1, NULL, NULL, '0124', 'DEPARTAMENTO DE OFTAMOLOGIA', 'DO', NULL, NULL),
(1, NULL, NULL, '0126', 'DEPARTAMENTO DE ANESTESIOLOGIA', 'DA', NULL, NULL),
(1, NULL, NULL, '0127', 'JEFATURA DE DIVISION DE CIRUGIA CARDIOVASCULAR', 'JDCC', NULL, NULL),
(1, NULL, NULL, '01271', 'LABORATORIO DE ECOCARDIOGRAFIA', 'LE', NULL, NULL),
(1, NULL, NULL, '013', 'SUBDIRECCION DE SERVICIOS AUXILIARES DE DIAGNOSTICO Y TRATAMIENTO', 'SADyTRA', NULL, NULL),
(1, NULL, NULL, '0131', 'DEPARTAMENTO DE ANALISIS CLINICOS Y ESTUDIOS ESPECIALES', 'DACEE', NULL, NULL),
(1, NULL, NULL, '01311', 'LABORATORIO DE BACTERIOLOGIA', 'LB', NULL, NULL),
(1, NULL, NULL, '01312', 'LABORATORIO DE BIOQUIMICA Y ENDOCRINOLOGIA', 'LBE', NULL, NULL),
(1, NULL, NULL, '01313', 'LABORATORIO DE HEMATO ONCOLOGIA', 'LHO', NULL, NULL),
(1, NULL, NULL, '01314', 'LABORATORIO DE HISTOCOMPATIBILIDAD Y NEFROLOGIA', 'LHN', NULL, NULL),
(1, NULL, NULL, '01315', 'LABORATORIO DE INMUNOLOGIA Y ALERGIA', 'LIA', NULL, NULL),
(1, NULL, NULL, '01316', 'LABORATORIO DE PARASITOLOGIA Y MICOLOGIA', 'LPM', NULL, NULL),
(1, NULL, NULL, '01317', 'LABORATORIO DE QUIMICA CLINICA', 'LQC', NULL, NULL),
(1, NULL, NULL, '01318', 'LABORATORIO DE VIROLOGIA', 'LV', NULL, NULL),
(1, NULL, NULL, '01319', 'SERVICIO DE TOMA DE PRODUCTOS', 'STP', NULL, NULL),
(1, NULL, NULL, '0132', 'DEPARTAMENTO DE ANATOMIA PATOLOGICA', 'DAP', NULL, NULL),
(1, NULL, NULL, '01320', 'LABORATORIO DE INMUNOGENETICA MOLECULAR', 'LIM', NULL, NULL),
(1, NULL, NULL, '01321', 'SERVICIO DE PATOLOGIA QUIRURGICA', 'SPQ', NULL, NULL),
(1, NULL, NULL, '01322', 'SERVICIO DE PATOLOGIA POSTMORTEM', 'SPP', NULL, NULL),
(1, NULL, NULL, '0133', 'JEFATURA DE DIVISION DE RADIOLOGIA E IMAGEN', 'JDRI', NULL, NULL),
(1, NULL, NULL, '01331', 'SERVICIO DE TOMOGRAFIA AXIAL COMPUTARIZADA', 'STAC', NULL, NULL),
(1, NULL, NULL, '01332', 'SERVICIO DE ULTRASONOGRAFIA', 'SU', NULL, NULL),
(1, NULL, NULL, '01333', 'SERVICIO DE MEDICINA NUCLEAR', 'SMN', NULL, NULL),
(1, NULL, NULL, '0134', 'DEPARTAMENTO DE BANCO DE SANGRE', 'DBS', NULL, NULL),
(1, NULL, NULL, '01341', 'LABORATORIO DE RADIOINMUNOANALISIS', 'LR', NULL, NULL),
(1, NULL, NULL, '014', 'SUBDIRECCION DE CONSULTA EXTERNA', 'SCE', NULL, NULL),
(1, NULL, NULL, '01401', 'SERVICIO DE REHABILITACION', 'SR', NULL, NULL),
(1, NULL, NULL, '01402', 'SERVICIO DE RELACIONES HOSPITALARIAS', 'SRH', NULL, NULL),
(1, NULL, NULL, '01403', 'SERVICIO DE SALUD MENTAL', 'SSM', NULL, NULL),
(1, NULL, NULL, '01404', 'JEFATURA DE DIVISION DE DESARROLLO Y ENLACE COMUNITARIO', 'JDDEC', NULL, NULL),
(1, NULL, NULL, '0141', 'DEPARTAMENTO DE TRABAJO SOCIAL', 'DTS', NULL, NULL),
(1, NULL, NULL, '0142', 'DEPARTAMENTO DE CONSULTA EXTERNA', 'DCE', NULL, NULL),
(1, NULL, NULL, '01421', 'SERVICIO DE COORDINACION INTERINSTITUCIONAL', 'SCI', NULL, NULL),
(1, NULL, NULL, '0143', 'DEPARTAMENTO DE MEDICINA COMUNITARIA', 'DMC', NULL, NULL),
(1, NULL, NULL, '01431', 'SERVICIO DE EPIDEMIOLOGIA', 'SE', NULL, NULL),
(1, NULL, NULL, '01432', 'SERVICIO DE MEDICINA PREVENTIVA', 'SMP', NULL, NULL),
(1, NULL, NULL, '0144', 'DEPARTAMENTO DE ARCHIVO CLINICO', 'DAC', NULL, NULL),
(1, NULL, NULL, '01441', 'SERVICIO DE CONTROL ESTADISTICO', 'SCE', NULL, NULL),
(1, NULL, NULL, '015', 'SUBDIRECCION DE MEDICINA CRITICA', 'SMC', NULL, NULL),
(1, NULL, NULL, '01501', 'SERVICIO DE INHALOTERAPIA', 'SI', NULL, NULL),
(1, NULL, NULL, '0151', 'DEPARTAMENTO DE TERAPIA INTENSIVA', 'DTI', NULL, NULL),
(1, NULL, NULL, '01511', 'SERVICIO DE TERAPIA INTERMEDIA', 'STI', NULL, NULL),
(1, NULL, NULL, '01512', 'UNIDAD DE SOPORTE NUTRICIO', 'USN', NULL, NULL),
(1, NULL, NULL, '0152', 'DEPARTAMENTO DE URGENCIAS', 'DU', NULL, NULL),
(1, NULL, NULL, '01521', 'SERVICIO DE HOSPITALIZACION DE URGENCIAS', 'SHU', NULL, NULL),
(1, NULL, NULL, '01522', 'PREHOSPITALIZACION SERVICIO DE', 'SP', NULL, NULL),
(1, NULL, NULL, '01523', 'SERVICIO DE VALORACION Y CONSULTA EXTERNA DE URGENCIAS', 'SVCEU', NULL, NULL),
(1, NULL, NULL, '0153', 'DEPARTAMENTO DE NEONATOLOGIA', 'DN', NULL, NULL),
(1, NULL, NULL, '016', 'SUBDIRECCION DE HEMATO-ONCOLOGIA', 'SHO', NULL, NULL),
(1, NULL, NULL, '01601', 'SERVICIO DE HEMATOLOGIA', 'SH', NULL, NULL),
(1, NULL, NULL, '01602', 'SERVICIO DE ONCOLOGIA', 'SO', NULL, NULL),
(1, NULL, NULL, '01603', 'SERVICIO DE RADIOTERAPIA', 'SR', NULL, NULL),
(1, NULL, NULL, '01604', 'UNIDAD DE TRANSPLANTE DE CELULAS PROGENITORAS HEMOTOPOYETICAS', 'UTCPH', NULL, NULL),
(1, NULL, NULL, '017', 'SUBDIRECCION DE ENFERMERIA', 'SE', NULL, NULL),
(1, NULL, NULL, '02', 'DIRECCION DE INVESTIGACION', 'DI', NULL, NULL),
(1, NULL, NULL, '021', 'SUBDIRECCION DE INVESTIGACION MEDICA', 'SIM', NULL, NULL),
(1, NULL, NULL, '02101', 'UNIDAD DE INVESTIGACION CLINICA', 'UIC', NULL, NULL),
(1, NULL, NULL, '02102', 'LABORATORIO DE INVESTIGACION E INMUNODEFICIENCIAS', 'LII', NULL, NULL),
(1, NULL, NULL, '02103', 'LABORATORIO DE SEGUIMIENTO DEL NEURODESARROLLO', 'LSN', NULL, NULL),
(1, NULL, NULL, '0211', 'DEPARTAMENTO DE INVESTIGACION EN EPIDEMIOLOGIA', 'LIE', NULL, NULL),
(1, NULL, NULL, '02111', 'CENTRO DE INVESTIGACION TLALTIZAPAN', 'CIT', NULL, NULL),
(1, NULL, NULL, '0212', 'DEPARTAMENTO DE GENETICA HUMANA', 'DGH', NULL, NULL),
(1, NULL, NULL, '02121', 'LABORATORIO DE BIOLOGIA MOLECULAR', 'LBM', NULL, NULL),
(1, NULL, NULL, '02122', 'LABORATORIO DE CITOGENETICA', 'LC', NULL, NULL),
(1, NULL, NULL, '02123', 'LABORATORIO DE GENETICA Y CANCER', 'LGC', NULL, NULL),
(1, NULL, NULL, '0213', 'DEPARTAMENTO DE LA METODOLOGIA DE LA INVESTIGACION', 'DMI', NULL, NULL),
(1, NULL, NULL, '022', 'SUBDIRECCION DE MEDICINA EXPERIMENTAL', 'SME', NULL, NULL),
(1, NULL, NULL, '0221', 'LABORATORIO DE BACTERIOLOGIA EXPERIMENTAL', 'LBE', NULL, NULL),
(1, NULL, NULL, '02210', 'LABORATORIO DE ONCOLOGIA EXPERIMENTAL', 'LOE', NULL, NULL),
(1, NULL, NULL, '02211', 'LABORATORIO DE PARASITOLOGIA EXPERIMENTAL', 'LPE', NULL, NULL),
(1, NULL, NULL, '02212', 'LABORATORIO DE PATOLOGIA EXPERIMENTAL', 'LPE', NULL, NULL),
(1, NULL, NULL, '02213', 'LABORATORIO DE SEGUIMIENTO DEL NEURODESARROLLO', 'LSN', NULL, NULL),
(1, NULL, NULL, '02214', 'LABORATORIO DE TOXICOLOGIA GENETICA', 'LTG', NULL, NULL),
(1, NULL, NULL, '02215', 'BIOTERIO', 'BIOTERIO', NULL, NULL),
(1, NULL, NULL, '02216', 'LABORATORIO DE INMUNOLOGIA EXPERIMENTAL', 'LIE', NULL, NULL),
(1, NULL, NULL, '0222', 'LABORATORIO DE BIOQUIMICA GENETICA', 'LBG', NULL, NULL),
(1, NULL, NULL, '0223', 'LABORATORIO DE CIRUGIA EXPERIMENTAL', 'LCE', NULL, NULL),
(1, NULL, NULL, '0224', 'LABORATORIO DE FARMACOLOGIA', 'LF', NULL, NULL),
(1, NULL, NULL, '0225', 'LABORATORIO DE GENETICA DE LA NUTRICION', 'LGN', NULL, NULL),
(1, NULL, NULL, '0226', 'LABORATORIO DE BIOLOGÍA DE LA REPRODUCION', 'LBR', NULL, NULL),
(1, NULL, NULL, '0227', 'LABORATORIO DE MORFOLOGÍA CELULAR Y TISULAR', 'LMCT', NULL, NULL),
(1, NULL, NULL, '0228', 'LABORATORIO DE NEUROMORFOMETRIA', 'LN', NULL, NULL),
(1, NULL, NULL, '0229', 'LABORATORIO DE NEUROCIENCIAS', 'LN', NULL, NULL),
(1, NULL, NULL, '0230', 'UNIDAD DE INVESTIGACION E INMUNODEFICIENCIA', 'LII', NULL, NULL),
(1, NULL, NULL, '0231', 'LABORATORIO DE NUTRICION EXPERIMENTAL', 'LNE', NULL, NULL),
(1, NULL, NULL, '0232', 'LABORATORIOS DE ERRORES INNATOS DEL METABOLISMO', 'LEIM', NULL, NULL),
(1, NULL, NULL, '0233', 'LABORATORI DE VIROLOGÍA EXPERIMENTAL', 'LVE', NULL, NULL),
(1, NULL, NULL, '03', 'DIRECCION DE ENSEÑANZA', 'DE', NULL, NULL),
(1, NULL, NULL, '0301', 'UNIDAD DE CONGRESOS', 'UC', NULL, NULL),
(1, NULL, NULL, '0302', 'SERVICIO DE ESCOLARIDAD', 'SE', NULL, NULL),
(1, NULL, NULL, '031', 'SUBDIRECCION DE INFORMACION Y DOCUMENTACION CIENTIFICA', 'SIDC', NULL, NULL),
(1, NULL, NULL, '0311', 'DEPARTAMENTO DE INFORMACION Y DOCUMENTACION', 'DID', NULL, NULL),
(1, NULL, NULL, '0312', 'DEPARTAMENTO DE SERVICIOS BIBLIOTECARIOS', 'DSB', NULL, NULL),
(1, NULL, NULL, '032', 'SUBDIRECCION DE PROGRAMACION Y EVALUACION EDUCATIVA', 'SPEE', NULL, NULL),
(1, NULL, NULL, '03201', 'ADMINISTRACION DE LA RESIDENCIA', 'AR', NULL, NULL),
(1, NULL, NULL, '0321', 'DEPARTAMENTO DE PREGRADO Y POSTGRADO', 'DPP', NULL, NULL),
(1, NULL, NULL, '03211', 'JEFATURA DE RESIDENTES', 'JR', NULL, NULL),
(1, NULL, NULL, '0322', 'DEPARTAMENTO DE EDUCACION MEDICA CONTINUA', 'DEMC', NULL, NULL),
(1, NULL, NULL, '03221', 'SERVICIO DE ILUSTRACION MEDICA', 'SIM', NULL, NULL),
(1, NULL, NULL, '03222', 'SERVICIO DE PUBLICACIONES MEDICAS', 'SPM', NULL, NULL),
(1, NULL, NULL, '04', 'DIRECCION DE ADMINISTRACION', 'DA', NULL, NULL),
(1, NULL, NULL, '0401', 'DEPARTAMENTO DE TECNOLOGIAS DE LA INFORMACION', 'DTI', NULL, NULL),
(1, NULL, NULL, '041', 'SUBDIRECCION DE ADMINISTRACION Y DESARROLLO DE PERSONAL', 'SADP', NULL, NULL),
(1, NULL, NULL, '04101', 'SERVICIO DE NOMINA Y PAGOS', 'SNP', NULL, NULL),
(1, NULL, NULL, '0411', 'DEPARTAMENTO DE EMPLEO Y REMUNERACIONES', 'DER', NULL, NULL),
(1, NULL, NULL, '0412', 'DEPARTAMENTO DE CAPACITACION Y RELACIONES LABORALES', 'DCRL', NULL, NULL),
(1, NULL, NULL, '042', 'SUBDIRECCION DE FINANZAS', 'SF', NULL, NULL),
(1, NULL, NULL, '0421', 'DEPARTAMENTO DE CONTABILIDAD Y COSTOS', 'DCC', NULL, NULL),
(1, NULL, NULL, '0422', 'DEPARTAMENTO DE TESORERIA', 'DT', NULL, NULL),
(1, NULL, NULL, '04221', 'SERVICIO DE CAJAS', 'SC', NULL, NULL),
(1, NULL, NULL, '04222', 'SERVICIO DE CUENTAS CORRIENTES', 'SCC', NULL, NULL),
(1, NULL, NULL, '0423', 'DEPARTAMENTO DE CONTROL DE PRESUPUESTOS', 'DCP', NULL, NULL),
(1, NULL, NULL, '043', 'SUBDIRECCION DE RECURSOS MATERIALES', 'SRM', NULL, NULL),
(1, NULL, NULL, '0431', 'DEPARTAMENTO DE ADQUISICIONES', 'DA', NULL, NULL),
(1, NULL, NULL, '0432', 'DEPARTAMENTO DE CONTROL DE BIENES', 'DCB', NULL, NULL),
(1, NULL, NULL, '04321', 'ALMACEN DE FARMACIA', 'AF', NULL, NULL),
(1, NULL, NULL, '04322', 'ALMACEN GENERAL', 'AG', NULL, NULL),
(1, NULL, NULL, '04323', 'ALMACEN DE VIVERES', 'AV', NULL, NULL),
(1, NULL, NULL, '04324', 'CONTROL DE ACTIVO FIJO', 'CAF', NULL, NULL),
(1, NULL, NULL, '044', 'SUBDIRECCION DE SERVICIOS GENERALES', 'SSG', NULL, NULL),
(1, NULL, NULL, '0441', 'DEPARTAMENTO DE ALIMENTACION Y DIETETICA', 'DAD', NULL, NULL),
(1, NULL, NULL, '04411', 'SERVICIO DE ALIMENTACION A EMPLEADOS', 'SAE', NULL, NULL),
(1, NULL, NULL, '04412', 'SERVICIO DE ALIMENTACION A PACIENTES', 'SAP', NULL, NULL),
(1, NULL, NULL, '04413', 'CONSULTA EXTERNA EN DIETETICA', 'CED', NULL, NULL),
(1, NULL, NULL, '04414', 'SERVICIO DE PREPARACION DE FORMULAS LACTEAS', 'SPFL', NULL, NULL),
(1, NULL, NULL, '0442', 'DEPARTAMENTO DE CONSERVACION Y MANTENIMIENTO', 'DCM', NULL, NULL),
(1, NULL, NULL, '04421', 'SERVICIO DE CONSERVACION Y MANTENIMIENTO DE LA UISI', 'SCM UISI', NULL, NULL),
(1, NULL, NULL, '04422', 'SERVICIO DE ELECTROMECANICA', 'SE', NULL, NULL),
(1, NULL, NULL, '04423', 'SERVICIO DE ELECTROMEDICINA', 'SE', NULL, NULL),
(1, NULL, NULL, '0443', 'DEPARTAMENTO DE SERVICIOS DE APOYO', 'DSA', NULL, NULL),
(1, NULL, NULL, '04431', 'SERVICIO DE CERRAJERIA', 'SC', NULL, NULL),
(1, NULL, NULL, '04432', 'SERVICIO DE CONMUTADOR', 'SC', NULL, NULL),
(1, NULL, NULL, '04433', 'SERVICIO DE DISTRIBUCION Y CONTROL DE INSUMOS Y DESECHOS', 'SDCID', NULL, NULL),
(1, NULL, NULL, '04434', 'SERVICIO DE IMPRESIONES GRAFICAS', 'SIG', NULL, NULL),
(1, NULL, NULL, '04435', 'SERVICIO DE MANTENIMIENTO TELEFONICO', 'SMT', NULL, NULL),
(1, NULL, NULL, '04436', 'SERVICIO DE OFICIALIA DE PARTES', 'SOP', NULL, NULL),
(1, NULL, NULL, '04437', 'SERVICIO DE ROPERIA', 'SR', NULL, NULL),
(1, NULL, NULL, '04438', 'SERVICIO DE TRANSPORTES', 'ST', NULL, NULL),
(1, NULL, NULL, '05', 'DIRECCION DE PLANEACION', 'DP', NULL, NULL),
(1, NULL, NULL, '0501', 'DEPARTAMENTO DE DISEÑO Y CALIDAD', 'DDC', NULL, NULL),
(1, NULL, NULL, '0502', 'DEPARTAMENTO DE GESTION DE LA INFORMACION', 'DGI', NULL, NULL),
(1, NULL, NULL, '0503', 'DEPARTAMENTO DE TECNOLOGIAS DE LA INFORMACION', 'DTI', NULL, NULL),
(1, NULL, NULL, '0504', 'DEPARTAMENTO DE DESEMPEÑO ORGANIZACIONAL', 'DDO', NULL, NULL),
(1, NULL, NULL, '06', 'ORGANO INTERNO CONTROL', 'OIC', NULL, NULL),
(1, NULL, NULL, '0601', 'DEPARTAMENTO DE AUDITORIA INTERNA', 'DAI', NULL, NULL),
(1, NULL, NULL, '0602', 'DEPARTAMENTO DE AUDITORIA PARA DESARROLLO Y MEJORA DE LA GESTION PUBLICA', 'DADMGP', NULL, NULL),
(1, NULL, NULL, '0603', 'DEPARTAMENTO DE QUEJAS Y RESPONSABILIDADES', 'DQR', NULL, NULL),
(1, NULL, NULL, '061', 'AREA DE AUDITORIA PARA DESARROLLO Y MEJORA DE LA GESTION PUBLICA', 'AADMGP', NULL, NULL),
(1, NULL, NULL, '062', 'AREA DE AUDITORIA INTERNA', 'AAI', NULL, NULL),
(1, NULL, NULL, '063', 'AREA DE RESPONSABILIDADES Y AREA DE QUEJAS', 'ARAQ', NULL, NULL),
(1, NULL, NULL, '107I', 'DIRECCION GENERAL', 'DG', NULL, NULL),
(1, NULL, NULL, 'O001', 'DEPARTAMENTO DE COMUNICACION SOCIAL', 'DCS', NULL, NULL),
(1, NULL, NULL, 'O01', 'SUBDIRECCION DE ASUNTOS JURIDICOS', 'SAJ', NULL, NULL),
(1, NULL, NULL, 'O011', 'DEPARTAMENTO DE LO CONTENCIOSO', 'DC', NULL, NULL),
(1, NULL, NULL, 'O012', 'DEPARTAMENTO DE LO CONSULTIVO', 'DC', NULL, NULL),
(1, NULL, NULL, 'S001', 'SINDICATO', 'SUTINed', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_articulo`
--

CREATE TABLE `catalogos_articulo` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_categoria`
--

CREATE TABLE `catalogos_categoria` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `clasificacion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_categoria`
--

INSERT INTO `catalogos_categoria` (`id`, `habilitado`, `created`, `updated`, `nombre`, `clasificacion_id`) VALUES
(1, 1, '2021-03-29', '2021-03-29', 'CÁNCER', 1),
(2, 1, '2021-03-29', '2021-03-29', 'CÁNCER INFANTIL', 1),
(3, 1, '2021-03-29', '2021-03-29', 'CAUSES', 1),
(4, 1, '2021-03-29', '2021-03-29', 'CUIDADOS INTENSIVOS NEONATALES', 1),
(5, 1, '2021-03-29', '2021-03-29', 'ENFERMEDADES LISOSOMALES', 1),
(6, 1, '2021-03-29', '2021-03-29', 'HEMOFILIA', 1),
(7, 1, '2021-03-29', '2021-03-29', 'MALFORMACIONES CONGÉNITAS', 1),
(8, 1, '2021-03-29', '2021-03-29', 'SMSXXI', 1),
(9, 1, '2021-03-29', '2021-03-29', 'TRANSPLANTE DE CÓRNEA', 1),
(10, 1, '2021-03-29', '2021-03-29', 'TRANSPLANTE DE MÉDULA ÓSEA', 1),
(11, 1, '2021-03-29', '2021-03-29', 'TRANSPLANTE RENAL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_cie9`
--

CREATE TABLE `catalogos_cie9` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_cie10`
--

CREATE TABLE `catalogos_cie10` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_clasificacion`
--

CREATE TABLE `catalogos_clasificacion` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_clasificacion`
--

INSERT INTO `catalogos_clasificacion` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2020-12-08', '2021-03-29', 'INSABI'),
(2, 1, '2020-12-15', '2020-12-15', 'CLASIFICACION 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_empleado`
--

CREATE TABLE `catalogos_empleado` (
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  `area_id` varchar(20) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `plaza_id` varchar(20) NOT NULL,
  `puesto_id` varchar(20) NOT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_empleadosseguropopular`
--

CREATE TABLE `catalogos_empleadosseguropopular` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(200) NOT NULL,
  `adscripcion` varchar(200) NOT NULL,
  `puesto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_entidadfederativa`
--

CREATE TABLE `catalogos_entidadfederativa` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_entidadfederativa`
--

INSERT INTO `catalogos_entidadfederativa` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2020-03-30', '2020-03-30', 'Aguascalientes '),
(2, 1, '2020-10-07', '2020-10-07', 'Baja California '),
(3, 1, '2020-10-07', '2020-10-07', 'Baja California Sur '),
(4, 1, '2020-10-07', '2020-10-07', 'Campeche '),
(5, 1, '2020-10-07', '2020-10-07', 'Ciudad de México'),
(6, 1, '2020-10-07', '2020-10-07', 'Coahuila '),
(7, 1, '2020-10-07', '2020-10-07', 'Colima'),
(8, 1, '2020-10-07', '2020-10-07', 'Chiapas'),
(9, 1, '2020-10-07', '2020-10-07', 'Chihuahua '),
(10, 1, '2020-10-07', '2020-10-07', 'Durango'),
(11, 1, '2020-10-07', '2020-10-07', 'Estado de México'),
(12, 1, '2020-10-07', '2020-10-07', 'Guanajuato '),
(13, 1, '2020-10-07', '2020-10-07', 'Guerrero'),
(14, 1, '2020-10-07', '2020-10-07', 'Hidalgo '),
(15, 1, '2020-10-07', '2020-10-07', 'Jalisco '),
(16, 1, '2020-10-07', '2020-10-07', 'Michoacán '),
(17, 1, '2020-10-07', '2020-10-07', 'Morelos '),
(18, 1, '2020-10-07', '2020-10-07', 'Nayarit '),
(19, 1, '2020-10-07', '2020-10-07', 'Nuevo León '),
(20, 1, '2020-10-07', '2020-10-07', 'Oaxaca '),
(21, 1, '2020-10-07', '2020-10-07', 'Puebla'),
(22, 1, '2020-10-07', '2020-10-07', 'Querétaro '),
(23, 1, '2020-10-07', '2020-10-07', 'Quintana Roo '),
(24, 1, '2020-10-07', '2020-10-07', 'San Luis Potosí '),
(25, 1, '2020-10-07', '2020-10-07', 'Sinaloa '),
(26, 1, '2020-10-07', '2020-10-07', 'Sonora '),
(27, 1, '2020-10-07', '2020-10-07', 'Tabasco '),
(28, 1, '2020-10-07', '2020-10-07', 'Tamaulipas '),
(29, 1, '2020-10-07', '2020-10-07', 'Tlaxcala '),
(30, 1, '2020-10-07', '2020-10-07', 'Veracruz '),
(31, 1, '2020-10-07', '2020-10-07', 'Yucatán '),
(32, 1, '2020-10-07', '2020-10-07', 'Zacatecas ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_grupoalimento`
--

CREATE TABLE `catalogos_grupoalimento` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_grupoalimento`
--

INSERT INTO `catalogos_grupoalimento` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2020-12-15', '2020-12-15', 'CEREALES'),
(2, 1, '2020-12-17', '2021-01-15', 'LÁCTEOS'),
(3, 1, '2021-01-15', '2021-01-15', 'CARNE DE RES'),
(4, 1, '2021-01-15', '2021-01-15', 'CARNE DE CERDO'),
(5, 1, '2021-01-15', '2021-01-15', 'POLLO'),
(6, 1, '2021-01-15', '2021-01-15', 'PESCADO'),
(7, 1, '2021-01-15', '2021-01-15', 'VERDURAS'),
(8, 1, '2021-01-15', '2021-01-15', 'FRUTAS'),
(9, 1, '2021-01-15', '2021-01-15', 'EMBUTIDOS'),
(10, 1, '2021-01-15', '2021-01-15', 'ALIMENTO INFANTIL O GERBER'),
(11, 1, '2021-01-15', '2021-01-15', 'PASTAS'),
(12, 1, '2021-01-15', '2021-01-15', 'LEGUMINOSAS'),
(13, 1, '2021-01-15', '2021-01-15', 'AZÚCARES'),
(14, 1, '2021-01-19', '2021-01-19', 'PRODUCTOS DE MAÍZ'),
(15, 1, '2021-01-19', '2021-01-19', 'CONGELADOS'),
(16, 1, '2021-01-19', '2021-01-19', 'ACEITES Y ADEREZOS'),
(17, 1, '2021-01-20', '2021-01-20', 'CARNE DE PAVO'),
(18, 1, '2021-01-20', '2021-01-20', 'PAN DEL DÍA'),
(19, 1, '2021-01-20', '2021-01-20', 'SAL Y ESPECIAS'),
(20, 1, '2021-01-20', '2021-01-20', 'GALLETAS'),
(21, 1, '2021-01-20', '2021-01-20', 'POSTRES Y DULCES'),
(22, 1, '2021-01-20', '2021-01-20', 'BEBIDAS'),
(23, 1, '2021-01-20', '2021-01-20', 'OLEAGINOSAS'),
(24, 1, '2021-01-20', '2021-01-20', 'CHILES'),
(25, 1, '2021-01-20', '2021-01-20', 'ENLATADOS'),
(26, 1, '2021-01-20', '2021-01-20', 'PRODUCTOS PARA HORNEAR'),
(27, 1, '2021-01-20', '2021-01-20', 'LIBRES DE ENERGÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_plaza`
--

CREATE TABLE `catalogos_plaza` (
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_procedenciapaciente`
--

CREATE TABLE `catalogos_procedenciapaciente` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_procedenciapaciente`
--

INSERT INTO `catalogos_procedenciapaciente` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2021-03-29', '2021-03-29', 'CONSULTA EXTERNA'),
(2, 1, '2021-03-29', '2021-03-29', 'HOSPITALIZACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_producto`
--

CREATE TABLE `catalogos_producto` (
  `id` int(11) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `tipo_catalogo` varchar(200) DEFAULT NULL,
  `presentacion` varchar(200) DEFAULT NULL,
  `unimed` varchar(200) DEFAULT NULL,
  `cal_unimed_min` decimal(6,2) DEFAULT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `grupo_alimento_id` int(11) DEFAULT NULL,
  `unimed_min_id` int(11) DEFAULT NULL,
  `almacen_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_producto`
--

INSERT INTO `catalogos_producto` (`id`, `clave`, `nombre`, `tipo_catalogo`, `presentacion`, `unimed`, `cal_unimed_min`, `habilitado`, `grupo_alimento_id`, `unimed_min_id`, `almacen_id`) VALUES
(1, 'V100106', 'PASTA PARA SOPA CODITO No. 2 . BOLSA C/200 GR', NULL, NULL, 'KG', '3.70', 1, 1, 69, NULL),
(2, 'V750082', 'TORTILLA DE MAIZ TOSTADA CORTADA EN TIRAS PARA SOPA., BOLSA DE 4 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '4.36', 1, 14, 69, '04323'),
(3, 'V700131', 'HOJAS DE AGUACATE. MANOJO', NULL, NULL, 'KG', '1.00', 1, 7, 69, NULL),
(4, 'V550056', 'FILETE DE TILAPIA DE CULTIVO MEDIDA 5/7 DE 170 GR. PIEZA, SIN ESPINAS AL ALTO VACIO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.00', 1, 6, 69, '04323'),
(5, 'V700055', 'CHILE SERRANO FRESCO E HIDRATADO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.32', 1, 7, 69, '04323'),
(6, 'V350004', 'NIEVE DE LIMON BOTE DE 1 L', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LT', 'BTE', '0.77', 1, 15, 87, '04323'),
(7, 'V100830.', 'GALLETAS SURTIDO TRADICIONAL ( GOURMET COOKIES ) CAJA DE 500 A 750 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(8, 'V500001', 'JAMON REBANADA DE 30 GRS APROXIMADA (TIPO VIRGINIA)', NULL, NULL, 'KG', '1.00', 0, 1, 3, NULL),
(9, 'V100963', 'MAYONESA INDIV. SOBRE CON 8 GR, CAJA CON 200 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', '59.60', 1, 16, 119, '04323'),
(10, 'V450068', 'YOGURTH VARIOS SABORES, PAQUETE C/7 PZAS. DE 125 GR. C/LECHE ENTERA Y FRUTAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'pqte', 'pqte', NULL, 0, NULL, NULL, '04323'),
(11, 'v100014', 'AXIOTE (BARRA 1 KG)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.50', 1, 19, 69, '04323'),
(12, 'V100840', 'MANGO EN ALMIBAR REBANADAS  LATA ABREFACIL  DE 800 A 820 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '1.13', 1, 21, 69, '04323'),
(13, 'V600019', 'SALCHICHA DE PAVO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '1.96', 1, 9, 69, '04323'),
(14, 'V100023', 'CIRUELA PASA,BOLSA C/500 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(15, 'v850031', 'CHILE HABANERO FRESCO E HIDRATADO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.37', 1, 7, 69, '04323'),
(16, 'V100910', 'PASTA PARA SOPA DE FIDEO DE SEMOLA DE TRIGO FORTIFICADO, BOLSA DE 200 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.50', 1, 1, 69, '04323'),
(17, 'V100851', 'CHILE CHIPOTLE ADOBADO LATA  DE 2.8 KG. A 2.9 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '0.86', 1, 24, 69, '04323'),
(18, 'V700079', 'HIERBAS DE OLOR, MANOJO 100 GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'MAN', 'MAN', '0.00', 1, 7, 69, '04323'),
(19, 'V850051', 'NUEZ FRESCA LIMPIA EN MITADES', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(20, 'V100076', 'HABA ENTERA SECA LIMPIA, BSA. C/1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(21, 'V750068', 'BOLILLO DEL DIA DE 40 GR. 11 CMS. DE LARGO TIPO MINIATURA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(22, 'V700044', 'COLIFLOR FRESCO,BLANCO SIN MANCHAS,SIN PLAGAS,SIN DESHIDRATACION.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.22', 1, 7, 69, '04323'),
(23, 'V100836', 'PAN INTEGRAL PAQUETE DE 650 A 675 GR, CON CASCARILLA ENTERA EN TRIGO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '29.35', 1, 1, 141, '04323'),
(24, 'V100823', 'BIMBOLLO ADICIONADO CON VITAMINAS Y MINERALES DE 450 GRS. PAQUETE C/8 PZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(25, 'V700057', 'ELOTE LIMPIO TIERNO E HIDRATADO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.07', 1, 7, 69, '04323'),
(26, 'V100862', 'ATUN EN AGUA, LATA DE 1700  A 1900 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '0.88', 1, 25, 69, '04323'),
(27, 'V600026', 'BISTECK DE PAVO 120 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '0.88', 1, 17, 69, '04323'),
(28, 'V100974.', 'GALLETA SUAVE CON MALVAVISCO Y COCO, 4 PAQUETES DE 130 A 140 GR. CAJA DE 500 A 570 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 0, NULL, NULL, '04323'),
(29, 'V100108', 'PASTA PARA SOPA MACARRON,  BOLSA C/200 GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.50', 1, 1, 69, '04323'),
(30, 'V100128', 'FECULA DE MAIZ VARIOS SABORES C/VIT. Y HIERRO, SOBRE DE 40 A 50 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'SBE', 'SOBRE', '8.50', 1, 1, 69, '04323'),
(31, 'V100021', 'CEREAL DE ARROZ PRECOCIDO P/BEBE, DE 250 A 300 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ENV', '3.60', 1, 10, 69, '04323'),
(32, 'V500010', 'TOCINO REBANADO AHUMADO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '5.50', 1, 9, 69, '04323'),
(33, 'V450059', 'LECHE LIGTH BAJA EN GRASA ULTRA PASTEURIZADA, ABRE FACIL, CON VIT. A Y D. LITRO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LT', 'LT', '0.36', 1, 2, 87, '04323'),
(34, 'V550018', 'PULPA DE CERDO EN TROZO SIN GRASA DE 100 GRS PIEZA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(35, 'V700020', 'NARANJA P/JUGO 250GR APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.47', 1, 8, 69, '04323'),
(36, 'V450015', 'QUESO FRESCO TIPO PANELA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.45', 1, 2, 69, '04323'),
(37, 'V100087', 'FECULA DE MAIZ NATURAL', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PAQ750GR', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(38, 'V100078', 'HARINA DE TRIGO EXTRAFINA C/VIT. Y HIERRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PAQ1KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(39, 'V700073', 'PIMIENTO MORRON VERDE', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.27', 1, 7, 69, '04323'),
(40, 'V100143', 'ALIMENTO INFANTIL DE PERA SEGUNDA ETAPA DE 90 A 100 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '64.00', 1, 10, 57, '04323'),
(41, 'V750066', 'BOLILLO DEL DIA DE 60 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(42, 'v100135', 'CAJETA DE LECHE DE CABRA QUEMADA, FCO. DE  1000 A 1200 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'fco', 'FCO', '3.60', 1, 13, 69, '04323'),
(43, 'V100974', 'GALLETA SUAVE CON MALVAVISCO CAJA DE 500 A 570 GRS._x005F_x000D_', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 0, NULL, NULL, '04323'),
(44, 'V100853', 'BLISTER DE MANTEQUILLA O MARGARINA DE 8 A 10 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(45, 'V100998.', 'GALLETA DE AVENA EMPAQUE INDIVIDUAL (40 A 50 GR.) SIN AZUCAR, SABOR VARIOS, CAJA DE 240 A 250 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(46, 'V100092', 'AZUCAR REFINADA CADUCIDAD VISIBLE,  PQTE CON 10 BOLSA DE 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'KG', '3.77', 1, 13, 119, '04323'),
(47, 'V700035', 'APIO LIMPIO HOJA ENTERA,FRESCA,VERDE BRILLANTE SIN SIGNOS DE PUTREFACCION O DESHIDRATACION..', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.16', 1, 7, 69, '04323'),
(48, 'V100512', 'GELATINA DE AGUA PREPARA ENVASE IND. DE 120 A 130 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', '0.41', 1, 13, 69, '04323'),
(49, 'V100044', 'CHILE MORITA SECO DE 1ERA.CALIDAD.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(50, 'V100206', 'ALIMENTO INFANTIL DE ZANAHORIA PRIMERA ETAPA CJA. C/24 PZAS. DE 65 A 75 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '18.00', 1, 10, 57, '04323'),
(51, 'V100821', 'ACEITE DE OLIVO, REFINADO Y EXTRA VIGER DE 900 ML A 1 LITRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', '8.40', 1, 16, 87, '04323'),
(52, 'V100521', 'CONSOME DE POLLO, CON GRASA DE RES Y PROTEINA DE LECHE BOTE DE 1.5 A 1.6 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE', 'BTE', '0.16', 1, 19, 69, '04323'),
(53, 'V100830', 'GALLETAS SURTIDO TRADICIONAL ( GOURMET COOKIES ) CAJA DE 500 A 750 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(54, 'V450066', 'BEBIDA ISOTONICA DE SABOR, BAJA EN Na. BOTELLA DE 500 A 600 ML. _x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(55, 'V500007', 'PASTEL DE POLLO REBANADA 30 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '2.65', 1, 9, 69, '04323'),
(56, 'V700048', 'CHAYOTE 300GR APROX.VERDE BRILLANTE CONSISTENCIA FIRME SIN MAGULLADURAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.23', 1, 7, 69, '04323'),
(57, 'V850054', 'HOJAS DE NARANJO, MANOJO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 7, 69, '04323'),
(58, 'V450045', 'YOGURTH VARIOS SABORES, PAQUETE C/6 PZAS. DE 125 A150 GR. C/LECHE ENTERA Y FRUTAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PZA', NULL, 0, NULL, NULL, '04323'),
(59, 'V700026', 'PLATANO DOMINICO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.94', 1, 8, 69, '04323'),
(60, 'V550034', 'PULPA EN TROZO DE CERDO SIN GRASA PIEZA DE 70 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(61, 'V700007', 'DURAZNO MEDIANO DE 70 A 80 GRS.APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.39', 1, 8, 69, '04323'),
(62, 'V550005', 'CHAMBARETE SIN HUESO EN TROZO 100 g.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.20', 1, 3, 69, '04323'),
(63, 'V100977', 'MOLE POBLANO EN PASTA DE PRIMERA CALIDAD CUBETA C/4 KG._x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CUBETA', 'CUBETA', NULL, 1, NULL, NULL, '04323'),
(64, 'V100532', 'REFRESCO DE COLA, LATA DE 350 A 355 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(65, 'V450061', 'LECHE SEMIDESCREMADA ULTRA PASTEURIZADA CON VITAMINAS Y MINERALES DE SABORES. ENVASE INDIVIDUAL DE  250 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV250ML', 'ENV', NULL, 1, NULL, NULL, '04323'),
(66, 'V550014', 'FALDA LIMPIA DE CERDO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(67, 'V100443', 'ATE DE GUAYABA, CAJA C/ 6 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(68, 'V350013', 'HELADO DE DIFERENTES SABORES CUÑETE DE 4.5 A 5 LITROS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'cuñete', 'cuñ', NULL, 1, NULL, NULL, '04323'),
(69, 'V100751', 'CHOCOLATE CON GRAGEAS MINIATURA DE MENTA.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', NULL, 1, NULL, NULL, '04323'),
(70, 'V100903', 'AGUA PURIFICADA GALON (5 LT)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'GAL', 'GAL', NULL, 1, NULL, NULL, '04323'),
(71, 'V550058', 'COSTILLA DE CERDO 50 GR. PIEZA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.35', 1, 4, 69, '04323'),
(72, 'V750059', 'SOPE DE 11 CM., APROXIMADAMENTE. FRESCO DEL DIA.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(73, 'V100915.', 'PIÑA EN ALMIBAR REBANADAS  ABREFACIL, LATA DE 800 A 820 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '0.88', 1, 21, 69, '04323'),
(74, 'V100912', 'ATUN EN AGUA, LATA DE 125 A 150 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '0.59', 1, 25, 69, '04323'),
(75, 'V450055', 'ALIMENTO LACTEO FERMENTADO SUAVE CON LACTOBACILLUS DE SABORES COPA CON 108 GR. PQTE. CON 20 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '90.00', 1, 2, 109, '04323'),
(76, 'V450011', 'CREMA  DE LECHE DE VACA ACIDIFICADA PASTEURIZADA CON SELLO DE GARANTIA, BOTE DE 900 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE900ML', 'BTE', '2.48', 1, 2, 69, '04323'),
(77, 'V550007', 'PULPA MOLIDA DE RES LIMPIA SIN GRASA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.80', 1, 3, 69, '04323'),
(78, 'V700033', 'AGUACATE 200 GRS APROXIMADAMENTE.CONSISTENCIA FIRME.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.93', 1, 7, 69, '04323'),
(79, 'V100824.', 'DONAS PQTE DE 95 A 110 GRS CON 4 PIEZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(80, 'V750100', 'BOCADILLO   PZA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(81, 'V100864.', 'LECHE DESLACTOSADA ABREFACL ULTRA PASTEURIZADA LITRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', '1 LT', 'LT', '0.48', 1, 2, 87, '04323'),
(82, 'V200006', 'JUGO DE MANZANA 100% PURO ENVASE DE .950 A 1 LITRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ENV', NULL, 1, NULL, NULL, '04323'),
(83, 'V700059', 'EPAZOTE,LIMPIO HOJA ENTERA,FRESCA,VERDE BRILLANTE SIN SIGNOS DE PUTREFACCION O DESHIDRATACION.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 7, 69, '04323'),
(84, 'V450064', 'LECHE DESLACTOSA LIGTH ENVASE INDIVIDUAL DE 250 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 0, NULL, NULL, '04323'),
(85, 'V100978', 'MOLE VERDE EN PASTA DE PRIMERA CALIDAD CUBETA C/4 KG._x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CUBETA', 'CUBETA', NULL, 1, NULL, NULL, '04323'),
(86, 'V700086', 'PAPA CAMBRAY ROJA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.76', 1, 7, 69, '04323'),
(87, 'V100043', 'JUGO SAZONADOR, BOTELLA CON 700 A 800 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', '1.26', 1, 16, 87, '04323'),
(88, 'V100535', 'REFRESCO EN LATA SABOR COLA LIGHT DE  355 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 0, NULL, NULL, '04323'),
(89, 'V700068', 'NOPALES MEDIANO FRESCO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.14', 1, 7, 69, '04323'),
(90, 'V100568', 'BOLSA DE HIELO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 0, NULL, NULL, '04323'),
(91, 'V100715', 'CHILE LARGO GÜERO DE LATA DE 350 A 450 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '2.43', 1, 24, 69, '04323'),
(92, 'V100909', 'PASTA PARA SOPA DE SPAGUETY DE SEMOLA DE TRIGO FORTIFICADO, BOLSA DE 200 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.50', 1, 1, 69, '04323'),
(93, 'V100504', 'RAJAS DE JALAPEÑOS EN ESCABECHE DE 2.650 A 2.800 KGS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '0.12', 1, 24, 69, '04323'),
(94, 'V850066', 'UVA EN RACIMO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.63', 1, 8, 69, '04323'),
(95, 'V700038', 'BROCOLI FRESCO VERDE BRILLANTE SIN SIGNOS DE PUTREFACCION O DESHIDRATACION.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.28', 1, 7, 69, '04323'),
(96, 'V100824', 'DONAS PQTE DE 95 A 110 GRS CON 4 PIEZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(97, 'V100837.', 'PANQUESITOS CON GOTAS DE CHOCOLATE, PQTE DE 120 A 140GR C/2 PIEZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(98, 'V100047', 'CHOCOLATE DE MESA 5% DE LECITINA, DE 500 A 540 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '8.50', 1, 13, 69, '04323'),
(99, 'V550002', 'BISTEK DE RES LIMPIO DE 120 GRS. PIEZA ENTERA. (NO EN TIRA)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.20', 1, 3, 69, '04323'),
(100, 'V550013', 'CHICHARRON DELGADO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '6.00', 1, 4, 69, '04323'),
(101, 'V750003', 'CUERNO EN BOLSA DE CELOFAN DE 60 A 70 GR PARA RELLENAR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(102, 'V600012', 'HUEVO FRESCO BLANCO, CJA C/ 180 PZAS. DE 70 GR. APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'PZA', '68.00', 1, 5, 109, '04323'),
(103, 'V550050', 'CHULETA AHUMADA DELGADA 150 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '1.20', 1, 4, 69, '04323'),
(104, 'v700062', 'GARBANZA REMOJADA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.64', 1, 12, 69, '04323'),
(105, 'V100846', 'NUEZ MOSCADA MOLIDA, FCO DE 60 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', NULL, 1, NULL, NULL, '04323'),
(106, 'V450036', 'QUESO AMARILLO CAJA C/ 120 REBANADAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(107, 'V700071', 'PEPINO MEDIANO DE APROX.350 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.15', 1, 7, 69, '04323'),
(108, 'V750030', 'LEVADURA EN POLVO PAQ DE400 A 450 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '3.90', 1, 26, 69, '04323'),
(109, 'V750001', 'BIZCOCHO EN BOLSA DE CELOFAN 70 A 90 GRS. SURTIDO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(110, 'V600021', 'CARNE MOLIDA DE PAVO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.10', 1, 17, 69, '04323'),
(111, 'V100967.', 'MALVAVISCO GRANDE.  BOLSA DE 400 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(112, 'V100822', 'ALCAPARRAS EN VINAGRE FCO. DE 950 GR A 1 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', '0.00', 1, 27, 138, '04323'),
(113, 'V100483', 'PASTA PARA SOPA DE PLUMA,BOLSA C/200GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.50', 1, 1, 69, '04323'),
(114, 'V100071.', 'GOMITAS DE GRENETINA DE 500 A 750 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(115, 'V100588', 'AGUA MINERAL DE 500 A 600 ML', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(116, 'V700025', 'PIÑA GRANDE, SIN PEÑACHO, DE 3 KG APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.50', 1, 8, 69, '04323'),
(117, 'V100111', 'PERA EN ALMIBAR MITADES, LATA DE800 A 820 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA800GR', 'LTA', '0.88', 1, 21, 69, '04323'),
(118, 'V100907', 'HOJUELAS DE MAIZ ESCARCHADAS C/12 VIT. Y MINERALES. PQTE.INDIVIDUAL DE 30 A 40 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(119, 'V100445', 'CAFE SOLUBLE CLASICO LATA  DE 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE', 'BTE', '0.02', 1, 22, 69, '04323'),
(120, 'V700036', 'BETABEL MEDIANO CONSISTENCIA FIRME SIN MALLUGADURAS DE 200-300 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.47', 1, 7, 69, '04323'),
(121, 'v450060', 'PRODUCTO LACTEO COMBINADO CON GRASA VEGETAL EN POLVO, ADICIONADO CON VT. A Y D, MINERALES, PROBIOTICOS. LATA DE 1.500 A 1.600 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(122, 'V100207', 'BARRITA DE COCO RECTANGULAR DE 9 CM. DE LARGO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(123, 'V700080', 'ZANAHORIA 120-140GR APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.40', 1, 7, 69, '04323'),
(124, 'V100522', 'AVENA EN HOJUELAS BTE DE 400 A 600 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE', 'BTE', NULL, 1, NULL, NULL, '04323'),
(125, 'V100045', 'CHILE PASILLA SECO DE 1ERA.CALIDAD.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.28', 1, 24, 69, '04323'),
(126, 'V100039', 'CHILE ANCHO SECO, 1 ERA. CALIDAD', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(127, 'V550015', 'LOMO LIMPIO ABIERTO DE CERDO EN SABANA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(128, 'V100916', 'CAJETA EN OBLEAS, PIEZA DE 10 GRS. PQTE. CON 20 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(129, 'V100061', 'ESCENCIA DE VAINILLA, DE 950 ML A 1 LITRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'LT', NULL, 1, NULL, NULL, '04323'),
(130, 'V500008', 'QUESO DE PUERCO REBANADA 30 GRS APROXIMADA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.75', 1, 9, 69, '04323'),
(131, 'V100586', 'ARROZ LIMPIO CALIDAD MORELOS BOLSA DE 950 GRS. A 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '1.27', 1, 1, 69, '04323'),
(132, 'V700027', 'PLATANO TABASCO 150 A 180 GR.APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.88', 1, 8, 69, '04323'),
(133, 'V700139', 'MANDARINA DE 180 GR APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '0.53', 1, 8, 69, '04323'),
(134, 'V100443.', 'ATE DE GUAYABA, CAJA C/ 6 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(135, 'V550052', 'FILETE DE TILAPIA DE CULTIVO (PIEZA DE 120 A 130 GRS) AL ALTO VACIO, SIN ESPINAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.00', 1, 6, 69, '04323'),
(136, 'V100660', 'ALMENDRA FRESCA (PAQUETE 95-100 GRS)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(137, 'V700051', 'CHILACAYOTE MEDIANO LIMPIO FRESCO SIN DESHIDRATAR. 400 GRS APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.14', 1, 7, 69, '04323'),
(138, 'V750080', 'TORTILLA DE MAIZ NIXTAMALIZADA PQTE. DE 800 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '2.13', 1, 14, 69, '04323'),
(139, 'V450018', 'MARGARINA DE 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BAR1KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(140, 'V100820', 'REPOSTERÍA EN BOLSA DE CELOFÁN 70 A 90 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 0, NULL, NULL, '04323'),
(141, 'V100864', 'LECHE DESLACTOSADA ABREFACL ULTRA PASTEURIZADA LITRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', '1 LT', 'LT', NULL, 1, NULL, NULL, '04323'),
(142, 'V100971.', 'COMBINADO DE GALLETA ENVUELTA INDIVIDUAL SIN COLORANTES SABORIZANTE ARTIFICIAL CAJA DE 300 A 440 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', '6.00', 1, 20, 69, '04323'),
(143, 'V850038', 'CHAMPIÑON, FRESCO, HIDRATADO OLOR,COLOR CARACTERISTICO SIN REBLANDECIMIENTO,NI MANCHAS OSCURAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.25', 1, 7, 69, '04323'),
(144, 'V100906.', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 0, NULL, NULL, '04323'),
(145, 'V100113', 'PILONCILLO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA1KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(146, 'V100838', 'TORTILLA DE HARINA, PQTE DE 245 A 255 G CON 10 PZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(147, 'V700075', 'RABANO LARGO 30CM APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.16', 1, 7, 69, '04323'),
(148, 'V450004', 'YOGURTH NATURAL SIN AZUCAR BOTE 1 L.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE', 'BTE', '0.70', 1, 2, 69, '04323'),
(149, 'V100141', 'ALIMENTO INFANTIL DE GUAYABA SEGUNDA ETAPA DE 90 A 100 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '48.00', 1, 10, 57, '04323'),
(150, 'V450013', 'LECHE ENTERA FRESCA ENV. ABREFACIL', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV1000ML', 'LT', NULL, 1, NULL, NULL, '04323'),
(151, 'V100994', 'PAN MOLIDO PAQUETE DE 200 A 210 GR._x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(152, 'V600006', 'PECHUGA DESHUESADA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.60', 1, 5, 69, '04323'),
(153, 'V100842', 'ACEITUNAS ENTERA SIN HUESO FRASCO DE 900 A  1000 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', NULL, 1, NULL, NULL, '04323'),
(154, 'V700133', 'PERON GOLDEN 180-200 GRS.APROXIMADAMENTE.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.65', 1, 8, 69, '04323'),
(155, 'V100855', 'CREMA ACIDIFICADA PASTEURIZADA DE FACIL DIGESTION \"DESLACTOSADA\" BOTE DE 450 MLS C/SELLO DE GARANTIA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE', 'BTE', '2.93', 1, 16, 69, '04323'),
(156, 'V100437', 'CHAMPIÑONES REBANADOS LATA DE 2.800 A 2900 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(157, 'V100906', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 0, NULL, NULL, '04323'),
(158, 'V100980', 'PIPIAN EN PASTA DE PRIMERA CALIDAD CUBETA C/4 KG._x005F_x000D_', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CUBETA', 'CUBETA', NULL, 0, NULL, NULL, '04323'),
(159, 'V100467', 'ALIMENTO INFANTIL DE MANGO 2DA. ETAPA CAJA C/ 24 PZAS, 100 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '65.00', 1, 10, 57, '04323'),
(160, 'V450016', 'QUESO OAXACA. DE 1ERA. CALIDAD', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.45', 1, 2, 69, '04323'),
(161, 'V700135', 'TORONJA ROJA PIEZA DE 200 A 400 GRS.APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'kg', '0.33', 1, 8, 69, '04323'),
(162, 'V100035', 'GELATINA EN POLVO VARIOS SABORES (AGUA) BOLSA DE 700 A 850 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '0.41', 1, 13, 69, '04323'),
(163, 'V100833', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(164, 'v700042', 'CEBOLLA MORADA LIMPIA DE 200 A 300 GRS,SIN REMBLANDECIMIENTOS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.34', 1, 7, 69, '04323'),
(165, 'V100908.', 'HOJUELAS DE MAIZ TOSTADAS C/14 VIT. Y MINERALES. PQTE.INDIVIDUAL DE 25 A 30 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '92.00', 1, 1, 109, '04323'),
(166, 'V100717', 'FRIJOL NEGRO ENTERO LIMPIO PQTE C/1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '3.50', 1, 12, 69, '04323'),
(167, 'V100971', 'COMBINADO DE GALLETA ENVUELTA INDIVIDUAL SIN COLORANTES SABORIZANTE ARTIFICIAL CAJA DE 300 A 440 GRS_x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(168, 'V100844', 'CEREZA ROJA EN ALMIBAR, FCO DE 900 GR A 1 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', '1.50', 1, 25, 69, '04323'),
(169, 'V600003', 'PECHUGA DE POLLO EN BISTEK DE 120 GRS PIEZA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.60', 1, 5, 69, '04323'),
(170, 'V700149', 'PERA MANTEQUILLA DE 180 A 200 GR. APROXIMADAMENTE', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'kilo', 'kilo', '0.58', 1, 8, 69, '04323'),
(171, 'V700060', 'ESPINACA HOJA ENTERA,VERDE BRILLANTE,SIN SIGNOS DE PUTREFACCION O DESHIDRATACION.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.23', 1, 7, 69, '04323'),
(172, 'V250010', 'JUGO DE FRUTA NATURAL LISTO PARA SERVIR, ENVASE DE 3.8 LITROS (GALON) TAPA ROSCA, VARIOS SABORES.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', '1 GALON', 'GAL', NULL, 0, NULL, NULL, '04323'),
(173, 'V600014', 'MUSLO DE POLLO PIEZA DE 200 A 230 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.90', 1, 5, 69, '04323'),
(174, 'V100019', 'CANELA EN POLVO LIMPIA DE 1RA CALIDAD.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(175, 'V100020.', 'CARAMELO LIQUIDO PARA FLAN, BOTELLA DE .950 A 1 LT', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', NULL, 1, NULL, NULL, '04323'),
(176, 'V850036', 'CREMA EN POLVO PARA CAFE SOBRE DE 4-5 GRS BOLSA C/ 250 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(177, 'V100449', 'PURE DE TOMATE LATA DE 2.850 KG. A 2.95 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(178, 'V100857', 'GALLETAS CREMA DE NIEVE, VARIOS SABORES CON 8 PAQUETES DE 1,700 A 1,750 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(179, 'V450067', 'YOGURTH BEBIBLE DESLACTOSADO DIFERENTES SABORES, PIEZA DE 240 A 250 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(180, 'V700063', 'JITOMATE 150GR,', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.17', 1, 7, 69, '04323'),
(181, 'V100982', 'SALSA PICANTE (VALENTINA) SOBRE IND.10 GRS. BOLSA C/200 PIEZAS_x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(182, 'V700030', 'TUNA 100 g.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.40', 1, 8, 69, '04323'),
(183, 'V100077', 'HARINA DE ARROZ ADICIONADA C/VITAMINAS Y MINERALES', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PAQ500GR', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(184, 'V100142', 'ALIMENTO INFANTIL DE MANZANA SEGUNDA ETAPA,DE 90 A 100 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '50.00', 1, 10, 57, '04323'),
(185, 'V450014', 'QUESO AÑEJO DE 1ERA. CALIDAD', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.90', 1, 2, 69, '04323'),
(186, 'V700074', 'PORO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.65', 1, 7, 69, '04323'),
(187, 'V700054', 'CHILE POBLANO 100-120 GR APROX.FRESCO E HIDRATADO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.46', 1, 7, 69, '04323'),
(188, 'V500002', 'LONGANIZA FRESCA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '4.26', 1, 9, 69, '04323'),
(189, 'V700083', 'FLOR DE JAMAICA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.02', 1, 8, 69, '04323'),
(190, 'V100850', 'VINAGRE BLANCO DE ALCOHOL DE CAÑA, BOTELLA DE 1 LITRO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', '0.20', 1, 16, 87, '04323'),
(191, 'V550057', 'PULPA DE RES TROZO DE 70 GR. PIEZA.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.47', 1, 3, 69, '04323'),
(192, 'V750056', 'PAN MOLIDO DE 5 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(193, 'V700132', 'MANZANA 180-200 GR.APROXIMADAMENTE', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.51', 1, 8, 69, '04323'),
(194, 'V700010', 'GUAYABA MEDIANA DE 50 A 70 GRS. APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.50', 1, 8, 69, '04323'),
(195, 'V100841', 'ALIMENTO INFANTIL DE EJOTE CON CALABAZA SEGUNDA ETAPA CJA. C/24 PZAS. DE 110 A 115 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', '36.00', 1, 10, 57, '04323'),
(196, 'V100900', 'BOLSA HIELO (2)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 0, NULL, NULL, '04323'),
(197, 'V100116', 'POLVO PARA PREPARAR POSTRE ESTILO FLAN', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA1KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(198, 'V100057', 'SAL DE GRANO LIMPIA SIN HUMEDAD YODATADA, BOLSA DE 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 19, 69, '04323'),
(199, 'V100840.', 'MANGO EN ALMIBAR REBANADAS  LATA ABREFACIL  DE 800 A 820 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(200, 'V100973', 'GALLETA SURTIDO RICO CAJA DE 500 A 620 GR._x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(201, 'V600027', 'NUGGET 100 % DE PECHUGA DE POLLO,  PAQUETE DE 2.300 A 2.400 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '2.97', 1, 5, 69, '04323'),
(202, 'V450012', 'CREMA PASTEURIZADA BATIDA PARA REPOSTERIA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(203, 'V700065', 'LECHUGA ROMANITA GRANDE LIMPIA Y FRESCA. 1 KG APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.17', 1, 7, 69, '04323'),
(204, 'V100208', 'HARINA DE TRIGO INTEGRAL C/VITAMINAS Y HIERRO. PQTE. C/ 1KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '3.16', 1, 1, 69, '04323'),
(205, 'V600007', 'PIERNA DESHUESADA ADOBADA REBANADA DE 60 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.96', 1, 9, 69, '04323'),
(206, 'V750004', 'HOJALDRA GRANDE DE SAL EN BOLSA DE CELOFAN DE 65 A 80 GR PARA RELLENAR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(207, 'V100843', 'ALIMENTO INFANTIL JUGO DE PERA SEGUNDA ETAPA, DE 110 A 120 ML.CAJA C/24 PZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', '63.00', 1, 10, 57, '04323'),
(208, 'V700134', 'SANDIA  MEDIANA. 6-8 KG APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.30', 1, 8, 69, '04323'),
(209, 'V100975', 'GELATINA EN POLVO VARIOS SABORES AGUA BOLSA DE 120 A 140 GR_x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(210, 'V700056', 'EJOTE TIERNO LARGO HIDRATADO Y  VERDE CARACTERISTICO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.34', 1, 7, 69, '04323'),
(211, 'V100835', 'PAN BLANCO PQTE DE 600 A 640 GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '28.00', 1, 1, 141, '04323'),
(212, 'V100015', 'AZUCAR REFINADA, BOLSA DE 1 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.77', 1, 13, 69, '04323'),
(213, 'V100833.', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(214, 'V700045', 'COL BLANCA CONSISTENCIA FIRME  HIDRATADA.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(215, 'V700092', 'PIMIENTO MORRON ROJO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.27', 1, 7, 69, '04323'),
(216, 'V100857.', 'GALLETAS CREMA DE NIEVE, VARIOS SABORES. CAJA DE 1,600 A 1,750 GR.. CON 8 PAQUETES DE 200 A 215 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(217, 'V350005', 'PALETA DE CREMA CUBIERTA DE CHOCOLATE VARIOS SABORES ENVOLTURA INDIVIDUAL DE 60 A 80 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(218, 'V700001', 'CAMOTE AMARILLO LIMPIO. 500 GR APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.05', 1, 1, 69, '04323'),
(219, 'V100024', 'CLAVOS DE OLOR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'GR', NULL, 1, NULL, NULL, '04323'),
(220, 'V100210', 'ENDULZANTE BAJO EN CALORIAS, SOBRE IND. CAJA C/ 500 SOBRES, DE 1 GR. C/U', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(221, 'V100911', 'SAL REFINADA YODATADA FLUORADA (FINA), BOLSA DE 1 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '0.00', 1, 19, 69, '04323'),
(222, 'v700003', 'CIRUELA ROJA MEDIANA DE 70 A 80 GRS.APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.46', 1, 8, 69, '04323'),
(223, 'V700085', 'PAPAYA ROJA GRANDE, 3 KG APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.47', 1, 8, 69, '04323'),
(224, 'V750069', 'PAN DULCE EN MINIATURA EN BOLSA DE CELOFAN', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', '256.00', 1, 18, 109, '04323'),
(225, 'V100020', 'CARAMELO LIQUIDO PARA FLAN, BOTELLA DE 1 LT', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', NULL, 1, NULL, NULL, '04323'),
(226, 'V100915', 'PIÑA EN ALMIBAR, LATA DE 800 A 820 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(227, 'V100075.', 'GUAYABA EN ALMIBAR ENTERA LTA. C/800 A 820 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(228, 'V550006', 'FALDA LIMPIA DE RES', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.00', 1, 3, 69, '04323'),
(229, 'v100093', 'MANTECA VEG. (ACEITES VEG. Y ANIMALES COMESTIBLES)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '9.00', 1, 16, 69, '04323'),
(230, 'V700078', 'HIERBABUENA MANOJO 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 7, 138, '04323'),
(231, 'V450043', 'QUESO COTTAGE BOTE DE 110 A 130 ML._x005F_x000D_', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BTE', 'BTE', '1.03', 1, 2, 69, '04323'),
(232, 'V100997', 'GELATINA LIGTH EN POLVO VARIOS SABORES AGUA, CAJA DE 20 A 25 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(233, 'V100040', 'CHILE DE ARBOL SECO DE 1ERA.CALIDAD.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(234, 'V100205', 'ALIMENTO INFANTIL DE CHAYOTE PRIMERA ETAPA CJA. C/24 PZAS. DE 65 A 75 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '15.00', 1, 10, 57, '04323'),
(235, 'V450030', 'BEBIDA PASTEURIZADA C/ LACTOBACILOS (YAKULT) DE 75 A 80 ML.  PQTE C/ 50 PZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PZA', NULL, 1, NULL, NULL, '04323'),
(236, 'V700067', 'MANZANILLA, DE 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 7, 138, '04323'),
(237, 'V700034', 'AJO GRANDE LIMPIO SIN DESHIDRATAR, SIN NACIMIENTOS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 7, 69, '04323'),
(238, 'V750016', 'TORTILLA DE MAIZ TOSTADA GRUESA DE 12-13 CMS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PAQ50PZA', 'PQTE', '54.75', 1, 14, 109, '04323'),
(239, 'V550017', 'PIERNA ENTERA SIN HUESO DE CERDO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(240, 'V700014', 'LIMON AGRIO, NO. 5', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.29', 1, 8, 69, '04323'),
(241, 'V100904', 'ARROZ INFLADO SABOR CHOCOLATE CON 12 VIT. Y MIN.  PAQ. DE 30 A 40 GRS. INDIVIDUAL.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(242, 'V250009', 'JARABE DE FRUTA NATURAL ENVASE DE 960 GRS. A 1 LITRO, TAPA ROSCA  VARIOS SABORES, RENDIMIENTO 1+5', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ENV', NULL, 1, NULL, NULL, '04323'),
(243, 'V450063', 'LECHE ENTERA ENVASE INDIVIDUAL DE 250 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'pza', '154.00', 1, 2, 109, '04323'),
(244, 'V700058', 'ELOTE DESGRANADO,FRESCO,TIERNO Y LIMPIO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.85', 1, 7, 69, '04323'),
(245, 'V200007', 'JUGO DE UVA 100% PURO ENVASE DE .950 A 1LT', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ENV', NULL, 1, NULL, NULL, '04323'),
(246, 'V700032', 'ACELGA LIMPIA,HOJA ENTERA,FRESCA,VERDE BRILLANTE SIN SIGNOS DE PUTREFACCION O DESHIDRATACION.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.26', 1, 7, 69, '04323'),
(247, 'v100460', 'GALLETA SALADA. CAJA DE 3,550 A 3,600 KG CON 200 PAQUETES DE 11 A 14 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(248, 'V100095', 'MERMELADA VARIOS SABORES INDIVIDUAL.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA20GR', 'PZA', '48.23', 1, 13, 109, '04323'),
(249, 'V100988', 'BASE AZUCARADA FORTIFICADA PARA PREPARAR BEBIDA SABOR FRESA,  VAINILLA Y CHOCOLATE CON 10 VITAMINAS Y MINERALES BOLSA DE 350 A 375 GRS._x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(250, 'V100916.', 'CAJETA EN OBLEAS, PIEZA DE 10 GRS. PQTE. CON 20 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(251, 'V700150', 'PLATANO MACHO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '1.94', 1, 8, 69, '04323'),
(252, 'V200009', 'NECTAR DE MANGO (BRICK 200 ML)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', '88.00', 1, 22, 109, '04323'),
(253, 'V450001', 'LECHE ENTERA ULTRAPASTEURIZADA ABREFACIL', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LT', 'LT', NULL, 1, NULL, NULL, '04323'),
(254, 'V100084', 'LENTEJA LIMPIA BOLSA DE 1 KG. LIBRE DE INSECTOS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA1KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(255, 'V100075', 'GUAYABA EN ALMIBAR ENTERA LTA. C/800 A 820 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA800GR', 'LTA', NULL, 1, NULL, NULL, '04323'),
(256, 'V700049', 'CHICHARO LIMPIO FRESCO HIDRATADO SIN NACIMIENTOS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.85', 1, 7, 69, '04323'),
(257, 'V700069', 'GERMINADO DE SOYA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.80', 1, 7, 69, '04323'),
(258, 'V100863.', 'DURAZNO EN ALMIBAR MITADES ABRE FACIL, LATA DE 800 A 850 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(259, 'V700012', 'JICAMA GRANDE DE 400 A 500 GRS.APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.38', 1, 7, 69, '04323'),
(260, 'V550059', 'CAÑA DE LOMO DE CERDO LIMPIO SIN NERVIOS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(261, 'V100902', 'AGUA BEBIDA DE SABOR BOTELLA DE 500 A 600 ML. (62 MG. NA) BAJA EN NA.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', NULL, 1, NULL, NULL, '04323'),
(262, 'V450065', 'YOGURT NATURAL Y/O DE SABORES SIN AZUCAR PIEZA DE 120 A 125 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 0, NULL, NULL, '04323'),
(263, 'V100507', 'AMARANTO FRESCO, TOSTADO SIN ENDULSAR. A. DE 200 A 300 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '3.80', 1, 1, 69, '04323'),
(264, 'V750058', 'CHAPATA NORMAL DE  60 A 70 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(265, 'V700089', 'CAÑA DE 12 A 15 CM. DE LARGO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.64', 1, 8, 69, '04323'),
(266, 'V100042', 'CHILE GUAJILLO GRANDE SECO, 1 ERA CALIDAD.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.28', 1, 24, 69, '04323'),
(267, 'V100140', 'ALIMENTO INFANTIL DE CIRUELA PASA SEGUNDA ETAPA 100 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '70.00', 1, 10, 57, '04323'),
(268, 'v850106', 'HOJA DE PLATANO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.00', 1, 7, 69, '04323'),
(269, 'V100497', 'COMINO OLOR,', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', NULL, 1, NULL, NULL, '04323'),
(270, 'V100661', 'CACAHUATE LIMPIO SIN SAL (BOLSA DE 500 MG)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(271, 'V100856', 'CEREAL SURTIDO INDIVIDUAL CON 8 PAQ. DE 25 A 45 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(272, 'V550040', 'BISTECK DE CERDO PIEZA DE 150 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.40', 1, 4, 69, '04323'),
(273, 'V100486', 'LATA FRIJOL REF. BAYO DE 3 KGS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '1.18', 1, 12, 69, '04323'),
(274, 'V250008.', 'JARABE PARA PREPARAR BEBIDAS DE FRUTAS NATURALES BOLSA DE 20 LITROS VARIOS SABORES, RENDIMIENTO 1+5', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'bsa', 'bsa', NULL, 1, NULL, NULL, '04323'),
(275, 'V700148', 'HOJA SANTA MANOJO DE UN KILO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'kilo', 'kilo', '0.00', 1, 7, 138, '04323'),
(276, 'v100123', 'REFRESCO SABOR LIMA LIMON SPRITE DE 355 ML', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA355ML', 'LTA', NULL, 0, NULL, NULL, '04323'),
(277, 'V100979.', 'PALETA DE CARAMELO MACIZO SABOR CEREZA C/GOMA DE MASCAR PIEZA DE 20GR. EN BOLSA DE 1 KG_x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(278, 'v100105', 'PASITAS DE 1KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA1KG', 'KG', '2.95', 1, 8, 69, '04323'),
(279, 'V550010', 'PULPA DE RES EN TROZO DE 100 GRS PIEZA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.47', 1, 3, 69, '04323'),
(280, 'V100990', 'MAIZ POZOLERO  LATA DE 3.00 A 3.300 KG_x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(281, 'V100847', 'SALSA TIPO INGLESA, DE 950 A 1000ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', '0.00', 1, 27, 138, '04323'),
(282, 'V700061', 'GERMINADO DE ALFALFA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.23', 1, 7, 69, '04323'),
(283, 'V700072', 'PEREJIL, DE 1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.36', 1, 7, 69, '04323'),
(284, 'V100961', 'GALLETA MARIA CAJA DE 20 PAQ. DE 160 A 180 GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', '4.06', 1, 20, 69, '04323'),
(285, 'V450049', 'ALIMENTO LACTEO FERMENTADO PARA BEBER CON LACTOBACILLUS DE SABORES, PIEZA CON 215 GR, PAQUETE CON 12 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '155.00', 1, 2, 109, '04323'),
(286, 'V600022', 'PECHUGA MOLIDA DE POLLO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '1.13', 1, 5, 69, '04323'),
(287, 'V700076', 'TOMATE VERDE LIMPIO MEDIANO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.24', 1, 7, 69, '04323'),
(288, 'V700081', 'MANGO MANILA 250 A 280 GRS APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.42', 1, 8, 69, '04323'),
(289, 'V700052', 'CEBOLLA CAMBRAY LIMPIA,SIN REMBLANDECIMIENTO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.31', 1, 7, 69, '04323'),
(290, 'V600002', 'PECHUGA ENTERA DE 1 KG APROXIMADAMENTE.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '1.60', 1, 5, 69, '04323'),
(291, 'V450017', 'MARGARINA DE 90 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BAR90GR', 'BARRA', '5.40', 1, 16, 69, '04323'),
(292, 'V200002', 'NECTAR DE DURAZNO (BRICK 200ML)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', '88.00', 1, 22, 109, '04323'),
(293, 'V550012', 'CABEZA DE CERDO LIMPIA CORTADA EN CUATRO PARTES.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.11', 1, 4, 69, '04323'),
(294, 'V850017.', 'MAZAPAN DE CACAHUATE PZA. 28 g.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(295, 'V700019', 'MELON CHINO GRANDE DE 1.5-2 KG APROX.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.34', 1, 8, 69, '04323');
INSERT INTO `catalogos_producto` (`id`, `clave`, `nombre`, `tipo_catalogo`, `presentacion`, `unimed`, `cal_unimed_min`, `habilitado`, `grupo_alimento_id`, `unimed_min_id`, `almacen_id`) VALUES
(296, 'V100495', 'CHICHARO EN LATA CON 400 A 420GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(297, 'V600011', 'MUSLO DE POLLO PIEZA DE 150 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.90', 1, 5, 69, '04323'),
(298, 'V700008', 'FRESA MEDIANA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.31', 1, 8, 69, '04323'),
(299, 'V600020', 'JAMON DE PAVO, REBANADA APROXIMADAMENTE 30 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 0, NULL, NULL, '04323'),
(300, 'V750041', 'TORTILLA DE MAIZ 30 GRS.APROX.BIEN COCIDA.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.13', 1, 14, 69, '04323'),
(301, 'V100908', 'HOJUELAS DE MAIZ TOSTADAS C/14 VIT. Y MINERALES. PQTE.INDIVIDUAL DE 25 A 30 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(302, 'V100114', 'PIMIENTA BLANCA MOLIDA. BOLSA DE 1 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(303, 'V100145', 'ALIMENTO INFANTIL DE POLLO C/VEG. Y PASTA SEGUNDA ETAPA . DE 90 A 100 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA24FCO', 'CJA', '68.00', 1, 10, 109, '04323'),
(304, 'V100718', 'JARABE SABOR MAPLE DE 950 A 960 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', NULL, 1, NULL, NULL, '04323'),
(305, 'V100981', 'SALSA DE TOMATE INDIVIDUAL SOBRE DE 8 GRS. BOLSA C/200 PIEZAS._x005F_x000D_ ', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(306, 'V100087.', 'FECULA DE MAIZ NATURAL', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PAQ750GR', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(307, 'V700136', 'CHILES CUARESMEÑO GRANDE', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KILO', 'KILO', '0.32', 1, 7, 69, '04323'),
(308, 'V100036', 'GELATINA EN POLVO VARIOS SABORES (LECHE) BOLSA DE 700 A 850 GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(309, 'V700039', 'CALABACITA ITALIANA MEDIANA CONCISTENCIA FIRME VERDE BRILLANTE. 200 GRS APROX', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.23', 1, 7, 69, '04323'),
(310, 'V700043', 'CILANTRO LIMPIO HOJA ENTERA,FRESCA,VERDE BRILLANTE SIN SIGNOS DE PUTREFACCION O DESHIDRATACION.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.23', 1, 7, 69, '04323'),
(311, 'V100834', 'MEDIAS NOCHES BIMBO  DE 320 A 340 GRS. PAQUETE CON 8 PIEZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(312, 'V550003', 'COSTILLA DE CARNERO C/ POCA GRASA,TROZO DE 120 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.33', 1, 3, 69, '04323'),
(313, 'V100109', 'PASTA PARA SOPA MENUDA,  BOLSA C/200 GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.50', 1, 1, 69, '04323'),
(314, 'V700070', 'PAPA AMARILLA 200GR A 300 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.86', 1, 1, 69, '04323'),
(315, 'V850035', 'TEJOCOTE', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.86', 1, 8, 69, '04323'),
(316, 'V250008.0', 'JARABE PARA PREPARAR BEBIDAS DE FRUTAS NATURALES BOLSA DE 20 LITROS VARIOS SABORES, RENDIMIENTO 1+5', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', NULL, 1, NULL, NULL, '04323'),
(317, 'V750081', 'TORTILLA DE MAIZ TOSTADA PARA TOTOPOS, BOLSA DE 4 KG.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '4.36', 1, 14, 69, '04323'),
(318, 'V100529', 'GRANADINA ROJA DE 950 ML A 1 LT.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', NULL, 1, NULL, NULL, '04323'),
(319, 'V100861', 'SALSA DE SOYA BOTELLA DE  950 A 1000 ML', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BOT', 'BOT', NULL, 1, NULL, NULL, '04323'),
(320, 'V350003', 'PALETA DE AGUA VARIOS SABORES ENVOLTURA INDIVIDUAL  DE 60 A 80 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(321, 'V450037', 'QUESO TIPO PETIT DE SABORES (DANONINO)PQTE. DE 180 GRS. C/ 4 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(322, 'V600025', 'SALCHICHA VIENA  PQTE DE 2.5 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '2.29', 0, 9, 69, '04323'),
(323, 'V100716', 'FRIJOL FLOR DE MAYO ENTERO LIMPIO PQTE C/1 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'BSA', '3.42', 1, 12, 69, '04323'),
(324, 'V100022', 'CEREAL DE AVENA PRECOCIDO P/BEBE, DE 250 A 300 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ENV', '3.60', 1, 10, 69, '04323'),
(325, 'V100415', 'MAYONESA C/ JUGO DE LIMON FCO. DE 3000 A 3500 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', '7.45', 1, 16, 69, '04323'),
(326, 'V100111.', 'PERA EN ALMIBAR MITADES, LATA DE800 A 820 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA800GR', 'LTA', NULL, 1, NULL, NULL, '04323'),
(327, 'V850034', 'TAMARINDO', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.40', 1, 8, 69, '04323'),
(328, 'V101017', 'EMPANIZADOR DE HOJUELAS DE MAIZ CRUJIENTES DE 330 A 360 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(329, 'V100852', 'POLVO PARA HORNEAR, LATA DE 400 A 460 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', NULL, 1, NULL, NULL, '04323'),
(330, 'V100837', 'PANQUESITOS CON GOTAS DE CHOCOLATE, PQTE DE 120 A 140GR C/2 PIEZAS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', NULL, 0, NULL, NULL, '04323'),
(331, 'V100995', 'AGUA PURIFICADA ENVASE DE 600 ML', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'env', NULL, 1, NULL, NULL, '04323'),
(332, 'V100128.', 'FECULA DE MAIZ VARIOS SABORES C/VIT. Y HIERRO, SOBRE DE 40 A 50 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'SBE', 'SBE', NULL, 1, NULL, NULL, '04323'),
(333, 'V450028', 'QUESO MANCHEGO REBANADA DE 40 GRS PQTE C/ 1.2 KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PQTE', '4.08', 1, 2, 69, '04323'),
(334, 'V100753.', 'PALETA C/ MALVAVISCO, CUBIERTA CON CHOCOLATE C/GOMITAS. PZAS. DE 45 GRS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(335, 'V100488', 'PASTA PARA SOPA TALLARIN, PAQ. DE 200 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '3.50', 1, 1, 69, '04323'),
(336, 'V700050', 'CHICHARO EN VAINA LIMPIO FRESCO SIN DESHIDRATAR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(337, 'V100845', 'MOSTAZA BAJA EN GRASA, FCO DE 400 A 440 GRS', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', '1.00', 1, 16, 69, '04323'),
(338, 'V100103', 'OREGANO LIMPIO DE 1RA CALIDAD', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(339, 'V700041', 'CEBOLLA BLANCA LIMPIA DE 200 A 300 GRS,SIN REMBLANDECIMIENTO.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '0.39', 1, 7, 69, '04323'),
(340, 'V600004', 'HAMBURGUESA 100% DE PECHUGA DE POLLO DE 120 GRS PIEZA PRECOCIDA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', '2.97', 1, 5, 69, '04323'),
(341, 'V850026', 'PALANQUETA DE CACAHUATE', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA50GR', 'PZA', '260.00', 1, 21, 109, '04323'),
(342, 'V100854', 'BLISTER DE MIEL DE ABEJA DE 20GRS CAJA C/120 PZAS.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'cja', 'cja', '16.50', 1, 13, 109, '04323'),
(343, 'V100863', 'DURAZNO EN ALMIBAR MITADES ABRE FACIL, LATA DE 800 A 850 GR.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'LTA', 'LTA', '0.72', 1, 21, 69, '04323'),
(344, 'V100250', 'ACEITE COMESTIBLE DE CANOLA (5 LT)', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ENV', '8.80', 1, 16, 87, '04323'),
(345, 'v100583', 'SAL DE MESA SOBRE INDIVIDUAL CON 1 GRAMO CAJA C/200 SOBRES', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'CJA', 'CJA', NULL, 1, NULL, NULL, '04323'),
(346, 'V100018', 'CANELA EN RAMA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(347, 'V100832', 'JARABE MIEL DE MAIZ INFANTIL FORTIFICADO.  FRASCO DE 500 A 600 ML.', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'FCO', 'FCO', '9.60', 1, 10, 69, '04323'),
(348, 'V150105', 'PLATO DESECHABLE TERMICO (UNICEL) PASTELERO, PAQUETE C/ 20 PIEZAS, BLANCO.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(349, 'V150011', 'PELICULA TRANSPARENTE AUTOADHERIBLE ROLLO CON  600 M. CON 30 CM DE ANCHO, 2,200 KG. APROX.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'ROLLO', 'ROLLO', NULL, 1, NULL, NULL, '04323'),
(350, 'V150025', 'TENEDOR DE PLASTICO INFANTIL PAQUETE C/50 PZAS. BLANCO', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(351, 'V150012', 'PALILLO DE MADERA REDONDEADO PAQUETE CON 250 PZAS.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(352, 'V150015', 'PLATO DE PLASTICO SIN DIVISION DE 25 CM. PQTE. C/25 PZAS. BLANCO', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PAQ25PZA', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(353, 'V150027', 'BLONDA RECTANGULAR DE 43 X 33 CM PQTE C/100 PZAS, COLOR BLANCO', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(354, 'V150040', 'PAPEL ALUMINIO BOBINA C/400 METROS, CALIBRE STANDAR, MATERIAL GRADO ALIMENTICIO NO RECICLADO CON DESPACHADOR.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(355, 'V150002', 'BLONDA REDONDA DE 30 CMS. DE DIAMETRO PAQUETE  CON 100 PIEZAS', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PAQ100PZA', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(356, 'V150037', 'MOLDE PARA GELATINA , # 17 DE 150 ML, PAQUETE C/50 PZAS', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(357, 'V150004', 'CUCHARA CAFETERA DE PLASTICO  PAQUETE CON 50 PIEZAS', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PAQ50PZA', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(358, 'V150005', 'CUCHARA DE PLASTICO SOPERA PAQUETE CON 25 PIEZAS, CONCAVA', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PAQ25PZA', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(359, 'v150006', 'CUCHILLO DE PLASTICO GRANDE PAQUETE CON 25 PIEZAS', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PAQ25PZA', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(360, 'V150026', 'CHAROLA DE CARTON 41X33 CMS. NO. 20 (GRADO ALIMENTICIO PAPEL KRAFT NO RECICLADO)', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(361, 'V150019', 'TENEDOR DE PLASTICO GRANDE DE 15 CM.  DE LARGO, PAQUETE CON 25 PIEZAS', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(362, 'V150114', 'BLONDA REDONDA DE 20 CMS. DE DIAMETRO PAQUETE  CON 100 PIEZAS, BLANCA.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(363, 'V150113', 'DOMO RECTANGULAR  DE PLASTICO DE 22  X 12  X  8 CMS.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(364, 'v150010', 'PAPEL ESTRASA', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'KG', 'KG', NULL, 1, NULL, NULL, '04323'),
(365, 'V150014', 'PLATO DE PLASTICO CON DIVISION DE 23 CMS. BLANCO, PAQUETE CON 25 PIEZAS', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'PQTE', 'PQTE', NULL, 1, NULL, NULL, '04323'),
(366, 'V150009', 'PAPEL ALUMINIO ROLLO DE 10 METROS X 30 CMS.', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'ROLLO', 'ROLLO', NULL, 1, NULL, NULL, '04323'),
(367, 'V150031', 'POLIETILENO DELGADO CAL 150 DE 44 CMS DOBLE ANCHO (PARA ABRIR A 88 CMS) ROLLO 60 KGS APROX', 'UTENSILIOS PARA EL SERVICIO DE ALIMENTACION', 'ROLLO', 'ROLLO', NULL, 1, NULL, NULL, '04323'),
(368, '1', 'SÁNDWICH DE JAMÓN DE PAVO CON AGUACATE', '', NULL, NULL, '174.00', 1, NULL, 139, '04323'),
(369, '2', 'CHULETA FRITA', NULL, NULL, NULL, '356.00', 1, NULL, 139, '04323'),
(370, '3', 'SÁNDWICH DE JAMÓN DE PAVO CON AGUACATE Y JITOMATE ', NULL, NULL, NULL, '268.10', 1, NULL, 139, '04323'),
(371, 'V600028', 'JAMÓN DE PIERNA DE CERDO CON 14-16% DE PROTEÍNA, LIBRE DE GLUTÉN, REBANADA DE 30GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'REBANADA', '1.33', 1, 9, 69, '04323'),
(372, 'V600031', 'SALCHICHA VIENA. PAQUETE DE 1700 A 1900KG', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'PZA', '2.29', 1, 9, 69, '04323'),
(373, 'V600029', 'JAMÓN DE PAVO FINO CON 14-16% DE PROTEÍNA DE MUSLO DE PAVO REBANADA DE 30GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PQTE', 'REBANADA', '1.28', 1, 9, 69, '04323'),
(375, 'V600030', 'SOYA TEXTURIZADA NATURAL Y/O DE SABORES BOLSA 200GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'BSA', 'GR', '2.80', 1, 12, 69, '04323'),
(376, 'V100938', 'LECHE DESLACTOSADA ENVASE INDIVIDUAL DE 250ML', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'ENV', 'ML', '120.00', 1, 2, 42, '04323'),
(377, 'V100986', 'QUESO CREMA DE LECHE ENTERA Y CREMA DE LECHE PASTEURIZADAS DE VACA C/GRASA 27.5%PROTEÍNAS 4.4% Y HUMEDAD MÁXIMA 62%', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(378, 'V450071', 'YOGURT NATURAL CON GRANOLA CON LECHE ENTERA PASTEURIZADA Y PREPARADO DE GRANOLA 12% DE 120 A 130GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(379, 'V450072', 'YOGURT NATURAL CREMOSO CON LECHE ENTERA PASTEURIZADA DE VACA, LECHE DESCREMADA EN POLVO DE 100 A 120GR', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', NULL, 1, NULL, NULL, '04323'),
(380, 'V700013', 'KIWI DE PRIOMERA CALIDAD', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'PZA', 'PZA', '0.60', 1, 8, 69, '04323'),
(381, '4', 'PUCHERO DE RES ', NULL, NULL, NULL, '199.71', 1, NULL, 139, '04323'),
(382, '5', 'HUEVO A LA MEXICANA SIN CHILE ', NULL, NULL, NULL, '144.50', 1, NULL, 139, '04323'),
(383, 'TEMP001', 'AGUA FILTRADA', 'PROD ALIMENTICIOS PARA EL PERSONAL EN LAS INSTALACIONES', 'INDEFINIDA', 'ML', NULL, 1, NULL, NULL, '04323'),
(384, '6', 'HUEVO CON JAMON ', NULL, NULL, NULL, '263.00', 1, NULL, 139, '04323'),
(385, '7', 'PRUEBA', NULL, NULL, NULL, '674.00', 1, NULL, 139, '04323');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_programa`
--

CREATE TABLE `catalogos_programa` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_puesto`
--

CREATE TABLE `catalogos_puesto` (
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_subcategoria`
--

CREATE TABLE `catalogos_subcategoria` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tipocatalogo`
--

CREATE TABLE `catalogos_tipocatalogo` (
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `clave` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `partida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tipocomensal`
--

CREATE TABLE `catalogos_tipocomensal` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_tipocomensal`
--

INSERT INTO `catalogos_tipocomensal` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2020-11-30', '2020-11-30', 'EMPLEADO'),
(2, 1, '2020-11-30', '2020-11-30', 'PACIENTE'),
(3, 1, '2021-01-15', '2021-01-15', 'BANCO DE SANGRE'),
(4, 1, '2021-01-15', '2021-01-15', 'TERAPIA AMBULATORIA'),
(5, 1, '2021-01-15', '2021-01-15', 'DIRECCIÓN'),
(6, 1, '2021-01-15', '2021-01-15', 'ENSEÑANZA'),
(7, 1, '2021-02-15', '2021-02-15', 'MÉDICOS CX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tipodieta`
--

CREATE TABLE `catalogos_tipodieta` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `comensal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_tipodieta`
--

INSERT INTO `catalogos_tipodieta` (`id`, `habilitado`, `created`, `updated`, `nombre`, `comensal_id`) VALUES
(1, 1, '2020-11-30', '2020-11-30', 'DIETA EN PURÉS', 2),
(2, 1, '2020-11-30', '2020-11-30', 'DIETA EN PICADOS', 2),
(3, 1, '2020-11-30', '2020-11-30', 'DIETAS BLANDAS', 2),
(4, 1, '2020-11-30', '2020-11-30', 'DIETAS NORMALES', 2),
(5, 1, '2020-11-30', '2020-11-30', 'DIETAS HIPOSÓDICAS', 2),
(6, 1, '2020-11-30', '2020-11-30', 'DIETAS LICUADAS POR SONDA', 2),
(7, 1, '2020-11-30', '2020-11-30', 'DIETAS ESPECIALES', 2),
(8, 1, '2020-11-30', '2020-11-30', 'FÓRMULAS LÁCTEAS', 2),
(9, 1, '2020-11-30', '2020-11-30', 'DIETAS NORMALES PARA EMPLEADOS', 1),
(10, 1, '2020-11-30', '2020-11-30', 'LUNCH', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tipoestatus`
--

CREATE TABLE `catalogos_tipoestatus` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_tipoestatus`
--

INSERT INTO `catalogos_tipoestatus` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2021-03-29', '2021-03-29', 'AÑO PAGO 2020'),
(2, 1, '2021-03-29', '2021-03-29', 'DETECTADO'),
(3, 1, '2021-03-29', '2021-03-29', 'NO PROCEDE'),
(4, 1, '2021-03-29', '2021-03-29', 'P/V'),
(5, 1, '2021-03-29', '2021-03-29', 'P/P'),
(6, 1, '2021-03-29', '2021-03-29', 'VALIDADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tipoprograma`
--

CREATE TABLE `catalogos_tipoprograma` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_tipoprograma`
--

INSERT INTO `catalogos_tipoprograma` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2021-03-29', '2021-03-29', 'GASTOS CATASTRÓFICOS'),
(2, 1, '2021-03-29', '2021-03-29', 'GRATUIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tiporegistro`
--

CREATE TABLE `catalogos_tiporegistro` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_tiporegistro`
--

INSERT INTO `catalogos_tiporegistro` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2021-03-29', '2021-03-29', 'CONTINUIDAD'),
(2, 1, '2021-03-29', '2021-03-29', 'NUEVO'),
(3, 1, '2021-03-29', '2021-03-29', 'PREPARACIÓN'),
(4, 1, '2021-03-29', '2021-03-29', 'SEGUIMIENTO'),
(5, 1, '2021-03-29', '2021-03-29', 'ZSUBSANACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_tiposervicio`
--

CREATE TABLE `catalogos_tiposervicio` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_tiposervicio`
--

INSERT INTO `catalogos_tiposervicio` (`id`, `habilitado`, `created`, `updated`, `nombre`) VALUES
(1, 1, '2020-11-30', '2021-01-15', 'DESAYUNO EMPLEADOS'),
(2, 1, '2020-11-30', '2021-01-15', 'COMIDA EMPLEADOS'),
(3, 1, '2020-11-30', '2021-01-15', 'CENA EMPLEADOS'),
(4, 1, '2020-11-30', '2021-01-15', 'COLACIÓN EMPLEADOS'),
(5, 1, '2021-02-02', '2021-02-15', 'COMIDA PACIENTES'),
(6, 1, '2021-02-15', '2021-02-15', 'DESAYUNO PACIENTES'),
(7, 1, '2021-02-15', '2021-02-15', 'CENA PACIENTES'),
(8, 1, '2021-02-15', '2021-02-15', 'COLACIÓN PACIENTES'),
(9, 1, '2021-02-15', '2021-02-15', 'LUNCH');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos_unidadmedida`
--

CREATE TABLE `catalogos_unidadmedida` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombre_corto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos_unidadmedida`
--

INSERT INTO `catalogos_unidadmedida` (`id`, `habilitado`, `created`, `updated`, `nombre`, `nombre_corto`) VALUES
(1, 1, '2020-10-07', '2020-10-07', 'AMPULA', 'AMP'),
(2, 1, '2020-10-07', '2020-10-07', 'BARRA', 'BARRA'),
(3, 1, '2020-10-07', '2020-10-07', 'BARRIL', 'BARRIL'),
(4, 1, '2020-10-07', '2020-10-07', 'BASE', 'BASE'),
(5, 1, '2020-10-07', '2020-10-07', 'BLOCK', 'BLOCK'),
(6, 1, '2020-10-07', '2020-10-07', 'BOTELLA', 'BOT'),
(7, 1, '2020-10-07', '2020-10-07', 'BOLSA', 'BSA'),
(8, 1, '2020-10-07', '2020-10-07', 'BSA1000ML', 'BSA1000ML'),
(9, 1, '2020-10-07', '2020-10-07', 'BSA1000PZA', 'BSA1000PZA'),
(10, 1, '2020-10-07', '2020-10-07', 'BSA10PZA', 'BSA10PZA'),
(11, 1, '2020-10-07', '2020-10-07', 'BSA12PQTE', 'BSA12PQTE'),
(12, 1, '2020-10-07', '2020-10-07', 'BSA12SOB', 'BSA12SOB'),
(13, 1, '2020-10-07', '2020-10-07', 'BOLSA 2000', 'BSA2000'),
(14, 1, '2020-10-07', '2020-10-07', 'BSA2000ML', 'BSA2000ML'),
(15, 1, '2020-10-07', '2020-10-07', 'BSA25PZA', 'BSA25PZA'),
(16, 1, '2020-10-07', '2020-10-07', 'BSA2KG', 'BSA2KG'),
(17, 1, '2020-10-07', '2020-10-07', 'BSA5000ML', 'BSA5000ML'),
(18, 1, '2020-10-07', '2020-10-07', 'BOTE', 'BTE'),
(19, 1, '2020-10-07', '2020-10-07', 'BULTO', 'BULTO'),
(20, 1, '2020-10-07', '2020-10-07', 'CAP', 'CAP'),
(21, 1, '2020-10-07', '2020-10-07', 'CARRETE', 'CARRETE'),
(22, 1, '2020-10-07', '2020-10-07', 'CARTA', 'CARTA'),
(23, 1, '2020-10-07', '2020-10-07', 'CARTUCHO', 'CARTUCHO'),
(24, 1, '2020-10-07', '2020-10-07', 'CHAROLA', 'CHARO'),
(25, 1, '2020-10-07', '2020-10-07', 'CIENTO', 'CIENTO'),
(26, 1, '2020-10-07', '2020-10-07', 'CAJA', 'CJA'),
(27, 1, '2020-10-07', '2020-10-07', 'CJA/6AMP', 'CJA/6AMP'),
(28, 1, '2020-10-07', '2020-10-07', 'CJA100PZS', 'CJA100PZA'),
(29, 1, '2020-10-07', '2020-10-07', 'CJA10PZS', 'CJA10PZS'),
(30, 1, '2020-10-07', '2020-10-07', 'CJA12PZA', 'CJA12PZA'),
(31, 1, '2020-10-07', '2020-10-07', 'CJA200PZS', 'CJA200PZS'),
(32, 1, '2020-10-07', '2020-10-07', 'CJA30PZS', 'CJA30PZS'),
(33, 1, '2020-10-07', '2020-10-07', 'CJA500PZS', 'CJA500PZS'),
(34, 1, '2020-10-07', '2020-10-07', 'CJA50PZS', 'CJA50PZS'),
(35, 1, '2020-10-07', '2020-10-07', 'CENTIMETRO', 'CM'),
(36, 1, '2020-10-07', '2020-10-07', 'COMPRIMIDO', 'COM'),
(37, 1, '2020-10-07', '2020-10-07', 'CONJUNTO', 'CONJUNTO'),
(38, 1, '2020-10-07', '2020-10-07', 'CUBETA', 'CUBETA'),
(39, 1, '2020-10-07', '2020-10-07', 'CUBITAINER', 'CUBITAINER'),
(40, 1, '2020-10-07', '2020-10-07', 'CUÑETE', 'CUÑ'),
(41, 1, '2020-10-07', '2020-10-07', 'DOSIS', 'DOSIS'),
(42, 1, '2020-10-07', '2020-10-07', 'ENVASE', 'ENV'),
(43, 1, '2020-10-07', '2020-10-07', 'ENVASE CON 1000 PIEZAS', 'ENV1000PZA'),
(44, 1, '2020-10-07', '2020-10-07', 'ENVASE 100 PZS', 'ENV100PZA'),
(45, 1, '2020-10-07', '2020-10-07', 'ENV12PZS', 'ENV12PZA'),
(46, 1, '2020-10-07', '2020-10-07', 'ENVASE 200 PIEZAS', 'ENV200PZA'),
(47, 1, '2020-10-07', '2020-10-07', 'ENVASE 24 PZAS', 'ENV24PZA'),
(48, 1, '2020-10-07', '2020-10-07', 'ENVASE 25 PIEZAS', 'ENV250PZA'),
(49, 1, '2020-10-07', '2020-10-07', 'ENVASE 500 PIEZAS', 'ENV500PZA'),
(50, 1, '2020-10-07', '2020-10-07', 'ENVASE 50 PIEZAS', 'ENV50PZA'),
(51, 1, '2020-10-07', '2020-10-07', 'EMPAQUE', 'EPQUE'),
(52, 1, '2020-10-07', '2020-10-07', 'EQPO', 'EQP'),
(53, 1, '2020-10-07', '2020-10-07', 'ESTUCHE', 'ESTUCHE'),
(54, 1, '2020-10-07', '2020-10-07', 'FAJILLA', 'FAJILLA'),
(55, 1, '2020-10-07', '2020-10-07', 'fam', 'fam'),
(56, 1, '2020-10-07', '2020-10-07', 'FRASCO AMPULA', 'FAMP'),
(57, 1, '2020-10-07', '2020-10-07', 'FRASCO', 'FCO'),
(58, 1, '2020-10-07', '2020-10-07', 'FCO1000ML', 'FCO1000ML'),
(59, 1, '2020-10-07', '2020-10-07', 'FCO100ML', 'FCO100ML'),
(60, 1, '2020-10-07', '2020-10-07', 'FCO2000ML', 'FCO2000ML'),
(61, 1, '2020-10-07', '2020-10-07', 'FCO250ML', 'FCO250ML'),
(62, 1, '2020-10-07', '2020-10-07', 'FCO5000ML', 'FCO5000ML'),
(63, 1, '2020-10-07', '2020-10-07', 'FCO500ML', 'FCO500ML'),
(64, 1, '2020-10-07', '2020-10-07', 'FCO50ML', 'FCO50ML'),
(65, 1, '2020-10-07', '2020-10-07', 'FRANCO GOTERO', 'FGO'),
(66, 1, '2020-10-07', '2020-10-07', 'GALON', 'GAL'),
(67, 1, '2020-10-07', '2020-10-07', 'GAL3.67', 'GAL3.67'),
(68, 1, '2020-10-07', '2020-10-07', 'GARRAFA', 'GARRAFA'),
(69, 1, '2020-10-07', '2020-12-17', 'GRAMO', 'GR'),
(70, 1, '2020-10-07', '2020-10-07', 'HOJA', 'HOJA'),
(71, 1, '2020-10-07', '2020-10-07', 'JERINGA', 'jer'),
(72, 1, '2020-10-07', '2020-10-07', 'JUEGO', 'JGO'),
(73, 1, '2020-10-07', '2020-10-07', 'KILO', 'KG'),
(74, 1, '2020-10-07', '2020-10-07', 'KILO', 'KILO'),
(75, 1, '2020-10-07', '2020-10-07', 'KIT', 'KIT'),
(76, 1, '2020-10-07', '2020-10-07', 'LAMIN', 'LAMIN'),
(77, 1, '2020-10-07', '2020-10-07', 'LOTE', 'LOTE'),
(78, 1, '2020-10-07', '2020-10-07', 'LITRO', 'LT'),
(79, 1, '2020-10-07', '2020-10-07', 'LATA', 'LTA'),
(80, 1, '2020-10-07', '2020-10-07', 'METRO CUBICO', 'M3'),
(81, 1, '2020-10-07', '2020-10-07', 'MADEJA', 'MADEJA'),
(82, 1, '2020-10-07', '2020-10-07', 'MALETA', 'MALETA'),
(83, 1, '2020-10-07', '2020-10-07', 'MANOJO', 'MAN'),
(84, 1, '2020-10-07', '2020-10-07', 'MEZCLA', 'MEZCL'),
(85, 1, '2020-10-07', '2020-10-07', 'MEZCLADO', 'MEZDO'),
(86, 1, '2020-10-07', '2020-10-07', 'MILLAR', 'MILLAR'),
(87, 1, '2020-10-07', '2020-10-07', 'ML', 'ML'),
(88, 1, '2020-10-07', '2020-10-07', 'MODULO', 'MODU'),
(89, 1, '2020-10-07', '2020-10-07', 'METRO', 'MT'),
(90, 1, '2020-10-07', '2020-10-07', 'METRO2', 'MT2'),
(91, 1, '2020-10-07', '2020-10-07', 'NEBULIZACION', 'neb'),
(92, 1, '2020-10-07', '2020-10-07', 'PACA', 'PACA'),
(93, 1, '2020-10-07', '2020-10-07', 'PAQ100PZA', 'PAQ100PZA'),
(94, 1, '2020-10-07', '2020-10-07', 'PAQ24PZA', 'PAQ24PZA'),
(95, 1, '2020-10-07', '2020-10-07', 'PAR', 'PAR'),
(96, 1, '2020-10-07', '2020-10-07', 'PRUEBA', 'PBA'),
(97, 1, '2020-10-07', '2020-10-07', 'PIE/CUB', 'PIE/C'),
(98, 1, '2020-10-07', '2020-10-07', 'PLACA', 'PLACA'),
(99, 1, '2020-10-07', '2020-10-07', 'PLIEGO', 'PLIEGO'),
(100, 1, '2020-10-07', '2020-10-07', 'PORRON', 'PORRON'),
(101, 1, '2020-10-07', '2020-10-07', 'PAQUETE', 'PQTE'),
(102, 1, '2020-10-07', '2020-10-07', 'PQTE10PZS', 'PQTE10PZS'),
(103, 1, '2020-10-07', '2020-10-07', 'PQTE14PZS', 'PQTE14PZS'),
(104, 1, '2020-10-07', '2020-10-07', 'PQTE25PZS', 'PQTE25PZS'),
(105, 1, '2020-10-07', '2020-10-07', 'PQTE3PZS', 'PQTE3PZS'),
(106, 1, '2020-10-07', '2020-10-07', 'PQTE4PZS', 'PQTE4PZS'),
(107, 1, '2020-10-07', '2020-10-07', 'PQTE50PZS', 'PQTE50PZS'),
(108, 1, '2020-10-07', '2020-10-07', 'PT', 'PT'),
(109, 1, '2020-10-07', '2020-10-07', 'PIEZA', 'PZA'),
(110, 1, '2020-10-07', '2020-10-07', 'RACK', 'RACK'),
(111, 1, '2020-10-07', '2020-10-07', 'ROLLO', 'ROLLO'),
(112, 1, '2020-10-07', '2020-10-07', 'SACO', 'SACO'),
(113, 1, '2020-10-07', '2020-10-07', 'sbe', 'sbe'),
(114, 1, '2020-10-07', '2020-10-07', 'SCO', 'SCO'),
(115, 1, '2020-10-07', '2020-10-07', 'SERVICIO', 'SERVI'),
(116, 1, '2020-10-07', '2020-10-07', 'SET', 'SET'),
(117, 1, '2020-10-07', '2020-10-07', 'SISTEMA', 'SISTEMA'),
(118, 1, '2020-10-07', '2020-10-07', 'sob', 'sob'),
(119, 1, '2020-10-07', '2020-10-07', 'SOBRE', 'SOBRE'),
(120, 1, '2020-10-07', '2020-10-07', 'TABLETA', 'TAB'),
(121, 1, '2020-10-07', '2020-10-07', 'TAMBO', 'TAMBO'),
(122, 1, '2020-10-07', '2020-10-07', 'TANQUE', 'TANQUE'),
(123, 1, '2020-10-07', '2020-10-07', 'TARR', 'TAR'),
(124, 1, '2020-10-07', '2020-10-07', 'TUBO', 'TBO'),
(125, 1, '2020-10-07', '2020-10-07', 'TBO24PZA', 'TBO24'),
(126, 1, '2020-10-07', '2020-10-07', 'TBO25PZA', 'TBO25'),
(127, 1, '2020-10-07', '2020-10-07', 'TIRA', 'TIRA'),
(128, 1, '2020-10-07', '2020-10-07', 'TIRA C/10', 'TIRA C/10'),
(129, 1, '2020-10-07', '2020-10-07', 'TIRA C/10TAB', 'TIRA C/10TAB'),
(130, 1, '2020-10-07', '2020-10-07', 'TANQUE', 'TQUE'),
(131, 1, '2020-10-07', '2020-10-07', 'TRAMO', 'TRAMO'),
(132, 1, '2020-10-07', '2020-10-07', 'TRO', 'TRO'),
(133, 1, '2020-10-07', '2020-10-07', 'TUBOC/100VIAL', 'TUBOC/100VIAL'),
(134, 1, '2020-10-07', '2020-10-07', 'UNIDOSIS', 'UNI'),
(135, 1, '2020-10-07', '2020-10-07', 'UNIDAD', 'UNID'),
(136, 1, '2020-10-07', '2020-10-07', 'VALE', 'VALE'),
(137, 1, '2020-10-07', '2020-10-07', 'VIAL', 'VIAL'),
(138, 1, '2021-01-15', '2021-01-15', 'MICROGRAMO', 'ΜG'),
(139, 1, '2021-01-19', '2021-01-19', 'RACIÓN', 'RAC'),
(140, 0, '2021-01-19', '2021-01-25', 'RACIÓN', 'RAC'),
(141, 1, '2021-01-22', '2021-01-22', 'REBANADA', 'REB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-30 18:05:40.258007', '2', 'dietetica', 1, '[{\"added\": {}}]', 4, 1),
(2, '2020-11-30 18:08:10.690851', '2', 'dietetica', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"User permissions\"]}}]', 4, 1),
(3, '2021-02-04 17:20:20.682539', '2', 'dietetica', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(4, '2021-02-04 17:21:27.390782', '2', 'dietetica', 2, '[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]', 4, 1),
(5, '2021-02-04 17:22:11.259633', '2', 'dietetica', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(6, '2021-02-04 17:30:25.399378', '383', 'AGUA PURIFICADA', 1, '[{\"added\": {}}]', 16, 1),
(7, '2021-02-04 17:30:57.650024', '383', 'AGUA PURIFICADA', 2, '[{\"changed\": {\"fields\": [\"Tipo catalogo\"]}}]', 16, 1),
(8, '2021-02-04 17:37:44.550388', '383', 'AGUA FILTRADA', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Presentacion\"]}}]', 16, 1),
(9, '2021-02-26 15:26:24.950307', '8', 'JAMON REBANADA DE 30 GRS APROXIMADA (TIPO VIRGINIA)', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(10, '2021-02-26 15:27:03.077008', '10', 'YOGURTH VARIOS SABORES, PAQUETE C/7 PZAS. DE 125 GR. C/LECHE ENTERA Y FRUTAS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(11, '2021-02-26 15:27:59.387365', '28', 'GALLETA SUAVE CON MALVAVISCO Y COCO, 4 PAQUETES DE 130 A 140 GR. CAJA DE 500 A 570 GRS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(12, '2021-02-26 15:28:05.057581', '43', 'GALLETA SUAVE CON MALVAVISCO CAJA DE 500 A 570 GRS._x005F_x000D_', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Habilitado\"]}}]', 16, 1),
(13, '2021-02-26 15:28:08.885465', '28', 'GALLETA SUAVE CON MALVAVISCO Y COCO, 4 PAQUETES DE 130 A 140 GR. CAJA DE 500 A 570 GRS.', 2, '[]', 16, 1),
(14, '2021-02-26 15:28:30.334435', '58', 'YOGURTH VARIOS SABORES, PAQUETE C/6 PZAS. DE 125 A150 GR. C/LECHE ENTERA Y FRUTAS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(15, '2021-02-26 15:28:57.995581', '79', 'DONAS PQTE DE 95 A 110 GRS CON 4 PIEZAS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(16, '2021-02-26 15:29:18.317189', '84', 'LECHE DESLACTOSA LIGTH ENVASE INDIVIDUAL DE 250 ML.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(17, '2021-02-26 15:29:34.982242', '88', 'REFRESCO EN LATA SABOR COLA LIGHT DE  355 ML.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(18, '2021-02-26 15:29:52.739584', '90', 'BOLSA DE HIELO', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(19, '2021-02-26 15:30:09.706473', '79', 'DONAS PQTE DE 95 A 110 GRS CON 4 PIEZAS.', 2, '[]', 16, 1),
(20, '2021-02-26 15:30:14.065171', '96', 'DONAS PQTE DE 95 A 110 GRS CON 4 PIEZAS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(21, '2021-02-26 15:30:32.588220', '97', 'PANQUESITOS CON GOTAS DE CHOCOLATE, PQTE DE 120 A 140GR C/2 PIEZAS', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(22, '2021-02-26 15:31:03.689799', '97', 'PANQUESITOS CON GOTAS DE CHOCOLATE, PQTE DE 120 A 140GR C/2 PIEZAS', 2, '[]', 16, 1),
(23, '2021-02-26 15:31:21.072329', '118', 'HOJUELAS DE MAIZ ESCARCHADAS C/12 VIT. Y MINERALES. PQTE.INDIVIDUAL DE 30 A 40 GRS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(24, '2021-02-26 15:31:26.610749', '118', 'HOJUELAS DE MAIZ ESCARCHADAS C/12 VIT. Y MINERALES. PQTE.INDIVIDUAL DE 30 A 40 GRS.', 2, '[]', 16, 1),
(25, '2021-02-26 15:31:41.241333', '140', 'REPOSTERÍA EN BOLSA DE CELOFÁN 70 A 90 GRS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(26, '2021-02-26 15:31:45.908520', '140', 'REPOSTERÍA EN BOLSA DE CELOFÁN 70 A 90 GRS.', 2, '[]', 16, 1),
(27, '2021-02-26 15:32:10.865671', '144', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(28, '2021-02-26 15:32:15.597711', '144', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 2, '[]', 16, 1),
(29, '2021-02-26 15:32:31.349514', '144', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 2, '[]', 16, 1),
(30, '2021-02-26 15:32:35.662698', '157', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(31, '2021-02-26 15:32:40.197520', '157', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 2, '[]', 16, 1),
(32, '2021-02-26 15:32:43.770133', '144', 'GALLETAS CON CHISPAS DE CHOCOLATE, CAJA CON 5 PQTS. DE 300 A 450 GRS.', 2, '[]', 16, 1),
(33, '2021-02-26 15:32:59.819527', '158', 'PIPIAN EN PASTA DE PRIMERA CALIDAD CUBETA C/4 KG._x005F_x000D_', 2, '[{\"changed\": {\"fields\": [\"Nombre\", \"Habilitado\"]}}]', 16, 1),
(34, '2021-02-26 15:33:18.018032', '163', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(35, '2021-02-26 15:33:23.237911', '213', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(36, '2021-02-26 15:33:28.925838', '163', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 2, '[]', 16, 1),
(37, '2021-02-26 15:33:32.667299', '213', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 2, '[]', 16, 1),
(38, '2021-02-26 15:33:48.722495', '172', 'JUGO DE FRUTA NATURAL LISTO PARA SERVIR, ENVASE DE 3.8 LITROS (GALON) TAPA ROSCA, VARIOS SABORES.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(39, '2021-02-26 15:34:06.831261', '196', 'BOLSA HIELO (2)', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(40, '2021-02-26 15:34:29.731629', '213', 'MANTECADAS DE VAINILLA PQTE DE 120 A 130 GRS. CON 4 PIEZAS', 2, '[]', 16, 1),
(41, '2021-02-26 15:34:51.038090', '241', 'ARROZ INFLADO SABOR CHOCOLATE CON 12 VIT. Y MIN.  PAQ. DE 30 A 40 GRS. INDIVIDUAL.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(42, '2021-02-26 15:35:06.756603', '262', 'YOGURT NATURAL Y/O DE SABORES SIN AZUCAR PIEZA DE 120 A 125 GR.', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(43, '2021-02-26 15:35:24.041500', '276', 'REFRESCO SABOR LIMA LIMON SPRITE DE 355 ML', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(44, '2021-02-26 15:35:40.586850', '299', 'JAMON DE PAVO, REBANADA APROXIMADAMENTE 30 GRS', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(45, '2021-02-26 15:35:57.442444', '322', 'SALCHICHA VIENA  PQTE DE 2.5 KG', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1),
(46, '2021-02-26 15:36:14.198153', '97', 'PANQUESITOS CON GOTAS DE CHOCOLATE, PQTE DE 120 A 140GR C/2 PIEZAS', 2, '[]', 16, 1),
(47, '2021-02-26 15:36:19.100242', '330', 'PANQUESITOS CON GOTAS DE CHOCOLATE, PQTE DE 120 A 140GR C/2 PIEZAS', 2, '[{\"changed\": {\"fields\": [\"Habilitado\"]}}]', 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'catalogos', 'area'),
(19, 'catalogos', 'articulo'),
(18, 'catalogos', 'categoria'),
(20, 'catalogos', 'cie10'),
(21, 'catalogos', 'cie9'),
(8, 'catalogos', 'clasificacion'),
(17, 'catalogos', 'empleado'),
(37, 'catalogos', 'empleadosseguropopular'),
(34, 'catalogos', 'entidadfederativa'),
(9, 'catalogos', 'grupoalimento'),
(35, 'catalogos', 'plaza'),
(30, 'catalogos', 'procedenciapaciente'),
(16, 'catalogos', 'producto'),
(32, 'catalogos', 'programa'),
(36, 'catalogos', 'puesto'),
(10, 'catalogos', 'subcategoria'),
(11, 'catalogos', 'tipocatalogo'),
(12, 'catalogos', 'tipocomensal'),
(13, 'catalogos', 'tipodieta'),
(28, 'catalogos', 'tipoestatus'),
(33, 'catalogos', 'tipoprograma'),
(29, 'catalogos', 'tiporegistro'),
(14, 'catalogos', 'tiposervicio'),
(15, 'catalogos', 'unidadmedida'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(22, 'sidya', 'menu'),
(25, 'sidya', 'menudet'),
(23, 'sidya', 'receta'),
(24, 'sidya', 'recetadet'),
(27, 'sies', 'encuestamedicos'),
(26, 'sies', 'encuestapacientes'),
(31, 'sigmefi', 'registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-30 14:54:03.091362'),
(2, 'auth', '0001_initial', '2020-11-30 14:54:08.730878'),
(3, 'admin', '0001_initial', '2020-11-30 14:54:29.050610'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-30 14:54:34.265119'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-30 14:54:34.413581'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-30 14:54:38.510488'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-30 14:54:41.430586'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-30 14:54:44.377919'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-30 14:54:44.575812'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-30 14:54:47.165741'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-30 14:54:47.385164'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-30 14:54:47.534256'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-30 14:54:50.785655'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-30 14:54:53.923047'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-30 14:54:56.963886'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-30 14:54:57.168923'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-30 14:55:00.172400'),
(18, 'catalogos', '0001_initial', '2020-11-30 14:55:16.762512'),
(19, 'catalogos', '0002_cie10_cie9', '2020-11-30 14:55:31.442023'),
(20, 'catalogos', '0003_producto_almacen', '2020-11-30 14:55:35.040267'),
(21, 'catalogos', '0004_auto_20201127_1651', '2020-11-30 14:56:36.499419'),
(22, 'catalogos', '0005_auto_20201127_1723', '2020-11-30 14:56:37.716955'),
(23, 'sessions', '0001_initial', '2020-11-30 14:56:38.739806'),
(24, 'sidya', '0001_initial', '2020-11-30 14:56:43.709456'),
(25, 'sidya', '0002_auto_20201127_1651', '2020-11-30 14:57:15.380967'),
(26, 'sies', '0001_initial', '2020-11-30 14:57:17.970056'),
(27, 'sies', '0002_auto_20201127_1651', '2020-11-30 14:57:30.559950'),
(28, 'catalogos', '0006_tipodieta_comensal', '2020-11-30 16:35:32.013635'),
(29, 'catalogos', '0006_tipoestatus_tiporegistro', '2021-01-18 16:09:23.716424'),
(30, 'catalogos', '0007_auto_20201215_1854', '2021-01-18 16:09:28.559580'),
(31, 'catalogos', '0008_procedenciapaciente', '2021-01-18 16:09:29.695270'),
(32, 'catalogos', '0009_auto_20210118_1525', '2021-01-18 16:09:32.758053'),
(33, 'sidya', '0003_auto_20210118_1524', '2021-01-18 16:09:47.220909'),
(34, 'sigmefi', '0001_initial', '2021-01-18 16:09:50.115550'),
(35, 'sigmefi', '0002_auto_20201202_1847', '2021-01-18 16:10:18.937236'),
(36, 'sigmefi', '0003_auto_20210126_1458', '2021-01-28 13:02:41.098835'),
(37, 'sigmefi', '0004_auto_20210126_1723', '2021-01-28 13:02:48.566827'),
(38, 'sidya', '0004_auto_20210202_1841', '2021-02-02 18:48:36.030012'),
(39, 'catalogos', '0010_programa', '2021-02-12 17:43:29.151902'),
(40, 'catalogos', '0010_tipoprograma', '2021-02-12 17:48:01.197450'),
(41, 'sigmefi', '0005_auto_20210212_1522', '2021-02-12 17:48:25.927487'),
(42, 'catalogos', '0011_entidadfederativa', '2021-02-24 18:08:47.441312'),
(43, 'catalogos', '0012_auto_20210223_1255', '2021-02-24 18:08:48.707888'),
(44, 'catalogos', '0013_auto_20210223_1609', '2021-02-24 18:08:52.299256'),
(45, 'catalogos', '0014_empleado_correo', '2021-02-24 18:08:52.950586'),
(46, 'catalogos', '0015_auto_20210223_1742', '2021-02-24 18:08:58.478453'),
(47, 'catalogos', '0016_auto_20210224_1313', '2021-02-24 18:08:59.903446'),
(48, 'sigmefi', '0006_auto_20210216_1608', '2021-02-24 18:09:10.738029'),
(49, 'sigmefi', '0007_auto_20210223_1305', '2021-02-24 18:09:13.771659'),
(50, 'catalogos', '0017_empleadosseguropopular', '2021-02-26 15:21:48.449837'),
(51, 'main', '0001_initial', '2021-03-29 18:24:29.025849'),
(52, 'main', '0002_delete_user', '2021-03-29 18:24:33.700639'),
(53, 'sigmefi', '0008_auto_20210329_1222', '2021-03-29 18:24:33.819288'),
(54, 'catalogos', '0018_cie10_cie9', '2021-03-30 13:30:24.713141');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ef492c2g8oe3bo01bwakubqzfihh0hs', '.eJxVjDsOwjAQBe_iGlnrT_yhpOcM1q7XwQHkSHFSIe4OkVJA-2bmvUTCba1p62VJE4uz0OL0uxHmR2k74Du22yzz3NZlIrkr8qBdXmcuz8vh_h1U7PVbext19gA4kDMRQ0CVjQMFmkqxjrQiIIYxs9YxDjwimZiVDcTBUzDi_QHPjjfA:1lDBiZ:ALr1n2q2zjtxCetVC6nW3pQQjX79CZNXxC1h2fSloPo', '2021-03-05 19:45:35.803339'),
('adz8g7hle869xf4tfa2xpg71o22b0i90', '.eJxVjEEOwiAQRe_C2pABAkxcuvcMZJgBqZqSlHZlvLs26UK3_733XyrRtra0jbKkSdRZGXX63TLxo8w7kDvNt665z-syZb0r-qBDX7uU5-Vw_w4ajfatK8YKyIzkQrUEURCsLaZgBHLGgY9kXbQ-MzO4ELOBCiIBnUcBUO8P1GY3KA:1lAcVn:TFigPUX-NvrKZhXSKb0JUO8wDV9Qy4qR9N-nmmPS3oc', '2021-02-26 17:45:47.311839'),
('fz0ibo6cu99mzvlslgg86eedh73rb8yk', '.eJxVjEEOwiAQRe_C2pABAkxcuvcMZJgBqZqSlHZlvLs26UK3_733XyrRtra0jbKkSdRZGXX63TLxo8w7kDvNt665z-syZb0r-qBDX7uU5-Vw_w4ajfatK8YKyIzkQrUEURCsLaZgBHLGgY9kXbQ-MzO4ELOBCiIBnUcBUO8P1GY3KA:1kmhG2:LxxHZ8Jy5PIyJqhE8Vb-lUUAykM-UYxDNV9YrHP55TU', '2020-12-22 17:58:38.432496'),
('pjgooa2rdsyvy50umx7hjsssw25v22qy', '.eJxVjEEOwiAQRe_C2pABAkxcuvcMZJgBqZqSlHZlvLs26UK3_733XyrRtra0jbKkSdRZGXX63TLxo8w7kDvNt665z-syZb0r-qBDX7uU5-Vw_w4ajfatK8YKyIzkQrUEURCsLaZgBHLGgY9kXbQ-MzO4ELOBCiIBnUcBUO8P1GY3KA:1lEyOu:5r4oSEEVgNsIfhRu2To9feAYc9fpDptcVwOOlAB2_6g', '2021-03-10 17:56:40.369553'),
('sd7jpukao8bicrx2upy27g4f66fkt9tm', '.eJxVjDsOwjAQBe_iGlnrT_yhpOcM1q7XwQHkSHFSIe4OkVJA-2bmvUTCba1p62VJE4uz0OL0uxHmR2k74Du22yzz3NZlIrkr8qBdXmcuz8vh_h1U7PVbext19gA4kDMRQ0CVjQMFmkqxjrQiIIYxs9YxDjwimZiVDcTBUzDi_QHPjjfA:1kpvMx:bUnB7lsF1bjB5xt1AGov2MYB_mRL806n8DCu9XyAfhg', '2020-12-31 15:39:07.051313'),
('whhb23a89cqz1xlbu2fukb7oexskl00x', '.eJxVjEEOwiAQRe_C2pABAkxcuvcMZJgBqZqSlHZlvLs26UK3_733XyrRtra0jbKkSdRZGXX63TLxo8w7kDvNt665z-syZb0r-qBDX7uU5-Vw_w4ajfatK8YKyIzkQrUEURCsLaZgBHLGgY9kXbQ-MzO4ELOBCiIBnUcBUO8P1GY3KA:1kpCJD:NXsTNTte2paLvc_7biAVZEz9SNrh7eDOizqZUUg9u9A', '2020-12-29 15:32:15.045637');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sidya_menu`
--

CREATE TABLE `sidya_menu` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `calorias_totales` decimal(6,2) DEFAULT NULL,
  `comensal_id` int(11) NOT NULL,
  `dieta_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sidya_menu`
--

INSERT INTO `sidya_menu` (`id`, `habilitado`, `created`, `updated`, `calorias_totales`, `comensal_id`, `dieta_id`, `servicio_id`) VALUES
(1, 1, '2021-02-02', '2021-02-02', '599.13', 1, 1, 1),
(2, 1, '2021-02-10', '2021-02-10', NULL, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sidya_menudet`
--

CREATE TABLE `sidya_menudet` (
  `id` int(11) NOT NULL,
  `cantidad` decimal(6,2) DEFAULT NULL,
  `unidad_medida` varchar(50) NOT NULL,
  `calorias` decimal(6,2) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sidya_menudet`
--

INSERT INTO `sidya_menudet` (`id`, `cantidad`, `unidad_medida`, `calorias`, `menu_id`, `producto_id`) VALUES
(1, '3.00', 'RACIÓN', '599.13', 1, 381);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sidya_receta`
--

CREATE TABLE `sidya_receta` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `calorias_totales` decimal(6,2) DEFAULT NULL,
  `unidad_medida_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sidya_receta`
--

INSERT INTO `sidya_receta` (`id`, `habilitado`, `created`, `updated`, `nombre`, `calorias_totales`, `unidad_medida_id`) VALUES
(1, 1, '2020-12-15', '2021-02-02', 'SÁNDWICH DE JAMÓN DE PAVO CON AGUACATE', '174.00', 139),
(2, 1, '2020-12-15', '2021-01-19', 'CHULETA FRITA', '356.00', 139),
(3, 1, '2020-12-15', '2021-01-29', 'SÁNDWICH DE JAMÓN DE PAVO CON AGUACATE Y JITOMATE ', '268.10', 139),
(4, 1, '2021-01-29', '2021-01-29', 'PUCHERO DE RES ', '199.71', 139),
(5, 1, '2021-02-03', '2021-02-03', 'HUEVO A LA MEXICANA SIN CHILE ', '144.50', 139),
(6, 1, '2021-02-09', '2021-02-19', 'HUEVO CON JAMON ', '263.00', 139),
(7, 1, '2021-02-10', '2021-02-10', 'PRUEBA', '674.00', 139);

--
-- Disparadores `sidya_receta`
--
DELIMITER $$
CREATE TRIGGER `actualiza_calorias_receta` AFTER UPDATE ON `sidya_receta` FOR EACH ROW BEGIN
UPDATE catalogos_producto SET cal_unimed_min = NEW.calorias_totales
WHERE catalogos_producto.clave = CAST(NEW.id as CHAR);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `inserta_receta` AFTER INSERT ON `sidya_receta` FOR EACH ROW BEGIN

  INSERT INTO catalogos_producto (clave,nombre,cal_unimed_min,unimed_min_id,habilitado,almacen_id)
  VALUES (new.id,new.nombre,new.calorias_totales,new.unidad_medida_id,'1','04323');   
  
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sidya_recetadet`
--

CREATE TABLE `sidya_recetadet` (
  `id` int(11) NOT NULL,
  `cantidad` decimal(6,2) DEFAULT NULL,
  `unidad_medida` varchar(50) NOT NULL,
  `calorias` decimal(6,2) DEFAULT NULL,
  `producto_id` int(11) NOT NULL,
  `receta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sidya_recetadet`
--

INSERT INTO `sidya_recetadet` (`id`, `cantidad`, `unidad_medida`, `calorias`, `producto_id`, `receta_id`) VALUES
(5, '150.00', 'GRAMO', '180.00', 103, 2),
(6, '20.00', 'ML', '176.00', 344, 2),
(8, '2.00', 'REBANADA', '58.70', 23, 1),
(9, '30.00', 'GRAMO', '38.40', 373, 1),
(10, '20.00', 'GRAMO', '18.60', 78, 1),
(11, '20.00', 'GRAMO', '58.60', 155, 1),
(12, '2.00', 'REBANADA', '58.70', 23, 3),
(13, '30.00', 'GRAMO', '38.40', 373, 3),
(14, '20.00', 'GRAMO', '18.60', 78, 3),
(15, '20.00', 'GRAMO', '3.40', 180, 3),
(16, '20.00', 'GRAMO', '149.00', 325, 3),
(17, '100.00', 'GRAMO', '140.00', 34, 4),
(18, '250.00', 'MICROGRAMO', '0.00', 230, 4),
(19, '50.00', 'GRAMO', '11.50', 56, 4),
(20, '50.00', 'GRAMO', '20.00', 123, 4),
(21, '30.00', 'GRAMO', '25.80', 314, 4),
(23, '2.00', 'GRAMO', '0.46', 310, 4),
(24, '5.00', 'GRAMO', '1.95', 339, 4),
(25, '100.00', 'MICROGRAMO', '0.00', 237, 4),
(26, '1.00', 'GRAMO', '0.00', 221, 4),
(27, '2.00', 'PIEZA', '136.00', 102, 5),
(28, '50.00', 'GRAMO', '8.50', 180, 5),
(29, '2.00', 'PIEZA', '136.00', 102, 6),
(30, '10.00', 'ML', '88.00', 344, 6),
(31, '30.00', 'GRAMO', '39.90', 371, 6),
(32, '1.00', 'GRAMO', '0.00', 221, 6),
(33, '29.00', 'GRAMO', '107.30', 1, 7),
(34, '130.00', 'GRAMO', '566.80', 2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sies_encuestamedicos`
--

CREATE TABLE `sies_encuestamedicos` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `hora_registro` time(6) NOT NULL,
  `p1_matutino` varchar(2) NOT NULL,
  `p1_vespertino` varchar(2) NOT NULL,
  `p1_nocturno` varchar(2) NOT NULL,
  `p1_fin` varchar(2) NOT NULL,
  `p2_matutino` varchar(2) NOT NULL,
  `p2_vespertino` varchar(2) NOT NULL,
  `p2_nocturno` varchar(2) NOT NULL,
  `p2_fin` varchar(2) NOT NULL,
  `p3_matutino` varchar(2) NOT NULL,
  `p3_vespertino` varchar(2) NOT NULL,
  `p3_nocturno` varchar(2) NOT NULL,
  `p3_fin` varchar(2) NOT NULL,
  `p4_matutino` varchar(2) NOT NULL,
  `p4_vespertino` varchar(2) NOT NULL,
  `p4_nocturno` varchar(2) NOT NULL,
  `p4_fin` varchar(2) NOT NULL,
  `p5_matutino` varchar(2) NOT NULL,
  `p5_vespertino` varchar(2) NOT NULL,
  `p5_nocturno` varchar(2) NOT NULL,
  `p5_fin` varchar(2) NOT NULL,
  `p6_bacter` varchar(2) NOT NULL,
  `p6_bioq_endocrino` varchar(2) NOT NULL,
  `p6_hemato_onco` varchar(2) NOT NULL,
  `p6_inmuno_genetica` varchar(2) NOT NULL,
  `p6_inmuno_alergia` varchar(2) NOT NULL,
  `p6_nefro` varchar(2) NOT NULL,
  `p6_paramic` varchar(2) NOT NULL,
  `p6_quim_clin_urg` varchar(2) NOT NULL,
  `p6_viro` varchar(2) NOT NULL,
  `p7` varchar(2) NOT NULL,
  `p8` varchar(2) NOT NULL,
  `p9` varchar(2) NOT NULL,
  `p10` varchar(2) NOT NULL,
  `sugerencias` varchar(200) NOT NULL,
  `clave_medico` varchar(20) NOT NULL,
  `nombre_medico` varchar(100) NOT NULL,
  `area_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sies_encuestapacientes`
--

CREATE TABLE `sies_encuestapacientes` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `fecha_registro` datetime(6) NOT NULL,
  `hora_registro` time(6) NOT NULL,
  `pregunta1` varchar(2) NOT NULL,
  `pregunta2` varchar(2) NOT NULL,
  `pregunta3` varchar(2) NOT NULL,
  `pregunta4` varchar(2) NOT NULL,
  `pregunta5` varchar(2) NOT NULL,
  `pregunta6` varchar(2) NOT NULL,
  `pregunta7` varchar(2) NOT NULL,
  `pregunta8` varchar(2) NOT NULL,
  `pregunta9` varchar(2) NOT NULL,
  `pregunta10` varchar(2) NOT NULL,
  `sugerencias` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sigmefi_registro`
--

CREATE TABLE `sigmefi_registro` (
  `id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `hora_created` time(6) DEFAULT NULL,
  `usr_registra` varchar(20) NOT NULL,
  `expediente` varchar(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ap_paterno` varchar(45) NOT NULL,
  `ap_materno` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `poliza` int(11) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `folio` varchar(10) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_atencion` date NOT NULL,
  `fecha_egreso` date NOT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  `monto_recuperado` decimal(6,2) NOT NULL,
  `monto_erogado` decimal(6,2) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `estatus_id` int(11) NOT NULL,
  `tipo_registro_id` int(11) NOT NULL,
  `procedencia_paciente_id` int(11) NOT NULL,
  `cve_diag1` varchar(10) DEFAULT NULL,
  `cve_diag2` varchar(10) DEFAULT NULL,
  `cve_diag3` varchar(10) DEFAULT NULL,
  `descrip_diag1` varchar(200) DEFAULT NULL,
  `descrip_diag2` varchar(200) DEFAULT NULL,
  `descrip_diag3` varchar(200) DEFAULT NULL,
  `edad_ingreso` varchar(50) DEFAULT NULL,
  `entidad_federativa_id` int(11) NOT NULL,
  `medico_diag1` varchar(200) DEFAULT NULL,
  `medico_diag2` varchar(200) DEFAULT NULL,
  `medico_diag3` varchar(200) DEFAULT NULL,
  `programa_id` int(11) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `servicio_diag1` varchar(200) DEFAULT NULL,
  `servicio_diag2` varchar(200) DEFAULT NULL,
  `servicio_diag3` varchar(200) DEFAULT NULL,
  `cie_cve1` varchar(1) NOT NULL,
  `cie_cve2` varchar(1) NOT NULL,
  `cie_cve3` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `catalogos_area`
--
ALTER TABLE `catalogos_area`
  ADD PRIMARY KEY (`clave`),
  ADD UNIQUE KEY `ruta_oficios` (`ruta_oficios`),
  ADD UNIQUE KEY `ruta_acuses` (`ruta_acuses`);

--
-- Indices de la tabla `catalogos_articulo`
--
ALTER TABLE `catalogos_articulo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave` (`clave`),
  ADD KEY `catalogos_articulo_categoria_id_f592a943_fk_catalogos` (`categoria_id`);

--
-- Indices de la tabla `catalogos_categoria`
--
ALTER TABLE `catalogos_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogos_categoria_clasificacion_id_d21c5533_fk_catalogos` (`clasificacion_id`);

--
-- Indices de la tabla `catalogos_cie9`
--
ALTER TABLE `catalogos_cie9`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_cie10`
--
ALTER TABLE `catalogos_cie10`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_clasificacion`
--
ALTER TABLE `catalogos_clasificacion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `catalogos_empleado`
--
ALTER TABLE `catalogos_empleado`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `catalogos_empleado_area_id_a9d17a39_fk_catalogos_area_clave` (`area_id`),
  ADD KEY `catalogos_empleado_plaza_id_4fe019c8_fk_catalogos_plaza_clave` (`plaza_id`),
  ADD KEY `catalogos_empleado_puesto_id_cc762399_fk_catalogos_puesto_clave` (`puesto_id`);

--
-- Indices de la tabla `catalogos_empleadosseguropopular`
--
ALTER TABLE `catalogos_empleadosseguropopular`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_entidadfederativa`
--
ALTER TABLE `catalogos_entidadfederativa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_grupoalimento`
--
ALTER TABLE `catalogos_grupoalimento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `catalogos_plaza`
--
ALTER TABLE `catalogos_plaza`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `catalogos_procedenciapaciente`
--
ALTER TABLE `catalogos_procedenciapaciente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `catalogos_producto`
--
ALTER TABLE `catalogos_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogos_producto_grupo_alimento_id_98fff2ab_fk_catalogos` (`grupo_alimento_id`),
  ADD KEY `catalogos_producto_unimed_min_id_1c22e230_fk_catalogos` (`unimed_min_id`),
  ADD KEY `catalogos_producto_almacen_id_899a827b_fk_catalogos_area_clave` (`almacen_id`);

--
-- Indices de la tabla `catalogos_programa`
--
ALTER TABLE `catalogos_programa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_puesto`
--
ALTER TABLE `catalogos_puesto`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `catalogos_subcategoria`
--
ALTER TABLE `catalogos_subcategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_tipocatalogo`
--
ALTER TABLE `catalogos_tipocatalogo`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `catalogos_tipocomensal`
--
ALTER TABLE `catalogos_tipocomensal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `catalogos_tipodieta`
--
ALTER TABLE `catalogos_tipodieta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogos_tipodieta_comensal_id_4052048c_fk_catalogos` (`comensal_id`);

--
-- Indices de la tabla `catalogos_tipoestatus`
--
ALTER TABLE `catalogos_tipoestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_tipoprograma`
--
ALTER TABLE `catalogos_tipoprograma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_tiporegistro`
--
ALTER TABLE `catalogos_tiporegistro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos_tiposervicio`
--
ALTER TABLE `catalogos_tiposervicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `catalogos_unidadmedida`
--
ALTER TABLE `catalogos_unidadmedida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `sidya_menu`
--
ALTER TABLE `sidya_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sidya_menu_comensal_id_1894ab4e_fk_catalogos_tipocomensal_id` (`comensal_id`),
  ADD KEY `sidya_menu_dieta_id_0a990bff_fk_catalogos_tipodieta_id` (`dieta_id`),
  ADD KEY `sidya_menu_servicio_id_e0cdd81d_fk_catalogos_tiposervicio_id` (`servicio_id`);

--
-- Indices de la tabla `sidya_menudet`
--
ALTER TABLE `sidya_menudet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sidya_menudet_menu_id_e8c612a8_fk_sidya_menu_id` (`menu_id`),
  ADD KEY `sidya_menudet_producto_id_4294b53c_fk_catalogos_producto_id` (`producto_id`);

--
-- Indices de la tabla `sidya_receta`
--
ALTER TABLE `sidya_receta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `sidya_receta_unidad_medida_id_796c7bf1_fk_catalogos` (`unidad_medida_id`);

--
-- Indices de la tabla `sidya_recetadet`
--
ALTER TABLE `sidya_recetadet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sidya_recetadet_producto_id_82ee9572_fk_catalogos_producto_id` (`producto_id`),
  ADD KEY `sidya_recetadet_receta_id_71f1e484_fk_sidya_receta_id` (`receta_id`);

--
-- Indices de la tabla `sies_encuestamedicos`
--
ALTER TABLE `sies_encuestamedicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sies_encuestamedicos_area_id_e394fe89_fk_catalogos_area_clave` (`area_id`);

--
-- Indices de la tabla `sies_encuestapacientes`
--
ALTER TABLE `sies_encuestapacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sigmefi_registro`
--
ALTER TABLE `sigmefi_registro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sigmefi_registro_categoria_id_7c897d76_fk_catalogos_categoria_id` (`categoria_id`),
  ADD KEY `sigmefi_registro_estatus_id_d2e00aae_fk_catalogos_tipoestatus_id` (`estatus_id`),
  ADD KEY `sigmefi_registro_tipo_registro_id_9a889f1e_fk_catalogos` (`tipo_registro_id`),
  ADD KEY `sigmefi_registro_procedencia_paciente_id_e6a4b678` (`procedencia_paciente_id`),
  ADD KEY `sigmefi_registro_programa_id_b79dbe61_fk_catalogos` (`programa_id`),
  ADD KEY `sigmefi_registro_entidad_federativa_id_489fd476` (`entidad_federativa_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `catalogos_articulo`
--
ALTER TABLE `catalogos_articulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogos_categoria`
--
ALTER TABLE `catalogos_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `catalogos_cie9`
--
ALTER TABLE `catalogos_cie9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogos_cie10`
--
ALTER TABLE `catalogos_cie10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogos_clasificacion`
--
ALTER TABLE `catalogos_clasificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `catalogos_empleadosseguropopular`
--
ALTER TABLE `catalogos_empleadosseguropopular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogos_entidadfederativa`
--
ALTER TABLE `catalogos_entidadfederativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `catalogos_grupoalimento`
--
ALTER TABLE `catalogos_grupoalimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `catalogos_procedenciapaciente`
--
ALTER TABLE `catalogos_procedenciapaciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `catalogos_producto`
--
ALTER TABLE `catalogos_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT de la tabla `catalogos_programa`
--
ALTER TABLE `catalogos_programa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogos_subcategoria`
--
ALTER TABLE `catalogos_subcategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogos_tipocomensal`
--
ALTER TABLE `catalogos_tipocomensal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `catalogos_tipodieta`
--
ALTER TABLE `catalogos_tipodieta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `catalogos_tipoestatus`
--
ALTER TABLE `catalogos_tipoestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `catalogos_tipoprograma`
--
ALTER TABLE `catalogos_tipoprograma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `catalogos_tiporegistro`
--
ALTER TABLE `catalogos_tiporegistro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `catalogos_tiposervicio`
--
ALTER TABLE `catalogos_tiposervicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `catalogos_unidadmedida`
--
ALTER TABLE `catalogos_unidadmedida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `sidya_menu`
--
ALTER TABLE `sidya_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sidya_menudet`
--
ALTER TABLE `sidya_menudet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sidya_receta`
--
ALTER TABLE `sidya_receta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sidya_recetadet`
--
ALTER TABLE `sidya_recetadet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `sies_encuestamedicos`
--
ALTER TABLE `sies_encuestamedicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sies_encuestapacientes`
--
ALTER TABLE `sies_encuestapacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sigmefi_registro`
--
ALTER TABLE `sigmefi_registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `catalogos_articulo`
--
ALTER TABLE `catalogos_articulo`
  ADD CONSTRAINT `catalogos_articulo_categoria_id_f592a943_fk_catalogos` FOREIGN KEY (`categoria_id`) REFERENCES `catalogos_categoria` (`id`);

--
-- Filtros para la tabla `catalogos_categoria`
--
ALTER TABLE `catalogos_categoria`
  ADD CONSTRAINT `catalogos_categoria_clasificacion_id_d21c5533_fk_catalogos` FOREIGN KEY (`clasificacion_id`) REFERENCES `catalogos_clasificacion` (`id`);

--
-- Filtros para la tabla `catalogos_empleado`
--
ALTER TABLE `catalogos_empleado`
  ADD CONSTRAINT `catalogos_empleado_area_id_a9d17a39_fk_catalogos_area_clave` FOREIGN KEY (`area_id`) REFERENCES `catalogos_area` (`clave`),
  ADD CONSTRAINT `catalogos_empleado_plaza_id_4fe019c8_fk_catalogos_plaza_clave` FOREIGN KEY (`plaza_id`) REFERENCES `catalogos_plaza` (`clave`),
  ADD CONSTRAINT `catalogos_empleado_puesto_id_cc762399_fk_catalogos_puesto_clave` FOREIGN KEY (`puesto_id`) REFERENCES `catalogos_puesto` (`clave`);

--
-- Filtros para la tabla `catalogos_producto`
--
ALTER TABLE `catalogos_producto`
  ADD CONSTRAINT `catalogos_producto_almacen_id_899a827b_fk_catalogos_area_clave` FOREIGN KEY (`almacen_id`) REFERENCES `catalogos_area` (`clave`),
  ADD CONSTRAINT `catalogos_producto_grupo_alimento_id_98fff2ab_fk_catalogos` FOREIGN KEY (`grupo_alimento_id`) REFERENCES `catalogos_grupoalimento` (`id`),
  ADD CONSTRAINT `catalogos_producto_unimed_min_id_1c22e230_fk_catalogos` FOREIGN KEY (`unimed_min_id`) REFERENCES `catalogos_unidadmedida` (`id`);

--
-- Filtros para la tabla `catalogos_tipodieta`
--
ALTER TABLE `catalogos_tipodieta`
  ADD CONSTRAINT `catalogos_tipodieta_comensal_id_4052048c_fk_catalogos` FOREIGN KEY (`comensal_id`) REFERENCES `catalogos_tipocomensal` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `sidya_menu`
--
ALTER TABLE `sidya_menu`
  ADD CONSTRAINT `sidya_menu_comensal_id_1894ab4e_fk_catalogos_tipocomensal_id` FOREIGN KEY (`comensal_id`) REFERENCES `catalogos_tipocomensal` (`id`),
  ADD CONSTRAINT `sidya_menu_dieta_id_0a990bff_fk_catalogos_tipodieta_id` FOREIGN KEY (`dieta_id`) REFERENCES `catalogos_tipodieta` (`id`),
  ADD CONSTRAINT `sidya_menu_servicio_id_e0cdd81d_fk_catalogos_tiposervicio_id` FOREIGN KEY (`servicio_id`) REFERENCES `catalogos_tiposervicio` (`id`);

--
-- Filtros para la tabla `sidya_menudet`
--
ALTER TABLE `sidya_menudet`
  ADD CONSTRAINT `sidya_menudet_menu_id_e8c612a8_fk_sidya_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `sidya_menu` (`id`),
  ADD CONSTRAINT `sidya_menudet_producto_id_4294b53c_fk_catalogos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `catalogos_producto` (`id`);

--
-- Filtros para la tabla `sidya_receta`
--
ALTER TABLE `sidya_receta`
  ADD CONSTRAINT `sidya_receta_unidad_medida_id_796c7bf1_fk_catalogos` FOREIGN KEY (`unidad_medida_id`) REFERENCES `catalogos_unidadmedida` (`id`);

--
-- Filtros para la tabla `sidya_recetadet`
--
ALTER TABLE `sidya_recetadet`
  ADD CONSTRAINT `sidya_recetadet_producto_id_82ee9572_fk_catalogos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `catalogos_producto` (`id`),
  ADD CONSTRAINT `sidya_recetadet_receta_id_71f1e484_fk_sidya_receta_id` FOREIGN KEY (`receta_id`) REFERENCES `sidya_receta` (`id`);

--
-- Filtros para la tabla `sies_encuestamedicos`
--
ALTER TABLE `sies_encuestamedicos`
  ADD CONSTRAINT `sies_encuestamedicos_area_id_e394fe89_fk_catalogos_area_clave` FOREIGN KEY (`area_id`) REFERENCES `catalogos_area` (`clave`);

--
-- Filtros para la tabla `sigmefi_registro`
--
ALTER TABLE `sigmefi_registro`
  ADD CONSTRAINT `sigmefi_registro_categoria_id_7c897d76_fk_catalogos_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `catalogos_categoria` (`id`),
  ADD CONSTRAINT `sigmefi_registro_entidad_federativa_i_489fd476_fk_catalogos` FOREIGN KEY (`entidad_federativa_id`) REFERENCES `catalogos_entidadfederativa` (`id`),
  ADD CONSTRAINT `sigmefi_registro_estatus_id_d2e00aae_fk_catalogos_tipoestatus_id` FOREIGN KEY (`estatus_id`) REFERENCES `catalogos_tipoestatus` (`id`),
  ADD CONSTRAINT `sigmefi_registro_procedencia_paciente_e6a4b678_fk_catalogos` FOREIGN KEY (`procedencia_paciente_id`) REFERENCES `catalogos_procedenciapaciente` (`id`),
  ADD CONSTRAINT `sigmefi_registro_programa_id_b79dbe61_fk_catalogos` FOREIGN KEY (`programa_id`) REFERENCES `catalogos_tipoprograma` (`id`),
  ADD CONSTRAINT `sigmefi_registro_tipo_registro_id_9a889f1e_fk_catalogos` FOREIGN KEY (`tipo_registro_id`) REFERENCES `catalogos_tiporegistro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
