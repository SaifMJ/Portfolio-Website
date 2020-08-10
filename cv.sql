-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 08:17 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `BSC` varchar(200) NOT NULL,
  `HSC` varchar(200) NOT NULL,
  `SSC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`BSC`, `HSC`, `SSC`) VALUES
('Independent University, Bangladesh (IUB)', 'Cambrian College, Dhaka', 'Habiganj Govt High School, Habiganj'),
('13th semester(Running)', 'Passing Year: 2014', 'Passing Year: 2012'),
('CGPA-2.80', 'GPA-5.00', 'GPA-5.00');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `language` varchar(50) NOT NULL,
  `skill level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`language`, `skill level`) VALUES
('C++', '40'),
('CSS', '60'),
('HTML', '80'),
('JAVA', '40'),
('PHP', '60');

-- --------------------------------------------------------

--
-- Table structure for table `work-experience`
--

CREATE TABLE `work-experience` (
  `Duration` varchar(50) NOT NULL,
  `Organization` varchar(50) NOT NULL,
  `Job Title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work-experience`
--

INSERT INTO `work-experience` (`Duration`, `Organization`, `Job Title`) VALUES
('Three Months', 'Independent University,Bangladesh', 'Library SoD');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
