-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-04-2023 a las 03:31:45
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos_becas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE IF NOT EXISTS `alumno` (
  `id_alumno` int NOT NULL,
  `nombre_alum` varchar(30) DEFAULT NULL,
  `apellido_alum` varchar(30) DEFAULT NULL,
  `carnet` varchar(10) DEFAULT NULL,
  `id_beca` int DEFAULT NULL,
  `id_carrera` int NOT NULL,
  PRIMARY KEY (`id_alumno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `nombre_alum`, `apellido_alum`, `carnet`, `id_beca`, `id_carrera`) VALUES
(1, 'Ronald', 'Ramirez', 'RG110604', 2, 1),
(2, 'Maziel', 'Portillo', 'MP223085', 4, 5),
(3, 'Jose', 'Aviles', 'JA090520', 3, 7),
(4, 'Gerardo', 'Cortez', 'GC152222', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
CREATE TABLE IF NOT EXISTS `asignatura` (
  `id_asignatura` int NOT NULL,
  `cod_asignatura` varchar(8) NOT NULL,
  `nombre_asig` varchar(30) NOT NULL,
  `id_docente` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id_asignatura`, `cod_asignatura`, `nombre_asig`, `id_docente`) VALUES
(0, '', '', 0),
(1, 'ACE941', 'ANALISIS DE CIRCUITOS ELECT.', 3),
(2, 'HM955', 'HUMANIDADES I', 3),
(3, 'CCV541', 'CALCULO DE VARIAS VAR.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beca`
--

DROP TABLE IF EXISTS `beca`;
CREATE TABLE IF NOT EXISTS `beca` (
  `id_beca` int NOT NULL,
  `nombre_beca` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `beca`
--

INSERT INTO `beca` (`id_beca`, `nombre_beca`) VALUES
(2, 'BECA ATLAS'),
(1, 'BECA DELTA'),
(3, 'BECA FESA'),
(4, 'BECA GOB'),
(5, 'BECA FUNDACION POMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

DROP TABLE IF EXISTS `carrera`;
CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` int NOT NULL,
  `nombre_carrera` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`) VALUES
(1, 'Ing. en CC de la computacion'),
(2, 'Ing. en mecatronica'),
(3, 'Ing. electrica'),
(4, 'Lic. en diseño grafico'),
(5, 'Lic. en idiomas'),
(6, 'Lic. en economía y mercadotecnia'),
(7, 'Ing. biomedica'),
(8, 'Ing. Industrial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

DROP TABLE IF EXISTS `docente`;
CREATE TABLE IF NOT EXISTS `docente` (
  `id_docente` int NOT NULL,
  `nombre_prof` varchar(30) NOT NULL,
  `apellido_prof` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `nombre_prof`, `apellido_prof`) VALUES
(1, 'Joel', 'Orellana'),
(2, 'Magdis', 'Aguilar'),
(3, 'Nadia', 'Huezo'),
(4, 'Nelson', 'Belloso'),
(6, 'Alirio', 'Grande'),
(7, 'Hugo', 'Alas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `id_alumno` int NOT NULL,
  `id_asignatura` int NOT NULL,
  `nota_final` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id_alumno`, `id_asignatura`, `nota_final`) VALUES
(1, 3, 9.5),
(2, 2, 8),
(3, 3, 7.8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
