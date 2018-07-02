-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2015 at 04:34 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=704 DEFAULT CHARSET=latin1;

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
(703, 'en', 'source', 'source', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(3, 1438944590, 'user', 15, 'unfavorite', 'status', '160', '', ''),
(4, 1438944594, 'user', 15, 'favorite', 'status', '160', '', ''),
(5, 1438948156, 'user', 15, 'unfollow', 'status', '156', '', ''),
(6, 1438948154, 'user', 15, 'follow', 'status', '156', '', '');

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
('1opA5mR3WzszMxIdBiVD07P9jfCj7AB3JckvCwntM2d', 1438958011, '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', '7bf1071f40bc5f4684eedd887d275144');

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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

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
(161, '1b450d6c', '2e80e57281a12f7016cee3c77a8daf7f', 1438852013, 1438852013, 0, 0, 'user', 15, 4, 2, 3, 'status', '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', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

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
(159, 1438852013, 161, 'user', 15);

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'UZFbeSJE0sskLPWnoVn+b5dDqrJR89q8zPAdBno6rm3WkBB7da7VM2B5vJ0tp107tGZhuuqp3e8vcZLuyJPGR8i/XMqKQEJew1KcDRVgzXBBCyNDG2jGP9WI+BfUznBn29zPHDfAW9kctobQDtdk4xEu7oeASIc3JiHypz8Ha6zxpubdGeRS7Y7Q5tTMJ16iGg7NZTza+CaHHR5KjfD/2T2l2ZIeqkihXdsRBR6LiJBLq8opGlsNtVlmDvwL6LqW', '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1438958011),
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

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
(20, 1438949174, 'id', '15', 1, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

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
(60, 15, 1438954413, 1438958011, '6808e60a');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=704;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
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
