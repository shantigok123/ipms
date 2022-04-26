-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 08:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipms`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_details`
--

CREATE TABLE `ip_details` (
  `ip_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `assigned_user` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_details`
--

INSERT INTO `ip_details` (`ip_id`, `ip_address`, `assigned_user`, `department`, `remarks`) VALUES
(1, '172.16.12.80', 'Joeliza Reallubit', 'CNC', ''),
(2, '172.16.12.81', 'Magie Saet', 'CNC', ''),
(3, '172.16.12.82', 'Lyca Prudenciado', 'CNC', ''),
(4, '172.16.12.83', 'Erika Espiritu', 'CNC', ''),
(5, '172.16.12.84', 'Rechel', 'CNC', ''),
(6, '172.16.12.85', 'Rosewell Cruz', 'CNC', ''),
(7, '172.16.12.86', 'Shienna Calimlim', 'CNC', ''),
(8, '172.16.12.87', 'Justin Deladia', 'CNC', ''),
(9, '172.16.12.88', '', 'CNC', ''),
(10, '172.16.12.89', '', 'CNC', ''),
(11, '172.16.12.90', '', 'CNC', ''),
(12, '172.16.12.16', 'Payroll PC', 'ACCOUNTING', ''),
(13, '172.16.12.61', 'Karen', 'ACCOUNTING', ''),
(14, '172.16.12.62', 'Lei Ann Dimagiba', 'ACCOUNTING', ''),
(16, '172.16.12.64', 'Rosie', 'ACCOUNTING', ''),
(17, '172.16.12.65', 'Ericka', 'ACCOUNTING', ''),
(18, '172.16.12.67', '', 'ACCOUNTING', ''),
(19, '172.16.12.68', 'Chrystia', 'ACCOUNTING', ''),
(20, '172.16.12.69', 'Cielo Verano', 'ACCOUNTING', ''),
(21, '172.16.12.70', '', 'ACCOUNTING', ''),
(22, '172.16.12.74', 'Rolen', 'ACCOUNTING', ''),
(24, '172.16.12.167', 'Marvin', 'ACCOUNTING', ''),
(25, '172.16.12.178', 'Roxan', 'ACCOUNTING', ''),
(26, '172.16.12.200', 'SOPHOS SERVER', 'MIS', ''),
(27, '172.16.12.202', 'Gabriel Dela Cruz', 'MIS', ''),
(28, '172.16.12.203', 'App Server', 'MIS', ''),
(29, '172.16.12.205', 'Mark Ocampo', 'MIS', ''),
(30, '172.16.12.206', 'Jake\'s Wunn', 'MIS', ''),
(31, '172.16.12.207', 'PFFC SERVER', 'MIS', ''),
(32, '172.16.12.208', 'MIS-OJT', 'MIS', ''),
(33, '172.16.12.209', '', 'MIS', ''),
(34, '172.16.12.210', 'DATASERVER', 'MIS', ''),
(36, '172.16.12.212', 'EJOURNAL SERVER', 'MIS', ''),
(37, '172.16.12.213', 'DSD BOARD', 'MIS', ''),
(38, '172.16.12.50', '', 'HR', ''),
(39, '172.16.12.51', 'Mary Sweetheart Druja', 'HR', ''),
(40, '172.16.12.52', '', 'HR', ''),
(41, '172.16.12.53', '', 'HR', ''),
(42, '172.16.12.54', 'Alyssa ', 'HR', ''),
(43, '172.16.12.55', 'Lalaine Fuentes', 'HR', ''),
(45, '172.16.12.57', 'Mary Anne', 'HR', ''),
(46, '172.16.12.58', 'Joyce Barion', 'HR', ''),
(47, '172.16.12.59', 'Shayne Masangkay', 'HR', ''),
(48, '172.16.12.60', 'Cha', 'HR', ''),
(49, '172.16.12.141', 'Mary Ann', 'MARKETING', ''),
(53, '172.16.12.145', '', 'MARKETING', ''),
(54, '172.16.12.146', 'Charlene Elefanio', 'MARKETING', ''),
(55, '172.16.12.147', 'Melody', 'MARKETING', ''),
(56, '172.16.12.149', 'Bernadette', 'MARKETING', ''),
(57, '172.16.12.190', 'Marlon Pascual', 'PURCHASING', ''),
(58, '172.16.12.191', 'Amy timblaco', 'PURCHASING', ''),
(59, '172.16.12.46', 'Clarisse Abcede', 'KAIZEN', ''),
(60, '172.16.12.181', 'Crezil', 'CRD', ''),
(61, '172.16.12.182', 'Gioress Hagos', 'CRD', ''),
(62, '172.16.12.183', 'Twinkle Ma?ago', 'CRD', ''),
(63, '172.16.12.184', 'Charmaine David', 'CRD', ''),
(64, '172.16.12.186', 'Robie Porcil', 'CRD', ''),
(65, '172.16.12.121', 'Michael Manzano', 'SERVICE ADVISOR', ''),
(66, '172.16.12.122', 'Michael Olalia', 'SERVICE ADVISOR', ''),
(67, '172.16.12.123', 'Kristoffer Caguioa', 'SERVICE ADVISOR', ''),
(68, '172.16.12.124', 'Jonnel Pesebre', 'SERVICE ADVISOR', ''),
(69, '172.16.12.125', 'Ain Karem Maga', 'SERVICE ADVISOR', ''),
(70, '172.16.12.126', 'Allan Divina', 'SERVICE ADVISOR', ''),
(71, '172.16.12.127', 'Jayson Escat', 'SERVICE ADVISOR', ''),
(72, '172.16.12.128', 'Aaron Reyes', 'SERVICE ADVISOR', ''),
(73, '172.16.12.129', 'Janry Tocmo', 'SERVICE ADVISOR', ''),
(74, '172.16.12.130', 'Orlando Deguzman', 'SERVICE ADVISOR', ''),
(75, '172.16.12.131', 'Julius Salvadora', 'SERVICE ADVISOR', ''),
(76, '172.16.12.120', 'Equeue Server', 'SERVICE ADVISOR', ''),
(77, '172.16.12.214', 'Reception PC', 'SERVICE ADVISOR', ''),
(78, '172.16.12.38', 'Elvy', 'SERVICE BACK OFFICE', ''),
(79, '172.16.12.111', 'Michelle Lagasca', 'SERVICE BACK OFFICE', ''),
(80, '172.16..12.112', 'Shiela ', 'SERVICE BACK OFFICE', ''),
(81, '172.16.12.113', 'Jo Ann Camacho', 'SERVICE BACK OFFICE', ''),
(82, '172.16.12.115', 'Bernadeth Alemanya', 'SERVICE BACK OFFICE', ''),
(83, '172.16.12.148', 'Krizel Frianela', 'SERVICE BACK OFFICE', ''),
(84, '172.16.12.211', 'Mark Inting', 'SERVICE BACK OFFICE', ''),
(85, '172.16.12.215', 'Chrislyn', 'SERVICE BACK OFFICE', ''),
(86, '172.16.12.216', 'Jason Asia Exito', 'SERVICE BACK OFFICE', ''),
(88, '172.16.12.233', 'Technical Laptop 1', 'SERVICE BACK OFFICE', ''),
(89, '172.16.12.234', 'Technical Laptop 2', 'SERVICE BACK OFFICE', ''),
(90, '172.16.12.222', 'Flora Sembrano', 'SERVICE BACK OFFICE', ''),
(91, '172.16.12.117', 'Rocky', 'SERVICE BACK OFFICE', ''),
(92, '172.16.12.218', 'Mhean ', 'SERVICE ESTIMATOR', ''),
(93, '172.16.12.134', 'Aaron Angeles', 'SERVICE ESTIMATOR', ''),
(94, '172.16.12.232', 'Jericho Navarro', 'SERVICE ESTIMATOR', ''),
(95, '172.16.12.116', 'Joenna Seguerra', 'JOB CONTROLLER', ''),
(96, '172.16.12.223', 'Gerald', 'JOB CONTROLLER', ''),
(97, '172.16.12.221', 'Ayrand', 'JOB CONTROLLER', ''),
(98, '172.16.12.119', 'Kerwin Cabuhat', 'BILLING', ''),
(99, '172.16.12.42', 'J.P. Robles', 'BILLING', ''),
(100, '172.16.12.118', 'Cristy Rigos', 'BILLING', ''),
(101, '172.16.12.103', 'Camille Sambayon', 'PARTS', ''),
(102, '172.16.12.228', 'Jeremi Isip', 'PARTS', ''),
(103, '172.16.12.107', 'Limuel Manalang', 'PARTS', ''),
(104, '172.16.12.18', 'Jojo Tomado', 'PARTS', ''),
(105, '172.16.12.109', 'Nathan Pontillas', 'PARTS', ''),
(106, '172.16.12.101', 'Joseph Corullo', 'PARTS', ''),
(107, '172.16.12.108', 'Patrick Hizon Jr.', 'PARTS', ''),
(108, '172.16.12.', 'Cedie Valdez', 'PARTS', ''),
(109, '172.16.12.105', 'CJ Legaspi', 'PARTS', ''),
(110, '172.16.12.204', 'Raymund', 'MANCOM', ''),
(111, '172.16.12.230', 'Kaye Garcia', 'MANCOM', ''),
(112, '172.16.12.168', 'Michael Inza Cruz', 'MANCOM', ''),
(113, '172.16.12.79', 'Von', 'MANCOM', ''),
(114, '172.16.12.56', 'Joel Lacsamana', 'MANCOM', ''),
(115, '172.16.12.63', 'Jane Dinlasan', 'MANCOM', ''),
(116, '172.16.12.175', 'Zenaida Maralit', 'MANCOM', ''),
(117, '172.16.12.224', 'Rovielyn Daludado', 'MANCOM', ''),
(118, '172.16.12.185', 'Joan Baltazar', 'MANCOM', ''),
(119, '172.16.12.66', 'Arlyn Villarosa', 'MANCOM', ''),
(120, '172.16.12.99', 'Robert Cruz', 'MANCOM', ''),
(121, '172.16.12.142', 'Glacelyn Macaranas', 'MANCOM', ''),
(122, '172.16.12.144', 'Sylviah Toh', 'MANCOM', ''),
(123, '172.16.12.143', 'Junie Andres III', 'MANCOM', ''),
(124, '172.16.12.150', 'Aimee Baello', 'MANCOM', ''),
(125, '172.16.12.97', 'Elsa Chan', 'MANCOM', ''),
(126, '172.16.12.17', 'David Gacutan', 'MANCOM', ''),
(127, '172.16.12.98', 'Erwin Yabes', 'MANCOM', ''),
(128, '172 .16 .12 .246', 'Mancom FNA', 'ROUTER', ''),
(129, '172 .16 .12 .247', 'Mancom PARTS', 'ROUTER', ''),
(130, '172.16.12.245', 'MANCOM SALES', 'ROUTER', ''),
(131, '172.16.12.237', 'Customer/Guest WIFI', 'ROUTER', ''),
(132, '172.16.12.249', 'PFFC', 'ROUTER', ''),
(133, '172.16.12.248', 'ADMIN', 'ROUTER', ''),
(134, '172.16.12.243', 'Mancom SVC', 'ROUTER', ''),
(135, '172.16.12.239', 'SA 2', 'ROUTER', ''),
(136, '172.16.12.238', 'SA 1', 'ROUTER', ''),
(137, '172.16.12.250', 'MIS Network', 'ROUTER', ''),
(138, '172.16.12.241', 'Training room WIFI', 'ROUTER', ''),
(139, '172.16.12.242', 'Mancom SALES', 'ROUTER', ''),
(141, '172.16.12.240', 'SPARE WIFI', 'ROUTER', ''),
(142, '172.16.12.19', 'Service - SA 2', 'PRINTER', 'Brother 5100DN - Ink Rite'),
(143, '172.16.12.20', 'Service - Reception', 'PRINTER', 'Brother 5100DN - Ink Rite'),
(144, '172.16.12.21', 'Service - Billing', 'PRINTER', 'Brother 5100DN - Ink Rite'),
(145, '172.16.12.22', 'Purchasing', 'PRINTER', 'Brother T810W - Ink Rite'),
(146, '172.16.12.23', 'VSPA', 'PRINTER', 'Brother 5100DN - Ink Rite'),
(147, '172.16.12.24', 'Cashier', 'PRINTER', 'Canon IB4100 - Ink Rite'),
(148, '172.16.12.25', 'Parts', 'PRINTER', 'Brother 5100DN - Ink Rite'),
(149, '172.16.12.26', 'Accounting', 'PRINTER', 'EPSON FS2175 - Owned'),
(150, '172.16.12.27', 'Parts - Fab', 'PRINTER', 'EPSON LX-310 - Owned'),
(151, '172.16.12.28', 'CNC', 'PRINTER', 'Brother T810W - TonerKing'),
(152, '172.16.12.29', 'Service Admin', 'PRINTER', 'Brother 3930 - AffordaInk'),
(153, '172.16.12.30', 'Service Admin', 'PRINTER', 'EPSON L565 - J143'),
(154, '172.16.12.31', 'HR', 'PRINTER', 'EPSON L565 - J143'),
(155, '172.16.12.32', 'CRD', 'PRINTER', 'EPSON L565 - J143'),
(156, '172.16.12.33', 'Kaizen', 'PRINTER', 'Brother 3930 - AffordaInk'),
(157, '172.16.12.34', 'MKT- Printer 2', 'PRINTER', 'Brother T810W - Ink Rite'),
(158, '172.16.12.35', 'MKT- Printer 2', 'PRINTER', 'Brother T810W - Ink Rite'),
(159, '172.16.12.36', 'MIS-SPARE', 'PRINTER', 'Brother 5100DN - Ink Rite'),
(160, '172.16.12.37', '', 'PRINTER', ''),
(162, '172.16.12.39', 'PFFC', 'PRINTER', 'Owned'),
(163, '172.16.12.40', '', 'PRINTER', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `username`, `password`) VALUES
(1, 'tbkmis', '4f307bf991e42b1fe6371ace9b9a874b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_details`
--
ALTER TABLE `ip_details`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip_details`
--
ALTER TABLE `ip_details`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
