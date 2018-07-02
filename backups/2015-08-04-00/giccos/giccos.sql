-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2015 at 06:38 PM
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
(1, 1, 15, 16),
(2, 1, 16, 15),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=latin1;

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
(697, 'en', 'click_open_site', 'click here to open site', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAAEQAADrAADw8PDw8eHh4eHh4tLS0tLS08PDw8PDxLS0tLS0taWlpaWlppaWlpaWl4eHh4eHiHh4eHh5aWlpaWlqWlpaWlpbS0tLS0tMPDw8PDw9LS0tLS0uHh4eHh4fDw8PDw8P//////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQFISIAACAAAA6w6IRAyQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAEVgCll9AEAICO63W37ff/+JDgnB8HwQlw+XfB94P4fLn+H4IQTD5QEPDBR1UEOUDBd8EInD5fz/Lv4P/lPDBR1UEOUOf+Xh/lz/D//2KQLKqcTrtdsuu12u12uOE1fEWwq2Uq3TsYVvASACL+xqsV5HGPEvrFrAfg5SdBqnCP4rdG8IkJQEiLuNyfVZ4l62l0iDLJYsoJKPXbJ9vPBp64E1FyLaISOYoxusUWyuaFHP8WrCvUmA+0NMgubcYp9luVBptasQ9cyN7bCn/40LEfT3Tvq5fmXkDc4l9a8tqHEGLqexfjfNxsQs6EbGm3d4+i4fOp7Qdevz/nFueSALiaSGl9PY7z3OQt51nAS825rzb1MzvIivVkjGwPrWxvFr6tmuM154oMykNVx/Jk/Egh5bFAjzIQKOShkocra0jRL7eQ6yQ3tocG15SvkisLIo300Fqr30fjSqoRRBoC/hFzvFgGGRylyaS18zM6GnlNg4zD8Y+xuB21oCQAGQAAiJgHTghHm6GFqgFAA7ADggBQoM5CYEDBDfisic2LP/jQsRJPgR2bAGboAASwGcFASVjHD4FDt8dhUIOMoQEky4RAqlQXKRZ9uXCgWiyomzUixJFw2IISpE/+o0NC+pTGBcNSNNHkoQY1J7/8pk+mTBcLxaczLxqRAeCXjTIaL8aI7hyhky0Wv/+aJn0Ky+7qZZ9jQcI9GBEVj6PkUUQwpGyTk//t/8snx3uaE4sn1kwsiC3OldRFD1issvkXNibLyZqTZeSOm47zyyKK/5mRc3PmiuYokYRctEOgASmU7G7uOY4R+5m8yZwkj0w2+42/+NCxBUhE9r2H8YoA88qHwOIEDg7V7M9bIhZ7HiA0XOggHBSuIBxhM4oqK7HfWp50bE3oKXesjJ0ECRofc65z4g1BQ6RjRAUz1dWOc8gpiBXuSdfznQ5/IQg8hNGqRGVdVZRejc55CMx8jEU9dqnPFJ3uzMzEGT8WxOqwOqEEkG+uTu4d4gFdrrs/D/tGhXR5CGsOXgoqAplNAGtYeSoo3nVJYTmqzqrMUlkP6sY0iWZpEiaTJctODRCcXYac65GFx8giG2dIMUIMUQPnOr9X5z/40LEVCtz5vY3SUgDk5yVn8PXNA3NKc7WrpRjTvb3XNiTyO6I1kSM0VRQ3HfM3/P62BaCeLN1KP6Ltar7z+2bvGvF36j6SX20txJXMaVV1ndYlk3VOtXSWWtrFXwjCtYayUmRFJgqAQNKxeBwDAaPr6t5rGvtKuu5IfkpETFS3a7XT0B7UjQIGGYdDbIHLytwTGdbqw3OSz6W7UxqY3s52dsTtLq/U59qNVceWZTV3dpdcx3ul1rXNym/lZpq1A6Wef1eWscstWpdLrCqzKoIXv/jQsRqPCwGqH+YwACK0vPBysK7sH2qxW9XgWmlesvrSqrjdpUMk0n3sRCJuKsV+n2eqA4F3Xncc7Ot0tL9jWOGW995zX35VE8L1DUpd1r12tznec/mOXMcsOZ4Y4TVPX7U1NaxwtU+NamuW9au7lNSl5eztbx7qvhb/H62+c/v6/esvy1lnjr+b5rdXHmPN2RoC00BuF2BtAZgcwhxLlU2ltLcTo0kOZt5gxd5gvVa9i6hAICAgIlf/ZgICAmOMGFM3/6qAgIlT//ZlVfZmP///+NCxD0kCh5YE88YAVVgwpm/+qAgICqlqqlxgJSjMzMfn9VQEKfj4SCgv5X/L4wUFBQV8UFBQYK/8gU3IKCQUFBQUKCgo7//+AoKCgoMFBQUFf///QUFBQoKCgoJFfkFKhWMjZihgYIGQ4wkCChgYIOEDnb8zBQwMEDCB0I7LLKrLLKjmssssZQwMEDRyEsFBAwQcI9lllI2ChgoIGEDoRrLLKrKCBgnRzWWWVP///////+KoYKCBgg6DigEMFBAwgcIj/+agIYKGBgg4QWOrWX/40LEcCSL6NwXQhgBlksssdC//6rLLKjn//WYKGBggYRxAllBAwTgdVVUy9VVU1UAgMCgQCgUCgYDAcDgb0EPNDLwkB78cwnP+YHi+J0/8tE+Qgy44//y0TZuLPEpkT//w5MLgx3gEkApixgEv//8AdixgC0D9C08MJg2fGmGR////wbFkmGIw5cmAbNh045gwxHAcoKN////+FnAbEBpYWuA2OBtQN8CygTkDcgGxAbUDYAFpgs7//////xQA4BnA1YI8G+QA0PGbuhQWbnT6v/jQsShKBwSvl+NiAICDCAVCk6PocjsdDsq0a0G0ZpbInselesbBxG1/rN4T6PJ9YzX/UN7n7/3f6/34E8tW1OzRIVd6/+9029UM6yLapL49s6/+d7phUmTKfpbVUokNcsavm0Hd7f6zqHWay+nYERxT7Ks33Ch5jxIdq41vec49Mf39df5kb1QuFRVy04QswoVP7fWde2tYpnf/z7/H1//2Npa4uGTU3iwoe40Sj1q3P7RrVlDfoolH0MeigbjRBacDpUXV5mR7rVpec22dDHf/+NCxMQr446xv4l4ADMu3nb6UYW9HM8y2E70ymjEDj/2wu/E3OzetBGEr+XDa/1XXUmJURt3XctTPvfOnanUiRYnc8liBiGrLxzZUty8Qt1Z+5GkWnJhuyJ0fw2eIz0U04+2v9ymM3fGr7/48VclR5PaZwpFUeWrEYQa0WKh5n/GszTiMBV6327nK2Yty/2XaYgpqLVVBq7uNtNtw4JpMly5V0S7h0VkkTWs3EiTgpbZjM01rMFAREyJwoOBgInJVX+mRgjfU9A2FzfinQaECYL/40LE2CXb/qBfzDABA6jSgp5mSjMxygn4yoLMtwcZjfJjucpGD9OMjtmZK2cOGorUmZlz7GC0wI7DyPNhTtDanVVS+3IoTHyrpe69eEdrMpBsetNTBQ+ayDJiCmopmXHJuqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqoAhNSWNFyWlUEl4SEpDLepF1mDI5eV5AqdgPzVCLq1qUouq0LUXh5K39RbWCSQjRLIG5lUa6GFOk+KtP/jQsT/IevGuZ5Jhh+LEU2NxlfVjKy7MFpp4yhmhnVqxqOTfGGXGVqM2hhiJtJa3QVLCbWorsJbsJLrRmpK4oYtXvZVt0LyFptLJe4e5tLJffqz46eSXVxs9KKzT+vkMmieyq1FRetc2WNzr3CR2SbWHmj+OlFC6M26YbMu2atVCMJVascWxOK0Kk9O9jUxBTUUzLjk3jrEgAirKr5hIQdQM2mhmafmK0sVfm3PwBNW6XCyqLdXGkypwuYWRxTW2NZEhQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_words`
--

INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES
(9, 'en', 1438706177, 1438706177, 'love', 'noun', 'A deep, tender, ineffable feeling of affection and solicitude toward a person, such as that arising from kinship, recognition of attractive qualities, or a sense of underlying oneness.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(10, 'en', 1438706177, 1438706177, 'love', 'verb-transitive', 'To have a deep, tender, ineffable feeling of affection and solicitude toward (a person):  We love our parents. I love my friends. ', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(11, 'en', 1438706181, 1438706181, 'like', 'verb-transitive', 'To find pleasant or attractive; enjoy.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(12, 'en', 1438706181, 1438706181, 'like', 'verb-intransitive', 'To have an inclination or a preference:  If you like, we can meet you there. ', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(13, 'en', 1438706181, 1438706181, 'like', 'noun', 'Something that is liked; a preference:  made a list of his likes and dislikes. ', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(14, 'en', 1438706181, 1438706181, 'like', 'preposition', 'Possessing the characteristics of; resembling closely; similar to.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(15, 'en', 1438706181, 1438706181, 'like', 'adjective', 'Possessing the same or almost the same characteristics; similar:  on this and like occasions. ', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(16, 'en', 1438706181, 1438706181, 'like', 'adverb', 'In the manner of being; as if. Used as an intensifier of action:  worked like hell; ran like crazy. ', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(17, 'en', 1438706184, 1438706184, 'fuck', 'verb-transitive', 'To have sexual intercourse with.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(18, 'en', 1438706184, 1438706184, 'fuck', 'verb-intransitive', 'To engage in sexual intercourse.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(19, 'en', 1438706184, 1438706184, 'fuck', 'noun', 'An act of sexual intercourse.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(20, 'en', 1438706184, 1438706184, 'fuck', 'interjection', 'Used to express extreme displeasure.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(21, 'en', 1438706185, 1438706185, 'fuck', 'phrasal-verb', 'fuck off  Used in the imperative as a signal of angry dismissal.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(22, 'en', 1438706185, 1438706185, 'fuck', 'verb', 'To have sexual intercourse, to copulate.', '', '', 'from Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `things` varchar(20) NOT NULL,
  `things.id` int(11) NOT NULL,
  `obj` varchar(20) NOT NULL,
  `obj.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(1, 1431546174, 'user', 15, 'add', '', 0, 'status', 1),
(2, 1432051085, 'user', 15, 'add', '', 0, 'status', 2),
(3, 1432051223, 'user', 15, 'add', '', 0, 'status', 3),
(4, 1432051278, 'user', 15, 'add', '', 0, 'status', 4),
(5, 1432051327, 'user', 15, 'add', '', 0, 'status', 5),
(6, 1432051385, 'user', 15, 'add', '', 0, 'status', 6),
(7, 1432051455, 'user', 15, 'add', '', 0, 'status', 7),
(8, 1432051647, 'user', 15, 'add', '', 0, 'status', 8),
(9, 1432051716, 'user', 15, 'add', '', 0, 'status', 9),
(10, 1432051907, 'user', 15, 'add', '', 0, 'status', 10),
(11, 1432052165, 'user', 15, 'add', '', 0, 'status', 11),
(12, 1432052378, 'user', 15, 'add', '', 0, 'status', 12),
(13, 1432052430, 'user', 15, 'add', '', 0, 'status', 13),
(14, 1432052517, 'user', 15, 'add', '', 0, 'status', 14),
(15, 1432052598, 'user', 15, 'add', '', 0, 'status', 15),
(16, 1432052854, 'user', 15, 'add', '', 0, 'status', 16),
(17, 1432052901, 'user', 15, 'add', '', 0, 'status', 17),
(18, 1432053047, 'user', 15, 'add', '', 0, 'status', 18),
(19, 1432053216, 'user', 15, 'add', '', 0, 'status', 19),
(20, 1432053292, 'user', 15, 'add', '', 0, 'status', 20),
(21, 1432214173, 'user', 15, 'add', '', 0, 'status', 1),
(22, 1432488658, 'user', 15, 'add', '', 0, 'status', 2),
(23, 1432488695, 'user', 15, 'add', '', 0, 'status', 3),
(24, 1433573670, 'user', 15, 'add', '', 0, 'status', 4),
(25, 1433574861, 'user', 15, 'add', '', 0, 'status', 5),
(26, 1433576050, 'user', 15, 'add', '', 0, 'status', 6),
(27, 1433576139, 'user', 15, 'add', '', 0, 'status', 7),
(28, 1433576595, 'user', 15, 'add', '', 0, 'status', 8),
(29, 1433576664, 'user', 15, 'add', '', 0, 'status', 9),
(30, 1433577496, 'user', 15, 'add', '', 0, 'status', 10),
(31, 1433577702, 'user', 15, 'add', '', 0, 'status', 1),
(32, 1433577803, 'user', 15, 'add', '', 0, 'status', 2),
(33, 1433578315, 'user', 15, 'add', '', 0, 'status', 3),
(34, 1433578576, 'user', 15, 'add', '', 0, 'status', 1),
(35, 1433578819, 'user', 15, 'add', '', 0, 'status', 2),
(36, 1433578903, 'user', 15, 'add', '', 0, 'status', 3),
(37, 1433579201, 'user', 15, 'add', '', 0, 'status', 4),
(38, 1433579663, 'user', 15, 'add', '', 0, 'status', 5),
(39, 1433580058, 'user', 15, 'add', '', 0, 'status', 6),
(40, 1433580136, 'user', 15, 'add', '', 0, 'status', 7),
(41, 1433580321, 'user', 15, 'add', '', 0, 'status', 8),
(42, 1433580570, 'user', 15, 'add', '', 0, 'status', 9),
(43, 1433580704, 'user', 15, 'add', '', 0, 'status', 10),
(44, 1433580772, 'user', 15, 'add', '', 0, 'status', 11),
(45, 1433581048, 'user', 15, 'add', '', 0, 'status', 12),
(46, 1433581174, 'user', 15, 'add', '', 0, 'status', 13),
(47, 1433581261, 'user', 15, 'add', '', 0, 'status', 14),
(48, 1433581776, 'user', 15, 'add', '', 0, 'status', 15),
(49, 1433745199, 'user', 15, 'add', '', 0, 'status', 16),
(50, 1433753226, 'user', 15, 'add', '', 0, 'status', 17),
(51, 1434036454, 'user', 15, 'add', '', 0, 'status', 18),
(52, 1434036487, 'user', 15, 'add', '', 0, 'status', 19),
(53, 1434036648, 'user', 15, 'add', '', 0, 'status', 20),
(54, 1434092540, 'user', 16, 'add', '', 0, 'status', 18),
(55, 1434096785, 'user', 15, 'add', '', 0, 'status', 19),
(56, 1434096829, 'user', 15, 'add', '', 0, 'status', 20),
(57, 1434096883, 'user', 15, 'add', '', 0, 'status', 21),
(58, 1434096955, 'user', 15, 'add', '', 0, 'status', 22),
(59, 1434096997, 'user', 15, 'add', '', 0, 'status', 23),
(60, 1434097025, 'user', 15, 'add', '', 0, 'status', 24),
(61, 1434097050, 'user', 15, 'add', '', 0, 'status', 25),
(62, 1434097305, 'user', 15, 'add', '', 0, 'status', 26),
(63, 1434097410, 'user', 15, 'add', '', 0, 'status', 27),
(64, 1434097810, 'user', 15, 'add', '', 0, 'status', 28),
(65, 1434098084, 'user', 15, 'add', '', 0, 'status', 29),
(66, 1434098822, 'user', 15, 'add', '', 0, 'status', 30),
(67, 1434098924, 'user', 15, 'add', '', 0, 'status', 31),
(68, 1434098977, 'user', 15, 'add', '', 0, 'status', 32),
(69, 1434099014, 'user', 15, 'add', '', 0, 'status', 33),
(70, 1434099027, 'user', 15, 'add', '', 0, 'status', 34),
(71, 1434099164, 'user', 15, 'add', '', 0, 'status', 35),
(72, 1434099202, 'user', 15, 'add', '', 0, 'status', 36),
(73, 1434099203, 'user', 15, 'add', '', 0, 'status', 37),
(74, 1434099562, 'user', 15, 'add', '', 0, 'status', 38),
(75, 1434099787, 'user', 15, 'add', '', 0, 'status', 39),
(76, 1434099911, 'user', 15, 'add', '', 0, 'status', 40),
(77, 1434099993, 'user', 15, 'add', '', 0, 'status', 41),
(78, 1434100458, 'user', 16, 'add', '', 0, 'status', 42),
(79, 1434121490, 'user', 15, 'add', '', 0, 'status', 43),
(80, 1434700352, 'user', 15, 'add', '', 0, 'status', 43),
(81, 1434700624, 'user', 15, 'add', '', 0, 'status', 44),
(82, 1434700729, 'user', 15, 'add', '', 0, 'status', 45),
(83, 1434700814, 'user', 15, 'add', '', 0, 'status', 47),
(84, 1434701005, 'user', 15, 'add', '', 0, 'status', 48),
(85, 1434701059, 'user', 15, 'add', '', 0, 'status', 49),
(86, 1434778944, 'user', 15, 'add', '', 0, 'status', 50),
(87, 1434779051, 'user', 15, 'add', '', 0, 'status', 51),
(88, 1434787496, 'user', 15, 'add', '', 0, 'status', 52),
(89, 1434787533, 'user', 15, 'add', '', 0, 'status', 53),
(90, 1434788628, 'user', 15, 'add', '', 0, 'status', 54),
(91, 1434788778, 'user', 15, 'add', '', 0, 'status', 55),
(92, 1434789174, 'user', 15, 'add', '', 0, 'status', 60),
(93, 1434987597, 'user', 15, 'add', '', 0, 'status', 61),
(94, 1434987761, 'user', 15, 'add', '', 0, 'status', 62),
(95, 1435048621, 'user', 15, 'add', '', 0, 'status', 63),
(96, 1435048700, 'user', 15, 'add', '', 0, 'status', 64),
(97, 1435048714, 'user', 15, 'add', '', 0, 'status', 65),
(98, 1435306006, 'user', 15, 'add', '', 0, 'status', 66),
(99, 1435405192, 'user', 15, 'add', '', 0, 'status', 67),
(100, 1435409271, 'user', 15, 'add', '', 0, 'status', 69),
(101, 1435409420, 'user', 15, 'add', '', 0, 'status', 71),
(102, 1435409445, 'user', 15, 'add', '', 0, 'status', 72),
(103, 1435410307, 'user', 15, 'add', '', 0, 'status', 73),
(104, 1435478658, 'user', 15, 'add', '', 0, 'status', 74),
(105, 1435478842, 'user', 15, 'add', '', 0, 'status', 75),
(106, 1435479130, 'user', 15, 'add', '', 0, 'status', 76),
(107, 1435479162, 'user', 15, 'add', '', 0, 'status', 77),
(108, 1435479395, 'user', 15, 'add', '', 0, 'status', 78),
(109, 1435479865, 'user', 15, 'add', '', 0, 'status', 79),
(110, 1435479929, 'user', 15, 'add', '', 0, 'status', 80),
(111, 1435479998, 'user', 15, 'add', '', 0, 'status', 81),
(112, 1435480245, 'user', 15, 'add', '', 0, 'status', 82),
(113, 1435481392, 'user', 15, 'add', '', 0, 'status', 83),
(114, 1435484831, 'user', 15, 'add', '', 0, 'status', 84),
(115, 1435485707, 'user', 15, 'add', '', 0, 'status', 85),
(116, 1435486127, 'user', 15, 'add', '', 0, 'status', 86),
(117, 1435486167, 'user', 15, 'add', '', 0, 'status', 87),
(118, 1435565495, 'user', 15, 'add', '', 0, 'status', 88),
(119, 1435801741, 'user', 15, 'add', '', 0, 'status', 89),
(120, 1436757995, 'user', 15, 'add', '', 0, 'status', 90),
(121, 1436758471, 'user', 15, 'add', '', 0, 'status', 91),
(122, 1436758890, 'user', 15, 'add', '', 0, 'status', 92),
(123, 1436759155, 'user', 15, 'add', '', 0, 'status', 93),
(124, 1436759328, 'user', 15, 'add', '', 0, 'status', 94),
(125, 1436761882, 'user', 15, 'add', '', 0, 'status', 95),
(126, 1436761890, 'user', 15, 'add', '', 0, 'status', 96),
(127, 1436762676, 'user', 15, 'add', '', 0, 'status', 97),
(128, 1436763913, 'user', 15, 'add', '', 0, 'status', 98),
(129, 1436764391, 'user', 15, 'add', '', 0, 'status', 99),
(130, 1437032312, 'user', 15, 'add', '', 0, 'status', 100),
(131, 1437033632, 'user', 15, 'add', '', 0, 'status', 101),
(132, 1437034298, 'user', 15, 'add', '', 0, 'status', 102),
(133, 1437038930, 'user', 15, 'add', '', 0, 'status', 103),
(134, 1437039398, 'user', 15, 'add', '', 0, 'status', 104),
(135, 1437040027, 'user', 15, 'add', '', 0, 'status', 105),
(136, 1437041259, 'user', 15, 'add', '', 0, 'status', 106),
(137, 1437041344, 'user', 15, 'add', '', 0, 'status', 107),
(138, 1437041566, 'user', 15, 'add', '', 0, 'status', 108),
(139, 1437042394, 'user', 15, 'add', '', 0, 'status', 109),
(140, 1437293071, 'user', 15, 'add', '', 0, 'status', 110),
(141, 1437294181, 'user', 15, 'add', '', 0, 'status', 111),
(142, 1437639883, 'user', 15, 'add', '', 0, 'status', 112),
(143, 1437818619, 'user', 15, 'add', '', 0, 'status', 113),
(144, 1437818687, 'user', 15, 'add', '', 0, 'status', 114),
(145, 1437818718, 'user', 15, 'add', '', 0, 'status', 115),
(146, 1437818736, 'user', 15, 'add', '', 0, 'status', 116),
(147, 1437818764, 'user', 15, 'add', '', 0, 'status', 117),
(148, 1437818845, 'user', 15, 'add', '', 0, 'status', 118),
(149, 1437818877, 'user', 15, 'add', '', 0, 'status', 119),
(150, 1437818894, 'user', 15, 'add', '', 0, 'status', 120),
(151, 1437818924, 'user', 15, 'add', '', 0, 'status', 121),
(152, 1437818945, 'user', 15, 'add', '', 0, 'status', 122),
(153, 1437818970, 'user', 15, 'add', '', 0, 'status', 123),
(154, 1437818981, 'user', 15, 'add', '', 0, 'status', 124),
(155, 1437818991, 'user', 15, 'add', '', 0, 'status', 125),
(156, 1437819002, 'user', 15, 'add', '', 0, 'status', 126),
(157, 1437819072, 'user', 15, 'add', '', 0, 'status', 127),
(158, 1437819097, 'user', 15, 'add', '', 0, 'status', 128),
(159, 1437819142, 'user', 15, 'add', '', 0, 'status', 129),
(160, 1437835720, 'user', 15, 'add', '', 0, 'status', 130),
(161, 1437835728, 'user', 15, 'add', '', 0, 'status', 131),
(162, 1437835895, 'user', 15, 'add', '', 0, 'status', 132),
(163, 1437836069, 'user', 15, 'add', '', 0, 'status', 133),
(164, 1437836217, 'user', 15, 'add', '', 0, 'status', 134),
(165, 1437836263, 'user', 15, 'add', '', 0, 'status', 135),
(166, 1437836329, 'user', 15, 'add', '', 0, 'status', 136),
(167, 1437836373, 'user', 15, 'add', '', 0, 'status', 137),
(168, 1437836501, 'user', 15, 'add', '', 0, 'status', 138),
(169, 1437836510, 'user', 15, 'add', '', 0, 'status', 139),
(170, 1437836532, 'user', 15, 'add', '', 0, 'status', 140),
(171, 1437836548, 'user', 15, 'add', '', 0, 'status', 141),
(172, 1437893593, 'user', 15, 'add', '', 0, 'status', 142),
(173, 1437893629, 'user', 15, 'add', '', 0, 'status', 143),
(174, 1437893634, 'user', 15, 'add', '', 0, 'status', 144),
(175, 1437893637, 'user', 15, 'add', '', 0, 'status', 145),
(176, 1437893771, 'user', 15, 'add', '', 0, 'status', 146),
(177, 1438156117, 'user', 15, 'add', '', 0, 'status', 147),
(178, 1438156436, 'user', 15, 'add', '', 0, 'status', 148),
(179, 1438156800, 'user', 15, 'add', '', 0, 'status', 149),
(180, 1438158478, 'user', 15, 'add', '', 0, 'status', 150),
(181, 1438162266, 'user', 15, 'add', '', 0, 'status', 151),
(182, 1438164638, 'user', 15, 'add', '', 0, 'status', 152),
(183, 1438165634, 'user', 15, 'add', '', 0, 'status', 153),
(184, 1438191184, 'user', 15, 'add', '', 0, 'status', 154),
(185, 1438248149, 'user', 15, 'add', '', 0, 'status', 155),
(186, 1438402832, 'user', 15, 'add', '', 0, 'status', 156),
(187, 1438418369, 'user', 15, 'add', '', 0, 'status', 157),
(188, 1438419261, 'user', 15, 'add', '', 0, 'status', 158),
(189, 1438419352, 'user', 15, 'add', '', 0, 'status', 159),
(190, 1438703685, 'user', 15, 'add', '', 0, 'status', 160);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(5, 1433750606, 1, 'user', '15', 1434640107, 39),
(7, 1438698885, 2, 'user', '15', 1439303700, 18);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1433745205, 1, 'user', '15', '0'),
(2, 1434035297, 1, 'user', '15', '0'),
(3, 1438418376, 2, 'user', '15', '0'),
(4, 1438677323, 2, 'user', '15', '0'),
(5, 1438679891, 2, 'guy', '6808e60a', '0');

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
('JQAaYvHHMXNjtEu-VPM6K-iII-pC6o-oElmnAobZT86', 1438706187, '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', 'a15fc039fb30f1c2073356d500842267');

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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

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
(160, '2e950088', 'a3ababa6823cb3e1bb0b707baafbb528', 1438703685, 1438703685, 0, 0, 'user', 15, 4, 2, 3, 'status', 'e4eZ9uojZ65Xlul0EKxNZZtqPLt/I+jYdzBY86aufj9ZnDsTriqNwwCOVu427UOXOITTafvCVyNzeN1av4L0YUGZiu1Zz1ErHoajxRX+aRWIDXJzNz5LlZ9is/5Px1m0emi3BNO1weBILQab+VnnZu9ZBr6tKsq17v16Tcs/cyU=', 0, 0, 0, 0, 1, 0);

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
  `guy.id` int(11) NOT NULL
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
(1, '3e0b7c4b', '95737622be7b632c37238c26ee4911e7', 1434099491, 'status', 37, 15, 'user', 15, 0, 'YursVAgxspJ6FNEQnSSJB0xBE+R5xjwAnfQjNaI8hcg=', ''),
(2, 'd5e559a9', '9ae01a426ad7faed89bf6dcfef67a3f6', 1434099557, 'status', 34, 15, 'user', 15, 0, 'ezdspZEZPfPNnNm/O1eX0El168q5OMEbb2O0DsZ8NDQ=', ''),
(3, '8f0d2287', '26f4d43ed7818df975778d3c359fc84c', 1434099997, 'status', 41, 15, 'user', 15, 0, 'WdNOabHy7kJQ1TmFsqYXDiqfGsHO91cBY3QaFiMhjtg=', ''),
(4, '0977aefe', 'd821878976f6b66ff8c1f57be6c4165f', 1434100004, 'comment', 3, 15, 'user', 15, 0, 'NVc2rcttXgIA1Zs95Z+3LOv1wytAqvcRl40VoHUNoAQ=', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

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
(154, 1438402832, 156, 'user', 15),
(155, 1438418368, 157, 'user', 15),
(156, 1438419261, 158, 'user', 15),
(157, 1438419352, 159, 'user', 15),
(158, 1438703685, 160, 'user', 15);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'UZFbeSJE0sskLPWnoVn+b5dDqrJR89q8zPAdBno6rm3WkBB7da7VM2B5vJ0tp107tGZhuuqp3e8vcZLuyJPGR8i/XMqKQEJew1KcDRVgzXBBCyNDG2jGP9WI+BfUznBn29zPHDfAW9kctobQDtdk4xEu7oeASIc3JiHypz8Ha6zxpubdGeRS7Y7Q5tTMJ16iGg7NZTza+CaHHR5KjfD/2T2l2ZIeqkihXdsRBR6LiJBLq8opGlsNtVlmDvwL6LqW', '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1438705636),
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
(17, 1438703647, 'id', '15', 1, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

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
(50, 15, 1438705592, 1438705636, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
(10, 1438673976, 7, 'user', '15', '0', '0');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=698;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=191;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=161;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_favorite`
--
ALTER TABLE `status_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
