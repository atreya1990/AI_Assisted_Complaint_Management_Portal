-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 09:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

CREATE TABLE `abc` (
  `index` bigint(20) DEFAULT NULL,
  `complaintNumber` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `subcategory` text DEFAULT NULL,
  `complaintType` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `noc` text DEFAULT NULL,
  `complaintDetails` text DEFAULT NULL,
  `complaintFile` text DEFAULT NULL,
  `regDate` datetime DEFAULT NULL,
  `status` text DEFAULT NULL,
  `lastUpdationDate` datetime DEFAULT NULL,
  `score2` text DEFAULT NULL,
  `compound` double DEFAULT NULL,
  `comp_score` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '05-12-2020 02:58:32 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'water supply', '', '2020-12-04 22:42:05', NULL),
(4, 'electricity supply', '', '2020-12-04 22:42:17', NULL),
(5, 'road', '', '2020-12-04 22:42:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 25, 'in process', 'ok in process', '2020-12-05 05:12:45'),
(10, 28, 'closed', 'rosolved', '2020-12-05 05:13:16'),
(11, 27, 'in process', 'ok ', '2020-12-05 06:55:19'),
(12, 29, 'closed', 'dddd', '2020-12-05 10:12:50'),
(13, 25, 'closed', 'ok', '2020-12-10 04:50:26'),
(14, 38, 'in process', 'ok', '2020-12-10 06:03:49'),
(15, 38, 'closed', 'ok', '2020-12-10 06:04:46'),
(16, 30, 'in process', 'ok', '2021-03-12 08:48:26'),
(17, 31, 'in process', 'ok', '2021-03-12 10:22:08'),
(18, 31, 'closed', 'ok', '2021-03-12 10:22:27'),
(19, 32, 'in process', 'thank u', '2021-03-24 08:32:27'),
(20, 32, 'closed', 'solved', '2021-03-24 08:33:15'),
(21, 33, 'in process', 'thank you', '2021-03-24 08:34:08'),
(22, 33, 'closed', 'solved', '2021-03-24 08:35:07'),
(23, 34, 'in process', 'ok', '2021-03-24 08:37:01'),
(24, 34, 'closed', 'ok', '2021-03-24 08:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Uttar Pradesh', '', '2016-10-18 11:35:02', '0000-00-00 00:00:00'),
(4, 'Punjab', 'pbPB', '2016-10-18 11:35:58', '0000-00-00 00:00:00'),
(5, 'Haryana', 'Haryana', '2017-03-28 07:20:36', '0000-00-00 00:00:00'),
(6, 'Delhi', 'Delhi', '2017-06-11 10:54:12', '2019-06-24 07:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online Shopping', '2017-03-28 07:11:07', '0000-00-00 00:00:00'),
(2, 1, 'E-wllaet', '2017-03-28 07:11:20', '0000-00-00 00:00:00'),
(3, 2, 'other', '2019-06-24 07:06:44', '2019-06-24 07:21:38'),
(5, 3, 'contaminated water', '2020-12-04 22:44:00', NULL),
(6, 3, 'irregular water supply', '2020-12-04 22:44:35', NULL),
(7, 4, 'voltage problem', '2020-12-04 22:45:14', NULL),
(8, 4, 'load shedding', '2020-12-04 22:45:42', NULL),
(9, 5, 'potholes', '2020-12-04 22:46:02', NULL),
(10, 5, 'road blockages', '2020-12-04 22:47:12', NULL),
(11, 3, 'pipeline ', '2020-12-10 06:20:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(25, 1, 3, 'irregular water supply', 'General Query', 'Punjab', 'water supply', 'my water supply is irregular . and not coming since 5 days  ', '', '2020-12-04 22:51:13', 'closed', '2020-12-10 04:50:26'),
(27, 1, 4, 'voltage problem', 'General Query', 'Haryana', 'voltage fluctuation', 'eletronics not working properly because of irregular power supply', 'customer.csv', '2020-12-04 22:56:46', 'in process', '2020-12-05 06:55:19'),
(28, 2, 5, 'potholes', 'General Query', 'Delhi', 'bad roads', 'roads are in a very bad shape and they cause many accidents . many people have been injured', '', '2020-12-05 05:08:13', 'closed', '2020-12-05 05:13:16'),
(29, 1, 3, 'irregular water supply', 'General Query', 'Punjab', 'voltage fluctuation', 'I am calling to report a plumbing issue in my apartment. I am in 2A. My name is Gabriel Diaz. My phone number is 425-555-0122.\r\n', '', '2020-12-05 05:44:11', 'closed', '2020-12-05 10:12:50'),
(30, 1, 4, 'load shedding', 'General Query', 'Delhi', 'voltage fluctuation', 'I am calling to report a problem with our electricity. My name is Maya Robinson. And my phone number is 305-555-0122.\r\n', '', '2020-12-05 05:44:36', 'in process', '2021-03-12 08:48:26'),
(31, 1, 5, 'potholes', 'General Query', 'Punjab', 'bad roads', 'I am calling to report an issue with our washer. I am in apartment 5A. My phone number is 206-555-0122. I am Anthony Ivanov.\r\n', '', '2020-12-05 05:45:04', 'closed', '2021-03-12 10:22:27'),
(32, 1, 4, 'voltage problem', 'General Query', 'Punjab', 'voltage fluctuation', 'My name is Monica Thomson. I am in 1B. My garage door is not opening. Please call me at 360-555-0122.\r\n', '', '2020-12-05 05:45:33', 'closed', '2021-03-24 08:33:15'),
(33, 1, 4, 'load shedding', 'General Query', 'Uttar Pradesh', 'voltage fluctuation', 'My name is Avery Howard. I am in 2B. My heater is not working. Please call me at 604-555-0122.\r\n', '', '2020-12-05 05:45:59', 'closed', '2021-03-24 08:35:07'),
(34, 2, 5, 'potholes', 'General Query', 'Uttar Pradesh', 'water supply', 'My name is Avery Howard. I am in 2B. My heater is not working. Please call me at 604-555-0122.\r\n', '', '2020-12-05 06:18:41', 'closed', '2021-03-24 08:37:42'),
(35, 1, 5, 'potholes', 'General Query', 'Uttar Pradesh', 'water supply', 'My name is Avery Howard. I am in 2B. My heater is not working. Please call me at 604-555-0122.\r\n', '', '2020-12-05 06:19:23', NULL, NULL),
(36, 1, 4, 'voltage problem', 'General Query', 'Punjab', 'voltage fluctuation', 'electricity out for 5 days', '', '2020-12-05 06:56:43', NULL, NULL),
(37, 1, 3, 'contaminated water', ' Complaint', 'Haryana', 'water supply', 'water is very bad', '', '2020-12-10 05:30:12', NULL, NULL),
(38, 1, 4, 'voltage problem', ' Complaint', 'Delhi', 'voltage fluctuation', 'i have voltage problem', 'PPT FINAL PROJECT.pptx', '2020-12-10 06:02:51', 'closed', '2020-12-10 06:04:46'),
(39, 1, 4, 'voltage problem', ' Complaint', 'Delhi', 'voltage fluctuation', 'i have voltage problem', 'PPT FINAL PROJECT.pptx', '2020-12-10 06:20:25', NULL, NULL),
(40, 1, 3, 'irregular water supply', ' Complaint', 'Punjab', 'water supply', 'irrigulay water supply . i am facing a lot of problem', '', '2021-03-24 08:42:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 10:27:30', '24-06-2019 04:11:08 PM', 1),
(27, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-04 21:30:39', '05-12-2020 04:47:54 AM', 1),
(28, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-05 05:02:51', '05-12-2020 10:34:24 AM', 1),
(29, 2, 'trebuit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-05 05:05:52', '05-12-2020 11:47:57 AM', 1),
(30, 2, 'trebuit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-05 06:18:07', '05-12-2020 11:50:17 AM', 1),
(31, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-05 06:20:28', '', 1),
(32, 2, 'trebuit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-08 12:46:51', '08-12-2020 06:21:51 PM', 1),
(33, 2, 'trebuit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-10 04:45:56', '10-12-2020 10:16:02 AM', 1),
(34, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-10 04:46:08', '10-12-2020 10:18:57 AM', 1),
(35, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-10 04:49:05', '10-12-2020 10:19:25 AM', 1),
(36, 2, 'trebuit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-10 04:49:33', '10-12-2020 10:19:39 AM', 1),
(37, 2, 'trebuit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-10 04:49:51', '10-12-2020 10:19:55 AM', 1),
(38, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-10 04:50:00', '', 1),
(39, 0, 'admin', 0x3a3a3100000000000000000000000000, '2020-12-30 11:25:36', '', 0),
(40, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 11:25:42', '30-12-2020 04:55:53 PM', 1),
(41, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-30 11:26:37', '30-12-2020 04:57:47 PM', 1),
(42, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-02-26 10:56:50', '', 0),
(43, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-02-26 10:56:54', '', 0),
(44, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-26 10:56:56', '26-02-2021 04:27:35 PM', 1),
(45, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-03-12 08:30:58', '', 0),
(46, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-12 08:31:02', '12-03-2021 02:04:13 PM', 1),
(47, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-12 10:23:24', '', 1),
(48, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-24 08:13:10', '24-03-2021 01:44:29 PM', 1),
(49, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-24 08:40:50', '24-03-2021 02:13:57 PM', 1),
(50, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-03-26 20:07:25', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'pratik', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Shakarpur', 'Uttar Pradesh', 'India', 110092, '6e8024ec26c292f258ec30f01e0392dc.png', '2017-03-28 11:44:52', '2019-06-24 10:39:44', 1),
(2, 'atreya raorane', 'trebuit@gmail.com', 'd250e9bb552dc42f1ddba23cf4c2c4a5', 9004047922, 'flat no 401, hemprabha apt, sudarshan colony, thane east, thane 400603', 'Delhi', 'india', 400603, 'd15e3612defdc77d6381754be2b0e670.jpg', '2020-12-05 05:05:27', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abc`
--
ALTER TABLE `abc`
  ADD KEY `ix_abc_index` (`index`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
