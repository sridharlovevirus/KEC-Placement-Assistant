-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2018 at 09:20 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
('cts interview', 'Placement Regardsplacement', '2017-10-21', 1, 'Event Start At Date:<b>2017-10-21</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>Place : Maharaja Hall               <br> Time:8:45<br>\r\n\r\n<b><u>Eligibility</u></b>\r\n<b>sslc percentage:</b>\r\n80%\r\n<br>\r\n<b>hsc percentage:</b>\r\n80%\r\n<br>\r\n<b>current percentage:</b>\r\n70%\r\n<br>\r\n<hr>All Student Must Come with Your All need Douments<hr>', 37, 'IT,computer application'),
('Infosys', 'Placement Training Regardsplac', '2017-12-30', 1, 'Event Start At Date:<b>2017-12-30</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>infosys training for final year students', 38, 'bsc,cse,computer application'),
('cts', 'Placement Regardsplacement', '2018-01-06', 1, 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 39, 'computer application,bsc');

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
  `id` varchar(8) DEFAULT NULL,
  `pa` varchar(8) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `mailid` varchar(18) DEFAULT NULL,
  `role` varchar(7) DEFAULT NULL,
  `additionalrole` varchar(9) DEFAULT NULL,
  `mobileno` bigint(10) DEFAULT NULL,
  `dp` varchar(21) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `almail` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pa`, `name`, `department`, `mailid`, `role`, `additionalrole`, `mobileno`, `dp`, `status`, `almail`) VALUES
('15MCR001', '15MCR001', 'ARCHANADEVI M', 'computer application', '15MCR001@kongu.edu', 'student', 'null', 9789742176, 'user.jpg', 1, 'archanadevi0195@gmail.com'),
('15MCR002', '15MCR002', 'GOKULRAJ V', 'computer application', '15MCR002@kongu.edu', 'student', 'null', 8754913996, 'user.jpg', 1, 'gokulraj878@gmail.com'),
('15MCR003', '15MCR003', 'JANARTHANAN S', 'computer application', '15MCR003@kongu.edu', 'student', 'null', 9865659130, 'user.jpg', 1, 'janavivek994@gmail.com'),
('15MCR004', '15MCR004', 'RADHIKA R', 'computer application', '15MCR004@kongu.edu', 'student', 'null', 9159401572, 'user.jpg', 1, 'radhikacs36@gmail.com'),
('15MCR006', '15MCR006', 'THAMARAISELVAN P', 'computer application', '15MCR006@kongu.edu', 'student', 'null', 8870230519, 'user.jpg', 1, 'selvan315731@gmail.com'),
('15MCL007', '15MCL007', 'ABILASHA R', 'computer application', '15MCL007@kongu.edu', 'student', 'null', 9790685216, 'user.jpg', 1, 'abilashark94@gmail.com'),
('15MCL008', '15MCL008', 'ABINAYA P', 'computer application', '15MCL008@kongu.edu', 'student', 'null', 7502548167, 'user.jpg', 1, 'abipmca@gmail.com'),
('15MCL009', '15MCL009', 'AMBIKA V', 'computer application', '15MCL009@kongu.edu', 'student', 'null', 9789125522, 'user.jpg', 1, 'ambika.vgm@gmail.com'),
('15MCL010', '15MCL010', 'ANANDHARAJ P', 'computer application', '15MCL010@kongu.edu', 'student', 'null', 7502329681, 'user.jpg', 1, 'anandh51295@gmail.com'),
('15MCL011', '15MCL011', 'ANBALAGAN G', 'computer application', '15MCL011@kongu.edu', 'student', 'null', 9994034923, 'user.jpg', 1, 'anbalagananbu90@gmail.com'),
('15MCL012', '15MCL012', 'ANUSUYA R', 'computer application', '15MCL012@kongu.edu', 'student', 'null', 8428464660, 'user.jpg', 1, 'anutechwizard@gmail.com'),
('15MCL013', '15MCL013', 'ARULSARAVANAN R', 'computer application', '15MCL013@kongu.edu', 'student', 'null', 9865170115, 'user.jpg', 1, 'saravananarul13@gmail.com'),
('15MCL014', '15MCL014', 'ARUNBHUVANESH G', 'computer application', '15MCL014@kongu.edu', 'student', 'null', 8508358680, 'user.jpg', 1, 'arunbhuvanesh29@gmail.com'),
('15MCL015', '15MCL015', 'ARUNSHANKAR K', 'computer application', '15MCL015@kongu.edu', 'student', 'null', 9944301400, 'user.jpg', 1, 'arun1997bca@gmail.com'),
('15MCL016', '15MCL016', 'BALA DIVYA S', 'computer application', '15MCL016@kongu.edu', 'student', 'null', 8608391463, 'user.jpg', 1, 'angeldivya596@gmail.com'),
('15MCL017', '15MCL017', 'BALA RAMYA T', 'computer application', '15MCL017@kongu.edu', 'student', 'null', 9715053728, 'user.jpg', 1, 'ramyabalathangam@gmail.com'),
('15MCL018', '15MCL018', 'BALAJI D', 'computer application', '15MCL018@kongu.edu', 'student', 'null', 9600637313, 'user.jpg', 1, 'balaji212121@gmail.com'),
('15MCL019', '15MCL019', 'BALAMURUGAVEL G', 'computer application', '15MCL019@kongu.edu', 'student', 'null', 8760712863, 'user.jpg', 1, 'balamurugavel.ganeshan@gmail.com'),
('15MCL020', '15MCL020', 'BASKAR J', 'computer application', '15MCL020@kongu.edu', 'student', 'null', 9566362141, 'user.jpg', 1, 'baskarbca13@gmail.com'),
('15MCL021', '15MCL021', 'BASKAR N', 'computer application', '15MCL021@kongu.edu', 'student', 'null', 7639059796, 'user.jpg', 1, 'baskaranatarajselvi@gmail.com'),
('15MCL022', '15MCL022', 'BHUVANESHWARAN V', 'computer application', '15MCL022@kongu.edu', 'student', 'null', 9976214792, 'user.jpg', 1, 'vbhuvanesh008@gmail.com'),
('15MCL023', '15MCL023', 'CATHERINE A', 'computer application', '15MCL023@kongu.edu', 'student', 'null', 7373486542, 'user.jpg', 1, 'catherinearokiaraj@gmail.com'),
('15MCL024', '15MCL024', 'DAYAANAND V M', 'computer application', '15MCL024@kongu.edu', 'student', 'null', 9842240298, 'user.jpg', 1, 'dayaanand456@gmail.com'),
('15MCL025', '15MCL025', 'DHANDAPANI S', 'computer application', '15MCL025@kongu.edu', 'student', 'null', 9894064229, 'user.jpg', 1, 'dhandapanidhaniskk@gmail.com'),
('15MCL026', '15MCL026', 'DHARANYA V', 'computer application', '15MCL026@kongu.edu', 'student', 'null', 9688794382, 'user.jpg', 1, 'vdharanyamca@gmail.com'),
('15MCL027', '15MCL027', 'DINESH BALAJI S', 'computer application', '15MCL027@kongu.edu', 'student', 'null', 9994252824, 'user.jpg', 1, 'androbalajiupdated@gmail.com'),
('15MCL028', '15MCL028', 'DINESH S', 'computer application', '15MCL028@kongu.edu', 'student', 'null', 9443733055, 'user.jpg', 1, 'dineshsubramanian1043@gmail.com'),
('15MCL029', '15MCL029', 'DIVYA DARSHINI.R', 'computer application', '15MCL029@kongu.edu', 'student', 'null', 9443210888, 'user.jpg', 1, 'deva25rkm@gmail.com'),
('15MCL030', '15MCL030', 'GAYATHRI T', 'computer application', '15MCL030@kongu.edu', 'student', 'null', 7845193148, 'user.jpg', 1, 'junogayu@gmail.com'),
('15MCL031', '15MCL031', 'GOBAL S', 'computer application', '15MCL031@kongu.edu', 'student', 'null', 9524010883, 'user.jpg', 1, 's.gobalsoft@gmail.com'),
('15MCL032', '15MCL032', 'GOWTHAM N S', 'computer application', '15MCL032@kongu.edu', 'student', 'null', 9445585822, 'user.jpg', 1, 'gowthamns712@gmail.com'),
('15MCL033', '15MCL033', 'GOWTHAM R', 'computer application', '15MCL033@kongu.edu', 'student', 'null', 9585842531, 'user.jpg', 1, 'gowtham3586@gmail.com'),
('15MCL034', '15MCL034', 'GOWTHAM S', 'computer application', '15MCL034@kongu.edu', 'student', 'null', 9597915252, 'user.jpg', 1, 'gtmavp@gmail.com'),
('15MCL035', '15MCL035', 'GUNASEKAR K', 'computer application', '15MCL035@kongu.edu', 'student', 'null', 8973990782, 'user.jpg', 1, 'gunagunasekar1996@gmail.com'),
('15MCL036', '15MCL036', 'HARIDASS T', 'computer application', '15MCL036@kongu.edu', 'student', 'null', 9750011474, 'user.jpg', 1, 'harikongu26@gmail.com'),
('15MCL037', '15MCL037', 'HARIHARAN A', 'computer application', '15MCL037@kongu.edu', 'student', 'null', 8124700755, 'user.jpg', 1, 'hariharancri@gmail.com'),
('15MCL038', '15MCL038', 'INDIRA SUTHAR T', 'computer application', '15MCL038@kongu.edu', 'student', 'null', 9488948028, 'user.jpg', 1, 'indirasuthar@gmail.com'),
('15MCL039', '15MCL039', 'INTHUMATHI E', 'computer application', '15MCL039@kongu.edu', 'student', 'null', 9965464270, 'user.jpg', 1, 'inthumathimca@gmail.com'),
('15MCL040', '15MCL040', 'JAGATHEESHKUMAR S', 'computer application', '15MCL040@kongu.edu', 'student', 'null', 9597695252, 'user.jpg', 1, 'jagavaluable@gmail.com'),
('15MCL041', '15MCL041', 'JANARTHANAN J', 'computer application', '15MCL041@kongu.edu', 'student', 'null', 8870041145, 'user.jpg', 1, 'janabalan.a96@gmail.com'),
('15MCL042', '15MCL042', 'JITHU P', 'computer application', '15MCL042@kongu.edu', 'student', 'null', 9488948028, 'user.jpg', 1, 'indirasuthar@gmail.com'),
('15MCL043', '15MCL043', 'JOTHIMANI S', 'computer application', '15MCL043@kongu.edu', 'student', 'null', 7358951313, 'user.jpg', 1, 'jothikrish13j@gmail.com'),
('15MCL044', '15MCL044', 'KABILAN R', 'computer application', '15MCL044@kongu.edu', 'student', 'null', 9578134590, 'user.jpg', 1, 'kabilan182@gmail.com'),
('15MCL045', '15MCL045', 'KALAISELVI S', 'computer application', '15MCL045@kongu.edu', 'student', 'null', 9698135628, 'user.jpg', 1, 'kalai.s111@gmail.com'),
('15MCL046', '15MCL046', 'KARTHIGA R', 'computer application', '15MCL046@kongu.edu', 'student', 'null', 8098998541, 'user.jpg', 1, 'karthiga731@gmail.com'),
('15MCL047', '15MCL047', 'KARTHIK P', 'computer application', '15MCL047@kongu.edu', 'student', 'null', 9942556565, 'user.jpg', 1, 'karthikpalanivelk@gmail.com'),
('15MCL048', '15MCL048', 'KARUPPUSAMY.V', 'computer application', '15MCL048@kongu.edu', 'student', 'null', 9443260324, 'user.jpg', 1, 'karuppusamytvgs@gmail.com'),
('15MCL049', '15MCL049', 'KAVIN B', 'computer application', '15MCL049@kongu.edu', 'student', 'null', 9566607115, 'user.jpg', 1, 'dfsdf@gmail.com'),
('15MCL050', '15MCL050', 'KAVIN PRASATH G', 'computer application', '15MCL050@kongu.edu', 'student', 'null', 8344093438, 'user.jpg', 1, 'kavinprasath96@gmail.com'),
('15MCL051', '15MCL051', 'KAVINESH T', 'computer application', '15MCL051@kongu.edu', 'student', 'null', 9842439005, 'user.jpg', 1, 'kavineshthangaraj@gmail.com'),
('15MCL052', '15MCL052', 'KAVINKUMAR D', 'computer application', '15MCL052@kongu.edu', 'student', 'null', 9942334585, 'user.jpg', 1, 'ndkavin@gmail.com'),
('15MCL053', '15MCL053', 'KEERTHANA S', 'computer application', '15MCL053@kongu.edu', 'student', 'null', 9442517359, 'user.jpg', 1, 'skeerthanasubramaniam@gmail.com'),
('15MCL054', '15MCL054', 'KIRUTHIKA D', 'computer application', '15MCL054@kongu.edu', 'student', 'null', 9965716465, 'user.jpg', 1, 'kiruthishruthi@gmail.com'),
('15MCL055', '15MCL055', 'KIRUTHIKA M', 'computer application', '15MCL055@kongu.edu', 'student', 'null', 9787196986, 'user.jpg', 1, 'kiruthikamn@gmail.com'),
('15MCL056', '15MCL056', 'KISHORE KHAN B', 'computer application', '15MCL056@kongu.edu', 'student', 'null', 7402140827, 'user.jpg', 1, 'kishorekhankk@live.com'),
('15MCL057', '15MCL057', 'KRISHNAPRIYA S', 'computer application', '15MCL057@kongu.edu', 'student', 'null', 8270165416, 'user.jpg', 1, 'krishnapriyadhanam@gmail.com'),
('15MCL058', '15MCL058', 'KUMARAVEL G', 'computer application', '15MCL058@kongu.edu', 'student', 'null', 9003540755, 'user.jpg', 1, 'gkumaravrl06@gmail.com'),
('15MCL059', '15MCL059', 'KURINJI NATHAN K', 'computer application', '15MCL059@kongu.edu', 'student', 'null', 8124753812, 'user.jpg', 1, 'kurinjinathan95@gmail.com'),
('15MCL060', '15MCL060', 'LAVANYA S', 'computer application', '15MCL060@kongu.edu', 'student', 'null', 9585999192, 'user.jpg', 1, 'lavanyakiruthiga1996@gmail.com'),
('15MCL061', '15MCL061', 'LOGANYA  M V', 'computer application', '15MCL061@kongu.edu', 'student', 'null', 8973584838, 'user.jpg', 1, 'loganyavairam@gmail.com'),
('15MCL062', '15MCL062', 'MADHANRAJ M', 'computer application', '15MCL062@kongu.edu', 'student', 'null', 9942836110, 'user.jpg', 1, 'madhanrsp@gmail.com'),
('15MCL063', '15MCL063', 'MAITHEEN FARMANNULLA S', 'computer application', '15MCL063@kongu.edu', 'student', 'null', 9698333527, 'user.jpg', 1, 'maitheenbasha23@gmail.com'),
('15MCL064', '15MCL064', 'MANIKANDAN.R', 'computer application', '15MCL064@kongu.edu', 'student', 'null', 9750646797, 'user.jpg', 1, 'manivijay513@gmail.com'),
('15MCL065', '15MCL065', 'MANISHA M', 'computer application', '15MCL065@kongu.edu', 'student', 'null', 9751741637, 'user.jpg', 1, 'mmanishamca@gmail.com'),
('15MCL066', '15MCL066', 'MANJULA S', 'computer application', '15MCL066@kongu.edu', 'student', 'null', 7810090959, 'user.jpg', 1, 'manjulamythili@gmail.com'),
('15MCL067', '15MCL067', 'MANOJ D', 'computer application', '15MCL067@kongu.edu', 'student', 'null', 9003446491, 'user.jpg', 1, 'afdfda@gmail.com'),
('15MCL068', '15MCL068', 'MATHANKUMAR S', 'computer application', '15MCL068@kongu.edu', 'student', 'null', 9688187237, 'user.jpg', 1, 'madhankumarsellamuthu@gmail.com'),
('15MCL069', '15MCL069', 'MATHIYAZHAKAN T', 'computer application', '15MCL069@kongu.edu', 'student', 'null', 9976559446, 'user.jpg', 1, '1996mathiyazhakan@gmail.com'),
('15MCL070', '15MCL070', 'MEIVANNAN P', 'computer application', '15MCL070@kongu.edu', 'student', 'null', 9003616461, 'user.jpg', 1, 'meivannanjayalakshim@gmail.Com'),
('15MCL071', '15MCL071', 'MOHAMED NAFEEL HUSSAIN L', 'computer application', '15MCL071@kongu.edu', 'student', 'null', 8122875005, 'user.jpg', 1, 'nafeelmcam19@gmail.com'),
('15MCL072', '15MCL072', 'MOHAN K', 'computer application', '15MCL072@kongu.edu', 'student', 'null', 9789504532, 'user.jpg', 1, 'kmohan0693@gmail.com'),
('15MCL073', '15MCL073', 'MOHANAPRIYA.S', 'computer application', '15MCL073@kongu.edu', 'student', 'null', 9944640428, 'user.jpg', 1, 'sathyapriysps1122@gmail.com'),
('15MCL074', '15MCL074', 'MOHANRAJ R', 'computer application', '15MCL074@kongu.edu', 'student', 'null', 9965812211, 'user.jpg', 1, 'mohanrajrangasamyshankar@gmail.com'),
('15MCL075', '15MCL075', 'MOUNISHYAA M', 'computer application', '15MCL075@kongu.edu', 'student', 'null', 9842886334, 'user.jpg', 1, 'mounishyaamariappyan@gmail.com'),
('15MCL076', '15MCL076', 'MYTHILI M', 'computer application', '15MCL076@kongu.edu', 'student', 'null', 9489242068, 'user.jpg', 1, 'mythilimcab@gmail.com'),
('15MCL077', '15MCL077', 'NAVEENKUMAR D', 'computer application', '15MCL077@kongu.edu', 'student', 'null', 9500545530, 'user.jpg', 1, 'naveenkumar.dps@gmail.com'),
('15MCL078', '15MCL078', 'NAVEEN SHANKAR T', 'computer application', '15MCL078@kongu.edu', 'student', 'null', 9500327867, 'user.jpg', 1, 'naveenshankarthangavel@gmail.com'),
('15MCL079', '15MCL079', 'NAVEENKUMAR R', 'computer application', '15MCL079@kongu.edu', 'student', 'null', 8870177605, 'user.jpg', 1, 'naveencredible@gmail.com'),
('15MCL080', '15MCL080', 'NITHIYA G', 'computer application', '15MCL080@kongu.edu', 'student', 'null', 9546545454, 'user.jpg', 1, 'avcdjdj@gmail.com'),
('15MCL081', '15MCL081', 'NITHYA PRIYA O K', 'computer application', '15MCL081@kongu.edu', 'student', 'null', 9095599307, 'user.jpg', 1, 'nithyapriyaok@gmail.com'),
('15MCL082', '15MCL082', 'NIVETHA T', 'computer application', '15MCL082@kongu.edu', 'student', 'null', 8344584135, 'user.jpg', 1, 'nivethathangavelrajaram@gmail.com'),
('15MCL083', '15MCL083', 'NIVETHITHA A', 'computer application', '15MCL083@kongu.edu', 'student', 'null', 9965142820, 'user.jpg', 1, 'nivethithaarumugamvellingiri@gmail.com'),
('15MCL084', '15MCL084', 'NIVITHA P V', 'computer application', '15MCL084@kongu.edu', 'student', 'null', 9677021310, 'user.jpg', 1, 'nivithann@gmail.com'),
('15MCL085', '15MCL085', 'PARKAVI T', 'computer application', '15MCL085@kongu.edu', 'student', 'null', 8526722120, 'user.jpg', 1, 'parkavi0307@gmail.com'),
('15MCL086', '15MCL086', 'PAVITHRA K', 'computer application', '15MCL086@kongu.edu', 'student', 'null', 9150136311, 'user.jpg', 1, 'pavithrakandasamy@gmail.com'),
('15MCL087', '15MCL087', 'PAVITHRA R', 'computer application', '15MCL087@kongu.edu', 'student', 'null', 9894209729, 'user.jpg', 1, 'pavitrarakkimuthu@gmail.com'),
('15MCL088', '15MCL088', 'PONKUMAR S', 'computer application', '15MCL088@kongu.edu', 'student', 'null', 9976254642, 'user.jpg', 1, 'ponnaveen96@gmail.com'),
('15MCL089', '15MCL089', 'POORNA PRIYA K', 'computer application', '15MCL089@kongu.edu', 'student', 'null', 8508948224, 'user.jpg', 1, 'poornapriya1712@gmail.com'),
('15MCL090', '15MCL090', 'POOVIZHI  M', 'computer application', '15MCL090@kongu.edu', 'student', 'null', 9952707119, 'user.jpg', 1, 'poovizhi.jan07@gmail.com'),
('15MCL091', '15MCL091', 'PRABHU P', 'computer application', '15MCL091@kongu.edu', 'student', 'null', 9791405350, 'user.jpg', 1, 'prabhudeva654@gmail.com'),
('15MCL092', '15MCL092', 'PRABU S', 'computer application', '15MCL092@kongu.edu', 'student', 'null', 9715151439, 'user.jpg', 1, 'prabus1411@gmail.com'),
('15MCL093', '15MCL093', 'PRADEEBKIMAR M', 'computer application', '15MCL093@kongu.edu', 'student', 'null', 9688493348, 'user.jpg', 1, 'pradeebkumarmca2016@gmail.com'),
('15MCL094', '15MCL094', 'PRADEEPKUMAR.G', 'computer application', '15MCL094@kongu.edu', 'student', 'null', 9629299756, 'user.jpg', 1, 'pradeepkumargkec@gmail.com'),
('15MCL095', '15MCL095', 'PRETHIVI.K', 'computer application', '15MCL095@kongu.edu', 'student', 'null', 9659625402, 'user.jpg', 1, 'kprethivi281095@gmail.com'),
('15MCL096', '15MCL096', 'PRIYADHARSHAN B', 'computer application', '15MCL096@kongu.edu', 'student', 'null', 9976419034, 'user.jpg', 1, 'PRIYADHARSHAN3012@GMAIL.COM'),
('15MCL097', '15MCL097', 'PRIYADHARSHINI.V', 'computer application', '15MCL097@kongu.edu', 'student', 'null', 8489195852, 'user.jpg', 1, '2613priyadharshini.v@gmail.com'),
('15MCL098', '15MCL098', 'PRIYANKA.A', 'computer application', '15MCL098@kongu.edu', 'student', 'null', 8056730114, 'user.jpg', 1, 'apriyankamca2016@gmail.com'),
('15MCL099', '15MCL099', 'PRIYANKA.P', 'computer application', '15MCL099@kongu.edu', 'student', 'null', 8903267115, 'user.jpg', 1, 'priyankamaiyl@gmail.com'),
('15MCL100', '15MCL100', 'PRIYANKA S', 'computer application', '15MCL100@kongu.edu', 'student', 'null', 7373828828, 'user.jpg', 1, 'Priyankas13aug@gmail.com'),
('15MCL101', '15MCL101', 'RADHIKA R', 'computer application', '15MCL101@kongu.edu', 'student', 'null', 9443207044, 'user.jpg', 1, 'radhi1996raju@gmail.com'),
('15MCL102', '15MCL102', 'RAJESH KUMAR JPK', 'computer application', '15MCL102@kongu.edu', 'student', 'null', 7373565742, 'user.jpg', 1, 'kumar.rajeshjpk@gmail.com'),
('15MCL103', '15MCL103', 'RAJKUMAR K', 'computer application', '15MCL103@kongu.edu', 'student', 'null', 9791963859, 'user.jpg', 1, 'rajkumarkaliappan1995@gmail.com'),
('15MCL104', '15MCL104', 'RAMYABHARATHI R', 'computer application', '15MCL104@kongu.edu', 'student', 'null', 7639767647, 'user.jpg', 1, 'ramyarajendranmca@gmail.com'),
('15MCL105', '15MCL105', 'REVANTH D', 'computer application', '15MCL105@kongu.edu', 'student', 'null', 9842009552, 'user.jpg', 1, 'revanth95d@gmail.com'),
('15MCL106', '15MCL106', 'SARAVANAKUMAR.M', 'computer application', '15MCL106@kongu.edu', 'student', 'null', 9003886321, 'user.jpg', 1, 'msaravanakumar369@gmail.com'),
('15MCL108', '15MCL108', 'SAVITHA P', 'computer application', '15MCL108@kongu.edu', 'student', 'null', 9578089430, 'user.jpg', 1, 'savi11041996@gmail.com'),
('15MCL110', '15MCL110', 'SIBI RAJAVEL.T', 'computer application', '15MCL110@kongu.edu', 'student', 'null', 8675881939, 'user.jpg', 1, 'Sibirajavelthangapandian@gmail.com'),
('15MCL111', '15MCL111', 'SIBI SHANKAR S', 'computer application', '15MCL111@kongu.edu', 'student', 'null', 9500493588, 'user.jpg', 1, 'bssibi94@gmail.com'),
('15MCL112', '15MCL112', 'SINDURI.S', 'computer application', '15MCL112@kongu.edu', 'student', 'null', 8903030768, 'user.jpg', 1, 'sinduri.selvaraj@gmail.com'),
('15MCL113', '15MCL113', 'SIVA V', 'computer application', '15MCL113@kongu.edu', 'student', 'null', 9489324580, 'user.jpg', 1, 'vaiyapurisiva@gmal.com'),
('15MCL114', '15MCL114', 'SOUNDARYA S', 'computer application', '15MCL114@kongu.edu', 'student', 'null', 9382932148, 'user.jpg', 1, 'soundaryasairam@gmail.com'),
('15MCL115', '15MCL115', 'SOUNTHARIYA P', 'computer application', '15MCL115@kongu.edu', 'student', 'null', 7402287235, 'user.jpg', 1, 'cpsounthariya@gmail.com'),
('15MCL116', '15MCL116', 'SOWMYAA M', 'computer application', '15MCL116@kongu.edu', 'student', 'null', 9943045551, 'user.jpg', 1, 'SOWMYAAPSG@GMAIL.COM'),
('15MCL117', '15MCL117', 'SRI RAGAVI S P', 'computer application', '15MCL117@kongu.edu', 'student', 'null', 9003513220, 'user.jpg', 1, 'sriragavi2011@gmail.com'),
('15MCL118', '15MCL118', 'SRIDHAR K K', 'computer application', '15MCL118@kongu.edu', 'student', 'null', 9042578767, 'user.jpg', 1, 'sridharmcakec@gmail.com'),
('15MCL119', '15MCL119', 'SRINIVASAN S', 'computer application', '15MCL119@kongu.edu', 'student', 'null', 9976572009, 'user.jpg', 1, 'sricnu96@gmail.com'),
('15MCL120', '15MCL120', 'SUBHASHINI C', 'computer application', '15MCL120@kongu.edu', 'student', 'null', 8220315138, 'user.jpg', 1, 'subhashinic18@gmail.com'),
('15MCL121', '15MCL121', 'SUDHIYA.J', 'computer application', '15MCL121@kongu.edu', 'student', 'null', 9442609879, 'user.jpg', 1, 'sudhiya95@gmail.com'),
('15MCL123', '15MCL123', 'SUGANTHI PRIYA.P', 'computer application', '15MCL123@kongu.edu', 'student', 'null', 8754237020, 'user.jpg', 1, 'itssuganthipriya@gmail.com'),
('15MCL122', '15MCL122', 'SUGANTHI.P', 'computer application', '15MCL122@kongu.edu', 'student', 'null', 9976306903, 'user.jpg', 1, 'sugan047@gmail.com'),
('15MCL124', '15MCL124', 'SUGANYA M', 'computer application', '15MCL124@kongu.edu', 'student', 'null', 9087963585, 'user.jpg', 1, 'ANGELSUGAN183014@GMAIL.COM'),
('15MCL125', '15MCL125', 'SWARNAMBIKA.SY', 'computer application', '15MCL125@kongu.edu', 'student', 'null', 9578734373, 'user.jpg', 1, 'swarnambika.sy@gmail.com'),
('15MCL126', '15MCL126', 'SWARNESH M', 'computer application', '15MCL126@kongu.edu', 'student', 'null', 9786798698, 'user.jpg', 1, 'swarneshmani@gmail.com'),
('15MCL127', '15MCL127', 'TAMILMANI C', 'computer application', '15MCL127@kongu.edu', 'student', 'null', 9715707620, 'user.jpg', 1, 'tamilmanimca2016@Gmail.com'),
('15MCL128', '15MCL128', 'THANGAMANI.N', 'computer application', '15MCL128@kongu.edu', 'student', 'null', 9659679520, 'user.jpg', 1, 'thangamani12nachimuthu@gmail.com'),
('15MCL129', '15MCL129', 'THARANI S', 'computer application', '15MCL129@kongu.edu', 'student', 'null', 9965920501, 'user.jpg', 1, 'tharanisrinath@gmail.com'),
('15MCL130', '15MCL130', 'VIDHYA.R', 'computer application', '15MCL130@kongu.edu', 'student', 'null', 9543405115, 'user.jpg', 1, 'dhurkavidhya@gmail.com'),
('15MCL131', '15MCL131', 'VIDHYASRI M', 'computer application', '15MCL131@kongu.edu', 'student', 'null', 8508903634, 'user.jpg', 1, 'vidhyasrimanivannan@gmail.com'),
('15MCL132', '15MCL132', 'VIGNESH.K', 'computer application', '15MCL132@kongu.edu', 'student', 'null', 9865636478, 'user.jpg', 1, 'Vigneshk6567@gmail.com'),
('15MCL133', '15MCL133', 'VIGNESHWARAN.T', 'computer application', '15MCL133@kongu.edu', 'student', 'null', 9655541924, 'user.jpg', 1, 'tvigneshwaranmca2016@gmail.com'),
('15MCL134', '15MCL134', 'VIKNESH.K.R', 'computer application', '15MCL134@kongu.edu', 'student', 'null', 7639863295, 'user.jpg', 1, 'krvikneshkec@gmail.com'),
('15MCL135', '15MCL135', 'VINITHA.G', 'computer application', '15MCL135@kongu.edu', 'student', 'null', 8523998432, 'user.jpg', 1, 'vinithagmk@gmai.com'),
('15MCL136', '15MCL136', 'VISHNUPRIYA K', 'computer application', '15MCL136@kongu.edu', 'student', 'null', 9789305826, 'user.jpg', 1, 'vishnuvini97@gmail.com'),
('15adm001', 'admin', 'Admin', 'office', 'admin@kongu.edu', 'admin', 'null', 9842454784, 'admin.png', 1, 'sridharlovevirus@gmail.com'),
('15bsc001', '15bsc001', 'bhavana', 'bsc', '15bsc001@kongu.edu', 'student', 'null', 7789543210, 'user.jpg', 0, 'hhnsh@gmail.com'),
('15cse121', '15cse121', 'geetha', 'cse', '15cse121@kongu.edu', 'student', 'null', 8989543210, 'user.jpg', 0, 'bsns@gmail.com'),
('15hod115', '15hod115', 'keerthi', 'cse', '15hod115@kongu.edu', 'hod', 'null', 9005054754, 'profile/15hod115.jpeg', 0, 'hodkecbm@gmail.com'),
('15hod118', '15hod118', 'kowsika', 'it', '15hod118@kongu.edu', 'hod', 'null', 9876543210, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15hod119', '15hod119', 'ramya', 'computer application', '15hod119@kongu.edu', 'hod', 'null', 7005054754, 'profile/15hod119.png', 1, 'hodkecrr@gmail.com'),
('15mbl001', '15mbl001', 'raja', 'mba', '15mbl001@kongu.edu', 'student', 'null', 8989543210, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15msc001', '15msc001', 'ramya', 'msc', '15msc116@kongu.edu', 'student', 'null', 8500554744, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf001', '15stf001', 'uma', 'computer application', '15stf001@kongu.edu', 'staff', 'placement', 9542100012, 'profile/15stf001.jpeg', 0, 'hodkecrr@gmail.com'),
('15stf002', '15stf002', 'hari', 'bsc', '15stf002@kongu.edu', 'staff', 'placement', 9876543215, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf003', '15stf003', 'rahu', 'msc', '15stf003@kongu.edu', 'staff', 'placement', 9600188452, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf004', '15stf004', 'pyingkodi', 'cse', '15stf004@kongu.edu', 'staff', 'placement', 9875545242, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf008', '15stf008', 'tamilselvi', 'it', '15stf008@kongu.edu', 'staff', 'placement', 9876543252, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf009', '15stf009', 'manivel', 'computer application', '15stf009@kongu.edu', 'staff', 'placement', 9876545252, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf020', '15stf020', 'harisankar', 'computer application', '15stf020@kongu.edu', 'staff', 'null', 9876541230, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf023', '15stf023', 'kavithabharathi', 'computer application', '15stf023@kongu.edu', 'staff', 'null', 9876543213, 'user.jpg', 0, 'hodkecrr@gmail.com');

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
('15stf001', 'Accept for Editing Personal Information', '15mcl090', 'Your Request Was Successfully processed', '', '17/10/17 08:05:39pm', 96563, 0),
('15stf001', 'Dney For Change Personal Details', '15mcl090', 'give full details', '', '17/10/17 08:11:04pm', 0, 0),
('15stf001', 'Dney For Change Personal Details', '15mcl090', 'give full details', '', '17/10/17 08:12:07pm', 18581, 0),
('15hod119', 'final read mail function check', '15mcl020@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 55878, 0),
('15hod119', 'final read mail function check', '15mcl119@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 62116, 0),
('15hod119', 'final read mail function check', '15mcl120@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 44749, 0),
('15hod119', 'final read mail function check', '15mcl136@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 34754, 0),
('15hod119', 'final read mail function check', '15stf020@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 83990, 0),
('15hod119', 'final read mail function check', '15stf023@kongu.edu', 'pass                     \r\n                    ', 'uploads/29433-', '18/10/17 12:48:44am', 94616, 0),
('15mcl090', 'null attanchment test', '15hod119@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 65577, 1),
('15mcl090', 'null attanchment test', '15mcl020@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 45090, 0),
('15mcl090', 'null attanchment test', '15mcl119@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 31549, 0),
('15mcl090', 'null attanchment test', '15mcl120@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 66884, 0),
('15mcl090', 'null attanchment test', '15mcl136@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 13218, 0),
('15mcl090', 'null attanchment test', '15stf020@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 99434, 0),
('15mcl090', 'null attanchment test', '15stf023@kongu.edu', 'pass                     \r\n                    ', 'uploads/86737-', '18/10/17 01:35:06am', 24422, 0),
('15hod119', 'again attanchment test', '15mcl020@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 79318, 0),
('15hod119', 'again attanchment test', '15mcl119@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 12760, 0),
('15hod119', 'again attanchment test', '15mcl120@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 22749, 0),
('15hod119', 'again attanchment test', '15mcl136@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 58304, 0),
('15hod119', 'again attanchment test', '15stf020@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 90093, 0),
('15hod119', 'again attanchment test', '15stf023@kongu.edu', 'fail                     \r\n                    ', 'uploads/48714-', '18/10/17 01:37:56am', 42645, 0),
('15hod119', 'again repeat for bug fix ', '15mcl020@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 64569, 0),
('15hod119', 'again repeat for bug fix ', '15mcl119@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 26289, 0),
('15hod119', 'again repeat for bug fix ', '15mcl120@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 37795, 0),
('15hod119', 'again repeat for bug fix ', '15mcl136@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 92356, 0),
('15hod119', 'again repeat for bug fix ', '15stf020@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 96503, 0),
('15hod119', 'again repeat for bug fix ', '15stf023@kongu.edu', 'fix ?                     \r\n                    ', 'uploads/94632-', '18/10/17 01:38:47am', 46705, 0),
('15hod119', 'again repeat for bug fix ', '15mcl020@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 34639, 0),
('15hod119', 'again repeat for bug fix ', '15mcl119@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 11862, 0),
('15hod119', 'again repeat for bug fix ', '15mcl120@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 80946, 0),
('15hod119', 'again repeat for bug fix ', '15mcl136@kongu.edu', 'fix ?                     \r\n                    ', '', '18/10/17 01:41:37am', 16031, 0),
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
('KEC Placement', 'Placement Regardsplacement', '15hod119@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:20pm', 55227, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 74210, 1),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 48833, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl120@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 64678, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl136@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 45920, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf001@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 61005, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf020@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 81678, 0),
('KEC Placement', 'Placement Regardsplacement', '15stf023@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>before allowanced<br><br>\r\ndate:31-10-2017', 'uploads/28668-be.doc', '06:10:21pm', 28122, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>not null', 'uploads/91335-klogo.jpg', '08:16:47pm', 48724, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-10-31</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>not null', 'uploads/91335-klogo.jpg', '08:16:47pm', 19517, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 23415, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl109@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 18722, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 65947, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 23187, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15mcl136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 22083, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 80259, 0),
('KEC Placement', 'InFosys InterviewEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:16:59pm', 77647, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 73114, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl109@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 32939, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 80891, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 56263, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15mcl136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 81494, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 64170, 0),
('KEC Placement', 'CTG INTERVIEWEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '08:17:02pm', 83683, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15cse121@kongu.edu', 'Event Start At Date:<b>2017-12-30</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>infosys training for final year students', 'uploads/67836-INFOSYS ELIGIBLE STUDENTS LIST OF MC', '09:03:00pm', 60663, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-12-30</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>infosys training for final year students', 'uploads/67836-INFOSYS ELIGIBLE STUDENTS LIST OF MC', '09:03:01pm', 28344, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-12-30</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>infosys training for final year students', 'uploads/67836-INFOSYS ELIGIBLE STUDENTS LIST OF MC', '09:03:01pm', 88340, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-12-15</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>vrwrt3rg', 'uploads/18734-student.xlsx', '08:11:16pm', 40353, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-12-15</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>vrwrt3rg', 'uploads/18734-student.xlsx', '08:11:16pm', 37600, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl109@kongu.edu', 'Event Start At Date:<b>2017-12-15</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>vrwrt3rg', 'uploads/41201-student.xlsx', '08:16:29pm', 63910, 0),
('KEC Placement', 'Placement Regardsplacement', '15mcl119@kongu.edu', 'Event Start At Date:<b>2017-12-15</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>vrwrt3rg', 'uploads/41201-student.xlsx', '08:16:29pm', 99742, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCR001@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 40635, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCR002@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 12795, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCR003@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 87939, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCR004@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 38332, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCR006@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 85373, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL007@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 72507, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL008@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 68701, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL009@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:54pm', 13582, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL010@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 59798, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL011@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 23711, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL012@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 44428, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL013@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 62269, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL014@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 38910, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL015@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 41408, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL016@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 67898, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL017@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 70505, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL018@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 53266, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL019@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 78377, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL020@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 58555, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL021@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 57733, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL022@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 88975, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL023@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 42949, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL024@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 69178, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL025@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 87844, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL026@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 87706, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL027@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 65681, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL028@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 19211, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL029@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 91392, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL030@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 35568, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL031@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 54907, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL032@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 50320, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL033@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 43378, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL034@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 52007, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL035@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:55pm', 52292, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL036@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 81949, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL037@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 52134, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL038@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 34244, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL039@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 55059, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL040@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 77989, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL041@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 92662, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL042@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 12836, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL043@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 15985, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL044@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 46771, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL045@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 95515, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL046@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 62782, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL047@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 21183, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL048@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 41075, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL049@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 35695, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL050@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 36859, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL051@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 23429, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL052@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 69232, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL053@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 21535, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL054@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 98958, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL055@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 19946, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL056@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 95133, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL057@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 28035, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL058@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 12966, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL059@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 52400, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL060@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 38221, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL061@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 74639, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL062@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 31662, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL063@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 29125, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL064@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:56pm', 40163, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL065@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 47458, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL066@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 96712, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL067@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 80677, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL068@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 20404, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL069@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 54825, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL070@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 16449, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL071@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 26500, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL072@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 31721, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL073@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 71742, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL074@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 88096, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL075@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 86037, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL076@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 82448, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL077@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 28762, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL078@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 31098, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL079@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 78735, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL080@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 47585, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL081@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 78664, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL082@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 53786, 0);
INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL083@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 46259, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL084@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 24354, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL085@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 63115, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL086@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 53385, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL087@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 74720, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL088@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 65532, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL089@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 46004, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL091@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 28008, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL092@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 90565, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL093@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:57pm', 46774, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL094@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 61089, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL095@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 81122, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL096@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 63340, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL097@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 40426, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL098@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 85861, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL099@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 97951, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL100@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 81081, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL101@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 46405, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL102@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 31987, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL103@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 75718, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL104@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 18787, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL105@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 39710, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL106@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 18912, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL108@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 56089, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL110@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 62570, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL111@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 39786, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL112@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 32747, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL113@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 36287, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL114@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 87429, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL115@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 21633, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL116@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 15158, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL117@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 57977, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL118@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 12809, 1),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL119@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 93584, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL120@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 41145, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL121@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 29494, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL123@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 69265, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL122@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 52861, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL124@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:58pm', 52376, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL125@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 81393, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL126@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 87353, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL127@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 96687, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL128@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 34960, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL129@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 33118, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL130@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 30962, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL131@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 22284, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL132@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 19455, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL133@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 15226, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL134@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 86203, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL135@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 26874, 0),
('KEC Placement', 'Placement Training Regardsplacementtraining', '15MCL136@kongu.edu', 'Event Start At Date:<b>2017-12-22</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>sd', 'uploads/20018-CS158.doc', '09:46:59pm', 80859, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR001@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:29pm', 73752, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR002@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:29pm', 89141, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR003@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:29pm', 76264, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR004@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:29pm', 32386, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR006@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:29pm', 81684, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL007@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:29pm', 48158, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL008@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 14664, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL009@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 12497, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL010@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 52636, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL011@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 65334, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL012@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 70252, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL013@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 54934, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL014@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 61610, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL015@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 49004, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL016@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 29139, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL017@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 45808, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL018@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 50271, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL019@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 40833, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL020@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 77435, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL021@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 93454, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL022@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 93619, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL023@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 38045, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL024@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 90142, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL025@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 83981, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL026@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 44433, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL027@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:30pm', 82305, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL028@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 75591, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL029@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 36835, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL030@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 66601, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL031@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 81947, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL032@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 86561, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL033@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 15904, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL034@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 12901, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL035@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 78637, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL036@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 42496, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL037@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 40633, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL038@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 47222, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL039@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:31pm', 69599, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL040@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 85064, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL041@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 86021, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL042@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 22341, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL043@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 96497, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL044@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 44818, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL045@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 82625, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL046@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 13259, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL047@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 67667, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL048@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 63427, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL049@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 94333, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL050@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 50531, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL051@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 24774, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL052@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 60335, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL053@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 51700, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL054@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 31380, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL055@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 53930, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL056@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 88319, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL057@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 18616, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL058@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 75249, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL059@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:32pm', 19023, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL060@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 66823, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL061@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 14526, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL062@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 79361, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL063@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 95054, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL064@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 48627, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL065@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 14428, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL066@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 74272, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL067@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 57023, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL068@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 42062, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL069@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 37768, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL070@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 46093, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL071@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 79928, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL072@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 99907, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL073@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 59545, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL074@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 25379, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL075@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 27661, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL076@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 52718, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL077@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 99205, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL078@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 87131, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL079@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 75219, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL080@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 42160, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL081@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 42857, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL082@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:33pm', 84125, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL083@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 86493, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL084@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 76567, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL085@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 87725, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL086@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 91362, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL087@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 58704, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL088@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 30940, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL089@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 31030, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL091@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 33520, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL092@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 91389, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL093@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 69995, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL094@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 36566, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL095@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 97051, 0);
INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('KEC Placement', 'Placement Regardsplacement', '15MCL096@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 44026, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL097@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 90730, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL098@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 80088, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL099@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 24297, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL100@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 74961, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL101@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 23792, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL102@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 78298, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL103@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 79147, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL104@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:34pm', 59195, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL105@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 21958, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL106@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 61751, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL108@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 36602, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL110@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 93950, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL111@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 15784, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL112@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 16558, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL113@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 71660, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL114@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 54226, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL115@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 69159, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL116@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 62163, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL117@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 48212, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL118@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 37244, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL119@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 23749, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL120@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 95789, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL121@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 52368, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL123@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 95784, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL122@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 32332, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL124@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 59103, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL125@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 36905, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL126@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 60400, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL127@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 25463, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL128@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:35pm', 27104, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL129@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 87936, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL130@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 72759, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL131@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 67032, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL132@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 30349, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL133@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 69349, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL134@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 52305, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL135@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 87594, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL136@kongu.edu', 'Event Start At Date:<b>2017-12-23</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>ajsdfb', 'uploads/94608-TamilRockers.ac - Trisha Illana Naya', '07:36:36pm', 54947, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCR001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:30pm', 24045, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCR002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:30pm', 76630, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCR003@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:30pm', 95914, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCR004@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 68747, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCR006@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 50553, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL007@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 16029, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL008@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 29280, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 33406, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL010@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 26193, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL011@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 99698, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL012@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 43722, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL013@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 35392, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL014@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 70410, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL015@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 13750, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL016@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 58685, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL017@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 94148, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL018@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 80425, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL019@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 22072, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 38058, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL021@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 95787, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL022@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 86794, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 77444, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL024@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 79063, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL025@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 59752, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL026@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 75629, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL027@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 88197, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL028@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 56700, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL029@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 49932, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL030@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 77484, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL031@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:31pm', 95998, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL032@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 68191, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL033@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 85772, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL034@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 78472, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL035@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 98071, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL036@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 77425, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL037@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 53382, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL038@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 20258, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL039@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 47192, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL040@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 92735, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL041@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 61097, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL042@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 66731, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL043@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 29473, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL044@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 78011, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL045@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 83916, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL046@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 70670, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL047@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 86580, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL048@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 41585, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL049@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 52395, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL050@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 18185, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL051@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 37958, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL052@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 36235, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL053@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 30422, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL054@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 28721, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL055@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 14162, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL056@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 70296, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL057@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 37442, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL058@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 88389, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL059@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 12415, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL060@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 18766, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL061@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:32pm', 48456, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL062@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 49967, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL063@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 74384, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL064@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 67757, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL065@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 82907, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL066@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 77343, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL067@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 19512, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL068@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 92268, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL069@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 26906, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL070@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 23296, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL071@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 67244, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL072@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 11745, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL073@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 77677, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL074@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 51714, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL075@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 37025, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL076@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 56743, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL077@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 32440, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL078@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 15375, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL079@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 59410, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL080@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 57817, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL081@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 88419, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL082@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 78168, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL083@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 42732, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL084@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 67746, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL085@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 42835, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL086@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 92871, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL087@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 28659, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL088@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 94862, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL089@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:33pm', 92911, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL091@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 14412, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL092@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 14165, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL093@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 35869, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL094@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 55783, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL095@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 41658, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL096@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 11767, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL097@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 68931, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL098@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 20659, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL099@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 18730, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL100@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 51557, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL101@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 78209, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL102@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 59667, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL103@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 76185, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL104@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 52978, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL105@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 83146, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL106@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 70030, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL108@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 33466, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL110@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 68809, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL111@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 58742, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL112@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 82302, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL113@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 21128, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL114@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 18494, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL115@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 24443, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL116@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 82595, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL117@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:34pm', 36395, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL118@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 43701, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 44137, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 12575, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL121@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 32044, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL123@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 63872, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL122@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 48380, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL124@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 36132, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL125@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 94186, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL126@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 42898, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL127@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 12171, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL128@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 94932, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL129@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 86710, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL130@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 78000, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL131@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 43844, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL132@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 86197, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL133@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 95727, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL134@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 44178, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL135@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 29511, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15MCL136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 40483, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 74015, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15stf001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 38655, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15stf009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 77503, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 32790, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 18796, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15bsc001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 25320, 0),
('KEC Placement', 'InfosysEvent Cancelled', '15stf002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:40:35pm', 73933, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCR001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:01pm', 76548, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCR002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 62044, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCR003@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 51868, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCR004@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 30267, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCR006@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 35478, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL007@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 35427, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL008@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 67309, 0);
INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('KEC Placement', 'CTSEvent Cancelled', '15MCL009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 74397, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL010@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 73402, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL011@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 85720, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL012@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 21465, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL013@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 16270, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL014@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 76429, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL015@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 65700, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL016@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 44891, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL017@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 41997, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL018@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 64005, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL019@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 50368, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 45922, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL021@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 26578, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL022@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 11129, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 70279, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL024@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 66224, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL025@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 67236, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL026@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:02pm', 26136, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL027@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 22656, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL028@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 14130, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL029@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 38970, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL030@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 84025, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL031@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 26942, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL032@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 20195, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL033@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 39002, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL034@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 26462, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL035@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 69249, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL036@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 81643, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL037@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 31222, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL038@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 95114, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL039@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 91243, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL040@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 62361, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL041@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 23963, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL042@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 42759, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL043@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 79036, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL044@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 48461, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL045@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 70003, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL046@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 22176, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL047@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 63183, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL048@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 81610, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL049@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 88785, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL050@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:03pm', 52807, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL051@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 29795, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL052@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 70141, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL053@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 44200, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL054@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 20765, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL055@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 98318, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL056@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 55720, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL057@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 33468, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL058@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 34383, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL059@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 77083, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL060@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 35571, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL061@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 20480, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL062@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 68660, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL063@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 85536, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL064@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 51358, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL065@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 13568, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL066@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 54153, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL067@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 20898, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL068@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 11417, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL069@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 65511, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL070@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 54749, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL071@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 91503, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL072@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:04pm', 46302, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL073@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 95751, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL074@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 89895, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL075@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 16796, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL076@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 64347, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL077@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 68180, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL078@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 45700, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL079@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 93999, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL080@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 18329, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL081@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 80018, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL082@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 30498, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL083@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 42556, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL084@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 83249, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL085@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 95155, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL086@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 19289, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL087@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 70800, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL088@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 34106, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL089@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 33034, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL091@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 75954, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL092@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 45901, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL093@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 35324, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL094@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 42184, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL095@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 88574, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL096@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 71411, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL097@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:05pm', 21468, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL098@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 70732, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL099@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 94769, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL100@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 18969, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL101@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 44243, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL102@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 92163, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL103@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 36208, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL104@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 19132, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL105@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 23095, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL106@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 37030, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL108@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 76779, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL110@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 69121, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL111@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 99690, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL112@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 58113, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL113@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 69259, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL114@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 32825, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL115@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 15695, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL116@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 85967, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL117@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 88650, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL118@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 85245, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 90554, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 95591, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL121@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:06pm', 76616, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL123@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 90269, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL122@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 65934, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL124@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 17542, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL125@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 19270, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL126@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 45119, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL127@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 83501, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL128@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 93486, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL129@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 36056, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL130@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 80352, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL131@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 62700, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL132@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 76201, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL133@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 24196, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL134@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 15410, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL135@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 56309, 0),
('KEC Placement', 'CTSEvent Cancelled', '15MCL136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 29576, 0),
('KEC Placement', 'CTSEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 14246, 0),
('KEC Placement', 'CTSEvent Cancelled', '15stf001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 69740, 1),
('KEC Placement', 'CTSEvent Cancelled', '15stf009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 72661, 0),
('KEC Placement', 'CTSEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 61943, 0),
('KEC Placement', 'CTSEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:07pm', 81206, 0),
('KEC Placement', ' etgeEvent Cancelled', '15bsc001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 62784, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 75645, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 59415, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 77853, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR003@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 36211, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR004@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 73594, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR006@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 41436, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL007@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 79188, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL008@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 76131, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 30398, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL010@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 71893, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL011@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 26877, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL012@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 46432, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL013@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 43277, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL014@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 81344, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL015@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 84809, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL016@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 33227, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL017@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 76123, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL018@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 44788, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL019@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 16872, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:13pm', 78181, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL021@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 48377, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL022@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 70559, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 75846, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL024@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 89629, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL025@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 12819, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL026@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 44767, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL027@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 25618, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL028@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 20347, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL029@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 66672, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL030@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 75745, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL031@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 30078, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL032@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 45336, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL033@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 84933, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL034@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 49606, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL035@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 30891, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL036@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 28485, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL037@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 75938, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL038@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 74682, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL039@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 14170, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL040@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 55905, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL041@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 92464, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL042@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 37084, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL043@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 99359, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL044@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:14pm', 80373, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL045@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 53955, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL046@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 45146, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL047@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 94791, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL048@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 99112, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL049@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 13188, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL050@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 73868, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL051@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 31022, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL052@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 64900, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL053@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 67388, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL054@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 53805, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL055@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 71940, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL056@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 63848, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL057@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 91552, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL058@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 48847, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL059@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 70323, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL060@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 48733, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL061@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 94015, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL062@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 78436, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL063@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 12282, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL064@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 16777, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL065@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 38666, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL066@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 28686, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL067@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 17263, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL068@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 98537, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL069@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 22726, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL070@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 96818, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL071@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:15pm', 71375, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL072@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 24568, 0);
INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('KEC Placement', ' etgeEvent Cancelled', '15MCL073@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 98974, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL074@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 80053, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL075@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 27397, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL076@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 14314, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL077@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 97965, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL078@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 86726, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL079@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 49218, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL080@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 64998, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL081@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 72477, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL082@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 91837, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL083@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 78504, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL084@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 40508, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL085@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 30843, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL086@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 25941, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL087@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 12478, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL088@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 26955, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL089@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 25840, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL091@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 59472, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL092@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 66007, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL093@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 65803, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL094@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 70016, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL095@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:16pm', 27821, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL096@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 65996, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL097@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 25732, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL098@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 85544, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL099@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 36968, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL100@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 68589, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL101@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 91737, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL102@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 18953, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL103@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 73025, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL104@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 71009, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL105@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 49929, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL106@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 23022, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL108@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 77658, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL110@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 26033, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL111@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 86420, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL112@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 28306, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL113@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 36979, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL114@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 19772, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL115@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 76209, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL116@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 98695, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL117@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 70431, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL118@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 93893, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 27631, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 75854, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL121@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 75238, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL123@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:17pm', 67841, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL122@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 82351, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL124@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 23673, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL125@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 81955, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL126@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 72170, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL127@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 70925, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL128@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 50485, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL129@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 76692, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL130@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 15215, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL131@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 46131, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL132@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:18pm', 42401, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL133@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 90006, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL134@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 27530, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL135@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 16303, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 18866, 0),
('KEC Placement', ' etgeEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 19118, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 34217, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 43768, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:41:19pm', 72363, 0),
('KEC Placement', ' etgeEvent Cancelled', '15bsc001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 95551, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 59681, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 81830, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 55791, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR003@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 27267, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR004@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 66788, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR006@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 17626, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL007@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 18714, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL008@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 80338, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 57055, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL010@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 73388, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL011@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 80075, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL012@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 18652, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL013@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 72148, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL014@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 79671, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL015@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:10pm', 81540, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL016@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 94986, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL017@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 20401, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL018@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 89252, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL019@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 86998, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 73231, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL021@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 32370, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL022@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 21576, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 27004, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL024@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 28385, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL025@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 16387, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL026@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 18310, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL027@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 54337, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL028@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 79893, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL029@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 14119, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL030@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 87787, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL031@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 99552, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL032@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 36089, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL033@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 22789, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL034@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 16118, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL035@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 48760, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL036@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 16416, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL037@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 84063, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL038@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 78304, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL039@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 99183, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL040@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 95876, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL041@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 17385, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL042@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 60454, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL043@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:11pm', 48044, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL044@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 38357, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL045@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 42200, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL046@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 59792, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL047@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 92564, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL048@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 96636, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL049@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 66842, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL050@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 40207, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL051@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 29966, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL052@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 34602, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL053@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 44089, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL054@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 98920, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL055@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 57473, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL056@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 16145, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL057@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 60050, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL058@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 22043, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL059@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 61195, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL060@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 71820, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL061@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 67504, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL062@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 84575, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL063@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 60576, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL064@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 98849, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL065@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 63674, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL066@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 72629, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL067@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 30617, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL068@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 38899, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL069@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 90226, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL070@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 83425, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL071@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:12pm', 79652, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL072@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 55859, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL073@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 55493, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL074@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 80853, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL075@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 93790, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL076@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 91395, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL077@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 90030, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL078@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 73247, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL079@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 92477, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL080@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 42729, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL081@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 13283, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL082@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 24495, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL083@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 50713, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL084@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 29307, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL085@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 44696, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL086@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 31819, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL087@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 76831, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL088@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 37239, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL089@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 92602, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL091@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 56941, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL092@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 97081, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL093@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 20890, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL094@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 25808, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL095@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:13pm', 99378, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL096@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 17165, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL097@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 93448, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL098@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 73583, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL099@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 90253, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL100@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 94715, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL101@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 85278, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL102@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 32991, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL103@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 49009, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL104@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 49175, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL105@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 82489, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL106@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 45697, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL108@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 39537, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL110@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 88878, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL111@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 37860, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL112@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 31146, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL113@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 81279, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL114@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 22157, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL115@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 37502, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL116@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 42116, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL117@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 60348, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL118@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 57345, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 34193, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 86941, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL121@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 85077, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL123@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 91666, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL122@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:14pm', 25154, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL124@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 40619, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL125@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 41577, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL126@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 66785, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL127@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 52053, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL128@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 89263, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL129@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 38180, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL130@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 57703, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL131@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 23223, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL132@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 18983, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL133@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 49888, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL134@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 94976, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL135@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 69219, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 15890, 0),
('KEC Placement', ' etgeEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 96145, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 98375, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 43874, 0);
INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('KEC Placement', ' etgeEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:15pm', 63061, 0),
('KEC Placement', ' etgeEvent Cancelled', '15bsc001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 30805, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 63468, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR001@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 22379, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR002@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 58970, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR003@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 34917, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR004@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 50610, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCR006@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 93071, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL007@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 58873, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL008@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 29828, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 12578, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL010@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 86507, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL011@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 82212, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL012@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 90538, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL013@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 35484, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL014@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 55463, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL015@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 15101, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL016@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 69824, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL017@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:23pm', 72105, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL018@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 97162, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL019@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 54760, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 42686, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL021@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 30775, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL022@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 86604, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 87301, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL024@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 39680, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL025@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 42049, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL026@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 32123, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL027@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 43280, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL028@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 46918, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL029@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 14260, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL030@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 75385, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL031@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 75474, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL032@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 94954, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL033@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 77964, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL034@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 46945, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL035@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 25550, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL036@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 81011, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL037@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 52606, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL038@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 88471, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL039@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 46286, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL040@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:24pm', 35644, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL041@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 68741, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL042@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 30517, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL043@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 68237, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL044@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 33854, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL045@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 34703, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL046@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 14751, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL047@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 66403, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL048@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 17306, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL049@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 81046, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL050@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 49506, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL051@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 60229, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL052@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 61002, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL053@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 27216, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL054@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 98670, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL055@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 24715, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL056@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 17719, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL057@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 92656, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL058@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 81689, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL059@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 68193, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL060@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 51345, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL061@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:25pm', 96812, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL062@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 51339, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL063@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 76776, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL064@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 14659, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL065@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 81350, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL066@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 15955, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL067@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 69908, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL068@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 71549, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL069@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 43492, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL070@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 28314, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL071@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 22588, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL072@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 74793, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL073@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 24904, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL074@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 96750, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL075@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 43150, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL076@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 99392, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL077@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 22810, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL078@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 96261, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL079@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 17705, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL080@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 87011, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL081@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:26pm', 78876, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL082@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 35183, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL083@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 54587, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL084@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 23762, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL085@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 12546, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL086@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 55181, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL087@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 39906, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL088@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 29090, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL089@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 43264, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL091@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 81995, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL092@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 89105, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL093@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 79364, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL094@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 60628, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL095@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 66967, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL096@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 56586, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL097@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 73624, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL098@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 18299, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL099@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 14265, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL100@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 95421, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL101@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 23266, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL102@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 90380, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL103@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 76668, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL104@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 58387, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL105@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 58845, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL106@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:27pm', 18538, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL108@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 95841, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL110@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 20486, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL111@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 88696, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL112@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 33327, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL113@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 46785, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL114@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 12272, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL115@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 65595, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL116@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 54193, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL117@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 37833, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL118@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 19856, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 75653, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL120@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 45024, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL121@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 43985, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL123@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 73795, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL122@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 71649, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL124@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 14154, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL125@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:28pm', 84686, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL126@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 71310, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL127@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 50805, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL128@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 14360, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL129@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 46047, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL130@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 42957, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL131@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 54787, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL132@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 53976, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL133@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 36401, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL134@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 63736, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL135@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 80818, 0),
('KEC Placement', ' etgeEvent Cancelled', '15MCL136@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 96891, 0),
('KEC Placement', ' etgeEvent Cancelled', '15hod119@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 30748, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf009@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:29pm', 81675, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf020@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:30pm', 62548, 0),
('KEC Placement', ' etgeEvent Cancelled', '15stf023@kongu.edu', '<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>', '', '07:50:30pm', 48532, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR001@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 51445, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR002@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 67475, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR003@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 18823, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR004@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 36610, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCR006@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 79559, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL007@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 70806, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL008@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 54142, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL009@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 69715, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL010@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 26944, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL011@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:10pm', 74658, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL012@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 57343, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL013@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 68619, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL014@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 68600, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL015@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 42919, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL016@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 92314, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL017@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 63877, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL018@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 68416, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL019@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 72813, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL020@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 89613, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL021@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 41601, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL022@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 23613, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL023@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 39339, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL024@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 24237, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL025@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 32345, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL026@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 64748, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL027@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 39718, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL028@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 93410, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL029@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 22222, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL030@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 11265, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL031@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 37841, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL032@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 94354, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL033@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 41785, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL034@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 82609, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL035@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 42040, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL036@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:11pm', 46514, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL037@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 77148, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL038@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 98223, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL039@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 16205, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL040@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 13777, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL041@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 69976, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL042@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 99774, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL043@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 57557, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL044@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 15589, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL045@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 95269, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL046@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 84486, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL047@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 41096, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL048@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 26950, 0);
INSERT INTO `mail` (`sender`, `subject`, `r`, `msg`, `a`, `t`, `id`, `mailread`) VALUES
('KEC Placement', 'Placement Regardsplacement', '15MCL049@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 94694, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL050@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 94023, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL051@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 64046, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL052@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 67304, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL053@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 54361, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL054@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 36721, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL055@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 90294, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL056@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 22761, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL057@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 93717, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL058@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 43134, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL059@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 39284, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL060@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:12pm', 90546, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL061@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 21093, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL062@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 21595, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL063@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 52685, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL064@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 67879, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL065@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 44824, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL066@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 13772, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL067@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 49940, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL068@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 63094, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL069@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 62131, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL070@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 16886, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL071@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 83827, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL072@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 51190, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL073@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 14680, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL074@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 72604, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL075@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 73790, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL076@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 51613, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL077@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 66362, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL078@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 89260, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL079@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 72607, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL080@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 39363, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL081@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:13pm', 69954, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL082@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 19631, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL083@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 88612, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL084@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 33883, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL085@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 11566, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL086@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 38717, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL087@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 85693, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL088@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 99064, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL089@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 99533, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL090@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 99297, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL091@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 72184, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL092@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 76570, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL093@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 53298, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL094@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 20814, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL095@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 11973, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL096@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 30292, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL097@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 81195, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL098@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 22713, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL099@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 91172, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL100@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 68562, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL101@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 80447, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL102@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 13327, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL103@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 95893, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL104@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 77492, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL105@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 81608, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL106@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:14pm', 34323, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL108@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 34467, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL110@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 76527, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL111@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 70789, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL112@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 82923, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL113@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 48562, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL114@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 40665, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL115@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 78548, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL116@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 23016, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL117@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 57622, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL118@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 78241, 1),
('KEC Placement', 'Placement Regardsplacement', '15MCL119@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 90993, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL120@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 29603, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL121@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 25537, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL123@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 75366, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL122@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 49793, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL124@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 55460, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL125@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 49527, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL126@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 51483, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL127@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 29947, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL128@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 97810, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL129@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 93484, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL130@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 70483, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL131@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 62011, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL132@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 20542, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL133@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 76850, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL134@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:15pm', 62920, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL135@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:16pm', 43207, 0),
('KEC Placement', 'Placement Regardsplacement', '15MCL136@kongu.edu', 'Event Start At Date:<b>2018-01-06</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: 1.<br><br>venue:kmr hall', 'uploads/68906-index.php', '11:56:16pm', 87546, 0);

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
('15MCL090', 'computer application', 7, 70);

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
  `rollno` varchar(8) DEFAULT NULL,
  `eexam` varchar(7) DEFAULT NULL,
  `madmin` varchar(11) DEFAULT NULL,
  `co` varchar(12) DEFAULT NULL,
  `fgen` varchar(4) DEFAULT NULL,
  `ugcollege` varchar(69) DEFAULT NULL,
  `ugper` varchar(5) DEFAULT NULL,
  `ugspec` varchar(29) DEFAULT NULL,
  `sem1` varchar(4) DEFAULT NULL,
  `sem2` varchar(4) DEFAULT NULL,
  `sem3` varchar(4) DEFAULT NULL,
  `sem4` varchar(4) DEFAULT NULL,
  `sem5` varchar(4) DEFAULT NULL,
  `sem6` varchar(4) DEFAULT NULL,
  `cp` varchar(2) DEFAULT NULL,
  `ha` varchar(2) DEFAULT NULL,
  `sa` varchar(2) DEFAULT NULL,
  `ca` varchar(2) DEFAULT NULL,
  `cs` varchar(4) DEFAULT NULL,
  `ce` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mca`
--

INSERT INTO `mca` (`rollno`, `eexam`, `madmin`, `co`, `fgen`, `ugcollege`, `ugper`, `ugspec`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`, `cp`, `ha`, `sa`, `ca`, `cs`, `ce`) VALUES
('15MCR001', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'VIVEKANANDHA COLLEGE OF ARTS AND SCIENCES FOR WOMEN', '70', 'INFORMATION TECHNOLOGY', '6', '6', '6', '5', '0', '0', '6', '0', '0', '0', '2015', '2017'),
('15MCR002', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '63', 'BIO CHEMISTRY', '7', '7', '6', '5', '0', '0', '6', '0', '0', '0', '2015', '2017'),
('15MCR003', 'TANCENT', 'COUNSELLING', 'PLACEMENT', 'yes', 'ST.JOSEPH,S COLLEGE OF ARTS & SCIENCE,CUDDALORE', '58.7', 'COMPUTER APPLICATIONS', '8', '7', '6', '5', '0', '0', '6', '0', '0', '0', '2015', '2017'),
('15MCR004', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'SRI SARADHA COLLEGE FOR WOMEN,PERAMBALUR', '70', 'COMPUTER SCIENCE', '7', '6', '7', '5', '0', '0', '6', '0', '0', '0', '2015', '2017'),
('15MCR006', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOBI ARTS AND SCIENCE COLLEGE,GOBICHETTIPALAYAM', '60', 'COMPUTER APPLICATION', '6', '6', '7', '5', '0', '0', '6', '0', '0', '0', '2015', '2017'),
('15MCL007', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'PERUMAL MANIMEKALAI ENGINEERING COLLEGE HOSUR', '73', 'COMPUTER TECHNOLOGY', '0', '0', '7', '5', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL008', 'TANCET', 'COUNSELLING', 'OTHERS', 'yes', 'VELALAR COLLEGE OF ENGINEERING &TECHNOLOGY', '67.3', 'INFORMATION TECHNOLOGY', '0', '0', '8', '5', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL009', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'P.K.R.ARTS COLLEGE FOR WOMEN,GOBI', '77.33', 'COMPUTER APPLICATIONS', '0', '0', '8', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL010', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE,ERODE', '69.8', 'COMPUTER SCIENCE', '0', '0', '8', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL011', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOVT ARTS COLLEGE FOR(MEN) KRISHNAGIRI', '64.95', 'COMPUTER SCIENCE', '0', '0', '5', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL012', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'SHRI MATI INDIRA GANDHI COLLEGE ,TRICHY', '70.64', 'COMPUTER APPLICATION', '0', '0', '5', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL013', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SRI RAMAKRISHNA MISSION VIDYALAYA ARTS AND SCIENCE COLLEGE,COIMBATORE', '69', 'COMPUTER SCIENCE', '0', '0', '5', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL014', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '72', 'COMPUTER TECHNOLOGY', '0', '0', '5', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL015', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE', '54.49', 'COMPUTER APPLICATION', '0', '0', '6', '5', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL016', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOVINDAMMAL ADITANAR COLLEGE FOR WOMEN', '74.4', 'COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '7', '0', '0', '0', '2016', '2017'),
('15MCL017', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOVINDAMMAL ADITANAR COLLEGE FOR WOMEN', '82.59', 'COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL018', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ENGINEERING COLLEGE', '59.5', 'INFORMATION TECHNOLOGY', '0', '0', '6', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL019', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '58.2', 'COMPUTER  SCIENCE', '0', '0', '7', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL020', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'BISHOP THORP ARTS AND SCIENCE COLLEGE', '59.5', 'COMPUTER APPLICATION', '0', '0', '7', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL021', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE', '70', 'COMPUTER TECHNOLOGY', '0', '0', '7', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL022', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ENGINEERING COLLEGE', '64.7', 'COMPUTER TECHNOLOGY', '0', '0', '7', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL023', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '80.4', 'INFORMATION TECHNOLOGY', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL024', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '56.8', 'COMPUTER TECHNOLOGY', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL025', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'BHARATHIDASAN COLLEGE OF ARTS AND SCIENCE', '86.3', 'COMPUTER APPLICATION', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL026', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '67.1', 'COMPUTER SCIENCE', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL027', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '72.8', 'COMPUTER SCIENCE', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL028', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'A.VEERIYA VANDAYAR MEMORIAL SRI PUSHPAM COLLEGE', '73.3', 'COMPUTER SCIENCE', '0', '0', '4', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL029', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'JAIRAM ARTS AND SCIENCE', '67.8', 'COMPUTER SCIENCE', '0', '0', '4', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL030', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'NATIONAL COLLEGE,TIRUCHIRAPPALLI', '66.31', 'COMPUTER APPLICATION', '0', '0', '4', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL031', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'ERODE ARTS AND SCIENCE COLLEGE', '62.2', 'COMPUTER APPLICATION', '0', '0', '4', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL032', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'GOBI ARTS AND SCIENCE', '60.2', 'COMPUTER SCIENCE', '0', '0', '8', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL033', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KSR COLLEGE OF ARTS AND SCIENCE', '74', 'COMPUTER SCIENCE', '0', '0', '8', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL034', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'GOBI ARTS AND SCIENCE', '63.5', 'INFORMATION TECHNOLOGY', '0', '0', '8', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL035', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SASURIE ARTS AND SCIENCE COLLEGE', '66.7', 'COMPUTER APPLICATION', '0', '0', '8', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL036', 'TANCENT', 'COUNCELLING', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '57.8', 'COMPUTER APPLICATION', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL037', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SALEM CHRISTION COLLEGE OF ARTS AND SCIENCE .SALEM', '58.5', 'COMPUTER APPLICATION', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL038', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '80', 'INFORMATION TECHNOLOGY', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL039', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SRI GVG VISALAKSHI COLLEGE FOR WOMEN', '72', 'COMPUTER APPLICATIONS', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL040', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'Dr.N.G.P ARTS AND SCIENCE', '63.16', 'COMPUTER SCIENCE', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL041', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'PGP COLLEGE OF ARTS AND SCIENCE', '69.1', 'COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL042', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '80', 'INFORMATION SYSTEM MANAGEMENT', '0', '0', '6', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL043', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'VELLALAR COLLGE FOR WOMEN', '77.7', 'COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL044', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'JAMAL MOHAMED COLLEGE', '62.3', 'COMPUTER APPLICATION', '0', '0', '6', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL045', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'SENGUNTHAR ARTS AND SCIENCE', '77.7', 'COMPUTER APPLICATION', '0', '0', '6', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL046', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '77.4', 'COMPUTER TECHNOLOGY', '0', '0', '6', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL047', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'PAAVENDHAR COLLEGE OF ARTS AND SCIENCE', '59.5', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL048', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'BHARATHIAR UNIVERSITY ARTS AND SCIENCE COLLEGE ,SIVAGIRI', '70', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL049', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '64.7', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL050', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '80.4', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL051', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'HINDUSTAN COLLEGE OF ARTS AND SCIENCE', '56.8', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL052', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KSR COLLEGE OF ARTS AND SCIENCE', '86.3', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL053', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'VIVEKANANDHA COLLEGE OF ARTS AND SCIENCES FOR WOMEN', '67.1', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL054', 'TANCET', 'COUNSELLING', 'OTHERS', 'yes', 'GOBI ARTS AND SCIENCE COLLEGE', '72.8', 'BCA', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL055', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'PKR ARTS COLLEGE FOR WOMEN', '73.3', 'BSC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL056', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '67.8', 'B.SC(INFORMATION TECHNOLOGY)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL057', 'TANCET', 'COUNCELLING', 'PLACEMENT', 'yes', 'SRI.S.RAMASAMY NAIDU MEMORIAL COLLEGE', '66.31', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL058', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'BISHOP HEBER COLLEGE', '62.2', 'BCA', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL059', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'BISHOP HELER COLLEGE,TRICHY', '60.2', 'BCA', '0', '0', '7', '7', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL060', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '74', 'B.SC(COMPUTER SCIENCE)', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL061', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '63.5', 'B.SC(COMPUTER SCIENCE)', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL062', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KARUPPANNAN MARIAPPAN COLLEGE', '66.7', 'BCA', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL063', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'K.S.RANGASAMY COLLEGE OF ARTS AND SCIENCE', '57.8', 'BCA', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL064', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'GOBI ARTS AND SCIENCE COLLEGE', '58.5', 'BSC  COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL065', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'P.K.R. ARTS COLLEGE FOR WOMEN, GOBI.', '80', 'B.SC.,IT', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL066', 'TANCET', 'COUNCILLING', 'PLACEMENT', 'yes', 'JAIRAM ARTS AND SCIENCE COLLEGE', '72', 'BSC  COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL067', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'K.S.RANGASAMY COLLGE OF ARTS AND SCIENCE', '69.3', 'B.SC(CS)', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL068', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE', '65.57', 'BCA', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL069', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE', '79.5', 'BCA', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL070', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE', '74.28', 'BCA', '0', '0', '6', '7', '0', '0', '9', '0', '0', '0', '2016', '2017'),
('15MCL071', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'E.G.S.PILLAY ARTS AND SCIENCE COLLEGE-NAGAPATTINAM', '65.6', 'BCA', '0', '0', '6', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL072', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'C.KANDASAMI NAIDU COLLEGE FOR MEN', '69.77', 'BCA', '0', '0', '6', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL073', 'TANCET', 'COUNSELLING', 'OTHERS', 'yes', 'GOBI ARTS AND SCIENCE COLLEG', '75', 'B.SC COMPUTER SCIENCE', '0', '0', '6', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL074', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SREE AMMAN ARTS AND SCIENCE COLLEGE,ERODE', '65.09', 'BCA', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL075', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCECOLLEGE', '78.55', 'BCA', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL076', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE ERODE', '66', 'B.SC', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL077', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '72', 'B.SC(COMPUTER TECHNOLOGY)', '0', '0', '5', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL078', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'VIDYASAGAR COLLEGE OF ARTS AND SCIENCE', '69.2', 'B.SC(COMPUTER SCIENCE)', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL079', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '77.6', 'B.SC(COMPUTER SCIENCE)', '0', '0', '5', '7', '0', '0', '5', '1', '1', '0', '2016', '2017'),
('15MCL080', '', '', 'OTHERS', 'yes', '', '72.49', '', '0', '0', '5', '7', '0', '0', '5', '1', '1', '0', '2016', '2017'),
('15MCL081', 'CET', 'MANAGEMAENT', 'PLACEMENT', 'yes', 'KONGU ENGINEERING COLLEGE', '81.53', 'BSC(SOFTWARE ENGINEERING)', '0', '0', '5', '7', '0', '0', '5', '1', '1', '0', '2016', '2017'),
('15MCL082', 'TANCET', 'COUNCILLING', 'PLACEMENT', 'yes', 'JAIRAM ARS AND SCIENCE COLLEGE', '70', 'B.SC(COMPUTER SCIENCE)', '0', '0', '5', '7', '0', '0', '5', '1', '1', '0', '2016', '2017'),
('15MCL083', 'CET', 'MANAGEMAENT', 'PLACEMENT', 'yes', 'NGM ARTS AND SCIENCE COLLEGE', '69.3', 'B.SC (COMPUTER TECHNOLOGY)', '0', '0', '5', '7', '0', '0', '5', '1', '1', '0', '2016', '2017'),
('15MCL084', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '65.57', 'B.SC(COMPUTER TECHNOLOGY)', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL085', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'HOLY CROSS COLLEGE AUTONOMOUS', '79.5', 'BCA', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL086', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'TIRUPPUR KUMARAN COLLEGE FOR WOMENS', '74.28', 'BCA', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL087', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '65.6', 'B.SC', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL088', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'SREE SARASWATHI THYAGARAJA COLLEG ARTS &SCIENCE COLLEGE', '69.77', 'BSC(COMPUTER TECHNOLOGY)', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL089', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'BISHOP HEBER COLLEGE ', '75', 'BCA', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL090', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'TIRUPPUR KUMARAN COLLEGE FOR WOMENS', '65.09', 'B.SC(COMPUTER SCIENCE)', '0', '0', '7', '7', '0', '0', '70', '1', '1', '0', '2016', '2017'),
('15MCL091', 'CET', 'MANAGEMENT', 'placed', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE ', '78.55', 'BCA', '0', '0', '5', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL092', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'PARKS COLLEGE OF ARTS AND SCIENCE,TIRUPUR', '66', 'BSC(CS)', '0', '0', '5', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL093', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE ERODE ', '72', 'BCA', '0', '0', '5', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL094', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'J.K.K.NATTRAJA COLLEGE OF ARTS AND SCIENCE', '69.2', 'BSC(CS)', '0', '0', '5', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL095', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '77.6', 'BSC(CS)', '0', '0', '5', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL096', 'TANCET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SRI VASAVI COLLEGE', '72.49', 'BCA', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL097', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KAMBAN COLLEGE OF ARTS AND SCIENCE FOR WOMEN', '81.53', 'BCA', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL098', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'MUTHAYAMMAL COLLEGE OF ARTS&SCIENCE', '70', 'BCA', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL099', 'TANCET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NAVARASAM ARTS&SCIENCE COLLEGE FOR WOMEN', '69', 'BCA', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL100', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'SRI SARADA COLLEGE FOR WOMEN,SALEM', '77.84', 'BSC(CS)', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL101', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '66', 'BSC(CS)', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL102', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '67.73', 'BCA', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL103', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'KAAMADHENU ARTS AND SCIENCE COLLEGE, SATHY', '60.35', 'BSC(CS)', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL104', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'KAILASH WOMEN\'S COLLEGE,SALEM', '77.2', 'BCA', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL105', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'K.S.RANGASAMY COLLEGE OF ARTS AND SCIENCE,TIRUCHENGODE', '53.94', 'BSC (CS)', '0', '0', '6', '7', '0', '0', '7', '1', '1', '0', '2016', '2017'),
('15MCL106', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'RVS ARTS AND SCIENCE COLLEGE', '60', 'BCA', '0', '0', '6', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL108', 'TANCET', 'COUNSELLING', 'ENTREPRENEUR', 'yes', 'SRI VASAVI COLLEGE', '75.99', 'B.Sc(CS)', '0', '0', '6', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL110', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'N.M.S.S.VELLAICHAMY NADAR COLLEGE,NAGAMALAI,MADURAI.', '71.02', 'BCA', '0', '0', '6', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL111', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS&SCIENCE COLLEGE', '59.7', 'B.SC(CS)', '0', '0', '6', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL112', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SRI KRISHNA ARTS AND SCIENCE COLLEGE,KUNIYAMUTHUR,COIMBATORE.', '69.3', 'BSC(CS&APPLICATION)', '0', '0', '6', '7', '0', '0', '6', '1', '1', '0', '2016', '2017'),
('15MCL113', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOVT ARTS COLLEGE[MEN], KRISHNAGIRI', '65.57', 'BSC(CS)', '0', '0', '6', '7', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL114', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'KRISHNASAMY  COLLEGE  OF SCIENCE,ARTS&MANAGEMENT FOR WOMEN', '79.5', 'BCA', '0', '0', '6', '6', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL115', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'DR.SNS RAJALAKSHMI COLLEGE OF ARTS&SCIENCE', '74.28', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL116', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'PSG COLLEGE OF ARTS AND SCIENCE', '65.6', 'BSC INFORMATION TECHNOLOGY', '0', '0', '6', '6', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL117', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'TRINITY COLLEGE FOR WOMEN', '69.77', 'BCA', '0', '0', '6', '6', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL118', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'GOBI ARTS & SCIENCE COLLEGE', '75', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '6', '0', '0', '0', '2016', '2017'),
('15MCL119', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE  ERODE', '65.09', 'BCA', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL120', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'P.K.R ARTS COLLEGE FOR WOMEN,GOBI', '78.55', 'BCA', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL121', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'VELALAR COLLEGE OF ENGINEERING AND TECHNOLOGY', '66', 'BSC-IT', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL123', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOVINDAMMAL ADITANAR COLLEGE FOR WOMEN', '72', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL122', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGUENGINEERINGCOLLEGE', '69.2', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL124', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'SRI VASAVI COLLEGE, ERODE.', '77.6', 'BCA', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL125', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '72.49', 'COMPUTER TECHNOLOGY', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL126', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'DR.M.G.R CHOCKALINGAM ARTS COLLEGE ARNI', '81.53', 'BCA', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL127', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE ERODE', '70', 'BCA', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL128', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'PAVAI ARTS AND SCIENCE COLLEGE FOR WOMEN', '69.59', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL129', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS AND SCIENCE COLLEGE,ERODE', '69.97', 'BCA', '0', '0', '6', '6', '0', '0', '8', '0', '0', '0', '2016', '2017'),
('15MCL130', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'MAHARANI ATRS AND SCIENCE COLLEGE', '67.17', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017'),
('15MCL131', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '70.8', 'BSC(CT)', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017'),
('15MCL132', 'TANCET', 'COUNSELLING', 'PLACEMENT', 'yes', 'GOBI ARTS & SCIENCE COLLEGE', '60.3', 'B.Sc(IT)', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017'),
('15MCL133', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'NANDHA ARTS&SCIENCE COLLEGE', '64', 'BCA', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017'),
('15MCL134', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'KONGU ARTS AND SCIENCE COLLEGE', '75', 'BSC(CS)', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017'),
('15MCL135', 'CET', 'MANAGEMENT', 'PLACEMENT', 'yes', 'VELLALAR COLLEGE FOR WOMEN', '64', 'BSC(CT)', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017'),
('15MCL136', 'CET', 'MANAGEMENT', 'OTHERS', 'yes', 'TIRUPUR KUMARAN COLLEGE FOR WOMEN', '87.8', 'BCA', '0', '0', '6', '6', '0', '0', '5', '0', '0', '0', '2016', '2017');

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
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `name` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('prabhu b', '15mcl091', 'aurum tech', '22-07-2017', 'computer application');

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

--
-- Dumping data for table `sem`
--

INSERT INTO `sem` (`dept`, `sem`, `d`, `e`) VALUES
('computer application', 3, '2017-12-21', '2017-12-23');

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
('test/99896.xlsx', 1);

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
  `rollno` varchar(8) DEFAULT NULL,
  `fathername` varchar(20) DEFAULT NULL,
  `occupation` varchar(29) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `mobileno` varchar(13) DEFAULT NULL,
  `mail` varchar(34) DEFAULT NULL,
  `streetname` varchar(10) DEFAULT NULL,
  `villagename` varchar(16) DEFAULT NULL,
  `cityname` varchar(15) DEFAULT NULL,
  `statename` varchar(9) DEFAULT NULL,
  `caste` varchar(5) DEFAULT NULL,
  `comefrom` varchar(11) DEFAULT NULL,
  `pincode` varchar(7) DEFAULT NULL,
  `language` varchar(14) DEFAULT NULL,
  `skills` varchar(105) DEFAULT NULL,
  `pys` varchar(3) DEFAULT NULL,
  `pysreason` varchar(9) DEFAULT NULL,
  `edugap` varchar(6) DEFAULT NULL,
  `edureason` varchar(9) DEFAULT NULL,
  `sslcregno` varchar(9) DEFAULT NULL,
  `sslcschool` varchar(64) DEFAULT NULL,
  `sslccertificate` varchar(15) DEFAULT NULL,
  `sslcboard` varchar(14) DEFAULT NULL,
  `sslcstart` varchar(9) DEFAULT NULL,
  `sslcend` varchar(7) DEFAULT NULL,
  `highedu` varchar(7) DEFAULT NULL,
  `hscregno` varchar(15) DEFAULT NULL,
  `hscschool` varchar(59) DEFAULT NULL,
  `hsccertificate` varchar(17) DEFAULT NULL,
  `hscboard` varchar(10) DEFAULT NULL,
  `hscstart` varchar(8) DEFAULT NULL,
  `hscend` varchar(6) DEFAULT NULL,
  `hscspec` varchar(16) DEFAULT NULL,
  `hsccutoff` varchar(9) DEFAULT NULL,
  `crank` varchar(5) DEFAULT NULL,
  `dregno` varchar(6) DEFAULT NULL,
  `dcollege` varchar(8) DEFAULT NULL,
  `dcertificate` varchar(12) DEFAULT NULL,
  `dboard` varchar(6) DEFAULT NULL,
  `dstart` varchar(6) DEFAULT NULL,
  `dend` varchar(4) DEFAULT NULL,
  `dspec` varchar(5) DEFAULT NULL,
  `dcutoff` varchar(7) DEFAULT NULL,
  `dcrank` varchar(6) DEFAULT NULL,
  `finish` varchar(6) DEFAULT NULL,
  `sslcmark` varchar(8) DEFAULT NULL,
  `hscmark` varchar(7) DEFAULT NULL,
  `hscper` varchar(6) DEFAULT NULL,
  `sslcper` varchar(7) DEFAULT NULL,
  `dper` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentpersonal`
--

INSERT INTO `studentpersonal` (`rollno`, `fathername`, `occupation`, `dob`, `gender`, `mobileno`, `mail`, `streetname`, `villagename`, `cityname`, `statename`, `caste`, `comefrom`, `pincode`, `language`, `skills`, `pys`, `pysreason`, `edugap`, `edureason`, `sslcregno`, `sslcschool`, `sslccertificate`, `sslcboard`, `sslcstart`, `sslcend`, `highedu`, `hscregno`, `hscschool`, `hsccertificate`, `hscboard`, `hscstart`, `hscend`, `hscspec`, `hsccutoff`, `crank`, `dregno`, `dcollege`, `dcertificate`, `dboard`, `dstart`, `dend`, `dspec`, `dcutoff`, `dcrank`, `finish`, `sslcmark`, `hscmark`, `hscper`, `sslcper`, `dper`) VALUES
('15MCR001', 'MARIMUTHU.T', 'TEXTILES', '6/11/1996', 'female', '9874512565', 'archanadevi0195@gmail.com', 'ramnager', 'kumaran kobil', 'nalaiyampalayam', 'tamilnadu', 'bc', 'dayschooler', '638002', 'tamil,englidh.', 'C,C++,ANDROI,JAVA,WEB DESIGNIGN', 'no', '', 'no', '', '151515', 'KALAIMAGAL KALVI NILAYAM GIRLS HR SEC SCHOOL', '312441', 'SSLC', '12-Jun', '13-Jun', 'bsc', '373601', 'A.E.T MATRICULATION HIGHER SEC. SCHOOL', '6823517', 'stateboard', '14-Jun', '15-Jun', 'computer science', '121', '1452', '', '', '0', '', '', '', '', '0', '0', '1', '450', '882', '74', '90', '0'),
('15MCR002', 'N.VENUGOPAL', 'MANAGER', '6/11/1996', 'male', '9874512565', 'gokulraj878@gmail.com', 'ramnager', 'karattuer', 'erode', 'Tamilnadu', 'bc', 'dayschooler', '638004', 'tamil,englidh.', 'C,C++,WEBDESIGNING', 'no', '', 'no', '', '109555', 'ATM HIGHER SEC SCHOOL', '313360', 'SSLC', '12-Jul', '13-Jun', 'HSC', '364282', 'ATM HIGHER SEC SCHOOL', '6771614', 'stateboard', '14-Jul', '13-Jun', 'computer science', '180', '2012', '', '', '0', '', '', '', '', '0', '0', '0', '450', '885', '74', '90', '0'),
('15MCR003', 'SEENUVASAN.A', 'FARMER', '6/12/1996', 'female', '9874512565', 'janavivek994@gmail.com', 'ramnager', 'kallipatti', 'anthiur', 'tamilnadu', 'bc', 'dayschooler', '608801', 'tamil,englidh.', 'C,C++,ANROID,HTML,PHP,WEB DESIGNING,PHOTOSHOP,JAVA', 'no', '', 'no', '', '154545', 'ST.JOSEPH\'S HIGHER SECONDARY SCHOOL,CUDDALORE', '661975', 'SSLC', '12-Aug', '11-Jun', 'hsc', '656027', 'ST.JOSEPH`S HIGHER SECONDARY SCHOOL,CUDDALORE', '7021637', 'stateboard', '14-Aug', '13-Jun', 'computer science', '150', '2545', '', '', '0', '', '', '', '', '0', '0', '1', '430', '830', '73', '84', '0'),
('15MCR004', 'RAMASAMY.M', 'BUSINESS', '6/13/1996', 'female', '9874512565', 'radhikacs36@gmail.com', 'ramnager', 'thalaivar puram', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '621106', 'tamil,englidh.', 'C,C++,ANDROID,JAVA,WEB DESIGNIGN,PHOTO SHOP,SQL', 'no', '', 'no', '', '184547', 'GOVERNMENT HIGHER SECONDARY SCHOOL,KOLAKKANATHAM', '491435', 'SSLC', '12-Sep', '11-Jun', 'hsc', '514113', 'GOVERNMENT HIGHER SECONDARY SCHOOL,KOLAKKANATHAM', '6916865', 'stateboard', '14-Sep', '13-Jun', 'computer science', '180', '1520', '', '', '0', '', '', '', '', '0', '0', '1', '430', '883', '74', '86', '0'),
('15MCR006', 'PERUMALRAJU.A.M', 'BUSINESS', '6/14/1996', 'female', '9874512565', 'selvan315731@gmail.com', 'ramnager', 'karattadipalayam', 'bavani', 'Tamilnadu', 'bc', 'dayschooler', '638476', 'tamil,englidh.', 'C,C++,JAVA,WEB DESIGN,SQL,ANDROID,VB,VC++,PHOTO SHOP,VIDEO EDITING', 'no', '', 'no', '', '109494', 'KAMBAN KALVI NIAIYAM,GOBICHETTIPALAYAM', '298687', 'SSLC', '12-Oct', '11-Jun', 'HSC', '350570', 'KAMBAN KALVI NIAIYAM,GOBICHETTIPALAYAM', '6744455', 'stateboard', '14-Oct', '13-Jun', 'computer science', '192', '1221', '', '', '0', '', '', '', '', '0', '0', '1', '400', '882', '74', '80', '0'),
('15MCL007', 'RAVI.V', 'SECURITY', '6/15/1996', 'male', '9874512565', 'abilashark94@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '635216', 'tamil,englidh.', 'C,C++,JAVA,HTML', 'no', '', 'no', '', '192545', 'CONCORDIA HIGHER SECONDARY SCHOOL  BARGUR', '391416', 'SSLC', '12-Nov', '11-Jun', 'hsc', '672200 ,160146 ', 'GOVERNMENT HIGHER SECONDARY SCHOOL VELAKALNATHAM', '6079597, 6318880', 'stateboard', '14-Nov', '13-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '401', '880', '73', '90', '0'),
('15MCL008', 'PALANI SAMY K', 'BUSINESS', '6/16/1996', 'male', '9874512565', 'abipmca@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638701', 'tamil,englidh.', 'C,WEBDESIGN,PHTOSHOP', 'no', '', 'no', '', '192545', 'ADHARSH VIDHYALAIYA MATRIC.HR.SEC.SCHOOL-ANTHIYUR', '839561', 'SSLC', '12-Dec', '11-Jul', 'hsc', '359962', 'ADHARSH VIDHYALAIYA HIGHER SEC SCHOOL-ANTHIYUR', '6766850', 'stateboard', '14-Dec', '13-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '402', '881', '74', '70', '0'),
('15MCL009', 'VIJAYA KUMAR.C', 'MACHANIC', '6/17/1996', 'male', '9874512565', 'ambika.vgm@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641654', 'tamil,englidh.', 'C,C++,JAVA,WEB PROGRAMMING,PHOTO SHOP,PHP,SQL', 'no', '', 'no', '', '192545', 'ST.THOMAS GIRLS HIGHER SEC.SCHOOL,AVINASHI', '1254564', 'SSLC', '13-Jan', '11-Aug', 'hsc', '221287', 'ST.THOMAS GIRLS HIGHER SEC. SCHOOL,AVINASHI', '7681065', 'stateboard', '15-Jan', '13-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '403', '882', '74', '71', '0'),
('15MCL010', 'PONNUSAMY.K', 'REAL ESTATE', '6/18/1996', 'male', '9874512565', 'anandh51295@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638183', 'tamil,englidh.', 'C,C++,C#,JAVA,PHP,SQL,PHOTOSHOP,ANDROID,HTML,ARDUINO UNO,MS OFFICE,VISUAL STUDIO,HARDWARE TROUBLESHOOTING', 'no', '', 'no', '', '192545', 'SRI RAGAVENDRA MATRIC.HR.SEC.SCHOOL,KOMARAPALAYAM', '767017', 'SSLC', '13-Feb', '11-Sep', 'hsc', '356495', 'RELIANCE MATRIC.HR.SEC.SCHOOL,KUPPANDAPALAYAM', '7806763', 'stateboard', '15-Feb', '13-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '404', '883', '74', '72', '0'),
('15MCL011', 'GANESAN G', 'ELECTRICIAN', '6/19/1996', 'male', '9874512565', 'anbalagananbu90@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '635104', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVT BOYS HSS SCHOOL BARGUR,KRISHNAGIRI,635104', '1414741', 'SSLC', '13-Mar', '11-Oct', 'hsc', '379232', 'GOVT BOYS HSS SCHOOL BARGUR,KRISHNAGIRI,635104', '7835262', 'stateboard', '15-Mar', '13-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '405', '884', '75', '73', '0'),
('15MCL012', 'RAVICHANDRAN .M.P', 'FARMER', '6/20/1996', 'male', '9874512565', 'anutechwizard@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '621210', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVT GIRLS HSS SCHOOL,METTUPALAYAM', '1504649', 'SSLC', '13-Apr', '11-Nov', 'hsc', '453465', 'SOWDAMBIKAA  MATRIC HSS SCHOOL,THURAIYUR', '7897477', 'stateboard', '15-Apr', '13-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '406', '885', '76', '74', '0'),
('15MCL013', 'RAVI.M', 'WEAVER', '6/21/1996', 'male', '9874512565', 'saravananarul13@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638312', 'tamil,englidh.', 'C,C++,C#,PHP,ANROID,HTML,VB', 'no', '', 'no', '', '192545', 'GOVT HIGHER SECONDARY SCHOOL,METTUPPALAYAM', '1312035', 'SSLC', '13-May', '11-Dec', 'hsc', '275261', 'GOVT BOYS HSS SCHOOL,KAVINDAPADI', '7730881', 'stateboard', '15-May', '13-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '407', '886', '77', '75', '0'),
('15MCL014', 'GUNASEKARAN.S', 'GOLD SMITH(KULLI)', '6/22/1996', 'male', '9874512565', 'arunbhuvanesh29@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638009', 'tamil,englidh.', 'C,C++,PHP,ANDROID', 'no', '', 'no', '', '192545', 'SENGUNTHAR HR SEC SCHOOL,ERODE.', '1325448', 'SSLC', '13-Jun', '12-Jan', 'hsc', '289368', 'SENGUNTHAR HR SEC SCHOOL,ERODE.', '7748481', 'stateboard', '15-Jun', '14-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '408', '887', '78', '76', '0'),
('15MCL015', 'KALYANSUNDARAM S.A', 'WEAVER', '6/23/1996', 'male', '9874512565', 'arun1997bca@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638109', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVT BOYS HSS SCHOOL SIVAGIRI,ERODE', '1332161', 'SSLC', '13-Jul', '12-Feb', 'hsc', '297771', 'GOVT BOYS HSS SCHOOL SIVAGIRI,ERODE', '7751257', 'stateboard', '15-Jul', '14-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '409', '888', '79', '77', '0'),
('15MCL016', 'SRINIVASAN.G', 'HIGHWAYS(GOVT)', '6/24/1996', 'male', '9874512565', 'divyasritcr@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '628215', 'tamil,englidh.', 'C,C++,JAVA,VISUAL BASIC,FLASH,DREAMWEAVER,PHOTOSHOP,SQL,MS OFFICE,HTML,', 'no', '', 'no', '', '192545', 'SENTHIL MURUGAN GOVT GIRLS HR SEC SCHOOL', '1082859', 'SSLC', '13-Aug', '12-Mar', 'hsc', '82989', 'SENTHIL MURUGAN GOVTGIRLS HR SEC SCHOOL', '7552501', 'stateboard', '15-Aug', '14-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '410', '889', '76', '78', '0'),
('15MCL017', 'THANGAM.K', 'LAB ASSISTANT', '6/25/1996', 'male', '9874512565', 'ramyabalathangam@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '628215', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SENTHIL MURUGAN GOVT GIRLS HR SEC SCHOOL', '1082905', 'SSLC', '13-Sep', '12-Apr', 'hsc', '82990', 'SENTHIL MURUGAN GOVTGIRLS HR SEC SCHOOL', '7552502', 'stateboard', '15-Sep', '14-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '411', '890', '76', '79', '0'),
('15MCL018', 'DURAISAMY.C', 'LOAD MAN', '6/26/1996', 'male', '9874512565', 'balaji212121@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638002', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'RAILWAY COLONY MUNICIPAL HR SEC SCHOOL', '314494', 'SSLC', '13-Oct', '12-May', 'hsc', '364767', 'RAILWAY COLONY MUNICIPAL HR SEC SCHOOL', '6771096', 'stateboard', '15-Oct', '14-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '412', '891', '76', '80', '0'),
('15MCL019', 'GANESHAN.K.M', 'FARMER', '6/27/1996', 'male', '9874512565', 'balamurugavel.ganeshan@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638 152', 'tamil,englidh.', 'C,C++,JAVA,PHOTO SHOP,', 'no', '', 'no', '', '192545', 'RAJENDRAN MATRIC HIGHER SEC SCHOOL', '758585', 'SSLC', '13-Nov', '12-Jun', 'hsc', '297671', 'THAMARAI MATRIC HIGHER  SEC  SCHOOL', '7751157', 'stateboard', '15-Nov', '14-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '413', '892', '76', '81', '0'),
('15MCL020', 'N.JAYAVEL', 'FARMER', '6/28/1996', 'male', '9874512565', 'baskarbca13@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '624612', 'tamil,englidh.', 'C,C++,JAVA,PHOTOSHOP,VISUAL BASIC,ORACLE', 'no', '', 'no', '', '192545', 'SHANTHI NIKETHAN HIGHER SEC SCHOOL', '1209682', 'SSLC', '13-Dec', '12-Jul', 'hsc', '189834', 'SHANTHI NIKETHAN  HIGHER SEC SCHOOL', '7652312', 'stateboard', '15-Dec', '14-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '414', '893', '76', '82', '0'),
('15MCL021', 'NATARAJ.R', 'TAILOR', '6/29/1996', 'male', '9874512565', 'baskaranatarajselvi@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641607', 'tamil,englidh.', 'PHOTOSHOP,MAYA,HTML,JAVA,C,C++,SQL', 'no', '', 'no', '', '192545', 'C A MPL B HSS', '272133', 'SSLC', '14-Jan', '12-Aug', 'hsc', '307150', 'GOVERNMENT BOYS HIGHER SECONDARY SCHOOL', '6717250', 'stateboard', '16-Jan', '14-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '415', '894', '76', '83', '0'),
('15MCL022', 'VELUSAMY.P', 'FARMER', '6/30/1996', 'male', '9874512565', 'vbhuvanesh008@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638051', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVT HSS MUKASIANUMANPALLI', '321208', 'SSLC', '14-Feb', '12-Sep', 'hsc', '370496', 'GOVT HSS MUKASIANUMANPALLI', '6791960', 'stateboard', '16-Feb', '14-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '416', '895', '76', '84', '0'),
('15MCL023', 'AROKIA RAJ.S', 'ELECTRICIAN', '7/1/1996', 'male', '9874512565', 'catherinearokiaraj@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638012', 'tamil,englidh.', 'C,C++,VB.NET', 'no', '', 'no', '', '192545', 'A.E.T MATRIC HIGHER SECONDARY SCHOOL', '757607', 'SSLC', '14-Mar', '12-Oct', 'hsc', '291143', 'VELLALAR MATRIC HIGHER SECONDARY SCHOOL', '7746163', 'stateboard', '16-Mar', '14-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '417', '896', '76', '85', '0'),
('15MCL024', 'MOHAN RAJ.M', 'BUSINESS', '7/2/1996', 'male', '9874512565', 'dayaanandmohan@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638008', 'tamil,englidh.', 'C,C++', 'no', '', 'no', '', '192545', 'BHARATHI VIDYA BHAVAN', '1924499', 'SSLC', '14-Apr', '12-Nov', 'hsc', '350159', 'VIDYAA VIKAS BHSS V.PATTI', '7833748', 'stateboard', '16-Apr', '14-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '418', '897', '76', '86', '0'),
('15MCL025', 'S.SUDHAKAR', 'CARPENTER', '7/3/1996', 'male', '9874512565', 'ksdhandapani96@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638151', 'tamil,englidh.', 'C,C++,JAVA,PHOTOSHOP,ORACLE,HTML,PHP,MS OFFICE', 'no', '', 'no', '', '192545', 'SSV HIGHER SECONDARY SCHOOL,KODUMUDI', '1333620', 'SSLC', '14-May', '12-Dec', 'hsc', '297421', 'SSV HIGHER SECONDAY SCHOOL,KODUMUDI', '774496', 'stateboard', '16-May', '14-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '419', '898', '76', '87', '0'),
('15MCL026', 'K.VARADHARAJ', 'LORRY DRIVER', '7/4/1996', 'male', '9874512565', 'dharanyacharu@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '637304', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVT GIRLS HSS TIRUCHENGODE', '1387571', 'SSLC', '14-Jun', '13-Jan', 'hsc', '357379', 'GANDHI MATRIC HSS N.KANDAMPALAYAM', '7813601', 'stateboard', '16-Jun', '15-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '420', '899', '76', '88', '0'),
('15MCL028', 'D.SUBRAMANIAN', 'TELECOM MECHANIC', '7/6/1996', 'male', '9874512565', 'dineshsubramanian1043@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '613007', 'tamil,englidh.', 'C,C++,JAVA,VB.NET,ADOBE AFTER EFFECTS,PHOTOSHOP,ORACLE,HTML,PHP,MS OFFICE,DREAM VIEWER', 'no', '', 'no', '', '192545', 'SSM LAKSHMI AMMAL MATRIC HR SEC SCHOOL,KOMARAPALAYAM.', '767196', 'SSLC', '14-Jul', '13-Feb', 'hsc', '356424', 'RELIANCE MATRIC HR.SEC.SCHOOL,KUPPANDAPALAYAM', '7806692', 'stateboard', '16-Jul', '15-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '421', '900', '80', '89', '0'),
('15MCL029', 'RADHA KRISHNAN.R', 'BUSINESS', '7/7/1996', 'male', '9874512565', 'deva25rkm@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '636003', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KALYANASUNDARAM HIGHER SECONDARY SCHOOL', '1596944', 'SSLC', '14-Aug', '13-Mar', 'hsc', '534561', 'DON BOSCO MATRIC HIGHER SECONDARY SCHOOL', '7971740 , 8298974', 'stateboard', '16-Aug', '15-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '422', '901', '80', '90', '0'),
('15MCL030', 'THANGAMANI.S', 'FARMER', '7/8/1996', 'male', '9874512565', 'gayathrikec1994@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '605757', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SRI VIDYA MANDIR SECONDARY SCHOOL', '4113260', 'CBSE', '14-Sep', '13-Apr', 'hsc', '398711', 'SHRI SWAMY MARTRICULATION HIGHER SECONDARY SCHOOL', '6843776', 'stateboard', '16-Sep', '15-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '423', '902', '80', '91', '0'),
('15MCL031', 'SUBARAMANI.S', 'FARMER', '7/9/1996', 'male', '9874512565', 's.gobalsoft@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638101', 'tamil,englidh.', 'C,C++,JAVA,ASP.NET', 'no', '', 'no', '', '192545', 'ANGAVAI SANGAVAI GOVT GIRLS HR SEC SCHOOL,TIRUKOILUR', '618237', 'SSLC', '14-Oct', '13-May', 'hsc', '617649', 'ANGAVAI SANGAVAI GOVT GIRLS HR SEC SCHOOL,TIRUKOILUR', '7020858', 'stateboard', '16-Oct', '15-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '424', '903', '80', '92', '0'),
('15MCL032', 'A.SOMASUNDARAM', 'FARMER', '7/10/1996', 'male', '9874512565', 'gowthamns712@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638452', 'tamil,englidh.', 'C,C++,JAVA,PHOTOSHOP', 'no', '', 'no', '', '192545', 'GOVT HIGH SCHOOL,VADUGAPATTI', '1331757', 'SSLC', '14-Nov', '13-Jun', 'hsc', '295810', 'GOVTMENT HIGHER SECONDARY SCHOOL,ARACHALUR', '7760610', 'stateboard', '16-Nov', '15-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '425', '904', '80', '93', '0'),
('15MCL033', 'K.RATHINAM', 'DRIVER', '7/11/1996', 'male', '9874512565', 'gowtham3586@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '637302', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'AMALA MATRIC HR SER SCH,GOBICHETTIPALAYAM', '1310350', 'SSLC', '14-Dec', '13-Jul', 'hsc', '274332', 'AMALA HR SEC SCHOOL,GOBICHETTIPALAYAM', '7730042', 'stateboard', '16-Dec', '15-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '426', '905', '80', '94', '0'),
('15MCL034', 'SUBRAMANIYAM', 'FARMER', '7/12/1996', 'male', '9874512565', 'cloudgowtham95@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638103', 'tamil,englidh.', 'C,C++,JAVA,PHP,HTML,PYTHON,PHOTOSHOP,SQL,MS OFFICE', 'no', '', 'no', '', '192545', 'SSM LAKSHMI AMMAL MATRIC HR SEC SCHOOL,KOMARAPALAYAM.', '767225', 'MATRICULATION ', '15-Jan', '13-Aug', 'hsc', '360348', 'SSM LAKSHMI AMMAL MATRIC HR SEC SCHOOL,KOMARAPALAYAM', '7807640', 'stateboard', '17-Jan', '15-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '427', '906', '80', '95', '0'),
('15MCL035', 'KITTUSAMY', 'BUSINESS', '7/13/1996', 'male', '9874512565', 'gunagunasekar1996@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638103', 'tamil,englidh.', 'C,C++,JAVA,', 'no', '', 'no', '', '192545', 'NRKN,HIGH SCHOOL,KUNNATHUR', '1261434', 'SSLC', '15-Feb', '13-Sep', 'hsc', '227371', 'SKN MATRICULATION HIGHER SECONDARY SCHOOL', '7682628', 'stateboard', '17-Feb', '15-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '428', '907', '80', '96', '0'),
('15MCL036', 'THANGAMUTHU.S', 'DRIVER', '7/14/1996', 'male', '9874512565', 'harikongu26@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638107', 'tamil,englidh.', 'C,C++', 'no', '', 'no', '', '192545', 'NRKN,HIGH SCHOOL,KUNNATHUR', '1261435', 'SSLC', '15-Mar', '13-Oct', 'hsc', '299686', 'GOVERNMENT HIGH SECONDARYDCHOOL,SENNAPURAM.', '7765089', 'stateboard', '17-Mar', '15-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '429', '908', '80', '97', '0'),
('15MCL037', 'K.ANNAMALAI', 'FARMER', '7/15/1996', 'male', '9874512565', 'hariharancri@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '636903', 'tamil,englidh.', 'C,C++', 'no', '', 'no', '', '192545', 'BHARATHI KALVI NILAYAM GOVT HR SEC SCHOOL', '316637', 'SSLC', '15-Apr', '13-Nov', 'hsc', '368420', 'BHARATHI KALVI NILAYAM GOVT HR SEC SCHOOL', '6778317', 'stateboard', '17-Apr', '15-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '430', '909', '80', '98', '0'),
('15MCL038', 'TARACHAND SUTHAR', 'BUSINESS', '7/16/1996', 'male', '9874512565', 'indirasuthar@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638003', 'tamil,englidh.', 'C,C++,JAVA,HTML,MS OFFICE,SQL,ANDROID', 'no', '', 'no', '', '192545', 'ST.MARY\'S HR.SEC.SCHOOL.HARUR.DHARUMAPURI', '410320', 'SSLC', '15-May', '13-Dec', 'hsc', '446793', 'GOVT BOYS HR.SEC.SCHOOL.HARUR.DHARUMAPURI', '5875392', 'stateboard', '17-May', '15-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '431', '910', '80', '99', '0'),
('15MCL039', 'S.R.ESWARAN', 'FARMER', '7/17/1996', 'male', '9874512565', 'inthumathimca@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '642113', 'tamil,englidh.', 'C,C++,JAVA,MS OFFICE,PHOTOSHOP', 'no', '', 'no', '', '192545', 'CHRISTHU JYOTHI MATRIC HR SEC SCHOOL', '881438', 'MATRICULATION', '15-Jun', '14-Jan', 'hsc', '321602', 'CHRISHTU JYOTHI MATRIC HR SEC SCHOOL', '4310457', 'stateboard', '17-Jun', '16-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '432', '911', '80', '60', '0'),
('15MCL040', 'SELVSRAJ.P', 'FARMER', '7/18/1996', 'male', '9874512565', 'jagavaluable@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638106', 'tamil,englidh.', 'C,C++,JAVA', 'no', '', 'no', '', '192545', 'SRI VISALAKSHI GIRLS HR.SEC.SCHOOL', '1267292', 'STATE BOARD', '15-Jul', '14-Feb', 'hsc', '224940', 'SRI GVG VISALAKSHI HR.SEC.SCHOOL', '7689233', 'stateboard', '17-Jul', '16-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '433', '912', '80', '61', '0'),
('15MCL041', 'JAYABALAN.S', 'FARMER', '7/19/1996', 'male', '9874512565', 'janabalan.a96@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '621210', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GANASAMBANTHAYAR.HR.SEC.SCHOOL', '1920941', 'STATE BOARD', '15-Aug', '14-Mar', 'hsc', '230010', 'GANASAMBANTHAYAR.HR.SEC.SCHOOL', '7693826', 'stateboard', '17-Aug', '16-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '434', '913', '80', '62', '0'),
('15MCL042', 'L.PRITHIVIRAJ', 'BUSINESS', '7/20/1996', 'male', '9874512565', 'jithuprisha@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641301', 'tamil,englidh.', 'MS-OFFICE,HTML,WEB DESIGNING ,PHOTOSHOP ,COREL DRAW,DREAM VIEWER ,FLASH ,PHP,ANDROID.', 'no', '', 'no', '', '192545', 'SRI MAHABHARATHI HR.SEC SCHOOL', '1398767', 'SSLC', '15-Sep', '14-Apr', 'hsc', '338901', 'SRI MAHABHARATHI HR.SEC SCHOOL', '7788821', 'stateboard', '17-Sep', '16-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '435', '914', '80', '63', '0'),
('15MCL043', 'S.V.SUNDARAMOORTHY', 'POWER LOOM WORKER ', '7/21/1996', 'male', '9874512565', 'jothikrish13j@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638008', 'tamil,englidh.', 'C,C++,JAVA,VB.NET,ASP.NET,MS OFFICE,PHOTOSHOP,COREL DRAW,HTML', 'no', '', 'no', '', '192545', 'MADONNA MATRIC HR.SEC.SCHOOL', '753111', 'MATRICULATION ', '15-Oct', '14-May', 'hsc', '259782', 'VIVEKAM MATRIC HR.SEC.SCHOOL', '7717293', 'stateboard', '17-Oct', '16-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '436', '915', '80', '64', '0'),
('15MCL044', 'M.RAJENDRAN', 'FARMER', '7/22/1996', 'male', '9874512565', 'kabilan182@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '621008', 'tamil,englidh.', 'C,C++,VIDEO EDITING', 'no', '', 'no', '', '192545', 'KRISHNAVENI GIRLS GOVT HR.SEC.SCHOOL', '1389918', 'SSLC', '15-Nov', '14-Jun', 'hsc', '355377', 'KRISHNAVENI GIRLS GOVT HR.SEC.SCHOOL', '7802511', 'stateboard', '17-Nov', '16-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '437', '916', '80', '65', '0'),
('15MCL045', 'SAKTHIVEL.S', 'DRIVER', '7/23/1996', 'male', '9874512565', 'kalai.s111@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '636306', 'tamil,englidh.', 'VB,C,C++', 'no', '', 'no', '', '192545', 'ZAMINDAR\'S HR,SEC.SCHOOL', '1507237', 'SSLC', '15-Dec', '14-Jul', 'hsc', '452685', 'ZAMINDAR\'S HIR SCE SCHOOL', '7890768', 'stateboard', '17-Dec', '16-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '438', '917', '80', '66', '0'),
('15MCL046', ' RADHA KRISHNAN. K.G', 'BUSINESS', '7/24/1996', 'male', '9874512565', 'karthiga731@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638102', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVT HSS CHINNAPPAMPATTI', '1346327', 'SSLC', '16-Jan', '14-Aug', 'hsc', '311993', 'GOVT HSS CHINNAPPAMPATTI', '7777339', 'stateboard', '18-Jan', '16-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '439', '918', '80', '67', '0'),
('15MCL047', 'K.PALANIVEL', 'FARMER', '7/25/1996', 'male', '9874512565', 'karthikpalanivelk@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '606202', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GRACE MATRIC HR.SEC SCHOOL', '758128', 'MATRICULATION', '16-Feb', '14-Sep', 'hsc', '293576', 'GRACE MATRIC HR.SEC SCHOOL', '7750555', 'stateboard', '18-Feb', '16-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '440', '919', '80', '68', '0'),
('15MCL048', 'K.VELUSAMY', 'FARMER', '7/26/1996', 'male', '9874512565', 'karuppusamytvgs@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638109', 'tamil,englidh.', 'C/C++,JAVA,MS-OFFICE', 'no', '', 'no', '', '192545', 'MOUNT CARMAL MATRIC HIGHER SECONDARY SCHOOL', '809453', 'MATRICULATION', '16-Mar', '14-Oct', 'hsc', '575776', 'MOUNT CARMAL MATRIC HIGHER SECONDARY SCHOOL', '8019061', 'stateboard', '18-Mar', '16-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '441', '920', '80', '69', '0'),
('15MCL049', 'BALAKRISHNAN.M', 'BUSSINESS', '7/27/1996', 'male', '9874512565', 'kavinviper@mail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638111', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT  BOYS HIGHER SECONDARY SCHOOL,SIVAGIRI', '1332170', 'SSLC', '16-Apr', '14-Nov', 'hsc', '297782', 'GOVERNMENT  BOYS HIGHER SECONDARY SCHOOL,SIVAGIRI', '7751268', 'stateboard', '18-Apr', '16-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '442', '921', '81', '70', '0'),
('15MCL050', 'D.GANAPATHY', 'AGRICULTURE', '7/28/1996', 'male', '9874512565', 'kavinprasath96@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638152', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KONGU VELLALAR MATRICULATION HIGHER SEONDARY SCHOOL', '1920910', 'SSLC', '16-May', '14-Dec', 'hsc', '229844', 'KONGU VELLALAR MATRICULATION HIGHER SECONDARY SCHOOL', '7693660', 'stateboard', '18-May', '16-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '443', '922', '81', '71', '0'),
('15MCL051', 'A.THANGARAJ', 'BUSINESS', '7/29/1996', 'male', '9874512565', 'kavineshthangaraj@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '637302', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SRI SANKARA VIDYASALA MATRICULATION HIGHER SECONDARY SCHOOL', '758699', 'MATRICULATION', '16-Jun', '15-Jan', 'hsc', '297687', 'THAMARAI MATRICULATION HIGHER SECONDARY SCHOOL', '7751173', 'stateboard', '18-Jun', '17-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '444', '923', '81', '72', '0'),
('15MCL052', 'N.P.DEVARAJ', 'CONDUCTOR', '7/30/1996', 'male', '9874512565', 'ndkavin@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638101', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SSM LAKSHMIAMMAL MATRIC HR SEC SCHOOL', '767260', 'MATRICULATION', '16-Jul', '15-Feb', 'hsc', '360350', 'SSM LAKSHMIAMMAL MATRIC HR SEC SCHOOL', '7807642', 'stateboard', '18-Jul', '17-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '445', '924', '81', '73', '0'),
('15MCL053', 'M.SUBRAMANIAM', 'DY.TAHSILDAR', '7/31/1996', 'male', '9874512565', 'skeerthanasubramaniam@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '637203', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '1331860', 'SSLC', '16-Aug', '15-Mar', 'hsc', '295947', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '7760670', 'stateboard', '18-Aug', '17-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '446', '925', '81', '74', '0'),
('15MCL054', 'S.DURAI', 'DRIVER', '8/1/1996', 'male', '9874512565', 'kiruthishruthi@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638455', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GANDHI HIGHER SECONDARY SCHOOL', '1395227', 'SSLC', '16-Sep', '15-Apr', 'hsc', '357317', 'GANDHI HIGHER SECONDARY SCHOOL', '7813539', 'stateboard', '18-Sep', '17-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '447', '926', '81', '75', '0'),
('15MCL055', 'A.M.MANI', 'FARMER', '8/2/1996', 'male', '9874512565', 'kiruthikamn@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638455', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT GIRLS HIGHER SECONDARY SCHOOL', '1312105', 'SSLC', '16-Oct', '15-May', 'hsc', '274982', 'GOVERNMENT GIRLS HIEHER SECONDARY SCHOOL', '7730657', 'stateboard', '18-Oct', '17-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '448', '927', '81', '76', '0'),
('15MCL056', 'S.INNAYATHULA BABU', 'SALES MANAGER', '8/3/1996', 'male', '9874512565', 'kishorekhankk@live.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638002', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '1312392', 'SSLC', '16-Nov', '15-Jun', 'hsc', '275242', 'TNK MATRIC HR SEC SCHOOL', '7730862', 'stateboard', '18-Nov', '17-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '449', '928', '81', '77', '0'),
('15MCL057', 'N.SANKARAPPAN', 'FARMER', '8/4/1996', 'male', '9874512565', 'krishnapriyadhanam@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '628302', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'ASHRAM MATRIC HR SEC SCHOOL', '756498', 'MATRICULATION', '16-Dec', '15-Jul', 'hsc', '291352', 'ASHRAM MATRIC HR SEC SCHOOL', '7745423', 'stateboard', '18-Dec', '17-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '450', '929', '81', '78', '0'),
('15MCL058', 'E.GOVINDARAJ', 'LABOURER', '8/5/1996', 'male', '9874512565', 'gkumaravel06@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '620102', 'tamil,englidh.', 'HTML,JAVA,CSS,ANDROID', 'no', '', 'no', '', '192545', 'HINDU NADARS HIGHER SECONDARY SCHOOL', '1068809', 'SSLC', '17-Jan', '15-Aug', 'hsc', '69048', 'KAMMAVAR GIRLS HIGHER SECONDARY SCHOOL', '7544445', 'stateboard', '19-Jan', '17-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '451', '930', '81', '79', '0'),
('15MCL059', 'R.KUMAR', 'FARMER', '8/6/1996', 'male', '9874512565', 'kurinjinathan95@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '620102', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'BISHOP HEBER HR. SEC. SCHOOL', '1519952', 'SSLC', '17-Feb', '15-Sep', 'hsc', '', 'BISHOP HEBER HR. SEC. SCHOOL', '', 'stateboard', '19-Feb', '17-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '452', '931', '81', '80', '0'),
('15MCL060', 'C.SURESH', 'BUSINESS', '8/7/1996', 'male', '9874512565', 'lavanyakiruthiga1996@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638004', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'VIGNESH SRI RENGA MATRICULATION HR SEC SCHOOL', '789580', 'MATRICULATION', '17-Mar', '15-Oct', 'hsc', '465809', 'BOYS HIGHER SEC SCHOOL', '7938656', 'stateboard', '19-Mar', '17-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '453', '932', '81', '81', '0'),
('15MCL061', 'M.VAIRAVEL', 'SALESMAN', '8/8/1996', 'male', '9874512565', 'loganyavairam@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638003', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SRI AMMAN MATRICULATION HR SEC SCHOOL', '1924626', 'MATRICULATION', '17-Apr', '15-Nov', 'hsc', '291587', 'VELLALAR MATRICULATION HR SEC SCHOOL', '7746603', 'stateboard', '19-Apr', '17-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '454', '933', '81', '82', '0'),
('15MCL062', 'M.MARIMUTHU', 'FARMER', '8/9/1996', 'male', '9874512565', 'madhanrsp@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638115', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KALAIMAGAL KALVI NILAYAM HR SEC SCHOOL', '1324875', 'SSLC', '17-May', '15-Dec', 'hsc', '288929', 'KALAIMAGAL KALVI NILAYAM HR SEC SCHOOL', '7748075', 'stateboard', '19-May', '17-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '455', '934', '81', '83', '0'),
('15MCL063', 'S.SYED BASHA', 'AMBULANCE DRIVER', '8/10/1996', 'male', '9874512565', 'maitheenbasha23@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638009', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'NAVARASAM MATRICULATION HR.SEC SCHOOL', '758410', 'MATRICULATION', '17-Jun', '16-Jan', 'hsc', '296223', 'NAVARASAM MATRICULATION HR.SEC SCHOOL', '7760925', 'stateboard', '19-Jun', '18-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '456', '935', '81', '84', '0'),
('15MCL064', 'M.RAMASAMY', 'FARMER', '8/11/1996', 'male', '9874512565', 'manivijay513@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638505', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KONGU KALVI NILAYAM MATRICULATION HR SEC. SCHOOL', '28-May-79', 'MATRICULATION', '17-Jul', '16-Feb', 'hsc', '300013', 'KONGU KALVI NILAYAM MATRICULATION HR SEC. SCHOOL', '7765415', 'stateboard', '19-Jul', '18-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '457', '936', '81', '85', '0'),
('15MCL065', 'R.MURALIDHARAN', 'BUSSINESS', '8/12/1996', 'male', '9874512565', 'mmanishamca@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '643217', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '1321166', 'SSLC', '17-Aug', '16-Mar', 'hsc', '279514', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '7741681', 'stateboard', '19-Aug', '18-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '458', '937', '81', '86', '0'),
('15MCL066', 'SENTHILMURUGAN', 'BUSINESS', '8/13/1996', 'male', '9874512565', 'manjulamythili@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '636005', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'ST.MARY\'S GIRLS HIGHER SECONDARY SCHOOL, KOTAGIRI', '1244853', 'SSLC', '17-Sep', '16-Apr', 'hsc', '214394', 'ST.MARY\'S GIRLS HIGHER SECONDARY SCHOOL, KOTAGIRI.', '7669025', 'stateboard', '19-Sep', '18-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '459', '938', '81', '87', '0'),
('15MCL067', 'DURAISAMY.K', 'DRIVER', '8/14/1996', 'male', '9874512565', 'manojduraisamyk@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '637019', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'ST.JOSEPH MATRICULATION SCHOOL', '761159', 'MATRICULATION', '17-Oct', '16-May', 'hsc', '315039', 'SRI SARADA MATICULATION HR SEC SCHOOL FOR GIRLS', '7773227', 'stateboard', '19-Oct', '18-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '460', '939', '81', '88', '0'),
('15MCL068', 'A.SELLAMUTHU', 'KOOLIE', '8/15/1996', 'male', '9874512565', 'madhankumarsellamuthu@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638002', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KAMARAJAR HIGHER SECONDARY SCHOOL', '1383385', 'SSLC', '17-Nov', '16-Jun', 'hsc', '365712', 'KAMARAJAR HIGHER SECONDARY SCHOOL', '78103130', 'stateboard', '19-Nov', '18-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '461', '940', '81', '89', '0'),
('15MCL069', 'M.THANGAVEL', 'WEAVER', '8/16/1996', 'male', '9874512565', '1996mathiyazhakan@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638101', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'MEENASHI SUNDARANAR SENGUNTHER HR SEC SCHOOL', '1326044', 'SSLC', '17-Dec', '16-Jul', 'hsc', '288368', 'MEENASHI SUNDARANAR SENGUNTHER HR SEC SCHOOL', '7747582', 'stateboard', '19-Dec', '18-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '462', '941', '81', '60', '0'),
('15MCL070', 'R.PALANISAMY', 'IOC STAFF', '8/17/1996', 'male', '9874512565', 'meivannanjayalakshim@gmail.Com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638009', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'T.A.M.M  GOVERNMENT HIGHER SECONDARY SCHOOL', '1262502', 'SSLC', '18-Jan', '16-Aug', 'hsc', '233607', 'T.A.M.M  GOVERNMENT HIGHER SECONDARY SCHOOL', '7697340', 'stateboard', '20-Jan', '18-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '463', '942', '81', '61', '0'),
('15MCL071', 'N.LIYAKATH ALI', 'FARMER', '8/18/1996', 'male', '9874512565', 'nafeelmcam19@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '614809', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KONGU KALVI NILAYAM HIGHER   SECONDARY SCHOOL', '759492', 'SSLC', '18-Feb', '16-Sep', 'hsc', '300017', 'KALVI NILAYAM HIGHER   SECONDARY SCHOOL', '7765419', 'stateboard', '20-Feb', '18-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '464', '943', '81', '62', '0'),
('15MCL072', 'M.P.KUMAR', 'ACCOUNTANT', '8/19/1996', 'male', '9874512565', 'kmohan0693@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '600077', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'QUAIDE MILLATH MATRIC HR SEC SCHOOL', '793920', 'MATRICULATION', '18-Mar', '16-Oct', 'hsc', '493070', 'QUAIDE  MILLATH MATRIC HR SEC SCHOOL', '7927973', 'stateboard', '20-Mar', '18-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '465', '944', '81', '63', '0'),
('15MCL073', 'SUBRAMANIAM', 'FARMER', '8/20/1996', 'male', '9874512565', 'sathyapriysps1122@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638453', 'tamil,englidh.', 'C,C++,JAVA,ORCALE,PHOTOSHOP.', 'no', '', 'no', '', '192545', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '756440', 'SSLC', '18-Apr', '16-Nov', 'hsc', '708605', 'SETHU BASKARA MATRIC HR SEC SCHOOL', '5254577', 'stateboard', '20-Apr', '18-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '466', '945', '81', '64', '0'),
('15MCL074', 'K.S.RANGASAMY', 'BUSINESS', '8/21/1996', 'male', '9874512565', 'mohanrajrangasamyshankar@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638103', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '1310176', 'SSLC', '18-May', '16-Dec', 'hsc', '279917', 'GOVERNMENT HIGHER SECONDARY SCHOOL', '7736030', 'stateboard', '20-May', '18-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '467', '946', '81', '65', '0'),
('15MCL075', 'MARIAPPAN.P.N', 'GAS SUPPLIER', '8/22/1996', 'male', '9874512565', 'mounishyaamariappyan@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638052', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'N.R.K.N HIGH SCHOOL,KUNNATHUR', '319174', 'SSLC', '18-Jun', '17-Jan', 'hsc', '349245', 'DIAMOND JUBILEE HIGHER SECONDARY SCHOOL,GOBICHETTIPALAYAM', '6743230', 'stateboard', '20-Jun', '19-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '468', '947', '81', '66', '0'),
('15MCL076', 'MAADHESWARAN.S', 'BUSINESS', '8/23/1996', 'male', '9874512565', 'mythilimcab@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638009', 'tamil,englidh.', 'C. ANDROID, PHOTO SHOP.', 'no', '', 'no', '', '192545', 'VELLALAR GIRLS HIGH SCHOOL,THINDAL', '316048', 'SSLC', '18-Jul', '17-Feb', 'hsc', '366101', 'VELLALAR MATRIC HIGHER SECONDARY SCHOOL,THINDAL', '6773040', 'stateboard', '20-Jul', '19-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '469', '948', '81', '67', '0'),
('15MCL077', 'N.DURAISAMY', 'AGRICULTURE', '8/24/1996', 'male', '9874512565', 'naveenkumar.dps@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638105', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'BHRATHI VIDHYA BHAVAN HIGHER SEC SCHOOL.THINDAL,ERODE', '757392', 'MATRICULATION', '18-Aug', '17-Mar', 'hsc', '360951', 'GREEN PARK MATRC HIGHER SECONDARY SCHOOL,NAMAKKAL', '7808224', 'stateboard', '20-Aug', '19-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '470', '949', '81', '68', '0'),
('15MCL078', 'P.THANGAVEL', 'BUSINESS', '8/25/1996', 'male', '9874512565', 'naveenshankarthangavel@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '642126', 'tamil,englidh.', 'C,C++,JAVA,VB,ORACLE 10G,PHOTOSHOP,ANDROID', 'no', '', 'no', '', '192545', 'PRIVATE', '1920925', 'SSLC', '18-Sep', '17-Apr', 'hsc', '228393', 'AANOOR VIDYALAYA M HSS', '7680442', 'stateboard', '20-Sep', '19-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '471', '950', '81', '69', '0'),
('15MCL079', 'M.RAJENDRAN', 'GAS DELIVERY MAN', '8/26/1996', 'male', '9874512565', 'naveencredible@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638003', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'OXFORD HR SEC SCHOOL', '1267375', 'SSLC', '18-Oct', '17-May', 'hsc', '271600', 'VIDYAA VIKAS MATRIC HR SEC SCHOOL', '8271585', 'stateboard', '20-Oct', '19-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '472', '951', '81', '70', '0'),
('15MCL081', 'A.KRISHNASAMY', 'TURNER', '8/27/1996', 'male', '9874512565', 'nithyapriyaok@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638455', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SENGUNTHAR HR SEC SCHOOL', '1325354', 'SSLC', '18-Nov', '17-Jun', 'hsc', '289360', 'SENGUNTHAR HR SEC SCHOOL', '7748473', 'stateboard', '20-Nov', '19-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '473', '952', '81', '71', '0'),
('15MCL082', 'R.THANGAVEL', 'BUSINESS', '8/28/1996', 'male', '9874512565', 'nivethathangavelrajaram@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '636008', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SRI VENKATESHWARA VIDYALAA MATRIC HIGHER SECONDARY SCHOOL', '839227', 'MATRICULATION', '18-Dec', '17-Jul', 'hsc', '362095', 'SRI VENKATESHWARA VIDYALAA MATRIC HIGHER SECONDARY SCHOOL', '6768688', 'stateboard', '20-Dec', '19-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '474', '953', '81', '72', '0'),
('15MCL083', 'ARUMUGAM.V', 'BUSINESS', '8/29/1996', 'male', '9874512565', 'nivethithaact@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '642126', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SRI SARADA VIDYALAYA HR,.SEC SCHOOL', '1355218', 'SSLC', '19-Jan', '17-Aug', 'hsc', '314713', 'SRI SARADA VIDYALAYA HR.SEC SCHOOL', '7766903', 'stateboard', '21-Jan', '19-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '475', '954', '81', '73', '0'),
('15MCL084', 'V.RENUKA DEVI', 'TAILOR', '8/30/1996', 'male', '9874512565', 'nivithann@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638007', 'tamil,englidh.', 'C,C++,JAVA,PHOTOSHOP', 'no', '', 'no', '', '192545', 'SARASWATHI VIDHYA NIKETHAN MATRIC HIGHER SECONDARY SCHOOL, ERODE', '757705', '', '19-Feb', '17-Sep', 'hsc', '224989', 'SRI GVG VISALAKSHI MATRIC HIGER SECONDARY SCHOOL, UDUMALPET', '7689282', 'stateboard', '21-Feb', '19-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '476', '955', '81', '74', '0'),
('15MCL085', 'N.TAMILARAZAN', 'BUSINESS', '8/31/1996', 'male', '9874512565', 'parkavi0307@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '637003', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'SPB MATRIC HIGHER SECONDARY SCHOOL', '766981', 'MATRICULATION', '19-Mar', '17-Oct', 'hsc', '291208', 'VELLALAR MATRICULATION HR SEC SCHOOL', '7746228', 'stateboard', '21-Mar', '19-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '477', '956', '81', '75', '0'),
('15MCL086', 'S.KANDASAMY', 'BUSINESS', '9/1/1996', 'male', '9874512565', 'pavithrakandasamy@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641604', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GREEN PARK MATRIC HIGHER SECODARY SCHOOL,NAMAKKAL', '769885', 'MATRICULATION', '19-Apr', '17-Nov', 'hsc', '361516', 'GREEN PARK MATRC HIGHER SECONDARY SCHOOL,NAMAKKAL', '7808789', 'stateboard', '21-Apr', '19-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '478', '957', '81', '76', '0'),
('15MCL087', 'P.RAKKIMUTHU', 'BUSINESS', '9/2/1996', 'male', '9874512565', 'pavitrarakkimuthu@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641603', 'tamil,englidh.', 'C,C++,JAVA,PHOTOSHOP', 'no', '', 'no', '', '192545', 'VIVEKANANDA VIDYALAYA MATRICULATION HR SEC SCHOOL', '737732', 'MATRICULATION', '19-May', '17-Dec', 'hsc', '216047', 'VIVEKANANDA VIDYALAYA MATRICULATION HR SEC SCHOOL', '7679280', 'stateboard', '21-May', '19-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '479', '958', '81', '77', '0'),
('15MCL088', 'A.SUNDHARASAMY', 'FARMER', '9/3/1996', 'male', '9874512565', 'ponnaveen96@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '642203', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'KONGU VELLALAR MATRICULATION HR SEC SCHOOL', '737567', 'MATRICULATION', '19-Jun', '18-Jan', 'hsc', '218523', 'KONGU VELLALAR MATRICULATION HR SEC SCHOOL', '7678359', 'stateboard', '21-Jun', '20-Jan', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '480', '959', '81', '78', '0'),
('15MCL089', 'A.KANNAIAN', 'PRIEST', '9/4/1996', 'male', '9874512565', 'poornapriya1712@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638001', 'tamil,englidh.', 'C,C++,JAVA,ANDROID,ASP.NET,C#', 'no', '', 'no', '', '192545', 'SRI VENKATAKRISHNA HIGHER SECONDARY SHCHOOL', '1271542', 'SSLC', '19-Jul', '18-Feb', 'hsc', '235079', 'SRI VENKATAKRISHNA HIGHER SECONDARY SHCHOOL', '7690605', 'stateboard', '21-Jul', '20-Feb', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '481', '960', '81', '79', '0'),
('15MCL090', 'T.MAGUDASWARAN', 'BUSINESS', '9/5/1996', 'male', '9874512565', 'poovizhi.jan07@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641652', 'tamil,englidh.', 'C,C++,JAVA,HTML,DOT NET,FLASH,PHOTOSHOP', 'no', '', 'no', '', '192545', 'VELLALAR GIRLS HIGH SCHOOL', '1328547', 'SSLC', '19-Aug', '18-Mar', 'hsc', '288738', 'C.S.I GIRLS HIGHER SECONDARY SCHOOL', '7747918', 'stateboard', '21-Aug', '20-Mar', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '482', '961', '81', '80', '0'),
('15MCL091', 'PALANISAMY.G', 'FARMER', '9/6/1996', 'male', '9874512565', 'prabhudeva654@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '636303', 'tamil,englidh.', 'BASIC C, C++,JAVA, ORACLE,MS OFFICE', 'no', '', 'no', '', '192545', 'DEVANGAR GIRLS HIGH SCHOOL', '1220983', 'SSLC', '19-Sep', '18-Apr', 'hsc', '197377', 'DEVANGAR HR SEC SCHOOL', '7658457', 'stateboard', '21-Sep', '20-Apr', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '483', '962', '81', '81', '0'),
('15MCL092', 'SIVABALAN K', 'BUSINESS', '9/7/1996', 'male', '9874512565', 'prabus1411@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '641605', 'tamil,englidh.', 'JAVA CPP C ', 'no', '', 'no', '', '192545', 'PRIVATE', '893306', 'STATE BOARD', '19-Oct', '18-May', 'hsc', '379901', 'NIRMALA HIGHER SECONDARY SCHOOL ', '1290050', 'stateboard', '21-Oct', '20-May', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '484', '963', '81', '82', '0'),
('15MCL093', 'MURUGESAN S', 'FARMER', '9/8/1996', 'male', '9874512565', 'pradeebkumarmca2016@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638104', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT HIGER SEC SCHOOL,VEERAPANDI TIRUPUR', '1248652', 'STATE BOARD', '19-Nov', '18-Jun', 'hsc', '215045', 'GOVERNMENT HIGER SEC SCHOOL VEERAPANDI,TIRUPUR', '7668402', 'stateboard', '21-Nov', '20-Jun', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '485', '964', '81', '83', '0');
INSERT INTO `studentpersonal` (`rollno`, `fathername`, `occupation`, `dob`, `gender`, `mobileno`, `mail`, `streetname`, `villagename`, `cityname`, `statename`, `caste`, `comefrom`, `pincode`, `language`, `skills`, `pys`, `pysreason`, `edugap`, `edureason`, `sslcregno`, `sslcschool`, `sslccertificate`, `sslcboard`, `sslcstart`, `sslcend`, `highedu`, `hscregno`, `hscschool`, `hsccertificate`, `hscboard`, `hscstart`, `hscend`, `hscspec`, `hsccutoff`, `crank`, `dregno`, `dcollege`, `dcertificate`, `dboard`, `dstart`, `dend`, `dspec`, `dcutoff`, `dcrank`, `finish`, `sslcmark`, `hscmark`, `hscper`, `sslcper`, `dper`) VALUES
('15MCL094', 'GURUNATHAN.S', 'FARMER', '9/9/1996', 'male', '9874512565', 'pradeepkumargkec@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638 183', 'tamil,englidh.', 'JAVA AND ORACLE AND PHOTOSHOP', 'no', '', 'no', '', '192545', 'GOVT BOYS HR SEC SCHOOL MODAKKURICHI ERODE', '306510', 'STATE BOARD', '19-Dec', '18-Jul', 'hsc', '356657', 'GOVT BOYS HR SECSCHOOL MODAKKURICHI ERODE', '5794874', 'stateboard', '21-Dec', '20-Jul', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '486', '965', '81', '84', '0'),
('15MCL095', 'KUMAR.K.P', 'FARMER', '9/10/1996', 'male', '9874512565', 'kprethivi281095@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638109', 'tamil,englidh.', 'JAVA&ORACLE,GRAPICS', 'no', '', 'no', '', '192545', 'GRACE HR.SEC.SCHOOL', '316461', 'STATE BOARD', '20-Jan', '18-Aug', 'hsc', '425514', 'J.K.K.NATTRAJA MATRICULATION HR.SEC.SCHOOL', '6937126', 'stateboard', '22-Jan', '20-Aug', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '487', '966', '81', '85', '0'),
('15MCL096', 'BABU K', 'SELF EMPLOYEE', '9/11/1996', 'male', '9874512565', 'priyadharshan3012@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638183', 'tamil,englidh.', 'C,C++', 'no', '', 'no', '', '192545', 'R.M.H.S.S', '758604', 'MATRICULATION', '20-Feb', '18-Sep', 'hsc', '295911', 'R.M.H.S.S', '7760634', 'stateboard', '22-Feb', '20-Sep', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '300', '967', '81', '86', '0'),
('15MCL097', 'VENKATESAN.B', 'BUSINESS', '9/12/1996', 'male', '9874512565', 'priyavenkatesan1396@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '606601', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'GOVERNMENT BOYS HIGHER SECONDARY SCHOOL KOMARAPALAYAM', '1391080', 'STATE BOARD', '20-Mar', '18-Oct', 'hsc', '352551', 'JKK RANGAMMAL MATRIC HIGHER SECONDARY SCHOOL KOMARAPALAYAM', '7800524', 'stateboard', '22-Mar', '20-Oct', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '301', '968', '81', '87', '0'),
('15MCL098', 'ARUMUGAM.P', 'FARMER', '9/13/1996', 'male', '9874512565', 'priyasurya3996@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '625503', 'tamil,englidh.', 'JAVA,C++', 'no', '', 'no', '', '192545', 'SHANMUGA INDUSTRIES GOV.HR.SEC.SCHOOL,THIRUVANNAMALAI', '626504', 'STATE BOARD', '20-Apr', '18-Nov', 'hsc', '1718290', 'SRI.V.DHANMULL SOWCAR JAIN.HR.SEC.SCHOOL,THIRUVANNAMALAI', '8052206', 'stateboard', '22-Apr', '20-Nov', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '302', '969', '81', '88', '0'),
('15MCL099', 'POOVENTHIRAN.C', 'BUSINESS', '9/14/1996', 'male', '9874512565', 'priyankamaiyl@gmail.com', 'ramnager', 'kasipalayam', 'bavani', 'tamilnadu', 'bc', 'dayschooler', '638055', 'tamil,englidh.', '', 'no', '', 'no', '', '192545', 'VIDHYA PARTHI HIGHER SECONDARY SCHOOL', '1229444', 'STATE BOARD', '20-May', '18-Dec', 'hsc', '206491', 'VIDHYA PARTHI HIGHER SECONDARY SCHOOL', '7664880', 'stateboard', '22-May', '20-Dec', 'computer science', '190', '250', '', '', '0', '', '', '', '', '0', '0', '1', '303', '970', '81', '89', '0'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table 23`
--

CREATE TABLE `table 23` (
  `username` varchar(8) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `mail` varchar(18) DEFAULT NULL,
  `role` varchar(7) DEFAULT NULL,
  `additionalrole` varchar(9) DEFAULT NULL,
  `mobileno` bigint(10) DEFAULT NULL,
  `db` varchar(21) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `alternatemail` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 23`
--

INSERT INTO `table 23` (`username`, `password`, `name`, `department`, `mail`, `role`, `additionalrole`, `mobileno`, `db`, `status`, `alternatemail`) VALUES
('15MCR001', '15MCR001', 'ARCHANADEVI M', 'computer application', '15MCR001@kongu.edu', 'student', 'null', 9789742176, 'user.jpg', 1, 'archanadevi0195@gmail.com'),
('15MCR002', '15MCR002', 'GOKULRAJ V', 'computer application', '15MCR002@kongu.edu', 'student', 'null', 8754913996, 'user.jpg', 1, 'gokulraj878@gmail.com'),
('15MCR003', '15MCR003', 'JANARTHANAN S', 'computer application', '15MCR003@kongu.edu', 'student', 'null', 9865659130, 'user.jpg', 1, 'janavivek994@gmail.com'),
('15MCR004', '15MCR004', 'RADHIKA R', 'computer application', '15MCR004@kongu.edu', 'student', 'null', 9159401572, 'user.jpg', 1, 'radhikacs36@gmail.com'),
('15MCR006', '15MCR006', 'THAMARAISELVAN P', 'computer application', '15MCR006@kongu.edu', 'student', 'null', 8870230519, 'user.jpg', 1, 'selvan315731@gmail.com'),
('15MCL007', '15MCL007', 'ABILASHA R', 'computer application', '15MCL007@kongu.edu', 'student', 'null', 9790685216, 'user.jpg', 1, 'abilashark94@gmail.com'),
('15MCL008', '15MCL008', 'ABINAYA P', 'computer application', '15MCL008@kongu.edu', 'student', 'null', 7502548167, 'user.jpg', 1, 'abipmca@gmail.com'),
('15MCL009', '15MCL009', 'AMBIKA V', 'computer application', '15MCL009@kongu.edu', 'student', 'null', 9789125522, 'user.jpg', 1, 'ambika.vgm@gmail.com'),
('15MCL010', '15MCL010', 'ANANDHARAJ P', 'computer application', '15MCL010@kongu.edu', 'student', 'null', 7502329681, 'user.jpg', 1, 'anandh51295@gmail.com'),
('15MCL011', '15MCL011', 'ANBALAGAN G', 'computer application', '15MCL011@kongu.edu', 'student', 'null', 9994034923, 'user.jpg', 1, 'anbalagananbu90@gmail.com'),
('15MCL012', '15MCL012', 'ANUSUYA R', 'computer application', '15MCL012@kongu.edu', 'student', 'null', 8428464660, 'user.jpg', 1, 'anutechwizard@gmail.com'),
('15MCL013', '15MCL013', 'ARULSARAVANAN R', 'computer application', '15MCL013@kongu.edu', 'student', 'null', 9865170115, 'user.jpg', 1, 'saravananarul13@gmail.com'),
('15MCL014', '15MCL014', 'ARUNBHUVANESH G', 'computer application', '15MCL014@kongu.edu', 'student', 'null', 8508358680, 'user.jpg', 1, 'arunbhuvanesh29@gmail.com'),
('15MCL015', '15MCL015', 'ARUNSHANKAR K', 'computer application', '15MCL015@kongu.edu', 'student', 'null', 9944301400, 'user.jpg', 1, 'arun1997bca@gmail.com'),
('15MCL016', '15MCL016', 'BALA DIVYA S', 'computer application', '15MCL016@kongu.edu', 'student', 'null', 8608391463, 'user.jpg', 1, 'angeldivya596@gmail.com'),
('15MCL017', '15MCL017', 'BALA RAMYA T', 'computer application', '15MCL017@kongu.edu', 'student', 'null', 9715053728, 'user.jpg', 1, 'ramyabalathangam@gmail.com'),
('15MCL018', '15MCL018', 'BALAJI D', 'computer application', '15MCL018@kongu.edu', 'student', 'null', 9600637313, 'user.jpg', 1, 'balaji212121@gmail.com'),
('15MCL019', '15MCL019', 'BALAMURUGAVEL G', 'computer application', '15MCL019@kongu.edu', 'student', 'null', 8760712863, 'user.jpg', 1, 'balamurugavel.ganeshan@gmail.com'),
('15MCL020', '15MCL020', 'BASKAR J', 'computer application', '15MCL020@kongu.edu', 'student', 'null', 9566362141, 'user.jpg', 1, 'baskarbca13@gmail.com'),
('15MCL021', '15MCL021', 'BASKAR N', 'computer application', '15MCL021@kongu.edu', 'student', 'null', 7639059796, 'user.jpg', 1, 'baskaranatarajselvi@gmail.com'),
('15MCL022', '15MCL022', 'BHUVANESHWARAN V', 'computer application', '15MCL022@kongu.edu', 'student', 'null', 9976214792, 'user.jpg', 1, 'vbhuvanesh008@gmail.com'),
('15MCL023', '15MCL023', 'CATHERINE A', 'computer application', '15MCL023@kongu.edu', 'student', 'null', 7373486542, 'user.jpg', 1, 'catherinearokiaraj@gmail.com'),
('15MCL024', '15MCL024', 'DAYAANAND V M', 'computer application', '15MCL024@kongu.edu', 'student', 'null', 9842240298, 'user.jpg', 1, 'dayaanand456@gmail.com'),
('15MCL025', '15MCL025', 'DHANDAPANI S', 'computer application', '15MCL025@kongu.edu', 'student', 'null', 9894064229, 'user.jpg', 1, 'dhandapanidhaniskk@gmail.com'),
('15MCL026', '15MCL026', 'DHARANYA V', 'computer application', '15MCL026@kongu.edu', 'student', 'null', 9688794382, 'user.jpg', 1, 'vdharanyamca@gmail.com'),
('15MCL027', '15MCL027', 'DINESH BALAJI S', 'computer application', '15MCL027@kongu.edu', 'student', 'null', 9994252824, 'user.jpg', 1, 'androbalajiupdated@gmail.com'),
('15MCL028', '15MCL028', 'DINESH S', 'computer application', '15MCL028@kongu.edu', 'student', 'null', 9443733055, 'user.jpg', 1, 'dineshsubramanian1043@gmail.com'),
('15MCL029', '15MCL029', 'DIVYA DARSHINI.R', 'computer application', '15MCL029@kongu.edu', 'student', 'null', 9443210888, 'user.jpg', 1, 'deva25rkm@gmail.com'),
('15MCL030', '15MCL030', 'GAYATHRI T', 'computer application', '15MCL030@kongu.edu', 'student', 'null', 7845193148, 'user.jpg', 1, 'junogayu@gmail.com'),
('15MCL031', '15MCL031', 'GOBAL S', 'computer application', '15MCL031@kongu.edu', 'student', 'null', 9524010883, 'user.jpg', 1, 's.gobalsoft@gmail.com'),
('15MCL032', '15MCL032', 'GOWTHAM N S', 'computer application', '15MCL032@kongu.edu', 'student', 'null', 9445585822, 'user.jpg', 1, 'gowthamns712@gmail.com'),
('15MCL033', '15MCL033', 'GOWTHAM R', 'computer application', '15MCL033@kongu.edu', 'student', 'null', 9585842531, 'user.jpg', 1, 'gowtham3586@gmail.com'),
('15MCL034', '15MCL034', 'GOWTHAM S', 'computer application', '15MCL034@kongu.edu', 'student', 'null', 9597915252, 'user.jpg', 1, 'gtmavp@gmail.com'),
('15MCL035', '15MCL035', 'GUNASEKAR K', 'computer application', '15MCL035@kongu.edu', 'student', 'null', 8973990782, 'user.jpg', 1, 'gunagunasekar1996@gmail.com'),
('15MCL036', '15MCL036', 'HARIDASS T', 'computer application', '15MCL036@kongu.edu', 'student', 'null', 9750011474, 'user.jpg', 1, 'harikongu26@gmail.com'),
('15MCL037', '15MCL037', 'HARIHARAN A', 'computer application', '15MCL037@kongu.edu', 'student', 'null', 8124700755, 'user.jpg', 1, 'hariharancri@gmail.com'),
('15MCL038', '15MCL038', 'INDIRA SUTHAR T', 'computer application', '15MCL038@kongu.edu', 'student', 'null', 9488948028, 'user.jpg', 1, 'indirasuthar@gmail.com'),
('15MCL039', '15MCL039', 'INTHUMATHI E', 'computer application', '15MCL039@kongu.edu', 'student', 'null', 9965464270, 'user.jpg', 1, 'inthumathimca@gmail.com'),
('15MCL040', '15MCL040', 'JAGATHEESHKUMAR S', 'computer application', '15MCL040@kongu.edu', 'student', 'null', 9597695252, 'user.jpg', 1, 'jagavaluable@gmail.com'),
('15MCL041', '15MCL041', 'JANARTHANAN J', 'computer application', '15MCL041@kongu.edu', 'student', 'null', 8870041145, 'user.jpg', 1, 'janabalan.a96@gmail.com'),
('15MCL042', '15MCL042', 'JITHU P', 'computer application', '15MCL042@kongu.edu', 'student', 'null', 9488948028, 'user.jpg', 1, 'indirasuthar@gmail.com'),
('15MCL043', '15MCL043', 'JOTHIMANI S', 'computer application', '15MCL043@kongu.edu', 'student', 'null', 7358951313, 'user.jpg', 1, 'jothikrish13j@gmail.com'),
('15MCL044', '15MCL044', 'KABILAN R', 'computer application', '15MCL044@kongu.edu', 'student', 'null', 9578134590, 'user.jpg', 1, 'kabilan182@gmail.com'),
('15MCL045', '15MCL045', 'KALAISELVI S', 'computer application', '15MCL045@kongu.edu', 'student', 'null', 9698135628, 'user.jpg', 1, 'kalai.s111@gmail.com'),
('15MCL046', '15MCL046', 'KARTHIGA R', 'computer application', '15MCL046@kongu.edu', 'student', 'null', 8098998541, 'user.jpg', 1, 'karthiga731@gmail.com'),
('15MCL047', '15MCL047', 'KARTHIK P', 'computer application', '15MCL047@kongu.edu', 'student', 'null', 9942556565, 'user.jpg', 1, 'karthikpalanivelk@gmail.com'),
('15MCL048', '15MCL048', 'KARUPPUSAMY.V', 'computer application', '15MCL048@kongu.edu', 'student', 'null', 9443260324, 'user.jpg', 1, 'karuppusamytvgs@gmail.com'),
('15MCL049', '15MCL049', 'KAVIN B', 'computer application', '15MCL049@kongu.edu', 'student', 'null', 9566607115, 'user.jpg', 1, 'dfsdf@gmail.com'),
('15MCL050', '15MCL050', 'KAVIN PRASATH G', 'computer application', '15MCL050@kongu.edu', 'student', 'null', 8344093438, 'user.jpg', 1, 'kavinprasath96@gmail.com'),
('15MCL051', '15MCL051', 'KAVINESH T', 'computer application', '15MCL051@kongu.edu', 'student', 'null', 9842439005, 'user.jpg', 1, 'kavineshthangaraj@gmail.com'),
('15MCL052', '15MCL052', 'KAVINKUMAR D', 'computer application', '15MCL052@kongu.edu', 'student', 'null', 9942334585, 'user.jpg', 1, 'ndkavin@gmail.com'),
('15MCL053', '15MCL053', 'KEERTHANA S', 'computer application', '15MCL053@kongu.edu', 'student', 'null', 9442517359, 'user.jpg', 1, 'skeerthanasubramaniam@gmail.com'),
('15MCL054', '15MCL054', 'KIRUTHIKA D', 'computer application', '15MCL054@kongu.edu', 'student', 'null', 9965716465, 'user.jpg', 1, 'kiruthishruthi@gmail.com'),
('15MCL055', '15MCL055', 'KIRUTHIKA M', 'computer application', '15MCL055@kongu.edu', 'student', 'null', 9787196986, 'user.jpg', 1, 'kiruthikamn@gmail.com'),
('15MCL056', '15MCL056', 'KISHORE KHAN B', 'computer application', '15MCL056@kongu.edu', 'student', 'null', 7402140827, 'user.jpg', 1, 'kishorekhankk@live.com'),
('15MCL057', '15MCL057', 'KRISHNAPRIYA S', 'computer application', '15MCL057@kongu.edu', 'student', 'null', 8270165416, 'user.jpg', 1, 'krishnapriyadhanam@gmail.com'),
('15MCL058', '15MCL058', 'KUMARAVEL G', 'computer application', '15MCL058@kongu.edu', 'student', 'null', 9003540755, 'user.jpg', 1, 'gkumaravrl06@gmail.com'),
('15MCL059', '15MCL059', 'KURINJI NATHAN K', 'computer application', '15MCL059@kongu.edu', 'student', 'null', 8124753812, 'user.jpg', 1, 'kurinjinathan95@gmail.com'),
('15MCL060', '15MCL060', 'LAVANYA S', 'computer application', '15MCL060@kongu.edu', 'student', 'null', 9585999192, 'user.jpg', 1, 'lavanyakiruthiga1996@gmail.com'),
('15MCL061', '15MCL061', 'LOGANYA  M V', 'computer application', '15MCL061@kongu.edu', 'student', 'null', 8973584838, 'user.jpg', 1, 'loganyavairam@gmail.com'),
('15MCL062', '15MCL062', 'MADHANRAJ M', 'computer application', '15MCL062@kongu.edu', 'student', 'null', 9942836110, 'user.jpg', 1, 'madhanrsp@gmail.com'),
('15MCL063', '15MCL063', 'MAITHEEN FARMANNULLA S', 'computer application', '15MCL063@kongu.edu', 'student', 'null', 9698333527, 'user.jpg', 1, 'maitheenbasha23@gmail.com'),
('15MCL064', '15MCL064', 'MANIKANDAN.R', 'computer application', '15MCL064@kongu.edu', 'student', 'null', 9750646797, 'user.jpg', 1, 'manivijay513@gmail.com'),
('15MCL065', '15MCL065', 'MANISHA M', 'computer application', '15MCL065@kongu.edu', 'student', 'null', 9751741637, 'user.jpg', 1, 'mmanishamca@gmail.com'),
('15MCL066', '15MCL066', 'MANJULA S', 'computer application', '15MCL066@kongu.edu', 'student', 'null', 7810090959, 'user.jpg', 1, 'manjulamythili@gmail.com'),
('15MCL067', '15MCL067', 'MANOJ D', 'computer application', '15MCL067@kongu.edu', 'student', 'null', 9003446491, 'user.jpg', 1, 'afdfda@gmail.com'),
('15MCL068', '15MCL068', 'MATHANKUMAR S', 'computer application', '15MCL068@kongu.edu', 'student', 'null', 9688187237, 'user.jpg', 1, 'madhankumarsellamuthu@gmail.com'),
('15MCL069', '15MCL069', 'MATHIYAZHAKAN T', 'computer application', '15MCL069@kongu.edu', 'student', 'null', 9976559446, 'user.jpg', 1, '1996mathiyazhakan@gmail.com'),
('15MCL070', '15MCL070', 'MEIVANNAN P', 'computer application', '15MCL070@kongu.edu', 'student', 'null', 9003616461, 'user.jpg', 1, 'meivannanjayalakshim@gmail.Com'),
('15MCL071', '15MCL071', 'MOHAMED NAFEEL HUSSAIN L', 'computer application', '15MCL071@kongu.edu', 'student', 'null', 8122875005, 'user.jpg', 1, 'nafeelmcam19@gmail.com'),
('15MCL072', '15MCL072', 'MOHAN K', 'computer application', '15MCL072@kongu.edu', 'student', 'null', 9789504532, 'user.jpg', 1, 'kmohan0693@gmail.com'),
('15MCL073', '15MCL073', 'MOHANAPRIYA.S', 'computer application', '15MCL073@kongu.edu', 'student', 'null', 9944640428, 'user.jpg', 1, 'sathyapriysps1122@gmail.com'),
('15MCL074', '15MCL074', 'MOHANRAJ R', 'computer application', '15MCL074@kongu.edu', 'student', 'null', 9965812211, 'user.jpg', 1, 'mohanrajrangasamyshankar@gmail.com'),
('15MCL075', '15MCL075', 'MOUNISHYAA M', 'computer application', '15MCL075@kongu.edu', 'student', 'null', 9842886334, 'user.jpg', 1, 'mounishyaamariappyan@gmail.com'),
('15MCL076', '15MCL076', 'MYTHILI M', 'computer application', '15MCL076@kongu.edu', 'student', 'null', 9489242068, 'user.jpg', 1, 'mythilimcab@gmail.com'),
('15MCL077', '15MCL077', 'NAVEENKUMAR D', 'computer application', '15MCL077@kongu.edu', 'student', 'null', 9500545530, 'user.jpg', 1, 'naveenkumar.dps@gmail.com'),
('15MCL078', '15MCL078', 'NAVEEN SHANKAR T', 'computer application', '15MCL078@kongu.edu', 'student', 'null', 9500327867, 'user.jpg', 1, 'naveenshankarthangavel@gmail.com'),
('15MCL079', '15MCL079', 'NAVEENKUMAR R', 'computer application', '15MCL079@kongu.edu', 'student', 'null', 8870177605, 'user.jpg', 1, 'naveencredible@gmail.com'),
('15MCL080', '15MCL080', 'NITHIYA G', 'computer application', '15MCL080@kongu.edu', 'student', 'null', 9546545454, 'user.jpg', 1, 'avcdjdj@gmail.com'),
('15MCL081', '15MCL081', 'NITHYA PRIYA O K', 'computer application', '15MCL081@kongu.edu', 'student', 'null', 9095599307, 'user.jpg', 1, 'nithyapriyaok@gmail.com'),
('15MCL082', '15MCL082', 'NIVETHA T', 'computer application', '15MCL082@kongu.edu', 'student', 'null', 8344584135, 'user.jpg', 1, 'nivethathangavelrajaram@gmail.com'),
('15MCL083', '15MCL083', 'NIVETHITHA A', 'computer application', '15MCL083@kongu.edu', 'student', 'null', 9965142820, 'user.jpg', 1, 'nivethithaarumugamvellingiri@gmail.com'),
('15MCL084', '15MCL084', 'NIVITHA P V', 'computer application', '15MCL084@kongu.edu', 'student', 'null', 9677021310, 'user.jpg', 1, 'nivithann@gmail.com'),
('15MCL085', '15MCL085', 'PARKAVI T', 'computer application', '15MCL085@kongu.edu', 'student', 'null', 8526722120, 'user.jpg', 1, 'parkavi0307@gmail.com'),
('15MCL086', '15MCL086', 'PAVITHRA K', 'computer application', '15MCL086@kongu.edu', 'student', 'null', 9150136311, 'user.jpg', 1, 'pavithrakandasamy@gmail.com'),
('15MCL087', '15MCL087', 'PAVITHRA R', 'computer application', '15MCL087@kongu.edu', 'student', 'null', 9894209729, 'user.jpg', 1, 'pavitrarakkimuthu@gmail.com'),
('15MCL088', '15MCL088', 'PONKUMAR S', 'computer application', '15MCL088@kongu.edu', 'student', 'null', 9976254642, 'user.jpg', 1, 'ponnaveen96@gmail.com'),
('15MCL089', '15MCL089', 'POORNA PRIYA K', 'computer application', '15MCL089@kongu.edu', 'student', 'null', 8508948224, 'user.jpg', 1, 'poornapriya1712@gmail.com'),
('15MCL090', '15MCL090', 'POOVIZHI  M', 'computer application', '15MCL090@kongu.edu', 'student', 'null', 9952707119, 'user.jpg', 1, 'poovizhi.jan07@gmail.com'),
('15MCL091', '15MCL091', 'PRABHU P', 'computer application', '15MCL091@kongu.edu', 'student', 'null', 9791405350, 'user.jpg', 1, 'prabhudeva654@gmail.com'),
('15MCL092', '15MCL092', 'PRABU S', 'computer application', '15MCL092@kongu.edu', 'student', 'null', 9715151439, 'user.jpg', 1, 'prabus1411@gmail.com'),
('15MCL093', '15MCL093', 'PRADEEBKIMAR M', 'computer application', '15MCL093@kongu.edu', 'student', 'null', 9688493348, 'user.jpg', 1, 'pradeebkumarmca2016@gmail.com'),
('15MCL094', '15MCL094', 'PRADEEPKUMAR.G', 'computer application', '15MCL094@kongu.edu', 'student', 'null', 9629299756, 'user.jpg', 1, 'pradeepkumargkec@gmail.com'),
('15MCL095', '15MCL095', 'PRETHIVI.K', 'computer application', '15MCL095@kongu.edu', 'student', 'null', 9659625402, 'user.jpg', 1, 'kprethivi281095@gmail.com'),
('15MCL096', '15MCL096', 'PRIYADHARSHAN B', 'computer application', '15MCL096@kongu.edu', 'student', 'null', 9976419034, 'user.jpg', 1, 'PRIYADHARSHAN3012@GMAIL.COM'),
('15MCL097', '15MCL097', 'PRIYADHARSHINI.V', 'computer application', '15MCL097@kongu.edu', 'student', 'null', 8489195852, 'user.jpg', 1, '2613priyadharshini.v@gmail.com'),
('15MCL098', '15MCL098', 'PRIYANKA.A', 'computer application', '15MCL098@kongu.edu', 'student', 'null', 8056730114, 'user.jpg', 1, 'apriyankamca2016@gmail.com'),
('15MCL099', '15MCL099', 'PRIYANKA.P', 'computer application', '15MCL099@kongu.edu', 'student', 'null', 8903267115, 'user.jpg', 1, 'priyankamaiyl@gmail.com'),
('15MCL100', '15MCL100', 'PRIYANKA S', 'computer application', '15MCL100@kongu.edu', 'student', 'null', 7373828828, 'user.jpg', 1, 'Priyankas13aug@gmail.com'),
('15MCL101', '15MCL101', 'RADHIKA R', 'computer application', '15MCL101@kongu.edu', 'student', 'null', 9443207044, 'user.jpg', 1, 'radhi1996raju@gmail.com'),
('15MCL102', '15MCL102', 'RAJESH KUMAR JPK', 'computer application', '15MCL102@kongu.edu', 'student', 'null', 7373565742, 'user.jpg', 1, 'kumar.rajeshjpk@gmail.com'),
('15MCL103', '15MCL103', 'RAJKUMAR K', 'computer application', '15MCL103@kongu.edu', 'student', 'null', 9791963859, 'user.jpg', 1, 'rajkumarkaliappan1995@gmail.com'),
('15MCL104', '15MCL104', 'RAMYABHARATHI R', 'computer application', '15MCL104@kongu.edu', 'student', 'null', 7639767647, 'user.jpg', 1, 'ramyarajendranmca@gmail.com'),
('15MCL105', '15MCL105', 'REVANTH D', 'computer application', '15MCL105@kongu.edu', 'student', 'null', 9842009552, 'user.jpg', 1, 'revanth95d@gmail.com'),
('15MCL106', '15MCL106', 'SARAVANAKUMAR.M', 'computer application', '15MCL106@kongu.edu', 'student', 'null', 9003886321, 'user.jpg', 1, 'msaravanakumar369@gmail.com'),
('15MCL108', '15MCL108', 'SAVITHA P', 'computer application', '15MCL108@kongu.edu', 'student', 'null', 9578089430, 'user.jpg', 1, 'savi11041996@gmail.com'),
('15MCL110', '15MCL110', 'SIBI RAJAVEL.T', 'computer application', '15MCL110@kongu.edu', 'student', 'null', 8675881939, 'user.jpg', 1, 'Sibirajavelthangapandian@gmail.com'),
('15MCL111', '15MCL111', 'SIBI SHANKAR S', 'computer application', '15MCL111@kongu.edu', 'student', 'null', 9500493588, 'user.jpg', 1, 'bssibi94@gmail.com'),
('15MCL112', '15MCL112', 'SINDURI.S', 'computer application', '15MCL112@kongu.edu', 'student', 'null', 8903030768, 'user.jpg', 1, 'sinduri.selvaraj@gmail.com'),
('15MCL113', '15MCL113', 'SIVA V', 'computer application', '15MCL113@kongu.edu', 'student', 'null', 9489324580, 'user.jpg', 1, 'vaiyapurisiva@gmal.com'),
('15MCL114', '15MCL114', 'SOUNDARYA S', 'computer application', '15MCL114@kongu.edu', 'student', 'null', 9382932148, 'user.jpg', 1, 'soundaryasairam@gmail.com'),
('15MCL115', '15MCL115', 'SOUNTHARIYA P', 'computer application', '15MCL115@kongu.edu', 'student', 'null', 7402287235, 'user.jpg', 1, 'cpsounthariya@gmail.com'),
('15MCL116', '15MCL116', 'SOWMYAA M', 'computer application', '15MCL116@kongu.edu', 'student', 'null', 9943045551, 'user.jpg', 1, 'SOWMYAAPSG@GMAIL.COM'),
('15MCL117', '15MCL117', 'SRI RAGAVI S P', 'computer application', '15MCL117@kongu.edu', 'student', 'null', 9003513220, 'user.jpg', 1, 'sriragavi2011@gmail.com'),
('15MCL118', '15MCL118', 'SRIDHAR K K', 'computer application', '15MCL118@kongu.edu', 'student', 'null', 9042578767, 'user.jpg', 1, 'sridharmcakec@gmail.com'),
('15MCL119', '15MCL119', 'SRINIVASAN S', 'computer application', '15MCL119@kongu.edu', 'student', 'null', 9976572009, 'user.jpg', 1, 'sricnu96@gmail.com'),
('15MCL120', '15MCL120', 'SUBHASHINI C', 'computer application', '15MCL120@kongu.edu', 'student', 'null', 8220315138, 'user.jpg', 1, 'subhashinic18@gmail.com'),
('15MCL121', '15MCL121', 'SUDHIYA.J', 'computer application', '15MCL121@kongu.edu', 'student', 'null', 9442609879, 'user.jpg', 1, 'sudhiya95@gmail.com'),
('15MCL123', '15MCL123', 'SUGANTHI PRIYA.P', 'computer application', '15MCL123@kongu.edu', 'student', 'null', 8754237020, 'user.jpg', 1, 'itssuganthipriya@gmail.com'),
('15MCL122', '15MCL122', 'SUGANTHI.P', 'computer application', '15MCL122@kongu.edu', 'student', 'null', 9976306903, 'user.jpg', 1, 'sugan047@gmail.com'),
('15MCL124', '15MCL124', 'SUGANYA M', 'computer application', '15MCL124@kongu.edu', 'student', 'null', 9087963585, 'user.jpg', 1, 'ANGELSUGAN183014@GMAIL.COM'),
('15MCL125', '15MCL125', 'SWARNAMBIKA.SY', 'computer application', '15MCL125@kongu.edu', 'student', 'null', 9578734373, 'user.jpg', 1, 'swarnambika.sy@gmail.com'),
('15MCL126', '15MCL126', 'SWARNESH M', 'computer application', '15MCL126@kongu.edu', 'student', 'null', 9786798698, 'user.jpg', 1, 'swarneshmani@gmail.com'),
('15MCL127', '15MCL127', 'TAMILMANI C', 'computer application', '15MCL127@kongu.edu', 'student', 'null', 9715707620, 'user.jpg', 1, 'tamilmanimca2016@Gmail.com'),
('15MCL128', '15MCL128', 'THANGAMANI.N', 'computer application', '15MCL128@kongu.edu', 'student', 'null', 9659679520, 'user.jpg', 1, 'thangamani12nachimuthu@gmail.com'),
('15MCL129', '15MCL129', 'THARANI S', 'computer application', '15MCL129@kongu.edu', 'student', 'null', 9965920501, 'user.jpg', 1, 'tharanisrinath@gmail.com'),
('15MCL130', '15MCL130', 'VIDHYA.R', 'computer application', '15MCL130@kongu.edu', 'student', 'null', 9543405115, 'user.jpg', 1, 'dhurkavidhya@gmail.com'),
('15MCL131', '15MCL131', 'VIDHYASRI M', 'computer application', '15MCL131@kongu.edu', 'student', 'null', 8508903634, 'user.jpg', 1, 'vidhyasrimanivannan@gmail.com'),
('15MCL132', '15MCL132', 'VIGNESH.K', 'computer application', '15MCL132@kongu.edu', 'student', 'null', 9865636478, 'user.jpg', 1, 'Vigneshk6567@gmail.com'),
('15MCL133', '15MCL133', 'VIGNESHWARAN.T', 'computer application', '15MCL133@kongu.edu', 'student', 'null', 9655541924, 'user.jpg', 1, 'tvigneshwaranmca2016@gmail.com'),
('15MCL134', '15MCL134', 'VIKNESH.K.R', 'computer application', '15MCL134@kongu.edu', 'student', 'null', 7639863295, 'user.jpg', 1, 'krvikneshkec@gmail.com'),
('15MCL135', '15MCL135', 'VINITHA.G', 'computer application', '15MCL135@kongu.edu', 'student', 'null', 8523998432, 'user.jpg', 1, 'vinithagmk@gmai.com'),
('15MCL136', '15MCL136', 'VISHNUPRIYA K', 'computer application', '15MCL136@kongu.edu', 'student', 'null', 9789305826, 'user.jpg', 1, 'vishnuvini97@gmail.com'),
('15adm001', 'admin', 'Admin', 'office', 'admin@kongu.edu', 'admin', 'null', 9842454784, 'admin.png', 1, 'sridharlovevirus@gmail.com'),
('15bsc001', '15bsc001', 'bhavana', 'bsc', '15bsc001@kongu.edu', 'student', 'null', 7789543210, 'user.jpg', 0, 'hhnsh@gmail.com'),
('15cse121', '15cse121', 'geetha', 'cse', '15cse121@kongu.edu', 'student', 'null', 8989543210, 'user.jpg', 0, 'bsns@gmail.com'),
('15hod115', '15hod115', 'keerthi', 'cse', '15hod115@kongu.edu', 'hod', 'null', 9005054754, 'profile/15hod115.jpeg', 0, 'hodkecbm@gmail.com'),
('15hod118', '15hod118', 'kowsika', 'it', '15hod118@kongu.edu', 'hod', 'null', 9876543210, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15hod119', '15hod119', 'ramya', 'computer application', '15hod119@kongu.edu', 'hod', 'null', 7005054754, 'profile/15hod119.png', 1, 'hodkecrr@gmail.com'),
('15mbl001', '15mbl001', 'raja', 'mba', '15mbl001@kongu.edu', 'student', 'null', 8989543210, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15msc001', '15msc001', 'ramya', 'msc', '15msc116@kongu.edu', 'student', 'null', 8500554744, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf001', '15stf001', 'uma', 'computer application', '15stf001@kongu.edu', 'staff', 'placement', 9542100012, 'profile/15stf001.jpeg', 0, 'hodkecrr@gmail.com'),
('15stf002', '15stf002', 'hari', 'bsc', '15stf002@kongu.edu', 'staff', 'placement', 9876543215, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf003', '15stf003', 'rahu', 'msc', '15stf003@kongu.edu', 'staff', 'placement', 9600188452, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf004', '15stf004', 'pyingkodi', 'cse', '15stf004@kongu.edu', 'staff', 'placement', 9875545242, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf008', '15stf008', 'tamilselvi', 'it', '15stf008@kongu.edu', 'staff', 'placement', 9876543252, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf009', '15stf009', 'manivel', 'computer application', '15stf009@kongu.edu', 'staff', 'placement', 9876545252, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf020', '15stf020', 'harisankar', 'computer application', '15stf020@kongu.edu', 'staff', 'null', 9876541230, 'user.jpg', 0, 'hodkecrr@gmail.com'),
('15stf023', '15stf023', 'kavithabharathi', 'computer application', '15stf023@kongu.edu', 'staff', 'null', 9876543213, 'user.jpg', 0, 'hodkecrr@gmail.com');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
