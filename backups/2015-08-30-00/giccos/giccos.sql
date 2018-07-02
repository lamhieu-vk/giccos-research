-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2015 at 06:23 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giccos`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertising_actions`
--

CREATE TABLE IF NOT EXISTS `advertising_actions` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `advertising.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `action` char(10) NOT NULL,
  `location.hostname` varchar(40) DEFAULT NULL,
  `location.port` varchar(40) DEFAULT NULL,
  `location.protocol` char(10) DEFAULT NULL,
  `location.pathname` varchar(255) DEFAULT NULL,
  `location.href` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_id`
--

CREATE TABLE IF NOT EXISTS `advertising_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `status` int(1) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `expires` int(11) NOT NULL,
  `version` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_category`
--

CREATE TABLE IF NOT EXISTS `answers_category` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_post`
--

CREATE TABLE IF NOT EXISTS `answers_post` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `question` int(1) NOT NULL,
  `is.author` int(1) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_rate`
--

CREATE TABLE IF NOT EXISTS `answers_rate` (
  `id` int(11) NOT NULL,
  `topic.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `value` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_topic`
--

CREATE TABLE IF NOT EXISTS `answers_topic` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cited`
--

CREATE TABLE IF NOT EXISTS `cited` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author` varchar(40) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `photos.id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faces_id`
--

CREATE TABLE IF NOT EXISTS `faces_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(10) NOT NULL,
  `tag` varchar(40) NOT NULL,
  `thumbnail` char(10) NOT NULL,
  `faces` varchar(20) NOT NULL,
  `confidence` char(6) NOT NULL,
  `eye.left.x` char(6) NOT NULL,
  `eye.left.y` char(6) NOT NULL,
  `eye.right.x` char(6) NOT NULL,
  `eye.right.y` char(6) NOT NULL,
  `nose.x` char(6) NOT NULL,
  `nose.y` char(6) NOT NULL,
  `mouth.tl.x` char(6) NOT NULL,
  `mouth.tl.y` char(6) NOT NULL,
  `mouth.bl.x` char(6) NOT NULL,
  `mouth.bl.y` char(6) NOT NULL,
  `mouth.tr.x` char(6) NOT NULL,
  `mouth.tr.y` char(6) NOT NULL,
  `mouth.br.x` char(6) NOT NULL,
  `mouth.br.y` char(6) NOT NULL,
  `pose.roll` char(6) NOT NULL,
  `pose.yaw` char(6) NOT NULL,
  `pose.pitch` char(6) NOT NULL,
  `race.text` varchar(20) NOT NULL,
  `race.value` char(6) NOT NULL,
  `quality.brn` char(6) NOT NULL,
  `quality.shn` char(6) NOT NULL,
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL,
  `mood` text
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faces_id`
--

INSERT INTO `faces_id` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`, `mood`) VALUES
(1, 1439486797, 1439486797, '43ee7196', 'b8488cd2', '', '72b83f1b', '0474f921', '1', '94.2', '122', '111.8', '120.3', '98.2', '130.6', '96.6', '141.8', '96.6', '141.8', '113.6', '138.7', '113.6', '138.7', '-4.58', '-36.79', '5.47', 'indian', '0.97', '0.44', '0', '37.72', '0.98', '1', '0.14', '0.04', '0.01', '0.3188', '1', 's:6:"indian";'),
(2, 1439492029, 1439492029, '62b97eec', 'e63caf12', '', '806c5679', '3c194b5d', '1', '438.1', '84', '468.2', '76.7', '450.8', '105.5', '447.5', '120.9', '447.5', '120.9', '479.2', '112.2', '479.2', '112.2', '-11.28', '-27.68', '-6.83', 'indian', '0.78', '0.54', '1.1', '28.84', '1', '1', '0.07', '0', '0.72', '0.6503', '1', 'a:3:{s:5:"happy";d:0.93000000000000004884981308350688777863979339599609375;s:7:"disgust";d:0.0299999999999999988897769753748434595763683319091796875;s:3:"sad";d:0.0200000000000000004163336342344337026588618755340576171875;}'),
(3, 1439492173, 1439492173, 'c7ad496e', 'cec9c0fd', '', '073db441', '3c194b5d', '1', '438.1', '84', '468.2', '76.7', '450.8', '105.5', '447.5', '120.9', '447.5', '120.9', '479.2', '112.2', '479.2', '112.2', '-11.28', '-27.68', '-6.83', 'indian', '0.78', '0.54', '1.1', '28.84', '1', '1', '0.07', '0', '0.72', '0.6503', '1', 'a:3:{s:5:"happy";d:0.93000000000000004884981308350688777863979339599609375;s:7:"disgust";d:0.0299999999999999988897769753748434595763683319091796875;s:3:"sad";d:0.0200000000000000004163336342344337026588618755340576171875;}'),
(4, 1439493982, 1439493982, '1e6ef921', 'e958546f', '', '7a82e14c', 'b2dc9851', '1', '417.2', '82.7', '443.8', '83.2', '428.4', '97', '416.7', '114.8', '416.7', '114.8', '440.2', '116', '440.2', '116', '0.58', '-0.07', '11.25', 'asian', '0.85', '0.44', '0.1', '50.19', '0.07', '0.93', '0.02', '0.22', '0', '0.0114', '1', 'a:3:{s:5:"happy";d:0.34999999999999997779553950749686919152736663818359375;s:8:"confused";d:0.190000000000000002220446049250313080847263336181640625;s:4:"calm";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(5, 1439494331, 1439494331, '3991a4a8', '7f32f4c8', '', '38cf247d', 'e31ceef1', '1', '91.2', '65.7', '122.6', '66.7', '112.3', '86.5', '93', '100.1', '93', '100.1', '117.8', '100.1', '117.8', '100.1', '0.56', '19.23', '-6.86', 'asian', '0.97', '0.29', '0.1', '27.61', '0.8', '0', '0', '0', '0.59', '0.9374', '0', 'a:3:{s:5:"happy";d:0.91000000000000003108624468950438313186168670654296875;s:5:"angry";d:0.040000000000000000832667268468867405317723751068115234375;s:9:"surprised";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(6, 1439494336, 1439494336, 'd7aa7a83', 'a603011a', '', '14a5c5b9', 'cd607e1f', '1', '163.4', '63.5', '193.6', '66.5', '170.4', '79.8', '160', '95.3', '160', '95.3', '187.9', '98.2', '187.9', '98.2', '6.64', '-20.35', '3.74', 'asian', '1', '0.45', '0.1', '20.18', '0.99', '0.01', '0', '0', '0.33', '0.9723', '0', 'a:3:{s:5:"happy";d:0.9899999999999999911182158029987476766109466552734375;s:5:"angry";d:0.08000000000000000166533453693773481063544750213623046875;s:7:"disgust";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(7, 1439494340, 1439494340, '4a176509', '0aafaf98', '', 'b4a1d5a3', '8f6e207c', '1', '366.9', '113', '399.9', '102.7', '388.9', '131.3', '379.6', '150.8', '379.6', '150.8', '409.1', '141.8', '409.1', '141.8', '-16.53', '-8.01', '-5.1', 'asian', '0.95', '0.31', '0.1', '24.91', '0.82', '0', '0', '0', '0.14', '0.9595', '0', 'a:3:{s:5:"happy";d:0.81999999999999995115018691649311222136020660400390625;s:5:"angry";d:0.040000000000000000832667268468867405317723751068115234375;s:4:"calm";d:0.0200000000000000004163336342344337026588618755340576171875;}'),
(8, 1439494345, 1439494345, 'f2517953', '48a0e42c', '', 'ff9f01d8', '0d908347', '1', '491.7', '122.7', '532.2', '125.2', '507.1', '146.3', '490.4', '165.5', '490.4', '165.5', '528.4', '165.7', '528.4', '165.7', '3.82', '-10.5', '-0.63', 'asian', '1', '0.36', '0.2', '19.56', '0.98', '0.01', '0', '0', '0.93', '0.9052', '0', 'a:3:{s:5:"happy";i:1;s:5:"angry";d:0.0200000000000000004163336342344337026588618755340576171875;s:9:"surprised";i:0;}'),
(9, 1439494552, 1439494552, '933c4019', 'd97d956a', '', 'b1213f53', '97e5ff38', '1', '147.6', '182.8', '247.4', '158.3', '230.3', '229.9', '193.8', '292.3', '193.8', '292.3', '263.7', '271', '263.7', '271', '-15.63', '16.1', '-3.93', 'asian', '0.73', '0.37', '1', '21.99', '0.86', '0', '0.01', '0.36', '0.05', '0.7079', '0', 'a:3:{s:5:"happy";d:0.7399999999999999911182158029987476766109466552734375;s:3:"sad";d:0.270000000000000017763568394002504646778106689453125;s:4:"calm";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(10, 1439494557, 1439494557, 'fb4df3db', '0dd091a1', '', '788e37d5', '362c83f5', '1', '387.4', '219.7', '483.4', '221.3', '415.7', '273.1', '386.7', '333.4', '386.7', '333.4', '450.9', '337.3', '450.9', '337.3', '0.9', '-10.14', '5.93', 'asian', '0.46', '0.4', '0.5', '23', '0.06', '0', '0', '0', '0.01', '0.4761', '0', 'a:3:{s:3:"sad";d:0.2099999999999999922284388276239042170345783233642578125;s:8:"confused";d:0.179999999999999993338661852249060757458209991455078125;s:4:"calm";d:0.070000000000000006661338147750939242541790008544921875;}'),
(11, 1439494559, 1439494559, '756480e8', 'ad1bb058', '', '01b93eed', '9a27dc67', '1', '297.9', '188.8', '403.3', '193.2', '332.2', '259.3', '301.9', '291.6', '301.9', '291.6', '388.1', '298.1', '388.1', '298.1', '2.84', '-14.69', '-9.2', 'asian', '0.64', '0.38', '1.1', '26', '0.98', '0', '0', '0', '0.01', '0.9677', '0', 'a:3:{s:5:"happy";d:0.90000000000000002220446049250313080847263336181640625;s:9:"surprised";d:0.0200000000000000004163336342344337026588618755340576171875;s:8:"confused";d:0.0200000000000000004163336342344337026588618755340576171875;}'),
(12, 1439494561, 1439494561, 'df1ebc0b', '3cf8ac12', '', 'c8702f49', 'e92ef1cf', '1', '182.3', '222.7', '302.7', '228.5', '269.1', '298.6', '185.8', '353.2', '185.8', '353.2', '286.2', '353.2', '286.2', '353.2', '1.2', '28.99', '-1.42', 'black', '0.23', '0.38', '1.3', '25.49', '0.97', '0', '0', '0', '0.01', '0.9826', '0', 'a:3:{s:5:"happy";d:0.9699999999999999733546474089962430298328399658203125;s:9:"surprised";d:0.040000000000000000832667268468867405317723751068115234375;s:4:"calm";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(13, 1439494562, 1439494562, 'd0b0ee7e', '9f87e051', '', 'a41d128b', 'a6c2b35e', '1', '309.7', '182.4', '426.8', '200.7', '325.7', '257.3', '297.5', '290.9', '297.5', '290.9', '404.6', '312.8', '404.6', '312.8', '11.27', '-28.88', '-7.8', 'asian', '0.27', '0.29', '0.9', '24.94', '1', '0.68', '0.01', '0', '0.05', '0.9532', '0', 'a:3:{s:5:"happy";d:0.9699999999999999733546474089962430298328399658203125;s:8:"confused";d:0.01000000000000000020816681711721685132943093776702880859375;s:9:"surprised";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(14, 1439494564, 1439494564, 'd0ec14d6', 'a4919428', '', '5b83ec6f', 'c9aa3489', '1', '56.5', '136.8', '162.5', '130', '141.1', '195.8', '92.9', '258.1', '92.9', '258.1', '164', '248.2', '164', '248.2', '-5.19', '21.31', '-1.81', 'black', '0.72', '0.36', '0.9', '19.25', '0.84', '0', '0.01', '0.06', '0.11', '0.7898', '0', 'a:3:{s:5:"happy";d:0.2200000000000000011102230246251565404236316680908203125;s:4:"calm";d:0.179999999999999993338661852249060757458209991455078125;s:8:"confused";d:0.070000000000000006661338147750939242541790008544921875;}'),
(15, 1439494572, 1439494572, 'ac2c0ed3', 'e1dabd3c', '', 'b11a28cc', '2963c734', '1', '75', '398.3', '195.9', '371.2', '159', '448.1', '95.6', '505.8', '95.6', '505.8', '208.2', '476.1', '208.2', '476.1', '-16.34', '7.87', '-5.44', 'asian', '0.39', '0.4', '1.2', '5.28', '1', '0.01', '0', '0', '0.31', '0.2868', '0.23', 'a:3:{s:5:"happy";d:0.9899999999999999911182158029987476766109466552734375;s:5:"angry";d:0.01000000000000000020816681711721685132943093776702880859375;s:8:"confused";i:0;}'),
(16, 1439494572, 1439494572, '8b0e8074', '4c710bc2', '', 'bf877f41', 'a19fbec7', '1', '450.9', '161.6', '583.4', '136.7', '515.7', '227.2', '486.6', '292.6', '486.6', '292.6', '581.9', '278.8', '581.9', '278.8', '-11.58', '-7.03', '-2.26', 'asian', '1', '0.47', '1.2', '21.73', '0.91', '0', '0', '0', '0.03', '0.8082', '0', 'a:3:{s:5:"happy";d:0.479999999999999982236431605997495353221893310546875;s:9:"surprised";d:0.0200000000000000004163336342344337026588618755340576171875;s:7:"disgust";d:0.0200000000000000004163336342344337026588618755340576171875;}'),
(17, 1439494716, 1439494716, '4a203358', 'f4538379', '', '3fbb7faa', '8a9c921f', '1', '254.7', '251.1', '345.2', '258.2', '319.5', '323.5', '248.4', '353.5', '248.4', '353.5', '323.1', '356.9', '323.1', '356.9', '2.68', '34.95', '-9.61', 'asian', '0.95', '0.58', '1.5', '27.29', '0.98', '0', '0', '0', '0.12', '0.8947', '1', 'a:3:{s:5:"happy";d:0.9899999999999999911182158029987476766109466552734375;s:8:"confused";d:0.059999999999999997779553950749686919152736663818359375;s:4:"calm";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(18, 1439494725, 1439494725, '30854a7a', 'ed205dca', '', '30b410b4', 'a941e790', '1', '362.2', '171.5', '455.4', '183.5', '428.5', '234', '367.8', '288.1', '367.8', '288.1', '440.3', '296.1', '440.3', '296.1', '5.49', '27.03', '3.41', 'asian', '0.92', '0.5', '1.4', '28.6', '0.23', '1', '0.53', '0', '0', '0.1183', '1', 'a:3:{s:3:"sad";d:0.36999999999999999555910790149937383830547332763671875;s:8:"confused";d:0.1700000000000000122124532708767219446599483489990234375;s:4:"calm";d:0.05000000000000000277555756156289135105907917022705078125;}'),
(19, 1439494729, 1439494729, '789feeef', '2131af84', '', '5b70c9c6', '3a7ae945', '0.99', '132.2', '118.2', '166.7', '107.5', '139.4', '142.3', '147.7', '164.7', '147.7', '164.7', '175.3', '157.7', '175.3', '157.7', '-13.01', '-47.64', '-7.83', 'asian', '0.5', '0.73', '0.5', '38.45', '0.93', '0', '0.01', '0.03', '0', '0.8422', '1', 'a:3:{s:5:"happy";d:0.39000000000000001332267629550187848508358001708984375;s:8:"confused";d:0.1000000000000000055511151231257827021181583404541015625;s:9:"surprised";d:0.040000000000000000832667268468867405317723751068115234375;}'),
(20, 1439494730, 1439494730, '36d87342', '4cf90399', '', 'c94b0da5', 'b2bdb753', '1', '652', '294.1', '719.5', '295.6', '690.8', '330.7', '649.7', '352', '649.7', '352', '708', '354.7', '708', '354.7', '0.26', '17.82', '-3.18', 'asian', '0.99', '0.33', '0.3', '25.16', '0.98', '0', '0', '0.01', '0.18', '0.9560', '0', 'a:3:{s:5:"happy";d:0.9899999999999999911182158029987476766109466552734375;s:4:"calm";d:0.01000000000000000020816681711721685132943093776702880859375;s:5:"angry";i:0;}'),
(21, 1439494730, 1439494730, '5c991a3a', '163fd22b', '', '3018ebb7', 'd78c4d81', '1', '376.2', '220.2', '477.9', '236.1', '442.5', '304.8', '370.6', '349.6', '370.6', '349.6', '451.2', '357.6', '451.2', '357.6', '6.86', '29.65', '-3.8', 'asian', '0.82', '0.44', '1.6', '22.86', '0.31', '0', '0', '0', '0', '0.9828', '1', 'a:3:{s:5:"happy";d:0.939999999999999946709294817992486059665679931640625;s:4:"calm";d:0.059999999999999997779553950749686919152736663818359375;s:3:"sad";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(22, 1439494734, 1439494734, 'f6cba37e', '4dd23c5e', '', '1076a0f5', 'bb0a7384', '1', '426.1', '317.8', '524', '359.6', '490.7', '414.8', '399.9', '456.2', '399.9', '456.2', '473', '483.9', '473', '483.9', '20.19', '42.32', '7.75', 'asian', '0.76', '0.53', '2', '24.12', '0.91', '0', '0', '0', '0', '0.9700', '1', 'a:3:{s:5:"happy";d:0.520000000000000017763568394002504646778106689453125;s:4:"calm";d:0.36999999999999999555910790149937383830547332763671875;s:3:"sad";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(23, 1439494735, 1439494735, '90878746', '21f9dec5', '', '48d4a0e4', 'e3cd8609', '1', '425.3', '206.3', '486.2', '224.3', '457.5', '253.7', '411.7', '271.5', '411.7', '271.5', '468.4', '286.3', '468.4', '286.3', '16.75', '22.38', '0.42', 'asian', '0.98', '0.41', '0.5', '30.67', '1', '0', '0', '0', '0.01', '0.9714', '1', 'a:3:{s:5:"happy";i:1;s:4:"calm";d:0.05000000000000000277555756156289135105907917022705078125;s:9:"surprised";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(24, 1439495766, 1439495766, 'b8131e9f', '36665857', '', '96546da8', 'fdcbbffd', '1', '569.9', '309.5', '596.8', '310.6', '581.5', '321.6', '570.4', '335.2', '570.4', '335.2', '593', '336.4', '593', '336.4', '2.67', '-3.72', '4.77', 'white', '0.82', '0.46', '0.1', '39.73', '0.92', '0', '0', '0.67', '0.03', '0.3127', '0', 'a:3:{s:5:"happy";d:0.95999999999999996447286321199499070644378662109375;s:3:"sad";d:0.14000000000000001332267629550187848508358001708984375;s:5:"angry";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(25, 1439495771, 1439495771, 'c1505623', 'adb8ec05', '', '7630f157', 'cb7fd7d5', '1', '324.5', '120.6', '350.5', '119.3', '337.5', '130.9', '328.1', '148.1', '328.1', '148.1', '348.4', '146.9', '348.4', '146.9', '-3.25', '-3.26', '12.81', 'white', '0.99', '0.48', '0.1', '24.96', '0.92', '0.05', '0.03', '0', '0.96', '0.9769', '1', 'a:3:{s:4:"calm";d:0.38000000000000000444089209850062616169452667236328125;s:9:"surprised";d:0.1600000000000000033306690738754696212708950042724609375;s:5:"happy";d:0.070000000000000006661338147750939242541790008544921875;}'),
(26, 1439495777, 1439495777, '623a7e11', 'd0a494ce', '', 'c4b0cc10', 'fc05f42c', '1', '516.3', '101.8', '542.7', '100.8', '529.2', '117.6', '518', '131.3', '518', '131.3', '540.1', '130.6', '540.1', '130.6', '-2.59', '1.41', '-2.06', 'white', '0.98', '0.44', '0', '38.84', '0.82', '0', '0', '0', '0', '0.9748', '1', 'a:3:{s:5:"happy";d:0.66000000000000003108624468950438313186168670654296875;s:4:"calm";d:0.08000000000000000166533453693773481063544750213623046875;s:9:"surprised";d:0.040000000000000000832667268468867405317723751068115234375;}'),
(27, 1439495781, 1439495781, 'f78dd05a', 'e0987e20', '', '4d4b5c6d', '082e234e', '1', '58', '78.3', '85.3', '79.7', '68.4', '91.5', '57.3', '104', '57.3', '104', '81.9', '106.6', '81.9', '106.6', '3.34', '-9.49', '9.8', 'white', '0.96', '0.48', '0.1', '59.69', '0.48', '0', '0', '1', '0', '0.0380', '1', 'a:3:{s:5:"happy";d:0.419999999999999984456877655247808434069156646728515625;s:3:"sad";d:0.179999999999999993338661852249060757458209991455078125;s:9:"surprised";d:0.14000000000000001332267629550187848508358001708984375;}'),
(28, 1439495786, 1439495786, 'cc789184', '9e65e82a', '', 'a54617d8', '288ed004', '1', '146.5', '17.8', '170.7', '21.4', '162.4', '34.2', '147.3', '45.7', '147.3', '45.7', '163.8', '48.8', '163.8', '48.8', '7.45', '26.6', '1.09', 'white', '0.96', '0.53', '0.1', '49.78', '0.14', '0.28', '0.01', '0.52', '0', '0.0405', '0.99', 'a:3:{s:8:"confused";d:0.08000000000000000166533453693773481063544750213623046875;s:3:"sad";d:0.08000000000000000166533453693773481063544750213623046875;s:5:"happy";d:0.059999999999999997779553950749686919152736663818359375;}'),
(29, 1439495791, 1439495791, '46c71d03', '100ad50b', '', 'ad6f98d9', 'fb473fa6', '0.9', '211.6', '30.4', '232.1', '23.2', '218.7', '38.1', '220', '54.8', '220', '54.8', '240', '48.1', '240', '48.1', '-17.13', '-40.56', '12.93', 'white', '0.99', '0.44', '0', '59.24', '0.92', '0.16', '0', '1', '0', '0.0426', '1', 'a:3:{s:5:"happy";d:0.65000000000000002220446049250313080847263336181640625;s:8:"confused";d:0.1600000000000000033306690738754696212708950042724609375;s:7:"disgust";d:0.0899999999999999966693309261245303787291049957275390625;}'),
(30, 1439495795, 1439495795, '8a2d6803', '9302e772', '', 'ac7fa4f2', 'e31488d1', '0.86', '379.6', '311.4', '392.8', '311.8', '375.1', '324.8', '382.6', '341.1', '382.6', '341.1', '392.6', '338.5', '392.6', '338.5', '5.74', '-87.37', '-4.56', 'indian', '0.29', '0.41', '0.2', '20.02', '0.87', '0.03', '1', '1', '0.26', '0.3959', '1', 'a:3:{s:5:"happy";d:0.91000000000000003108624468950438313186168670654296875;s:3:"sad";d:0.0899999999999999966693309261245303787291049957275390625;s:5:"angry";d:0.040000000000000000832667268468867405317723751068115234375;}'),
(31, 1439495928, 1439495928, 'd18ef9b3', '02d2c8dd', '', '5fb0da7d', '6bf67490', '1', '168.4', '221.6', '217.2', '221.8', '188.6', '247.3', '168.7', '274.8', '168.7', '274.8', '214', '273.7', '214', '273.7', '0.35', '-11.46', '5.89', 'asian', '0.96', '0.43', '1', '35.34', '0.89', '0', '0.03', '0.87', '0.01', '0.6654', '1', 'a:3:{s:5:"happy";d:0.2200000000000000011102230246251565404236316680908203125;s:8:"confused";d:0.0299999999999999988897769753748434595763683319091796875;s:3:"sad";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(32, 1439495930, 1439495930, '070ae61c', 'cea8e2ca', '', '06939975', '29de1f6f', '1', '126.6', '88.7', '157', '85.5', '144.6', '108.6', '130.4', '122.6', '130.4', '122.6', '162.2', '117.5', '162.2', '117.5', '-6.1', '-4.83', '-10.48', 'asian', '0.98', '0.37', '0.1', '36.03', '0.76', '0', '0', '0', '0.01', '0.9946', '1', 'a:3:{s:5:"happy";d:0.9899999999999999911182158029987476766109466552734375;s:4:"calm";d:0.0200000000000000004163336342344337026588618755340576171875;s:8:"confused";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(33, 1439495930, 1439495930, 'f4185cb7', '549b8140', '', 'b14779a6', 'ea07b4fa', '1', '155.3', '211.4', '236.3', '212.1', '185.9', '265.8', '152.2', '311.9', '152.2', '311.9', '229.6', '308', '229.6', '308', '0.73', '-15.16', '-2.55', 'asian', '0.99', '0.33', '0.9', '39.96', '0.43', '0.05', '0', '0', '0', '0.9953', '1', 'a:3:{s:5:"happy";d:0.5300000000000000266453525910037569701671600341796875;s:8:"confused";d:0.190000000000000002220446049250313080847263336181640625;s:3:"sad";d:0.0299999999999999988897769753748434595763683319091796875;}'),
(34, 1439495930, 1439495930, 'ebc81823', '0cebd470', '', '478f8c9b', '5c07e89c', '1', '238', '63.9', '268.7', '64.5', '253.1', '80.5', '237.5', '96.3', '237.5', '96.3', '269.1', '95.9', '269.1', '95.9', '0.91', '-2.8', '2.87', 'asian', '1', '0.5', '0.2', '31.48', '0.99', '0', '0', '0', '0.68', '0.8397', '1', 'a:3:{s:5:"happy";i:1;s:4:"calm";d:0.01000000000000000020816681711721685132943093776702880859375;s:5:"angry";d:0.01000000000000000020816681711721685132943093776702880859375;}'),
(35, 1439495931, 1439495931, '0d8aa899', 'b488171b', '', 'a060fdf9', '2873f75a', '0.96', '22.7', '60.6', '60.3', '56.4', '27.1', '83.5', '27.1', '117.8', '27.1', '117.8', '56.1', '113.6', '56.1', '113.6', '-3.96', '-37.43', '4.99', 'asian', '1', '0.32', '1', '30.92', '0.17', '0', '0', '0', '0', '0.9989', '1', 'a:3:{s:8:"confused";d:0.38000000000000000444089209850062616169452667236328125;s:4:"calm";d:0.299999999999999988897769753748434595763683319091796875;s:3:"sad";d:0.040000000000000000832667268468867405317723751068115234375;}');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES
(5, 1, 15, 16),
(6, 1, 16, 15);

-- --------------------------------------------------------

--
-- Table structure for table `friends_request`
--

CREATE TABLE IF NOT EXISTS `friends_request` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends_request`
--

INSERT INTO `friends_request` (`id`, `time`, `user.id`, `guy.id`) VALUES
(10, 1439107208, 15, 16);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(40) NOT NULL,
  `code` varchar(2) NOT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `note`) VALUES
(1, 'english', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages_codes`
--

CREATE TABLE IF NOT EXISTS `languages_codes` (
  `id` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `code` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_codes`
--

INSERT INTO `languages_codes` (`id`, `country`, `code`) VALUES
(1, 'vn', 'vi'),
(2, 'us', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `languages_list`
--

CREATE TABLE IF NOT EXISTS `languages_list` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` char(4) NOT NULL,
  `country.name` varchar(40) NOT NULL,
  `country.code` char(2) NOT NULL,
  `supported` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_list`
--

INSERT INTO `languages_list` (`id`, `name`, `code`, `country.name`, `country.code`, `supported`) VALUES
(1, 'Tiáº¿ng Viá»‡t', 'vi', 'Vietnam', 'vn', 1),
(2, 'English', 'en', 'United States', 'us', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
  `id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=765 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_values`
--

INSERT INTO `languages_values` (`id`, `language`, `code`, `text`, `short`) VALUES
(1, 'en', 'pages_feed.title', 'general :: feed :: giccos', 'false'),
(2, 'en', 'a_few_seconds', 'a few seconds', 'false'),
(3, 'en', 'minutes_ago', 'minutes ago', 'false'),
(4, 'en', 'hours_ago', 'hours ago', 'false'),
(5, 'en', 'days_ago', 'days ago', 'false'),
(6, 'en', 'months_ago', 'months ago', 'false'),
(7, 'en', 'years_ago', 'years ago', 'false'),
(8, 'en', 'weeks_ago', 'weeks ago', 'false'),
(9, 'en', 'private_1_text', 'only me', 'false'),
(10, 'en', 'private_1_tip', 'share only me', 'false'),
(11, 'en', 'private_2_text', 'friends', 'false'),
(12, 'en', 'private_2_tip', 'share with friends', 'false'),
(13, 'en', 'private_3_text', 'all friends', 'false'),
(14, 'en', 'private_3_tip', 'share with all friends', 'false'),
(15, 'en', 'private_4_text', 'public', 'false'),
(16, 'en', 'private_4_tip', 'share public', 'false'),
(17, 'en', 'favorite', 'favorite', 'false'),
(18, 'en', 'unfavorite', 'unfavorite', 'false'),
(19, 'en', 'invite', 'invite', 'false'),
(20, 'en', 'share', 'share', 'false'),
(21, 'en', 'write_a_comment', 'type a comment...', 'false'),
(22, 'en', 'comment', 'comment', 'false'),
(23, 'en', 'comments', 'comments', 'false'),
(24, 'en', 'comment(s)', 'comment(s)', 'false'),
(25, 'en', 'show_more_comments', 'show more comments', 'false'),
(26, 'en', 'status_null_comment', 'status not a comment', 'false'),
(27, 'en', 'groups', 'groups', 'false'),
(28, 'en', 'hashtags', 'hashtags', 'false'),
(29, 'en', 'messages', 'messages', 'false'),
(30, 'en', 'actions_of_friends', 'actions of friends', 'false'),
(31, 'en', 'status_unlimited_comment', 'status unlimited comment', 'false'),
(32, 'en', 'pages_accounts_login.title', 'login :: accounts :: giccos', 'false'),
(33, 'en', 'giccos_accounts', 'giccos accounts', 'false'),
(34, 'en', 'pages_accounts_login.desc', 'one account for all services', 'false'),
(35, 'en', 'login_to_account', 'login to account', 'false'),
(36, 'en', 'about', 'about', 'false'),
(37, 'en', 'privacy', 'privacy', 'false'),
(38, 'en', 'ads', 'ads', 'false'),
(39, 'en', 'developer', 'developer', 'false'),
(40, 'en', 'developers', 'developers', 'false'),
(41, 'en', 'help', 'help', 'false'),
(42, 'en', 'username', 'username', 'false'),
(43, 'en', 'password', 'password', 'false'),
(44, 'en', 'remember_me_next_time', 'remember me next time', 'false'),
(45, 'en', 'login', 'login', 'false'),
(46, 'en', 'register', 'register', 'false'),
(47, 'en', 'forget_password', 'fotget password', 'false'),
(48, 'en', 'username_regex_tip', 'characters: a-z, A-Z, 0-9, ''.'' or ''_''', 'false'),
(49, 'en', 'password_regex_tip', 'characters: a-z, A-Z, 0-9, ''.'' or ''_''', 'false'),
(50, 'en', 'username_or_email', 'username or email', 'false'),
(51, 'en', 'type_password', 'type password', 'false'),
(52, 'en', 'pages_accounts_register.title', 'register :: accounts :: giccos', 'false'),
(53, 'en', 'pages_accounts_register.desc', 'create a new account for all services', 'false'),
(54, 'en', 'type_your_info', 'type your info', 'false'),
(55, 'en', 'checkbox_agree_terms', 'agree to the terms', 'false'),
(56, 'en', 'type_username', 'type username', 'false'),
(57, 'en', 'type_email', 'type email', 'false'),
(58, 'en', 'email', 'email', 'false'),
(59, 'en', 're_password', 'repeat password', 'false'),
(61, 'en', 'firstname', 'firstname', 'false'),
(62, 'en', 'lastname', 'lastname', 'false'),
(63, 'en', 'type_firstname', 'type first name', 'false'),
(64, 'en', 'type_lastname', 'type last name', 'false'),
(65, 'en', 'select_days_of_birth', 'select days of birth', 'false'),
(66, 'en', 'select_months_of_birth', 'select months of birth', 'false'),
(67, 'en', 'select_years_of_years', 'select years of years', 'false'),
(68, 'en', 'days', 'days', 'false'),
(69, 'en', 'months', 'months', 'false'),
(70, 'en', 'years', 'years', 'false'),
(71, 'en', 'phone', 'phone', 'false'),
(72, 'en', 'type_phone', 'type phone', 'false'),
(73, 'en', 'gender', 'gender', 'false'),
(74, 'en', 'select_gender', 'select gender', 'false'),
(75, 'en', 'male', 'male', 'false'),
(76, 'en', 'female', 'female', 'false'),
(77, 'en', 'transmission_error', 'transmission error', 'false'),
(78, 'en', 'please_try_agian', 'please try agian', 'false'),
(79, 'en', 'username_is_invalid', 'username is invalid', 'false'),
(80, 'en', 'password_is_invalid', 'password is invalid', 'false'),
(81, 'en', 'username_is_not_found', 'username is not found', 'false'),
(82, 'en', 'password_is_incorrect', 'password is incorrect', 'false'),
(83, 'en', 'remember_return_is_invalid', 'remember return is invalid', 'false'),
(84, 'en', 'please_refresh_page', 'please refresh page', 'false'),
(85, 'en', 'username_is_already_exists', 'username is already exists', 'false'),
(86, 'en', 'email_is_already_exists', 'email is already exists', 'false'),
(87, 'en', 'name_is_invalid', 'name is invalid', 'false'),
(88, 'en', 'gender_is_invalid', 'gender is invalid', 'false'),
(89, 'en', 'birthday_is_invalid', 'birthday is invalid', 'false'),
(90, 'en', 'agree_return_is_invalid', 'agree return is invalid', 'false'),
(91, 'en', 'agree_is_not_check', 'agree terms of use not selected', 'false'),
(92, 'en', 'email_is_invalid', 'email is invalid', 'false'),
(93, 'en', 'phone_is_invalid', 'phone is invalid', 'false'),
(94, 'en', 'repeat_password_is_not_coincide', 'repeat password is not coincide', 'false'),
(96, 'en', 'input_search_placeholder', 'type name of friends, groups or places ...', 'false'),
(97, 'en', 'ads', 'ads', 'false'),
(98, 'en', 'donors', 'donors', 'false'),
(100, 'en', 'suggest', 'suggest', 'false'),
(102, 'en', 'feed', 'feed', 'false'),
(103, 'en', 'bells', 'bells', 'false'),
(104, 'en', 'sending...', 'sending...', 'false'),
(105, 'en', 'from', 'from', 'false'),
(106, 'en', 'system', 'system', 'false'),
(107, 'en', 'error', 'error', 'false'),
(108, 'en', 'comment_is_not_found', 'comment content is not found', 'false'),
(109, 'en', 'status_id_is_invalid', 'status id is invalid', 'false'),
(110, 'en', 'error_in_the_implementation_process', 'error in the implementation process', 'false'),
(111, 'en', 'action_is_not_allowed', 'action is not allowed', 'false'),
(112, 'en', 'action_have_been_implemented', 'action have been implemented', 'false'),
(113, 'en', 'status_is_not_found', 'status is not found', 'false'),
(114, 'en', 'user_is_not_found', 'user is not found', 'false'),
(115, 'en', 'action_is_invalid', 'action is invalid', 'false'),
(116, 'en', 'not_identified', 'not identified', 'false'),
(117, 'en', 'action_is_being_carried_out', 'action is being carried out', 'false'),
(118, 'en', 'click_to_close', 'click to close', 'false'),
(119, 'en', 'january', 'january', 'false'),
(120, 'en', 'february', 'february', 'false'),
(121, 'en', 'march', 'march', 'false'),
(122, 'en', 'april', 'april', 'false'),
(123, 'en', 'may', 'may', 'false'),
(124, 'en', 'june', 'june', 'false'),
(125, 'en', 'july', 'july', 'false'),
(126, 'en', 'december', 'december', 'false'),
(127, 'en', 'august', 'august', 'false'),
(128, 'en', 'september', 'september', 'false'),
(129, 'en', 'october', 'october', 'false'),
(130, 'en', 'november', 'november', 'false'),
(131, 'en', 'monday', 'monday', 'false'),
(132, 'en', 'tuesday', 'tuesday', 'false'),
(133, 'en', 'wednesday', 'wednesday', 'false'),
(134, 'en', 'thursday', 'thursday', 'false'),
(135, 'en', 'friday', 'friday', 'false'),
(136, 'en', 'saturday', 'saturday', 'false'),
(137, 'en', 'sunday', 'sunday', 'false'),
(138, 'en', 'comment_id_is_invalid', 'comment id is invalid', 'false'),
(139, 'en', 'what_are_you_thinking', 'what are you thinking ?', 'false'),
(140, 'en', 'status', 'status', 'false'),
(141, 'en', 'photos', 'photos', 'false'),
(142, 'en', 'music', 'music', 'false'),
(143, 'en', 'videos', 'videos', 'false'),
(144, 'en', 'quote', 'quote', 'false'),
(145, 'en', 'add_friends', 'add friends', 'false'),
(146, 'en', 'add_places', 'add places', 'false'),
(147, 'en', 'add_thoughts', 'add thoughts', 'false'),
(148, 'en', 'with', 'with', 'false'),
(149, 'en', 'in', 'in', 'false'),
(150, 'en', 'places', 'places', 'false'),
(151, 'en', 'description', 'description', 'false'),
(152, 'en', 'information_about_places', 'information about places', 'false'),
(153, 'en', 'town', 'town', 'false'),
(154, 'en', 'at', 'at', 'false'),
(155, 'en', 'where_are_you', 'where are you ?', 'false'),
(156, 'en', 'please_try_later', 'please try later', 'false'),
(157, 'en', 'you_are_join', 'you are join', 'false'),
(159, 'en', 'you_are_used', 'you are used', 'false'),
(160, 'en', 'top_hashtag', 'top hashtag', 'false'),
(161, 'en', 'edited_at', 'edited at', 'false'),
(162, 'en', 'posted_at', 'posted at', 'false'),
(165, 'en', 'who_with_you', 'who with you ?', 'false'),
(166, 'en', 'what_you_feel', 'what you feel ?', 'false'),
(167, 'en', '[feel]happy', 'happy', 'false'),
(168, 'en', '[feel]so_happy', 'so happy', 'false'),
(169, 'en', '[feel]great', 'great', 'false'),
(170, 'en', '[feel]fine', 'fine', 'false'),
(171, 'en', '[feel]inquisitive', 'inquisitive', 'false'),
(172, 'en', '[feel]disturb', 'disturb', 'false'),
(173, 'en', '[feel]despair', 'despair', 'false'),
(174, 'en', '[feel]angry', 'angry', 'false'),
(175, 'en', '[feel]proud', 'proud', 'false'),
(176, 'en', '[feel]empty', 'empty', 'false'),
(177, 'en', '[feel]disgusting', 'disgusting', 'false'),
(178, 'en', '[feel]beneath', 'beneath', 'false'),
(179, 'en', '[feel]scarcely', 'scarcely', 'false'),
(180, 'en', '[feel]shame', 'shame', 'false'),
(181, 'en', '[feel]dirty', 'dirty', 'false'),
(182, 'en', '[feel]fail', 'fail', 'false'),
(183, 'en', '[feel]serenity', 'serenity', 'false'),
(184, 'en', '[feel]sad', 'sad', 'false'),
(185, 'en', '[feel]so_sad', 'so sad', 'false'),
(186, 'en', '[feel]regretful', 'regretful', 'false'),
(187, 'en', '[feel]interesting', 'interesting', 'false'),
(188, 'en', '[feel]not_assured', 'not assured', 'false'),
(189, 'en', 'what_do_you_doing', 'what do you doing ?', 'false'),
(190, 'en', 'upload_photos', 'upload photos', 'false'),
(191, 'en', 'edit_photos', 'edit photos', 'false'),
(192, 'en', 'apply', 'apply', 'false'),
(193, 'en', 'cancel', 'cancel', 'false'),
(194, 'en', 'photos_editor', 'photos editor', 'false'),
(195, 'en', 'filters', 'filters', 'false'),
(196, 'en', 'brightness', 'brightness', 'false'),
(197, 'en', 'contrast', 'contrast', 'false'),
(198, 'en', 'rotate', 'rotate', 'false'),
(199, 'en', 'custom_brightness', 'custom brightness', 'false'),
(200, 'en', 'custom_contrast', 'custom contrast', 'false'),
(201, 'en', 'rotate_left', 'rotate left', 'false'),
(202, 'en', 'rotate_right', 'rotate right', 'false'),
(203, 'en', 'post', 'post', 'false'),
(204, 'en', 'scrapbook', 'scrapbook', 'false'),
(206, 'en', 'name', 'name', 'false'),
(207, 'en', 'default', 'default', 'false'),
(208, 'en', 'life', 'life', 'false'),
(209, 'en', 'upload_videos', 'upload videos', 'false'),
(221, 'en', 'edit_videos', 'edit videos', 'false'),
(222, 'en', 'choose_videos', 'choose videos', 'false'),
(224, 'en', 'upload_music', 'upload music', 'false'),
(225, 'en', 'choose_music', 'choose music', 'false'),
(226, 'en', 'size_limit_per_file', 'size limit per file', 'false'),
(227, 'en', 'author', 'author', 'false'),
(228, 'en', 'quote', 'quote', 'false'),
(229, 'en', 'used_as_background_image', 'used as background image', 'false'),
(230, 'en', 'cited', 'cited', 'false'),
(231, 'en', 'choose_photos', 'choose photos', 'false'),
(232, 'en', 'music_name', 'music name', 'false'),
(233, 'en', 'videos_name', 'videos name', 'false'),
(234, 'en', 'tags', 'tags', 'false'),
(235, 'en', 'separated_by_whitespace', 'separated by whitespace', 'false'),
(236, 'en', 'editor_missing_content', 'editor missing content', 'false'),
(237, 'en', 'media_file_missing_info', 'media file missing info', 'false'),
(238, 'en', 'media', 'media', 'false'),
(240, 'en', 'scrapbook_name', 'scrapbook name', 'false'),
(241, 'en', 'playlist', 'playlist', 'false'),
(242, 'en', 'album', 'album', 'false'),
(243, 'en', 'feel', 'feel', 'false'),
(244, 'en', 'minutes', 'minutes', 'false'),
(245, 'en', 'hours', 'hours', 'false'),
(247, 'en', 'weeks', 'weeks', 'false'),
(250, 'en', 'not_updated', 'not updated', 'false'),
(251, 'en', 'presented_by', 'presented by', 'false'),
(252, 'en', 'null:description_music', 'listen and feel this song', 'false'),
(253, 'en', 'singer', 'singer', 'false'),
(254, 'en', 'null:music_name', 'untitled song', 'false'),
(255, 'en', 'null:videos_name', 'untitled videos', 'false'),
(256, 'en', 'null:description_videos', 'view and comment your thoughts', 'false'),
(258, 'en', 'block', 'block', 'false'),
(259, 'en', 'report', 'report', 'false'),
(260, 'en', 'edit', 'edit', 'false'),
(261, 'en', 'delete', 'delete', 'false'),
(262, 'en', 'remove', 'remove', 'false'),
(263, 'en', 'follow', 'follow', 'false'),
(264, 'en', 'unfollow', 'unfollow', 'false'),
(265, 'en', 'popup', 'popup', 'false'),
(266, 'en', 'link', 'link', 'false'),
(267, 'en', 'not_authorized_to_perform', 'not authorized to perform', 'false'),
(268, 'en', 'status_has_been_removed', 'status has been removed', 'false'),
(269, 'en', 'notification', 'notification', 'false'),
(271, 'en', 'add', 'add', 'false'),
(272, 'en', 'remove', 'remove', 'false'),
(273, 'en', 'accept', 'accept', 'false'),
(274, 'en', 'refuse', 'refuse', 'false'),
(275, 'en', 'send_request', 'send request', 'false'),
(276, 'en', 'refuse_request', 'refuse request', 'false'),
(277, 'en', 'accept_request', 'accept request', 'false'),
(278, 'en', 'remove_request', 'remove request', 'false'),
(279, 'en', 'hide', 'hide', 'false'),
(280, 'en', 'you_can_tell_us', 'you can tell us ?', 'false'),
(281, 'en', 'ask_live_description', 'you need to enter because it will help you to easily find more people around', 'false'),
(282, 'en', 'where_do_you_live', 'where do you live ?', 'false'),
(283, 'en', 'update', 'update', 'false'),
(284, 'en', 'where_do_you_from', 'where do you from?', 'false'),
(285, 'en', 'information_has_been_updated', 'information has been updated', 'false'),
(286, 'en', 'status_has_been_posted', 'status has been posted', 'false'),
(287, 'en', 'type_content_status', 'type content status...', 'false'),
(288, 'en', 'edit_success_status', 'edit success status', 'false'),
(289, 'en', 'confirm', 'confirm', 'false'),
(290, 'en', 'question_remove_status', 'you want to remove status ?', 'false'),
(291, 'en', 'count', 'count', 'false'),
(292, 'en', 'mentioned', 'mentioned', 'false'),
(294, 'en', 'question_block_status', 'you want to block status ?', 'false'),
(296, 'en', 'pages_hashtag.title', 'hashtag :: feed :: giccos', 'false'),
(297, 'en', 'keyword', 'keyword', 'false'),
(298, 'en', 'tag', 'tag', 'false'),
(299, 'en', 'pages_hashtag.quickdescription', 'general status related to', 'false'),
(300, 'en', 'news_feed', 'news feed', 'false'),
(301, 'en', 'pages_feed.quickdescription', 'general status from', 'false'),
(302, 'en', 'family', 'family', 'false'),
(303, 'en', 'family', 'family', 'false'),
(304, 'en', 'friends', 'friends', 'false'),
(305, 'en', 'country', 'country', 'false'),
(306, 'en', 'live', 'live', 'false'),
(307, 'en', 'pages', 'pages', 'false'),
(308, 'en', 'general', 'general', 'false'),
(309, 'en', 'statistic', 'statistic', 'false'),
(310, 'en', 'total', 'total', 'false'),
(311, 'en', 'today', 'today', 'false'),
(312, 'en', 'related_people', 'related people', 'false'),
(313, 'en', 'locations', 'locations', 'false'),
(314, 'en', 'repeats', 'repeats', 'false'),
(315, 'en', 'chatbox', 'chatbox', 'false'),
(316, 'en', 'click_close', 'click to close', 'false'),
(317, 'en', 'click_open', 'click to open', 'false'),
(318, 'en', 'messages_sending', 'messages sending...', 'false'),
(319, 'en', 'type_messages', 'type messages...', 'false'),
(320, 'en', 'drawn_up_for_update', 'drawn up for updates', 'false'),
(321, 'en', 'new_status', 'new status', 'false'),
(322, 'en', 'status_are_selected', 'status are selected', 'false'),
(323, 'en', 'pages_status.title', 'status :: feed :: giccos', 'false'),
(324, 'en', 'status_not_found', 'status not found', 'false'),
(325, 'en', 'pages_status.quickdescription.notfound', 'sorry, we could not find the status of your request', 'false'),
(326, 'en', 'pages_status.quickdescription.notfound.more', 'could it have been hidden away for privacy', 'false'),
(327, 'en', 'console.warning_text', 'the use of the console could help other people to steal your account. Please do not make the code or any action here', 'false'),
(328, 'en', 'console.warning_text_from', 'warning from Giccos', 'false'),
(329, 'en', 'console.warning_text_contact', 'if you detect security flaws or problems that the system, please contact us', 'false'),
(330, 'en', 'please_use_hashtag_on_status', 'please use hashtag on status', 'false'),
(331, 'en', 'others', 'other(s)', 'false'),
(332, 'en', 'conversation_with', 'conversation with', 'false'),
(333, 'en', 'typing', 'typing...', 'false'),
(334, 'en', 'seen_by', 'seen by', 'false'),
(336, 'en', 'push.time_ago', 'ago', 'false'),
(337, 'en', 'seen', 'seen', 'false'),
(338, 'en', 'by', 'by', 'false'),
(339, 'en', 'and', 'and', 'false'),
(340, 'en', 'press_enter_to_send', 'press enter to send', 'false'),
(341, 'en', 'send', 'send', 'false'),
(342, 'en', 'type_a_messages', 'type a messages...', 'false'),
(343, 'en', 'select_photos', 'select photos', 'false'),
(344, 'en', 'select_music', 'select music', 'false'),
(345, 'en', 'select_videos', 'select videos', 'false'),
(346, 'en', 'explorer', 'explorer', 'false'),
(347, 'en', 'save_at', 'save at', 'false'),
(348, 'en', 'explorer', 'explorer', 'false'),
(349, 'en', 'loading_data', 'loading data', 'false'),
(350, 'en', 'please_wait', 'please wait', 'false'),
(351, 'en', 'undefined', 'undefined', 'false'),
(352, 'en', 'data_storage_empty', 'data storage is empty', 'false'),
(353, 'en', 'file_info', 'file info', 'false'),
(354, 'en', 'some_action_is_not_completed', 'some action is not completed', 'false'),
(355, 'en', 'a_few_seconds', 'new', 'true'),
(356, 'en', 'minutes_ago', 'mins', 'true'),
(357, 'en', 'hours_ago', 'hrs', 'true'),
(358, 'en', 'days_ago', 'd', 'true'),
(359, 'en', 'weeks_ago', 'w', 'true'),
(360, 'en', 'months_ago', 'M', 'true'),
(361, 'en', 'years_ago', 'y', 'true'),
(362, 'en', 'continue', 'continue', 'false'),
(363, 'en', 'question_media_continue', 'do you want continue to play at', 'false'),
(364, 'en', 'question_photosEditor_close', 'you want to apply effects before exiting ?', 'false'),
(365, 'en', 'activity_from_friends', 'activity from friends', 'false'),
(366, 'en', 'weather', 'weather', 'false'),
(369, 'en', 'monday', 'mon', 'true'),
(370, 'en', 'tuesday', 'tue', 'true'),
(371, 'en', 'wednesday', 'wed', 'true'),
(372, 'en', 'thursday', 'thu', 'true'),
(373, 'en', 'friday', 'fri', 'true'),
(374, 'en', 'saturday', 'sat', 'true'),
(375, 'en', 'sunday', 'sun', 'true'),
(376, 'en', 'wind', 'wind', 'false'),
(377, 'en', 'atmosphere', 'atmosphere', 'false'),
(378, 'en', 'direction', 'direction', 'false'),
(379, 'en', 'speed', 'speed', 'false'),
(380, 'en', 'humidity', 'humidity', 'false'),
(381, 'en', 'pressure', 'pressure', 'false'),
(382, 'en', 'temperature', 'temperature', 'false'),
(386, 'en', 'places_may_visit', 'places may visit', 'false'),
(387, 'en', 'group_may_join', 'group may join', 'false'),
(388, 'en', 'people_may_know', 'people may know', 'false'),
(389, 'en', 'pages_may_subscribe', 'pages may subscribe', 'false'),
(390, 'en', 'time', 'time', 'false'),
(391, 'en', 'update_at', 'update at', 'false'),
(392, 'en', 'automatically_pulled_down', 'automatically pulled down', 'false'),
(393, 'en', 'scrolldown_seen_messages', 'new messages, scroll down to seen', 'false'),
(394, 'en', 'weather_data_are_not_available', 'weather data are not available', 'false'),
(395, 'en', 'load_more', 'load more', 'false'),
(396, 'en', 'share_this_status', 'share this status', 'false'),
(397, 'en', 'feelings_about_it', 'your feelings about it', 'false'),
(398, 'en', 'done', 'done', 'false'),
(399, 'en', 'type_name_your_friends', 'type name your friends', 'false'),
(400, 'en', 'invite_your_friends', 'invite your friends', 'false'),
(401, 'en', 'pages_accounts.span', 'giccos accounts', 'false'),
(402, 'en', 'pages_loading.title', '... :: loading :: giccos', 'false'),
(403, 'en', 'write_by', 'write by', 'false'),
(404, 'en', 'pages_wall.title', 'wall :: giccos', 'false'),
(405, 'en', 'verified', 'verified', 'false'),
(406, 'en', 'timeline', 'timeline', 'false'),
(407, 'en', 'info', 'info', 'false'),
(408, 'en', 'more', 'more', 'false'),
(409, 'en', 'wall_desc_timeline', 'Timeline of _____. The status updated by _____.', 'false'),
(410, 'en', 'wall_desc_photos', 'gallery of _____. The photos updated by _____.', 'false'),
(411, 'en', 'wall_desc_friends', 'friends of _____.', 'false'),
(412, 'en', 'wall_desc_about', 'about of _____.', 'false'),
(413, 'en', 'wall_desc_music', 'music of _____. The music updated by _____.', 'false'),
(414, 'en', 'wall_desc_videos', 'videos of _____. The videos updated by _____.', 'false'),
(415, 'en', 'wall_desc_places', 'places visited by _____. The places checkin by _____.', 'false'),
(416, 'en', 'workplaces', 'workplaces', 'false'),
(417, 'en', 'education', 'education', 'false'),
(418, 'en', 'introduction', 'introduction', 'false'),
(419, 'en', 'contact', 'contact', 'false'),
(420, 'en', 'slogan', 'slogan', 'false'),
(421, 'en', 'wall_info_introduction_null', '_____ has not updated the introduction.', 'false'),
(422, 'en', 'wall_info_about_null', '_____ has not updated the infomation.', 'false'),
(423, 'en', 'wall_info_contact_null', '_____ has not updated the contact.', 'false'),
(424, 'en', 'nickname', 'nickname', 'false'),
(425, 'en', 'user', 'user', 'false'),
(426, 'en', 'language', 'language', 'false'),
(427, 'en', 'language_en', 'english', 'false'),
(428, 'en', 'language_vi', 'vietnamese', 'false'),
(429, 'en', 'male', 'male', 'false'),
(430, 'en', 'female', 'female', 'false'),
(431, 'en', 'interest', 'interest', 'false'),
(432, 'en', 'relationship', 'relationship', 'false'),
(433, 'en', 'relationship_0', 'not disclosed', 'false'),
(434, 'en', 'relationship_1', 'single', 'false'),
(435, 'en', 'relationship_2', 'datting', 'false'),
(436, 'en', 'relationship_3', 'got married', 'false'),
(437, 'en', 'relationship_4', 'complex', 'false'),
(438, 'en', 'relationship_5', 'an open relationship', 'false'),
(439, 'en', 'birthday', 'birthday', 'false'),
(440, 'en', 'format', 'format', 'false'),
(441, 'en', 'wall_info_places_null', '_____ has not updated the living and country.', 'false'),
(442, 'en', 'country_like_living', 'location _____''s living.', 'false'),
(443, 'en', 'you_have_not_joined_any_groups', 'you have not joined any groups', 'false'),
(444, 'en', 'wall_info_education_null', '_____ has not updated the level of education.', 'false'),
(445, 'en', 'wall_info_workplaces_null', '_____ has not updated the jobs and workplaces.', 'false'),
(446, 'en', 'unknown_coordinates', 'unknown coordinates', 'false'),
(447, 'en', 'work', 'work', 'false'),
(448, 'en', 'home', 'home', 'false'),
(449, 'en', 'unknown', 'unknown', 'false'),
(450, 'en', 'now', 'now', 'false'),
(451, 'en', 'address', 'address', 'false'),
(452, 'en', 'awards', 'awards', 'false'),
(453, 'en', 'all_friends', 'all friends', 'false'),
(456, 'en', 'mutual_friends', 'mutual friends', 'false'),
(457, 'en', 'school', 'school', 'false'),
(458, 'en', 'request_is_invalid', 'request is invalid', 'false'),
(459, 'en', 'remove_friends', 'remove friends', 'false'),
(460, 'en', 'you', 'you', 'false'),
(461, 'en', 'cancel_request', 'cancel request', 'false'),
(462, 'en', 'send_request_success', 'send request add friends', 'false'),
(463, 'en', 'cancel_request_success', 'canceled request add friends', 'false'),
(464, 'en', 'remove_friends_success', 'removed this user from friends list', 'false'),
(465, 'en', 'add_friends_success', 'added this user from friends list', 'false'),
(466, 'en', 'refuse_friends_success', 'refused request from this user', 'false'),
(467, 'en', 'pull_up_for_updates', 'pull up for updates', 'false'),
(468, 'en', 'dead', 'dead', 'false'),
(469, 'en', 'user_have_not_friends', 'friends do not find this person', 'false'),
(470, 'en', 'timeline_is_null', 'timeline of _____''s empty', 'false'),
(471, 'en', 'yesterday', 'yesterday', 'false'),
(472, 'en', 'last_week', 'last week', 'false'),
(473, 'en', 'about_a_minute_ago', 'about a minute ago', 'false'),
(474, 'en', 'feeling', 'feeling', 'false'),
(475, 'en', 'comment_sent_successfully', 'comment has been sent successfully', 'false'),
(476, 'en', 'status_follow_add_success', 'has subscribed information from status', 'false'),
(477, 'en', 'status_follow_remove_success', 'has unsubscribe information from status', 'false'),
(478, 'en', 'pages_time.title', 'time :: feed :: giccos', 'false'),
(480, 'en', 'time_custom', 'time custom', 'false'),
(481, 'en', 'seconds', 'seconds', 'false'),
(482, 'en', 'to', 'to', 'false'),
(483, 'en', 'request', 'request', 'false'),
(484, 'en', 'go_to_page', 'go to page', 'false'),
(485, 'en', 'do_you_want_redirect_page', 'do you want to redirect the page ?', 'false'),
(486, 'en', 'agree', 'agree', 'false'),
(487, 'en', 'pages_photos_picture.title', 'picture :: photos :: giccos', 'false'),
(488, 'en', 'related_content', 'related content', 'false'),
(489, 'en', 'information', 'information', 'false'),
(490, 'en', 'not_found', 'not found', 'false'),
(491, 'en', 'oops_description_notfound', 'Web page you are looking for does not exist or has been deleted or blocked by managers', 'false'),
(492, 'en', 'oops_error_notfound', 'error#404', 'false'),
(493, 'en', 'level', 'level', 'false'),
(494, 'en', 'click_to_edit', 'click to edit', 'false'),
(495, 'en', 'addons_updating', 'add-ons updating', 'false'),
(496, 'en', 'inFeeds_null_notify_text', 'there are currently no status on feed', 'false'),
(497, 'en', 'inFeeds_null_title_text', 'empty contents', 'false'),
(498, 'en', 'warning', 'warning', 'false'),
(499, 'en', 'status_display_with_link', 'status show only those with link', 'false'),
(500, 'en', 'private_0_tip', 'those with link', 'false'),
(501, 'en', 'private_0_text', 'link', 'false'),
(502, 'en', 'sponsored', 'sponsored', 'false'),
(503, 'en', 'you_may_need', 'you may need', 'false'),
(504, 'en', 'you_may_want_watch', 'you may want watch', 'false'),
(505, 'en', 'views', 'views', 'false'),
(507, 'en', 'videos_watch_views_description', 'total {_viewstotal_} views. {_viewsmonth_} people have viewed this month, {_viewstoday_} people watching today and {_viewsnow_} viewing now.', 'false'),
(508, 'en', 'statistical_views', 'statistical views', 'false'),
(509, 'en', 'statistical_share', 'statistical share', 'false'),
(510, 'en', 'videos_watch_share_description', 'total {_sharetotal_} shared. {_shareingiccos_} people shared on Giccos and {_shareinother_} people shared on other sites.', 'false'),
(511, 'en', 'login_interact_this_author', 'login to interact with this author', 'false'),
(512, 'en', 'time_upload', 'time upload', 'false'),
(513, 'en', 'description_not_updated', 'description has not updated', 'false'),
(514, 'en', 'duration', 'duration', 'false'),
(515, 'en', 'reply_comment', 'reply comment', 'false'),
(516, 'en', 'reply', 'reply', 'false'),
(517, 'en', 'tag_photos', 'tag photos', 'false'),
(518, 'en', 'photos_tag', 'photos tag', 'false'),
(519, 'en', 'who_is_it', 'who is it ?', 'false'),
(520, 'en', 'PhotosEditorPopup_footer_text', 'PhotosEditor &copy; Giccos', 'false'),
(521, 'en', 'Explorer_footer_text', 'Explorer &copy; Giccos', 'false'),
(522, 'en', 'PhotosTagPopup_footer_text', 'PhotosTag &copy; Giccos', 'false'),
(523, 'en', 'question_photosTag_close', 'do you want close it ?', 'false'),
(524, 'en', 'data_processing', 'data processing', 'false'),
(525, 'en', 'remove_from_list', 'remove from list', 'false'),
(526, 'en', 'remove_photos', 'remove photos', 'false'),
(527, 'en', 'comment_disabled', 'comments has disabled', 'false'),
(528, 'en', 'reply(s)', 'reply(s)', 'false'),
(529, 'en', 'show_more_reply', 'show more reply', 'false'),
(530, 'en', 'write_a_reply', 'type a reply...', 'false'),
(531, 'en', 'please_recheck', 'please recheck', 'false'),
(532, 'en', 'go_to_home', 'go to home', 'false'),
(533, 'en', 'redirect', 'redirect', 'false'),
(534, 'en', 'giccos', 'giccos', 'false'),
(535, 'en', 'secure_by_giccos', 'secure by giccos', 'false'),
(536, 'en', 'remember', 'remember', 'false'),
(537, 'en', 'active', 'active', 'false'),
(538, 'en', 'forgot_password', 'forgot password', 'false'),
(539, 'en', 'active_accounts', 'active accounts', 'false'),
(540, 'en', 'get_password_missed', 'get password missed', 'false'),
(541, 'en', 'create_new_accounts', 'create new accounts', 'false'),
(542, 'en', 'login_to_accounts', 'login to accounts', 'false'),
(543, 'en', 'type_username_or_email', 'type username or email', 'false'),
(544, 'en', 'type_email_address', 'type email address', 'false'),
(545, 'en', 'confirm_password', 'confirm password', 'false'),
(546, 'en', 'retype_password', 're-type password', 'false'),
(547, 'en', 'check_terms', 'check terms', 'false'),
(548, 'en', 'that_is_my_account', 'that is my account', 'false'),
(549, 'en', 'confirm_your_account', 'confirm your account', 'false'),
(550, 'en', 'get_password', 'get password', 'false'),
(551, 'en', 'pages_accounts_getpassword.title', 'get password :: accounts :: giccos', 'false'),
(552, 'en', 'pages_accounts_getpassword.desc', 'get new password, find accounts', 'false'),
(553, 'en', 'pages_accounts_active.title', 'active :: accounts :: giccos', 'false'),
(554, 'en', 'pages_accounts_active.desc', 'active accounts, use all services', 'false'),
(555, 'en', 'type_code', 'type code', 'false'),
(556, 'en', 'code', 'code', 'false'),
(557, 'en', 'confirmation_code_not_exist', 'confirmation code does not exist', 'false'),
(558, 'en', 'type', 'type', 'false'),
(559, 'en', 'get_code', 'get code', 'false'),
(560, 'en', 'recheck_password', 'recheck password', 'false'),
(561, 'en', 'recheck', 'recheck', 'false'),
(562, 'en', 'terms_rules', 'terms and rules', 'false'),
(564, 'en', 'repassword_wrong', 'retype password wrong', 'false'),
(565, 'en', 'less_secure_password', 'less secure password', 'false'),
(566, 'en', 'file_upload_failed', 'file upload failed', 'false'),
(567, 'en', 'ask_country_description', 'you need to enter because it will help you to easily find more old friends', 'false'),
(568, 'en', 'dont_have_messages', 'don''t have messages', 'false'),
(569, 'en', 'create_new_messages', 'create new messages', 'false'),
(570, 'en', 'messagesPopup_footer_text', 'Messages &copy; Giccos', 'false'),
(571, 'en', 'send_to', 'send to...', 'false'),
(572, 'en', 'it_is_tagged', 'it''s tagged', 'false'),
(573, 'en', 'type_name_messages', 'type messages name (default: auto)', 'false'),
(574, 'en', 'messages_not_exist_maybe_has_deleted', 'messages not exist, maybe has deleted', 'false'),
(575, 'en', 'may_say_hello', 'may say hello with they', 'false'),
(576, 'en', 'not_found_old_messages', 'not found old messages', 'false'),
(577, 'en', 'loading_old_messages', 'loading old messages, please wait...', 'false'),
(578, 'en', 'seen_at', 'seen at', 'false'),
(582, 'en', 'private_change', 'private change', 'false'),
(583, 'en', 'view', 'view', 'false'),
(584, 'en', 'rename', 'rename', 'false'),
(585, 'en', 'language_settings', 'language settings', 'false'),
(587, 'en', 'choose_language', 'choose language', 'false'),
(588, 'en', 'language_name', 'language name', 'false'),
(589, 'en', 'error_when_update', 'error when update', 'false'),
(590, 'en', 'updates_successful', 'updates successful', 'false'),
(591, 'en', 'please_wait_reload_message', 'please wait reload data message', 'false'),
(592, 'en', 'you_may_find', 'you may find', 'false'),
(593, 'en', 'conversation_not_have_messages', 'conversation not have a messages', 'false'),
(594, 'en', 'type_new_name', 'type new name', 'false'),
(595, 'en', 'new_name', 'new name', 'false'),
(596, 'en', 'translated_from', 'translated from', 'false'),
(597, 'en', 'translated_to', 'translated to', 'false'),
(598, 'en', 'comment_limited', 'comment is limited', 'false'),
(599, 'en', 'not_found_family_members', 'not found family members', 'false'),
(600, 'en', 'status_from_family', 'status from family members', 'false'),
(601, 'en', 'feed_family.title', 'family :: feed :: giccos', 'false'),
(602, 'en', 'repeats_today', 'repeats today', 'false'),
(603, 'en', 'status_from_friends', 'status from friends', 'false'),
(604, 'en', 'not_found_friends', 'not found friends', 'false'),
(605, 'en', 'status_from_same_country', 'status from same country', 'false'),
(606, 'en', 'not_found_info_country', 'not found info country', 'false'),
(607, 'en', 'feed_country.quickdescription', 'general status from users same country', 'false'),
(608, 'en', 'not_found_info_live', 'not found info live', 'false'),
(609, 'en', 'feed_live.quickdescription', 'general status from users same live', 'false'),
(610, 'en', 'status_from_same_country', 'status from same live', 'false'),
(611, 'en', 'feed_live.title', 'live :: feed :: giccos', 'false'),
(612, 'en', 'feed_country.title', 'country :: feed :: giccos', 'false'),
(613, 'en', 'feed_friends.quickdescription', 'general status from all friends', 'false'),
(614, 'en', 'feed_tags.quickdescription', 'general status has tags selected', 'false'),
(615, 'en', 'feed_friends.title', 'friends :: feed :: giccos', 'false'),
(616, 'en', 'not_found_info_nearby', 'not found info your position', 'false'),
(617, 'en', 'feed_nearby.quickdescription', 'general status from users check-in this position', 'false'),
(618, 'en', 'country_at', 'country at', 'false'),
(619, 'en', 'content_empty_please_type', 'content is empty, please type the information', 'false'),
(620, 'en', 'avatar_of', 'avatar of', 'false'),
(621, 'en', 'cover_of', 'cover of', 'false'),
(622, 'en', 'location', 'location', 'false'),
(623, 'en', 'change_private', 'change private', 'false'),
(624, 'en', 'custom_time_invalid', 'custom time invalid', 'false'),
(625, 'en', 'private', 'private', 'false'),
(626, 'en', 'change_view_private', 'change view private', 'false'),
(627, 'en', 'change_comment_private', 'change comment private', 'false'),
(628, 'en', 'change_share_private', 'change share private', 'false'),
(629, 'en', 'feed_family.quickdescription', 'general status from family members', 'false'),
(630, 'en', 'feed_time.quickdescription', 'general status by time custom', 'false'),
(631, 'en', 'feed_general.quickdescription', 'general all status', 'false'),
(632, 'en', 'explorer.rows_sync', 'sync', 'false'),
(633, 'en', 'explorer.rows_cache', 'cache', 'false'),
(634, 'en', 'edit_information', 'edit information', 'false'),
(635, 'en', 'sorry_you_no_right_do_this', 'sorry, you have no right to do this', 'false'),
(636, 'en', 'not_allowed', 'not allowed', 'false'),
(637, 'en', 'loading', 'loading', 'false'),
(638, 'en', 'write_something_about_intro', 'write something about your introduction', 'false'),
(639, 'en', 'write_favorite_quote', 'write favorite quote', 'false'),
(640, 'en', 'middlename', 'middlename', 'false'),
(641, 'en', 'fullname', 'fullname', 'false'),
(642, 'en', 'day', 'day', 'false'),
(643, 'en', 'month', 'month', 'false'),
(644, 'en', 'year', 'year', 'false'),
(645, 'en', 'important', 'important', 'false'),
(646, 'en', 'add_a_phone_contact', 'add a phone contact', 'false'),
(647, 'en', 'add_a_email_contact', 'add a email contact', 'false'),
(648, 'en', 'type_phonenumber', 'type phonenumber', 'false'),
(649, 'en', 'press _delete_button_agian_remove', 'press the delete button again to remove', 'false'),
(650, 'en', 'type_middlename', 'type middle name', 'false'),
(651, 'en', 'type_day', 'type day', 'false'),
(652, 'en', 'type_month', 'type month', 'false'),
(653, 'en', 'type_year', 'type year', 'false'),
(654, 'en', 'type_language', 'type language', 'false'),
(655, 'en', 'type_nickname', 'type nickname', 'false'),
(656, 'en', 'add_a_tab', 'add a tab', 'false'),
(657, 'en', 'type_schoolname', 'type school name', 'false'),
(658, 'en', 'type_description', 'type description', 'false'),
(659, 'en', 'start_time', 'start time', 'false'),
(660, 'en', 'end_time', 'end time', 'false'),
(661, 'en', 'not_type_if_now', 'not type if to now', 'false'),
(662, 'en', 'type_starttime', 'type start time', 'false'),
(663, 'en', 'type_endtime', 'type end time', 'false'),
(665, 'en', 'type_school_specialized', 'specialized of school', 'false'),
(666, 'en', 'type_company_work', 'work within company', 'false'),
(667, 'en', 'type_company_name', 'type company name', 'false'),
(668, 'en', 'type_company_awards', 'work awards', 'false'),
(669, 'en', 'type_company_address', 'type company address', 'false'),
(670, 'en', 'write_something_about_live', 'write something about where to live', 'false'),
(671, 'en', 'write_something_about_country', 'write something about where to country', 'false'),
(672, 'en', 'action', 'action', 'false'),
(673, 'en', 'save', 'save', 'false'),
(674, 'en', 'type_password_confirm', 'type password to confirm', 'false'),
(675, 'en', 'verification', 'verification', 'false'),
(676, 'en', 'code_is_invalid', 'code is invalid', 'false'),
(677, 'en', 'activated_time', 'activated time', 'false'),
(678, 'en', 'activated_code', 'activated code', 'false'),
(679, 'en', 'type_password_verify', 'type password to verify', 'false'),
(680, 'en', 'verify_password', 'verify password', 'false'),
(681, 'en', 'account_has_successfully_activated', 'account has been successfully activated', 'false'),
(682, 'en', 'confirmed_please_type_new_password', 'confirmed, please type new password', 'false'),
(683, 'en', 'time_created', 'time created', 'false'),
(684, 'en', 'type_new_password', 'type new password', 'false'),
(685, 'en', 'time_confirmation_code_created', 'time confirmation code is created', 'false'),
(686, 'en', 'confirmation_code_get_password', 'confirmation code to get password', 'false'),
(687, 'en', 'password_successfully_changed', 'password has successfully changed', 'false'),
(688, 'en', 'notify', 'notify', 'false'),
(689, 'en', 'news', 'news', 'false'),
(690, 'en', 'not_found_info_places', 'not found information about place', 'false'),
(691, 'en', 'question_display_content_embed', 'Giccos supported display content from this url, you want display content quickly by Giccos or read more content in this site ?', 'false'),
(692, 'en', 'open_this_site', 'open this site', 'false'),
(693, 'en', 'display_content', 'display content', 'false'),
(694, 'en', 'content_from_site_loading', 'data content from site is loading, please wait...', 'false'),
(695, 'en', 'pushed_content_from_site', 'content from site successfully added', 'false'),
(696, 'en', 'content_notfound_may_error', 'content is not found, maybe has error', 'false'),
(697, 'en', 'click_open_site', 'click here to open site', 'false'),
(698, 'en', 'show_more_content', 'show more content', 'false'),
(699, 'en', 'click_disable_collapse_contents', 'click text to disable collapse contents', 'false'),
(700, 'en', 'tips', 'tips', 'false'),
(701, 'en', 'define', 'define', 'false'),
(702, 'en', 'last_updated', 'last updated', 'false'),
(703, 'en', 'source', 'source', 'false'),
(704, 'en', 'please_wait_load_data', 'please wait system loading data', 'false'),
(705, 'en', 'description_about_country', 'description about country', 'false'),
(706, 'en', 'description_about_live', 'description about live', 'false'),
(707, 'en', 'last_edit_at', 'last edit at', 'false'),
(708, 'en', 'guide_down_line_press', 'hold the shift key and press enter to new line', 'false'),
(709, 'en', 'comment_content_is_empty', 'comment content is empty', 'false'),
(710, 'en', 'pages_feed_general.title', 'general :: feed :: giccos', 'false'),
(711, 'en', 'scan_this_code', 'scan this code', 'false'),
(712, 'en', 'create_by_giccos', 'created by giccos', 'false'),
(713, 'en', 'view_qrcode', 'view QR code', 'false'),
(714, 'en', 'checkin_at', 'check-in at', 'false'),
(715, 'en', 'private_null_text', 'null', 'false'),
(716, 'en', 'private_null_tip', 'unknown', 'false'),
(717, 'en', 'people', 'people', 'false'),
(718, 'en', 'quality', 'quality', 'false'),
(719, 'en', 'quality_custom', 'quality custom', 'false'),
(720, 'en', 'auto_repeat', 'auto repeat', 'false'),
(721, 'en', 'non_repeat', 'non repeat', 'false'),
(722, 'en', 'off', 'off', 'false'),
(723, 'en', 'on', 'on', 'false'),
(724, 'en', 'resize', 'resize', 'false'),
(725, 'en', 'see_more_about_photos', 'see more about photos', 'false'),
(726, 'en', 'null:music_singer', 'undefined presenter', 'false'),
(727, 'en', 'total_views', 'total views', 'false'),
(728, 'en', 'pointtag_not_allowed', 'point tag is not allowed, can''t implement action', 'false'),
(729, 'en', 'pointtag_add_successful', 'added new point tag successful', 'false'),
(730, 'en', 'you_may_want_read', 'you may want read', 'false'),
(731, 'en', 'thumbnail_from', 'thumbnail from', 'false'),
(732, 'en', 'copy_link', 'copy link', 'false'),
(733, 'en', 'redirect_link', 'redirect link', 'false'),
(734, 'en', 'this_week', 'this week', 'false'),
(735, 'en', 'ratio', 'ratio', 'false'),
(736, 'en', 'your_rate', 'your rate', 'false'),
(737, 'en', 'rate', 'rate', 'false'),
(738, 'en', 'rating', 'rating', 'false'),
(739, 'en', 'stats', 'stats', 'false'),
(740, 'en', 'host', 'host', 'false'),
(741, 'en', 'hash', 'hash', 'false'),
(742, 'en', 'title', 'title', 'false'),
(743, 'en', 'page_null_certificate', 'page is not have certificate', 'false'),
(744, 'en', 'encryption', 'encryption', 'false'),
(745, 'en', 'usage', 'usage', 'false'),
(746, 'en', 'issuer', 'issuer', 'false'),
(747, 'en', 'extended', 'extended', 'false'),
(748, 'en', 'key', 'key', 'false'),
(749, 'en', 'common_name', 'common name', 'false'),
(750, 'en', 'organization', 'organization', 'false'),
(751, 'en', 'certificate', 'certificate', 'false'),
(752, 'en', 'malware_scan', 'malware scan', 'false'),
(753, 'en', 'page_null_scanlogs', 'page is not have scan logs', 'false'),
(754, 'en', 'total_scanner', 'total scanner', 'false'),
(755, 'en', 'detection_rate', 'detection rate', 'false'),
(756, 'en', 'results', 'results', 'false'),
(757, 'en', 'danger', 'danger', 'false'),
(758, 'en', 'suspicious', 'suspicious', 'false'),
(759, 'en', 'safe', 'safe', 'false'),
(760, 'en', 'unrated', 'unrated', 'false'),
(761, 'en', 'not_safe', 'not safe', 'false'),
(762, 'en', 'system_scanner', 'system scanner', 'false'),
(763, 'en', 'stats_lastweek_data', 'last week data stats', 'false'),
(764, 'en', 'stats_thisweek_data', 'this week data stats', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `library_cited`
--

CREATE TABLE IF NOT EXISTS `library_cited` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_voice`
--

CREATE TABLE IF NOT EXISTS `library_voice` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `language` char(4) NOT NULL,
  `word` varchar(40) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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'),
(10, 1440152726, 1440152726, '3278a210', 'en', 'you', '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');

-- --------------------------------------------------------

--
-- Table structure for table `library_words`
--

CREATE TABLE IF NOT EXISTS `library_words` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `word` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `example` text,
  `related` text,
  `attribution` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `host` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_words`
--

INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES
(48, 'en', 1438956485, 1438956485, 'fuck', 'verb-transitive', 'To have sexual intercourse with', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(49, 'en', 1438956485, 1438956485, 'fuck', 'verb-intransitive', 'To engage in sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(50, 'en', 1438956485, 1438956485, 'fuck', 'noun', 'An act of sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(51, 'en', 1438956485, 1438956485, 'fuck', 'interjection', 'Used to express extreme displeasure', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(52, 'en', 1438956485, 1438956485, 'fuck', 'phrasal-verb', 'fuck off  Used in the imperative as a signal of angry dismissal', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(53, 'en', 1438956485, 1438956485, 'fuck', 'verb', 'To have sexual intercourse, to copulate', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(54, 'en', 1438956854, 1438956854, 'life', 'noun', 'The property or quality that distinguishes living organisms from dead organisms and inanimate matter, manifested in functions such as metabolism, growth, reproduction, and response to stimuli or adaptation to the environment originating from within the organism', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(55, 'en', 1438956856, 1438956856, 'love', 'noun', 'A deep, tender, ineffable feeling of affection and solicitude toward a person, such as that arising from kinship, recognition of attractive qualities, or a sense of underlying oneness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(56, 'en', 1438956856, 1438956856, 'love', 'verb-transitive', 'To have a deep, tender, ineffable feeling of affection and solicitude toward (a person):  We love our parents. I love my friends. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(57, 'en', 1438956858, 1438956858, 'kiss', 'verb-transitive', 'To touch or caress with the lips as an expression of affection, greeting, respect, or amorousness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(58, 'en', 1438956858, 1438956858, 'kiss', 'verb-intransitive', 'To engage in mutual touching or caressing with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(59, 'en', 1438956858, 1438956858, 'kiss', 'noun', 'A caress or touch with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(60, 'en', 1438956858, 1438956858, 'kiss', 'phrasal-verb', 'kiss off  Slang   To dismiss or reject', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(61, 'en', 1438956858, 1438956858, 'kiss', 'idiom', 'kiss ass  Vulgar Slang   To act submissively or obsequiously in order to gain favor', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(62, 'en', 1438956858, 1438956858, 'kiss', 'verb', 'To touch with the lips or press the lips against, usually to express love or affection or passion, or as part of a greeting, or as part of sexual activity', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(71, 'en', 1440151617, 1440151617, 'what', 'pronoun', 'Which thing or which particular one of many:  What are you having for dinner? What did she say? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(72, 'en', 1440151617, 1440151617, 'what', 'adjective', 'Which one or ones of several or many:  What college are you attending? You should know what musical that song is from. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(73, 'en', 1440151617, 1440151617, 'what', 'adverb', 'How much; in what respect; how:  What does it matter? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(74, 'en', 1440151617, 1440151617, 'what', 'interjection', 'Used to express surprise, incredulity, or other strong and sudden excitement', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(75, 'en', 1440151617, 1440151617, 'what', 'idiom', 'what for  Informal   A scolding or strong reprimand:  The teacher gave the tardy student what for. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(98, 'en', 1440152727, 1440152727, 'you', 'pronoun', 'Nonstandard   Used reflexively as the indirect object of a verb:  You might want to get you another pair of shoes.  See Note at me', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(99, 'en', 1440152727, 1440152727, 'you', 'determiner', 'The individual or group spoken or written to', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `things.type` varchar(20) DEFAULT NULL,
  `things.id` char(11) DEFAULT NULL,
  `obj.type` varchar(20) DEFAULT NULL,
  `obj.id` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(4, 1439142986, 'user', 15, 'favorite', 'status', '65', '', ''),
(6, 1439017319, 'user', 15, 'follow', 'status', '64', '', ''),
(7, 1439014312, 'user', 15, 'follow', 'status', '162', '', ''),
(8, 1439014312, 'user', 15, 'add', '', '', 'status', '162'),
(9, 1439014675, 'user', 15, 'follow', 'status', '163', '', ''),
(10, 1439014675, 'user', 15, 'share', 'status', '161', 'status', '163'),
(11, 1439014888, 'user', 15, 'follow', 'status', '164', '', ''),
(12, 1439014888, 'user', 15, 'share', 'status', '161', 'status', '164'),
(13, 1439015595, 'user', 15, 'follow', 'status', '165', '', ''),
(14, 1439015595, 'user', 15, 'share', 'status', '161', 'status', '165'),
(15, 1439018520, 'user', 15, 'follow', 'status', '166', '', ''),
(16, 1439015679, 'user', 15, 'share', 'status', '161', 'status', '166'),
(17, 1439017333, 'user', 15, 'follow', 'status', '167', '', ''),
(18, 1439017333, 'user', 15, 'share', 'status', '156', 'status', '167'),
(19, 1439017702, 'user', 15, 'follow', 'status', '168', '', ''),
(20, 1439017702, 'user', 15, 'share', 'status', '159', 'status', '168'),
(21, 1439018515, 'user', 15, 'unfollow', 'status', '166', '', ''),
(22, 1439029481, 'user', 15, 'follow', 'status', '169', '', ''),
(23, 1439029482, 'user', 15, 'share', 'status', '168', 'status', '169'),
(24, 1439121752, 'user', 15, 'comment', 'status', '169', 'comment', '5'),
(25, 1439135821, 'user', 15, 'comment', 'status', '168', 'comment', '6'),
(26, 1439330059, 'user', 15, 'follow', 'status', '170', '', ''),
(27, 1439207517, 'user', 15, 'add', '', '', 'status', '170'),
(28, 1439213025, 'user', 15, 'favorite', 'status', '170', '', ''),
(29, 1439213027, 'user', 15, 'unfavorite', 'status', '170', '', ''),
(30, 1439213182, 'user', 15, 'follow', 'status', '171', '', ''),
(31, 1439213182, 'user', 15, 'add', '', '', 'status', '171'),
(32, 1439243550, 'user', 15, 'follow', 'status', '172', '', ''),
(33, 1439213219, 'user', 15, 'add', '', '', 'status', '172'),
(34, 1439213599, 'user', 15, 'comment', 'status', '172', 'comment', '7'),
(35, 1439221315, 'user', 15, 'comment', 'status', '171', 'comment', '8'),
(36, 1439221330, 'user', 15, 'comment', 'status', '171', 'comment', '9'),
(37, 1439222278, 'user', 15, 'comment', 'comment', '6', 'comment', '10'),
(38, 1439222873, 'user', 15, 'comment', 'status', '172', 'comment', '11'),
(39, 1439223341, 'user', 15, 'comment', 'comment', '6', 'comment', '12'),
(40, 1439223456, 'user', 15, 'comment', 'comment', '6', 'comment', '13'),
(41, 1439223473, 'user', 15, 'comment', 'comment', '6', 'comment', '14'),
(42, 1439243548, 'user', 15, 'unfollow', 'status', '172', '', ''),
(43, 1439329784, 'user', 15, 'follow', 'status', '173', '', ''),
(44, 1439329786, 'user', 15, 'add', '', '', 'status', '173'),
(45, 1439330057, 'user', 15, 'unfollow', 'status', '170', '', ''),
(46, 1439331251, 'user', 15, 'follow', 'status', '174', '', ''),
(47, 1439331258, 'user', 15, 'add', '', '', 'status', '174'),
(48, 1439333782, 'user', 15, 'follow', 'status', '175', '', ''),
(49, 1439333793, 'user', 15, 'add', '', '', 'status', '175'),
(50, 1439334535, 'user', 15, 'follow', 'status', '176', '', ''),
(51, 1439334535, 'user', 15, 'add', '', '', 'status', '176'),
(52, 1439334554, 'user', 15, 'follow', 'status', '177', '', ''),
(53, 1439334554, 'user', 15, 'add', '', '', 'status', '177'),
(54, 1439334772, 'user', 15, 'follow', 'status', '178', '', ''),
(55, 1439334772, 'user', 15, 'add', '', '', 'status', '178'),
(56, 1439334878, 'user', 15, 'follow', 'status', '179', '', ''),
(57, 1439334878, 'user', 15, 'add', '', '', 'status', '179'),
(58, 1439334919, 'user', 15, 'follow', 'status', '180', '', ''),
(59, 1439334920, 'user', 15, 'add', '', '', 'status', '180'),
(60, 1439335038, 'user', 15, 'follow', 'status', '181', '', ''),
(61, 1439335039, 'user', 15, 'add', '', '', 'status', '181'),
(62, 1439582073, 'user', 15, 'follow', 'status', '182', '', ''),
(63, 1439582073, 'user', 15, 'add', '', '', 'status', '182'),
(64, 1439582118, 'user', 15, 'follow', 'status', '183', '', ''),
(65, 1439582118, 'user', 15, 'add', '', '', 'status', '183'),
(66, 1439582165, 'user', 15, 'follow', 'status', '184', '', ''),
(67, 1439582165, 'user', 15, 'add', '', '', 'status', '184'),
(68, 1439589963, 'user', 15, 'follow', 'status', '185', '', ''),
(69, 1439589963, 'user', 15, 'add', '', '', 'status', '185'),
(70, 1439591053, 'user', 15, 'follow', 'status', '186', '', ''),
(71, 1439591053, 'user', 15, 'add', '', '', 'status', '186'),
(72, 1439591125, 'user', 15, 'follow', 'status', '187', '', ''),
(73, 1439591125, 'user', 15, 'add', '', '', 'status', '187'),
(74, 1439623178, 'user', 15, 'follow', 'status', '188', '', ''),
(75, 1439623178, 'user', 15, 'add', '', '', 'status', '188'),
(76, 1439623402, 'user', 15, 'follow', 'status', '189', '', ''),
(77, 1439623402, 'user', 15, 'add', '', '', 'status', '189'),
(78, 1439624121, 'user', 15, 'follow', 'status', '190', '', ''),
(79, 1439624121, 'user', 15, 'add', '', '', 'status', '190'),
(80, 1439624131, 'user', 15, 'follow', 'status', '191', '', ''),
(81, 1439624131, 'user', 15, 'add', '', '', 'status', '191'),
(82, 1439624192, 'user', 15, 'follow', 'status', '192', '', ''),
(83, 1439624192, 'user', 15, 'add', '', '', 'status', '192'),
(84, 1439624267, 'user', 15, 'follow', 'status', '193', '', ''),
(85, 1439624267, 'user', 15, 'add', '', '', 'status', '193'),
(86, 1439624337, 'user', 15, 'follow', 'status', '194', '', ''),
(87, 1439624337, 'user', 15, 'add', '', '', 'status', '194'),
(88, 1439624402, 'user', 15, 'follow', 'status', '195', '', ''),
(89, 1439624402, 'user', 15, 'add', '', '', 'status', '195'),
(90, 1439624438, 'user', 15, 'follow', 'status', '196', '', ''),
(91, 1439624439, 'user', 15, 'add', '', '', 'status', '196'),
(92, 1439624518, 'user', 15, 'follow', 'status', '197', '', ''),
(93, 1439624518, 'user', 15, 'add', '', '', 'status', '197'),
(94, 1439624633, 'user', 15, 'follow', 'status', '198', '', ''),
(95, 1439624634, 'user', 15, 'add', '', '', 'status', '198'),
(96, 1439624774, 'user', 15, 'follow', 'status', '199', '', ''),
(97, 1439624775, 'user', 15, 'add', '', '', 'status', '199'),
(98, 1439624819, 'user', 15, 'follow', 'status', '200', '', ''),
(99, 1439624820, 'user', 15, 'add', '', '', 'status', '200'),
(100, 1439624981, 'user', 15, 'follow', 'status', '201', '', ''),
(101, 1439624982, 'user', 15, 'add', '', '', 'status', '201'),
(102, 1439625057, 'user', 15, 'follow', 'status', '202', '', ''),
(103, 1439625058, 'user', 15, 'add', '', '', 'status', '202'),
(104, 1439625153, 'user', 15, 'follow', 'status', '203', '', ''),
(105, 1439625154, 'user', 15, 'add', '', '', 'status', '203'),
(106, 1439625188, 'user', 15, 'follow', 'status', '204', '', ''),
(107, 1439625188, 'user', 15, 'add', '', '', 'status', '204'),
(108, 1439625210, 'user', 15, 'follow', 'status', '205', '', ''),
(109, 1439625210, 'user', 15, 'add', '', '', 'status', '205'),
(110, 1439625254, 'user', 15, 'follow', 'status', '206', '', ''),
(111, 1439625255, 'user', 15, 'add', '', '', 'status', '206'),
(112, 1439625407, 'user', 15, 'follow', 'status', '207', '', ''),
(113, 1439625408, 'user', 15, 'add', '', '', 'status', '207'),
(114, 1439625480, 'user', 15, 'follow', 'status', '208', '', ''),
(115, 1439625481, 'user', 15, 'add', '', '', 'status', '208'),
(116, 1439625710, 'user', 15, 'follow', 'status', '209', '', ''),
(117, 1439625711, 'user', 15, 'add', '', '', 'status', '209'),
(118, 1439625816, 'user', 15, 'follow', 'status', '210', '', ''),
(119, 1439625817, 'user', 15, 'add', '', '', 'status', '210'),
(120, 1439625896, 'user', 15, 'follow', 'status', '211', '', ''),
(121, 1439625897, 'user', 15, 'add', '', '', 'status', '211'),
(122, 1439625945, 'user', 15, 'follow', 'status', '212', '', ''),
(123, 1439625946, 'user', 15, 'add', '', '', 'status', '212'),
(124, 1439626013, 'user', 15, 'follow', 'status', '213', '', ''),
(125, 1439626014, 'user', 15, 'add', '', '', 'status', '213'),
(126, 1439626115, 'user', 15, 'follow', 'status', '214', '', ''),
(127, 1439626116, 'user', 15, 'add', '', '', 'status', '214'),
(128, 1439626177, 'user', 15, 'follow', 'status', '215', '', ''),
(129, 1439626177, 'user', 15, 'add', '', '', 'status', '215'),
(130, 1439626267, 'user', 15, 'follow', 'status', '216', '', ''),
(131, 1439626268, 'user', 15, 'add', '', '', 'status', '216'),
(132, 1439626391, 'user', 15, 'follow', 'status', '217', '', ''),
(133, 1439626392, 'user', 15, 'add', '', '', 'status', '217'),
(134, 1439627297, 'user', 15, 'follow', 'status', '218', '', ''),
(135, 1439627297, 'user', 15, 'add', '', '', 'status', '218'),
(136, 1439631890, 'user', 15, 'follow', 'status', '219', '', ''),
(137, 1439631891, 'user', 15, 'add', '', '', 'status', '219'),
(138, 1439632015, 'user', 15, 'follow', 'status', '220', '', ''),
(139, 1439632016, 'user', 15, 'add', '', '', 'status', '220'),
(140, 1439632428, 'user', 15, 'follow', 'status', '221', '', ''),
(141, 1439632429, 'user', 15, 'add', '', '', 'status', '221'),
(142, 1439632653, 'user', 15, 'follow', 'status', '222', '', ''),
(143, 1439632655, 'user', 15, 'add', '', '', 'status', '222'),
(144, 1439633160, 'user', 15, 'follow', 'status', '223', '', ''),
(145, 1439633161, 'user', 15, 'add', '', '', 'status', '223'),
(146, 1439633282, 'user', 15, 'follow', 'status', '224', '', ''),
(147, 1439633283, 'user', 15, 'add', '', '', 'status', '224'),
(148, 1439633374, 'user', 15, 'follow', 'status', '225', '', ''),
(149, 1439633375, 'user', 15, 'add', '', '', 'status', '225'),
(150, 1439634358, 'user', 15, 'follow', 'status', '226', '', ''),
(151, 1439634360, 'user', 15, 'add', '', '', 'status', '226'),
(152, 1439634511, 'user', 15, 'follow', 'status', '227', '', ''),
(153, 1439634514, 'user', 15, 'add', '', '', 'status', '227'),
(154, 1439634655, 'user', 15, 'follow', 'status', '228', '', ''),
(155, 1439634655, 'user', 15, 'add', '', '', 'status', '228'),
(156, 1439634835, 'user', 15, 'follow', 'status', '229', '', ''),
(157, 1439634837, 'user', 15, 'add', '', '', 'status', '229'),
(158, 1439634891, 'user', 15, 'follow', 'status', '230', '', ''),
(159, 1439634892, 'user', 15, 'add', '', '', 'status', '230'),
(160, 1439635027, 'user', 15, 'follow', 'status', '231', '', ''),
(161, 1439635029, 'user', 15, 'add', '', '', 'status', '231'),
(162, 1439635072, 'user', 15, 'follow', 'status', '232', '', ''),
(163, 1439635075, 'user', 15, 'add', '', '', 'status', '232'),
(164, 1439635281, 'user', 15, 'follow', 'status', '233', '', ''),
(165, 1439635288, 'user', 15, 'add', '', '', 'status', '233'),
(166, 1439635355, 'user', 15, 'follow', 'status', '234', '', ''),
(167, 1439635369, 'user', 15, 'add', '', '', 'status', '234'),
(168, 1439635442, 'user', 15, 'follow', 'status', '235', '', ''),
(169, 1439635456, 'user', 15, 'add', '', '', 'status', '235'),
(170, 1439635553, 'user', 15, 'follow', 'status', '236', '', ''),
(171, 1439635581, 'user', 15, 'add', '', '', 'status', '236'),
(172, 1439635611, 'user', 15, 'follow', 'status', '237', '', ''),
(173, 1439635635, 'user', 15, 'add', '', '', 'status', '237'),
(174, 1439635867, 'user', 15, 'follow', 'status', '238', '', ''),
(175, 1439635868, 'user', 15, 'add', '', '', 'status', '238'),
(176, 1439637089, 'user', 15, 'follow', 'status', '239', '', ''),
(177, 1439637120, 'user', 15, 'add', '', '', 'status', '239'),
(178, 1439637318, 'user', 15, 'follow', 'status', '240', '', ''),
(179, 1439637352, 'user', 15, 'add', '', '', 'status', '240'),
(180, 1439637452, 'user', 15, 'follow', 'status', '241', '', ''),
(181, 1439637486, 'user', 15, 'add', '', '', 'status', '241'),
(182, 1439637940, 'user', 15, 'follow', 'status', '242', '', ''),
(183, 1439637940, 'user', 15, 'add', '', '', 'status', '242'),
(184, 1439637979, 'user', 15, 'follow', 'status', '243', '', ''),
(185, 1439637980, 'user', 15, 'add', '', '', 'status', '243'),
(186, 1439638056, 'user', 15, 'follow', 'status', '244', '', ''),
(187, 1439638057, 'user', 15, 'add', '', '', 'status', '244'),
(188, 1439638154, 'user', 15, 'follow', 'status', '245', '', ''),
(189, 1439638182, 'user', 15, 'add', '', '', 'status', '245'),
(190, 1439638866, 'user', 15, 'follow', 'status', '246', '', ''),
(191, 1439639088, 'user', 15, 'add', '', '', 'status', '246'),
(192, 1439639718, 'user', 15, 'follow', 'status', '247', '', ''),
(193, 1439639902, 'user', 15, 'add', '', '', 'status', '247'),
(194, 1439640257, 'user', 15, 'follow', 'status', '248', '', ''),
(195, 1439640394, 'user', 15, 'add', '', '', 'status', '248'),
(196, 1439640440, 'user', 15, 'follow', 'status', '249', '', ''),
(197, 1439640504, 'user', 15, 'follow', 'status', '250', '', ''),
(198, 1439640858, 'user', 15, 'follow', 'status', '251', '', ''),
(199, 1439641496, 'user', 15, 'add', '', '', 'status', '251'),
(200, 1439670839, 'user', 15, 'follow', 'status', '252', '', ''),
(201, 1439671409, 'user', 15, 'add', '', '', 'status', '252'),
(202, 1439671700, 'user', 15, 'follow', 'status', '253', '', ''),
(203, 1439671701, 'user', 15, 'add', '', '', 'status', '253'),
(204, 1439671847, 'user', 15, 'follow', 'status', '254', '', ''),
(205, 1439671847, 'user', 15, 'add', '', '', 'status', '254'),
(206, 1439671906, 'user', 15, 'follow', 'status', '255', '', ''),
(207, 1439671908, 'user', 15, 'add', '', '', 'status', '255'),
(208, 1439672191, 'user', 15, 'follow', 'status', '256', '', ''),
(209, 1439672192, 'user', 15, 'add', '', '', 'status', '256'),
(210, 1439672265, 'user', 15, 'follow', 'status', '257', '', ''),
(211, 1439672268, 'user', 15, 'add', '', '', 'status', '257'),
(212, 1439672355, 'user', 15, 'follow', 'status', '258', '', ''),
(213, 1439672358, 'user', 15, 'add', '', '', 'status', '258'),
(214, 1439672550, 'user', 15, 'follow', 'status', '259', '', ''),
(215, 1439672552, 'user', 15, 'add', '', '', 'status', '259'),
(216, 1439675020, 'user', 15, 'follow', 'status', '260', '', ''),
(217, 1439675046, 'user', 15, 'add', '', '', 'status', '260'),
(218, 1439689195, 'user', 15, 'follow', 'status', '261', '', ''),
(219, 1439689222, 'user', 15, 'add', '', '', 'status', '261'),
(220, 1439689480, 'user', 15, 'follow', 'status', '262', '', ''),
(221, 1439689508, 'user', 15, 'add', '', '', 'status', '262'),
(222, 1439689629, 'user', 15, 'follow', 'status', '263', '', ''),
(223, 1439689659, 'user', 15, 'add', '', '', 'status', '263'),
(224, 1439689913, 'user', 15, 'follow', 'status', '264', '', ''),
(225, 1439689992, 'user', 15, 'follow', 'status', '265', '', ''),
(226, 1439690022, 'user', 15, 'add', '', '', 'status', '265'),
(227, 1439690663, 'user', 15, 'follow', 'status', '266', '', ''),
(228, 1439690691, 'user', 15, 'add', '', '', 'status', '266'),
(229, 1439765344, 'user', 15, 'follow', 'status', '267', '', ''),
(230, 1439765368, 'user', 15, 'add', '', '', 'status', '267'),
(231, 1439766092, 'user', 15, 'follow', 'status', '268', '', ''),
(232, 1439766115, 'user', 15, 'add', '', '', 'status', '268'),
(233, 1439767098, 'user', 15, 'follow', 'status', '269', '', ''),
(234, 1439767123, 'user', 15, 'add', '', '', 'status', '269'),
(235, 1439799392, 'user', 15, 'follow', 'status', '270', '', ''),
(236, 1439800054, 'user', 15, 'add', '', '', 'status', '270'),
(237, 1439879742, 'user', 15, 'follow', 'status', '271', '', ''),
(238, 1439879744, 'user', 15, 'add', '', '', 'status', '271'),
(239, 1440495141, 'user', 15, 'follow', 'status', '272', '', ''),
(240, 1440495142, 'user', 15, 'add', '', '', 'status', '272'),
(241, 1440511844, 'user', 15, 'follow', 'status', '273', '', ''),
(242, 1440511849, 'user', 15, 'add', '', '', 'status', '273'),
(243, 1440657262, 'user', 15, 'follow', 'status', '274', '', ''),
(244, 1440657263, 'user', 15, 'add', '', '', 'status', '274'),
(245, 1440737903, 'user', 15, 'follow', 'status', '275', '', ''),
(246, 1440737903, 'user', 15, 'add', '', '', 'status', '275'),
(247, 1440738717, 'user', 15, 'follow', 'status', '276', '', ''),
(248, 1440738717, 'user', 15, 'add', '', '', 'status', '276'),
(249, 1440749082, 'user', 15, 'follow', 'status', '277', '', ''),
(250, 1440749082, 'user', 15, 'add', '', '', 'status', '277');

-- --------------------------------------------------------

--
-- Table structure for table `logs_ajax`
--

CREATE TABLE IF NOT EXISTS `logs_ajax` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `token` varchar(40) NOT NULL,
  `platform` varchar(20) NOT NULL,
  `platform.version` char(10) NOT NULL,
  `browser` varchar(20) NOT NULL,
  `browser.version` char(10) NOT NULL,
  `browser.kernel` char(10) NOT NULL,
  `header` text NOT NULL,
  `request` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs_client`
--

CREATE TABLE IF NOT EXISTS `logs_client` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device` char(10) DEFAULT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(40) NOT NULL,
  `browser.kernel` varchar(40) NOT NULL,
  `browser.version` varchar(20) NOT NULL,
  `agent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1440848737, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif'),
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif'),
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif'),
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif');

-- --------------------------------------------------------

--
-- Table structure for table `messages_data`
--

CREATE TABLE IF NOT EXISTS `messages_data` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(1, 1433307396, 2, '14c4cf3b', 'a0b1c721104e56f7dec4903ac13758a1', 'user', 15, 'GX7ynuQ6jpxs4m6dJspNyiIOPME76Y+tEMgq1IbCThc=', ''),
(2, 1433308503, 2, '6900420b', '18f78192f485dee4ad19bfa37455957c', 'user', 15, 'nJ9OXzswv+1Y94uTW4iega2rhciEssNZHTUjCQRe8OM=', ''),
(3, 1433309148, 2, '70329da9', '3b46e894f67dd90ea586573b69cccf64', 'user', 15, 'O1U3Y9sPmPr5/XZqsG1hZ8wjLV8Z7Wa0j4T5D3zNvrI=', ''),
(4, 1433309205, 1, 'b27881b5', '1e5a03e0526bb0c9d3a6a0ec5c755e03', 'user', 16, 'AmN47nsi9UFDLd/OJJz/xU9O8TQsh+4FOGFpaPzbjS0=', ''),
(5, 1433309212, 1, '47e0bc43', '611081a1dcb37138f72174bfdfeb0b83', 'user', 16, '0LOogbEFxybn1kXNLZL5d1g3MVGW6jjWAPV7hVId07Q=', ''),
(6, 1433309223, 1, '6d571e2c', '1adc90ac7e69f73c64b365fbb6fc82b6', 'user', 15, 'SulYLLt3AXq8kxFRbRaPJg4Pym2BnaifFiZM0UTuOm0=', ''),
(7, 1433309231, 1, 'f7cce24a', '8664f509d6f4f238dcf04629d63e4932', 'user', 16, 'iuxhZYex4uWq9Z6iYaSuyc53fgRle+4xsNrcdsqR6+A=', ''),
(8, 1433309267, 1, '3bfe29b9', '0d18636a325b05275330fafd54cd4b22', 'user', 16, 'cg8yUjLqoOqoKQA/CROgjTW4hyIBIdBSCm3lNgTWhRHigJxYfnQzfJQLGpNAhAQo8x1PxEwhXo7jUG1WK7qeyxiG5UcjSMHFXisZww2wxytGkbawcmc6hXxTi2MT0fda', ''),
(9, 1433309287, 1, '31f627be', '8f7724639484f3e2d36275503d816181', 'user', 16, 'sYpSoqCGtDFBW6cHQFBuSy43/jSDmqcgvk44pIV0m4g=', ''),
(12, 1433413989, 1, 'c2558a5d', 'db1dee58c5edefdc432241242126ca86', 'user', 16, 'RGpEy4CYcFPnUm7CQM+7kMNpOpOU3ZzC9ue2PahJXoNzuYH/csfUhwTuODRBInFBz08Ch9u7sHO06fZNIgpmz31zRo4LQk9f1jRajIJ+lwF0vRtSb0nb77h1mdxojcsKiTB9QMWTUJLVZ/uhbFQDeyFoEUOPzuBw/53AL1Oml4M65ydZETX/x4do+SUUVd5EwgTWxk6huIMnMc1IFXn7Tg==', ''),
(13, 1435567172, 1, '1b10d9b8', 'bd4b3bb99306c41c18516a9b2a6f1bad', 'user', 16, 'dBPoka5Vih+VgotL2IzbcBHRRGsjB3pbT1gRZs71aNA=', ''),
(14, 1435567351, 1, '46c08801', '07ce7446528bdc95c796c8fd4c048185', 'user', 16, 'HHKEryGWYTDSfJ2y7kC0KwTsjvUMCCvOSnXCfy6DAKI=', ''),
(15, 1435568292, 1, '891f09f1', '19b847c8c48ac7f4a55442f4c24b64d6', 'user', 15, 'sVtKRp0Rl1VgobFA4fHf3hoxX8loJnlecgm1HBRBxzU=', ''),
(16, 1435568307, 1, '1b2ccc59', '63289e37903ed7f86d04135825903914', 'user', 15, 'FNMERG7ILSMsK/pO7qeMT3xh2kbyLLXH06JtFiJz+TM=', ''),
(17, 1435647023, 1, 'e60c24d8', '4792663903078a69e36320ac626b03f6', 'user', 16, 'd9GEEtlTwZBEBavcYdjj44JBY/keYb0L3i1zB2rm9wE=', ''),
(23, 1435647902, 1, '4f04a4de', 'f44b0997dcc859d681253acfff5e5941', 'user', 16, 'SkAcShbfLBYrFlSsnzjDYbhsYJJf4P/W+eHnL/0VeH0=', ''),
(24, 1437547398, 2, '15fef304', '3e25368f311de0296a4e42de60435b58', 'user', 16, 'SgOEA3C12f3qvsd6ovamYcynukqhmGo6IoqkBgGBRYY=', ''),
(25, 1437639019, 2, '7a77b1d5', 'e1d04302fe70c3456ce9cfcb1d403127', 'user', 15, '76VRzSKhZt4AbhaeKwLEyeDtfDSOa5Xn9+G+a3SpQnU=', ''),
(35, 1437640635, 2, '85df9c4a', '18a705db47703cfb458fd58199f44aab', 'user', 15, '65RrTtNoqPgZlw5pTGWMLj7F0h+LIKWVUOjlFKmX788pCoHRUGgqpO9bAv32LVOr3jSUCrPrBfPXNK2EQLrFToZZxlBjEt0vgT4XbDh/FTVG+J21YmugX8ceYoWxlPqUZop66qfdw48PMlBzy8w4DoSZmHfNPtNewxhUjg7uEqk=', ''),
(36, 1437640651, 2, '811da56d', '472da230771d16d9da51b39bb40fce0b', 'user', 15, 'OB/J85g1uHSLAENCnyLKC2z21EA3Zbx0zCnw7XorpXU=', ''),
(37, 1437642433, 2, '10711922', '5bb13af029e13234d7ef8dec1d9d30eb', 'user', 15, 'eiMltyUfCLDAwGReoamiOgUGx5nhlO3BVwDK9sZqGrUvzQzREEGUK7GjXDoxHgOXbl8zWUx8UKJGGw2C+BIpIHUCyyYCYpGZmw9xFE7D6Flr6ZRcuum8sVPYKo/b19vn', ''),
(38, 1437645576, 2, '7f4bc2c8', '003f85880df87ea66588f8d27ac4aa00', 'user', 15, 'Mc+TnRiTAQEzQX75FoG8soJDKWcoUBD884ou4Vxbfps=', ''),
(39, 1437645582, 2, 'aaadc024', '0199f9b6f9c0a06e0136796c5e4b501e', 'user', 15, '6uh+66MfTs650mHyfwWuyz2KKY+bl02bwfI6vXGReoU=', ''),
(40, 1437647223, 2, '0fe99242', '023927c26466f3e723cb19d056f67772', 'user', 15, 'Rb8m5BBJthM1TnAkDiY5+u56uJyxIcq0eqCcERA/1FQ=', ''),
(41, 1437647688, 2, '84d69a51', '885c13ce569ae96cca7a7b703070cb61', 'user', 15, 'qdtpIv4zHxVmnWho7grOv81Ki5CLe23hc+EiaojWVzE=', ''),
(42, 1438418829, 2, '771a50ae', '53a1f7bef217ec4823362663b1d54f43', 'user', 16, 'O7Wbi3v7OKm4qKh7ksQz15ZRDQPb1Vj+f4zWxjctZ2Q=', ''),
(43, 1438418842, 2, '5783293a', '04aa098278417bcbd807cc8273386578', 'user', 16, '2epdcF61oixq+S5MaOSvw983NdHw7a7mp1K0eOLM6X4=', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages_hashtag`
--

CREATE TABLE IF NOT EXISTS `messages_hashtag` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_hide`
--

CREATE TABLE IF NOT EXISTS `messages_hide` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `messages.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(40) NOT NULL,
  `private` int(1) NOT NULL,
  `type` char(10) NOT NULL,
  `name` text,
  `language` char(4) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`, `deleted`, `action`, `updated`) VALUES
(1, 1433306571, 'c6729d95', 'f25232f9bc4da9bef5fa1d9be8d3f4e2', 1, 'groups', '', 'vi', 0, 1435647902, 1433312716),
(2, 1433307391, '19605aa7', '96ca778c5a88897519515268f0f9b043', 1, 'private', '', 'vi', 0, 1438418842, 0),
(3, 1433413882, '24194ec5', '843a18fe20af68113f82f8c840bfd66d', 1, 'private', '', 'vi', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` char(4) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1433306571, 1, 'author', 'en', 'user', 15),
(2, 1433306571, 1, 'members', '0', 'user', 16),
(3, 1433306571, 1, 'members', '0', 'user', 17),
(4, 1433307391, 2, 'members', 'en', 'user', 15),
(5, 1433307391, 2, 'members', '0', 'user', 16),
(6, 1433413882, 3, 'members', '0', 'user', 16),
(7, 1433413882, 3, 'members', '0', 'user', 17);

-- --------------------------------------------------------

--
-- Table structure for table `messages_typing`
--

CREATE TABLE IF NOT EXISTS `messages_typing` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(39, 1433254452, 97, 'user', 15),
(40, 1433254578, 98, 'user', 15),
(41, 1433254608, 99, 'user', 15),
(42, 1436299107, 1, 'user', 15),
(43, 1438418845, 2, 'user', 15),
(44, 1435647907, 1, 'user', 16),
(45, 1433411253, 1, 'user', 17),
(46, 1435567376, 3, 'user', 16),
(47, 1438418838, 2, 'user', 16);

-- --------------------------------------------------------

--
-- Table structure for table `mood`
--

CREATE TABLE IF NOT EXISTS `mood` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `emoticon` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mood`
--

INSERT INTO `mood` (`id`, `type`, `code`, `emoticon`) VALUES
(2, 'feel', '[feel]happy', ''),
(3, 'feel', '[feel]so_happy', ''),
(4, 'feel', '[feel]great', ''),
(5, 'feel', '[feel]fine', ''),
(6, 'feel', '[feel]inquisitive', ''),
(7, 'feel', '[feel]disturb', ''),
(8, 'feel', '[feel]despair', ''),
(9, 'feel', '[feel]angry', ''),
(10, 'feel', '[feel]proud', ''),
(11, 'feel', '[feel]empty', ''),
(12, 'feel', '[feel]disgusting', ''),
(13, 'feel', '[feel]beneath', ''),
(14, 'feel', '[feel]scarcely', ''),
(15, 'feel', '[feel]shame', ''),
(16, 'feel', '[feel]dirty', ''),
(17, 'feel', '[feel]fail', ''),
(18, 'feel', '[feel]serenity', ''),
(19, 'feel', '[feel]sad', ''),
(20, 'feel', '[feel]so_sad', ''),
(21, 'feel', '[feel]regretful', ''),
(22, 'feel', '[feel]interesting', ''),
(23, 'feel', '[feel]not_assured', '');

-- --------------------------------------------------------

--
-- Table structure for table `music_album`
--

CREATE TABLE IF NOT EXISTS `music_album` (
  `id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_block`
--

CREATE TABLE IF NOT EXISTS `music_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_cache`
--

CREATE TABLE IF NOT EXISTS `music_cache` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_cache`
--

INSERT INTO `music_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`) VALUES
(5, 15, 'user', 15, 1434614101, 1439588166, 'da65d66b', 'd6b39c35', 'e727921e', '6b93ff96.mp3', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '0', 'audio/mp3', 3636470, 226.873474, 'b33b94a8'),
(7, 15, 'user', 15, 1439583261, 1439588166, '1064bb3d', '4f17c176', '55b0b7fe', 'b6ba8476', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '956b5fe6'),
(11, 15, 'user', 15, 1439622479, 1439624279, '1064bb3d', '4f17c176', '55b0b7fe', '52471af9', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '34d176e9'),
(12, 15, 'user', 15, 1439623355, 1439625155, '1064bb3d', '4f17c176', '55b0b7fe', 'c511e715', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '30288754'),
(14, 15, 'user', 15, 1439623363, 1439625163, '1064bb3d', '4f17c176', '55b0b7fe', '66427bb9', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '209a4e48'),
(16, 15, 'user', 15, 1439623392, 1439625192, '1064bb3d', '4f17c176', '55b0b7fe', 'cc6b798e', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'ab842ecd'),
(17, 15, 'user', 15, 1439623698, 1439625498, '1064bb3d', '4f17c176', '55b0b7fe', 'f32ceb9e', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'c4fae3a4'),
(18, 15, 'user', 15, 1439623699, 1439625499, '1064bb3d', '4f17c176', '55b0b7fe', 'fa8b30c3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '471664e7'),
(19, 15, 'user', 15, 1439623759, 1439625559, '1064bb3d', '4f17c176', '55b0b7fe', '8f70f655', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '72165fa0'),
(20, 15, 'user', 15, 1439623862, 1439625662, '1064bb3d', '4f17c176', '55b0b7fe', 'c2720715', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'cdde4ac3'),
(21, 15, 'user', 15, 1439624129, 1439625929, '1064bb3d', '4f17c176', '55b0b7fe', 'f5c3f1b0', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '1d25bb77'),
(22, 15, 'user', 15, 1439624190, 1439625990, '1064bb3d', '4f17c176', '55b0b7fe', '9c86ea3c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'cb767a0f'),
(23, 15, 'user', 15, 1439624265, 1439626065, '1064bb3d', '4f17c176', '55b0b7fe', 'dbc38fb2', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '8a6be1b6'),
(24, 15, 'user', 15, 1439624335, 1439626135, '1064bb3d', '4f17c176', '55b0b7fe', 'e915cbb4', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'b7ff1b56'),
(27, 15, 'user', 15, 1439624516, 1439626316, '1064bb3d', '4f17c176', '55b0b7fe', '025769a3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'ec43746b'),
(33, 15, 'user', 15, 1439625055, 1439626855, '1064bb3d', '4f17c176', '55b0b7fe', '4c880b52', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'de6d269d'),
(53, 15, 'user', 15, 1439632427, 1439634227, '1064bb3d', '4f17c176', '55b0b7fe', 'ffa96832', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, 'b75adfcf'),
(62, 15, 'user', 15, 1439634729, 1439636529, '1064bb3d', '4f17c176', '55b0b7fe', 'c1b6cd29', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 0.000000, '3cb6397d'),
(66, 15, 'user', 15, 1439635068, 1439636868, '1064bb3d', '4f17c176', '55b0b7fe', '265f824a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '0', 'audio/mp3', 9803861, 245.063995, '80dd525e');

-- --------------------------------------------------------

--
-- Table structure for table `music_info`
--

CREATE TABLE IF NOT EXISTS `music_info` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `singer` varchar(40) NOT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.original` varchar(255) NOT NULL,
  `file.320kbps` varchar(50) NOT NULL,
  `file.128kbps` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.320kbps` varchar(40) NOT NULL,
  `secret.128kbps` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.320kbps` char(10) NOT NULL,
  `path.128kbps` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) DEFAULT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.320kbps`, `file.128kbps`, `secret.original`, `secret.320kbps`, `secret.128kbps`, `path.original`, `path.320kbps`, `path.128kbps`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 15, 'user', 15, 0, 1433745199, '966a5164', '7f2e596d7ed79d1720651a37fb98015d', 'x', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '', '', '', 4, 4, 4, 'd098eb5a6b6137ed8433e56050783a36.mp3', '', '', '250b5ac580f1bc35c4d98743ccd50a9e', '', '', '49607e4f', '', '', 0, 3636470, 'mp3', NULL, 128229, 226.873474, 'audio/mp3'),
(2, 15, 'user', 15, 0, 1438418369, '68e9e22d', '150fab4509acc9cf6ef22d48cb8d543a', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'd5c13d7ef20909fa62773e26c1a39d85.mp3', '', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '', '', 'e3c39d7d', '', '', 0, 9803861, 'mp3', NULL, 320042, 245.063995, 'audio/mp3'),
(3, 15, '', 0, 0, 1439624402, '3ed05b29', 'db2ddc9afc818aef6bc42a6accfc68bf', 'sd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'eb2a9028aaf8403d7ebdee66921d03c2', '0', '0', 'e141ae0b0db60c4e3e3eba59f74a6f69', '0', '0', 'f37256da', '0', '0', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(4, 15, 'user', 15, 0, 1439624438, '008a8999', 'dcc4b519772d3449a4248f43b41eb42e', 'asd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'd101e66850f654d905b6d978ce8ffcba', '0', '0', 'e141ae0b0db60c4e3e3eba59f74a6f69', '0', '0', 'f224dcef', '0', '0', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(5, 15, 'user', 15, 0, 1439624518, 'a0578a62', '443fe4e878e4235de2f0d99516db7c93', 'xaf sdf sadf ', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '9c68ac435617536e82c47159a09658c5', '0', '0', 'e141ae0b0db60c4e3e3eba59f74a6f69', '0', '0', 'bec53418', '0', '0', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(6, 15, 'user', 15, 0, 1439624634, '2b983a6c', 'c55ffaab94364f6062ef3a56644b6b5a', 'sdf', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'fabf5511516062381e83ac3a80e3ad4b', 'fabf5511516062381e83ac3a80e3ad4b', 'fabf5511516062381e83ac3a80e3ad4b', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'da149656', '576421fa', '7e45e3b6', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(7, 15, 'user', 15, 0, 1439624775, 'fb7bd293', 'd17ad4394a49f212b802faf2fcf50c45', 'sdf sdaf ', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'a723226bfd2ee63bfd431646ae8895be', 'a723226bfd2ee63bfd431646ae8895be', 'a723226bfd2ee63bfd431646ae8895be', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'storage/audio/drive/1/90441a8380e2bcb7af', 'storage/audio/drive/1/26c5a49d460dd9f079', '2427819d', 'e5cb4826', '17be7c8a', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(8, 15, 'user', 15, 0, 1439624820, 'ad56cfed', '89c3dc7895d1b2863d8bcdc705438edb', 'sadf asdf sda f', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'c7f60e3e43e5170d94bb274e57507431', 'c7f60e3e43e5170d94bb274e57507431', 'c7f60e3e43e5170d94bb274e57507431', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '508aa24a', '5fb9176e', 'e69bd65d', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(9, 15, 'user', 15, 0, 1439624982, '09cdb427', 'ff69f67fe93b79007502c19c9cccd532', 'adsf asdf ', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '0ee6081cfb27a415a76d3709efc8080d', '0ee6081cfb27a415a76d3709efc8080d', '0ee6081cfb27a415a76d3709efc8080d', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '559e88f0', '1105afa7', 'cf856c40', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(10, 15, 'user', 15, 0, 1439625058, 'ecf25b88', '0595a6b456e8012a12409f10b68e6781', 'df', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'a9807dc174f92909c55a5a833ad52cc4', 'a9807dc174f92909c55a5a833ad52cc4', 'a9807dc174f92909c55a5a833ad52cc4', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'bbc1ebc7', 'd0a206c9', '621c0da3', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(11, 15, 'user', 15, 0, 1439625154, 'f91a83ed', '27cfda420dc6a520a6982922c144e40c', 'xfgj fjdhjgh', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'd3e29f378cb8a3bb7eff27595a8577c4', 'd3e29f378cb8a3bb7eff27595a8577c4', 'd3e29f378cb8a3bb7eff27595a8577c4', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'bcc68e15', 'ea61a8c3', 'aa541d1a', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(12, 15, 'user', 15, 0, 1439625254, '26101c30', '109a35003b2d6335b4df271fa446ef47', 'sdfsdf', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '10fd224860a294df1cc98783c6b12660', '10fd224860a294df1cc98783c6b12660', '10fd224860a294df1cc98783c6b12660', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '46e7d835', '89c0410d', '8b5bdd1c', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(13, 15, 'user', 15, 0, 1439625408, '011dfe5d', '582c4bd7706f2bd0b328fe5f2b37e680', 'adf asd ', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '2ccf909f95ff4f5c6904f59840c1e469', '2ccf909f95ff4f5c6904f59840c1e469', '2ccf909f95ff4f5c6904f59840c1e469', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '86f57419', '0af02540', '2a0b5546', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(14, 15, 'user', 15, 0, 1439625481, '78c9f850', '2ded35c30740a44794a7aae55fc3e0cc', 'asdf', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'c39767dfe39fbfada6926853cef029e5', 'c39767dfe39fbfada6926853cef029e5', 'c39767dfe39fbfada6926853cef029e5', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a70c354f', 'b9b9e34d', '33c89b60', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(15, 15, 'user', 15, 0, 1439625711, '5aeedbff', 'c6bd761c59d2e7673a7e48c1c178f2cd', 'df', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '4da9d0be2cfe45885fb976b1e8d0eb2b', '4da9d0be2cfe45885fb976b1e8d0eb2b', '4da9d0be2cfe45885fb976b1e8d0eb2b', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '006b5e3c', '8a69e7c1', '5e792172', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(16, 15, 'user', 15, 0, 1439625817, '2b2e7c28', '77330f6667fa0a4a193400da030e86da', 'asd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '69cad211a6d63231f1d858c3507a5b02', '69cad211a6d63231f1d858c3507a5b02', '69cad211a6d63231f1d858c3507a5b02', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '1106d702', 'd591d103', '8c4f9c69', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(17, 15, 'user', 15, 0, 1439625897, '2c602905', '1c6fc9eb3aa0becd31bde1b7d176b1e2', '074tu sds d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'b7a72833b6686456d616d7a264fd5405', 'b7a72833b6686456d616d7a264fd5405', 'b7a72833b6686456d616d7a264fd5405', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '0a96382a', '12ae547b', 'a26a78e5', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(18, 15, 'user', 15, 0, 1439625946, '3b884be0', '345ed1ee05e09bbf81ed8c8446ce35d5', 'asd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '73261f72587afce4058fae2f5c437078', '73261f72587afce4058fae2f5c437078', '73261f72587afce4058fae2f5c437078', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '05c69a79', '06326e0a', 'a724c9b3', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(19, 15, 'user', 15, 0, 1439626014, 'a0956e37', 'cd8f850619ddb9f99ce83436ed3ca756', 'd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '1f844e7a5db299242feb545d1441d1fc', '1f844e7a5db299242feb545d1441d1fc', '1f844e7a5db299242feb545d1441d1fc', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e9aeaf14', '44d6ab78', '7ebf28ce', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(20, 15, 'user', 15, 0, 1439626116, '37e43e06', '8a5c118924e34c32beaac7c7557644eb', 'x', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '17e867331236be9e13e0e1c7692f65dd', '17e867331236be9e13e0e1c7692f65dd', '17e867331236be9e13e0e1c7692f65dd', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '2e83045c', '0696d008', '5fd364da', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(21, 15, 'user', 15, 0, 1439626268, '994b6a97', '3627443fda4c8f49533f827f97041719', 'sdsd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'f1110fbd80578efe142ede47e8860eca', 'f1110fbd80578efe142ede47e8860eca', 'f1110fbd80578efe142ede47e8860eca', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '72abef80', '9ba007c6', 'db684741', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(22, 15, 'user', 15, 0, 1439626391, 'cff6d6a4', 'f4db66b9808cb5b527697152d4011698', 'sd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '400a2a13592310ed9b09184c83527ab9', '400a2a13592310ed9b09184c83527ab9', '400a2a13592310ed9b09184c83527ab9', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'f5b701b4', '3e5750a2', 'c113e075', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(23, 15, 'user', 15, 0, 1439631891, '3849b2bd', '8d9bd446f79923ad93a9ddcc3dc45161', 'xs', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '11f9856f901f0e23c4d07da9f1e6f88f', '11f9856f901f0e23c4d07da9f1e6f88f', '11f9856f901f0e23c4d07da9f1e6f88f', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '56c2c9e5', 'b7d0a385', 'eb6b053c', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(24, 15, 'user', 15, 0, 1439632016, '45ab3f2f', 'f57417c4dec5b60f4563b36b60da0796', 'sd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'd67fdcaa6067dfc6e0fae4b3c9f3ef90', 'd67fdcaa6067dfc6e0fae4b3c9f3ef90', 'd67fdcaa6067dfc6e0fae4b3c9f3ef90', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '1ec7acd6', 'fe6984b2', '1c4f2e75', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(25, 15, 'user', 15, 0, 1439632429, '776ee0eb', '42139c272099ad1878d51a2be5f6e5af', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'd82ee69038dfbd607db809e79f1fddd8', 'd82ee69038dfbd607db809e79f1fddd8', 'd82ee69038dfbd607db809e79f1fddd8', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '087a0f66', 'e022fabe', 'be908e59', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(26, 15, 'user', 15, 0, 1439632654, 'aab029e6', '6b3d16fa8bf828fac081df633ae2c0cb', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '4b306680fbe6dbc2362568e2540ce83a', '4b306680fbe6dbc2362568e2540ce83a', '4b306680fbe6dbc2362568e2540ce83a', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '666a609c', 'f6a2567d', '295c81fe', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(27, 15, 'user', 15, 0, 1439633160, '52f5d271', 'a358aaa27e989adfc4a37efcc4ac1e17', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'a17e989527e39d575900193b83b48ffd', 'a17e989527e39d575900193b83b48ffd', 'a17e989527e39d575900193b83b48ffd', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '4b60c821', 'bbf0bbce', '7ffbaef8', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(28, 15, 'user', 15, 0, 1439633283, '47941c6a', 'ae0054ffa235674570385044bdcf9ee9', 'a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '0bc475eac1b6b0dd1f4ae8b435c65b77', '0bc475eac1b6b0dd1f4ae8b435c65b77', '0bc475eac1b6b0dd1f4ae8b435c65b77', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '597d74fc', '84a8ad9a', '705a3bdc', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(29, 15, 'user', 15, 0, 1439633375, '4cb357a2', '7524838ac97c30287d308a214b8b2c69', 'a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '3d5313bec3d95ce4520a082ac10988dd', '3d5313bec3d95ce4520a082ac10988dd', '3d5313bec3d95ce4520a082ac10988dd', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'ed271e09', 'fa73349c', 'a8dc32a1', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(30, 15, 'user', 15, 0, 1439634360, 'b02cb866', '2c0cd1dd3aeec9b2555749ea75252cf0', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '28570982d1bd9308865c6c0c1e23e96c', '28570982d1bd9308865c6c0c1e23e96c', '28570982d1bd9308865c6c0c1e23e96c', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e141ae0b0db60c4e3e3eba59f74a6f69', '907dfb6c', '609bbb05', '0cc1eae3', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(31, 15, 'user', 15, 0, 1439634513, '2e0237a9', '02d1ebc8e485bbe93d7ce757754e96ad', 'dfd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '261a795350dc6163ad14fa1debbe4ee4', '261a795350dc6163ad14fa1debbe4ee4', '261a795350dc6163ad14fa1debbe4ee4', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', 'cf1e5227ac2c3787ec0b60af511c1b84', 'd6317036', 'c4c4dce7', '654214a0', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(32, 15, 'user', 15, 0, 1439634655, '1e1f1aa4', '67192cab92040e9ab47c6b8876b6e29a', 'x', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'b4545c7c40f5ff76d62cad0b1977a25d', '0', '0', 'e141ae0b0db60c4e3e3eba59f74a6f69', '0', '0', '95c5d47a', '0', '0', 0, 0, '0', '0', 0, 0.000000, '0'),
(33, 15, 'user', 15, 0, 1439634837, '04e71d5f', '1e2837b8b11bd44c6b697a29e36b624c', 'x', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '469f259d0b95aad6b5e6107c04743b35', '469f259d0b95aad6b5e6107c04743b35', '469f259d0b95aad6b5e6107c04743b35', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', 'cf1e5227ac2c3787ec0b60af511c1b84', '5cfeb258', 'ece26e41', '13229ddb', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(34, 15, 'user', 15, 0, 1439634892, '07bfb893', 'c48af690cc9110b6772e27c508708917', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'e6623f073b51c00241de14156ccb0e8d', 'e6623f073b51c00241de14156ccb0e8d', 'e6623f073b51c00241de14156ccb0e8d', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', 'cf1e5227ac2c3787ec0b60af511c1b84', 'fa7b954a', '801c0a9d', '20925422', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(35, 15, 'user', 15, 0, 1439635029, '9cc0220d', 'f9f5d2d0162e16993449fd37e0911850', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '96c1122e9dd5dd9548c63104b937002d', '96c1122e9dd5dd9548c63104b937002d', '96c1122e9dd5dd9548c63104b937002d', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', 'cf1e5227ac2c3787ec0b60af511c1b84', 'c59a71fe', '386eb351', '9db2eb7c', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(36, 15, 'user', 15, 0, 1439635074, 'b4e3d3a2', 'c370c0a06b114418e4a3dace840013c1', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'ac39e0397086970bedaf94dc8a82b2f7', 'ac39e0397086970bedaf94dc8a82b2f7', 'ac39e0397086970bedaf94dc8a82b2f7', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', 'cf1e5227ac2c3787ec0b60af511c1b84', '2f72aa39', '98d7e583', '29007c1f', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(37, 15, 'user', 15, 0, 1439635288, '41695e6f', '3624a9998dc6f0e2b8dece3aaba0df90', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '0522080ee7cbae623190e2c7615a710b', '0522080ee7cbae623190e2c7615a710b', '0522080ee7cbae623190e2c7615a710b', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', 'cf1e5227ac2c3787ec0b60af511c1b84', '59234c89', '0a7ef41a', 'fe41d197', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(38, 15, 'user', 15, 0, 1439635369, '5c58537d', '8871d8d1588e1f0a245a7d38636c6653', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '374e1b015565f1799d7da42d2d67d510', '374e1b015565f1799d7da42d2d67d510', '374e1b015565f1799d7da42d2d67d510', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', '7f3d0ab076b9fbbead304640c8be22af', '9ae58c70', 'efb017a0', '7d300077', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(39, 15, 'user', 15, 0, 1439635456, '71cee468', 'ddcc7367f30f588f80c6e2904c619fc2', 'x', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '7b586e3327ca7f591fd297bf94604a7b', '7b586e3327ca7f591fd297bf94604a7b', '7b586e3327ca7f591fd297bf94604a7b', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'a1a8cfa9b875a13c436320e1957e6c85', '7f3d0ab076b9fbbead304640c8be22af', '64fa55a1', '57b57323', '64cb6f69', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(40, 15, 'user', 15, 0, 1439635580, 'f7055812', '9196066b16ba79b3d17da49874063b56', 't', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '57057c8213f381054aee943bd78d3d44', '57057c8213f381054aee943bd78d3d44', '57057c8213f381054aee943bd78d3d44', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '2a8e8b24', 'd1dd1cc6', '88418a3c', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(41, 15, 'user', 15, 0, 1439635635, 'f7f7f356', '3364d8279e164d7a2648ae5e34da77be', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'eed5d3f1df3bcb2f4ed254c26cb67eac', 'eed5d3f1df3bcb2f4ed254c26cb67eac', 'eed5d3f1df3bcb2f4ed254c26cb67eac', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '639774b2', '09e4d1be', '7f3e4002', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(42, 15, 'user', 15, 0, 1439675046, '1072638a', '2b8a0f1a8103286886530691aafba4ff', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '5c588498dee02d40a95b4c8af4e70be3', '5c588498dee02d40a95b4c8af4e70be3', '5c588498dee02d40a95b4c8af4e70be3', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '5fa845ff', '026bde86', '26b2e7ff', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, 'audio/mp3'),
(43, 15, 'user', 15, 0, 1439765368, '27233b10', '800031cfabbe70093d7cfc5025d1c0b2', 'as', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '6fe54a7456575e59de3a97cddb874fbc', '6fe54a7456575e59de3a97cddb874fbc', '6fe54a7456575e59de3a97cddb874fbc', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '5b92f4a2', '6c501637', '132d6379', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(44, 15, 'user', 15, 0, 1439766115, 'ffc88d9f', '8772ebf9f805f5b5bdb406557e97b19b', 'df', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, '3006cabfb9ac6ceb333f55633f865c0e', 'e17e7e16660319767cd7cccda70a8fd3', 'e17e7e16660319767cd7cccda70a8fd3', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '52d4be2b', 'f8f71a3d', 'a2b482b2', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0'),
(45, 15, 'user', 15, 0, 1439767123, '910f57ac', 'aac6a9ee5c2e5ece3ef4c00a595da02e', 'asd asf sdf ', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'b92609b1da1c839f914ccb4d5174bcd6', '05feb9ce6ac586a996353e6409893011', '9ca298b70b9102646a91281807eec710', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '28218dcf', '63b67b6e', '112960c7', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0');

-- --------------------------------------------------------

--
-- Table structure for table `music_replay`
--

CREATE TABLE IF NOT EXISTS `music_replay` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(5, 1433750606, 1, 'user', '15', 1434640107, 39),
(8, 1438842481, 2, 'user', '15', 1439554038, 108),
(9, 1439678013, 42, 'user', '15', 1440283819, 15);

-- --------------------------------------------------------

--
-- Table structure for table `music_reviewlater`
--

CREATE TABLE IF NOT EXISTS `music_reviewlater` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_views`
--

CREATE TABLE IF NOT EXISTS `music_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1433745205, 1, 'user', '15', '0'),
(2, 1434035297, 1, 'user', '15', '0'),
(3, 1438418376, 2, 'user', '15', '0'),
(4, 1438677323, 2, 'user', '15', '0'),
(5, 1438679891, 2, 'guy', '6808e60a', '0'),
(6, 1438842359, 2, 'user', '15', '0'),
(7, 1438949208, 2, 'user', '15', '0'),
(8, 1439675647, 42, 'user', '15', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pages_block`
--

CREATE TABLE IF NOT EXISTS `pages_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_follow`
--

CREATE TABLE IF NOT EXISTS `pages_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `code`, `language`, `value`) VALUES
(2, 'contentType_urlencoded.utf8', 'en', 'application/x-www-form-urlencoded; charset: utf-8'),
(3, 'status_comment_effect_show', 'en', '100'),
(4, 'status_comment_effect_duration', 'en', '500'),
(5, 'status_comment_effect_nextTime', 'en', '250'),
(6, 'status_comment_scrollbar_limit', 'en', '8'),
(7, 'contentType_html.utf8', 'en', 'text/html; charset: utf-8'),
(8, 'contentType_js.utf8', 'en', 'text/javascript; charset: utf-8'),
(9, 'contentType_css.utf8', 'en', 'text/css; charset: utf-8'),
(10, 'contentType_json.utf8', 'en', 'application/json; charset: utf-8'),
(11, 'call_function_timeout', 'en', '100'),
(12, 'setupTimestamp_timeout', 'en', '60000'),
(14, 'notifyPopup_count_limit', 'en', '5'),
(15, 'sleep_when_error', 'en', '1000'),
(16, 'sites_id_time_limit', 'en', '3600'),
(17, 'sites_info_time_limit', 'en', '3600'),
(18, 'sites_id_rate_v1', 'en', '1'),
(19, 'sites_id_rate_v2', 'en', '2000'),
(20, 'sites_id_rate_v3', 'en', '3000'),
(21, 'sites_id_rate_v4', 'en', '4000'),
(22, 'sites_id_rate_v5', 'en', '5000'),
(23, 'notifyPopup_info_places', 'en', '10000'),
(25, 'updateLoop_timeout', 'en', '60000'),
(27, 'user_private.tag_agree', 'en', '1'),
(28, 'user_private.tag_refuse', 'en', '0'),
(29, 'user_private.search_agree', 'en', '1'),
(30, 'user_private.search_refuse', 'en', '0'),
(31, 'AutoComplete_type', 'en', 'autocomplete'),
(32, 'photos_allow_format', 'en', 'a:4:{i:0;s:3:"jpg";i:1;s:3:"gif";i:2;s:3:"png";i:3;s:4:"jpeg";}'),
(33, 'photos_allow_size', 'en', '3145728'),
(34, 'photos_folder_min', 'en', '1'),
(35, 'photos_folder_max', 'en', '9'),
(36, 'photos_folder_path', 'en', 'storage/photos/drive'),
(37, 'photos_size_large_w', 'en', '1440'),
(38, 'photos_size_medium_w', 'en', '720'),
(39, 'photos_size_small_w', 'en', '360'),
(40, 'photos_cache_forder', 'en', 'storage/cache/photos'),
(41, 'photos_cache_time', 'en', '1800'),
(42, 'photos_name_pack_large', 'en', '_l'),
(43, 'photos_name_pack_medium', 'en', '_m'),
(44, 'photos_name_pack_small', 'en', '_s'),
(45, 'PhotosEditorPopup_footer_text', 'en', 'Â© Giccos'),
(46, 'path_image_static_default', 'en', 'storage/image/static/default'),
(47, 'pathVirtual_cache_photos', 'en', 'photos/cache'),
(48, 'media_cache_time_push', 'en', '180'),
(49, 'media_cache_time_close', 'en', '1800'),
(51, 'media_cache_time_push_ms', 'en', '180000'),
(52, 'user_private.search_default', 'en', '1'),
(53, 'user_private.tag_default', 'en', '3'),
(54, 'user_guide.default', 'en', '0'),
(55, 'user_theme.default', 'en', '1'),
(58, 'contentType_xml.utf8', 'en', 'application/xml; charset=utf-8'),
(60, 'path_video_static_default', 'en', 'storage/video/static/default'),
(61, 'videos_cache_time', 'en', '1800'),
(62, 'videos_cache_forder', 'en', 'storage/cache/videos'),
(63, 'videos_folder_path', 'en', 'storage/videos/drive'),
(64, 'videos_folder_min', 'en', '1'),
(65, 'videos_folder_max', 'en', '9'),
(66, 'pathVirtual_cache_videos', 'en', 'videos/cache'),
(78, 'music_folder_min', 'en', '1'),
(79, 'music_folder_max', 'en', '9'),
(80, 'pathVirtual_cache_music', 'en', 'music/cache'),
(81, 'music_folder_path', 'en', 'storage/music/drive'),
(82, 'music_cache_forder', 'en', 'storage/cache/music'),
(83, 'music_cache_time', 'en', '1800'),
(84, 'path_audio_static_default', 'en', 'storage/audio/static/default'),
(86, 'videos_allow_format', 'en', 'a:6:{i:0;s:3:"mp4";i:1;s:3:"avi";i:2;s:3:"3gp";i:3;s:3:"flv";i:4;s:3:"mov";i:5;s:3:"mov";}'),
(87, 'videos_allow_size', 'en', '52428800'),
(88, 'music_allow_format', 'en', 'a:1:{i:0;s:3:"mp3";}'),
(89, 'music_allow_size', 'en', '10485760'),
(92, 'maps_statismap_zoom', 'en', '15'),
(93, 'maps_statismap_size', 'en', '480x480'),
(94, 'maps_statismap_type', 'en', 'roadmap'),
(95, 'maps_statismap_markers', 'en', 'color:red'),
(96, 'photos_size_original_w', 'en', '0'),
(97, 'exif_read_data_allow', 'en', 'a:2:{i:0;s:3:"jpg";i:1;s:4:"jpeg";}'),
(98, 'regex_hashtag', 'en', '/((^|\\s)#([a-zA-Z0-9\\_]+)($|\\s))/'),
(99, 'regex_usertag', 'en', '/((^|\\s)@([a-zA-Z0-9\\_]+)($|\\s))/'),
(100, 'cited_inputAuthor_length', 'en', '40'),
(101, 'cited_inputQuote_length', 'en', '255'),
(102, 'cited_photosID_default', 'en', '0'),
(103, 'cited_photosSize_length', 'en', '500'),
(104, 'status_effect_show', 'en', '100'),
(105, 'status_effect_duration', 'en', '500'),
(106, 'status_effect_nextTime', 'en', '250'),
(107, 'feed_update_call', 'en', '10000'),
(108, 'feed_update_timeout', 'en', '10000'),
(109, 'hash_feed_status_content', 'en', 'g::key::feed->status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', 'Asia/Saigon'),
(113, 'user_language.default', 'en', 'en'),
(114, 'user_private.status_default', 'en', '3'),
(115, 'hash_photos_static', 'en', 'g::key::photos->static'),
(116, 'hash_photos_other', 'en', 'g::key::photos->other'),
(117, 'user_private.info_default', 'en', '4'),
(118, 'notifyPopup_timeout', 'en', '5000'),
(119, 'key_api_google_1', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(120, 'key_api_google_2', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(121, 'key_api_google_3', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(122, 'key_api_google_4', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(123, 'key_api_google_5', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(124, 'key_api_google_6', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(125, 'key_api_google_7', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(126, 'key_api_google_8', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(127, 'key_api_google_9', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(128, 'key_api_google_10', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(129, 'hash_sites_direct', 'en', 'g::key::sites->direct'),
(130, 'regex_domain', 'en', 'localhost\\/giccos'),
(131, 'status_effect_id', 'en', '2'),
(132, 'status_effect_type', 'en', 'fade'),
(133, 'http_secure', 'en', 'false'),
(134, 'status_timeout_newcheck', 'en', '60000'),
(135, 'contentType_swf.utf8', 'en', 'application/x-shockwave-flash; charset: utf-8'),
(136, 'videos_thumbnail_path', 'en', 'storage/videos/thumbnail'),
(137, 'mediaPlayer_rememberTime', 'en', '5000'),
(138, 'accounts_action_time_delay', 'en', '5'),
(139, 'accounts_action_time_allow', 'en', '3'),
(140, 'http_cache_expire', 'en', '86400'),
(141, 'http_cache_expire_quick', 'en', '3600'),
(142, 'http_cache_expire_static', 'en', '129600'),
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/user-avatar-large.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/user-avatar-medium.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/user-avatar-small.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/user-cover-large.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/user-cover-medium.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/user-cover-small.jpg'),
(149, 'suggest_weather_reopen', 'en', '1800'),
(150, 'suggest_weather_reload', 'en', '3600'),
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_year_min', 'en', '1900'),
(156, 'select_time_year_max', 'en', '2015'),
(157, 'select_time_month_min', 'en', '1'),
(158, 'select_time_month_max', 'en', '12'),
(159, 'select_time_day_min', 'en', '1'),
(160, 'select_time_day_max', 'en', '30'),
(161, 'select_time_hour_min', 'en', '0'),
(162, 'select_time_hour_max', 'en', '23'),
(163, 'select_time_minute_min', 'en', '0'),
(164, 'select_time_minute_max', 'en', '59'),
(165, 'select_time_second_min', 'en', '0'),
(166, 'select_time_second_max', 'en', '59'),
(167, 'key_api_virustotal_1', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(168, 'key_api_virustotal_2', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(169, 'key_api_virustotal_3', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(170, 'key_api_virustotal_4', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(171, 'key_api_virustotal_5', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(172, 'key_api_virustotal_6', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(173, 'key_api_virustotal_7', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(174, 'key_api_virustotal_8', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(175, 'key_api_virustotal_9', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(176, 'key_api_virustotal_10', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(177, 'media_view_time_limit', 'en', '86400'),
(178, 'user_private.photos_default', 'en', '4'),
(179, 'user_private.music_default', 'en', '4'),
(180, 'user_private.videos_default', 'en', '4'),
(181, 'explorer_length_randKeyEvent', 'en', '32'),
(182, 'private.public', 'en', '4'),
(183, 'media_settings.replay_default', 'en', '1'),
(184, 'media_settings.replay_allow', 'en', '1'),
(185, 'cookie.host.path', 'en', '/giccos'),
(186, 'storage_folder_path', 'en', 'storage'),
(187, 'storage_folder_min', 'en', '1'),
(188, 'storage_folder_max', 'en', '1'),
(189, 'storage_folder_name', 'en', 'drive'),
(190, 'cacheClean_user_limit_min', 'en', '100'),
(191, 'cacheClean_user_limit_max', 'en', '1000'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'faces'),
(197, 'rekognition_url', 'en', 'http://rekognition.com/func/api/'),
(198, 'rekognition_rate_allow', 'en', '0.25'),
(199, 'rekognition_tagupload', 'en', 'untagged'),
(200, 'rekognition_tagdefault', 'en', '_x_all'),
(201, 'image_faces_thumbnail', 'en', '150'),
(202, 'hash_feed_comment_content', 'en', 'g::key::feed->comment->content'),
(203, 'boxSuggest_length_randKeyEvent', 'en', '32'),
(204, 'ajax_length_randKeyEvent', 'en', '10'),
(205, 'notifyPopup_length_randKeyEvent', 'en', '32'),
(206, 'ajax_request_limit_checktime', 'en', '15'),
(207, 'photos_compression_size_percent', 'en', '75'),
(208, 'photos_compression_quality_percent', 'en', '85'),
(209, 'regex_name', 'en', '/^([a-zA-Z_Ã€ÃÃ‚ÃƒÃˆÃ‰ÃŠÃŒÃÃ’Ã“Ã”Ã•Ã™ÃšÄ‚ÄÄ¨Å¨Æ Ã Ã¡Ã¢Ã£Ã¨Ã©ÃªÃ¬Ã­Ã²Ã³Ã´ÃµÃ¹ÃºÄƒÄ‘Ä©Å©Æ¡Æ¯Ä‚áº áº¢áº¤áº¦áº¨áºªáº¬áº®áº°áº²áº´áº¶áº¸áººáº¼á»€á»€á»‚Æ°Äƒáº¡áº£áº¥áº§áº©áº«áº­áº¯áº±áº³áºµáº·áº¹áº»áº½á»á»á»ƒá»„á»†á»ˆá»Šá»Œá»Žá»á»’á»”á»–á»˜á»šá»œá»žá» á»¢á»¤á»¦á»¨á»ªá»…á»‡á»‰á»‹á»á»á»‘á»“á»•á»—á»™á»›á»á»Ÿá»¡á»£á»¥á»§á»©á»«á»¬á»®á»°á»²á»´Ãá»¶á»¸á»­á»¯á»±á»³á»µá»·á»¹]{2,30})$/'),
(210, 'regex_password', 'en', '/^(\\S{8,}$)/'),
(211, 'regex_email', 'en', '/(([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,6}))$/'),
(212, 'regex_username', 'en', '/^([a-zA-Z]{1})([a-zA-Z0-9\\.\\_]{5,30})$/'),
(213, 'regex_date_days', 'en', '/^([a-zA-Z0-9]{2})$/'),
(214, 'regex_date_months', 'en', '/^([a-zA-Z0-9]{2})$/'),
(215, 'regex_date_years', 'en', '/^([a-zA-Z0-9]{4})$/'),
(216, 'regex_gender', 'en', '/^(male|female)$/'),
(217, 'regex_phone', 'en', '/^([0-9]{9,15})$/'),
(218, 'storage_cache_folder_path', 'en', 'storage/cache'),
(219, 'hash_cache_image_path', 'en', 'g::key::cache->image->path'),
(220, 'hash_storage_path', 'en', 'g::key::storage->path'),
(221, 'user_messages.translate_default', 'en', '1'),
(222, 'user_language.code_list', 'en', 'a:2:{i:0;s:2:"en";i:1;s:2:"vi";}'),
(223, 'hash_messages_content', 'en', 'g::key::messages->content'),
(224, 'messages_update_timeout', 'en', '3000'),
(225, 'messagesPopup_length_randKeyEvent', 'en', '10'),
(226, 'regex_messages', 'en', '/([\\S]+)/'),
(227, 'messages_typing_timeout', 'en', '3000'),
(228, 'messages_views_timeout', 'en', '3000'),
(229, 'regex_sites_url', 'en', '/^((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(230, 'sites_info_time_update', 'en', '86400'),
(231, 'feeds_nearby_scanning_distance', 'en', '10'),
(232, 'user_mode.safe_default', 'en', '0'),
(233, 'users_getpassword_timeout', 'en', '3600'),
(234, 'regex_sites_giccos_direct', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/(sites\\/direct)\\/([\\S]+)?)/'),
(235, 'hash_cache_readfile', 'en', 'g::key::cache->readfile'),
(236, 'regex_sites_giccos_host', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/([\\S]+)?)/'),
(237, 'messages_postion_timeout', 'en', '300'),
(238, 'hash_storage_static', 'en', 'g::key::storage->static'),
(239, 'users_online_timeout', 'en', '300'),
(240, 'regex_sites_url_fstring', 'en', '/((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(241, 'hash_user_info', 'en', 'g::key::user->infomation'),
(242, 'regex_sites_giccos_domain', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/?)/'),
(243, 'regex_language_code', 'en', '/([a-zA-Z]{4})/'),
(244, 'regex_word', 'en', '/([a-zA-Z]+)/'),
(245, 'key_api_wordnik_1', 'en', 'a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'),
(246, 'hash_library_words_subinfo', 'en', 'g::key::library->words->subinfo'),
(247, 'hash_library_voice_content', 'en', 'g::key::library->voice->content'),
(248, 'feeds_action_timeout', 'en', '86400'),
(249, 'hash_photos_qr', 'en', 'g::key::photos->qr'),
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check'),
(251, 'sites_views_timeout', 'en', '86400');

-- --------------------------------------------------------

--
-- Table structure for table `photos_block`
--

CREATE TABLE IF NOT EXISTS `photos_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache`
--

CREATE TABLE IF NOT EXISTS `photos_cache` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `path` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_cache`
--

INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) VALUES
(28, 0, '', 0, 1439514128, 1439515927, '6808e60a', '97f0e9cd', '565a13c061', '951222db', '55c3d19c516439a80fefae43ae9eae07_1394791137.jpg', '0', 'image/jpeg', 13998, 'ba9200c2'),
(35, 15, 'user', 15, 1439532987, 1439583052, '1064bb3d', 'd2e15f7f', '9579069b77', 'b1ce0267', '11811548_491867670982726_8282725952899674799_n.jpg', '0', 'image/jpeg', 74013, '4302afba'),
(36, 15, 'user', 15, 1439533138, 1439583052, '1064bb3d', '24e283b7', '3375bbd2', '72e7b37b', '11828577_491867680982725_2523986418083243593_n.jpg', '0', 'image/jpeg', 48117, '46af04df'),
(41, 15, 'user', 15, 1439582031, 1439583052, '1064bb3d', '87225906', '2e55b3e6', 'a1b52df7', '10430434_842543645811005_4466131605703992802_n.jpg', '0', 'image/jpeg', 60554, 'ef48adce'),
(42, 15, 'user', 15, 1439582031, 1439583052, '1064bb3d', '1556ecd2', '49ecf9d1', '81ef5ecf', '10981643_826035000795203_4219954743583764927_n.jpg', '0', 'image/jpeg', 56312, '8fb1132e'),
(43, 15, 'user', 15, 1439582031, 1439583052, '1064bb3d', '35ce38e4', 'c82bfb4d', '0b3ed4ff', '10520650_777361342329236_7367315193035354466_n.jpg', '0', 'image/jpeg', 68927, 'cb49b222'),
(44, 15, 'user', 15, 1439582031, 1439583052, '1064bb3d', 'cbe51298', 'c91aad01', '4d430db8', '1618584_774535172611853_8737730087718874691_n.jpg', '0', 'image/jpeg', 69464, '55e1449c'),
(45, 15, 'user', 15, 1439591120, 1439592920, '1064bb3d', '97f0e9cd', '882f8251', '065924c9', '55c3d19c516439a80fefae43ae9eae07_1394791137.jpg', '0', 'image/jpeg', 13998, 'c4d43da2'),
(46, 15, 'user', 15, 1439591120, 1439592920, '1064bb3d', 'cbe51298', 'c91aad01', 'e4a725a4', '1618584_774535172611853_8737730087718874691_n.jpg', '0', 'image/jpeg', 69464, 'd28906a7'),
(47, 15, 'user', 15, 1439591120, 1439592920, '1064bb3d', '87225906', '2e55b3e6', '0eb4ea63', '10430434_842543645811005_4466131605703992802_n.jpg', '0', 'image/jpeg', 60554, '16dc773e'),
(48, 15, 'user', 15, 1439623175, 1439624975, '1064bb3d', 'df5ffa63', '5679df43', 'eb649f64', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', '0', 'image/jpeg', 31259, 'a37cc173'),
(49, 15, 'user', 15, 1439623175, 1439624975, '1064bb3d', '2d85eb35', '4b612e0c', '5fa501be', 'EZYwYm5NdZIwlXo48tMBufykgNFiWK-L-tezFAefrD8ItftcxST5fAVX74hTuIg2FF3IZvz4rey8Syy_YhbeDSnLnFfE-PDaz75Du9uN-uaLa06klEy6B44d3BYip4h9.jpg', '0', 'image/jpeg', 134150, 'c93ae656'),
(51, 15, 'user', 15, 1440765105, 1440766905, '1064bb3d', '4bd7f14c', 'b6a5466b', '8fd906e8', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', '0', 'image/jpeg', 50141, '6b973958');

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos.path` varchar(40) NOT NULL,
  `photos.local` varchar(20) NOT NULL,
  `faces` char(10) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_faces`
--

INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos.path`, `photos.local`, `faces`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(2, '33918bbc', '02dfc9515df5e4c349c16436c8e258a4', 15, 'user', 15, 'df5ffa63', 'cache', 'b8488cd2', NULL, NULL, '100.77', '76.92', '50', '50', '7.54', '12.8'),
(4, 'a98282ea', '8b719e43095c0b0d14e548538bd1f660', 15, 'user', 15, '6e23c5f4', 'cache', 'cec9c0fd', NULL, NULL, '40.77', '400', '106.15', '106.15', '3.3914', '6.0292'),
(5, '8dabfec3', 'dede499746993ba3b57364cfb5c79367', 15, 'user', 15, '4bd7f14c', 'cache', 'e958546f', NULL, NULL, '60', '397.69', '69.23', '69.23', '5.2000', '9.5334'),
(6, '209563c3', 'b1c4324eb7d9a7b83d4b08944d6a7a12', 15, 'user', 15, '3f0ba570', 'cache', '7f32f4c8', NULL, NULL, '39.23', '68.46', '78.46', '78.46', '5.7481', '7.6599'),
(7, '6bca3850', '61f2d7290c2f9e928b092037c1a2a992', 15, 'user', 15, '3f0ba570', 'cache', 'a603011a', NULL, NULL, '41.54', '141.54', '70.77', '70.77', '6.3727', '8.4922'),
(8, '52b2e557', '9ec4b1bb0029e5b372b016ec71f7c0e7', 15, 'user', 15, '3f0ba570', 'cache', '0aafaf98', NULL, NULL, '80', '340', '86.15', '86.15', '5.2350', '6.9762'),
(9, '88005bfb', '5c72ed7ec82b3a6d84d2dd280b1cc850', 15, 'user', 15, '3f0ba570', 'cache', '48a0e42c', NULL, NULL, '90', '459.23', '100', '100', '4.51', '6.01'),
(10, 'edcc8ad0', 'd18c524a6c8a4797ed81e1e75348ddd0', 15, 'user', 15, '43c16f14', 'cache', 'd97d956a', NULL, NULL, '63.2', '60.8', '292', '292', '2.4657', '1.8493'),
(11, '38d18129', '89814bc6bb9c0b0e61ac7d2d2738e7c5', 15, 'user', 15, '43c16f14', 'cache', '0dd091a1', NULL, NULL, '140.8', '324.8', '211.2', '211.2', '3.4090', '2.5568'),
(12, 'c230eeef', '63cf5ed2d3a952430e3539f663da2408', 15, 'user', 15, '0dc0750a', 'cache', 'ad1bb058', NULL, NULL, '90.4', '216', '268.8', '268.8', '2.6785', '2.0089'),
(13, '94e816b1', '368d7b417f2910fdc259aa01da8f27bc', 15, 'user', 15, 'd2e15f7f', 'cache', '3cf8ac12', NULL, NULL, '106.4', '84', '317.6', '317.6', '2.2670', '2.2670'),
(14, 'd7bf36a6', 'f7e5e0e0dd5b6f62da02bef1a9b15d11', 15, 'user', 15, '24e283b7', 'cache', '9f87e051', NULL, NULL, '83.2', '219.2', '294.4', '294.4', '2.4456', '1.8342'),
(15, '16ab6c95', '4ac5b09216b0322977d10d737390044b', 15, 'user', 15, '0dc0750a', 'cache', 'a4919428', NULL, NULL, '49.6', '2.4', '246.4', '246.4', '2.9220', '2.1915'),
(16, '7c480b91', 'e0aabb7878494043c6cb53985b6a3892', 15, 'user', 15, '24e283b7', 'cache', 'e1dabd3c', NULL, NULL, '274.4', '9.6', '297.6', '297.6', '2.4193', '1.8145'),
(17, 'b5b5ed48', '752cfd79dc5a10c2e9d0a0fb90641797', 15, 'user', 15, 'd2e15f7f', 'cache', '4c710bc2', NULL, NULL, '42.4', '369.6', '314.4', '314.4', '2.2900', '2.2900'),
(18, '0d11a87e', 'c0eac57f1e9df3deab536a65b6225504', 15, 'user', 15, '1556ecd2', 'cache', 'f4538379', NULL, NULL, '156.8', '168.8', '263.2', '263.2', '2.7355', '1.9946'),
(19, '5d800b07', '6447bb3716721ebfda99b55b5c2a4272', 15, 'user', 15, '87225906', 'cache', 'ed205dca', NULL, NULL, '68.8', '259.2', '311.2', '311.2', '2.3136', '2.3136'),
(20, '68ba265b', '71e4ea84c094d7d563a17a1ec1f3fc92', 15, 'user', 15, '35ce38e4', 'cache', '2131af84', NULL, NULL, '49.6', '91.2', '143.2', '143.2', '5.0279', '5.0279'),
(21, '1ac2774e', 'a0854cab71d4574435bcb8494fd5b1ce', 15, 'user', 15, 'cbe51298', 'cache', '4cf90399', NULL, NULL, '234.67', '602.67', '156.8', '156.8', '4.0816', '6.1224'),
(22, '464aaaa5', '10f274f58755931dbec318718a0f929f', 15, 'user', 15, 'd16e900f', 'cache', '163fd22b', NULL, NULL, '101.6', '268', '310.4', '310.4', '2.3195', '2.3195'),
(23, 'fd7b9d83', '4b966cdde9fc9750f5c28e76a2887512', 15, 'user', 15, '35ce38e4', 'cache', '4dd23c5e', NULL, NULL, '178.4', '293.6', '360.8', '360.8', '1.9955', '1.9955'),
(24, '21890704', '1854a3ea9914d2dde0390af920aeb203', 15, 'user', 15, 'cbe51298', 'cache', '21f9dec5', 'user', 16, '140.8', '366.93', '180.27', '180.27', '3.5502', '5.3253'),
(25, '7962fa4f', 'ed8a58cf461efb59a5b5770341054882', 15, 'user', 15, 'a1a612f1', 'cache', '36665857', NULL, NULL, '285.38', '548.46', '64.62', '64.62', '5.5710', '10.213'),
(26, '75bf0321', '0e7c6e9ac1c32cf4e0ee79509742938d', 15, 'user', 15, 'a1a612f1', 'cache', 'adb8ec05', NULL, NULL, '92.31', '301.54', '69.23', '69.23', '5.2000', '9.5334'),
(27, 'ace93e81', '1fc2b5d7b71142e706ff88526bab4d24', 15, 'user', 15, 'a1a612f1', 'cache', 'd0a494ce', NULL, NULL, '75.38', '493.85', '70', '70', '5.1428', '9.4285'),
(28, 'a84c26bb', 'ac9564026921e588efcb07a1d235e7a1', 15, 'user', 15, 'a1a612f1', 'cache', 'e0987e20', NULL, NULL, '48.46', '34.62', '70.77', '70.77', '5.0869', '9.3259'),
(29, '6b3df827', '9f2029021c790aa76fa3d94402e565ca', 15, 'user', 15, 'a1a612f1', 'cache', '9e65e82a', NULL, NULL, '0.77', '130', '57.69', '57.69', '6.2402', '11.440'),
(30, '91c2fa71', 'a39e7bea5811f78be2caea4bdeaf5eb5', 15, 'user', 15, 'a1a612f1', 'cache', '100ad50b', NULL, NULL, '0', '190.77', '66.92', '66.92', '5.3795', '9.8625'),
(31, '9d1404ba', '250ffa919b5652916b652bc17db249cb', 15, 'user', 15, 'a1a612f1', 'cache', '9302e772', NULL, NULL, '278.46', '338.46', '84.62', '84.62', '4.2543', '7.7995'),
(32, '5598d6fa', '97cf7cb3b224812ec435ceb51498beae', 15, 'user', 15, '3d695006', 'cache', '02d2c8dd', NULL, NULL, '167.72', '127.67', '134.35', '134.35', '5.5898', '3.7216'),
(33, '184979d6', '4e4aa76bd9962ee6296230ddedbec4a6', 15, 'user', 15, '8eb9227d', 'cache', 'cea8e2ca', NULL, NULL, '56.92', '101.54', '83.08', '83.08', '3.7313', '3.7313'),
(34, 'f7b514ab', '4a4e65ca0e1c0333921c1b528b5f5499', 15, 'user', 15, 'b96ebb13', 'cache', '549b8140', NULL, NULL, '135.38', '88.46', '203.08', '203.08', '2.4620', '2.4620'),
(35, '53a30104', '75472ca01ad784d6c1f0b87c652cb078', 15, 'user', 15, '560a0cb4', 'cache', '0cebd470', NULL, NULL, '32.31', '213.08', '79.23', '79.23', '4.2029', '6.3107'),
(36, '3aec37b4', 'b56f343832a97e4809d8b59ff20ae080', 15, 'user', 15, '97f0e9cd', 'cache', 'b488171b', NULL, NULL, '23.85', '-14.62', '123.08', '123.08', '1.9499', '1.9499'),
(37, 'd7bf36a6', 'f7e5e0e0dd5b6f62da02bef1a9b15d11', 15, 'user', 15, '3375bbd2', 'cache', '9f87e051', NULL, NULL, '83.2', '219.2', '294.4', '294.4', '2.4456', '1.8342'),
(38, '7c480b91', 'e0aabb7878494043c6cb53985b6a3892', 15, 'user', 15, '3375bbd2', 'cache', 'e1dabd3c', NULL, NULL, '274.4', '9.6', '297.6', '297.6', '2.4193', '1.8145'),
(39, '0d11a87e', 'c0eac57f1e9df3deab536a65b6225504', 15, 'user', 15, '49ecf9d1', 'cache', 'f4538379', NULL, NULL, '156.8', '168.8', '263.2', '263.2', '2.7355', '1.9946'),
(40, '68ba265b', '71e4ea84c094d7d563a17a1ec1f3fc92', 15, 'user', 15, 'c82bfb4d', 'cache', '2131af84', NULL, NULL, '49.6', '91.2', '143.2', '143.2', '5.0279', '5.0279'),
(41, '5d800b07', '6447bb3716721ebfda99b55b5c2a4272', 15, 'user', 15, '2e55b3e6', 'cache', 'ed205dca', NULL, NULL, '68.8', '259.2', '311.2', '311.2', '2.3136', '2.3136'),
(42, '1ac2774e', 'a0854cab71d4574435bcb8494fd5b1ce', 15, 'user', 15, 'c91aad01', 'cache', '4cf90399', NULL, NULL, '234.67', '602.67', '156.8', '156.8', '4.0816', '6.1224'),
(43, 'fd7b9d83', '4b966cdde9fc9750f5c28e76a2887512', 15, 'user', 15, 'c82bfb4d', 'cache', '4dd23c5e', NULL, NULL, '178.4', '293.6', '360.8', '360.8', '1.9955', '1.9955'),
(44, '21890704', '1854a3ea9914d2dde0390af920aeb203', 15, 'user', 15, 'c91aad01', 'cache', '21f9dec5', NULL, NULL, '140.8', '366.93', '180.27', '180.27', '3.5502', '5.3253'),
(45, '3aec37b4', 'b56f343832a97e4809d8b59ff20ae080', 15, 'user', 15, '882f8251', 'cache', 'b488171b', NULL, NULL, '23.85', '-14.62', '123.08', '123.08', '1.9499', '1.9499'),
(46, '33918bbc', '02dfc9515df5e4c349c16436c8e258a4', 15, 'user', 15, '5679df43', 'cache', 'b8488cd2', NULL, NULL, '100.77', '76.92', '50', '50', '7.54', '12.8'),
(47, 'a98282ea', '8b719e43095c0b0d14e548538bd1f660', 15, 'user', 15, '089a6f18', 'cache', 'cec9c0fd', NULL, NULL, '40.77', '400', '106.15', '106.15', '3.3914', '6.0292'),
(50, '8dabfec3', 'dede499746993ba3b57364cfb5c79367', 15, 'user', 15, 'b6a5466b', 'cache', 'e958546f', NULL, NULL, '60', '397.69', '69.23', '69.23', '5.2000', '9.5334'),
(51, '8dabfec3', 'dede499746993ba3b57364cfb5c79367', 15, 'user', 15, 'b6a5466b', 'cache', 'e958546f', NULL, NULL, '60', '397.69', '69.23', '69.23', '5.2000', '9.5334');

-- --------------------------------------------------------

--
-- Table structure for table `photos_info`
--

CREATE TABLE IF NOT EXISTS `photos_info` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `scrapbook` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `attachments` int(1) NOT NULL,
  `public` int(1) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.original` varchar(50) NOT NULL,
  `file.large` varchar(50) NOT NULL,
  `file.medium` varchar(50) NOT NULL,
  `file.small` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.large` varchar(40) NOT NULL,
  `secret.medium` varchar(40) NOT NULL,
  `secret.small` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.large` text NOT NULL,
  `path.medium` text NOT NULL,
  `path.small` text NOT NULL,
  `size.height` int(11) NOT NULL,
  `size.width` int(11) NOT NULL,
  `aperture.f` char(10) DEFAULT NULL,
  `aperture.max_value` char(10) DEFAULT NULL,
  `b.o.m` int(1) DEFAULT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `file.type` int(1) NOT NULL,
  `file.source` varchar(50) DEFAULT NULL,
  `flash` int(11) DEFAULT NULL,
  `focal.length` varchar(20) DEFAULT NULL,
  `iso` int(5) DEFAULT NULL,
  `make` varchar(30) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `metering.mode` int(1) DEFAULT NULL,
  `mime_type` varchar(30) NOT NULL,
  `software` varchar(50) DEFAULT NULL,
  `ccd.width` char(10) DEFAULT NULL,
  `exposure.time` char(10) DEFAULT NULL,
  `exposure.mode` int(1) DEFAULT NULL,
  `exposure.bias_value` char(10) DEFAULT NULL,
  `f_number` char(10) DEFAULT NULL,
  `sensing.method` int(1) DEFAULT NULL,
  `shutter.speed` char(10) DEFAULT NULL,
  `digital_zoom.ratio` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 15, 'user', 15, 0, 1433753226, 'bad63031', '550b43c6719b29034d11284365df366f', 'c53196af.jpg', 'IMG_3270.JPG', '', '', 0, 1, 4, 4, 4, '16994d4d897b0913f24e4d298bfc3413.jpg', '0c015bc3125b2e37002d62fc8d056e87.jpg', '4f27f528eb066716ebd2ee74123556c5.jpg', 'd6cf363d62d042798059f52b11671b84.jpg', '4972ebf829ed31f4661478754d02ccbf', '11fbe610ab0b81590b773ddbfef908a1', '148e4531979c96c57c5d9c8e8763e759', '21f1559c387fab9e433746f9af35deab', '9b8c6d73', '72d39a0c', '35b63e0f', '202615eb', 1042, 1936, 'f/11.0', '3625/1000', 0, 1433753221, 389897, 2, '0', 16, '35/1', 100, 'Canon', 'Canon EOS DIGITAL REBEL XTi', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/320', 1, '0/3', '11/1', 0, '8321928/10', '0'),
(2, 15, 'user', 15, 0, 1439329785, 'b9ed7fc5', 'd59d4df0a34c551c5473eae22827f659', '57e474b6.jpg', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', '', '', 0, 1, 4, 4, 4, '963b873390979e6ab96cc6a54ce6e16b.jpg', '0', '0', '2732be18738baee3c8b5e3f7fff26f6a.jpg', '50bb2759572d27509815888aa061531e', '0', '0', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', 'a7eb8cfb', '0', '0', '09decbcc', 377, 640, '0', '0', 0, 1439329747, 28052, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 15, 'user', 15, 0, 1439329786, 'cad6bcf5', 'b541d9cbd71a3f52323d5fa354c64ec4', 'e8fb107a.jpg', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', '', '', 0, 1, 4, 4, 4, '093f26ba3497ff7b6a17369ca90d23a4.jpg', '0', '0', 'b1e4dc0d07df283626ef62f6f74f5a9d.jpg', '5336515b8af080b6af38491deb654f0e', '0', '0', '411b2326e22365821ee34a6b4d93877d', '1ffde4e8', '0', '0', '0963055d', 360, 640, '0', '0', 0, 1439329773, 31099, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 15, 'user', 15, 0, 1439335039, 'f48dd700', '35156b278c05069631b5d198f423bda1', '426e4f64', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', '', '', 0, 1, 4, 4, 4, '0864eefc3df3b2f8ca383192709e7c90', '0', '0', '29c81908bd7c363bae3ded398db3b569', '5336515b8af080b6af38491deb654f0e', '0', '0', '411b2326e22365821ee34a6b4d93877d', '63c123ff', '0', '0', 'bab87783', 360, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(5, 15, 'user', 15, 0, 1439671701, '5c1a1584', '3dc0f26f05d773b0886705d6ff1a0d29', '01d5abea', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', '', '', 0, 1, 4, 4, 4, '84fb61bd71f0c503544d5de2af7deb20', '0', '0', '89cc0a26d17a516b47cda1c2c497e9f5', '29721fe43799438d58987ca4a097478b', '0', '0', 'c73eaa3ac15e0ebf65aa01b3c9b4d83d', '1fb6cc14', '0', '0', '5f33974b', 360, 660, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(6, 15, 'user', 15, 0, 1439671908, '01a617cf', '5a17f2c403d464c69aebf171c853b778', '2933c2e7', 'EZYwYm5NdZIwlXo48tMBufykgNFiWK-L-tezFAefrD8ItftcxST5fAVX74hTuIg2FF3IZvz4rey8Syy_YhbeDSnLnFfE-PDaz75Du9uN-uaLa06klEy6B44d3BYip4h9.jpg', '', '', 0, 1, 4, 4, 4, 'e7d8d180f0f40d67c4c0c2d0419d81c9', '0', '0', '5ef58d8b37c8faf01b184737f7b83647', '6f60da5501024c1bd5ba77b7b8ee1e81', '0', '0', '38d92f2e7f8c0113cb035cffeffad7bd', 'e1c51563', '0', '0', 'ec33e6c8', 333, 500, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(7, 15, 'user', 15, 0, 1439672192, '2b9a4dfa', '9a5b584f3863773752d844b99acf2584', '48cb5fc5', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', '', '', 0, 1, 4, 4, 4, '343da41ac62843f28c19359b03be4ad0', '0', '0', 'f0c42d50c93753d68ed565779021aed6', '5336515b8af080b6af38491deb654f0e', '0', '0', '411b2326e22365821ee34a6b4d93877d', 'b71228be', '0', '0', '938774a1', 360, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(8, 15, 'user', 15, 0, 1439672268, 'c4182215', '3adb2bf525e948028358a638c1b30558', 'b324be01', 'Vector_Video_Standards2.svg.png', '', '', 0, 1, 4, 4, 4, '8b78143476241810fd278ffe75e36480', '0', 'b2f3047b5e5b7e204f9748662df5961c', '1a5dd65867452adb0ed65d7a570c0b22', '3aef7715dde3199c3cd9c7fdebd09ee5', '0', 'd32aa182276a59aa213ede805f772992', 'e8419e7177a05b011e5c063ea7c7691c', '3131da99', '0', '72ca0367', 'dbc57606', 819, 1024, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(9, 15, 'user', 15, 3, 1439672358, 'eb2b5603', 'cafa85dfb8cea7b61d8bb885e0af7963', 'cec9f3ed', 'Vector_Video_Standards2.svg.png', '', '', 0, 1, 4, 4, 4, '1c4388e3b58d97915a31503c382e8c88', '0', '37cbf924b7934b20029954271fcb34c8', 'ccb89a8a9fc354d0aa3368baca01069f', '0c8f16483901a04cc5f141066b68a56e', '0', '659becb3c56db14055c81e260dfa4951', '6f27d638d04502d4e8f9a0959d0cb6bf', '487a5d60', '0', 'f78c8dff', 'a60014a6', 819, 1024, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(10, 15, 'user', 15, 0, 1439672551, 'e45e6d48', 'e0d29884f88812ca640362ac24f4ae40', 'a9b6b342', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', '', '', 0, 1, 4, 4, 4, 'd0adee4de2031123db2d07639d4567f7', '0', '0', '7f0d98aadcb4015d09fff78b8d92d28e', '5336515b8af080b6af38491deb654f0e', '0', '0', '411b2326e22365821ee34a6b4d93877d', 'ed38463d', '0', '0', 'd0ba43c8', 360, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(11, 15, 'user', 15, 0, 1439879743, '84a37f75', '20bd896b32f2d2d4007643dd25796723', 'e6e9976b', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', '', '', 0, 1, 4, 4, 4, '6cc4e0d1c0b28aa2d5a6e9ce88ad256f', '0', '0', '4e3ba4ab227afc119053f02f673f1053', '50bb2759572d27509815888aa061531e', '0', '0', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', '4d28587f', '0', '0', 'bd369194', 377, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(12, 15, 'user', 15, 0, 1439879744, '2ebe3043', 'e05047187b2067bc445d62cf7617915c', '69206be5', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', '', '', 0, 1, 4, 4, 4, '7fdb7e4f16d5a6315b2a01329d1c9c9f', '0', '0', '479655e9084825a7cd33d963e3e06794', '5336515b8af080b6af38491deb654f0e', '0', '0', '411b2326e22365821ee34a6b4d93877d', '95d6bf3b', '0', '0', '61ff937f', 360, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(13, 15, 'user', 15, 0, 1439935684, '53ad3844', 'f8b06220af003c3a048a3c00b66631b2', '163e9f21', 'Vector_Video_Standards2.svg.png', '', '', 0, 1, 4, 4, 4, '9fc45be8616b95e920809c9cc0888bc0', '0', 'f5c37547178904172060063f9c1be410', 'b01879ad3a0691cb30698a7c1e26c108', '215694f26b2591e688b5c2dabb9fe050', '0', '6e8e647e66efcbdb8889744ed0e25d59', '5b7f2e89877ee81c64f319d26fc2c956', '8119266c', '0', 'f90bba9e', '3a5fa666', 819, 1024, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(14, 15, 'user', 15, 0, 1439935949, 'b93b38e7', '164bae12f95b6d1072bfc6f45e68bf24', '42a273b0', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', '', '', 0, 1, 4, 4, 4, '91b55cd17895cca0e1d688eea54eaec0', '0', '0', '921ced04d3b3345fb9d2c49b01776dd6', '50bb2759572d27509815888aa061531e', '0', '0', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', 'ff3b160a', '0', '0', 'fe683411', 377, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(15, 15, 'user', 15, 0, 1440495142, '1337f240', 'dcbbf1d39c0a33c0fd0b14fb4cbe4e92', '4db1f064', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', '', '', 0, 1, 4, 4, 4, '4a15f29df15959749d59752912855a68', '0', '0', '418a3e869acb2c62443167dda5b75644', '29721fe43799438d58987ca4a097478b', '0', '0', 'c73eaa3ac15e0ebf65aa01b3c9b4d83d', '6cf1d584', '0', '0', 'cab9d852', 360, 660, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(16, 15, 'user', 15, 0, 1440511849, 'cae159f1', '70480f459f1782dbee198efa58ae3e6b', '26c93801', '6133244088_d33f54b354_o.jpg', '', '', 0, 1, 4, 4, 4, '55fd53b91a039e626be4274be0a27fe2', '762086b2bb1964254d27d070f78d52ac', '768844edfa292369c8b1967324310a57', '4230077b4b9e92358f71c5092300d7be', '20069c0f47e086697da1020dde9ae0e7', 'bde9c5e8e09f2926ad78ece13310abe5', '7492d81a0b1b6e0c0cfe386011de9f69', 'ccad819c8d969b6b7fffcafa7095487e', '280df33d', '919fc103', 'aeb479c9', 'bb1e00b0', 1937, 2582, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `photos_scrapbook`
--

CREATE TABLE IF NOT EXISTS `photos_scrapbook` (
  `id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_scrapbook`
--

INSERT INTO `photos_scrapbook` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'a0718873', 'da94c4a297b8fe31b611c30e21cbc789', 1433580568, 'Gym', 0, '', '', NULL),
(2, 'user', 15, '860aec5e', '3ece97d1bcfa75d271f0b6d5dd64998c', 1439582073, 'Dan Nguyen', 0, '', '', NULL),
(3, 'user', 15, '3a008237', '0c0210682d5c510904d8f78379d11bdf', 1439672265, 'sd', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photos_tips`
--

CREATE TABLE IF NOT EXISTS `photos_tips` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_views`
--

CREATE TABLE IF NOT EXISTS `photos_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `size` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1433753232, 1, 'user', '15', '0'),
(2, 1439329791, 2, 'user', '15', '0'),
(3, 1439329792, 3, 'user', '15', '0'),
(4, 1439335042, 4, 'user', '15', '0'),
(5, 1439485700, 4, 'user', '15', '0'),
(6, 1439532170, 4, 'user', '15', '0'),
(7, 1439580872, 4, 'user', '15', '0'),
(8, 1439674249, 10, 'user', '15', '0'),
(9, 1439674250, 7, 'user', '15', '0'),
(10, 1439674250, 6, 'user', '15', '0'),
(11, 1439879748, 11, 'user', '15', '0'),
(12, 1439879748, 12, 'user', '15', '0'),
(13, 1439935658, 11, 'user', '15', '0'),
(14, 1439935658, 12, 'user', '15', '0'),
(15, 1439935954, 14, 'user', '15', '0'),
(16, 1439978997, 12, 'user', '15', '0'),
(17, 1439978997, 11, 'user', '15', '0'),
(18, 1440022212, 11, 'user', '15', '0'),
(19, 1440022213, 12, 'user', '15', '0'),
(20, 1440134475, 12, 'user', '15', '0'),
(21, 1440134475, 11, 'user', '15', '0'),
(22, 1440218023, 12, 'user', '15', '0'),
(23, 1440218023, 11, 'user', '15', '0'),
(24, 1440291486, 11, '', '', '0'),
(25, 1440291486, 12, '', '', '0'),
(26, 1440334750, 11, '', '', '0'),
(27, 1440334750, 12, '', '', '0'),
(28, 1440389879, 11, '', '', '0'),
(29, 1440389879, 12, '', '', '0'),
(30, 1440434896, 12, '', '', '0'),
(31, 1440434896, 11, '', '', '0'),
(32, 1440493639, 11, '', '', '0'),
(33, 1440493639, 12, '', '', '0'),
(34, 1440495151, 15, '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('MqVsVeQYxxJUvOnwqMPThyNxvWHZdx6OxokiORDQD-b', 1440908572, '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', '33279aa4aa8e6a1065ff6e5e849c0dd3');

-- --------------------------------------------------------

--
-- Table structure for table `sites_author`
--

CREATE TABLE IF NOT EXISTS `sites_author` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `verified` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_certificate`
--

CREATE TABLE IF NOT EXISTS `sites_certificate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `issuer.c` varchar(20) DEFAULT NULL,
  `issuer.o` varchar(50) DEFAULT NULL,
  `issuer.ou` varchar(50) DEFAULT NULL,
  `issuer.s` varchar(40) DEFAULT NULL,
  `issuer.l` varchar(40) DEFAULT NULL,
  `issuer.cn` varchar(100) DEFAULT NULL,
  `signature.type.name` varchar(30) DEFAULT NULL,
  `signature.type.id` char(10) DEFAULT NULL,
  `purposes` text,
  `valid.time.from` int(11) NOT NULL,
  `valid.time.to` int(11) NOT NULL,
  `identifier.subject.key` varchar(255) DEFAULT NULL,
  `identifier.authority.key` varchar(255) DEFAULT NULL,
  `policies` text,
  `usefor.key` varchar(100) DEFAULT NULL,
  `usefor.extended` varchar(255) DEFAULT NULL,
  `subject.name` text,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_certificate`
--

INSERT INTO `sites_certificate` (`id`, `time`, `token`, `display`, `hash`, `issuer.c`, `issuer.o`, `issuer.ou`, `issuer.s`, `issuer.l`, `issuer.cn`, `signature.type.name`, `signature.type.id`, `purposes`, `valid.time.from`, `valid.time.to`, `identifier.subject.key`, `identifier.authority.key`, `policies`, `usefor.key`, `usefor.extended`, `subject.name`, `updated`) VALUES
(6, 1440588428, '3fb8deed', '9507cafa69bf7ec73eccfea640d9aeba', 'a18bd28a', 'US', 'Google Inc', '', '', '', 'Google Internet Authority G2', 'RSA-SHA256', '0', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:0;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1439389448, 1447110000, 'B1:FF:6E:C9:2A:0C:CE:67:96:36:DF:40:FC:A1:3F:8E:FB:89:FD:A1', 'keyid:4A:DD:06:16:1B:BC:F6:68:B5:76:F5:81:B6:BB:62:1A:BA:5A:81:2F\n', 'Policy: 1.3.6.1.4.1.11129.2.5.1\n', 'Digital Signature', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:50:{i:0;s:16:&quot;DNS:*.google.com&quot;;i:1;s:18:&quot; DNS:*.android.com&quot;;i:2;s:27:&quot; DNS:*.appengine.google.com&quot;;i:3;s:23:&quot; DNS:*.cloud.google.com&quot;;i:4;s:27:&quot; DNS:*.google-analytics.com&quot;;i:5;s:16:&quot; DNS:*.google.ca&quot;;i:6;s:16:&quot; DNS:*.google.cl&quot;;i:7;s:19:&quot; DNS:*.google.co.in&quot;;i:8;s:19:&quot; DNS:*.google.co.jp&quot;;i:9;s:19:&quot; DNS:*.google.co.uk&quot;;i:10;s:20:&quot; DNS:*.google.com.ar&quot;;i:11;s:20:&quot; DNS:*.google.com.au&quot;;i:12;s:20:&quot; DNS:*.google.com.br&quot;;i:13;s:20:&quot; DNS:*.google.com.co&quot;;i:14;s:20:&quot; DNS:*.google.com.mx&quot;;i:15;s:20:&quot; DNS:*.google.com.tr&quot;;i:16;s:20:&quot; DNS:*.google.com.vn&quot;;i:17;s:16:&quot; DNS:*.google.de&quot;;i:18;s:16:&quot; DNS:*.google.es&quot;;i:19;s:16:&quot; DNS:*.google.fr&quot;;i:20;s:16:&quot; DNS:*.google.hu&quot;;i:21;s:16:&quot; DNS:*.google.it&quot;;i:22;s:16:&quot; DNS:*.google.nl&quot;;i:23;s:16:&quot; DNS:*.google.pl&quot;;i:24;s:16:&quot; DNS:*.google.pt&quot;;i:25;s:23:&quot; DNS:*.googleadapis.com&quot;;i:26;s:20:&quot; DNS:*.googleapis.cn&quot;;i:27;s:25:&quot; DNS:*.googlecommerce.com&quot;;i:28;s:22:&quot; DNS:*.googlevideo.com&quot;;i:29;s:17:&quot; DNS:*.gstatic.cn&quot;;i:30;s:18:&quot; DNS:*.gstatic.com&quot;;i:31;s:15:&quot; DNS:*.gvt1.com&quot;;i:32;s:15:&quot; DNS:*.gvt2.com&quot;;i:33;s:25:&quot; DNS:*.metric.gstatic.com&quot;;i:34;s:17:&quot; DNS:*.urchin.com&quot;;i:35;s:21:&quot; DNS:*.url.google.com&quot;;i:36;s:27:&quot; DNS:*.youtube-nocookie.com&quot;;i:37;s:18:&quot; DNS:*.youtube.com&quot;;i:38;s:27:&quot; DNS:*.youtubeeducation.com&quot;;i:39;s:16:&quot; DNS:*.ytimg.com&quot;;i:40;s:16:&quot; DNS:android.com&quot;;i:41;s:9:&quot; DNS:g.co&quot;;i:42;s:11:&quot; DNS:goo.gl&quot;;i:43;s:25:&quot; DNS:google-analytics.com&quot;;i:44;s:15:&quot; DNS:google.com&quot;;i:45;s:23:&quot; DNS:googlecommerce.com&quot;;i:46;s:15:&quot; DNS:urchin.com&quot;;i:47;s:13:&quot; DNS:youtu.be&quot;;i:48;s:16:&quot; DNS:youtube.com&quot;;i:49;s:25:&quot; DNS:youtubeeducation.com&quot;;}', 1440588428),
(7, 1440746996, '35911ada', '86c40fd2644a8cf336ac0bd14324a45f', '39fdb42c', 'US', 'DigiCert Inc', 'www.digicert.com', '', '', 'DigiCert SHA2 High Assurance Server CA', 'RSA-SHA256', '0', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:1;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1424646000, 1456916400, '64:BF:44:B3:46:09:9B:CF:5A:1D:71:49:A2:04:72:8B:88:34:84:23', 'keyid:51:68:FF:90:AF:02:07:75:3C:CC:D9:65:64:62:A2:12:B8:59:72:3B\n', 'Policy: 2.16.840.1.114412.1.1\n  CPS: https://www.digicert.com/CPS\n', 'Digital Signature, Key Encipherment', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:7:{i:0;s:18:&quot;DNS:www.github.com&quot;;i:1;s:15:&quot; DNS:github.com&quot;;i:2;s:17:&quot; DNS:*.github.com&quot;;i:3;s:16:&quot; DNS:*.github.io&quot;;i:4;s:14:&quot; DNS:github.io&quot;;i:5;s:28:&quot; DNS:*.githubusercontent.com&quot;;i:6;s:26:&quot; DNS:githubusercontent.com&quot;;}', 1440746996),
(8, 1440748620, '48a96058', '870bda76038321f8b85eaffb5d54dcb6', '15996d0d', 'BE', 'GlobalSign nv-sa', '', '', '', 'GlobalSign Organization Validation CA - G2', 'RSA-SHA1', '0', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:1;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1440735538, 1444974969, '09:39:C8:B4:7E:A0:B1:55:B3:26:6C:69:35:B2:6C:AC:F0:63:85:B4', 'keyid:5D:46:B2:8D:C4:4B:74:1C:BB:ED:F5:73:B6:3A:B7:38:8F:75:9E:7E\n', 'Policy: 2.23.140.1.2.2\n  CPS: https://www.globalsign.com/repository/\n', 'Digital Signature, Key Encipherment', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:49:{i:0;s:26:&quot;DNS:ssl6417.cloudflare.com&quot;;i:1;s:21:&quot; DNS:*.ae23taydoc.com&quot;;i:2;s:18:&quot; DNS:*.basnews.com&quot;;i:3;s:22:&quot; DNS:*.casegorilla.com&quot;;i:4;s:22:&quot; DNS:*.evdeneve.gen.tr&quot;;i:5;s:14:&quot; DNS:*.gib.com&quot;;i:6;s:21:&quot; DNS:*.goeuro-cdn.com&quot;;i:7;s:20:&quot; DNS:*.hashfever.com&quot;;i:8;s:21:&quot; DNS:*.hfresolver.com&quot;;i:9;s:18:&quot; DNS:*.hiteast.net&quot;;i:10;s:23:&quot; DNS:*.hoangphucweb.com&quot;;i:11;s:17:&quot; DNS:*.hub777.com&quot;;i:12;s:17:&quot; DNS:*.kappit.com&quot;;i:13;s:17:&quot; DNS:*.m-obmen.ru&quot;;i:14;s:17:&quot; DNS:*.mabbex.net&quot;;i:15;s:21:&quot; DNS:*.mmm-office.com&quot;;i:16;s:15:&quot; DNS:*.mywap.ph&quot;;i:17;s:18:&quot; DNS:*.obmennik.ws&quot;;i:18;s:24:&quot; DNS:*.robedumariage.com&quot;;i:19;s:19:&quot; DNS:*.rockband.com&quot;;i:20;s:15:&quot; DNS:*.sc2tv.ru&quot;;i:21;s:20:&quot; DNS:*.technopat.net&quot;;i:22;s:23:&quot; DNS:*.texastribune.org&quot;;i:23;s:16:&quot; DNS:*.tinhte.vn&quot;;i:24;s:23:&quot; DNS:*.wep-tasarimi.com&quot;;i:25;s:19:&quot; DNS:ae23taydoc.com&quot;;i:26;s:16:&quot; DNS:basnews.com&quot;;i:27;s:20:&quot; DNS:casegorilla.com&quot;;i:28;s:20:&quot; DNS:evdeneve.gen.tr&quot;;i:29;s:12:&quot; DNS:gib.com&quot;;i:30;s:19:&quot; DNS:goeuro-cdn.com&quot;;i:31;s:18:&quot; DNS:hashfever.com&quot;;i:32;s:19:&quot; DNS:hfresolver.com&quot;;i:33;s:16:&quot; DNS:hiteast.net&quot;;i:34;s:21:&quot; DNS:hoangphucweb.com&quot;;i:35;s:15:&quot; DNS:hub777.com&quot;;i:36;s:15:&quot; DNS:kappit.com&quot;;i:37;s:15:&quot; DNS:m-obmen.ru&quot;;i:38;s:15:&quot; DNS:mabbex.net&quot;;i:39;s:19:&quot; DNS:mmm-office.com&quot;;i:40;s:13:&quot; DNS:mywap.ph&quot;;i:41;s:16:&quot; DNS:obmennik.ws&quot;;i:42;s:22:&quot; DNS:robedumariage.com&quot;;i:43;s:17:&quot; DNS:rockband.com&quot;;i:44;s:13:&quot; DNS:sc2tv.ru&quot;;i:45;s:18:&quot; DNS:technopat.net&quot;;i:46;s:21:&quot; DNS:texastribune.org&quot;;i:47;s:14:&quot; DNS:tinhte.vn&quot;;i:48;s:21:&quot; DNS:wep-tasarimi.com&quot;;}', 1440748620);

-- --------------------------------------------------------

--
-- Table structure for table `sites_comment`
--

CREATE TABLE IF NOT EXISTS `sites_comment` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_favorite`
--

CREATE TABLE IF NOT EXISTS `sites_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `action` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_id`
--

CREATE TABLE IF NOT EXISTS `sites_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ip` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_info`
--

CREATE TABLE IF NOT EXISTS `sites_info` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `scheme` char(10) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dot` varchar(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mime` char(10) DEFAULT NULL,
  `fingerprints` char(10) NOT NULL,
  `language` char(4) DEFAULT NULL,
  `country` char(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `scan` varchar(40) NOT NULL,
  `certificate` varchar(40) DEFAULT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1440744025, '0bf5c9cd', '19b9917634bf8eaa5fef95e23618d3bb', 'cb16b12f37ecf02722bf1a711a8c442a', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=krsc4xU10yI', '', '6121e6b6', NULL, NULL, NULL, 'CÃ²n Láº¡i GÃ¬ Sau CÆ¡n MÆ°a - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvmAZzmAj1eAqA0Qj0aENUw2oPh6HwwGFd3ZQng8NrIIg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=krsc4xU10yI', '', 'a18bd28a', 1440744025),
(2, 1440744035, '30c870b3', '25a8a7c1b315dd84fd3c048039382379', 'cc974f99dc1a197f137d65667dbf74e8', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=2sCf6ZoIbUE', '', 'd85a8d07', NULL, NULL, NULL, 'Äá»«ng BuÃ´ng Tay Anh - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu3VjTrmDFRKW/JdyUEl1MDUVRsgT1MtDlBVZd1cBdYDg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=2sCf6ZoIbUE', '', 'a18bd28a', 1440744035),
(3, 1440744072, 'ce1575f6', '3b71b5bb40a1d05ecb48d3ad007a9e1c', 'cb16b12f37ecf02722bf1a711a8c442a', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=krsc4xU10yI', '', 'a66edc85', NULL, NULL, NULL, 'CÃ²n Láº¡i GÃ¬ Sau CÆ¡n MÆ°a - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvmAZzmAj1eAqA0Qj0aENUw2oPh6HwwGFd3ZQng8NrIIg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=krsc4xU10yI', '', 'a18bd28a', 1440744072),
(4, 1440744200, 'f02cbd66', '41fb99e65386885a3bdd4e789adeac3e', 'cb16b12f37ecf02722bf1a711a8c442a', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=krsc4xU10yI', '', 'efb965d3', NULL, NULL, NULL, 'CÃ²n Láº¡i GÃ¬ Sau CÆ¡n MÆ°a - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvmAZzmAj1eAqA0Qj0aENUw2oPh6HwwGFd3ZQng8NrIIg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=krsc4xU10yI', '', 'a18bd28a', 1440744200),
(12, 1440748424, 'd5b5906b', 'a79c2601f2dbdba6f8e05ee001d0eeae', 'd6c36664a7f662aa011e041d32251c9f', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=EjO2rwdxPtA', '', '81d6a963', NULL, NULL, NULL, 'THVL | Tháº¿ giá»›i cá»• tÃ­ch - Táº­p 12: Ä‚n kháº¿ tráº£ vÃ ng', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobt9XEkVZ52FYadTrjIXb/VCLMHcIPhLQ7UFnoizZk6wqA==', 'Xem trá»n bá»™: http://goo.gl/pfxoCw ChÆ°Æ¡ng trÃ¬nh Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 20h chá»§ nháº­t hÃ ng tuáº§n trÃªn THVL1', 'https://www.youtube.com/watch?v=EjO2rwdxPtA', '', 'a18bd28a', 1440748424),
(13, 1440748479, 'c0049383', '7603859cb58f519a1e00b4c5cd013422', '315dc109d528465f1435ff85d3617baa', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=geOiVEHA568&list=PLrBAQg86hGY_LopkHb7QymuWZSPp30IfJ&index=13', '', '5ba35745', NULL, NULL, NULL, 'THVL | Tháº¿ giá»›i cá»• tÃ­ch - Táº­p 13: NgÆ°á»i hÃ³a dáº¿', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuFDqpcB3UzfTIO2ejUmxoWBSFMnP/fmOzamVk5wgjosw==', 'Xem trá»n bá»™: http://goo.gl/pfxoCw ChÆ°Æ¡ng trÃ¬nh Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 20h chá»§ nháº­t hÃ ng tuáº§n trÃªn THVL1', 'https://www.youtube.com/watch?v=geOiVEHA568&list=PLrBAQg86hGY_LopkHb7QymuWZSPp30IfJ&index=13', '', 'a18bd28a', 1440748479),
(18, 1440748801, 'ad6596bb', 'f726c0fbf01b229bbba5b5c7cde595d6', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', '29566cab', NULL, NULL, NULL, '', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net/', '841f86310ce677cb2aa79f985a06bee2', '', 1440748801),
(21, 1440749576, '9a60f893', 'd03de20e051a63a4c23b5c0a8354b3bb', '0271bb908732bd9a491e378b999d142d', '', '', 'vnexpress.net', 'vnexpress', 'net', '', '', '75250592', NULL, NULL, NULL, 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'vnexpress.net', '8d8a632cc4e5a523fada15b3d22f2ff0', '', 1440749576),
(22, 1440749679, 'cd234acc', 'f287e066c4253bca4c76c82a782a8830', '6d4f6f753c5bf4874c4186eba890edb8', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=2MUfa5APRIs', '', '3e14cfbc', NULL, NULL, NULL, 'THVL | Danh hÃ i Ä‘áº¥t Viá»‡t - Táº­p 11: Sáº¯c Ä‘áº¹p - Há»“ Viá»‡t Trung, Puka, Háº£i Triá»u - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuZ5vEnaIMSTxPPSZ12wzZhyDRvyP9R5HaCiQSs9BtOfQ==', 'Danh hÃ i Ä‘áº¥t Viá»‡t Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 21h00 thá»© tÆ° hÃ ng tuáº§n trÃªn kÃªnh THVL1 Xem trá»n bá»™: https://www.youtube.com/playlist?list=PLrBAQg86hGY9wyLKgFTS3p7Dj1Mya...', 'https://www.youtube.com/watch?v=2MUfa5APRIs', '', 'a18bd28a', 1440749679),
(23, 1440749729, 'e8226814', '5d47a4f3377f4cfbcd964b643ec99433', 'b3996f2144f49f66b6c4b075e3230490', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=o0szlNXmiho', '', '11a84ed5', NULL, NULL, NULL, 'THVL | Danh hÃ i Ä‘áº¥t Viá»‡t - Táº­p 14: Em lÃ  cá»§a anh - Há»“ Quang Hiáº¿u, Há»“ Viá»‡t Trung, Puka, HÃ  Triá»u - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvMMSsXLw+AAHFkpPB8RxCqlnYSomHIyI5F1JPa+XnDTQ==', 'Danh hÃ i Ä‘áº¥t Viá»‡t Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 21h00 thá»© tÆ° hÃ ng tuáº§n trÃªn kÃªnh THVL1 Xem trá»n bá»™: https://www.youtube.com/playlist?list=PLrBAQg86hGY9wyLKgFTS3p7Dj1Mya...', 'https://www.youtube.com/watch?v=o0szlNXmiho', '2c24db0c2d14164fbe63f00a8cb5ff60', 'a18bd28a', 1440749729),
(24, 1440750221, 'a07a6502', '31e53d437571751f1e645b6389eb86b3', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '799c4317', NULL, NULL, NULL, 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '7036ecbcd4cce4edd403a1a69f7efbcd', '9507cafa69bf7ec73eccfea640d9aeba', 1440750221),
(25, 1440751035, '9eb9c43a', '35ae7f15dced536673488e1dcbe23bc5', 'bffa11d0606d824a3bccd4a45574ef77', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=icebBHQitHA', '', 'dc35fbd6', NULL, NULL, NULL, 'Xin Lá»—i NgÆ°á»i Anh YÃªu - ChÃ¢u Kháº£i Phong [Video Lyric + Kara] - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtYZPx1iASOWjSPAyUS6+c1E+febZO0C/vj6p/BL+7yIw==', 'â˜ž Song: Xin Lá»—i NgÆ°á»i Anh YÃªu â˜ž Singer: ChÃ¢u Kháº£i Phong â˜ž Video Editor: Bach Nx â˜ž Channel: https://goo.gl/IOllDZ â˜ž Facebook : https://goo.gl/TxLmMU â˜ž Nháº¥n Li...', 'https://www.youtube.com/watch?v=icebBHQitHA', '', 'a18bd28a', 1440751035);

-- --------------------------------------------------------

--
-- Table structure for table `sites_rate`
--

CREATE TABLE IF NOT EXISTS `sites_rate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` int(1) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_rate`
--

INSERT INTO `sites_rate` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `point`, `updated`) VALUES
(2, 1, 24, 'user', 1, 3, 1),
(3, 1, 24, 'user', 1, 1, 1),
(4, 1, 24, 'user', 1, 4, 1),
(5, 1, 24, 'user', 1, 5, 1),
(6, 1, 24, 'user', 1, 2, 1),
(7, 1, 24, 'user', 1, 3, 1),
(8, 1, 24, 'user', 15, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sites_scan`
--

CREATE TABLE IF NOT EXISTS `sites_scan` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` char(10) NOT NULL,
  `total` int(4) NOT NULL,
  `data` text NOT NULL,
  `status` float(3,2) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_scan`
--

INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(1, 1440748677, '4acb7aff', '017642f510e793320f6ca34a795e8b13', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=www.tinhte.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=www.tinhte.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=www.tinhte.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=www.tinhte.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://yandex.com/infected?l10n=en&amp;url=https://www.tinhte.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440748677),
(2, 1440748805, 'f5eb47c5', '006badd2afd6670d9c18c62a42c1a36c', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440748805),
(3, 1440748919, 'c4f33d13', '14b711f3bf40146e1d9c75453e7dc415', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440748919),
(4, 1440748982, 'f407450e', '42c015eb31692d1ab1a9d9e176d18394', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440748982),
(5, 1440749119, '011c9827', 'ee9dc20075f29fef103f1b9c7ae39128', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749119),
(6, 1440749280, '7ee64c1e', 'aad1d7695c9d5b93e8891460dd4a40dc', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749280);
INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(7, 1440749334, '66d521d1', '66338752d6563bcb8cb0c49d7cab0aac', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749334),
(8, 1440749340, '78fdf0bb', '841f86310ce677cb2aa79f985a06bee2', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749340),
(9, 1440749497, 'dddbd95e', '67cec695c97c8da03fbb71c5062cb438', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749497),
(10, 1440749515, '3f4d55d0', '0d60ada482ee2b3d5eef2f46d050c420', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749515),
(11, 1440749580, 'c4c6df52', '03f35d953b6b926d53aff5581afa62a0', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749580),
(12, 1440749621, '4b39b260', '8d8a632cc4e5a523fada15b3d22f2ff0', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749621);
INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(13, 1440749846, 'cb8b559f', '2c24db0c2d14164fbe63f00a8cb5ff60', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;http://www.malwaredomainlist.com/mdl.php?search=www.youtube.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://zeustracker.abuse.ch/monitor.php?host=www.youtube.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://malc0de.com/database/index.php?search=www.youtube.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=www.youtube.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:82:&quot;http://yandex.com/infected?l10n=en&amp;url=https://www.youtube.com/watch?v=o0szlNXmiho&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440749846),
(14, 1440750252, '18d5a66c', '3d96e68570a5c0a2cbb340f7c5132e42', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;http://www.malwaredomainlist.com/mdl.php?search=stackoverflow.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://zeustracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:62:&quot;http://malc0de.com/database/index.php?search=stackoverflow.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:157:&quot;http://yandex.com/infected?l10n=en&amp;url=http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440750252),
(15, 1440750269, '4ff6dfbd', '7036ecbcd4cce4edd403a1a69f7efbcd', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;http://www.malwaredomainlist.com/mdl.php?search=stackoverflow.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://zeustracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:62:&quot;http://malc0de.com/database/index.php?search=stackoverflow.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:157:&quot;http://yandex.com/infected?l10n=en&amp;url=http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', 0.00, 1440750269);

-- --------------------------------------------------------

--
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_views`
--

INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `updated`) VALUES
(1, 1440865812, 24, 'user', '1', 1),
(2, 1440865812, 24, 'user', '1', 1),
(3, 1440865812, 24, 'user', '1', 1),
(4, 1440865812, 24, 'user', '1', 1),
(5, 1440865812, 24, 'user', '1', 1),
(6, 1440865812, 24, 'user', '1', 1),
(7, 1440865812, 24, 'user', '1', 1),
(8, 1440865812, 24, 'user', '1', 1),
(9, 1440865812, 24, 'user', '1', 1),
(10, 1440865812, 24, 'user', '1', 1),
(11, 1440865812, 24, 'user', '1', 1),
(12, 1439829070, 24, 'user', '1', 1),
(13, 1439829070, 24, 'user', '1', 1),
(14, 1439829070, 24, 'user', '1', 1),
(15, 1439829070, 24, 'user', '1', 1),
(16, 1439829070, 24, 'user', '1', 1),
(17, 1439829070, 24, 'user', '1', 1),
(18, 1439829070, 24, 'user', '1', 1),
(19, 1439829070, 24, 'user', '1', 1),
(20, 1439829070, 24, 'user', '1', 1),
(21, 1439829070, 24, 'user', '1', 1),
(22, 1439829070, 24, 'user', '1', 1),
(23, 1440868972, 24, 'user', '1', 1),
(24, 1440751035, 24, 'user', '1', 1),
(25, 1440751035, 24, 'user', '1', 1),
(26, 1440754035, 24, 'user', '1', 1),
(27, 1440754015, 24, 'user', '1', 1),
(28, 1440754035, 24, 'user', '1', 1),
(29, 1440062835, 24, 'user', '1', 1),
(30, 1440062835, 24, 'user', '1', 1),
(31, 1440062835, 24, 'user', '1', 1),
(32, 1440062935, 24, 'user', '1', 1),
(33, 1440064835, 24, 'user', '1', 1),
(34, 1440064835, 24, 'user', '1', 1),
(35, 1440064935, 24, 'user', '1', 1),
(36, 1440900169, 24, 'user', '1', 1),
(37, 1440900169, 24, 'user', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `date` int(11) DEFAULT NULL,
  `edit` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `private.view` int(1) NOT NULL DEFAULT '4',
  `private.comment` int(1) NOT NULL DEFAULT '4',
  `private.share` int(1) NOT NULL DEFAULT '4',
  `type` char(10) NOT NULL,
  `content` text,
  `usertag` int(1) NOT NULL,
  `hashtag` int(1) NOT NULL,
  `places` int(1) NOT NULL,
  `mood` int(1) NOT NULL,
  `link` int(1) NOT NULL,
  `share` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `public`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(15, 1, '3768679f', 'fb35c7c0a191284bf2b29921fd9483d2', 1433581761, 1433581761, 0, 15, 'user', 15, 3, 3, 3, 'videos', 'dJAoMGpmQzUYRn+c+m7ZITFoVArteoaIo8dfrSm7eZo=', 0, 0, 0, 0, 0, 0),
(16, 1, '921dc0d6', 'b22b767b12979a610bf2e1ad901d0834', 1433745199, 1433745199, 0, 15, 'user', 15, 3, 3, 3, 'music', 'V42a2JnVhmKzYNIyqRcWXkU0NL+263GFb+8hoHb1/iA=', 0, 0, 0, 0, 0, 0),
(17, 1, '4c59ac5a', '7e0f721096e28c4b7d7b0cc6142153fb', 1433753223, 1433753223, 0, 15, 'user', 15, 3, 3, 3, 'photos', '3FUOwvsiZZ5EXqgoilUgGyQqYWi5hqd9ZRUmXh4IhKE=', 0, 0, 0, 0, 0, 0),
(18, 1, '7ae7bba5', 'ff252e76eecaf1cea21f55e76bd7365a', 1434092540, 1434092540, 0, 16, 'user', 16, 4, 3, 3, 'status', 'ZkEpSTykP8f6wlZH+gLcigG/ocG5Bl0beCU/PH7vl1Q=', 0, 0, 0, 0, 0, 0),
(26, 1, 'dcbb6b78', '94a56f537fab2e295370836ee0b7e77f', 1434097305, 1434097305, 0, 15, 'user', 15, 3, 3, 3, 'status', 'HF3OijhX0MVFyR3W1TIu8YInzlOaI3dI1GLbWkyiwtA=', 0, 1, 0, 0, 0, 0),
(27, 1, 'd027744c', 'e8748f92070e1348d107788e9a867427', 1434097410, 1434097410, 0, 15, 'user', 15, 3, 3, 3, 'status', 'igzaZ+lbU21WyApRYJ3gB/N9N1VaKeEy17cuAglySWI=', 0, 1, 0, 0, 0, 0),
(28, 1, '317a8ebd', '94fd8b620a540e2443bd9384518e54e7', 1434097810, 1434097810, 0, 15, 'user', 15, 3, 3, 3, 'status', 'EtcrZ21ANeG1qWx4cmAvbpvnNm1GQENJp5/YzA1qAAA=', 0, 1, 0, 0, 0, 0),
(29, 1, 'eb5ca495', 'e5f5e8e7a31c427a635cbc88021997b2', 1434098084, 1434098084, 0, 15, 'user', 15, 3, 3, 3, 'status', '+RNCtAVIP7CDEMNOy0JQbLChdU3I7H60cMCkqxFf7h4=', 0, 1, 0, 0, 0, 0),
(30, 1, 'b67dc892', '50a75787bb761932fc6755891652c87e', 1434098822, 1434098822, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KEkq8h9HCgR7mo+SM88mQSCIqvPDxy0IsfsTHqE9TE0=', 0, 1, 0, 0, 0, 0),
(42, 1, 'c279fec1', 'cf358411ac6254f67d02d46d5ef3ea91', 1434100458, 1434100458, 0, 16, 'user', 16, 4, 3, 3, 'status', 'zEbMNRX7otdm1ADLLMDZatlCJVRODnfgm5Gh2/sTEiQ=', 0, 0, 0, 0, 0, 0),
(47, 1, '4817a929', 'e0b84fb6e0469063e9268343c9c15b7b', 1434700812, 1434700812, 0, 15, 'user', 15, 3, 3, 3, 'status', 's9Dr6IhJ9Y6LvIBPsr+jpy3FYIaAG3Ad74mLA6JDsNLN3aazhMT+t2N2Fj2Pg8tq9UvH+pigcg9MogvTCBCPqw==', 0, 0, 0, 0, 1, 0),
(49, 1, '7126c114', 'a205a0b7dc8c99c1c421dca87d04ca53', 1434701058, 1434701058, 0, 15, 'user', 15, 3, 3, 3, 'status', 'D5jITdHnnBiR+VfWcf+pnbgfdrG3FvU4s60xXcbJ7bYCrlrBW2gcdQ75ylAxdJZ05Hk7o224+4UFHQVVSnCC/A==', 0, 0, 0, 0, 1, 0),
(50, 1, '35d1a1af', 'b096aeb491c396e26501d17bde6c8bd4', 1434778944, 1434778944, 0, 15, 'user', 15, 3, 3, 3, 'status', 'oLnqzcire8CBJxlRAKETP8niNZnT2bZow19Q2YER+gAdzpviTEXlRNYRRoqBA2emb29Jeo0IYd8m11t2RQWelA==', 0, 0, 0, 0, 0, 0),
(51, 1, '96f55e20', 'b4c3df352bed4aeb661fe6ee3a0a4db7', 1434779051, 1434779051, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wBtA3Gpg/CblZ5OGrVmMLzXKTvj+bu2SOhDFLxEBDQaZfAlWO6z4BAt1RABxLcqKDhqx62BPTSAupGGCC48RHA==', 0, 0, 0, 0, 0, 0),
(52, 1, 'edcc7e0c', 'a24ec5ffa63da0ecf68465887dee0f3d', 1434787496, 1434787496, 0, 15, 'user', 15, 3, 3, 3, 'status', '/uwV5UUi1muYnjPp3R+vxAvZu5BVWHN6yI6pLkjxmTAFBqYuUrCqw0CXz5xF8raP7AuAFp93qQjixyYt56t1xQ==', 0, 0, 0, 0, 0, 0),
(53, 1, '915e4b13', 'b4f9283c0ab096426a4629b403b957b0', 1434787533, 1434787533, 0, 15, 'user', 15, 3, 3, 3, 'status', '1YG/VDBIb7AWxwcDXNp8g2djjcY1/SqnnSbBpfH/0mcEx9qkESl8ydfNOYhu6mD02OtP5qQWzBXAzYmFl9cnyA==', 0, 0, 0, 0, 0, 0),
(54, 1, '45200686', '7a25e070b8d4d025cde2e501d6252797', 1434788628, 1434788628, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hCT/GYaJpEk2Tjrd9HiLtTzeh7GyeA6E1B8wgNPyoqvZDFNQNc+aFi2yqJmYUbhqI868pP0qNnNniyTsKFOfdA==', 0, 0, 0, 0, 0, 0),
(55, 1, '5e0884e1', 'd957a0ebfa852f96c3853f12780c92b7', 1434788778, 1434788778, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wp3HtMlrrcvdIlMElqzvMUjKLU61pW9fhkC3r0lWUaEYhXm+BzBvj/FKMx9jIJYoLPW5wfLPqFHWdNlrt7fExQ==', 0, 0, 0, 0, 0, 0),
(56, 1, '1a8b780a', 'ca744d16fb0a513b2d07894ea7fa8967', 1434788835, 1434788835, 0, 15, 'user', 15, 3, 3, 3, 'status', '5tElnvntMGco8NTPqqcDS//tLZSHEOPOG5Dgfhw71b/o159s25j0F8RAhUZL72ugWh7t8E4VtTeirFPdPwjwVg==', 0, 0, 0, 0, 0, 0),
(57, 1, '7616ffe7', '14e7040bdf1aae17c2bc483b0c01ec82', 1434788949, 1434788949, 0, 15, 'user', 15, 3, 3, 3, 'status', 'gjJadgxcF+jYN7v6CYNY0PuQtg8wZfRsUXj3eDTGpiaqSfykIoShGDOWV1XAOz/JOREZv0mojasZ70yTd4P+pA==', 0, 0, 0, 0, 0, 0),
(58, 1, '539189ed', 'f4245a02f38823addc0a269fbddf6272', 1434789020, 1434789020, 0, 15, 'user', 15, 3, 3, 3, 'status', 'GKIQb7SUeeCgjCCqqEeCR97uvhXpBOqQcgzzgBYpxsKIOZNLcMBUFSifh1/iuQETxjSJVU0JFN4FJ/yvlgPsUQ==', 0, 0, 0, 0, 0, 0),
(59, 1, 'c307d216', 'ee6cc021d9a15c4fd2f414ee33f93f85', 1434789130, 1434789130, 0, 15, 'user', 15, 3, 3, 3, 'status', 'OPC57Kgqom+qOEaDhDlfbeP/Ia+8Yv0fWgUGg3y5mGBmVP3ZROvLGZtyh4pZroUZeKcD7EOyc6YgLOH2Vw4hzQ==', 0, 0, 0, 0, 0, 0),
(60, 1, '25a938ad', 'b572244d9dad91774eec5324e4be4c43', 1434789174, 1434789174, 0, 15, 'user', 15, 3, 3, 3, 'status', 'YakAt7pXeh3lQlz1lknkC/0+MCB+DX410xiNGXYSfxblBKLh3P0PtwsmsaFhdBAjITYiC93ViuJKYV3Sof3tbg==', 0, 0, 0, 0, 1, 0),
(61, 1, '1a4ab147', '065fd024d9178d4db0fa9cb73e809f9c', 1434987597, 1434987597, 0, 15, 'user', 15, 3, 3, 3, 'status', 'uthojd8GpKJSD6ZKRa1YzOKRbH/5A+fRwhPq1G8itKM=', 0, 0, 0, 0, 1, 0),
(62, 1, 'c92ba13a', 'f913104b36ebcea1864862efb4f43928', 1434987761, 1434987761, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Kc/Ee/btiaPtb5zWUKe1PNcdcmpvOrAnWpoYAtskDinSHHQA5t13Km/i2ore3LvbwEQ/AwLnniwWG1pJYntksxZv+CQTVIEg0B0nCgRZQvJ65mApDXF+sjNE+T5Ckqya', 0, 0, 0, 0, 1, 0),
(63, 1, 'd2bc1322', '47950160b50bae19553701fa6354a2f3', 1435048620, 1435048620, 0, 15, 'user', 15, 3, 3, 3, 'status', 'vxNmODve+0kTA6WCLbYEfh4vl1jvzZXpD6K9hriPcGE=', 0, 1, 0, 0, 0, 0),
(64, 1, '8c447a74', 'a7c5e85d762eb0315527da4ea805d972', 1435048699, 1435048699, 0, 15, 'user', 15, 3, 3, 3, 'status', '7Sh3VTFT4FGKQ1aiZNaUFDQv5WLBmQESbM/MCvf+6Gg=', 0, 1, 0, 0, 0, 0),
(65, 1, 'e3f0b149', '7ff1648c338b93e6e56a3ac9ada0e79a', 1435048714, 1435048714, 0, 15, 'user', 15, 3, 3, 3, 'status', 'B2WeyQN5qxfF7d92AUN5ndZf2Ky4GEkBkARjXiXwB6I=', 0, 1, 0, 0, 0, 0),
(66, 1, 'ed22f94c', '6584f4c052ad70d8bf1b92e4bcd75d69', 1435306006, 1435306006, 0, 15, 'user', 15, 3, 3, 3, 'status', 'zwCbJPOz/yMhsoX0rNAz11LaTyBdC9ceW+2l0DpWUlM=', 0, 0, 0, 0, 0, 0),
(67, 1, 'f1f7b6d4', '70b5918f418728239d8112400366b47f', 1435405192, 1435405192, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KoU0jHJcO0tKXypLK9IwVehqdjZUAjvT4emT1QOXbzc=', 0, 0, 0, 0, 0, 0),
(68, 1, '94bafa39', '07788f962de3b0e5a6d4f32b45f1c409', 1435405296, 1435405296, 0, 15, 'user', 15, 3, 3, 3, 'status', 'jGQOQb/r3zcBLKiJVk668GxPr3BrTV3wt8I89xm0wNI=', 0, 0, 1, 0, 0, 0),
(69, 1, '594a7e55', '2ff10d446a9c33c4b7ef2bf0194b15e6', 1435409271, 1435409271, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kBQ/E4skPvtbrznZrvYR8GcqiaNhTk32KoUwN4Ksvww=', 0, 0, 0, 0, 0, 0),
(70, 1, '6ed4ec4c', '173876e1e8238e0f022ff812ccd7e251', 1435409388, 1435409388, 0, 15, 'user', 15, 3, 3, 3, 'status', 'UWTXu4wGMVS+JDv8onSksFOCHniWlOo+zaK3nP/tY5g=', 0, 0, 1, 0, 0, 0),
(71, 1, '105a7455', '23a46c55f57471bd59e4feea32c2acbc', 1435409420, 1435409420, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Pkalnb3A1V3ZapFX821mcY+/58DRnuSYQLBoXcP1gGY=', 0, 0, 1, 0, 0, 0),
(72, 1, '2abf9897', 'ca7d23a28003277f1d87dfd13a7b7aa6', 1435409444, 1435409444, 0, 15, 'user', 15, 3, 3, 3, 'status', 'A1DzClocnDHAG7NOicfE1Ta+XULhcy/E4XgbrxTNXk8=', 0, 0, 1, 0, 0, 0),
(73, 1, '375d1a92', 'fd2f0fa914f9d6e5500462187b0844e0', 1435410307, 1435410307, 0, 15, 'user', 15, 3, 3, 3, 'status', 's3YOmGino0OEr4/8YISS6da7VD9Sq0PeJjjz70wp2ns=', 0, 1, 1, 0, 0, 0),
(74, 1, 'a220e31b', '70179212c844daee77715323e3574e03', 1435478658, 1435478658, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hlqvolHY84RcXBEhLsPc0ojs4mSQKVm3zmSlJe1uIQ8=', 0, 0, 0, 0, 0, 0),
(75, 1, '9a23e1fc', 'e76e04abb861bc4e84d4e9473f2d7536', 1435478842, 1435478842, 0, 15, 'user', 15, 3, 3, 3, 'status', '2bdrikL950FCJm65E+U6xHiXJ+4RFvTDeAg/lJtv38s=', 0, 0, 0, 0, 0, 0),
(76, 1, 'f77e5d42', '51ac4977c610b375c57ca0c72ca6f357', 1435479130, 1435479130, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kNsolc3X5JrtENvaApygYO0afTATNXCKPxmO45aHyuk=', 0, 0, 0, 1, 0, 0),
(77, 1, '28be871b', '5b585276c3df1e0dcd42435e2e5e5ad4', 1435479162, 1435479162, 0, 15, 'user', 15, 3, 3, 3, 'status', 'VkxJHYCSJkbOJUO0as/XY9nON99MKlRsj80bG5x4uvA=', 0, 0, 0, 1, 0, 0),
(78, 1, '44442f18', 'f2a25bd5dfa75c92d5a9987403289bfb', 1435479395, 1435479395, 0, 15, 'user', 15, 3, 3, 3, 'status', 'iVHlNlnOuE3JS9LjTwgORxvfSagKgEcuO3nL8hRdWHk=', 0, 0, 0, 1, 0, 0),
(79, 1, '01f21a65', 'f1224d7f834f6cd9ab1feb21b2564b0d', 1435479865, 1435479865, 0, 15, 'user', 15, 3, 3, 3, 'status', 'CA2OrvpiJli/UzJudO+r63RF5jQsDd2GuVh0NIM1a/A=', 0, 0, 0, 1, 0, 0),
(80, 1, '076b999a', 'a973bea0874d6dfbdab91d940a268cfb', 1435479929, 1435479929, 0, 15, 'user', 15, 3, 3, 3, 'status', 'WZJ3v7H62VSnTRm3KrVYbzRqwINlEsIXPmNvMPoC1Ss=', 0, 0, 0, 1, 0, 0),
(81, 1, '586564aa', '4c777c7ce772d1b966c3b1335aa54c03', 1435479998, 1435479998, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Yj0qPusmZvgs/R/UzBA6AwO2OGMIX5heLJtNN9ycm0o=', 0, 0, 0, 1, 0, 0),
(82, 1, '302b19e6', 'b4704c4e4fdb555705677c164f80e341', 1435480245, 1435480245, 0, 15, 'user', 15, 3, 3, 3, 'status', 'adp922z1EcMQzixq5Z6xsNwMOmF6CvdnCD2khVrtUX4=', 0, 0, 0, 1, 0, 0),
(83, 1, 'e661a437', '3277ae0ff6c07db702d835694f89d589', 1435481392, 1435481392, 0, 15, 'user', 15, 3, 3, 3, 'status', '+3/b4+7g0Va9UUvi4dlZ5Rp9qcv/r07FTea5+h+9gdw=', 0, 0, 1, 1, 0, 0),
(84, 1, '6ea389ff', 'cddb1d3acca83f2c46c53234028da296', 1435484831, 1435484831, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kTyfuwuagc0gFMhdkIvJpEtXhiG8Fgj0Z4mpg75yIto=', 0, 0, 1, 0, 0, 0),
(85, 1, 'c0c3d7dc', 'e7188088277b3d80d73c758fafaa0849', 1435485706, 1435485706, 0, 15, 'user', 15, 3, 3, 3, 'status', 'xbbsjo5PpPEQ9u6HzmJYmPhHvhUwV0yRuUn3VeHK/qk=', 0, 0, 0, 0, 0, 0),
(86, 1, '62d397ca', 'afbba2a35c39765001828d720d6b06b8', 1435486127, 1435486127, 0, 15, 'user', 15, 3, 3, 3, 'status', 'SxFzsJxGbmAHoWMh/lFfXb9lNPNZ1ikOzbBM7VTqZBM=', 0, 0, 1, 0, 0, 0),
(87, 1, '2cec330a', '1865729c4bda8589e66f4de5338afc0e', 1435486167, 1435486167, 0, 15, 'user', 15, 3, 3, 3, 'status', 'pue6o/gfx4hhkaYBPwcc25dNhjgOkkrzAgCoZccioYQ=', 0, 0, 0, 0, 0, 0),
(88, 1, 'a19bd9d2', '57a9261efdd7cf87efa6c88b9efd547e', 1435565495, 1435565495, 0, 15, 'user', 15, 3, 3, 3, 'status', 'crUNgUyCnIacoLANm0TsC60zNsiffKMraCAcFIVKtps=', 0, 0, 0, 0, 0, 0),
(89, 1, 'd25f01e7', '49abf154ae8693724b3fdd472e4ca052', 1435801741, 1435801741, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cu73G2j7RbFuVP01/41w6wZZY/1MruhLjH8vt5pwvPY=', 0, 0, 0, 0, 0, 0),
(90, 1, '39e3603a', 'e2de2ab821dd5484701c60898b09c80e', 1436757995, 1436757995, 0, 15, 'user', 15, 4, 2, 3, 'status', 'y2Kt8Iq57i4FwcVFqnrlmmZEBA65o6LNiM+havQispYuxKlAN9HcjafPMkppPNVdZV19rcDKwkG6N8K/AsoID18XW1WNCDJCOMq+L5y+dedBl9uv0bqncJECggbXaUCqjJyqNIxGQfw/w8kPGzkMAAy0sSTA/kbUvl34n6ppbuk=', 0, 0, 0, 0, 1, 0),
(95, 1, '5e6939cc', '7dd27869f88c159000ae5d04ee2f4bff', 1436761882, 1436761882, 0, 15, 'user', 15, 4, 2, 3, 'status', 'nh+4G9JI6jY/V6t4p1N95c+E2W1ZBK9bpYTHe8Ss0d8Kk86DpJvtxjYymhl/4WM70pTf+2GkOzbBnzrp3xcnDYJRJk/lyMp31LHfNEy8S/28uTISlW6htF4DeZnyLnSQ', 0, 0, 0, 0, 1, 0),
(96, 1, '05361dd4', '6bec7041054eda98dbcae9ebafb88a79', 1436761890, 1436761890, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Q47Jlf70E1stOphFl/MRQlz9zXAtQV60xm6Fn6SltgYv/iViF6F18j/VKqRDYU/14fQmUIFkzixea+vbC67em/3L/l0GKrTTW/b5tgtWZBecINS8KJNf8Zn2KCw7J9+k', 0, 0, 0, 0, 0, 0),
(98, 1, '5cf30f18', 'c1cb3249a8118086af2673513514d4d2', 1436763913, 1436763913, 0, 15, 'user', 15, 4, 2, 3, 'status', 'XEdlb8pWFBmh+UgfY5msXcKl1VSWfhX/VSWI1nuc4Js67Yx6g5oCUGkeeAiAQk1usSCdO0NzCVyKv2T9SVP6aA==', 0, 0, 0, 0, 1, 0),
(99, 1, '81be78f5', 'eb377008f40bc25483a14126e4e86fdb', 1436764391, 1436764391, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YBjfYKGEY0cww4UerWk1tmPfm0DaCTPKLCozQ+41D1usI3Y1qu0e378LKwgwkAgtEuq5GP2M7CbIM8jRp7QsbFDYTSD0tcCNVlP+UkMMg8Ewer03B3HXIEEhH6AVgJF4', 0, 0, 0, 0, 1, 0),
(100, 1, '12884f51', '9d7fd44ec3b74763419fabeea8ebe93d', 1437032311, 1437032311, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZR0awSySdpxxzXxX+i3wcDp7ZRX+DLZcwd6x1k71HKFkqol7MgM4vWAzY9mxW1iAFKJnZKs7WWlMU+S4DEPWjEQHznsh+P3hIS3LmWsBvmz6Yav5SKedyhetH5QT3kVv', 0, 0, 0, 0, 1, 0),
(101, 1, 'b027c477', 'f6ac7d16a303d3b49b29e94f74840ade', 1437033632, 1437033632, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ufGyIgj+seilZQ6oFTh63MTlPsm307j+gMYtOkWFcTD25TqcgxjZ4nOBEMcVtT2ixej4i3ZYk37gc9cbF5W17Q==', 0, 0, 0, 0, 1, 0),
(103, 1, '7cb3195c', '9044a1d554247b0b65f99d63db5f7e2a', 1437038930, 1437038930, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VDXoiLFJpGXCjPWhgR5FhRvtt64hp4Pk/uY1UwTkXLozEoqd5+46Uao+fOaS8Er1qnlUk4mjb9fx2hbQ4qT5XA==', 0, 0, 0, 0, 1, 0),
(104, 1, '14aa9d0e', '823887392b4a29d1aa4a96fed7e58ee5', 1437039398, 1437039398, 0, 15, 'user', 15, 4, 2, 3, 'status', 'De1AsvIjK1ivESYfpjUpzuFgHlNQhoPBPBd3iWIrSR7bboWIh/qaHWwW5Xi052V62VYa0TuAXEXYBqc05Acv4TeL8kIyDvQDEvaGsCWOZdvubHCHlADgHNpf5TJdWz0B', 0, 0, 0, 0, 1, 0),
(105, 1, 'cf9e99da', '2aba45d8fd04940e49d94a705741b562', 1437040027, 1437040027, 0, 15, 'user', 15, 4, 2, 3, 'status', 'owVpXDkpLsLe8n95hb9y8esNi/5eUD+/tT6BqlUGwSt+SiNCEhoChgiE9UOZoTne/zgpcAHbvBMzUlxC9+4WZ56Z9oc9Pl7p/cjQVRcocXUHjRWzepHoaWZkAn9R8Fn1', 0, 0, 0, 0, 1, 0),
(106, 1, 'c4c9e55a', '34096364f13cd8c1acf7141283cee791', 1437041259, 1437041259, 0, 15, 'user', 15, 4, 2, 3, 'status', 'QpXUIkcrXRPiNiLvNFsJFIDKnNTIpVxL27EdNguH3kU=', 0, 0, 0, 0, 0, 0),
(107, 1, '59f62f5b', 'e101a35911943b7a65774c746b1920b1', 1437041344, 1437041344, 0, 15, 'user', 15, 4, 2, 3, 'status', '0auoxc4uitk9K9vCpwEkOGD+5Z8/WDSimFcSeG7tOP140uhSbKotFqN0flNMzYVrN+OTPI8EybDuhPawMZt8Vw==', 0, 0, 0, 0, 1, 0),
(108, 1, '4a9f2541', '5af2129625ac35031223528b398aab31', 1437041566, 1437041566, 0, 15, 'user', 15, 4, 2, 3, 'status', 'HTQ21ycrdqqBd5+1NjigHsWRH1FMbwvKcNbhWnEJPew=', 0, 0, 0, 0, 1, 0),
(109, 1, '1c26cb97', 'a1adde33f7dd0ad34fa3c8e1e580bfb0', 1437042378, 1437042378, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'LA/t60xSshpBX/tdg5nev8YqdIuN5z0QKDDsLdKktAU=', 0, 0, 0, 0, 0, 0),
(110, 1, '047aedb7', '9fd3ca7491a0d72220264c846eb5f581', 1437293071, 1437293071, 0, 15, 'user', 15, 4, 2, 3, 'status', '+09L6P6FZBp/HSzNsilf90kfkQs0+eBXPYV/UXAQl3fSEX+FkM8cUrcXekqgE/8MZ2vyquxgJ48JE5dYUKm8g8XDAf42gUXW8DlMK+ccSpvdeGdJI8MEF8B2KatwDAAf', 0, 0, 0, 0, 1, 0),
(111, 1, '472967ed', '90ad77cc8b8aa2410fbcc067879af2b1', 1437294181, 1437294181, 0, 15, 'user', 15, 4, 2, 3, 'status', 'lQVvAyDjOFCgidTo+x3zGhmabhdXKJpH/SVY/QPvFaRR62xHIzWmXDos4qxtyFjU8dDwHdYWF3z7Myu7vNl/3N8lCHvtAl1CcPb/h44qbdPttN73qLKin9qz+QcaTQSk', 0, 0, 0, 0, 1, 0),
(112, 1, '7b1f2c57', 'c8ca4e8ff9bce681403230e155ad96e7', 1437639883, 1437639883, 0, 15, 'user', 15, 4, 2, 3, 'status', 'gX9ppqqWozuCMnCRvtebFPLKmkUghA7vPkIjZdKZ9SE=', 0, 0, 0, 0, 0, 0),
(113, 1, '2e2a9c62', '4f29167fd8196cb61915c765b7d58ece', 1437818619, 1437818619, 0, 15, 'user', 15, 4, 2, 3, 'status', '3MnZERkKKoITbMUOr8s83nlmxkRoZjFQpzu2MfmnASs=', 0, 0, 0, 0, 0, 0),
(114, 1, '1f2e1d4d', '033f6f13ce6119af0d7d82e651a39413', 1437818687, 1437818687, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VkYgjyAxKuBmg/4Ss1CcvXeEZnM0k0xQINDy/xJDoWc=', 0, 0, 0, 0, 0, 0),
(115, 1, 'b8951b5b', '79d1320f95f65c003e897f12bf0ec241', 1437818718, 1437818718, 0, 15, 'user', 15, 4, 2, 3, 'status', 'PXPsEt2nGyzshWNUjg62cyfmZAKkGxfvSoVVY+BOQtM=', 0, 0, 0, 0, 0, 0),
(116, 1, '6fd167e3', 'd53002ff5f18f86995c1413c604d038d', 1437818736, 1437818736, 0, 15, 'user', 15, 4, 2, 3, 'status', 'CnHvwuhTcHFLH2KPV16WL+9p/7ba8BhAINOEaEccP4Y=', 0, 0, 0, 0, 0, 0),
(117, 1, 'fc31b6a1', '3a93f8509eaa36a7dcf01b4bb049b104', 1437818764, 1437818764, 0, 15, 'user', 15, 4, 2, 3, 'status', 'GMXEILL/Rk6h6/dsPrMkU9NwS96Huc4H/TS9S0IaGUs=', 0, 0, 0, 0, 0, 0),
(118, 1, 'f2f88a93', 'de760b9ec603c61a2b51b066cfa05e98', 1437818845, 1437818845, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ESgrSpnaGaCyzdZdIrLXtlzrZrFm/cX1rxFllYWOm8c=', 0, 0, 0, 0, 0, 0),
(119, 1, '61e3f03a', '9ec2d96f51efc8d31cd219b2d7e21aef', 1437818877, 1437818877, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YNyskJjX+ZR/Cfc5uuGraG9fakiIaYtO09GZhoQ5Ml8=', 0, 0, 0, 0, 0, 0),
(120, 1, '5c35551d', '8b312e0aa1e7e71570e2e0d7b896e84b', 1437818894, 1437818894, 0, 15, 'user', 15, 4, 2, 3, 'status', 'MBAAwZoPJVjaS/OSLDP2CiQZ1gE0aUFbbFVyiR1Kfw4=', 0, 0, 0, 0, 0, 0),
(121, 1, '491958b6', 'ddffdc20dd4c0979b72830e481ec5d58', 1437818924, 1437818924, 0, 15, 'user', 15, 4, 2, 3, 'status', 'iGMp831cmXulN0ALUjd/90FD91cpOdO54YSd1HyZp3U=', 0, 0, 0, 0, 0, 0),
(122, 1, 'ef221972', '5f95ba48d15887891a762bef7a8d644b', 1437818944, 1437818944, 0, 15, 'user', 15, 4, 2, 3, 'status', '2xsI4yUxnigD+spGwpgU/r5jemUQJz4kuBuaNtKDPEg=', 0, 0, 0, 0, 0, 0),
(123, 1, 'e5ff165b', 'd3118175c17e2e24c9bda872151f8d53', 1437818970, 1437818970, 0, 15, 'user', 15, 4, 2, 3, 'status', 'LTho/4OVQwCd1RJhMSicC/3vGS6svNhsS+wd+e7pEIg=', 0, 0, 0, 0, 0, 0),
(124, 1, '1417f7c9', '2de9a3b759d06a3ff06e371cb869e800', 1437818981, 1437818981, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TVG2JCEUdEbRxMEE7rQvRevczQiwerg7oxIMvZ8XR7Y=', 0, 0, 0, 0, 0, 0),
(125, 1, '6b7693ba', 'be275ca5a6f03d5297d2abc6fb7dbba4', 1437818990, 1437818990, 0, 15, 'user', 15, 4, 2, 3, 'status', '8U5ZT3wJ+knplLo8L2HfXY0NiuYfaQeJLdOxBrBnvcM=', 0, 0, 0, 0, 0, 0),
(126, 1, 'dc8e33b8', '5999d6da12b9f4f34f631e03d8614080', 1437819002, 1437819002, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ALJWWS285ywimEZ4wzltf2zKqhU+cMt4MMFxNjxmIZo=', 0, 0, 0, 0, 0, 0),
(127, 1, 'c91358c9', 'b04e1bda1bf64f56afdfae714a9368d4', 1437819072, 1437819072, 0, 15, 'user', 15, 4, 2, 3, 'status', 'oWA7QRVT7IGGFS9WmMPRPiAGXfD4FRfU8rsuaNlgYpM=', 0, 0, 0, 0, 0, 0),
(130, 1, '0798505a', 'e859eb5c9cce17766a6dad0883cb5aed', 1437835720, 1437835720, 0, 15, 'user', 15, 4, 2, 3, 'status', 'uxoV0YXGdl7LX/NYi35d3RNIVcj2T8G1S0FwcIL5Thc=', 0, 0, 0, 0, 0, 0),
(131, 1, 'e3eaf03d', '30283ad661beb734480aed67978164ed', 1437835728, 1437835728, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WTuqK/WQ/+as5TkJThmq3USzDBiuFPgZ6lpHxRcbRIo=', 0, 0, 0, 0, 0, 0),
(132, 1, '16f5966c', '7e685bab54ffacd5bad13ae5cda95af3', 1437835895, 1437835895, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cJBAilnmD9kwESKRXKcN5kWyJ+klNwqbRR+1WyAz7N0=', 0, 0, 0, 0, 0, 0),
(133, 1, '71b64e69', 'f124ea8cdd851e6acc3e312d683cecd1', 1437836069, 1437836069, 0, 15, 'user', 15, 4, 2, 3, 'status', 'jXQiu4DCU11Gp/Ztj1LETssoTSc+GxX3DCdXTo8gdXw=', 0, 0, 0, 0, 0, 0),
(134, 1, '8abf789d', '4285cf087ede38a14e5a1be947f47e80', 1437836217, 1437836217, 0, 15, 'user', 15, 4, 2, 3, 'status', 'BPDT4Kkhgrh0c2TVCysEk/QCT6+PDcWCt0UgPBTTuE0=', 0, 0, 0, 0, 0, 0),
(135, 1, '8a766317', 'db6c7e9fdabb0d51bbe0975243f5954d', 1437836263, 1437836263, 0, 15, 'user', 15, 4, 2, 3, 'status', '50yT3SK2XbNb5sIkIv4eI7FNvRLA7XYTnbHbVx+Vs+w=', 0, 0, 0, 0, 0, 0),
(136, 1, 'a3de633b', '3b875690eb991a0ce37444bc4aa1197d', 1437836329, 1437836329, 0, 15, 'user', 15, 4, 2, 3, 'status', 'wr0pfsjUYspfmZsQLNKxJI86s5fXsx+7kdzDH5I2bek=', 0, 0, 0, 0, 0, 0),
(137, 1, 'e7aaf4d1', '1f15940ed51b59e81ed332bc8a510e42', 1437836373, 1437836373, 0, 15, 'user', 15, 4, 2, 3, 'status', 'pb+BNvn1t+EhTsqNPvaE5WrdJ7GWn++2agpZ8dMf8IA=', 0, 0, 0, 0, 0, 0),
(138, 1, '554b6fd0', '45b5f2d3135a63bc399f0b5fe4933a5b', 1437836501, 1437836501, 0, 15, 'user', 15, 4, 2, 3, 'status', 'FB8HeuLRuMvFbxLn7O53kfmC8naBI0SAKaI1aXFodHE=', 0, 0, 0, 0, 0, 0),
(139, 1, '14074951', 'f5420a2e78d6d6711a84b58d002c21d1', 1437836510, 1437836510, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Yn4K1mZqdwyOLDJVnO317VllwRZ2GSYEwblhSDvR5Cc=', 0, 0, 0, 0, 0, 0),
(140, 1, 'c83fdd74', '4f249d246ff7a8d2a606e6510f0b2a58', 1437836532, 1437836532, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Cc1BtPfdcgo/8lQmV8I2sLDzGq7CuPun2WUXILEtHY8=', 0, 0, 0, 0, 0, 0),
(141, 1, '11636063', 'c3de780036f8ee3891dd0d8d46e1ebc0', 1437836548, 1437836548, 0, 15, 'user', 15, 4, 2, 3, 'status', 'hzv97Ko7RvGhwLHz/anSTfs2W4L0YJl2XRvrK3K/37k=', 0, 0, 0, 0, 0, 0),
(142, 1, 'ae1be7bc', '5501f442c02545b73c558469506fe9ad', 1437893593, 1437893593, 0, 15, 'user', 15, 4, 2, 3, 'status', '1ZtSd+pfhjVDbYyVATUPFDW5U+5JSWK0jHYSEmz6Kn8=', 0, 0, 0, 0, 0, 0),
(143, 1, 'e6f0a9ba', '6a2190b091ebd657c9f158738d65cc21', 1437893629, 1437893629, 0, 15, 'user', 15, 4, 2, 3, 'status', 'rFhGr4bEOIpIbbgWighg9MgX2zQ6XONvqJIH2+XyxSY=', 0, 0, 0, 0, 0, 0),
(144, 1, 'ca2228eb', 'da377a92f18cd615d9d40a6a8a137388', 1437893634, 1437893634, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WIoJAbcCJcmxzKhg3C3Ib7VWdW7Sa109kPBwDEy23YA=', 0, 0, 0, 0, 0, 0),
(145, 1, '85b0dd08', '4d1beb4f223fde1c7d634805ec3cbc2a', 1437893637, 1437893637, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TzM6Z+oFMowgVBjmeG3hM//uqc5grAMSpwdixDcq8MU=', 0, 0, 0, 0, 0, 0),
(146, 1, '024948c7', '696a1c42333e9fe607f40f8e305a3bf3', 1437893771, 1437893771, 0, 15, 'user', 15, 4, 2, 3, 'status', 'AtlafjXNQ8XXYra+s4B4qjTbzpO83z75csQRWMxCsYw=', 0, 0, 1, 0, 0, 0),
(147, 1, 'b960af10', 'af26d1cfd343942cf68f071968160f36', 1438156116, 1438156116, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZtiLRvqiSa7dwRqTzfzHM8KMuIeiCClIC9gHSUN0YnQ=', 0, 0, 0, 0, 1, 0),
(149, 1, '2ab0ea16', '18f90c5444e20c5d826d09e984df598a', 1438156800, 1438156800, 0, 15, 'user', 15, 4, 2, 3, 'status', 'NDF4r8mqOAOHI8FSH2DQAk6owSxTSsJcaS4UH0/nrZ+kpt9TrLKyBDCYZrep4b7LI3mrM/e2hULp6jG1oDmLkA==', 0, 0, 0, 0, 1, 0),
(150, 1, '160138d3', '1039dd418edfb34118e37acd555fa783', 1438158478, 1438158478, 0, 15, 'user', 15, 4, 2, 3, 'status', 'KwxxloXZXNElT+6u3tPXiLJZM/Qv3unlPrp0eExMGb+wFnblVzJz9gJdSRAe/WJ5RsD+EAOlx1YK9D1lzy2Q7w==', 0, 0, 0, 0, 1, 0),
(151, 1, '12e5c313', '67f57834fed023c346819bb027abd7ce', 1438162266, 1438162266, 0, 15, 'user', 15, 4, 2, 3, 'status', 'qzqnVMIGZgHHbmRV4sB2Dqc9aRa9y5aGXMcCzvEZHVQqxSUg9e4itU/Ebx/PHW03U7AWw/wHC3mquhcf+ximqQ==', 0, 0, 0, 0, 1, 0),
(152, 1, 'f4e74ee1', '68da09c1e66b71669cfa074895269aff', 1438164638, 1438164638, 0, 15, 'user', 15, 4, 2, 3, 'status', 'G4HRs6B46KvLEpr2AVm12m+hZh//Tdto5PJKngURRK8=', 0, 0, 0, 0, 1, 0),
(153, 1, '830b0211', '99e9e53b2b7786856cd0329351b8498a', 1438165633, 1438165633, 0, 15, 'user', 15, 4, 2, 3, 'status', '07jfTQTLcuctVU9PepkFZW0kaIiqEqncvi1UJaosYAQX9MU3i09Ht2SAdym6tToWL9Qst8W/wjlmpVUypeqsiwyDTD8sfVj1t2gMdRqTBY6ZfTJ2EUW2Ft0BbQoXIHBP', 0, 0, 0, 0, 1, 0),
(154, 1, 'f537d6d0', '4199099e5268bf02751aaa821036b4b6', 1438191184, 1438191184, 0, 15, 'user', 15, 4, 2, 3, 'status', 'L66+YXZtS76d6VNuquxMSK1DFsYNiLjhmxK2d+nAwb9SupSEDkREqx0YeRupFfQ3hViV2McKHg8sB4vDWaHomQ==', 0, 0, 0, 0, 1, 0),
(155, 1, 'f1028017', '546411c58f398f2132f42d17967a7ece', 1438248135, 1438248135, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'HNqOzU3HQE/mnUNAbKQX7I4eDa+4byx7hwCglelaNgQ=', 0, 0, 0, 0, 0, 0),
(156, 1, 'b640ac72', '694e449af31d0a432d37e9727ebc65c5', 1438402832, 1438402832, 0, 15, 'user', 15, 4, 2, 3, 'status', 'DsMkqDwl2HdfG0+JNwaqzG9l3+lcfhA8Ny0nFh4Qtm4=', 0, 0, 0, 0, 1, 0),
(157, 1, '459975d3', '6dab5db4512092d45fd28287413725e4', 1438418368, 1438418368, 0, 0, 'user', 15, 4, 2, 3, 'music', 'lXQCN4G0I7Dzt3IrKiMBAtHXFLotu18LaHpEh/f/b90=', 0, 0, 0, 0, 0, 0),
(158, 1, '98d29a81', 'fb5c609cff36759b436f26cde2ed3bde', 1438419261, 1438419261, 0, 0, 'user', 15, 4, 2, 3, 'status', 'QSWsEV1/OoeQD1pxTVWyZR1oCzsx4xhjgDGLmsCVCDo=', 0, 0, 1, 1, 0, 0),
(159, 1, '08b88622', 'ae683a0f95a368261853f06bb35507e3', 1438419352, 1438419352, 0, 0, 'user', 15, 4, 2, 3, 'status', 'H93qVd1aUQSehb+l5lHS/xoffIHToKYW/uuFKVl0Te4=', 0, 1, 0, 0, 0, 0),
(160, 1, '2e950088', 'a3ababa6823cb3e1bb0b707baafbb528', 1438703685, 1438703685, 1438941806, 0, 'user', 15, 4, 2, 3, 'status', 'CwUR97/HHV07ECtpCI7EXgjYKBxtAkKu1WDIMF4Haeo=', 0, 0, 0, 0, 1, 0),
(161, 1, '1b450d6c', '2e80e57281a12f7016cee3c77a8daf7f', 1438852013, 1438852013, 0, 0, 'user', 15, 4, 2, 3, 'status', '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', 0, 0, 0, 0, 0, 0),
(166, 1, 'a13f0e62', '407f7ae36cb8d85b9114068064c86824', 1439015679, 1439015679, 0, 0, 'user', 15, 3, 3, 3, 'status', 'n4mhEnuM/d9Rw4rvlJe+SRDvvHrRFMbhxsfnK+BO6Pw=', 0, 0, 0, 0, 0, 1),
(167, 1, '91110732', '0ae6539c0916fce6e3a3c9cde52d0b62', 1439017333, 1439017333, 0, 0, 'user', 15, 3, 3, 3, 'status', 'AOLdzdKs3OMHdxzoeODncyrjv/0m+ZivQp1h8dQGvNc=', 0, 0, 0, 0, 0, 1),
(168, 1, 'fcbfd3e4', 'eaa6a71d1af01e56169e1977c89e4371', 1439017702, 1439017702, 0, 0, 'user', 15, 3, 3, 3, 'status', 'xy+1uO1T0A4tR05ChIyo4fDRXElUTWfuO7J4fS6+QvM=', 0, 0, 0, 0, 0, 1),
(169, 1, 'b127d051', '9ea42d04f371ae7308c802da5e5ee09d', 1439029481, 1439029481, 0, 0, 'user', 15, 3, 3, 3, 'status', '8hoNZspul7GkkWj83I6HO5YRkQjPmN6R8YUz+DMwiCQ=', 0, 0, 0, 0, 0, 1),
(170, 1, '8b697bf5', '8e04b996a38e717839130948b66ddc9e', 1439207517, 1439207517, 1439207517, 0, 'user', 15, 4, 2, 3, 'status', 'YxAcRAmXSjj5SV6aTHWgnFZDqccXLQjIAJCu5VKAt3M=', 1, 1, 1, 1, 0, 0),
(171, 1, 'ae54a948', '2e6326851ad22381a5f1ec2d048d49dd', 1439213182, 1439213182, 0, 0, 'user', 15, 4, 2, 3, 'status', 'QWolqX21VcYGx13O0LjWzvd2bUguHAeCkRxZx5AZAGE=', 0, 1, 0, 0, 0, 0),
(172, 1, 'bb79b195', '2b4910a504457dd29a9cdb64e20200e1', 1439213219, 1439213219, 0, 0, 'user', 15, 4, 2, 3, 'status', 'bz1JZUzBaGVoqttUVUQ5GwbHDtC5NGEk6vGK75tXMQw=', 0, 1, 0, 0, 0, 0),
(173, 1, '734af544', 'cfb33ec04e810750d2d4534b3eded6b1', 1439329784, 1439329784, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'IDqkmtvm/YNP1xYm7zqukxSharKM8opRU/0xj0QahTk=', 0, 0, 0, 0, 0, 0),
(174, 1, '1bf31430', '9667c1d6f1066b38a7d1925c02fb4e8d', 1439331251, 1439331251, 0, 0, 'user', 15, 4, 2, 3, 'videos', 'nRV+52QKr1gYyVfxXLMS+99OYptR6AQeOslhDhDHc70=', 0, 0, 0, 0, 0, 0),
(175, 1, 'd8ccb68c', '5f127b4cc8e07a2aeeec02a07d6a0564', 1439333782, 1439333782, 0, 0, 'user', 15, 4, 2, 3, 'videos', 'A9dWSAZfrAGbokYMslZCmvm3PZgXJEnEzq62wtVS8X8=', 0, 0, 0, 0, 0, 0),
(176, 1, '3e18f8c1', '26e13640bacc6b0f2dd666646b4d3994', 1439334534, 1439334534, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'oJkbUkTqvciKaNswSx2KYGPTb0RDOlxOTosBPIEdqTQ=', 0, 0, 0, 0, 0, 0),
(177, 1, '522689cf', 'a638579c52fb398bcaa14f8db03daba1', 1439334554, 1439334554, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'teHUWJzWA1/xrCl5CIMp2fFyh/LNuSqI8NzpXK2s3pE=', 0, 0, 0, 0, 0, 0),
(178, 1, '7d40398f', '26b4476781edfacdcdea1fedd4464820', 1439334772, 1439334772, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'nktJSVaiLVOj0lUb1EQ1qowH/Qh5wkWXQbZ4fR0KwwQ=', 0, 0, 0, 0, 0, 0),
(179, 1, '65245dc9', '5de9cdffc65b600fd725b74b1c15f3c0', 1439334878, 1439334878, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'hHkAwsCWJo+bvRfRhb+sPDVVAS0Rz68APqijPhumx6c=', 0, 0, 0, 0, 0, 0),
(180, 1, 'ce7baa4c', '17ac295ebeff353097bf3223426cb9ae', 1439334919, 1439334919, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'KU+1KLqHZGH6M0OLR1kt7ccFaVy0NKxeSNWp4xbU8ME=', 0, 0, 0, 0, 0, 0),
(181, 1, 'd572abf7', '0a3754a1fdad6ad3e7ba0faf6fb9763d', 1439335038, 1439335038, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'uEgrvabOiEHFhVw2ZWNPZM1da5/ppO6mp6WsyEDvi4g=', 0, 0, 0, 0, 0, 0),
(184, 1, '18dc8d96', 'aa2f19bcf7fcbe45f3fdce5e5a22e1f1', 1439582165, 1439582165, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'L/z3GC8G8a80J3V0cKrNE9m+QxrEt68hjDdQR7DD4OE=', 0, 0, 0, 0, 0, 0),
(185, 1, 'd0f92282', '7972a05d2a51b5b1aff6e4668b39cb31', 1439589963, 1439589963, 0, 0, 'user', 15, 4, 2, 3, 'videos', 'jF7whx/BaYv6Ta5vkeaVGKzHYqtGkCyfDT0zcUpxXCA=', 0, 0, 0, 0, 0, 0),
(186, 1, 'c9ca1303', 'e7eff59589ae03134292bbd9d9bbeac6', 1439591053, 1439591053, 0, 0, 'user', 15, 4, 2, 3, 'music', 'TRHJoUqlRAO/v9Mo+/nMXR6IIOXozzxVOg+rhP71Dfc=', 0, 0, 0, 0, 0, 0),
(187, 1, '511ece11', '33f2384cf21cc764c95f124ea107b466', 1439591125, 1439591125, 0, 0, 'user', 15, 4, 2, 3, 'photos', '46vFJpjFlnkP4ZkqfRXpS2q0/kPB6jlT1AzSOYSiUok=', 0, 0, 0, 0, 0, 0),
(188, 1, '12b2018c', '4951713bc2b6821a35d45e3c5c8aa0bc', 1439623178, 1439623178, 0, 0, 'user', 15, 4, 2, 3, 'photos', 'QTY0zpSvy8m53fx40tHyy/tOoWjxUssxfBxd61wg2aM=', 0, 0, 0, 0, 0, 0),
(189, 1, '1fe9458d', '1502d6fd994b7cce49f47a1a43fd47de', 1439623402, 1439623402, 0, 0, 'user', 15, 4, 2, 3, 'music', 'WXEW+ng8TskYLqSTnWHFEGrb5lrUWYKpsVHbQcHIemg=', 0, 0, 0, 0, 0, 0),
(190, 1, '128707fd', '6c5b05a9a613ee97d0d5c3079b47cf2e', 1439624121, 1439624121, 0, 0, 'user', 15, 4, 2, 3, 'music', '2joIdppKUNovc07y6rwQC6gYStRA4fjkBYMN3REMJGs=', 0, 0, 0, 0, 0, 0),
(191, 1, 'bf93447f', 'eda66e268516b17f197fbe544edb956a', 1439624131, 1439624131, 0, 0, 'user', 15, 4, 2, 3, 'music', 'McG4xaFnMMy/mukOGecxTltDap9kAaMGaiwLYlnLoY8=', 0, 0, 0, 0, 0, 0),
(192, 1, '0a3d7c9b', '36048a3553a4f905eba69c095779b1aa', 1439624192, 1439624192, 0, 15, 'user', 15, 4, 2, 3, 'music', 'ycLFhm9mkxPPxHRxyk8br+b1sjy85E9C/YV2LUV3cT4=', 0, 0, 0, 0, 0, 0),
(193, 1, 'e62f23f3', 'fe721f66d7acfaa84d1800fd992adb21', 1439624267, 1439624267, 0, 15, 'user', 15, 4, 2, 3, 'music', 'uHy4VF6chAnOKGjCQdfoTUBv2b14Zr7pg3TsIM/3i0g=', 0, 0, 0, 0, 0, 0),
(194, 1, '68e3f812', '787b3a12d9bf227797842370974861dc', 1439624337, 1439624337, 0, 15, 'user', 15, 4, 2, 3, 'music', 'oon8/G4cXylcNYgCNOxuxIxuHoGsSISWvIEtQH91ygs=', 0, 0, 0, 0, 0, 0),
(195, 1, 'e71ad914', 'd5d5c59e8d13d6652fa9970d5d27823e', 1439624402, 1439624402, 0, 15, 'user', 15, 4, 2, 3, 'music', 'X4gGCpzxsYOXT71TCECH1XKsGV8kmpHz4FL5c4Mlxzw=', 0, 0, 0, 0, 0, 0),
(196, 1, '7951e081', 'ec41481a21788ae4842851914b93531c', 1439624437, 1439624437, 0, 15, 'user', 15, 4, 2, 3, 'music', 'rMWXXIaEflK7q918wtNv//XEYPxSl+LkTIVWxtBwY84=', 0, 0, 0, 0, 0, 0),
(197, 1, '477861f4', 'e70aeeb480744cf8c9a58df7c3c24d3e', 1439624518, 1439624518, 0, 15, 'user', 15, 4, 2, 3, 'music', 'EEUb27Km56o3VmHezWTYAbrwW19fT8E0x3H5bi1fj18=', 0, 0, 0, 0, 0, 0),
(198, 1, '53b3a7f1', '7974e1cf3b2f6b86a711c47fdf6622b2', 1439624633, 1439624633, 0, 15, 'user', 15, 4, 2, 3, 'music', 'eLqX3foBe1WmmbQ+oT6kdp583jQQpeYNQFHCKtFM9Z4=', 0, 0, 0, 0, 0, 0),
(199, 1, '7d49e3a2', '4ff428859f83c90e9421f523317afa72', 1439624774, 1439624774, 0, 15, 'user', 15, 4, 2, 3, 'music', 'dXABlCNDwzUcGiKLjGS5iEWXgYP6yqHmo7E6iBS5/WQ=', 0, 0, 0, 0, 0, 0),
(200, 1, '7d1a2d95', '5e3f71054a45cd387b7163343a276bde', 1439624819, 1439624819, 0, 15, 'user', 15, 4, 2, 3, 'music', 'PWKZI8fQsBCP+uu56HxCk6ujpuxORuXnFh5KAYMY4Ow=', 0, 0, 0, 0, 0, 0),
(201, 1, '19eaf584', '360f5a241871c128f81794311d6bc0f6', 1439624981, 1439624981, 0, 15, 'user', 15, 4, 2, 3, 'music', '4b06BifD4WnoyKL+DiGrmte8ECnk5TmYQr6wDuBu8oE=', 0, 0, 0, 0, 0, 0),
(202, 1, '2045d2d2', '3e4656d40373cd71499122aacc872632', 1439625057, 1439625057, 0, 15, 'user', 15, 4, 2, 3, 'music', 'cQat0DFYV7o54Y91wTbxPtVP24r+FwDvh9l2+7UxUuQ=', 0, 0, 0, 0, 0, 0),
(203, 1, 'bdadec99', '21d2349c188d9c012a614b4546265f43', 1439625153, 1439625153, 0, 15, 'user', 15, 4, 2, 3, 'music', 'SDmQk7k6EVY48aYHQ+RXWblQo2nCBaJ5rd/rL9dm3q8=', 0, 0, 0, 0, 0, 0),
(204, 1, '08d2c0f2', '25180151e3b5157bdd365c8d3acd57cc', 1439625187, 1439625187, 0, 15, 'user', 15, 4, 2, 3, 'music', '2C4YmChdYNse31BxywZKBnjwsKHyv6JHlZEwRR+aTPY=', 0, 0, 0, 0, 0, 0),
(205, 1, '659ead0f', 'da8da640b46944b202c3b58c244ddb55', 1439625210, 1439625210, 0, 15, 'user', 15, 4, 2, 3, 'music', 'tpNIOC/uso3TkCxr5qTaJKHRfF4HKx7+v6zID/44v14=', 0, 0, 0, 0, 0, 0),
(206, 1, '2a071b02', '6c4248fd8576fd27f2ca9243a8c1f456', 1439625254, 1439625254, 0, 15, 'user', 15, 4, 2, 3, 'music', '8nf91heyoZgNnNM5EUcLpFjp91WHmkLoDnoOsOECwPw=', 0, 0, 0, 0, 0, 0),
(207, 1, '5ea1d9a7', '88be01cc6428e641378c30983eebc172', 1439625407, 1439625407, 0, 15, 'user', 15, 4, 2, 3, 'music', 'Ssyjdc+4TGTyh9QaHQKrB7+1FXPTxW3djXNnKGV7fW8=', 0, 0, 0, 0, 0, 0),
(208, 1, '03d5484d', '5d29040841050fdf20c24934df45f9ab', 1439625480, 1439625480, 0, 15, 'user', 15, 4, 2, 3, 'music', 'S+SSU4Ex0CoucfNcbdWiEBt84ORo1R76pp/QIWs4E8U=', 0, 0, 0, 0, 0, 0),
(209, 1, 'a098009c', '9ee4ad72627df4e9df456dd56d325703', 1439625710, 1439625710, 0, 15, 'user', 15, 4, 2, 3, 'music', 'RT4mPkdI0vTs4vrRuiEz+7Xdr3jvu0NhvRRbs7kp8To=', 0, 0, 0, 0, 0, 0),
(210, 1, '3e3efd4f', '5c2a7bd5160f49144cbe40451365c62a', 1439625816, 1439625816, 0, 15, 'user', 15, 4, 2, 3, 'music', 'gr53SaqH6mlCr9l0scTZqLV6ADCHuZ/qIBkBprLr8kQ=', 0, 0, 0, 0, 0, 0),
(211, 1, '351cf7af', '6e95a8624b19dab7cbbd6533a42338b0', 1439625896, 1439625896, 0, 15, 'user', 15, 4, 2, 3, 'music', 'pvisJ9ciFC2864PHenFsTsCxCH3oGiJ4j2Tu+qju1bU=', 0, 0, 0, 0, 0, 0),
(212, 1, '1548acff', '49a85caceda862876757c8260453646b', 1439625945, 1439625945, 0, 15, 'user', 15, 4, 2, 3, 'music', 'LO8kT71xp8Aof2KBsJPoCYoCkJwhZOw+UPIaspwLO4k=', 0, 0, 0, 0, 0, 0),
(213, 1, '4ff91790', 'cd09bc107308cba1224aae9d7ee61883', 1439626013, 1439626013, 0, 15, 'user', 15, 4, 2, 3, 'music', 'g8WaOV4r6KY4OwWfDFRJTisYPcOn7StHI5DTBAOM+C0=', 0, 0, 0, 0, 0, 0),
(214, 1, 'b86e2180', 'caa7929325eab7cb8f87c7582410002a', 1439626115, 1439626115, 0, 15, 'user', 15, 4, 2, 3, 'music', 'HE5Es22MjfwGNEV812+PBKlPiIh4uAz/+2GnPOQgRLk=', 0, 0, 0, 0, 0, 0),
(215, 1, '6a6bb212', '5b6e8b2309e7b2a39518b08db46f0b27', 1439626177, 1439626177, 0, 15, 'user', 15, 4, 2, 3, 'music', 'EhDE2QT88Y/PakbzLYzbJnmraZlStBK5JuTA5id76Zo=', 0, 0, 0, 0, 0, 0),
(216, 1, '06149c7b', '7c90b6d76dc0606c7dad2feddbbcdfaa', 1439626267, 1439626267, 0, 15, 'user', 15, 4, 2, 3, 'music', 'TNzUS1292z52NvCY1c9hix7zNSVaBeaiKN0iDkRwuYQ=', 0, 0, 0, 0, 0, 0),
(217, 1, '4fdd102d', 'd3ad0b56eff487fd8284410076de4dff', 1439626391, 1439626391, 0, 15, 'user', 15, 4, 2, 3, 'music', 'ay6F4j4jkpC+1CXAvbWOt8vlAfywgUJJ0MWndxWZKxw=', 0, 0, 0, 0, 0, 0),
(218, 1, '2c5aa133', '85587427aa5921cb3a4e165905da83de', 1439627297, 1439627297, 0, 15, 'user', 15, 4, 2, 3, 'videos', '6MuDXTXVrZYBpkRfM2vDWE7OHJhCyGpWOdO1g5pqtvA=', 0, 0, 0, 0, 0, 0),
(219, 1, '6e9ce35e', '58b665536c41b91b03f58f070952d09d', 1439631890, 1439631890, 0, 15, 'user', 15, 4, 2, 3, 'music', '4qmvHGaheXDegBd0eEM94w8V3yQ5Xw9yUhM3I3PSaHk=', 0, 0, 0, 0, 0, 0),
(220, 1, 'fbd529a0', '70847b90ff3ea5df4bd42b71171cae1e', 1439632015, 1439632015, 0, 15, 'user', 15, 4, 2, 3, 'music', 'Ndp6hSdJ32zeOaZQuK2yP/e4ZGrMWCm/TFqdDaaULUE=', 0, 0, 0, 0, 0, 0),
(221, 1, 'def03801', 'ddb750817a7887ca21fe061af67cc531', 1439632428, 1439632428, 0, 15, 'user', 15, 4, 2, 3, 'music', 'z1J0Gm46bS+3gt1A9DQeFqk8oUIAHi8KsoJSGsw9/Y4=', 0, 0, 0, 0, 0, 0),
(222, 1, 'acf8eb44', '773a1fa831de488691dc72e753ab4b19', 1439632653, 1439632653, 0, 15, 'user', 15, 4, 2, 3, 'music', 'uj+M+rIjq1rkWm306qGnbvym/S18/d3LK88mhAaajbQ=', 0, 0, 0, 0, 0, 0),
(223, 1, '593a11e7', 'e15a2ebcefa7177485d92896b7f2706f', 1439633159, 1439633159, 0, 15, 'user', 15, 4, 2, 3, 'music', 'jm8nd5iEwfZr+zB4RQERaGBrwR46jMgqn8lSMpbuBk0=', 0, 0, 0, 0, 0, 0),
(224, 1, '66513d4c', 'b42b981ddbb56ba96f64bfee5384533c', 1439633282, 1439633282, 0, 15, 'user', 15, 4, 2, 3, 'music', 'e5CeEGmx1xvkCcngbOFsLkbpQ4XKKDhNrn/tyJHBU8Y=', 0, 0, 0, 0, 0, 0),
(225, 1, 'c7f9cf2e', '1621249e50d1c497b8fc9aca40dd465a', 1439633373, 1439633373, 0, 15, 'user', 15, 4, 2, 3, 'music', 'KGnVAmYOOszKmIGdXVHOaWgT0ITE0QQk9pIojuwX8Bs=', 0, 0, 0, 0, 0, 0),
(226, 1, 'b66f5a42', '2a245e89b8cb9c5c5cc8fcab25989fe2', 1439634358, 1439634358, 0, 15, 'user', 15, 4, 2, 3, 'music', '0ZCD6jdXwQ05kdYym5RPHYOWzNJG4IKjtY7QpSEXUSU=', 0, 0, 0, 0, 0, 0),
(227, 1, '80983d77', 'f04b147c11001af7c7a3705fdcee8649', 1439634511, 1439634511, 0, 15, 'user', 15, 4, 2, 3, 'music', 'rGwVUHpsBX+/2+DFLBHJeGCHNRpcHoBAwdLsRRwjHZk=', 0, 0, 0, 0, 0, 0),
(228, 1, '578ea625', '72e101a6187b77d38178e617c38292be', 1439634655, 1439634655, 0, 15, 'user', 15, 4, 2, 3, 'music', 'dV3OiNuzN9wU78j4zLJVs7HlCq9l8Pq0M8pLc1nBoHI=', 0, 0, 0, 0, 0, 0),
(229, 1, 'd27785dc', 'b80178618352e01d19425e06bd12c8ae', 1439634835, 1439634835, 0, 15, 'user', 15, 4, 2, 3, 'music', 'XbzIX/Z1YS2xuShEleIt6veMJg7A6UFVjroJxf0iuOU=', 0, 0, 0, 0, 0, 0),
(230, 1, 'a5077562', '6b7bf25e62accd61090d04c660c849ac', 1439634891, 1439634891, 0, 15, 'user', 15, 4, 2, 3, 'music', 'LW2EkxGob3Z1SLHyJqzYERjW0+RZRk0UPxVWI4klDpg=', 0, 0, 0, 0, 0, 0),
(231, 1, '9de462d6', '7d0f5b80fed0687bb2619140b4e69390', 1439635027, 1439635027, 0, 15, 'user', 15, 4, 2, 3, 'music', '3TEXlIjaHN63sPfMcDU6/nPuBZG/927xJgK9X+61dD4=', 0, 0, 0, 0, 0, 0),
(232, 1, 'fefadca6', '84e24a11906a074dfab650e344b9e92c', 1439635072, 1439635072, 0, 15, 'user', 15, 4, 2, 3, 'music', 'S5YRCOR9wQsLZ3SWjK2zWJej2WTTUjbd9o2f1tcYBsg=', 0, 0, 0, 0, 0, 0),
(233, 1, 'caf1276e', 'd40c5572dba263e33f105b4cf7abe1cb', 1439635281, 1439635281, 0, 15, 'user', 15, 4, 2, 3, 'music', 'tmZD0ddyuaHYf+Rc/wljfDPB4Z+pCt++J7Ibm9w31M4=', 0, 0, 0, 0, 0, 0),
(234, 1, 'b1a2f0a1', '67c45c06d608fbeb0eb68e9ac9464657', 1439635355, 1439635355, 0, 15, 'user', 15, 4, 2, 3, 'music', 'CT/MXC1cq+3vMA8/K2XbnH9rhryz+YlvAN+eWPogGmg=', 0, 0, 0, 0, 0, 0),
(235, 1, '14399d25', 'f99194def91957f7a4d45634c9410d22', 1439635442, 1439635442, 0, 15, 'user', 15, 4, 2, 3, 'music', 'LNWh8mAsUe+ACP+fd6c3UvIyt6pZ7xtR8ZeX+eOHfxg=', 0, 0, 0, 0, 0, 0),
(236, 1, '468aca64', '1e86520d64fc700a6d94d4447e3103f3', 1439635553, 1439635553, 0, 15, 'user', 15, 4, 2, 3, 'music', 'qkcxOGpbYRNbNqOfINV37P6WMNpzHnyW+ZPJvcpC6Yo=', 0, 0, 0, 0, 0, 0),
(237, 1, '587f891f', 'ea97e465eaadc334e2ef6efa07e50894', 1439635610, 1439635610, 0, 15, 'user', 15, 4, 2, 3, 'music', 'jH0/r5w0JCUHnZY7EzXFgC7X6CKN1VZtDDy6KSnJhls=', 0, 0, 0, 0, 0, 0),
(238, 1, '31f73908', '86b8eef16f6aac7dbaace0bb7e98f8eb', 1439635867, 1439635867, 0, 15, 'user', 15, 4, 2, 3, 'videos', '7/Mz7DX4yywJdcjU6SLhrRevO7ymFacq5S+evpz3gHo=', 0, 0, 0, 0, 0, 0),
(239, 1, '3569cae8', '3b2aa5690a9c808c3805a06b0460fd48', 1439637089, 1439637089, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'Ist7m0coHeKy/dfdZIR4QyS5W3aZV2LXfjum58fk7eY=', 0, 0, 0, 0, 0, 0),
(240, 1, 'c8659cdb', '51821e9e044e773a499e93808b4c23bb', 1439637318, 1439637318, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'u5LAB0YtsBDCxkPiO690pUdmPnbGRXwxW6l/vv9ldxA=', 0, 0, 0, 0, 0, 0),
(241, 1, '32fa7b07', '6b003a293255d3440583fc51b4eef0c2', 1439637452, 1439637452, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'ChxNKKiIQPuUFJ0InuxMqMS0jKDMuW++A7fwVm6yutA=', 0, 0, 0, 0, 0, 0),
(242, 1, 'abad252c', '20822fead94dcd5d72347e902968d9be', 1439637939, 1439637939, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'IMQGpCkV1HhLCRMS35Ha6eJLEvISODo1QNpcvMjrz5s=', 0, 0, 0, 0, 0, 0),
(243, 1, '178fd915', '6699c3b4365a8cd148fa13780a61e8e3', 1439637979, 1439637979, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'ah04Us/KaeKU1O4y9NYdeDNXMGIaUx78/lbecqCp/Xw=', 0, 0, 0, 0, 0, 0),
(244, 1, 'b78309fe', 'b7def70928765af434572ae251ba31d4', 1439638056, 1439638056, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'W1id90StPeX8aDZwVH+By37aHE85PzeeQBftPkJHLiQ=', 0, 0, 0, 0, 0, 0),
(245, 1, '99cbbabb', 'b59c5e7df1b03b3fafb5ad6173807e31', 1439638154, 1439638154, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'VyQleEAlL/kBlKfDFmNzeHNT8BuZvu19y9aekfpj3dQ=', 0, 0, 0, 0, 0, 0),
(246, 1, 'c54d2087', '0e94156ee8c8cee3b09ae8431674a406', 1439638865, 1439638865, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'UmIys0ta3iMSS5CfgMiv0+Kn0nRibNmwm5EKzcUnCyI=', 0, 0, 0, 0, 0, 0),
(247, 1, '762e8ff6', '42fd7bd899fe9cfe8738c7fa2615539c', 1439639718, 1439639718, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'XGLeWmV37j82eWv8O3VADmSRnSx/ScaUMja8D67cLBI=', 0, 0, 0, 0, 0, 0),
(248, 1, '9c7f89ef', '04baf5b4a4fc8188723283e273e6bb04', 1439640257, 1439640257, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'EPos85iblLBRIssjmygDY321gfeIvBJ3JF6onn6wX6c=', 0, 0, 0, 0, 0, 0),
(249, 1, '83705f45', '17d335ed5860337a4779f303a06193f9', 1439640440, 1439640440, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'lR1fOloPU5A+vqd4MWNrKzUHEKz3Es2HAs1VxIkJrZw=', 0, 0, 0, 0, 0, 0),
(250, 1, '6a6cb2ad', '723a702cf92408617abce37669d41e13', 1439640504, 1439640504, 0, 15, 'user', 15, 4, 2, 3, 'videos', '9VIubRUiFHvU05fYkhfpQ2JdWYhDsTxAxoSy7p8+7MY=', 0, 0, 0, 0, 0, 0),
(251, 1, '3ffc1e26', '8b15ade3c3b525b62930b3ed3128514c', 1439640857, 1439640857, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'ulZUA1yUc9yYS0/T/NLKZwpDf4CaFIXdJIgGjbwy/TU=', 0, 0, 0, 0, 0, 0),
(252, 1, 'a2edb7e0', 'f8d440597d2c02bd83e6ea20f33c0c4e', 1439670839, 1439670839, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'I4MJrerOmDwITTBqMW/7sTEFE1OBcGpZnDS6ZkcU6w4=', 0, 0, 0, 0, 0, 0),
(253, 1, 'c1425be7', '9533f9f97a54e9732e9c16aed8b19ca6', 1439671700, 1439671700, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'MZYxCmHmhrDGAds8SjJIoO6j2WBIMyCjDafzdq2EIXs=', 0, 0, 0, 0, 0, 0),
(254, 1, 'd327033a', '1054295ae646117ea95e8390ac27dc39', 1439671846, 1439671846, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'w7YbI30cLWbRXS3zJW3j/Mat1f7crJbzWAYQsYy4hm4=', 0, 0, 0, 0, 0, 0),
(255, 1, 'ec71145c', '2d699b6828b6f8066208194cc089ccba', 1439671906, 1439671906, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'e9H9WNv6Hg8YDk6Z9VgtbWxtaVs++f++E02XzV72rug=', 0, 0, 0, 0, 0, 0),
(256, 1, '26512e22', '351ff82483245d93e2a2dbe117015098', 1439672191, 1439672191, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'R9jAuteAVtna85zkTvozedxcpkTq3UDHPqg0sNTljvc=', 0, 0, 0, 0, 0, 0),
(257, 1, '006f96d2', '1dbe4e876a1a8e60095e0702313a1a6d', 1439672265, 1439672265, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'qT6YaR9Hm2rXTfp+MUsmZcZZG+LP+Q63jI+jle70W6M=', 0, 0, 0, 0, 0, 0),
(258, 1, '75752f38', '868859bbeee12716b9879a9aae9f6926', 1439672355, 1439672355, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'R1sX+UFbq2kzMEWZoOmctPHyQtBZyxdgh5IM+G1k5Fk=', 0, 0, 0, 0, 0, 0),
(259, 1, '29f54de9', '4f08dd099ffacfef7e9be52c6884014d', 1439672550, 1439672550, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'B2Bs4XREMbj8Q76vZX5vMRFh6wlyKjVajmKgt6GzuW8=', 0, 0, 0, 0, 0, 0),
(260, 1, 'ac689016', '57e312adb173a0c91682b9f08b555dcc', 1439675020, 1439675020, 0, 15, 'user', 15, 4, 2, 3, 'music', 'cYKUbh9IjJfKfGAEsGsh8lAOeb4OAHpwyLNkKQC4tAw=', 0, 0, 0, 0, 0, 0),
(261, 1, '9816e34e', '92c6a5ff6fd5b76a4dddca29df57a3d0', 1439689195, 1439689195, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'x4xWiCU0LFfR3SzZlyV3qyrqyiYLuljLrJxZUdPox+w=', 0, 0, 0, 0, 0, 0),
(262, 1, 'a9603fbd', '9e6f110ad0fd7e4b64e4c734c458ea25', 1439689479, 1439689479, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'yJfxKOw6rCIzCmwAAmL0nkxo5X+esYPtolqzrm5Hnlw=', 0, 0, 0, 0, 0, 0),
(263, 1, '9b179c94', 'ca72c41adf53d283f3d2ca47491a119b', 1439689629, 1439689629, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'y/QxUApeCAeTGCwE7tu+iWGlwihcW7hvXY72sufAldM=', 0, 0, 0, 0, 0, 0),
(264, 1, '22487ea6', 'c3cef29c9d1db9884986f6511f031449', 1439689913, 1439689913, 0, 15, 'user', 15, 4, 2, 3, 'videos', '3yOkofFw/B2L3LrpPpt+nhO66h6m8Tz1HjCZCk7bG6M=', 0, 0, 0, 0, 0, 0),
(265, 1, '2e16493c', 'ee078dccea4badc5cc08612c69f3128f', 1439689991, 1439689991, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'A6n1HcEFjEU80jR+tdtlp1rVCEmTHeLLrSclQYUc2y4=', 0, 0, 0, 0, 0, 0),
(266, 1, 'c4229757', '13dc696df6d6b0ca39b04938c750a00d', 1439690662, 1439690662, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'lIPq4V0Q2E5wg66QKYrLHunQZAT4vmWOy3VhHXR9JOs=', 0, 0, 0, 0, 0, 0),
(267, 1, '3bdc91dd', '52096ba0a445a0eb05e434b589fc4046', 1439765343, 1439765343, 0, 15, 'user', 15, 4, 2, 3, 'music', 'yc8M+CKhw5xFlDOF3EndUCW3jgi/dvvud/CxZjvnqjE=', 0, 0, 0, 0, 0, 0),
(268, 1, '9fc32c10', 'e2f7824f278478c226e563f27b3c7908', 1439766092, 1439766092, 0, 15, 'user', 15, 4, 2, 3, 'music', 'z0vur6OqRRqV6Xmi3G2HeIuOafPGBAQtrOagqCx5SJQ=', 0, 0, 0, 0, 0, 0),
(269, 1, '93c5cf98', '9cb61a6b96754cc0cb68b690a1b12205', 1439767097, 1439767097, 0, 15, 'user', 15, 4, 2, 3, 'music', 'PZE9aAwYqbrAg5azOVuxKl12LKP5zNUTClx2wKaQt6Q=', 0, 0, 0, 0, 0, 0),
(270, 1, '51382574', 'cd2455b189e0292ebe2e84ea81e8eb2a', 1439799392, 1439799392, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'jSQLSLBbNQyUMMncyz3SNMuquqc04z0CpjHIJGidgU4=', 0, 0, 0, 0, 0, 0),
(271, 1, 'f176598a', '167869eb2d88cc886c55d68f13e04cf3', 1439879742, 1439879742, 1439936735, 15, 'user', 15, 1, 2, 3, 'photos', 'Lj+Kodm7D+JxlwAP+eX2SYqPi0zrahfpeov0OI3gQn4QOq4k0HCnfdnDvV6JlAKFmEi8aoSW0sCUkOTUWVgkbw==', 0, 0, 0, 0, 0, 0),
(272, 1, '8e31ae8c', 'aeb9b4b3a96ce5a48b17bbb669fee218', 1440495140, 1440495140, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'ZkYeDch9oOUwyKiAfgQ2pubkp5joYnSrnzyM3g6UwI0=', 0, 0, 0, 0, 0, 0),
(273, 1, '54cf2d53', 'f17545f308652cfbc913c7e86851f92e', 1440511844, 1440511844, 0, 15, 'user', 15, 4, 2, 3, 'photos', 'K8mZ4z3DXO5p8l9MPhYl2nVENkEX3uPnF+ZlUB4AIb8=', 0, 0, 0, 0, 0, 0),
(276, 1, '36cfddc1', '48b3c9cd35c160970e40d94056f8674a', 1440738717, 1440738717, 0, 15, 'user', 15, 4, 2, 3, 'status', 'rwudO/rnHk3Ho0lkhAtL0eC6NeUc5dmB6f14IKV9jexCeJxos2sPNv7jR24L9U7QzM8VhVHxWqveM8L8TFGuUw==', 0, 0, 0, 0, 1, 0),
(277, 1, '54cb65d3', '87bc75e3864d128534fae16452503be1', 1440749082, 1440749082, 0, 15, 'user', 15, 4, 2, 3, 'status', 'hjM6INB2D8ctpEXwxga26lLH9Gf7kbaDxpd/PZsldlo=', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_actions`
--

CREATE TABLE IF NOT EXISTS `status_actions` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_actions`
--

INSERT INTO `status_actions` (`id`, `status.id`, `time`, `guy.type`, `guy.id`, `type`) VALUES
(1, 1, 1, '1', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `status_block`
--

CREATE TABLE IF NOT EXISTS `status_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `author` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_cited`
--

CREATE TABLE IF NOT EXISTS `status_cited` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `cited.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_comment`
--

CREATE TABLE IF NOT EXISTS `status_comment` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) DEFAULT NULL,
  `inside.id` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '3432b3b1', '13a9e7710987c8f7d83d02a2d923892c', 1439303974, 'status', 172, 15, 'user', 15, 0, '/brox2R4pVsQA0oK4YA3e5CW4VAtkXU2b47EO/87Ihg=', ''),
(2, 'e26d5d3a', '179e4a273c92999130aa1ab429681e58', 1439305390, 'comment', 1, 15, 'user', 15, 0, 'x2TPI4ypBVGAJPGcVNrj2sZzoPmkTQx3ooWWFGdNlcc=', ''),
(3, '582fa4af', 'a1d04d7c3c9d46fef476584406c6016a', 1439977758, 'status', 271, 15, 'user', 15, 0, 'y789jVwUszi/FqXTUJVrNWpX3dUdWa+Q0ylzmXkNYHQ=', ''),
(4, '0e032545', '5da2b6399e4f410cca3a56180ec2219f', 1439977766, 'status', 271, 15, 'user', 15, 0, 'gMbuu51hfjy86WUJ0k9qu79iD98OM4YlA473U4UVSGE=', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_comment_favorite`
--

CREATE TABLE IF NOT EXISTS `status_comment_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comment.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_edit`
--

CREATE TABLE IF NOT EXISTS `status_edit` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_edit`
--

INSERT INTO `status_edit` (`id`, `status.id`, `time`, `content`) VALUES
(1, 160, 1438703685, '1438703685'),
(2, 160, 1438703685, '1438703685'),
(3, 271, 1439879742, '1439879742'),
(4, 271, 1439879742, '1439879742');

-- --------------------------------------------------------

--
-- Table structure for table `status_favorite`
--

CREATE TABLE IF NOT EXISTS `status_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES
(4, 1437835772, 131, 15, 'user'),
(6, 1437835779, 130, 15, 'user'),
(13, 1437836224, 134, 15, 'user'),
(14, 1437836268, 135, 15, 'user'),
(16, 1437836380, 137, 15, 'user'),
(17, 1438266486, 155, 15, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(15, 1433581761, 15, 'user', 15),
(16, 1433745199, 16, 'user', 15),
(17, 1433753223, 17, 'user', 15),
(18, 1434092540, 18, 'user', 16),
(26, 1434097305, 26, 'user', 15),
(27, 1434097410, 27, 'user', 15),
(28, 1434097810, 28, 'user', 15),
(29, 1434098084, 29, 'user', 15),
(30, 1434098822, 30, 'user', 15),
(42, 1434100458, 42, 'user', 16),
(47, 1434700812, 47, 'user', 15),
(49, 1434701058, 49, 'user', 15),
(50, 1434778944, 50, 'user', 15),
(51, 1434779051, 51, 'user', 15),
(52, 1434787496, 52, 'user', 15),
(53, 1434787533, 53, 'user', 15),
(54, 1434788628, 54, 'user', 15),
(55, 1434788778, 55, 'user', 15),
(56, 1434788835, 56, 'user', 15),
(57, 1434788949, 57, 'user', 15),
(58, 1434789020, 58, 'user', 15),
(59, 1434789130, 59, 'user', 15),
(60, 1434789174, 60, 'user', 15),
(61, 1434987597, 61, 'user', 15),
(62, 1434987761, 62, 'user', 15),
(63, 1435048620, 63, 'user', 15),
(64, 1435048699, 64, 'user', 15),
(65, 1435048714, 65, 'user', 15),
(66, 1435306006, 66, 'user', 15),
(67, 1435405192, 67, 'user', 15),
(68, 1435409271, 69, 'user', 15),
(69, 1435409420, 71, 'user', 15),
(70, 1435409444, 72, 'user', 15),
(71, 1435410307, 73, 'user', 15),
(72, 1435478658, 74, 'user', 15),
(73, 1435478842, 75, 'user', 15),
(74, 1435479130, 76, 'user', 15),
(75, 1435479162, 77, 'user', 15),
(76, 1435479395, 78, 'user', 15),
(77, 1435479865, 79, 'user', 15),
(78, 1435479929, 80, 'user', 15),
(79, 1435479998, 81, 'user', 15),
(80, 1435480245, 82, 'user', 15),
(81, 1435481392, 83, 'user', 15),
(82, 1435484831, 84, 'user', 15),
(83, 1435485706, 85, 'user', 15),
(84, 1435486127, 86, 'user', 15),
(85, 1435486167, 87, 'user', 15),
(86, 1435565495, 88, 'user', 15),
(87, 1435801741, 89, 'user', 15),
(88, 1436757995, 90, 'user', 15),
(93, 1436761882, 95, 'user', 15),
(94, 1436761890, 96, 'user', 15),
(96, 1436763913, 98, 'user', 15),
(97, 1436764391, 99, 'user', 15),
(98, 1437032311, 100, 'user', 15),
(99, 1437033632, 101, 'user', 15),
(100, 1437034298, 102, 'user', 15),
(101, 1437038930, 103, 'user', 15),
(102, 1437039398, 104, 'user', 15),
(103, 1437040027, 105, 'user', 15),
(104, 1437041259, 106, 'user', 15),
(105, 1437041344, 107, 'user', 15),
(106, 1437041566, 108, 'user', 15),
(107, 1437042378, 109, 'user', 15),
(108, 1437293071, 110, 'user', 15),
(109, 1437294181, 111, 'user', 15),
(110, 1437639883, 112, 'user', 15),
(111, 1437818619, 113, 'user', 15),
(112, 1437818687, 114, 'user', 15),
(113, 1437818718, 115, 'user', 15),
(114, 1437818736, 116, 'user', 15),
(115, 1437818764, 117, 'user', 15),
(116, 1437818845, 118, 'user', 15),
(117, 1437818877, 119, 'user', 15),
(118, 1437818894, 120, 'user', 15),
(119, 1437818924, 121, 'user', 15),
(120, 1437818944, 122, 'user', 15),
(121, 1437818970, 123, 'user', 15),
(122, 1437818981, 124, 'user', 15),
(123, 1437818990, 125, 'user', 15),
(124, 1437819002, 126, 'user', 15),
(125, 1437819072, 127, 'user', 15),
(128, 1437835720, 130, 'user', 15),
(129, 1437835728, 131, 'user', 15),
(130, 1437835895, 132, 'user', 15),
(131, 1437836069, 133, 'user', 15),
(132, 1437836217, 134, 'user', 15),
(133, 1437836263, 135, 'user', 15),
(134, 1437836329, 136, 'user', 15),
(135, 1437836373, 137, 'user', 15),
(136, 1437836501, 138, 'user', 15),
(137, 1437836510, 139, 'user', 15),
(138, 1437836532, 140, 'user', 15),
(139, 1437836548, 141, 'user', 15),
(140, 1437893593, 142, 'user', 15),
(141, 1437893629, 143, 'user', 15),
(142, 1437893634, 144, 'user', 15),
(143, 1437893637, 145, 'user', 15),
(144, 1437893771, 146, 'user', 15),
(145, 1438156116, 147, 'user', 15),
(147, 1438156800, 149, 'user', 15),
(148, 1438158478, 150, 'user', 15),
(149, 1438162266, 151, 'user', 15),
(150, 1438164638, 152, 'user', 15),
(151, 1438165633, 153, 'user', 15),
(152, 1438191184, 154, 'user', 15),
(153, 1438248135, 155, 'user', 15),
(155, 1438418368, 157, 'user', 15),
(156, 1438419261, 158, 'user', 15),
(157, 1438419352, 159, 'user', 15),
(158, 1438703685, 160, 'user', 15),
(159, 1438852013, 161, 'user', 15),
(165, 1439017319, 156, 'user', 15),
(166, 1439017333, 167, 'user', 15),
(167, 1439017702, 168, 'user', 15),
(171, 1439018520, 166, 'user', 15),
(172, 1439029481, 169, 'user', 15),
(174, 1439213182, 171, 'user', 15),
(176, 1439243550, 172, 'user', 15),
(177, 1439329784, 173, 'user', 15),
(179, 1439330058, 170, 'user', 15),
(180, 1439331251, 174, 'user', 15),
(181, 1439333782, 175, 'user', 15),
(182, 1439334534, 176, 'user', 15),
(183, 1439334554, 177, 'user', 15),
(184, 1439334772, 178, 'user', 15),
(185, 1439334878, 179, 'user', 15),
(186, 1439334919, 180, 'user', 15),
(187, 1439335038, 181, 'user', 15),
(190, 1439582165, 184, 'user', 15),
(191, 1439589963, 185, 'user', 15),
(192, 1439591053, 186, 'user', 15),
(193, 1439591125, 187, 'user', 15),
(194, 1439623178, 188, 'user', 15),
(195, 1439623402, 189, 'user', 15),
(196, 1439624121, 190, 'user', 15),
(197, 1439624131, 191, 'user', 15),
(198, 1439624192, 192, 'user', 15),
(199, 1439624267, 193, 'user', 15),
(200, 1439624337, 194, 'user', 15),
(201, 1439624402, 195, 'user', 15),
(202, 1439624437, 196, 'user', 15),
(203, 1439624518, 197, 'user', 15),
(204, 1439624633, 198, 'user', 15),
(205, 1439624774, 199, 'user', 15),
(206, 1439624819, 200, 'user', 15),
(207, 1439624981, 201, 'user', 15),
(208, 1439625057, 202, 'user', 15),
(209, 1439625153, 203, 'user', 15),
(210, 1439625187, 204, 'user', 15),
(211, 1439625210, 205, 'user', 15),
(212, 1439625254, 206, 'user', 15),
(213, 1439625407, 207, 'user', 15),
(214, 1439625480, 208, 'user', 15),
(215, 1439625710, 209, 'user', 15),
(216, 1439625816, 210, 'user', 15),
(217, 1439625896, 211, 'user', 15),
(218, 1439625945, 212, 'user', 15),
(219, 1439626013, 213, 'user', 15),
(220, 1439626115, 214, 'user', 15),
(221, 1439626177, 215, 'user', 15),
(222, 1439626267, 216, 'user', 15),
(223, 1439626391, 217, 'user', 15),
(224, 1439627297, 218, 'user', 15),
(225, 1439631890, 219, 'user', 15),
(226, 1439632015, 220, 'user', 15),
(227, 1439632428, 221, 'user', 15),
(228, 1439632653, 222, 'user', 15),
(229, 1439633159, 223, 'user', 15),
(230, 1439633282, 224, 'user', 15),
(231, 1439633373, 225, 'user', 15),
(232, 1439634358, 226, 'user', 15),
(233, 1439634511, 227, 'user', 15),
(234, 1439634655, 228, 'user', 15),
(235, 1439634835, 229, 'user', 15),
(236, 1439634891, 230, 'user', 15),
(237, 1439635027, 231, 'user', 15),
(238, 1439635072, 232, 'user', 15),
(239, 1439635281, 233, 'user', 15),
(240, 1439635355, 234, 'user', 15),
(241, 1439635442, 235, 'user', 15),
(242, 1439635553, 236, 'user', 15),
(243, 1439635610, 237, 'user', 15),
(244, 1439635867, 238, 'user', 15),
(245, 1439637089, 239, 'user', 15),
(246, 1439637318, 240, 'user', 15),
(247, 1439637452, 241, 'user', 15),
(248, 1439637939, 242, 'user', 15),
(249, 1439637979, 243, 'user', 15),
(250, 1439638056, 244, 'user', 15),
(251, 1439638154, 245, 'user', 15),
(252, 1439638865, 246, 'user', 15),
(253, 1439639718, 247, 'user', 15),
(254, 1439640257, 248, 'user', 15),
(255, 1439640440, 249, 'user', 15),
(256, 1439640504, 250, 'user', 15),
(257, 1439640857, 251, 'user', 15),
(258, 1439670839, 252, 'user', 15),
(259, 1439671700, 253, 'user', 15),
(260, 1439671846, 254, 'user', 15),
(261, 1439671906, 255, 'user', 15),
(262, 1439672191, 256, 'user', 15),
(263, 1439672265, 257, 'user', 15),
(264, 1439672355, 258, 'user', 15),
(265, 1439672550, 259, 'user', 15),
(266, 1439675020, 260, 'user', 15),
(267, 1439689195, 261, 'user', 15),
(268, 1439689479, 262, 'user', 15),
(269, 1439689629, 263, 'user', 15),
(270, 1439689913, 264, 'user', 15),
(271, 1439689991, 265, 'user', 15),
(272, 1439690662, 266, 'user', 15),
(273, 1439765343, 267, 'user', 15),
(274, 1439766092, 268, 'user', 15),
(275, 1439767097, 269, 'user', 15),
(276, 1439799392, 270, 'user', 15),
(277, 1439879742, 271, 'user', 15),
(278, 1440495140, 272, 'user', 15),
(279, 1440511844, 273, 'user', 15),
(282, 1440738717, 276, 'user', 15),
(283, 1440749082, 277, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(8, 26, 'x'),
(9, 27, 'x'),
(10, 28, 'x'),
(11, 29, 'x'),
(12, 30, 'x'),
(13, 63, 's'),
(14, 63, 'a'),
(15, 64, 's'),
(16, 64, 'a'),
(17, 65, 's'),
(18, 65, 'a'),
(19, 73, 'sd'),
(20, 159, 'love'),
(21, 170, 'sd'),
(22, 171, 'sdsd'),
(23, 172, 'sd');

-- --------------------------------------------------------

--
-- Table structure for table `status_invite`
--

CREATE TABLE IF NOT EXISTS `status_invite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_link`
--

CREATE TABLE IF NOT EXISTS `status_link` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_link`
--

INSERT INTO `status_link` (`id`, `status.id`, `sites.id`) VALUES
(1, 47, 1),
(2, 48, 0),
(3, 49, 0),
(4, 60, 20),
(5, 61, 22),
(6, 62, 24),
(7, 90, 25),
(8, 91, 26),
(9, 92, 26),
(10, 93, 26),
(11, 94, 26),
(12, 95, 29),
(13, 98, 33),
(14, 99, 34),
(15, 100, 35),
(16, 101, 36),
(17, 102, 42),
(18, 103, 43),
(19, 104, 44),
(20, 105, 45),
(21, 107, 47),
(22, 108, 48),
(23, 110, 51),
(24, 111, 51),
(25, 147, 56),
(26, 148, 35),
(27, 149, 58),
(28, 150, 59),
(29, 151, 60),
(30, 152, 62),
(31, 153, 64),
(32, 154, 65),
(33, 156, 66),
(34, 160, 69),
(35, 274, 88),
(36, 275, 107),
(37, 276, 108),
(38, 277, 18);

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_mood`
--

INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES
(1, 76, 0, ''),
(2, 77, 1, '[feel]sad'),
(3, 78, 2, 'ad'),
(4, 79, 1, '[feel]so_sad'),
(5, 80, 1, '[feel]happy'),
(6, 81, 1, '[feel]so_sad'),
(7, 82, 2, 'sd'),
(8, 83, 1, '[feel]happy'),
(9, 158, 1, '[feel]happy'),
(10, 170, 1, '[feel]happy');

-- --------------------------------------------------------

--
-- Table structure for table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 16, 1),
(2, 157, 2),
(3, 195, 3),
(4, 196, 4),
(5, 197, 5),
(6, 198, 6),
(7, 199, 7),
(8, 200, 8),
(9, 201, 9),
(10, 202, 10),
(11, 203, 11),
(12, 206, 12),
(13, 207, 13),
(14, 208, 14),
(15, 209, 15),
(16, 210, 16),
(17, 211, 17),
(18, 212, 18),
(19, 213, 19),
(20, 214, 20),
(21, 216, 21),
(22, 217, 22),
(23, 219, 23),
(24, 220, 24),
(25, 221, 25),
(26, 222, 26),
(27, 223, 27),
(28, 224, 28),
(29, 225, 29),
(30, 226, 30),
(31, 227, 31),
(32, 228, 32),
(33, 229, 33),
(34, 230, 34),
(35, 231, 35),
(36, 232, 36),
(37, 233, 37),
(38, 234, 38),
(39, 235, 39),
(40, 236, 40),
(41, 237, 41),
(42, 260, 42),
(43, 267, 43),
(44, 268, 44),
(45, 269, 45);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 17, 1),
(2, 173, 2),
(3, 173, 3),
(4, 181, 4),
(5, 253, 5),
(6, 255, 6),
(7, 256, 7),
(8, 257, 8),
(9, 258, 9),
(10, 259, 10),
(11, 271, 11),
(12, 271, 12),
(13, 272, 15),
(14, 273, 16);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_places`
--

INSERT INTO `status_places` (`id`, `status.id`, `value`) VALUES
(1, 71, ''),
(2, 72, '68'),
(3, 73, '104'),
(4, 83, '9'),
(5, 84, '1'),
(6, 86, '1'),
(7, 146, '1'),
(8, 158, '402'),
(9, 170, '1');

-- --------------------------------------------------------

--
-- Table structure for table `status_share`
--

CREATE TABLE IF NOT EXISTS `status_share` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_share`
--

INSERT INTO `status_share` (`id`, `time`, `status.id`, `this.id`, `guy.type`, `guy.id`) VALUES
(4, 1439015679, 161, 166, 'user', 15),
(5, 1439017333, 156, 167, 'user', 15),
(6, 1439017702, 159, 168, 'user', 15),
(7, 1439029481, 168, 169, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `status_usertag`
--

CREATE TABLE IF NOT EXISTS `status_usertag` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_usertag`
--

INSERT INTO `status_usertag` (`id`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 170, 'user', 16),
(2, 170, 'user', 17);

-- --------------------------------------------------------

--
-- Table structure for table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(5, 15, 5),
(6, 109, 6),
(7, 155, 7),
(8, 174, 8),
(9, 175, 9),
(10, 239, 0),
(11, 240, 0),
(12, 241, 0),
(13, 242, 0),
(14, 243, 0),
(15, 244, 0),
(16, 245, 0),
(17, 246, 0),
(18, 247, 0),
(19, 248, 0),
(20, 251, 0),
(21, 252, 0),
(22, 261, 0),
(23, 262, 0),
(24, 263, 0),
(25, 265, 0),
(26, 266, 12),
(27, 270, 13);

-- --------------------------------------------------------

--
-- Table structure for table `storage_audio`
--

CREATE TABLE IF NOT EXISTS `storage_audio` (
  `id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'drive', 1, 1433745199, 'a0bee08a', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'W0hCcZpdm6iZiDWfTFUNWsACrcMvrl7/V8RGwHMqSuS/0mCf6IG+dWYj4jtGKNSSNleHX/dYcFsJUnWCu3hcIw==', 'audio/mp3', '49607e4f', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1433745199, 3636470),
(10, 'drive', 1, 1434614101, 'dbabf7dd', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'n4606qWwd7eP5sWpnfBl3YLHjTiOEdBZnTRR/yLYWvdxH8PFWEBz67cUdi4liGGK6Usx/+bcng5h+M+87gj8mg==', 'audio/mp3', 'b33b94a8', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1434614101, 3636470),
(12, 'drive', 1, 1438418369, '5b2c91c1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3PHRwDXlWlKm35XVZvRonHFy7cr3zwlDqzhs2bqZFO5uLyqCVWhhY8pe+kkTH6vohkuXppxWMKEV/H1eDKVw2Q==', 'audio/mp3', 'e3c39d7d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1438418369, 9803861),
(14, 'drive', 1, 1439583261, '7d4c6705', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'kvQ5xZG5Y3283MYj3MtwIhTU78NMoDl/YArhWHXr7wFdstgQJYFsmacqIzScSUflR++pp+iiYMidVRLuUDXdFA==', 'audio/mp3', '956b5fe6', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439583261, 9803861),
(15, 'drive', 1, 1439591049, 'a73b7e13', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'aQICWEqsFoJ5ZXwj1BXM9sOV8J+yAFioDCIWYDShS8QwQRuHU7RBONO4HLPlHaGn3UtW+1XT8NofPg+k+iw0nA==', 'audio/mp3', '83ea56ff', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439591049, 9803861),
(19, 'drive', 1, 1439622479, 'c7921226', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'KaAUyvWfeNaA08uvAQh5OrcAopVr+KyljsAi13EooFc89NXTaQg7F1ACnSB4ygzGT7J9iPAprcQmSSpn1GG9AA==', 'audio/mp3', '34d176e9', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439622479, 9803861),
(20, 'drive', 1, 1439623355, '0e2a333b', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'gnHSR1Yqqlusbaw3U3FWQFQGtvuJBqJ7Q5M0HWxX4xYkxGd/kxpErjFfzimtc2bVa48epDbw9/JO88/xsCqMgA==', 'audio/mp3', '30288754', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623355, 9803861),
(22, 'drive', 1, 1439623363, '148d3ff8', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'r/sO13kzpSt10oL9hC7VYW2Z3BLu2uuc8MU4Sgt2uEQ1kFcfmcpZ39BEnvOkfmEwzOWGWdMReDrN6dIpKoj6mw==', 'audio/mp3', '209a4e48', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623363, 9803861),
(24, 'drive', 1, 1439623391, '6e2b49ba', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'jofVbxWLnfSMk+eMR1EsS6mVUgoekqMD+IcezakT6EAA2KW+9P5xbrEdYhwtq/T5PpRTqTC1teeVn2XDodbf6Q==', 'audio/mp3', 'ab842ecd', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623392, 9803861),
(25, 'drive', 1, 1439623698, 'e40a2b37', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'bY5OsXr2RF9TkBhlZjsqZxK1/K29mNQg4nd8/MrOb7C4CfakpVjs6mhgxggIsh+MewEz5VYdW/HjaLQA9mU/PQ==', 'audio/mp3', 'c4fae3a4', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623698, 9803861),
(26, 'drive', 1, 1439623698, '0cf5facc', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'nUSQnLbukVqNM1omEdeB1njtwI7AEmKOpfPSC32WwibbViP4u0F6nvO8M7A1Z6BQBUuVos4Wtp4i0ODVHVG1Pg==', 'audio/mp3', '471664e7', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623698, 9803861),
(27, 'drive', 1, 1439623759, '3f98854d', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'eTrV5V8e6wEfF49XuC070iLtj055dO45o7l3w5ahbD3VqrdcYA6lf64uI5jsMmI9RT9QJYjHt/IyZfunRMhUcA==', 'audio/mp3', '72165fa0', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623759, 9803861),
(28, 'drive', 1, 1439623862, 'e84fe26f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'CabJny16o7Z6g7HAN1OMfwb2C7GMn6BIwFj0pwVykRqNDa3+55DXqe2U8itQ3E7mwbZCvwFEmX0e+9FhYTzjFA==', 'audio/mp3', 'cdde4ac3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439623862, 9803861),
(29, 'drive', 1, 1439624129, '044ae61c', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'iScIHKKdTb9slZhH8O3NlWs2LPDcz5MQirnInjGE+9v2hSAOtKk3uO2kqPQmr5+vlGtToinyV4jWH8qtSkepMA==', 'audio/mp3', '1d25bb77', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624129, 9803861),
(30, 'drive', 1, 1439624190, 'd94441f1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '7R+RubFnIR1MTKPl1p8xiMAdIj7ZEOK/lRwRv+w7GgrvK7T1bzxi7gRBWqks2FJeNsNfVu+k/sZranxoaa43pw==', 'audio/mp3', 'cb767a0f', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624190, 9803861),
(31, 'drive', 1, 1439624265, 'b6c715d0', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '9ezzdXSkRAnGAYFgHmTS8tWQ3vOcIoX28FBywYIW5Vt2Z1VOfKukl0PMDyK/actMPL4bFhFpd9KkohVGNjQpzQ==', 'audio/mp3', '8a6be1b6', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624265, 9803861),
(32, 'drive', 1, 1439624335, '87368ef7', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'DOj/6PV0cbgQjT8RqXTdFsMNhEaZA5EML7BZgfCJN013URrqQeREWt4zPJ1ZRKYKvFvf4m169NbIoCcyuNzuJw==', 'audio/mp3', 'b7ff1b56', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624335, 9803861),
(34, 'drive', 1, 1439624402, '3dfd27f9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'RzwzgL2uzgKQ+3R1c++DqU6nWHPp9EyT1PUOYo7WZba4wcrV7HUEI6IDQcHGi+/L+FgNle1MdpCwlJvs+eIJXQ==', 'audio/mp3', 'f37256da', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624402, 9803861),
(36, 'drive', 1, 1439624438, '724af099', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'l2ewLCvZfaROq+bFQXqb+JoLlwPMIxnWgW+xOUcpTwI8JkFmrB1nQuYYfinVsP3CJFCnYDW0QYTt/C4Rqh3GCA==', 'audio/mp3', 'f224dcef', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624438, 9803861),
(37, 'drive', 1, 1439624516, '5e79c284', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'JzBVK3ATfRA5UgFRY+mXhgUo210BZcTK04puTa+4tAlrZbAk3ifQLwt+HFX1KCNBNmFaZgupgFB+enFvqce9MA==', 'audio/mp3', 'ec43746b', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624516, 9803861),
(39, 'drive', 1, 1439624518, '71dd6dd3', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Fh9RMpAa6tcAYfa08o/sXTzS7iHyMBxm0Kw6JmozP9na+TOvLSUWP7zRRxE7flnvQGZy7U77NGug5BhUeGpPEw==', 'audio/mp3', 'bec53418', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624518, 9803861),
(41, 'drive', 1, 1439624633, '333abbec', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '429mSnRQ4Kw2V/ooKa+A/QtD6i4TxXVFhSHdcO9Um1rcNbKZwy2KMhMTFqfK361iYiyn0fketMQY/wmkFsgBcg==', 'audio/mp3', 'da149656', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624633, 9803861),
(42, 'drive', 1, 1439624633, '65472ce7', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Bdmjiw1txqc2AwFSQq5cW1cN7tYA8FTf0kstXRoE3iB/QbGyKMOrXzwy7ulzWneqTcn93NEwZcACRvddgwuPmw==', 'audio/mp3', '576421fa', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624633, 9803861),
(43, 'drive', 1, 1439624634, 'cc5d9610', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'J8X8/ZDfARZImEn4LzobkpeCCzidpuiXgMnxgwj8uXsESRlJP6w4J2UUJ3O6TUq8ibEoVgij9Hyvmf5Z84+M9Q==', 'audio/mp3', '7e45e3b6', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624634, 9803861),
(45, 'drive', 1, 1439624775, 'd47ab93a', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'bbnQ8n6RXKdn1fnU2fFDbUNwOqEESKju95kTuaqrUZtd9uRMOtNDkZZJ0Oxuwk/I8bfn3AAHS/ubL68ZXNg9Dw==', 'audio/mp3', '2427819d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624775, 9803861),
(46, 'drive', 1, 1439624775, '6f117ee0', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'NJhippmK06xc8llrX+HMx2tHWG0fVyZkbOIx8vnuWnAmDQ/Ggj6z6SK4tJzMahyyshvKfubd2/psNJG6Y0PKyg==', 'audio/mp3', 'e5cb4826', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624775, 9803861),
(47, 'drive', 1, 1439624775, '5441e8e9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'wz50RGdZIyuJv6Pi5hJQW3AaMLxz7xIOs6dBRjHOfa0510UoaQk/89hxDWbkadH1fUvaVbciSmUiZ/OtrB2TVw==', 'audio/mp3', '17be7c8a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624775, 9803861),
(49, 'drive', 1, 1439624819, '60390ed0', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Fq3wGLokVnj1Xwl1oeKa3mb6UzUKKSCxICJDC4odvGL3Fpc789RKun/VWRetrObFTlvhkuLVUVFlbq4Ovn5spg==', 'audio/mp3', '508aa24a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624819, 9803861),
(50, 'drive', 1, 1439624819, 'af7f558f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '++cZReUpciIphhK8D4BuitRFzjJsMEKHkuczxbx0RhV6N7LY5fY3OSXpTeOX1OQJe0Nbcq4scfEVN/+aKYL2NA==', 'audio/mp3', '5fb9176e', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624819, 9803861),
(51, 'drive', 1, 1439624820, '6bca546f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'kGTvLUaGPmRaJSmWwRwKxDHZVADLPkI4UP2MncQUvoOnHn3Pw1NwFi5I6/CbKLt3Dtq4qGcV/R4W/3TXB3fBBw==', 'audio/mp3', 'e69bd65d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624820, 9803861),
(53, 'drive', 1, 1439624981, 'c569ba3f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'SjIaCzmVwiqGlb8BLwRxOH50BMUdTRGDZdQX/NoAWmKC4tOQgohPdp+RCDp3KU5FhG0unbI6SIwbDyDC4v6ayQ==', 'audio/mp3', '559e88f0', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624981, 9803861),
(54, 'drive', 1, 1439624981, 'b738f4ed', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'J7gBHHpqCI/wjKR26SMNTawsjDDeTCNhRUWVJ0h0j6s8xTTdjQ6nA9XT0lfEX/1wyMtDp6L/ks9tcw4PGFCb7Q==', 'audio/mp3', '1105afa7', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624981, 9803861),
(55, 'drive', 1, 1439624982, 'dea6317e', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'QOHRDjgA1qWw0cD0lEji5g50u0eCF8Vb7t6bURAk21mAW8WG5M1ZV0C1FklBt7oWV8Uww4giP3HLmn6ikrh1wg==', 'audio/mp3', 'cf856c40', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439624982, 9803861),
(56, 'drive', 1, 1439625055, 'f8203426', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '8eIeDOki7Ys/7GvSl4JJHWXbOmhvUNvAJZnlPow6HCodqj/MdAfMDCa1V2zUjnqjwzHIJ60vPnQIKyFWHLp7WA==', 'audio/mp3', 'de6d269d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625055, 9803861),
(58, 'drive', 1, 1439625057, 'ca5594ab', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Z6k0IOX1Tvc0nWUxMuVCP8xYlEiJRRdaOvlFfIFxKoH8FXO7RSlbfj/4QMl5BSU1kMcENENF67B2WEPlnHB/Qg==', 'audio/mp3', 'bbc1ebc7', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625057, 9803861),
(59, 'drive', 1, 1439625057, '1b89a484', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'NC9JHmjHXvkyuqdMASOvbMjJmZcet9zGqhhJM6hqcn1CuF7/f7wWyASFajYFoAnlAvGSawFO+QZfAVs3vX4BVA==', 'audio/mp3', 'd0a206c9', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625057, 9803861),
(60, 'drive', 1, 1439625058, '9636cdb1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'DIiFsHrKWoKyZORbGyZ48ZWeiuf7C1289hwQ0M5HCGZ2/WOBDwPG9hZ2C5SsQuUhgo4biaJ00657XZItWHYMUQ==', 'audio/mp3', '621c0da3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625058, 9803861),
(62, 'drive', 1, 1439625153, '5d203fa7', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e/dw0j8R/QiAj0/qJLQV/QjAYnk1k7+EtGW50WLkrk/J+pJa7Zwjd+F8/laxDMMYSrtQskj1iOr+f5o3kKKVow==', 'audio/mp3', 'bcc68e15', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625154, 9803861),
(63, 'drive', 1, 1439625154, 'e0401a19', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'aUjVMT4tVb1MK1g9vtM8R1Ko7nOy0XIpYRxrIbtYis0osdI8LCrT8JBQVATlJG2ucyiXrBnk2Vd5Y94oOcr6tg==', 'audio/mp3', 'ea61a8c3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625154, 9803861),
(64, 'drive', 1, 1439625154, '06ca0866', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'LeIy7BykVsDsq1RmlW/LIf2e0b+2gc3DjShnDyLMbcfUlCe0qqYuNdkHUPEDB4SBTPpsT7rO9rXkudgnsZklAg==', 'audio/mp3', 'aa541d1a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625154, 9803861),
(69, 'drive', 1, 1439625254, '28b61dda', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'ntECZ/7608vkq7N+qPA3LAjpdN72mIKSWqSNeRoJIO7xpQ9EL3CTRbnNwjbaawpGwFcg7WiZoo07yQhVIzg1Cg==', 'audio/mp3', '46e7d835', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625254, 9803861),
(70, 'drive', 1, 1439625254, '153ac295', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '6ucZl/u50w7cerJFG34FXpDw+ttNQqp/nwQBYX5bvIRkQHsaxwt4wN4w2ySyM8EqUfkpMQtE/de6phudsZZJHQ==', 'audio/mp3', '89c0410d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625254, 9803861),
(71, 'drive', 1, 1439625254, '05c42b07', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'jPjUi/obgakAIINQbNCoCxmeohGoWFiLOZPbZ5C5aOpjxUsEa1sT5rQsWWQhWgqCKbO6tO57oBrFRqxEAKLjdA==', 'audio/mp3', '8b5bdd1c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625254, 9803861),
(73, 'drive', 1, 1439625408, '0840092f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '24S/8NVdsNDD4wWNBGd1Su+4npPoNzBNOWtfZVXc0lM+fqLHjP2fTuyKjBa72xlthyqMc06oplGkI7J/cQ2voQ==', 'audio/mp3', '86f57419', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625408, 9803861),
(74, 'drive', 1, 1439625408, 'c8c31e08', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'JX8Yf0OXlGHcH4hc0UhQTYgzIgdqJjVIe+lY8saRorgSsaundEK8IholtG1fLVXvEYrGJNBaRe3AjMkcjoZu4w==', 'application/octet-stream', '0af02540', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625408, 9803861),
(75, 'drive', 1, 1439625408, '2e15bf1d', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'nPoluJaw8AMGoZSXHJQKSqp3XbhI5KZO+vGV9FZyVmPOQxzlYZVOuLG6BXSG5rzxG+4QR1KxikVRbmMxkZInyw==', 'application/octet-stream', '2a0b5546', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625408, 9803861),
(77, 'drive', 1, 1439625480, 'c04dda29', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'TDgw99ONY6zgfRLHiy4Oa7kqkZBxVGGwaY1TMzAZIeRPhk0cmZQzdBHu6Pa7PQPr7PfG+MlXy3AMwenKI4tH8A==', 'audio/mp3', 'a70c354f', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625480, 9803861),
(78, 'drive', 1, 1439625480, 'aa9eeb9d', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'VmGM0uoaJsCaJmS84/nBNDXtyxbY1WKEDDkXATgLxRvoc9WTNYQRTEmUgXFuL2wmWH+AqljcHiaacA1JrDs4dw==', 'application/octet-stream', 'b9b9e34d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625480, 9803861),
(79, 'drive', 1, 1439625480, '2701ffc5', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'UwGrh5+zFL+sbcUKM3popJ4CN8CTuS3KYNOFZN2r0c5gbPUr+SpcDKuDT0rVQnJ7hQJ/6wXYUHFg51qqXHgG7A==', 'application/octet-stream', '33c89b60', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625481, 9803861),
(81, 'drive', 1, 1439625710, '627c0ee0', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'CMJjxvtPN46DMmozcAlY05nBCn+IyJpwcWbxnEZ1kLHA3+9m4qXw+HPJZJD1c//MI3JjSbE9bJc4XQImrgYdVQ==', 'audio/mp3', '006b5e3c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625710, 9803861),
(82, 'drive', 1, 1439625710, '762333ef', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3MgvGrc+P4XESxjsDUlIPyzuiLkSeJZXcZA6UFXX0846k+xEcPS1htIkKs1yFuvt2A6i2YHe2eNzl9Z0aS0N8w==', 'application/octet-stream', '8a69e7c1', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625711, 9803861),
(83, 'drive', 1, 1439625711, '156702d9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'mY7sOhhOqHkVO1NSf0FFnA8W1LAihDAJmeK68UjhOD7cLlGZNiOblO3avDwaWu+ZNGDz/dWnamlAt7iUh2WITg==', 'application/octet-stream', '5e792172', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625711, 9803861),
(85, 'drive', 1, 1439625816, '96cc15c3', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'u1xBpeAza6Si+AaN7sIUzdhDg6nFFHCMBT3wwbTXDBCha6zdPkvrJ1TbQew3H9SbNkBOruDjmPPvBW8h/dT8xA==', 'audio/mp3', '1106d702', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625816, 9803861),
(86, 'drive', 1, 1439625816, '56dfe08e', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'COfW3C+VykX2c0UYSmxMnJTJ6on4sxtqNKKPNVMZbcx6D9EznEs4oWBWH6A5ym339PMQYGvNcheIISjqcodcAw==', 'application/octet-stream', 'd591d103', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625817, 9803861),
(87, 'drive', 1, 1439625817, '092140a7', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'WSPqyRgLf8ZZVD1em2R+wRuZgZHq3Zf4AgrLzkg9jERaWKNZ4OFG6+vXepcyLXT7/K2HvxcqQyco3Fc2Nw1shw==', 'application/octet-stream', '8c4f9c69', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625817, 9803861),
(89, 'drive', 1, 1439625896, 'de46d905', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '/TxakgheUxVbCWPTv7zpOS5hMpfThBJ6ygzbCOMFGejVUCD9+TMT4O/RDPUAdSAbJmUifgrQV+4jOc9WiGU0OA==', 'audio/mp3', '0a96382a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625897, 9803861),
(90, 'drive', 1, 1439625897, 'a7d3e5cf', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'xqzZZfPRDE7oRiE+xcOdfrHmTf4msKaxGW/3TTkNJk8PhTjAiOUklCXCEamyTlGSwhxpyrb2qwT8j35IUkUf8A==', 'application/octet-stream', '12ae547b', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625897, 9803861),
(91, 'drive', 1, 1439625897, 'dab27b2a', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'FQbCs91Sno5lNeEiEo280tBu8rdIdPGMaO/fdfCfLaGVAHiVMn8yLFfqpFT0O8tCHnKot24EX4FauFcc/Zt9vw==', 'application/octet-stream', 'a26a78e5', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625946, 9803861),
(93, 'drive', 1, 1439625945, 'bdd6f0d5', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Zw7k7jDllDKpPD+WdocBLeFpxH3ik4rzaKxiIiZpgWslxMPTfkVjvKFmtMKmxsmUws5KoePEnkW26C5q9DwYtA==', 'audio/mp3', '05c69a79', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625945, 9803861),
(94, 'drive', 1, 1439625945, 'b7e074a1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'NToWJhcIhprARXTVOlTwVb9z3CbkJgmYtJLylfSp31Et+CIQhQ9DInwtr/8tbtL+mytXrTeuIBgPROIIWovZ1Q==', 'audio/mp3', '06326e0a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625945, 9803861),
(95, 'drive', 1, 1439625946, 'b889ad63', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'VI80ar2duKPqwo0v04T8ky80GTCU/mQpx9QEOh4eeaJOMXCMw2mJTfq7NXzmD5+hVlbuj3AMaCOHmX5RnU2O9A==', 'application/octet-stream', 'a724c9b3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439625946, 9803861),
(97, 'drive', 1, 1439626013, '211d0f8a', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'yNeNQEbWtJIFdPe3iAK9FjhD4Xe7hFUy1+GZHl559wNC1y0h9KreUSqdzxwpsHaPfvT0iSjpzkMApXbawcZrBQ==', 'audio/mp3', 'e9aeaf14', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626013, 9803861),
(98, 'drive', 1, 1439626013, '7404c336', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'FELObMo9t/mIEnCuTfUchJEnpo26J+v5jDF9IpTD/9QMrp8aM++Z1I745Pvst7vBFoebEbxDHRJ8NQ94EyOPoQ==', 'application/octet-stream', '44d6ab78', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626014, 9803861),
(99, 'drive', 1, 1439626014, 'c9145346', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'iai70HAiylat+XQb3c3zl4pZt2bsc5TZcFwTOEF4nT0rHO2C8uJoSS9EV6Haa7qayicoDAi0WC4xdXW6iHxhaA==', 'application/octet-stream', '7ebf28ce', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626014, 9803861),
(101, 'drive', 1, 1439626115, 'e8ae1fe9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'fUi6LpqBXj2Qojf/8Oy30vS1SfUKAOQwac4D2w6ku48W0O6XeqHhkQYC8Ry99imQDgtaHAwWLKy2bavpj9OPjQ==', 'audio/mp3', '2e83045c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626115, 9803861),
(102, 'drive', 1, 1439626115, 'e215ce08', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'mv7nk7XGt0gRk3QLtwKo8UEwyvqq05KemHCvgn3Q78g6yekodjCYKXqG4emuJe3shOISuJ/Anux+L3b2ZlJ5bA==', 'application/octet-stream', '0696d008', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626115, 9803861),
(103, 'drive', 1, 1439626115, '71a48f04', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '14o6VuUgVZundJXcDS0o9L1m1XhkvumrJZwnP4r52M2mTQtaSHo/e/E5iTx+clzCtqONQy7/bmKC9LyvXzk90Q==', 'application/octet-stream', '5fd364da', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626115, 9803861),
(106, 'drive', 1, 1439626267, '54129c28', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'LD3iUdx5An3RscRdxm99UF3Qc+TcCFroNAXFngfWnnQO93RAsHTzhTxRgPyiEz/yFBDpLqOro2InaMqXtcaxBQ==', 'audio/mp3', '72abef80', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626267, 9803861),
(107, 'drive', 1, 1439626268, 'c74e1441', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'tQy2oD0WA+0kkJeiAsF1tTqhaJg3Qkjn2zZFRfV5yCgbOgPNAL47XgdtiQill1vgUT7wxZK9nKbnnOx4BkyN1A==', 'application/octet-stream', '9ba007c6', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626268, 9803861),
(108, 'drive', 1, 1439626268, '48a847ff', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '1l8iicW44s6ybyKgiBCEUatpwqrC+w3ZNL/4cHsCJ7sxcLgFiJri/SA/S7KmvDOuFToqeAzXKcGwbCkDr/7O5g==', 'application/octet-stream', 'db684741', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626268, 9803861),
(110, 'drive', 1, 1439626391, '5f5bde17', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'FJiOQIMhzmXKpqjF5O5Gfy1sSfIjlI1d8c1IyzsvQd1vtFYyOqCCj64+Zm1gAG743A8lBBCxRi/ZvWMBBFGkHA==', 'audio/mp3', 'f5b701b4', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626391, 9803861),
(111, 'drive', 1, 1439626391, 'a451ddd1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3a+6fc6hohDnqD6o1/OmXj8Jioc7mFF2NRI5J8sLYb5MHZPQ3IEKGSyy0nDoi0h+IvkP/wnuKV9pDFoeVettTQ==', 'application/octet-stream', '3e5750a2', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626391, 9803861),
(112, 'drive', 1, 1439626391, '785ce95a', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '5kSAuWlfXVDGjzM/6L7QnVkp7t+NMh3K1PsQlP7mdPdBNDYVoe1++ki9fsZHCJEBMoEgU6luu4uiGBmEC+fnag==', 'application/octet-stream', 'c113e075', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439626391, 9803861),
(114, 'drive', 1, 1439631890, '3c67c3bc', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'LScROdP6HrEYsmb2RDmBR8LOu0dBdb6Z6kqIDP+enfGZaj65dFwv5zkMhjehzSy59csVwVPT8f7Qqb6puCrpNQ==', 'audio/mp3', '56c2c9e5', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439631890, 9803861),
(115, 'drive', 1, 1439631890, '6a443029', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'EeQj4TzXNeokKrNAIbEqAF1LbZlWl9EFQmuwf4HoSrZqAdfYCX3QyV5gVst5cAj8VXx1CGAVD5HLoQTiTbsyyw==', 'application/octet-stream', 'b7d0a385', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439631891, 9803861),
(116, 'drive', 1, 1439631891, 'b48002f1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'TPnIW81XQzU4MCEAOGcMNdeCEmr0deCzKiuxpWFYVRuCUziqoPvtDBBN8fPvBZHOjdwUqkJht+TkS/XgeYu+Bw==', 'application/octet-stream', 'eb6b053c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439631891, 9803861),
(118, 'drive', 1, 1439632015, '78e90da7', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 't3LcJpPR3v9jIVC+Gei24eVY+nUATS14zDA22dt7A6oC0PiDGxiWOXXMgv/HmpLqsaaMCBvtmgyPuzyr1hpV1Q==', 'audio/mp3', '1ec7acd6', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632015, 9803861),
(119, 'drive', 1, 1439632015, '4b93c81a', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '+iTHmT7pz+3+uxAxowFwF4TSuhC7D2Ys8XOvzfGUcVUTZFhDz81lNgzNSRJsL0S2wsGE2NdvDyzCDZEjUECD2Q==', 'application/octet-stream', 'fe6984b2', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632015, 9803861),
(120, 'drive', 1, 1439632016, '6d055fa3', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Lb9ASBHR8k1aGvB0KmLRIX94HJ7sVxBpGLajuS1nB0WNC6NScY0xZbHXkPOSB0EQfQI0vnvqk8pDIRmW/zvyuA==', 'application/octet-stream', '1c4f2e75', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632016, 9803861),
(121, 'drive', 1, 1439632427, 'd54d4bff', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Ew37h9KWx971xZ9fyxZY+bPZY9SjeE9+ZgyGMeefqC+pc2REpNz1l4WFNecHbMlb/MmJLM1y3UEc71wMXkPwZA==', 'audio/mp3', 'b75adfcf', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632427, 9803861),
(123, 'drive', 1, 1439632428, '3204679f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'NaMIbxLiazIcaZyKwKok1xxq3LjQSD40biHF1JO2cFU+ih0Y9dNPYfZjbGT/W+hZWCuVSGKWL7EUqjCZO65G7Q==', 'audio/mp3', '087a0f66', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632428, 9803861),
(124, 'drive', 1, 1439632428, '2d9aa5de', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'IjGZ83rw3RzN8wQ3if0xq4eu9hlbHZg6fjnG6ZdrjNkzUHtrO03OrWq6KBtdtOXk92MOnY+/5F5dmFyetHEs0w==', 'video/x-mpeg', 'e022fabe', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632429, 9803861),
(125, 'drive', 1, 1439632429, '8ad5a3e8', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '06tTZ8nWD+00F2z8yhdAy9UFowoksJyS19ZU4rhJXJO3NgEleC8h6mIJ6cTyOVHnhJsulAYakSZOFAQVWk4oBw==', 'video/x-mpeg', 'be908e59', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632429, 9803861),
(127, 'drive', 1, 1439632654, 'fda627ef', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '/osImbYrLWG0n/ghY3ljH9JQ1pUAAW2/oAgftgPDixOiHPlUgDxw1ciGT45Serxp0OJwNL2FEVSTOejqcrgifQ==', 'audio/mp3', '666a609c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632654, 9803861),
(128, 'drive', 1, 1439632654, '3775f432', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'j5xa1ndsF/ACMa612shdF6Q/Qgdn/T+vljjrFrakcJxEFm/0/0d39KJJMyMT+FychDjfHdpkxheRk48Ae7TO/Q==', 'video/x-mpeg', 'f6a2567d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632654, 9803861),
(129, 'drive', 1, 1439632654, '2c75b650', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'vyJKGYQiig4pO/WUbojWiOr4NYJ377zxnSB+f4DGxbcOW+r/zeWngw528ulT6ZoT3/l9h0/tF5MDlo5JU19kjA==', 'video/x-mpeg', '295c81fe', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439632654, 9803861),
(131, 'drive', 1, 1439633160, 'b9f8a4ab', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 's0XbuZ7sASy637AytBmK3utosMZ2/GuvgT/r4+OVjAtnG/Gi8dWCBuZ7ewP7tpSxcFuIuMntRPNaM807WEKgrg==', 'audio/mp3', '4b60c821', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633160, 9803861),
(132, 'drive', 1, 1439633160, 'bfb95be9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3huIR9BYHI2vE4hN8/I1hU2nzGuc1Lmpv/51P6QbgrpsJWkwjFB6SPWjf7+fHpQa8iQ44Ga9vw3OlQ1x1WS/QQ==', 'video/x-mpeg', 'bbf0bbce', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633160, 9803861),
(133, 'drive', 1, 1439633160, '41ce4da9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Myd/DH40BNAVhNGnjPtvs1u8HYJVPucQhabajV7YOpvOcerdte/z10EsxThh6g2hRpHaW2MlDfXI5oUtj0Rxvw==', 'video/x-mpeg', '7ffbaef8', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633160, 9803861),
(135, 'drive', 1, 1439633282, 'bb5b805b', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'LMrjdB/T6VzZOYk+P3k3w1jsR2XaNDg72liWjrKCrYpLW98lVRlkVThhF34mxg4Ancrd6ZZVbXZ948uk/tb5pw==', 'audio/mp3', '597d74fc', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633282, 9803861),
(136, 'drive', 1, 1439633282, '5937cea9', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Eyyv12972dn1JrxjfSl6Jr6JiWuXzdcd1sb2Sn8KhdWtuERvLjfZxU5G9ST9SpI6Usy2fxJxLdS/0xO79NU6Gg==', 'video/x-mpeg', '84a8ad9a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633282, 9803861),
(137, 'drive', 1, 1439633282, '4fa9c96b', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'ckVhCrYPginDPSeGkNKjSSvPvVHtei3/2TD23GLUEqnBCQbPWkUHFRDSjhK+LgcO9DaZmI3ZVorl7jDQOtS96g==', 'video/x-mpeg', '705a3bdc', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633283, 9803861),
(139, 'drive', 1, 1439633374, '8165b618', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'esQNgnwAxk4oK581yfn2N8ADOU6gQPR7l+McHA+PnhtGShQO2fS9mFWvIdAvLs3yody6HlnKNbw/uGju0//rMQ==', 'audio/mp3', 'ed271e09', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633374, 9803861),
(140, 'drive', 1, 1439633374, '4139686a', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'OVwINhnCzXS0TycwL3f4OP5szJGg5bGCJHy003vRP1yNZjXCgkjszN/o/UCLCkgpDR7VVBX2LcsdLx88x3KETg==', 'video/x-mpeg', 'fa73349c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633374, 9803861),
(141, 'drive', 1, 1439633374, '8c2e0069', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'vNMxQu/ZNNozKVAFevyMpYVVM2Un/b+R6o1L7eh5gKlkDzTIEF9SWkb7Df2NfhTn5tu4LMlFRvCvnBAEoU995w==', 'video/x-mpeg', 'a8dc32a1', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439633375, 9803861),
(143, 'drive', 1, 1439634359, 'eb26ba3e', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'l4GwWWrvwkPcHGRDAdj6cZiqqUw65f4olyvgpi+CF0X1+saA3ajIoy8zDtWO7sZ0Ch8LuZkOCaN9LXhEc0Dt+Q==', 'audio/mp3', '907dfb6c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634359, 9803861),
(144, 'drive', 1, 1439634359, 'b01ed72f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '6GS+puBrfWyZ8IYyHf6GHDiiuacNIJSUxuS9xhKzB6a1RF9xK9uhYX40knNd4xAkzLaALJ2Qvx1NT5dBkA4Awg==', 'video/x-mpeg', '609bbb05', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634360, 9803861),
(145, 'drive', 1, 1439634360, 'f47054c6', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'iJhkp/MrgGBrz6xpOTS87PrYRxL3FY56xKIuL55D0Y9ssOSLwRzy/BeoXrHX4/Byfh19u8BydTeWQVQGASBGMw==', 'video/x-mpeg', '0cc1eae3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634360, 9803861),
(147, 'drive', 1, 1439634511, 'f4b89bcc', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'p7ZZb+YQu8uN/GCRlsl615gFrRy848k02xpkse/Qpn+4nHauToCDq+poS9+KzmielYMTRZvSJt1OoE3c+31R4g==', 'audio/mp3', 'd6317036', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634511, 9803861),
(148, 'drive', 1, 1439634511, '8884522b', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'yL7L5IQ/Z9WC78jBH6ALTbwpCUkBCjyATTC0v37hPyR1H2qvO9+JD0zWeOR7uMMCp9aZ58MFGAsiSD6h+ThWhg==', 'video/x-mpeg', 'c4c4dce7', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634513, 229474),
(149, 'drive', 1, 1439634513, 'e3913130', '', 'cf1e5227ac2c3787ec0b60af511c1b84', 'GbjBBVd5fy8mwiQkL7gzfycCSGdlym0oIKaGxRVPTMwX7zv0JD0vmdFkbWxyZOp5tN+Nw5bRHA6XaTNMGbHwXQ==', 'video/x-mpeg', '654214a0', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634513, 91810),
(151, 'drive', 1, 1439634655, '8ea8558b', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'O282WG+8QMr5Gl+OCz3WJ7WiCzf4vkyw5cljzCA1/hmbNSw4igo24MwueMzoWTH+9Dv6hc9GNTsXKy9Ix7fp8w==', 'audio/mp3', '95c5d47a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634655, 9803861),
(152, 'drive', 1, 1439634729, '9123475c', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '/TL73KnKsOYBhg+hw0f4cQrnwZU8rgwTZJERD1dp2LqZaQnrVNImbWxcxb7lWxj/n2io8o9x1Iv599ERZudC/A==', 'audio/mp3', '3cb6397d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634729, 9803861),
(154, 'drive', 1, 1439634835, '83b414c7', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'EZYHyttq+9tYG4NvZqoEoldUKTEAPn9Owdf0Ge/MqqAUlyDfpfCAVtlCXk9pjdTnM9uxLFjk+TRo19o064gZ9A==', 'audio/mp3', '5cfeb258', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634835, 9803861),
(155, 'drive', 1, 1439634835, 'ae875741', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'nXHQSOKATd8tr613HI7OmC0+C7JPy2RGnCcN3SkZqWzMcIEfPRjo0JxiEI5gLh8EkN75ixPAogm0fuEU8UyLfg==', 'video/x-mpeg', 'ece26e41', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634836, 229474),
(156, 'drive', 1, 1439634836, 'fb528fcf', '', 'cf1e5227ac2c3787ec0b60af511c1b84', 'yf9XUUcDvi2qtkF/p+dUZuuhHwA/3PoabuAXt+QaAwmTEMan/9hu5/O++mS8hnjoUMq1gfzywmrtYd3A6Yv0Kw==', 'video/x-mpeg', '13229ddb', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634837, 91810),
(158, 'drive', 1, 1439634891, '09d3542d', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '2qSrMLpv8k6aE5VHlq2VyoMBx0M/XZNDDmy9P/QDDwXyl9aX2cHuiW83qZh4JK03ONLkMfzK2ikhohkaW2xwsQ==', 'audio/mp3', 'fa7b954a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634891, 9803861),
(159, 'drive', 1, 1439634891, 'e07a1cce', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'OKH1lYvpIODO6FCtTPUxZ7mCcHPq8nbYZwg2I68lIaSbipQnl2O+ooJcqw0yjPw/j2kuCr+cYj6D6a69dy451A==', 'video/x-mpeg', '801c0a9d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634892, 229474),
(160, 'drive', 1, 1439634892, '40573237', '', 'cf1e5227ac2c3787ec0b60af511c1b84', 'TsqpBSY+DA+Bj+wsVc5+1U2bp95V4mBNRVTbgQe7UkG/ptDJHeVtaHtX99fI/gjTwbLGUGqQsp8h8qM7WoRYKg==', 'video/x-mpeg', '20925422', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439634892, 91810),
(162, 'drive', 1, 1439635027, 'f7830304', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'W2O4MnFpsJ+xOQijzjg5CXEJT5zU1/FVQjPKSCg8Ff48Zp0ei75rvMxEQeIIhVsull/mTNTNya6FXE+BSKITNQ==', 'audio/mp3', 'c59a71fe', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635027, 9803861),
(163, 'drive', 1, 1439635028, '2dad67de', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'lCV5WlNBbPxhR8niCBDBpvc5c4bKh4B8bC/MlsKBkzWOV0d6+TYEPIeTfTzfcqNjzgC4AjGYSHRcBsczdmOkkA==', 'video/x-mpeg', '386eb351', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635028, 229474),
(164, 'drive', 1, 1439635028, '66019e17', '', 'cf1e5227ac2c3787ec0b60af511c1b84', '9o2Xs/N1OT7kHPHM/Q2FznkhbgNjbqmUc2jxxncQ2jo3X13P4nePeOy/9nZtU29hDSaj1pCmpna8exVApmcd+A==', 'video/x-mpeg', '9db2eb7c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635029, 91810),
(165, 'drive', 1, 1439635068, '6ecf6019', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Zg2OJPp85wC5AV7Uo12VzoU4w3/hR97X1AV3q5THPmr5HFM+IfCev98mN4FytbxxXfLLXdF2jPvTeJUVJvtirQ==', 'audio/mp3', '80dd525e', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635068, 9803861),
(167, 'drive', 1, 1439635073, 'e01e64e8', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '+/Sga7UlhoCmA3GHSdwLQLaKxdBvnvtbjBcuz8vQ8c40Jufph2PHiu6ATpLE17+MwsKvMW0XDFyqD2VL1s0ysg==', 'audio/mp3', '2f72aa39', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635073, 9803861),
(168, 'drive', 1, 1439635073, 'fc2d263a', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'lNI4nPxlDVcnIpVpGHHfimu2ORRykzdwNV8tZBHQEL6NC+dYDUZ7Ms7khqy9qdw9t7GYGKUtjCQ4egT4X/CloQ==', 'video/x-mpeg', '98d7e583', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635074, 229474),
(169, 'drive', 1, 1439635074, 'd01af553', '', 'cf1e5227ac2c3787ec0b60af511c1b84', 'AaPEPRHxZi9uEjredwkSfNP7z0K7qrvQFRpajLze2KictHLCohPazeBjt3GLIc3W8vNWAERd+lR0hTOTurEXoA==', 'video/x-mpeg', '29007c1f', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635074, 91810),
(171, 'drive', 1, 1439635282, '4a96d5c6', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'uqo0ISmHEhWN/7afww30e3GjFGb3n/HfVbaaO6kII8oOdFW1R5n0Rmnx4VdVJuRc1T1SW+34tz3N89v/s2e3Og==', 'audio/mp3', '59234c89', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635282, 9803861),
(172, 'drive', 1, 1439635282, '798b7de4', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'bkAOwKpBS44f1UYPRnj5Hx1aq3+n4Ykl1FuknVTHpxSXYAmFxrTZphuwLbGz8hkoSd25tmO5LnVYcDBAmkZ26w==', 'video/x-mpeg', '0a7ef41a', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635283, 229474),
(173, 'drive', 1, 1439635283, 'c585aeab', '', 'cf1e5227ac2c3787ec0b60af511c1b84', 'yoa+Y3WxQaawhuQ5qzlvQMYn8xdoyqH2ZLGE9A931l99YNS6LJvfPqX0C7cf840FWpbQq4MvLzHXHOWRe0eZDQ==', 'video/x-mpeg', 'fe41d197', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635288, 91810),
(175, 'drive', 1, 1439635355, 'c149bda6', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3BDhQDwrO45zbYvSZyweNtIWDPWFrGwtusfjwBXaxM2zD88Ieh4N300J+MX1pncO20D8BnPrbAGq/r006sO2hA==', 'audio/mp3', '9ae58c70', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635355, 9803861),
(176, 'drive', 1, 1439635355, 'd1c98e6e', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'HSxqSBybw0ex9AZFp2HfKRE+GEhDTnGwrDz5MTxdE2NIjZIGEbHFSScwd1pKL0k3laK/hL97ubdjLsamu/0kpw==', 'video/x-mpeg', 'efb017a0', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635356, 229474),
(177, 'drive', 1, 1439635356, '9f6e8b14', '', '7f3d0ab076b9fbbead304640c8be22af', '5Behbo65tZwz7uV+Ir7dc9MO7d4e8mhdtrn4aNn7j+ggR4Mo48yMGU8dbL8iCYKMNRopsrXNd4z5JMEDuftTlg==', 'video/x-mpeg', '7d300077', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635369, 3921826),
(179, 'drive', 1, 1439635442, '6c20dbd1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'f3McQ5Gdb8Vr1zrVnfFETu2cdWB8vucO1+L/5nNaQHz+2S6TDlRejqFeL0RzchHxDvsFBHARQDCzd6CF5csqKQ==', 'audio/mp3', '64fa55a1', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635442, 9803861),
(180, 'drive', 1, 1439635442, '6230726a', '', 'a1a8cfa9b875a13c436320e1957e6c85', 'cpEpxiwFO/6R3mxrn9brehIPMVGWqKL4z/W0ix8rjwZbPwtxiA8yULaNicdTzSSbQOslkU2C4M4QVckrR7uCPQ==', 'video/x-mpeg', '57b57323', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635443, 229474),
(181, 'drive', 1, 1439635443, 'f1e30163', '', '7f3d0ab076b9fbbead304640c8be22af', 'jORbVcgjIoKYm9Ij5lOiBzQm8Wyh4uLiBpOVYeXR+Nw+z5cBdgi+foYhFBaq0yEAWV/3sbBNNa1tTLmtTofyog==', 'video/x-mpeg', '64cb6f69', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635456, 3921826),
(183, 'drive', 1, 1439635553, 'db7b76c5', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'QJRPX2ft0Mn4qKJUNWJa+PYBBGZqd1J8gljRv+AclXBBYEdkyRCm8Lxy7L7zE48v2feKu2q5gjZ7G0idsVYpfg==', 'audio/mp3', '2a8e8b24', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635553, 9803861),
(184, 'drive', 1, 1439635553, '5070d709', '', 'e6321c040a4eceb05c0d6241487da67c', 'Qub1r67T04ycCn4wjjOwhf0DrNS4Xa5U4YbhsWkY33W3YWSTFuiwxEH9tttpMg7t/s3Gi6vfsCWelS0dfToATg==', 'video/x-mpeg', 'd1dd1cc6', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635566, 9804514),
(185, 'drive', 1, 1439635566, 'da0367ed', '', '7f3d0ab076b9fbbead304640c8be22af', 'tatiGvN3QiFRbBHiF2zn0BBctxZDbjTahzS8L1ua2ItHQNXW3tQSDE5v3QzS9iv6L0dEl774dw2YbtJ9s2rUIQ==', 'video/x-mpeg', '88418a3c', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635580, 3921826),
(187, 'drive', 1, 1439635611, '185df40f', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '2n2aq3IdOySfH/r0kOgSPBGS8P6ECkxjkwlik8Nj/mcY3AAkNeATg0JHRtZqy1Ux70QicPCLdXWmozfvYmPRHw==', 'audio/mp3', '639774b2', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635611, 9803861),
(188, 'drive', 1, 1439635611, '3943531f', '', 'e6321c040a4eceb05c0d6241487da67c', 'jpY6m8j4RCaI9SritdTdU6jGc6Gzt20P8arFJ1dpBCYQjqUuDRnLl6BVHp9OtJ8HtPDoknZibMc2MpLgKAm09w==', 'video/x-mpeg', '09e4d1be', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635623, 9804514),
(189, 'drive', 1, 1439635623, '30e8bd82', '', '7f3d0ab076b9fbbead304640c8be22af', 'mBYgJumCgeU3AraYWl2YMjy2efBCG1IObDccidTdMJHmJssg6Xy/XumWxVNCT3hJQkNwrnASVIm+EJsWh91cLA==', 'video/x-mpeg', '7f3e4002', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439635635, 3921826),
(191, 'drive', 1, 1439675020, '30b896ad', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'Al4VUQHrjIO2TAcVu0vQCf3s9urXTm/WUhXWv1WBJjbeS4FPU5OjhQpSi1yJqZvCC5eKwf7cJp1HYLUz3bxtYQ==', 'audio/mp3', '5fa845ff', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439675020, 9803861),
(192, 'drive', 1, 1439675020, 'eda9b02d', '', 'e6321c040a4eceb05c0d6241487da67c', 'jvb86GAWsJFKDxXYU9299qsgFrPI2V3BcaXu7/A5horGPLcOu6TJDGqMJWGQ4RIdwgVa5xAxDTZ+uAJQwk00FA==', 'video/x-mpeg', '026bde86', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439675033, 9804514),
(193, 'drive', 1, 1439675033, '590f17b8', '', '7f3d0ab076b9fbbead304640c8be22af', 'q7mHVsYexygl4iutTD198mY+whrw+ydHoMt+elX7BhD2j6aRi1BrWbBXySs6dZ2Jyn2HKrdj9jEZMMGfBmPYpg==', 'video/x-mpeg', '26b2e7ff', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439675046, 3921826),
(195, 'drive', 1, 1439765344, '20499152', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'G5jGffn70lg+DPxPRvasT1e27WodEjYoE2BPbDci5glz98cVrRyoGhofi2vtoYjNbXpwV6reS+Hq2WhzGTFiIQ==', 'audio/mp3', '5b92f4a2', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439765344, 9803861),
(196, 'drive', 1, 1439765344, '69f87dd1', '', 'e6321c040a4eceb05c0d6241487da67c', '7IrMUkzOcm23TjEkQCffJXlus1iGXxg/DqrEz8Y5pYyQIgWhXfbop7ZHZ56X+HKMlgiMBHcDkpXgBB4+W6jJPw==', 'video/x-mpeg', '6c501637', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439765357, 9804514),
(197, 'drive', 1, 1439765357, 'ad93fb08', '', '7f3d0ab076b9fbbead304640c8be22af', 'hZUodLy70154TVnxn617KQXm0LjyF9lp1DTNans8zM/YxmQ80MJBp29lUVfrAj1SnRPHU+X44xI+NH6wNA+NHA==', 'video/x-mpeg', '132d6379', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439765368, 3921826),
(199, 'drive', 1, 1439766092, '2912d71e', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'RTc1CGenuIiA0X/C3d36BumAqX7Jil1EgHZqFeavrKc5uWiRL6ecDW63RZwVpxksJuKsiaPC3Bzx6QFOHOvy5A==', 'audio/mp3', '52d4be2b', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439766092, 9803861),
(200, 'drive', 1, 1439766092, '07b4b018', '', 'e6321c040a4eceb05c0d6241487da67c', 'Tcuv2ChAleS7TKgmxpe42gHP7byvMy0O6Dgcq9+GZd4gUmfCfB+2u44G1tTNvw6y8uBJyRH40CkqgpkMmoF60Q==', 'video/x-mpeg', 'f8f71a3d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439766104, 9804514),
(201, 'drive', 1, 1439766104, 'e4090c3b', '', '7f3d0ab076b9fbbead304640c8be22af', '7GlpLs27lw7hJmwXeuO5WWC1Bfgr1hvOV+OeXl0GzkoFDgXda4LO2H/Fa7mrpYJ5xoEM0rBa5H//Ho2TWGRr6Q==', 'video/x-mpeg', 'a2b482b2', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439766115, 3921826),
(203, 'drive', 1, 1439767098, 'abdba541', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '8i/PPziGCWJRZYB/60eJt+T/BmHbF2+vKtrDFQilUqvy476tQhEHiVuNF+G0wNdG989OUe/3SYyQPBOpO+AWjw==', 'audio/mp3', '28218dcf', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439767098, 9803861),
(204, 'drive', 1, 1439767098, 'e0cd681c', '', 'e6321c040a4eceb05c0d6241487da67c', 'lXXgaWyxqowPEel4oQoSZRS5T6CugeD20OPaXbtf/0uwEaPirqweZs6fvI2p/oIlwccZTCvQYTm1z+W+hXPXaw==', 'video/x-mpeg', '63b67b6e', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439767111, 9804514),
(205, 'drive', 1, 1439767111, 'b73cd50e', '', '7f3d0ab076b9fbbead304640c8be22af', 'ZX7J6P1RVu051/N7wtxYF7QNrrUmYS5At7UgTSf4yaVgyknX9Mql9zTQb9g2cuuL4Ii0mxix/7HcwI4pM90FKg==', 'video/x-mpeg', '112960c7', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1439767123, 3921826);

-- --------------------------------------------------------

--
-- Table structure for table `storage_image`
--

CREATE TABLE IF NOT EXISTS `storage_image` (
  `id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `icc` text,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(16, 'drive', 2, 1433580764, 'd26c1af1', '', '0', 'Uoo2O2koxM5OcSfSgnyVH1+PNONwhfscWYKG06nJcwxVG4Zlj+xAU/OlgZAf0qO2VcnovA4cjDYSWKTtmxGCbQ==', NULL, 'image/png', 'aab6282e', '3e55446d.png', 1433580764, 0),
(17, 'drive', 10, 1433580772, 'cb74df38', '', '0', 'eDgHkIkkmEF9nnouUsjFYwmKb2qZ2YNaf/ayeTeJPEjz5e6b6ziXfF+fSEwX4YYYfzcUrxe/MTp5myJ5bJjZFQ==', NULL, 'image/png', '8453d2d8', 'caf25947a32d0f56aa5d142fcf16dad0.png', 1433580772, 0),
(18, 'drive', 1, 1433581025, 'd4d868c2', '', '0', 'Y4DGrpQ3bWj/nHx5XnRV/VrnoS2OA+NOlC69Eg1SU6nJyw/ii7ibLG0tPVOpun5C93GRoTvgLL7f6rLjOWGSvA==', NULL, 'image/png', '05a32824', '308d0952.png', 1433581025, 0),
(19, 'drive', 7, 1433581047, '5cf40292', '', '0', '7NBcLNDw/rPmjlTE+MA+WocmF6dyQQqEuJyzcUZ4EOtRx4jV2toWgxM8uUM5vAVvBqs3nIcJ6yAhOEfwL+eUjA==', NULL, 'image/png', '3e9a5517', 'd0939d9860c48ed73eef96ea53555a88.png', 1433581047, 0),
(20, 'drive', 9, 1433581166, '36b87fd7', '', '0', 'b4vclMq37cxN/uyp7SbiUZkui2+Ao/7GJbAFlZtRnGG1TLtWuTYlT5M3tNwSdLoqbDuwgI+DL2l2FaqFwGjaWg==', NULL, 'image/png', '43bd3ae8', '365ca3e0.png', 1433581166, 0),
(21, 'drive', 5, 1433581173, '4b28f133', '', '0', 'YTNn5BCDF6+leRr3E/lpqJ+oJ0ypDI23sruqxOthRqjuPmriuOI7jY6f9NM0v9LaqN8tr+o2xbh/EZh1zupYFA==', NULL, 'image/png', '4caa20a2', 'dad9490d11e8da1ee435fa2e7c328cb8.png', 1433581173, 0),
(22, 'drive', 9, 1433581256, '2b1f0ea5', '', '0', 'fbI70E6acHDT9OV/Y4Q2u+E9aOycgY8/ikGfy36SSzkk1M3Yk9Jqun/s/vqvF+b1W1IQ2dYpJwDfqULRlAeqdw==', NULL, 'image/png', '668a0a45', '8e22c13c.png', 1433581256, 0),
(23, 'drive', 7, 1433581260, 'c7be7f4c', '', '0', 'pB1YKm4EiqPMqwCDhxMJtVAcMA31Bn1qD4quDxK+Al7US5hqAV+Om7cNYsaiCotCWFAVr58dy1D8rq5RDOBtdg==', NULL, 'image/png', '0512d923', '29b8f946f2dadc61fd4b816e35e12903.png', 1433581260, 0),
(24, 'drive', 10, 1433581746, '45063f48', '', '0', 'Oy5GcdqA+ht0HKb2ZCqkk2lVHXD+FTUadZno5PCY4XXNiHMNBnCARQby1Lw35/hvJiLbw6F+PBhOoScPptWQCA==', NULL, 'image/png', 'bc805909', '5c3e1741.png', 1433581746, 0),
(25, 'drive', 8, 1433581762, '52aa584a', '', '0', 'TaxCJv/2r86oZvatofn9sd9jJNG/GME79jW5xwfO2/xbk1RYTBkkEYQKD7fso+TAnDYGv3DoLrdmyyTOCXqsLw==', NULL, 'image/png', '43f28c42', 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', 1433581762, 0),
(26, 'drive', 4, 1433743258, '44f9ddf1', '', '0', 'FvRC8cgjlKVXSWSMXqPIUzftXb8hOliYV4osDxoBXAtOAgBa8uOjL1DquBR0r/OdSPMUG69EfC6PJ/wiRiwekQ==', NULL, 'image/png', 'e6b1282a', '6acab82e.png', 1433743258, 0),
(27, 'drive', 1, 1433743394, '22c26521', '', '0', 'kK8oBKSn/RrmsA4zyrb51815DagVMG0FKoThNiV/VOLr6df3OxELWW/rE3VdMG9F1AkEXDFO+ijAWEUjf30pjw==', NULL, 'image/png', 'db9a3e59', '0c5c17d2.png', 1433743394, 0),
(28, 'drive', 1, 1433743583, 'ba510db4', '', '0', 'iLX5C/Y42S0nSY/0x0Ix6iT/5RQIE0Y1iLDRhEIOrRQgIc16csakE1+8vx+T0lubUBGOBDSyM021otrL8eAWiQ==', NULL, 'image/png', '99cc62e2', '457083d4.png', 1433743583, 0),
(29, 'drive', 1, 1433743808, '5a5a4e27', '', '0', '9KqoPz53PAwdb3lJmme2S6es3vkQ8Gyoj4dPCyor7k47i/qZXi+6TTO7WocesCfrvSz/eiohWYEWX4Y2quCYJg==', NULL, 'image/png', '87f89fd3', '4dd0e63f.png', 1433743808, 0),
(30, 'drive', 1, 1433743851, '76e21b27', '', '0', 'GyDozAoZPu2itx6MT5eb7lYMTNBOgwj9zF3rtoNlGVFKnYuhYoVEIfHI1+63p0auhnJS65vp6pFldoVfU3/w1g==', NULL, 'image/png', '91a71b63', 'dd81a31a.png', 1433743851, 0),
(31, 'drive', 1, 1433744739, '31a0e4e6', '', '0', 'cTAQJPqCoPS7d06iTp1OVPO1HnThS3QM53qJ3y3ZKlk73T3Cz06TNoKzBFY918XOaNNKsqVrgteQdUmPpg1Cpg==', NULL, 'image/png', 'f7511b48', '7c78491f.png', 1433744739, 0),
(32, 'drive', 1, 1433744756, 'bb64a72c', '', '0', 'hfiDV/UgFL0LI2hXyMxYTfOaMKd1wPYyO2hxZb6386ZCB0dgqJNkuaOd93ywKsA0XXqLgdxA8WM6mHqrdG7HIg==', NULL, 'image/png', '09b07fd3', 'b59cdc98.png', 1433744756, 0),
(33, 'drive', 1, 1433744783, '6b6306ee', '', '0', 'asjDBuOSnQ20YX+As/XIEh3kAXBRXVfKnHpaYObY9iqYltfx9ivV6LMovc+0YGicnx/O3mt0pPBUxnUyc8I02Q==', NULL, 'image/png', '5ab90ed6', 'f3e3cc3d.png', 1433744783, 0),
(35, 'drive', 1, 1433753223, 'cafcab80', '', '4972ebf829ed31f4661478754d02ccbf', '/dI8bvqGn8ZQ3LY6845UBBXd77dh0QCQPx/nysS4ZdsgL+nkWjLbk4jFLyokik5Lnwe2nhf7LenqDuH5SPqeiQ==', NULL, 'image/jpeg', '9b8c6d73', 'IMG_3270.JPG', 1433753223, 389897),
(36, 'drive', 1, 1433753224, '798bc465', '', '11fbe610ab0b81590b773ddbfef908a1', '0kQRCQGyvHJjsYacYpSYo0GgEWJe5z9DNGf8YZRD2MzgmMD4b/VanX7nHVu+kfZVX7a9mk2KLq0MxhP2MLRzcA==', NULL, 'image/jpeg', '72d39a0c', 'IMG_3270.JPG', 1433753224, 389897),
(37, 'drive', 1, 1433753225, 'c6cf3055', '', '148e4531979c96c57c5d9c8e8763e759', 'EbniOKhJrhWfsTw8tERTxu4d0fnqj82aJP4Rx0k3cTVowUFiPMtj3PUeSy9Nsa3VWT+2Qskz/fK3dRGpW0EOQg==', NULL, 'image/jpeg', '35b63e0f', 'IMG_3270.JPG', 1433753225, 71365),
(38, 'drive', 1, 1433753226, '4d12d7b8', '', '21f1559c387fab9e433746f9af35deab', 'MTKM4YI04Oq6aSG3ltFeaZ3Q3AvQxLLP5HrRwKGvQ4g2Lw3aPxGHy45hMJLciOGW0k6j9atxiLvFFSD9av+9jQ==', NULL, 'image/jpeg', '202615eb', 'IMG_3270.JPG', 1433753226, 34631),
(44, 'faces', 1, 1434286390, '7c70fabc', '', '983fdaf966b166453e3191c5a4ac59cb', '5JjphHZw6MCHK6yNu1CtWD/vRAY5mpxLF9iKlFTeGxm0jPEUkFFvpCLxl16faCHnoBGHdKYvZU/x6AcRbM1EcQ==', NULL, 'image/jpeg', 'a9eccca7', '11011466_537786266359740_5019260888783328429_n.jpg', 1434286390, 104382),
(45, 'faces', 1, 1434286395, '826c7a78', '', '983fdaf966b166453e3191c5a4ac59cb', 'cHWKF/eZ1vwHVCW9qF9xbqGNeS6Vw3jQszamYqZZhyweW7QR1hn8U34eh3yhPRMlsWCgADbzSQZHrwcOjLPL2g==', NULL, 'image/jpeg', 'd2a4f2e2', '11011466_537786266359740_5019260888783328429_n.jpg', 1434286395, 104382),
(46, 'faces', 1, 1434286398, '0e9552a3', '', '983fdaf966b166453e3191c5a4ac59cb', 'Cdbxslxgw+PWO4yQDS5la1n0FW4fs+BOpii1ILOHTdBCueN6mta5l51CwojNyhj8eu3SzUl2ihWsDGLuZoqkaA==', NULL, 'image/jpeg', '12cdd749', '11011466_537786266359740_5019260888783328429_n.jpg', 1434286398, 104382),
(143, 'faces', 1, 1434548408, 'f0499d40', '', '53b985ce0c501d1710a7d5441d2066c9', 'jmBBqoN2/l1nCF/j8+5EymsUiG9rME6yW5vPunPpqUtzDPfuM3+Qq4hDyhz4RL8AewHonz8/4mhk+BIr3pMqMQ==', NULL, 'image/jpeg', 'd4f20a6d', '1234489_638157786330815_1794467412252996416_n.jpg', 1434548408, 79334),
(144, 'drive', 1, 1434615942, 'fc162df4', '', '0', 'vQSXts+ZjRdohv7Di09h+PZM6iL5Pg806GeYSX3HM4AEVALkuU1vkAaduaWoMzL1AC06XefmOWGAuZUEiUW6gQ==', NULL, 'image/png', 'a065f778', 'b1846cbc.png', 1434615942, 0),
(145, 'drive', 1, 1435497449, 'c2e0be91', '', '0', '669KLq5fGFdUiMxgG/eH6OSf6wSG4csDjVIW6Jif6sVk0GriZ/X4sepizsAQgXlEh7/rzHXtE6xnk1SYLTM3fA==', NULL, 'image/png', '50a1bd10', '76dddf6a.png', 1435497449, 0),
(146, 'drive', 1, 1435497531, '5015d4cf', '', '0', 'YaGXEElG13cmTFtmXj8XSt6VrdbpJ5YVx6e/MGWR5MJDTZXVX9U8Y1008OJdMWvzuhmXHfOv08C1L+mzJClEXw==', NULL, 'image/png', '705d5894', '81a4002e.png', 1435497531, 0),
(148, 'faces', 1, 1436306433, '1a11744c', '', 'd33cda42a08ff654cf920a671a6909cd', '5vHKvTTVhfooaMyR94PE3uxydi6GBWdTkSzZ08/Qprev5xk5W/PcTThEDX0ObCkNs4DjUsCfTtPnLBFMRNPHRQ==', NULL, 'image/jpeg', '8e3b2ad4', '10847938_598251166988144_4544651445744408482_n.jpg', 1436306433, 56491),
(158, 'faces', 1, 1436408158, 'f1b609b9', '', '1bf8c47328421147a960b3fb0e92adde', 'XI3Dz7GSGpJsJsqYxvsvbl5t1OfwV1D3m0jUpamOZoC+h41yBNInQFhq7nLFVJEuxOYIqCa5JXC8YJ5hNIk0zA==', NULL, 'image/jpeg', '1a693274', '11156219_1667053670185098_3727091899443504505_n.jpg', 1436408158, 22836),
(159, 'faces', 1, 1436408176, 'ce1c6be1', '', '4acd8ff4eb8f3a090038ed637ed8124f', 'sVYs4FAY0VlD7M5x4RjSAdgWCERX56EuO4aguIAXY9UGmuLv/saqce/MhQ5vBgILtI4guQTzt7ib1VAXq42B9A==', NULL, 'image/jpeg', 'd7c0cb1f', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408176, 100167),
(160, 'faces', 1, 1436408180, 'caffa215', '', '4acd8ff4eb8f3a090038ed637ed8124f', '6uqw3QEeUa0uj4FzV+9m/uhuwotIoy53x36xjsaPtUvTBhasWby4asEJgf5pq3LtEGVD0NFFwvPihc3RiXJm6g==', NULL, 'image/jpeg', 'c068a13e', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408180, 100167),
(161, 'faces', 1, 1436408184, 'fec3a298', '', '4acd8ff4eb8f3a090038ed637ed8124f', 'VugBm81txbDCtn7gfO2wS/yiAwi2fLyt1sZDLHt+xn84oIDni/zWbHsa0uBoixrcM6k1hdBE29VzWtfEcjbaWA==', NULL, 'image/jpeg', '23733616', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408184, 100167),
(162, 'drive', 1, 1437042260, '4103c7f3', '', '0', 'oAdGgSS89cY95BrKi9ERhCUXn5+tsxpvMZbYWKQlbHtaz807/QfgpJNkeBFG5AEi3y0XFPoOuemLLCdb1NXRHg==', NULL, 'image/png', 'b183eccf', 'b1564072.png', 1437042260, 0),
(163, 'drive', 1, 1437042379, 'b5bf02ae', '', '0', 'K0/jG6/mhUAAzb7tjVrWhgW8eOnCeziPBGCsstMNJywuGqGfVSWp12peFk7iwmqRvknBsSGplHgvwpdp0m+Fow==', NULL, 'image/png', '25492c91', '8d301478c02c5f731933f6ee94a523bb.png', 1437042379, 0),
(164, 'drive', 1, 1438248082, 'db089748', '', '0', 'gBAAkvEL2SZRdUvX22vqqT/McxX13mQ+bPx4Pv7Lb+lMhu4v7Ps7tp0Xum4SxY+L1FSWN/3BHTEdMdBh++zg0A==', NULL, 'image/png', 'ab36705c', '5bfad0e7.png', 1438248082, 0),
(165, 'drive', 1, 1438248136, '25dcd17e', '', '0', 'vWgtDlSzyrstLdskklWiRcLTJj409G/WPu/HUiAdXqKvJTi5oEubLd9Ezzgj3Xftk7AxiO5nidSl6GrmIyMxtA==', NULL, 'image/png', '31cd475d', '8f56b6923d797b858a0e7e86b4cbf90f.png', 1438248136, 0),
(166, 'drive', 1, 1438400858, '539c8e28', '', '0', 'a1RQmNB1h8dHIE72APVdSLd4spOtnX/IvtWGLEWy14N4X5q2nU0IX9wwspO4L4LTX4pjMATCD2qkg2nFAUw3hQ==', NULL, 'image/png', '08de61a5', '921ec650.png', 1438400858, 0),
(171, 'faces', 1, 1438420779, '93d9ca05', '', 'f7aa28c3818fc8096d18c489dae957f2', 'LhvSSXPisqh94TKi1NbyDuTCPi+taXcAmaOHzaHXsG6otucs0X1rbMelpHcO5hIjtk9XfZ7un79BrwYVrJs8IQ==', NULL, 'image/jpeg', '681f8bac', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420779, 41960),
(172, 'faces', 1, 1438420783, 'c0277771', '', 'f7aa28c3818fc8096d18c489dae957f2', 'ofsY1/hRr9A2rEhxvIdJ5EQUtpNxhR63BYdDm1Y30pENuekcm2H+hAlmvCm2eUbkJTxZ08NZ1DYBq24xh3mlbg==', NULL, 'image/jpeg', '8586fdd3', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420783, 41960),
(173, 'faces', 1, 1438420787, 'bd80a5a3', '', 'f7aa28c3818fc8096d18c489dae957f2', 't/patHYefZh4Eh/F9jzxABs5RzUqsu4mJHdyPox+VQ9CKLeXEOq09+j35HSLnQmuqWgAh2eVKeTWHIEU6TaG/w==', NULL, 'image/jpeg', '0e40d38f', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420787, 41960),
(174, 'faces', 1, 1438420791, '4f8c35d2', '', 'f7aa28c3818fc8096d18c489dae957f2', 'iGzTfi/stYq87PsbTV0A2O5ZbEE1tL2CyiYkpuDUpfXfznbVWePVv+0PNPmG3Vq+HYJ++IJALbJvGffXWDq6Bw==', NULL, 'image/jpeg', '8689ae88', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420791, 41960),
(175, 'faces', 1, 1438420796, 'f3d27c16', '', 'f7aa28c3818fc8096d18c489dae957f2', 'MuPqJ10/5BVkWY2GT1tF7epvq8zZKa7oF4ZXRce4MjKcA5+BxF8Xm6sRNrZ3MrW2C1qZxlvVHF7uZ2BSNc8bCA==', NULL, 'image/jpeg', '772a7cf1', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420796, 41960),
(176, 'faces', 1, 1438420801, '4aa5b9de', '', 'f7aa28c3818fc8096d18c489dae957f2', '+sx/QBuPObSyWqdg6BUEsX0k4pjA4EOg5XfCZw1xtGB3n3PBowUHiUCcHn+9VwOYMr8n9gSTayASNQXtGtW9JQ==', NULL, 'image/jpeg', 'd7788c66', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420801, 41960),
(180, 'drive', 1, 1439329784, '31d909be', '', '50bb2759572d27509815888aa061531e', 'wEmsKjyB0k4WCe03raqW3HPeiKIqIpkHddM/zryURXrhmdfiYvePZsV5MCTvNPfzqS9BFF1edE1KGPU5nuxf1Q==', NULL, 'image/jpeg', 'a7eb8cfb', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439329784, 28052),
(181, 'drive', 1, 1439329784, '3f192a8b', '', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', '+PUTDMcRPQHYmllkRJzXp3O96X7pvjGH1fu4EP/fmEdEBh8jaL/57AGDOUkd3Cwyt0XTirjpSnFMjJegEZCmug==', NULL, 'image/jpeg', '09decbcc', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439329784, 28052),
(182, 'drive', 1, 1439329785, '085a674d', '', '5336515b8af080b6af38491deb654f0e', 'zYtxdOLk2yueHMwDTtzeFlAd/exdUz9pNPbIRYFqUkmgWAIxMiDLXxPz/szyVbuLz+daDsP7k4qKByo0X504tA==', NULL, 'image/jpeg', '1ffde4e8', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439329785, 31099),
(183, 'drive', 1, 1439329785, '1a0d8cfb', '', '411b2326e22365821ee34a6b4d93877d', 'JekP389q7TbeGtCkdydFEflDzjNSrylLdBHdT0JiW/3dqCojerNH3HZEAx7p7H77t/rk2lgRzBYjzhljN8hYRQ==', NULL, 'image/jpeg', '0963055d', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439329785, 31099),
(184, 'drive', 1, 1439331232, 'b824d71a', '', '0', '+6R/FkLcJXLOhwnPnpeysibSuZ63bCUZk/xppyYXXIs4L97K8oMRfvkHHPVyVT+R+CDc5nPHRghV4+33yyMJ9Q==', NULL, 'image/png', '079243fb', '4de2b6d8.png', 1439331232, 0),
(185, 'drive', 1, 1439331251, 'f148d67a', '', '0', '74KWcyvH/BBSRFRC7KD+Xy8B/7iG69dsHIEr396ztcLa8ItR7TOOVBBD1FpewmmZSeGCuAl6eZT9li6lnHYkeg==', NULL, 'image/png', 'db578872', '5495b9790051550529365e70c23026b9.png', 1439331251, 0),
(186, 'drive', 1, 1439332659, '9a3ddd71', '', '0', 'oPCfemtd+1dEB3g51Burz8qfVM9oqMI/O8aOhWAdgSr8xYSPxUexWfGOJAAPVRVL2GbM4DeFFZYIePuDIXjkvg==', NULL, 'image/png', '8e3c38f4', '11133f36.png', 1439332659, 0),
(187, 'drive', 1, 1439333783, 'd45b672a', '', '0', 'lSqyr8PxQ8yyb0ojmkUPvkbIeEw+FsBvdS4g7n526sO0dXCdFTT5MSdLmzf2R9WCtr50DoC61ipWOP8qDTHtVQ==', NULL, 'image/png', '462a3bf2', '83436f4154a88cc8116430c54ae9ec6f.png', 1439333783, 0),
(196, 'drive', 1, 1439335038, 'cda28caa', '', '5336515b8af080b6af38491deb654f0e', 'a53Nc3UHuEZLoEP2Fxr2Dtx86KcqZ7nXcwpYFZRM40kNkeFTbxHJnLmFNonQdY91OldJ+1OrE3WcBF7104EYDA==', NULL, 'image/jpeg', '63c123ff', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439335038, 31099),
(197, 'drive', 1, 1439335038, 'e9100395', '', '411b2326e22365821ee34a6b4d93877d', 'RjGfE2TM7ReD2JDJgvtPv+Cn0O20cL3y91cHXNPsdl2eua5Uaho7RhljNChiBqXBune1lG0TjN9QlPLtrxV97A==', NULL, 'image/jpeg', 'bab87783', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439335038, 31099),
(199, 'faces', 1, 1439486447, '245794b2', '', '50bb2759572d27509815888aa061531e', 'sBtz6lAQQaIa9CiG+xLHoDDpU2gO2cNclbQ+A1HJZV3/3EFUn4YNLgiktSkqKtxthexMtV15k+Nqn/7BMWE54g==', NULL, 'image/jpeg', 'f1fe2513', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439486447, 28052),
(200, 'faces', 1, 1439486472, '553852ad', '', '50bb2759572d27509815888aa061531e', 'epJ5O7ESaLjsqidPXpjC9JYQ4kfffXGvBYgV61z1ZdmjwbmJ4Ra4IDLFdEC+MpDOE2nrqO6nl3h2rMQm70Xr4Q==', NULL, 'image/jpeg', '58181aab', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439486472, 28052),
(202, 'faces', 1, 1439486794, 'ef11d39c', '', '50bb2759572d27509815888aa061531e', 'oixL7S/SdpGTlxW+G78V8UV4c5dGuaN2dTHC4B9/f1v2P6uVVKcwGsdQC054POLBjKahcv7lOpJcSrcgiC4XqQ==', NULL, 'image/jpeg', '72b83f1b', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439486794, 28052),
(204, 'faces', 1, 1439492026, 'f9f53832', '', '5336515b8af080b6af38491deb654f0e', 'upjwlae8vOlJUz1WxwWVkK4Y4lUTUFA0MXeJs2NCeeHteilrkTwrJqv86TzapP4C/dY7wAYkfNEmZLbzVWpjUw==', NULL, 'image/jpeg', '806c5679', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439492026, 31099),
(205, 'faces', 1, 1439492170, '7427bf03', '', '5336515b8af080b6af38491deb654f0e', 'xRCGvRFq3k7uVaZD2mX9zUCSssiW4llTWMT/570BNxyNhtJNHcSW+1SFCMrHxKxVT+YGCN8Zb8VDV3IBQbfrGA==', NULL, 'image/jpeg', '073db441', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439492170, 31099),
(211, 'faces', 1, 1439493980, '131189ee', '', '29721fe43799438d58987ca4a097478b', 'pLMmTkLJui+kEmZN/r95I6hTVoc2u1V9x50roc5D5FwmzNspNkWyWyPt3F2402zLTSqoyNQDyBy0inQMmquFLQ==', NULL, 'image/jpeg', '7a82e14c', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', 1439493980, 33487),
(213, 'faces', 1, 1439494328, 'a0406045', '', 'eec11bf078e6944d5126d31506ff3069', 'jN2wAdqRqH/yK82znjf1F1NWrLgmYeNOmsYVnE4d+Ipy8BN9lUnpI2kc31hdwaORBKZV8dAaJc7q0agXN7+EfA==', NULL, 'image/jpeg', '38cf247d', 'su-that-buc-anh-ve-2-co-gai-khien-dan-mang-giat-minh.jpg', 1439494328, 46511),
(214, 'faces', 1, 1439494333, 'a55ec3bf', '', 'eec11bf078e6944d5126d31506ff3069', 'U7mTKsIX+Omz9itqqGDAKprXHgbs5geCrEB0kHZJKM1xZFjzgqvYNpAlqC/c+5en67KD4Pg692LwQRlDYyuQ3g==', NULL, 'image/jpeg', '14a5c5b9', 'su-that-buc-anh-ve-2-co-gai-khien-dan-mang-giat-minh.jpg', 1439494333, 46511),
(215, 'faces', 1, 1439494337, '1a5bd29e', '', 'eec11bf078e6944d5126d31506ff3069', 'qpv9ZK85p/eXxRpbqm4q+HUAPeI1mtZCv+ezGbbIP9FGV80PNm2oBw5JPwZPlciLCtrWId22/zFzCr65rdru8g==', NULL, 'image/jpeg', 'b4a1d5a3', 'su-that-buc-anh-ve-2-co-gai-khien-dan-mang-giat-minh.jpg', 1439494337, 46511),
(216, 'faces', 1, 1439494342, 'eb16a8bb', '', 'eec11bf078e6944d5126d31506ff3069', 'r4JNBqq7/9/9iwV06jBtpNg4ThW5ycna8WKq9SmmDQacmWSegMrTSRFBgFhxFkJ0XgBugjVDQl7BSvaPPRHggw==', NULL, 'image/jpeg', 'ff9f01d8', 'su-that-buc-anh-ve-2-co-gai-khien-dan-mang-giat-minh.jpg', 1439494342, 46511),
(222, 'faces', 1, 1439494548, '73ed8029', '', 'a7578f07bb1dd0bb3c8a9cb50116d483', 'y80PYZ1u5YRCJnsAAImR7Lef4TzWvJiPqJ8QWywqz5L9Z6rbqeC+MGqfhJd13EKgXfFnF1EeuaDhh+EWg9PaSA==', NULL, 'image/jpeg', 'b1213f53', '11866367_491867664316060_377902550465848739_n.jpg', 1439494548, 52530),
(223, 'faces', 1, 1439494554, '457ad5b9', '', 'a7578f07bb1dd0bb3c8a9cb50116d483', 'urzlfJG24/mDg99IlWRP9dnfi1s5Mdp+C28Qc63kcrXCji9pxdhowjo3yIbzO5BvwQOKpEGNlf0XQenm6f7m9w==', NULL, 'image/jpeg', '788e37d5', '11866367_491867664316060_377902550465848739_n.jpg', 1439494554, 52530),
(224, 'faces', 1, 1439494556, '9bdbfd10', '', '039389a517b4c3060d253fbeb375f266', 'Wit9Pc9lnho0dUt5BGYoZC6intxChcLs7cyaxZ0C++E+HLgFmUCjibjJ7BXjp6L3CQxxhq1teF3d2ESPRViFIg==', NULL, 'image/jpeg', '01b93eed', '11836846_491867660982727_923869364603797069_n.jpg', 1439494556, 55719),
(225, 'faces', 1, 1439494558, '450b107f', '', '3e9ae20241cffde75e1741beddade7ae', 'LI4YAyM/YGY0jpbWvpslXhUsqdY5BRHU7KWbByrMLBGmYeY+m7A9LSeGTLtEesw97r8Su7GB6lzQjdXYpOvzHg==', NULL, 'image/jpeg', 'c8702f49', '11811548_491867670982726_8282725952899674799_n.jpg', 1439494558, 80073),
(226, 'faces', 1, 1439494559, '6a5c4719', '', '92b03e398609730b059402d5812bf071', 'uhoAh7xEpPIpMpv8HeSPtN/FBMlDQuF+5/QrCcH2+xgXinFzbbLUmLvW+i7tOSwxBN3YHhDPNX8yNomuyPHgQQ==', NULL, 'image/jpeg', 'a41d128b', '11828577_491867680982725_2523986418083243593_n.jpg', 1439494559, 50927),
(227, 'faces', 1, 1439494560, 'bcfbb9d2', '', '039389a517b4c3060d253fbeb375f266', 'VbtApWtB6gausDFZc8w66X2W8KnOqU6yctUij0jacO677smRvJ34g7/24OJy1DBz68avuAzI7utNKz00G8D4ow==', NULL, 'image/jpeg', '5b83ec6f', '11836846_491867660982727_923869364603797069_n.jpg', 1439494560, 55719),
(228, 'faces', 1, 1439494563, '3e735bc4', '', '3e9ae20241cffde75e1741beddade7ae', 'gbfL8HbZzu5Bhue5Li3AfomRtQCy59xL9QRW0hGhIKtUdkkRFqIB7aiW/71tH7jhr7tyDrC3DQ9EbjwqyjizUQ==', NULL, 'image/jpeg', 'bf877f41', '11811548_491867670982726_8282725952899674799_n.jpg', 1439494563, 80073),
(229, 'faces', 1, 1439494564, 'a8bdd1f8', '', '92b03e398609730b059402d5812bf071', 'QFZQpHmwxVcQudzcXmkJnmgbgMhFKMTpyHpipYrA8IH4hr9foZUgsdhq/jlkil2apilq9dwHKpC+43TFcrRGSQ==', NULL, 'image/jpeg', 'b11a28cc', '11828577_491867680982725_2523986418083243593_n.jpg', 1439494564, 50927),
(235, 'faces', 1, 1439494713, '4c4f9f1d', '', '588736388b5ca4131b7af0f30a7520b3', 'wOxHZ1XtGqmhOKV8LmsphSrdXALlz4x8UDc10nTK8AdCeIddy1Eqxa28OuaZuxtzxlx4IPc3fAFi82upc5kc5Q==', NULL, 'image/jpeg', '3fbb7faa', '10981643_826035000795203_4219954743583764927_n.jpg', 1439494713, 60976),
(236, 'faces', 1, 1439494721, 'a94a5c0f', '', 'bf42d8e860ae67f2dd32fc27adf95272', 'cDBZjIUq2kEdLsLH++RB+CrwQIKxf2nyHUiu4TIWLqTxc4DoHR5FSrribKudtL96+pNepRoXvxfTklhT7Dtlog==', NULL, 'image/jpeg', '30b410b4', '10430434_842543645811005_4466131605703992802_n.jpg', 1439494721, 72541),
(237, 'faces', 1, 1439494726, 'f43b4ee5', '', 'f5b1a4825e0e3f8f4fae2ece453cac46', 'Yz9Fdg7IqmleaqOc3BJ9flcNdlzx5Q7GdREvO+sDedApnHZcPT6cXLxYP8X+SIXJnY92PBbGKWM81NDi/z/f/A==', NULL, 'image/jpeg', '5b70c9c6', '10520650_777361342329236_7367315193035354466_n.jpg', 1439494726, 82218),
(238, 'faces', 1, 1439494727, '54554f0d', '', '6c8f44bc19bfdcb0238e6a991c0ffca8', '62Q0xX9ESySN8nuFp7WmTou8dzPD6tAIZ73N0WgF4GEgN7896+Kg93rbjZZejetccZRqJa2WQexMMhwHtkd3rg==', NULL, 'image/jpeg', 'c94b0da5', '1618584_774535172611853_8737730087718874691_n.jpg', 1439494727, 81930),
(239, 'faces', 1, 1439494727, '10cbb1e8', '', 'ef79c6334046abd1b5c48ba380fcd244', 'RT2Vb9kwF5AkFb38GISpPOC+n7ZDQpkQPDI1px/dgegJa0RqG3osok8cGVKlKVXRbfV9BhzDxQsmi0myUyFm9w==', NULL, 'image/jpeg', '3018ebb7', '1473002_826034757461894_6544417078155383387_n.jpg', 1439494727, 79221),
(240, 'faces', 1, 1439494731, 'ddf2ba45', '', 'f5b1a4825e0e3f8f4fae2ece453cac46', 'WQiAR2QfQg8Uc0Yf4J3YMgob76c4kGbrSly2NhqecawU7hg5kK5gDw61Mwemy+yy6oV35mbaJBi2+2EoSqEjCg==', NULL, 'image/jpeg', '1076a0f5', '10520650_777361342329236_7367315193035354466_n.jpg', 1439494731, 82218),
(241, 'faces', 1, 1439494731, '63e18aad', '', '6c8f44bc19bfdcb0238e6a991c0ffca8', 'rxE8YmXvLfgJAMEAgfAx9UOGo6SS4Na63w2dOBtlVtOEsjukQ4pLKnzZDK0QTZ9gtaJrjUt/30iUYbR3JldN/g==', NULL, 'image/jpeg', '48d4a0e4', '1618584_774535172611853_8737730087718874691_n.jpg', 1439494731, 81930),
(244, 'faces', 1, 1439495762, 'e1df5051', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', 'dP8fWnPleFkYOMSo4mhCQh1d2ytINOBmVFOdF3E1nNgmYXwFQsWeZZ1J32lJmorlyGD+FUOa06KhL/KvXFyCzQ==', NULL, 'image/jpeg', '96546da8', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495762, 53717),
(245, 'faces', 1, 1439495767, '22d11b7c', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', 'Xf9T/3MU6cuFv4rwlJm7C7B0hnR9YjYmqP0PED3ORtPW9DiE+AkDikIwUCWlp7vVBsAZsLx1WFfiivS1/qENaQ==', NULL, 'image/jpeg', '7630f157', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495767, 53717),
(246, 'faces', 1, 1439495772, '4bb5abac', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', '6jm7f0heaFpcQANf8uujE+GS6NTx86htT2TeSmc+dQ437QhP8EWh6Up55XKCfrOjaz23A6JUm6e7O0PFRtzRSA==', NULL, 'image/jpeg', 'c4b0cc10', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495772, 53717),
(247, 'faces', 1, 1439495778, 'bf8dd265', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', 'kruoDLUPJt0IQgcSE8OlZuAGd2bkHNvVfmkuD0c3wu268CyKOZC0mOIPspyvdR5rT2KmKjXfNjUIFr9oGk9w3g==', NULL, 'image/jpeg', '4d4b5c6d', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495778, 53717),
(248, 'faces', 1, 1439495783, 'ac02af8c', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', 'Vo9U0TwwWO6b/yRUPQKYmLMOY2+YkG/m5oJjsI9izPATkrmvXQPwqJdWNpa19rL/5t13eL2YQ+XchbyCR7AWjQ==', NULL, 'image/jpeg', 'a54617d8', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495783, 53717),
(249, 'faces', 1, 1439495788, '382cdbb8', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', 'JJ+bt3dl+SuXunSCREVb4Wszu6MwW1V+Pvbj+8DlNIWp5t1aQeYQH2BDcTAqFv42EB29gXniJeX4XY68EltHfw==', NULL, 'image/jpeg', 'ad6f98d9', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495788, 53717),
(250, 'faces', 1, 1439495793, '43574b06', '', '4d5cb0c1a3eaf9f8e5a6fded0587e05c', '2p93/yclvxKqtxILiSD7cJScHZRcTWOGn9b1ex127KWmacYzbHrVJCSMb95SxHJhyOSHzHSYUWeWc72bJAqjfw==', NULL, 'image/jpeg', 'ac7fa4f2', 'img-6914-1439480465301-0-0-316-620-crop-1439480577720.JPG', 1439495793, 53717),
(257, 'faces', 1, 1439495925, 'a1bc2803', '', '1c1a724bd1fe36ae6295868ab7c9751f', 'fuz2ZnabC3EDTN+bLz1ROcRm9D2LYtSgI2L0ELCYW6TaoEmpMj9KORFb/NQXV3POewX0A9jAwXgY9ouuLAJ+Bw==', NULL, 'image/jpeg', '5fb0da7d', 't380976.jpg', 1439495925, 84501),
(258, 'faces', 1, 1439495926, 'f651a32f', '', '7e435549ee62d7db62939b292da2a623', 'LAPdHsf4AciY6YQ8I4VlcLcXW+150CMd4CPTZFR3HQmvBVLuGZxOhkhJgGam67KZwHLLwpmjqisC66S3pXALMg==', NULL, 'image/jpeg', 'b14779a6', '1405652484581_500.jpg', 1439495926, 36160),
(259, 'faces', 1, 1439495927, '4091ef90', '', 'be20147a681783439a48d7d7f453f906', 'iymf1FiSRUcydqxAH2xF/Q/NQWJ1Le1AjHP09oJfPAi94YcaQEIyQbVlVBkrIubHTRfU0Ur4v6blnfYzYSJXxA==', NULL, 'image/jpeg', '478f8c9b', '1338629570-phuong-2.jpg', 1439495927, 37578),
(260, 'faces', 1, 1439495927, 'a546980c', '', '3b00e1f8b888761369fb312029613017', 'fP+e0oWWtB1UGJO1zlxwFbZZ5/qGa/rTXBy//h/N/vaNdq0/x8jheykNDx9LdCrvNVmmj8W5zKrF1/URXrH+oQ==', NULL, 'image/jpeg', '06939975', 'a62de9e39cde3240d1acee76eacfd7cdeb32fdf2_310_310.jpg', 1439495927, 17880),
(261, 'faces', 1, 1439495928, 'f28c42bd', '', '8bc31f9145c6a316432a3c21b83de874', 'NSgVdF4rsthzwOCxW2tgS9EQ7LB4Eots5tw13ZssiIpEsACossjfMpk6u4L14+n47/6HHsu/0wMzBYAtf8UrBA==', NULL, 'image/jpeg', 'a060fdf9', '55c3d19c516439a80fefae43ae9eae07_1394791137.jpg', 1439495928, 15267),
(262, 'drive', 1, 1439514127, '49e44278', '', '0e6e2189418215d2b51046d212f5309f', 'k/OkT1CfoMq8u7E2Ef8UF/kAko3It+Hd/MO3ReCI5bzgboQ583g2kZdx9fRhQp5hL1/+Zu6GkNUlze2lwvfWQg==', NULL, 'image/jpeg', 'ba9200c2', '55c3d19c516439a80fefae43ae9eae07_1394791137.jpg', 1439514127, 13998),
(269, 'faces', 1, 1439532678, 'e86ac2f6', '', '8bc31f9145c6a316432a3c21b83de874', '7bDxOe7Re2PBFBFvQEWEoK3hb+wkdP6XcRwplZy8+Pu9XFywBmTFEkL7eCWYGauCNv8ZQzzYN+19AVbX3LnyVg==', NULL, 'image/jpeg', 'add796e7', '55c3d19c516439a80fefae43ae9eae07_1394791137.jpg', 1439532678, 15267),
(270, 'drive', 1, 1439532987, '921caff1', '', '42fc5b24c9654f940b191b28f32c6a33', 'Yqibnd55dEdjPnhTQdnngNcDww0tSplOAq1GbYl0GPMSs4Lzsx1IGO6Vmdr/BiPWhAsdxn7MmrIEwJweHgpjbA==', NULL, 'image/jpeg', '4302afba', '11811548_491867670982726_8282725952899674799_n.jpg', 1439532987, 74013),
(271, 'drive', 1, 1439533137, 'd6b2f362', '', '5ed2d2bd93fa58524ef896bcf9497556', 'GMJufaPOgUFNIv3i22UL0ITzxuefUumN1n6REd7B4pZu5SKkZTaFil43kAHf7SU+U7gz4h/mMMWBRUsw/tuuZA==', NULL, 'image/jpeg', '46af04df', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533137, 48117),
(272, 'faces', 1, 1439533146, 'b0597409', '', '92b03e398609730b059402d5812bf071', 'kxVQU7EtDAGC+I3K71NdmJrRi8uKsT8fBX/n0HQbFgoriqXMtnW+Al3q5gvK7oEuEmadE+zlmaqbJvC2JiHYDA==', NULL, 'image/jpeg', 'f3552d29', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533146, 50927),
(273, 'faces', 1, 1439533149, 'd8936c30', '', '92b03e398609730b059402d5812bf071', 'Wiw10bW1edgLJ2z7NPqAK8UE7tK17Au+VrFZyncgs84UZGK4ZyIbJPO58J4vHxh5U134RrBU7hamjJTGGHzWdQ==', NULL, 'image/jpeg', '6cf4e703', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533149, 50927),
(274, 'faces', 1, 1439533337, 'b5f98392', '', '92b03e398609730b059402d5812bf071', '7GvCAVx/IafTwPFuWv+Wml25GTlGpfKaRokWcOX6CpOAQt6WuxubrMna7zDdFGqnjytR8QCm5lVEdcO1wHhexQ==', NULL, 'image/jpeg', '07262387', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533337, 50927),
(275, 'faces', 1, 1439533340, '2e07c331', '', '92b03e398609730b059402d5812bf071', '6h/n8i55h5NnKUrsxMXtJi7oDhJtxznRID+oVqlp+bo1Inyz9CQFlrCVIDyfqHvnsrYYLRcHJewwirVpDsIxhA==', NULL, 'image/jpeg', 'b7fab1b1', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533340, 50927),
(276, 'faces', 1, 1439533452, '7a2dceef', '', '92b03e398609730b059402d5812bf071', 'm6EhM7rt+WcNXay+8Wl5sX+mCyheSI+qlm8oJseXHakRue4siebtZe06RID0NDlJYhRVZjjZaseXdMXLMLmLHA==', NULL, 'image/jpeg', '7dfbf66c', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533452, 50927),
(277, 'faces', 1, 1439533455, '25ba4ac9', '', '92b03e398609730b059402d5812bf071', 'OCjjDj50U5l8ljuDiaX+Th4BrDLteWwJJoJ7e4+owHQ+bhWslQQQQbhDUgYYv0tzeT3tEa4kEItXINHRCQe0sQ==', NULL, 'image/jpeg', 'e89fa381', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533455, 50927),
(278, 'faces', 1, 1439533615, '773e439f', '', '92b03e398609730b059402d5812bf071', 'oouzx/kmloVNdaDw6mzrY0R7zd/6xSRwxsdRJJWv7LJ9XxTExWeZCGx/V92lOZn4UWf3fze+F7/wGL/FmuzElA==', NULL, 'image/jpeg', 'e7269720', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533615, 50927),
(279, 'faces', 1, 1439533619, '372642f1', '', '92b03e398609730b059402d5812bf071', '/D9XtYe9BrfbKfJ5E84G3K7ltx+8DEmyM5+jTfRPmvvlQWCXxbyzL+0ptKVnZ0CIaF+MmoJQlMZhiCPAPQP6nA==', NULL, 'image/jpeg', '377d6e84', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533619, 50927),
(280, 'faces', 1, 1439533654, '99872137', '', '92b03e398609730b059402d5812bf071', 'ZPGSROC2CgwPLGNekJYyWhtBBoKTrgJc4p3vpgzaFB6mu640mNy26jJY0w+psP9kyMVv1kq/5LiBTa8hXLM0MQ==', NULL, 'image/jpeg', 'dad29d8b', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533654, 50927),
(281, 'faces', 1, 1439533657, '35d66635', '', '92b03e398609730b059402d5812bf071', '2kfTwJ7FBWVQ1IYRL6MkbX4WOjO31Ducih+a6dNMQeJ20dibxnQBBri6V2rvwnVOPW8mCBoggqoaE4uYUmgBgA==', NULL, 'image/jpeg', 'b3a0a248', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533657, 50927),
(282, 'faces', 1, 1439533808, 'dea67f6d', '', '92b03e398609730b059402d5812bf071', 'FEq6l3+T3tIUL5GIiOlz0MqGNKVGd4vTngKV9zubRDLu2ZKbOCSapLNBsfi23xA9so4OcQtzTguwxF8DHkJWhA==', NULL, 'image/jpeg', '84bbeb84', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533808, 50927),
(283, 'faces', 1, 1439533811, 'c44c9da7', '', '92b03e398609730b059402d5812bf071', '8mYemq6zCajeGEly+tugum6E+FPK6TDuwzPseM0gLEGghBCdUiLzBEQfgv/v52EA/EOKGOBk9qpElyplk2vPnA==', NULL, 'image/jpeg', '137ff7eb', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533811, 50927),
(284, 'faces', 1, 1439533853, '86bee468', '', '92b03e398609730b059402d5812bf071', 'l/Ya/PTrz8sGgB+GOFVzDP3ba/SKuImRz3GlUhodgoJs5l97u8lsAhmT2z33wDBsUOTXHgY+VjASsn0zh/+/gQ==', NULL, 'image/jpeg', '051afb46', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533853, 50927),
(285, 'faces', 1, 1439533856, '2d4ed8b5', '', '92b03e398609730b059402d5812bf071', '7yhUKCXEMlGDtDPMPsBPWrF9hjiGdtbxmoeNwA6vF47pLZvN6+cuEaVxT1uZVl76AFC5SMWuAMJvG2y2EGsMhg==', NULL, 'image/jpeg', '8b4a6005', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533856, 50927),
(286, 'faces', 1, 1439533916, '99025636', '', '92b03e398609730b059402d5812bf071', 'yt7/8G75eWkus3jlposm+VlL77BOCTYyPhfLzi24KqySBRDHwHtdHVBLsozWEw0UqSnvPPw5fE5MGhShkjguZg==', NULL, 'image/jpeg', '5df96c26', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533916, 50927),
(287, 'faces', 1, 1439533920, 'f21dcb86', '', '92b03e398609730b059402d5812bf071', 'oVQhb7zw7GtZpFT0O4soMTiEn7IydnkBUNEf9qZ3QYCrxMwmo+Wr3SbmsEsQopWa6T2WVD7oI1j49fQoQB7FhQ==', NULL, 'image/jpeg', '4a3dea9b', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533920, 50927),
(288, 'faces', 1, 1439533940, '6dd48e0e', '', '92b03e398609730b059402d5812bf071', 'FX9GFCItWh6ALAyj+PPLgvka+7HZdIDBJP5fS37FvdkustOuHHGUuijvaPZHKxmm9c87IErvsz9ZGpPdMFiYjA==', NULL, 'image/jpeg', 'f3af438c', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533940, 50927),
(289, 'faces', 1, 1439533943, '5d897529', '', '92b03e398609730b059402d5812bf071', '1rgy2KseANORHbFxWtphZBsHHZXQ+hws9uwaU9deOR/mrwIl1Nb16SLmXHQgGAEPFRUe4dQ47Cn6BiC45jrhzg==', NULL, 'image/jpeg', 'bd8f35f8', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533943, 50927),
(290, 'faces', 1, 1439533975, '5ed27a86', '', '92b03e398609730b059402d5812bf071', 'IfQZLwdeGZUQCQ2MykEMyWR+QetHipUtBxE6IdbKYI9mynSdIsjRrMtSHFTFwFcs+/TZUH0+L6MeMkhis6Wp2g==', NULL, 'image/jpeg', 'd4f48e80', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533975, 50927),
(291, 'faces', 1, 1439533978, '4c15a065', '', '92b03e398609730b059402d5812bf071', '81VoVmYtzkmjweAg1Xm4sLOraI+OIhxpRfWkybQCmaH/WRxRIyff/LMd8RbHBuK2QUv+g/UPJnqIuIreudheTA==', NULL, 'image/jpeg', 'f6c9fe78', '11828577_491867680982725_2523986418083243593_n.jpg', 1439533978, 50927),
(292, 'faces', 1, 1439534019, '2c86f156', '', '92b03e398609730b059402d5812bf071', 'V97GKDrucgsXMFgQHmBfs9R3+mTo3/JPy+q6A480tbP8Muuk9bNRHPErZRcMldFJCiov5Cx5mEyf85++z0S+Iw==', NULL, 'image/jpeg', '34fb76de', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534019, 50927),
(293, 'faces', 1, 1439534022, 'b8f783fd', '', '92b03e398609730b059402d5812bf071', '04+HyepuXhZ7d/PDu4GNFUj5TNus6BwgI0k3MlJn/31rGUZH0+qVUr76vaH0KmgRnfzjeIDMHfV8x2PY2m4edA==', NULL, 'image/jpeg', '5eef57ff', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534022, 50927),
(294, 'faces', 1, 1439534069, '8a642513', '', '92b03e398609730b059402d5812bf071', 'KZ/VwvDZaSV95rRIXJoOWSS4fnHsnAjHyEyzf4AU/DNRgo6Pmgsa/BpC7EufEvDoJKKkl2E5wm7YadXXKrgJ+Q==', NULL, 'image/jpeg', '5bcdcc3d', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534069, 50927),
(295, 'faces', 1, 1439534072, '45b4df8f', '', '92b03e398609730b059402d5812bf071', 'SmToh1/dTgjLZf63c5JxY9X2nPup/F5oxAZHlkVeH7yRKgnJQ1xm53iZBh20gXghHPvPasRI4HYB/lu2IjDCeA==', NULL, 'image/jpeg', 'b8a6277a', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534072, 50927),
(296, 'faces', 1, 1439534098, '2d0f0813', '', '92b03e398609730b059402d5812bf071', 'MZh5xUSXdtV06VESNcJPy4/JjpQu7SJV2KenXpCiFAqm/pRFjFAO5oKkoA4h+MmhinfSqQyXw1Nn5HHeCGuCtw==', NULL, 'image/jpeg', '31c35fd1', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534098, 50927),
(297, 'faces', 1, 1439534101, '426d2583', '', '92b03e398609730b059402d5812bf071', 'imUfZ4NfFVMfTOiZGqtpMLVYG2tUFUb/kfRxUpG53kbQkdVJ7myl5gl7eKPbHYtN3ntexE6bPC5LfnIjxvKSxQ==', NULL, 'image/jpeg', '30474cfd', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534101, 50927),
(298, 'faces', 1, 1439534120, 'a7459bbd', '', '92b03e398609730b059402d5812bf071', '3MPfu4MzSPqmCURubVySReNbBC5tylLWHeOGN59nK2M/TErBNupnvVXIFm58Zn2g2jptrGnCuljDA5wfmGuqCw==', NULL, 'image/jpeg', '600657b9', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534120, 50927),
(299, 'faces', 1, 1439534124, '549276ba', '', '92b03e398609730b059402d5812bf071', '+69a+UsO7hm/iePIR9VNvtLV9nVNXj5U4dZOpxedn6t/DrXGqtwy763D/a7EhiL8rUbGrDW+QeFD41I8D+CCzg==', NULL, 'image/jpeg', '1867f806', '11828577_491867680982725_2523986418083243593_n.jpg', 1439534124, 50927),
(304, 'drive', 1, 1439582030, '281e59a6', '', '17bcb50e78c8cd95412b477ba2a1038b', 's9F/CKINO8CsalNHOl0ByPktB53WfXFo5uqoJw7AWoYy6bUrKHnxQkuKvgUE+MJhr/LNrQIa6XxLt3d1LfZURQ==', NULL, 'image/jpeg', 'ef48adce', '10430434_842543645811005_4466131605703992802_n.jpg', 1439582030, 60554),
(305, 'drive', 1, 1439582030, 'a4c8ee0c', '', '1ff859db6c3603eaa587a493ae84c78b', 'rVNa8dNPrDlLvrVV3RRexL3VQYhOb1vv7Zw+v25XCm91B8rPlSMNKZi3TFhIaqO5Szildqy6lft+tsEYVmvJJg==', NULL, 'image/jpeg', '8fb1132e', '10981643_826035000795203_4219954743583764927_n.jpg', 1439582030, 56312),
(306, 'drive', 1, 1439582030, '491f5ee8', '', 'b135633b5672069a13d6ec1970e8787b', 'A4TCWv2MEWQv/Z0Z4x5xuMcKVNz5bhP4bb886fiFh/rn6Ux2d3GZkFkX1iMUUXckQbgQls2DNA5gqrPLh6mDLw==', NULL, 'image/jpeg', '55e1449c', '1618584_774535172611853_8737730087718874691_n.jpg', 1439582030, 69464),
(307, 'drive', 1, 1439582030, '16298bea', '', '7fbc91fffa0907bebe4a8a55d0639d0f', 'iTfYa4WKxRwoyiBhCvpKsL9I6XAft3/xWkyrJBkLQHHCSH2hjvSXTktpSzuLwO/wTkqIJF7BaXFFxfVX2BydpA==', NULL, 'image/jpeg', 'cb49b222', '10520650_777361342329236_7367315193035354466_n.jpg', 1439582030, 68927),
(314, 'drive', 1, 1439589453, 'a5c8e45c', '', '0', 'cuJIZmy2F0ci49duwpROHP5Yv9D3UehQu9wuQCC9nRlHMwU6bJOVxrQ9sA3WMulvIoIEBC30q4jUmwOB0qHnYg==', NULL, 'image/png', 'dc7c009c', '3b564f15846b7fa93348b2720465c669', 1439589453, 0),
(315, 'drive', 1, 1439589606, 'bb208b3b', '', '0', 'SkNTcjUz7u0km9d8iRHyn+iZUHvhNLfM9LycTqoSPCkfgFEL9zawXWHt5hpyREPXx9DT3Q6VteTqZKiaNByAfw==', NULL, 'image/png', '61926827', '55beb9fe6885e34bae7689e7ad5ae520', 1439589606, 0),
(316, 'drive', 1, 1439589643, 'f72ff925', '', '0', 'yQGWlSOlA/hTXgFLLypahmHQyQtOXXbedv3Tow6kF7JGl6uyxvw/2cprXG8hG35EA4HBOYhTu5J+gNpZ7kh2EA==', NULL, 'image/png', '0d652fb2', '46f422cc623f37c7b0c777debfb7ae66', 1439589643, 0),
(317, 'drive', 1, 1439589690, '23bff2c0', '', '0', 'MfQYSHyz0+IZ+9dWA13hvaV65TrNqG+VTZDgs1+uEtJkKZVZLKS9M92e/VqQC64Dm3B+kUn98a6GyaI0wNOrew==', NULL, 'image/png', '34a06e0c', '5c00cf175bd1d6f43f595c3fd2858e00', 1439589690, 0),
(318, 'drive', 1, 1439589800, '6f106f90', '', '0', 'pw/7Jw3MyEEirA4J5cty3Z5CG05eTgBo4S/l7wkKmTlXkS9crOVMZlg2fkMiIiRZkC/ZKQmF8obQHX9Wf+v2Sw==', NULL, 'image/png', 'f2563a2f', '5acb8bb792c5a01c5285fbe17ea0c3b8', 1439589800, 0),
(319, 'drive', 1, 1439589914, '89ca5f75', '', '0', '5IUZ+1EggpsFq5rTbIKUOgRK/sE8fj8DjHwXATC/xA3iw8ES5scTry/qRXLnFCJqhAiSK7hv+6t+9Ozqg5EgqQ==', NULL, 'image/png', '9fa0b84b', '22b74f929434cf7e3d22023cbcea5598', 1439589914, 0),
(321, 'drive', 1, 1439590123, 'c3a43322', '', '0', 'fEuiEklH54o0s//ztqzWOLZ0Vr+fU4UEMFK3xGI79LyixEd8EPS354zwLibJwy70l2N/EacqL53uZ4dPNCF3kw==', NULL, 'image/png', '99604673', '38de226005209f8cdcca1c1201295acd', 1439590123, 0),
(322, 'drive', 1, 1439590192, 'fe61ebf9', '', '0', 'DgR+9Ee79cHiTp4DzxQlZnzxxWHTYLP2RZ4bv/IR8XzRs74NIe2vsORC3UEdGD4djBwVbMBeHR/SXqjFm1+VSQ==', NULL, 'image/png', '512f656a', 'a3403989f9c497657b1d985c95b4998c', 1439590192, 0),
(323, 'drive', 1, 1439590339, '42f4662f', '', '0', 'M2Rakv7SWPtMUcCjTY7TQqfH16oZatIX6q9OyW5XvshwsDEm0pqrEYPZuwPHO6XfvYper4uW1Yoz3hHTEM13Iw==', NULL, 'image/png', '5a37e425', '631648851f241ef9d445baa245675571', 1439590339, 0),
(324, 'drive', 1, 1439590420, '4062e0a7', '', '0', 'dL+HArDwVt7ytJ0OQIt4uEsqzDXuVtZiqyn0lGOid+EoxC48yysCBoPGcsED74AciHruKSI/2ay7dRoIyY3WhA==', NULL, 'image/png', 'd2886972', 'f01ca6cb33c416f8b537701acde11a54', 1439590420, 0),
(325, 'drive', 1, 1439591120, '64cb7693', '', '17bcb50e78c8cd95412b477ba2a1038b', 'SI8C/C7Zq++ImTnzAgUs4IVYMEkoSHK0CYSjUdWKEriEHxG3pmr5zzB/8Cea3YpEDh1gULK7Knpr9H0Qdr6U3A==', NULL, 'image/jpeg', '16dc773e', '10430434_842543645811005_4466131605703992802_n.jpg', 1439591120, 60554),
(326, 'drive', 1, 1439591120, 'be32d2c2', '', 'b135633b5672069a13d6ec1970e8787b', 'hpz/QcKVQsKyrdHW4M6Sq0SC7dj+wzMrNCIbcOZIs9jdk8+7D2N/qqO8gJ+pIlcyEIviBFIqXqVFT0FCwUCJtg==', NULL, 'image/jpeg', 'd28906a7', '1618584_774535172611853_8737730087718874691_n.jpg', 1439591120, 69464),
(327, 'drive', 1, 1439591120, 'abb88ecd', '', '0e6e2189418215d2b51046d212f5309f', 'puOfMIkq2SfAnxLSD9aTlKtSJFGxgkgQqs0KwFaLqsVIvrdmZUpN4m+qcxgLK8dB7GJSXeSRMKeW/Dti4bl6hg==', NULL, 'image/jpeg', 'c4d43da2', '55c3d19c516439a80fefae43ae9eae07_1394791137.jpg', 1439591120, 13998),
(328, 'drive', 1, 1439623174, '31b9ec88', '', '3c5cfcf893003356e208b273ec92911d', 'ooo2zIr1G/mMDzO9oEH/hq14J6PsL59CTdppVeBr0HXPpPOM49dlcTGT1ZDtLmhCS3gH4VFx7QPXMoWtxzryZg==', NULL, 'image/jpeg', 'a37cc173', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439623174, 31259),
(329, 'drive', 1, 1439623174, 'b8261479', '', '72eb4256c5074f7d70e7c9bcced5c233', 'Y2ShaXMlHXR2OeF3JawAMEy9/rv9fHytAu8CLCv0j8/5ZrtJr+JCr3sw3zVl2mAaTcXeq84AVGM2u0RoJykyZg==', NULL, 'image/jpeg', 'c93ae656', 'EZYwYm5NdZIwlXo48tMBufykgNFiWK-L-tezFAefrD8ItftcxST5fAVX74hTuIg2FF3IZvz4rey8Syy_YhbeDSnLnFfE-PDaz75Du9uN-uaLa06klEy6B44d3BYip4h9.jpg', 1439623174, 134150),
(332, 'faces', 1, 1439623272, 'a0775786', '', '5336515b8af080b6af38491deb654f0e', 'HnwxAFL8LDrPRVryV47txub/Ps2oHrjpXHuOJjgg7fZ4q5C/uBJSAJRVJXps4+YgwOBOhL2E0p2wO5Kbd0h18A==', NULL, 'image/jpeg', '7d42ec0c', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439623272, 31099),
(338, 'drive', 1, 1439636139, '381914e4', '', 'b9d67f1e2c10f4cb39d69af2d12442c3', 'nXivBXMWjRTZKxkA4aFXx6fCaaZpgPDH26xAO10ISiHqEpJZ2FY3ODkgbo52qcT7Qeb1fRMkZ1/cmHJqVKrrug==', NULL, 'application/octet-stream', '93312549', '1d261e3b1ac8be84fa6087a65ec8bb8a', 1439636146, 15557),
(339, 'drive', 1, 1439637306, '5b08f161', '', 'b9d67f1e2c10f4cb39d69af2d12442c3', 'atIrnag/mG88UJOgQYRrQQ0QRLka9jUnhRkWLV7YuwtuZYncmkEaY4r2JKlTtORxFJf7XAUUIypP+AawjbBnJw==', NULL, 'application/octet-stream', '6db76e51', 'fa157253bc17045ff0fdaff4709dbd76', 1439637313, 15557),
(340, 'drive', 1, 1439637437, '0e79cead', '', 'b9d67f1e2c10f4cb39d69af2d12442c3', 'detrr6FFNa11qkMEGZj66vHAWWJFH51lOVFvb+qLuQyay7vIXcLAwQ7NP4W4EAYwn6/Ju5rB24m2cNjEpm7LMA==', NULL, 'application/octet-stream', '4a81e845', '9a10d20e60385486ea1901fceeab9eab', 1439637444, 15557),
(341, 'drive', 1, 1439637930, 'c4aebf59', '', 'b9d67f1e2c10f4cb39d69af2d12442c3', 'ubJs9WrS6Wl9xj9wV/Vuu0n+iUvT1rpuyJqMTICd61tD/XdDqo78RYNR5uppCiUFsktbyhT27NufsYSNsOaIGw==', NULL, 'application/octet-stream', 'f76ac3dc', 'b8bc6b24c4bc7b0ee0cdd8db5e2e8637', 1439637937, 15557),
(342, 'drive', 1, 1439637970, '5ac87d1e', '', 'b9d67f1e2c10f4cb39d69af2d12442c3', 'f/vIr04p5czCdWdgmw+znyjtNhP72I+qfxrqa094UCL8d6v2CS4r2xBM2fKzxd8BWrlfY7V2M53nl+9yptcJfQ==', NULL, 'application/octet-stream', '98b20600', '73773f6c4fb7f0646aafec37e18c18bd', 1439637977, 15557),
(351, 'drive', 1, 1439640415, 'b53ba1d0', '', '0960367c6b2651debe38c9e05d5b3702', 'VWOZyd0/JHT8ScmM/kNKQOg3/Y4XTIHh/LcWW/U0d3hR25G0P274M8Enl4uupkEBjClmN/tOEbXy8pkOYS8/Og==', NULL, 'application/octet-stream', '8aec58cc', 'c096b06fec6245d7704eeb4a080d7583', 1439640434, 21048),
(352, 'drive', 1, 1439640479, '7cad5db6', '', '0960367c6b2651debe38c9e05d5b3702', 'ILCY8Xtrkh3LE1FQERpVFHUiV7j4pYFrIvLOwChvecT1d+NHEoi4DihgCaNWOj4/ofz8x7dwrdgGGDKYMuA8XA==', NULL, 'application/octet-stream', '82458c11', '22c91bfa57fa42a32d3c84cd79f3a46c', 1439640495, 21048),
(355, 'drive', 1, 1439671700, '4151864a', '', '29721fe43799438d58987ca4a097478b', 'nHaLFfl1RjU8GwMXjQfPw/QeylYuMv+0UdjbQukkbAV7qLS/kkMujJD/bW0A8nv4hO2K+1t39lzdbk8mAOCFJw==', NULL, 'image/jpeg', '1fb6cc14', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', 1439671700, 33487),
(356, 'drive', 1, 1439671700, '3c00cd60', '', 'c73eaa3ac15e0ebf65aa01b3c9b4d83d', 'nuIOwZ65Satw6zsUATinCjK+xzYiRfJfQteNPfc/SmrHWwtEOsRvxmcpDaSaWWfz188Ze4rOHcAQC0NbnfQgMg==', NULL, 'image/jpeg', '5f33974b', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', 1439671700, 33487),
(358, 'drive', 1, 1439671906, '4dcda453', '', '6f60da5501024c1bd5ba77b7b8ee1e81', 'hMvG2GXzFAxG+TI81ZkriE9O9voKBuYBhtTgYRjmaFiBQx54qzOZkF3nlUTwLPUXhnM3/ST/FgDkm1pYxFoD6Q==', NULL, 'image/jpeg', 'e1c51563', 'EZYwYm5NdZIwlXo48tMBufykgNFiWK-L-tezFAefrD8ItftcxST5fAVX74hTuIg2FF3IZvz4rey8Syy_YhbeDSnLnFfE-PDaz75Du9uN-uaLa06klEy6B44d3BYip4h9.jpg', 1439671906, 38818),
(359, 'drive', 1, 1439671907, 'a740cd8e', '', '38d92f2e7f8c0113cb035cffeffad7bd', 'CCm6bYl+SJMhw+ZjprUJTWOfMK5TvFQkhh2lsBtdG5plbDx2eDUI30Au4dwYDVl2ui8r02OvJoRSh/uBF88ECQ==', NULL, 'image/jpeg', 'ec33e6c8', 'EZYwYm5NdZIwlXo48tMBufykgNFiWK-L-tezFAefrD8ItftcxST5fAVX74hTuIg2FF3IZvz4rey8Syy_YhbeDSnLnFfE-PDaz75Du9uN-uaLa06klEy6B44d3BYip4h9.jpg', 1439671907, 38818),
(362, 'drive', 1, 1439672191, '3cf3d083', '', '5336515b8af080b6af38491deb654f0e', 'yKqZRlZV0Z5LISqzfdMlAVKr06uj0xImuOswHNJU4451QJ42XqsuHO4nQhWY0gM3HBuTmWi+GtC8w0Gd2Ye0Eg==', NULL, 'image/jpeg', 'b71228be', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439672191, 31099),
(363, 'drive', 1, 1439672192, '78839925', '', '411b2326e22365821ee34a6b4d93877d', 'Gp+mYjSsjw8Z9UsPqsAMUh6HHiVKCxnLKoqN4X+CLWV9Or4ctmoPC8zmD0nZKcLX48qIedlOjYw8Brbn5rGfQA==', NULL, 'image/jpeg', '938774a1', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439672192, 31099),
(365, 'drive', 1, 1439672265, '678c4d19', '', '3aef7715dde3199c3cd9c7fdebd09ee5', 'lZjB2CgUSlHRIMXjjjT6LKtpeIr2eyQ+8q162WpiMzqNBBkyvXIGd56nYaCL0HmDwz2mjUt39ooornzD5qwG2w==', NULL, 'image/png', '3131da99', 'Vector_Video_Standards2.svg.png', 1439672265, 227535),
(366, 'drive', 1, 1439672266, 'b527c264', '', 'd32aa182276a59aa213ede805f772992', 'epdxK6s1+3OwGLkmoppxcZuhFNAadKcou+pVfCLOUejg1uDJw3uAFUZIZNDEsbLKziqJCtnadtXyFZxn9N00Xg==', NULL, 'image/png', '72ca0367', 'Vector_Video_Standards2.svg.png', 1439672266, 227535),
(367, 'drive', 1, 1439672268, '479680e0', '', 'e8419e7177a05b011e5c063ea7c7691c', 'YFjq+4Hb2CEhEEHVOuTJ4sR9WhKhoDufSm2k8uCSzeuUjXxzsc4V5Ua/gmvGziMp8U8KsklgKS9537b3DPGOzQ==', NULL, 'image/png', 'dbc57606', 'Vector_Video_Standards2.svg.png', 1439672268, 80036),
(369, 'drive', 1, 1439672355, 'd3f8a2a1', '', '0c8f16483901a04cc5f141066b68a56e', 'Dy9kSks3dMEsu4gjKDIivP2wV8PBp9cGZSSsjd7eiyPwNrE8uEeV2V4GmDQMDo2tGTXV6SLibQPjd0mqGM2lOw==', NULL, 'image/png', '487a5d60', 'Vector_Video_Standards2.svg.png', 1439672355, 227535),
(370, 'drive', 1, 1439672356, '6c6a7af7', '', '659becb3c56db14055c81e260dfa4951', 'n1mrUCWEMUsWZ5sWtD3h3iz+bIWOZFoC5CiR/73+m+vizH7kr5pXNeXaL1bp+dRip5o1awsjKM9zMYnJ4FBH+w==', NULL, 'image/png', 'f78c8dff', 'Vector_Video_Standards2.svg.png', 1439672356, 227535),
(371, 'drive', 1, 1439672358, '4d7b3698', '', '6f27d638d04502d4e8f9a0959d0cb6bf', 'Vk/zy1Od5bbriB4W9TkLY/SrAQtljbZBnuUitbIrJClaRTdoNKVMRmgFRRVKkhNZnrl3o7tyAyo9hrC4KAg/aA==', NULL, 'image/png', 'a60014a6', 'Vector_Video_Standards2.svg.png', 1439672358, 80036),
(373, 'drive', 1, 1439672550, 'bcecb509', '', '5336515b8af080b6af38491deb654f0e', 'z8O6aDZoPwK+Q18MivDTf+eY2dQJj2/kG7GoVSD9gvkQWeigx3sI9yoxIVgpqyyj+ZF7+ifGK+nqVfrput7CCw==', NULL, 'image/jpeg', 'ed38463d', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439672550, 31099),
(374, 'drive', 1, 1439672551, 'a1f37d51', '', '411b2326e22365821ee34a6b4d93877d', 'gFnQgINfPVRdnEwB6A17XECKgMyvZD/piW+ZcmBw7NrT4f7jWtF9rMgJnNGtwXlm1G/SMA3M1e3JpisRN2ujPw==', NULL, 'image/jpeg', 'd0ba43c8', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439672551, 31099),
(381, 'drive', 1, 1439690608, 'a3fb32e1', '', '0', 'EolbCPboWRpRxrn7xBShl3eFDd55boCABa8bif/sAckY/Y9dLTK0gakpts885b1GNmyAUGlswVqky47JqIk/ew==', NULL, 'image/png', 'd5b968d8', 'a63903ce2f4a8493de331140fb46fc59', 0, 0),
(386, 'drive', 1, 1439879742, '8cd870a5', '', '50bb2759572d27509815888aa061531e', 'BOSkWfVu1Dw/LKDmk2FpO4nY2NcHfgZr246ri4VSTv2Onirt7Dh1QriOjNdlsAFshdS4aBGufR/DB9Eet5ARng==', NULL, 'image/jpeg', '4d28587f', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439879742, 28052),
(387, 'drive', 1, 1439879742, '16380f20', '', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', 'm3enlDYymLydx2yiykMy34r3YDbRY7vm/EGDZbfXWIlQ3J72gOjsOJdO+GtF22WitZ3u2rqBoO0bh+vsVyTPAA==', NULL, 'image/jpeg', 'bd369194', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439879742, 28052),
(388, 'drive', 1, 1439879743, '98f770b8', '', '5336515b8af080b6af38491deb654f0e', '35YS2t+vvPxQ6ZV3rDpXBvkqgmHIfd6wJbbhfLD+PRwJKhCtig8DkFH5V1/pjfvnolzCynh5ZZooy7XYWIcu+g==', NULL, 'image/jpeg', '95d6bf3b', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439879743, 31099),
(389, 'drive', 1, 1439879743, 'e2387bd1', '', '411b2326e22365821ee34a6b4d93877d', 'nV6JLD8v0aml0VRpnf8vvfZ26MZiYorCtjH9E9A5K+0d/mSkbHadwz9uxJMR8pLMMPDbH7VHRslHAmbaCcmELQ==', NULL, 'image/jpeg', '61ff937f', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google (1).jpg', 1439879743, 31099),
(391, 'drive', 1, 1439935681, '0943198c', '', '215694f26b2591e688b5c2dabb9fe050', 'dV88VNQDjvXLPATuFxc11aO+1/kJGOD0sKs9tK/5vnhAO+ZcsvYjSDE/gTQe1k6gWRc9KMzWfWPtiKzQFulXOQ==', NULL, 'image/png', '8119266c', 'Vector_Video_Standards2.svg.png', 1439935681, 227535),
(392, 'drive', 1, 1439935682, '9305f4a0', '', '6e8e647e66efcbdb8889744ed0e25d59', '/Fvj2Ec4Kv/+H4hMgF83ghbEzipi3a6UEd2f6vBkRsxHpeKRXbaqJ2z+SHkEaA00M/2v98W5lzcm3NY68BkPdA==', NULL, 'image/png', 'f90bba9e', 'Vector_Video_Standards2.svg.png', 1439935682, 227535),
(393, 'drive', 1, 1439935683, 'a3993484', '', '5b7f2e89877ee81c64f319d26fc2c956', 'myD3mxQULY4KOuWMeMmwOG0kLaWWOkp7eYUzgYRzd+vE0e4x+2eskaN0QGiwfnCOqqhioHyHVBNoiAu+EJPbjg==', NULL, 'image/png', '3a5fa666', 'Vector_Video_Standards2.svg.png', 1439935683, 80036),
(397, 'drive', 1, 1439935948, 'f5e85883', '', '50bb2759572d27509815888aa061531e', 'l3MTbKzNiQ63ilN2ZbvP3LYmlBQnpOCIAUpiYxtbp1loN+N3lk6aU/vzOArZV7PensMNa/Pa04qbfarrnYXB0w==', NULL, 'image/jpeg', 'ff3b160a', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439935948, 28052),
(398, 'drive', 1, 1439935948, '0408130a', '', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', '4LdIIvMNMlgaJ4VnEsGQFqt49pea8ZRRQNE5t5lld3dC+qGXP2WDe3CAhxqC5V/+blyKbPduXfVlmfepW0bsHA==', NULL, 'image/jpeg', 'fe683411', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439935948, 28052),
(405, 'drive', 1, 1440495141, 'fccbb5b4', '', '29721fe43799438d58987ca4a097478b', 'X6DIy1T+SdwOBagCu1oDioMbD6S0D2CHB60hYMJQF2S70NQBCBnbN+tyoWZuEqlAU1q8XVIOV+T4XWQ+t0L9ag==', NULL, 'image/jpeg', '6cf1d584', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', 1440495141, 33487),
(407, 'drive', 1, 1440495141, '7c135d1f', '', 'c73eaa3ac15e0ebf65aa01b3c9b4d83d', 'oGFK9o4CzgW13vqNlRDMpfLCqt+4ElSpbhkBLrQlBp1issyiTafjXMNiG8vIhuM3qaw7Xij04FNRNEmC08XcOg==', NULL, 'image/jpeg', 'cab9d852', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', 1440495141, 33487),
(409, 'drive', 1, 1440511844, '06c05eb8', '', '20069c0f47e086697da1020dde9ae0e7', '3W5GMfz/89xq6t6JePHk4vEP9fqRWps2n53KIzOIH3d6peWc9vbRZ1SKY1uNQd3FNEQFrMbcObMhjG6B0ucubw==', NULL, 'image/jpeg', '280df33d', '6133244088_d33f54b354_o.jpg', 1440511844, 571292),
(410, 'drive', 1, 1440511846, '271b096b', '', 'bde9c5e8e09f2926ad78ece13310abe5', 'IUscPNYNuU6r4I+AQqpMCHKJKYiehN2ctl5JPG1BS0Ty28WojtYzfor9zmF2vnuNhcSRbBk2Eh07zsbCH+DCQQ==', NULL, 'image/jpeg', '919fc103', '6133244088_d33f54b354_o.jpg', 1440511846, 571292),
(411, 'drive', 1, 1440511847, '96893153', '', '7492d81a0b1b6e0c0cfe386011de9f69', 'MOAU9HY6psVqxE4rqZnOoRI23/8O2vsgrE26HOKT2rWPj229ShdbfZkAQfeI3DuLu49cK+gDaOUcl+jfELF1KQ==', NULL, 'image/jpeg', 'aeb479c9', '6133244088_d33f54b354_o.jpg', 1440511847, 114932),
(412, 'drive', 1, 1440511848, 'bb72a607', '', 'ccad819c8d969b6b7fffcafa7095487e', 'ghJ/Hh68KUPRdAHmkYJ/bwBFA0cfl141fBXd128aDFct/V7zdciPsFxAM+8OJ+9UHwyAvGnonjERvVlCHXAGqA==', NULL, 'image/jpeg', 'bb1e00b0', '6133244088_d33f54b354_o.jpg', 1440511848, 67438),
(414, 'drive', 1, 1440765104, '5ab81493', '', '63ec78a0b3a13e4ca9dfe2fd49d0314b', '5UR1NYyS33bP9sLRO/BF8HUQTDfScPgnG8RGx9URBYrqXwplv7X1ywv4oJcZHeDWGR7QlxpQI+Rt+8Ns5asTrg==', NULL, 'image/jpeg', '6b973958', '1-43eb3e3217798d8234e5ea1cd9e93388-w-1439454999746-28-0-528-980-crop-1439460818548.jpg', 1440765104, 50141);

-- --------------------------------------------------------

--
-- Table structure for table `storage_readfile`
--

CREATE TABLE IF NOT EXISTS `storage_readfile` (
  `id` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage_static`
--

CREATE TABLE IF NOT EXISTS `storage_static` (
  `id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage_video`
--

CREATE TABLE IF NOT EXISTS `storage_video` (
  `id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996),
(15, 'drive', 1, 1437042379, '600a93e5', '', 'd60188b6fca5f034cedbabf6af1f0caa', 'fEMcLyZu6fxjLfbEht1HNhnHUdpC0BNzYz4j7PB3omzeN+JKYMe4fZS/jKw+C63cZOK+NmEGAe5aa8Yt3nIa8g==', 'video/mp4', '243d022c', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1437042379, 47963315),
(17, 'drive', 1, 1438248135, '64563ed3', '', 'd60188b6fca5f034cedbabf6af1f0caa', 'va6hSdRhF3POxndsxeaN5U6x424+I1ySVvhAleg0vJohTgSnBqRDrt2Tu+bjOLuKgCFDyz64UD8grWUZMpvrgQ==', 'video/mp4', '16a0f0fe', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1438248136, 47963315),
(19, 'drive', 1, 1439331251, 'a3feef60', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'gPEj902OLUKjQxxI05jsvWYecB3ESslrU06XLiRrjbUS4rgRhJhRKuRQr848QwcGqMaDls+FMs5eXohjMU5sRg==', 'video/mp4', '7ca59d8e', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439331251, 14754733),
(21, 'drive', 1, 1439333783, '46c62fff', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'wQpJu3rq14O2YoreGTDkUukhkN9gyH4m+XiekmDFxMi4EaAill+568xBZZrwpTShF7kwlOgW8dALEATOWyejTQ==', 'video/mp4', '680e8dfa', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439333783, 14754733),
(22, 'drive', 1, 1439588973, '8b589739', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'B5zxqoHzbf7ikelvsNjEILuBhZvYLrHC5Yj0G6dpfOy7rcatpBPmjusMCNuF/gH2RXH7Lc8B3RqPU/LMxwxdpw==', 'video/mp4', 'd6dd04b5', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439588973, 14754733),
(23, 'drive', 1, 1439589124, '9e75513f', '', '87ec00aa183eae7826ad8f1b7007bc9e', '0elj6mIc3nYhdn7z+UA+CP2RtddaMyr6Pwghwsvklnh7TYoY2tGX/sfeITtv5NB50rEVr74RasRmgAVGG2UPFQ==', 'video/mp4', '83d494d9', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439589124, 14754733),
(24, 'drive', 1, 1439589204, '08380773', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'DB1v9UrvlzoETpFa2Bb3hxCksvj8htU5fBzHqiw3EK5QTkREjPdOexl86uU5UksIcuxFsvJOatjkGUvgIumOHw==', 'video/mp4', 'db7f3ceb', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439589204, 14754733),
(25, 'drive', 1, 1439589236, '5f9cf5c2', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'eOlsQSA3LCQVHlvH9ISbalydU2msoEShNzeLrc9MZMxOPbJgsWO3rm/W9vyQf67qhYNwY1dQrKds28VWpAQnbw==', 'video/mp4', '0a4d7779', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439589236, 14754733),
(26, 'drive', 1, 1439589281, 'afe09005', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'UuU3r1Fvast2nFeEucn/9ylKF1r0Ovt6GSFRjw6deT0UHxvjLrtHEUKUHmF+9x5+mApRJOhe12y5i8qRttqk3Q==', 'video/mp4', 'f93f4c75', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439589281, 14754733),
(27, 'drive', 1, 1439589306, 'd94abde8', '', '87ec00aa183eae7826ad8f1b7007bc9e', 'YKXZANlqM41FBu029o7wpL41C1tDZiT1N+9CtnBawj5UZos/PFBCRNRPB+v793GvwgZR/G2X9RYmtwn2LO34Wg==', 'video/mp4', '4a1e4a38', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439589306, 14754733),
(41, 'drive', 1, 1439637090, '609db6cf', '', '9d2291dc4685827ccd3109ed9fc74136', 'Y+vu8YT0dAXR40cD9qHekGPuSKKw+7z3oS3rTecN8HIypjZgOoOfk0dYiORxNdSZ43UTZ/rNdQgqrofHyit6eg==', 'video/mp4', 'e304b1ae', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439637120, 7142340),
(43, 'drive', 1, 1439637318, 'e5beec17', '', '9d2291dc4685827ccd3109ed9fc74136', 'n896dydeeUh4ohDDSavjcdjpMRhXolBmj8APcUO4gGkP8KG2f4QlVTLJ9QQ2c3R0cSVb8n0vzzVo6dHfqBquJg==', 'video/mp4', '36a37b00', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439637352, 7142340),
(45, 'drive', 1, 1439637452, '0f30b805', '', '9d2291dc4685827ccd3109ed9fc74136', '/rBEmX+JJRR4/SRcaNxmN6T4pwhXKZfdf+vArbtEwkNoH7Iu1HROfIkXo3QtbtvkyvsvEM320xevyricmL+yfw==', 'video/mp4', '85e5beb0', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439637486, 7142340),
(52, 'drive', 1, 1439638155, '7a02778c', '', '9d2291dc4685827ccd3109ed9fc74136', 'WS6XLjIE2EvAtNRx4W9O6Bb+1bmUaZpxrb4jMLGpg0MwJUYYDYH4ACVVt/jWpbfjtamAZySbnxUh/jmasEprdQ==', 'video/mp4', '18de1504', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439638181, 7142340),
(54, 'drive', 1, 1439638866, 'd36d5c2d', '', 'd41d8cd98f00b204e9800998ecf8427e', 'YhtuRWfvemaEOH7LB5al9Q5BTZV8WEFMma2QcfvlPnRkAobFi7lAZ4sMblTh/ke+kAweELNr6X9a8N5R8WQlNw==', 'video/mp4', '3ef6b99e', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439638866, 0),
(55, 'drive', 1, 1439638866, 'd6ebf702', '', '233ad79ac7327b5c6ed58e1780d9529f', 'a2jkG7Chur0UvsH8KIh/Vw+JZSixKiobAFjjCpAhlYDn6HBxCG1Jo9dq9mkWvPRdDgj110A/2fxabErx+DYeOA==', 'video/mp4', 'c68d70f9', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439639029, 23782232),
(56, 'drive', 1, 1439639029, 'de1ab30c', '', 'fb00b34d32a640b6edf0d112ff116116', 'LXRTAMLvwd9RaHgwtGjv33odxaeVXH+jh3OjQlQzWJXFWCGznm+nWtO2X4aOMLQ9iTzgFu9l14NlrdOeiN2h5w==', 'video/mp4', '8b37c18c', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439639088, 10225061),
(59, 'drive', 1, 1439639719, 'd27f1924', '', 'd41d8cd98f00b204e9800998ecf8427e', 'sCTmScbNC2pypFsqGhjEkrG/lmjGY7DtHKUH0dmyAquJSdjJz278xIYbehLADLSJ4JfenYNdJlh4TBnx9Vh4Wg==', 'video/mp4', 'c96f6b3a', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439639719, 0),
(60, 'drive', 1, 1439639719, 'a6f39280', '', '233ad79ac7327b5c6ed58e1780d9529f', 'yOTjtiNUX5CGQcqYNuAstrUkpfR45rl+Fl8jBRaun7DHVLxkc/lSlJ2QgmBTG9H3vmQHR64iKi6GkNDIAslXkQ==', 'video/mp4', 'f4ffe56f', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439639853, 23782232),
(61, 'drive', 1, 1439639853, '3069b65b', '', 'fb00b34d32a640b6edf0d112ff116116', 'hJ78Ozl3HlnTm6o9KiT/abpbPfk8QC3xEPk71ONX1aT6/mHZcS9lkOt1kZgVGFErLfsdd8B9hbmKCISrznDUlg==', 'video/mp4', '612f030d', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439639902, 10225061),
(63, 'drive', 1, 1439640258, 'fbd317b7', '', 'd41d8cd98f00b204e9800998ecf8427e', 'u2ddCBL0IgGzjNm5pibRh+kYluxzwcDE85BTRh6xTohowhtzNlBTvxNzGO5dnQJvmeHphQ9/uCq/0/DQpzDtXQ==', 'video/mp4', '85a1cd0e', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439640258, 0),
(64, 'drive', 1, 1439640258, 'daa0e644', '', '3a906a70093d1a1f503d18486a45e44e', 'IRTdAd2VjM1DFbW4Sk4bXtlTcLXhvxnyB+5yPRELVWgfnLtAXkRNnw3QTolp2sZ0IPIp/n/EHjfZT6RgZ2GutQ==', 'video/mp4', '79034026', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439640389, 18798389),
(65, 'drive', 1, 1439640389, '7b58869d', '', '859a922de5255dfe51cf947ca3603f36', '2wYSnQa9KOaPShVi1HsCVHzoEy9+UEerD8FzLbv7SIFQSGpoAmSWTJbLDseVct/2xWKuC6adYOOkgXiE5U41xg==', 'video/mp4', '90cd7959', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439640394, 1066888),
(66, 'drive', 1, 1439640414, '10cb1897', '', 'f11f89539b8e1194126f1c7a8caa933e', '92HBlKPj7iInn0VFGKBkLGPQiIsefCm1Qj+KSK+5IeEquLlzcAw5K04dIKf25BHxpMvRanyg4HCqUaLLOlWubg==', 'video/mp4', '0ef7b258', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439640415, 57882648),
(67, 'drive', 1, 1439640479, '53f0d4a9', '', 'f11f89539b8e1194126f1c7a8caa933e', 'cvRFuEXPxVwj51U4Y3siNFdzdVe25YUVW+7thcrW3GaTOK9yeFfE+Zfq58Dn6x99WMv7sqibovnSpkg5UMtNmQ==', 'video/mp4', '15726eeb', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439640479, 57882648),
(68, 'drive', 1, 1439640505, '0a57c791', '', '0', 'WUi8MoC6TZQ9hlIfoKefCRVLjJWbo406Z6Z7L55rLsObjXG4ZYoIriIR/3zLIKf9oB5jRym/hjFuAw53hoYmkQ==', 'video/mp4', '09a93e65', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439640505, 0),
(70, 'drive', 1, 1439640858, '64d6e658', '', '4ee55aff1ad2a631b4978c1e8cc9f5ca', 'DOUNBx0yxUkYTl72LeCVpblgADfToSGBu83y4LN5nJ3e5lJCzc/tsB7y8Ro+HYf6+ATO3g+9xsgMhpcvbasvQA==', 'video/mp4', '1a4c79a4', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439641288, 48336189),
(71, 'drive', 1, 1439641289, '1b26dfff', '', '233ad79ac7327b5c6ed58e1780d9529f', 'gjVwZeDLkEX4qaW4D2e0CEo9P6B7OP/8E1YVVeO9VO+Is8Os+yzCGSDFrL67trg3hDvj58z8VOqL3jeWcTi6vw==', 'video/mp4', '3c02081b', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439641451, 23782232),
(72, 'drive', 1, 1439641451, 'b17ca84a', '', 'fb00b34d32a640b6edf0d112ff116116', '4pYmalLq3yGT6VE7K+Ph6mAtWqpDgQhuQYelLLtOCytTml9ZRx8ewo04Q63Cvq73hiFOkrF9S4B8ga+wePyf4g==', 'video/mp4', '448a35f2', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439641495, 10225061),
(74, 'drive', 1, 1439670840, '704143b0', '', '4ee55aff1ad2a631b4978c1e8cc9f5ca', '2QGq27KzcV3SiKJMR+vOzg9sVZ7tngMBU7fNA3u7yE8Tyqd+RTwjCjCRxLdw4h5/3bW+E86eZEQCPOfCJz+1NA==', 'video/mp4', 'f58263e7', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439671245, 48336189),
(75, 'drive', 1, 1439671245, '01a0f2f2', '', 'ecf0238804d1c28e7f9c902c45acf04b', 'N/ROLlaAeda93jQINTSwPGo9+42uvinfb55BlisAgtRl5XGX4oawX8k+bTQlptYO4KOLtkyF/o3RKzyUaT61XA==', 'video/mp4', 'da44b2a1', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439671375, 23403912),
(76, 'drive', 1, 1439671375, '57f5dabd', '', 'f9579f867229bddf5598701a746b89ce', 't2j9CvbcMgszt08/VgD10C+W6+buIoAhVV0XVCM22ZrwxynnewBXAPepmA6uEaN3d4Ujimxmnp25deSeV06AYw==', 'video/mp4', 'c4aea1ed', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439671409, 10015689),
(78, 'drive', 1, 1439689196, '19e31656', '', 'a3dd762b01625e9a63408db97ae1618a', 'AGCqg+rVbk3yyZmyPNvdckGhqbu4Curg+qJzaQZG9xTKKdhsb1T1u89MpS6UuBPb5SuFgY0JiYYDmHWSsIs6cg==', 'video/mp4', '50518233', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439689221, 7332615),
(80, 'drive', 1, 1439689480, '1df3d1fd', '', 'a3dd762b01625e9a63408db97ae1618a', 'x1tfulOOt5HWPnPqeCfspyuxP0uWWz4ww3yMcnTj7UAjVUzNfD3aV0iRXdiwpsObZhHr+dr6haZu0YMmkqLLoQ==', 'video/mp4', 'cdf28fb8', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439689508, 7332615),
(82, 'drive', 1, 1439689630, '0f7fa7b7', '', 'a3dd762b01625e9a63408db97ae1618a', 'iRCrD6v4pqRCowTwmCqK07GITUbnscgkGtIype3uHNceYZ/ZqXQ8+deRlDRwFTNWNerVdXeG+5syDr+MucTY6w==', 'video/mp4', '53523678', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439689658, 7332615),
(85, 'drive', 1, 1439689913, '37930f15', '', 'a3dd762b01625e9a63408db97ae1618a', 'g5SmELS8bYKNSwiX69VhzNG5v7LcFEva7Q4KTPIdHCRKrh5jRqy3COzKCfnswwCRf4Illq6DklehYJz/hCRKgA==', 'video/mp4', '210d457c', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439689944, 7332615),
(87, 'drive', 1, 1439689992, '2e2141a0', '', 'a3dd762b01625e9a63408db97ae1618a', 'JU4BWMeKuqiHH6YihpEfX0Uo0B0o5mdqvDZa2+VE3iJoLzT7oKs/Lx203WptkHs4sGRBa3a4o2DLGtolAf/4+w==', 'video/mp4', 'aac21ff9', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439690022, 7332615),
(90, 'drive', 1, 1439690663, '5c07ecfc', '', 'a3dd762b01625e9a63408db97ae1618a', 'paS3KXKe9RTQL4KhydaCp1G2thp0Jcj5xsRaxZ9+cunBCeh1xEXO4/jv8QX5eNWyEcdtlPCM1e9z0u+KHt97LA==', 'video/mp4', '8896568c', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', 1439690691, 7332615),
(92, 'drive', 1, 1439799392, 'f8d6ddf6', '', '54bf075239ef091cd33eded54a766da6', 'm19uNRHHiQflvegQn17hlJY3rgYHJJwMP49Nn6lNQACW9Cbu4MPkNBo6ofZeoNXsyvc8gdAWKYG5GVTpKcsAYQ==', 'video/mp4', '09abeb56', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439799822, 48873769),
(93, 'drive', 1, 1439799822, '5c6b42e6', '', '3e2b285b4479d3525790bc8592fcb2d5', 'jGtbYsuua+BXq6yI+zNrMqiEN63y0MuQCk2Uu7R0fCN2yEGHuq2/7261AAZpDHovRCXw2PTbKwORLw9hhFs9/w==', 'video/mp4', '0dadedb7', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439800010, 24005656),
(94, 'drive', 1, 1439800010, 'e8875ee0', '', '91f9ec3a914a6213564c2a0db2564387', '7zmwRAPWoFBK7lGeJJPZg4N23wUti9oyNLjvCS27BNvArWJAfd+2sey386KZA53w2T7TXqEuBdHXryq7Q/poWQ==', 'video/mp4', 'd8b7ffb3', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1439800054, 10340185);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password.hash` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `formatname` char(10) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `interest` int(1) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `birthday.format` char(10) DEFAULT NULL,
  `relationship` int(1) DEFAULT NULL,
  `mate` int(11) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `introduction` varchar(400) DEFAULT NULL,
  `quote` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
  `mode.safe` int(1) DEFAULT '0',
  `messages.translate` int(1) DEFAULT '0',
  `private.tag` int(1) NOT NULL,
  `private.search` int(1) NOT NULL,
  `private.info.friends` int(1) NOT NULL,
  `private.info.birthday` int(1) NOT NULL,
  `private.info.country` int(1) NOT NULL,
  `private.info.live` int(1) NOT NULL,
  `private.info.email` int(1) NOT NULL,
  `private.info.phone` int(1) NOT NULL,
  `private.status.view` int(1) NOT NULL,
  `private.status.comment` int(1) NOT NULL,
  `private.status.share` int(1) NOT NULL,
  `private.photos.view` int(1) NOT NULL,
  `private.photos.comment` int(1) NOT NULL,
  `private.photos.share` int(1) NOT NULL,
  `private.music.view` int(1) NOT NULL,
  `private.music.comment` int(1) NOT NULL,
  `private.music.share` int(1) NOT NULL,
  `private.videos.view` int(1) NOT NULL,
  `private.videos.comment` int(1) NOT NULL,
  `private.videos.share` int(1) NOT NULL,
  `feed.order` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `country.description` text,
  `live` varchar(50) NOT NULL,
  `live.description` text,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '0',
  `activated.code` char(10) DEFAULT NULL,
  `activated.time` int(11) DEFAULT NULL,
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL,
  `online` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'XhL9PyQiFH+zxLj8jQRCd0Ua1ue8bDgTVgG8A9keYM2FyKiptK1u3C0s8+Y+p1Fgw4lSbTihlLmjJXkwq/HQwr9MtEm38XkkBNNpq8JQi+oeqpHlDA+LUL1AifJyn8P+HlXihYy2WLHX9wqdsqA5fvrHcMyOW6d0X3nAOH3qOEcoxD4vyNjVqNHD21G4TUF6dHsJm24gjlksxO+dsVdJTU613YVrib8z6M8JH5XAhj2ojElCB8cO0l8bOCqXGf4na9B407tJViZ20sguMziwSZ6+QnKtdH0nsoHARpgVNrM=', '1', 'I want live at here', '', 'dasdasd sadf sadf asdf asdf ', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1440908572),
(16, 1431482042, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'KKjjw1LqEEgrBNgKLUpfp/2/kNCVFWZBRKHtKRQmDXizU0N/uQrSz9R4HmmnAH9F8jcN720XKNvBYXL793q0ibYhK46Wxo5cXgcf42yrOMDIXYuJu9KhUJBg3X7R07d32FoFdvl42b9ZnecTle13wSKiFHkoWyL0MCx6eds33ShjQ62G99Qr0q/qSGPq67HVb5MdPwZBc448VyKAbpAELKPe0P52norMAD6buyVQg+jiRTyGQZTKkOWJxT2X4D6G6ERZAFPUq3b+Yw1nZyggJyAsgI66t5TFTP7lhABpW28=', '1', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 4b6e16d36', NULL, 0, 0, 1438418872),
(17, 1431482042, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'rO7DlUyePvnjCOLi1a+2hKloj9l70CrjEzhsc8W/q9O75tM1f6px5c3TqVJRvoHN4xogdniyp211tHdC4XRDm31eQgcdepGyfwSAgGuZThI1Ygl6r7qk9h+syXaI0VPHx9gA8deDYes6FHY0em0DXYq/9sg5ESuvFsFqGaWXj4xqrnb0+CRHCmP3UAnTlLWp2vkCFPDvdMCj3AvSBRKlgNxMeaGxyOy30Gn6TdXuC/JwMM2+/GSlTNQV6yeUWMv8PxWodN5RN/PUGZ37YYfT4C9MCwmKohJ0a9uUGdX3GzQ=', '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 314482e1c', NULL, 0, 0, NULL),
(18, 1431482042, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'jU47b6LJClD7itl5oGzaAws2qG2/CdITdXY9LvKgrT/ZfkOkigx2IzauvQ+e+pzfhrw8kwoj8RyjjrAtTSKetG3OeFk1TmrIvM9jLbOteWwPzavLJQEPB8O23qwnWwDmPsw0ho3Rn2qqF92NLSm1Lm1A9DSiotalf0vQf6Ndu5eTsKOZxweqpwo0pDWsQWUeNRQdnh2XI9pTX061KSyH6/xGxJwL6v7p1lcbZMH6QRGYN81ZKrnnrmyZ+jau2aLdCNmXuYmbCeztKE8EovTfJ4SVcZDd7rl+uQRQsFU+yNQ=', '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'b6b3e0c602', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_block`
--

CREATE TABLE IF NOT EXISTS `users_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_contact`
--

CREATE TABLE IF NOT EXISTS `users_contact` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_contact`
--

INSERT INTO `users_contact` (`id`, `user.id`, `private`, `time`, `type`, `value`) VALUES
(1, 15, 4, 1, 'email', 'lamhieu@giccos.co'),
(2, 15, 4, 1, 'phone', '0946083033'),
(3, 15, 4, 1, 'email', 'lamhieu.giccos@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users_education`
--

CREATE TABLE IF NOT EXISTS `users_education` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time.format` char(10) DEFAULT NULL,
  `time.start` int(11) DEFAULT NULL,
  `time.stop` int(11) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `description` text,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_education`
--

INSERT INTO `users_education` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `school`, `special`, `description`, `address`) VALUES
(1, 15, 4, NULL, 1432316171, 0, 'THPT Ganh Hao', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_faces`
--

CREATE TABLE IF NOT EXISTS `users_faces` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `faces.id` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_family`
--

CREATE TABLE IF NOT EXISTS `users_family` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_family`
--

INSERT INTO `users_family` (`id`, `time`, `user.id`, `guy.id`, `type`) VALUES
(1, 1, 15, 16, 'best_friends');

-- --------------------------------------------------------

--
-- Table structure for table `users_follow`
--

CREATE TABLE IF NOT EXISTS `users_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1431447796, 2, 'user', 2),
(2, 1431447958, 3, 'user', 3),
(3, 1431448069, 4, 'user', 4),
(4, 1431448099, 5, 'user', 5),
(5, 1431448205, 6, 'user', 6),
(6, 1431448265, 7, 'user', 7),
(7, 1431448456, 8, 'user', 8),
(8, 1431448487, 9, 'user', 9),
(9, 1431448511, 10, 'user', 10),
(10, 1431449021, 11, 'user', 11),
(11, 1431449110, 12, 'user', 12),
(12, 1431449563, 13, 'user', 13),
(13, 1431449623, 14, 'user', 14),
(14, 1431482041, 15, 'user', 15),
(15, 1432305135, 16, 'user', 16),
(16, 1432305182, 17, 'user', 17),
(17, 1432316171, 18, 'user', 18);

-- --------------------------------------------------------

--
-- Table structure for table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE IF NOT EXISTS `users_login` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.label` char(10) NOT NULL,
  `user.value` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.label`, `user.value`, `status`, `client`) VALUES
(1, 1437984497, 'id', '15', 1, 'a0f61a4a'),
(2, 1438154963, 'id', '15', 1, 'a0f61a4a'),
(3, 1438154967, 'id', '15', 1, 'a0f61a4a'),
(4, 1438242224, 'id', '15', 1, 'a0f61a4a'),
(5, 1438265901, 'id', '15', 1, 'a0f61a4a'),
(6, 1438400813, 'id', '15', 1, '6808e60a'),
(7, 1438418189, 'id', '15', 1, '6808e60a'),
(8, 1438418789, 'id', '16', 1, '6808e60a'),
(9, 1438422419, 'id', '15', 1, '6808e60a'),
(10, 1438577630, 'id', '15', 1, '6808e60a'),
(11, 1438583430, 'id', '15', 1, '6808e60a'),
(12, 1438606707, 'id', '15', 1, '6808e60a'),
(13, 1438606714, 'id', '15', 1, '6808e60a'),
(14, 1438671846, 'id', '15', 1, '6808e60a'),
(15, 1438679917, 'id', '15', 1, '6808e60a'),
(16, 1438682945, 'id', '15', 1, '6808e60a'),
(17, 1438703647, 'id', '15', 1, '6808e60a'),
(18, 1438842332, 'id', '15', 1, '6808e60a'),
(19, 1438941768, 'id', '15', 1, '6808e60a'),
(20, 1438949174, 'id', '15', 1, '6808e60a'),
(21, 1439012751, 'id', '15', 1, '6808e60a'),
(22, 1439104985, 'id', '15', 1, '6808e60a'),
(23, 1439121713, 'id', '15', 1, '6808e60a'),
(24, 1439135470, 'id', '15', 1, '6808e60a'),
(25, 1439178916, 'id', '15', 1, '6808e60a'),
(26, 1439213012, 'id', '15', 1, '6808e60a'),
(27, 1439218505, 'id', '15', 1, '6808e60a'),
(28, 1439222021, 'id', '15', 1, '6808e60a'),
(29, 1439239406, 'id', '15', 1, '6808e60a'),
(30, 1439303935, 'id', '15', 1, '6808e60a'),
(31, 1439307576, 'id', '15', 1, '6808e60a'),
(32, 1439325635, 'id', '15', 1, '6808e60a'),
(33, 1439485696, 'id', '15', 1, '6808e60a'),
(34, 1439512807, 'id', '15', 1, '6808e60a'),
(35, 1439580837, 'id', '15', 1, '1064bb3d'),
(36, 1439622351, 'id', '15', 1, '1064bb3d'),
(37, 1439625885, 'id', '15', 1, '1064bb3d'),
(38, 1439670769, 'id', '15', 1, '1064bb3d'),
(39, 1439689164, 'id', '15', 1, '1064bb3d'),
(40, 1439706918, 'id', '15', 1, '1064bb3d'),
(41, 1439726006, 'id', '15', 1, '1064bb3d'),
(42, 1439765249, 'id', '15', 1, '1064bb3d'),
(43, 1439799227, 'id', '15', 1, '1064bb3d'),
(44, 1439879330, 'id', '15', 1, '1064bb3d'),
(45, 1439935653, 'id', '15', 1, '1064bb3d'),
(46, 1439976363, 'id', '15', 1, '1064bb3d'),
(47, 1440017613, 'id', '15', 1, '1064bb3d'),
(48, 1440134471, 'id', '15', 1, '1064bb3d'),
(49, 1440218018, 'id', '15', 1, '1064bb3d'),
(50, 1440291482, 'id', '15', 1, 'b46b61b4'),
(51, 1440292050, 'id', '15', 1, 'b46b61b4'),
(52, 1440292110, 'id', '15', 1, '1064bb3d'),
(53, 1440303293, 'id', '15', 1, '1064bb3d'),
(54, 1440323607, 'id', '15', 1, '1064bb3d'),
(55, 1440334437, 'id', '15', 1, '1064bb3d'),
(56, 1440389871, 'id', '15', 1, '1064bb3d'),
(57, 1440413776, 'id', '15', 1, '1064bb3d'),
(58, 1440425731, 'id', '15', 1, '1064bb3d'),
(59, 1440493634, 'id', '15', 1, '1064bb3d'),
(60, 1440499761, 'id', '15', 1, '1064bb3d'),
(61, 1440499926, 'id', '15', 1, '1064bb3d'),
(62, 1440499968, 'id', '15', 1, '1064bb3d'),
(63, 1440501430, 'id', '15', 1, '1064bb3d'),
(64, 1440501544, 'id', '15', 1, '1064bb3d'),
(65, 1440501596, 'id', '15', 1, '1064bb3d'),
(66, 1440501685, 'id', '15', 1, '1064bb3d'),
(67, 1440501832, 'id', '15', 1, '1064bb3d'),
(68, 1440567290, 'id', '15', 1, '1064bb3d'),
(69, 1440576738, 'id', '15', 1, '1064bb3d'),
(70, 1440655889, 'id', '15', 1, '1064bb3d'),
(71, 1440734268, 'id', '15', 1, '1064bb3d'),
(72, 1440827012, 'id', '15', 1, '1064bb3d'),
(73, 1440844219, 'id', '15', 1, '1064bb3d'),
(74, 1440899830, 'id', '15', 1, '1064bb3d'),
(75, 1440906987, 'id', '15', 1, '1064bb3d');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(2, 15, 1437898255, 1437898449, 'a0f61a4a'),
(3, 15, 1437967983, 1437969248, 'a0f61a4a'),
(4, 15, 1437978129, 1437978129, 'a0f61a4a'),
(5, 15, 1438156071, 1438159571, 'a0f61a4a'),
(6, 15, 1438162251, 1438163192, 'a0f61a4a'),
(7, 15, 1438164558, 1438166479, 'a0f61a4a'),
(8, 15, 1438167048, 1438167087, 'a0f61a4a'),
(9, 15, 1438191179, 1438194751, 'a0f61a4a'),
(10, 0, 1438242096, 1438242221, 'a0f61a4a'),
(11, 15, 1438242224, 1438244571, 'a0f61a4a'),
(12, 15, 1438244971, 1438245358, 'a0f61a4a'),
(13, 15, 1438246270, 1438254188, 'a0f61a4a'),
(14, 0, 1438265859, 1438265900, 'a0f61a4a'),
(15, 15, 1438265901, 1438269567, 'a0f61a4a'),
(16, 15, 1438273542, 1438273542, 'a0f61a4a'),
(17, 15, 1438273886, 1438275190, 'a0f61a4a'),
(18, 0, 1438400807, 1438400813, '6808e60a'),
(19, 15, 1438400814, 1438403276, '6808e60a'),
(20, 0, 1438408568, 1438409146, '6808e60a'),
(21, 0, 1438416796, 1438416796, '6808e60a'),
(22, 0, 1438418184, 1438418184, '6808e60a'),
(23, 15, 1438418189, 1438421913, '6808e60a'),
(24, 0, 1438418785, 1438418785, '6808e60a'),
(25, 16, 1438418789, 1438418872, '6808e60a'),
(26, 0, 1438422412, 1438422419, '6808e60a'),
(27, 15, 1438422420, 1438424099, '6808e60a'),
(28, 0, 1438577624, 1438577624, '6808e60a'),
(29, 15, 1438577630, 1438580124, '6808e60a'),
(30, 0, 1438583411, 1438583430, '6808e60a'),
(31, 15, 1438583430, 1438583777, '6808e60a'),
(32, 15, 1438584663, 1438584851, '6808e60a'),
(33, 15, 1438585580, 1438591876, '6808e60a'),
(34, 0, 1438606698, 1438606704, '6808e60a'),
(35, 15, 1438606707, 1438613216, '6808e60a'),
(36, 0, 1438671838, 1438671845, '6808e60a'),
(37, 15, 1438671846, 1438672796, '6808e60a'),
(38, 15, 1438673368, 1438673992, '6808e60a'),
(39, 15, 1438677165, 1438679116, '6808e60a'),
(40, 0, 1438679899, 1438679913, '6808e60a'),
(41, 15, 1438679917, 1438682956, '6808e60a'),
(42, 0, 1438682777, 1438682940, '6808e60a'),
(43, 15, 1438683527, 1438683649, '6808e60a'),
(44, 15, 1438696255, 1438696415, '6808e60a'),
(45, 15, 1438698298, 1438700256, '6808e60a'),
(46, 0, 1438701235, 1438701333, '7e4845c5'),
(47, 0, 1438701867, 1438701985, '7e4845c5'),
(48, 0, 1438703626, 1438703646, '6808e60a'),
(49, 15, 1438703647, 1438704209, '6808e60a'),
(50, 15, 1438705592, 1438705636, '6808e60a'),
(51, 0, 1438842322, 1438842329, '6808e60a'),
(52, 15, 1438842332, 1438842590, '6808e60a'),
(53, 15, 1438851901, 1438857388, '6808e60a'),
(54, 0, 1438941762, 1438941762, '6808e60a'),
(55, 15, 1438941768, 1438943261, '6808e60a'),
(56, 15, 1438943600, 1438948478, '6808e60a'),
(57, 15, 1438949074, 1438949428, '6808e60a'),
(58, 0, 1438949147, 1438949269, '6808e60a'),
(59, 15, 1438951871, 1438954020, '6808e60a'),
(60, 15, 1438954413, 1438958011, '6808e60a'),
(61, 0, 1439012742, 1439012748, '6808e60a'),
(62, 15, 1439012751, 1439018548, '6808e60a'),
(63, 15, 1439024693, 1439024886, '6808e60a'),
(64, 15, 1439029266, 1439029857, '6808e60a'),
(65, 15, 1439031488, 1439034222, '6808e60a'),
(66, 0, 1439104981, 1439104981, '6808e60a'),
(67, 15, 1439104985, 1439108653, '6808e60a'),
(68, 15, 1439112000, 1439114942, '6808e60a'),
(69, 15, 1439120949, 1439121004, '6808e60a'),
(70, 0, 1439121708, 1439121708, '6808e60a'),
(71, 15, 1439121714, 1439123922, '6808e60a'),
(72, 15, 1439124426, 1439127775, '6808e60a'),
(73, 0, 1439135461, 1439135468, '6808e60a'),
(74, 15, 1439135470, 1439136867, '6808e60a'),
(75, 0, 1439178910, 1439178910, '6808e60a'),
(76, 15, 1439178916, 1439178917, '6808e60a'),
(77, 15, 1439180393, 1439181582, '6808e60a'),
(78, 15, 1439202208, 1439208870, '6808e60a'),
(79, 0, 1439213007, 1439213007, '6808e60a'),
(80, 15, 1439213012, 1439216860, '6808e60a'),
(81, 0, 1439218403, 1439218503, '6808e60a'),
(82, 15, 1439218505, 1439218579, '6808e60a'),
(83, 15, 1439221175, 1439225084, '6808e60a'),
(84, 0, 1439222016, 1439222016, '6808e60a'),
(85, 0, 1439239336, 1439239405, '6808e60a'),
(86, 15, 1439239407, 1439240735, '6808e60a'),
(87, 15, 1439242031, 1439242280, '6808e60a'),
(88, 15, 1439242775, 1439247883, '6808e60a'),
(89, 0, 1439303931, 1439303931, '6808e60a'),
(90, 15, 1439303936, 1439310761, '6808e60a'),
(91, 0, 1439307571, 1439307571, '6808e60a'),
(92, 0, 1439325628, 1439325634, '6808e60a'),
(93, 15, 1439325635, 1439330215, '6808e60a'),
(94, 15, 1439330635, 1439330660, '6808e60a'),
(95, 15, 1439331082, 1439331674, '6808e60a'),
(96, 15, 1439332221, 1439335043, '6808e60a'),
(97, 0, 1439425977, 1439427591, '6808e60a'),
(98, 0, 1439477787, 1439477787, '6808e60a'),
(99, 0, 1439484658, 1439484973, '6808e60a'),
(100, 0, 1439485688, 1439485694, '6808e60a'),
(101, 15, 1439485696, 1439487335, '6808e60a'),
(102, 15, 1439491979, 1439496055, '6808e60a'),
(103, 0, 1439512696, 1439512807, '6808e60a'),
(104, 15, 1439512807, 1439514180, '6808e60a'),
(105, 15, 1439520017, 1439520029, '6808e60a'),
(106, 15, 1439521924, 1439522025, '6808e60a'),
(107, 15, 1439522032, 1439525763, '1064bb3d'),
(108, 15, 1439532170, 1439534537, '1064bb3d'),
(109, 0, 1439580807, 1439580833, '1064bb3d'),
(110, 15, 1439580837, 1439584662, '1064bb3d'),
(111, 15, 1439585361, 1439591149, '1064bb3d'),
(112, 0, 1439610035, 1439610035, '1064bb3d'),
(113, 0, 1439622347, 1439622347, '1064bb3d'),
(114, 15, 1439622351, 1439622644, '1064bb3d'),
(115, 15, 1439623162, 1439631164, '1064bb3d'),
(116, 0, 1439625874, 1439625880, '1064bb3d'),
(117, 15, 1439631877, 1439639176, '1064bb3d'),
(118, 15, 1439639566, 1439642007, '1064bb3d'),
(119, 0, 1439670723, 1439670763, '1064bb3d'),
(120, 15, 1439670769, 1439672945, '1064bb3d'),
(121, 15, 1439674253, 1439679319, '1064bb3d'),
(122, 15, 1439680227, 1439680350, '1064bb3d'),
(123, 0, 1439688928, 1439689164, '1064bb3d'),
(124, 15, 1439689164, 1439697230, '1064bb3d'),
(125, 15, 1439698758, 1439703489, '1064bb3d'),
(126, 0, 1439706912, 1439706918, '1064bb3d'),
(127, 15, 1439706919, 1439709840, '1064bb3d'),
(128, 0, 1439725998, 1439726005, '1064bb3d'),
(129, 15, 1439726006, 1439729422, '1064bb3d'),
(130, 0, 1439765244, 1439765244, '1064bb3d'),
(131, 15, 1439765250, 1439767304, '1064bb3d'),
(132, 0, 1439799221, 1439799227, '1064bb3d'),
(133, 15, 1439799228, 1439805957, '1064bb3d'),
(134, 0, 1439879325, 1439879325, '1064bb3d'),
(135, 15, 1439879330, 1439879843, '1064bb3d'),
(136, 15, 1439888475, 1439889485, '1064bb3d'),
(137, 15, 1439893696, 1439895709, '1064bb3d'),
(138, 15, 1439896043, 1439897042, '1064bb3d'),
(139, 0, 1439935647, 1439935647, '1064bb3d'),
(140, 15, 1439935653, 1439937590, '1064bb3d'),
(141, 0, 1439976358, 1439976358, '1064bb3d'),
(142, 15, 1439976364, 1439987075, '1064bb3d'),
(143, 0, 1440017599, 1440017827, '1064bb3d'),
(144, 15, 1440017613, 1440023821, '1064bb3d'),
(145, 0, 1440134446, 1440134466, '1064bb3d'),
(146, 15, 1440134472, 1440149763, '1064bb3d'),
(147, 15, 1440151020, 1440169043, '1064bb3d'),
(148, 0, 1440218009, 1440218015, '1064bb3d'),
(149, 15, 1440218018, 1440221891, '1064bb3d'),
(150, 0, 1440291338, 1440291388, '1064bb3d'),
(151, 0, 1440291477, 1440291477, 'b46b61b4'),
(152, 15, 1440291482, 1440295030, 'b46b61b4'),
(153, 0, 1440292006, 1440292046, 'b46b61b4'),
(154, 0, 1440292100, 1440292106, '1064bb3d'),
(155, 15, 1440292111, 1440292156, '1064bb3d'),
(156, 0, 1440303286, 1440303293, '1064bb3d'),
(157, 15, 1440303294, 1440305804, '1064bb3d'),
(158, 15, 1440315428, 1440321212, '1064bb3d'),
(159, 15, 1440323223, 1440323223, '1064bb3d'),
(160, 0, 1440323594, 1440323607, '1064bb3d'),
(161, 15, 1440323608, 1440325077, '1064bb3d'),
(162, 0, 1440334426, 1440334432, '1064bb3d'),
(163, 15, 1440334437, 1440340772, '1064bb3d'),
(164, 0, 1440389857, 1440389869, '1064bb3d'),
(165, 15, 1440389872, 1440396984, '1064bb3d'),
(166, 0, 1440413762, 1440413775, '1064bb3d'),
(167, 15, 1440413777, 1440416577, '1064bb3d'),
(168, 0, 1440425716, 1440425729, '1064bb3d'),
(169, 15, 1440425731, 1440428620, '1064bb3d'),
(170, 15, 1440434899, 1440434899, '1064bb3d'),
(171, 15, 1440435734, 1440435762, '1064bb3d'),
(172, 0, 1440493582, 1440493630, '1064bb3d'),
(173, 15, 1440493634, 1440501889, '1064bb3d'),
(174, 0, 1440499756, 1440499967, '1064bb3d'),
(175, 0, 1440501417, 1440501827, '1064bb3d'),
(176, 15, 1440507867, 1440512564, '1064bb3d'),
(177, 0, 1440510619, 1440510644, '1064bb3d'),
(178, 0, 1440567286, 1440567286, '1064bb3d'),
(179, 15, 1440567290, 1440569381, '1064bb3d'),
(180, 0, 1440576673, 1440576734, '1064bb3d'),
(181, 15, 1440576738, 1440576881, '1064bb3d'),
(182, 15, 1440586485, 1440592864, '1064bb3d'),
(183, 0, 1440655772, 1440655807, '1064bb3d'),
(184, 15, 1440655889, 1440659602, '1064bb3d'),
(185, 15, 1440675942, 1440680251, '1064bb3d'),
(186, 15, 1440683253, 1440684421, '1064bb3d'),
(187, 15, 1440685710, 1440688796, '1064bb3d'),
(188, 0, 1440734254, 1440734266, '1064bb3d'),
(189, 15, 1440734268, 1440744316, '1064bb3d'),
(190, 15, 1440746301, 1440751484, '1064bb3d'),
(191, 15, 1440758654, 1440765548, '1064bb3d'),
(192, 15, 1440767158, 1440768059, '1064bb3d'),
(193, 15, 1440771213, 1440771213, '1064bb3d'),
(194, 0, 1440826453, 1440827010, '1064bb3d'),
(195, 15, 1440827012, 1440827227, '1064bb3d'),
(196, 15, 1440827654, 1440835704, '1064bb3d'),
(197, 0, 1440844157, 1440844219, '1064bb3d'),
(198, 15, 1440844219, 1440845787, '1064bb3d'),
(199, 15, 1440847389, 1440855871, '1064bb3d'),
(200, 15, 1440863193, 1440871131, '1064bb3d'),
(201, 0, 1440899680, 1440899825, '1064bb3d'),
(202, 15, 1440899830, 1440908572, '1064bb3d'),
(203, 0, 1440906960, 1440906985, '1064bb3d');

-- --------------------------------------------------------

--
-- Table structure for table `users_remembers`
--

CREATE TABLE IF NOT EXISTS `users_remembers` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_workplaces`
--

CREATE TABLE IF NOT EXISTS `users_workplaces` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time.format` char(10) DEFAULT NULL,
  `time.start` int(11) DEFAULT NULL,
  `time.stop` int(11) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `awards` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_workplaces`
--

INSERT INTO `users_workplaces` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `company`, `work`, `description`, `address`, `awards`) VALUES
(1, 15, 3, '1', 1435647902, NULL, 'Giccos, Inc', 'CEO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_block`
--

CREATE TABLE IF NOT EXISTS `videos_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_cache`
--

CREATE TABLE IF NOT EXISTS `videos_cache` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(225) DEFAULT NULL,
  `thumbnail` varchar(40) DEFAULT NULL,
  `thumbnail.path` char(10) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_cache`
--

INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) VALUES
(26, 15, 'user', 15, 1439640415, 1439642215, '1064bb3d', 'e56b6dac', 'ce060388', '8f7cee98', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 'c096b06fec6245d7704eeb4a080d7583', '8aec58cc', '0', 'video/mp4', 57882648, 333.461670, '0ef7b258'),
(27, 15, 'user', 15, 1439640479, 1439642279, '1064bb3d', 'e56b6dac', 'ce060388', '90860f35', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', '22c91bfa57fa42a32d3c84cd79f3a46c', '82458c11', '0', 'video/mp4', 57882648, 333.461670, '15726eeb');

-- --------------------------------------------------------

--
-- Table structure for table `videos_comment`
--

CREATE TABLE IF NOT EXISTS `videos_comment` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) DEFAULT NULL,
  `inside.id` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_favorite`
--

CREATE TABLE IF NOT EXISTS `videos_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_info`
--

CREATE TABLE IF NOT EXISTS `videos_info` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `playlist` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.thumbnail` varchar(50) NOT NULL,
  `file.audio` varchar(50) NOT NULL,
  `file.hd` varchar(50) NOT NULL,
  `file.vga` varchar(50) NOT NULL,
  `file.qvga` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.vga` varchar(40) NOT NULL,
  `secret.qvga` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.vga` char(10) NOT NULL,
  `path.qvga` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) NOT NULL,
  `dimension.height` int(11) NOT NULL,
  `dimension.width` int(11) NOT NULL,
  `display.ratio` char(10) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `framerate` varchar(20) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL,
  `audio.codec_name` char(20) DEFAULT NULL,
  `audio.codec_long_name` varchar(40) DEFAULT NULL,
  `audio.profile` char(10) DEFAULT NULL,
  `audio.codec_type` char(20) DEFAULT NULL,
  `audio.codec_time_base` char(20) DEFAULT NULL,
  `audio.codec_tag_string` char(10) DEFAULT NULL,
  `audio.channels` char(10) DEFAULT NULL,
  `audio.channel_layout` char(10) DEFAULT NULL,
  `audio.duration` int(11) DEFAULT NULL,
  `audio.bit_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.vga`, `file.qvga`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(5, 15, 'user', 15, 1, 1433581762, '5ced9004', 'f65f1d77c7249b922f6487e72dfcf149', 'bÃ i hÃ¡t Ã½ nghÄ©a', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', '', '', 4, 4, 4, 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', '0', '0', '18338411353ae839453c12c1c70d39fe.mp4', '', '', '0', '0', '8937f9a7586f9f04ccf805dadbab3ba7', '', '43f28c42', '0', '0', 'e6ed291b', '', 0, 28178996, 'h264', '', 360, 480, '4:3', 675286, '2997/100', 333.831665, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 334, 128000),
(6, 15, 'user', 15, 2, 1437042379, '0e3e4465', 'dafae35eaa0ac8d49b7b071af45868cc', 'Biáº¿t nÃ³i lÃ  táº¡i sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, '8d301478c02c5f731933f6ee94a523bb.png', '0', '0', 'ae27b319134ea5f37f1b16eebf669cf5.mp4', '', '', '0', '0', 'd60188b6fca5f034cedbabf6af1f0caa', '', '25492c91', '0', '0', '243d022c', '', 0, 47963315, 'h264', '', 360, 640, '0:1', 928819, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(7, 15, 'user', 15, 0, 1438248136, 'cd3f8ad5', '31bbec39178b8e5da312562e3655644e', 'sd', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, '8f56b6923d797b858a0e7e86b4cbf90f.png', '0', '0', '8bcba74c225d66cf80a0199ae3f4b5f7.mp4', '', '', '0', '0', 'd60188b6fca5f034cedbabf6af1f0caa', '', '31cd475d', '0', '0', '16a0f0fe', '', 0, 47963315, 'h264', '', 360, 640, '0:1', 928819, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(8, 15, 'user', 15, 3, 1439331251, '497a1153', 'f8274ae3be75ef1b3961131565fdedb3', 'vÃ¬ anh vÃ´ tÃ¬nh', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', '', '', 4, 4, 4, '5495b9790051550529365e70c23026b9.png', '0', '0', 'd2dd55da405d79d1dc84ae981168c5e1.mp4', '', '', '0', '0', '87ec00aa183eae7826ad8f1b7007bc9e', '', 'db578872', '0', '0', '7ca59d8e', '', 0, 14754733, 'h264', '', 360, 640, '16:9', 534430, '30000/1001', 220.866669, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 221, 95999),
(9, 15, 'user', 15, 3, 1439333783, '03807d46', 'cfc1b6d3cf1b56993b90dbec0b6ca238', 's', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', '', '', 4, 4, 4, '83436f4154a88cc8116430c54ae9ec6f.png', '0', '0', '253458819139331e3abd23c2875170bc.mp4', '', '', '0', '0', '87ec00aa183eae7826ad8f1b7007bc9e', '', '462a3bf2', '0', '0', '680e8dfa', '', 0, 14754733, 'h264', '', 360, 640, '16:9', 534430, '30000/1001', 220.866669, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 221, 95999),
(10, 1, '1', 1, 1, 1, '1', '1', '1', '1', '1', '1', 1, 1, 1, '1', '1', '1', '1', '', '1', '1', '1', '1', '', '1', '1', '1', '1', '', 1, 1, '1', '1', 1, 1, '1', 1, '1', 1.000000, '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1),
(11, 1, '1', 1, 1, 1, '1', '1', '1', '1', '1', '1', 1, 1, 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, '1', '1', 1, 1, '1', 1, '1', 1.000000, '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1),
(12, 15, 'user', 15, 0, 1439690691, '26c7e7bf', '611bb1430f2eda910a448a964add2812', 's', 'OFFICIAL MV] VÃ¬ Anh VÃ´ TÃ¬nh - The Men - YouTube.mp4', '', '', 4, 4, 4, '37ee3570ddd63425be9ee744a2d84f90', '0', '0', '0', '75f0541ff5f843855416b120eaedd788', '0', '0', '0', '0', 'a3dd762b01625e9a63408db97ae1618a', '0', '0', '0', '0', '8896568c', 0, 14754733, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 360, 640, '16:9', 534430, '30000/1001', 220.866669, '0', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 221, 95999),
(13, 15, 'user', 15, 0, 1439800054, '0ecc14b6', '0d54f66e66fb7b8c4a2569216808e06f', 'g xtff', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', '', '', 4, 4, 4, 'a98403c10c3fd7a9f350d67164eb73aa', '0', '518393a80caec4dffdc63795e9d1043e', 'd3cff698019e21648ce2373673c419f0', 'd8702a50ec2b7d93b522caa50f0f4bdf', '0', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '09abeb56', '0dadedb7', 'd8b7ffb3', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, '0', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

-- --------------------------------------------------------

--
-- Table structure for table `videos_playlist`
--

CREATE TABLE IF NOT EXISTS `videos_playlist` (
  `id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'f364dca9', 'd326ecd0392994c4f04d1061663f9fe8', 1433580771, 'sÆ°u táº§m', 0, '', '', NULL),
(2, 'user', 15, '20dd2f49', '55e721384c4d94e613df7a41df89fcfd', 1437042379, 'Kháº¯c Viá»‡t', 0, '', '', NULL),
(3, 'user', 15, '4569a1eb', 'e558d429f2d86d8f618ca66de078f7f3', 1439331251, 'the men', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_pointtag`
--

CREATE TABLE IF NOT EXISTS `videos_pointtag` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` float(8,2) NOT NULL,
  `length` float(8,2) NOT NULL,
  `sticker` varchar(40) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1, 13, 'user', 15, 52.00, 4.75, NULL, 'wwhat the fuck ?'),
(3, 1440427617, 0, 'user', 15, 151.82, 3.00, '', 'sdf'),
(4, 1440428326, 13, 'user', 15, 117.26, 3.00, '', 'sdfasd fas '),
(5, 1440428450, 13, 'user', 15, 180.92, 3.00, '', 'sdfdsf'),
(6, 1440428544, 13, 'user', 15, 86.58, 3.00, '', 's'),
(7, 1440428558, 13, 'user', 15, 213.11, 3.00, '', 'sd'),
(8, 1440428607, 13, 'user', 15, 2.67, 3.00, '', 'sdf'),
(9, 1440428615, 13, 'user', 15, 246.54, 3.00, '', 'sdfsd fs '),
(10, 1440493668, 13, 'user', 15, 278.14, 3.00, '', 'sd'),
(11, 1440493861, 13, 'user', 15, 64.99, 5.00, '', 'jjv h h fgcfgg');

-- --------------------------------------------------------

--
-- Table structure for table `videos_replay`
--

CREATE TABLE IF NOT EXISTS `videos_replay` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1434037205, 5, 'user', '15', 1434642370, 18),
(4, 1439333876, 8, 'user', '15', 1439939039, 5),
(5, 1439334193, 9, 'user', '15', 1439939332, 102);

-- --------------------------------------------------------

--
-- Table structure for table `videos_views`
--

CREATE TABLE IF NOT EXISTS `videos_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL,
  `captions` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(3, 1433581791, 5, 'user', '15', '0', '0'),
(4, 1433741874, 5, 'guy', 'da65d66b', '0', '0'),
(5, 1433746592, 5, 'user', '15', '0', '0'),
(6, 1434036789, 5, 'user', '15', '0', '0'),
(7, 1437043142, 6, 'user', '15', '0', '0'),
(8, 1438248245, 7, 'user', '15', '0', '0'),
(9, 1438400828, 7, 'user', '15', '0', '0'),
(10, 1438673976, 7, 'user', '15', '0', '0'),
(11, 1438949372, 7, 'user', '15', '0', '0'),
(12, 1439331274, 8, 'user', '15', '0', '0'),
(13, 1439333800, 9, 'user', '15', '0', '0'),
(14, 1439691367, 12, 'user', '15', '0', '0'),
(15, 1439801686, 13, 'user', '15', '0', '0'),
(16, 1439888946, 13, 'user', '15', '0', '0'),
(17, 1440023423, 13, 'user', '15', '0', '0'),
(18, 1440134478, 13, 'user', '15', '0', '0'),
(19, 1440218025, 13, 'user', '15', '0', '0'),
(20, 1440291486, 13, '', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wiki_pages`
--

CREATE TABLE IF NOT EXISTS `wiki_pages` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertising_actions`
--
ALTER TABLE `advertising_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising_id`
--
ALTER TABLE `advertising_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_post`
--
ALTER TABLE `answers_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_rate`
--
ALTER TABLE `answers_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_topic`
--
ALTER TABLE `answers_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cited`
--
ALTER TABLE `cited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faces_id`
--
ALTER TABLE `faces_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends_request`
--
ALTER TABLE `friends_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_codes`
--
ALTER TABLE `languages_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_list`
--
ALTER TABLE `languages_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_values`
--
ALTER TABLE `languages_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_cited`
--
ALTER TABLE `library_cited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_voice`
--
ALTER TABLE `library_voice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_words`
--
ALTER TABLE `library_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_actions`
--
ALTER TABLE `logs_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_client`
--
ALTER TABLE `logs_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps_places`
--
ALTER TABLE `maps_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_data`
--
ALTER TABLE `messages_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_hide`
--
ALTER TABLE `messages_hide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_id`
--
ALTER TABLE `messages_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_members`
--
ALTER TABLE `messages_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_typing`
--
ALTER TABLE `messages_typing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_views`
--
ALTER TABLE `messages_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mood`
--
ALTER TABLE `mood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_album`
--
ALTER TABLE `music_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_block`
--
ALTER TABLE `music_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_cache`
--
ALTER TABLE `music_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_info`
--
ALTER TABLE `music_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_replay`
--
ALTER TABLE `music_replay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_views`
--
ALTER TABLE `music_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_block`
--
ALTER TABLE `pages_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_follow`
--
ALTER TABLE `pages_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_block`
--
ALTER TABLE `photos_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_cache`
--
ALTER TABLE `photos_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_faces`
--
ALTER TABLE `photos_faces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_info`
--
ALTER TABLE `photos_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_tips`
--
ALTER TABLE `photos_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_views`
--
ALTER TABLE `photos_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_author`
--
ALTER TABLE `sites_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_comment`
--
ALTER TABLE `sites_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_id`
--
ALTER TABLE `sites_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_info`
--
ALTER TABLE `sites_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_rate`
--
ALTER TABLE `sites_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_scan`
--
ALTER TABLE `sites_scan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_views`
--
ALTER TABLE `sites_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_actions`
--
ALTER TABLE `status_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_block`
--
ALTER TABLE `status_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_cited`
--
ALTER TABLE `status_cited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_comment`
--
ALTER TABLE `status_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_edit`
--
ALTER TABLE `status_edit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_favorite`
--
ALTER TABLE `status_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_follow`
--
ALTER TABLE `status_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_invite`
--
ALTER TABLE `status_invite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_link`
--
ALTER TABLE `status_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_mood`
--
ALTER TABLE `status_mood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_music`
--
ALTER TABLE `status_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_photos`
--
ALTER TABLE `status_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_places`
--
ALTER TABLE `status_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_share`
--
ALTER TABLE `status_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_usertag`
--
ALTER TABLE `status_usertag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_videos`
--
ALTER TABLE `status_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_audio`
--
ALTER TABLE `storage_audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_image`
--
ALTER TABLE `storage_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_static`
--
ALTER TABLE `storage_static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_video`
--
ALTER TABLE `storage_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_block`
--
ALTER TABLE `users_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_contact`
--
ALTER TABLE `users_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_education`
--
ALTER TABLE `users_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_faces`
--
ALTER TABLE `users_faces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_family`
--
ALTER TABLE `users_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_follow`
--
ALTER TABLE `users_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_guide`
--
ALTER TABLE `users_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_remembers`
--
ALTER TABLE `users_remembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_block`
--
ALTER TABLE `videos_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_cache`
--
ALTER TABLE `videos_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_comment`
--
ALTER TABLE `videos_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_info`
--
ALTER TABLE `videos_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_replay`
--
ALTER TABLE `videos_replay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_views`
--
ALTER TABLE `videos_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertising_actions`
--
ALTER TABLE `advertising_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertising_id`
--
ALTER TABLE `advertising_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_post`
--
ALTER TABLE `answers_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_rate`
--
ALTER TABLE `answers_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_topic`
--
ALTER TABLE `answers_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faces_id`
--
ALTER TABLE `faces_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `friends_request`
--
ALTER TABLE `friends_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages_codes`
--
ALTER TABLE `languages_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_list`
--
ALTER TABLE `languages_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=765;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=444;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_hide`
--
ALTER TABLE `messages_hide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `music_album`
--
ALTER TABLE `music_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_block`
--
ALTER TABLE `music_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_cache`
--
ALTER TABLE `music_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `music_info`
--
ALTER TABLE `music_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pages_block`
--
ALTER TABLE `pages_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_follow`
--
ALTER TABLE `pages_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos_tips`
--
ALTER TABLE `photos_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_views`
--
ALTER TABLE `photos_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sites_comment`
--
ALTER TABLE `sites_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_id`
--
ALTER TABLE `sites_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_info`
--
ALTER TABLE `sites_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sites_rate`
--
ALTER TABLE `sites_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT for table `status_actions`
--
ALTER TABLE `status_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_block`
--
ALTER TABLE `status_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_cited`
--
ALTER TABLE `status_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_comment`
--
ALTER TABLE `status_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_edit`
--
ALTER TABLE `status_edit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status_favorite`
--
ALTER TABLE `status_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `status_music`
--
ALTER TABLE `status_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `status_places`
--
ALTER TABLE `status_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `status_share`
--
ALTER TABLE `status_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `status_usertag`
--
ALTER TABLE `status_usertag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_videos`
--
ALTER TABLE `status_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=415;
--
-- AUTO_INCREMENT for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users_block`
--
ALTER TABLE `users_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_faces`
--
ALTER TABLE `users_faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_family`
--
ALTER TABLE `users_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_block`
--
ALTER TABLE `videos_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_cache`
--
ALTER TABLE `videos_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `videos_comment`
--
ALTER TABLE `videos_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
