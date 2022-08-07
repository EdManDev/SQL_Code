-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 13, 2020 at 08:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

-- CREATE DATABASE CampVerano;
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

CREATE TABLE `tableEmpleadoOld` (
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


CREATE TABLE `tableArticulo` (
  `id_art` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `des_art` varchar(100) ,
  `costo` float(12.2) ,
  `pre_ven` float(12.2),
  `cantidad` float(12.2),
  `reorden` float(12.2) 
) CHARSET=utf8;

CREATE TABLE `tableConsulta` (
  `idfac` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `id_art` varchar(100),
  `cantidad` float(12.2),
  `pre_ven` float(12.2) 
) CHARSET=utf8;

-- INSERT INTO tableArticulo (des_art, costo, pre_ven, cantidad, reorden) VALUE ("FUNDA DE ESPAGETTI", "50.00", "80.00", "200.00", "30.00");

-- INSERT INTO tableArticulo (des_art, costo, pre_ven, cantidad, reorden) VALUE ("SALAMI INDUVECA", "75.00", "100", "30.40", "5.00");

-- INSERT INTO tableArticulo (des_art, costo, pre_ven, cantidad, reorden) VALUE ("SACO DE AROZ", "100.00", "2300.00", "200.00", "50.00");

CREATE TABLE `tablePublico` (
  `_idPub` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub` int(10) ,
  `nom_oppub` int(50) ,
  `ap_oppub` int(10),
  `fech_oppub` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablePublicoNuevo` (
  `_idPub1` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub1` int(10) ,
  `nom_oppub1` int(50) ,
  `ap_oppub1` int(10),
  `fech_oppub1` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablePucom` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableMaca` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablekkkd` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablePkjn` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableSub` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableTecla` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablePam` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableSolo` (
  `_idPub2` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pub3` int(10) ,
  `nom_oppub2` int(50) ,
  `ap_oppub2` int(10),
  `fech_oppub2` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablecam` (
  `_idcam` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_cam` int(10) ,
  `nom_cam` int(50) ,
  `ap_cam` int(10),
  `fech_cam` int(10) 
) CHARSET=utf8;

CREATE TABLE `tablePI` (
  `_idPi` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `cod_pi` int(10) ,
  `nom_pi` int(50) ,
  `ap_pi` int(10),
  `fech_pi` int(10) 
) CHARSET=utf8;

CREATE TABLE `tableEmpleado_Cop` (
  `_idEmpleado` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nom_emp` varchar(100) ,
  `ap_emp` varchar(100) ,
  `date_mod` datetime 
) CHARSET=utf8;

CREATE TABLE `tableEmpleado` (
  `_idEmpleado` int(10) PRIMARY KEY  AUTO_INCREMENT,
  `nom_emp` varchar(100) ,
  `ap_emp` varchar(100) 
) CHARSET=utf8;