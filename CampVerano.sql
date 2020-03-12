-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/

-- Host: localhost:8889
-- Generation Time: Mar 11, 2020 at 09:02 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `CampVerano`
--

-- --------------------------------------------------------

--
-- Table structure for table `tableCiudad`
--

CREATE TABLE `tableCiudad` (
  `_idCiudad` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre_Ciudad` varchar(200),
  `nombre_Sector` varchar(200),
  `desc_Ciudad` varchar(200),
  `pobla_Ciudad` varchar(200)
)CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableNinio`
--

CREATE TABLE `tableNinio` (
  `_idNinio` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(200),
  `apellido` varchar(200),
  `sexo` varchar(200),
  `fech_Nac` date
)CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePadres`
--

CREATE TABLE `tablePadres` (
  `_idPadres` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(200),
  `apellido` varchar(200),
  `sexo` varchar(200),
  `fech_Naci` varchar(200)
)CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePais`
--

CREATE TABLE `tablePais` (
  `_idPais` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre_Pais` varchar(200),
  `nombre_Ciudad` varchar(200),
  `desc_Pais` varchar(200),
  `pobla_Pais` varchar(200)
)CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `tablePais`
--

CREATE TABLE `tableCamp` (
  `_idCamp` int(10),
  `nombre_Camp` varchar(200),
  `desc_Camp` varchar(200),
  `REGISTRO` int(10) PRIMARY KEY AUTO_INCREMENT,
  `dates_Camp` varchar(200)
)CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePersona`
--

CREATE TABLE `tablePersona` (
  `_idPer` int(10) PRIMARY KEY AUTO_INCREMENT,
  `cantidad_Ninio` varchar(200),
  `cantida_Profesor` varchar(200),
  `tel` varchar(200),
  `dates` date
)CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableTelCli`
--

CREATE TABLE `tableTel_Cli` (
  `_idCli` int(10) ,
  `_idTipo_Tel` int(10),
  `NUMERO` int(50),
  `REGISTRO` int(10) PRIMARY KEY AUTO_INCREMENT,
  `telCli` int(10)
)CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `tableTipo_Tels`
--

CREATE TABLE `tableTipo_Tel` (
  `_idTel`int(10) PRIMARY KEY AUTO_INCREMENT,
  `celular` varchar(200),
  `trabajo` varchar(200),
  `residencial` varchar(200),
  `publico` varchar(200)
)CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableSector`
--

CREATE TABLE `tableSector` (
  `_idSector` int(10) PRIMARY KEY AUTO_INCREMENT,
  `tipo_Sangre` varchar(200),
  `num_Plaza` varchar(200),
  `direccion` varchar(200),
  `zona` varchar(200)
)CHARSET=utf8;



