-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 13, 2020 at 08:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `CampVerano`
--

-- --------------------------------------------------------

--
-- Table structure for table `tableCamp`
--

CREATE TABLE `tableCamp` (
  `_idCamp` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nombre_Camp` varchar(200) ,
  `desc_Camp` varchar(200) ,
  `REGISTRO` int(10),
  `dates_Camp` varchar(200) 
) CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableCiudad`
--

CREATE TABLE `tableCiudad` (
  `_idCiudad` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nombre_Ciudad` varchar(200) ,
  `nombre_Sector` varchar(200) ,
  `desc_Ciudad` varchar(200) ,
  `pobla_Ciudad` varchar(200) 
) CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableNinio`
--

CREATE TABLE `tableNinio` (
  `_idNinio` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nombre` varchar(200) ,
  `apellido` varchar(200) ,
  `sexo` varchar(200) ,
  `fech_Nac` date 
) CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePadres`
--

CREATE TABLE `tablePadres` (
  `_idPadres` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nombre` varchar(200) ,
  `apellido` varchar(200) ,
  `sexo` varchar(200) ,
  `fech_Naci` varchar(200) 
) CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePais`
--

CREATE TABLE `tablePais` (
  `_idPais` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nombre_Pais` varchar(200) ,
  `nombre_Ciudad` varchar(200) ,
  `desc_Pais` varchar(200) ,
  `pobla_Pais` varchar(200) 
) CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablePersona`
--

CREATE TABLE `tablePersona` (
  `_idPer` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cant_Ninio` varchar(200) ,
  `cant_Profesor` varchar(200) ,
  `tel` varchar(200) ,
  `dates` date 
) CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tableTel_Cli`
--

CREATE TABLE `tableTel_Cli` (
  `_idCli` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `_idTipo_Tel` int(10) ,
  `NUMERO` int(50) ,
  `REGISTRO2` int(10),
  `telCli` int(10) 
) CHARSET=utf8;


--
-- Table structure for table `tableTel_Cli`
--

CREATE TABLE `tableEmpleado` (
  `_idemp` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_empl` int(10) ,
  `nom_empl` int(50) ,
  `ap_empl` int(10),
  `fech_empl` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableEmpleadoCop` (
  `_idemp` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_empl` int(10) ,
  `nom_empl` int(50) ,
  `ap_empl` int(10),
  `fech_empl` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableEmpleadoCop2` (
  `_idemp2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_empl2` int(10) ,
  `nom_empl2` int(50) ,
  `ap_empl2` int(10),
  `fech_empl2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableEmpleadoNorm` (
  `_idemp3` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_empl4` int(10) ,
  `nom_empl5` int(50) ,
  `ap_empl6` int(10),
  `fech_empl7` int(10) 
) CHARSET=utf8;


CREATE TABLE `tableOperaciones` (
  `_idop` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_op` int(10) ,
  `nom_op` int(50) ,
  `ap_op` int(10),
  `fech_op` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableOperacionesPub` (
  `_idop` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub` int(10) ,
  `nom_oppub` int(50) ,
  `ap_oppub` int(10),
  `fech_oppub` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableEmpleadoNorm2` (
  `_idemp3` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_empl4` int(10) ,
  `nom_empl5` int(50) ,
  `ap_empl6` int(10),
  `fech_empl7` int(10) 
) CHARSET=utf8;


CREATE TABLE `tableOperacionesNiv1` (
  `_idop` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_op2` int(10) ,
  `nom_op2` int(50) ,
  `ap_op22` int(10),
  `fech_op2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableOperacionesPubNiv2` (
  `_idop` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub2` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;