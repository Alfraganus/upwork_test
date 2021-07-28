-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2021 at 11:42 AM
-- Server version: 8.0.19
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upwork_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_books`
--

CREATE TABLE `contact_books` (
  `id` int NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `eyeColor` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_books`
--

INSERT INTO `contact_books` (`id`, `isActive`, `age`, `eyeColor`, `name`, `gender`, `email`, `company`, `phone`, `address`) VALUES
(1, 1, 35, 'brown', 'Isabel Noel', 'female', 'isabelnoel@rubadub.com', 'RUBADUB', '1 (905) 515-2287', '353 Vanderveer Place, Welda, Texas, 3873'),
(2, 1, 35, 'green', 'Campos Pittman', 'female', 'CamposPittman@rubadub.com', 'RUBADUB', '1 (905) 515-2287', '353 Vanderveer Place, Welda, Texas, 3873'),
(3, 1, 35, 'brown', 'Sharpe French', 'female', 'sharpefrench@quarex.co', 'RUBADUB', '1 (905) 515-2287', '353 Vanderveer Place, Welda, Texas, 3873'),
(4, 1, 35, 'green', 'Teresa Bush', 'female', 'sharpefrench@quarex.com', 'RUBADUB', '1 (905) 515-2287', '353 Vanderveer Place, Welda, Texas, 3873');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_books`
--
ALTER TABLE `contact_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_books`
--
ALTER TABLE `contact_books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
