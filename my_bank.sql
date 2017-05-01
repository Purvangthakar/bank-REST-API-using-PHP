-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2017 at 05:52 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE IF NOT EXISTS `card` (
  `number` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `pin_hash` varchar(250) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`number`, `name`, `pin_hash`, `balance`, `status`, `created_at`) VALUES
(3567, 'Archit', '$2a$10$0df30537a88451ce35006eHfIqrhJYAU/wwU/twkcLL3kHVI73Gr.', 12099, 1, '2017-02-12 09:15:37'),
(3568, 'Pranav', '$2a$10$b8eeceeb3b7e2badafcadesFb60rAuNssGoLxdn4lD9SZZXNZTlma', 17301, 1, '2017-02-12 09:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `amount` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `number` (`number`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `number`, `type`, `amount`, `Timestamp`) VALUES
(1, 3567, 'CREDIT', 10000, '2017-02-12 09:49:17'),
(2, 3568, 'CREDIT', 20000, '2017-02-12 09:58:35'),
(3, 3568, 'DEBIT', 100, '2017-02-12 09:59:32'),
(4, 3568, 'DEBIT', 500, '2017-02-16 10:15:34'),
(5, 3568, 'DEBIT', 500, '2017-02-16 10:17:15'),
(6, 3567, 'CREDIT', 500, '2017-02-16 10:17:16'),
(7, 3568, 'DEBIT', 500, '2017-02-16 10:17:47'),
(8, 3567, 'CREDIT', 500, '2017-02-16 10:17:48'),
(9, 3568, 'DEBIT', 99, '2017-02-16 10:19:13'),
(10, 3567, 'CREDIT', 99, '2017-02-16 10:19:14'),
(11, 3568, 'DEBIT', 200, '2017-02-17 18:15:49'),
(12, 3567, 'CREDIT', 200, '2017-02-17 18:15:50'),
(13, 3568, 'DEBIT', 200, '2017-05-01 14:01:08'),
(14, 3567, 'CREDIT', 200, '2017-05-01 14:01:09'),
(15, 3568, 'DEBIT', 100, '2017-05-01 15:26:54'),
(16, 3567, 'CREDIT', 100, '2017-05-01 15:26:55'),
(17, 3568, 'DEBIT', 500, '2017-05-01 15:27:57'),
(18, 3567, 'CREDIT', 500, '2017-05-01 15:27:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
