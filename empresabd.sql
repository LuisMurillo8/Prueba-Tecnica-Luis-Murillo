-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 09:30 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empresabd`
--

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nit_emp` int(11) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `salario` varchar(30) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id`, `tipo`, `nombre`, `apellido`, `telefono`, `direccion`, `email`, `nit_emp`, `cargo`, `salario`, `updated_at`, `created_at`) VALUES
(22221, 1, 'BoB', 'Marley', '2231145', 'Calle 53 #20-21', 'bobmarley@gmail.com', 18, 'Cajero', '950000', '2021-01-31 08:27:54', '0000-00-00 00:00:00'),
(23131, 1, 'Paola', 'Zuñiga', '615248', 'calle 60 · 20-70', 'pao@gmail.com', 12345678, 'Cheft', '1000000', '2021-01-31 08:26:31', '0000-00-00 00:00:00'),
(4659789, 1, 'Arturo', 'Calle', '615248', 'calle 60 · 20-70', 'arturoc@gmail.com', 12345678, 'Cheft', '1000000', '2021-01-31 08:24:45', '0000-00-00 00:00:00'),
(13123131, 1, 'Luis', 'Calle', '615248', 'calle 60 · 20-70', 'LuisC@gmail.com', 12345678, 'Aux Cheft', '1000000', '2021-01-31 08:25:29', '0000-00-00 00:00:00'),
(912646795, 1, 'Camilo ', 'Lopez', '33333', 'Calle 3a norte #20-26', 'c2020@gmail.com', 1322554, 'Peluquero', '800000', '2021-01-31 08:23:17', '0000-00-00 00:00:00'),
(913246787, 1, 'Cristian ', 'Lopez', '69512246', 'Calle 3a norte #20-26', 'c2020@gmail.com', 1322554, 'Peluquero', '800000', '2021-01-31 08:21:32', '0000-00-00 00:00:00'),
(913246795, 1, 'Camilo ', 'Viajara', '55466', 'Calle 3a norte #20-26', 'c2020@gmail.com', 1322554, 'Peluquero', '800000', '2021-01-31 08:22:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `nit` int(11) NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`nit`, `tipo`, `nombre`, `telefono`, `direccion`, `email`, `created_at`, `updated_at`) VALUES
(18, 4, 'Todo uno', '65841534', 'Calle 5 norte 80-12', 'everyone@gmai.com', '2021-01-31 08:20:07', '0000-00-00 00:00:00'),
(1322554, 4, 'Cali-Flow', '5136987', 'Calle 5 norte 20-12', 'califlow@gmai.com', '2021-01-31 08:18:28', '0000-00-00 00:00:00'),
(12345678, 1, 'HAMBUR-KAREN', '552168789', 'CALLE 21F 40-21', 'servicioalcliente@hambur-karen', '2021-01-31 08:17:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `tipo`) VALUES
(1, 'Cedula'),
(2, 'Tarjeta de Identidad'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_empresa`
--

CREATE TABLE `tipo_empresa` (
  `id` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_empresa`
--

INSERT INTO `tipo_empresa` (`id`, `tipo`) VALUES
(1, 'Microempresa'),
(2, 'Pequeñas empresas'),
(3, 'Medianas Empresas'),
(4, 'Grandes empresas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nit_emp` (`nit_emp`),
  ADD KEY `tipo` (`tipo`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`nit`),
  ADD KEY `tipo` (`tipo`);

--
-- Indexes for table `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`nit_emp`) REFERENCES `empresa` (`nit`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`tipo`) REFERENCES `tipo_documento` (`id`);

--
-- Constraints for table `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipo_empresa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
