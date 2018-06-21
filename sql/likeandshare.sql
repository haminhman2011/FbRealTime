-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 09:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `likeandshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `actionlogs`
--

CREATE TABLE `actionlogs` (
  `ActionLogId` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL,
  `ItemTypeId` int(11) NOT NULL,
  `ActionTypeId` int(11) NOT NULL,
  `Comment` text COLLATE utf8_unicode_ci,
  `CrUserId` int(11) DEFAULT NULL,
  `CrDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facebooks`
--

CREATE TABLE `facebooks` (
  `FbId` int(11) NOT NULL,
  `UserFb` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `PassFb` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Avatar` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Token` text COLLATE utf8_unicode_ci,
  `Cookie` text COLLATE utf8_unicode_ci,
  `Uid` int(20) NOT NULL,
  `BeginDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `PackageServiceId` int(11) NOT NULL,
  `CrUserId` int(11) DEFAULT NULL,
  `CrDateTime` datetime DEFAULT NULL,
  `UpdateUserId` int(11) DEFAULT NULL,
  `UpdateDateTime` datetime DEFAULT NULL,
  `StatusId` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packageservices`
--

CREATE TABLE `packageservices` (
  `PackageServiceId` int(11) NOT NULL,
  `PackageServiceName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `StatusId` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleId` int(11) NOT NULL,
  `RoleName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `StatusId` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `FullName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `GenderId` tinyint(4) DEFAULT NULL,
  `Phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BirthDay` datetime DEFAULT NULL,
  `Password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Avatar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `StatusId` tinyint(4) NOT NULL,
  `CrUserId` int(11) DEFAULT NULL,
  `CrDateTime` datetime DEFAULT NULL,
  `UpdateUserId` int(11) DEFAULT NULL,
  `UpdateDateTime` datetime DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actionlogs`
--
ALTER TABLE `actionlogs`
  ADD PRIMARY KEY (`ActionLogId`);

--
-- Indexes for table `facebooks`
--
ALTER TABLE `facebooks`
  ADD PRIMARY KEY (`FbId`);

--
-- Indexes for table `packageservices`
--
ALTER TABLE `packageservices`
  ADD PRIMARY KEY (`PackageServiceId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actionlogs`
--
ALTER TABLE `actionlogs`
  MODIFY `ActionLogId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facebooks`
--
ALTER TABLE `facebooks`
  MODIFY `FbId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packageservices`
--
ALTER TABLE `packageservices`
  MODIFY `PackageServiceId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
