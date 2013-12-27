-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2013 at 11:38 PM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `whynotv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `UserHistory`
--

CREATE TABLE `UserHistory` (
  `User` varchar(255) NOT NULL,
  `Event` varchar(255) NOT NULL,
  `Choice` int(2) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `User` varchar(255) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserTags`
--

CREATE TABLE `UserTags` (
  `User` varchar(255) NOT NULL,
  `Tag` varchar(255) NOT NULL,
  `Weight` int(7) NOT NULL,
  UNIQUE KEY `User` (`User`,`Tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
