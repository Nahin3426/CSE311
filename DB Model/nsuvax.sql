-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 08:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsuvax`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`, `name`, `email`) VALUES
(111, 'nsu1', 'Dr. Javed Bari', 'javed.bari@northsouth.edu'),
(222, 'nsu2', 'Dr. Rezaul Bari', 'rezaul.bari@northsouth.edu');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dno` int(5) NOT NULL,
  `dname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dno`, `dname`) VALUES
(8, 'Arch'),
(2, 'BBA'),
(4, 'CEE'),
(3, 'DMP'),
(1, 'ECE'),
(6, 'ECO'),
(5, 'ENG'),
(7, 'LAW'),
(0, 'No Department');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designationId` int(5) NOT NULL,
  `deName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designationId`, `deName`) VALUES
(2, 'Assistant Professor'),
(3, 'Lecturer'),
(0, 'No Designation'),
(4, 'Officer'),
(1, 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` bigint(10) NOT NULL,
  `dno` int(5) DEFAULT NULL,
  `vaxId` int(5) DEFAULT 0,
  `designationId` int(5) DEFAULT 0,
  `doseTaken` int(1) DEFAULT 0,
  `firstDose` date DEFAULT NULL,
  `secondDose` date DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `nsuMail` varchar(40) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `NID` varchar(16) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `birthRegNo` varchar(16) DEFAULT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `dno`, `vaxId`, `designationId`, `doseTaken`, `firstDose`, `secondDose`, `password`, `name`, `nsuMail`, `phone`, `city`, `NID`, `DOB`, `birthRegNo`, `gender`) VALUES
(1112767429, 1, 4, 3, 1, '2021-07-11', NULL, 'aghste123', 'Shafiul Alam', 'shafiul.alam@northsouth.edu', '01727463555', 'DHAKA', '13369251', '1975-04-08', NULL, 'M'),
(1583073355, 5, 4, 1, 1, '2021-06-09', NULL, 'e67rterw', 'Munira Khan', 'munira.khan@northsouth.edu', '01666251036', 'DHAKA', '18249243', '1989-05-09', NULL, 'F'),
(1852854758, 1, 1, 1, 2, '2021-06-03', '2021-07-31', 'xbcgsa', 'Mohammad Forhad Uddin', 'mohammad.forhad@northsouth.edu', '01727463535', 'DHAKA', '94479791', '1972-04-08', NULL, 'M'),
(1909782731, 6, 0, 4, 0, NULL, NULL, 'e99rtret', 'Golam Rabbani', 'golam.rabbani@northsouth.edu', '01778251035', 'DHAKA', '12077268', '1986-03-09', NULL, 'M'),
(1924768620, 3, 3, 3, 2, '2021-09-10', '2021-10-22', 'acasew55', 'Rizvin Kabir', 'rizvinkabir@northsouth.edu', '01733746252', 'DHAKA', '20330717', '1975-03-01', NULL, 'F'),
(2053181255, 2, 5, 4, 2, '2021-08-17', '2021-09-17', 'fgdfg43', 'Farisul Islam', 'farisul.islam@northsouth.edu', '01368846259', 'DHAKA', '20418928', '1988-04-09', NULL, 'M'),
(2353029203, 4, 2, 2, 1, '2021-06-11', NULL, 'fgdfg', 'Ziaul Haque', 'ziaul.haque@northsouth.edu', '01867746259', 'DHAKA', '77922633', '1989-04-09', NULL, 'M'),
(3740793446, 2, 2, 3, 2, '2021-07-13', '2021-09-22', 'acasew', 'Rezaul Karim', 'rezaul.karim@northsouth.edu', '01923746252', 'DHAKA', '79922644', '1977-03-01', NULL, 'M'),
(5990164093, 3, 3, 1, 2, '2021-08-08', '2021-09-23', 'erterw', 'Azreen Benazir', 'azreen.benazir@northsouth.edu', '01836251036', 'DHAKA', '41945528', '1980-05-09', NULL, 'F'),
(9893264910, 5, 0, 2, 0, NULL, NULL, 'ertret', 'Shafin Rahman', 'shafin.rahman@northsouth.edu', '01678251035', 'DHAKA', '12945556', '1987-03-09', NULL, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `nsuId` bigint(10) NOT NULL,
  `dno` int(5) DEFAULT NULL,
  `vaxId` int(5) DEFAULT 0,
  `doseTaken` int(1) DEFAULT 0,
  `firstDose` date DEFAULT NULL,
  `secondDose` date DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `nsuMail` varchar(40) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `NID` varchar(16) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `birthRegNo` varchar(16) DEFAULT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`nsuId`, `dno`, `vaxId`, `doseTaken`, `firstDose`, `secondDose`, `password`, `name`, `nsuMail`, `phone`, `city`, `NID`, `DOB`, `birthRegNo`, `gender`) VALUES
(1721427642, 1, 1, 1, '2021-07-23', NULL, 'abab23', 'Shah Alvi Hossain', 'alvi.hossain@northsouth.edu', '01726354242', 'DHAKA', '80563467', '1997-04-06', NULL, 'M'),
(1914455643, 4, 0, 0, NULL, NULL, 'sdsda43', 'Fahim Hasan', 'fahim.hasan@northsouth.edu', '01556454342', 'DHAKA', '21238879', '0199-05-05', '44210503', 'M'),
(2011264642, 6, 0, 0, NULL, NULL, 'joker32', 'Marium Begum', 'marium.begum@northsouth.edu', '01745656915', 'BARISHAL', '86234736', '2001-05-04', '78822385', 'F'),
(2012165642, 3, 3, 1, '2021-07-04', NULL, '@Aa21', 'Riad Shafwan Riad', 'shafwan01@northsouth.edu', '01780898121', 'SYLHET', '34523436', '2000-01-25', '72626634', 'M'),
(2013356642, 1, 0, 0, NULL, NULL, 'sdfsfjh45', 'Md. Nahin Islam', 'nahin.islam@northsouth.edu', '01645348962', 'DHAKA', '89927493', '2000-02-25', '17296892', 'M'),
(2013664642, 1, 1, 2, '2021-07-31', '2021-11-15', 'asif123', 'Ihsanul Haque Asif', 'ihsanul.asif@northsouth.edu', '01680898915', 'DHAKA', '96145789', '2001-06-09', '28427840', 'M'),
(2013994642, 4, 0, 0, NULL, NULL, '##alpha', 'Isha Khan', 'isha.esha@northsouth.edu', '01885890915', 'FENI', '89234736', '2000-07-01', '42786139', 'F'),
(2014534632, 2, 2, 2, '2021-09-05', '2021-10-05', 'jon123', 'Jon Doe', 'jon.doe@northsouth.edu', '01725367846', 'COMILLA', '014579352', '1999-01-21', NULL, 'M'),
(2023554652, 5, 2, 1, '2021-06-21', NULL, 'asesa32', 'Sadia Islam', 'sadia.islam@northsouth.edu', '01856747416', 'DHAKA', '73544523', '2002-02-25', '81322515', 'F'),
(2024521642, 4, 2, 1, '2021-09-21', NULL, 'play@1', 'Janntul Ferdaus', 'jannatul.ferdaus03@northsouth.edu', '01530898915', 'CUMILLA', '98745473', '2000-04-29', '16283457', 'F'),
(2033124642, 7, 1, 2, '2021-05-30', '2021-07-18', '@rrr123', 'Abrar Mahmud', 'abrar.mahmud02@northsouth.edu', '01965478123', 'KHULNA', '99734736', '2001-10-23', '60568282', 'M'),
(2033232642, 6, 0, 0, NULL, NULL, 'B007', 'Shanto Islam', 'shanto.islam03@northsouth.edu', '01698788915', 'DHAKA', '85234754', '2000-02-18', '68384763', 'M'),
(2112370642, 5, 2, 2, '2021-05-24', '2021-07-12', 'hasan121', 'S M Mahedi Hasan', 'mahedi.hasan06@northsouth.edu', '01621887399', 'DHAKA', '98645131', '2001-08-19', '30993819', 'M'),
(2113452642, 7, 1, 2, '2021-07-31', '2021-11-15', 'UseLess32', 'Zahid hasan', 'zahid.hasan08@northsouth.edu', '01985498915', 'CHOTTOGRAM', '34523736', '2000-07-07', '24088795', 'M'),
(2114954642, 2, 3, 1, '2021-08-04', NULL, '56rio', 'Nusrat Jahan Faria', 'nusrat.jahan06@northsouth.edu', '01965481237', 'BOGRA', '54523473', '2001-07-09', '12085370', 'F'),
(2123674642, 8, 3, 2, '2021-07-30', '2021-11-14', 'No212', 'Monira Islam', 'monira.islam04@northsouth.edu', '01798698915', 'DHAKA', '45234736', '2002-08-21', NULL, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `vax`
--

CREATE TABLE `vax` (
  `vaxId` int(5) NOT NULL,
  `vaxName` varchar(20) NOT NULL,
  `companyId` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vax`
--

INSERT INTO `vax` (`vaxId`, `vaxName`, `companyId`) VALUES
(0, 'Not Vaccinated', 0),
(1, 'Moderna', 1),
(2, 'Pfizer', 2),
(3, 'Sinopharm', 3),
(4, 'AstraZenec', 4),
(5, 'Covishield', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vaxcompany`
--

CREATE TABLE `vaxcompany` (
  `companyId` int(5) NOT NULL,
  `company` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vaxcompany`
--

INSERT INTO `vaxcompany` (`companyId`, `company`) VALUES
(2, 'BioNTech'),
(3, 'Johnson'),
(0, 'No Company'),
(1, 'Novavax'),
(4, 'Oxford');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dno`),
  ADD UNIQUE KEY `dno` (`dno`),
  ADD UNIQUE KEY `dname` (`dname`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designationId`),
  ADD UNIQUE KEY `dname` (`deName`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffId`),
  ADD UNIQUE KEY `nsuMail` (`nsuMail`),
  ADD UNIQUE KEY `NID` (`NID`),
  ADD UNIQUE KEY `birthRegNo` (`birthRegNo`),
  ADD KEY `dno` (`dno`),
  ADD KEY `vaxId` (`vaxId`),
  ADD KEY `designationId` (`designationId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`nsuId`),
  ADD UNIQUE KEY `nsuMail` (`nsuMail`),
  ADD UNIQUE KEY `NID` (`NID`),
  ADD UNIQUE KEY `birthRegNo` (`birthRegNo`),
  ADD KEY `dno` (`dno`),
  ADD KEY `vaxId` (`vaxId`);

--
-- Indexes for table `vax`
--
ALTER TABLE `vax`
  ADD PRIMARY KEY (`vaxId`),
  ADD UNIQUE KEY `vaxName` (`vaxName`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `vaxcompany`
--
ALTER TABLE `vaxcompany`
  ADD PRIMARY KEY (`companyId`),
  ADD UNIQUE KEY `company` (`company`),
  ADD UNIQUE KEY `companyId` (`companyId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designationId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vax`
--
ALTER TABLE `vax`
  MODIFY `vaxId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaxcompany`
--
ALTER TABLE `vaxcompany`
  MODIFY `companyId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`) ON DELETE SET NULL,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`vaxId`) REFERENCES `vax` (`vaxId`) ON DELETE SET NULL,
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`designationId`) REFERENCES `designation` (`designationId`) ON DELETE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`vaxId`) REFERENCES `vax` (`vaxId`) ON DELETE SET NULL;

--
-- Constraints for table `vax`
--
ALTER TABLE `vax`
  ADD CONSTRAINT `vax_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `vaxcompany` (`companyId`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
