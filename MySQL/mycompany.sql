-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 01:46 PM
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
-- Database: `mycompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientid` varchar(250) DEFAULT NULL,
  `clientname` varchar(250) DEFAULT NULL,
  `joinedon` varchar(250) DEFAULT NULL,
  `empid` varchar(250) DEFAULT NULL,
  `fname` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientid`, `clientname`, `joinedon`, `empid`, `fname`) VALUES
('C01', 'Groups 1', '21st Jan 2021', 'E01', 'Rashmi'),
('C02', 'Groups 2', '20th Feb 2024', 'E08', 'Ashwini'),
('C03', 'Groups 3', '18th Feb 2023', 'E01', 'Rashmi'),
('C04', 'Groups 4', '16th Feb 2021', 'E09', 'Nikhil'),
('C05', 'Groups 5', '01st Jan 2011', 'E12', 'Aparna');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` varchar(250) DEFAULT NULL,
  `fname` varchar(250) DEFAULT NULL,
  `mname` varchar(250) DEFAULT NULL,
  `lname` varchar(250) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `doj` varchar(250) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `department` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `projectname` varchar(250) DEFAULT NULL,
  `groupid` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `fname`, `mname`, `lname`, `dob`, `doj`, `designation`, `department`, `city`, `gender`, `salary`, `exp`, `projectname`, `groupid`) VALUES
('E01', 'Rashmi', 'Naveen', 'Joshi', '11th Jul 1980', '01st Jan 2018', 'Developer', 'Backend', 'Pune', 'Female', 15000, 1, 'Greenbill', 'G01'),
('E02', 'Leena', 'Mahesh', 'Sohoy', '12th Jul 1980', '01st Jan 2018', 'Executive', 'Sales', 'Mumbai', 'Female', 18000, 2, 'Greenbill', 'G02'),
('E03', 'Mahesh', 'Praapati', 'Kimni', '13th Aug 1980', '01st Jan 2018', 'HR', 'Management', 'Pune', 'Male', 45000, 4, 'Gains', 'G03'),
('E04', 'Gita', 'Rita', 'Kumari', '14th Aug 1980', '01st Jan 2018', 'Developer', 'Backend', 'Nagpur', 'Female', 10000, 5, 'Gains', 'G01'),
('E05', 'Shiv', 'Ram', 'Likhare', '15th Aug 1980', '01st Jan 2018', 'Developer', 'Backend', 'Mumbai', 'Male', 59000, 8, 'Kohinoor', 'G01'),
('E06', 'Vrusabh', 'Mihan', 'Shekhar', '16th Jul 1980', '01st Jan 2018', 'Executive', 'Sales', 'Mumbai', 'Male', 78000, 9, 'Kohinoor', 'G01'),
('E07', 'Piyush', 'Ganesh', 'Shelode', '17th Jul 1980', '01st Jan 2018', 'Sales', 'Sales', 'Pune', 'Male', 90000, 1, 'Guruji Speaks', 'G02'),
('E08', 'Ashwini', 'Girish', 'Watkar', '18th Jul 1980', '5th Jan 2018', 'Marketing', 'Sales', 'Pune', 'Female', 10000, 5, 'Guruji Speaks', 'G02'),
('E09', 'Nikhil', 'Ram', 'Misra', '19th Jul 1980', '6th Jan 2018', 'Accountant', 'Management', 'Pune', 'Male', 19000, 3, 'RSK', 'G03'),
('E10', 'Sanjog', 'Vishwanath', 'Meshram', '20th Jul 1980', '7th Jan 2018', 'Executive', 'Sales', 'Pune', 'Male', 56000, 2, 'RSK', 'G04'),
('E11', 'Preeti', 'Sanjay', 'Joshi', '21st Jul 1980', '8th Jan 2018', 'Manager', 'Management', 'Nagpur', 'Female', 78000, 2, 'Mauli', 'G05'),
('E12', 'Aparna', 'Sanjay', 'Bhabhuje', '22nd Jul 1980', '9th Jan 2018', 'Manager', 'Management', 'Nagpur', 'Female', 98000, 2, 'Mauli', 'G06'),
('E13', 'Sam', 'Sheenoy', 'Bahadur', '23rd Jul 1980', '10th Jan 2018', 'Team Lead', 'Management', 'Nagpur', 'Male', 78000, 4, 'Land Partners', 'G06'),
('E14', 'Nitin', 'Preeti', 'Bhagwat', '24th Jul 1980', '11th Jan 2018', 'Developer', 'Backend', 'Mumbai', 'Male', 16000, 5, 'Land Partners', 'G07'),
('E15', 'Ashok', 'Swati', 'Bhagwan', '25th Jul 1980', '12th Jan 2018', 'Writer', 'Sales', 'Mumbai', 'Male', 17600, 2, 'Land Partners', 'G07');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projectid` varchar(250) DEFAULT NULL,
  `projectname` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `teamsize` int(11) DEFAULT NULL,
  `empid` varchar(250) DEFAULT NULL,
  `groupid` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectid`, `projectname`, `type`, `location`, `teamsize`, `empid`, `groupid`) VALUES
('P01', 'Greenbill', 'Internal', 'Onsite', 2, 'E01', 'G01'),
('P02', 'Gains', 'External', 'Onsite', 4, 'E03', 'G03'),
('P03', 'Kohinoor', 'Internal', 'Onsite', 5, 'E05', 'G01'),
('P04', 'Guruji Speaks', 'Internal', 'ClientSite', 8, 'E08', 'G02'),
('P05', 'RSK', 'External', 'ClientSite', 20, 'E09', 'G03'),
('P06', 'Mauli', 'External', 'ClientSite', 4, 'E12', 'G06'),
('P07', 'Land Partners', 'Internal', 'Onsite', 2, 'E13', 'G06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
