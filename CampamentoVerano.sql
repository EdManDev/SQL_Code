-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 08, 2020 at 10:11 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2
--
-- Database: `CampamentoVerano`
--

-- --------------------------------------------------------

--
-- Table structure for table `tableCiudad`
--

CREATE TABLE `tableCiudad` (
  `_idCiudad` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre_Ciudad` varchar(200),
  `Nombre_Sector` varchar(200),
  `Desc_Ciudad` varchar(200),
  `Pobla_Ciudad` varchar(200)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableNinio`
--

CREATE TABLE `tableNinio` (
  `_idNinio` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre` varchar(200),
  `Apellido` varchar(200),
  `sexo` varchar(200),
  `Fech_Nac` date  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePadres`
--

CREATE TABLE `tablePadres` (
  `_idPadres` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre` varchar(200),
  `Apellido` varchar(200),
  `Sexo` varchar(200),
  `Fech_Naci` varchar(200)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePais`
--

CREATE TABLE `tablePais` (
  `_idPais`int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre_Pais` varchar(200),
  `Nombre_Ciudad` varchar(200),
  `Desc_Pais` varchar(200),
  `Pobla_Pais` varchar(200)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePersona`
--

CREATE TABLE `tablePersona` (
  `_id` int(10) PRIMARY KEY AUTO_INCREMENT,
  `cantidad_Ninio` varchar(200),
  `cantida_Profesor` varchar(200),
  `phones` varchar(200),
  `dates` date  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableSector`
--

CREATE TABLE `tableSector` (
  `_idSector` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre_Sector` varchar(200),
  `Estatuas` varchar(200),
  `Desc_Sector` varchar(200),
  `Zona` varchar(200)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableTipo_Phones`
--

CREATE TABLE `tableTipo_Phones` (
  `_idPhone` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Celular` varchar(200),
  `Trabajo` varchar(200),
  `Residencial` varchar(200),
  `Publico` varchar(200)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
