-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2015 at 02:36 PM
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
(2, 1439522032, 1440762337, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
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
('Wr9c76KQEel,oU3IpbLRmrr2q2qet-9uCOc9BsL-EC5', 1440765413, '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', 'd05e60b261ff92942773a73073f1274c');

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

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1440744025, '0bf5c9cd', '19b9917634bf8eaa5fef95e23618d3bb', 'cb16b12f37ecf02722bf1a711a8c442a', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=krsc4xU10yI', '', '6121e6b6', 'CÃ²n Láº¡i GÃ¬ Sau CÆ¡n MÆ°a - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvmAZzmAj1eAqA0Qj0aENUw2oPh6HwwGFd3ZQng8NrIIg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=krsc4xU10yI', '', 'a18bd28a', 1440744025),
(2, 1440744035, '30c870b3', '25a8a7c1b315dd84fd3c048039382379', 'cc974f99dc1a197f137d65667dbf74e8', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=2sCf6ZoIbUE', '', 'd85a8d07', 'Äá»«ng BuÃ´ng Tay Anh - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu3VjTrmDFRKW/JdyUEl1MDUVRsgT1MtDlBVZd1cBdYDg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=2sCf6ZoIbUE', '', 'a18bd28a', 1440744035),
(3, 1440744072, 'ce1575f6', '3b71b5bb40a1d05ecb48d3ad007a9e1c', 'cb16b12f37ecf02722bf1a711a8c442a', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=krsc4xU10yI', '', 'a66edc85', 'CÃ²n Láº¡i GÃ¬ Sau CÆ¡n MÆ°a - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvmAZzmAj1eAqA0Qj0aENUw2oPh6HwwGFd3ZQng8NrIIg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=krsc4xU10yI', '', 'a18bd28a', 1440744072),
(4, 1440744200, 'f02cbd66', '41fb99e65386885a3bdd4e789adeac3e', 'cb16b12f37ecf02722bf1a711a8c442a', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=krsc4xU10yI', '', 'efb965d3', 'CÃ²n Láº¡i GÃ¬ Sau CÆ¡n MÆ°a - Há»“ Quang Hiáº¿u [Official]', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvmAZzmAj1eAqA0Qj0aENUw2oPh6HwwGFd3ZQng8NrIIg==', 'POPS Music - KÃªnh Ã¢m nháº¡c trá»±c tuyáº¿n hÃ ng Ä‘áº§u Viá»‡t Nam. Follow POPS Music: â™« Subscribe: https://www.youtube.com/user/POPSVIETNAM?sub_confirmation=1 â™« Website...', 'https://www.youtube.com/watch?v=krsc4xU10yI', '', 'a18bd28a', 1440744200),
(12, 1440748424, 'd5b5906b', 'a79c2601f2dbdba6f8e05ee001d0eeae', 'd6c36664a7f662aa011e041d32251c9f', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=EjO2rwdxPtA', '', '81d6a963', 'THVL | Tháº¿ giá»›i cá»• tÃ­ch - Táº­p 12: Ä‚n kháº¿ tráº£ vÃ ng', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobt9XEkVZ52FYadTrjIXb/VCLMHcIPhLQ7UFnoizZk6wqA==', 'Xem trá»n bá»™: http://goo.gl/pfxoCw ChÆ°Æ¡ng trÃ¬nh Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 20h chá»§ nháº­t hÃ ng tuáº§n trÃªn THVL1', 'https://www.youtube.com/watch?v=EjO2rwdxPtA', '', 'a18bd28a', 1440748424),
(13, 1440748479, 'c0049383', '7603859cb58f519a1e00b4c5cd013422', '315dc109d528465f1435ff85d3617baa', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=geOiVEHA568&list=PLrBAQg86hGY_LopkHb7QymuWZSPp30IfJ&index=13', '', '5ba35745', 'THVL | Tháº¿ giá»›i cá»• tÃ­ch - Táº­p 13: NgÆ°á»i hÃ³a dáº¿', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuFDqpcB3UzfTIO2ejUmxoWBSFMnP/fmOzamVk5wgjosw==', 'Xem trá»n bá»™: http://goo.gl/pfxoCw ChÆ°Æ¡ng trÃ¬nh Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 20h chá»§ nháº­t hÃ ng tuáº§n trÃªn THVL1', 'https://www.youtube.com/watch?v=geOiVEHA568&list=PLrBAQg86hGY_LopkHb7QymuWZSPp30IfJ&index=13', '', 'a18bd28a', 1440748479),
(18, 1440748801, 'ad6596bb', 'f726c0fbf01b229bbba5b5c7cde595d6', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', '29566cab', '', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net/', '841f86310ce677cb2aa79f985a06bee2', '', 1440748801),
(21, 1440749576, '9a60f893', 'd03de20e051a63a4c23b5c0a8354b3bb', '0271bb908732bd9a491e378b999d142d', '', '', 'vnexpress.net', 'vnexpress', 'net', '', '', '75250592', 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'vnexpress.net', '8d8a632cc4e5a523fada15b3d22f2ff0', '', 1440749576),
(22, 1440749679, 'cd234acc', 'f287e066c4253bca4c76c82a782a8830', '6d4f6f753c5bf4874c4186eba890edb8', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=2MUfa5APRIs', '', '3e14cfbc', 'THVL | Danh hÃ i Ä‘áº¥t Viá»‡t - Táº­p 11: Sáº¯c Ä‘áº¹p - Há»“ Viá»‡t Trung, Puka, Háº£i Triá»u - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuZ5vEnaIMSTxPPSZ12wzZhyDRvyP9R5HaCiQSs9BtOfQ==', 'Danh hÃ i Ä‘áº¥t Viá»‡t Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 21h00 thá»© tÆ° hÃ ng tuáº§n trÃªn kÃªnh THVL1 Xem trá»n bá»™: https://www.youtube.com/playlist?list=PLrBAQg86hGY9wyLKgFTS3p7Dj1Mya...', 'https://www.youtube.com/watch?v=2MUfa5APRIs', '', 'a18bd28a', 1440749679),
(23, 1440749729, 'e8226814', '5d47a4f3377f4cfbcd964b643ec99433', 'b3996f2144f49f66b6c4b075e3230490', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=o0szlNXmiho', '', '11a84ed5', 'THVL | Danh hÃ i Ä‘áº¥t Viá»‡t - Táº­p 14: Em lÃ  cá»§a anh - Há»“ Quang Hiáº¿u, Há»“ Viá»‡t Trung, Puka, HÃ  Triá»u - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvMMSsXLw+AAHFkpPB8RxCqlnYSomHIyI5F1JPa+XnDTQ==', 'Danh hÃ i Ä‘áº¥t Viá»‡t Ä‘Æ°á»£c phÃ¡t sÃ³ng lÃºc 21h00 thá»© tÆ° hÃ ng tuáº§n trÃªn kÃªnh THVL1 Xem trá»n bá»™: https://www.youtube.com/playlist?list=PLrBAQg86hGY9wyLKgFTS3p7Dj1Mya...', 'https://www.youtube.com/watch?v=o0szlNXmiho', '2c24db0c2d14164fbe63f00a8cb5ff60', 'a18bd28a', 1440749729),
(24, 1440750221, 'a07a6502', '31e53d437571751f1e645b6389eb86b3', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '799c4317', 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '7036ecbcd4cce4edd403a1a69f7efbcd', '9507cafa69bf7ec73eccfea640d9aeba', 1440750221),
(25, 1440751035, '9eb9c43a', '35ae7f15dced536673488e1dcbe23bc5', 'bffa11d0606d824a3bccd4a45574ef77', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=icebBHQitHA', '', 'dc35fbd6', 'Xin Lá»—i NgÆ°á»i Anh YÃªu - ChÃ¢u Kháº£i Phong [Video Lyric + Kara] - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtYZPx1iASOWjSPAyUS6+c1E+febZO0C/vj6p/BL+7yIw==', 'â˜ž Song: Xin Lá»—i NgÆ°á»i Anh YÃªu â˜ž Singer: ChÃ¢u Kháº£i Phong â˜ž Video Editor: Bach Nx â˜ž Channel: https://goo.gl/IOllDZ â˜ž Facebook : https://goo.gl/TxLmMU â˜ž Nháº¥n Li...', 'https://www.youtube.com/watch?v=icebBHQitHA', '', 'a18bd28a', 1440751035);

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
  `guy.id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(161, 1, '1b450d6c', '2e80e57281a12f7016cee3c77a8daf7f', 1438852013, 1438852013, 0, 0, 'user', 15, 4, 2, 3, 'status', 'tOF/+bShXi/JrtolWjK7JAYee6cioB2c7wd1UvYJo/lusiO6kdgB9uUWnh123M2wZWFzVRkAzpt+iSWeG7tp0gAL1pPRAl0svLVNA4328YP6DFdU/2mz9We6BYE4ZIZe32EVt1MMvr0v/qyEVT31eU6O3zpGILE/KbFvbMS1jYpGM3AmbNhlSa76WFUJgI0eMtlgbLw9Bws7/x6G5x8ms+6/IusIy3viMcHptPs9J1T7mQO74XWz32DEUU2rfUArPJY3/hHwuKtkSmFnH63xzsM18JY6Ur+UunBUoztfnAP2ra3c6BekOkk3cZa/GRqFgJPt0+mLHhA4gkeT95Emn1dpGW0CXpAf9qoDpPkhIzcexviz90WLrS89cCB/gEKUGha/yjo77O7meecPXPSbBAISWj+fm7NFis7xI6HzywqTziDZdQRh7l7yJYo3NZIP3JvxxKCe5gQ7po3Vk2tHjDIaZOyBEbLTxEwFR/ZSusfQ0W3OmloO5EJmMGx42CdoZdRnNMN2LUVa3uzbAtlUqf/eJ/Dj5dqvZHEGQN0mPsMS/3PKcb4jpB24x3wMdJMKEu9NSRM7QKYGGc4MXGSwq5ZYIYhSRdy3Ug7byFLTrz8fSNuAAY06E7HMj1M+GSS3mGO8MygmE6P71Q45lpZqiHWhR49m0BzulpFdDnPIdFTNpwBa/BXumrrujUfPe9ENVhKniIkcskughkKD09G2KXj6QVrhCQnSMo8GveC7AeL0Uuabmx05u1m1ZUG13vyMwOhtOKvPNt/LWcPUQkxbxFBSl3YZpjniHMSXjS72bS37+06Yb8Gkw4/oIOXR1YtwSiZbA5NulSI4rTu1KqcyzCm9bFx3BOp4LqNITrX1qklLPWv67B5cEMZ5P54GjKqhkDpvezKmTuUkXYq7YchqprM3FQCqfVLnuIRzXv1jlLy8iw5fYMjgOdFtkyS7HDhLnBJs3QD/Ys3xiYsKrM26no34YCsER3jnCApxAKj6OaaIvrE584dATQGSJsUOsoQRUwZmRU4FjGaYFuA6hYUuf/7LUoXTbuCcBFNLnE/WcLpzayO01a4nCeI+Eat+3AV9XoL35jbd1VnThRFTKJmrTNgvhAxU3EVtpZuY8pimSIxmd+EZbZsJ2aCsNPRGAlHQ6FsqoAff/7Y9k1eryMZVUsGCeg3ozaZ6T6e/zKkjZ7DY/E6rkWtdstTDQGiI2If1FgvS0LoAp/GznyBOYB4qCouKNqAqQJ0uB7AUC2/bu1iIeOrPAhHFF6HlwV+xXgfsF6pScvY/VouWYO2ecp32f4EAohGWZRxmPvMf/ExZi1koF75LHycVLsfbPCAdIokEU/1hztrQ6O8vYy3JkcA2ybKOlbNY4KeCNeO1CdGBfbDqphqGnDYFO5OL4YZJGsY9nl9yiZ0J3NcposTxcfWoVCxTBVXBbuxzlXTqn/kKygsmr16MgmsXOCGXg2Nd+AjH36U6MA2zE8zqAoOdCagvEuLqBVvuekq0F39TeLtockK6Gln+iImKK8g2GBOSNb4Jm4bYc9IoishsLjBsvySqygP8Yrl0opAGVvZ9ZwmKXFOQx2XswyeprLjhojo2q7Ggj6h6W9wC+BvkPdBi1AxWI/n+pmNcAMNm/gWIfVH5gEN/E7zmrLytM4izrETBaCefd9yyC144bf5JYrYrvC3J1sMxyR785S25vu5ePvMKYcAbYQTkpHPtpQU1l9U8F0Nz1A4XLfHEB1rbJLKmgjjqNuqFWquL78xQMnayldRmFHr9E7FGB3zEYDQhzBX9fKoxpdHMkIN0ADptKXR42hrAusDNmQNvfJjnZUYh4WSk8kHB58ZzoIwSwkRPILQt1k7B9ZuWoEz47wXUHlDGF6naNrPEEmaBirE9rVfpeZIi6pZZlYracGpHrrw+9udmiApECBR/fDZZatdROtwGoYwVmK2IBKllb7YxpIeVDiXT0/NzbRBzktG0zHE32YUPZ/ZlMRWGVDa6/EEd0vAbNLSOBRQFxYfeJjbp1XhKk8HP3YP3NFTCuDvGMhXKZf/jU8lrP4qWbXiv3TOU+Ycrty9P/GcVqYDR8o1NZjVJ3tBHOowXCEP3BKx/4JZfiI1DmdrVuNPIyC8tnzT9X2E6HrdcPeFV/nnPrfhfgHVQUppGMRqauN/irGtmpAFo/5uc5sfxCEo9kASgJGdge1v+PhpHQ1Sg+drus7D2NbiGRaxdnGF+1Hmz6eRrkMkqh2HbkoltTPlScgKHIkYs1aNYPO7sDJf3UT0Xqy6XKxBAroxc7c+Z0CPDJEFVk57ONZOiMGhxIMBeMbKEp1qWldmVVvPtN/uKBkPPHkBt8DywBuhO4Z77eqgvAbM4UrtiHVbd1m+UtKU21Zu90K3N61AcRt9whSgNYxeJsb7q/r9G8bpayABjbXHYKkeC1/xwsb2vvkmtNPq7mswmHz18+U9NsqGAoPrJYrpNUBwNcn3GlBQRVMYiBTY2evZTG9ZlZyHqVHukh7pMouiAvI0UBs+e96aorLH27NgT/MgGrN6euDyIELItw4WxpImvfbjona/2YMBeDZX7/Cb6J06f24oCIw4mN3Vbu8QcBGn+BzI9IrSZnkmC7vLv2xP+bkLUXposUqXyJsfAPhq5c6gQRTrKnxHbvKjB2kVDavrvdiuRrQ0bPVsjpILdRuoNsyPvBZLSgup7DQqU28e7N4ZarBG+DR5FZxRRyxpNdD5DmkHkb7QaCANKJ5+L4gcPQmoZTodAaiKp4rZOOmMyLRXHHdLpQ1loroOhYOvdzo9F+AY89L6QeQQuoK45YgzWP+hpkcNerfygLRWj0tvMhfegtzvmsfZprUYh3fY6coHh/a2J2w1ahN4ajucW9op3MczVR0WjZb8zFUfioZmVC+7rCfQBh+1HU+CYsd5x29QsS7MC3mwNlnLUrtjqvMP4Z/BnxW9I9m28eW8bR6R0VhGAwrVFrD67bgyrDmbaAcB/VjSj93BTuRPPmDB0wYeYsOXcAToDQFJ9dSE2ZITrtsl2rB8av2g78+RSaRnT7+XnvMixOM4nLEicxWjssdZkC5KnbZs8atmNrXYaDgX5V1aRvXkUqM/QOynbjk7V6DDBX6h+XxLKdfoiuIHLtCfznBvzoi6W/o8qeSjuJ4gPnwul64rBLJP+WbGBvJ/DKmQC8+6tYDOw4TrSuzEuuiYVwUN0EwQR2g9f', 0, 0, 0, 0, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=latin1;

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'XhL9PyQiFH+zxLj8jQRCd0Ua1ue8bDgTVgG8A9keYM2FyKiptK1u3C0s8+Y+p1Fgw4lSbTihlLmjJXkwq/HQwr9MtEm38XkkBNNpq8JQi+oeqpHlDA+LUL1AifJyn8P+HlXihYy2WLHX9wqdsqA5fvrHcMyOW6d0X3nAOH3qOEcoxD4vyNjVqNHD21G4TUF6dHsJm24gjlksxO+dsVdJTU613YVrib8z6M8JH5XAhj2ojElCB8cO0l8bOCqXGf4na9B407tJViZ20sguMziwSZ6+QnKtdH0nsoHARpgVNrM=', '1', 'I want live at here', '', 'dasdasd sadf sadf asdf asdf ', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1440765415),
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

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
(71, 1440734268, 'id', '15', 1, '1064bb3d');

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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;

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
(191, 15, 1440758654, 1440765415, '1064bb3d');

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
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=417;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=192;
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
