-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2019 at 03:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interactive`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facts`
--

DROP TABLE IF EXISTS `tbl_facts`;
CREATE TABLE IF NOT EXISTS `tbl_facts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `console` varchar(65) NOT NULL,
  `date` varchar(45) NOT NULL,
  `sold` varchar(55) NOT NULL,
  `colours` varchar(150) NOT NULL,
  `best_selling_game` varchar(70) NOT NULL,
  `description` varchar(500) NOT NULL,
  `launch_title` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_facts`
--

INSERT INTO `tbl_facts` (`ID`, `console`, `date`, `sold`, `colours`, `best_selling_game`, `description`, `launch_title`) VALUES
(1, 'Nintendo Entertainment System (NES)', 'July 15th, 1983', '61.91 Million copies sold worldwide', 'grey', 'Super Mario Bros.', 'The Nintendo Entertainment System is an 8-bit third-generation home video game console produced, released, and marketed by Nintendo. It is a remodeled export version of the company\'s Family Computer platform in Japan, commonly known as the Famicom', 'Super Mario Bros. / Duck Hunt'),
(2, 'Super Nintendo Entertainment System (SNES)', 'November21st, 1990', '61.91 Millioncopiesworldwide', 'grey and purple', 'Super Mario World', 'The Super Nintendo Entertainment System (SNES), also known as the Super NES or Super Nintendo, is a 16-bit home video game console developed by Nintendo that was released in Japan and South Korea', 'F-Zero'),
(3, 'Nintendo 64 (N64)', 'June 23rd, 1996', '32.93 Million copies worldwide', 'Smoke Black, Jungle Green, Fire Orange, Ice Blue, Watermelon Red, Grape Purple, Gold and Pokemon Theme', 'Super Mario 64', 'The Nintendo 64 is a home video game console developed and marketed by Nintendo, named for its 64-bit central processing unit', 'Pilotwings 64'),
(4, 'Nintendo GameCube (GCN)', 'September 14th, 2001', '21.74 Million copies worldwide', 'Indigo, Jet\r\nBlack, Platinum and Orange', 'Super Smash Bros. Melee', 'The Nintendo GameCube is the sixth-generation console and the successor to the Nintendo 64 using optical discs as its primary storage medium', 'Luigi\'s Mansion'),
(5, 'Nintendo Wii (Wii)', 'November 19th, 2006', '13.56 Million copies worldwide', 'White, Black, Blue and Red', 'Wii Sports', 'The Wii is a home video game console released by Nintendo. The Wii introduced the Wii Remote controller, which can be used as a handheld pointing device and which detects movement in three dimensions', 'Wii Sports'),
(6, 'Wii-U (Garbage)', 'November 18th, 2012', '13.56 Million copies worldwide', 'White and Black', 'Mario Kart 8', 'The Wii U is the first Nintendo console to support HD graphics. The system\'s primary controller is the Wii U GamePad, which features an embedded touchscreen, directional buttons, analog sticks, and action buttons.', 'New Super Mario Bros. U'),
(7, 'Nintendo Switch (Switch)', 'March 6th, 2017', '34.74 Million copies worldwide', 'Grey, Dark Grey, Red, Yellow, Green, Blue, Light Blue, Orange, Pink and\r\nPurple', 'Mario Kart 8 Deluxe', 'The Nintendo Switch is a hybrid console that can be used as a stationary and portable device. Its wireless Joy-Con controllers, with standard buttons and directional analog sticks for user input, motion sensing, and tactile feedback, can attach to both sides of the console to support handheld-style play.', ' The Legend of Zelda: Breath of the Wild');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
