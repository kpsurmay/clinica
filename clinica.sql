-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2020 a las 19:56:04
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blood_type`
--

CREATE TABLE `blood_type` (
  `id_blood_type` int(11) NOT NULL,
  `blood_type` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blood_type`
--

INSERT INTO `blood_type` (`id_blood_type`, `blood_type`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city_born`
--

CREATE TABLE `city_born` (
  `id_city_born` int(11) NOT NULL,
  `city_born` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `city_born`
--

INSERT INTO `city_born` (`id_city_born`, `city_born`) VALUES
(1, 'Bogotá D,C'),
(2, 'Barranquilla'),
(3, ' Cali'),
(4, 'Medellin'),
(5, 'Bucaramanga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city_l`
--

CREATE TABLE `city_l` (
  `id_city_l` int(11) NOT NULL,
  `city_l` varchar(50) NOT NULL,
  `id_country_l` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `city_l`
--

INSERT INTO `city_l` (`id_city_l`, `city_l`, `id_country_l`) VALUES
(1, 'Barranquilla', 1),
(2, 'Caracas', 2);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cliente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `cliente` (
`type_doc` varchar(25)
,`id_date_person` int(50)
,`Nombre` varchar(102)
,`gender` varchar(15)
,`race` varchar(20)
,`eps` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_l`
--

CREATE TABLE `country_l` (
  `id_country_l` int(11) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `country_l`
--

INSERT INTO `country_l` (`id_country_l`, `country`) VALUES
(1, 'Colombia'),
(2, 'Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `date_person`
--

CREATE TABLE `date_person` (
  `id_date_person` int(50) NOT NULL,
  `id_tipe_doc` int(11) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `s_name` varchar(25) DEFAULT NULL,
  `l_name` varchar(25) NOT NULL,
  `l_name_s` varchar(25) DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `id_bloodtype` int(11) NOT NULL,
  `id_gender` int(11) NOT NULL,
  `id_rh` int(11) NOT NULL,
  `id_matrial_status` int(11) NOT NULL,
  `id_race` int(11) NOT NULL,
  `id_city_born` int(11) NOT NULL,
  `id_eps` int(11) NOT NULL,
  `id_score` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `date_person`
--

INSERT INTO `date_person` (`id_date_person`, `id_tipe_doc`, `f_name`, `s_name`, `l_name`, `l_name_s`, `photo`, `date`, `id_bloodtype`, `id_gender`, `id_rh`, `id_matrial_status`, `id_race`, `id_city_born`, `id_eps`, `id_score`) VALUES
(1985674, 3, 'Lismar', 'Liseth', 'Polo', '', 'images.jpg', '2019-01-01', 3, 3, 1, 2, 5, 3, 4, 9),
(1124062316, 1, 'Kevin', '', 'Pallares', '', 'CC.JPG', '1996-06-26', 1, 1, 1, 1, 1, 1, 1, 1),
(1124056786, 1, 'Luz', 'Karine', 'Julio', 'Julio', 'nirvanaa.jpg', '1985-06-09', 2, 2, 2, 3, 4, 2, 2, 4),
(5698741, 1, 'Camilo', '', 'Jusayu', 'Jusayu', 'nn.jpg', '2000-12-31', 3, 1, 1, 3, 1, 3, 2, 5),
(15651545, 4, 'Ali', '', 'Bustamante', '', 'CC.JPG', '1999-06-26', 1, 1, 1, 5, 2, 3, 1, 2),
(1452698, 2, 'Daniela', 'Andrea', 'Fontalvo', 'Lopez', 'nirvanaa.jpg', '1994-06-16', 1, 1, 1, 1, 1, 1, 1, 1),
(99999655, 3, 'Dani', 'Daniel', 'Lopez', '', 'descarga.jpg', '2001-02-20', 2, 1, 2, 2, 3, 1, 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id_eps` int(11) NOT NULL,
  `eps` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id_eps`, `eps`) VALUES
(1, 'Coosalud EPS'),
(2, 'Colsanitas'),
(3, 'Coomeva'),
(4, 'Annas Wayuu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_per`
--

CREATE TABLE `location_per` (
  `id_location_per` int(11) NOT NULL,
  `address` varchar(25) NOT NULL,
  `cell` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `id_country_l` varchar(50) NOT NULL,
  `id_city_l` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `location_per`
--

INSERT INTO `location_per` (`id_location_per`, `address`, `cell`, `mail`, `id_country_l`, `id_city_l`) VALUES
(1124056786, 'Calle 13#1a-36', '31157784', 'alguienextraño@nada.todobin', '2', '1'),
(123, 'ab', 'cd', 'lalalala', '2', '1'),
(1124062317, 'fghjk', '300872319/85', 'bgrjsjj@msmsms.co', '2', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrial_status`
--

CREATE TABLE `matrial_status` (
  `id_matrial_status` int(11) NOT NULL,
  `matrial_status` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matrial_status`
--

INSERT INTO `matrial_status` (`id_matrial_status`, `matrial_status`) VALUES
(1, 'Soltero (a)'),
(2, 'Casado (a)'),
(3, 'Union Libre'),
(4, 'Diciado (a)'),
(5, 'Viuda (o)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `race`
--

CREATE TABLE `race` (
  `id_race` int(11) NOT NULL,
  `race` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `race`
--

INSERT INTO `race` (`id_race`, `race`) VALUES
(1, 'Indigena'),
(2, 'AfroColombiano'),
(3, 'N/A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rh`
--

CREATE TABLE `rh` (
  `id_rh` int(11) NOT NULL,
  `rh` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rh`
--

INSERT INTO `rh` (`id_rh`, `rh`) VALUES
(1, '+'),
(2, '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `score`
--

CREATE TABLE `score` (
  `id_score` int(11) NOT NULL,
  `score` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `score`
--

INSERT INTO `score` (`id_score`, `score`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, 'Superior que 8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_doc`
--

CREATE TABLE `type_doc` (
  `id_type_doc` int(11) NOT NULL,
  `type_doc` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `type_doc`
--

INSERT INTO `type_doc` (`id_type_doc`, `type_doc`) VALUES
(1, 'Cedula de ciudadania'),
(2, 'Tarjeta de identidad'),
(3, 'Registro civil'),
(4, 'Cedula de extrangeria');

-- --------------------------------------------------------

--
-- Estructura para la vista `cliente`
--
DROP TABLE IF EXISTS `cliente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cliente`  AS  select `t`.`type_doc` AS `type_doc`,`p`.`id_date_person` AS `id_date_person`,concat(`p`.`f_name`,' ',ifnull(`p`.`s_name`,' '),`p`.`l_name`,' ',ifnull(`p`.`l_name_s`,'')) AS `Nombre`,`g`.`gender` AS `gender`,`r`.`race` AS `race`,`e`.`eps` AS `eps` from ((((`date_person` `p` join `race` `r`) join `type_doc` `t`) join `gender` `g`) join `eps` `e`) where ((`p`.`id_tipe_doc` = `t`.`id_type_doc`) and (`p`.`id_race` = `r`.`id_race`) and (`p`.`id_gender` = `g`.`id_gender`) and (`p`.`id_eps` = `e`.`id_eps`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blood_type`
--
ALTER TABLE `blood_type`
  ADD PRIMARY KEY (`id_blood_type`);

--
-- Indices de la tabla `city_born`
--
ALTER TABLE `city_born`
  ADD PRIMARY KEY (`id_city_born`);

--
-- Indices de la tabla `city_l`
--
ALTER TABLE `city_l`
  ADD PRIMARY KEY (`id_city_l`),
  ADD KEY `id_country_l` (`id_country_l`);

--
-- Indices de la tabla `country_l`
--
ALTER TABLE `country_l`
  ADD PRIMARY KEY (`id_country_l`);

--
-- Indices de la tabla `date_person`
--
ALTER TABLE `date_person`
  ADD PRIMARY KEY (`id_date_person`),
  ADD KEY `id_tipe_doc` (`id_tipe_doc`),
  ADD KEY `id_bloodtype` (`id_bloodtype`),
  ADD KEY `id_gender` (`id_gender`),
  ADD KEY `id_rh` (`id_rh`),
  ADD KEY `id_matrial_status` (`id_matrial_status`),
  ADD KEY `id_race` (`id_race`),
  ADD KEY `id_city_born` (`id_city_born`),
  ADD KEY `id_eps` (`id_eps`),
  ADD KEY `id_score` (`id_score`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id_eps`);

--
-- Indices de la tabla `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indices de la tabla `location_per`
--
ALTER TABLE `location_per`
  ADD PRIMARY KEY (`id_location_per`),
  ADD KEY `id_country_l` (`id_country_l`),
  ADD KEY `id_city_l` (`id_city_l`);

--
-- Indices de la tabla `matrial_status`
--
ALTER TABLE `matrial_status`
  ADD PRIMARY KEY (`id_matrial_status`);

--
-- Indices de la tabla `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id_race`);

--
-- Indices de la tabla `rh`
--
ALTER TABLE `rh`
  ADD PRIMARY KEY (`id_rh`);

--
-- Indices de la tabla `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id_score`);

--
-- Indices de la tabla `type_doc`
--
ALTER TABLE `type_doc`
  ADD PRIMARY KEY (`id_type_doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `city_l`
--
ALTER TABLE `city_l`
  MODIFY `id_city_l` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `location_per`
--
ALTER TABLE `location_per`
  MODIFY `id_location_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1124062319;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
