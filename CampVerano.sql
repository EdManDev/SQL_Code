-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 10, 2020 at 08:34 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

--
-- Database: `CampVerano`
--

-- --------------------------------------------------------

--
-- Table structure for table `tableCiudad`
--

CREATE TABLE `tableCiudad` (
  `_idCiudad` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre_Ciudad` varchar(200) DEFAULT NULL,
  `nombre_Sector` varchar(200) DEFAULT NULL,
  `desc_Ciudad` varchar(200) DEFAULT NULL,
  `pobla_Ciudad` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tableNinio`
--

CREATE TABLE `tableNinio` (
  `_idNinio` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `sexo` varchar(200) DEFAULT NULL,
  `fech_Nac` date DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tablePadres`
--

CREATE TABLE `tablePadres` (
  `_idPadres` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `sexo` varchar(200) DEFAULT NULL,
  `fech_Naci` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tablePais`
--

CREATE TABLE `tablePais` (
  `_idPais` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre_Pais` varchar(200) DEFAULT NULL,
  `nombre_Ciudad` varchar(200) DEFAULT NULL,
  `desc_Pais` varchar(200) DEFAULT NULL,
  `pobla_Pais` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tablePersona`
--

CREATE TABLE `tablePersona` (
  `_id` int(10) PRIMARY KEY AUTO_INCREMENT,
  `cantidad_Ninio` varchar(200) DEFAULT NULL,
  `cantida_Profesor` varchar(200) DEFAULT NULL,
  `phones` varchar(200) DEFAULT NULL,
  `dates` date DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tableSector`
--

CREATE TABLE `tableSector` (
  `_idSector` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nombre_Sector` varchar(200) DEFAULT NULL,
  `num_Plaza` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `zona` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tableTipo_Phones`
--

CREATE TABLE `tableTipo_Phones` (
  `_idPhone` int(10) PRIMARY KEY AUTO_INCREMENT,
  `celular` varchar(200) DEFAULT NULL,
  `trabajo` varchar(200) DEFAULT NULL,
  `residencial` varchar(200) DEFAULT NULL,
  `publico` varchar(200) DEFAULT NULL
);
