-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2015 at 03:27 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
(22, 1436408188, 1436408188, 'b1d3d904', 'ebd2a7b7', '073ca2a2b839a15fd65a9e146150b38b', '23733616', '4adb7f74', '0.97', '620', '214.1', '678.2', '231.4', '633', '249.9', '601.7', '271.8', '601.7', '271.8', '657.6', '289.4', '657.6', '289.4', '18.9', '-8.17', '-1.21', 'white', '0.73', '0.54', '0.9', 'calm', '0.03', '', '0', '', '0', '22.01', '1', '1', '0.7', '1', '0', '0.3845', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=latin1;

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
(687, 'en', 'password_successfully_changed', 'password has successfully changed', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

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
(142, 1437639883, 'user', 15, 'add', '', 0, 'status', 112);

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
  `platform` varchar(40) NOT NULL,
  `browser` varchar(40) NOT NULL,
  `browser.kernel` char(10) NOT NULL,
  `browser.version` varchar(15) NOT NULL,
  `agent` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(2, 1431448990, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(3, 1432140873, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.152', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safa'),
(4, 1432692522, 'de4d67ee', '113.170.45.132', 'Windows 7 (x64)', 'Internet Explorer', 'ms', '11.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko'),
(5, 1432692534, '65720525', '113.170.45.132', 'Windows 7 (x64)', 'Mozilla Firefox', 'moz', '37.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0');

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
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=latin1;

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
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif'),
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
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif'),
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
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

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
(41, 1437647688, 2, '84d69a51', '885c13ce569ae96cca7a7b703070cb61', 'user', 15, 'qdtpIv4zHxVmnWho7grOv81Ki5CLe23hc+EiaojWVzE=', '');

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
(2, 1433307391, '19605aa7', '96ca778c5a88897519515268f0f9b043', 1, 'private', '', 'vi', 0, 1437647688, 0),
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
(43, 1437660734, 2, 'user', 15),
(44, 1435647907, 1, 'user', 16),
(45, 1433411253, 1, 'user', 17),
(46, 1435567376, 3, 'user', 16),
(47, 1437547418, 2, 'user', 16);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 15, 'user', 15, 0, 1433745199, '966a5164', '7f2e596d7ed79d1720651a37fb98015d', 'x', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '', '', '', 4, 4, 4, 'd098eb5a6b6137ed8433e56050783a36.mp3', '250b5ac580f1bc35c4d98743ccd50a9e', '49607e4f', 0, 3636470, 'mp3', 128229, 226.873474, 'audio/mp3');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(5, 1433750606, 1, 'user', '15', 1434640107, 39);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1433745205, 1, 'user', '15', '0'),
(2, 1434035297, 1, 'user', '15', '0');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;

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
(155, 'select_time_year_min_limit', 'en', '1975'),
(156, 'select_time_year_max_limit', 'en', '2015'),
(157, 'select_time_month_min_limit', 'en', '1'),
(158, 'select_time_month_max_limit', 'en', '12'),
(159, 'select_time_day_min_limit', 'en', '1'),
(160, 'select_time_day_max_limit', 'en', '30'),
(161, 'select_time_hours_min_limit', 'en', '0'),
(162, 'select_time_hours_max_limit', 'en', '23'),
(163, 'select_time_minutes_min_limit', 'en', '0'),
(164, 'select_time_minutes_max_limit', 'en', '59'),
(165, 'select_time_seconds_min_limit', 'en', '0'),
(166, 'select_time_seconds_max_limit', 'en', '59'),
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
(237, 'messages_postion_timeout', 'en', '300');

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
('URieQV,7x81BFhbNh25jZiaRxIGOD4a15cHBy1aIzif', 1437744412, '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', 'f7eb28ed36990b0bddaa7d9f006d716f');

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `scheme`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `title`, `thumbnail`, `description`, `url`, `secure`, `updated`) VALUES
(9, 1434721022, '49dbdfc4', '764634a6a5c638bb27f1f802b1709773', 'http', 'yan.vn', 'yan', 'vn', '15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', 'html', '1315f15b58', '15 quá»‘c gia cÃ³ phá»¥ ná»¯ Ä‘áº¹p nháº¥t tháº¿ giá»›i', 'photos/raw/other/5FVCyI26HK6jGqzds2Beii3qTumGZiAkFXkJ61IEQOIp1+goI3wimdCcR12akceQKRGn19pwWVR3kKSiYv7KhD2xxyeGyrBHtIDzwxY/3oSojXADbGepYSdODcDMjspEW4OPqLDTJ8StkZnhocJM3TpeB0V8clemkoUDplaiebI=', 'Phá»¥ ná»¯ á»Ÿ má»—i quá»‘c gia cÃ³ sá»± khÃ¡c biá»‡t lá»›n vá» hÃ¬nh thá»ƒ hay nhá»¯ng nÃ©t Ä‘áº·c trÆ°ng nÃªn tháº­t khÃ³ Ä‘á»ƒ chá»‰ ra phá»¥ ná»¯ á»Ÿ quá»‘c gia nÃ o Ä‘áº¹p nháº¥t.', 'http://www.yan.vn/15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', '0', 1434721022),
(11, 1434775699, 'fc051336', '47b8eb2948bcecf5577fbb074aba0da2', 'http', 'clip.vn', 'clip', 'vn', 'watch/Detective-Conan-Tap-265,OUCu/20029', '', 'b586a81d3c', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan', 'photos/raw/other/hEyZGNA/Wq11Ppwzhmb7bb92qvDRZN/pCFxFd2aJrdlygDbxoiQ7Rt2IWtHNCBoWCpbpiw+z3tU0xVYMvTfY2Pv12ZVDqDXfddUD5D14h3fkT4Zv5wnp25Wo2udD5/zMo6QUR36xjSDO5h3+4iWQzJ4CVs3qwRSJt6AQo0lZy0Y=', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan Detective Conan táº­p 195 FULL HD , Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan - 1996: Shinichi Kudo lÃ  má»™t thÃ¡m tá»­...', 'http://phim.clip.vn/watch/Detective-Conan-Tap-265,OUCu/20029', '0', 1434775699),
(12, 1434775804, 'f9d499cb', '4939c4c2ea30120efd4458a9a90347d2', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', 'c1284319', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1436763613),
(13, 1434778851, '00471ce2', 'a3a608455224f0792acaae98a95dc691', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=exorHh1Xkjs', '', 'd495c77a58', 'XÃ¢y â€œÄ‘áº£o nhÃ¢n táº¡oâ€ táº¡i Biá»ƒn ÄÃ´ng, Trung Cá»™ng dá»‘t hay tÃ­nh toÃ¡n ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsO1CZFwpN7Hru4aGkZFAGouow9koIuBRxRN92c3ZPt0Q==', 'Khi láº­p cÃ¡c â€œÄ‘áº£o nhÃ¢n táº¡oâ€ Ä‘á»ƒ xÃ¢y dá»±ng cÄƒn cá»© quÃ¢n sá»±, háº£i Ä‘Äƒng, vÃ  phi trÆ°á»ng, Cá»™ng Sáº£n Trung Quá»‘c chá»‰ cÃ³ lá»£i náº¿u Ä‘Ã¡nh nhau vá»›i Viá»‡t Nam. VÃ¬ thá»© nháº¥t, vá» máº·...', 'https://www.youtube.com/watch?v=exorHh1Xkjs', '0', 1434778851),
(14, 1434779018, 'c5328be8', 'c04c2b0b51dcff0cd90fad125857b936', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=MkBTUMKh58s', '', '14069e95fc', 'Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c táº¿ hay Hung Ä‘á»“ Quá»‘c táº¿', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuck8tlo8QBB50v8B7KUiqailfo4pQYeA09jDUlM4pOlQ==', 'ChÆ°Æ¡ng trÃ¬nh &quot;Giá» Giáº£i áº¢o&quot; vá»›i Kinh táº¿ gia Nguyá»…n XuÃ¢n NghÄ©a, má»—i Thá»© Báº£y hÃ ng tuáº§n. Thá»±c hiá»‡n: Äinh Quang Anh ThÃ¡i Äá» tÃ i ká»³ nÃ y: Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c t...', 'https://www.youtube.com/watch?v=MkBTUMKh58s', '0', 1434779018),
(15, 1434786799, 'd78164f0', '45bfa6bc9d89cc61c4adf84da45a4cf7', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4&feature=youtu.be', 'be', '722917e34a', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4&feature=youtu.be', '0', 1434786799),
(16, 1434786958, '91ea721d', '0aa9e42bbe0e007ff0ba2483f6248ba3', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yec1SFizlgI', '', '4fba6ae33d', 'Schannel - So sÃ¡nh nhanh Bphone vs Galaxy S6 Edge : á»¦ng há»™ hÃ ng Viá»‡t hay mua hÃ ng ngoáº¡i ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtOfAip7Bmi1HLlr3fUzfFpEVhHVg7Ui73AuIirIo4jFg==', '- So sÃ¡nh nhanh BKAV Bphone Ä‘áº¹p hÆ¡n iPhone 6 Plus : Liá»‡u cÃ³ tin Ä‘Æ°á»£c khÃ´ng ? : https://youtu.be/hqs3NRzvna0 - ÄÃ¡nh giÃ¡ nhanh Bphone Ä‘áº§u tiÃªn táº¡i Viá»‡t Nam : Ä...', 'https://www.youtube.com/watch?v=Yec1SFizlgI', '0', 1434786958),
(17, 1434787103, '6cc7a741', 'c86707642971720859ca18fcd4d1583d', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4', '', 'e85ae37b31', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4', '0', 1434787103),
(18, 1434787529, 'fb425134', '13b889444d521784a151c24b38fd08f4', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=R79zGqZWQ8E', '', '09e42d8f44', 'Linkin Park - 08 - In The End (Live - MTV World Stage 2011) HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsQLJ+O+kIkGBSsOL0bF2avPRbb8RpUjGvyRLTPZ870xw==', '- LINKIN PARK: Live In Vasilyevsky Spuck (Moscow, Russia. June 2011) *Emitido por MTV ESPAÃ‘A el dia 6 de agosto del 2011 a las 00:15h', 'https://www.youtube.com/watch?v=R79zGqZWQ8E', '0', 1434787529),
(19, 1434788624, '5bc56f5b', '44d1e10453f10123a068cacd1dd19976', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=EZoBQB4sveA', '', '146eb91eb1', '[HÃ i VÃ¢n SÆ¡n - Báº£o LiÃªm] Má»™t duyÃªn hai ná»£ ba tÃ¬nh (Official)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobt9xoFg4n4yxmTQcV6V+8Ibd/qhg7N77E9f5aNOitV0tA==', 'HÃ i ká»‹ch: Má»™t duyÃªn hai ná»£ ba tÃ¬nh Danh hÃ i: VÃ¢n SÆ¡n - Báº£o LiÃªm - Báº£o VÃ¢n ÄÆ°á»£c phÃ¡t sÃ³ng trÃªn SCTV 1 ÄÄƒng kÃ½ kÃªnh Ä‘á»ƒ xem thÃªm nhiá»u hÃ i ká»‹ch', 'https://www.youtube.com/watch?v=EZoBQB4sveA', '0', 1434788624),
(20, 1434789171, 'f400a7ce', 'f77007857843ec3271fa7fba582b6061', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=BKsjE-QEc-w', '', '7391cb37d6', 'Song táº¥u hÃ i Báº£o Chung, VÃ¢n SÆ¡n, VÃ¢n SÆ¡n 48', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu+AaaDQe+ZzTf1FELCO/+bszUb7YjqT9t0tdLJxGZMJg==', 'https://www.facebook.com/luong.nghiemtuc', 'https://www.youtube.com/watch?v=BKsjE-QEc-w', '0', 1434789171),
(21, 1434789432, '24f4f66b', '6ba27838d4fd0223b21445694ce10bc4', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=KIy6QxcpxKo', '', 'a256edbf20', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobshB0Gx7GnPto+/M/VIfeAadx20jmkRKmzhzm0A5gWpXg==', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live, tÃ¬nh lá»¡ thanh hÃ , tÃ n tro thanh hÃ , thanh hÃ  hÃ¡t live', 'https://www.youtube.com/watch?v=KIy6QxcpxKo', '0', 1434789432),
(22, 1434987589, '6f23f0ee', '262f69c66954a3c32a604cbf31594244', 'https', 'vimeo.com', 'vimeo', 'com', '130731671', '', 'e4a0443c8f', 'Signature', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm3V/TxmUHwXfY9Nlj+zDE97tkHWUIQ3PbrR1lM3htVt0g==', 'Nothing is intact or permanent, everything is affected and connected&mdash;the history, the city and the rider. Just as the city left a mark on the rider, he leaves a&hellip;', 'https://vimeo.com/130731671', '0', 1434987589),
(23, 1434987690, '202fb000', '88de1fdd997e469c75286efc7c37bfaa', 'http', 'dailymotion.com', 'dailymotion', 'com', 'vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '', '55f8526b25', '', 'photos/raw/other/TzdxCHbuRsCMh4O+p6bjz1wMwxvRY/osJPBEb581hNk=', 'Má»i báº¡n Ä‘Ã³n xem video ca nháº¡c, cÃ¡c buá»•i hÃ²a nháº¡c, phá»ng váº¥n nghá»‡ sá»¹ thuá»™c nhiá»u thá»ƒ loáº¡i, pop, rock, hip-hop, country..., Ä‘áº¿n tá»« nhiá»u quá»‘c gia khÃ¡c nhau Viá»‡t Nam, HÃ n Quá»‘c, Má»¹, PhÃ¡p,....; trong Ä‘Ã³ Ä‘áº·c biá»‡t lÃ  cÃ¡c buá»•i biá»ƒu diá»…n truyá»n hÃ¬nh trá»±c tiáº¿p táº¡i Dailymotion.', 'http://www.dailymotion.com/vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '0', 1434987690),
(24, 1434987757, 'c3d2540e', '45ba2b5c41ee316d863a0895af82649b', 'http', 'dailymotion.com', 'dailymotion', 'com', 'video/x2tlokz_westlife-the-rose-with-lyrics_music', '', 'ae5c6bd1fa', 'Westlife - The Rose (With Lyrics)', 'photos/raw/other/4vwUJuLJY5QtNw0jVOrLbWUgdIjlv3fAJEpr7bdPcg3ZCd+En6P/nQ17SHBXpsQ8UZp6fPgmbAlA8fWgjnkJCQ==', 'Westlife - The Rose (With Lyrics)', 'http://www.dailymotion.com/video/x2tlokz_westlife-the-rose-with-lyrics_music', '0', 1434987757),
(25, 1436757984, 'fe7326ce', '453f1e155e28817570cf1c0303b72270', 'http', 'dailymotion.com', 'dailymotion', 'com', 'video/x2vdkl4_oto-nh%E1%BB%AFng-cach-ne-tranh-di%E1%BB%87n-tho%E1%BA%A1i_fun', '', '67c5213d38', 'OTO- Nhá»¯ng cÃ¡ch nÃ© trÃ¡nh Ä‘iá»‡n thoáº¡i', 'photos/raw/other/n+6D8pR67xh570YpjY83D+sgBfE8DsJG87gpAYI8CYnEOFf4SqDlXqecTqDbAglC51f6Qlu2+xcpKe6DiKrzVw==', 'NgÃ y nay Ä‘iá»‡n thoáº¡i trá»Ÿ thÃ nh má»™t â€œváº­t báº¥t ly thÃ¢nâ€ cá»§a nhiá»u ngÆ°á»i trong viá»‡c giá»¯ liÃªn láº¡c. Tuy nhiÃªn khÃ´ng pháº£i cuá»™c gá»i nÃ o cÅ©ng Ä‘á»u Ä‘Æ°á»£c Ä‘Ã³n nháº­n. Báº¡n cÃ³ bao giá» pháº£i trá»‘n Ä‘iá»‡n thoáº¡i cá»§a má»™t ai Ä‘Ã³ chÆ°a? HÃ£y xem clip trÃªn Ä‘á»ƒ náº¯m cÃ¡c chiÃªu trá»‘n Ä‘iá»‡n thoáº¡i hiá»‡u quáº£ nhÃ©... ----------------------------------------------------------------------------------------------------------- YANNEWS - KÃªnh giáº£i trÃ­ Ä‘áº·c sáº¯c dÃ nh cho giá»›i tráº» Viá»‡t  ÄÄƒng kÃ½ ngay Ä‘á»ƒ xem nhiá»u video hay: http://www.dailymotion.com/yannews   VÃ  Ä‘á»«ng quÃªn theo dÃµi Yan trÃªn: https://www.youtube.com/YanNewsTube  https://www.facebook.com/yantv https://www.facebook.com/yannews https://googleplus.com/yannews https://www.facebook.com/YANSchoolTV  LiÃªn há»‡: yannewstube@yan.vn', 'http://www.dailymotion.com/video/x2vdkl4_oto-nh%E1%BB%AFng-cach-ne-tranh-di%E1%BB%87n-tho%E1%BA%A1i_fun', '0', 1436757984),
(28, 1436761761, 'b9f965a0', '268f357a047cfd070b36d6fdec89ea04', 'http', 'nhaccuatui.com', 'nhaccuatui', 'com', 'bai-hat/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ', 'pk64vAfNGh', 'f2e238e3', 'Nghe nháº¡c MP3 má»i lÃºc má»i nÆ¡i táº¡i NhacCuaTui.Com', 'photos/raw/other/BjhSl630Dzlv2mANkhp1oGu+zbHDtceVtj4+EaF5lEAe4dcj3hHC9EzM1SLXHY3r3krV5KWpoNTcJnC9wuHRuQ==', 'Truy cáº­p NhacCuaTui.Com Ä‘á»ƒ nghe cÃ¡c bÃ i hÃ¡t HOT nháº¥t hiá»‡n nay, táº­n hÆ°á»Ÿng Ã¢m nháº¡c vá»›i hÃ ng triá»‡u bÃ i hÃ¡t cá»§a cÃ¡c ca sá»¹, nháº¡c sá»¹ trong vÃ  ngoÃ i nÆ°á»›c.', 'http://www.nhaccuatui.com/bai-hat/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ.html', '0', 1436761761),
(29, 1436761846, '8042d6bd', 'd6eeace6edf81647cf79b2dc49d874fe', 'http', 'nhaccuatui.com', 'nhaccuatui', 'com', 'video/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ', 'pk64vAfNGh', '8143293a', 'Tiáº¿n LÃªn Viá»‡t Nam Æ i - SÆ¡n TÃ¹ng (M-TP)', 'photos/raw/other/PeUqALBhdjXCOQtJZozv1n+s0Dbml47ajc4BTKOfwE0fjuV5DMZ29ETb7UiwzEvhFSQ7ybNMthXoyTbiQ+Ptb+V4P0qicHiZcW0WO68/SY2LOx3hrj1FgckP/jRKI6Fr', 'Video Tiáº¿n LÃªn Viá»‡t Nam Æ i cá»§a SÆ¡n TÃ¹ng (M-TP). Truy cáº­p ngay NhacCuaTui.Com Ä‘á»ƒ xem vÃ  táº£i video Tiáº¿n LÃªn Viá»‡t Nam Æ i vá»›i hÃ¬nh áº£nh Ä‘áº¹p, cháº¥t lÆ°á»£ng cao, pk64vAfNGhAwZ. NhacCuaTui.Com nghe nháº¡c má»i lÃºc má»i nÆ¡i', 'http://www.nhaccuatui.com/video/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ.html', '0', 1436761846),
(30, 1436762951, '0d4bfa0c', '2d1cacfc8f69fbda4ba559a412eb7c99', 'https', 'tinhte.vn', 'tinhte', 'vn', 'threads/mercedes-tiet-lo-nhung-tinh-nang-moi-tren-e-class-2017.2482586', '2482586', 'a5bdee03', 'Mercedes tiáº¿t lá»™ nhá»¯ng tÃ­nh nÄƒng má»›i trÃªn E-Class 2017', 'photos/raw/other/XL5LZ9SkRASzCKlsyZo/2GJjziI7g1yofO1/y041waw5dBzbh75U7iPVBbEZNc4KgcP9VTtMG7nxKdcgd25t3sTfZFj6Eyw97sK2UL6Y6ABVzNkb8moF+X9GwZkSpNhq', '[ATTACH]  CÃ²n khÃ¡ lÃ¢u ná»¯a thÃ¬ E-Class 2017 má»›i chÃ­nh thá»©c trÃ¬nh lÃ ng, nhÆ°ng Mercedes cÃ³ váº» Ä‘Ã£ nÃ´n nÃ³ng láº¯m rá»“i khi cho cÃ´ng bá»‘ nhá»¯ng cÃ´ng nghá»‡ hoÃ n...', 'https://www.tinhte.vn/threads/mercedes-tiet-lo-nhung-tinh-nang-moi-tren-e-class-2017.2482586/', '0', 1436762951),
(31, 1436763657, '2ab3908b', '5c7e15cea9d7a5e01dab96133d31dd7d', 'http', 'mp3.zing.vn', 'mp3', 'zing.vn', 'bai-hat/An-Nut-Nho-Tha-Giac-Mo-Son-Tung-M-TP/ZW7I776I.html', 'html', 'b76a8e20', 'áº¤n NÃºt Nhá»›â€¦Tháº£ Giáº¥c MÆ¡ - SÆ¡n TÃ¹ng M-TP | BÃ i hÃ¡t, lyrics', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaa7x2GqoLMvGYDeTCTl3nAT9kK16b8r6FRjCQoEqUvzamUM3eQD78e8olkpcNJGGQY7Ci5PGa5CXNsH/oQP6qTytR1p6N3TeIHrF+BKOffw1UnDIJANbYFpK5vZ5o+MWYQ=', 'áº¤n NÃºt Nhá»›â€¦Tháº£ Giáº¥c MÆ¡, SÆ¡n TÃ¹ng M-TP. Ehhh ohhh Sinh con ra bang cau hat ru quen thuoc Diu doi chan mong con lon khong. Táº£i download 320 nháº¡c chá» An Nut Nho Tha Giac Mo, Son Tung M TP', 'http://mp3.zing.vn/bai-hat/An-Nut-Nho-Tha-Giac-Mo-Son-Tung-M-TP/ZW7I776I.html', '0', 1436763657),
(32, 1436763671, 'c2e11670', 'e23d87e1a939622e8a9351c88e887435', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', '5352176b', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1436763671),
(33, 1436763867, '19d9ccd4', '9fde37b8a99bba5af157908dd7927419', 'http', 'mp3.zing.vn', 'mp3', 'zing.vn', 'bai-hat/Say-You-Do-Tien-Tien/ZW70EIUE.html', 'html', 'a1ba2891', 'Say You Do - TiÃªn TiÃªn | BÃ i hÃ¡t, lyrics', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaZtI7aF5kxFIZmOuxBLPnaw4eVczBG7XYZ2Ai/sLJQy7Y1ktAAwASiyJN/4wahHJZj6RCKAKEOtFHLdykaJcO+WtR1p6N3TeIHrF+BKOffw1UnDIJANbYFpK5vZ5o+MWYQ=', 'Say You Do, TiÃªn TiÃªn. Ta gap nhau 1 chieu thu thang 10  vi nu cuoi ay cho em nho mong tung ngay  Dem. Táº£i download 320 nháº¡c chá» Say You Do, Tien Tien', 'http://mp3.zing.vn/bai-hat/Say-You-Do-Tien-Tien/ZW70EIUE.html', '0', 1436763867),
(34, 1436764165, 'ac0b7521', '2e70b774598669b15b4b6852b7308a9a', 'http', 'mp3.zing.vn', 'mp3', 'zing.vn', 'video-clip/Anh-Khong-Sao-Dau-Chi-Dan/ZW6EEZCA.html', 'html', '5e6c4362', 'Anh KhÃ´ng Sao ÄÃ¢u - Chi DÃ¢n | Video Clip MV HD', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaZrtYsJUFRRhTraR+VmWJMvK/nmsp9XzQ/cydSMw7hVhck5hgwROapnlQZJLr1ai0PY9Ecz5yesuC0w/yjZMnzz4aV9BWYNNS6C3x4rP1DfebsLsRxxW2dJCoSG5PAK6AU=', 'MV Anh KhÃ´ng Sao ÄÃ¢u - Chi DÃ¢n cháº¥t lÆ°á»£ng cao HD 720 1080, Video clip báº£n Ä‘áº¹p nháº¥t cá»±c nÃ©t cÃ³ lyrics Anh Khong Sao Dau Chi Dan viet sub', 'http://mp3.zing.vn/video-clip/Anh-Khong-Sao-Dau-Chi-Dan/ZW6EEZCA.html', '0', 1436764165),
(35, 1437032300, '5c79703c', '3533ac521ff9ee83852cbf2a3f656792', 'https', 'flickr.com', 'flickr', 'com', 'photos/131636999@N03/17016433587/in/dateposted-public/', '', '45d3159a', 'IMG_2017', 'photos/raw/other/Kaq2QVqZpO5R1BUXTbtrlnQZ+6jbJ9e7c+zC8wWg0mUUslxgGZiAWRl/Gn746WwQ6J9hHphaZmwX6LY72afYlhOn6XafZ4KeEJBKZDYyCZ/VyPpor4DoAkRdsH7oOwWe', 'IMG_2017', 'https://www.flickr.com/photos/131636999@N03/17016433587/in/dateposted-public/', '0', 1437032300),
(39, 1437034002, 'cf5360c7', '0730a6c2338cbf67dee359748917bf55', 'https', 'twitter.com', 'twitter', 'com', 'nhaccuatui_com/status/621589704836820992', '', '9b94cbe4', 'NhacCuaTui Official on Twitter', 'photos/raw/other/INkHeJ5q8fWwZZI1eV7Fo0G6w3QWw8QG824XUJeNBcmUxoSoAppraQHuyI3xz0fderrs0K6AlP1GFWCEXDcvT7K1Q7JVuitRCILzbIRsju3oR+L0Jyn+ol5hxkXco847SwCPSOmyw5WbiJ0B9jpUNywVkazdtL0p59iMa/ihXUI=', 'â€œCháº¯c pháº£i hÃ©t vÃ o tai ngÆ°á»i ta má»›i biáº¿t &amp;gt;,&amp;lt; http://t.co/BpXRyNOLztâ€', 'https://twitter.com/nhaccuatui_com/status/621589704836820992', '0', 1437034002),
(40, 1437034082, '8d517ba0', 'cb2b025d3e2215934b292dc9b0eec960', 'https', 'twitter.com', 'twitter', 'com', 'nhaccuatui_com/status/621589704836820992', '', 'f1ffe498', 'NhacCuaTui Official on Twitter', 'photos/raw/other/INkHeJ5q8fWwZZI1eV7Fo0G6w3QWw8QG824XUJeNBcmUxoSoAppraQHuyI3xz0fderrs0K6AlP1GFWCEXDcvT7K1Q7JVuitRCILzbIRsju3oR+L0Jyn+ol5hxkXco847SwCPSOmyw5WbiJ0B9jpUNywVkazdtL0p59iMa/ihXUI=', 'â€œCháº¯c pháº£i hÃ©t vÃ o tai ngÆ°á»i ta má»›i biáº¿t &amp;gt;,&amp;lt; http://t.co/BpXRyNOLztâ€', 'https://twitter.com/nhaccuatui_com/status/621589704836820992', '0', 1437034082),
(41, 1437034213, '5ceaedd4', '0af10b44253048765e2421b2b8eed55f', 'https', 'pinterest.com', 'pinterest', 'com', 'pin/234961305536143153/', '', '53ef08a3', 'Panasonic&#39;s Lumix GX8 is a sleek and compact flagship camera', 'photos/raw/other/eMkT3J0UB7UvnyqMxfc8KqD50GaA91CwzCc5nxX/+pFd9PwT/0W2fEOZXtANZEsNiEu9bueBJ7GOKLdUdaR5u7a0SV+sWTO680ZoRcilEQahV29ZvbG7aZvDqZ+2jRMdAE1mozUhz+RXz7eqQz/vHhPwwX2GG/fPehevRWVUorY=', 'Only two months after introducing the G7 Micro Four Thirds camera, Panasonic is now expanding its compact line with the Lumix GX8. The new shooter, which is dus', 'https://www.pinterest.com/pin/234961305536143153/', '0', 1437034213),
(42, 1437034288, '5dcbfcab', '72fcf5750ea8b73083ee57d2ae8c809e', 'https', 'vine.co', 'vine', 'co', 'v/eiLAwvqddeg', '', '181158d1', 'Never change, Muni. Never change.', 'photos/raw/other/6J5kQnJbC1mG8LZlHmzQCU41Soy0WOCenmcRv9TCp6FGD4MTgAMS840QPSjLKXQ2Cl1wHK+33j5VXRsXHd1bbdXwfT/90ha/TLjVCorebv5GMMqIQtyglVWrPcoPQAA89eSsD3lCNKVCzD70bjUr4hzWQ2kYL/IclvJHEkxHwwgfWkuwjZKvGnerwcC+ai4FJaIzajiPATEeyWvVDGCUzw==', 'Watch MLB&#39;s Vine &#34;Never change, Muni. Never change.&#34; taken on 21 June 2015. It has 6466 likes. Vine is the best way to see and share life in motion. Create short, beautiful, looping videos in a simple and fun way for your friends and family to see.', 'https://vine.co/v/eiLAwvqddeg', '0', 1437034288),
(43, 1437038924, 'd835b2d8', '2abeca64817e78f0a830171e9823b3d2', 'https', 'instagram.com', 'instagram', 'com', 'p/5L8Ls0Q7Kl', '', '10e64e9f', 'ThiÃªn Kim on Instagram: â€œÄá»i mÃ¬nh cÃ´ Ä‘Æ¡n ráº¥t cÃ´ Ä‘Æ¡nðŸ˜­â€', 'photos/raw/other/fi3EbdTSVZ8BpaP9rRtEgsHcDE1xF0XIOR5xAi26ab0KIB/gDe/DxYRIDO9wt2RZ9wx2JW8dQQKhNYpkJ4hnC6OjqDB7GR5z6YDVBbGGdjDcKvqSOnGZ3VaqZ3uaytmNq1+jfTwSeP/vquy1p75L8DVJKMaM1cF39D0OD1FkA1M=', 'â€œÄá»i mÃ¬nh cÃ´ Ä‘Æ¡n ráº¥t cÃ´ Ä‘Æ¡nðŸ˜­â€', 'https://instagram.com/p/5L8Ls0Q7Kl', '0', 1437038924),
(44, 1437039388, '397cf8fc', '876ca08aa20ae519f08e0876e4d7631e', 'https', 'myspace.com', 'myspace', 'com', 'myspace/video/the-pedicab-interviews-chris-cole/109546118', '', '7600ceee', 'The Pedicab Interviews: Chris Cole Video by Myspace on Myspace', 'photos/raw/other/6+LuqxyzAWZNY1G2Y8V/IF96/yyLDakKoCSbodCz823zApc4NtJj8L8CPgSaacbTkebrrjA7Z0kF1MsPa8xRzVdXNmlKqfc4V8mf2mPF7RQ7E7BjTUiwzjcZPsmp1/KEbBKbjXMQNPXNf2M896UJ4TwrFP7YNv8VwNPLU12bmf8=', 'The Summer X Games are underway in Austin, and Myspace is hitching rides with the some of the best pro athletes and artists in town. First up: skateboarder and two-time X Games gold medalist Chris Cole talks all things &amp;#39;90s, from Janet Jackson to Teenage Mutant Ninja Turtles.', 'https://myspace.com/myspace/video/the-pedicab-interviews-chris-cole/109546118', '0', 1437039388),
(45, 1437040021, 'bf905552', '34a1251a4aea27c107207cc80cdf82d7', 'https', 'myspace.com', 'myspace', 'com', 'iamsebas/music/song/boyfriend-remix-87571429-97164009', '', '73f3e548', 'Boyfriend (Remix)', 'photos/raw/other/OLopoV2n/ONmmp77fSJfrBfRfZpulovCct/mDNMYUohN0Qzk3uJC6jH0y2gR192QX+NjZ0d83y4aRYCT03VvrvFqJ25Ws4IYrLfZGOGcboBWufv/SYcGvMtITiFuuDkNYOCANLqJ8DUjACFqyEyOsFT48Kdap3Iw1EGGaUvUcK4=', 'Boyfriend (Remix) by Sebastian: Listen to songs by Sebastian on Myspace, a place where people come to connect, discover, and share.', 'https://myspace.com/iamsebas/music/song/boyfriend-remix-87571429-97164009', '0', 1437040021),
(46, 1437041264, 'a2253bc1', '01711712709fc80cf075cf9c76ead5a4', 'https', 'vimeo.com', 'vimeo', 'com', '108846792', '', 'ff734a32', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041264),
(47, 1437041323, 'a5ef16d7', 'a893bb001e31484665da299657bb547e', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yd8UeUp7B60', '', '66d2006b', 'DON&amp;#39;T BE THAT GIRL AT THE GYM', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsFeEtQmpiyyHsPp+5XkUrwo64bSEceH6s4bXZchQHKMQ==', 'AS I STARTED CREATING SCENES FOR THIS SKIT I REALIZED IT WASN&amp;#39;T ALWAYS EXACTLY WHAT GIRLS WERE DOING BUT SOMETIMES WHAT HAPPENS AT GYMS THAT HAD TO BE MADE F...', 'https://www.youtube.com/watch?v=Yd8UeUp7B60', '0', 1437041323),
(48, 1437041337, 'a29f026e', 'da081bc6e1baaf75bea7a7302f07f33e', 'https', 'vimeo.com', 'vimeo', 'com', '108846792', '', '365ede98', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041337),
(49, 1437041343, 'c071685f', 'f517a3f37a71ba5247401b902a0bf761', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yd8UeUp7B60', '', '5d2d041e', 'DON&amp;#39;T BE THAT GIRL AT THE GYM', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsFeEtQmpiyyHsPp+5XkUrwo64bSEceH6s4bXZchQHKMQ==', 'AS I STARTED CREATING SCENES FOR THIS SKIT I REALIZED IT WASN&amp;#39;T ALWAYS EXACTLY WHAT GIRLS WERE DOING BUT SOMETIMES WHAT HAPPENS AT GYMS THAT HAD TO BE MADE F...', 'https://www.youtube.com/watch?v=Yd8UeUp7B60', '0', 1437041343),
(50, 1437041564, '5953fcd7', '2531bbc657a2b263dc13dce5f2ae62d8', 'https', 'vimeo.com', 'vimeo', 'com', '108846792', '', 'aa58fb2b', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041564),
(51, 1437293065, 'df5ce222', '774fe9f07ca91b07b5280798505ebc57', 'http', 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives', '', '41eefe0e', 'What we learn from insectsâ€™ kinky sex lives', 'photos/raw/other/Ch2XzQ9zHmxtd9BFz9YAHK2xppFEJIAHBtF1n5/ZcpUZOsxzuP8R3BFEoPfNGW0PQKEmh3X6ZHZnZAf5Vw8agcxvRrA9ghzhuI+onPFp5dfL26wZlZcUo2A+qHWH9ZP78DZDHIpwPlTmXiSZlYpPVtHC8gBoftq5/3P55Ht9rJxuof81tim+de/F8S3HQncr8odZ0Oq4TXRRINWz64mOd8G5H2DbI8m3EhLDU8LHUdrCk8v8LLem3/PvqcNSCppx', 'Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'http://www.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives', '0', 1437293065),
(55, 1437294167, 'd52b6da1', '7d780f72409dbf770d5073a3866a4b0f', 'https', 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', 'html', '055f252c', '', '', 'TED Talks Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'https://embed-ssl.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', '0', 1437294167);

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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(15, '3768679f', 'fb35c7c0a191284bf2b29921fd9483d2', 1433581761, NULL, 0, 15, 'user', 15, 3, 3, 3, 'videos', 'dJAoMGpmQzUYRn+c+m7ZITFoVArteoaIo8dfrSm7eZo=', 0, 0, 0, 0, 0, 0),
(16, '921dc0d6', 'b22b767b12979a610bf2e1ad901d0834', 1433745199, NULL, 0, 15, 'user', 15, 3, 3, 3, 'music', 'V42a2JnVhmKzYNIyqRcWXkU0NL+263GFb+8hoHb1/iA=', 0, 0, 0, 0, 0, 0),
(17, '4c59ac5a', '7e0f721096e28c4b7d7b0cc6142153fb', 1433753223, NULL, 0, 15, 'user', 15, 3, 3, 3, 'photos', '3FUOwvsiZZ5EXqgoilUgGyQqYWi5hqd9ZRUmXh4IhKE=', 0, 0, 0, 0, 0, 0),
(18, '7ae7bba5', 'ff252e76eecaf1cea21f55e76bd7365a', 1434092540, NULL, 0, 16, 'user', 16, 4, 3, 3, 'status', 'ZkEpSTykP8f6wlZH+gLcigG/ocG5Bl0beCU/PH7vl1Q=', 0, 0, 0, 0, 0, 0),
(26, 'dcbb6b78', '94a56f537fab2e295370836ee0b7e77f', 1434097305, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'HF3OijhX0MVFyR3W1TIu8YInzlOaI3dI1GLbWkyiwtA=', 0, 1, 0, 0, 0, 0),
(27, 'd027744c', 'e8748f92070e1348d107788e9a867427', 1434097410, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'igzaZ+lbU21WyApRYJ3gB/N9N1VaKeEy17cuAglySWI=', 0, 1, 0, 0, 0, 0),
(28, '317a8ebd', '94fd8b620a540e2443bd9384518e54e7', 1434097810, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'EtcrZ21ANeG1qWx4cmAvbpvnNm1GQENJp5/YzA1qAAA=', 0, 1, 0, 0, 0, 0),
(29, 'eb5ca495', 'e5f5e8e7a31c427a635cbc88021997b2', 1434098084, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '+RNCtAVIP7CDEMNOy0JQbLChdU3I7H60cMCkqxFf7h4=', 0, 1, 0, 0, 0, 0),
(30, 'b67dc892', '50a75787bb761932fc6755891652c87e', 1434098822, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KEkq8h9HCgR7mo+SM88mQSCIqvPDxy0IsfsTHqE9TE0=', 0, 1, 0, 0, 0, 0),
(42, 'c279fec1', 'cf358411ac6254f67d02d46d5ef3ea91', 1434100458, NULL, 0, 16, 'user', 16, 4, 3, 3, 'status', 'zEbMNRX7otdm1ADLLMDZatlCJVRODnfgm5Gh2/sTEiQ=', 0, 0, 0, 0, 0, 0),
(47, '4817a929', 'e0b84fb6e0469063e9268343c9c15b7b', 1434700812, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 's9Dr6IhJ9Y6LvIBPsr+jpy3FYIaAG3Ad74mLA6JDsNLN3aazhMT+t2N2Fj2Pg8tq9UvH+pigcg9MogvTCBCPqw==', 0, 0, 0, 0, 1, 0),
(49, '7126c114', 'a205a0b7dc8c99c1c421dca87d04ca53', 1434701058, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'D5jITdHnnBiR+VfWcf+pnbgfdrG3FvU4s60xXcbJ7bYCrlrBW2gcdQ75ylAxdJZ05Hk7o224+4UFHQVVSnCC/A==', 0, 0, 0, 0, 1, 0),
(50, '35d1a1af', 'b096aeb491c396e26501d17bde6c8bd4', 1434778944, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'oLnqzcire8CBJxlRAKETP8niNZnT2bZow19Q2YER+gAdzpviTEXlRNYRRoqBA2emb29Jeo0IYd8m11t2RQWelA==', 0, 0, 0, 0, 0, 0),
(51, '96f55e20', 'b4c3df352bed4aeb661fe6ee3a0a4db7', 1434779051, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wBtA3Gpg/CblZ5OGrVmMLzXKTvj+bu2SOhDFLxEBDQaZfAlWO6z4BAt1RABxLcqKDhqx62BPTSAupGGCC48RHA==', 0, 0, 0, 0, 0, 0),
(52, 'edcc7e0c', 'a24ec5ffa63da0ecf68465887dee0f3d', 1434787496, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '/uwV5UUi1muYnjPp3R+vxAvZu5BVWHN6yI6pLkjxmTAFBqYuUrCqw0CXz5xF8raP7AuAFp93qQjixyYt56t1xQ==', 0, 0, 0, 0, 0, 0),
(53, '915e4b13', 'b4f9283c0ab096426a4629b403b957b0', 1434787533, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '1YG/VDBIb7AWxwcDXNp8g2djjcY1/SqnnSbBpfH/0mcEx9qkESl8ydfNOYhu6mD02OtP5qQWzBXAzYmFl9cnyA==', 0, 0, 0, 0, 0, 0),
(54, '45200686', '7a25e070b8d4d025cde2e501d6252797', 1434788628, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hCT/GYaJpEk2Tjrd9HiLtTzeh7GyeA6E1B8wgNPyoqvZDFNQNc+aFi2yqJmYUbhqI868pP0qNnNniyTsKFOfdA==', 0, 0, 0, 0, 0, 0),
(55, '5e0884e1', 'd957a0ebfa852f96c3853f12780c92b7', 1434788778, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wp3HtMlrrcvdIlMElqzvMUjKLU61pW9fhkC3r0lWUaEYhXm+BzBvj/FKMx9jIJYoLPW5wfLPqFHWdNlrt7fExQ==', 0, 0, 0, 0, 0, 0),
(56, '1a8b780a', 'ca744d16fb0a513b2d07894ea7fa8967', 1434788835, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '5tElnvntMGco8NTPqqcDS//tLZSHEOPOG5Dgfhw71b/o159s25j0F8RAhUZL72ugWh7t8E4VtTeirFPdPwjwVg==', 0, 0, 0, 0, 0, 0),
(57, '7616ffe7', '14e7040bdf1aae17c2bc483b0c01ec82', 1434788949, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'gjJadgxcF+jYN7v6CYNY0PuQtg8wZfRsUXj3eDTGpiaqSfykIoShGDOWV1XAOz/JOREZv0mojasZ70yTd4P+pA==', 0, 0, 0, 0, 0, 0),
(58, '539189ed', 'f4245a02f38823addc0a269fbddf6272', 1434789020, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'GKIQb7SUeeCgjCCqqEeCR97uvhXpBOqQcgzzgBYpxsKIOZNLcMBUFSifh1/iuQETxjSJVU0JFN4FJ/yvlgPsUQ==', 0, 0, 0, 0, 0, 0),
(59, 'c307d216', 'ee6cc021d9a15c4fd2f414ee33f93f85', 1434789130, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'OPC57Kgqom+qOEaDhDlfbeP/Ia+8Yv0fWgUGg3y5mGBmVP3ZROvLGZtyh4pZroUZeKcD7EOyc6YgLOH2Vw4hzQ==', 0, 0, 0, 0, 0, 0),
(60, '25a938ad', 'b572244d9dad91774eec5324e4be4c43', 1434789174, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'YakAt7pXeh3lQlz1lknkC/0+MCB+DX410xiNGXYSfxblBKLh3P0PtwsmsaFhdBAjITYiC93ViuJKYV3Sof3tbg==', 0, 0, 0, 0, 1, 0),
(61, '1a4ab147', '065fd024d9178d4db0fa9cb73e809f9c', 1434987597, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'uthojd8GpKJSD6ZKRa1YzOKRbH/5A+fRwhPq1G8itKM=', 0, 0, 0, 0, 1, 0),
(62, 'c92ba13a', 'f913104b36ebcea1864862efb4f43928', 1434987761, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Kc/Ee/btiaPtb5zWUKe1PNcdcmpvOrAnWpoYAtskDinSHHQA5t13Km/i2ore3LvbwEQ/AwLnniwWG1pJYntksxZv+CQTVIEg0B0nCgRZQvJ65mApDXF+sjNE+T5Ckqya', 0, 0, 0, 0, 1, 0),
(63, 'd2bc1322', '47950160b50bae19553701fa6354a2f3', 1435048620, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'vxNmODve+0kTA6WCLbYEfh4vl1jvzZXpD6K9hriPcGE=', 0, 1, 0, 0, 0, 0),
(64, '8c447a74', 'a7c5e85d762eb0315527da4ea805d972', 1435048699, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '7Sh3VTFT4FGKQ1aiZNaUFDQv5WLBmQESbM/MCvf+6Gg=', 0, 1, 0, 0, 0, 0),
(65, 'e3f0b149', '7ff1648c338b93e6e56a3ac9ada0e79a', 1435048714, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'B2WeyQN5qxfF7d92AUN5ndZf2Ky4GEkBkARjXiXwB6I=', 0, 1, 0, 0, 0, 0),
(66, 'ed22f94c', '6584f4c052ad70d8bf1b92e4bcd75d69', 1435306006, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'zwCbJPOz/yMhsoX0rNAz11LaTyBdC9ceW+2l0DpWUlM=', 0, 0, 0, 0, 0, 0),
(67, 'f1f7b6d4', '70b5918f418728239d8112400366b47f', 1435405192, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KoU0jHJcO0tKXypLK9IwVehqdjZUAjvT4emT1QOXbzc=', 0, 0, 0, 0, 0, 0),
(68, '94bafa39', '07788f962de3b0e5a6d4f32b45f1c409', 1435405296, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'jGQOQb/r3zcBLKiJVk668GxPr3BrTV3wt8I89xm0wNI=', 0, 0, 1, 0, 0, 0),
(69, '594a7e55', '2ff10d446a9c33c4b7ef2bf0194b15e6', 1435409271, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kBQ/E4skPvtbrznZrvYR8GcqiaNhTk32KoUwN4Ksvww=', 0, 0, 0, 0, 0, 0),
(70, '6ed4ec4c', '173876e1e8238e0f022ff812ccd7e251', 1435409388, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'UWTXu4wGMVS+JDv8onSksFOCHniWlOo+zaK3nP/tY5g=', 0, 0, 1, 0, 0, 0),
(71, '105a7455', '23a46c55f57471bd59e4feea32c2acbc', 1435409420, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Pkalnb3A1V3ZapFX821mcY+/58DRnuSYQLBoXcP1gGY=', 0, 0, 1, 0, 0, 0),
(72, '2abf9897', 'ca7d23a28003277f1d87dfd13a7b7aa6', 1435409444, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'A1DzClocnDHAG7NOicfE1Ta+XULhcy/E4XgbrxTNXk8=', 0, 0, 1, 0, 0, 0),
(73, '375d1a92', 'fd2f0fa914f9d6e5500462187b0844e0', 1435410307, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 's3YOmGino0OEr4/8YISS6da7VD9Sq0PeJjjz70wp2ns=', 0, 1, 1, 0, 0, 0),
(74, 'a220e31b', '70179212c844daee77715323e3574e03', 1435478658, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hlqvolHY84RcXBEhLsPc0ojs4mSQKVm3zmSlJe1uIQ8=', 0, 0, 0, 0, 0, 0),
(75, '9a23e1fc', 'e76e04abb861bc4e84d4e9473f2d7536', 1435478842, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '2bdrikL950FCJm65E+U6xHiXJ+4RFvTDeAg/lJtv38s=', 0, 0, 0, 0, 0, 0),
(76, 'f77e5d42', '51ac4977c610b375c57ca0c72ca6f357', 1435479130, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kNsolc3X5JrtENvaApygYO0afTATNXCKPxmO45aHyuk=', 0, 0, 0, 1, 0, 0),
(77, '28be871b', '5b585276c3df1e0dcd42435e2e5e5ad4', 1435479162, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'VkxJHYCSJkbOJUO0as/XY9nON99MKlRsj80bG5x4uvA=', 0, 0, 0, 1, 0, 0),
(78, '44442f18', 'f2a25bd5dfa75c92d5a9987403289bfb', 1435479395, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'iVHlNlnOuE3JS9LjTwgORxvfSagKgEcuO3nL8hRdWHk=', 0, 0, 0, 1, 0, 0),
(79, '01f21a65', 'f1224d7f834f6cd9ab1feb21b2564b0d', 1435479865, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'CA2OrvpiJli/UzJudO+r63RF5jQsDd2GuVh0NIM1a/A=', 0, 0, 0, 1, 0, 0),
(80, '076b999a', 'a973bea0874d6dfbdab91d940a268cfb', 1435479929, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'WZJ3v7H62VSnTRm3KrVYbzRqwINlEsIXPmNvMPoC1Ss=', 0, 0, 0, 1, 0, 0),
(81, '586564aa', '4c777c7ce772d1b966c3b1335aa54c03', 1435479998, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Yj0qPusmZvgs/R/UzBA6AwO2OGMIX5heLJtNN9ycm0o=', 0, 0, 0, 1, 0, 0),
(82, '302b19e6', 'b4704c4e4fdb555705677c164f80e341', 1435480245, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'adp922z1EcMQzixq5Z6xsNwMOmF6CvdnCD2khVrtUX4=', 0, 0, 0, 1, 0, 0),
(83, 'e661a437', '3277ae0ff6c07db702d835694f89d589', 1435481392, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '+3/b4+7g0Va9UUvi4dlZ5Rp9qcv/r07FTea5+h+9gdw=', 0, 0, 1, 1, 0, 0),
(84, '6ea389ff', 'cddb1d3acca83f2c46c53234028da296', 1435484831, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kTyfuwuagc0gFMhdkIvJpEtXhiG8Fgj0Z4mpg75yIto=', 0, 0, 1, 0, 0, 0),
(85, 'c0c3d7dc', 'e7188088277b3d80d73c758fafaa0849', 1435485706, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'xbbsjo5PpPEQ9u6HzmJYmPhHvhUwV0yRuUn3VeHK/qk=', 0, 0, 0, 0, 0, 0),
(86, '62d397ca', 'afbba2a35c39765001828d720d6b06b8', 1435486127, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'SxFzsJxGbmAHoWMh/lFfXb9lNPNZ1ikOzbBM7VTqZBM=', 0, 0, 1, 0, 0, 0),
(87, '2cec330a', '1865729c4bda8589e66f4de5338afc0e', 1435486167, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'pue6o/gfx4hhkaYBPwcc25dNhjgOkkrzAgCoZccioYQ=', 0, 0, 0, 0, 0, 0),
(88, 'a19bd9d2', '57a9261efdd7cf87efa6c88b9efd547e', 1435565495, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'crUNgUyCnIacoLANm0TsC60zNsiffKMraCAcFIVKtps=', 0, 0, 0, 0, 0, 0),
(89, 'd25f01e7', '49abf154ae8693724b3fdd472e4ca052', 1435801741, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cu73G2j7RbFuVP01/41w6wZZY/1MruhLjH8vt5pwvPY=', 0, 0, 0, 0, 0, 0),
(90, '39e3603a', 'e2de2ab821dd5484701c60898b09c80e', 1436757995, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'y2Kt8Iq57i4FwcVFqnrlmmZEBA65o6LNiM+havQispYuxKlAN9HcjafPMkppPNVdZV19rcDKwkG6N8K/AsoID18XW1WNCDJCOMq+L5y+dedBl9uv0bqncJECggbXaUCqjJyqNIxGQfw/w8kPGzkMAAy0sSTA/kbUvl34n6ppbuk=', 0, 0, 0, 0, 1, 0),
(95, '5e6939cc', '7dd27869f88c159000ae5d04ee2f4bff', 1436761882, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'nh+4G9JI6jY/V6t4p1N95c+E2W1ZBK9bpYTHe8Ss0d8Kk86DpJvtxjYymhl/4WM70pTf+2GkOzbBnzrp3xcnDYJRJk/lyMp31LHfNEy8S/28uTISlW6htF4DeZnyLnSQ', 0, 0, 0, 0, 1, 0),
(96, '05361dd4', '6bec7041054eda98dbcae9ebafb88a79', 1436761890, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Q47Jlf70E1stOphFl/MRQlz9zXAtQV60xm6Fn6SltgYv/iViF6F18j/VKqRDYU/14fQmUIFkzixea+vbC67em/3L/l0GKrTTW/b5tgtWZBecINS8KJNf8Zn2KCw7J9+k', 0, 0, 0, 0, 0, 0),
(98, '5cf30f18', 'c1cb3249a8118086af2673513514d4d2', 1436763913, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'XEdlb8pWFBmh+UgfY5msXcKl1VSWfhX/VSWI1nuc4Js67Yx6g5oCUGkeeAiAQk1usSCdO0NzCVyKv2T9SVP6aA==', 0, 0, 0, 0, 1, 0),
(99, '81be78f5', 'eb377008f40bc25483a14126e4e86fdb', 1436764391, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YBjfYKGEY0cww4UerWk1tmPfm0DaCTPKLCozQ+41D1usI3Y1qu0e378LKwgwkAgtEuq5GP2M7CbIM8jRp7QsbFDYTSD0tcCNVlP+UkMMg8Ewer03B3HXIEEhH6AVgJF4', 0, 0, 0, 0, 1, 0),
(100, '12884f51', '9d7fd44ec3b74763419fabeea8ebe93d', 1437032311, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZR0awSySdpxxzXxX+i3wcDp7ZRX+DLZcwd6x1k71HKFkqol7MgM4vWAzY9mxW1iAFKJnZKs7WWlMU+S4DEPWjEQHznsh+P3hIS3LmWsBvmz6Yav5SKedyhetH5QT3kVv', 0, 0, 0, 0, 1, 0),
(101, 'b027c477', 'f6ac7d16a303d3b49b29e94f74840ade', 1437033632, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ufGyIgj+seilZQ6oFTh63MTlPsm307j+gMYtOkWFcTD25TqcgxjZ4nOBEMcVtT2ixej4i3ZYk37gc9cbF5W17Q==', 0, 0, 0, 0, 1, 0),
(103, '7cb3195c', '9044a1d554247b0b65f99d63db5f7e2a', 1437038930, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VDXoiLFJpGXCjPWhgR5FhRvtt64hp4Pk/uY1UwTkXLozEoqd5+46Uao+fOaS8Er1qnlUk4mjb9fx2hbQ4qT5XA==', 0, 0, 0, 0, 1, 0),
(104, '14aa9d0e', '823887392b4a29d1aa4a96fed7e58ee5', 1437039398, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'De1AsvIjK1ivESYfpjUpzuFgHlNQhoPBPBd3iWIrSR7bboWIh/qaHWwW5Xi052V62VYa0TuAXEXYBqc05Acv4TeL8kIyDvQDEvaGsCWOZdvubHCHlADgHNpf5TJdWz0B', 0, 0, 0, 0, 1, 0),
(105, 'cf9e99da', '2aba45d8fd04940e49d94a705741b562', 1437040027, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'owVpXDkpLsLe8n95hb9y8esNi/5eUD+/tT6BqlUGwSt+SiNCEhoChgiE9UOZoTne/zgpcAHbvBMzUlxC9+4WZ56Z9oc9Pl7p/cjQVRcocXUHjRWzepHoaWZkAn9R8Fn1', 0, 0, 0, 0, 1, 0),
(106, 'c4c9e55a', '34096364f13cd8c1acf7141283cee791', 1437041259, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'QpXUIkcrXRPiNiLvNFsJFIDKnNTIpVxL27EdNguH3kU=', 0, 0, 0, 0, 0, 0),
(107, '59f62f5b', 'e101a35911943b7a65774c746b1920b1', 1437041344, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '0auoxc4uitk9K9vCpwEkOGD+5Z8/WDSimFcSeG7tOP140uhSbKotFqN0flNMzYVrN+OTPI8EybDuhPawMZt8Vw==', 0, 0, 0, 0, 1, 0),
(108, '4a9f2541', '5af2129625ac35031223528b398aab31', 1437041566, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'HTQ21ycrdqqBd5+1NjigHsWRH1FMbwvKcNbhWnEJPew=', 0, 0, 0, 0, 1, 0),
(109, '1c26cb97', 'a1adde33f7dd0ad34fa3c8e1e580bfb0', 1437042378, NULL, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'LA/t60xSshpBX/tdg5nev8YqdIuN5z0QKDDsLdKktAU=', 0, 0, 0, 0, 0, 0),
(110, '047aedb7', '9fd3ca7491a0d72220264c846eb5f581', 1437293071, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '+09L6P6FZBp/HSzNsilf90kfkQs0+eBXPYV/UXAQl3fSEX+FkM8cUrcXekqgE/8MZ2vyquxgJ48JE5dYUKm8g8XDAf42gUXW8DlMK+ccSpvdeGdJI8MEF8B2KatwDAAf', 0, 0, 0, 0, 1, 0),
(111, '472967ed', '90ad77cc8b8aa2410fbcc067879af2b1', 1437294181, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'lQVvAyDjOFCgidTo+x3zGhmabhdXKJpH/SVY/QPvFaRR62xHIzWmXDos4qxtyFjU8dDwHdYWF3z7Myu7vNl/3N8lCHvtAl1CcPb/h44qbdPttN73qLKin9qz+QcaTQSk', 0, 0, 0, 0, 1, 0),
(112, '7b1f2c57', 'c8ca4e8ff9bce681403230e155ad96e7', 1437639883, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'gX9ppqqWozuCMnCRvtebFPLKmkUghA7vPkIjZdKZ9SE=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

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
(110, 1437639883, 112, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(19, 73, 'sd');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

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
(24, 111, 51);

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
(8, 83, 1, '[feel]happy');

-- --------------------------------------------------------

--
-- Table structure for table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 16, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_places`
--

INSERT INTO `status_places` (`id`, `status.id`, `value`) VALUES
(1, 71, ''),
(2, 72, '68'),
(3, 73, '104'),
(4, 83, '9'),
(5, 84, '1'),
(6, 86, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(5, 15, 5),
(6, 109, 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'drive', 1, 1433745199, 'a0bee08a', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'W0hCcZpdm6iZiDWfTFUNWsACrcMvrl7/V8RGwHMqSuS/0mCf6IG+dWYj4jtGKNSSNleHX/dYcFsJUnWCu3hcIw==', 'audio/mp3', '49607e4f', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1433745199, 3636470),
(10, 'drive', 1, 1434614101, 'dbabf7dd', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'n4606qWwd7eP5sWpnfBl3YLHjTiOEdBZnTRR/yLYWvdxH8PFWEBz67cUdi4liGGK6Usx/+bcng5h+M+87gj8mg==', 'audio/mp3', 'b33b94a8', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1434614101, 3636470);

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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

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
(163, 'drive', 1, 1437042379, 'b5bf02ae', '', '0', 'K0/jG6/mhUAAzb7tjVrWhgW8eOnCeziPBGCsstMNJywuGqGfVSWp12peFk7iwmqRvknBsSGplHgvwpdp0m+Fow==', NULL, 'image/png', '25492c91', '8d301478c02c5f731933f6ee94a523bb.png', 1437042379, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996),
(13, 'drive', 1, 1435497531, 'c2b70853', '', 'a3afc88b6d573875a151fa8df25311ba', 'mmD7J4lIvDbW7EsaX2oEyL/XuKiK4NInmeilZjUz8xIP/gw1JzLoSznf7Xu9qgYC/9AUL9o5LT+oBkeNgIEPlw==', 'video/mp4', '85f7ab95', 'GanhhaoTimelapse.mp4', 1435497531, 41635653),
(15, 'drive', 1, 1437042379, '600a93e5', '', 'd60188b6fca5f034cedbabf6af1f0caa', 'fEMcLyZu6fxjLfbEht1HNhnHUdpC0BNzYz4j7PB3omzeN+JKYMe4fZS/jKw+C63cZOK+NmEGAe5aa8Yt3nIa8g==', 'video/mp4', '243d022c', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1437042379, 47963315);

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
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 4b6e16d36', NULL, 0, 0),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 314482e1c', NULL, 0, 0),
(18, 1432316172, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'b6b3e0c602', NULL, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_contact`
--

INSERT INTO `users_contact` (`id`, `user.id`, `private`, `time`, `type`, `value`) VALUES
(1, 15, 4, 1, 'email', 'lamhieu@giccos.co');

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
  `user.id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(20) NOT NULL,
  `browser.version` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES
(1, 1431448459, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(2, 1431448489, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(3, 1431448532, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(4, 1431449023, 11, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(5, 1431449116, 12, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(6, 1431449566, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(7, 1431449644, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(8, 1431482044, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(9, 1431494182, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(10, 1431535061, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(11, 1431542858, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(12, 1431621741, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(13, 1431621766, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(14, 1431621776, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(15, 1431686410, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(16, 1431755673, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(17, 1431770517, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(18, 1432021986, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(19, 1432043417, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(20, 1432073141, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(21, 1432137064, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(22, 1432140658, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(23, 1432140881, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(24, 1432140886, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(25, 1432211631, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(26, 1432257626, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(27, 1432282976, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(28, 1432302096, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(29, 1432302098, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(30, 1432302110, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(31, 1432302150, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(32, 1432305137, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(33, 1432305184, 17, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(34, 1432305637, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(35, 1432316174, 18, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(36, 1432327995, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(37, 1432388722, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(38, 1432479801, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(39, 1432503377, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(40, 1432503384, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(41, 1432503414, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(42, 1432505071, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(43, 1432505087, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(44, 1432564363, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(45, 1432565372, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(46, 1432588176, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(47, 1432588284, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(48, 1432592071, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(49, 1432595562, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(50, 1432611563, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(51, 1432692614, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(52, 1432696112, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(53, 1432738520, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(54, 1432773960, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(55, 1432961727, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(56, 1432962701, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(57, 1432962706, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(58, 1432968925, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(59, 1432980577, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(60, 1433045231, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(61, 1433134331, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(62, 1433226391, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(63, 1433243919, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(64, 1433247421, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(65, 1433306339, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(66, 1433309189, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(67, 1433408104, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(68, 1433411240, 17, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(69, 1433413859, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(70, 1433478500, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(71, 1433743211, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(72, 1434035278, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81'),
(73, 1434090969, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(74, 1434092522, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(75, 1434100077, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(76, 1434178950, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(77, 1434264463, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(78, 1434284172, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(79, 1434364874, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(80, 1434475164, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(81, 1434521843, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(82, 1434613261, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(83, 1434700188, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(84, 1434774832, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(85, 1434863860, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(86, 1434863864, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(87, 1434984798, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(88, 1435045167, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(89, 1435045173, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(90, 1435045178, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124'),
(91, 1435305659, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(92, 1435392391, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(93, 1435396013, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(94, 1435478621, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(95, 1435563373, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(96, 1435567103, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(97, 1435567142, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(98, 1435567332, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(99, 1435643650, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(100, 1435645618, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(101, 1435647007, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(102, 1435647834, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(103, 1435732749, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(104, 1435826175, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(105, 1435836503, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(106, 1435855128, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(107, 1435912334, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(108, 1435954922, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(109, 1435997898, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(110, 1435998112, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(111, 1435998323, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(112, 1435998438, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(113, 1435998507, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(114, 1435998638, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(115, 1435998768, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(116, 1435998949, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(117, 1435999182, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(118, 1435999338, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(119, 1436021764, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(120, 1436030347, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(121, 1436046157, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(122, 1436124815, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(123, 1436157240, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(124, 1436214920, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(125, 1436235075, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(126, 1436291540, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(127, 1436295112, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130'),
(128, 1436295350, 15, 1, 'de4d67ee', '113.170.45.132', 'Windows 7 (x64)', 'Internet Explorer', '11.0'),
(129, 1436295390, 15, 1, '65720525', '113.170.45.132', 'Windows 7 (x64)', 'Mozilla Firefox', '37.0'),
(130, 1436305187, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(131, 1436400605, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(132, 1436446757, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(133, 1436479666, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(134, 1436680420, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(135, 1436757882, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(136, 1436843569, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132'),
(137, 1437032284, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(138, 1437034477, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(139, 1437038066, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(140, 1437292394, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(141, 1437314086, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(142, 1437314143, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(143, 1437314215, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(144, 1437454108, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(145, 1437468844, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(146, 1437469248, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(147, 1437469646, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(148, 1437471061, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(149, 1437472230, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(150, 1437472276, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(151, 1437545739, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(152, 1437545808, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(153, 1437545812, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(154, 1437545824, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(155, 1437547369, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(156, 1437636927, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(157, 1437638032, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(158, 1437726169, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(159, 1437729944, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(160, 1437742886, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134');

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
(3, 15, 'user', 15, 1435497531, 1437043348, 'da65d66b', '0461491b', 'ed269e40', '81a4002e.mp4', 'GanhhaoTimelapse.mp4', '81a4002e.png', '705d5894', '0', 'video/mp4', 41635653, 42.666668, '85f7ab95');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(5, 15, 'user', 15, 1, 1433581762, '5ced9004', 'f65f1d77c7249b922f6487e72dfcf149', 'bÃ i hÃ¡t Ã½ nghÄ©a', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', '', '', 4, 4, 4, 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', '0', '0', '18338411353ae839453c12c1c70d39fe.mp4', '', '0', '0', '8937f9a7586f9f04ccf805dadbab3ba7', '43f28c42', '0', '0', 'e6ed291b', 0, 28178996, 'h264', 360, 480, '4:3', 675286, '2997/100', 333.831665, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 334, 128000),
(6, 15, 'user', 15, 2, 1437042379, '0e3e4465', 'dafae35eaa0ac8d49b7b071af45868cc', 'Biáº¿t nÃ³i lÃ  táº¡i sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, '8d301478c02c5f731933f6ee94a523bb.png', '0', '0', 'ae27b319134ea5f37f1b16eebf669cf5.mp4', '', '0', '0', 'd60188b6fca5f034cedbabf6af1f0caa', '25492c91', '0', '0', '243d022c', 0, 47963315, 'h264', 360, 640, '0:1', 928819, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(3, 1433581791, 5, 'user', '15', '0', '0'),
(4, 1433741874, 5, 'guy', 'da65d66b', '0', '0'),
(5, 1433746592, 5, 'user', '15', '0', '0'),
(6, 1434036789, 5, 'user', '15', '0', '0'),
(7, 1437043142, 6, 'user', '15', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=688;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `status_music`
--
ALTER TABLE `status_music`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_places`
--
ALTER TABLE `status_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=161;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
