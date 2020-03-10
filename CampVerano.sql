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
  `Nombre_Ciudad` varchar(200) DEFAULT NULL,
  `Nombre_Sector` varchar(200) DEFAULT NULL,
  `Desc_Ciudad` varchar(200) DEFAULT NULL,
  `Pobla_Ciudad` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tableNinio`
--

CREATE TABLE `tableNinio` (
  `_idNinio` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre` varchar(200) DEFAULT NULL,
  `Apellido` varchar(200) DEFAULT NULL,
  `sexo` varchar(200) DEFAULT NULL,
  `Fech_Nac` date DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tablePadres`
--

CREATE TABLE `tablePadres` (
  `_idPadres` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre` varchar(200) DEFAULT NULL,
  `Apellido` varchar(200) DEFAULT NULL,
  `Sexo` varchar(200) DEFAULT NULL,
  `Fech_Naci` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tablePais`
--

CREATE TABLE `tablePais` (
  `_idPais` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Nombre_Pais` varchar(200) DEFAULT NULL,
  `Nombre_Ciudad` varchar(200) DEFAULT NULL,
  `Desc_Pais` varchar(200) DEFAULT NULL,
  `Pobla_Pais` varchar(200) DEFAULT NULL
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
  `Nombre_Sector` varchar(200) DEFAULT NULL,
  `Num_Plaza` varchar(200) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Zona` varchar(200) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tableTipo_Phones`
--

CREATE TABLE `tableTipo_Phones` (
  `_idPhone` int(10) PRIMARY KEY AUTO_INCREMENT,
  `Celular` varchar(200) DEFAULT NULL,
  `Trabajo` varchar(200) DEFAULT NULL,
  `Residencial` varchar(200) DEFAULT NULL,
  `Publico` varchar(200) DEFAULT NULL
);