-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2015 at 05:04 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=730 DEFAULT CHARSET=latin1;

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
(696, 'en', 'content_notfound_may_error', 'content is not found, maybe by error', 'false'),
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
(729, 'en', 'pointtag_add_successful', 'added new point tag successful', 'false');

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
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAADwAADQ4AERERERERIiIiIiIiIjMzMzMzM0RERERERERVVVVVVVVVZmZmZmZmd3d3d3d3d4iIiIiIiIiZmZmZmZmqqqqqqqqqu7u7u7u7u8zMzMzMzN3d3d3d3d3u7u7u7u7u////////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQFqyIAACAAAA0OZfYCmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAGhAuYH9DGAEpS2OXbfACFXdzgGLeAGYGRx/B+Bn+Hh7/wAHD+h58BkAM///wBwA6OfDH4GeAeHvhvAP/w9/4AH//z8ERAD5/D34GcM8PaD3gBkQyOP8f//h0PwMAAD/zD3wGQARHHwx////0/M/gB1VANGuWSx63W63a+36/U7LsmF0du1Yh4DFMa9vzNl39m8suoqhQDkXu243NafY0xcI4EvZc7zD/Agz+ciMIAix+c7Z7yvnlUFXgs5hC2QaYvfH8rlf7lr9folH/40LEWkEjotZfmsIDk1lVS5JbdR4RA5q3Sd5jncz3nevLToUZ0i1xrWTTgBf/49uX6mX3MqXHtfLv8MxDGWIvy44OKUKWWu1PdpylP2cua53fMf/Lff//z/XPCHAsiyC/qVwWUgyaRg4qEtQsFnLTxdL+5n+8fu8z/8d/Y7z+7/uHf1zP9gCStocxNOPImm9IGesUu+XkA30WggA9IWKHPLYQKXXz/lJrD8cat+RId0E9xrtW7z2VAACVbcst133+2////+BALI6XBQ9Xbr57xv/jQsQZJ7u2tl+PMAG8l/EJnsO7tzizOhkFZ4PdAyHu4uT6/51DzkEoIs9NM5MbZRK0lw5z22wjXstSENVZCq8OzxLab02bSacYzsRONpcvr/DJRo/Ix9nlZt0k2x8djtvYua5aRdvRuLlLSt35ro1iTPD83P924ybrO7f7520tTTymyfRMqGek2MhIVTbraK9hSgi2VUoo1K7pLHY7JrNO+HhtkBpieFXNhjftIgTfV4l6onKt/nMgFo0EIg7xmj+DF7xjfmnrWv8m6yH83k3V/+NCxD47lBa6X5l4AorkIh+9rWqQMWowjLOSzeHO4lzo8/1nWLx70iMiMbYqrNNVLStUF949f/RLn5CZV3PI/RnjoBa8Jka3GlL3z/833SC/nV7TejJHZIkNV3U60oMzMckLDnjX+tf/++/pTHOMRqWZTwQhGQWZCnI7zcPZvOg1GM8mR6sRdwS3DgL3r++//fGMf/P/6iNBJp1MKFVoI18HqnkYeCXaFUiU29eQlh23wXFOYeWdyvn+6QJpagEAGAjv2w25JFlwDcCo3dEUYbn/40LEEy/7Hrz3mKAAMewwWPrIDa1XccrStpFUNUBfwLTAu0EBAOh0VgYMGAMHE5ifAMjxA6YwDAggLjbvWXiCBqsWWQcPwAsDJsZAfaD6oyBohxIRNhVNCWZrKoom76mTHcXykXC+bE4zpWa6t1u2gcPGaaZsZkSJiyKF+1SDJ6kGN03kNGgHLEXHOJgcsiAs4nyBKdWtWpWtGqm7toIN61FQwsXnMzIjUDA25Twc9uBzbzNqZuHfNTcAoBux1qRzW1UKrJFnRrDYQp7bsxQMqv/jQsQXMbPu2L+PeAPcbbyTGBI+G9/gWkesciogp1xt8/ncuGt8X21s6Yv/+C0A5vEbAZXr3X3j//9JwV28eYdwa19sZa9ZxfUx2pY7EA8jp9xQzWc1g4xCzvP9pI9rqI7EJlWMHEdxeWtAYg1xa3rj+tvj//Pxj5dxGF3l6wK2GurK3GdPo3+v//anz9V+JNb3Ck3T580aeNPdoy8XPVU1n8O8KVjtA3ffkrTM9NYxX/GKfT594tYF+Ko7cQAJIKPGhGKxqLRaADDFLiI+uUIF/+NCxBQoO36Nn4VYAC5uWEN8/kOOwmj0idd/47S0gjpe423T/6JMIIwHaTuHbv/8RjElnzNY2h07f//xiXHiSTkB3B5KY/////8kB/GkeS8xH81HaHo4SXG0Wi642td///+mTjc0KnGzTyBDLlB8pdKJq2HOa1Hc6f////1CGswPrjuthsWlaRAEBBQoXsajWGqwkoKFv/cIkgKlHEKwhsLYkrwEw/OOwKAmKgCX4IAvgkYX/5QqEYL2FpUOv/EAIAIB2PlYYWFv/xHFKiT1X5L/40LENyW0DfANikAAf//tNWMMYWVVKOmP//xofhGQYIhd2zT5TFQ3////p3NxTuUHgeNG3w23Kq3////4hhGEYcUOdEqz4oy2mV5FSmtRUV2lmb//////5PPGCIIhZ49HeDDJs8QLOlvwiD5CEqfDScTjkcjkEkkEndl+Cz6ey/ZfFyQAQ41ha9zollHNDiq7/9dSnkf41AE5z+fAboQ3DLSkVVvMG7+H/NSt1YXDjpgQAukRAp9d/7e87Cx1hGwIC1UAuACAysNKJXDZ7fP5///jQsRkRPwWtb+YyALEJSPpfNkrRnMb1qQAKGVToNIkl6KC/zP///974xMwt3KR/5Q6DO05ItLZHH2htzi////////8OxeR8i9PSU8rlFmxDzkUkjgWci96xA05INc///+95+ff5UrztBRRmB3IiUF0b9NMcuGZfJHasRiJQ/FmxNs6cojTBFwf////////////7YHsflx38mLuUYpL1WX/Zt8xtWEiYW/sZZGku3wsAyWf7IZyL0MBU1BZrxGk2598jcAo5j7Hsyio44YUe9pl/+NCxBQfQ+bJt8gYA8wOXaAbk2xrvyQwkFhyZozL2Zz1CtE2087sZwEYo3Un2f2FVbv8FM34Mi79OEJKk2KVelxnNqflb+d9pWqzvUp8bSEUy7SuRGoC04wOxnE6H2l8X2ZVIKUdSJmdel2Q/KX77GQUXZSX2Qqk7dZLddsFvpqPSdPnnFKo+pvJaEl904V6j2iTDGACUBQ/lR1sE83YitJTIyM8VwYhQEYiQ8+G0M8zZjhERd0SlTJAqgz99mUhH3+yN26o3RqmWzUlRTLRzFH/40LEWx8LjrG+MMUZLAo8GFMKMKtdmZTqrPmMYy5dNzPON2Xvm3Ot75+22NzJqgZo3ZJLtfuwLBVFP3MOlDItxtl6wQMi9LgRFLly2MQRZZV+FEL7ENPhGfuVGqQiRX8rCiMcqxESTfNKxHCtN8jCdrxj9tzzRNM46XcyKn/KSES278Bbc4OTkOxsTZkqLojnwwXn8+/+08q8zTzb3FSpnLEdq4AgUFUBiWqqkcvIhMJCc5yQMOZJyiRIkRNRo4KNlVSY6oC3DgEDE0CsFbAwEP/jQsSiHiu+qb5ARuGgVKgKGQaNtV9lVVUmYMqqqw/DCvClrggJgIVGqxjZtqRRyarwKJUm1UKxxqTQCVYxw1LalROsIwq0SSiWaqokqS9E0KJUBOGUP6zMeawzUEBMGH2hkYUTVhMwEK2qCWonClhWDNPh1mDAQNBVnVDSYgpqKZlxybqqqqqqqqqqqqqqqqqqqqqqqgALQLt/9qiqi9UVU//////+qIqamBggQNFqiggSkf/////+1ks+tQUs+wGCBWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=latin1;

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
(239, 1439935681, 'user', 15, 'follow', 'status', '272', '', ''),
(240, 1439935684, 'user', 15, 'add', '', '', 'status', '272'),
(241, 1439935848, 'user', 15, 'follow', 'status', '273', '', ''),
(242, 1439935848, 'user', 15, 'add', '', '', 'status', '273'),
(243, 1439935912, 'user', 15, 'follow', 'status', '274', '', ''),
(244, 1439935912, 'user', 15, 'add', '', '', 'status', '274'),
(245, 1439935948, 'user', 15, 'follow', 'status', '275', '', ''),
(246, 1439935949, 'user', 15, 'add', '', '', 'status', '275'),
(247, 1439936372, 'user', 15, 'follow', 'status', '276', '', ''),
(248, 1439936373, 'user', 15, 'add', '', '', 'status', '276');

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
(2, 1439522032, 1440413760, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440291474, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174');

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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

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
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

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
(49, 15, 'user', 15, 1439623175, 1439624975, '1064bb3d', '2d85eb35', '4b612e0c', '5fa501be', 'EZYwYm5NdZIwlXo48tMBufykgNFiWK-L-tezFAefrD8ItftcxST5fAVX74hTuIg2FF3IZvz4rey8Syy_YhbeDSnLnFfE-PDaz75Du9uN-uaLa06klEy6B44d3BYip4h9.jpg', '0', 'image/jpeg', 134150, 'c93ae656');

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

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
(47, 'a98282ea', '8b719e43095c0b0d14e548538bd1f660', 15, 'user', 15, '089a6f18', 'cache', 'cec9c0fd', NULL, NULL, '40.77', '400', '106.15', '106.15', '3.3914', '6.0292');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(13, 15, 'user', 15, 0, 1439935684, '53ad3844', 'f8b06220af003c3a048a3c00b66631b2', '163e9f21', 'Vector_Video_Standards2.svg.png', '', '', 0, 0, 4, 4, 4, '9fc45be8616b95e920809c9cc0888bc0', '0', 'f5c37547178904172060063f9c1be410', 'b01879ad3a0691cb30698a7c1e26c108', '215694f26b2591e688b5c2dabb9fe050', '0', '6e8e647e66efcbdb8889744ed0e25d59', '5b7f2e89877ee81c64f319d26fc2c956', '8119266c', '0', 'f90bba9e', '3a5fa666', 819, 1024, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(14, 15, 'user', 15, 0, 1439935949, 'b93b38e7', '164bae12f95b6d1072bfc6f45e68bf24', '42a273b0', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', '', '', 0, 0, 4, 4, 4, '91b55cd17895cca0e1d688eea54eaec0', '0', '0', '921ced04d3b3345fb9d2c49b01776dd6', '50bb2759572d27509815888aa061531e', '0', '0', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', 'ff3b160a', '0', '0', 'fe683411', 377, 640, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

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
(29, 1440389879, 12, '', '', '0');

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
('K1SxgBmB9bb0EW-sp7h,ZkpdFX0SJX6UqQhz4ofypMc', 1440428620, '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', '02ab5fe9510b15632719474c792a37a4');

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
  `scheme` char(10) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dot` varchar(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mime` char(10) DEFAULT NULL,
  `fingerprints` char(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `title`, `thumbnail`, `description`, `url`, `secure`, `updated`) VALUES
(9, 1434721022, '49dbdfc4', '764634a6a5c638bb27f1f802b1709773', 'http', NULL, 'yan.vn', 'yan', 'vn', '15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', 'html', '1315f15b58', '15 quá»‘c gia cÃ³ phá»¥ ná»¯ Ä‘áº¹p nháº¥t tháº¿ giá»›i', 'photos/raw/other/5FVCyI26HK6jGqzds2Beii3qTumGZiAkFXkJ61IEQOIp1+goI3wimdCcR12akceQKRGn19pwWVR3kKSiYv7KhD2xxyeGyrBHtIDzwxY/3oSojXADbGepYSdODcDMjspEW4OPqLDTJ8StkZnhocJM3TpeB0V8clemkoUDplaiebI=', 'Phá»¥ ná»¯ á»Ÿ má»—i quá»‘c gia cÃ³ sá»± khÃ¡c biá»‡t lá»›n vá» hÃ¬nh thá»ƒ hay nhá»¯ng nÃ©t Ä‘áº·c trÆ°ng nÃªn tháº­t khÃ³ Ä‘á»ƒ chá»‰ ra phá»¥ ná»¯ á»Ÿ quá»‘c gia nÃ o Ä‘áº¹p nháº¥t.', 'http://www.yan.vn/15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', '0', 1434721022),
(11, 1434775699, 'fc051336', '47b8eb2948bcecf5577fbb074aba0da2', 'http', NULL, 'clip.vn', 'clip', 'vn', 'watch/Detective-Conan-Tap-265,OUCu/20029', '', 'b586a81d3c', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan', 'photos/raw/other/hEyZGNA/Wq11Ppwzhmb7bb92qvDRZN/pCFxFd2aJrdlygDbxoiQ7Rt2IWtHNCBoWCpbpiw+z3tU0xVYMvTfY2Pv12ZVDqDXfddUD5D14h3fkT4Zv5wnp25Wo2udD5/zMo6QUR36xjSDO5h3+4iWQzJ4CVs3qwRSJt6AQo0lZy0Y=', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan Detective Conan táº­p 195 FULL HD , Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan - 1996: Shinichi Kudo lÃ  má»™t thÃ¡m tá»­...', 'http://phim.clip.vn/watch/Detective-Conan-Tap-265,OUCu/20029', '0', 1434775699),
(12, 1434775804, 'f9d499cb', '4939c4c2ea30120efd4458a9a90347d2', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', 'c1284319', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1436763613),
(13, 1434778851, '00471ce2', 'a3a608455224f0792acaae98a95dc691', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=exorHh1Xkjs', '', 'd495c77a58', 'XÃ¢y â€œÄ‘áº£o nhÃ¢n táº¡oâ€ táº¡i Biá»ƒn ÄÃ´ng, Trung Cá»™ng dá»‘t hay tÃ­nh toÃ¡n ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsO1CZFwpN7Hru4aGkZFAGouow9koIuBRxRN92c3ZPt0Q==', 'Khi láº­p cÃ¡c â€œÄ‘áº£o nhÃ¢n táº¡oâ€ Ä‘á»ƒ xÃ¢y dá»±ng cÄƒn cá»© quÃ¢n sá»±, háº£i Ä‘Äƒng, vÃ  phi trÆ°á»ng, Cá»™ng Sáº£n Trung Quá»‘c chá»‰ cÃ³ lá»£i náº¿u Ä‘Ã¡nh nhau vá»›i Viá»‡t Nam. VÃ¬ thá»© nháº¥t, vá» máº·...', 'https://www.youtube.com/watch?v=exorHh1Xkjs', '0', 1434778851),
(14, 1434779018, 'c5328be8', 'c04c2b0b51dcff0cd90fad125857b936', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=MkBTUMKh58s', '', '14069e95fc', 'Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c táº¿ hay Hung Ä‘á»“ Quá»‘c táº¿', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuck8tlo8QBB50v8B7KUiqailfo4pQYeA09jDUlM4pOlQ==', 'ChÆ°Æ¡ng trÃ¬nh &quot;Giá» Giáº£i áº¢o&quot; vá»›i Kinh táº¿ gia Nguyá»…n XuÃ¢n NghÄ©a, má»—i Thá»© Báº£y hÃ ng tuáº§n. Thá»±c hiá»‡n: Äinh Quang Anh ThÃ¡i Äá» tÃ i ká»³ nÃ y: Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c t...', 'https://www.youtube.com/watch?v=MkBTUMKh58s', '0', 1434779018),
(15, 1434786799, 'd78164f0', '45bfa6bc9d89cc61c4adf84da45a4cf7', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4&feature=youtu.be', 'be', '722917e34a', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4&feature=youtu.be', '0', 1434786799),
(16, 1434786958, '91ea721d', '0aa9e42bbe0e007ff0ba2483f6248ba3', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=Yec1SFizlgI', '', '4fba6ae33d', 'Schannel - So sÃ¡nh nhanh Bphone vs Galaxy S6 Edge : á»¦ng há»™ hÃ ng Viá»‡t hay mua hÃ ng ngoáº¡i ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtOfAip7Bmi1HLlr3fUzfFpEVhHVg7Ui73AuIirIo4jFg==', '- So sÃ¡nh nhanh BKAV Bphone Ä‘áº¹p hÆ¡n iPhone 6 Plus : Liá»‡u cÃ³ tin Ä‘Æ°á»£c khÃ´ng ? : https://youtu.be/hqs3NRzvna0 - ÄÃ¡nh giÃ¡ nhanh Bphone Ä‘áº§u tiÃªn táº¡i Viá»‡t Nam : Ä...', 'https://www.youtube.com/watch?v=Yec1SFizlgI', '0', 1434786958),
(17, 1434787103, '6cc7a741', 'c86707642971720859ca18fcd4d1583d', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4', '', 'e85ae37b31', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4', '0', 1434787103),
(18, 1434787529, 'fb425134', '13b889444d521784a151c24b38fd08f4', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=R79zGqZWQ8E', '', '09e42d8f44', 'Linkin Park - 08 - In The End (Live - MTV World Stage 2011) HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsQLJ+O+kIkGBSsOL0bF2avPRbb8RpUjGvyRLTPZ870xw==', '- LINKIN PARK: Live In Vasilyevsky Spuck (Moscow, Russia. June 2011) *Emitido por MTV ESPAÃ‘A el dia 6 de agosto del 2011 a las 00:15h', 'https://www.youtube.com/watch?v=R79zGqZWQ8E', '0', 1434787529),
(19, 1434788624, '5bc56f5b', '44d1e10453f10123a068cacd1dd19976', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=EZoBQB4sveA', '', '146eb91eb1', '[HÃ i VÃ¢n SÆ¡n - Báº£o LiÃªm] Má»™t duyÃªn hai ná»£ ba tÃ¬nh (Official)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobt9xoFg4n4yxmTQcV6V+8Ibd/qhg7N77E9f5aNOitV0tA==', 'HÃ i ká»‹ch: Má»™t duyÃªn hai ná»£ ba tÃ¬nh Danh hÃ i: VÃ¢n SÆ¡n - Báº£o LiÃªm - Báº£o VÃ¢n ÄÆ°á»£c phÃ¡t sÃ³ng trÃªn SCTV 1 ÄÄƒng kÃ½ kÃªnh Ä‘á»ƒ xem thÃªm nhiá»u hÃ i ká»‹ch', 'https://www.youtube.com/watch?v=EZoBQB4sveA', '0', 1434788624),
(20, 1434789171, 'f400a7ce', 'f77007857843ec3271fa7fba582b6061', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=BKsjE-QEc-w', '', '7391cb37d6', 'Song táº¥u hÃ i Báº£o Chung, VÃ¢n SÆ¡n, VÃ¢n SÆ¡n 48', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu+AaaDQe+ZzTf1FELCO/+bszUb7YjqT9t0tdLJxGZMJg==', 'https://www.facebook.com/luong.nghiemtuc', 'https://www.youtube.com/watch?v=BKsjE-QEc-w', '0', 1434789171),
(21, 1434789432, '24f4f66b', '6ba27838d4fd0223b21445694ce10bc4', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=KIy6QxcpxKo', '', 'a256edbf20', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobshB0Gx7GnPto+/M/VIfeAadx20jmkRKmzhzm0A5gWpXg==', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live, tÃ¬nh lá»¡ thanh hÃ , tÃ n tro thanh hÃ , thanh hÃ  hÃ¡t live', 'https://www.youtube.com/watch?v=KIy6QxcpxKo', '0', 1434789432),
(22, 1434987589, '6f23f0ee', '262f69c66954a3c32a604cbf31594244', 'https', NULL, 'vimeo.com', 'vimeo', 'com', '130731671', '', 'e4a0443c8f', 'Signature', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm3V/TxmUHwXfY9Nlj+zDE97tkHWUIQ3PbrR1lM3htVt0g==', 'Nothing is intact or permanent, everything is affected and connected&mdash;the history, the city and the rider. Just as the city left a mark on the rider, he leaves a&hellip;', 'https://vimeo.com/130731671', '0', 1434987589),
(23, 1434987690, '202fb000', '88de1fdd997e469c75286efc7c37bfaa', 'http', NULL, 'dailymotion.com', 'dailymotion', 'com', 'vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '', '55f8526b25', '', 'photos/raw/other/TzdxCHbuRsCMh4O+p6bjz1wMwxvRY/osJPBEb581hNk=', 'Má»i báº¡n Ä‘Ã³n xem video ca nháº¡c, cÃ¡c buá»•i hÃ²a nháº¡c, phá»ng váº¥n nghá»‡ sá»¹ thuá»™c nhiá»u thá»ƒ loáº¡i, pop, rock, hip-hop, country..., Ä‘áº¿n tá»« nhiá»u quá»‘c gia khÃ¡c nhau Viá»‡t Nam, HÃ n Quá»‘c, Má»¹, PhÃ¡p,....; trong Ä‘Ã³ Ä‘áº·c biá»‡t lÃ  cÃ¡c buá»•i biá»ƒu diá»…n truyá»n hÃ¬nh trá»±c tiáº¿p táº¡i Dailymotion.', 'http://www.dailymotion.com/vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '0', 1434987690),
(24, 1434987757, 'c3d2540e', '45ba2b5c41ee316d863a0895af82649b', 'http', NULL, 'dailymotion.com', 'dailymotion', 'com', 'video/x2tlokz_westlife-the-rose-with-lyrics_music', '', 'ae5c6bd1fa', 'Westlife - The Rose (With Lyrics)', 'photos/raw/other/4vwUJuLJY5QtNw0jVOrLbWUgdIjlv3fAJEpr7bdPcg3ZCd+En6P/nQ17SHBXpsQ8UZp6fPgmbAlA8fWgjnkJCQ==', 'Westlife - The Rose (With Lyrics)', 'http://www.dailymotion.com/video/x2tlokz_westlife-the-rose-with-lyrics_music', '0', 1434987757),
(25, 1436757984, 'fe7326ce', '453f1e155e28817570cf1c0303b72270', 'http', NULL, 'dailymotion.com', 'dailymotion', 'com', 'video/x2vdkl4_oto-nh%E1%BB%AFng-cach-ne-tranh-di%E1%BB%87n-tho%E1%BA%A1i_fun', '', '67c5213d38', 'OTO- Nhá»¯ng cÃ¡ch nÃ© trÃ¡nh Ä‘iá»‡n thoáº¡i', 'photos/raw/other/n+6D8pR67xh570YpjY83D+sgBfE8DsJG87gpAYI8CYnEOFf4SqDlXqecTqDbAglC51f6Qlu2+xcpKe6DiKrzVw==', 'NgÃ y nay Ä‘iá»‡n thoáº¡i trá»Ÿ thÃ nh má»™t â€œváº­t báº¥t ly thÃ¢nâ€ cá»§a nhiá»u ngÆ°á»i trong viá»‡c giá»¯ liÃªn láº¡c. Tuy nhiÃªn khÃ´ng pháº£i cuá»™c gá»i nÃ o cÅ©ng Ä‘á»u Ä‘Æ°á»£c Ä‘Ã³n nháº­n. Báº¡n cÃ³ bao giá» pháº£i trá»‘n Ä‘iá»‡n thoáº¡i cá»§a má»™t ai Ä‘Ã³ chÆ°a? HÃ£y xem clip trÃªn Ä‘á»ƒ náº¯m cÃ¡c chiÃªu trá»‘n Ä‘iá»‡n thoáº¡i hiá»‡u quáº£ nhÃ©... ----------------------------------------------------------------------------------------------------------- YANNEWS - KÃªnh giáº£i trÃ­ Ä‘áº·c sáº¯c dÃ nh cho giá»›i tráº» Viá»‡t  ÄÄƒng kÃ½ ngay Ä‘á»ƒ xem nhiá»u video hay: http://www.dailymotion.com/yannews   VÃ  Ä‘á»«ng quÃªn theo dÃµi Yan trÃªn: https://www.youtube.com/YanNewsTube  https://www.facebook.com/yantv https://www.facebook.com/yannews https://googleplus.com/yannews https://www.facebook.com/YANSchoolTV  LiÃªn há»‡: yannewstube@yan.vn', 'http://www.dailymotion.com/video/x2vdkl4_oto-nh%E1%BB%AFng-cach-ne-tranh-di%E1%BB%87n-tho%E1%BA%A1i_fun', '0', 1436757984),
(28, 1436761761, 'b9f965a0', '268f357a047cfd070b36d6fdec89ea04', 'http', NULL, 'nhaccuatui.com', 'nhaccuatui', 'com', 'bai-hat/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ', 'pk64vAfNGh', 'f2e238e3', 'Nghe nháº¡c MP3 má»i lÃºc má»i nÆ¡i táº¡i NhacCuaTui.Com', 'photos/raw/other/BjhSl630Dzlv2mANkhp1oGu+zbHDtceVtj4+EaF5lEAe4dcj3hHC9EzM1SLXHY3r3krV5KWpoNTcJnC9wuHRuQ==', 'Truy cáº­p NhacCuaTui.Com Ä‘á»ƒ nghe cÃ¡c bÃ i hÃ¡t HOT nháº¥t hiá»‡n nay, táº­n hÆ°á»Ÿng Ã¢m nháº¡c vá»›i hÃ ng triá»‡u bÃ i hÃ¡t cá»§a cÃ¡c ca sá»¹, nháº¡c sá»¹ trong vÃ  ngoÃ i nÆ°á»›c.', 'http://www.nhaccuatui.com/bai-hat/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ.html', '0', 1436761761),
(29, 1436761846, '8042d6bd', 'd6eeace6edf81647cf79b2dc49d874fe', 'http', NULL, 'nhaccuatui.com', 'nhaccuatui', 'com', 'video/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ', 'pk64vAfNGh', '8143293a', 'Tiáº¿n LÃªn Viá»‡t Nam Æ i - SÆ¡n TÃ¹ng (M-TP)', 'photos/raw/other/PeUqALBhdjXCOQtJZozv1n+s0Dbml47ajc4BTKOfwE0fjuV5DMZ29ETb7UiwzEvhFSQ7ybNMthXoyTbiQ+Ptb+V4P0qicHiZcW0WO68/SY2LOx3hrj1FgckP/jRKI6Fr', 'Video Tiáº¿n LÃªn Viá»‡t Nam Æ i cá»§a SÆ¡n TÃ¹ng (M-TP). Truy cáº­p ngay NhacCuaTui.Com Ä‘á»ƒ xem vÃ  táº£i video Tiáº¿n LÃªn Viá»‡t Nam Æ i vá»›i hÃ¬nh áº£nh Ä‘áº¹p, cháº¥t lÆ°á»£ng cao, pk64vAfNGhAwZ. NhacCuaTui.Com nghe nháº¡c má»i lÃºc má»i nÆ¡i', 'http://www.nhaccuatui.com/video/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ.html', '0', 1436761846),
(30, 1436762951, '0d4bfa0c', '2d1cacfc8f69fbda4ba559a412eb7c99', 'https', NULL, 'tinhte.vn', 'tinhte', 'vn', 'threads/mercedes-tiet-lo-nhung-tinh-nang-moi-tren-e-class-2017.2482586', '2482586', 'a5bdee03', 'Mercedes tiáº¿t lá»™ nhá»¯ng tÃ­nh nÄƒng má»›i trÃªn E-Class 2017', 'photos/raw/other/XL5LZ9SkRASzCKlsyZo/2GJjziI7g1yofO1/y041waw5dBzbh75U7iPVBbEZNc4KgcP9VTtMG7nxKdcgd25t3sTfZFj6Eyw97sK2UL6Y6ABVzNkb8moF+X9GwZkSpNhq', '[ATTACH]  CÃ²n khÃ¡ lÃ¢u ná»¯a thÃ¬ E-Class 2017 má»›i chÃ­nh thá»©c trÃ¬nh lÃ ng, nhÆ°ng Mercedes cÃ³ váº» Ä‘Ã£ nÃ´n nÃ³ng láº¯m rá»“i khi cho cÃ´ng bá»‘ nhá»¯ng cÃ´ng nghá»‡ hoÃ n...', 'https://www.tinhte.vn/threads/mercedes-tiet-lo-nhung-tinh-nang-moi-tren-e-class-2017.2482586/', '0', 1436762951),
(31, 1436763657, '2ab3908b', '5c7e15cea9d7a5e01dab96133d31dd7d', 'http', NULL, 'mp3.zing.vn', 'mp3', 'zing.vn', 'bai-hat/An-Nut-Nho-Tha-Giac-Mo-Son-Tung-M-TP/ZW7I776I.html', 'html', 'b76a8e20', 'áº¤n NÃºt Nhá»›â€¦Tháº£ Giáº¥c MÆ¡ - SÆ¡n TÃ¹ng M-TP | BÃ i hÃ¡t, lyrics', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaa7x2GqoLMvGYDeTCTl3nAT9kK16b8r6FRjCQoEqUvzamUM3eQD78e8olkpcNJGGQY7Ci5PGa5CXNsH/oQP6qTytR1p6N3TeIHrF+BKOffw1UnDIJANbYFpK5vZ5o+MWYQ=', 'áº¤n NÃºt Nhá»›â€¦Tháº£ Giáº¥c MÆ¡, SÆ¡n TÃ¹ng M-TP. Ehhh ohhh Sinh con ra bang cau hat ru quen thuoc Diu doi chan mong con lon khong. Táº£i download 320 nháº¡c chá» An Nut Nho Tha Giac Mo, Son Tung M TP', 'http://mp3.zing.vn/bai-hat/An-Nut-Nho-Tha-Giac-Mo-Son-Tung-M-TP/ZW7I776I.html', '0', 1436763657),
(32, 1436763671, 'c2e11670', 'e23d87e1a939622e8a9351c88e887435', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', '5352176b', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1436763671),
(33, 1436763867, '19d9ccd4', '9fde37b8a99bba5af157908dd7927419', 'http', NULL, 'mp3.zing.vn', 'mp3', 'zing.vn', 'bai-hat/Say-You-Do-Tien-Tien/ZW70EIUE.html', 'html', 'a1ba2891', 'Say You Do - TiÃªn TiÃªn | BÃ i hÃ¡t, lyrics', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaZtI7aF5kxFIZmOuxBLPnaw4eVczBG7XYZ2Ai/sLJQy7Y1ktAAwASiyJN/4wahHJZj6RCKAKEOtFHLdykaJcO+WtR1p6N3TeIHrF+BKOffw1UnDIJANbYFpK5vZ5o+MWYQ=', 'Say You Do, TiÃªn TiÃªn. Ta gap nhau 1 chieu thu thang 10  vi nu cuoi ay cho em nho mong tung ngay  Dem. Táº£i download 320 nháº¡c chá» Say You Do, Tien Tien', 'http://mp3.zing.vn/bai-hat/Say-You-Do-Tien-Tien/ZW70EIUE.html', '0', 1436763867),
(34, 1436764165, 'ac0b7521', '2e70b774598669b15b4b6852b7308a9a', 'http', NULL, 'mp3.zing.vn', 'mp3', 'zing.vn', 'video-clip/Anh-Khong-Sao-Dau-Chi-Dan/ZW6EEZCA.html', 'html', '5e6c4362', 'Anh KhÃ´ng Sao ÄÃ¢u - Chi DÃ¢n | Video Clip MV HD', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaZrtYsJUFRRhTraR+VmWJMvK/nmsp9XzQ/cydSMw7hVhck5hgwROapnlQZJLr1ai0PY9Ecz5yesuC0w/yjZMnzz4aV9BWYNNS6C3x4rP1DfebsLsRxxW2dJCoSG5PAK6AU=', 'MV Anh KhÃ´ng Sao ÄÃ¢u - Chi DÃ¢n cháº¥t lÆ°á»£ng cao HD 720 1080, Video clip báº£n Ä‘áº¹p nháº¥t cá»±c nÃ©t cÃ³ lyrics Anh Khong Sao Dau Chi Dan viet sub', 'http://mp3.zing.vn/video-clip/Anh-Khong-Sao-Dau-Chi-Dan/ZW6EEZCA.html', '0', 1436764165),
(39, 1437034002, 'cf5360c7', '0730a6c2338cbf67dee359748917bf55', 'https', NULL, 'twitter.com', 'twitter', 'com', 'nhaccuatui_com/status/621589704836820992', '', '9b94cbe4', 'NhacCuaTui Official on Twitter', 'photos/raw/other/INkHeJ5q8fWwZZI1eV7Fo0G6w3QWw8QG824XUJeNBcmUxoSoAppraQHuyI3xz0fderrs0K6AlP1GFWCEXDcvT7K1Q7JVuitRCILzbIRsju3oR+L0Jyn+ol5hxkXco847SwCPSOmyw5WbiJ0B9jpUNywVkazdtL0p59iMa/ihXUI=', 'â€œCháº¯c pháº£i hÃ©t vÃ o tai ngÆ°á»i ta má»›i biáº¿t &amp;gt;,&amp;lt; http://t.co/BpXRyNOLztâ€', 'https://twitter.com/nhaccuatui_com/status/621589704836820992', '0', 1437034002),
(40, 1437034082, '8d517ba0', 'cb2b025d3e2215934b292dc9b0eec960', 'https', NULL, 'twitter.com', 'twitter', 'com', 'nhaccuatui_com/status/621589704836820992', '', 'f1ffe498', 'NhacCuaTui Official on Twitter', 'photos/raw/other/INkHeJ5q8fWwZZI1eV7Fo0G6w3QWw8QG824XUJeNBcmUxoSoAppraQHuyI3xz0fderrs0K6AlP1GFWCEXDcvT7K1Q7JVuitRCILzbIRsju3oR+L0Jyn+ol5hxkXco847SwCPSOmyw5WbiJ0B9jpUNywVkazdtL0p59iMa/ihXUI=', 'â€œCháº¯c pháº£i hÃ©t vÃ o tai ngÆ°á»i ta má»›i biáº¿t &amp;gt;,&amp;lt; http://t.co/BpXRyNOLztâ€', 'https://twitter.com/nhaccuatui_com/status/621589704836820992', '0', 1437034082),
(41, 1437034213, '5ceaedd4', '0af10b44253048765e2421b2b8eed55f', 'https', NULL, 'pinterest.com', 'pinterest', 'com', 'pin/234961305536143153/', '', '53ef08a3', 'Panasonic&#39;s Lumix GX8 is a sleek and compact flagship camera', 'photos/raw/other/eMkT3J0UB7UvnyqMxfc8KqD50GaA91CwzCc5nxX/+pFd9PwT/0W2fEOZXtANZEsNiEu9bueBJ7GOKLdUdaR5u7a0SV+sWTO680ZoRcilEQahV29ZvbG7aZvDqZ+2jRMdAE1mozUhz+RXz7eqQz/vHhPwwX2GG/fPehevRWVUorY=', 'Only two months after introducing the G7 Micro Four Thirds camera, Panasonic is now expanding its compact line with the Lumix GX8. The new shooter, which is dus', 'https://www.pinterest.com/pin/234961305536143153/', '0', 1437034213),
(42, 1437034288, '5dcbfcab', '72fcf5750ea8b73083ee57d2ae8c809e', 'https', NULL, 'vine.co', 'vine', 'co', 'v/eiLAwvqddeg', '', '181158d1', 'Never change, Muni. Never change.', 'photos/raw/other/6J5kQnJbC1mG8LZlHmzQCU41Soy0WOCenmcRv9TCp6FGD4MTgAMS840QPSjLKXQ2Cl1wHK+33j5VXRsXHd1bbdXwfT/90ha/TLjVCorebv5GMMqIQtyglVWrPcoPQAA89eSsD3lCNKVCzD70bjUr4hzWQ2kYL/IclvJHEkxHwwgfWkuwjZKvGnerwcC+ai4FJaIzajiPATEeyWvVDGCUzw==', 'Watch MLB&#39;s Vine &#34;Never change, Muni. Never change.&#34; taken on 21 June 2015. It has 6466 likes. Vine is the best way to see and share life in motion. Create short, beautiful, looping videos in a simple and fun way for your friends and family to see.', 'https://vine.co/v/eiLAwvqddeg', '0', 1437034288),
(43, 1437038924, 'd835b2d8', '2abeca64817e78f0a830171e9823b3d2', 'https', NULL, 'instagram.com', 'instagram', 'com', 'p/5L8Ls0Q7Kl', '', '10e64e9f', 'ThiÃªn Kim on Instagram: â€œÄá»i mÃ¬nh cÃ´ Ä‘Æ¡n ráº¥t cÃ´ Ä‘Æ¡nðŸ˜­â€', 'photos/raw/other/fi3EbdTSVZ8BpaP9rRtEgsHcDE1xF0XIOR5xAi26ab0KIB/gDe/DxYRIDO9wt2RZ9wx2JW8dQQKhNYpkJ4hnC6OjqDB7GR5z6YDVBbGGdjDcKvqSOnGZ3VaqZ3uaytmNq1+jfTwSeP/vquy1p75L8DVJKMaM1cF39D0OD1FkA1M=', 'â€œÄá»i mÃ¬nh cÃ´ Ä‘Æ¡n ráº¥t cÃ´ Ä‘Æ¡nðŸ˜­â€', 'https://instagram.com/p/5L8Ls0Q7Kl', '0', 1437038924),
(44, 1437039388, '397cf8fc', '876ca08aa20ae519f08e0876e4d7631e', 'https', NULL, 'myspace.com', 'myspace', 'com', 'myspace/video/the-pedicab-interviews-chris-cole/109546118', '', '7600ceee', 'The Pedicab Interviews: Chris Cole Video by Myspace on Myspace', 'photos/raw/other/6+LuqxyzAWZNY1G2Y8V/IF96/yyLDakKoCSbodCz823zApc4NtJj8L8CPgSaacbTkebrrjA7Z0kF1MsPa8xRzVdXNmlKqfc4V8mf2mPF7RQ7E7BjTUiwzjcZPsmp1/KEbBKbjXMQNPXNf2M896UJ4TwrFP7YNv8VwNPLU12bmf8=', 'The Summer X Games are underway in Austin, and Myspace is hitching rides with the some of the best pro athletes and artists in town. First up: skateboarder and two-time X Games gold medalist Chris Cole talks all things &amp;#39;90s, from Janet Jackson to Teenage Mutant Ninja Turtles.', 'https://myspace.com/myspace/video/the-pedicab-interviews-chris-cole/109546118', '0', 1437039388),
(45, 1437040021, 'bf905552', '34a1251a4aea27c107207cc80cdf82d7', 'https', NULL, 'myspace.com', 'myspace', 'com', 'iamsebas/music/song/boyfriend-remix-87571429-97164009', '', '73f3e548', 'Boyfriend (Remix)', 'photos/raw/other/OLopoV2n/ONmmp77fSJfrBfRfZpulovCct/mDNMYUohN0Qzk3uJC6jH0y2gR192QX+NjZ0d83y4aRYCT03VvrvFqJ25Ws4IYrLfZGOGcboBWufv/SYcGvMtITiFuuDkNYOCANLqJ8DUjACFqyEyOsFT48Kdap3Iw1EGGaUvUcK4=', 'Boyfriend (Remix) by Sebastian: Listen to songs by Sebastian on Myspace, a place where people come to connect, discover, and share.', 'https://myspace.com/iamsebas/music/song/boyfriend-remix-87571429-97164009', '0', 1437040021),
(46, 1437041264, 'a2253bc1', '01711712709fc80cf075cf9c76ead5a4', 'https', NULL, 'vimeo.com', 'vimeo', 'com', '108846792', '', 'ff734a32', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041264),
(47, 1437041323, 'a5ef16d7', 'a893bb001e31484665da299657bb547e', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=Yd8UeUp7B60', '', '66d2006b', 'DON&amp;#39;T BE THAT GIRL AT THE GYM', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsFeEtQmpiyyHsPp+5XkUrwo64bSEceH6s4bXZchQHKMQ==', 'AS I STARTED CREATING SCENES FOR THIS SKIT I REALIZED IT WASN&amp;#39;T ALWAYS EXACTLY WHAT GIRLS WERE DOING BUT SOMETIMES WHAT HAPPENS AT GYMS THAT HAD TO BE MADE F...', 'https://www.youtube.com/watch?v=Yd8UeUp7B60', '0', 1437041323),
(48, 1437041337, 'a29f026e', 'da081bc6e1baaf75bea7a7302f07f33e', 'https', NULL, 'vimeo.com', 'vimeo', 'com', '108846792', '', '365ede98', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041337),
(49, 1437041343, 'c071685f', 'f517a3f37a71ba5247401b902a0bf761', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=Yd8UeUp7B60', '', '5d2d041e', 'DON&amp;#39;T BE THAT GIRL AT THE GYM', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsFeEtQmpiyyHsPp+5XkUrwo64bSEceH6s4bXZchQHKMQ==', 'AS I STARTED CREATING SCENES FOR THIS SKIT I REALIZED IT WASN&amp;#39;T ALWAYS EXACTLY WHAT GIRLS WERE DOING BUT SOMETIMES WHAT HAPPENS AT GYMS THAT HAD TO BE MADE F...', 'https://www.youtube.com/watch?v=Yd8UeUp7B60', '0', 1437041343),
(50, 1437041564, '5953fcd7', '2531bbc657a2b263dc13dce5f2ae62d8', 'https', NULL, 'vimeo.com', 'vimeo', 'com', '108846792', '', 'aa58fb2b', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041564),
(51, 1437293065, 'df5ce222', '774fe9f07ca91b07b5280798505ebc57', 'http', NULL, 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives', '', '41eefe0e', 'What we learn from insectsâ€™ kinky sex lives', 'photos/raw/other/Ch2XzQ9zHmxtd9BFz9YAHK2xppFEJIAHBtF1n5/ZcpUZOsxzuP8R3BFEoPfNGW0PQKEmh3X6ZHZnZAf5Vw8agcxvRrA9ghzhuI+onPFp5dfL26wZlZcUo2A+qHWH9ZP78DZDHIpwPlTmXiSZlYpPVtHC8gBoftq5/3P55Ht9rJxuof81tim+de/F8S3HQncr8odZ0Oq4TXRRINWz64mOd8G5H2DbI8m3EhLDU8LHUdrCk8v8LLem3/PvqcNSCppx', 'Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'http://www.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives', '0', 1437293065),
(55, 1437294167, 'd52b6da1', '7d780f72409dbf770d5073a3866a4b0f', 'https', NULL, 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', 'html', '055f252c', '', '', 'TED Talks Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'https://embed-ssl.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', '0', 1437294167),
(56, 1438156083, 'd26c37da', 'fdcc68781b55b51ca9e57911ab9a974e', 'http', NULL, 'nhaccuatui.com', 'nhaccuatui', 'com', 'video/hanh-phuc-chi-la-doi-long-khanh-phuong.KLmAL2UPckCMC', 'KLmAL2UPck', 'e1cbf217', 'Nghe nháº¡c MP3 má»i lÃºc má»i nÆ¡i táº¡i NhacCuaTui.Com', 'photos/raw/other/BjhSl630Dzlv2mANkhp1oGu+zbHDtceVtj4+EaF5lEAe4dcj3hHC9EzM1SLXHY3r3krV5KWpoNTcJnC9wuHRuQ==', 'Truy cáº­p NhacCuaTui.Com Ä‘á»ƒ nghe cÃ¡c bÃ i hÃ¡t HOT nháº¥t hiá»‡n nay, táº­n hÆ°á»Ÿng Ã¢m nháº¡c vá»›i hÃ ng triá»‡u bÃ i hÃ¡t cá»§a cÃ¡c ca sá»¹, nháº¡c sá»¹ trong vÃ  ngoÃ i nÆ°á»›c.', 'http://www.nhaccuatui.com/video/hanh-phuc-chi-la-doi-long-khanh-phuong.KLmAL2UPckCMC', '0', 1438156083),
(58, 1438156797, '22557490', '16259d782222d59c162ba673ae660589', 'https', NULL, 'flickr.com', 'flickr', 'com', 'photos/128541513@N03/19439705425/', '', 'bddaa4f8', 'Bangkok Junction', 'photos/raw/other/PT4xxTEM1RAcj0LzUxz9UJ0hvLwySRCdFfsh1T1Efbx2myxklYWpSOjINP4H6MMa+t/fkt4U3Uzvfh2zESkFHvJFJ+HNGpWUPSrwo5IjeSQfvzLhxfx+Pm0xr059Q3Fq', 'Went to Bangkok for the weekend. Experienced the lively night and its multilayered infrastructure.', 'https://www.flickr.com/photos/128541513@N03/19439705425/', '0', 1438156797),
(59, 1438158471, '5cc16bfa', 'fd9a67f705082c34494066babf6f9349', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=H3Sy5cAHFaI', '', 'a94fa6b5', 'Bicep Workout Mecca', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvRLUieo5I7MByOnbWAOSkkaAwZHAfCWKvCVqAP6rTSag==', 'First part of workout: https://youtu.be/ACPvts-R0gE Bicep Workout Barbell Curls: 4 x 8-10 Drop set each set to failure S: Alt. Curls: 4 x 10, 8, 8, 8 Hanging...', 'https://www.youtube.com/watch?v=H3Sy5cAHFaI', '0', 1438158471),
(60, 1438162262, '1e085e68', '1b51b51c1132e73e15a6a1486556183b', 'https', NULL, 'youtube.com', 'youtube', 'com', 'watch?v=vrnk0TARlOM', '', '3d454aa0', '[UP Version] Khi ChÃºng Ta GiÃ  (Pháº¡m Há»“ng PhÆ°á»›c - HÆ°Æ¡ng Giang Idol)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuXP+OFe2c8l/E8wt3T6t+MSrm22NC7T8aiF8EcAh9d5w==', '[UP Version] Khi ChÃºng Ta GiÃ  (Pháº¡m Há»“ng PhÆ°á»›c - HÆ°Æ¡ng Giang Idol) [UP Version] Khi ChÃºng Ta GiÃ  (Pháº¡m Há»“ng PhÆ°á»›c - HÆ°Æ¡ng Giang Idol)', 'https://www.youtube.com/watch?v=vrnk0TARlOM', '0', 1438162262),
(61, 1438164576, '3e8346e5', '660376e4ebc44ecd97e8951513466999', 'https', NULL, 'vid.me', 'vid', 'me', 'xKiI', '', '342356a1', 'Illegally Arresting Naked Women In Her Own Home', 'photos/raw/other/Cl+F63kdtCR1+/ScsNWnLzhsVu90KkpPHMfDuICsSNQJMudFEflqCgj9WA5YaKotrZGXM6y5vOqaCGnuMkFIpWze5V0hUJWvDxkE678Gnq5oNxw7nN2LwLyHiVtzXNai', 'Vidme is the simplest way to upload and share videos, no signup required.', 'https://vid.me/xKiI', '0', 1438164576),
(62, 1438164598, 'd65af736', 'eb8f105f71cdae16afb5043b4c0111e2', 'https', NULL, 'vid.me', 'vid', 'me', 'xKiI', '', '24fda81e', 'Illegally Arresting Naked Women In Her Own Home', 'photos/raw/other/Cl+F63kdtCR1+/ScsNWnLzhsVu90KkpPHMfDuICsSNQJMudFEflqCgj9WA5YaKotrZGXM6y5vOqaCGnuMkFIpWze5V0hUJWvDxkE678Gnq5oNxw7nN2LwLyHiVtzXNai', 'Vidme is the simplest way to upload and share videos, no signup required.', 'https://vid.me/xKiI', '0', 1438164598),
(63, 1438164634, '0a0a5d37', '0694688f5bebdf1bc467ecdec002d293', 'https', NULL, 'vid.me', 'vid', 'me', 'xKiI', '', 'b79b16f5', 'Illegally Arresting Naked Women In Her Own Home', 'photos/raw/other/Cl+F63kdtCR1+/ScsNWnLzhsVu90KkpPHMfDuICsSNQJMudFEflqCgj9WA5YaKotrZGXM6y5vOqaCGnuMkFIpWze5V0hUJWvDxkE678Gnq5oNxw7nN2LwLyHiVtzXNai', 'Vidme is the simplest way to upload and share videos, no signup required.', 'https://vid.me/xKiI', '0', 1438164634),
(64, 1438165632, '7471a4d2', 'e780e6d305c57a575226c3d70c7348bb', 'http', 'tv', 'zing.vn', 'zing', 'vn', 'video/Clip-Hai-Tong-Hop-Truong-Giang-Hai-Huoc-Tao-Tuyet/IWZB7OWZ.html', 'html', '0be256a3', 'Clip HÃ i Tá»•ng Há»£p - TrÆ°á»ng Giang HÃ i HÆ°á»›c Táº¡o Tuyáº¿t | Video Clip HD', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaYtIHvRjesfP0b6iAiOszxXfmBYsShiuXY003apxbtiSocS9y/pD05jMkCk6GvztLu3z7Lp/Ci8ESP4pgMkP02pgYF+eAJtmAHPxpRUdo1gZMXi1wlDAsVa5sPSwfiEqdc=', 'Xem Clip HÃ i Tá»•ng Há»£p - TrÆ°á»ng Giang HÃ i HÆ°á»›c Táº¡o Tuyáº¿t cháº¥t lÆ°á»£ng HD,  miá»…n phÃ­, download  HÃ i HÆ°á»›c Clip-Hai-Tong-Hop - Truong-Giang-Hai-Huoc-Tao-Tuyet vietsub.', 'http://tv.zing.vn/video/Clip-Hai-Tong-Hop-Truong-Giang-Hai-Huoc-Tao-Tuyet/IWZB7OWZ.html', '0', 1438165632),
(65, 1438191183, 'b5fa0e58', 'a3a0a92fc4cc025973ef518f4a34094c', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=iNS7QPLiQdU', '', '01883b17', 'KhÃ´ng NhÆ° Lá»i Anh Há»©a - SÆ¡n TÃ¹ng M-TP ft DeePink', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsnSIA/2J+caIcQjpCDigCYb27m09+ktRoDij+ero2SQA==', 'KhÃ´ng NhÆ° Lá»i Anh Há»©a : LÃ  1 bÃ i hÃ¡t khi SÆ¡n TÃ¹ng M-TP má»›i tham gia hoáº¡t Ä‘á»™ng Underground (nÄƒm 2012) â–º BLUE TV : https://www.facebook.com/bluetv04 â–º Song : K...', 'https://www.youtube.com/watch?v=iNS7QPLiQdU', '0', 1438191183),
(66, 1438402827, 'bc33edd7', '32538e07892293079bf86bebca10dab8', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=1ltYjHLSZyI', '', '091516e5', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtcshkNlZwPnIkDri4e/vP3sX60dGztQ5+pc84o8sTVeQ==', 'Sáº£n pháº©m Ä‘á»™c quyá»n cá»§a ITV. MÃ£ sá»‘: 14328', 'https://www.youtube.com/watch?v=1ltYjHLSZyI', '0', 1438402827),
(67, 1438418499, 'd677ac3c', '677929bf731e9da50435bfd6193e4482', 'http', 'www', 'whatsmyip.org', 'whatsmyip', 'org', 'http-compression-test/', '', '2343b787', '', '', 'HTTP Compression Tester lets you verify that web content is being compressed using gzip / deflate / mod_gzip / mod_deflate. Test your web site after enabling compression. ', 'http://www.whatsmyip.org/http-compression-test/', '0', 1438418499),
(68, 1438418540, 'c9938cf4', '99a6c761642c65e38f2d3f1a6cfb91a4', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=1ltYjHLSZyI', '', 'f7ffc713', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtcshkNlZwPnIkDri4e/vP3sX60dGztQ5+pc84o8sTVeQ==', 'Sáº£n pháº©m Ä‘á»™c quyá»n cá»§a ITV. MÃ£ sá»‘: 14328', 'https://www.youtube.com/watch?v=1ltYjHLSZyI', '0', 1438418540),
(69, 1438703682, '7e2f0fb0', '01925560faf72aa7abd0851817809d7f', 'https', '', 'myspace.com', 'myspace', 'com', 'themahoganysessions/video/charlie-cunningham-lights-off-mahogany-session/109794732', '', '7a9ea4de', 'Charlie Cunningham - Lights Off // Mahogany Session Video by The Mahogany Sessions on Myspace', 'photos/raw/other/1hJ2lzn1Ty8cb5Y1FBK9dZBUDH3bVGjO/ciResL0sVhK7vaVuVLWjlZskrCrawy5g5PhUuIvgL4/u75jFTEzpXYE5iOjpdD5yo/yEC8C/wFgrbjjNZFUyr6brtMWfg1O2cep0M/h847Qu+ykc4VUWwCnrPPFmjoqdJHDBtg+1Wo=', ' Watch it on Myspace, a place where people come to connect, discover, and share.', 'https://myspace.com/themahoganysessions/video/charlie-cunningham-lights-off-mahogany-session/109794732', '0', 1438703682);

-- --------------------------------------------------------

--
-- Table structure for table `sites_secure`
--

CREATE TABLE IF NOT EXISTS `sites_secure` (
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
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_views`
--

INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`) VALUES
(1, 1434700852, 1, 'user', '15'),
(2, 1434789828, 0, 'user', '15');

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
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;

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
(271, 1, 'f176598a', '167869eb2d88cc886c55d68f13e04cf3', 1439879742, 1439879742, 1439936735, 15, 'user', 15, 1, 2, 3, 'photos', 'Lj+Kodm7D+JxlwAP+eX2SYqPi0zrahfpeov0OI3gQn4QOq4k0HCnfdnDvV6JlAKFmEi8aoSW0sCUkOTUWVgkbw==', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=latin1;

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
(277, 1439879742, 271, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
(34, 160, 69);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 271, 12);

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
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=latin1;

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
(398, 'drive', 1, 1439935948, '0408130a', '', 'a2c6f9fe1e3dfc7ed0a757661b53ed6e', '4LdIIvMNMlgaJ4VnEsGQFqt49pea8ZRRQNE5t5lld3dC+qGXP2WDe3CAhxqC5V/+blyKbPduXfVlmfepW0bsHA==', NULL, 'image/jpeg', 'fe683411', 'nhung-gi-can-biet-ve-sundar-pichai-tan-ceo-goc-an-cua-google.jpg', 1439935948, 28052);

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'XhL9PyQiFH+zxLj8jQRCd0Ua1ue8bDgTVgG8A9keYM2FyKiptK1u3C0s8+Y+p1Fgw4lSbTihlLmjJXkwq/HQwr9MtEm38XkkBNNpq8JQi+oeqpHlDA+LUL1AifJyn8P+HlXihYy2WLHX9wqdsqA5fvrHcMyOW6d0X3nAOH3qOEcoxD4vyNjVqNHD21G4TUF6dHsJm24gjlksxO+dsVdJTU613YVrib8z6M8JH5XAhj2ojElCB8cO0l8bOCqXGf4na9B407tJViZ20sguMziwSZ6+QnKtdH0nsoHARpgVNrM=', '1', 'I want live at here', '', 'dasdasd sadf sadf asdf asdf ', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1440428620),
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

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
(58, 1440425731, 'id', '15', 1, '1064bb3d');

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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

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
(169, 15, 1440425731, 1440428620, '1064bb3d');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
(9, 1440428615, 13, 'user', 15, 246.54, 3.00, '', 'sdfsd fs ');

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
-- Indexes for table `sites_secure`
--
ALTER TABLE `sites_secure`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=730;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `sites_secure`
--
ALTER TABLE `sites_secure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=272;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=278;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=399;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=170;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
