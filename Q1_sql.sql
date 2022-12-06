-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 02:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `Patient_ID` int(2) DEFAULT NULL,
  `Patient_Name` varchar(7) DEFAULT NULL,
  `Patient_Gender` varchar(1) DEFAULT NULL,
  `Patient_Phone` bigint(11) DEFAULT NULL,
  `Province` varchar(16) DEFAULT NULL,
  `Created_at` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`Patient_ID`, `Patient_Name`, `Patient_Gender`, `Patient_Phone`, `Province`, `Created_at`) VALUES
(1, 'Osama', 'M', 12507384957, 'Ontario', '04/07/2022'),
(2, 'Salima', 'F', 12506482904, 'British Columbia', '06/07/2022'),
(3, 'Ahmed', 'M', 12507483947, 'Ontario', '06/07/2022'),
(4, 'Sania', 'F', 12502748001, 'Ontario', '07/07/2022'),
(5, 'Sana', 'F', 12505832224, 'Ontario', '08/07/2022'),
(6, 'Imran', 'M', 12505099922, 'British Columbia', '12/07/2022'),
(7, 'Rizwan', 'M', 12505992244, 'Ontarioo', '12/08/2022'),
(8, 'Sara', 'F', 12505992343, 'Ontario', '12/08/2022'),
(9, 'Alisha', 'F', 12505998573, 'British Columbia', '13/08/2022'),
(10, 'Yasmeen', 'F', 12505998239, 'British Columbia', '14/08/2022');

-- --------------------------------------------------------

--
-- Table structure for table `patient_partner_mapping`
--

CREATE TABLE `patient_partner_mapping` (
  `Patient_Partner_ID` int(1) DEFAULT NULL,
  `Patient_ID` int(1) DEFAULT NULL,
  `Partner_ID` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `patient_partner_mapping`
--

INSERT INTO `patient_partner_mapping` (`Patient_Partner_ID`, `Patient_ID`, `Partner_ID`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 2),
(4, 4, 1),
(5, 5, 6),
(6, 6, 5),
(7, 7, 8),
(8, 8, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
