-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 11:42 AM
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
-- Database: `computersales`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SaleID` int(11) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `ProductID` varchar(20) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `SalePrice` decimal(10,2) DEFAULT NULL,
  `Profit` decimal(10,2) DEFAULT NULL,
  `Lead` varchar(50) DEFAULT NULL,
  `SaleMonth` varchar(20) DEFAULT NULL,
  `SaleYear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SaleID`, `Contact`, `Gender`, `Age`, `State`, `ProductID`, `ProductType`, `SalePrice`, `Profit`, `Lead`, `SaleMonth`, `SaleYear`) VALUES
(1, 'Paul Thomas', 'M', 43, 'OH', 'M01-F0024', 'Desktop', 479.99, 143.39, 'Website', 'January', 2018),
(2, 'Margo Simms', 'F', 37, 'WV', 'GT13-0024', 'Desktop', 1249.99, 230.89, 'Flyer 4', 'January', 2018),
(3, 'Sam Stine', 'M', 26, 'PA', 'I3670', 'Desktop', 649.99, 118.64, 'Website', 'February', 2018),
(4, 'Moe Eggert', 'M', 35, 'PA', 'I3593', 'Laptop', 399.99, 72.09, 'Website', 'March', 2018),
(5, 'Jessica Elk', 'F', 55, 'PA', '15M-ED', 'Laptop', 699.99, 98.09, 'Flyer 4', 'March', 2018),
(6, 'Sally Struthers', 'F', 45, 'PA', 'GT13-0024', 'Desktop', 1249.99, 230.89, 'Flyer 2', 'April', 2018),
(7, 'Michelle Samms', 'F', 46, 'OH', 'GA401IV', 'Laptop', 1349.99, 180.34, 'Email', 'May', 2018),
(8, 'Mick Roberts', 'M', 23, 'OH', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Website', 'July', 2018),
(9, 'Ed Klondike', 'M', 52, 'OH', '81TC00', 'Laptop', 649.99, 122.34, 'Email', 'July', 2018),
(10, 'Phil Jones', 'M', 56, 'WV', 'M01-F0024', 'Desktop', 479.99, 143.39, 'Flyer 2', 'August', 2018),
(11, 'Rick James', 'M', 49, 'PA', 'GA401IV', 'Laptop', 1349.99, 180.34, 'Flyer 3', 'November', 2018),
(12, 'Sue Etna', 'F', 54, 'OH', 'GT13-0024', 'Desktop', 1249.99, 230.89, 'Flyer 2', 'November', 2018),
(13, 'Jason Case', 'M', 57, 'PA', '81TC00', 'Laptop', 649.99, 122.34, 'Email', 'November', 2018),
(14, 'Doug Johnson', 'M', 51, 'PA', 'I3670', 'Desktop', 649.99, 118.64, 'Website', 'December', 2018),
(15, 'Andy Sands', 'M', 56, 'OH', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Flyer 1', 'December', 2018),
(16, 'Kim Collins', 'F', 49, 'PA', 'I3593', 'Laptop', 399.99, 72.09, 'Flyer 2', 'January', 2019),
(17, 'Edna Sanders', 'F', 46, 'OH', '15M-ED', 'Laptop', 699.99, 98.09, 'Email', 'February', 2019),
(18, 'Michelle Samms', 'F', 46, 'NY', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Website', 'March', 2019),
(19, 'Mick Roberts', 'M', 23, 'PA', 'I3593', 'Laptop', 399.99, 72.09, 'Flyer 4', 'March', 2019),
(20, 'Sally Struthers', 'F', 45, 'NY', '81TC00', 'Laptop', 649.99, 122.34, 'Website', 'April', 2019),
(21, 'Jason Case', 'M', 57, 'PA', 'M01-F0024', 'Desktop', 479.99, 143.39, 'Flyer 4', 'May', 2019),
(22, 'Doug Johnson', 'M', 51, 'PA', 'GA401IV', 'Laptop', 1349.99, 180.34, 'Website', 'August', 2019),
(23, 'Paul Thomas', 'M', 43, 'OH', '81TC00', 'Laptop', 649.99, 122.34, 'Website', 'August', 2019),
(24, 'Margo Simms', 'F', 37, 'WV', 'Q526FA', 'Laptop', 1049.99, 143.09, 'Flyer 4', 'November', 2019),
(25, 'Michelle Samms', 'F', 46, 'NY', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Flyer 2', 'November', 2019),
(26, 'Mick Roberts', 'M', 23, 'PA', 'Q526FA', 'Laptop', 1049.99, 143.09, 'Email', 'November', 2019),
(27, 'Ed Klondike', 'M', 52, 'OH', 'Q526FA', 'Laptop', 1049.99, 143.09, 'Website', 'December', 2019),
(28, 'Moe Eggert', 'M', 35, 'PA', '15M-ED', 'Laptop', 699.99, 98.09, 'Email', 'December', 2019),
(29, 'Jessica Elk', 'F', 55, 'PA', 'GA401IV', 'Laptop', 1349.99, 180.34, 'Flyer 2', 'December', 2019),
(30, 'Phil Jones', 'M', 56, 'WV', 'M01-F0024', 'Desktop', 479.99, 143.39, 'Flyer 2', 'January', 2020),
(31, 'Rick James', 'M', 49, 'PA', 'GA401IV', 'Laptop', 1349.99, 180.34, 'Flyer 1', 'January', 2020),
(32, 'Sue Etna', 'F', 54, 'OH', 'GT13-0024', 'Desktop', 1249.99, 230.89, 'Flyer 2', 'February', 2020),
(33, 'Kim Collins', 'F', 49, 'PA', 'I3593', 'Laptop', 399.99, 72.09, 'Flyer 2', 'March', 2020),
(34, 'Edna Sanders', 'F', 46, 'OH', '15M-ED', 'Laptop', 699.99, 98.09, 'Email', 'March', 2020),
(35, 'Michelle Samms', 'F', 46, 'NY', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Website', 'April', 2020),
(36, 'Sally Struthers', 'F', 45, 'NY', '81TC00', 'Laptop', 649.99, 122.34, 'Website', 'April', 2020),
(37, 'Jason Case', 'M', 57, 'PA', 'M01-F0024', 'Desktop', 479.99, 143.39, 'Flyer 4', 'April', 2020),
(38, 'Doug Johnson', 'M', 51, 'PA', 'GA401IV', 'Laptop', 1349.99, 180.34, 'Website', 'May', 2020),
(39, 'Moe Eggert', 'M', 35, 'PA', 'I3593', 'Laptop', 399.99, 72.09, 'Website', 'May', 2020),
(40, 'Paul Thomas', 'M', 43, 'OH', 'LAH-00001', 'Desktop', 3479.99, 1043.39, 'Website', 'February', 2018),
(41, 'Margo Simms', 'F', 37, 'WV', '20-C434', 'Desktop', 399.99, 30.89, 'Flyer 4', 'January', 2018),
(42, 'Sam Stine', 'M', 26, 'PA', '24-DF0014', 'Desktop', 649.99, 68.64, 'Website', 'February', 2018),
(43, 'Moe Eggert', 'M', 35, 'PA', 'UX581GV-XB94T', 'Laptop', 2999.99, 472.09, 'Website', 'March', 2018),
(44, 'Jessica Elk', 'F', 55, 'PA', '81W0009DUS', 'Laptop', 379.99, 93.09, 'Flyer 4', 'February', 2018),
(45, 'Sally Struthers', 'F', 45, 'PA', '90HV0003US', 'Desktop', 449.99, 30.89, 'Flyer 2', 'April', 2018),
(46, 'Michelle Samms', 'F', 46, 'OH', '14-fq0013dx', 'Laptop', 349.99, 80.34, 'Email', 'May', 2018),
(47, 'Mick Roberts', 'M', 23, 'OH', 'MY2J2LL', 'Tablet', 979.99, 126.69, 'Website', 'December', 2018),
(48, 'Ed Klondike', 'M', 52, 'OH', 'NP730QCJ-K02US', 'Laptop', 949.99, 102.34, 'Email', 'July', 2018),
(49, 'Phil Jones', 'M', 56, 'WV', '4NM47AA', 'Desktop', 949.99, 193.39, 'Flyer 2', 'February', 2018),
(50, 'Rick James', 'M', 49, 'PA', '17-BY3613DX', 'Laptop', 629.99, 160.34, 'Flyer 3', 'November', 2018),
(51, 'Sue Etna', 'F', 54, 'OH', 'BB980', 'Desktop', 899.99, 120.89, 'Flyer 2', 'May', 2018),
(52, 'Jason Case', 'M', 57, 'PA', '15M-ED0023DX', 'Laptop', 999.99, 121.34, 'Email', 'November', 2018),
(53, 'Doug Johnson', 'M', 51, 'PA', 'GMA4000BST', 'Desktop', 599.99, 148.64, 'Website', 'May', 2018),
(54, 'Andy Sands', 'M', 56, 'OH', 'AN515-55-53AG', 'Tablet', 689.99, 156.69, 'Flyer 1', 'December', 2018),
(55, 'Kim Collins', 'F', 49, 'PA', 'UX581GV-XB94T', 'Laptop', 2999.99, 302.09, 'Flyer 2', 'January', 2019),
(56, 'Edna Sanders', 'F', 46, 'OH', 'Q407IQ-BR5N4', 'Laptop', 649.99, 91.09, 'Email', 'February', 2019),
(57, 'Michelle Samms', 'F', 46, 'NY', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Website', 'August', 2019),
(58, 'Mick Roberts', 'M', 23, 'PA', 'GU502LU-BI7N4', 'Laptop', 1299.99, 372.09, 'Flyer 4', 'August', 2019),
(59, 'Sally Struthers', 'F', 45, 'NY', 'X512DA-BTS2020RL', 'Laptop', 599.99, 72.34, 'Website', 'April', 2019),
(60, 'Jason Case', 'M', 57, 'PA', '27-XA0014', 'Desktop', 1299.99, 103.39, 'Flyer 4', 'May', 2019),
(61, 'Doug Johnson', 'M', 51, 'PA', 'GU502LW-BI7N6', 'Laptop', 1549.99, 380.34, 'Website', 'August', 2019),
(62, 'Paul Thomas', 'M', 43, 'OH', 'GA401IV-BR9N6', 'Laptop', 1449.99, 322.34, 'Website', 'March', 2019),
(63, 'Margo Simms', 'F', 37, 'WV', 'C433TA-BM3T8', 'Laptop', 529.99, 33.09, 'Flyer 4', 'November', 2019),
(64, 'Michelle Samms', 'F', 46, 'NY', 'MHK03LL/A', 'Desktop', 1099.99, 218.64, 'Flyer 2', 'March', 2019),
(65, 'Mick Roberts', 'M', 23, 'PA', 'Q526FA-BI7T13', 'Laptop', 1249.99, 141.09, 'Email', 'November', 2019),
(66, 'Ed Klondike', 'M', 52, 'OH', 'CX22NA-BCLN4', 'Laptop', 189.99, 23.09, 'Website', 'February', 2019),
(67, 'Moe Eggert', 'M', 35, 'PA', 'FA506IV-BR7N12', 'Laptop', 999.99, 198.09, 'Email', 'December', 2019),
(68, 'Jessica Elk', 'F', 55, 'PA', '4NM47AA', 'Desktop', 949.99, 193.39, 'Flyer 2', 'February', 2019),
(69, 'Phil Jones', 'M', 56, 'WV', '17-BY3613DX', 'Laptop', 629.99, 160.34, 'Flyer 3', 'May', 2020),
(70, 'Rick James', 'M', 49, 'PA', 'BB980', 'Desktop', 899.99, 120.89, 'Flyer 2', 'May', 2020),
(71, 'Sue Etna', 'F', 54, 'OH', '15M-ED0023DX', 'Laptop', 999.99, 121.34, 'Email', 'May', 2020),
(72, 'Kim Collins', 'F', 49, 'PA', 'GMA4000BST', 'Desktop', 599.99, 148.64, 'Website', 'May', 2020),
(73, 'Edna Sanders', 'F', 46, 'OH', 'AN515-55-53AG', 'Tablet', 689.99, 156.69, 'Flyer 1', 'December', 2020),
(74, 'Michelle Samms', 'F', 46, 'NY', 'UX581GV-XB94T', 'Laptop', 2999.99, 302.09, 'Flyer 2', 'January', 2020),
(75, 'Sally Struthers', 'F', 45, 'NY', 'Q407IQ-BR5N4', 'Laptop', 649.99, 91.09, 'Email', 'February', 2020),
(76, 'Jason Case', 'M', 57, 'PA', 'MY2J2LL', 'Tablet', 999.99, 146.69, 'Website', 'August', 2020),
(77, 'Doug Johnson', 'M', 51, 'PA', 'GU502LU-BI7N4', 'Laptop', 1299.99, 372.09, 'Flyer 4', 'August', 2020),
(78, 'Moe Eggert', 'M', 35, 'PA', '4NM47AA', 'Desktop', 939.99, 183.39, 'Flyer 2', 'February', 2020),
(79, 'Paul Thomas', 'M', 43, 'OH', '17-BY3613DX', 'Laptop', 619.99, 150.34, 'Flyer 3', 'November', 2018),
(80, 'Margo Simms', 'F', 37, 'WV', 'BB980', 'Desktop', 889.99, 110.89, 'Flyer 2', 'May', 2018),
(81, 'Sam Stine', 'M', 26, 'PA', '15M-ED0023DX', 'Laptop', 979.99, 101.34, 'Email', 'November', 2018),
(82, 'Moe Eggert', 'M', 35, 'PA', 'GMA4000BST', 'Desktop', 589.99, 128.64, 'Website', 'May', 2018),
(83, 'Jessica Elk', 'F', 55, 'PA', 'AN515-55-53AG', 'Tablet', 669.99, 136.69, 'Flyer 1', 'December', 2018),
(84, 'Sally Struthers', 'F', 45, 'PA', 'UX581GV-XB94T', 'Laptop', 2959.99, 252.09, 'Flyer 2', 'January', 2018),
(85, 'Michelle Samms', 'F', 46, 'OH', 'Q407IQ-BR5N4', 'Laptop', 629.99, 71.09, 'Email', 'February', 2018),
(86, 'Mick Roberts', 'M', 23, 'OH', 'MY2J2LL', 'Tablet', 989.99, 136.69, 'Website', 'August', 2018),
(87, 'Ed Klondike', 'M', 52, 'OH', 'GU502LU-BI7N4', 'Laptop', 1269.99, 332.09, 'Flyer 4', 'November', 2018),
(88, 'Phil Jones', 'M', 56, 'WV', 'C433TA-BM3T8', 'Laptop', 529.99, 33.09, 'Flyer 4', 'November', 2018),
(89, 'Rick James', 'M', 49, 'PA', 'MHK03LL/A', 'Desktop', 999.99, 197.64, 'Email', 'November', 2018),
(90, 'Sue Etna', 'F', 54, 'OH', 'CX22NA-BCLN4', 'Laptop', 179.99, 12.09, 'Website', 'February', 2018),
(91, 'Kim Collins', 'F', 49, 'PA', 'FA506IV-BR7N12', 'Laptop', 959.99, 194.09, 'Flyer 2', 'December', 2018),
(92, 'Edna Sanders', 'F', 46, 'OH', '27-XA0014', 'Desktop', 1299.99, 203.34, 'Flyer 2', 'May', 2018),
(93, 'Michelle Samms', 'F', 46, 'NY', 'GMA4000BST', 'Desktop', 589.99, 128.64, 'Website', 'April', 2018),
(94, 'Mick Roberts', 'M', 23, 'PA', 'BB980', 'Desktop', 889.99, 110.89, 'Email', 'April', 2018),
(95, 'Moe Eggert', 'M', 35, 'PA', '15M-ED0023DX', 'Laptop', 979.99, 101.34, 'Flyer 2', 'April', 2018),
(96, 'Jessica Elk', 'F', 55, 'PA', 'GMA4000BST', 'Desktop', 589.99, 128.64, 'Flyer 1', 'April', 2018),
(97, 'Sally Struthers', 'F', 45, 'PA', '27-XA0014', 'Desktop', 1299.99, 203.34, 'Website', 'April', 2018),
(98, 'Michelle Samms', 'F', 46, 'OH', 'UX581GV-XB94T', 'Laptop', 2999.99, 302.09, 'Flyer 2', 'April', 2018),
(99, 'Mick Roberts', 'M', 23, 'OH', 'GU502LU-BI7N4', 'Laptop', 1269.99, 332.09, 'Email', 'April', 2018),
(100, 'Ed Klondike', 'M', 52, 'OH', 'C433TA-BM3T8', 'Laptop', 529.99, 33.09, 'Website', 'April', 2018);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
