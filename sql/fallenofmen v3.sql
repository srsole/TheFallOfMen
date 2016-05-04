-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2016 a las 12:54:53
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fallenofmen`
--
CREATE DATABASE IF NOT EXISTS `fallenofmen` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `fallenofmen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attribute`
--

DROP TABLE IF EXISTS `attribute`;
CREATE TABLE IF NOT EXISTS `attribute` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `ap` int(11) NOT NULL,
  `dp` int(11) NOT NULL,
  `hp` int(11) NOT NULL,
  `cp` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `attribute`
--

INSERT INTO `attribute` (`id`, `ap`, `dp`, `hp`, `cp`) VALUES
(1, 5, 6, 10, 4),
(2, 7, 5, 8, 6),
(3, 5, 5, 7, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloqued`
--

DROP TABLE IF EXISTS `bloqued`;
CREATE TABLE IF NOT EXISTS `bloqued` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `iduserName` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'es foren',
  `idUserNameBloqued` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'es foren'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatmessage`
--

DROP TABLE IF EXISTS `chatmessage`;
CREATE TABLE IF NOT EXISTS `chatmessage` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `date` datetime NOT NULL,
  `content` text COLLATE utf8_spanish2_ci NOT NULL,
  `idUserNameSender` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `idUserNameReceiver` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `chatmessage`
--

INSERT INTO `chatmessage` (`id`, `date`, `content`, `idUserNameSender`, `idUserNameReceiver`) VALUES
(1, '2016-05-02 00:00:00', 'hola, como estas?', 'alumne', 'Daw2000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `iso`, `name`) VALUES
(1, 'AF', 'Afganistán'),
(2, 'AX', 'Islas Gland'),
(3, 'AL', 'Albania'),
(4, 'DE', 'Alemania'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antártida'),
(9, 'AG', 'Antigua y Barbuda'),
(10, 'AN', 'Antillas Holandesas'),
(11, 'SA', 'Arabia Saudí'),
(12, 'DZ', 'Argelia'),
(13, 'AR', 'Argentina'),
(14, 'AM', 'Armenia'),
(15, 'AW', 'Aruba'),
(16, 'AU', 'Australia'),
(17, 'AT', 'Austria'),
(18, 'AZ', 'Azerbaiyán'),
(19, 'BS', 'Bahamas'),
(20, 'BH', 'Bahréin'),
(21, 'BD', 'Bangladesh'),
(22, 'BB', 'Barbados'),
(23, 'BY', 'Bielorrusia'),
(24, 'BE', 'Bélgica'),
(25, 'BZ', 'Belice'),
(26, 'BJ', 'Benin'),
(27, 'BM', 'Bermudas'),
(28, 'BT', 'Bhután'),
(29, 'BO', 'Bolivia'),
(30, 'BA', 'Bosnia y Herzegovina'),
(31, 'BW', 'Botsuana'),
(32, 'BV', 'Isla Bouvet'),
(33, 'BR', 'Brasil'),
(34, 'BN', 'Brunéi'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'CV', 'Cabo Verde'),
(39, 'KY', 'Islas Caimán'),
(40, 'KH', 'Camboya'),
(41, 'CM', 'Camerún'),
(42, 'CA', 'Canadá'),
(43, 'CF', 'República Centroafricana'),
(44, 'TD', 'Chad'),
(45, 'CZ', 'República Checa'),
(46, 'CL', 'Chile'),
(47, 'CN', 'China'),
(48, 'CY', 'Chipre'),
(49, 'CX', 'Isla de Navidad'),
(50, 'VA', 'Ciudad del Vaticano'),
(51, 'CC', 'Islas Cocos'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoras'),
(54, 'CD', 'República Democrática del Congo'),
(55, 'CG', 'Congo'),
(56, 'CK', 'Islas Cook'),
(57, 'KP', 'Corea del Norte'),
(58, 'KR', 'Corea del Sur'),
(59, 'CI', 'Costa de Marfil'),
(60, 'CR', 'Costa Rica'),
(61, 'HR', 'Croacia'),
(62, 'CU', 'Cuba'),
(63, 'DK', 'Dinamarca'),
(64, 'DM', 'Dominica'),
(65, 'DO', 'República Dominicana'),
(66, 'EC', 'Ecuador'),
(67, 'EG', 'Egipto'),
(68, 'SV', 'El Salvador'),
(69, 'AE', 'Emiratos Árabes Unidos'),
(70, 'ER', 'Eritrea'),
(71, 'SK', 'Eslovaquia'),
(72, 'SI', 'Eslovenia'),
(73, 'ES', 'España'),
(74, 'UM', 'Islas ultramarinas de Estados Unidos'),
(75, 'US', 'Estados Unidos'),
(76, 'EE', 'Estonia'),
(77, 'ET', 'Etiopía'),
(78, 'FO', 'Islas Feroe'),
(79, 'PH', 'Filipinas'),
(80, 'FI', 'Finlandia'),
(81, 'FJ', 'Fiyi'),
(82, 'FR', 'Francia'),
(83, 'GA', 'Gabón'),
(84, 'GM', 'Gambia'),
(85, 'GE', 'Georgia'),
(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 'GH', 'Ghana'),
(88, 'GI', 'Gibraltar'),
(89, 'GD', 'Granada'),
(90, 'GR', 'Grecia'),
(91, 'GL', 'Groenlandia'),
(92, 'GP', 'Guadalupe'),
(93, 'GU', 'Guam'),
(94, 'GT', 'Guatemala'),
(95, 'GF', 'Guayana Francesa'),
(96, 'GN', 'Guinea'),
(97, 'GQ', 'Guinea Ecuatorial'),
(98, 'GW', 'Guinea-Bissau'),
(99, 'GY', 'Guyana'),
(100, 'HT', 'Haití'),
(101, 'HM', 'Islas Heard y McDonald'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong'),
(104, 'HU', 'Hungría'),
(105, 'IN', 'India'),
(106, 'ID', 'Indonesia'),
(107, 'IR', 'Irán'),
(108, 'IQ', 'Iraq'),
(109, 'IE', 'Irlanda'),
(110, 'IS', 'Islandia'),
(111, 'IL', 'Israel'),
(112, 'IT', 'Italia'),
(113, 'JM', 'Jamaica'),
(114, 'JP', 'Japón'),
(115, 'JO', 'Jordania'),
(116, 'KZ', 'Kazajstán'),
(117, 'KE', 'Kenia'),
(118, 'KG', 'Kirguistán'),
(119, 'KI', 'Kiribati'),
(120, 'KW', 'Kuwait'),
(121, 'LA', 'Laos'),
(122, 'LS', 'Lesotho'),
(123, 'LV', 'Letonia'),
(124, 'LB', 'Líbano'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libia'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lituania'),
(129, 'LU', 'Luxemburgo'),
(130, 'MO', 'Macao'),
(131, 'MK', 'ARY Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MY', 'Malasia'),
(134, 'MW', 'Malawi'),
(135, 'MV', 'Maldivas'),
(136, 'ML', 'Malí'),
(137, 'MT', 'Malta'),
(138, 'FK', 'Islas Malvinas'),
(139, 'MP', 'Islas Marianas del Norte'),
(140, 'MA', 'Marruecos'),
(141, 'MH', 'Islas Marshall'),
(142, 'MQ', 'Martinica'),
(143, 'MU', 'Mauricio'),
(144, 'MR', 'Mauritania'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'México'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldavia'),
(149, 'MC', 'Mónaco'),
(150, 'MN', 'Mongolia'),
(151, 'MS', 'Montserrat'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Níger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Isla Norfolk'),
(162, 'NO', 'Noruega'),
(163, 'NC', 'Nueva Caledonia'),
(164, 'NZ', 'Nueva Zelanda'),
(165, 'OM', 'Omán'),
(166, 'NL', 'Países Bajos'),
(167, 'PK', 'Pakistán'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestina'),
(170, 'PA', 'Panamá'),
(171, 'PG', 'Papúa Nueva Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Perú'),
(174, 'PN', 'Islas Pitcairn'),
(175, 'PF', 'Polinesia Francesa'),
(176, 'PL', 'Polonia'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'GB', 'Reino Unido'),
(181, 'RE', 'Reunión'),
(182, 'RW', 'Ruanda'),
(183, 'RO', 'Rumania'),
(184, 'RU', 'Rusia'),
(185, 'EH', 'Sahara Occidental'),
(186, 'SB', 'Islas Salomón'),
(187, 'WS', 'Samoa'),
(188, 'AS', 'Samoa Americana'),
(189, 'KN', 'San Cristóbal y Nevis'),
(190, 'SM', 'San Marino'),
(191, 'PM', 'San Pedro y Miquelón'),
(192, 'VC', 'San Vicente y las Granadinas'),
(193, 'SH', 'Santa Helena'),
(194, 'LC', 'Santa Lucía'),
(195, 'ST', 'Santo Tomé y Príncipe'),
(196, 'SN', 'Senegal'),
(197, 'CS', 'Serbia y Montenegro'),
(198, 'SC', 'Seychelles'),
(199, 'SL', 'Sierra Leona'),
(200, 'SG', 'Singapur'),
(201, 'SY', 'Siria'),
(202, 'SO', 'Somalia'),
(203, 'LK', 'Sri Lanka'),
(204, 'SZ', 'Suazilandia'),
(205, 'ZA', 'Sudáfrica'),
(206, 'SD', 'Sudán'),
(207, 'SE', 'Suecia'),
(208, 'CH', 'Suiza'),
(209, 'SR', 'Surinam'),
(210, 'SJ', 'Svalbard y Jan Mayen'),
(211, 'TH', 'Tailandia'),
(212, 'TW', 'Taiwán'),
(213, 'TZ', 'Tanzania'),
(214, 'TJ', 'Tayikistán'),
(215, 'IO', 'Territorio Británico del Océano Índico'),
(216, 'TF', 'Territorios Australes Franceses'),
(217, 'TL', 'Timor Oriental'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad y Tobago'),
(222, 'TN', 'Túnez'),
(223, 'TC', 'Islas Turcas y Caicos'),
(224, 'TM', 'Turkmenistán'),
(225, 'TR', 'Turquía'),
(226, 'TV', 'Tuvalu'),
(227, 'UA', 'Ucrania'),
(228, 'UG', 'Uganda'),
(229, 'UY', 'Uruguay'),
(230, 'UZ', 'Uzbekistán'),
(231, 'VU', 'Vanuatu'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Islas Vírgenes Británicas'),
(235, 'VI', 'Islas Vírgenes de los Estados Unidos'),
(236, 'WF', 'Wallis y Futuna'),
(237, 'YE', 'Yemen'),
(238, 'DJ', 'Yibuti'),
(239, 'ZM', 'Zambia'),
(240, 'ZW', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `effect`
--

DROP TABLE IF EXISTS `effect`;
CREATE TABLE IF NOT EXISTS `effect` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `turns` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `effect`
--

INSERT INTO `effect` (`id`, `name`, `description`, `turns`, `value`) VALUES
(1, 'attack effect', 'adds a bonus to aatack point', 1, 2),
(2, 'defense effect', 'adds a bonus to defense points', 1, 3),
(3, 'crtitical effect', 'adds a bonus to critical points', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `effectattribute`
--

DROP TABLE IF EXISTS `effectattribute`;
CREATE TABLE IF NOT EXISTS `effectattribute` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idEffect` int(11) NOT NULL,
  `idAttribute` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `effectattribute`
--

INSERT INTO `effectattribute` (`id`, `idEffect`, `idAttribute`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `friend`
--

DROP TABLE IF EXISTS `friend`;
CREATE TABLE IF NOT EXISTS `friend` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `iduserName` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `idUserNameFriend` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `friend`
--

INSERT INTO `friend` (`id`, `iduserName`, `idUserNameFriend`) VALUES
(1, 'alumne', 'Daw2000'),
(2, 'Daw2000', 'alumne');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `implant`
--

DROP TABLE IF EXISTS `implant`;
CREATE TABLE IF NOT EXISTS `implant` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `buyPrice` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `implant`
--

INSERT INTO `implant` (`id`, `name`, `description`, `buyPrice`) VALUES
(1, 'green cristal implant', 'adds a bonus to attack attribute', 15),
(2, 'blue ruby implant', 'adds a bonus to defense attribute', 17),
(3, 'Yellow fiber implant', 'adds a bonus to critical attribute', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `implanteffect`
--

DROP TABLE IF EXISTS `implanteffect`;
CREATE TABLE IF NOT EXISTS `implanteffect` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idImplant` int(11) NOT NULL,
  `idEffect` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `implanteffect`
--

INSERT INTO `implanteffect` (`id`, `idImplant`, `idEffect`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoanimations`
--

DROP TABLE IF EXISTS `infoanimations`;
CREATE TABLE IF NOT EXISTS `infoanimations` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `numFrames` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `infoanimations`
--

INSERT INTO `infoanimations` (`id`, `name`, `numFrames`) VALUES
(1, 'attack1', 76),
(2, 'attack2', 45),
(3, 'idle', 65);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `lastName1` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `lastName2` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `birthDate` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `idCountry` int(11) NOT NULL COMMENT 'foren'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profile`
--

INSERT INTO `profile` (`id`, `name`, `lastName1`, `lastName2`, `birthDate`, `email`, `idCountry`) VALUES
(1, 'Juan', 'Montemayor', 'Escudero', '1982-03-30 00:00:00', 'montemayor@gmail.com', 1),
(2, 'Franc', 'Sole', 'Gonzalez', '1986-07-15 00:00:00', 'fsole@hotmail.com', 2),
(3, 'Eva', 'Fina', 'Segura', '1990-05-20 00:00:00', 'rosita@gmail.com', 3),
(4, 'all', 'all', NULL, '2016-05-01 00:00:00', 'all@all.com', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robotattribute`
--

DROP TABLE IF EXISTS `robotattribute`;
CREATE TABLE IF NOT EXISTS `robotattribute` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idRobotStatistic` int(11) NOT NULL,
  `idAttribute` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `robotattribute`
--

INSERT INTO `robotattribute` (`id`, `idRobotStatistic`, `idAttribute`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robotimplant`
--

DROP TABLE IF EXISTS `robotimplant`;
CREATE TABLE IF NOT EXISTS `robotimplant` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idRobotStatistic` int(11) NOT NULL,
  `idImplant` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `robotimplant`
--

INSERT INTO `robotimplant` (`id`, `idRobotStatistic`, `idImplant`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robotskill`
--

DROP TABLE IF EXISTS `robotskill`;
CREATE TABLE IF NOT EXISTS `robotskill` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idRobotStatistic` int(11) NOT NULL,
  `idSkill` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `robotskill`
--

INSERT INTO `robotskill` (`id`, `idRobotStatistic`, `idSkill`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robotskin`
--

DROP TABLE IF EXISTS `robotskin`;
CREATE TABLE IF NOT EXISTS `robotskin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `robotskin`
--

INSERT INTO `robotskin` (`id`, `name`, `description`) VALUES
(1, 'mobot', 'a basic robot'),
(2, 'prime', 'its beter robot than mobot');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robotskininfoanimations`
--

DROP TABLE IF EXISTS `robotskininfoanimations`;
CREATE TABLE IF NOT EXISTS `robotskininfoanimations` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idRobotSkin` int(11) NOT NULL,
  `idInfoAnimations` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `robotskininfoanimations`
--

INSERT INTO `robotskininfoanimations` (`id`, `idRobotSkin`, `idInfoAnimations`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `robotstatistic`
--

DROP TABLE IF EXISTS `robotstatistic`;
CREATE TABLE IF NOT EXISTS `robotstatistic` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `level` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `idRobotSkin` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `robotstatistic`
--

INSERT INTO `robotstatistic` (`id`, `name`, `level`, `experience`, `idRobotSkin`) VALUES
(1, 'robotron', 4, 1233, 0),
(2, 'mecabot', 5, 5433, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `name` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `requiredLevel` int(11) NOT NULL,
  `buyPrice` int(11) NOT NULL,
  `multiplier` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `skill`
--

INSERT INTO `skill` (`id`, `name`, `description`, `requiredLevel`, `buyPrice`, `multiplier`) VALUES
(1, 'high powered attack', 'charges up a super attack', 1, 12, 1.4),
(2, 'leg hit', 'hits oppent''s leg', 3, 10, 1.2),
(3, 'fire shoot', 'fires  a charged shoot', 5, 9, 1.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skilleffect`
--

DROP TABLE IF EXISTS `skilleffect`;
CREATE TABLE IF NOT EXISTS `skilleffect` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `idSkill` int(11) NOT NULL,
  `idEffect` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `skilleffect`
--

INSERT INTO `skilleffect` (`id`, `idSkill`, `idEffect`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userName` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `coins` int(11) NOT NULL,
  `userType` int(11) NOT NULL,
  `idProfile` int(11) NOT NULL,
  `idUserStatistic` int(11) NOT NULL,
  `idRobotStatistic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userName`, `password`, `coins`, `userType`, `idProfile`, `idUserStatistic`, `idRobotStatistic`) VALUES
('alumne', 'c98a0d7fe575cc92f0cc931db5e31552', 80, 0, 1, 1, 1),
('all', 'nulo', 0, 0, 4, 3, 0),
('Daw2000', 'faa320ce1968c190c880a54b27914f46', 100, 0, 2, 2, 2),
('provenAdmin123', '0192023a7bbd73250516f069df18b500', 0, 1, 3, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userstatistic`
--

DROP TABLE IF EXISTS `userstatistic`;
CREATE TABLE IF NOT EXISTS `userstatistic` (
  `id` int(11) NOT NULL COMMENT 'es la primary',
  `wins` int(11) NOT NULL,
  `defeats` int(11) NOT NULL,
  `totalInflictedDamage` int(11) NOT NULL,
  `totalRecivedDamage` int(11) NOT NULL,
  `totalWinCoins` int(11) NOT NULL,
  `totalExpendCoins` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `userstatistic`
--

INSERT INTO `userstatistic` (`id`, `wins`, `defeats`, `totalInflictedDamage`, `totalRecivedDamage`, `totalWinCoins`, `totalExpendCoins`) VALUES
(1, 15, 7, 12354, 11532, 532, 212),
(2, 22, 15, 32115, 5532, 231, 211),
(3, 0, 0, 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bloqued`
--
ALTER TABLE `bloqued`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chatmessage`
--
ALTER TABLE `chatmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `effect`
--
ALTER TABLE `effect`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `effectattribute`
--
ALTER TABLE `effectattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `implant`
--
ALTER TABLE `implant`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `implanteffect`
--
ALTER TABLE `implanteffect`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `infoanimations`
--
ALTER TABLE `infoanimations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `robotattribute`
--
ALTER TABLE `robotattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `robotimplant`
--
ALTER TABLE `robotimplant`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `robotskill`
--
ALTER TABLE `robotskill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `robotskin`
--
ALTER TABLE `robotskin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `robotskininfoanimations`
--
ALTER TABLE `robotskininfoanimations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `robotstatistic`
--
ALTER TABLE `robotstatistic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skilleffect`
--
ALTER TABLE `skilleffect`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`);

--
-- Indices de la tabla `userstatistic`
--
ALTER TABLE `userstatistic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `bloqued`
--
ALTER TABLE `bloqued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary';
--
-- AUTO_INCREMENT de la tabla `chatmessage`
--
ALTER TABLE `chatmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT de la tabla `effect`
--
ALTER TABLE `effect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `effectattribute`
--
ALTER TABLE `effectattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `implant`
--
ALTER TABLE `implant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `implanteffect`
--
ALTER TABLE `implanteffect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `infoanimations`
--
ALTER TABLE `infoanimations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `robotattribute`
--
ALTER TABLE `robotattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `robotimplant`
--
ALTER TABLE `robotimplant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `robotskill`
--
ALTER TABLE `robotskill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `robotskin`
--
ALTER TABLE `robotskin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `robotskininfoanimations`
--
ALTER TABLE `robotskininfoanimations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `robotstatistic`
--
ALTER TABLE `robotstatistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `skilleffect`
--
ALTER TABLE `skilleffect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `userstatistic`
--
ALTER TABLE `userstatistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es la primary',AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
