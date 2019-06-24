-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 01:36 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sw_assertive`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `accessId` int(11) NOT NULL,
  `accessAppId` int(11) DEFAULT NULL,
  `keyword` varchar(30) DEFAULT NULL,
  `definition` varchar(80) DEFAULT NULL,
  `val` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`accessId`, `accessAppId`, `keyword`, `definition`, `val`) VALUES
(1, 2, 'abc', 'abc definition', 0),
(2, 2, 'def', 'def definition', 0),
(3, 1, 'prm1', 'parameter one', 0),
(4, 1, 'prm2', 'parameter two', 0),
(5, 1, 'prm3', 'parameter three', 1),
(6, 1, 'prm4', 'parameter four', 1),
(7, 3, 'gbt1', 'parameter one', 0),
(8, 3, 'gbt2', 'parameter two', 0),
(9, 3, 'gbt3', 'parameter three', 1),
(10, 3, 'gbt4', 'parameter four', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `appId` int(11) NOT NULL,
  `appName` varchar(50) DEFAULT NULL,
  `url` text,
  `sessAryName` varchar(30) DEFAULT NULL,
  `remark` text,
  `disabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`appId`, `appName`, `url`, `sessAryName`, `remark`, `disabled`) VALUES
(1, 'Client Management System', 'http://aslsdfsdfk.com/asfsdf/sadfds', 'cms', 'lorem imsem dolor sit amet', 0),
(2, 'Product Management System', 'http://sdfsf/asdfs/df', 'PMS', 'Loriem imsfdasdfls saldfs dfsdlfi', 0),
(3, 'Global Business Tool', 'http://gbt.com/xxtp', 'gbt', 'lorem imsem dolor sit amet', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dgn`
--

CREATE TABLE `dgn` (
  `dgnId` int(11) NOT NULL,
  `dgnUserId` int(11) DEFAULT NULL,
  `fromTime` int(11) DEFAULT NULL,
  `toTime` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dgn`
--

INSERT INTO `dgn` (`dgnId`, `dgnUserId`, `fromTime`, `toTime`, `title`) VALUES
(1, 2, 45643643, 43446545, 'trdrertw'),
(2, 2, 3453254, 345345, 'dfgsgfdfg'),
(3, 1, 5653453, 345345, 'engineer'),
(6, 15, 45643643, 43446545, 'trdrertw'),
(7, 15, 3453254, 345345, 'dfgsgfdfg');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `emailId` int(11) NOT NULL,
  `emailUserId` int(11) DEFAULT NULL,
  `emailType` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`emailId`, `emailUserId`, `emailType`, `email`) VALUES
(1, 2, 'h', 'haha@hjdsj'),
(2, 2, 'yd', 'gjfgd@kjhkjf'),
(3, 1, 'Personal', 'als;kfjsd@sdfasd'),
(6, 15, 'h', 'haha@hjdsj'),
(7, 15, 'yd', 'gjfgd@kjhkjf');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `levelId` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`levelId`, `title`, `description`) VALUES
(1, 'developer', 'developer can do anything with super access to all over the system.'),
(2, 'Admin', 'Admin power');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permissionId` int(11) NOT NULL,
  `permissionLevelId` int(11) DEFAULT NULL,
  `permissionAppId` int(11) DEFAULT NULL,
  `access` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permissionId`, `permissionLevelId`, `permissionAppId`, `access`) VALUES
(1, 1, 1, '[{\"keyword\":\"prm4\",\"val\":0}]'),
(2, 1, 2, '[]'),
(3, 2, 1, '[{\"keyword\":\"permission1\",\"val\":1},{\"keyword\":\"permission2\",\"val\":1}]'),
(4, 2, 2, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phoneId` int(11) NOT NULL,
  `phoneUserId` int(11) DEFAULT NULL,
  `phoneType` varchar(20) DEFAULT NULL,
  `number` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phoneId`, `phoneUserId`, `phoneType`, `number`) VALUES
(1, 2, 'h', '0987654321'),
(2, 2, 'p', '34560345678'),
(3, 1, 'uu', '12345678'),
(4, 1, 'p', '45689034567'),
(10, 15, 'h', '0987654321'),
(11, 15, 'p', '34560345678');

-- --------------------------------------------------------

--
-- Table structure for table `prime`
--

CREATE TABLE `prime` (
  `primeId` int(11) NOT NULL,
  `keyword` varchar(30) DEFAULT NULL,
  `definition` varchar(100) DEFAULT NULL,
  `val` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prime`
--

INSERT INTO `prime` (`primeId`, `keyword`, `definition`, `val`) VALUES
(1, 'manageUser', 'Manage User', 0),
(2, 'manageApp', 'Manage App', 0),
(3, 'manageUserLevel', 'Manage User Level', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `bloodGroup` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `joinTime` int(11) DEFAULT NULL,
  `userLevelId` int(11) NOT NULL,
  `blocked` tinyint(1) NOT NULL,
  `primeAccessMod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `name`, `dob`, `username`, `password`, `gender`, `religion`, `bloodGroup`, `address`, `joinTime`, `userLevelId`, `blocked`, `primeAccessMod`) VALUES
(1, 'Developer', 56786456, 'developer', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', 6568765, 1, 0, '[{\"keyword\":\"manageUser\",\"val\":1},{\"keyword\":\"manageApp\",\"val\":1},{\"keyword\":\"manageUserLevel\",\"val\":1}]'),
(2, 'Admin', 76898786, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', 5454343, 2, 0, '[{\"keyword\":\"manageUser\",\"val\":1},{\"keyword\":\"manageApp\",\"val\":1},{\"keyword\":\"manageUserLevel\",\"val\":1}]'),
(15, 'Aman Ullah', 76898786, 'aman', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', 5454343, 2, 0, '0'),
(16, 'Yousuf Rana', 456789, 'yousuf', '1234', 'Male', 'Islam', 'B+', 'als;dkfjsadf/asdf/sdf/', 56789, 2, 0, '[]'),
(17, 'Ahosan Ullah', 0, 'ahosan', '1234', 'Male', 'Islam', 'B+', 'lskdjflksdjf', 5678, 2, 0, '[]'),
(18, 'Sifat Ullah', 456789, 'sifat', '1234', 'Male', 'Islam', 'B+', 'slakdjfsd', 6543345, 2, 0, '[]'),
(19, 'Atikur Rahman', 67890, 'atik', '1234', 'Male', 'Islam', 'A+', 'asdkfjsdkjf', 5678987, 2, 0, '[]'),
(20, 'Tasnim Sarwar Rad', 456789, 'rad', '1234', 'Male', 'Islam', 'B+', 'asdfsfs', 434332, 2, 0, '[]'),
(21, 'Mansur Ahmed', 56789876, 'mansur', '1234', 'Male', 'Islam', 'A+', 'sdfsadf', 5678987, 2, 0, '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`accessId`),
  ADD KEY `app_id` (`accessAppId`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`appId`);

--
-- Indexes for table `dgn`
--
ALTER TABLE `dgn`
  ADD PRIMARY KEY (`dgnId`),
  ADD KEY `dgn_user_id` (`dgnUserId`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`emailId`),
  ADD KEY `user_id` (`emailUserId`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`levelId`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permissionId`),
  ADD KEY `level_id` (`permissionLevelId`),
  ADD KEY `app_id` (`permissionAppId`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phoneId`),
  ADD KEY `user_id` (`phoneUserId`);

--
-- Indexes for table `prime`
--
ALTER TABLE `prime`
  ADD PRIMARY KEY (`primeId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `level_id` (`userLevelId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `accessId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `appId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dgn`
--
ALTER TABLE `dgn`
  MODIFY `dgnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `emailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `levelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permissionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phoneId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prime`
--
ALTER TABLE `prime`
  MODIFY `primeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`accessAppId`) REFERENCES `app` (`appId`);

--
-- Constraints for table `dgn`
--
ALTER TABLE `dgn`
  ADD CONSTRAINT `dgn_ibfk_1` FOREIGN KEY (`dgnUserId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`emailUserId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`permissionLevelId`) REFERENCES `level` (`levelId`),
  ADD CONSTRAINT `permission_ibfk_2` FOREIGN KEY (`permissionAppId`) REFERENCES `app` (`appId`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`phoneUserId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userLevelId`) REFERENCES `level` (`levelId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
