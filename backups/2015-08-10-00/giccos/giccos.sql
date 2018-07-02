-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2015 at 04:53 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=latin1;

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
(706, 'en', 'description_about_live', 'description about live', 'false');

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
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAAEgAAD4EADg4ODg4cHBwcHBwqKioqKjg4ODg4OEdHR0dHVVVVVVVVY2NjY2NxcXFxcXGAgICAgI6Ojo6OjpycnJycnKqqqqqquLi4uLi4x8fHx8fV1dXV1dXj4+Pj4/Hx8fHx8f//////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQF6CIAACAAAA+BNFmWJQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAEPgCvl9AEAISy22X/b77bVn3gmD58EDgIAgCDhJp5/id8Hwf+CEEDn8Dvyng/ygIAgCBxiwfB8HDkEP/D/EgIO//Lh/wQ+BAx/+sPiAyKhEolErJbtLpM3mwUDXY16VZLkAydgNW4wR/DZyDJz+Sqx0HQCoyytnd/O1LEIQ8CsSCXK/vO3n/UZFltQdJsX1vw+xzP/dQzKEI0chCgvbMYfZvU3P3FJXTrAl8ULGRlqE4kBdXfKffJuAngoWCMPUmnQDBFoUpS4QFAJP/40LEf0cUBqZfmsED2FBfpMrf73+P44WJdSwHA8hnePwqssUGRCxYsEDYcDvompMOGpbZxww/D7u7t63e3hu7q3d7f3kJGFnizmqhWYkAeBRl3XBb5OJcAQcWhlrv4/j+GV/9/uphn3LeeXN/veOACIwZkyJyWoOcjikOTFB0GgIjs8UMRzLohA3IIHN25hlc/8fx33t/tfHDeG97w1hfy/ve59+xYIuerupIRiwSDYbnWa3W/zWXVyy92DOflx5CmgQmQ+tBfPAU3Qy5QVFvcP/jQsQmNZNu8l+ZoQINwKC/4gGFAgrw55aPIgGiwoHBswDZoO8K1DLgYTZ8DIDAFDAegSAuMBhEGRAstHPFxqVyNFLl8WagfJhtc0ay4/FYiJXYmhcian6dK+xIETPlkrEsRInSJe9Tb97KI4cgMvl4R4OWPZACFIIMmKCLhRG6HwC0kRHY5WLJMd3Rd+qVSBnTNinPrIigQUliyRU/16v6H/+UVmJks+zFxE45g6jQ8bmnOm5JIdAreg+1pmqANJAinrHdj9zsx/z5BBYmd+yP/+NCxBMfU7b+P8kYAkfE/u6z7QCJAot9fcUADKBCQ/iiLcIhBCDgb13eFhCQoX//7uHuYM4Ihdl+z+Ehv00lOKfRfk6JSdLA7nxD4iSgboTud/+fudLf++VucThppu967mUQvyPI004Vdz3c+Im6CMTh+D84X2rqAOB8pKOAGIzILzvGouj7yZCoosjRU4JFAIDsqYBYQoha9I2TgSJA6HF7Gg8dJCh6IiZwcaWmYi/DW2I0mObfXKB2mlMul0AwRK3JkrJWvRFrrwPO+Bc5Ilf/40LEWTyjsqwEywex1QrmaEmShMS/ex4GzKbrwcVny9Vh3XdFTesDQEB0EASDgf1iyTNCJCx1aTz8/iOz8ezZGkWBQPYTlcdojQiBIWzo+gHUe7LiueKHURkhQpSkjj8+JrNCkV+po6kZVEIILEBMXA72Kp051G1jnPLYZbOI/9aqa3G92bU6b931E21I2wpjj1UIlV2jZ8edUXKAkeLXMfjNDWS/2gC7qs+gWcJ6kUyX0O6H4jiW5el3V4JvoKs5aygKc+MzibpkOXpgg10pEf/jQsQqLItmsAbDBv2YPpxc6uXbi4yvRlbT6renbW/LW+2VrNZZiae46Tk2KVxdBEQicffi5OAKFNx6J0tE6/HTtpOXTp7eJIkrWT11kknBi4BAwEBUSFFAQo9mq1Y3xmUqoVegIE4CSqFAQFqTHV+M20Y2qhUFZepF26kCayMyrOs0PDLzHg10X/FoBxr2JDpaWXNsVQCkFm0SggBbo54GnOG1l3m5s2dZ9UI2SyZJSdCVVGDWZSoGMTxjnrQYlrHY3MsQOVBRGw2IboaKg3iA/+NCxDslG/6UVMJGbHgT0hYlmitwFVZhUwqBasxQ3a0OMTygjMhneGKc4caki9eMTGZtoeRN/kWrgyKM5aKc0Ny5BZelhL78pLGKtz75kwMszT8Gwz4xBhNwyOZYlNFx2IcCCJNNygCpY3Gmo5KHb2RDwvWTN0j7Zt5MNJijiVUdAzC401bZBBO4tJykZqWjhIzmCCM5jOcZocGMwYSB7Qgxuixgs9Lrm6L5BqaqnCOWEWGIjekJRTsIiOkZbkhNVpGe0szcynPQFXkmgXPGhDb/40LEaiGz1qG+YYY11KdmvAhJkEtVEc9zYk7K2/s50zy+YM5bXCajJaIAqWSzWTW/bigQEWtFPYdFsIeLlLZca19FSkq/ngYQTAgZ+tGb/c9VxblXXc5EyEyjO1pCjF5JIRytTmfCgztdiNWPWNKCuSJkOXD9wbqslZjMECyImOSw/+efn0yumSQxsqW3ofznnk9y+Z53S28vdyV5bmORRkEVIO9VBuoCJDjXe6zXfbuICC61EoOoMPwHR4NoyZx17yKmwiVdBCJfzupy+ubhwf/jQsSnH1Pmul4whsGFtLzF2OpvDfawFCJCPhW7vIcR0OBM/a1fTEJBKmzNYib5HjJDHkEEakGIRGm759vkbKJTbfHj3t8ulaLyumvakuoT9vQKLTyXEOSrAPbK6xTEFNRTMuOTeqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgk3HJJI45JK042Djj1VikrOKPkIEAvaODrVi5OQQQvxn2CdI2tM4bZug3v8HDGGakCFCtTPLTSHXpd4/+NCxO0eYna6/hiGoXzpnMSRHGKqbQ+jsS/+Dtkyvw2t0d/zvrO/7YrIuxs+cbum9KWK3aZPOoXlw++czy1zjZGfdPy64oxobrB9g1eOT0DhMJMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqJudklkkltsUeEM0F6bpAkWg1ee8XRAIJGq5/NjzK2s0zSMZEj6FZGkZWocSDrRq08YyMPE2VrKvqtcr/40LE/yAT1speYYZfrUNQbuMOAt1+6SkmTf2RdJmLyFnHuvo9W/GPIS50j7NTKUoS2NQSIJz+819YZRv/fMofaSmYbfdpeq8nv0ytMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqpCkpxs4cJQzJoDTV3NdXAztiV6O0lyWyvnKKpMfHLmqmOpb6SZG0iLK4oCJmlLMQIlqMuVSsqZjC23dP/jQsT/HnO2yb4xR1uKvyn0gaR0zciQIjIwl5NFelROtcdFypQRIuxWLMioH1MGyZ9fqo0xnrCbfPSxxMiu9vammrPneYbVofZknSZEOs01kAcILRowrkWdDRI389FH01knj+S8vfiN41XbGkvkrMo1Aumra3scgmhGII0xij0BWqhptoumIKaimZccm9VVVVVVVVVVVYBAQWlm6mx2of1CNCxCe0hDiuVtowyyAoi7sjgS6/JbAyHp8OnqiwuOD4+hWm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(3, 1438944590, 'user', 15, 'unfavorite', 'status', '160', '', ''),
(4, 1438944594, 'user', 15, 'favorite', 'status', '160', '', ''),
(5, 1438948156, 'user', 15, 'unfollow', 'status', '156', '', ''),
(6, 1439017319, 'user', 15, 'follow', 'status', '156', '', ''),
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
(24, 1439121752, 'user', 15, 'comment', 'status', '169', 'comment', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=latin1;

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
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;

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
(98, 'regex_hashtag', 'en', '/(^|\\s)#([a-zA-Z0-9\\_]+)/'),
(99, 'regex_usertag', 'en', '/(^|\\s)@([a-zA-Z0-9\\_]+)/'),
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
(247, 'hash_library_voice_content', 'en', 'g::key::library->voice->content');

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
('O2tlltaP5w3Ti3Q1ugjmLpFNRjUm1MAGIuF5tz0D-7e', 1439127780, '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', '7edc11a1e015fb5406ca12154c8d249c');

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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

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
(169, 'b127d051', '9ea42d04f371ae7308c802da5e5ee09d', 1439029481, 1439029481, 0, 0, 'user', 15, 3, 3, 3, 'status', '8hoNZspul7GkkWj83I6HO5YRkQjPmN6R8YUz+DMwiCQ=', 0, 0, 0, 0, 0, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '3e0b7c4b', '95737622be7b632c37238c26ee4911e7', 1434099491, 'status', 37, 15, 'user', 15, 0, 'YursVAgxspJ6FNEQnSSJB0xBE+R5xjwAnfQjNaI8hcg=', ''),
(2, 'd5e559a9', '9ae01a426ad7faed89bf6dcfef67a3f6', 1434099557, 'status', 34, 15, 'user', 15, 0, 'ezdspZEZPfPNnNm/O1eX0El168q5OMEbb2O0DsZ8NDQ=', ''),
(3, '8f0d2287', '26f4d43ed7818df975778d3c359fc84c', 1434099997, 'status', 41, 15, 'user', 15, 0, 'WdNOabHy7kJQ1TmFsqYXDiqfGsHO91cBY3QaFiMhjtg=', ''),
(4, '0977aefe', 'd821878976f6b66ff8c1f57be6c4165f', 1434100004, 'comment', 3, 15, 'user', 15, 0, 'NVc2rcttXgIA1Zs95Z+3LOv1wytAqvcRl40VoHUNoAQ=', ''),
(5, '8ed1ac28', '3f3b32df1842494dc471f98fc6dbf18f', 1439121752, 'status', 169, 15, 'user', 15, 0, 'Qsjnp2M/ZB1JPJ2N3qqL4BWDSHqTfCdnqDo3tGi9ulY=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

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
(172, 1439029481, 169, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

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
(20, 159, 'love');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
(9, 158, 1, '[feel]happy');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
(8, 158, '402');

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'UZFbeSJE0sskLPWnoVn+b5dDqrJR89q8zPAdBno6rm3WkBB7da7VM2B5vJ0tp107tGZhuuqp3e8vcZLuyJPGR8i/XMqKQEJew1KcDRVgzXBBCyNDG2jGP9WI+BfUznBn29zPHDfAW9kctobQDtdk4xEu7oeASIc3JiHypz8Ha6zxpubdGeRS7Y7Q5tTMJ16iGg7NZTza+CaHHR5KjfD/2T2l2ZIeqkihXdsRBR6LiJBLq8opGlsNtVlmDvwL6LqW', '1', 'I want live at here', '', 'dasdasd sadf sadf asdf asdf ', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1439127775),
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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
(23, 1439121713, 'id', '15', 1, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

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
(72, 15, 1439124426, 1439127775, '6808e60a');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=707;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=424;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=170;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
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
