-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2018 at 09:33 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-12-08 02:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `forumtable`
--

CREATE TABLE `forumtable` (
  `ForumID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `ForumTitle` varchar(255) DEFAULT NULL,
  `ForumDescription` varchar(255) DEFAULT NULL,
  `ForumDate` date DEFAULT NULL,
  `ForumTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReplyCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumtable`
--

INSERT INTO `forumtable` (`ForumID`, `CustomerID`, `Category`, `ForumTitle`, `ForumDescription`, `ForumDate`, `ForumTime`, `ReplyCount`) VALUES
(1, 7, 'BMW', 'New 2018 BMW X3', 'New model. Apparently. \r\n\r\nDoesn\'t it look like the old X3?\r\n\r\nhttp://www.bmwblog.c...furt-auto-show/ ', '2018-01-04', '2018-01-04 17:58:38', 4),
(2, 8, 'Kia', 'KIA K3 Owners check-in!', 'K3 owners-to-be, we are all looking forward to the delivery of our cars biggrin.gif\r\nlet\'s consolidate an owners\' list here!\r\nlet me start the ball rolling:\r\n\r\n1. TTT - Golden Beat\r\n2. ER-3682 - Bright Silver\r\n3. Firedemon15 - Glittering Metal\r\n4. Vyeron ', '2018-01-04', '2018-01-04 14:58:35', 1),
(3, 9, 'Hyundai', '2016 Hyundai Elantra / Avante', 'Is all new model. So I create a new thread for everyone to comment and discuss.\r\nIf COE drop below $20k(although very unlikely). Will this become\r\nbest selling model again?', '2018-01-04', '2018-01-04 15:33:35', 3),
(4, 8, 'Mitsubishi', 'Mitsubishi Attrage.', 'I\'m curious how this small & underpowered car will perform in SG context...\r\nIt\'s immensely popular in US due to low cost & fuel frugality.\r\nAnyone test drive or bought 1? Comments?', '2018-01-04', '2018-01-04 17:47:23', 0),
(5, 8, 'Hyundai', '2016 Hyundai Elantra / Avante', 'Is all new model. So I create a new thread for everyone to comment and discuss. If COE drop below $20k(although very unlikely). Will this become best selling model again?', '2018-01-05', '2018-01-05 07:25:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `link_rss`
--

CREATE TABLE `link_rss` (
  `LinkID` int(11) NOT NULL,
  `MainID` int(11) DEFAULT NULL,
  `Title` text,
  `TitleLink` text,
  `LinkDate` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_rss`
--

INSERT INTO `link_rss` (`LinkID`, `MainID`, `Title`, `TitleLink`, `LinkDate`) VALUES
(1, 1, 'New-car sales for November 2017: Winners and losers', 'http://autoweek.com/article/car-news/new-car-sales-november-2017-winners-and-losers', 'Tuesday, December 5, 2017, 2:30 AM'),
(8, 1, '2018 Honda CR-V', 'https://www.thecarconnection.com/overview/honda_cr-v_2018', 'Wed, 03 Jan 2018 21:46:00 -0500'),
(10, 2, '2018 Honda Pilot', 'https://www.thecarconnection.com/overview/honda_pilot_2018', 'Wed, 03 Jan 2018 21:40:00 -0500'),
(11, 2, '2018 Honda HR-V', 'https://www.thecarconnection.com/overview/honda_hr-v_2018', 'Wed, 03 Jan 2018 20:29:00 -0500'),
(12, 1, '2018 Acura ILX', 'https://www.thecarconnection.com/overview/acura_ilx_2018', 'Wed, 03 Jan 2018 19:48:00 -0500'),
(13, 2, '2018 Honda CR-V', 'https://www.thecarconnection.com/overview/honda_cr-v_2018', 'Wed, 03 Jan 2018 21:46:00 -0500'),
(14, 2, '2018 Honda Pilot', 'https://www.thecarconnection.com/overview/honda_pilot_2018', 'Wed, 03 Jan 2018 21:40:00 -0500'),
(15, 2, '2018 Acura RDX', 'https://www.thecarconnection.com/overview/acura_rdx_2018', 'Wed, 03 Jan 2018 17:43:00 -0500'),
(16, 3, 'Seven ways to tell if a used car has flood damage', 'https://www.thecarconnection.com/news/1112407_seven-ways-to-tell-if-a-used-car-has-flood-damage', 'Wed, 30 Aug 2017 08:00:00 -0400'),
(20, 1, 'What are the different levels of self-driving cars?', 'https://www.thecarconnection.com/news/1108911_what-are-the-different-levels-of-self-driving-cars', 'Tue, 21 Feb 2017 10:00:00 -0500'),
(21, 3, 'What are the different levels of self-driving cars?', 'https://www.thecarconnection.com/news/1108911_what-are-the-different-levels-of-self-driving-cars', 'Tue, 21 Feb 2017 10:00:00 -0500'),
(22, 3, 'Now\'s the time to buy winter tires', 'https://www.thecarconnection.com/news/1108695_nows-the-time-to-buy-winter-tires', 'Tue, 21 Feb 2017 10:00:00 -0500'),
(23, 1, 'Now\'s the time to buy winter tires', 'https://www.thecarconnection.com/news/1108695_nows-the-time-to-buy-winter-tires', 'Tue, 21 Feb 2017 10:00:00 -0500'),
(24, 4, '2018 Lexus RX L video preview', 'https://www.thecarconnection.com/news/1114006_2018-lexus-rx-l-video-preview', 'Fri, 01 Dec 2017 12:36:00 -0500'),
(25, 4, '2018 Hyundai Kona video preview', 'https://www.thecarconnection.com/news/1114051_2018-hyundai-kona-video-preview', 'Fri, 01 Dec 2017 12:30:00 -0500'),
(26, 4, 'Crossover to the small side: 2018 Nissan Kicks SUV video preview', 'https://www.thecarconnection.com/news/1114042_crossover-to-the-small-side-2018-nissan-kicks-suv-video-preview', 'Fri, 01 Dec 2017 09:54:00 -0500'),
(27, 5, 'The Hurricane Harvey and Irma car sales boom is already over', 'https://www.thecarconnection.com/news/1114520_the-hurricane-harvey-and-irma-car-sales-boom-is-already-over', 'Wed, 03 Jan 2018 12:16:00 -0500'),
(28, 5, 'China\'s push toward electrification, Nissan reads your brain, Mercedes C350e driven: What’s New @ The Car Connection', 'https://www.thecarconnection.com/news/1114555_chinas-plush-toward-electrification-nissan-reads-your-brain-mercedes-c350e-driven-whats-new-the-car-connection', 'Wed, 03 Jan 2018 10:30:00 -0500'),
(29, 5, 'China halts production of 500-plus gas-guzzling cars', 'https://www.thecarconnection.com/news/1114539_china-halts-production-of-500-plus-gas-guzzling-cars', 'Tue, 02 Jan 2018 12:08:00 -0500'),
(30, 1, 'The Hurricane Harvey and Irma car sales boom is already over', 'https://www.thecarconnection.com/news/1114520_the-hurricane-harvey-and-irma-car-sales-boom-is-already-over', 'Wed, 03 Jan 2018 12:16:00 -0500');

-- --------------------------------------------------------

--
-- Table structure for table `main_rss`
--

CREATE TABLE `main_rss` (
  `MainID` int(11) NOT NULL,
  `MainTitle` varchar(30) DEFAULT NULL,
  `MainDescription` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_rss`
--

INSERT INTO `main_rss` (`MainID`, `MainTitle`, `MainDescription`) VALUES
(1, 'Master Feed', 'Car news from Autoweek.com'),
(2, 'Car Reviews', 'Car Reviews from Autoweek.com'),
(3, 'Tips and Advice', 'Motorsports headlines from Aut'),
(4, 'Auto Shows', 'helo'),
(5, 'Blog And News', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `ReplyID` int(11) NOT NULL,
  `ForumID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `ReplyDescription` varchar(255) DEFAULT NULL,
  `ReplyDate` date DEFAULT NULL,
  `ReplyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`ReplyID`, `ForumID`, `CustomerID`, `ReplyDescription`, `ReplyDate`, `ReplyTime`) VALUES
(1, 1, 10, 'Suv look all the same.', '2018-01-04', '2018-01-04 14:54:44'),
(2, 1, 12, 'i feel it looks like the x5 but smaller. now all the X series all look about the same just the size different. ', '2018-01-04', '2018-01-04 14:57:30'),
(3, 2, 9, 'See you guys this Saturday...heehee. ', '2018-01-04', '2018-01-04 14:58:35'),
(4, 3, 7, 'I found that my mitsubishi canter dashboard also feel nicer than this. . . . . . \r\nMy ex elantra interior was much much much much nicer. ', '2018-01-04', '2018-01-04 15:07:57'),
(5, 3, 8, 'give us a break....canter dashboard probably designed to tahan vibrations instead.\r\n\r\n \r\n\r\ni feel this the latest tucson and santa fe are having a similar theme for the interior.\r\n\r\n \r\n\r\nhowever all their steering wheels and their dash board layout resemb', '2018-01-04', '2018-01-04 15:33:03'),
(6, 3, 9, 'Hais... Another \"taxi\" on the road...\r\nI think the current elantras look so so much better than the mini \"I40\".\r\nInterior dashboard reminds me of my previous Toyota corolla in the 90s.', '2018-01-04', '2018-01-04 15:33:35'),
(7, 1, 8, 'apple', '2018-01-04', '2018-01-04 17:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06'),
(4, 'b@gmail.com', 2, 'asdf', 'asdf', 'asdf', 0, '2017-12-28 16:23:55'),
(5, 'b@gmail.com', 2, 'asdf', 'asdf', 'asdf', 0, '2017-12-28 16:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Acura', '2017-06-18 16:24:34', '2018-01-04 13:14:43'),
(2, 'Alpha Romeo', '2017-06-18 16:24:50', '2018-01-04 13:14:56'),
(3, 'AM General', '2017-06-18 16:25:03', '2018-01-04 13:15:06'),
(4, 'Aston Martin', '2017-06-18 16:25:13', '2018-01-04 13:15:17'),
(5, 'Audi', '2017-06-18 16:25:24', '2018-01-04 13:15:26'),
(7, 'Bentley', '2017-06-19 06:22:13', '2018-01-04 13:15:38'),
(8, 'BMW', '2018-01-04 13:13:10', '2018-01-04 13:15:46'),
(9, 'Buick', '2018-01-04 13:16:11', NULL),
(10, 'Cadilla', '2018-01-04 13:16:31', NULL),
(11, 'Chevrolet', '2018-01-04 13:16:44', NULL),
(12, 'Chrysler', '2018-01-04 13:17:18', NULL),
(13, 'Coda', '2018-01-04 13:17:26', NULL),
(14, 'Daewoo', '2018-01-04 13:17:39', NULL),
(15, 'Dodge', '2018-01-04 13:17:48', NULL),
(16, 'Eagle', '2018-01-04 13:17:57', NULL),
(17, 'Ferrai', '2018-01-04 13:18:04', NULL),
(18, 'FIAT', '2018-01-04 13:18:13', NULL),
(19, 'Fisker', '2018-01-04 13:18:22', NULL),
(20, 'Ford', '2018-01-04 13:18:31', NULL),
(21, 'Freightliner', '2018-01-04 13:19:09', NULL),
(22, 'Genesis', '2018-01-04 13:19:22', NULL),
(23, 'Geo', '2018-01-04 13:19:29', NULL),
(24, 'GMC', '2018-01-04 13:19:36', NULL),
(25, 'Honda', '2018-01-04 13:19:42', NULL),
(26, 'HUMMER', '2018-01-04 13:20:25', NULL),
(27, 'Hyundai', '2018-01-04 13:20:32', NULL),
(28, 'INFINITI', '2018-01-04 13:20:44', NULL),
(29, 'Isuzu', '2018-01-04 13:20:51', NULL),
(30, 'Jaguar', '2018-01-04 13:21:00', NULL),
(31, 'Jeep', '2018-01-04 13:21:10', NULL),
(32, 'Kia', '2018-01-04 13:21:20', NULL),
(33, 'lamborghini', '2018-01-04 13:21:31', NULL),
(34, 'Land Rover', '2018-01-04 13:21:43', NULL),
(35, 'Lexus', '2018-01-04 13:21:50', NULL),
(36, 'Lincoln', '2018-01-04 13:22:06', NULL),
(37, 'Lotus', '2018-01-04 13:22:53', NULL),
(38, 'Maserati', '2018-01-04 13:23:07', NULL),
(39, 'Maybach', '2018-01-04 13:23:19', NULL),
(40, 'Mazda', '2018-01-04 13:23:41', NULL),
(41, 'Mclaren', '2018-01-04 13:23:52', NULL),
(42, 'Mercedes-Benz', '2018-01-04 13:24:12', NULL),
(43, 'Mercury', '2018-01-04 13:24:27', NULL),
(44, 'Mini', '2018-01-04 13:24:36', NULL),
(45, 'Mitsubishi', '2018-01-04 13:29:03', NULL),
(46, 'Nissan', '2018-01-04 13:29:16', NULL),
(47, 'Oldsmobile', '2018-01-04 13:29:27', NULL),
(48, 'Panoz', '2018-01-04 13:29:37', NULL),
(49, 'Plymouth', '2018-01-04 13:29:51', NULL),
(50, 'Pontiac', '2018-01-04 13:30:03', NULL),
(51, 'Porsche', '2018-01-04 13:30:14', NULL),
(52, 'Ram', '2018-01-04 13:30:25', NULL),
(53, 'Rolls-Royce', '2018-01-04 13:30:39', NULL),
(54, 'Saab', '2018-01-04 13:30:49', NULL),
(55, 'Saturn', '2018-01-04 13:30:57', NULL),
(56, 'Scion', '2018-01-04 13:31:03', NULL),
(57, 'Smart', '2018-01-04 13:31:07', NULL),
(58, 'Subaru', '2018-01-04 13:31:15', NULL),
(59, 'Suzuki', '2018-01-04 13:31:22', NULL),
(60, 'Tesla', '2018-01-04 13:31:31', NULL),
(61, 'Toyota', '2018-01-04 13:31:39', NULL),
(62, 'Volkswagen', '2018-01-04 13:31:48', NULL),
(63, 'Volvo', '2018-01-04 13:31:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Eco Friendly Car																					', 'admin@eco.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '																				<h2 style=\"font-family: Lato, sans-serif; font-weight: 900; color: rgb(17, 17, 17); margin: 0px auto 30px; font-size: 40px; text-align: center;\">Welcome&nbsp;<span style=\"font-weight: 300;\">to the Car Dealer</span></h2><div><span style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; font-size: 17px; text-align: center;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</span></div><div><h3 style=\"font-family: Lato, sans-serif; font-weight: 900; color: rgb(17, 17, 17); margin: 25px auto 15px; font-size: 28px;\">Who&nbsp;<span style=\"font-weight: 300;\">Are We</span></h3><p style=\"margin-bottom: 15px; font-size: 16px; line-height: 26px; color: rgb(85, 85, 85); font-family: Lato, sans-serif;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment.</p><p style=\"margin-bottom: 15px; font-size: 16px; line-height: 26px; color: rgb(85, 85, 85); font-family: Lato, sans-serif;\"><br></p><h3 style=\"font-family: Lato, sans-serif; font-weight: 900; color: rgb(17, 17, 17); margin: 25px auto 15px; font-size: 28px;\">Our&nbsp;<span style=\"font-weight: 300;\">Mission</span></h3><p style=\"margin-bottom: 15px; font-size: 16px; line-height: 26px; color: rgb(85, 85, 85); font-family: Lato, sans-serif;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment.</p><p style=\"margin-bottom: 15px; font-size: 16px; line-height: 26px; color: rgb(85, 85, 85); font-family: Lato, sans-serif;\"><br></p><h3 style=\"font-family: Lato, sans-serif; font-weight: 900; color: rgb(17, 17, 17); margin: 25px auto 15px; font-size: 28px;\">What&nbsp;<span style=\"font-weight: 300;\">we do</span></h3><p style=\"margin-bottom: 15px; font-size: 16px; line-height: 26px; color: rgb(85, 85, 85); font-family: Lato, sans-serif;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment.</p></div>\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(2, 'test@gmail.com', 'Dave Sosnowski is awesome! He was extremely easy to work with. He helped me get exactly what I was looking for in a new automobile. Very friendly dealership - would definitely recommend.', '2017-06-18 07:46:05', 1),
(3, 'test@gmail.com', 'asdfasd', '2017-12-01 16:21:57', NULL),
(4, 'a@gmail.com', 'I went in expecting to purchase a used vehicle. I didn\'t even want to consider a new vehicle thinking it was out of my price range. Dave Sosnowski took the time to give me all of my options and was never pushy. I ended up getting a brand new car that I LOVE and can afford. ', '2017-12-29 03:11:15', 1),
(6, 'c@gmail.com', 'I had been looking for a used Sienna, which they had on the lot. Janelle let my wife and I drive the vehicle around the area on our own and then gave us an excellent price. Because we live in DuPage County, she was able to get us in the vehicle and drive it home the same afternoon, and to give us extra keys. All in all, it worked out beautifully.', '2017-12-29 03:18:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `cid` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `CustomerImage` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `CustomerCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`cid`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`, `CustomerImage`, `age`, `CustomerCount`) VALUES
(1, 'Anuj Kumar', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2017-06-26 21:02:58', '', 0, 0),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09', '', 0, 0),
(3, 'Anuj Kumar', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2017-06-17 20:01:43', '2017-06-17 21:07:41', '', 0, 0),
(4, 'Anuj Kumar', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2017-06-17 20:03:36', '2018-01-04 13:05:29', 'uploads/testimonial-img-3.jpg', 0, 0),
(7, 'spn', 'c@gmail.com', '4a8a08f09d37b73795649038408b5f33', '12345', NULL, NULL, NULL, NULL, '2017-12-28 18:53:29', '2018-01-04 15:32:26', 'uploads/_about_us_img2.jpg', 0, 43),
(8, 'andrew', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661', '12345', NULL, NULL, NULL, NULL, '2017-12-29 03:07:41', '2018-01-05 07:52:27', 'uploads/_testimonial-img-1.jpg', 0, 0),
(9, 'John', 'b@gmail.com', '92eb5ffee6ae2fec3ad71c777531578f', '12345', NULL, NULL, NULL, NULL, '2017-12-29 03:33:55', '2018-01-04 15:36:17', 'uploads/_our_team_3.jpg', 0, 105),
(10, 'apple', 'd@gmail.com', '8277e0910d750195b448797616e091ad', '123456', '1970-01-01', NULL, NULL, NULL, '2017-12-29 04:22:37', '2018-01-04 14:54:48', 'uploads/_about_us_img3.jpg', 48, 8),
(11, 'e', 'e@gmail.com', 'e1671797c52e15f763380b45e841ec32', '123456', '1998-01-14', NULL, NULL, NULL, '2017-12-29 04:23:05', '2018-01-04 14:56:54', 'uploads/testimonial-img-2', 19, 1),
(12, 'abcd', 'f@gmail.com', '8fa14cdd754f91cc6554c9e71929cce7', '12345', '1998-01-14', NULL, NULL, NULL, '2018-01-03 02:40:08', '2018-01-04 14:57:34', 'uploads/_about_us_img2.jpg', 19, 6),
(15, 'James West', 'jameswest@gmail.com', '92cc8abba6d746bf8895e92fc66047b5', '012345678', '1998-01-14', NULL, NULL, NULL, '2018-01-04 16:33:47', '2018-01-05 07:57:08', 'uploads/_comment-author-2.jpg', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Ford Shelby GT350', 2, 'On the other hand, we denounce with righteous indignation and dislike.', 3500, 'Petrol', 2005, 7, 'recent-car-1.jpg', 'listing_img2.jpg', 'listing_img3.jpg', 'listing_img4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-12-28 20:22:07'),
(2, 'BMW 535i', 2, 'Road ready. Show the world what your 5 Series can do. Black high-gloss design elements on the bumpers catch the eye, while the Sport body design sends a challenge to all comers.', 1000, 'CNG', 2015, 4, 'BMW 535i.jpg', 'BMW 535i 2.jpg', 'BMW 535i 3.jpg', 'BMW 535i 4.JPG', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2017-12-28 20:22:15'),
(3, 'Volvo v40', 4, 'You’d think that of all the posh car brands building a rival to the safe, sturdy, sensible VW Golf, it should be Volvo. But no: for years, Volvo has missed the premium five-door hatch target, giving us small saloons, small estates and small three-door coupes instead. By the law of averages, it was bound to stumble across a winning recipe at some point: the launch of the five-door V40 hatch is it.\n\nThis is a vital car for the brand. It’s intended to be a step up for Golf buyers, for those who don’t want the flash of an Audi A3 or BMW 1-Series. On looks alone, it’s there: this is a rather foxy-looking Volvo, and even the bonnet has been kept low and sporty thanks to the trick addition of a pedestrian airbag. Underneath, there’s a Volvo-ised version of the fine Ford Focus platform, plus a range of engines that shame even Bluemotion Golfs for efficiency. There’s no doubting the potential it possesses.', 2500, 'CNG', 2012, 5, 'Nissan , Volvo v40.jpg', 'Nissan , Volvo v40 1.jpg', 'Nissan , Volvo v40 3.jpg', 'Nissan , Volvo v40 4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2018-01-04 05:26:46'),
(4, 'Audi TT RS', 1, 'The new RS builds on the 2012–2013 TT RS with one significant difference: The previous model was imported to the United States only with a six-speed manual gearbox, but the factory in Györ, Hungary, doesn’t build them with three pedals anymore. A seven-speed dual-clutch automatic is the only transmission. With boost turned up from 18.1 psi in the first-gen car to 19.6 psi, the inline five-cylinder now makes another 40 horses. At the same time, weight is down, largely due to the aluminum block that replaces the old iron lump. On our scales, the 2018 TT RS weighed in at 3270 pounds, 42 less than the outgoing car. Taken together, these three attributes—more power, less weight, and an automatic gearbox—make the new TT RS significantly quicker than its 4.0-second-to-60-mph predecessor.', 4500, 'CNG', 2012, 5, 'Audi TT RS.jpg', 'Audi TT RS 2.jpg', 'Audi TT RS 4.jpg', 'Audi TT RS 5.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-12-28 20:21:55'),
(5, 'Audi A3', 5, 'vtretrvet', 2000, 'Petrol', 3453, 7, 'Audi A3.jpg', 'Audi A3 3.jpg', 'Audi A3 4.jpg', 'Audi A3 5.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2017-12-28 20:21:50'),
(6, 'Range Rover', 2, ' 12250 F Garvey Ave South West Covina, CA 91791', 1200, 'Diesel', 2010, 5, 'listing_img3.jpg', 'listing_img2.jpg', 'listing_img1.jpg', 'listing_img4.jpg', 'listing_img5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-12-28 19:57:34', '2018-01-04 05:31:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forumtable`
--
ALTER TABLE `forumtable`
  ADD PRIMARY KEY (`ForumID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `link_rss`
--
ALTER TABLE `link_rss`
  ADD PRIMARY KEY (`LinkID`);

--
-- Indexes for table `main_rss`
--
ALTER TABLE `main_rss`
  ADD PRIMARY KEY (`MainID`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`ReplyID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ForumID` (`ForumID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
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
-- AUTO_INCREMENT for table `forumtable`
--
ALTER TABLE `forumtable`
  MODIFY `ForumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `link_rss`
--
ALTER TABLE `link_rss`
  MODIFY `LinkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `main_rss`
--
ALTER TABLE `main_rss`
  MODIFY `MainID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `ReplyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `forumtable`
--
ALTER TABLE `forumtable`
  ADD CONSTRAINT `forumtable_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `tblusers` (`cid`);

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `tblusers` (`cid`),
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`ForumID`) REFERENCES `forumtable` (`ForumID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
