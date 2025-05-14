-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 01:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `pythonmarks` int(11) DEFAULT NULL,
  `dsmarks` int(11) DEFAULT NULL,
  `damarks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `studentid`, `gender`, `pythonmarks`, `dsmarks`, `damarks`) VALUES
('John Doe', 1, 'Male', 85, NULL, 90),
('Jane Smith', 2, 'Female', NULL, 92, 87),
('Michael Johnson', 3, 'Male', 78, 84, 79),
('Emily Davis', 4, 'Female', 91, 89, NULL),
('William Brown', 5, 'Male', 82, 76, 81),
('Sophia Wilson', 6, 'Female', 88, 90, 92),
('James Taylor', 7, 'Male', 79, 82, 75),
('Olivia Martinez', 8, 'Female', NULL, 90, 85),
('Daniel Anderson', 9, 'Male', 85, 79, 83),
('Isabella Thomas', 10, 'Female', 94, 91, 97),
('Ethan Hernandez', 11, 'Male', NULL, 75, 78),
('Ava Lopez', 12, 'Female', 87, 88, 91),
('Alexander Gonzalez', 13, 'Male', NULL, 83, 76),
('Mia Wilson', 14, 'Female', 89, 92, 93),
('Matthew Lee', 15, 'Male', NULL, 80, 82),
('Amelia Perez', 16, 'Female', 92, 87, 90),
('David Sanchez', 17, 'Male', 81, 77, 79),
('Emma Scott', 18, 'Female', 95, NULL, 96),
('Benjamin Ramirez', 19, 'Male', 76, 82, 74),
('Chloe Flores', 20, 'Female', 88, 90, 89),
('Logan Reed', 21, 'Male', 82, NULL, 80),
('Ella Price', 22, 'Female', 91, 88, 92),
('Jackson Howard', 23, 'Male', 78, 75, 77),
('Grace Ward', 24, 'Female', 93, 91, 95),
('Gabriel Coleman', 25, 'Male', 79, 84, 78),
('Lily Rivera', 26, 'Female', 90, 89, 91),
('Christopher Ward', 27, 'Male', 84, 81, 83),
('Sofia Washington', 28, 'Female', 88, 92, 90),
('Andrew Hill', 29, 'Male', 77, NULL, 75),
('Madison Murphy', 30, 'Female', 92, NULL, 91),
('Joshua King', 31, 'Male', 81, 79, 79),
('Avery Green', 32, 'Female', NULL, 87, 90),
('Joseph Cooper', 33, 'Male', 76, NULL, 74),
('Scarlett Bennett', 34, 'Female', 91, 93, 92),
('Samuel Evans', 35, 'Male', 83, 82, 81),
('Hannah Long', 36, 'Female', 94, 90, 95),
('Dylan Baker', 37, 'Male', 78, 76, 77),
('Lillian Brooks', 38, 'Female', 90, 91, 89),
('Brandon Gray', 39, 'Male', 79, 881, 78),
('Zoe Kelly', 40, 'Female', 88, NULL, 89),
('Tyler Cox', 41, 'Male', 80, 78, 79),
('Natalie Ward', 42, 'Female', 93, 89, 94),
('Isaac Roberts', 43, 'Male', 707, 75, 76),
('Violet Collins', 44, 'Female', 91, 90, 92),
('Jack Barnes', 45, 'Male', 84, 82, 83),
('Bella Peterson', 46, 'Female', 88, 91, 89),
('Ryan Murphy', 47, 'Male', 79, 77, 78),
('Lucy Ross', 48, 'Female', 90, 92, 88),
('Luke Morris', 49, 'Male', 82, 80, 890),
('Stella Bell', 50, 'Female', 93, 91, 93),
('Nathan Cox', 51, 'Male', 76, 78, 75),
('Aria Hughes', 52, 'Female', 900, 93, 88),
('Carter Richardson', 53, 'Male', 81, 80, 77),
('Mila Turner', 54, 'Female', 89, 92, 87),
('Jason Brooks', 55, 'Male', 78, 76, 76),
('Leah Nelson', 56, 'Female', 91, 90, 91),
('Owen Mitchell', 57, 'Male', 83, 81, 82),
('Penelope Perez', 58, 'Female', 88, 91, 88),
('Wyatt Baker', 59, 'Male', 79, 78, 77),
('Hazel Griffin', 60, 'Female', 92, 92, 90),
('Gabriel Cooper', 61, 'Male', 770, 75, 75),
('Zoey Martinez', 62, 'Female', 90, 93, 89),
('Gavin King', 63, 'Male', 80, 79, 78),
('Aurora Collins', 64, 'Female', 93, 91, 92),
('Elijah Russell', 65, 'Male', 76, 780, 74),
('Riley Brooks', 66, 'Female', 89, 92, 88),
('Julian Diaz', 67, 'Male', 81, 81, 76),
('Charlotte Hughes', 68, 'Female', 88, 90, 890),
('Lincoln Ward', 69, 'Male', 79, 78, 76),
('Luna Green', 70, 'Female', 92, 93, 91),
('Hunter Coleman', 71, 'Male', 77, 76, 75),
('Aaliyah Mitchell', 72, 'Female', 91, 91, 90),
('Oliver Parker', 73, 'Male', 83, 82, 81),
('Eva Foster', 74, 'Female', 88, 92, 89),
('Levi Jenkins', 75, 'Male', 79, 79, 78),
('Sadie Martinez', 76, 'Female', 93, 92, 91),
('Theodore Morris', 77, 'Male', 76, 78, 74),
('Aubrey Reed', 78, 'Female', 90, 93, 89),
('Aaron Cox', 79, 'Male', 80, 80, 78),
('Elena Simmons', 80, 'Female', 92, 91, 90),
('Xavier Rivera', 81, 'Male', 77, 76, 75),
('Clara Peterson', 82, 'Female', 89, 91, 88),
('Henry Cooper', 83, 'Male', 81, 81, 77),
('Kylie Brooks', 84, 'Female', 88, 90, 89),
('Eli Ward', 85, 'Male', 79, 78, 76),
('Layla Green', 86, 'Female', 92, 93, 91),
('Oscar Coleman', 87, 'Male', 77, 76, 75),
('Paisley Mitchell', 88, 'Female', 91, 91, 90),
('Finn Parker', 89, 'Male', 83, 82, 81),
('Nova Foster', 90, 'Female', 88, 92, 89),
('Ezekiel Jenkins', 91, 'Male', 79, 79, 78),
('Caroline Martinez', 92, 'Female', 93, 92, 91),
('Max Morris', 93, 'Male', 76, 78, 74),
('Maya Reed', 94, 'Female', 90, 93, 89),
('James Cox', 95, 'Male', 80, 80, 78),
('Ariana Simmons', 96, 'Female', 92, 91, 90),
('Julian Rivera', 97, 'Male', 77, 76, 75),
('Madeline Peterson', 98, 'Female', 89, 91, 88),
('Thomas Cooper', 99, 'Male', 81, 81, 77),
('Nora Brooks', 100, 'Female', 88, 90, 89);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
