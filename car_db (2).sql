-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 02:06 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_car`
--

CREATE TABLE IF NOT EXISTS `d_car` (
`id` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  `kapasitas_engine` int(4) NOT NULL,
  `kapasitas_penumpang` int(2) NOT NULL,
  `jarak_tempuh` int(3) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_car`
--

INSERT INTO `d_car` (`id`, `nama`, `merek`, `gambar`, `harga`, `kapasitas_engine`, `kapasitas_penumpang`, `jarak_tempuh`, `tahun`) VALUES
(6, 'GT 550', 'Nissan', 'jhon.jpg', 600000000, 4000, 4, 20, 2005),
(9, 'Grand New Avansa', 'Toyora', 'avansa.jpg', 149400000, 1496, 8, 10, 2016),
(10, 'Karimun Wagon R', 'Suzuki', 'wagon.jpg', 111500000, 998, 4, 21, 2014),
(11, 'Brio', 'Honda', 'brio.jpg', 126000000, 1200, 4, 21, 2013),
(12, 'Jazz RS', 'Honda', 'jazz.jpg', 255000000, 1500, 4, 20, 2016),
(13, 'xenia', 'daihatsu', 'nn.jpg', 100000000, 1200, 8, 10, 2014),
(14, 'Kingwoods', 'Holden', 'holdenkingwoord.jpg', 40000000, 2850, 4, 10, 1966),
(15, 'Corolla DX', 'Toyota', 'corolladx.png', 30000000, 1300, 4, 9, 1980);

-- --------------------------------------------------------

--
-- Table structure for table `f_bbm`
--

CREATE TABLE IF NOT EXISTS `f_bbm` (
`id` int(2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `batas_bawah` int(2) NOT NULL,
  `batas_tengah` int(2) DEFAULT NULL,
  `batas_atas` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_bbm`
--

INSERT INTO `f_bbm` (`id`, `status`, `batas_bawah`, `batas_tengah`, `batas_atas`) VALUES
(3, 'boros', 0, NULL, 5),
(4, 'sedang', 4, 10, 18),
(5, 'irit', 15, NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `f_engine`
--

CREATE TABLE IF NOT EXISTS `f_engine` (
`id_engine` int(2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `batas_bawah` int(10) NOT NULL,
  `batas_atas` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_engine`
--

INSERT INTO `f_engine` (`id_engine`, `status`, `batas_bawah`, `batas_atas`) VALUES
(1, 'kecil', 500, 2500),
(2, 'besar', 2000, 6500);

-- --------------------------------------------------------

--
-- Table structure for table `f_harga`
--

CREATE TABLE IF NOT EXISTS `f_harga` (
`id_harga` int(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `batas_bawah` int(10) NOT NULL,
  `batas_tengah` int(10) DEFAULT NULL,
  `batas_atas` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_harga`
--

INSERT INTO `f_harga` (`id_harga`, `status`, `batas_bawah`, `batas_tengah`, `batas_atas`) VALUES
(1, 'murah', 20000000, NULL, 100000000),
(2, 'sedang', 90000000, 450000000, 700000000),
(3, 'mahal', 600000000, NULL, 1000000000);

-- --------------------------------------------------------

--
-- Table structure for table `f_jenis`
--

CREATE TABLE IF NOT EXISTS `f_jenis` (
`id` int(2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `batas_bawah` int(4) NOT NULL,
  `batas_atas` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_jenis`
--

INSERT INTO `f_jenis` (`id`, `status`, `batas_bawah`, `batas_atas`) VALUES
(1, 'antik', 1879, 2000),
(2, 'modern', 1990, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `f_kapasitas`
--

CREATE TABLE IF NOT EXISTS `f_kapasitas` (
`id` int(2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `batas_bawah` int(1) NOT NULL,
  `batas_atas` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_kapasitas`
--

INSERT INTO `f_kapasitas` (`id`, `status`, `batas_bawah`, `batas_atas`) VALUES
(1, 'sedikit', 1, 4),
(2, 'banyak', 3, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_car`
--
ALTER TABLE `d_car`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_bbm`
--
ALTER TABLE `f_bbm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_engine`
--
ALTER TABLE `f_engine`
 ADD PRIMARY KEY (`id_engine`);

--
-- Indexes for table `f_harga`
--
ALTER TABLE `f_harga`
 ADD PRIMARY KEY (`id_harga`);

--
-- Indexes for table `f_jenis`
--
ALTER TABLE `f_jenis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_kapasitas`
--
ALTER TABLE `f_kapasitas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_car`
--
ALTER TABLE `d_car`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `f_bbm`
--
ALTER TABLE `f_bbm`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `f_engine`
--
ALTER TABLE `f_engine`
MODIFY `id_engine` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `f_harga`
--
ALTER TABLE `f_harga`
MODIFY `id_harga` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `f_jenis`
--
ALTER TABLE `f_jenis`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `f_kapasitas`
--
ALTER TABLE `f_kapasitas`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
