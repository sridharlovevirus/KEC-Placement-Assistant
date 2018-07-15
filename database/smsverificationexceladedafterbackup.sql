-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 08:31 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kongu`
--

-- --------------------------------------------------------

--
-- Table structure for table `be`
--

CREATE TABLE `be` (
  `rollno` varchar(8) NOT NULL,
  `madmin` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `fgen` varchar(4) NOT NULL,
  `sem1` int(3) NOT NULL,
  `sem2` int(3) NOT NULL,
  `sem3` int(3) NOT NULL,
  `sem4` int(3) NOT NULL,
  `sem5` int(3) NOT NULL,
  `sem6` int(3) NOT NULL,
  `sem7` int(3) NOT NULL,
  `sem8` int(3) NOT NULL,
  `cp` int(3) NOT NULL,
  `ha` int(3) NOT NULL,
  `sa` int(3) NOT NULL,
  `ca` int(3) NOT NULL,
  `cs` varchar(10) NOT NULL,
  `ce` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be`
--

INSERT INTO `be` (`rollno`, `madmin`, `co`, `fgen`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `sem7`, `sem8`, `cp`, `ha`, `sa`, `ca`, `cs`, `ce`) VALUES
('15cse121', 'counselling', 'placement', 'no', 80, 70, 60, 70, 80, 90, 80, 85, 83, 0, 0, 0, '2013', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `bsc`
--

CREATE TABLE `bsc` (
  `rollno` varchar(8) NOT NULL,
  `madmin` varchar(15) NOT NULL,
  `coption` varchar(20) NOT NULL,
  `fgen` varchar(4) NOT NULL,
  `sem1` int(3) NOT NULL,
  `sem2` int(3) NOT NULL,
  `sem3` int(3) NOT NULL,
  `sem4` int(3) NOT NULL,
  `sem5` int(3) NOT NULL,
  `sem6` int(3) NOT NULL,
  `cp` int(3) NOT NULL,
  `ha` int(3) NOT NULL,
  `sa` int(3) NOT NULL,
  `ca` int(3) NOT NULL,
  `cs` varchar(10) NOT NULL,
  `ce` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bsc`
--

INSERT INTO `bsc` (`rollno`, `madmin`, `coption`, `fgen`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `cp`, `ha`, `sa`, `ca`, `cs`, `ce`) VALUES
('15bsc001', 'counselling', 'placement', 'yes', 80, 70, 80, 70, 60, 50, 68, 0, 0, 0, '2014', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cno` int(50) NOT NULL,
  `cname` varchar(25) NOT NULL,
  `address` varchar(70) NOT NULL,
  `mailid` varchar(45) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cno`, `cname`, `address`, `mailid`, `contact`) VALUES
(1, 'cts', '15th park.', 'write@cts.com', '9842457454'),
(2, 'infosys', '12,maha tech park.', 'write@infog.com', '7356412345'),
(3, 'accenture', 'omr road,chennai.', 'mail@accet.com', '8098490903'),
(5, 'tcs', '2,tech park.', 'mail@tcs.com', '7373738909'),
(6, 'wipro', '3rd floor,Tech park.', 'write@wipro.com', '7373853031'),
(7, 'zoho', '15,crosscut road,chennai-11.', 'interview@zoho.com', '9865409325');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventname` varchar(60) NOT NULL,
  `eventtype` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `noofdays` int(2) NOT NULL,
  `edesc` text NOT NULL,
  `id` int(5) NOT NULL,
  `departments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventname`, `eventtype`, `date`, `noofdays`, `edesc`, `id`, `departments`) VALUES
('cts interview', 'Placement Regardsplacement', '2017-10-21', 1, 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 37, 'IT,computer application');

-- --------------------------------------------------------

--
-- Table structure for table `forumadd`
--

CREATE TABLE `forumadd` (
  `Sno` int(5) NOT NULL,
  `Topic` varchar(250) NOT NULL,
  `Rollno` varchar(12) NOT NULL,
  `Idea` varchar(20) NOT NULL,
  `Details` mediumtext NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumadd`
--

INSERT INTO `forumadd` (`Sno`, `Topic`, `Rollno`, `Idea`, `Details`, `Date`) VALUES
(1, 'HR', '15mcl116', 'infosys', 'situation questions are preferably best to prepare', '2017-01-24'),
(2, 'technical interview', '15mcl090', 'tcs', 'apps- number series, lcm,hcf', '2017-01-24'),
(15, 'technical interview', '15adm001', 'zoho', 'good company', '2017-10-14'),
(19, 'written', '15adm001', 'Aurum tech', 'nice company', '2017-10-16'),
(20, 'group discussion', '15mcl109', 'accenture', 'good better work exp', '2017-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(10) NOT NULL,
  `pa` varchar(20) NOT NULL,
  `name` varchar(28) NOT NULL,
  `department` varchar(20) NOT NULL,
  `mailid` varchar(30) NOT NULL,
  `role` varchar(15) NOT NULL,
  `additionalrole` varchar(20) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `dp` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `almail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pa`, `name`, `department`, `mailid`, `role`, `additionalrole`, `mobileno`, `dp`, `status`, `almail`) VALUES
('15adm001', 'admin', 'Admin', 'office', 'admin@kongu.edu', 'admin', 'null', '9842454784', 'profile/15adm001.png', '1', 'sridharlovevirus@gmail.com'),
('15bsc001', '15bsc001', 'bhavana', 'bsc', '15bsc001@kongu.edu', 'student', 'null', '7789543210', 'user.jpg', '0', ''),
('15cse121', '15cse121', 'geetha', 'cse', '15cse121@kongu.edu', 'student', 'null', '8989543210', 'user.jpg', '0', ''),
('15hod115', '15hod115', 'keerthi', 'CSE', '15hod115@kongu.edu', 'hod', '', '9005054754', 'profile/15hod115.jpeg', '0', ''),
('15hod118', '15hod118', 'kowsika', 'IT', '15hod118@kongu.edu', 'hod', '', '9876543210', 'user.jpg', '0', ''),
('15hod119', '15hod119', 'ramya', 'computer application', '15hod119@kongu.edu', 'hod', 'null', '7005054754', 'profile/15hod119.png', '1', ''),
('15mbl001', '15mbl001', 'raja', 'mba', '15mbl001@kongu.edu', 'student', 'null', '8989543210', 'user.jpg', '0', ''),
('15mcl090', '123', 'raja', 'computer application', '15mcl090@kongu.edu', 'student', 'null', '9042578767', 'user.jpg', '0', 'tamilhari@gmail.com'),
('15mcl109', '15mcl109', 'mani', 'computer application', '15mcl109@kongu.edu', 'student', 'null', '9865327412', 'user.jpg', '0', ''),
('15mcl119', '15mcl119', 'tamilselvi', 'computer application', '15mcl119@kongu.edu', 'student', 'null', '7576543210', 'profile/15mcl119.png', '0', ''),
('15mcl120', '15mcl120', 'tamil', 'computer application', '15mcl120@kongu.edu', 'student', 'null', '9876543210', 'profile/15mcl120.jpeg', '0', ''),
('15mcl136', '15mcl136', 'vishnu', 'computer application', '15mcl136@kongu.edu', 'student', 'null', '9587454212', 'user.jpg', '0', ''),
('15msc001', '15msc001', 'ramya', 'msc', '15msc116@kongu.edu', 'student', 'null', '8500554744', 'user.jpg', '0', ''),
('15stf001', '15stf001', 'uma', 'computer application', '15stf001@kongu.edu', 'staff', 'placement', '9542100012', 'profile/15stf001.jpeg', '0', 'ram123@gmail.com'),
('15stf002', '15stf002', 'hari', 'bsc', '15stf002@kongu.edu', 'staff', 'placement', '9876543215', 'user.jpg', '0', ''),
('15stf003', '15stf003', 'rahu', 'mba', '15stf003@kongu.edu', 'staff', 'placement', '9600188452', 'user.jpg', '0', ''),
('15stf004', '15stf004', 'pyingkodi', 'msc', '15stf004@kongu.edu', 'staff', 'placement', '9875545242', 'user.jpg', '0', ''),
('15stf008', '15stf008', 'tamilselvi', 'cse', '15stf008@kongu.edu', 'staff', 'placement', '9876543252', 'user.jpg', '0', ''),
('15stf009', '15stf009', 'manivel', 'it', '15stf009@kongu.edu', 'staff', 'placement', '9876545252', 'user.jpg', '0', ''),
('15stf020', '15stf020', 'harisankar', 'computer application', '15stf020@kongu.edu', 'staff', 'null', '9876541230', 'user.jpg', '0', ''),
('15stf023', '15stf023', 'kavithabharathi', 'computer application', '15stf023@kongu.edu', 'staff', 'null', '9876543213', 'user.jpg', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `sender` varchar(40) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `r` varchar(45) NOT NULL,
  `msg` text NOT NULL,
  `a` varchar(50) NOT NULL,
  `t` varchar(25) NOT NULL,
  `id` int(10) NOT NULL,
  `mailread` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('15mcl090', 'Request For Change Personal Details', '15stf001@kongu.edu', 'Reason for change data is:my address changed', 'http://localhost/admin/requestedit.php?request=1', '17/10/17 08:05:18pm', 85183, 1),
('15stf001', 'Accept for Editing Personal Information', '15mcl090', 'Your Request Was Successfully processed', '', '17/10/17 08:05:39pm', 96563, 0),
('15stf001', 'Dney For Change Personal Details', '15mcl090', 'give full details', '', '17/10/17 08:11:04pm', 0, 0),
('15stf001', 'Dney For Change Personal Details', '15mcl090', 'give full details', '', '17/10/17 08:12:07pm', 18581, 0),
('15stf001', 'hii', '15stf001@kongu.edu', 'hiii                     \r\n                    ', 'uploads/76051-e.xlsx', '17/10/17 11:53:02pm', 5433, 1),
('15hod119', 'final read mail function check', '15mcl020@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 55878, 0),
('15hod119', 'final read mail function check', '15mcl119@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 62116, 0),
('15hod119', 'final read mail function check', '15mcl120@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 44749, 0),
('15hod119', 'final read mail function check', '15mcl136@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 34754, 0),
('15hod119', 'final read mail function check', '15stf001@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 68914, 1),
('15hod119', 'final read mail function check', '15stf020@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 83990, 0),
('15hod119', 'final read mail function check', '15stf023@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 94616, 0),
('15hod119', 'mail sent check', '15stf001@kongu.edu', 'pass                     \r\n                    ', 'uploads/8586-', '18/10/17 12:50:47am', 8829, 0),
('15mcl090', 'null attanchment test', '15hod119@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 65577, 1),
('15mcl090', 'null attanchment test', '15mcl020@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 45090, 0),
('15mcl090', 'null attanchment test', '15mcl119@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 31549, 0),
('15mcl090', 'null attanchment test', '15mcl120@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 66884, 0),
('15mcl090', 'null attanchment test', '15mcl136@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 13218, 0),
('15mcl090', 'null attanchment test', '15stf001@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 51651, 0),
('15mcl090', 'null attanchment test', '15stf020@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 99434, 0),
('15mcl090', 'null attanchment test', '15stf023@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 24422, 0),
('15hod119', 'again attanchment test', '15mcl020@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 79318, 0),
('15hod119', 'again attanchment test', '15mcl119@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 12760, 0),
('15hod119', 'again attanchment test', '15mcl120@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 22749, 0),
('15hod119', 'again attanchment test', '15mcl136@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 58304, 0),
('15hod119', 'again attanchment test', '15stf001@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 96088, 0),
('15hod119', 'again attanchment test', '15stf020@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 90093, 0),
('15hod119', 'again attanchment test', '15stf023@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 42645, 0),
('15hod119', 'again repeat for bug fix ', '15mcl020@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 64569, 0),
('15hod119', 'again repeat for bug fix ', '15mcl119@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 26289, 0),
('15hod119', 'again repeat for bug fix ', '15mcl120@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 37795, 0),
('15hod119', 'again repeat for bug fix ', '15mcl136@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 92356, 0),
('15hod119', 'again repeat for bug fix ', '15stf001@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 30582, 0),
('15hod119', 'again repeat for bug fix ', '15stf020@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 96503, 0),
('15hod119', 'again repeat for bug fix ', '15stf023@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 46705, 0),
('15hod119', 'again repeat for bug fix ', '15mcl020@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 34639, 0),
('15hod119', 'again repeat for bug fix ', '15mcl119@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 11862, 0),
('15hod119', 'again repeat for bug fix ', '15mcl120@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 80946, 0),
('15hod119', 'again repeat for bug fix ', '15mcl136@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 16031, 0),
('15hod119', 'again repeat for bug fix ', '15stf001@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 88214, 0),
('15hod119', 'again repeat for bug fix ', '15stf020@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 34746, 0),
('15hod119', 'again repeat for bug fix ', '15stf023@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 83484, 0),
('KEC Placement', 'Placement Regardsplacement', '15bsc001@kongu.edu', 'Event Start At Date:<b>2017-10-16</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 2.<br><br>sfsdf', 'uploads/55461-main.css', '01:01:01am', 93996, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf002@kongu.edu', 'Event Start At Date:<b>2017-10-16</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 2.<br><br>sfsdf', 'uploads/55461-main.css', '01:01:01am', 52756, 0),
('KEC Placement', 'Placement Regardsplacement', '15hod020@kongu.edu', 'Event Start At Date:<b>2017-10-16</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 2.<br><br>sfsdf', 'uploads/55461-main.css', '01:01:01am', 61678, 0),
('KEC Placement', 'Placement Regardsplacement', '15hod118@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 85549, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf009@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 57004, 0),
('KEC Placement', 'Placement Regardsplacement', '15hod119@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 16381, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl020@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 87163, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl090@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 17656, 1),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 15416, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl120@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 76345, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl136@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 66257, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf001@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 98562, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf020@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 68443, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf023@kongu.edu', 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 'uploads/84411-PAPER ID.docx', '06:33:05pm', 84103, 0),
('15mcl109', 'Request For Change Personal Details', '15stf001@kongu.edu', 'Reason for change data is:my address changed', 'http://localhost/admin/requestedit.php?request=1', '21/10/17 06:14:10am', 99997, 1),
('15mcl109', 'Request For Change Personal Details', '15stf001@kongu.edu', 'Reason for change data is:my addresschanged', 'http://localhost/admin/requestedit.php?request=1', '21/10/17 09:50:07am', 97279, 1),
('KEC Placement', 'Placement Regardsplacement', '15hod119@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:20pm', 55227, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl090@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 76877, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 74210, 1),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 48833, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl120@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 64678, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl136@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 45920, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf001@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 61005, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf020@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 81678, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf023@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 28122, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl090@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>not null', 'uploads/91335-klogo.jpg', '08:16:47pm', 24362, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>not null', 'uploads/91335-klogo.jpg', '08:16:47pm', 48724, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>not null', 'uploads/91335-klogo.jpg', '08:16:47pm', 19517, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 23415, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl090@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 63587, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl109@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 18722, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 65947, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 23187, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 22083, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15stf001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 78130, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 80259, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 77647, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 73114, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl090@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 90489, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl109@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 32939, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 80891, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 56263, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 81494, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15stf001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 58015, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 64170, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 83683, 0),
('15adm001', 'sent placement student list', '15stf001@kongu.edu', 'Plz fill and sent students list via excel file                     \r\n                    ', 'uploads/3595-e.xlsx', '03/11/17 10:55:02am', 7185, 1);

-- --------------------------------------------------------

--
-- Table structure for table `markupdate`
--

CREATE TABLE `markupdate` (
  `rollno` varchar(15) NOT NULL,
  `department` varchar(20) NOT NULL,
  `mark` int(3) NOT NULL,
  `cp` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markupdate`
--

INSERT INTO `markupdate` (`rollno`, `department`, `mark`, `cp`) VALUES
('15mcl090', 'computer application', 90, 90),
('15mcl109', 'computer application', 80, 75);

-- --------------------------------------------------------

--
-- Table structure for table `mba`
--

CREATE TABLE `mba` (
  `rollno` varchar(8) NOT NULL,
  `eexam` varchar(20) NOT NULL,
  `madmin` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `fgen` varchar(4) NOT NULL,
  `ugcollege` varchar(40) NOT NULL,
  `ugper` int(3) NOT NULL,
  `ugspec` varchar(40) NOT NULL,
  `sem1` int(3) NOT NULL,
  `sem2` int(3) NOT NULL,
  `sem3` int(3) NOT NULL,
  `sem4` int(3) NOT NULL,
  `cp` int(3) NOT NULL,
  `ha` int(3) NOT NULL,
  `sa` int(3) NOT NULL,
  `ca` int(3) NOT NULL,
  `cs` varchar(11) NOT NULL,
  `ce` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba`
--

INSERT INTO `mba` (`rollno`, `eexam`, `madmin`, `co`, `fgen`, `ugcollege`, `ugper`, `ugspec`, `sem1`, `sem2`, `sem3`, `sem4`, `cp`, `ha`, `sa`, `ca`, `cs`, `ce`) VALUES
('15mbl001', 'tancet', 'counselling', 'placement', 'no', 'gobi arts and science college', 76, 'tax management', 60, 65, 60, 55, 60, 0, 0, 0, '2016', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `mca`
--

CREATE TABLE `mca` (
  `rollno` varchar(8) NOT NULL,
  `eexam` varchar(20) NOT NULL,
  `madmin` varchar(20) NOT NULL,
  `co` varchar(20) NOT NULL,
  `fgen` varchar(4) NOT NULL,
  `ugcollege` varchar(40) NOT NULL,
  `ugper` int(3) NOT NULL,
  `ugspec` varchar(40) NOT NULL,
  `sem1` int(3) NOT NULL,
  `sem2` int(3) NOT NULL,
  `sem3` int(3) NOT NULL,
  `sem4` int(3) NOT NULL,
  `sem5` int(3) NOT NULL,
  `sem6` int(3) NOT NULL,
  `cp` int(3) NOT NULL,
  `ha` int(3) NOT NULL,
  `sa` int(3) NOT NULL,
  `ca` int(3) NOT NULL,
  `cs` varchar(10) NOT NULL,
  `ce` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca`
--

INSERT INTO `mca` (`rollno`, `eexam`, `madmin`, `co`, `fgen`, `ugcollege`, `ugper`, `ugspec`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `cp`, `ha`, `sa`, `ca`, `cs`, `ce`) VALUES
('15mcl090', 'TANCET', 'Counselling', 'higher education', 'yes', 'gobiarts', 70, 'computer science', 70, 80, 90, 80, 70, 90, 90, 0, 0, 0, '2016', '2017'),
('15mcl109', 'TANCET', 'Counselling', 'placed', 'yes', 'gobiartscollege', 75, 'computerscience', 70, 70, 80, 70, 70, 70, 75, 0, 0, 0, '2016', '2017'),
('15mcl119', 'TANCET', 'Counselling', 'Placement', 'yes', 'gobiartscollege', 80, 'computerscience', 80, 80, 80, 80, 80, 80, 80, 0, 0, 0, '2016', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `msc`
--

CREATE TABLE `msc` (
  `rollno` varchar(8) NOT NULL,
  `coption` varchar(20) NOT NULL,
  `fgen` varchar(4) NOT NULL,
  `sem1` int(3) NOT NULL,
  `sem2` int(3) NOT NULL,
  `sem3` int(3) NOT NULL,
  `sem4` int(3) NOT NULL,
  `sem5` int(3) NOT NULL,
  `sem6` int(3) NOT NULL,
  `sem7` int(3) NOT NULL,
  `sem8` int(3) NOT NULL,
  `sem9` int(3) NOT NULL,
  `sem10` int(3) NOT NULL,
  `cp` int(3) NOT NULL,
  `ha` int(3) NOT NULL,
  `sa` int(11) NOT NULL,
  `ca` int(11) NOT NULL,
  `cs` varchar(9) NOT NULL,
  `ce` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msc`
--

INSERT INTO `msc` (`rollno`, `coption`, `fgen`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `sem7`, `sem8`, `sem9`, `sem10`, `cp`, `ha`, `sa`, `ca`, `cs`, `ce`) VALUES
('15msc001', 'placement', 'yes', 70, 80, 70, 80, 70, 80, 70, 80, 70, 80, 75, 0, 0, 0, '2013', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `rollno` varchar(9) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `att` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`rollno`, `msg`, `att`) VALUES
('15mcl118', 'hi', 'c:'),
('15mcl118', 'hw ru', 'd:');

-- --------------------------------------------------------

--
-- Table structure for table `placedstudent`
--

CREATE TABLE `placedstudent` (
  `name` varchar(45) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `company` varchar(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placedstudent`
--

INSERT INTO `placedstudent` (`name`, `rollno`, `company`, `date`, `department`) VALUES
('mani', '15mcl109', 'aurum tech', '22-06-2016', 'computer application');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `rollno` varchar(10) NOT NULL,
  `reason` text NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`rollno`, `reason`, `time`) VALUES
('15mcl090', 'address changed', '17/10/17 08:10:27pm'),
('15mcl109', 'my addresschanged', '21/10/17 09:50:07am');

-- --------------------------------------------------------

--
-- Table structure for table `sem`
--

CREATE TABLE `sem` (
  `dept` varchar(30) NOT NULL,
  `sem` int(2) NOT NULL,
  `d` date NOT NULL,
  `e` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffexcel`
--

CREATE TABLE `staffexcel` (
  `filename` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffexcel`
--

INSERT INTO `staffexcel` (`filename`, `id`) VALUES
('test/68756.xlsx', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `fname` varchar(35) NOT NULL,
  `lname` varchar(35) NOT NULL,
  `fathername` varchar(35) NOT NULL,
  `occupation` varchar(35) NOT NULL,
  `dob` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `rollno` varchar(10) NOT NULL,
  `firstname` varchar(35) NOT NULL,
  `lastname` varchar(35) NOT NULL,
  `fathername` varchar(35) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `mobileno` varchar(13) NOT NULL,
  `email` varchar(45) NOT NULL,
  `streetname` varchar(35) NOT NULL,
  `villagename` varchar(35) NOT NULL,
  `cityname` varchar(35) NOT NULL,
  `statename` varchar(35) NOT NULL,
  `pincode` int(9) NOT NULL,
  `language` varchar(40) NOT NULL,
  `caste` varchar(8) NOT NULL,
  `comefrom` varchar(20) NOT NULL,
  `skills` text NOT NULL,
  `educationcap` varchar(7) NOT NULL,
  `capreason` text NOT NULL,
  `physicalena` varchar(7) NOT NULL,
  `physicalreason` text NOT NULL,
  `sslcregno` int(15) NOT NULL,
  `sslcschoolname` varchar(40) NOT NULL,
  `sslccerificateno` int(20) NOT NULL,
  `sslcboard` varchar(20) NOT NULL,
  `sslcstart` varchar(10) NOT NULL,
  `sslcend` varchar(10) NOT NULL,
  `hscregno` int(15) NOT NULL,
  `hscschoolname` varchar(35) NOT NULL,
  `hsccerificateno` int(15) NOT NULL,
  `hscboard` varchar(20) NOT NULL,
  `hscspecification` varchar(40) NOT NULL,
  `hscstart` varchar(15) NOT NULL,
  `hscend` varchar(15) NOT NULL,
  `counsellingrank` int(10) NOT NULL,
  `cutoffmark` varchar(8) NOT NULL,
  `enterance` varchar(20) NOT NULL,
  `admission` varchar(20) NOT NULL,
  `careeroption` varchar(20) NOT NULL,
  `beclevel` varchar(10) NOT NULL,
  `firstgen` varchar(5) NOT NULL,
  `becstatus` varchar(10) NOT NULL,
  `degreelevel` varchar(5) NOT NULL,
  `firstsem` float NOT NULL,
  `secondsem` float NOT NULL,
  `thirdsem` float NOT NULL,
  `fourthsem` float NOT NULL,
  `fifthsem` float NOT NULL,
  `sixthsem` float NOT NULL,
  `seventhsem` float NOT NULL,
  `eigthsem` float NOT NULL,
  `historyarrear` int(2) NOT NULL,
  `clearedarrear` int(2) NOT NULL,
  `noofstandingarrear` int(2) NOT NULL,
  `coursestart` varchar(15) NOT NULL,
  `currentcgpa` float NOT NULL,
  `ugpercentage` float NOT NULL,
  `ugpercentagewithout` float NOT NULL,
  `ugspeci` varchar(35) NOT NULL,
  `department` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`rollno`, `firstname`, `lastname`, `fathername`, `occupation`, `dob`, `gender`, `mobileno`, `email`, `streetname`, `villagename`, `cityname`, `statename`, `pincode`, `language`, `caste`, `comefrom`, `skills`, `educationcap`, `capreason`, `physicalena`, `physicalreason`, `sslcregno`, `sslcschoolname`, `sslccerificateno`, `sslcboard`, `sslcstart`, `sslcend`, `hscregno`, `hscschoolname`, `hsccerificateno`, `hscboard`, `hscspecification`, `hscstart`, `hscend`, `counsellingrank`, `cutoffmark`, `enterance`, `admission`, `careeroption`, `beclevel`, `firstgen`, `becstatus`, `degreelevel`, `firstsem`, `secondsem`, `thirdsem`, `fourthsem`, `fifthsem`, `sixthsem`, `seventhsem`, `eigthsem`, `historyarrear`, `clearedarrear`, `noofstandingarrear`, `coursestart`, `currentcgpa`, `ugpercentage`, `ugpercentagewithout`, `ugspeci`, `department`) VALUES
('15it120', 'tamil', 'ramasamy', 'ramasamy', 'farmer', '2000-09-17', 'male', '9874521000', 'tamilsam@gmail.com', '12,km nagar', 'karattadipalayam', 'gobi', 'tamilnadu', 638453, 'tamil,english.', 'BC', 'Dayscholar', 'php', '1', '', '1', '', 123456, 'govt hr school', 1212121, 'stateboard', '06/2012', '05/2013', 546464, 'govt hr school', 124545, 'stateboard', 'computer,maths', '06/2014', '05/2015', 1212, '198', 'tancet', 'counselling', 'placement', 'preliminar', 'yes', 'B1', 'ug', 8, 8, 8, 8, 8, 8, 8, 8, 0, 0, 0, '05/2016', 5, 0, 0, '', 'information techonology'),
('15mcl119', 'sridhar', 'karuppusamy', 'karuppusamy', 'finance', '1995-12-28', 'male', '9845732102', 'sridharmca@gmail.com', '32,raman street.', 'karattadipalayam', 'gobichettipalayam', 'tamil nadu', 638452, 'tamil,english.', 'bc', 'hostel', 'python,java,webdesign.', '0', '', '0', '', 109494, 'diamond jubliee higher sec school', 1245785, 'stateboard', '06/2010', '05/2011', 1254545, 'diamond jubliee higher sec school', 1518451, 'state board', 'maths,computer.', '06/2012', '05/2013', 121, '1455', 'tancet', 'management', 'placement', 'B1', '0', '', 'pg', 8.3, 8.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '06/2016', 8.5, 76, 70, 'maths,computer.', 'computer application');

-- --------------------------------------------------------

--
-- Table structure for table `studentpersonal`
--

CREATE TABLE `studentpersonal` (
  `rollno` varchar(9) NOT NULL,
  `fathername` varchar(35) NOT NULL,
  `occupation` varchar(35) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `mobileno` varchar(11) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `streetname` varchar(40) NOT NULL,
  `villagename` varchar(40) NOT NULL,
  `cityname` varchar(40) NOT NULL,
  `statename` varchar(40) NOT NULL,
  `caste` varchar(40) NOT NULL,
  `comefrom` varchar(16) NOT NULL,
  `pincode` int(7) NOT NULL,
  `language` varchar(20) NOT NULL,
  `skills` varchar(40) NOT NULL,
  `pys` varchar(4) NOT NULL,
  `pysreason` text NOT NULL,
  `edugap` varchar(4) NOT NULL,
  `edureason` text NOT NULL,
  `sslcregno` int(8) NOT NULL,
  `sslcschool` varchar(40) NOT NULL,
  `sslccertificate` int(8) NOT NULL,
  `sslcboard` varchar(15) NOT NULL,
  `sslcstart` varchar(10) NOT NULL,
  `sslcend` varchar(10) NOT NULL,
  `highedu` varchar(10) NOT NULL,
  `hscregno` int(8) NOT NULL,
  `hscschool` varchar(40) NOT NULL,
  `hsccertificate` int(8) NOT NULL,
  `hscboard` varchar(15) NOT NULL,
  `hscstart` varchar(10) NOT NULL,
  `hscend` varchar(10) NOT NULL,
  `hscspec` varchar(40) NOT NULL,
  `hsccutoff` int(8) NOT NULL,
  `crank` int(8) NOT NULL,
  `dregno` varchar(8) NOT NULL,
  `dcollege` varchar(40) NOT NULL,
  `dcertificate` int(8) NOT NULL,
  `dboard` varchar(15) NOT NULL,
  `dstart` varchar(8) NOT NULL,
  `dend` varchar(8) NOT NULL,
  `dspec` varchar(40) NOT NULL,
  `dcutoff` int(3) NOT NULL,
  `dcrank` int(5) NOT NULL,
  `finish` int(2) NOT NULL,
  `sslcmark` int(3) NOT NULL,
  `hscmark` int(3) NOT NULL,
  `hscper` int(3) NOT NULL,
  `sslcper` int(3) NOT NULL,
  `dper` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentpersonal`
--

INSERT INTO `studentpersonal` (`rollno`, `fathername`, `occupation`, `dob`, `gender`, `mobileno`, `mail`, `streetname`, `villagename`, `cityname`, `statename`, `caste`, `comefrom`, `pincode`, `language`, `skills`, `pys`, `pysreason`, `edugap`, `edureason`, `sslcregno`, `sslcschool`, `sslccertificate`, `sslcboard`, `sslcstart`, `sslcend`, `highedu`, `hscregno`, `hscschool`, `hsccertificate`, `hscboard`, `hscstart`, `hscend`, `hscspec`, `hsccutoff`, `crank`, `dregno`, `dcollege`, `dcertificate`, `dboard`, `dstart`, `dend`, `dspec`, `dcutoff`, `dcrank`, `finish`, `sslcmark`, `hscmark`, `hscper`, `sslcper`, `dper`) VALUES
('15mcl109', 'rajaaaa', 'dfdf', '2017-10-25', 'male', '9876543210', 'sri@hm.com', 'lsdjfvhj', 'khgkhg', 'khkhg', 'Tamilnadu', 'BC', 'Dayschooler', 698545, 'jgfkjf', 'jjhfv', 'no', '', 'no', '', 109493, 'erodegovthighersecschool', 12345678, 'Stateboard', '06-2010', '06-2011', 'HSC', 125452, 'erodegovtschool', 12345672, 'Stateboard', '06-2012', '06-2013', 'computerscience', 190, 121, '', '', 0, '', '', '', '', 0, 0, 1, 450, 880, 73, 90, 0),
('15bsc001', 'janumani', 'farmer', '28/12/1998', 'female', '9874512565', 'janaio@gmail.com', 'ramnager', 'kumaran kobil', 'nalaiyampalayam', 'tamilnadu', 'bc', 'dayschooler', 638452, 'tamil,englidh.', 'java', 'no', '', 'no', '', 151515, 'ghsschool', 3231123, 'stateboard', '06-2012', '06-2013', 'bsc', 151154, 'ghsschool', 64654111, 'stateboard', '06-2014', '06-2015', 'computer science', 121, 1452, '', '', 0, '', '', '', '', 0, 0, 1, 450, 882, 74, 90, 0),
('15mcl090', 'ram', 'business', '1996-06-11', 'male', '9999884445', 'ram@gmail.com', 'kumar nagar', 'karattuer', 'erode', 'Tamilnadu', 'BC', 'Dayschooler', 638452, 'tamil', 'php', 'no', '', 'no', '', 109555, 'govermentschool', 45545444, 'Stateboard', '06-2012', '06-2013', 'HSC', 151512, 'diamondjublieehigerscenodaryschool', 15452411, 'stateboard', '06-2012', '06-2013', 'computer science', 180, 2012, '', '', 0, '', '', '', '', 0, 0, 0, 450, 885, 74, 90, 0),
('15msc001', 'tharma', 'farmer', '28/05/1995', 'female', '9600199848', 'ramyaswty@gmail.com', 'tamil nagar', 'kallipatti', 'anthiur', 'tamilnadu', 'bc', 'hostel', 685425, 'english,tamil.', 'c,c++', 'no', '', 'no', '', 154545, 'thankalurhighschool', 454541, 'stateboard', '06-2010', '06-2011', 'hsc', 152458, 'thankalurhighschool', 45478511, 'stateboard', '06-2012', '06-2013', 'computer science', 150, 2545, '', '', 0, '', '', '', '', 0, 0, 1, 430, 830, 73, 84, 0),
('15cse121', 'ramasamy', 'tailer', '12/12/1996', 'female', '9857412345', 'geetha23@gmail.com', 'umalakshmi nagar', 'thalaivar puram', 'bavani', 'tamilnadu', 'st', 'hostel', 635842, 'tamil,english.', 'java', 'no', '', 'no', '', 184547, 'govt.highschool', 784444, 'stateboard', '06-2010', '06-2011', 'hsc', 154242, 'govt.highschool', 15754511, 'stateboard', '06-2012', '06-2013', 'compter science', 180, 1520, '', '', 0, '', '', '', '', 0, 0, 1, 430, 883, 74, 86, 0),
('15mcl119', 'raja', 'farmer', '1995-12-28', 'female', '9842454745', 'tamil@gmail.com', 'kumaran street', 'karattadipalayam', 'gobichettipalayam', 'Tamilnadu', 'BC', 'Hostel', 638453, 'tamil', 'php', 'no', '', 'no', '', 109494, 'djhsschool', 45454555, 'Stateboard', '06-2010', '06-2011', 'HSC', 155454, 'djhsschool', 41154654, 'Stateboard', '06-2012', '06-2013', 'computerscience', 192, 1221, '', '', 0, '', '', '', '', 0, 0, 1, 400, 882, 74, 80, 0),
('15mbl001', 'palani', 'businessman', '20/12/1996', 'male', '8542512365', 'rajapalani@gmail.com', 'lakhanager', 'kasipalayam', 'gobichettipalayam', 'tamilnadu', 'bc', 'hostel', 687542, 'tamil,english.', 'php,c.', 'no', '', 'no', '', 192545, 'kasihighcollege', 524524, 'stateboard', '06-2010', '06-2011', 'hsc', 784461, 'kasihighcollege', 45454551, 'stateboard', '06-2012', '06-2013', 'business maths', 190, 250, '', '', 0, '', '', '', '', 0, 0, 1, 450, 880, 73, 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_description` text NOT NULL,
  `post_status` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `file` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `Topic` varchar(50) NOT NULL,
  `Info` varchar(20) NOT NULL,
  `Rollno` varchar(10) NOT NULL,
  `Dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`file`, `type`, `size`, `Topic`, `Info`, `Rollno`, `Dept`) VALUES
('9828-PAPER ID.docx', 'application/vnd.openxmlformats-officedocument.word', 267125, 'Subjects', '', '15mcl090', 'computer application');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `be`
--
ALTER TABLE `be`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `bsc`
--
ALTER TABLE `bsc`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cno`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forumadd`
--
ALTER TABLE `forumadd`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markupdate`
--
ALTER TABLE `markupdate`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `mba`
--
ALTER TABLE `mba`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `mca`
--
ALTER TABLE `mca`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `msc`
--
ALTER TABLE `msc`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `placedstudent`
--
ALTER TABLE `placedstudent`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `studentpersonal`
--
ALTER TABLE `studentpersonal`
  ADD PRIMARY KEY (`hscregno`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `forumadd`
--
ALTER TABLE `forumadd`
  MODIFY `Sno` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
