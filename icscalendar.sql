-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 03:30 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icscalendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL,
  `faccatid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `faccatid`, `date`, `summary`) VALUES
(41, 1, '2017-03-25 00:00:00', 'event1calendar'),
(42, 1, '2017-03-26 00:00:00', 'event1calendar'),
(43, 1, '2017-03-27 00:00:00', 'event1calendar'),
(44, 1, '2017-04-01 00:00:00', 'event1calendar'),
(45, 2, '2017-03-25 00:00:00', 'event1calendar'),
(46, 2, '2017-03-26 00:00:00', 'event1calendar'),
(47, 2, '2017-03-27 00:00:00', 'event1calendar'),
(48, 2, '2017-04-01 00:00:00', 'event1calendar'),
(49, 3, '2017-03-25 00:00:00', 'event1calendar'),
(50, 3, '2017-03-26 00:00:00', 'event1calendar'),
(51, 3, '2017-03-27 00:00:00', 'event1calendar'),
(52, 3, '2017-04-01 00:00:00', 'event1calendar'),
(53, 4, '2017-03-25 00:00:00', 'event1calendar'),
(54, 4, '2017-03-26 00:00:00', 'event1calendar'),
(55, 4, '2017-03-27 00:00:00', 'event1calendar'),
(56, 4, '2017-04-01 00:00:00', 'event1calendar'),
(57, 5, '2017-03-25 00:00:00', 'event1calendar'),
(58, 5, '2017-03-26 00:00:00', 'event1calendar'),
(59, 5, '2017-03-27 00:00:00', 'event1calendar'),
(60, 5, '2017-04-01 00:00:00', 'event1calendar');

-- --------------------------------------------------------

--
-- Table structure for table `facilityandcategories`
--

CREATE TABLE IF NOT EXISTS `facilityandcategories` (
  `id` int(11) NOT NULL,
  `facilityname` text NOT NULL,
  `categoryname` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilityandcategories`
--

INSERT INTO `facilityandcategories` (`id`, `facilityname`, `categoryname`) VALUES
(1, 'facility1', 'category1'),
(2, 'facility1', 'category2'),
(3, 'facility1', 'category4'),
(4, 'facility1', 'category3'),
(5, 'facility1', 'category5'),
(6, 'facility1', 'category6'),
(7, 'facility1', 'category7'),
(8, 'facility2', 'category1'),
(9, 'facility2', 'category2'),
(10, 'facility2', 'category3'),
(11, 'facility2', 'category4'),
(12, 'facility2', 'category5'),
(13, 'facility2', 'category6'),
(14, 'facility2', 'category7');

-- --------------------------------------------------------

--
-- Table structure for table `icslinks`
--

CREATE TABLE IF NOT EXISTS `icslinks` (
  `id` int(11) NOT NULL,
  `faccatid` int(11) NOT NULL,
  `icsurl` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icslinks`
--

INSERT INTO `icslinks` (`id`, `faccatid`, `icsurl`) VALUES
(1, 1, 'https://calendar.google.com/calendar/ical/kd4ejnivuadv98rq121g670gr0%40group.calendar.google.com/private-c08a98f3cbb4e36bff1f14db78c894f3/basic.ics'),
(2, 2, 'https://calendar.google.com/calendar/ical/kd4ejnivuadv98rq121g670gr0%40group.calendar.google.com/private-c08a98f3cbb4e36bff1f14db78c894f3/basic.ics'),
(3, 3, 'https://calendar.google.com/calendar/ical/kd4ejnivuadv98rq121g670gr0%40group.calendar.google.com/private-c08a98f3cbb4e36bff1f14db78c894f3/basic.ics'),
(4, 4, 'https://calendar.google.com/calendar/ical/kd4ejnivuadv98rq121g670gr0%40group.calendar.google.com/private-c08a98f3cbb4e36bff1f14db78c894f3/basic.ics'),
(5, 5, 'https://calendar.google.com/calendar/ical/kd4ejnivuadv98rq121g670gr0%40group.calendar.google.com/private-c08a98f3cbb4e36bff1f14db78c894f3/basic.ics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilityandcategories`
--
ALTER TABLE `facilityandcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icslinks`
--
ALTER TABLE `icslinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `facilityandcategories`
--
ALTER TABLE `facilityandcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `icslinks`
--
ALTER TABLE `icslinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
