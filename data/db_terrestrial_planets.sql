-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2019 at 03:45 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_terrestrial_planets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_figure`
--

CREATE TABLE `tbl_figure` (
  `figure_id` int(10) NOT NULL,
  `planets_id` int(10) NOT NULL,
  `radius` varchar(20) NOT NULL,
  `mass` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `temperature` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_figure`
--

INSERT INTO `tbl_figure` (`figure_id`, `planets_id`, `radius`, `mass`, `area`, `temperature`) VALUES
(1, 1, '2,439.7 km', '3.3010x1023 kg', '7,4797x107 km2', '-173/427oC'),
(2, 2, '6,051.8 km', '4.6873x1024 kg', '4.6023x108 km2', '462oC (max)'),
(3, 3, '6,371.00 km', '5.9722x1024 kg', '5.1006x108 km2', '-88/58oC (min/max)'),
(4, 4, '3,389.5 km', '6.4169x1023 kg', '1.4437x108 km2', '-153/20oC ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_planets`
--

CREATE TABLE `tbl_planets` (
  `planets_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `color` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_planets`
--

INSERT INTO `tbl_planets` (`planets_id`, `name`, `description`, `color`) VALUES
(1, 'Mercury', 'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth\'s Moon. Its orbit around the Sun takes only 87.97 days.', '9a9b97'),
(2, 'Venus', 'Venus is the second planet from the Sun. As the second-brightest natural object in the night sky after the Moon, Venus can cast shadows and, rarely, is visible to the naked eye in broad daylight.', 'c6a275'),
(3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4.5 billion years ago.', '4586a3'),
(4, 'Mars', 'The fourth planet from the Sun, Mars is a dusty, cold, desert world with a very thin atmosphere and is often referred to as the \'Red Planet\'.', 'cc6c42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_figure`
--
ALTER TABLE `tbl_figure`
  ADD PRIMARY KEY (`figure_id`);

--
-- Indexes for table `tbl_planets`
--
ALTER TABLE `tbl_planets`
  ADD PRIMARY KEY (`planets_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_figure`
--
ALTER TABLE `tbl_figure`
  MODIFY `figure_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_planets`
--
ALTER TABLE `tbl_planets`
  MODIFY `planets_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
