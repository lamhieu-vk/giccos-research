-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2015 at 06:45 PM
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
-- Table structure for table `analysis_faces`
--

CREATE TABLE IF NOT EXISTS `analysis_faces` (
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
  `emotion.oe.text` varchar(20) NOT NULL,
  `emotion.oe.value` char(6) NOT NULL,
  `emotion.to.text` varchar(20) NOT NULL,
  `emotion.to.value` char(6) NOT NULL,
  `emotion.te.text` varchar(20) NOT NULL,
  `emotion.te.value` char(6) NOT NULL,
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(8, 1431790466, 1431790466, '2c1c6d60', '6c2c8ed3', '073ca2a2b839a15fd65a9e146150b38b', 'd77e899e', 'b543367d', '1', '395.6', '221', '417.8', '221.9', '406.2', '233.5', '396.5', '242.3', '396.5', '242.3', '413.9', '243.1', '413.9', '243.1', '2.18', '6.53', '-6.23', 'asian', '0.99', '0.37', '0', 'confused', '0.01', '', '0', '', '0', '16.38', '0.88', '0', '0', '0', '0.05', '0.9871', '0'),
(9, 1431790472, 1431790472, '796b7f61', '33a0ccae', '073ca2a2b839a15fd65a9e146150b38b', '8995d578', 'd226272f', '1', '319.7', '232.4', '342.7', '232.7', '334.8', '246.4', '319.3', '254.8', '319.3', '254.8', '339', '254.5', '339', '254.5', '-1.04', '34.65', '-3.77', 'asian', '0.91', '0.51', '0.1', 'calm', '0', '', '0', '', '0', '25.46', '0.99', '0', '0.01', '0', '0.99', '0.5190', '0'),
(10, 1431790477, 1431790477, 'a55d009d', '38e8e714', '073ca2a2b839a15fd65a9e146150b38b', '5bf0774c', 'f11f7d8e', '1', '493.3', '225.7', '515.2', '228', '504.9', '239.1', '492.9', '247.5', '492.9', '247.5', '512.2', '248.8', '512.2', '248.8', '6.09', '9.87', '-1.49', 'asian', '0.97', '0.29', '0.1', 'sad', '0.02', '', '0', '', '0', '22', '0.8', '0', '0', '0.02', '0.34', '0.9027', '0'),
(11, 1431790482, 1431790482, '08ce1790', '9e08409e', '073ca2a2b839a15fd65a9e146150b38b', 'fd92b7d8', '6168593e', '1', '209.7', '238.1', '234.9', '237.2', '227.4', '250.9', '214.7', '264.2', '214.7', '264.2', '235.1', '263', '235.1', '263', '-3.37', '17', '-3.43', 'asian', '0.82', '0.47', '0.1', 'calm', '0.02', '', '0', '', '0', '22.02', '0.06', '0', '0.01', '0', '0.02', '0.9823', '0'),
(12, 1431790486, 1431790486, '39e9518d', '0618ac42', '073ca2a2b839a15fd65a9e146150b38b', 'e4038007', '53f99e7b', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0'),
(13, 1431790759, 1431790759, '71b64d12', 'a20a372b', '073ca2a2b839a15fd65a9e146150b38b', '249761a7', 'fc149565', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0'),
(14, 1434286394, 1434286394, '9a0112fc', '560d572e', '073ca2a2b839a15fd65a9e146150b38b', 'a9eccca7', 'f38c6391', '1', '162.7', '379.5', '227.3', '370.1', '207.8', '415.1', '175.7', '440.9', '175.7', '440.9', '225.5', '436', '225.5', '436', '-10.62', '18.33', '-11.88', 'asian', '0.99', '0.34', '1', 'confused', '0.02', '', '0', '', '0', '18.1', '0.72', '0', '0', '0', '0.1', '0.8803', '0'),
(15, 1434286398, 1434286398, '79e1e1b7', 'b56b7d41', '073ca2a2b839a15fd65a9e146150b38b', 'd2a4f2e2', '38309e84', '1', '267.1', '375.8', '322.3', '374.8', '280.4', '414.8', '281', '434.5', '281', '434.5', '328.1', '432', '328.1', '432', '0.62', '-56.27', '-15.39', 'asian', '0.96', '0.32', '0.6', 'surprised', '0.11', '', '0', '', '0', '23.92', '0.9', '0.05', '0', '0', '0', '0.9964', '0'),
(16, 1434286401, 1434286401, '58a43413', '3f729a6c', '073ca2a2b839a15fd65a9e146150b38b', '12cdd749', 'dfa6d234', '1', '433.2', '318.5', '543.6', '307.3', '463.8', '383', '450', '439.4', '450', '439.4', '523.4', '440.4', '523.4', '440.4', '-5.4', '-24.43', '-6.98', 'asian', '0.98', '0.49', '2', 'surprised', '0.02', '', '0', '', '0', '16.57', '0.52', '0', '0', '0', '0', '0.8451', '0.05'),
(17, 1434548412, 1434548412, '97c94437', 'f85038f8', '073ca2a2b839a15fd65a9e146150b38b', 'd4f20a6d', '7c912c5f', '1', '271.4', '271.2', '386.6', '266.5', '310.2', '342', '297.5', '382.1', '297.5', '382.1', '391.2', '379.6', '391.2', '379.6', '-1.55', '-29.91', '-8.69', 'asian', '0.98', '0.46', '0.7', 'confused', '0.02', '', '0', '', '0', '19.23', '0.99', '0', '0', '0', '0.02', '0.9364', '0'),
(18, 1436306436, 1436306436, 'aa0443b1', '1afc6b15', '073ca2a2b839a15fd65a9e146150b38b', '8e3b2ad4', '488f3eaf', '1', '246.2', '200', '350.9', '182.3', '289.3', '256.3', '278.6', '306.3', '278.6', '306.3', '357.1', '297.8', '357.1', '297.8', '-9.3', '-23.06', '-6.26', 'asian', '1', '0.41', '1.3', 'angry', '0', '', '0', '', '0', '21.07', '0.99', '0', '0', '0', '0.04', '0.6632', '0'),
(19, 1436408161, 1436408161, 'ffe84acd', '8d26a0de', '073ca2a2b839a15fd65a9e146150b38b', '1a693274', 'c5c2d204', '1', '105.1', '60.4', '190.9', '69.7', '160.9', '125.3', '115.2', '155.3', '115.2', '155.3', '166', '155.7', '166', '155.7', '5.67', '17.87', '-15.01', 'asian', '0.98', '0.48', '1', 'calm', '0.08', '', '0', '', '0', '17.5', '0.75', '0', '0', '0', '0', '0.3962', '0'),
(20, 1436408179, 1436408179, 'e44f802f', '31930fb0', '073ca2a2b839a15fd65a9e146150b38b', 'd7c0cb1f', '2a8d617d', '1', '311', '125.4', '362.7', '117.9', '351.7', '149.9', '320.1', '180.1', '320.1', '180.1', '368.8', '171.7', '368.8', '171.7', '-10.42', '21.79', '-1.68', 'asian', '1', '0.56', '0.5', 'calm', '0.01', '', '0', '', '0', '25.2', '1', '0', '0', '0.04', '0.48', '0.9527', '0'),
(21, 1436408183, 1436408183, 'c408fb27', '3970f17c', '073ca2a2b839a15fd65a9e146150b38b', 'c068a13e', '1236e3ff', '1', '119', '228.3', '201.6', '254.4', '183.3', '302.9', '88.7', '341.5', '88.7', '341.5', '177.1', '360.3', '177.1', '360.3', '14.74', '53.15', '4.14', 'asian', '0.97', '0.54', '1.7', 'sad', '0.04', '', '0', '', '0', '28.89', '0.79', '0', '0', '0', '0.08', '0.8107', '0'),
(22, 1436408188, 1436408188, 'b1d3d904', 'ebd2a7b7', '073ca2a2b839a15fd65a9e146150b38b', '23733616', '4adb7f74', '0.97', '620', '214.1', '678.2', '231.4', '633', '249.9', '601.7', '271.8', '601.7', '271.8', '657.6', '289.4', '657.6', '289.4', '18.9', '-8.17', '-1.21', 'white', '0.73', '0.54', '0.9', 'calm', '0.03', '', '0', '', '0', '22.01', '1', '1', '0.7', '1', '0', '0.3845', '0'),
(23, 1438420782, 1438420782, 'accab2c9', 'a052b93f', '073ca2a2b839a15fd65a9e146150b38b', '681f8bac', 'ba5185f9', '1', '594.9', '92.3', '612.3', '91.7', '601.2', '101.9', '594.4', '112.3', '594.4', '112.3', '607.2', '111.5', '607.2', '111.5', '-2.11', '-3.76', '0.71', 'asian', '0.98', '0.61', '0', 'surprised', '0.04', '', '0', '', '0', '21.4', '0.95', '0', '0', '0', '0.01', '0.4675', '0'),
(24, 1438420786, 1438420786, '8fcfbde1', '97fe2882', '073ca2a2b839a15fd65a9e146150b38b', '8586fdd3', '0a49ccab', '1', '192.7', '150.8', '205.9', '148.2', '196.4', '155.8', '195.5', '163.6', '195.5', '163.6', '206.8', '161.3', '206.8', '161.3', '-11.95', '-33.94', '4.43', 'asian', '0.88', '0.59', '0', 'surprised', '0.01', '', '0', '', '0', '41.98', '1', '0', '0', '0.01', '0', '0.0818', '0'),
(25, 1438420791, 1438420791, 'd2e3ee4e', '91826a27', '073ca2a2b839a15fd65a9e146150b38b', '0e40d38f', '128de2a8', '1', '125.8', '156.3', '138.2', '159.6', '127.1', '164.1', '122.2', '169.9', '122.2', '169.9', '132.9', '172.1', '132.9', '172.1', '16.34', '-23.15', '5.74', 'indian', '0.17', '0.53', '0', 'sad', '0.03', '', '0', '', '0', '32.49', '0.76', '0', '0', '0', '0.01', '0.6577', '0.86'),
(26, 1438420795, 1438420795, '0062e0a0', '48b66806', '073ca2a2b839a15fd65a9e146150b38b', '8689ae88', 'e89e7cc2', '1', '258', '152.6', '272.2', '148.2', '265.6', '156.7', '263.1', '166.5', '263.1', '166.5', '276.3', '162.4', '276.3', '162.4', '-18.5', '-14.11', '11.19', 'asian', '0.95', '0.51', '0.1', 'angry', '0', '', '0', '', '0', '15.67', '0.99', '0', '0', '0.28', '0.13', '0.1492', '0'),
(27, 1438420800, 1438420800, '7e469141', 'de3072f2', '073ca2a2b839a15fd65a9e146150b38b', '772a7cf1', '159f2fef', '1', '348.9', '127.1', '368.2', '124.9', '355.5', '133.7', '352.6', '145.6', '352.6', '145.6', '366.4', '144.2', '366.4', '144.2', '-6.88', '-21.42', '6.91', 'asian', '0.87', '0.54', '0.1', 'sad', '0.06', '', '0', '', '0', '27.64', '0.12', '0', '0', '0', '0', '0.7844', '1'),
(28, 1438420804, 1438420804, 'be744a5d', '28ff57e0', '073ca2a2b839a15fd65a9e146150b38b', 'd7788c66', '', '1', '454.2', '110.2', '472', '110.7', '460.9', '119.8', '458', '131.3', '458', '131.3', '469.8', '130.1', '469.8', '130.1', '1.93', '-19.37', '-1.88', 'asian', '0.68', '0.38', '0.1', 'confused', '0.03', '', '0', '', '0', '15.33', '0.47', '0.37', '0', '0.57', '0', '0.2333', '0.03');

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
(5, 1, 17, 16),
(6, 1, 16, 17);

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
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=latin1;

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
(709, 'en', 'comment_content_is_empty', 'comment content is empty', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAAEAAADd8AEBAQEBAQICAgICAgMDAwMDAwQEBAQEBAUFBQUFBQUGBgYGBgYHBwcHBwcICAgICAgJCQkJCQkJCgoKCgoKCwsLCwsLDAwMDAwMDQ0NDQ0NDQ4ODg4ODg8PDw8PDw////////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQF8yIAACAAAA3f7p4nWgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAJIOyJDVMQAAIBVMYOQnZ+/mksAAKFDb7BILCcCAURNvwGB5CAoCynsgGgeKDQPE34RD3vRE3FEl7IDgUGg0DwyX0IR70Te4Fz34RKkUT+EStERPhBc+4RPR3/3tBc+4Sv3f9ERH9OXsgG4vaJu8C59x73Aufxy7w73//f+72QLn2lSWfAue//uif/o96bufAdi44aD48/zkuHyg2JBGJDIY1Y7Hq9XrFzrHjSpPl4cc1tY+89DobHGS2DM6HwR4MMxFFImgyCh5D9CD/40LEMTdbut5fmJICowDQi5cT1SUHAVjEi5FzAiRBDPSyoISEyMqMsJwqvs3iAAhccgXweoWRPaCDettqhmh2EVGmMwTCZOIO7WTTq1+uSgaoJIvlwcsNXjJgFIOAPkC6swZO1c0QLn77XUFv4xQ1YXSAD8OYJQHe5oUxmxlAbc6C0DjLVUmg1v9fioizA+YPoLLIeKEEACICFx0CVCwj2JzFfDlw1QQEZOifsh0FrTeayrzJNh5w/QoHwHdfs1iUK0qOIqyIAY7SvEnQy6VxVP/jQsQXKyPyvBfYkAEltKcl6kv2puC1xFYFUpxlgi4Bfnh0E2RRRdIqVzRA2IgdMTAZQ0Ni2M6PReIoLWPk6Vy6LjN0ETLWb2mDKZTXVXbSXatJVfUk1V6qdTd0HV/rQ3W6aals6JuZqda0jxfOqYzdNA67td0LUXazoIVppopvobqTXUrRNVvsy3QSrWpJS3RXdamdfso0SUgz3sg2rscaPooB6PtwkPHsKKVpvEa8RhcqHp5dKKIIUlcYfgxgnPia5zNrBSKsgyIbzo8sw96T/+NCxC4wStawBMjTiRW04YEmC1afMmwdB+p++0urT22VulEoomgWxWlCFM0TGdU7gOjEeSiHbva88MlFiUgAO+E7FP4fTLhPNLd5DrEUIzNNuC9SmnLV1jCBZxIIHlC504HyagshBsZFJsAAeBINgsOBloxutOfN0/T19lNTI1NhFHDcBySGjLkU18Z9DOoGQNqpoW5YsGdpeVeise4/tNUFxEqXflFnJrhIC4EmopEIR15ULQmV0qz9P8+x+FujBqAZwK4nb5GsRRUiusUhbaf/40LEMCvkDtAeek0LsZMrt2ftAgOhWCZIGfrp6zGRXhIMzhl8llUcH6iKiyIL+UFd17n+b/G/Lf22N63+e/nsgvDGPRM06i8JFI8J61DxCajTW1Km9a/nKuVVFarW1X8W/a37/7SVJA2G4NOfhqaB8uCLVh7aXJzlujzjgFaWhTyfjYkRq/vy5xJuehUGAAo0LcQB/LiwgR/Pot4LGIzuBAJgLBiSD5ligK1DIv0EmiMUEGgPc5oT2hNhYiYAoC7kh0aVYU4Ecou11YaMNYZTGv/jQsREMsvuoBbKR3SLLKZG3JDxTNsadqh0Boopiz1HK4gTCkKmYHT2/5CRqrl5TqeJfz/jdtt9RXpwyP///lu1/6uKWxutZXcmXYkeLkqQ0ekeOktB4eXMNldGAKm2gVRjAJSvJZBbbViRhbqpMbdUobOt853886qpGyZUNj2vDbpA/Yrqu3vkdfBGYsKESUSbV/SqCoBuSO6qkWTdqkII5dDYBCWhCyqSHKS0RF+rlGUXBX63hiqQAyxdaglGkc2z5xp7UEhhCVniC14Sl0si/+NCxDwmqm6gFssHCYCBSTSsPhUVnS4ya+0HpFMerSBP1CXQiVcS5tC2rGf+ZtO6nCpVUaLSLZvXYMdUvOqJLhUKsYVVDXfb/+shgKecEMHZi/E//LisRD05p7jfJqh5zLtizAfEEebNlvuVLcjcle07As4woDO6wKfQw1UNpRZV4RlMSQ97gg4xBe5mU+zWVkQLY4fHLF7iRBgcGSEYj1N0opWQj3HqMGDBsjojsjOuklGdndxh69mTkXG8fc2MR5HMw8xCvUzrudmldTKZxhb/40LEZSJUBsQfTCgDa8jIyz0OZVTPupnTrZGO+it6WRkQ67Eh0xDuhA9DyUIxRVz51QAgwG5G6r27LWRkeWJBYcatkag56IjSMaZBQkStdSjOsADS3BHEYeZ0Qp9lwJuhDcyq5StuL20kUUaSwXdsU8d4z4lizVb4E0We08W1vitK71SsaFj09IzzUbwd4rPnW5YVM2nn3C1BhWtd7CtG3veK0+NT3tX1iTbhQoclJZpm7eczZixPApG1NfVX17wcbiwou4byFLrFbWru2YufCv/jQsSfNTv+nF+YeADbz7V+LUpjUSmKTf5i2hwa0jxcUxL6xrT6iMbkywrX3uFfVq6jUrmV5TdJt01aSm6SFDJjMdQABEyKMuyRyOSXX/f3f8MA6DQMivOBPulx6j6Q1Oijp6nKrllcwa03vcFrhQFYhiEHXGjR5IURsaXOLpKsSstrWNZ7+PNBeQNnQ4VdNec5vqvj4kV1Ii2ys7zWYmNZ///8PzKyJt5hbMNLR4sJSI0t6/8fWNa9c+6+ZbUaDKfLMsHSzQMI6hzxkeRklaNS/+NCxI49HBqSX494AMpqIz4+IVMPr7fQ6N0y9BW52hoU5bFY3q5DtHOtsSkcU66W2YviiXzrNNN4OPVq1tD+M0pNq1c2vrDa/etrFuMzqNmX0nHiPZE4tPnBCFyp1WpVOWN+i4JqsCRVZK3M4EusQf77snUAfqnLv9/wsRNkImZWixFbYyxE/E4S2vCrOtkCcmzIMoRxAvyOhOnT/JrMnI3INuQdz6ZP68wiGSen6K6Eq5GI78ituGLqVC4ab/NPv/b9yP/Ir8J3K2ITOR406ZT/40LEXR6UFr2fyRgAOKXNHJPa/mXnE/N5/NQ7/vW4VZ83/ziNZS/zzxyVATUvaS7bbcJ2Okc42zkscluOLNueyXh+KDpBJVVZlhxbMKxGJCR/X/FLYEcZswIaDajym507cZHKy0+3MHdYTgOtxJNqVtKN/8LTOGhR5wlbTuaB/noSXWF5pvU1Jb780Lfa1k+UKvuDekeklKdNhBZVOGiEjorizBlqAoD7oM2qICccksVjklttu12m02BqO5+kNjLR0iEuIxoVNPHj5gO4XNLjpv/jQsSmIAvWsj9IGAGo/AkXA1UVw6ZXwMxLTMdVS262jLsrYIG1HIOiOXzY9rny0ZOqF6h9CxavWlX0n4dGWWex1qr1EA79owKKQqtoKANol0J1GVZlqWIGXIDs9iXGMxGh+rKxXXE8/aJZkunDk9gZW8zXKtfMH2vv810uOnGniNa0ZrTdLi49rSAyxcum1q1xnmq5+tTs1ah6bQ4/b8ySSYlqJtBaP5xQhqjhcnjJEPZMzMzOLse+ZrrtaggABZQLt+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
(62, 'en', 1438956858, 1438956858, 'kiss', 'verb', 'To touch with the lips or press the lips against, usually to express love or affection or passion, or as part of a greeting, or as part of sexual activity', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

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
(26, 1439207517, 'user', 15, 'follow', 'status', '170', '', ''),
(27, 1439207517, 'user', 15, 'add', '', '', 'status', '170'),
(28, 1439213025, 'user', 15, 'favorite', 'status', '170', '', ''),
(29, 1439213027, 'user', 15, 'unfavorite', 'status', '170', '', ''),
(30, 1439213182, 'user', 15, 'follow', 'status', '171', '', ''),
(31, 1439213182, 'user', 15, 'add', '', '', 'status', '171'),
(32, 1439213219, 'user', 15, 'follow', 'status', '172', '', ''),
(33, 1439213219, 'user', 15, 'add', '', '', 'status', '172'),
(34, 1439213599, 'user', 15, 'comment', 'status', '172', 'comment', '7'),
(35, 1439221315, 'user', 15, 'comment', 'status', '171', 'comment', '8'),
(36, 1439221330, 'user', 15, 'comment', 'status', '171', 'comment', '9'),
(37, 1439222278, 'user', 15, 'comment', 'comment', '6', 'comment', '10'),
(38, 1439222873, 'user', 15, 'comment', 'status', '172', 'comment', '11'),
(39, 1439223341, 'user', 15, 'comment', 'comment', '6', 'comment', '12'),
(40, 1439223456, 'user', 15, 'comment', 'comment', '6', 'comment', '13'),
(41, 1439223473, 'user', 15, 'comment', 'comment', '6', 'comment', '14');

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
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device` char(10) DEFAULT NULL,
  `platform` varchar(40) NOT NULL,
  `browser` varchar(40) NOT NULL,
  `browser.kernel` varchar(40) NOT NULL,
  `browser.version` varchar(20) NOT NULL,
  `agent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `device`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(32, 1437899925, '3da3fc27', '113.170.45.132', 'mobile', 'Windows Phone 8.0', 'Internet Explorer', 'ms', '10.0', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 520)'),
(33, 1437899999, 'a0f61a4a', '113.170.45.132', 'desktop', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '44.0.2403.107', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),
(40, 1437900713, '78f85b96', '113.170.45.132', 'desktop', 'Linux', 'Apple Safari', 'webkit', '535.19', 'Mozilla/5.0 (Linux; U; en-us; KFAPWI Build/JDQ39) AppleWebKit/535.19 (KHTML, like Gecko) Silk/3.13 Safari/535.19 Silk-Accelerated=true'),
(44, 1437901929, '0527146e', '113.170.45.132', 'desktop', 'Windows 7 (x64)', 'Coc Coc', 'blink', '?', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/45.0 Chrome/39.0.2171.98 Safari/537.36'),
(45, 1437901964, 'd74c4605', '113.170.45.132', 'mobile', 'MeeGo', 'Nokia Browser', 'webkit', '8.5.0', 'Mozilla/5.0 (MeeGo; NokiaN9) AppleWebKit/534.13 (KHTML, like Gecko) NokiaBrowser/8.5.0 Mobile Safari/534.13'),
(47, 1437902568, '7cff4be5', '113.170.45.132', 'mobile', 'Blackberry', 'BlackBerry Browser', 'mango/webkit', '10.0.9.2372', 'Mozilla/5.0 (BB10; Touch) AppleWebKit/537.10+ (KHTML, like Gecko) Version/10.0.9.2372 Mobile Safari/537.10+'),
(48, 1437902579, 'c7627f17', '113.170.45.132', 'table', 'Blackberry', 'BlackBerry Browser', 'mango/webkit', '7.2.1.0', 'Mozilla/5.0 (PlayBook; U; RIM Tablet OS 2.1.0; en-US) AppleWebKit/536.2+ (KHTML like Gecko) Version/7.2.1.0 Safari/536.2+'),
(49, 1438400804, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.125', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36'),
(50, 1438701233, '7e4845c5', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Opera', 'blink', '30.0.1835.125', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36 Opera/30.0.1835.125');

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
  `path` text NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_cache`
--

INSERT INTO `music_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.id`, `author.type`) VALUES
(5, 1434614101, 1435498857, 'da65d66b', 'd6b39c35', 'e727921e', '6b93ff96.mp3', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '0', 'audio/mp3', 3636470, 226.873474, 'b33b94a8', 15, 15, 'user');

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
  `secret.original` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec` char(10) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 15, 'user', 15, 0, 1433745199, '966a5164', '7f2e596d7ed79d1720651a37fb98015d', 'x', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '', '', '', 4, 4, 4, 'd098eb5a6b6137ed8433e56050783a36.mp3', '250b5ac580f1bc35c4d98743ccd50a9e', '49607e4f', 0, 3636470, 'mp3', 128229, 226.873474, 'audio/mp3'),
(2, 15, 'user', 15, 0, 1438418369, '68e9e22d', '150fab4509acc9cf6ef22d48cb8d543a', 's', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', '', '', '', 4, 4, 4, 'd5c13d7ef20909fa62773e26c1a39d85.mp3', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e3c39d7d', 0, 9803861, 'mp3', 320042, 245.063995, 'audio/mp3');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(5, 1433750606, 1, 'user', '15', 1434640107, 39),
(8, 1438842481, 2, 'user', '15', 1439554038, 108);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
(7, 1438949208, 2, 'user', '15', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=latin1;

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
(190, 'cacheClean_by_users_limit_rand_min', 'en', '10'),
(191, 'cacheClean_by_users_limit_rand_max', 'en', '100'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'database'),
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
(248, 'feeds_action_timeout', 'en', '86400');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `photos` varchar(40) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 15, 'user', 15, 0, 1433753226, 'bad63031', '550b43c6719b29034d11284365df366f', 'c53196af.jpg', 'IMG_3270.JPG', '', '', 0, 0, 4, 4, 4, '16994d4d897b0913f24e4d298bfc3413.jpg', '0c015bc3125b2e37002d62fc8d056e87.jpg', '4f27f528eb066716ebd2ee74123556c5.jpg', 'd6cf363d62d042798059f52b11671b84.jpg', '4972ebf829ed31f4661478754d02ccbf', '11fbe610ab0b81590b773ddbfef908a1', '148e4531979c96c57c5d9c8e8763e759', '21f1559c387fab9e433746f9af35deab', '9b8c6d73', '72d39a0c', '35b63e0f', '202615eb', 1042, 1936, 'f/11.0', '3625/1000', 0, 1433753221, 389897, 2, '0', 16, '35/1', 100, 'Canon', 'Canon EOS DIGITAL REBEL XTi', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/320', 1, '0/3', '11/1', 0, '8321928/10', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_scrapbook`
--

INSERT INTO `photos_scrapbook` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'a0718873', 'da94c4a297b8fe31b611c30e21cbc789', 1433580568, 'Gym', 0, '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1433753232, 1, 'user', '15', '0');

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
('4v,ciVKMSSVVPbD9FRH-kU2VkgYNPtI1-P4VHvufqvc', 1439225084, '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', '1f60478a4c89b0bf1ffb076c855180ff');

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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(15, '3768679f', 'fb35c7c0a191284bf2b29921fd9483d2', 1433581761, 1433581761, 0, 15, 'user', 15, 3, 3, 3, 'videos', 'dJAoMGpmQzUYRn+c+m7ZITFoVArteoaIo8dfrSm7eZo=', 0, 0, 0, 0, 0, 0),
(16, '921dc0d6', 'b22b767b12979a610bf2e1ad901d0834', 1433745199, 1433745199, 0, 15, 'user', 15, 3, 3, 3, 'music', 'V42a2JnVhmKzYNIyqRcWXkU0NL+263GFb+8hoHb1/iA=', 0, 0, 0, 0, 0, 0),
(17, '4c59ac5a', '7e0f721096e28c4b7d7b0cc6142153fb', 1433753223, 1433753223, 0, 15, 'user', 15, 3, 3, 3, 'photos', '3FUOwvsiZZ5EXqgoilUgGyQqYWi5hqd9ZRUmXh4IhKE=', 0, 0, 0, 0, 0, 0),
(18, '7ae7bba5', 'ff252e76eecaf1cea21f55e76bd7365a', 1434092540, 1434092540, 0, 16, 'user', 16, 4, 3, 3, 'status', 'ZkEpSTykP8f6wlZH+gLcigG/ocG5Bl0beCU/PH7vl1Q=', 0, 0, 0, 0, 0, 0),
(26, 'dcbb6b78', '94a56f537fab2e295370836ee0b7e77f', 1434097305, 1434097305, 0, 15, 'user', 15, 3, 3, 3, 'status', 'HF3OijhX0MVFyR3W1TIu8YInzlOaI3dI1GLbWkyiwtA=', 0, 1, 0, 0, 0, 0),
(27, 'd027744c', 'e8748f92070e1348d107788e9a867427', 1434097410, 1434097410, 0, 15, 'user', 15, 3, 3, 3, 'status', 'igzaZ+lbU21WyApRYJ3gB/N9N1VaKeEy17cuAglySWI=', 0, 1, 0, 0, 0, 0),
(28, '317a8ebd', '94fd8b620a540e2443bd9384518e54e7', 1434097810, 1434097810, 0, 15, 'user', 15, 3, 3, 3, 'status', 'EtcrZ21ANeG1qWx4cmAvbpvnNm1GQENJp5/YzA1qAAA=', 0, 1, 0, 0, 0, 0),
(29, 'eb5ca495', 'e5f5e8e7a31c427a635cbc88021997b2', 1434098084, 1434098084, 0, 15, 'user', 15, 3, 3, 3, 'status', '+RNCtAVIP7CDEMNOy0JQbLChdU3I7H60cMCkqxFf7h4=', 0, 1, 0, 0, 0, 0),
(30, 'b67dc892', '50a75787bb761932fc6755891652c87e', 1434098822, 1434098822, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KEkq8h9HCgR7mo+SM88mQSCIqvPDxy0IsfsTHqE9TE0=', 0, 1, 0, 0, 0, 0),
(42, 'c279fec1', 'cf358411ac6254f67d02d46d5ef3ea91', 1434100458, 1434100458, 0, 16, 'user', 16, 4, 3, 3, 'status', 'zEbMNRX7otdm1ADLLMDZatlCJVRODnfgm5Gh2/sTEiQ=', 0, 0, 0, 0, 0, 0),
(47, '4817a929', 'e0b84fb6e0469063e9268343c9c15b7b', 1434700812, 1434700812, 0, 15, 'user', 15, 3, 3, 3, 'status', 's9Dr6IhJ9Y6LvIBPsr+jpy3FYIaAG3Ad74mLA6JDsNLN3aazhMT+t2N2Fj2Pg8tq9UvH+pigcg9MogvTCBCPqw==', 0, 0, 0, 0, 1, 0),
(49, '7126c114', 'a205a0b7dc8c99c1c421dca87d04ca53', 1434701058, 1434701058, 0, 15, 'user', 15, 3, 3, 3, 'status', 'D5jITdHnnBiR+VfWcf+pnbgfdrG3FvU4s60xXcbJ7bYCrlrBW2gcdQ75ylAxdJZ05Hk7o224+4UFHQVVSnCC/A==', 0, 0, 0, 0, 1, 0),
(50, '35d1a1af', 'b096aeb491c396e26501d17bde6c8bd4', 1434778944, 1434778944, 0, 15, 'user', 15, 3, 3, 3, 'status', 'oLnqzcire8CBJxlRAKETP8niNZnT2bZow19Q2YER+gAdzpviTEXlRNYRRoqBA2emb29Jeo0IYd8m11t2RQWelA==', 0, 0, 0, 0, 0, 0),
(51, '96f55e20', 'b4c3df352bed4aeb661fe6ee3a0a4db7', 1434779051, 1434779051, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wBtA3Gpg/CblZ5OGrVmMLzXKTvj+bu2SOhDFLxEBDQaZfAlWO6z4BAt1RABxLcqKDhqx62BPTSAupGGCC48RHA==', 0, 0, 0, 0, 0, 0),
(52, 'edcc7e0c', 'a24ec5ffa63da0ecf68465887dee0f3d', 1434787496, 1434787496, 0, 15, 'user', 15, 3, 3, 3, 'status', '/uwV5UUi1muYnjPp3R+vxAvZu5BVWHN6yI6pLkjxmTAFBqYuUrCqw0CXz5xF8raP7AuAFp93qQjixyYt56t1xQ==', 0, 0, 0, 0, 0, 0),
(53, '915e4b13', 'b4f9283c0ab096426a4629b403b957b0', 1434787533, 1434787533, 0, 15, 'user', 15, 3, 3, 3, 'status', '1YG/VDBIb7AWxwcDXNp8g2djjcY1/SqnnSbBpfH/0mcEx9qkESl8ydfNOYhu6mD02OtP5qQWzBXAzYmFl9cnyA==', 0, 0, 0, 0, 0, 0),
(54, '45200686', '7a25e070b8d4d025cde2e501d6252797', 1434788628, 1434788628, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hCT/GYaJpEk2Tjrd9HiLtTzeh7GyeA6E1B8wgNPyoqvZDFNQNc+aFi2yqJmYUbhqI868pP0qNnNniyTsKFOfdA==', 0, 0, 0, 0, 0, 0),
(55, '5e0884e1', 'd957a0ebfa852f96c3853f12780c92b7', 1434788778, 1434788778, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wp3HtMlrrcvdIlMElqzvMUjKLU61pW9fhkC3r0lWUaEYhXm+BzBvj/FKMx9jIJYoLPW5wfLPqFHWdNlrt7fExQ==', 0, 0, 0, 0, 0, 0),
(56, '1a8b780a', 'ca744d16fb0a513b2d07894ea7fa8967', 1434788835, 1434788835, 0, 15, 'user', 15, 3, 3, 3, 'status', '5tElnvntMGco8NTPqqcDS//tLZSHEOPOG5Dgfhw71b/o159s25j0F8RAhUZL72ugWh7t8E4VtTeirFPdPwjwVg==', 0, 0, 0, 0, 0, 0),
(57, '7616ffe7', '14e7040bdf1aae17c2bc483b0c01ec82', 1434788949, 1434788949, 0, 15, 'user', 15, 3, 3, 3, 'status', 'gjJadgxcF+jYN7v6CYNY0PuQtg8wZfRsUXj3eDTGpiaqSfykIoShGDOWV1XAOz/JOREZv0mojasZ70yTd4P+pA==', 0, 0, 0, 0, 0, 0),
(58, '539189ed', 'f4245a02f38823addc0a269fbddf6272', 1434789020, 1434789020, 0, 15, 'user', 15, 3, 3, 3, 'status', 'GKIQb7SUeeCgjCCqqEeCR97uvhXpBOqQcgzzgBYpxsKIOZNLcMBUFSifh1/iuQETxjSJVU0JFN4FJ/yvlgPsUQ==', 0, 0, 0, 0, 0, 0),
(59, 'c307d216', 'ee6cc021d9a15c4fd2f414ee33f93f85', 1434789130, 1434789130, 0, 15, 'user', 15, 3, 3, 3, 'status', 'OPC57Kgqom+qOEaDhDlfbeP/Ia+8Yv0fWgUGg3y5mGBmVP3ZROvLGZtyh4pZroUZeKcD7EOyc6YgLOH2Vw4hzQ==', 0, 0, 0, 0, 0, 0),
(60, '25a938ad', 'b572244d9dad91774eec5324e4be4c43', 1434789174, 1434789174, 0, 15, 'user', 15, 3, 3, 3, 'status', 'YakAt7pXeh3lQlz1lknkC/0+MCB+DX410xiNGXYSfxblBKLh3P0PtwsmsaFhdBAjITYiC93ViuJKYV3Sof3tbg==', 0, 0, 0, 0, 1, 0),
(61, '1a4ab147', '065fd024d9178d4db0fa9cb73e809f9c', 1434987597, 1434987597, 0, 15, 'user', 15, 3, 3, 3, 'status', 'uthojd8GpKJSD6ZKRa1YzOKRbH/5A+fRwhPq1G8itKM=', 0, 0, 0, 0, 1, 0),
(62, 'c92ba13a', 'f913104b36ebcea1864862efb4f43928', 1434987761, 1434987761, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Kc/Ee/btiaPtb5zWUKe1PNcdcmpvOrAnWpoYAtskDinSHHQA5t13Km/i2ore3LvbwEQ/AwLnniwWG1pJYntksxZv+CQTVIEg0B0nCgRZQvJ65mApDXF+sjNE+T5Ckqya', 0, 0, 0, 0, 1, 0),
(63, 'd2bc1322', '47950160b50bae19553701fa6354a2f3', 1435048620, 1435048620, 0, 15, 'user', 15, 3, 3, 3, 'status', 'vxNmODve+0kTA6WCLbYEfh4vl1jvzZXpD6K9hriPcGE=', 0, 1, 0, 0, 0, 0),
(64, '8c447a74', 'a7c5e85d762eb0315527da4ea805d972', 1435048699, 1435048699, 0, 15, 'user', 15, 3, 3, 3, 'status', '7Sh3VTFT4FGKQ1aiZNaUFDQv5WLBmQESbM/MCvf+6Gg=', 0, 1, 0, 0, 0, 0),
(65, 'e3f0b149', '7ff1648c338b93e6e56a3ac9ada0e79a', 1435048714, 1435048714, 0, 15, 'user', 15, 3, 3, 3, 'status', 'B2WeyQN5qxfF7d92AUN5ndZf2Ky4GEkBkARjXiXwB6I=', 0, 1, 0, 0, 0, 0),
(66, 'ed22f94c', '6584f4c052ad70d8bf1b92e4bcd75d69', 1435306006, 1435306006, 0, 15, 'user', 15, 3, 3, 3, 'status', 'zwCbJPOz/yMhsoX0rNAz11LaTyBdC9ceW+2l0DpWUlM=', 0, 0, 0, 0, 0, 0),
(67, 'f1f7b6d4', '70b5918f418728239d8112400366b47f', 1435405192, 1435405192, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KoU0jHJcO0tKXypLK9IwVehqdjZUAjvT4emT1QOXbzc=', 0, 0, 0, 0, 0, 0),
(68, '94bafa39', '07788f962de3b0e5a6d4f32b45f1c409', 1435405296, 1435405296, 0, 15, 'user', 15, 3, 3, 3, 'status', 'jGQOQb/r3zcBLKiJVk668GxPr3BrTV3wt8I89xm0wNI=', 0, 0, 1, 0, 0, 0),
(69, '594a7e55', '2ff10d446a9c33c4b7ef2bf0194b15e6', 1435409271, 1435409271, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kBQ/E4skPvtbrznZrvYR8GcqiaNhTk32KoUwN4Ksvww=', 0, 0, 0, 0, 0, 0),
(70, '6ed4ec4c', '173876e1e8238e0f022ff812ccd7e251', 1435409388, 1435409388, 0, 15, 'user', 15, 3, 3, 3, 'status', 'UWTXu4wGMVS+JDv8onSksFOCHniWlOo+zaK3nP/tY5g=', 0, 0, 1, 0, 0, 0),
(71, '105a7455', '23a46c55f57471bd59e4feea32c2acbc', 1435409420, 1435409420, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Pkalnb3A1V3ZapFX821mcY+/58DRnuSYQLBoXcP1gGY=', 0, 0, 1, 0, 0, 0),
(72, '2abf9897', 'ca7d23a28003277f1d87dfd13a7b7aa6', 1435409444, 1435409444, 0, 15, 'user', 15, 3, 3, 3, 'status', 'A1DzClocnDHAG7NOicfE1Ta+XULhcy/E4XgbrxTNXk8=', 0, 0, 1, 0, 0, 0),
(73, '375d1a92', 'fd2f0fa914f9d6e5500462187b0844e0', 1435410307, 1435410307, 0, 15, 'user', 15, 3, 3, 3, 'status', 's3YOmGino0OEr4/8YISS6da7VD9Sq0PeJjjz70wp2ns=', 0, 1, 1, 0, 0, 0),
(74, 'a220e31b', '70179212c844daee77715323e3574e03', 1435478658, 1435478658, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hlqvolHY84RcXBEhLsPc0ojs4mSQKVm3zmSlJe1uIQ8=', 0, 0, 0, 0, 0, 0),
(75, '9a23e1fc', 'e76e04abb861bc4e84d4e9473f2d7536', 1435478842, 1435478842, 0, 15, 'user', 15, 3, 3, 3, 'status', '2bdrikL950FCJm65E+U6xHiXJ+4RFvTDeAg/lJtv38s=', 0, 0, 0, 0, 0, 0),
(76, 'f77e5d42', '51ac4977c610b375c57ca0c72ca6f357', 1435479130, 1435479130, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kNsolc3X5JrtENvaApygYO0afTATNXCKPxmO45aHyuk=', 0, 0, 0, 1, 0, 0),
(77, '28be871b', '5b585276c3df1e0dcd42435e2e5e5ad4', 1435479162, 1435479162, 0, 15, 'user', 15, 3, 3, 3, 'status', 'VkxJHYCSJkbOJUO0as/XY9nON99MKlRsj80bG5x4uvA=', 0, 0, 0, 1, 0, 0),
(78, '44442f18', 'f2a25bd5dfa75c92d5a9987403289bfb', 1435479395, 1435479395, 0, 15, 'user', 15, 3, 3, 3, 'status', 'iVHlNlnOuE3JS9LjTwgORxvfSagKgEcuO3nL8hRdWHk=', 0, 0, 0, 1, 0, 0),
(79, '01f21a65', 'f1224d7f834f6cd9ab1feb21b2564b0d', 1435479865, 1435479865, 0, 15, 'user', 15, 3, 3, 3, 'status', 'CA2OrvpiJli/UzJudO+r63RF5jQsDd2GuVh0NIM1a/A=', 0, 0, 0, 1, 0, 0),
(80, '076b999a', 'a973bea0874d6dfbdab91d940a268cfb', 1435479929, 1435479929, 0, 15, 'user', 15, 3, 3, 3, 'status', 'WZJ3v7H62VSnTRm3KrVYbzRqwINlEsIXPmNvMPoC1Ss=', 0, 0, 0, 1, 0, 0),
(81, '586564aa', '4c777c7ce772d1b966c3b1335aa54c03', 1435479998, 1435479998, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Yj0qPusmZvgs/R/UzBA6AwO2OGMIX5heLJtNN9ycm0o=', 0, 0, 0, 1, 0, 0),
(82, '302b19e6', 'b4704c4e4fdb555705677c164f80e341', 1435480245, 1435480245, 0, 15, 'user', 15, 3, 3, 3, 'status', 'adp922z1EcMQzixq5Z6xsNwMOmF6CvdnCD2khVrtUX4=', 0, 0, 0, 1, 0, 0),
(83, 'e661a437', '3277ae0ff6c07db702d835694f89d589', 1435481392, 1435481392, 0, 15, 'user', 15, 3, 3, 3, 'status', '+3/b4+7g0Va9UUvi4dlZ5Rp9qcv/r07FTea5+h+9gdw=', 0, 0, 1, 1, 0, 0),
(84, '6ea389ff', 'cddb1d3acca83f2c46c53234028da296', 1435484831, 1435484831, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kTyfuwuagc0gFMhdkIvJpEtXhiG8Fgj0Z4mpg75yIto=', 0, 0, 1, 0, 0, 0),
(85, 'c0c3d7dc', 'e7188088277b3d80d73c758fafaa0849', 1435485706, 1435485706, 0, 15, 'user', 15, 3, 3, 3, 'status', 'xbbsjo5PpPEQ9u6HzmJYmPhHvhUwV0yRuUn3VeHK/qk=', 0, 0, 0, 0, 0, 0),
(86, '62d397ca', 'afbba2a35c39765001828d720d6b06b8', 1435486127, 1435486127, 0, 15, 'user', 15, 3, 3, 3, 'status', 'SxFzsJxGbmAHoWMh/lFfXb9lNPNZ1ikOzbBM7VTqZBM=', 0, 0, 1, 0, 0, 0),
(87, '2cec330a', '1865729c4bda8589e66f4de5338afc0e', 1435486167, 1435486167, 0, 15, 'user', 15, 3, 3, 3, 'status', 'pue6o/gfx4hhkaYBPwcc25dNhjgOkkrzAgCoZccioYQ=', 0, 0, 0, 0, 0, 0),
(88, 'a19bd9d2', '57a9261efdd7cf87efa6c88b9efd547e', 1435565495, 1435565495, 0, 15, 'user', 15, 3, 3, 3, 'status', 'crUNgUyCnIacoLANm0TsC60zNsiffKMraCAcFIVKtps=', 0, 0, 0, 0, 0, 0),
(89, 'd25f01e7', '49abf154ae8693724b3fdd472e4ca052', 1435801741, 1435801741, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cu73G2j7RbFuVP01/41w6wZZY/1MruhLjH8vt5pwvPY=', 0, 0, 0, 0, 0, 0),
(90, '39e3603a', 'e2de2ab821dd5484701c60898b09c80e', 1436757995, 1436757995, 0, 15, 'user', 15, 4, 2, 3, 'status', 'y2Kt8Iq57i4FwcVFqnrlmmZEBA65o6LNiM+havQispYuxKlAN9HcjafPMkppPNVdZV19rcDKwkG6N8K/AsoID18XW1WNCDJCOMq+L5y+dedBl9uv0bqncJECggbXaUCqjJyqNIxGQfw/w8kPGzkMAAy0sSTA/kbUvl34n6ppbuk=', 0, 0, 0, 0, 1, 0),
(95, '5e6939cc', '7dd27869f88c159000ae5d04ee2f4bff', 1436761882, 1436761882, 0, 15, 'user', 15, 4, 2, 3, 'status', 'nh+4G9JI6jY/V6t4p1N95c+E2W1ZBK9bpYTHe8Ss0d8Kk86DpJvtxjYymhl/4WM70pTf+2GkOzbBnzrp3xcnDYJRJk/lyMp31LHfNEy8S/28uTISlW6htF4DeZnyLnSQ', 0, 0, 0, 0, 1, 0),
(96, '05361dd4', '6bec7041054eda98dbcae9ebafb88a79', 1436761890, 1436761890, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Q47Jlf70E1stOphFl/MRQlz9zXAtQV60xm6Fn6SltgYv/iViF6F18j/VKqRDYU/14fQmUIFkzixea+vbC67em/3L/l0GKrTTW/b5tgtWZBecINS8KJNf8Zn2KCw7J9+k', 0, 0, 0, 0, 0, 0),
(98, '5cf30f18', 'c1cb3249a8118086af2673513514d4d2', 1436763913, 1436763913, 0, 15, 'user', 15, 4, 2, 3, 'status', 'XEdlb8pWFBmh+UgfY5msXcKl1VSWfhX/VSWI1nuc4Js67Yx6g5oCUGkeeAiAQk1usSCdO0NzCVyKv2T9SVP6aA==', 0, 0, 0, 0, 1, 0),
(99, '81be78f5', 'eb377008f40bc25483a14126e4e86fdb', 1436764391, 1436764391, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YBjfYKGEY0cww4UerWk1tmPfm0DaCTPKLCozQ+41D1usI3Y1qu0e378LKwgwkAgtEuq5GP2M7CbIM8jRp7QsbFDYTSD0tcCNVlP+UkMMg8Ewer03B3HXIEEhH6AVgJF4', 0, 0, 0, 0, 1, 0),
(100, '12884f51', '9d7fd44ec3b74763419fabeea8ebe93d', 1437032311, 1437032311, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZR0awSySdpxxzXxX+i3wcDp7ZRX+DLZcwd6x1k71HKFkqol7MgM4vWAzY9mxW1iAFKJnZKs7WWlMU+S4DEPWjEQHznsh+P3hIS3LmWsBvmz6Yav5SKedyhetH5QT3kVv', 0, 0, 0, 0, 1, 0),
(101, 'b027c477', 'f6ac7d16a303d3b49b29e94f74840ade', 1437033632, 1437033632, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ufGyIgj+seilZQ6oFTh63MTlPsm307j+gMYtOkWFcTD25TqcgxjZ4nOBEMcVtT2ixej4i3ZYk37gc9cbF5W17Q==', 0, 0, 0, 0, 1, 0),
(103, '7cb3195c', '9044a1d554247b0b65f99d63db5f7e2a', 1437038930, 1437038930, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VDXoiLFJpGXCjPWhgR5FhRvtt64hp4Pk/uY1UwTkXLozEoqd5+46Uao+fOaS8Er1qnlUk4mjb9fx2hbQ4qT5XA==', 0, 0, 0, 0, 1, 0),
(104, '14aa9d0e', '823887392b4a29d1aa4a96fed7e58ee5', 1437039398, 1437039398, 0, 15, 'user', 15, 4, 2, 3, 'status', 'De1AsvIjK1ivESYfpjUpzuFgHlNQhoPBPBd3iWIrSR7bboWIh/qaHWwW5Xi052V62VYa0TuAXEXYBqc05Acv4TeL8kIyDvQDEvaGsCWOZdvubHCHlADgHNpf5TJdWz0B', 0, 0, 0, 0, 1, 0),
(105, 'cf9e99da', '2aba45d8fd04940e49d94a705741b562', 1437040027, 1437040027, 0, 15, 'user', 15, 4, 2, 3, 'status', 'owVpXDkpLsLe8n95hb9y8esNi/5eUD+/tT6BqlUGwSt+SiNCEhoChgiE9UOZoTne/zgpcAHbvBMzUlxC9+4WZ56Z9oc9Pl7p/cjQVRcocXUHjRWzepHoaWZkAn9R8Fn1', 0, 0, 0, 0, 1, 0),
(106, 'c4c9e55a', '34096364f13cd8c1acf7141283cee791', 1437041259, 1437041259, 0, 15, 'user', 15, 4, 2, 3, 'status', 'QpXUIkcrXRPiNiLvNFsJFIDKnNTIpVxL27EdNguH3kU=', 0, 0, 0, 0, 0, 0),
(107, '59f62f5b', 'e101a35911943b7a65774c746b1920b1', 1437041344, 1437041344, 0, 15, 'user', 15, 4, 2, 3, 'status', '0auoxc4uitk9K9vCpwEkOGD+5Z8/WDSimFcSeG7tOP140uhSbKotFqN0flNMzYVrN+OTPI8EybDuhPawMZt8Vw==', 0, 0, 0, 0, 1, 0),
(108, '4a9f2541', '5af2129625ac35031223528b398aab31', 1437041566, 1437041566, 0, 15, 'user', 15, 4, 2, 3, 'status', 'HTQ21ycrdqqBd5+1NjigHsWRH1FMbwvKcNbhWnEJPew=', 0, 0, 0, 0, 1, 0),
(109, '1c26cb97', 'a1adde33f7dd0ad34fa3c8e1e580bfb0', 1437042378, 1437042378, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'LA/t60xSshpBX/tdg5nev8YqdIuN5z0QKDDsLdKktAU=', 0, 0, 0, 0, 0, 0),
(110, '047aedb7', '9fd3ca7491a0d72220264c846eb5f581', 1437293071, 1437293071, 0, 15, 'user', 15, 4, 2, 3, 'status', '+09L6P6FZBp/HSzNsilf90kfkQs0+eBXPYV/UXAQl3fSEX+FkM8cUrcXekqgE/8MZ2vyquxgJ48JE5dYUKm8g8XDAf42gUXW8DlMK+ccSpvdeGdJI8MEF8B2KatwDAAf', 0, 0, 0, 0, 1, 0),
(111, '472967ed', '90ad77cc8b8aa2410fbcc067879af2b1', 1437294181, 1437294181, 0, 15, 'user', 15, 4, 2, 3, 'status', 'lQVvAyDjOFCgidTo+x3zGhmabhdXKJpH/SVY/QPvFaRR62xHIzWmXDos4qxtyFjU8dDwHdYWF3z7Myu7vNl/3N8lCHvtAl1CcPb/h44qbdPttN73qLKin9qz+QcaTQSk', 0, 0, 0, 0, 1, 0),
(112, '7b1f2c57', 'c8ca4e8ff9bce681403230e155ad96e7', 1437639883, 1437639883, 0, 15, 'user', 15, 4, 2, 3, 'status', 'gX9ppqqWozuCMnCRvtebFPLKmkUghA7vPkIjZdKZ9SE=', 0, 0, 0, 0, 0, 0),
(113, '2e2a9c62', '4f29167fd8196cb61915c765b7d58ece', 1437818619, 1437818619, 0, 15, 'user', 15, 4, 2, 3, 'status', '3MnZERkKKoITbMUOr8s83nlmxkRoZjFQpzu2MfmnASs=', 0, 0, 0, 0, 0, 0),
(114, '1f2e1d4d', '033f6f13ce6119af0d7d82e651a39413', 1437818687, 1437818687, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VkYgjyAxKuBmg/4Ss1CcvXeEZnM0k0xQINDy/xJDoWc=', 0, 0, 0, 0, 0, 0),
(115, 'b8951b5b', '79d1320f95f65c003e897f12bf0ec241', 1437818718, 1437818718, 0, 15, 'user', 15, 4, 2, 3, 'status', 'PXPsEt2nGyzshWNUjg62cyfmZAKkGxfvSoVVY+BOQtM=', 0, 0, 0, 0, 0, 0),
(116, '6fd167e3', 'd53002ff5f18f86995c1413c604d038d', 1437818736, 1437818736, 0, 15, 'user', 15, 4, 2, 3, 'status', 'CnHvwuhTcHFLH2KPV16WL+9p/7ba8BhAINOEaEccP4Y=', 0, 0, 0, 0, 0, 0),
(117, 'fc31b6a1', '3a93f8509eaa36a7dcf01b4bb049b104', 1437818764, 1437818764, 0, 15, 'user', 15, 4, 2, 3, 'status', 'GMXEILL/Rk6h6/dsPrMkU9NwS96Huc4H/TS9S0IaGUs=', 0, 0, 0, 0, 0, 0),
(118, 'f2f88a93', 'de760b9ec603c61a2b51b066cfa05e98', 1437818845, 1437818845, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ESgrSpnaGaCyzdZdIrLXtlzrZrFm/cX1rxFllYWOm8c=', 0, 0, 0, 0, 0, 0),
(119, '61e3f03a', '9ec2d96f51efc8d31cd219b2d7e21aef', 1437818877, 1437818877, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YNyskJjX+ZR/Cfc5uuGraG9fakiIaYtO09GZhoQ5Ml8=', 0, 0, 0, 0, 0, 0),
(120, '5c35551d', '8b312e0aa1e7e71570e2e0d7b896e84b', 1437818894, 1437818894, 0, 15, 'user', 15, 4, 2, 3, 'status', 'MBAAwZoPJVjaS/OSLDP2CiQZ1gE0aUFbbFVyiR1Kfw4=', 0, 0, 0, 0, 0, 0),
(121, '491958b6', 'ddffdc20dd4c0979b72830e481ec5d58', 1437818924, 1437818924, 0, 15, 'user', 15, 4, 2, 3, 'status', 'iGMp831cmXulN0ALUjd/90FD91cpOdO54YSd1HyZp3U=', 0, 0, 0, 0, 0, 0),
(122, 'ef221972', '5f95ba48d15887891a762bef7a8d644b', 1437818944, 1437818944, 0, 15, 'user', 15, 4, 2, 3, 'status', '2xsI4yUxnigD+spGwpgU/r5jemUQJz4kuBuaNtKDPEg=', 0, 0, 0, 0, 0, 0),
(123, 'e5ff165b', 'd3118175c17e2e24c9bda872151f8d53', 1437818970, 1437818970, 0, 15, 'user', 15, 4, 2, 3, 'status', 'LTho/4OVQwCd1RJhMSicC/3vGS6svNhsS+wd+e7pEIg=', 0, 0, 0, 0, 0, 0),
(124, '1417f7c9', '2de9a3b759d06a3ff06e371cb869e800', 1437818981, 1437818981, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TVG2JCEUdEbRxMEE7rQvRevczQiwerg7oxIMvZ8XR7Y=', 0, 0, 0, 0, 0, 0),
(125, '6b7693ba', 'be275ca5a6f03d5297d2abc6fb7dbba4', 1437818990, 1437818990, 0, 15, 'user', 15, 4, 2, 3, 'status', '8U5ZT3wJ+knplLo8L2HfXY0NiuYfaQeJLdOxBrBnvcM=', 0, 0, 0, 0, 0, 0),
(126, 'dc8e33b8', '5999d6da12b9f4f34f631e03d8614080', 1437819002, 1437819002, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ALJWWS285ywimEZ4wzltf2zKqhU+cMt4MMFxNjxmIZo=', 0, 0, 0, 0, 0, 0),
(127, 'c91358c9', 'b04e1bda1bf64f56afdfae714a9368d4', 1437819072, 1437819072, 0, 15, 'user', 15, 4, 2, 3, 'status', 'oWA7QRVT7IGGFS9WmMPRPiAGXfD4FRfU8rsuaNlgYpM=', 0, 0, 0, 0, 0, 0),
(130, '0798505a', 'e859eb5c9cce17766a6dad0883cb5aed', 1437835720, 1437835720, 0, 15, 'user', 15, 4, 2, 3, 'status', 'uxoV0YXGdl7LX/NYi35d3RNIVcj2T8G1S0FwcIL5Thc=', 0, 0, 0, 0, 0, 0),
(131, 'e3eaf03d', '30283ad661beb734480aed67978164ed', 1437835728, 1437835728, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WTuqK/WQ/+as5TkJThmq3USzDBiuFPgZ6lpHxRcbRIo=', 0, 0, 0, 0, 0, 0),
(132, '16f5966c', '7e685bab54ffacd5bad13ae5cda95af3', 1437835895, 1437835895, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cJBAilnmD9kwESKRXKcN5kWyJ+klNwqbRR+1WyAz7N0=', 0, 0, 0, 0, 0, 0),
(133, '71b64e69', 'f124ea8cdd851e6acc3e312d683cecd1', 1437836069, 1437836069, 0, 15, 'user', 15, 4, 2, 3, 'status', 'jXQiu4DCU11Gp/Ztj1LETssoTSc+GxX3DCdXTo8gdXw=', 0, 0, 0, 0, 0, 0),
(134, '8abf789d', '4285cf087ede38a14e5a1be947f47e80', 1437836217, 1437836217, 0, 15, 'user', 15, 4, 2, 3, 'status', 'BPDT4Kkhgrh0c2TVCysEk/QCT6+PDcWCt0UgPBTTuE0=', 0, 0, 0, 0, 0, 0),
(135, '8a766317', 'db6c7e9fdabb0d51bbe0975243f5954d', 1437836263, 1437836263, 0, 15, 'user', 15, 4, 2, 3, 'status', '50yT3SK2XbNb5sIkIv4eI7FNvRLA7XYTnbHbVx+Vs+w=', 0, 0, 0, 0, 0, 0),
(136, 'a3de633b', '3b875690eb991a0ce37444bc4aa1197d', 1437836329, 1437836329, 0, 15, 'user', 15, 4, 2, 3, 'status', 'wr0pfsjUYspfmZsQLNKxJI86s5fXsx+7kdzDH5I2bek=', 0, 0, 0, 0, 0, 0),
(137, 'e7aaf4d1', '1f15940ed51b59e81ed332bc8a510e42', 1437836373, 1437836373, 0, 15, 'user', 15, 4, 2, 3, 'status', 'pb+BNvn1t+EhTsqNPvaE5WrdJ7GWn++2agpZ8dMf8IA=', 0, 0, 0, 0, 0, 0),
(138, '554b6fd0', '45b5f2d3135a63bc399f0b5fe4933a5b', 1437836501, 1437836501, 0, 15, 'user', 15, 4, 2, 3, 'status', 'FB8HeuLRuMvFbxLn7O53kfmC8naBI0SAKaI1aXFodHE=', 0, 0, 0, 0, 0, 0),
(139, '14074951', 'f5420a2e78d6d6711a84b58d002c21d1', 1437836510, 1437836510, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Yn4K1mZqdwyOLDJVnO317VllwRZ2GSYEwblhSDvR5Cc=', 0, 0, 0, 0, 0, 0),
(140, 'c83fdd74', '4f249d246ff7a8d2a606e6510f0b2a58', 1437836532, 1437836532, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Cc1BtPfdcgo/8lQmV8I2sLDzGq7CuPun2WUXILEtHY8=', 0, 0, 0, 0, 0, 0),
(141, '11636063', 'c3de780036f8ee3891dd0d8d46e1ebc0', 1437836548, 1437836548, 0, 15, 'user', 15, 4, 2, 3, 'status', 'hzv97Ko7RvGhwLHz/anSTfs2W4L0YJl2XRvrK3K/37k=', 0, 0, 0, 0, 0, 0),
(142, 'ae1be7bc', '5501f442c02545b73c558469506fe9ad', 1437893593, 1437893593, 0, 15, 'user', 15, 4, 2, 3, 'status', '1ZtSd+pfhjVDbYyVATUPFDW5U+5JSWK0jHYSEmz6Kn8=', 0, 0, 0, 0, 0, 0),
(143, 'e6f0a9ba', '6a2190b091ebd657c9f158738d65cc21', 1437893629, 1437893629, 0, 15, 'user', 15, 4, 2, 3, 'status', 'rFhGr4bEOIpIbbgWighg9MgX2zQ6XONvqJIH2+XyxSY=', 0, 0, 0, 0, 0, 0),
(144, 'ca2228eb', 'da377a92f18cd615d9d40a6a8a137388', 1437893634, 1437893634, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WIoJAbcCJcmxzKhg3C3Ib7VWdW7Sa109kPBwDEy23YA=', 0, 0, 0, 0, 0, 0),
(145, '85b0dd08', '4d1beb4f223fde1c7d634805ec3cbc2a', 1437893637, 1437893637, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TzM6Z+oFMowgVBjmeG3hM//uqc5grAMSpwdixDcq8MU=', 0, 0, 0, 0, 0, 0),
(146, '024948c7', '696a1c42333e9fe607f40f8e305a3bf3', 1437893771, 1437893771, 0, 15, 'user', 15, 4, 2, 3, 'status', 'AtlafjXNQ8XXYra+s4B4qjTbzpO83z75csQRWMxCsYw=', 0, 0, 1, 0, 0, 0),
(147, 'b960af10', 'af26d1cfd343942cf68f071968160f36', 1438156116, 1438156116, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZtiLRvqiSa7dwRqTzfzHM8KMuIeiCClIC9gHSUN0YnQ=', 0, 0, 0, 0, 1, 0),
(149, '2ab0ea16', '18f90c5444e20c5d826d09e984df598a', 1438156800, 1438156800, 0, 15, 'user', 15, 4, 2, 3, 'status', 'NDF4r8mqOAOHI8FSH2DQAk6owSxTSsJcaS4UH0/nrZ+kpt9TrLKyBDCYZrep4b7LI3mrM/e2hULp6jG1oDmLkA==', 0, 0, 0, 0, 1, 0),
(150, '160138d3', '1039dd418edfb34118e37acd555fa783', 1438158478, 1438158478, 0, 15, 'user', 15, 4, 2, 3, 'status', 'KwxxloXZXNElT+6u3tPXiLJZM/Qv3unlPrp0eExMGb+wFnblVzJz9gJdSRAe/WJ5RsD+EAOlx1YK9D1lzy2Q7w==', 0, 0, 0, 0, 1, 0),
(151, '12e5c313', '67f57834fed023c346819bb027abd7ce', 1438162266, 1438162266, 0, 15, 'user', 15, 4, 2, 3, 'status', 'qzqnVMIGZgHHbmRV4sB2Dqc9aRa9y5aGXMcCzvEZHVQqxSUg9e4itU/Ebx/PHW03U7AWw/wHC3mquhcf+ximqQ==', 0, 0, 0, 0, 1, 0),
(152, 'f4e74ee1', '68da09c1e66b71669cfa074895269aff', 1438164638, 1438164638, 0, 15, 'user', 15, 4, 2, 3, 'status', 'G4HRs6B46KvLEpr2AVm12m+hZh//Tdto5PJKngURRK8=', 0, 0, 0, 0, 1, 0),
(153, '830b0211', '99e9e53b2b7786856cd0329351b8498a', 1438165633, 1438165633, 0, 15, 'user', 15, 4, 2, 3, 'status', '07jfTQTLcuctVU9PepkFZW0kaIiqEqncvi1UJaosYAQX9MU3i09Ht2SAdym6tToWL9Qst8W/wjlmpVUypeqsiwyDTD8sfVj1t2gMdRqTBY6ZfTJ2EUW2Ft0BbQoXIHBP', 0, 0, 0, 0, 1, 0),
(154, 'f537d6d0', '4199099e5268bf02751aaa821036b4b6', 1438191184, 1438191184, 0, 15, 'user', 15, 4, 2, 3, 'status', 'L66+YXZtS76d6VNuquxMSK1DFsYNiLjhmxK2d+nAwb9SupSEDkREqx0YeRupFfQ3hViV2McKHg8sB4vDWaHomQ==', 0, 0, 0, 0, 1, 0),
(155, 'f1028017', '546411c58f398f2132f42d17967a7ece', 1438248135, 1438248135, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'HNqOzU3HQE/mnUNAbKQX7I4eDa+4byx7hwCglelaNgQ=', 0, 0, 0, 0, 0, 0),
(156, 'b640ac72', '694e449af31d0a432d37e9727ebc65c5', 1438402832, 1438402832, 0, 15, 'user', 15, 4, 2, 3, 'status', 'DsMkqDwl2HdfG0+JNwaqzG9l3+lcfhA8Ny0nFh4Qtm4=', 0, 0, 0, 0, 1, 0),
(157, '459975d3', '6dab5db4512092d45fd28287413725e4', 1438418368, 1438418368, 0, 0, 'user', 15, 4, 2, 3, 'music', 'lXQCN4G0I7Dzt3IrKiMBAtHXFLotu18LaHpEh/f/b90=', 0, 0, 0, 0, 0, 0),
(158, '98d29a81', 'fb5c609cff36759b436f26cde2ed3bde', 1438419261, 1438419261, 0, 0, 'user', 15, 4, 2, 3, 'status', 'QSWsEV1/OoeQD1pxTVWyZR1oCzsx4xhjgDGLmsCVCDo=', 0, 0, 1, 1, 0, 0),
(159, '08b88622', 'ae683a0f95a368261853f06bb35507e3', 1438419352, 1438419352, 0, 0, 'user', 15, 4, 2, 3, 'status', 'H93qVd1aUQSehb+l5lHS/xoffIHToKYW/uuFKVl0Te4=', 0, 1, 0, 0, 0, 0),
(160, '2e950088', 'a3ababa6823cb3e1bb0b707baafbb528', 1438703685, 1438703685, 1438941806, 0, 'user', 15, 4, 2, 3, 'status', 'CwUR97/HHV07ECtpCI7EXgjYKBxtAkKu1WDIMF4Haeo=', 0, 0, 0, 0, 1, 0),
(161, '1b450d6c', '2e80e57281a12f7016cee3c77a8daf7f', 1438852013, 1438852013, 0, 0, 'user', 15, 4, 2, 3, 'status', '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', 0, 0, 0, 0, 0, 0),
(166, 'a13f0e62', '407f7ae36cb8d85b9114068064c86824', 1439015679, 1439015679, 0, 0, 'user', 15, 3, 3, 3, 'status', 'n4mhEnuM/d9Rw4rvlJe+SRDvvHrRFMbhxsfnK+BO6Pw=', 0, 0, 0, 0, 0, 1),
(167, '91110732', '0ae6539c0916fce6e3a3c9cde52d0b62', 1439017333, 1439017333, 0, 0, 'user', 15, 3, 3, 3, 'status', 'AOLdzdKs3OMHdxzoeODncyrjv/0m+ZivQp1h8dQGvNc=', 0, 0, 0, 0, 0, 1),
(168, 'fcbfd3e4', 'eaa6a71d1af01e56169e1977c89e4371', 1439017702, 1439017702, 0, 0, 'user', 15, 3, 3, 3, 'status', 'xy+1uO1T0A4tR05ChIyo4fDRXElUTWfuO7J4fS6+QvM=', 0, 0, 0, 0, 0, 1),
(169, 'b127d051', '9ea42d04f371ae7308c802da5e5ee09d', 1439029481, 1439029481, 0, 0, 'user', 15, 3, 3, 3, 'status', '8hoNZspul7GkkWj83I6HO5YRkQjPmN6R8YUz+DMwiCQ=', 0, 0, 0, 0, 0, 1),
(170, '8b697bf5', '8e04b996a38e717839130948b66ddc9e', 1439207517, 1439207517, 1439207517, 0, 'user', 15, 4, 2, 3, 'status', 'YxAcRAmXSjj5SV6aTHWgnFZDqccXLQjIAJCu5VKAt3M=', 0, 1, 1, 1, 0, 0),
(171, 'ae54a948', '2e6326851ad22381a5f1ec2d048d49dd', 1439213182, 1439213182, 0, 0, 'user', 15, 4, 2, 3, 'status', 'QWolqX21VcYGx13O0LjWzvd2bUguHAeCkRxZx5AZAGE=', 0, 1, 0, 0, 0, 0),
(172, 'bb79b195', '2b4910a504457dd29a9cdb64e20200e1', 1439213219, 1439213219, 0, 0, 'user', 15, 4, 2, 3, 'status', 'bz1JZUzBaGVoqttUVUQ5GwbHDtC5NGEk6vGK75tXMQw=', 0, 1, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '3e0b7c4b', '95737622be7b632c37238c26ee4911e7', 1434099491, 'status', 37, 15, 'user', 15, 0, 'YursVAgxspJ6FNEQnSSJB0xBE+R5xjwAnfQjNaI8hcg=', ''),
(2, 'd5e559a9', '9ae01a426ad7faed89bf6dcfef67a3f6', 1434099557, 'status', 34, 15, 'user', 15, 0, 'ezdspZEZPfPNnNm/O1eX0El168q5OMEbb2O0DsZ8NDQ=', ''),
(3, '8f0d2287', '26f4d43ed7818df975778d3c359fc84c', 1434099997, 'status', 41, 15, 'user', 15, 0, 'WdNOabHy7kJQ1TmFsqYXDiqfGsHO91cBY3QaFiMhjtg=', ''),
(4, '0977aefe', 'd821878976f6b66ff8c1f57be6c4165f', 1434100004, 'comment', 3, 15, 'user', 15, 0, 'NVc2rcttXgIA1Zs95Z+3LOv1wytAqvcRl40VoHUNoAQ=', ''),
(5, '8ed1ac28', '3f3b32df1842494dc471f98fc6dbf18f', 1439121752, 'status', 169, 15, 'user', 15, 0, 'Qsjnp2M/ZB1JPJ2N3qqL4BWDSHqTfCdnqDo3tGi9ulY=', ''),
(6, '8876c6a1', '5d374ac641947b2deb5a0bdb8f3f94d1', 1439135821, 'status', 172, 15, 'user', 15, 0, '46+btjZLHDi6fCg7a4WnBCsv2rRX34PAb1Ii4Bt+MHk=', ''),
(7, 'bd9e445b', 'f410a91d3bcaa9a803ccb72184c22552', 1439213599, 'comment', 6, 15, 'user', 15, 0, 'LP1lumnqjA6ZH6ljj0gIIObIScSewEhCq1WStILKwS8=', ''),
(8, 'b8b6cd46', 'bd4fc6ffc135d54e7135fb619634adae', 1439221315, 'status', 171, 15, 'user', 15, 0, 'vxNiuqKMuSU60Rky2jb+qGpUtJb+8GqNYTcoAWeN/Ws=', ''),
(9, '00c4b27a', 'd8f8b0ab964ede5a7b611f0862ac4045', 1439221330, 'status', 171, 15, 'user', 15, 0, '75WZDLxp+QDhBB7Blnkba6yrBMZyNKcicu/M+l4xUvE=', ''),
(10, '3764a443', 'fd549b0efea7ce7c7b09f6d56351a046', 1439222278, 'comment', 6, 15, 'user', 15, 0, 'mVQj7Gn79iKFYwOjIeWuTRvhbYiBdWpo1sfE/oIkj9c=', ''),
(11, 'ba01de4e', '374d6528bb6ad2f463c2c50cc6c28121', 1439222873, 'status', 172, 15, 'user', 15, 0, 'Gkgf1rAhSt0IKPLDUSi4BP2lkuST9FPdRr+1Uch+omc=', ''),
(12, '344fbf91', '96b3dd2ec89addbcb9a892ba8d601cac', 1439223341, 'comment', 6, 15, 'user', 15, 0, 'GrIKSsnvHkKHsQh4mh1MuudQbaNqEfQ/92eCionzQ8U=', ''),
(13, '50e4dff4', '015999b3acbb7041c6f1be92cef04356', 1439223456, 'comment', 6, 15, 'user', 15, 0, 'dX3tkwQy0jvOrsIxTFp9NY+vwypNuoKSOzbBijEgp0o=', ''),
(14, 'a46baf2f', '57797f97e6292e66315e413913014ee9', 1439223473, 'comment', 6, 15, 'user', 15, 0, 'JbY82/Roe1FPddIu5cB6nsiIqOwltHh0+1FBEb7vCb0=', ''),
(15, 'fe972bbc', 'ca49577197bdfb65bbf421d7862c1c12', 1439223725, 'comment', 6, 15, 'user', 15, 0, 'rJVOwoo9699Dly775HhjsrYrisU9csSxqEy+sy1uoV4=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_edit`
--

INSERT INTO `status_edit` (`id`, `status.id`, `time`, `content`) VALUES
(1, 160, 1438703685, '1438703685'),
(2, 160, 1438703685, '1438703685');

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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

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
(173, 1439207517, 170, 'user', 15),
(174, 1439213182, 171, 'user', 15),
(175, 1439213219, 172, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 16, 1),
(2, 157, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 17, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(5, 15, 5),
(6, 109, 6),
(7, 155, 7);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'drive', 1, 1433745199, 'a0bee08a', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'W0hCcZpdm6iZiDWfTFUNWsACrcMvrl7/V8RGwHMqSuS/0mCf6IG+dWYj4jtGKNSSNleHX/dYcFsJUnWCu3hcIw==', 'audio/mp3', '49607e4f', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1433745199, 3636470),
(10, 'drive', 1, 1434614101, 'dbabf7dd', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'n4606qWwd7eP5sWpnfBl3YLHjTiOEdBZnTRR/yLYWvdxH8PFWEBz67cUdi4liGGK6Usx/+bcng5h+M+87gj8mg==', 'audio/mp3', 'b33b94a8', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1434614101, 3636470),
(12, 'drive', 1, 1438418369, '5b2c91c1', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3PHRwDXlWlKm35XVZvRonHFy7cr3zwlDqzhs2bqZFO5uLyqCVWhhY8pe+kkTH6vohkuXppxWMKEV/H1eDKVw2Q==', 'audio/mp3', 'e3c39d7d', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1438418369, 9803861);

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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

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
(176, 'faces', 1, 1438420801, '4aa5b9de', '', 'f7aa28c3818fc8096d18c489dae957f2', '+sx/QBuPObSyWqdg6BUEsX0k4pjA4EOg5XfCZw1xtGB3n3PBowUHiUCcHn+9VwOYMr8n9gSTayASNQXtGtW9JQ==', NULL, 'image/jpeg', 'd7788c66', '10353000_397906390406872_7031310318950938139_n.jpg', 1438420801, 41960);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996),
(13, 'drive', 1, 1435497531, 'c2b70853', '', 'a3afc88b6d573875a151fa8df25311ba', 'mmD7J4lIvDbW7EsaX2oEyL/XuKiK4NInmeilZjUz8xIP/gw1JzLoSznf7Xu9qgYC/9AUL9o5LT+oBkeNgIEPlw==', 'video/mp4', '85f7ab95', 'GanhhaoTimelapse.mp4', 1435497531, 41635653),
(15, 'drive', 1, 1437042379, '600a93e5', '', 'd60188b6fca5f034cedbabf6af1f0caa', 'fEMcLyZu6fxjLfbEht1HNhnHUdpC0BNzYz4j7PB3omzeN+JKYMe4fZS/jKw+C63cZOK+NmEGAe5aa8Yt3nIa8g==', 'video/mp4', '243d022c', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1437042379, 47963315),
(17, 'drive', 1, 1438248135, '64563ed3', '', 'd60188b6fca5f034cedbabf6af1f0caa', 'va6hSdRhF3POxndsxeaN5U6x424+I1ySVvhAleg0vJohTgSnBqRDrt2Tu+bjOLuKgCFDyz64UD8grWUZMpvrgQ==', 'video/mp4', '16a0f0fe', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1438248136, 47963315);

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'UZFbeSJE0sskLPWnoVn+b5dDqrJR89q8zPAdBno6rm3WkBB7da7VM2B5vJ0tp107tGZhuuqp3e8vcZLuyJPGR8i/XMqKQEJew1KcDRVgzXBBCyNDG2jGP9WI+BfUznBn29zPHDfAW9kctobQDtdk4xEu7oeASIc3JiHypz8Ha6zxpubdGeRS7Y7Q5tTMJ16iGg7NZTza+CaHHR5KjfD/2T2l2ZIeqkihXdsRBR6LiJBLq8opGlsNtVlmDvwL6LqW', '1', 'I want live at here', '', 'dasdasd sadf sadf asdf asdf ', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1439225084),
(16, 1431482042, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '10KaA8JpKxhM16xirAyRtKwYXZUYybGedlC/LbqQqCJFwZs7QxXtxzTgpT+qDPU/ohEnaSfrryjuKDOmLGrfV5ZEs9T3WdAAEAVtEx8GxNicBm1XkP1ifM49NQS5fzNdHt6QhDbwouxTWOo1dwThLM36IyS0QYUX2dUFYOVDxkLJT3ZtqZHVEPHYkzhFoRCf5NRYhXOOOuZEFSG9nCrWx0hNYl2/Dz78tSCL1dltZWv+Pl8gwXbyRSDgkxu0FcV4', '1', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 4b6e16d36', NULL, 0, 0, 1438418872),
(17, 1431482042, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'wMRQneYuoD1EHERULzViSehPpmYXiiCBnGy8BvcbxGFPZFzSejr9L+jSQa9jhqXPPaRf0kyFl1T9uEgA0IF127jaXV8TCIbIgNJOzJGTJaM/xYxuRnJPoO8inKcGffKbzGw5NOlTrqQ4tGOgqzfogt+IdAXF24mTQOrIQ50R/RmUUSHTKovkP9oERtCWbg5jM+HC327Wl2m1hDDeupRe/30UieH2B9BqiL4bGTX2ZizzpEU16s2aUa25IsWA8B/l', '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 314482e1c', NULL, 0, 0, NULL),
(18, 1431482042, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'V0frnqgI4Q3T9H2dvYyZP9ww7huYfnq4JvjAzz8yZ0JYeg+5mDKsC4dLQKqDoO7+AhxN+RlSwTEYTGooYSNoqjv3vhPYFsRpcu8EHtT8cgKNTL5UxkVNOaUNuNRe0Te2JHchlngxDnSwCbcWmYZnWgXI0tJot+EgEajDYRhRo/HdTNmGi3YPrvSjxkAIO51NlJuuIE4kWJJRrtjQXTNtjJWc33D9N4W/7MZiH5zIzhvkkAXf2CB0sKBsK9wTjumZ', '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'b6b3e0c602', NULL, 0, 0, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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
(28, 1439222021, 'id', '15', 1, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

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
(84, 0, 1439222016, 1439222016, '6808e60a');

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
  `thumbnail` varchar(20) NOT NULL,
  `thumbnail.path` char(10) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_cache`
--

INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) VALUES
(3, 15, 'user', 15, 1435497531, 1438402665, 'da65d66b', '0461491b', 'ed269e40', '81a4002e.mp4', 'GanhhaoTimelapse.mp4', '81a4002e.png', '705d5894', '0', 'video/mp4', 41635653, 42.666668, '85f7ab95');

-- --------------------------------------------------------

--
-- Table structure for table `videos_comment`
--

CREATE TABLE IF NOT EXISTS `videos_comment` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) DEFAULT NULL,
  `comment.id` int(11) DEFAULT NULL,
  `author.type` char(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `content` text,
  `logscontent` text
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
  `file.sd` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.sd` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.sd` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec` char(10) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(5, 15, 'user', 15, 1, 1433581762, '5ced9004', 'f65f1d77c7249b922f6487e72dfcf149', 'bÃ i hÃ¡t Ã½ nghÄ©a', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', '', '', 4, 4, 4, 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', '0', '0', '18338411353ae839453c12c1c70d39fe.mp4', '', '0', '0', '8937f9a7586f9f04ccf805dadbab3ba7', '43f28c42', '0', '0', 'e6ed291b', 0, 28178996, 'h264', 360, 480, '4:3', 675286, '2997/100', 333.831665, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 334, 128000),
(6, 15, 'user', 15, 2, 1437042379, '0e3e4465', 'dafae35eaa0ac8d49b7b071af45868cc', 'Biáº¿t nÃ³i lÃ  táº¡i sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, '8d301478c02c5f731933f6ee94a523bb.png', '0', '0', 'ae27b319134ea5f37f1b16eebf669cf5.mp4', '', '0', '0', 'd60188b6fca5f034cedbabf6af1f0caa', '25492c91', '0', '0', '243d022c', 0, 47963315, 'h264', 360, 640, '0:1', 928819, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(7, 15, 'user', 15, 0, 1438248136, 'cd3f8ad5', '31bbec39178b8e5da312562e3655644e', 'sd', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, '8f56b6923d797b858a0e7e86b4cbf90f.png', '0', '0', '8bcba74c225d66cf80a0199ae3f4b5f7.mp4', '', '0', '0', 'd60188b6fca5f034cedbabf6af1f0caa', '31cd475d', '0', '0', '16a0f0fe', 0, 47963315, 'h264', 360, 640, '0:1', 928819, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'f364dca9', 'd326ecd0392994c4f04d1061663f9fe8', 1433580771, 'sÆ°u táº§m', 0, '', '', NULL),
(2, 'user', 15, '20dd2f49', '55e721384c4d94e613df7a41df89fcfd', 1437042379, 'Kháº¯c Viá»‡t', 0, '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1434037205, 5, 'user', '15', 1434642370, 18);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
(11, 1438949372, 7, 'user', '15', '0', '0');

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
-- Indexes for table `analysis_faces`
--
ALTER TABLE `analysis_faces`
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
-- AUTO_INCREMENT for table `analysis_faces`
--
ALTER TABLE `analysis_faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=710;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `music_info`
--
ALTER TABLE `music_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photos_tips`
--
ALTER TABLE `photos_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_views`
--
ALTER TABLE `photos_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_edit`
--
ALTER TABLE `status_edit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_favorite`
--
ALTER TABLE `status_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_videos`
--
ALTER TABLE `status_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `videos_comment`
--
ALTER TABLE `videos_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
