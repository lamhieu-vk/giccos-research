-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2015 at 04:47 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_words`
--

INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES
(63, 'en', 1438612584, 1438612584, 'love', 'noun', 'A deep, tender, ineffable feeling of affection and solicitude toward a person, such as that arising from kinship, recognition of attractive qualities, or a sense of underlying oneness.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(64, 'en', 1438612584, 1438612584, 'love', 'verb-transitive', 'To have a deep, tender, ineffable feeling of affection and solicitude toward (a person):  We love our parents. I love my friends. ', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(65, 'vi', 1438613081, 1438613081, 'weak', 'adjective', 'Thiáº¿u sá»©c máº¡nh váº­t cháº¥t, nÄƒng lÆ°á»£ng, hoáº·c sá»©c sá»‘ng; yáº¿u á»›t.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(66, 'vi', 1438613126, 1438613126, 'love', 'noun', 'Má»™t sÃ¢u, dá»‹u dÃ ng, cáº£m giÃ¡c khÃ´ng thá»ƒ táº£ Ä‘Æ°á»£c tÃ¬nh cáº£m vÃ  Ã¢n cáº§n vá»›i má»™t ngÆ°á»i, cháº³ng háº¡n nhÆ° phÃ¡t sinh tá»« quan há»‡ há» hÃ ng, cÃ´ng nháº­n cháº¥t háº¥p dáº«n, hay má»™t cáº£m giÃ¡c cá»§a sá»± hiá»‡p nháº¥t náº±m bÃªn dÆ°á»›i.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(67, 'vi', 1438613130, 1438613130, 'love', 'verb-transitive', 'Äá»ƒ cÃ³ má»™t sÃ¢u, dá»‹u dÃ ng, cáº£m giÃ¡c khÃ´ng thá»ƒ táº£ Ä‘Æ°á»£c tÃ¬nh cáº£m vÃ  Ã¢n cáº§n Ä‘á»‘i (má»™t ngÆ°á»i): ChÃºng tÃ´i yÃªu cha máº¹ cá»§a chÃºng tÃ´i. TÃ´i yÃªu cÃ¡c báº¡n cá»§a tÃ´i.', '', '', 'from The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik');

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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;

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
(189, 1438419352, 'user', 15, 'add', '', 0, 'status', 159);

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

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
(49, 1438400804, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.125', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(5, 1433750606, 1, 'user', '15', 1434640107, 39),
(6, 1438418383, 2, 'user', '15', 1439023284, 62);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1433745205, 1, 'user', '15', '0'),
(2, 1434035297, 1, 'user', '15', '0'),
(3, 1438418376, 2, 'user', '15', '0');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

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
(245, 'key_api_wordnik_1', 'en', 'a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5');

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
('faiXnj3a7iD-pwVG8tFs0C7toeiUQGcYoxwesanHHQ7', 1438613216, '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', '5a9a3b4d883a37ee5ab8cadcbc8fc5dc');

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

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
(68, 1438418540, 'c9938cf4', '99a6c761642c65e38f2d3f1a6cfb91a4', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=1ltYjHLSZyI', '', 'f7ffc713', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtcshkNlZwPnIkDri4e/vP3sX60dGztQ5+pc84o8sTVeQ==', 'Sáº£n pháº©m Ä‘á»™c quyá»n cá»§a ITV. MÃ£ sá»‘: 14328', 'https://www.youtube.com/watch?v=1ltYjHLSZyI', '0', 1438418540);

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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

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
(159, '08b88622', 'ae683a0f95a368261853f06bb35507e3', 1438419352, 1438419352, 0, 0, 'user', 15, 4, 2, 3, 'status', 'H93qVd1aUQSehb+l5lHS/xoffIHToKYW/uuFKVl0Te4=', 0, 1, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

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
(157, 1438419352, 159, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

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
(33, 156, 66);

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
(15, 1431482042, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'UZFbeSJE0sskLPWnoVn+b5dDqrJR89q8zPAdBno6rm3WkBB7da7VM2B5vJ0tp107tGZhuuqp3e8vcZLuyJPGR8i/XMqKQEJew1KcDRVgzXBBCyNDG2jGP9WI+BfUznBn29zPHDfAW9kctobQDtdk4xEu7oeASIc3JiHypz8Ha6zxpubdGeRS7Y7Q5tTMJ16iGg7NZTza+CaHHR5KjfD/2T2l2ZIeqkihXdsRBR6LiJBLq8opGlsNtVlmDvwL6LqW', '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1438613216),
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
(13, 1438606714, 'id', '15', 1, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

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
(35, 15, 1438606707, 1438613216, '6808e60a');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
(9, 1438400828, 7, 'user', '15', '0', '0');

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
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=158;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
