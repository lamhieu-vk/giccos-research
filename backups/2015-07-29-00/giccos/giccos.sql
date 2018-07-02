-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2015 at 10:46 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=latin1;

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
(695, 'en', 'pushed_content_from_site', 'content from site successfully added', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

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
(180, 1438158478, 'user', 15, 'add', '', 0, 'status', 150);

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

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
(48, 1437902579, 'c7627f17', '113.170.45.132', 'table', 'Blackberry', 'BlackBerry Browser', 'mango/webkit', '7.2.1.0', 'Mozilla/5.0 (PlayBook; U; RIM Tablet OS 2.1.0; en-US) AppleWebKit/536.2+ (KHTML like Gecko) Version/7.2.1.0 Safari/536.2+');

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
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;

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
(237, 'messages_postion_timeout', 'en', '300'),
(238, 'hash_storage_static', 'en', 'g::key::storage->static'),
(239, 'users_online_timeout', 'en', '300'),
(240, 'regex_sites_url_fstring', 'en', '/((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/');

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
('WpGVI1n-pNMXb0j1Ew7wa1UbwwK3Pab3aq0PfjvnoD0', 1438159575, 'doqReoOKmQBp/oCQWBmx8NqRFpEdzc3W9DLywcUuFXgHQqLspB1p7z1C5YUtqKoIfXtkkt6yNGPLAO1frZjc0ONBpJzlec72antin0vTO+q7S/KbNxBulcNI5KdDq10Q+8Wf9oOibsHo9QcHhCFs1dV7H4miCDr98lyNWBRc8Ul811TneODBzw7NBuTKlMgABfMWwMkmo/6WqDXjMJsHjJjprI6DuRt1LRO0bxji8fHd/BDUEbRSiKzs4UwML61ehNsFlkaD+etEj4/eZpsoqXVSM02HXfXQDnkXCdRsCK0+54tRVtknZxyj/q4HNGD7LY0xf4NMnl7vQvCg6BEVWwj83nb1km8BpsvtQU81WiUeNLI2GkjINdihHMd+6RnbRDi9bJ3R/XK+yK3MeV+vptuFmGm2aLpeqdT8lwog83AGor9sdwYdgYnV2U7i4qpewFGk9tQgqJg5uLpv4cvBOruKuJGLweSp2kyqdhobVrzMY74WSfQR1g/BvUFIV4tKO/xSgt23e5PdP24/DYEnXM0IzVunnK67fN+ULI8dYGxjrwTlRASsILmhWBzL6UXBqXqmeNmvjHvgy4Tyq2j0Shvk8md2juNHwJZWiillnxIlc5Vksr72LOznhJD2DpKfdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl0TNRtnIE7+f578TI+KWbbda5Vo1ukJ0Q3x3Sk296D2vDCoJlaf56zLeFwSTK6ng8S3d7QGZVKJQvnUfvScccY8QOlYFUUbwQTSk7q70CLZ6gMiETExlsECvcB+3Vt1PImyq2WfmPDRIMZ4rlxDrpmSscvC7BZPmWsnYvCtXNnXqz0TEf/tSqRFbEQCWpcqB7BX7EkwU6bdDxCBS1C+aI6jacfyYpiMY4SgMS4TcVuauArWNOqOvkrcr9nbXj6DUgrHV/Q8HTISh5IrqegXez1te4izwLCjNSQwV5CAucuk5cVDe3fRj1K6/ddeTl7a1blIukCb1J+9whhcS0Y7UsdonNIqvKzLGmwFiJk5Ertxjw6+5CeUV4owulzQv4mAPTvFV2bMTtIiNVfP8ocBtsNqueuZTZEI+215TCZ5yOirBVqBCpe2xu06m/mQsDIVtjpiZz6ftGs7pSlmFTaOaJbr8oPgVLw9Q3NNM+IHTu3e0BZV0bBETHztRPKrRNANyyMaX2LMKYcMCsO0CM9svrmLpSrz0xkOKGgPlQ4TwCW/r7ekYglDQ86TAuPAF8mV+AbDa4+1YKhNsLOjYyi4uuCaIKvENn/jiZjawzvVRW5e6oqSGvOUFQ2t9mSLhcVSCATM4zzSHZq9zfzJSDruvTTQWG6wcxkXfJkrU9W9C8Ql1ImblMjUnahrohK4Yw6IrsoRXMgI7ciUAeXGLUE3/crDTzDSqsJ/yHIXArnQIRBU6UVXpEYAhQXl20Kr4wMssjSZ+46GQAJ1pKk4X3JJmbcVimtZjWDPctGPwJVNDFRQWgYDt/mPJfMvMres3yd79dKqt2CU2XJrSqVGeTmv/+5rz2CpobRt8MB6Scg3X1mtLQYwSVVwnuzunr6B56jZGk6DKDzq1tE9Tj91YmgdRrZPimxvmQk1mSPFzgQ666bMYNnvwpwnKwbwO0hxxKTXytPr/NvOrpzIiywwcUs/GEVFmzGda88+N4fGfXaYtyY29Vbazc1MqWQkC6rBO04TUHH7Ap9UOAKeuGLGn01+pOVI+L2pjYRTf5mLHUOPo5R/ceQ0vUBBNZt8R8Lqj2UN/WeGo7mLLyLgjwlmhwXVZampAM7lvVBxUmuW5MiBz3in/kW3OLlUsOY9pMJucgKHmultvCZS0i6fDuf7IXPOwt1OgkKeEp3f+LhQz8twQs32PsSjd9q+EIUhuc1vJNeGiT6nx0uNym/SF3pHp0YGmgwz+6YNMAZw1bDyjD9cqSIinmNV1moi0QcWJ1IIPdbFZ934EWM7JQof3U7GQrE1z/1t1AP73042X99KkV2Q//LbyJMMwoRTyjSF8lZ4AL5/8i8FJJz/uT8aq6loE1TIUmPhIn2VYADyPC5VkAdnVGA8kcsBeYVszFzMNhRx1cvEbcAY92BgtT2N+VoG1W5IzET1GSqcs2YE/kRwzwGGv1nQNHPZw36IH/ygKBUgNEfAkx4rQmRJOBQRegEuYA2aAqOb9fpqfw+NJuU6jElJawx8kjVUWm2ZLzEzfO0U7HR8+yM0Gd0j7eKPikUVRdvlgxbAbqJ7yjE66TC7ycVGBBqGkUhXpVt8aadQN0zkbBsWjxSnSO2d311P4/8+yJYrpZgRdAbAGdrHKhBe6QJuisJejF8TvSqzuDJ0kfFENqvi4HPO5XtOGzP3wsjVZbokrTTuLwm39IDXzBHWi2uo11b/KF9bTIFF7NrN3u5g17fymfrTeYLf/OHDcZAHxcrzQgTqUr/YDk02iuR330HDEBcd6t75MRkGxOS0XiNCUIvT8Kd7Xd4dPqxxB/aKSRUyTiN/yVWqFyBVPt2OnyY2UXeAcp++lC6XUhQvz/HXkCoDT6RsAMr+2XF1MKRbDKYQ7VzbgnrKX3/6rFBThZLKhqIyDiendSKqUulsctPJxG7HC3i/6gO7sxKQhrtO8pepokNh/DYmThUR0VefEk8OutwoM/c6aEuNjQwCE0aw0NSMc8gmc4pPd22MsHLiTJSIgF3GnFEuahatHssUjPzF0+6v2hVCBMpKYOotfckwdxSklymRXLh0Dbc81U/33lhjpux8+UsE/1xiA/LmTVdXrFBxLJvTPw8TQywD9IIZlBKlGMM7z93xNAD0hw+ST5u6N/jnS5r0dsml1W3SO+sJKA6NSoUZRdzxzQLUGBPiMpkmxGujtxyK9tGZtPR1np7Gj0A+SVJi9itHTo/hHXDnz3+AP+BBrx5pJCGjTPaTnoWOzSW3GWEWC09ljUE76RA7LlIQvnQk8bCDHIHzwWTZILwKnmTRJqxWaAD+ZSEQoKE72ZSTF/1DXZd3/oixDkNfsKf6AVB0xz2DHkmTb9jmFuTVLj67wW8c4n247X/dH2ytAEnvOdYXBMJVw13EuLaZKAQ8hto+B8INw7pjv304n0tepewTr7t1vd0kXQCW+l0D91keOzcP/RwCxr0P1PqziAI/OCZBihKmf2e9TzEa/5uQCEzdz6XrXUSzOU5nXn/2mQ+hMlewxU82qjObpsKruaSkitIMixHn+8H0nCuMflJHbn20aDHjvUnFWDSvCHUXDC3BkSeijOK6umX91G+Cb/S8n+c5RbrtBu92WeeKL5FTcXQ9rB8h4NFhhonqYOld0TxNN8iWFDmFbq1UW1CO1NLyuCxbQ9O5eGCwD1qcf9I1NvnOXcElZUa5NW2bzT2SyvVo2maUlX0Ij0Yso8QkiNJi6iXtn9+KPOPY/kDzjilYgs1k8/FtaAAXWS69IqMB+FkRTwG6YiIvubx3f2mXttD3leJ6bQxowo7D4ZKMnPQ3zPz3nAxu5AK+L5WDUA8zCAkB/gIsYeqftLO4SYf9Wz9x8MHQcmiEoLSznNfHUp93lyciBWi4JDeJXBfPAePvglbuaa6ew1dZXf5QN5htvw9Olj1uc2LpzE2fQMsvt+pPGd0VNcDWmwzDSbLg74eD5wwV+Wa37IR9sdhMxKnx6lNUMDmArbVTLrTsY015Sf+GlLJLTpxku/A3NBUZbQuNTwfd03OJ6966ozRvbdOOFSO2zEoNkrcSbhI4+u25/1rpUkyyEqQ5QEyaHqbpfQrqTSesT7jw8r+aA6iW/TsdG8HufLKh5Zctea0pDXZG/fOBj0nZU03M1JPebfv0cD2K6gSi90//nBbaqmwjf/5gfdCaeXUiD9gC0w9IviHDufL3FRvW1ZaSUdJZQz6plSmGWu52LT3LekUekrEkNpJ2lc68Pgb4vXV9v6dGahvqx1NmXUWgKb/Fpb2CZFPvtDV5NO1WyGCRPrhKEt80a2b+8la924wdmrc80t6reGLFqyMnKO49q8zFtZUa0q8TD0S9pS8cNuWh91BaXtBNbzOEyyJIaX3JnMfAcnj75x6AJWCCJegyRjx7i3NgFNo2hVX47n7EmNXramxryAFzwc0yF1R5Fqp5jURMTr0/XxWY3nF26UIjb32JB016O+f5LHbyOrqNTElthp5kuO+pVjELvEJ8/QfBR/GzLusgibyQLYjjCryuVh/D8w4c3fZjM9AdbS7wuidZXzvawJyuUPk5Bjj8vpNIM+RXk8PvlE56xsiPtGF17Jx1odZq8uJJF7wuCnfWvQ+kNS4Obh5qTrW1lYCHxQQzWR+PykJf+FtxJP1onwKilu+LVHmcdsI6RP//e9Kk/GXfOKZ5MC+O9Zeg9qBVeiRzQARkv0jWVcTQnP2Uzq+vp+ig8xqswGC7mP/hFXLlihVQh3bEEW5VYGaHfwws5T4tIAnMbdoiyErXvGETVol5xoo/mTPdJXI5oU210F9fnBZ0JXJ4yVO+waQ+HInqE01UFEupC+dTVdyaFTA8kN/3xWggwuFVerwBbR1NklqGHDK6Ur1cbpPl7HEpzGFTznISeBtkiBkIMK2AIO+dqGX7ZB4x2V0BWZxpnaF8ysKPz1qqmZaqFOR4fiZ2vjapaQFDGumY+OK+RHMXvYTgbj7yJBQtL8kE4HIB64YnL+uPJPQn4DnOfjwnLzY7grLDMrfO7N8Z67QNgazrbgj4nKcP5D6tKfSaOhz3AX8qz00K943JT7tvWKiGNsReHFmuz1cm0VNu2+pmfA4V/q310xYVZ4D948lMCcAarz+2/ftQbJKrUxgjfJSkyZKC2r54x5jDTrEXwklJSkgbmqfC8Fe6GVeCEX/w0MX3e4vqJplnKg7T7CoB9zP+nRZC3DpBI/HpfKc+FE5RDP90jbUTrVQW/Igo7coXHPXDO9UFpDSBcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+Ybk2g8lOrer1PG8Ht5F5ijrz4LHW8tZO2FhGKXK5wA3no36wrkJp164F+sKsqO080qe9R5WWsnVa1PXjzCS2SAr+VtSyzZAX+KACibbotpskgh03XrOAmJ8y7thVPDY/w+g2c9S+cTsoJUrDFfOjuqw2JAeoNjLfMGgndGjMEKy4EmzD5alU/zaCglAL2H03JvmCZqve7ugWs5IZrZcTquo6dsfIRgd16UN8LH9uZfvPvT2+CTaRyWDx019OFPx2tdiT8rYyN4HbSNI/7SMX9egXwu+8EXj9l3zgQVRz+HcJo7ccivbRmbT0dZ6exo9APklSYvYrR06P4R1w589/gD+Qwfw2cNZUcvcFvV625D03PevSeVSkf3y3CY/6dyT4Jj7SZ9jlnc3YDP0TXbyaIlNiExhWA5EF5Rq0t1/Pcsx+VYKay8D05yTTLh62q4jmfTXVPLKMmgrs5q8d8U2qP8iBcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YWWclABZWpXGbC6419BhzOGBvJgi2vZN5jzCFELpJSHq+T1bpOQ9/Kxgc4DzvjgjuDmO46SL+H1FZ1WRwOL3ONoAZC96i5XkWL2AC2GiLNNB+xi8uHqfub6QFLfoezKKsI4CdLoUY9cXf8ALAMN54nV7f2HcneQSpAUKT0si3zlvrKIAlrV2zs0nkUXi95Xf8BizOxT+pXce/96hNTCW+UzfkDsgo3DGedYsV01xupiAz0sBORKILycoowqCxGkl/7sjP7FRkGaWyQO/K55/WAzRQx3cgIoLaDhmPfV4MAPWACgcioMdAx4dPazN42QtuzoJvHC8kBcheP+pv++mIEgAW1Znfjpsv3FNz4a4kVzY87N12y0HlSOMozdNuxmBuM4SUn5JLJF0+mpAXS/u+9EgPEE2UdpMy5C/5w44ZH3zGw0LW8BCOvLZgOIfQpJ+etpjnELBVkXATDR0MKBRPVO+f/3ogh9UyBETJ4E3luRDdSvjPmj2mhKQC1vUIQ/oRJxRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcp6nK+u7mQ1E+ST8/VV/q7XbHV1wCDSgWTnHtZRLmG+0pl0uXGu1Oa2XBqIfsxNddW9DO+U+lkdUtxkkle8w5as3yYefdfVUsLjp1LtG0oyLtQP60PfOhF+JNxJOBGIhbL6U5HXOWoZpK6lbVfQWvdazW6NYGJO+CCMdjDFFp0xWicUS5qFq0eyxSM/MXT7q/aFUIEykpg6i19yTB3FKSXKUlzwRPAFmVHB6Ryerd3rz6HPgMuvPYgBmBTkrrgXSlxfWIKcwxZjXnBSnfkD03gc5nEmAxMgISrjTmevfF2A3tES+dOqHYd/VebLF1VxOQ490DH82/4bsTAmh8oZWtRaANItWZID5xW8tMKOlJ8fyNCy46ZECaHuf+5fh1M7Y7ELnbv/CNq4rxl1t8whppgLZoyv90JL4xDJf66juHgh6uYhNwAkP5kLvPlMVb8jrg+yDvkjnOyh5s4UZP/pvSG1YEg/oQO0XFGJ/VMTRKVYrblNYZ2qDtROMWcvg7dqd8yxk7BSGzOJMGiZN2UnkGiIxQZEyoGri+3yiRL52fjhJFm+swwmkuw6CMBjNjPZpWqWS88CRDBwKPjMjRFo5gJrUOEvW4rI/w4GJVnNTSL/Pc7AUulznsavJkQ1EYDB2kT6YPuMnVQhD4DO20o0+8GRk73HMWi6Kd6dMKMV9Ij5JAQ3/MoNB8Sqa3/++WRJe3W6y31zb6ViwSoHLCKQzc3gpaeqO+BkH7vxKlp6LSNZHmSt5OYbfGOKfr7XpL7TQHgLKjdtJ/JsJmZdnOnn2KjJFkHkP3lTHMaGzvEydjnDhS/PWTLTfmsy3k6HFOBqoSELVc8N+UUVklAlD5IdyMugmJYsZf6rVlB+vgGGmff6q9W+BNzO/yQnFpHDqpvxmjzrpQw4NAdvLsDT0G4mxTkxsnGPncUC0hHWj929bHIRGltEUnNpVaH6IgFwYBa8P4IjnUgMsDhuLg0cCp+rNI6/SKQA0Gm9i1I2z5Td1/7xPgJehs8NqY27xTPlOjPYIP0dW4DrV0k2tEu8sp5jYNX54i+5rec5PlNVvA4PCV4peVQou8P9Css/3aGiKqLm4AmH1FjnS2NL7md6kTI+IgiUGzDchdgtCgWE2oOy6c3RIBNTI++trCOthlZYaWEy5Zz4rzGpmmRFipTsbmuYEWaGkLKpP/OK9lvIZVjs8XuiAptb34l1DUuxMClDb38CXjciNI4dF+oI/HWqnx4wHMMBj8wp4itTDy2LMTOtP1eEmibwYJDRx6k/sW3E3Cs+DaZFDuSpAhU84kEgN47WqvdxfniN4k/p7oFMGn0QiM2uDqUcVg5XAYwVlNuyXl1WdsAwZT8NEIDaktaGClPNVHNQgHu9WcljqnQOYIdJBW1g27GMDZN9oSUNQS5KRB7SwQg06G89j5eJnH3/KtW2nG4+3f7FYQnqEt/oUv5jW7qryr0dAM7Ec6KhONbuN70bbuVTpvPATMAW8sQkd22bLL3djgoO4apoNndXkSVxMy0316uxapI/sLr5lKLMvXFbmm/mcXfnXnq7uSwhPeH+wklqne32JopDPKYccnJ26Ym9VUysg16hK/pbW+bsATmQKK0jAVz/TONNawwPocSVxBMaw1sQ1kJwl/i/gQX6UNfPaYZTBsE3lTM2LUJeyR147m06NlVbzz7brTJVxccjm1iWFQtw34DnF1a96B3LpULQgM5JGd4wuGSlQFjIB+S04T3hvNNvAls/X324uvO0lRNypBef2My++d5G8SFTtgTBGHoUaTkoIpmcEE55vZJM7RE8NC95olC42zzJdrShd1iQFnRUTtxnhcFlcPIxa2MOPBBBucFO1MLH6VG7TaDVywPrbTjuow9Nzn3KQ3wmsxkZ360ciUBYbxZpdGxt7StThu6r0qhNf0Xf04aFWmsu38I6BHhLxEqCTjNziZBSfIDzlOhavGF45Uc6v8RmBlECqe6TJnnotEdJNgR0o93p84lfXl6uCP8ZbQxI7jVYnGc8nMdYiBLW7/EUEPG+EtwmionPHGz8+ZHYijvoGxXTTldAB7RGizoxLMvaV5f3I+P7+xZWMfrG0KWUEI8w/nDasxn8g+u2tyF/f++MrfIF31OSsUc3hD5z4hyhdhKjJD1eMtRvPkrucbbriteZrI2FAXbLtYUoom3nzbINy/zW0RiTreHXY74sLeAVeSdSGsQ7Gqk9vxd9Wks+KPiHY2Un2S+k0gz5FeTw++UTnrGyI+0YXXsnHWh1mry4kkXvC4Kd05M+IEvTPHaW7Ew/7e2CxUoU7I3Xpiqk5uym2bL1xVLOFidQp7t1XM86EK0bHOkbIH0LEMsxPk0bb7REyiv7ZltMrJGYHCSKBbV1HuUXF6EtmPRGBwX9qz1WYYU41aqFDm9wtSQQLxDkMJVotVYasStyzH7XSZ7yR4oZxqAEUvHhDlv51y30qbKHc7nuvmXJ8CLq8IKeh2pj/bJcpSatQNxF+Q4rZmeam/cFESryFQZ7v07xQINuziOwIi8B7mX+iUPmfEpkIwx6s7oRGIrP00HTmGf9I1JesSn999hna0WFOK+fPmWfJX7ob6Fg26psQuWFWuLJS0Iy3ym96Mj2W3Lkg6oomoPbzibszIl5MtpWtVCGaHJSvDy0ZqykLG4iGpmrHRV0PnqVQ/US2mKtqvBQEoza+EUcO40OL3isTJqirHIBwlVYwU+AjVYVL4S0aMdn2yy1W1RDAWi10+gn7IuGmDFpKmHewhjELSETgH7tCEJzOyo0mCLXULYQgpiPfBOvr/l8C/dToqJD6pXtlsrvp+4CQTo4UY1HU/UdxqrVSNq554L3RQbbWvETgr+X7pi5vfvU9L9QBzWfesi1BSTURFtBftb2PXGLLxxnr/5r8yDI+VbvaBLwnlrfpQl1TUQCoqkTwkwlIn4THotE3MfCqwEG04dK52XywG2M8Qa3xaCOvAFmyvfLxKFqcffFXSR2k9JH1l7KKcXy0E5HS7RASqXuBcOGju+aYFohltcn9M5/gSGPqcOsxfN0VOlcrm3AvnbONy3jFzNGF93A8K914KQFIaSjhNDV/N3yjouXFb74WembFl9PYoHdRmMKS++Hp9APFgSu4hNGOnNDRhxmhBYHCVjarDtysXKBLLP2vw5ZNys12kuM6qiGTSavZ9oldYQxRpyLcD9/gP1woh8XXkCZAbyq8o5lFLJeuJno+vx9JrQnN4C74wQE66OKSjF8LrB5fUA/jmZQ0Ss8jYZpHAwpIk1UvxNO27jVzW833Ciwl6N1qh1CBwC7lvh5l79QquNUJZyunfm5c3h8kHTXp5tjxhGo62xv/GeShaSACgcioMdAx4dPazN42QtuzoJvHC8kBcheP+pv++mIEilzkGnlq/w9064hrjbc7Ptb0EUAVcfn+1SV97qi/iXG2Imsb9VflHylWrKTCCslw21oKUoxRymVPzoNC3lJ8/xUXjiDLEuLsOZOxHOzgc+lAjcldcvEMONP4vckcva3O0Hj0qFVhPxSPl/w758tWjLGCgthacM74RoI8X+jtVuMaOGaDQWOLUZqACR6EuMqNUJ1mwsRotyESASwQTKxUkIp0nyxhrMMR/jGM++Ps/ChUoNkQTP5rn2j1sUss9uTHtBCsJ/z0FxznsrbrT0eiv6foEjfncv/FsrQ8iARMYvmY/qZBNIS9UEFSFt3ks4p9+tAmUIuflLUXAUyN5wyuYq0D1JTZO3zdnT8Cecu9NEu46xu+FX052SlPd6ZQ28abWA15RFAOMESKV8xihszKluOcJXMQK6iF7vmaqkXGaiGVY8IVqWti9BlZdALWWpJOtw5Hci4cviyUQ95AW6hvreNBFzJRdZ+RtohPiu8ibcp5L/gJ7QoFJesP/G0Nsk/rQt/8K/ImPCN/+P7qVnlgu+Q9+DhLGj1nOPeDYCUEiacRbGNNuJNip6K1wr+LDsqVuwNWpmFoMphln1kiNib3r3aRHUP94aSRjikykqenuUU05HtA1U+ymj+5ncftgp4HuVnH5Fb2sz/Ika7M+Lx9fk7Zqyz3gu+Ttrh2Or9lIt+9qUkmcnpmnE5nQjhoRJPePwqKJTz08oCrdXUgn5oSdUlLqygxTV1u29CmVs0VMTlzNixtUmlUvPuvSS5YRF3nxDLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkP7eCOqdYaQ62DM/hWFabXW4mmMrb5rQYQf27iOlC35Bj8tvxvhsDlhL0zTP5LQ/2QktMKakRY6Hb1cGj2W/EYwCGzFwPQam7JX3cLwAI0rTSe6cjrhvfKwZXKqmJUzN2+6vgueFrvG0ZZtd2KQNz6/QyTApjsk1OWUoBYMdLgfmGrPAy4ZS2HDEX7pcbNdsPQa54oMdaYPp6425kk5eO6hiIwsXOIZ8Cc92+9gA8M7puwvXs5oRp5lbtY5ZEaQiRhLNxxuxFUff7JsDG9feQvmce2jDvF+ZW5ba21kbEDVi9BBtnFQ/xWmwnvKmv86lRQLIjT70oFuIhATqAHAfKWm2G6JXz18d2oBfvPGsCub7xf5v0gJOcdlDmr4snsNeYVNq0dk23E03ENKKjTlczSlRQxzA3kWyv7654/9paXdigMhgjSqotftOoWlfuuzsxmoyZDSeHbZ53UjL9ggHmCqeo/BtOHjosm8gpqtiuyu64ZbodzVLwt+yiBtDJNHHcB4YQnHeaH+QwJ+mFLGYGtIiP5g4mx3NNmnaCvtH8/2Y+DLHxxZ/adluJhBh30eAy3shCYBY4zYC37gfs5hEgAVsQjagFYJfnZ4btv+fDS7xnL/caga+oQdwAgJzMAHqkTbttX6Wi/fG6iZZmkys5Qec/NUtrGFdBAx/WlzrDVnljJ6X98h0bUaG4OIcPv10K2g7jt7s8+ZJ4VJRClQiLoz+WxYpleNSWQSNg/+T0iVAxLnSp9vk5fYYWXVD0hnjNi5mQmdF5uzPGD4VADPyyDG1O2rCAqC5Okdi5Js3AQaTPQDeV0tp4VZLUUJxbroAENkW7umfMGtwlm0Eaj6tXmN9AeJif9DWweQbgGXQKrO2oo5z2niaI7uaurHQ0J6jWs0ZFIOlI8fG7pota43z7sDD4cFt4OChd+eNlfv2EubUSH/Jr2s/DehFuEZWVY+7dylYC0R9b4yNwykoDoREOmuT2nlSVUoYBTPK8ixylTwBnQgoZd2YFPnecNnldywFCR/VnKS8RBrTtstY4TRnZbIq+eVA1gJouLyQ6ifd4kicCUdXzC9mB4XQjiq9XRnpxCb/fY3+a2gNYiIzhp3rwE0NoERrpre3XIPc/1uQC0HjwNrraYQLdaE0BiWAaa5AnyqO3HIr20Zm09HWensaPQD5JUmL2K0dOj+EdcOfPf4A/ut2jh1kyITh4930rED8BRGWSBJ67g50+s485C2uLjUMGM5yj/N1CRW2C9aKtMZq2FmtVZmdP9fvCHJD+rJjXXEHcdxa3m9CwccTgkIw/ZtA7X0M7pB3EySHENjtVuvG844L0b2HjYrLNGZBJ3jiqA3C5QgBtMbfDzke8IIMefoVkN8yx0l9EmLGGIpiOpOCJwkGWMTd7BFI+xKeSx8OnY5GJF8GWW+scI2guTVn60jQ02A8ccfD/eNorI6nH/ZRQW/NM6ln+8Zx3eXAFaktb0I07CdYaOL+Wrps2UMpepEzLRmkYAN6DkLx4yzHtQWuNylhzl5bY3tghzZ83sdfaUbgkiIMxNewxTbMi0eD1nb57r5A6XTl5JD4pCYbiUaMVa8I96FcnEY61SRYgjbZlNrsq5c9SD4F4zOHxT4ldxlxeDRuDQfvW38G8Eczw/yKf8VSFtynGB7Un55tcZB4CfD+kYoihMx7EM/V80TJ5zR4w6HwFD/De0LXEwfaEYGdZBgO3+Y8l8y8yt6zfJ3v10qq3YJTZcmtKpUZ5Oa//7mtkKoi2akJYXxfKP3J/8afUSISc6iM5QUpUsprbOfLXIB00+W4pAU8Oepi9fauOUcp5YQGmbI2saCdKLysoaxQ1TMEMOlB9+WgI6gPSgtJc+Sjh5hsP4qdZza6NZr4j1GVpM3fE9KzjffAnqSQH7oZs20BCF1JSNODDN+1U3kWGFcMKRurD6p6+xLJM8F8PQQ1KWpHz80vm4A68Zh086EfBoLNRz1I4e4l0t8JB/YGHjtYqKYvWOImqYJcOOJpSBTwXzjlg736nO/RFSDqt01OXWzPUa2PKeZ6R1urFDB5G5mZiQnQhn1SRrmnwCoKpqncWtvGfYAz/AAYIjBTvrW1YoIMLXk+ffvvIRKrRTlZlM5Rh5KR7msi2V0NzTKz04kIJBV8jnJ7Ls9T1brRrBnotPUiQDR8OnbUqi0xMR+ULEipCRXX2vmmMGTo7uC0Q756pmeCXvxwD3Tlk7YjYP09J0R/FV1+ScfvmCIPjzpikzQLBfkg/uIasdeGRa+S3zy2bMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcaShRzOO2lqN0y8a8rqx5KuhuvoMyqYWzJnFwbvw3kjLDKCnyvoUVvn/nydRRx7BYhOb6T8Zdu6aqKMtp1/1mNafbohJsKNyQJEnDegWKTujrwv+XMd5CFp1j1zbAqNTS6i6VCCLkmlXqICyMcEH91ofk7atNKNaV5zis9NoNSFV/qYOI7qyUcrVNsiAbWhungTbq937gqLoUbwLOTLP+6owXGOkjWTTOYLIyIZor3XqDJXvHj3hNRCQLqmywF4LmFbCuzQnve876bLxOa9iV+4Z3tNVSlBWqopIpB8rHPGXERqtUkBzwegK6lrKVqmPHQsNl3A+2/kLI3fwPBMrV4jUTab5NJYufq9TeYFCqBxNgIGf3jHH3TMQX9NECMk7g7PXvBs1c5c5XfrjjX82qXcgTnUB7XScq0Nkmm6HR01QgXMWimVeDLepb4h68fZUmpH7EwQL2SPEmW285OmNPmEHs77Pu369FFbTS+7znKgKJZ8/nFX8JHF/BkyYiOJorqZs1Gt7L36OLQi0+GjmqIwszrNbtwoCCzrRL+PobmY3xh1n8bejONFMTrR+1NgCeDjwMiXBArJ6Jbv3o8EeGF9rbXTxHGzErFEuhpjdbzTs/N1Vk6QrWo74tnQ5EWQ4YOJUlrf7EaOs5UZ8ExGkeeVMKZUXONRODjOstYzogLFogKfMuG25aXBRVeBzzJN5y2i9iz+sohp11RhCyidNWhtHO4FaCCc0GkR9D8VJk8f0U06NnNrLenkw2N3VzTo3XILlbX+Lg9P3lYZTxNFHNSeS9/gW9EePJX9MBs5l2cF7ASnn6olLBxzIAsVHnJJ0wyMpImaQzqkBF9YyvI8GNYykBkQ3b6fabQqs4SqTo9hzy6ixEbc7qnqTDPcKADfCu25+hETqkyytkYHDqXPSdE4BgZfISmt7/5BKSnDB8/BGxXUqZmTRAFXDLn7qz2weHejcAkAwurjs4OWzkONQi3o+yZJrkNjHvct5ovIoc+Br8M2msCqRQdv5Lg53DAebS1bTeWHkRnWtD53qUWVIqzeBmx5fsc1gG9QkhIZ1pkxOVtcZWSrSbmMIhU5cNPA0SBGTNHPjuofo1eS2sZE/9hvTXOIKqMJDyyUsOGbISGQjqddAK2vmoThGwqVqfS+nobikqvhWGz+5i763d7wRaRqtdDME9OUFxZ0waQbcSA8cudDvcgm+DVMWKaYmjnlJoqwNd6gLH71eH3foM091AlZpEdQ/3hpJGOKTKSp6e5RTTke0DVT7KaP7mdx+2Cnge7uqVuMc1BGd80nXwqeY2kOOD5HF1EeFIhuTsW3FI8MKzPEz/d/bK9mkmOgRYU/b+iHwQSFRvqfsHDyKkG9SR/H+TU+pUsB8IPDG2FY5+Ol+OqFDHyIwrtok/GkEcRRvD8KO1FsGampMi/zZXAmYcXYZdWrtJw25QNkrfTnM00Z2u5DWraNdtM+S9xYf/fTx9yuwPEzzAdrmdozPFPk2PGzBC9OR3egg6LemcxLtHuCTL35BU7fBt4w4N39CSLfZ7XQXUzJw00mTJfhXPHUNmsVch+g0zb1EAzAZhQBduErJLUJcdtcAkSn9HaDd3ys8m46GQi0SNGd4NHlLsJeYgvGsmQK3jQm6+AS4fFkrHCtFLMLiecFIaxWfyTwxa/4BsEPOSjpH4GvAK9ecFBGX44qX1IpDAUXB/WvtjUQH+da6dnQzoUz0pUAmi1dlBdvZX+YC8b0Uy1cV3nbC63AvrntFpx16eQPCFujko1T43wrwXD/1wqaXPV+Fy/qriO20RZQb+zvbxjJsTByxGQig/dakNbz2LfFpIAJTJNTmvyt8R1UwxsJwjRET9Z1y4/ughGvOyemI5bCz5fXTe3W8Gf1cx1FhwjFxJtJDsyi0F2ouahP5nXku+rw5DMxG7j9Dy5Lp9zRA4phlaaN4Km5l4K/0ymNApNZdP6AoUhLNX/M7ixJbFB5nGQll0TgVeQr7H0Iv7IjHyjR9b7mNm/KVn8tKrm3eOGS6xFZyrVxZaDwfDLQhcd8tUKU1OHHF3bqOoXI2oYqiTPk01K8YuBs5WtzKHHp+gHUUeOFbwFoSY4Z796fVhBQ0TD9RJV6IwgBMsO1i/hlhLy/e2Q3/tGcS2HIByPDFm9svaY/xxr3249qpAVskrdRAESxLc/xgcTZ4VjuGclQkJNAEp9UMoAV9wno55t5rK95rhDhX3m9PQfIqe5NA/ew08tbUjcWQ24Kv7Z5zz4VKVOdFTwCphq3UrQqRmzml13/8T+uLqbpfuFB78+eGh/FC2bCQfyNwD86e0t34awKZF+fHXwZ1U0VRA33UVM2eBnvH9b6A3dQeRIG8AE8U59a1TgUYK/uLmsxHZVFKwcSmbo6qFnhsm39E5TObMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcQzTVDjwHEAX1yOFECrmjxGPpnfNs8N/Q8xtpaVEUYdiNqtYpae82BMyPWMnHqCzc5MoM4rsIVTMkPgFdTFaEQUZiu0Ijhv8Q7m++iI1o2MUjBwJdKenLYLrX3AAcH6VAFzxq1e32aQWv2KUA+GNxuKrEaV7suXg0QYSM1dUsAa4di09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl2AfDcb4C22zTCzHZwqKkIjHWt8XbKcTjfj07QRfuJglKtPa9NWBYHIFFgHXxuyrDodsU/AqCinlmPW9iWuU6LKqnJT68q3juh3IgIP2FxJF8t1WbO4ys1/DK9E/2QLQMi6sbYTioV2PhD9QnCHoGlAc6WQD/Zfa79Znu4Ye0abnD2HQe24Mvdk7UlabyRM+A2rCrFlJFlWYWYF8mIHWa7yfXJl9K0ftAY7Zdt5fTa++3TxhvaKPDAI4b9jdF4iX3a+RROb97bolzHRLJEqf95miIofu9EWcyPmHZITgZr5S1ERpbQ/yIkCdbviZjBqGs8loVJtSyBzPW26Xbh/kneYZolSLKycfMCPv341yW9MqRxyofdkpCdnq5m89i84m9GJUrRx62YwVPXF8itU+zYFup0cEyOyRdeWkdFu7mFL4UBcWqjiNcQbFq8skAlN2tenjn2wKIe6MNOBYCwiqRYTUiV3eQFnOqYZnq0kHO0qFYnRz4QTWRJfpOx07QNrVqJ9K8OAVonhOo1jpyO0YUYvzLmNKH5jn/WKg2MjrG0WPFQyl1d4ZQ1PNp7QRLG8gqaN/kMYzErzSZhZkBfRw2YbTcfqMYGBoRzqy0XsJRnANXDs9Beh5a10O+02QvWDHlFY6UG54Jm8UuAk/minVxfB4LUhvYxjzTYpVQ1t116beqEkgjVyMNjXjbuaCATRsB5FYYXPh6lEb09FJVkQlyeBmCLdjNC7V/h+LRXIsJIDmKknR/VMqB2p0iu+G0QKe+TmwfV5S+AWxoLucrPhVnimmtr68gdUq8fS7dh5M+TN2VZiRfyhzpXFS+AT+kyQTafZ4uJ485fil11jFVkOVbIA+NR6afrH8FPJmPqcEc7L3Sw1sZu1vnvqEEe1Po/5u3/EsHKUZ6PgoE0XUIeOf9RpFHIEQFog2jasTdcVe2M5QZxRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcpdk0WQEccBhRZs2bjAdUVVwU1XdC0rvdn/zzeHEQjtwmeMTcw0LCzu226d1hHk05iBa5+4f6calxB4AmgkWS9oh1ys5f7sRJerkIiiVMYJLnFhpkRapXq8WHoUQL9Tj9Q/QmscRuy3TWuw10N0nvdkh93/sqBuM3MDi9jaMuGU1+kAjnYRn69W/v0s8gLrwXQ2S4tVOB1jSNhkRh5G5dzNDrG0KqTbzDKb568GkfPkvey/aJ1NdLzS3QBCUibuvqMLggInVGtqhIh0PgXZGMU05EnHMCWtTKB0jyRN9rJX0jfK/M4wSn3PrFYwAAkKomYonF/769qFeFhYajp6wxb9TZ90PiOMuEyLnyM2v2vtvCXts0yE6YJBJVKsAERxX1+JGZfG/i5b+bxqVqnsCDlBSZWxMFBqJtLpx72k5+MiCeVxMEtPlkPYKNvHD3oTHb7RFTO4FltzaRoFwl+rHorArtutf/prCWfdGMglF4popgoWI/r6F14DROg1dkE7h9i789EtkzXjUDJUbH52czA0jf/nfbqz98mJbCVBKsx2o8V/AzZ+RYkaREt590oYAIkrsM8Q7Ltx2Os2JkecTqvB9I4YhVudvuv79ThEJC8SxeoE1WBJ8zqIUfs5TOj+Vzo+Tag9+vQMDonsIXMR6ARFchggmHWRT0gc6NudnL8qCRw/3y/80GZCW58/3A3SFOAL9fShXUcQi9ySYj0jbtvxXbVbJ441irlGRM73d/mMJZuh7gN60yQCDaGWSaQBKYXAJNHm2zJ7Uxx8KuB7sIRpWu7SfyFY6+QJxEG+fGbdo1TBNwr+xUETQTZhYAXboUdAG9TddvuwKGPALKsVW9/a1WGjpykjy539guL4LUxFv8j7kTCpLC8bLM7vYiHFJP2U3GzjXupwOIVFFtDoebfqGx4oxOWra6gl2VBmxJlbyr2OknQJXyGWpanYDWKYhiF1uXJgKEdbbO8Ml8XuUOn4n4zhyZfhHqVzXzgRYvr2u0JJRTWIrpRcd8nuzBMC2Ya6MNGGf5HwDhKrEJvspGjgyJkAzfS25g+fUidbjcPKGA+0NhlfIgza6iVr89JY+qEpYQvaq6CWQyL70Y4d6qePQ4Tx03K+htoReVxf+pi9WWQ8Lhz7lnfzKrVqhb2a3D1BgO3+Y8l8y8yt6zfJ3v10qq3YJTZcmtKpUZ5Oa//7muoErIMgM+X2ovp4ZviqNOjoB1Ob7eHkVCxT5xijmL9D06jngr231Kd4L7Bi14lZas3oHUQtlQTw82SzNRcbw+BUbG7BzAXjm9UsBTzV0SwcUeB/ZFrZU0I9orVgHulG1dmLBXJ21042YvDbZrpp8eMs/BF8v5GpK9f/wVxBOg/BS5jbUS2rwyaDG7SSpTD1DwBbf555MBzadZ6FOtceHW+E/SUVJ0Dk1Hms2xegSOSNUonTThk4Zgda3dlVH/VpBXZhHw2UJSDkFJUvrFJ91tB580yVzrYqbCmKDvJXHR1TVjVg/ho3RJxqTPwGJZlwO7pSiujbY8SbyFmP2PUVTsAdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl0V/xi59QOkVtAvZkNmZxPaDv1GQ9aH7uzwyiqkd0JEZR8uhTOPMtsMl95nNyPbZ7i4t8xbUq/ISlguktb+Gsta+OmUCRemRPwuAl+w2HmbHdV36UDUACsih8vsGWw3JVvYCDvHeFF3vUzHL9qqNhZbi0lbY6CJ/cUcBE/wvgEUbQGl1waPXRZphwkBtCyni2NLpsSMAJ837EdQgLdNLrKJxD84u1olYb7whA9zo3TVWxPRzzKgb4hpHX1DqlQnHEbpgHR6I/prPEzvUNna+A45S9vMVpfFVmNVtKIhhTHKmwVUjFFvV1BBCKQ+bu6UenAwdaz9kfHFCoUWz3EkmoVl/tRxZEuWqZuH5h5mWlCcQgunOwbY69bqjuez8a/RpiP6B1KvleVuApM5YgvUxN4QDZaglkq5Nhk2+dUAvBb+CXYtPct6RR6SsSQ2knaVzrw+Bvi9dX2/p0ZqG+rHU2ZdT5rlCDZRg7cNQm1XJw8aSZXV3I5TNFxcgsG9LT5llz6QUztie9/0usAacpBYhzrDp9qnna7kJtc/uuYxiyxH1xBL/69+0EH4tmakiZo38tDdF7smaIQ8ktlQdFCBx91qV+lbXqTiDuppdbDKL9emKxU7txTEQq+MZkPgoOmTl0XVO8M5KLdT6kDsxN2e8DNiLGAI7pxe1thIXFsH8nnbVpAyIJ21yPpgMZQT04zqRdFMBB4mmMFEf+NmJdpFWmKC3cf8y7uZXjHmVKHFlXOe84bdIR8sNenHXh40opMBpcSQJHJrnjVIr1+++WtjTzv/EdhLucu3BA/V8nkn6cvywNmQNGX/PvkKO4u2zflWVHCkl3WfO0U2EZ5rsHcOKUiyflE/gDgOlDDQdkc3Bf7gTCHB7tqotdVkjLHP/oj4TRM4aLmqGZhT7KXHVvKZ6QVw0L5qaDLdfu+Us8d6aBh9Int6yg5nCBdQA6FxbbB3LJYriazMzhoA0y+1i1Gd9fIUBnphyZQCSba9+J6t3lg5/ZQr+nblpBSfLMy/muHThNVjE7momTUJH0MsO5uqyST6BOZMgIi80s2dd0a5eKdFA5xRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcplsbYvkbFOk4ugiym+j9GSfJNn3EsYAN4Jdw1NpZKLKRHnBph1h58G/65vWetb/s/MqjZxO9i9IILw3zkmlEagH7WRjuEpenFonCvhd6dR0mnTrIqAthC+nDvXmv8NjiYyAvX98pnxHyfLzLj5uV0hTH8RzGE5VA/izpF7/Vx66+ZBsqcJNQey8qkXdvH4fV9DF/9zmsxShemgCAD3FD0h+qL3I9ujTLOfTVdxfjltvP5Yq9LXeaxtdSzougKKFQhq5widxXZvvyv40QE4fBLAnwF3619xvLPFu6v5G7exdPppcyOS7yVCEsG3eFxxQsGYA2ruR/+KOjg9MGImruw5oZfQjEoc9ymhn1/3OzeI9UmJWned+C5K1mHsJ/olqnKDL85BcDQtsasqdSX/LtBn86UFewhjXy6uIiqXA7Ao67OR7bXIfKhEDVamdVsZJlhC/IudeA9mY+qCiyTuCD++r8/7m1RSyeOlq4Ur0bbP6ivj4tW8j9VlKk9+jL92HBl0ZySaaTiVe6iUoYtYDoMW8+193/egevm9sBLXpr/Y90fG5YrGKHzTPoy6ykDr6KRCPapZVHQ2mwdcdcv+PQmdEYQea+jU6L+3LQTgpi2ud00sU3S9yuRNBsVgr4x7cbsr5apRntqoQsdbLD1IE6ixsy9aEys2tmlS1nq1jtP9HqniGa29xqZXoq0JFA9ewCJrlBo86yiFZUWB/PqsuJEzOqATv9RrE4p5I0W21ua2HbxZxl047F1vy27gnY0eKF9vuHVCKP8PKX1TZDCqLW8szx+EJ3lwoo5guAOrpP85cwbhWW5fCayb90uedNa/cG66kkk8sgK3PhKw++fESSNzOJ8leAdXec9QSowK2Wwq8JQuQ/5sb3vtcTRbzWv8qK4yn6MbPcgDbYG3vq7YQyy1koZkoPsH90UTy5O42xLiwIvEJj0p5zQ6JWVwBRKUrfhe4bRy/vOT+qWa/rIrJ/TV0REKaDP7tgeJXHDnyhS2Z1qvbHuuWkTXQUygj14UYggEwLabkAdA/3sHnQ9HNNWDQDo0M+z8CUCzmPTc0V54sHHCHsT4ezflOjInwxR4mb2Gr+91cuBZBNcR1IUIFA+rb3eOARNMJJwG+/BGWIeYdreob7zvOiIkhV9Q3H+G6UHGnlupgxkxCx9Jm06qzoZLgOynHeQSR2wTbcS8tf97SEFhqzbT8sZ7fFGc4Euk6NPlcLOvSGgVQs21BoDnVW6kfxsYJENUWva+LmEO//P12pjOF9epaGTu9WJBswrIKJmF4fcLTDGZbreO5Sc0yajzMzVXtySwkBysJVjcnPyZV6z4yg+bOJhv0Bi1gdkkn3TSCYF4/KrjEm7pjs9ZLiIurMTFdR/XYpftUZyY9lxlnNp3dqKI3F4OUNFQjmUAXvgoNFmm2hjA9ExN1R++ldQ6V6wYOgNr7deCv+NRNWzj3s/jojt15DLj5ISBVGDLiA3eYK8lkfNijsZSg0Xruh+cDmpjtz7VEZd02NYcMKtgsrJYimxaFjJzLO11qY8rtP/TtIEHIxPbS6i605rOQALBhbFTPmDa7pI9r87aQosS4UEHGnuDl6e72CypnITiZQxXqkLYnS0T4TAIykq0ZP/7apLYCibxkouCpV1od34VFOumuikUKST3rPITk+II54Refqg8SpL/qnSErVLulDn4N9sH1QLySfnDgHCmSnwLAoLqErPfmV2wRyYag6yH7zuO/6I05YR1yT+p5ztNO7AONsfxqBxG2MwTsV7pbv8RnyaF0iPJim77rQb+pZShca6ItV4peCr8/c7TKx1KE2o3qJcbZibwfeFelSGTE0/TGMknCZD6YHfZYAgn7MQ6D0Sv7+dtZwwoQ7mq6ibJG2EilVwzcN3h85KJPQ/Qbs6OdX8pHWiWP4oteWCX315lHPjMB4rwpYHNdFILnDsxW/N37jqMSBhYasjQfqGWuBV+uGHATpJ8fNpRNm4Hpatrh6AMD6DCwol27pjVMazAv37+3w9RAE1Em/AJxGjDu83p4nhU3yeARmqOV9uA4uMHswKWBh1xLCfv8gCvYsjhOZoKxJQwCdFQGYicfxGzxNIOaKARyN/P8/Db5yb/ViM3zpOJwrFFOLqDw/hCj3Apt4YL37eoZGFvB0v889A/G6ApXO2Q3ZNN4ryX+YgCT9+4E0ZesEZT5nSiXgt3shRAqM9wTaU9xpI8hKJnk0PCfZmFizFKnLgRCdSyeZThqaq+I2ggoeR7tPy2mvbdwU6i9IgyVeg4itrRa9xTDxo3yszcdaN20/6NEIraPaZlU0/T05XuSRHFoLpnd0GBzXfvNtzZb3tr8kkvVaAmoh3A4huGdpYwvhB75x0LSlZOuO39+MV2MzfDXb2dAgkM+jNhczEyagV3OcwEv/qv8ojhTgdcbFdPI6hZT4R3COL1hLa+BXl8Rljrl/1PG8UKm5RBptQvA2C3hEW3TyFkWNN4uoSsul9DCdOjIIYITrpkNohKtcMJkog+E/3xGEDwno5A778UJfKKObCZlysnM9gN7iJuJflNyTgAW7kt25dj0pvoB2bD4739nKyHNBDO380f1+2BjiFnAqa//xp3oPcub60JUDlk5vy5F8hT7/UdNRoxi87k0mn5DU5hf34tUUtdAYxPrhbP9Nyk5iWEsm/iQGGF/q4+lmqLirr5H7mu8e8UGAAm6x4whNQw933K+0lR59sbOlrngAtTW0dK5Nc4tbknxMh8R70W3qIK8Z62tc5p/qzM0giIsWlnLGjs6N1cGTP1LHJpzoThcT6F7lh2CeZCRieW6xNK2/mlQQ8m7O4swYlDct5TW9k9Zio4F/AMxscQO5Sgqk8mPM9oqe1YesjwXYR3kRaClI+BEPoNyr/EyFSEiPIAiFPMmYdkfAKPIVI12X2uZMViSHXqMMT2odgaU3HDmp7HnA4BlW+bqLM2NxuMuBui8gOcHos8hTfXqUVHPtEYTc7gj1p9Ks580MDbwqicwDS2fngFn5X+7sZTMdJlzVUS8eLKjR8hjmIx9dvc77oDMOJJncP2B8kDZKz+NSowGXpan2M6EZDLpGvaZFENpe+MdtYQArrZEKC1bMV+TuyCeNh3jtyFksgtZ5jLyB2jlrnErUaUmOFRqcyc3LUYP3YSHcJmHwImsMz7ioHcw5OWsT09wZD092+y9TVlm+aQFLm5dougWZTSux7wHr7o21S8ytBMbQ9k3kOK3gcOkyRnbiVDvfKkM+Il0Nnk6TAzJf1E0kiqnvynEqx4t4deBNGOvc+62nk0xd/CSfEe1Ci7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQDEw6GdxIqW6TUtNIdFXjsC6ZowLp3OPqJV9PE+XbmuYkxwX6PZ9RR/nN0PsatHdUc969Hu8VefsgqOMtQfigYVUMPyGpOCIXIz7p6DgeNswe7I/ffIfjdJB0nK0xaVAgeMeVLYiRIh7BCDO4VL8aDGBk45x57mgqkfhwOFpxAyJu/R0AtCuDTv9H+SnrAvQ0FoHhGbY12sEV0hwcuuGy+AR1uDBtqelgXwR5q2ak5WTnn1WgyCdUCaMBgD7C6r4e21gmDpiZU6fDQPZDBUm1lxcWCtACxojZfMsfLtSvTVha5ZQSnasix6RkJ0a6ZhuEviqaPL3nYTVtF5L1/hQC+sNCcQW9A20mZizp4X7jQRlUDX8DXvgJlvG14Piy8koAfRBmdghtjAXbD0L8RXBfgJ4GEHDXlkl5vfpHzHN5G51DLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkP4eBe4asxMslPoMpwtC7SjpYJ9KmxDfL9UMfd8AooCl0bRU7iRgxOT/eNWrcDaHGOxiNgIi+k0slWaOfRGbPwKo1xLyvPzYJO8UMfHTyVLAAhooZkzc22Meazx9dYOFgp5xRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcp/I20PHudMkTQq5ZaxZiwmXTM/bGYJ4dnvxSmVqsNYeDdFdxlz08tGNyZXIi08RGNc8Zf2VJ2PyKExT6uRgijeOEuP3yEjtfFhYmXHHku59Ab2/Ixdt4+FbIufPSWHminkjdPznxG6ZiY+7skEq/Mk5YEm/kWwvjl5JOxvVjTJ6pibHT0nXlW1DAcEfxA+UICKgNidK963204pPQ+PE/H2Cg3U/MS3HKxHwrzhXyGlfnDT0BFgViE4FSRubgwPsQu9PDwfmJhJVnbzqWlBODjFwRnOHkYhancQK6+5xqgRPlQgSrYqSLpif98utxD0MvdrFFfNOxkR6zXb6kOJuKfZHQdVNs7fe2pER0ZmCGMQhG033iGmrH2wMp3kVv89UYy2XY5M3M5GA7FtpUgdTTqyuaKJJCzxfNqNTOil77BmyV1fRHgvYFN4/Z5d7zkKeQXuM/5omahcFhE40l2PeU9YcBZhlC44A64iIi5Oz2nc2buxknvpVLeGLGqhM3r4LgRfi1t6HO+P+EquN2uVeanYSQziQDnfh6kCvQz3W62k4hv1YqDkbrZ+IFabOhdMZOdYZ/dvOd7CWrTfHgQR1b0DaO3HIr20Zm09HWensaPQD5JUmL2K0dOj+EdcOfPf4A/rIWrGNmnmd2Zyta1uSfSu29C7QHa2nUSxUkXjImZbk1THar0mWJmPlOAqfFn1mcH4W+01rWjif/ld6zMVXMiRwDQ93a5VJg0qUkkmzIMnKVrVsTc2m+ffrDFcOUfR6fOdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl32TflIbSxUSNoUJt/C7N4DxCDUgITGT+yMD8Mf7l8zoJHQJ/KQuT7s5zTdmR0zJ8JHOsPhhT6TGaVOFNTESA7M/M32UqUDqodlsffV65flhlVlmwhsqeFcSkBtvHiBFl1rbXTxHGzErFEuhpjdbzTs/N1Vk6QrWo74tnQ5EWQ4YM86KbY4kvEbo0dwFRx98P84CR+W7NGsT1BEFbJRUFaWPEmkKV0qHy+yrU/oGQAWjPWztJ8sEaDexdyex+xyPJKEmUrHRCTQZGNEluXFMjTbnpNRMkXuFn8NBXlpkWWSTZPRdvJXW9qXRjUVUpmjh9FAdBgNSau+Xkzux1i/YQGQeGH9abGNuBohxrCUMZTPDlXVQeE6Cfmmz6rADC1xmGpSIEk352mavatZnbyK1NdcVEPqyVuxNzCszI6PropccCWmBEkfljfBtetnAmz5BmKso2TRIBEXtGXSJDw7I+XASQVijrQjXn4jq0XQ3fHdkB6W7poyos4xvc/PiiP17G9MwqXMjJJ7P9fF05BvEHSfq8DjqmEIYl1RlPL2Olc9gU+4fomQ/XK/td01g0lRV+4dCxD3MJTQ8FKlke389wAjikeD9xd2fRNoVjhJI9RusMyDxQsywyeaUmGZ7Mc6UsuMmAReYaqOyzWP8YRbFRTImUu7j82hPMy0JMy/ViM3Ju9VPbg6tnBByBbqF/Q2EWoKfffhfbiWQ4F+5MhRCIimo4oUuQUGAEeWMsHAdjhhrcxc3be1IiQF4i16DwOhoV2btsiFZisdAlDuVuvkDm4d9g4pvWHww0XNscgy3E5gu8MKRurD6p6+xLJM8F8PQQ1KWpHz80vm4A68Zh086EfB6ouECM/ZA5Se59FCFXw5X98DdtYPgQF09xnwBsvcoyFLVq3ez+r28GtXZROzOm3LwjS475xeEaCjYZkgD//xKxpAzBEF+pNJt8ebcZZ+bcgn61pgAiw7eChoez83rc6t9bhapgfLP72kpnExd+SD23JisjzWlxjoaCQIjSyLAHXfRXR+UOzQKXBr7tC19e7diBhYkJ4eptnkZhvlHN4BREMzQpmR5p0yKbEzdICakR8DHq2DMI1kkm2ftv4zvqSAUtRk8EwHKO+pk6FZd8iCeh+CPlzJ5to02Z/01wrxMauavtpswmdiL7TM6OjxeD1EIvaVK3D7xqTKplhvTh6Lw/zZlMt9ZAHKhAV9FvHzXTE6WbuHTipSa8nG11JPe0hCxKa8GRMib2p0+rj8GjCCrU+47wAG+Fn51yEwqTwRIj3AvafjfsOZdulAY5JziK7ib5PMZ9DR6xIklYstTSCLXUMucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/CYL7AI5UM0oPr063Qp8YUAg9p3yemZjCObCc6Ftuoes5GHlOBrNuMS3sutIvTC5iyVinkJ/VPv7lWxXaOYR0yDz0nq5BxVdIqEU61QEOL1QDLoQn3AERxklqn/7RXmYUX1xFPEqvd360nxhc5GkrOny8aqvHHOUg9K0KrPfZh3UjcmIA+cbCSf/C63TREfpbPNHVIXzGujonzQmvLJ/5r6tjqY8qk4rf7cdMhfxKDOCoSH95zrRiy+0i2tMARykfkmazb/23jbtZV9bqEnVQEPRfosJDcG35Z7WtBmIjPPf3xDCKW4/a7WP2NQLaD1oIKdDyfwwplVcBBB2v6zDgaARLTXTOX43bPpDvnOeUK7UrL0QRVcP9b8V8Xfv7YYDxOhgEiSabsANPNIQ5QL+9XUBnVyZL7bX02JB4WNfJu8+jtxyK9tGZtPR1np7Gj0A+SVJi9itHTo/hHXDnz3+APxlEzopGGeeOlOAh33CD9XNc780ouQwdQIhL/96CZzKmQDIUniUiFG0HcfUU7s+49UdRCxTAivBn42aG1kLNCWsaTywTakVuWd96PGx6VoE6CBmniYBLHaRUMcIlEkFc05SaL9rtSnSLcNihBeLH2VeonN19IQRwFMKToYciaUOJgVT+7qbFu/qpEBAB4ox8pcslR2IQfClyH1l8mrZGfOJN/msHU3pdwvoq82LRLSbzKW3agvtjKBIZNikD7hHf7SP+EvFZDodXewy8LHPtWJ9oBHdwZMS7sfWM7zX+/QjnFLjDVwd3sE04+826DQZZGe1cgkCKR4MnRkRL1DYrRjGHXZqoLyWFukrhQDyce5mzJQN/96XfGLmjLLrHhKQIQou8CjJqKFUY2TsFFrpxbLqUYvGt9qLz84Wc67iw+grBob9qmvm5sX4BKTqFCy5Y0uyCDDe6H3GctaplhVmWjT28uQ8BjlVQFbnBGGbOLfwdMHZHmCyJEyFxJiLJQGdB9sDHWUacHFBdn+PLKtHbD6Qq/6/hLgY9Upee5CnEJs4aifxiKkjGWZdL3inoJUysquTip6/FVap63c16i/5SOnJzV3Ei1uJtYojszimX5jermiPPv7uDWmvuVJlh+GdIPpxRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcpyw3AFleUs1YalNZTPRvlzJM/a9v2dcPbm+R0MvTvq0o1cqJkFuvVsQqca0hWvy+CqxuScUXLWBFJmKeKB5mmrQTft9gfvA/IRYZoD4UkrGdeXXEsGDCJKWZFYHhPb0AeBFW3AXOp8b1iwjFJF008GLvCtbYKL7qIX/vOSpaR4VmSdVbhEHRmktqKOfh4p12LPnMStJFXup0u7mkB9YsCkUVfcOZVDmyXbFmsAuMbVnuzXPnZpBbL6Ph72sOU6ubSmvb1sYYnVPF5uiK09E1IK0FvXBvsEdd3s9sjYuqEUFXQuyl6hFgzH8VWKCRkT6685JGfiDfD3UyF53t9W6N5Nln5KMb7+bl/KFuE8ZJA5tH7JPWp2FluyzlI3XmbJCn1bSEpud9gnjWNBpOJ3AruU4ttzWusLP+vqpUX4Q2Z4DQXB+1TEarvi+GszrPH3u8iL2lVHdZDlyc3SnDbciIXJ9WW7PZ7qz0trHIEK3FC78Sbx3M5iL5p+sNC73xJ1IZIzHKX03mgHPBODMc/159cccVvbgm2SVcMj9TQnENv6uWBHU+30Be4JCQ9+jQabjCnpxP8IsEi8ljOM4mYHYUpxmpJ01EpwpcC8/aTWbRd4rWPZwCON7J3VxCnTRvJLskJaejLKTzVNISS88JrIPy6q8PCW0ze8NzM6aZiuSGIXqrJuYYhcbXePlxPoFb08mm7bTxV5q+rjnsH9jdXHWZOLOWIydQJ9cR7qMp9k045PI+6xs0na/R5Xzw9tBBKNv/dyGYuqY5O4xIVhYlpYTTGGogXWQE0Ae2oSdCQuPie+VrqDxxkdlZc6bUEwvLVXoqzjV/q2LeEYldVWOeZ7VAiufIuSxewlrxS8sorq66HppVrabpdQsdWdgoMxajcr3q5RjYJifjpi3abvtTf6EfyGzAEQOoccjis+qw5vATAIUZR5iqMyGi+PI6QLWFlGahlEs7Yc/Uhtbx8DlrYDyx79Ddgy0qMN5p06vebiZacGvjSHnl8cJ2P9+7gOxiq4b2ZSUVprGTo8oqbU3P1pJeVzHwe1UO6yjt450UGZXuTuGy1tOs4xuOF8zq1PRuA5FK1WgPbNyTBpa2zW9IkOg1kE679riuJr7ZBxEVp83N/f8o/mx6dUPp4gOA9nka3b7PdiE3iAHDLv1+B7q3w1w6W1Q3fCuDWixdkSENQHRMRTtb5NNY99vPX5mV6r4jIW3pmyk7EewalubZrp96QL07g5T37400oLPftsauH80uf9WL1jfPseJ9LQpWBNlfUC1Ar5EVyhK+62k2fZA0SFSTHc8oiASWvuRLevzKdZNfyn7NQou8P9Css/3aGiKqLm4AmH1FjnS2NL7md6kTI+IgiUM7tDhBIZjBDycB/YsQDDJjPLhuEIkCCnU4RJ+EU0/9jSOEuKkhhiQOgcKlAWfyW1G5kIsks5KbVe/4rnWUasAwW+kR1S0bG6cBepGAhOIl7EbyoINbuQ5diqYeI3vOfBEMucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/pu5xOqZiSUT6nSbMDqhqA/bAd162IN7WF/5wYVMJWgj3VZWExwHGCuSzQ/u5LykxPiyyl+V7pVl8booe/k2k0g/Fcies4OFgSytlllXb/j2eE4tW5UHO32HxFksgA9x99xxwQThFqrX4eVkdWApfWOICilqasKunHhFuR0IfZNcs42OyJNlGyNbx5qn3i2XnEeroNwDGuIxXc7Cm5hicC17BusFH+mS8aHL7BWPT+pkVfI33juLIyHgHH9I5O7zLtpxJPO1yn3UrsuKYdjov985e8/1V1/EvyaiT36JV9r52cU7SMQtoA8gy9TydLtmApqanIcqit0SEe/tqxRfEAyaKwYphCnjvNg87vqDSfbvK/Rx6eMGbpkzZTiP42IsLQ5N5gc47tvq3aSQS9sHYvD3z0hrmeKi4BBP9nw3s0OqKMK3aNqRrnhXXlrgSmRXUEwALDlSqE3iJ1WJ48dCDhMygt06GAkhMlHfitF9kQExUJtD80H3N67B11PzOCdwUkS9ml+n0QyHxMuDaaoDKVKGREzIGjIdxsDC5gSkEVsfv57A3perKOTwKnmRc66d1mlnNtahP93GBJzknoRp2pj6ix1IS8b9zHfCqWLYrBno7RL61StP56NNyMNWIEOTjuXC1unv5zbBJcB7epelti/LnkP4ivopMqWj/Vr5rrmwdodwZ9YpXeKGV+6dGtdR7IUx8pgBQIpvtImTc1Q2TwFAaZW0JlgknnwdFB1L6USQ56V32kRY8zejseXmfttDletarTAEUlILqL5VRPzOTYE+8KrsHoM4Ba+tWt4opD9+fRpijsckml5xUepgJfZb301OfPMbf080UWMmhqKN5hspSxS8Olm9cpSmPWf7HUVMiWEKD0VO8Sl3oNKzdnpnDQ5F0qTKFP/X+Rizkd4HWOHSZYLGU+G8wGd5Pi5FkX4KKFj4a2B3KlfmzxB30uA8ecr1eiCZ9SMpPhZWV9GnPZu54j3/bXf+2BaRv4L9pseYWsrwW2ueEPUZ2RvmUrdRvgpJ9j2M5Liw7aNm8uMDl+E5jA+73HLUa2jdUfL7CcREwvsyEmkUupw+x7yQQ9YEmQJ71FG6L5PEC8ZMbGgkDyAgiqYmc+8PzYd+5jRofNctTTJ6XPALcjwyVepy5urJdxZkax40p+rtJrdpPwqkydI+8z7aH5JVvG0AYJyHoJCX0j26pBnlVAAhbGDouaz6ZhgTCvsPJItRb5iE9o1dkJTCP1biA9D3uNSeX+zWPSn3U/YcpkuupVFAZn41M5jd8Lyi9pNWB9r/Mlt7ECoaBDm1JeIaIcXlbSIb2X2NOi8gsYNCTjdU7M10alRzH/bybQuZqcZihHY1H5gxA1jLH6ziHebcA8rlZFdDKGmDar6kYFAiLSm+YsT/1AwJIGXQNhDTxBQYDNdfJSnIgSyQM+l0GhQvr23Cx+pxj7q0XW8Xt9J0vnMu2qiIoaxbvH0T1Va46jmHGkmkqTIfm+p2xbddbSPA0A2TuXDqaNB7wEA1MXdMsUxQ/0vJGobE1q5uvUIbJqCgUUXI2UtzopjM7/OA8XvlMmt6PcW6697k8ZfgrkSsVtIBfbYd6qJjp0xitqwBA4odnarMYLQ5URff3pCLS1qy/FeABVr658AD09G/2LbXtyjbmUdJ4rf6XTEdEKmoLILnZ1xw7VZXg0lRgHhQsSlPknNjJ9y/rmjJ6hXSMY7FauvuMiGwjhFIIZ+qNit2j/QeKf8xpzSEZ2gb3j/JFQnIXN3ya8Ktv/c++4mtGh7HxCKdu+MTj9uTUPJ++3ZBD4jHTFUIHVdchtsVuVLtgdx8oRX9ABvxAwGn5pKRM6E8MLUbmYUStpaCWHdQCnNSSaCSXxcCbg9Dh2X+0oLf736K0gH1oh+BQpB3lLukE0kpAoKk3J/kwCyBM2Iox+79hlE84/QJMSx6a9weCszR3tinENWxYqJt4j8N+bhLJDapHeZZJtfV8ow/UU1fcIzNAGKE1B2fVvow0ikqibG/rc5byYqHgoZsS0DQT9roOuunQmwtseX2Mh1n7ZMjBt/vforSAfWiH4FCkHeUu6QTSSkCgqTcn+TALIEzYijGvhK8a892lkEbJ3O15bulSN24fSq6XYv7TPPDTvWxPx7OZEvbrdYBPjAvzHic8orAsTdD9EpboCqrbHqIhBi7LX55Ckf7kq9qhLoPzEGa2Gv/RBrEmKTdPJPwnzl7KilOiLFPuuoOfbruOtlqMcb1zLG+1wazv24pDyw32IFSY9MSP2W51edEZJLc2ajld8UondnDIPEB2K/v5QB1Y9jSR5P1YMsKQgs/cflgOgtxDdGEjlW12OifuxeU2M8hPzgmvYTH7qPpFZRaLbocOX92zolENA+JabBuKU2l3tykgVkfAE/9I6cGH+kTDzsOzXUMhRjuQvx4AxeurwJ2gOKyfAdeOW093xDbVTmr+haKfwZXQ8zIqxT4C2vhfAa4+B0iBX7XtYMAL+lF7Q3Nu+a5G9MHRNQ4YI7E4yuGZ/HhHb3Gx26BzoV4YIc7HAK/AOfw5bvKOByMMkqJb0uZSYkpuJzQCjrz8uKvyjFVXZxD/SGR1ux5xrR3VY6hQLD/YlP9P2kPki9xH3bnPiSbdYhyz+6gdxnXqyEZllFeozLuLxP/Byuqml4AUoK0QqX+psXKol/U+perNh9Ql7CdRIL4PrMLEjk1QtFoDK/Fu7GiucH32Nopng4QwGTO/U3B732166sEw+OB8NwGDvWhl7ZlZ9c1yhHoRQ4W9LaxkHiNyR7/pTXsMHtK16qeLRN/ez8j/gO6veldwE+1Jeyg9Qj0Q//eAIppsQvBgCeFnOAWMCfCZw8IJOUHhpAhsMpPdBumXisXWox76sqDEwhMOwD6w9y5KrZsKPGNE0dPFQR7OUSXpa/xKZ3T9i61w5VwhZc82iSIxRXAZlUFRlTMbvl0r2w4Ng02a/zutVJuqtoUyvv1dZhh80W/+kuNiERqAUIj/Fv5s3Ax6CyBKqiTESx7fZVU2CAN+dMBwQgzuLodPyX3Fu6EfKBJNDwHMQYfDq9lfT8d8ArfTkZb+HzS1iCrl0ZQUMhSqI73Ano1QLedR0lkCl3VPj/5ZSflsXJ79zT5V1u0CMlXmBn5Cd/cmBdBYIPqf2J2sIoS8quzW5PTKSJ5Og5UbKttZjYsF+mHLjgazPfT544bqc3Suz4FxLj67i0AlgoDnneIhEHF27CAjiTmpruUvfOOqLSfwD029k2DkbEijh5c5vfy8Of4Y5Vd4gc45Ei5BVrYdMEw/gPsFt3zwkk5eLf/Kt3GiOdWz1aAGI+DAsonaVOCd0aw7+dp13RtFVuDx23coxDcuqZEaQRsND23ALj81GL3s+9PeD0Lc8tnTthqJ9B8FRVJgRoo57vTFDpBSVN6PJRc4/9CdTxUAumisEkA5MstFYY0aKwQ4y0PVRrowwt13eoghuZptbp0HU/yL1nGRqRBn2ci8umcG+SS8hy+IXgdRbK2dB+ZyXxm7CpPu9IvvpQE7IvhP3PVSJAjewImHqyL8BouU4EwPirLQs7ZwuLgG16vok3rXHWnSNUz8F3sS33Vle/shHDnmWcSDJ7Wmz49n9r+uACA1m+hXNPT9Co1Y4IYH1EIV62stOpsrn/EsQckJ4kY66BrDJsybw1rxgbuEhndhXGrFM66sPaBhVdywIUP4Ti2rVKAkbLr0D0zrOma5bAc0di09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl1UibJih2KxTCvawPP1xAqG41VpLbVgdSTrVoV7sMkqHQHSXfo4J9zyqATcBlTO5ovr2yMfFZOjtU2jM56OURt+TGNFddaeSi9O+WtNS96NuW7kZzCeYWpAZFjJpIoArhVDLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkP45wlV9gl9FU7sxyqNpbZZQOK9mwdWfNPmMsOF9b+QdCZnu029Ffd7s0L+g/waKF4vJChLQgAbkxDTua1cnU8WWQRmzhfWWFQ2Q9k9EytIip2jpizLZABv7QE87J/cRs5qeDBtkVf9Zm4iRRtJGq6q621Vk16oQo/oZGjW5fGAgUIfh/I07hkro88/Z8/Vozay9zhZIKTACKnxmJXgDZsPEEkY6jcYhqB7BK2XuaUKRiA72m1am+s5QITE/q5SDlaVJ9HP+NM+HA9tMaagLUEaikHyOGnm1DlI65nT8HB6pxSfoduVgUu4OiH9EVxG8fpMMCFLEYqSdWLZ9G2eZ8L34UdTQATfVdLJi/qOWOxlSetnAIrg2w2LI/8AL7zY+cBLPEAWjW5F0EAo0XRkNZixveSvNTxqV9a5N1UTJckkxvFew9odEWjJiTJZXeXTExNwi5hymwOXswH1s29TxJn81pEdQ/3hpJGOKTKSp6e5RTTke0DVT7KaP7mdx+2Cnge9E+xZSQ8DmYeTgK7nxRBA6N0rjQADRkrAXNgvU3Ls//1Ze14ym2c2JyCE1w0aEPtdqg/gpsuefainnW9dWHYkrJz4zw5+2XCNNdapAEzWDAqJoANwQYaUDQ95oybCvNbIpHg/cXdn0TaFY4SSPUbrDMg8ULMsMnmlJhmezHOlLLDP+tU2/8VtjGHYO5z4ndv8OsbcNOmUhaKsGkMrBFCD/qlGg4akCCODXWPzfv4e6Dt6MlMTiF/D6khC3kxzgitVDSacSAQlYErywcix1fiZTRMpgeETp3ZPCTbED0Ff6vhJM+GNXB8lTv6Zd4isueOz5MLoE5LoIZ/foCNkCcWQpJMSZZ8TxWLSQzXAtWDL5qcHyJMnuL5u+49Ye0Ka5pDJqiIM1Ilcyiyta+45u7iCHyLuYMhNGilOUbl4RaWd3+fUl1RQiVSe1PD5ipGgHqmRci2KoFriN7pLmm30vNlIRIhuR2Gxk08br4ZgfBDeckuBhpessaNVHoP9I3Xe8HTL6TSDPkV5PD75ROesbIj7RhdeycdaHWavLiSRe8Lgp3gXl/quLJFOjmj6lsXSeCK4dOQPAyzyXRo/y+1nToIaAdYv6ehzF5ZlW4QHpVB6ujGrgIepi7E1uHo3Im9wusrmphYyAcT6zjlQGUOLTb0TypUx2V9RuJMr1v0ZrPdJNMj6FfAYSlK6Kf53dc+oaV4c1DXjRInJDrca8A2JFGpWGDoLxjD6s7706O5lfs3KeaTDydb0iedl2Gg/yyko5Ww2ix3mikJXCaNhgJ3rN0T+RozmZI33AaRPSyF0ptHdOF9gFSdWfueRGiYGdNp73aGIsof1PySDuwIEpuUSNxyeKhXO9hGjmcB6fnZSZRJQcPxM5SrFXXkSjuxCf1FwtXA6eF+Oa+XvEaBuxudfSpRajRQtYI0vjeI3j4ajFUYvUyUyNzIiZhAMOY+1ovtjzNi8sF79h99ZohXtggVXEPKHcvUTdTby0WvXIqVsCE6Tc+IJD9XyDqGsMrbzvYmudtLVCi7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQuLRfgzdScp9AEcM8Jj6SckzT43v/mmZk8H8XdarKC28GOrH8vNoy9lV23BlnXU9ssMB6esWDv0zLHHg0HxeT1j/A+dEN81kJNxS9iGK/hhg+vVvJ4PMTdaSKwdhpAiogqT9tM9CnPSor73iK7E73Dkdwjp7SwWnFjuYJOxFmyWu5orofJaxNwa7d6c/SCgXCzoGvyT+jDwBSfQpDYe86O4El/OZ/kknsqFYmYwTlQPMInvTFmn1jCqqkn1iksqefoRvCgVqVxDpJwXQhCb9RsxrG7G5glItcaWTdMz6lKFBYwvhB75x0LSlZOuO39+MV2MzfDXb2dAgkM+jNhczEyUVtL/GFX2/NC9xZxybuWbobFg6YZFn4pp2tvUiSO5/6VPd9ObORykdX/p9vWAE/VGOhIKwPsYE0sPOD7aNNY1wp6FxjYY38cKAgF9FApgzKV8eXri2lcv+zyv2hk+l2ji8fXJ0XZbvcUGx9rBxprTVQvP2VE9K/W/pa5sWrWKQ541KBAEX0rUW8UTtKmIqizMf3DsIBqFKE/gvwheE7tQ73derMctbgk4In5cxgA9ocp3kdtgIYRsDULGScS4U+il34E4kKWFbA+0KZnJ6iJjc+l6nbn6RzHY0SriVkhkc1CN+RqWqsgZjQYrt6yxuHjENm34u03jv2aXFAcr7SmR3FqwAWAUe+66h97hrDUpC73+hqETlak2dDppGIVKivNq7P4HYVG2qnGGdwHhHiaW3M3x8p7L9RBBshxECQ9zOnbdbu/IAvSaevzhABNuY6ks+Dh7Zhu+62U3Ra7bC7A4ZYOXa5+TtV4Su4EM6VWXodKMo2oYMJXgtspdlkThLt+nnK/i00kQ5nAq0ijJHj0QvVxO2LucJ6RG6fQJLXpCY3nmY58t8uXcOwI98oujzknBJXgipbZcuqMod4+TgYSJKZZenhnqdDdnC9kUO81ygnWLOGUh0pzmODKfA03QTkRDFWrRGX4a4ngqAR3c/PQHZqLCOkTCcwah4Y+aQcHZuBRL/44a3Ov0FPX8IuI+7tRjKtCqq6ZjP1hcAXjhdL807zFzLXx4V/lP9B8kXEWjIBRL2xosAT1Srw4btHIIspe6oxY84g57j6UVer19b1wbp1V9EyruYi1yH917NNmk+O8Cc6n069M0/X5g2FKdVoZG32rs3W04uLaw5BDPGSYjxDjxUZINjfWHs0+98Ue0L5ffkoOaQZxPUgO4CRqtQSS9xlCe2zJvO913aC2NOYX0fsilDlvZkgqZUo/V5J8Lpb/ED0F7BDQwgCJtXTmr8psYBu1E5CwYkP6uulbiUqNmCbMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQca7GVPaD6TTooblhvW9eZrvEP/YZyRifShayxEr2v0FkbffCErggwHWFJpeBOWdR4xsSI+aUZC4JH6dIdlGl+gqGNNuB/oZMTbcdzpE/7tQqNly+eCURx2gnTzEoCvcYRw3LeU1vZPWYqOBfwDMbHEDuUoKpPJjzPaKntWHrI8F2Wf0iwN5Aa+8U5GzVidBEeVBTA81b4yb9yRExiPXKp+ScjgwI5F6LALU//6fYcI3zhSZTk6n90+aEw/DefX4gRpNMwpgzvIckd+f30956ZZrjEzD64v3qP6XXVJuFJGiTWBm+OsXXwllk8N4pBqPNzl/tuJxH6hH4q+NSmnx3XAkaTwLxdUdJBpaCgKmdX3KCAcYVlPpY2cy/YUkfvJ4Zi+GQ/cjwN6Z70HM5Ey1LE86XVaQRbgsfiHvXvIm0k2UFMCAcxrozSLpzPfeEbetZjnAtfY2O6UgXTXpP/IIwRwmBcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YaWL+o6094/aktfxa1WehSXfrlLYva78s1a1Pl2s6Iop4t5abiKT3jTyjICZpuxA3BWIo4EpweXkdiIWqU+4ZWwCiNb2lrUjNai53EkY+ccxb9FCGKVLXwb3/L5aAWP2Wkze8YombUL/Fak/bwhJbIIojcT6wGcFizbVQCO/KjShQ+mUaoCi2+VlIw2PkoT1aJbTcCWdh6mJHXtjVyFOwoGCG3y/05/BphnEob/6ApBaTTqxiLEXZNIkqEwhG9Bjja63X4cG7Zpz3cAStuUFIXk12VcZTkPCyqtW3/+iBUV+LJVxyFpTXV0RU/g4CCcLYv9eG3mni9NL4sQyQAqChUCAL9wBC6lUN/wbW0nTOK8fI1kEgsEyIDWGY3fFs6TVhlc2y8VHDIf4aeEBBxG/xgUj+48TycJeQUfeyLOfR37EQdQbjY7rzI5BQAzbIFlgm2jrHA1Grur/frF4w8468bABUykfXcHha5tilniwLv9zw7pEbIb7lqg6zhxxJeOD9AIvILO3IzaClEngabIB8yoH8ev/JzIr2ywp9940ng/lUtrV+4Hyd9Cy5z4rX5fX5K8CGoCcluLZjrvT/S19LYhCjI5e3x64xMqMXLUon+35imIU7bZuLjiO9zYZ9cGgfpNF/yblrzibkL99pbHpNCBcLfxT8YncGWZoWs21ARaGFxYO5nRJJ0kabLVyIepssmB9S2XhkFszAr4s8ZvW/1h5S0ulMC32s2yFW+jUwnchPYb0MxMgLCD/aMpBQgmM3pxRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcpZbJnZqXRk3nQy41Yyn178RhzzHZ4Cx646IwquH0wLVL3ygiqMh8VKwmJmJU5Lefi2l0YxRIz1lCo0kvpdgGggaRKWTsxJmFhCND608889wSJzYlyIq9HaXGyb7afxmylQy5w5tB540rAZ4snG8P4Xh28bKGFCmjoLNCbyJDM5D+cs2fxiAwMrtkoRu+HxoPA04V1QkWmgCiJoft+MFfek/oq/Vg876+hy6P/P1PGvXO3Og/PprhxoPBpxfqZvqPFAlXSde1iZKyBuFpGWMdmhz5hKQYYtQqzKPWgEI8lPtacO/dr2hKNgv+pp6pZtCUdqFKFYyyfaoDCngtORolOZSuF+QYR0A/3UlEuZk4X7uztDEdsmlqlS1SkF8QqdJVfd2EYlRmAaD3U3jm2zVulCUEqmeOQRxlmDksjKojhV/bHqoGNBURbBY4+DGIII988gT53+UmdH8nMlcVpzKxwohKlCUo2mD3YN02pcSw/aZNXv/qmdpjtYsWzhtaoSx9KbmL7vapprq0rqbG6cUD3zZ1wh9luGbNiaoiNxip65di9q7vQavmayRP5esjgOOKJt0M39xLf/BCwALsxab8vhZ6MpsykeLRmNRxnaa2eExLOb5zZci0gcLWS1nZJavxoLiUsmgYl4mTnYUkH4UsnuFXo0mAJTHrdGYj/3FCuw4mbOb21bb2wpU3ADtlWPgpTOqAVCZWfi+3iKhI6XRGK/1MBT+x1Dr9GgXR17Mxp7jNT+VuApWxte16KShyPcizXhaqumbifUDlDZNdX2Jmee+Hl/UVOV5k15wXyyALvxxU6MYgz5acUzT2MQItgOHLKcKgC7IsfqMaOVGrD2b/JO3zFVOdrPo2aV78jfyWLkXCHU603Gv+ygB9Q6axMhyzlHDgbjpmFIwYNVQTE04zojqQJ4/0/sRkb6wNLo+o0YyWZ018sbtvDZ7TrpDQxjIZzergzRK9xV27F8TFfw0+CyItwQXiGiz0Oy7dB63A/hiUZRfFrvMRDrdSxSYTW6v5FUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlAWih9WgWMTvbTnEVFSJ1NrQ4vWJ0ld3Tw3N5yX89/ifFCha7Z6Qhkjm+oe882ZpbPkHMzIdpFOWFYTpdIiq06L4LRqYUg6T7nBId5drmffBR8Az2fZgBX5lj9kt92uYopq5eTWs5Jwk6ouVUgubql6Krw1VULSrkl6C1/qmF41TZ9a/Agx8mDalHIgbMkXIu+zqmYEMDTwZlbljZPhyt+k9jZDnXF0/Y6J/d9Joyyg+k3S08aQQjz4tx5z/f0n264j580QhV7CiNZEM7chQStpl6H6fRThgUo491Lr6ch5avi4BHJ4NqDhn7YRCRBcWSY9yHDAbuJhY5gt9/dTc5xvTakLXTMew4zh3y143P6X9bvcd9kLXdDWxG29s3b3+2UV7Nq4B0sWOA1AV93vwKDHxGguJVUhsAIn3hxfPd0iJa8Payg6xyn1fboRH41pEufl234RtI549AMjHGNMqWZiACgcioMdAx4dPazN42QtuzoJvHC8kBcheP+pv++mIEhXlLAudwQLLQsQ1Ron5uWAWdjLdzi1tAUZvOGGPmVEY9d7IHKigVSmSVO8L2hoJk29MxLwVUrVtDhrPLv49lhYT+eXY790FfTCngpJvABRSd0Mjb7ZX1bicqUtmasTzLB8wdtSeRGD84DttT7jY/rOA9/OhYcFOVQrEGHISNVAPqA1qTTnMxcZrV+TL+ym9tXmiF6P2JX+/xuH3ePrUonuzEgA52JYtAe/MhJAjhxKZIQtWpRbb1aD7jdPL3qfDRhXNGtHazyg0CLDgiWVb9eaMd5J/V9dRJBljcC+yvxRfBbVvJL4sdzSTDW+m50EFawOSjqGm9NDwMlITHID3aNK8dWwPsBZxGpT/5ftPbAeo6k1SxfDvhBF2OxiA/lZLKfwLb8b3jexLPZp5sX55KLyaDyBhJciOBHO7r+w65UlMQmrQlKhMK38sIm+hrt6wvnzYbzfQKJnFPvA1Ef0gaIfNN1OrCpvJzVaerJSun4CI9Rdi9agcq/fHyafXomLqa0rD5/Jikv1fkZaRTTM4gvt7dtczRvhYvb2/VV85pmKuUMsCKDYqoOC3WhdL1iim4W4BJCdq9rbJ3boELm7ktZd81jxnBJo3FNISdKtFlxG1w1fNFyNWdS7wLI3Xqj0/YlDLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkPyB0ctY0eVKnvlG7mTdBCnOEtdxs8jg0keGVni6Xk6qRoE369UyEt09QWNMmrZyBuzujEYgAA967kR3chIfGJghxc/BYA3C0ucAYzE4hOqnjjuKP3gWJ8zfo86F+/owYTVsUHDhehxZaWlZeXdw7i2q/9SZ9P+01HkHdVTvm/W+uUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlAzMtJDFQf4ld7XjPtVv4g2yrdRzJzRmHG3YZUk243cooedDSYYvHebijK69JP2sR5XMWlS93r9FUXwlK3DqdFDk0zZ/rPJyvLF6kiF5VsIK7IMhObeppxXiJu0HPCN9wHGJqgRWiOcPtGuAaeCnOD/J1w5OHdGS7jCm2klRsOQAzbQxWYT0iLgKen6+to6whju9G8zMwDbK1yM41Hzksr71ws1+Zx81NDHj0boSBpmH9Fkfvbex/yt2ofFsIq0lSqZ1kmK7lXgQMOB1mSaMeacN8qzicVEHd1kw7uSmFouUAtck1C/pB9a6mAl8KSGeRrDiIhYi9196YuS1MU37ZS2iCh4CnCH7A0IXOeXZfQLx1AwopPyR61OulNA849cVlQ0yLfCHw9flNepvOy27iSGhovm+BMalLnvcb5rKfWH/wGJU4Rpxt2LDmKvNQELa7PuzyMyFtK10gleIJg/BFXRE8lsF1w6VI3breljCiUH+IT0QFlJTNePLiqtm4E86r7Kra3+qZlxwXaIaLwwg3BEZ+aHzYCQ3qalXTZ+rlXfXPVy3HGc8J8UlS2rOIA638Z1HvBZVZ+DX4QsCJaVOa+XLjawZeqHoFJMiZw+CfYQ9Qk+pmsZJvO3UVEfUzDvawJ6wwhQtxNKHwfxZXQIoMbeflAVj0VPZeEofiYniwVzVrVK0pD4tiVxK5zO4NYbJinFMeFgyaLU8oLNh9nRdZ4SiXQibf/Qqj5UHJthIEfIGMtEKFyGWLVldnTltHbRBZZQidurLX67DIf49figEKjGZKAdPnviOzLjvcyugiifupKxDKqUNVNpv1BMDuy+cW7zszwQuh/e1NlR2dWHiMHaOM3NvKbDjAVEKiuFKltaeqwiASC7rtyskyzyoRKzqXoI1i7zUZQUUxgox/Q2RFKb0SF4nks4nJHlA4afbARF9943YjFItMQEAwvIsvxDjEmm+fWRuxHidBxM+5fLwJaG0CLr3puyypbmjTtAm2mvy37WU7LOOv3wyeQ7u2v0EfScUS5qFq0eyxSM/MXT7q/aFUIEykpg6i19yTB3FKSXKQlX4X7j/8MspBANXePRjcCogWpUKTSYtDq30marjF8tAm7c62IzyahsH/77JSJT+JL11JDVtV+rP3kMAsm0SATyP5Q5KKym+0OzZszT2+0ABYOqOdwXzzpvnoWWHx6cUk1UQJbEyYfFsWLFMMCzAj3BqDlDQ3Amv71PR4jMPYWIoR6Qs/4ulDqxtdSDHiNflVbO/toMOCgkrO+TsKkj78xavoFFOF9bELFWcCQf8cprNnuZjL3ifdLFc9hjT5U/aZw/FOybiRA2Q+q2yL2qZBDVhF4jVYprGHKaf02lxakaKczh3RSyzk0hynaQedhXpjNTKr130vne/MnjNt2oIvzTt+UG843kZHVULZItx6bQ3vdDNNkTi6u6LBgwFRZeneJ8yz+d39FGbnnD9NkWqSr4wHI/pfjTvb1+uYUu2bPWdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl0JNlIXu9iu/+Sq1P+3WJTx9ic1BMnq47doTe0XMyzWYXayd44OUklCxZcsVnuuzTUpqp8/kt8kfUsyZAkXIc0O2yxW1DKvYPJJL7xAIxChq0Fl7kV4t37bSUuPg3Xpq/f7yKKoVFsNrVf5tgwf8ke3XBHbx4ErT3jD8SCHH7L3G2mHLNWrZMNNGk/aDJmzXdNY7IEfObP8BaS4lYMYGa1n/HJ9XkHpizFXTK47AAQU83E2uJPyYOslyuPGPoFRfTFnWFFRTsfS8GEniMIsWwIrHG9FmajtYHQLGs9aNWigL1JvXpAvzdsFsbvRbcKadxgufo2IPyPug1Zv6jGVExfF/VGN60oEqZ1cI0j3fU+ksjY3heNP5283v7WkoEy9K7Gx41EGJ/p5VTruJXB6FL8f2ZRkLVqss4Ob8GKVVMj8ycShtKPHlfWqjh5MUyRap1bNf10Lp0zGGyg1ElKJL4k5UKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlD0mTGUNRf3+qKM7g2fqZXSgVYnYUgunb75TwjD0D7IlfWahG15SxmgREwTklLuyXFai95uYtDrYbwgP/GiYsREXLCG1Nv0meq+HOhOfJH/IWVNpfA67WCgcwsh6pDJIydq3xOv59m6MsQYnMNeA2N1tmg8/WfYLcZSzt0DYOi5mLeS8ChRC3uRMCJLgZk4AcBiXQRZ2wGJ37FheNbl8Cwq2/2pTb9Vn4dKuYFhM8vYrFGEyGlj2AR2rlDKNsyuVdf5VaP3HbWDkrbH1H5O/FPsuTBxllAB8WZTz7vwuhg3gDrrVytMM4e4nSj/+LAeBaHUqcI/qErLbucfxEdnp8a9p2Xiskt7ll+kaP9JVO5vdEz9oAI1MGvu/o+M6QnWe0ea5Qd/pV5zJ/xzVdvPLX801KjpjTXw+5KVrJntcdJtt7NHLs8uG3NBq5/LpuNSFy/7WanQ6VnFVtcpFgwJZ0aHtA+kHemUE2/uik3Jva2gyjwTGdHe2fwbaQGj48bMRF+3IpFUxJQeyMQTxw/knpGKiAxXRt7pIgPy8VsT2vZq13mj0H5j4M4+44pcZYo8cgcnf7skwVSSLNpKkiZgxDExxzyVH+xc5QCRpqP9WaTDhsKFHTzoC8TLNMzF2aKnWtdw5mPvlzMzl1A9sLg5UhIs0FNsmUaSGbF5dcNx/H9R/tLMMa8eGCigPoxfw6pJvvdz5Bpp63iZqjcBrhCMlv+PmvUb5t0Qas+sO6yuyTPaEMAEvO+9XcOJjjUm6W4cWnRsKrZ7qaQma/oFx4HWWQpwGzrFlC6unmbwvZ4uCyEmeUQYGO8C8ynjtlMTLaC4Gd0kNhqZQc8BWgGC70yHvwNv7L4+R+MeZh4xd7OlcqFDS6Qp98XHR6GzEB+N/NWzKzR2p9swLr0mt5BaC5yGLSEPT5kOEp/CV7sZbGibJzXxKnnxFwpdHxyUsBnZq96HvVxZ5wfN69mtFF4b0k11g/vZMyZ+RVlm+y0COWR3M3vlSMaY3MelXOkBcRTeuMhpi+NU9UUy5IdOCr9CboQsdK9yjlb+7OJHMYguIZGp7iz6g4FzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hfKbZ0h6k+c1KMzpBoJqi/9mqYbw4JRJouWMNAI+229mef+/ZEtJXsE9iVFKYRXcBqZuJDmi92SToTngyWljG3LZiUwTSKUEoBxwzJWnbuVDXC5Il6jXLTV6/V+cdo4EBNoavwPR6ylzpfYGU92g8A0Gs7q7w8JzqTRoXo45RmfA95ijcu31VlGFAcYELv5TZ5uBTKOjflmwaye+GhZVNIh1ygzo7SrLQmGEsiUj5AJTVkmRbFUR8sY2E4n7UaPCegpJN851r9o8W03SjE4Z6XyefBMZ7apR6M5kqUwC5s9Ei0ZgRkcy9p8J66evm9KOnRGmQNSaKC4UruAFJ3dmujVqC4QnW1PqwYq6Cd3j/qKFIHkj5t/p5VlOD3pw792tSlE45DPruLKWZZMsvgT+ZuXXhZDaHJmtoDJUn6P/HLtZQou8P9Css/3aGiKqLm4AmH1FjnS2NL7md6kTI+IgiUJPs+l1GuB1nHfgJw12g3+3XzGKE5kuzHboQHOMfRQFtooMRSc6QHB9bYDqFjWrXp3lLqgZIEdA+0pfrAF46AXhmu7UuIy7EheOUq0jHyhAXp25BgaPGuApLZIn1GkWu4lCAZ9dNRukkmmg+KzISkJgb9To8UwOs0jvRNo63CWwgEHPgAqwfQt12yhB/LcvSlfT99Efj74spHPjKB/a3/QEDgb5yjMZByoKAwRxJai4si+cyTXCvRheFuB/VxIo0en0ndZ4TYKgAwjj82zkqzWerB7Ipa+6+klhHjWh8NEydDopUEDdYtCHq+IRnsCpOtbaP06HkzM41zqbj/78RaFHhOOafC/LfNO75M3bQYR6vO073w1AxZjbXWvzj5lQleTufYOfHfbQJeXSrGy5ZmmLBacWQt4QXROj3IGC/9jHCdFLZPBUqMmMyFYNoD9ypFN1A9FW75WOFVWVZ9Uj9WdQK8Y4nvZRnXIeLBtUd8eDSVv8dAhzuzs+mukB48qklQFKqLgspU855NUaoG7DZNh3atmBO/nUv6fgGHU5JGuwt2zZpB3VCPVkUfvcXKtqjgZs080PQwcrJoR9a4lahzs62YnLSwfgi4GsM5Z9aVWW5garWvrREPxQnPNNtdDGbFXmxmzJUqKs31wyw/1kAXQeZO3PQinUx/26jB5hSLVUz7DVy6RRvnS8t5EdXffqw0gFBDKbcb4TZ1T65N3ns35GP465Be8Z0OUZ2GOuBp1fzfWBrFxDO1/d+LDeDYSwgAEYlbXNibaTnAaGn/xWgurnMtItFDVaLndlF8olj5uvfsyD29sZughPdEd5heAnsJjwV/TWf9CkkZQ4ovDvcYXaj+JT/6ypwWCorSP70sYKB+D7Mj0MNMQMY/Q6T+epvakDyl73mlnzcwico9YBKYf1LtisOZsP6QqJErNpAlVTeLHrnx4BFUuVoaJFJU3M2AAq1gmSzY4NwCgssiF1dBmFkHUcovGYK5t8cJm/k35Ot5r93bS9bV6QnvP3gnxIrx27BY+vEsG1syohbZs9ykBCQzD+MYAtHJcU/VkFV6km4E6br6QtZTdFogybMU80Fut4zEcYWsFFox4NSMenqoWEw//X67s2zxAe2OdC84GWf2a/Z9RzypStjWEUZ0yBYaRWtaHCG9iR12/16OXWcPhjIEY9Tn7cFZMzRNMYftZP1p2Ah4B24M7vzFFjsPq4qylccfsOgpHC6IxTeBbTVad4g443BP9JDQbxJ1rCIKm47zy93Cxm6bYqC1emO97Z31uQ/vuK+a1ziSysU9Vj+444zupO1R7+wkqYPlbZX0oTDun4fiNICDSkePpxBxG1cUB8IfA+MP0klYD0iolbf5cjccPaMHgXCumMqZJMl+r4UkAUacyCx3YYGA5b2QG88tJgKbjdRXqXlkjcJR4ub8iaha8y8JezZasizpm7iienQ/7w4DfxWohUL3ACqLfQIG8oiTGr63fcmTuuIgZ1fyFu+k0gz5FeTw++UTnrGyI+0YXXsnHWh1mry4kkXvC4Kd0THpAi1Ll+FgA37Omq/6T/xm0Ur3+ndLwC3po4Yu/fFt/q1tBaD4aaDhOODJcUQO8RdU6yZ79GScQYcKNl/RFg+7RIJeml9uVoKP6tTRu95Z392qLi1fkJbEGLHBG06c9GtqiNX+Wc21xb8SiviOsY9taJAZTYh31aaNP3IcaEdQpvMMb5+xQg2a7zEUTa6OrGP8bLCLlDCmUf7EuW4TDfZh1WMg0S+MAMvcXkWLO0lXpKg/wzVJVIVF2Ws4WAuSxt4AnVkYxEbv77W2u5c0b4xXAljjYGTjHreaOWfaqKulpWcJkUiX0Y82IJIyN7PGjxDNHXN3LAv9vG9eUUMH8Fl3i3T6Fy4nLDH+6KPylbSPxtgtFushQ51VJvp8uESRNum3gQAHPIwMSnto1k5Al0rpH5QW6Z8mMNDgNO0zZDJo7ccivbRmbT0dZ6exo9APklSYvYrR06P4R1w589/gD+5v+llA5oxmlEJ5COAgVFvROMR4KlaIxdgOoUzzyr8l4IhCVA1zIYFw/YiGdIJXru7ikgiEQg/rsNYZCRWYtVFSgE98lBv8LSihUxJuuCccfBUqdbIxQbD+pgF4oNezYRdqnDfdR3facVDi1rq7abP2Nf6tVHZ3vZAWF6eFzPCNA+hOwdLXNTMG/eQQ1L3ph0OhZKmhcbWUuLXYstwIS8XV1QvlgHuN+y3o/aw/UQ7vof4T8P/sGJwYORmOK+WSkBXsUFnP38N3DmPPmOkSQ2lfQaD9M9Rs5Fk/2ZMgehhoVxUl+fg7rCdnLzJQcWYls6VYb8ZyBhkRAJRIcaAAn4gJeL4tf2NHYtxYsVe4RLSKF6R8Piy4D6fXDQLPeXEsTXVUVJOx7pWzHUL1RbeteR3OHlVLZEau3vMbKGlZyken/ht0cdTSsG4Gckiiil+gFxNe2rbiViNlVPIp+zmANIXqaA8z/CRnL/Kl53OXWLEqa9vIRpfY2dtuRdwBe2Z+sJnKsCsTp24mq4C9/EabgfywGkP+RgjAeV7zx5js9Eva7HP4XnLV3kHoc/UGuSffml96uADQeVMVzWJwV8CuNET8JoPBaQhCptT8B7mXhItSWHJnqAYh3S8d+KHHdbeETDZr9QllQGlm280YfOdMoAFx8xQx3gQo16NLrTqkSuLlaO3HIr20Zm09HWensaPQD5JUmL2K0dOj+EdcOfPf4A/ViCVYFv9bcI+IKiStw4s2UTXiDsMh5vnXCYgz6iMDNuXAwegJcsJJZF4wSsDDSJjbK8dej/bqIXN0BIYESfx3njs/fLo1gSS0MhvkkkW0MTmo6gb3pxBttE5cP2RVoQJkuD9DUAGYIRVfDS4W65cexEo+QfEQGdd//7/bkbaR+D/aeh9+v/8d+X1pczS56xPdj25z7Amr1h3uKJj08b6L0OXWTVc7d2A8VDS0afdGcpUaYEvYO7Ey+irJlrrXxlBs/yoawwyrbXryDpujy7UgF7xCWv/eVn/9boys4AoR1ijtxyK9tGZtPR1np7Gj0A+SVJi9itHTo/hHXDnz3+AP77MajfU5jnxA0eec6RC6+ZQdvsgvVcgubRUFmFU70peU66TvHk7BAywTv3MsDBgDBEPqCVZE/lWxs/CiNpfXdifZSJZ1YcVHcUmSLb8CKSVGj/OUWb6bGatM3u9SPpbFoAL3yhUPkldHIZGfeqcXAUnRRYPTydjxTfhzXo4M3e9U70yScyrohRLCabpL7IhwTMuMe/ysQOysfjn+hdFfjukRFip9C1M2F/K8lPSgP9vUov6VW0KQz2ATSww9OWWkOGIsy4ysD9PKbDmfPM+Ty0GFzFqu2hsvtQrJp8g1cxq1xUbOlFXJWP0H9PWtYvfjuDNu4ZlNoWouvHOpxDz9EtQdlMak32JkO0sk0l+Sasvu7xvYitR9m9JEUAbFrC6DTUczHJqXxQohrj3RE35Ug0rw5QW4WWR32Ngb3b7m3YamzGda88+N4fGfXaYtyY29Vbazc1MqWQkC6rBO04TUHGwhzlstcGS8/5soWbq5lGVya308ZhT9jygRHE1dOytC/pOHUHP+UCrqLcq7mACo3zaCSZHVcmAI5ni5TZvaDDFVW1rrA+Z6SB6GDfmIkvqm/nkxMqw5XZHqpquLbHqOTh15HEZAYHD4uycl4MnYwRfWnBAar7Avjqoe4+wmP6PI9fufPHIbBc95BCcfTP+RKoJCA6E/TCLpgHlgLqhas3/Ny1RMbmzlv9/LfCr9dq4UGYXZPGQZn5njmPvLgG2vj5820XlCtGylHhVB32GyTcmDIcY81cmrudhIteNRKXaCwGDverypHSFnheFJkINtgYo9e27LoGaIz6T/QZU0U/cZGlxwCLggYb9UeFyMRDBu33PjyQheoDQ9t6A5rjEQpvJLZuyHTeCmfjgaqa1P8wWppKrV3sDh0u6WIi7oaMhnHFK0lTXts46/c+WxAiPZUkVOrK4yraLhHZrcJaVRyaQi1fckWMu2TJxJjnIEbJqpIyjKnEY8VEItuJ5yqH0RQWbevm3M/XjVPQjb1qENwbQR23hkSO5NKxjxt2UsV583pcsgiMJPBNWrc7J8/eV6tTdfXfDmJiNchFZWtHNrWkLHKCqLFfLxrV+XjfEUZqYBzj9h2Ygb7Q0k0nQD/HvsW+lRymrDyYP9YpM5fBWrAy76bXZP3/kO18ZN/4fhswWhxFI1G17W9cjzz5egBJEER2JhI0/VSuB0FoVKWPAUIZonF4auX9UGh5ybv12oiWwTUjP58loShmrBRPTwmuAoGhXirZ8VE8Tj83gV0KyPSFHq7inuRJT3B6GeE+f6g8XAS/116CQz/nT/8AL8SMDle57UF1PQQnIC5XU41OSnN9+1aCfy5QdtCp75P4ahnsYg1ATyb+GgVZy01SYe2Ikxgm6d6C5p0YxetLQolU35mfnqKOdCTZNXKnQR0dom+7PvoFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hrQZrorvNU17AxIordXc56NYvCJd/5zxQkxOKVSI6yYeXjjS/z6gFXoXiaiPjeFk66panDdWY77KpEtMN2PJKAnMrLQ2DNEyUneMu9I7Rezch4ZQROcJYuBhCvqVuT9W4mwX9bg/ZDpdaS0v23ASi2b1By7Ig2cjcFZQhcoQ/xwHtcoEJ8NobUpBL4H4EUIUIwWqaH8nlZYMqGL2czlaUC5kRQPEWKw11wXr0HwHQpWKSL6zpUIArcU6om/welDQ8EVXx/SLOIithSOxrT6tzm1qn5HvJY27cWW+TYUiyzqknmMv+PIvH4MsGwqymr84gjpuMHYbHbKku8LOuvNkpxPzsVJKhQ7LSB78bzSotohqdfTy/d17n0oqSBstPnKrsGNnZM9ZObAT0UJe01QdFW+Xz/IdXKUZJIpMRf8+5CP4WEjd0SE7DlpGL16NRd79IgE0A3dlMWSnNGGB/90YIeVmOJZBSRa6w38OuohmTZpHhNmzy3ENBtNqY0spFbLd0b+DM2wn9lsIjyHk8BUnjZpCRrCcuTKtSHQX0dETkKZ7YWJVFGN94DJIxw4CFvUg6IZ6sJibE+a01DdPOBFBmjFU3+ADGXawLeH5cQHsws+j80zTOqgKUZNFlJwdX+/PacDDe3OA6svBZs1HkbXp7kHOhUyGhUHObbVq/zuID27RpQl3LYexwMYwY+VfBdw8/QkZGy44w8kAncziBkwL+3HCD50p2ziWrobTn2O69tojJzCyExk95QJ7+dajEajiUBU9G3yVui45o06sQUgkcjRQ5Lx3v7HSvfCnG85GkqfcxY+n10eh0/LyomoSzyYqP8AcarVG/eaclLJwPtK3wzOcyDBSTa6VrVlFSzwSZQdwMVauuk+p9pdrHLi2XpdPoHNbPu6nadzHahTKicwqr9ayg1eRixL47vAGd16aDSId7G58TdAPNy66fLUcaDagKY6RUUaoEJ1sW/j159EHoZKgV1sVOUKicIfP/CpbCLdw9UGoZxwB4RifMPMV9LIlXY6wVx4aTqgIldAzot+w42/RS4dRy3X07Yf8rWq57IY5qtJKXy5R8c8oZIydsgsMBq53svAQ5fgQogoQ/5of1ZH5lmqJtfcSpUpe6f6eIJ4LbDZHi8/6hq52+uT7sKdliFW409RA749OlLXpkMqEjBm9wPejMmrpb7iFkoapeKriLDYZqIQXOnmxyP7qDzlD7JNXLQRkNswaECh/OIjpxcsYx+FbsHTKDYcZgiEYdfddm2b0LaB48VfJPkGB0WD2XDwpxdt09VSgYzSoiFnPmBymASDOb+IPNEG98S8LBnHh6pJD87wMm2RJ7LCL8xVdi+y6btCqWo6yVpctGua0APhxfRYdySmsl0roJnkH4C9pC7HuaoJAU9VQIOTaJ2r5UAhhB7kjs2s/qziM6ryuZPiRoRQxuKEce7K/W1k3KAJR7kjSMyxWix6VXdrgcUuDGoRP/gtnTvUHFGY7bw/d/xkO5r58B9ddsRhjRM8oANJBtW1N0E8NZ/nlLPh47BM6xD0UHU7DcObpPaSNFG+YT/r20klCSP2+MpU0FphKlP/uD8mqIaaq1/D/UKXraiPILAOd7trdPqNXcZZ/ThwDmTAKdq5qORM8P6ffPche8WeCxFDOz+Q2IJE66YjuT8Y4fzgbfnHbozrqr6+B0/nBQfE0w12oZyMCDvWOLvHZLHkIibe9arJCz0xCseGMnMTayRRNknrHUz+0tF7+URqBk3mq3WriHR8QiNISjZ+Zfz5vdMHLFiRXmarS84gKutTCzaUJdy2HscDGMGPlXwXcPP0JGRsuOMPJAJ3M4gZMC/tybxdqLL5/rweTpeStKLex9Xczng7WiDjPP250/090yTAVBI+5qCrT3P9YPezoh1+MV9KGlkLJN26CUdg13MpfEIQCpZviPghAnxgHMLR2x9tR8yvkpvvx/SFSBy7WbtiZeupZCegHKB/RE1CGk3VE4rwXuA7fzf0kObt7zF+r1GE2ZDqFJ5r2fmF44q1YUEtSC2kXvd0lDTC6GM2nq1Y1ts4WLekb2uqE/46wTF6bRTZP9043RlQ+dKdlwxIAvwwzrlYSo6M+Xu19mWy/QZt2rO20lRhE+zmsYdERg80pUBsxAZj5gow7PtXYw10e3zqnozvYGf01gpc6H/PmJwKXr04hnbCZ4mNI9VeYU9pn2FMra8kWVDzKEgrdh2Vb1dJJ2JmYEzCEA6ExBz38r0kxJj4b2Yc8uQhWrNc+MQ+39dafpvvCgHztSpWk2K+I0zDcwKk1DeOIvb78BZ34cOrXWXJfa0ZLrqau5dK+rpZvh22CFKX1J/n3arBhdan89SbaVSF3dNe1+xWGpNfZ/JierJpwNz6GInUMZc1i8plXoy6y/Xzx+xgLCJOs9jGpNXs9vM0nojUo7Er9GVVUKBbx3QFqjn4V73rYWMu4AHr6uE8gGCy8+w5FFp4OmbnL1/6abMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcVU9otpTnEIdKB2a7DG3VLpq32IjBR0qSrlnx5rBh/W7l0d5duo5gUnxCT9ATYZHnf75NVasCBfMocdq6sX6ajWalNg3D3LJUDoBQrfUiI0WY4p+WQXG6AgblcpaeW6FBI9UmVGnpSwyRvjwXTaV6ev/qZW9Mmcc7XhsWqVjUL1/xwKlcygb8JLn8uCrxnGPV89arGC8FJvgN77/ZPntRIwKAhw20oqrDcN7Ih/FZqkor0wvf2OBXkq/OpHsZZ+gqox1sGjK5gnfz1GmBPmyBdXpwtuLF5S6AbqffmIbZdm2loE6ZBq5bfXE6QrQ0WHz0lWMs94h6pgoc9/maJPMGyN0ACqNDeoEABYTMZnWW22zPfFNgEm34avR3B+TGy0SpXcq5MD6k6Hd+9mu/+1cREGAE7FQiGmSMlLlU0L1mksm2YWWJaYdcSTixK3YAqdX640125cWOqlWkJGmHySifF9vlksfRLmfEh5IhOzYD84VCOoyRP72yOH0eThAQpvAWyoV0lnZRzAR2qyxjuFx3I9d32CdhQt7XG4moJnBYt51jUXoNL/HGDzcpcOAaa+BM1aFYyJEY3VawV+qouCTHm9YwvhB75x0LSlZOuO39+MV2MzfDXb2dAgkM+jNhczEyUA8hjp4rwiQ1c7QCYUVBK4L05OJL5cFpNbA1sGvYYuxA+8XL9iYUFUG3bOUQ/zB5QDm1RwU8eYh64EeF4Waw4jRWBpEpOZlAG54S733UlVudz6+rpNUA8TF7Qr5KmAaP09v62FwmSNnoVDLBDWP/d5pJBEtLUb5nqw3IewGGtOJaloEJFQUQ6iaYuQQAp8bpwiOaEMhcplBsPuX2LiVi9/5s4UOEftlV4/O+U9HFVoMHCLKpvIuSF0K8lMg3J1hEAtnBE48qOEI+hGJToUIQB2mnOG5H0f9PpqxDAuYx/Dts6BrX7A/XR8uDRM5Y8j9lmyJ3hR8iZ1HKzWWRWG28bTnqyuJt/fOaw95n5tKIumESKaQZV1p4lxvsJ5SLplQLHeh5zgN3wMz7Iz906Kcan0cmY/7UJ6/ao8N9Xd4c1I8IfoztpBICFuSwwYKyHPezfm8/TptSNetAYzJDzBDrS3xxoTnBitmPZJtRw9mmvtbOdYlaVlygRdYbl52VA27RXGJMqPjsTmcoml8/lR7dxPRpV1oQ4+69TKF1q9GxRLysMiITuSKDfBNkHO04Y350PGf+PRLEH/ULEI+aK8CothpEdQ/3hpJGOKTKSp6e5RTTke0DVT7KaP7mdx+2Cnge4MfdHEvT6uIKaQp8zhPWvO8v6TbGa0QLUTSW9xigMdItDokTQeGecy2R4g+56JizsK/sQ0/8/+dRjzFrswfvI9vQ5XS2ptIAiv/wZxXcSwySg4fjswsZ/zM02uEa3YNzrWx1LSlPxOQEvp8iM3xbTdM+oe0b/z5Bm41uIxYpCEN7N9+4XWTqvcuKQG6rHe//PpfdOmpORNRX/qMVKllr90DXR/bmi1rxeO9tReEkIZSlJLhQ/ga56N35lt0yCMUbCfHnkRm6iOCG+f7YJfzfTfFSj6JcMRmSGhYDqhE58jGmzGda88+N4fGfXaYtyY29Vbazc1MqWQkC6rBO04TUHE3SLqQHVW4GLm55QLWmeXOBmvU1O2s9Eh02XJW90LlodMlArbXHryuigJ5f1Id6oc3JEq5CpWYugo7OMCpM6Il3ZdmFNaAAg0FYSfIiFIh46Z4b3tRM1HjB42OuOfjkUaPVJlRp6UsMkb48F02lenr/6mVvTJnHO14bFqlY1C9f99tY0Gk4Gs8ER/HqV7fBfCfeqJ7dx4suhBjK7vLRahuZ5AjtIewtK/kpgh9uuzSa/r70c7SnTiQBBHJ3D3fm91pctra03nWlcE8zAVKYIVzh+U95h9O6+LLlH+MEUkKmKAsY3Dzx4mViUkfzjg/8nRnxAzDp1BsyA9HnoDDTdbhHS6gk+L1F0ChzEbvLctf8+Tp02OFmuJEN+K+Y4DvuA+f4jqH+7GJZQze+5qRoq1Tf+IhWDAkhw8OZO8gmkRshd1yUt8wT99n28iLKe106irxOhHfHOesBf8S8/UNFR5KkEjKcHU0/LhWuORfZMP1ROEPe1IEx0ZtpVlfsa2CHQXMROwkvNSvfHmf87QVgP2FC6o4AcSUJTa9ax/8/DZbuNc73KALg+WsRVZTkq55/hAG/hCkj/HzhJQhoLCeFQinfASXSBWjjezjoR7bpuLNkGSGzyCf04c5fT6DEByhOO1Qou8P9Css/3aGiKqLm4AmH1FjnS2NL7md6kTI+IgiUOBd5n7t4TihsJI+jdUlM+V38TeWrtpM3UUUd7LnLyX16wyp7Qh4zElfAawKMhvxQBe9Z9aip2iuK9dBH6utDXkn6c4Dz2H2xv4r6WGphJUEV8Tf9fa30lTUvnmKyQ9STHvih1gaaoZTWYIzcs1WT/dxa+B9AOMGkqJj1L+6PcvqDxrKPlzx23/J3WzR7XUTi++g0AMImZkPOS/Q02V3TUCt/rGvK5PUlZfs05sf6qQ4OK9E40uMov60mQW4E+Ggq6HWfmoqfxolfQKb1Jaw0PuTBp2PF7MeRueDnC1Oz2LBtAmAQBH8ijp43hkwBhegJi4v4FQp7ceix75U0fPPldkZ1abs47USecBLB7HMmOeLFX5GdJ1SsRhfpY7n4N4ue0ZhozDYKHJXVcK1urKvgNJ/rpYUW32FeRqnZxBxZIsH5MENDYggl3d7ozhoLoaemjdgKrv60uvKu+qdPqAKVy84KjMZkAnbmT+4TuqmcCAh8YK+o2KErGX45zhdHiJSO6eLesRlvXZ4feuM0WSEzTlKczsoReNn8Y8TbwupujJtY1M4Gz7kiHYPl/gSWuu4ibWCaztl5o2eHeTIxVBmrA1FR4KeKpU+6qar4MIfUzip42zYrovE5Q4yVT2Gczaabsk7jx5UFVoC66JGvamiKtKZi0sZnZVOziJN8beYOBKU3GOKgy4hRY0G/g2f2VqYpPU5WDxO6YbYJ8VPH/0Mz7DR/Eo6/KSEj1q7CneT9oq6TCUkZMv1PWdc2NPewx2lt1WLLO1kUj1fW2PeEWv32Ltj6hjNGWhzR3VUh2avIZ4oO5319Dm6dIjOiMdWPL6BG9qFN5AOxkO0MyefyJgpB/p8s3Y0gpckppQmLLi+SjnAPb7rwQ+BX9ftrNgMUfdyrZxRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcppFYgkmT3cwQSRJdjBm5kNdfQz4qn4VqLxqwLVuN5uvB0yjKyG5iz8l0pHdQRThPp0aWqbBbpMlbHE54xlpVcNJ3JXvdSsj5ivlLNjUXQMu0EgdXGJmXHoiVnSpdWghwQP3nlM0NO+67dNepPWS9hrLT5rw8r4MYDPBCoOMp4fSvUmBzviTTs1jgbaAGA9o+EygiuP/3YrBBCN02fvpOEy7NddbBNkq80SSEmnc9viSjTw3S1G4DMAFQsKxqVo623s3IeDWecnLiZIa3GzQC746zBGfr3W+MgTs/e5921dUJh2HSSVPBXpTWdo9nmaFfhhyENq//w9xQSCBgBiCh8+KO3HIr20Zm09HWensaPQD5JUmL2K0dOj+EdcOfPf4A/6mV+Q+ga0YLxFLQSeo5n/BgRlgV/fLhRhdsUHVCiG8mQ1nNZzRLrH8pmkRtm1XVfojCaqLtcPOX3RRUYZWWVPyJHfI9SVmcsKtz4SwFdAlxyiUTI7mcMP6yqm1BjdgVbDQDnSUQvgAaaZsL5ivOBsP11DhqojQYBzyiEwcFLyaT/6+YAv2wbTFDe/HvTqyup+qtuPid8UuuQ7UEzuGuOKLegUuQh2Eqvy4tsD0+iJQQ0cOjsejBAM27EPlpaqjfoy+uSaqZmpP/fkISbsGUTlC5dLtnCsALh83V6oA8VvkKWGz84vcuZALBLNGK/xfo5gPc2TYZeZh9H/fSM+6Q+eH6tQSCoV9/iy2etZt0Sh5W3rc2IBpzfNaCvlW5/5XDER2X8n69/TIFk5wAzx5FdbzN7tR3Hc2bvlxfDWg8RDno0egWmVcFZENR8sXD6Xy1xkZyscl+QPL+Cmij2a936w6KTJSVs79+0SY7oMGyQMxrkDl5KujvpAwT1vh5npjNbUVZUet7eiHK3ELT/m6MEh2pMwZwEkmu58YHDt9wR47Q7MvF8nvAyawqi1lPpuVKHJuLLybAGdiZaub7may7VCsMv7J9vw0FykewxgfyNil1Rj16AfQzj/F288JECROulwxCAcgK8ojC0hOAic1wl3uZ7OUJGYro/zPzZfnkek8zfSrYmi8gk1lM+DabddXTbiHGEb872TDKBoT7ZLO7mBwk5kZAIHbY70Adwevwhcyjw7OKHDjKrahoN5r+K3uKDnEp+jsBLSRMRKZIxWVhps1Zcq/CfqaXLY1LbuJ14QvibMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcUQ12Y560Fu2KYiSNabv6QTqwB+5Ui9OBL+odDb2tnWI0PtLxzI9pD6Jcxpk83obp3wZQkdRX6tkkVUVPzGRFNZjyeE5qBwDEf4oP7PQdjvURPliE4qK3PVoyULJsk41v9Lbr9ARVpIgErkoHa0C5SugRnb7MLAtEHIYsQ21nmtSohZb0UDZUAURCuVGomlWPvLGBrRJXJxa28IuZje+0sMLxH7b7lKyhXS8+fBpFFzs4Exmde0t+g4ZMclGVexUtuRXdQizfco3DVaTAkqhTf6vL/ET06loRcqRZhmax+jvOXoYznhLa/CQNXbDfccK0qfPKCs1cIccp8o6jkcsfksYfreIinw0aRq9d3ClBtQb1uAACnurx6Lsd0i7wtiwKpN7TEK6gpJvXi3BxIHkbXLiscLnhr0Y5rcdBgL/rdkYrYRL9biStgF9GBOA4CT5E33WhbydUYcDduNnwVTwF0nGiq7fPvHakB6wZA+sSSK26H5V1uOH863R+NCdxLXfN7m+7bKJkz1Kxbn9W8Q0s5MJdVZzJxvxb22k4t0Tjz/DGUCFZu25hlnmRe3m43R0BHCd/VCaSvkzcwsNnP/lq3T2El32QEAzpriLX9SbPhp70o8lbkutCgEqTK5NsWKIWa48UFQ0i9M3o9wUG8GbBbUlULOAlBpB9iRbVzzmV+HZPx4WD3qngobDybyiyVQ0t1UZhLS5DqxNTkFOvilNVKkZ1dTilKmQnlUd5eg7XrtFtx0YMqkp+VJ7EbngBRSyLza7Plxvd6YFov/JkN5QNSLCAsS3fo4Qzd3wCknIr3TCGTiOEEYicKbwHHMwDBd8a7ho3PYSy4psEIgKZo6vL4eNs0g0N4N+sqwu6SgdxbztZn3z2RbljInXJmKxcYK8uphyKk5Sj57N1jPF9WZcTalxXRUIkB87Hiu+mGBrMQ6oR9mzR2euwbMeu1yOvyL9HN2vHwljB/lcTo2GugPVu1NCOAzz0559cRupkwP33gKO05e/aSwnuAX0u2xBIh/qz2ttdPEcbMSsUS6GmN1vNOz83VWTpCtajvi2dDkRZDhgoSrJ7v1Mkuqf1bSa5BN82MkFWUukkXfaCOLzF9sCsd7ZIw5wUjeRaNnIYy9Y+DbN+GqyLKHEAVy9x+oNe+7WkGG0wbAtEOUUILrN6UxYU+alQkywFLPiG4Gz69Eimdw5QOH7d7XTQteRU5EFh02a1mvlWkdladS4uTZMcG5sjRlcDqn42H1MSPJ60czyh0jPpIOLq3mOvG2UegGRavkxBWxnpicTeNks4zowgg0ZrFa2v9LEOE7p5/pW/qJtczvgb5uFbjM9fXbLk00PnLuUpxZADl+mUOmWKy+WYkrJH+l5FqvlgZBHDzmEyGwvlcDsvztUekq5RkRiQN2C1eybNcAanRieldKmE9UVQ26f1yLuvY1bAelmwP/LSdtlkqK2QKv3/Oz1m4O3ZNccBvhC/egS9d7mDjJM1Ia8n7/Sx8qffW2uV1AhvbOTQyVZRrCCaQyvbNDVrtcnMLg/m9foZDif0B/+Qnry01U4oBLh15C0dVlKLapCIWtTqO5v+knXTIO/wau8LijGHZVoq1f4M20hhrtI9PnS1pr3AYZ7W2066uJW5HhHMWo9o7hS6v0WqsUTmCTfEjoP75yW3zC0P1Ci7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQmxW0yY3St+/A/ThCikkeoFNzRdv3ittvp8rYnBbdX0Ano0D4I86y4OqsjbpihNhxqlvmQOa2cI4EbRlM4FlhqkCZ3kFftFqFdd3cHt/tOM2K6ApvnxEc5XC1wbiXa7XSkFfQSWv3pjhqoMqm3SoQfAzWP8ZMHoaaY4SerV+3ACqS1gt6i0JoSdB01R8nhXBlNjVnQXGqVzAzHGrnRE0JI+++pCyb7YzXOvGuoUpc0lETPaSuYBMbBbdfGLWtXq3wUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlAmniVWIBYQIJsIF3CRXXA2QAADpN15IAkpzYWVXyQlKieR1sDF2iZqNxgyWVMZ74bjOJraOGBvhYv+p6BHuqX1Az0cN3Ic9sb0O2r0qthYycr6QssxN8Lz3MAK2sD4DybHXhOqGWjxJNsRGgvSDTAJveRrl1uxnBIKpLS2qAkzO8zCvwV2taJHS3LN3c6SvqyOND0RU7HASMHfn1LJ1r62qnrXWwsBbwkRu3HYaLYdFfAexwOxD73YJP0UiAcHnMlHmMjTcGrflZS2CDlEi/DuFYle2j18Ks0RDgnw4LT/mqO3HIr20Zm09HWensaPQD5JUmL2K0dOj+EdcOfPf4A/JY42OCeGSkJO1FgPaFhsXzxFD5heTEbS4cveuoroIZd3wQ8meMJdidkDs3V+IVyPbG9OHVELCG/141Bk1lzhzvOiEH/eBlGrLOig9xamMp8tbX4QJ/VS/XKm8jCn0szrh8dZ2dqIKEFloH232F4+0f5SLpimQp556a+7RvF4Hey6vXLAuC3lyK3+a9LBjiftY2aeJ0/WLtoH6yivnOZDxFDjI8JsgCM/u5OYNDhdrNK9p1KkHs+qtUoev2KqpQoA010V3GZ7wqo2f6TMhBqJn5YjVaLOF3GvDFAvrlmLnzQ1bZepXY5taCkrcYhGtQ7+NEbUEUX/4+AgYY1iOdWw21JvXpAvzdsFsbvRbcKadxgufo2IPyPug1Zv6jGVExfF35GlGHuJYvndv7YwPTLjgbRUGvHXcPOnsD+y4CJoNwkSVpRmH/gIBuUlTrvQ+MKajr7t9h94AKQvabsOqFONyIHHr5h/FSY59MEmLOo4YBRPwiQsXscm2nq98t2wKERcUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlBOQnvojENLKdqzw5ABKytwEcP9aMCCwAK0FAZkti6JSTHDVwTGUeE3FRGwlXQX9gkA0u/NFpxu4exgH1aHvrTpLOeI5PDdnHUxEUtNY/uFnXmGt2Y6OqVfZIoPNdUy+L4GA7f5jyXzLzK3rN8ne/XSqrdglNlya0qlRnk5r//ua9R3KbasdE8jwCiizfIJkbfq9aUH1jU7sShGUU/99RaRmuFQsYUH6YicOXDXjFF+TmwovWn+Pm3ToIS2YgmjDk2FvVYUvgl+MecJJaapGWwQcwqCwaENAcW056f9BxKqj5xRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcpmgHDO26NCK4iiePGT7RXuZ9vH1RBPYWr9/gcrisFcV/Z4VU1f+W7RPSJGj0OJuWdcCRmKjBhp3XniDU+RCCy9C2qN89XBsqE/vDxcF5BFCXGN4x6uJaPN7wdnAbpkXA+WDrHsOhU9M8PQRdh9iKyHOdH4TDAnH9QvmxmkIcwLotupoCcZEol2fOd8pzh50PphQej1TaZWma5EdqnbcESV5aO9Xoq3rOsPjeXqvnmUmfX17e7sP8ab9lD3IOxsC/m/oPkOqLHIMO4+9D+fXgGpT5RoK3VS5jkBb1OjzKsgP+K6/ty1QohJWzpTuG4YFk6gf+aItYBop9lgTm51g7GI/09eG3edZAY6OJkdB/nsXokpKZOzlFov38f/4Kqv9x+cctUu7NejX34tYz6+er0yOypapByNkn5v238CK9pzx45ixyi251fAGHfQ6FUZCzjL5vBMjhZo/oIfGGymaak83com3eG+fCvNL2WBhQAivQ33OpJBeySvBHpwDnWpl5T5IMWF7Zk9F9OYIN9cFYUVwhzzU42xgvE9A3ApdPkfVs5zWwL1WarSr2+KRFuodxjPcNKH1dFz2xFvk96zSGVCiDRpOpQSp8xNAgnmE29Ogx8NQnpVTHjDRmuZV5qkPivaUJdy2HscDGMGPlXwXcPP0JGRsuOMPJAJ3M4gZMC/tw+L2ooacahk8xbFrBH67yoY1S3nTkEjIaF7kAv2HCVkEnrDgNbUfltTAUcTiJy0OXCykflAXFdc4sr/9TtSxMQ2o+8pn7csz2T24WCmndlMMHThvRrCIKqV3lX321dPLzTdUOGZK1rYT0yJOT405TieqtA4Q8Zv7Z2kz8M4cyeyr8ot0LZOUB7kgeJr1maE9KfMZd4fzzWKwQCHv1XniOpAZTP7wCD5cltD0y0J4VeJTuVWEPqre1Ye+40t9sQS4XaRwvH8lpQHT5rXL07l1dXpBHVPQscdylvTL+mupal8bv1j08Rspd4pDvRTP8+sf42o5GjhKKZxVgyRqMk4YYO3x3WQADBLgZki7lYzcUDWmylh0cQp5bUxJsHpgJbJUtsiTLo3+/WIB/Olm+mUyeVqJA8EBbkwkRiLDXNmlrIZhfzLKdypIqRpBhWYhqvYmNaaACRtUA5VktzEtJY8TJjRkR5DHj62Ykl3s4FYjmRpNp5O329D9JnGS5TEO8f9Oo8/433CfB79XT7YdsjANaV8LiilIS7YUHimHp9iTY34K77K5kAUCRI3y8Mv4oa0PMlz5rAa0mPjiOSwMbT/+ZIsIQiFzW1DQqCJsxqxH5I3YjEPiJmrk+OHA3fpontC8WqA0PvXV5QVPLWAmqWDMRXvTTufPZJW5QK4HVl/9gWeMPLK4aW4isi0LgegfTshtq6ygoFqffv+iM6VjX2GLvHXgoNY7SEpwunOUwA0w3jPl7uGSQ3ADxpqEwBxszEVZCY2eLJ5bw64PJmx0DwhPsfq14rVAFVcjKPKC48driy+8q8EbS3ER6qHCfaJu/p0oVJHlItX6AISxnq0ITV3ULAvybvyVEJTKS2rC7ZvDBxrC6GSDeuukFcfswr7Xu/qEJsqCszBG5QbPvhvDYcbl3/8vDQjodtBLRaXx/9M3+HYH7q6eMATr7sAOPATIEc2AfYrZo3J/bYPvQ3Z2QnrwCUN7ciNWvBuRR/wy/PTA5vRGLAdri/KxAPzgHM3ybowJLkzZLMk6EcvFNjdFOn34vJhHmLj8OqASdkNYmxW3kMIVZnCwKGPkwgb0f52a3sTioMFsGGcN40cBxhT2VumAjd8tAtr+WSaPFKaqb7BXLMDyEiqOIcDIUfaHxKNDQ2BdChlrz00/FXyfLlnDq7abNjVqKrCQpXpgkJFOACNl3AEYFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hB47pMGLd/zKkTzu579O2emVPtfee1yzo8+pkUpwIi9BjtpG7X4IP0bQyUOz6y1b5y7/ds78bHvMQyCtFoEAFjZ8mzah0F8Mu29cvrErOCWri2ungWTyL+xUQtMB44JkyhOOS7gDs2yJG+AO9VFcHkrF/uFrfqC4rcTKOoL7v1URIR5dgruy5vvhfgCVo4oIigSxHw7HEN4Pnz1PQdD0B/I+TuFKxLqwFc3XmFvii0UKuoVcKawuSkPG0V1+eY6ZIPAEyc4ex82jCfzhxWhZnSMzeNZXglWmfTbAbCFuFjOTFU3wXIuGErGTxTZe9rXA7YJD/YaFmPVX6ne6QmxVcFda1EdpIXTnHVW6JpgT+kwltg7iExjh6yb4w6n6xgXZlqS5nbUZ9g/2bxE5795HmZmMy8Pb3d6q+UQew673EcD+BcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YaE1fZtA5KIzK37P2HmsYzGltZFrMyWJcLWQNRfr7WuWIlCD8TOebMH+e44ulv24xZV33Kz+8/JJvxnB42Gs5tsWSk/1InD9McEG+oMLbqdV3jXp+QRLkRZn6QphX2CBwb4gojw7Etdj5E0CevvcTuCDWF/zTSs1gQK6Oo2hZukTkhyc9ZlRXAcvVk/25MYp8K1P/3C+CvruGrohv370xz5Tkg26yWcczzCi/Rabo2V+unX12VQlapYDtJw9mCbuNfappItw16jBFKQf0rIUmZahl9k4bWOz7rK3koEXQp57JbJ7TVr0eaSAb8GmrgMUoKPmHweGyYhLbpIjhVKtrXqo8/VMVQdzwFZeTAWuMBI9uEFHW72OnGPK/c1lmS4FL1eXpEBbFTULU3yY3XLazNthnXMRqMg/OVryAr5QbIALCKzYbpDdga++VRpAa44FnSv52MUGzRqctXM+O9XEzXcXGNZ69OJ6nnQmdsMyeDG7MQqb8j+DeBcDUAZeMlC/q6cXRntKEPAO5PpaexSOzw7HDHLqY1JLu7KBhCjdXj+udDM/+UhNPFEwmT087feSN0WxY7C91tfGhzA8S1KK2cQ6smkht8N67DoEPnfP94TYxtuK6cdkpfZLImckahpzLGfR5NktTW0NAuMEN51u97mIGEAfkVCit4AErLgcs/Zijict8pPPGjZBCnhWhaDjcVJ8ImD9L2r7lcJ5EBBmfi2bMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcc7S4sGVx9GakdPHsSwCHqbnzjbPodP7kK3q1JuVzb9kAoJBInfYYa04sUkvQoefJgG1XCNBjUqgREuP84VP3D9lkhWZUGyv+usrCj45HbWwRRWjwQvAURu0GvolOp9rQ76YjVAAPvEeUvYrnYaWPa8CvxI6bfHmTO4AUBNADqQj1Fx2rDnHhU4d4IMSXzv12gZxT2rYvFiS6ynqGrFLdnj8/z++cyIOObmBQjGtH2/J5fQzYX40gIlfybQOoZ8kM4sXJhHufbj4ZdBMMq/pRupnnpcrx+8IsUVSKO453DSHJiU7jpVcyAJNwx0qcv/kNcRiBQI9UmcrrusOBfbkFl0HnATEhGzGuU6uZgA8AVbzBmyvMFbmvrtEZtQdiGNKU03E+khtQFjIWnHKagFfx6lQfiwhwRkIqUxk118STcI/URR7AjzAFlkCaKmOJnvy0fgiCWrSK9BFYIeZ/kpqSigohTBA0YgfBpJlOHioXuOolCb8pFrYOifztJrkV32Tq0mZSLjgfnaRF0kZo0eCuYDjqzuz8N1bsbx8MwwYf8HTSN5Qd/A1xvDj/nHjYH1AJlGycx9GIqn1BwcuAT8R02hZUtHp73wHZ2VmdzUwrjquTGtUz0c18aqDvZJDLWQ1c228JlLSLp8O5/shc87C3U6CQp4Snd/4uFDPy3BCzfY+uE/iKXd4g33ZgEENa0B4G06mhwaXaRnDW72Ll0JZe02KEpVLy/hTG+AslTfw674c15zxONP7YHAsQrNUsQpB9qvgMxGBnr7VqfCC1SDh5Sy3FTCXb0aSRaF6EGlfzc3J9TSq21A6za0vUmFjDuvmcRzaq7cig2H7LHscvaTnaLnqdwpb/nh/Uy+f3I3tHLjwowEXW3YKQlEhK3Ntj9ujLAOHAx69UqECXdtlifWyZSCHL7H6toxxm1cMSVJ34ap4ImvJrTLVR6T5zKoCaPAtQ+Wq3rCxZNRlUjctJ2N9t7yZJCP81gFdtL95j2kkUSP5dyO/0YDgD1YIH3RzBLTuOXmrQzs1ojcxTrRTLtkYzarZnZ9DftUbSKZrde4KaAfi3RJsQOL83JU8fJBNH0RsFv6Jnoqd/WKogzA9bL55e+kzMKJsSWnVc8LDpLnosW/oaJYKkAvnv/HD7CKsGLrJBEWOafO2t+mIVk8RhTqVssdXdfo9Od1kNPjxvanqNoExuhCiTkM9XqXwpAmcc+F1be0+zr7ns9hzJRDh3WBveaBriiS05RKCVkl94jm6EUlx+pmSpyKLgL1lPwssZ9HYSqy+ofHRpRDVM0G5+mkd9QFgvTc8nismRe2sbXZ+cnwB0cxj3XVqp1Xf9I2ZqMFD7gBf2MYtHs+uxjFLXUdLPH8JEx8Z5JftbbNGp+WYLaztEO6QSCq7H5GFReMbSJl1ae+n8pDBtZxtDyvGfMPSeqlpl0ceFE79hujMYFfgm8CbAX1ahDgRvOxUDvEj6GH9eSbYu5tRzjovmCfSm2O5xFJ1ByEHxIv4HirbkCGqUorZZH/+lG0NcjCeoRC2tZsWWZgQ5v6FgqF4iccxNU67aHP7+ustEqmxxbWtFYYIZbuGhuiV89fHdqAX7zxrArm+8X+b9ICTnHZQ5q+LJ7DXmFSx5PZZ3RvyRpWVCBY15sSEjhmdfIdjMMUDR2D3uWoKfy9pSU33MJp+5S/0SCVSIB95PapSk4umWxuHE/LnO2Q2Jx/UIRP0qkU5pkO54Tsc5gQEaYzZUAAe/Wo/bLrXxDJN3faOzOSiWEBg5oICoZ/xnPzSaZzwzMPtEt2LHcfrbs1N+jqRdkFJznABrXz2u9JdS1Fcyo+lkiX+iWaX4HnfJvdb/bvogscL0eWv6qxa93NGOJa39sRsIEWMUmlVGyfP+68SK9NgXuYWdwuCcRkHL0HMpxpTNBJ0MEdUbgTCPtHaCGxappgXL9uBeDbEAKCISqO+EQA9abJb4zNRj1uj2iMxBb+cBVzQ33fWIIbj6iRTUVjYOOBkbb+WaJ2/FzXgJ2T6L5kKM5Za75fkIoVyeM2lGnX8Trii/+Q05omI1lHQt5lwvT/SuXkfR5hfYwceYfcIWlpPaVVHH/FJsitV0GHaU3E039OTSw1t2FTD/q07Wspd9Q5L7aMD1IdD/w0+apkkMbwVUSUnnlBU0qcwF7YrBy9DQf1dkL2Bjrgjtp6IwdgTtCrq78cwjGK66oKjNd4i09ptGD11sIo0+2cb2DSO68/4g+TEG8FdQnQmanwFgqk0MamT3ejR6rCzqlFl815TWolyfpPalj1lfWYCZSLHE0YsjgX33Bv+QuMuhW3SjHqd9kboPORQhrjgLHR7Qqje6zC1S/9FtC5veLPiV59Gs2207JrVGLSFG/n4bTA0f76G0MpEJJnPypom/r6bMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcaxSWdlgATMUBJ14VoOpOOt8rJSbTrMHZgRI0QxWSfw5i8HxXBfAYAzfWH9LYQQVRzldlflYOww2SmxUgnJYZ+DiplByWhmjFwbeTlDTpDgfeJJpQlV0mIfQkuO5qhOXNwYDt/mPJfMvMres3yd79dKqt2CU2XJrSqVGeTmv/+5rK4P4sKAc/sb/0rD09hZRA98MYhb++LxvaIqcFPXHoBaGT92/6mungfvbXa7521pgchhtMvRb603ZcpEW6LBwBltDJ1cqOULFQF8N/5ln+8TyBmAeytZj+OmvOBaZ+eDXjEjTBDHRxGEUjGENVBmCrQIaeYoijV2niSrCTdacGxK7G/RuZj6roLeAU3quNGiB9FLb6g0WsPLdRjK2B9f+EPno8X15z6hR2qn7PybSBwc9ajSpyzJZeF4H1QjsIKfWXJ8+koiE0E536a4m0y50O5LiEdDctWNnIgalcaIAzcjV7CjOHFPh105Jek/y5kTK6HasaYbhE+CUQ/ZZnKwJn6KpyRV9XQY3Bh5K+/h4GraUb3fMWYqWX5aj1bBGqmzIi6iogirmxR4AfEAXzo4JKTZb67qnStdsJkoMh4zzo6s1+jx8vnPmK++5KyBkxrhmAJFGzMQKR+RfDOUgrwPwn+9gQJqIY/zZlk8wHtWfQyBFNrB4kA7zFg8g8XgkE6uKxvx/Jh23XizKKTj3cp8K+4EKyQ+tHQvkji3yv8IzygMkberoioe1N5pHH4cpjw0N0jh30Z9QEJjcs0fQWVpZcj/HxRsSh2Rfl7BpTy+GOyW4HO8vYRGT5yNtSLyXTkyCWxWPB8SqhgrLIrg1l9uojzuaDZ81W2t1o8I17tAedQfs/BImHoVMkuEkTy0vHrnOVBMPceYJimS2+yogk8J1gWRpseQM8YMWT0UCvamRotsw7OMIepfc8eS0feQ0SoFxbZvv3ZzPNWhBWR73jkGi6a9H5W9Xmme/NzxV6D4PLXy5GGODB+yjqk59EsN/e+rbKsiiPYQI/ZtBfLvt5FcDWLdzW2LTVKazmFD/2zx3ypAuP3ZKzsSuR7AyBy1q/HUILeBoMHyCiM7N/4JpnqNovCW0dmXh98OP7WepBho6Kva1wk14p0Gd1b2bDw0NEU6XjaVAVXAQ1+76CZwhJ76V2Y0p5eDyurKfeiPhUJiv99tJVxJF5m0L3gLmEmiiE1pLYGmQE6/gMUD1BmQ/PcbR8nqzdb1lplT3gKeHe0BSufBwpPfZcLa4CeV+jmB9kokCSkZIYtQLGG0fqm6IDQAfQqREH+VB4PF7/KstJroKcRNIy65Bn0qAyJVIXf4E9KRqXnis2Z9uZfbmIfMno0dyfLDKQ6jb+cwpLUC+K7N53hcjDVc2k/JWPpW0mVbl/JgtlEC9t5BCHIdoiRjal+CIiqjEBvuphYXo2ZNIEhmDN6HOlixdc6dJiBu1vADi04z8wc09rTsfLcIYLqat39TcKw0lnO745xkIbbGz8Dd+ajIznGPgUhhM0vk287vIYNVDuPcjN5SkaiSrIF/FJxvUgOfcBWKpn7i+oZyVkCeztOjg5IFRQxkj4kQ7SyiaMSzNz/lpskmuTlJemkVYSopvY1r61QP8bw3lCeQlgYG/6NknxogoUWIqP+1XUViSk9nXoC9xCJbLPoAmsPEjs/6Jksev3+TPmKNPK0e2GLKa4eLOYEOFw+StxRxv+0/DcCOkBeD0Rj8n9YVlyhqZxv423cKIH/3PWQ1p1KvDMnV/4ImXuXKcf0IeeBvbl27+NNZ3qQOHJlLEASDRpH6fmy0SSVp6nH8XFE4C5GV0wh7uwSKz+QKV1b9O6q0RILPg8UIR08W40SsvddfFO5Ts/sauS8EKMXsEFFA8+bKklhCIsj/kE3Jd3oBrBpmNxWWJAMU/TNxHLOar3osKXLZUL9CEKrvOxXK/IUuqaTKC1nAeF0IhSSert5SV8Z7gZ1dE2uSsN3SBKRLyGE0JsgRIUMq0iwThAd7BTL+y5GkBHAdJvlLgkjW3vvf+YW5wFNywBigGfvem/XuE/HevxSyok1yMnRmHtfeFIAwxqEb6XPvW0z1/jTkjWejre+kVvOI1mwZuDrLJ5M4wqrVDOdMpc0BkF34l+94pfwVhM7UcsC6vlPF3be2TWEJTeilQL41GFQMdnw3onB+2HAQEKeVgIbRTpoVPJFAbKCbdKoHymwNEE94/mJhkfPvAWFXtJbpv829aQy5w5tB540rAZ4snG8P4Xh28bKGFCmjoLNCbyJDM5D8+aPHzlnrMQCMAWCEXEjaAc38JbwrkM3k2ims+pYnnzEgWBtxhu7oKmfivIZAlfaDSalelierHcQmAdJq/n0r8H3x5wmB3I07knjZQJ9byKNE83X5aqpJS7Ry+t+ir3ZLPxJ82Fx3SPMO8u6CfCSZ2hhuNpzd/DK8Y/hezXwNK1yO1vDNUzMchdE1lsl4fPTftvfwO32qFSaWgxG7ZAHu5iUCtFUaF9gO8qOL6fdKfM0T/j9MyV/rZ5IXyS1fZfMBnGUEKiqP2j1jG7QRBm1YG+gr7/SxXT6s+bP0M1SEYG2cA4vv17Mg9EJj1jbo8kGYJQ32snydquQysLVpSLBqF5xtNf2dP3UN0n0VpdRhp69TD7FbOw20piGyhiAwXzen7L5e3B6DBdjQ9erDoRBChzuZCXCyVLHbfEr6AEE1+WIDUtZcn5ZUSj/oi6vYYQK6Mm/gzZQoNDdvAHXlR7NIFHLUpYMIGd3uLV7jmfGgHu+SQub55C7LjqoxrdXUPFu9DLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkP9oMBWQhMWEDy+6piAHGLtp8ch4VzHXb7IZhnemvokU8BqqA3sk4zyQz9QpblKKokJSPVWgRKfCFAkEd7uH11nCaF3X2T3ObWSX2wdbQlkJnjvq6HATi/Pwek15Ftm+OHrU4JpSEhOI1TV6f0XMBXwyM7K8aoyUieU3M8IQIB+sO6SGHq0+v9aqX1A4Vhs6EVMknocbQtvtwlXpd039JArZKd+g7jIvrbRHwv/bV4JeoZML802RCcyt5ViFe8NZSxX19bZvPKk0TD7aUY9pp6cJTpcwzTs8rcvDbOWcExYqu8QySWTIx4f8Pn8LBUBvxZk6xlQOELBLGiwBjXRRjQPANy3lNb2T1mKjgX8AzGxxA7lKCqTyY8z2ip7Vh6yPBdqPfDrJ2WA5aMjE/+spf55wMvvkwp2Oh2N8+hdOvA3Rm1b6QgLL+h4ImWEPlWxAcoCk62EmbBbDsVoR26N2Gb24z/aIwes2xJqGKox4SLH+Rv7p+GipZ3TqNAP7sS/He0Q2wAajoTLd3anwtmoMkCBbKnODiYKD+mgD8mY15v5bTgXMWimVeDLepb4h68fZUmpH7EwQL2SPEmW285OmNPmEVgJYqIe3hZO5/WTjhh4y7HhLNh40l+piPUCM5iVeqiV2EyysCGWqoddaaQxuq0ZtW1MSa3bMiuL3R+ZVDcs9wGpnpjJ+Nd0725AO9k91YqJx+wcChR3axPqy+ZvXPpClv8rLDoc37Lxy34b1YmTjdsQncjbGIIwokdvo7s9PmgCIzWRrbcOSY/+N3bBHo0LEUXvx9cSI3CSzwEwzT4hWEUlNbo6fF2pYcBMmAK6ff8STHDi8euLJIM8UWTNKvHHZ/OmkS8Bnr12BdojUe8aB20wIHwy7zTlHV4B7soNx6X0MucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/n7EH/oCccCC/ELwdwrX0yBXpsbaIO129BwSiMCrD2Y6cXrf8c7Rg6Cw9mZdjhUsGM8TzF5KyqwGLPHOV5JhLEX9bk0Peh5yIFobPVs8av0BaugFPzIC0QIkDROokcz9/UKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlCtZ0SdKKAZQQ2xbg4efAY86dZDF7xnkBo+SZ3TqIIq9rJO5rOsTXyd4x4Y9db+DE+bt56D31spdi9z4s2yJkp7DlYv75U6ZO/NrhveVTnmd9rRtBfKPeFWlA2b1y1C0uKdgdUdlLaYvTzVo6HFCK1fccfBx7kFfnqQdxXK5eASUaw90TNGGt5pfGmUJ6n5q4zOS7s7uwwWZpkUi4Z++zFFsW5PQqyv6wH2mraksLn/ddlNiI/1ALWYVkXBrX+teAUW1vs5iEnrZ+YB1wPGLdTGUzr6f3zu49c+aloyOPJyITj/ZSUcZ1ya3DELuhTxD/OiNxrpgq8e+5aE6cdtunhQ/aXWs1XOA0oXwYiFUxbE6Gzn6aNhGgmN4Wiov/g6UiGSmyajMiN5IanqB5VEzIvmBudFG1oBzBJMMon2WCD4Z76TSDPkV5PD75ROesbIj7RhdeycdaHWavLiSRe8Lgp30lWk7uDT7TDXK3AKr6iZr0X1AWOC3C8ssOshXQtYsaDhTogRgCtLnnsSfPVGMTtQ/DfnNqgycO0i0DPZgGtiW2+jvNyywhKObXgmFZug7bLj1VrVbu1okxD1dPEBHcqKl7GsUdTI3iHFHOngyX4vBKL4FzHpccuI5D58jfM+9Sd0cJk4jDUAffzM3e9N7FNn+ABlgsiUfcFMKkyGLePy0mrgyesZEVJtRHmLi7I3pu9bV7YHC6JmMnonkOGngSLh8w2lKyRU1H8aeG0gQb3TPkbblP7viRFmfe4I/q8Qyvlu3MyIZ5eeQ4iIyd2KE5sKRZbTJnotMYKat6lgMOIuP2uAsqUX3QBWcPt52USl5TsMJ+iLyTQSFM8DnSL2CiRJXCUCXk0t2QaNklt5n7L/NFYesP0ICno2eVZx55dAzUFqud9LdNCtf6Uyv2aCQ4/9v8mY+kqp0ibsyFM5oPJdZGG6WTq1/B1yfUtNgDHw9jl0N9daq9u6u/hMBFU0nWvOXcNjer4JbIuOJLtdlQXHsW/2xfhqXFumtyPgmT8oEBLUGibf/DVhw7jIVHS3tvgy0wvd6nwqROA3D7/IkKAIoL1rbB6P+gs1gDd63cA37E0/k6VEkeBJ/mwAYUC6h++ZCenvvr9KeGbevefWBzlPbZZscXs1WIsHIUyzZsyt/dTvK8NrUk7ZbhW+p6NV+v6VnApxb2rDsZvPEzhcCdZVlPP0Ze0TfOkiFzZf8Dh19kt469b6bV77P6Yzvsad/6o971mtVrKP9udrYxjQSaihJxiYF3wLTju3nXedc7mBa+CO2szDaDW3kRE1o8pi+YUrSiQe98aO5dObSlRzX/BtP3c0bYYU7GhBjPw18XWKrqtO12FyhLejhTs63P+s6xzKsp1v+2CAaF73CtCPEqTuNm3wXPhA1b9WewL9YjwQZ+D8/GYueDVmPlFVK0QMM+EVZfFyTxBdj2GNfS0tpznQDhDYlou2Swyp0sDY+cPqM9ve521p145+eA8WqpjSPA7QSCVz+/1RpTy52iU/S1h6GUtI5z5UMLHf/o7ZODk0XcrHSolUazb5uGHCg8ZqnXL+hwWEoAjBgQFCzTSpzdSrOjlNsGWbz7Kk6AbNPSZrmIKA8A0aiXv08zePYyYfGRW46mUCxQEtAiLVg2ekM8Y2tjLip0Db0eevW69ZN9oOuoqKB+mIELMjI/V8QOsVQRuhsVsUwnJODPSdBr3gyHh0vEMucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/Jc1OWe+o8uuw3l14h3sMJgq3fU72EwLRoEIynuSKws7hxqIq9a5iR3es81ExtqZrOele4eJcPpTfmw/3TGHPauXxIt8WkfFAQFVoPBDPwn2kA7gMNlwdSU/aTzMiXxBenJnMGLXVI+3qNnrKA2Fgj1IuptLiBIsx2Ld1/sSVd3MzqJoZFT3MsfU3n6zOvlIUtmA/EAlrV2HOQJ5zx99yghPHOriI6lPkB+4To8NelLyl1UCApgGkJUxRMGtuMGTqsJZVlqHQYMI1CRuA1TmQeFC4Pro1XR5puQuOR7WpQcbz5vhtELxfoxFI+SVVFEDfJmlNFIXbwJhwcZwlmguofT4T1FssK/As1ypyEZ24EN8qCSd4X83XCE9HSd1CD61EAur9yYXHUZVU4QXqFpjwbuHMGEfv6SqvX2I/gHSLK6LugJz70nHchhT7zaoP4sw56/9sHF1UBCCaMK6+dkTIbFnUqwiRE1KFRtLhrdgyep7xqxG2I2pQmw53O4K0qnFMDcoj706bJmGsS7lYCX3e+gxiqSEDLWUHvt0A6rpBQvznkqy+RHfMfOlo8X5MO8BgvsfL439wqAm4ZDkviwrf+viyo0cY112lk5NVjex0flrsILjzENxjcuUyalYc1YFIfxS8B8OpOKRjM3/clmKc4SVLt59+H1eR+y1q8FkabUyXZrUy7HtvQKCnLFPQpggsB1LpUkKnFQUox9dGiAK8zH6G/SHxqTJUHUOC/7/oXUxNkR9TMVWpLiyuyMdeX4CWCuqB7d6lx8E1Muig6kxroaQXi1+zKMhkyrDs9N8BgEzHium7Zvzr7j8b/CNZZt4MwJ6Sn2DptG8Gs4gKqUBuJR+yIcpuMOCnFkllmAL1RUQDgUQBJhV7R7KQl/gvBQeXGzXN7j8gXBp8ir3DvfKCnaT7rhI+3dt9iUvuwDAbIKhqXFxd0uZlsUpDpWhX1/PUxchR5+OpogIWHiFh/FhGLbyasKVqXQZmxDXk5PehA1DNsYQ6zddE3FZkc+cIfH8TL552XA7j2QxWX8WIJ8r8AH/T+hd1Wxtimwx3WvQJO28xg3TEnEODGXP79JMN1bcaVST6Fiact5gBUZSjB+FVGuPwXWNc4vuG7rpYr7PrTWIopKstHqPqdFwwCbQHz4TjCt8cm06lzsxis7oJt+PG/6KrSuEMrn5nf8XWb7Xjfn2Hy2qQtVSSmosNbiMUL2LzLTV2IsNQFEz5M7twJZlsapwnF2BY35zxPusXiVMivqfaBXAfWRn2pUDh3xkPTH+WKnodULfjFIjBE6VPDx/uc1webI4g0UheELbPgcjBhsd0E+0H/QIVLYbsqjYgpqzMDDCjMSZ87fgVpE1EBYNx4Kv5vXwff34WLKeSPY/ymYFqkfspGHOO2QadjaYtqDHisG+oYln8ciOX92Dedjy8yj3Q6zPzLj+suEqBklvUTrgKxKGVwE6VsM5F5lVXJwymYJcMqC3zgGCtT63o6DfR+4FzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hPI5zu58MAZWwZn9ot9QU08kHvq1SclpWtkJnZHh/+3PXUPFg9xTV0EBXMquPAWNwYenQ0NBCATd64fydO/fjGhFWyTLtLo60hJ03v4pUXjUWqCcQg0GymnkOV7msinAWiQdqlde/1CGhexwGaGZ5dlFHmYUkOIrxtagnV2K1szmbMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcbeyJwkcr4epwnFeaLp8Eh+x3KUtYucWc84OkjNcuIYwhtM4aEImYFRro8sm8U1KspmHOvzARjvvqg7SejQyflHhcoeGNYXx5/CSibBGVry8klbgKl0r6zmtE810n4qjSIFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hF0xAYXxLkt9IJ6UZ4T9VFqJ71RUZt4oYOHETYH3nGhF4Kl+2QhDgGJ6mK9CTrHy0ey/xgkXBQjn29Arde7vq3e5IZfT5d+lniJtswgKsylUjEC5xhqzGw6NFOPYwOJd8hKjUGL7eLHXRMRQFIJ/8zG56aHiPSid5TZiFFOX4IeJ4ZbARweGwlMjbi59tr/CR+L2o7QI1UO2T0AmePILVjeCkbUbQE6cyITYhLxYpCp83yvYpw/n+yJR3cBo8q9DdfFIwWNFcnbjqf4EbsWTBsdFQbb7rMNThgQ+1/GC14lTX7LPPMOmo/T5c3eb4x3kJdkcVVJ4fTsXcuA6inBpfsi5hxnLBgWiW/L2nIMhqkSbov7eINW/84P6CbSlf86nL75Kd5bxNE7aGTavpe+/Fz8XwSvknptepP/PkElCnmN1mrwOiz5zFSpMHTmhpCoNnRblVPwE7D0Qk9xUZSOoN6HEYDmVO0lwkZ8tvOvxGWnVeuHgeGYyW4w5z6oUGGyIVopjppUR00FtjE5cFyFFTuBIhBXctCVemwE5SIKhFoXfijJDH3kEinPqKm7ExohW59PGBkQHs+HBAVGlV3PyXntg5sGVxnHCgb+g0paFlHQsdyZZFDzWssUayuV4xiU0G4eaoOdqs/QF9C3zD7/daijgHInpwiw0Q8KWTuU/uCWRWyAPSY4SuMIgbr+px+oHitLdTMjGnTcZIGeT7rkcFf4EG+dKM/Pux+8XzrHy/3BCiKObMTsQ5DZtrP/RhXz26UKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlBY+4SO9G9JUCRMo3NbnjMFneQ4VknFbGXRB5fPYXz2t9fRTp5ZQ9c9b9pnYYzZHgr1AY3Z7S85g+e9WeqHq4SO0DPNdC4uhBmeDnQMyE+gFAOI8/+HwVaYkIV+rZxHa4ho9o/AknMOXOZUqABYg0QYrv+kjh58yE4qp3VbspfZevozWmHfUQKvX3DOO7gm8przSVfWOXrXzcE3eTKwXQ4GTkfiNP8m45ENW5vX3Lyw8Nxt9ri5YQu/YIu0QmcextEQPZOlgtXBmsYjHpSMUasemfeOscXWplrTw3vOooDi7ocRAMMVQnU4FefAYx31rPQ5YIiy4TDWU41I0JHsYM8Wrlg1v4JytCUB1tprsO8BXEas5KQ2vBp/Fm1Ici9wowY4O56NtCVDuDON6YYaAcxoBdUSahjFNtEycFdW9QJ/WXtJtjFfP3fQSsdWt7PF+LWFW9dalYuoEK3C+fBhtNH3Xt7+m9U8SgCItVljs8w7UDBvaqFdGIbSOkYc6Z8cCmNdzAHseFpJicpVX842xhupmwbibQull3O8FXlbf54TzoXes7nMhcTrZRta1W3kl5NTviKro9zoMcI19H/WI51b0vqLcb6Vm7PKKfcmAqoP+LKfJW6AWgdqfJ3Tx1LuHK+BcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YZd0gPwtWr+MYQPjPQa2laJE95bvsqc8ADmj+fZG9P3blrEkPu6CHO5axKIHOHMLiJuoXAodpYuAtwrop07pfkv5P2eQuukXmq7QcLIQ1KndcT9eh+Iq0dikzbPKdos2RIFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hPLdr6ghjFc4CLKs4awH4W4Y0DBfe5h5Viwj78/qaUnxoMDkGuTU7jK3JZ7L/dpc4oato0uw+bszaTEaavMnzLqzf/YBLn3n+FDSAaco3ZrvERoKyaHf1sHKxkAgZXMr9UKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlBbMmksmzl7EPz02XF6BQz2WR6yMENefSRhddjmLukonwqwumqMFuMvJ8rS6BaOdcU+Hj+U/kavTlhZ5s4dt8Cn/JRlBhbqP4cTjZoO18xH2lxrrYbgyOWXvZRaMbFlqk2jtxyK9tGZtPR1np7Gj0A+SVJi9itHTo/hHXDnz3+APzG80ORr6KEoWOWNfbJA9R0g73igWP7NRchyExfGBVhDJwM8zaZcgr4Kdtxn6r2P8GNp81XD707zWqigwY/6/HsSoiJVRJ6+S0e0/bNnscwnDAkBVVWN5hNpa0+5z6V20YpHg/cXdn0TaFY4SSPUbrDMg8ULMsMnmlJhmezHOlLLHcvTy04fJX03uTIbji1l5OiHHKjHpBXO7JQgMeCKZxrGI+YCuBxSENUgNML/qdUPmrhgWYQUll/vTFjgtGYTcGVDVKqvv7F7iJ4iDbjreum5P2lpHEeG2yedRRv9h8P5f3TofeloCMsVSvmUvrDH6XeG2X9KGcfep1WKh8tVyYSvIOuIVVSfcbMqBzpeYBB1YKoZ4779sB7U17+yAdmjCV49VHEs5/E7L12VHWhlpPiz6cYrRQK18vnDeetkZcpLi2oafqWK2wZVvYZsWZL5tbbPMgCr4tmih9hVC1/4Bs2di/oub8i9qt1MgbgEVTL2jExHpo2o6smFhispfacNCOAYqDl2+v/EjvKaVAaa/qI2WLEVV+IehgW9eo1ultJl1VQSxorKxkcAKoBLUD2AtiGMXTkRNMk6LFYjHJ3PMehz7MDMOb3HqvEP7WL+JiRS1WiOqCB0q90RJF0F8hL1M6CaowjZJPyx9rTHVUxH7729RFTbYLW6QnR0CWDykQUfUBJofALua9Rx3lyo+RMKJrILklM4W+P6ca6ZDyom3i9zKVGcriHpPa4yCPTInC4xWLoR8n2i7FT5htpURi68TfwTAvPLzEOiMRkixEK6g3m0WV03ILAz1E2RmTn69mJvHZnOq+WPCBpkuOO7cgfOKZ8VLEdvgrOfb/6V5w2fep79wO7ziv7Wu/MCK2Bts4YQIXzc33iFN4isENsyMYSKyFuoVLYIH606m1b4qRnCvRfU1sDNWUPKeLSSszdnN2TWy3UHs5kOSpBm+1eztqdK0SIou4kBonUX9BbV14GuFHp8p6/Vzt+oX/0XTX109B0Tzr6EJMToX+UKS7Cg12JIPmSJBiOtAwO3Kj1Zbm3B72oix5tjDr7d7mENeDLWx8Xd763q0wobn19qOMjq8wmzRa1XPEELIFvW046lsv3y2HD1KDp0umL68+rRoZOLpya3Om6tD8RoqNbsngtESYyL2eeibHJMP+2HoAeKAGv/OWNUjcsX217pKiwDQ1Q2fnAFrPfcgSUHb9BwvvNoMaee4Kt/j9FAk6jiAKPThecOl5o6ZZASJ909GRayhUS/q7YjGJGpCvdgQtmrvMd1n79lJY1YIrFSPMO7ER1Sj1IeOugub/pBAShsgFaRh2XDG+vZjeh65qNGyDxOCPnQXFjbfw+b+gGyt6q52mbCWKdImoWk3wluxxkqHcyOxp9eSKS0N0pRD7uSTaSUcvMgbAfgtnE0X1+MOHWsBRKfYF5US0GIT0B68hOck5tZCQgLc55u2g06/OqgrzZnAg28h5y1z7g4nCyxUfwwXenl8EgpFll6fPCtovkorJzBybpQKJvK2BAYtLdMh/K4Fdn7lwhkjM4/wbDQbgtjrakbYbSz/RKIw1rGCUAhrB7u4/PQacY3M0wuhV9iFG0OoHrEy3a9CIWZLNjx3yCQxEQarnFO1zeO+aZYZSWPa9dr6oR4nbvk79pxZKv3H3yWeTVBqP8qEQHyUBTY8YK6PbawCH/Xvve3MprisMuUFL/T7aGwEo/TTIQ6c2X9lGsSj50o4vG06MbkHiH2un9XwKC6oEXQAbFh+EbTdYR1cOfXGtWVMMd3x2D27xoqjedlXsBqW3vRfmkR1D/eGkkY4pMpKnp7lFNOR7QNVPspo/uZ3H7YKeB7ifzp2x+6HjRHm0B0F4N70rBPLSV7+d7s9Lpp8bmZkaN/Xz+bvKVGD/qzxtNM5LmrJirDNMud6Yqi/p9OrguIw6053Z7HBBWQfLTEnwOOxqKmLt6OO2076/2fArGtoD+byBJaX3mmPl+zkzJ2e9izrfh6RiVofhG0mRI1QwzmcMivK6mU8ddiPE8EkDXjUhOutk0ttqNNNV+5o6vdSy1I05Lk5ZkGXDWOpzEeRb689yUvDMPIs5v0vOZWbAUtvb4OwUIDLWHliLmo5PGMQuAce/brzLwTisx1VQ0zID9FaZabMZ1rzz43h8Z9dpi3Jjb1VtrNzUypZCQLqsE7ThNQcYt0eohFy+qjndhVI6jcf6Y1lwAAPBPzUBeLh0FfQ4iY5Imct0gudCRL5hnnzO0a5xPLBDoZePIeFWhICUQsLLSZaJ8CsNRT5eK9Tzb4bhX2QYCAPJ07LCoRrF/qh2AR6T7Do7nHNRKC59mdcGyHdeXg94+HunMb/eURmUaM5u/Zub+SHTgCYYoEB5sfRqBgmvgSm56ZLKq5Q6UrmJO+ajXLChJhuemnLWp9/kQ97MooDeYL1sBHu8QqlF/sqd9Pt+xs9MtzYR4oXyiwCWpdI8P23b6uFcZvaZQdcqZFjasnAceUfi309XvkXbDXADkBLPbM0GzLt4X0AOjH0s90XXUxkkGL29lWYlqRPbuUgWEdXYjMWicNAsmU1UCmTxNADfgUlD/6qNazWamblAa9swjj6Q28Bwq9V4Hkdn43hBeQvpNIM+RXk8PvlE56xsiPtGF17Jx1odZq8uJJF7wuCnd7nqRObfrJd7eKG4L54E0dCPCnb0HhItwXLZDH4YDRKLbh/J0g0LipmgAj3BVUSH5yIaJ5heacqeHV4aqkt+BaJ9SVbReWR3UFKQFvcBofJ7zKdGOkBg85oaEU7nSsHTL8yNEgs1cUIq8BJsa4KX7bry3xHjc3D4J7yVlJnI3JQS9V/UUBnlEO+dQK/GXYFlgrLIlSij3SSLA0w9vCgAr+cpeW2zMF3gnmOWXpci9d/XXEGo8vPDjeVyweG6rXaVrvBB7Oj59JzxNuJBJGu4mju7InkcsHgxKy9HGqbEcTTZ1I/x6BU+HAvxPOELYJOZXHpYpQ2QSAGhpx7fk4OAzXfRt/Dcu9NbDdiW0VQDv+ka1el7dsTet55qkSz+p+oqqj2d88eNZtYbF7PX9BHxlXl8GVh/PXYBisxD0Oq1aUd96ebYSIltx+y/eVnhvCqzbLWbooFbEEPbXYLUZoYedhlxaAJVUazHsVJMmGiYtMGGzl+VEeE9IE9w5MNmdH62OmFgzZa7excw6sAri7WdF9kLJOMdRY05trg+JV9qaGQpyFkIjIQWO++GNQNWQaflSHMUpTHNuE/6pxHHj+FK8glOYBO9htYAgcq+LOQA9Ix4R801azC7p87gYmn0eFwTIFjTyxClhSUylH9PdvQgnvN+ZP0qFSG2xkKCWJtEvj4M0k30h4UqhGhsKySOZsb1nULLhHjQtG7sMkJTn8Wl2Sn5JiuGXRwfj5iF37LPVelJYXHdGQk3o6/zOArpaMquBTn9EUZNyNYa/0clWa+HqPM0QEQmH92TWKmVl3zSuGR5DCzTXzUeCvtxwUk3su1oSUEjfyC3xRxzWmf/9I0ItFV1l4KP2MeCRpKNyKuQM/U/cHWv3zb0g0gNNqTe+SVVJ8OihpN5KdE4Zj9Bzc+wD09/QFt1mSEkJKnNytekFHFYXKt2XYe6n869r5F0ZeM8hwMB7JJQ3zJn4j7UP62G6VQy5w5tB540rAZ4snG8P4Xh28bKGFCmjoLNCbyJDM5D9H38JEWa8nvnkL4DzKcIbWZum5GPimpMMHzk94BRFdCyh/k8D+zmxv7YRKt6Wp5XUF/03CeRmExp4pRuEsuH+uk+Lgr6SZNi3Ksy48H8DZKipl0eOraT+DAWqg191wlWc/PCvSWKTeP8+tB8fQVpFwins8XnQnGeRHTAAi1YF2WZ3SExRQ8SjEuDVP5XGALFIeWeNncL7Em6U1sqawnYz/CW8gZNGYaRYlQmfuY2LvI6AWfR3Zxz21IQdWcdPvGjfFj+RxOmuMevO8s/VZgTxs6HLJ9d5PjhDFodPEGt1xloFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hXDl1117rPQnjg25l+nHu8UauZyMmygg7WNq9H8yyyzPonaQQHVoSM1+RXgMYwtsKMlcR2eUYTzbG/klbsTn6XU1jc5sATMj86B0l+KUdPIztfjgWl8kM4PkXIHwu1r/wl4EMVaDXq5FNK+ehvYuQ6yWo0e6PaWnKWZ2jWDDIiySga5zSYEmarybRi+uzvhk9o40QUeptoRKxvL9yrrUrr84UUGRnqAVdA+65dQ69vprVb9HaHecSTXwPa+FFo9Ge/wJLaA+psfx7plgHNfGQAuNnbE56RIVpYUJuY6xcTktUMQ5Xlea69BOhIMJpcqbQQQNK2UwERzOwXAq44TbRmL6TSDPkV5PD75ROesbIj7RhdeycdaHWavLiSRe8Lgp37BdrDLWY1dtA9IUw/zGt9K/weHFzVEpGk4AlMlLEfB72SecdIpk/fEWiisUc509pW2AVnXWnWUzc2qXZ71VNBD/1yWHaMnGeUpfEVYdMmLJNTl2WoFkuJfBrAuKrvOjY9JL6blu+rvEFgZBIGLM/UoznTrrTUxe9HPxGnegxfChQou8P9Css/3aGiKqLm4AmH1FjnS2NL7md6kTI+IgiUDkYiV1M9orLjUU53iYIiJdXKaKOxYTh31anc7o83DR8QJmQaeOylMbIh58dYXFxrvqVt7y8dpet0T+a1GltVVPOVhA3c6PjbvlHma0YIwxflkMZZqU1kCxR0mtkACxEl3vOn6I33Ronu2jihB1txmpatF2ok/i8UIkhYz+iee3+o7ccivbRmbT0dZ6exo9APklSYvYrR06P4R1w589/gD//PbYMO+5dJXj+b8QIIVwjGJxUySRmEaWNHhED3zIQXBgHuxl5jR+fKYrHLypdCruQ37DTA2PesDgIc8m1KxXkFJ6BA6ZTifrkmAR3yY31CF0wDBaeQm6Uhv6HDvKzofY/TQlikukr208tTyq6oPJnqfPHUQdYKT1EgpXHnYmK6QYDt/mPJfMvMres3yd79dKqt2CU2XJrSqVGeTmv/+5rYOBDrg0wXpVRniZ3TUK9IucjeyM6ea7JvZAjufBaG1sW/Mql+5FK/BIWLPOv7FW2+s4XqEUDkOpvH84pzOCNyM6xu+vhL7hvGJBBqpFvboHUpdZlhkXKBsvyHqFlCx44hlRojOTE4Ktyc9pM2innZxQaL+mEnx8kQXarOBil8SZOwujb7zgCt5cC2x45kji1viSc8KTfyJKVm0Z0psjhBXq5+4AyalxIGQOmFd0TQIxXnmDd0lcDtfBpkYkfvFzF8Ny/SEKsRMIFFxg352C9DB7sZnJUpqZNm7LGb4prKeLvujiCblAbD+E9QL92T1X0aanRzRFHShhEyivkj85EURGlFpPrTF22b+XMyH0A613bjgRDEG5cbQ/jYAeZW0va5VGPBeN/6VwVMDl00+MYWLXDZtlafr/ulkdb/gu4K0bluuZE9fyBU68LTNYSkWjeA/JXHIS3hUWf9rVfui9l+8Wp8yH/oC5io++6XR0PHbT8N9WECoQMvrmwqz0PmJOKJfxRMFgVVryCNm5BD9S5s6pgC2F7hoWZ3GBI+dOGf/pcUUOApecSqy0T2DTUL/NjJRi2vqmjWNNj2CrFtfMxcBEnQyc7OYD5EJlPhNSnzKrGMZWYFJZG39gi+Vv5fDDHhsLRPxSOR3hvMHsuQ/TO9LGTL/3VqZ5GNyvsh4rfz2yA/jpLueSlrX3+Ih2EiFa+izhEnplKdeSbwdZ6pD67Imn/UjS3kacRI8sk6wXi+h+gR+L3dq6tOeq8dMWCt76XyLSnMerRlXL0jRNhG3ro5lK8nqWpWI2N5JIBhZP4rH5v4LsJrHj8hp4AVR/ViY2m+4QohdDsqcOgKtwGgOp0OBC0Lxy3ZMd5pwnISkUv5UqZbrZKaDtvUd4+g9Ix42LKVjxvo96gEVWJBMjddIpO64jURpoxGSgrPCjlmyECm5JDLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkP1aS5d6wOpu4S5Mji+AgeY9lt3djyk0UOdH0bOT2+mqLOMl9aLuzZ1yHMbTetKimXqsm3QZgors2TRohBNiGLTthGyYhLKdhxflCQF9/ZEvPrw1o0e+HWYvNy/YLevEiv5xRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcpT4G2ei7lLEnhndIfCbbyAX5aSb/2+TMdY/GcYOeMQ7wX3nPJmlKWe4SrUrkv2vtZKv/iHsxHRr0kNDACmKhsrMJtHyqadTogFee3n099NuSNEYitHLhXaulsmdDTQwJugXMWimVeDLepb4h68fZUmpH7EwQL2SPEmW285OmNPmH4bGYbrNuH6uw42ZNrWrcnsMJqv7gLcC3rAyZrzWqOmTims6w4DyJan6FxJFccgVWcrYSuLrGapo/vn345z/Bdo2qtccUj3XtFGpjc7Dw2lCT1hmdeJtDCV+36E4/QpZEKDY01VqGeEGjbJKIpC/QzFiR2IcEWFeYLxg8oXICdWaJdQzJmdP8k/+qlP+9b3DzLbNDRRroj6XvPg7eEIstAyD+nIc8hMG0NB/SRw9KAA0m2HWzvfMmX9I9njGcXKRW19z7p5S1nvXR15hlYoTQZItQYilUbDf7Hh3E3D+nJll/GWzdDj51ExwYf2cHJDNj/PTob16e2z0HMGLAFuNxmstVNx1TNNRTVsOdUh6kk+pYAQRQgY5uMyvRgVANc/EhzknXfUvqiX6JiZfAsD+r9NrMxrwjb+lumOG8ne2kUsKZLr3t+bTsCEOLZWo/WQiO/rjGS1eriN3W2qsmAL+4hOw2xtGr6Jc0+8ksnePHty32mDTTC18sG/xINnbyNvji9vvQoD0xL/Vb7JkVBH/LBsSAkW8dGgHxsVIlUBDfSqN6xR71zExmCUspF65ikmcmuQqAgu/rkbXkbhYvgaygkOuTMB60LryOIthaYvD2XTF1UcTMRJKN/Kynux1qyzZYyzPM3lRWr6Bm/fJIAPXLSSTDgDIJKB7WD6aQ+/tT1Ub52u8Y3Zn4BKQIDfKhz7G8yhuXMAuwDhrdkHdZPNV/r9PSmHiVjN60UJ+d3DwH6nKT3dx48Gmc01Hq9Nua4OXWiFlvRQNlQBREK5UaiaVY+8sYGtElcnFrbwi5mN77Sw+XlJ7YJc2S2p7CDFa/3p1T/3n9Yf1zfxzcCoJCT3LudMoZsp/SVQZDT9dn/V1RRKE+OZT/RHnD7ghU5I3FtQD0OrR+MZfu6p4EUu2qhhJTYuZaMxsygl72Do4VPrcxxJHnE8suyD4gSMsTTEvY8eJQEIwAGN744llQlxebimAYyRjA6iZZiGr/udL8kz9gIJXMf96UEMG21VyWV9GcywSMQDCq4FIDUucbbylBBE7rUXXmHPs5cfcbo02p7mbdTXzNu6N5tfXH/yftSY2bkPCI+cdanwFO1YBocqn6ysc1l+6Yq1pn0mIalXgn4NqN2i/ZJ3l3DCuuksfGRldpt/a2AfYRb8bXrZr/vcFDNj4vZvMqHafM5HaRMDhsRYPGVgVCi7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQI29bRNsljb11tJ22hIHoOruGrBWVcF0IJcy2TMh/3r5f7NpLjPczAjROyT29vIH74S8Ae8H+daLwB/vcSBxvd8VGClo+kBotFrDsVjPYq2kPRwOUADwr+rRyqnJpW/wmdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl1JsXs6kOgVftYgsMH4ev6ksUWRxzZKu0sNAleBVQYi8KuaOqWjGEa62PK2lY+OGqW/+UBQ256J8/jnPIrvcoMQvj6A1ZhTli+y1eGPJHN+B6H4Fpko79bZXLP/vrYh9v4ZFzRkoPa5u4p/bYUR0NfiVtr6XCTg9e1RONjUzUjxP7kc5yWZ/dmT2M8ZdGAcWemq53ZkmUKw8gnWKLBiXqM8SGVMDrNZwCQHdPqKjwSuElq3Ga2VOnDLMz6ClX6038klCLJyPLvbzGFeWrRqRsOKsTC2GkNtWA7BDtRoQ6xLt2nI7WIS6APSH3ImScPzhPGZ490EiNopIeIs6IlaVrP5yZH+miCfvCOlx8PDKg1XHfCHguzq/SzmIEOk0hbun70J1Y4WZkr/mIyif0igIFM9BhC+kZ1vkChDe3pOC7um7psxnWvPPjeHxn12mLcmNvVW2s3NTKlkJAuqwTtOE1BxisR+ELjVBrUuwLxme8hSTPc42t573vAxDc4qds2LL/K9/rfHouIMPwtos21gFsMT7MfJCAK1EvKdDf+dgzDtv1SJBhoeLCjfd5kti81NYfJJUf1nRWcfbPcY1XpmgPxwQy5w5tB540rAZ4snG8P4Xh28bKGFCmjoLNCbyJDM5D8+S2Tu74tBQa3qqSwoUh3e7EnoBab969DL2ngrrUBRsPH5hMwYr7smjKcL/1olg9OBvwK+u6uNQojH7Xu2pH3jEssx12gYqKNHaYujobM02ousSDTg5KgWo3CGXwKg1cBnfj4OkSe9gNgrn+tWNSxbD+h40w9f1cNX2uRn5gMFxXjIcYxBMyNhybCYbG1NekDkkuMgUwScZk0vNf6FDDFdJU+9WZ4ckQbF6jRK7a3apUHW/ONzW+qC2VzGaYRDRnXKwSia9ZjzMGmFg8CdSEiS7TYYq18JmyRNW5l+EMvU3aj/ldcAEh21fa7YlV7agGiZCYu1TcoUkocpFPqYOj74nFEuahatHssUjPzF0+6v2hVCBMpKYOotfckwdxSklykCqrp4L1ZMtQX6LJthpw/Z1lIk4Istd+qsD9QWkWRp/S9rM8CYytlWd3h4ETznRQLqYNfyydaSC93lhdtEAM2HEpS8x2zCMLVWixM3OQNBNui/MAKYCPTMgQDymNTpuWJCfBscvXYrm4rfcpwQZqFQ1QcTImjImq54/iP4aofHFJsxnWvPPjeHxn12mLcmNvVW2s3NTKlkJAuqwTtOE1BxM88Ye23D+9SG4o6uDRUKHakPXSz6tvJCSUbH5S5Ao/2tk1fRzlX6TbA7CfacNRholejTyuiGedT9UUVTMdjowKtrGUewTRlCirDOEhjpjHFp7yrcjcAsLR6sqqyQKQvUKETkN114gL9wSAmz60oUl51hLvjlcqHyFt/m3QyPnXtyGzc1zkEwUXjMKZBzY0eSDET3jxjOzDcWErIKI+u/L5nTu/dmlsiQo3p7d+h1PzPNTcIw4IgJXd4bKyQkjlv/SQyr1yHeu+XVoNV/cbs3+NVXumM/wb3XBpRCajVs7MFiePJ2ZkoRcDySacpClyToMX/oCAcUU5HVqtdVwNwTUvPaKG1zvoaYzbDF1tJu1yvAdvnZ9zyEjz0a1iny14qlLukBGZNvVgUMqPVIUqpPAcBt7w/64FgwXCKSsgqukKIniT5uwulhE+iHzSho/KbfbgwqK0DmOIdm2ngSUOXMX49/TmFGkgLUhHNl03FG4THXHMeyn8foDzmm7VCWUCEAb3O7VgXcCFurFFDR2RsERjtl2HHInq6aYLIGSNWVnfb2sgEjCON6eRLSPJOIX7Wxm26U53eIcEknY6U3S8cgocS9yT+RHpLKxoVbknb8z9p11SWwt7SQzIG4IPYwAEOdiW93k9CMTq4+PFesx8rSN/q3zV3hA6sHIgn4h8YSTpwALsD7agrJI80CAtjSFtXDf999ktg2FQZR1MN8YlCXycpt1Bg50nTt0seos4K0cO3myBxb80m0Q6VTgWnXl6eEwgIPtn4uX5EVPoU+r1sgx1i5a/eXXi/YNz0OqkV506c+1zVvTjsZP2qrO0ob1abqGd+sB+deqiSftZzbS0dp7mLUplak7G8tNoxNFKCcTE0gZWfiEEtggEzL+xBV8YFsYeVkh4GWDD9h4JM49Y622qdThFB4ouUDV9N4NFAmpvCqJIrSTPLfvjNp+4WH9oPWUBPNJbj1WePuOXmKnEXeR6LCvajShxz2HJkwTyVNTN9OQYHIRmgk3YXvitzLQrZqS8MKuIISNnvj/ZKGSmkq6skA9kAyx0U3p3FnkgSZ+PtOaakgJmZ/rP/mj2TYE6HO6X1Y08rLKSu3wITXgCokXB+FNe3cU1UVITsJ4a1T1QPnuHpqezrGskAcD8StdLDsmiE0pbg5GBO821Tt+vA2H7FdVkIsbJuQAlOawUNBX7ILrqEh/BILSdlos+FQIGl4K/SDg9ug0dPDjMatUTGz88gYw9S8RQ10+9lj+h9BkbQ514QJaV0jT3cm7DRk8IbBEIEByC0dFmwBy3cuRkMimhViqalGy2xgByMbuelsdj5UnIi9saAYHVOH0cUGKBDBNk+rmrQVmg5CZHuLzMP3ri332Hkz6jaJi3P5AAB8WnCtAG2h/kKbJT2d4YBAai+AqZtCGMjMTZSecBpHaA7zpGWuDgV++eJDIMUXAbxorrqzEnjfCugqtGNmdnE9DCuX4OzVgE2BmXGM+PNeuDOhIcZwrZZq7Ir39T9SSONTrHgs5MR2iyBBuNRqTMUtVVlH0icEXhGG2uvCocEaKQvo8OuuEWxOthW1mP6uXn8BLWzol8z/iI+tTUIn6Bovxx/f8vGIdcT5YYxNI8Mq3GyHjNZpMyaFO1WxVmwEoy5+H6/DsX9rDqTxAkGmrL8S0GxZiuwC+Pl06KfklNfCcrDudc67KDXCRB7tvzf9UZn6bx1DLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkP1C4sMuWVzFza+A+cUub0D1tE/20tp8Pn8i/Or+WzEcY0ZGu/dGungfd6HSPTAmsLCNSaIYIK/zk6gEOjEN0/qhEf+o/BYWE7odYE5/0t2fj53mvHUnKkPRuXP7HKqbjHaUmBoU5DRy1EhCXHQQjbGfpBzZe1u3fQB36P4dfpKJKX1EudHoXp1qas/O0F0E7Fnd0CiC7YSodrN162jmqFZ8P5h0lJlTZKK2z5CHfsCoG8aG0wXj1FsaEBH9DppTU0egy1yADgn5P9HWlUdbvQEQEs902CMpzV+OwcepnNXOJYfS+ttPDotilrkvW6a4NvylUVaRnU4FP5R6CTkFxaIexoy9vi83dH4ws8h80oGXMQy0N7zn2oSKgs+qzecQo3a60xz84CPgkJp9j/qy9XY/sEZKMEDv+towIavDQfz+mHhuN4YDVo53tEPHRGLU24gEdV7zFxP4WXpCwGqs+sdmc2CHwK5LMvftMNpXixnajGn5AK6QNlUYpKzFjaPYumdHIZDtJsEqMS7P7y3DzloWdxK88ZqlL08GgO07o74SYQgPB4My58b/HD4JvmRO9sq2FgBrBNjJ46dOYy6lSmJo0XUzKGzNO7n/enWrjXsxs5RBP2E3F8Tg6aB55P1aJN8o4OYNgz3wL/U6jcCFjkpcOsH8Ch24zcLJ8XPel8P1yVf6jMhaZNK2gjdxenKz70+vtGD7zLIe5qe/JNLqGJOxpEdQ/3hpJGOKTKSp6e5RTTke0DVT7KaP7mdx+2Cnge+q3+RtKdVBxIzAhig2+Wgk6LA0xaEUVQbreedvYxVlp0deqmlk2muApBoiooVTqfHP/XORq/fB0VxvmUBZ1+DzZPJWMUpeDkc9K9HHVPJm785zHKJgXW8HHdDaNeqt1xU3d9o7M5KJYQGDmggKhn/Gc/NJpnPDMw+0S3Ysdx+turwrtr/yLv9OL37QUFF8ni9a6Ef4RhtNRsimDxSf8/MEypKo/fpeSZZyof/ZrQpVGUQGpAKq037V/PZYWeJxdWCiF6lJcD06XiYTs1rtKaqWR8odyghTU0u5QjhWvJZ6/hVdc8WHYE55W0wS8hix+twE040+pDkgClTmcgISYwaSkB1qth4FY7cJQiLlLODhNGy+Y78kHJOTiVaLF1d38+r1tUMTcB42gh95BKu2D7SIwrYqxBg2pARUijsAwkKqSDrVIP61YCztE3MvFTadA/sE2fr/KtfiPnCI7pl7ZOVdpEdQ/3hpJGOKTKSp6e5RTTke0DVT7KaP7mdx+2Cnge/fq45JP+hfcL+PHvh/ducfDXpBBRykJZ+fpezPJ/UDY2yS9fuZ6jj6Mtx4YDZll1Kon3PIAyKqIJdFYfe/5JT//7gmSaJJX1u8DFpelxnVIAYM+ycYkpHc/hVEH959uPoTZIvukiBgghcDSEO/KjitiL6Yx0P47JkgQuzdIXkyvlZcW/CmyKylaH0++kyq/83QEpwHJYFvOpypYdQyfMWR/RK4c+q62VUVNeX4KRgL8ADZJXK+CUA/HzAw3AZM2Ua1+7um7fJpSf5Jj5k3Z8jQe7P22gkdZaLlswYHsv0QfmzGda88+N4fGfXaYtyY29Vbazc1MqWQkC6rBO04TUHFhP44vwHmXI6XBhGTd36Fha6WS1xnOSpdHiurh5cVKWkuZWNSyQ00Ky1blNQIYQBkNoUyQQz8JNnm/QVIRr8lT3HtOcsdzYg/rKkWgwgw61Z94IBBuv9iJGD6e26Lz+D4n7Xar+HpHk4mNCDsH1idGX2zk1uePMTSMoZVWgsCRmm0YCKBwUKtLcgc/f3hw1PIxZKsD2JDiyZeOyQMWQQEUAk9GqKto+rZkeWIkNxXr6Jfoqd0gEWXCPkIx62Bh2sSxCH2lqm6r/TnJtG/nkiMMudsHUouAJdaDaGfa77SrL8JU/tH6ao/Oo/8wsfy6lOFxxLnXbMAZNMjjhH2hgrd2pCqrD+2kaw2/2R20MNYBfILw2EAHeHJ9CEZ3geeBsffKeK2+vzVDiA04ejvZ5Kn06pWC7tzfqF7Ro6WdKhf9QxjIWV8Ml+S6IsjVSUKvHjqW591nsIbpTRLWUH1Ek+bg/B+ZGhMJRSGaDo5Aq97GxjtxXumrK+1kWC0BvaBjT/FyAZuBeu+gPg+bFvC9Mb4lIKL4kN+xwfkv/wlAGTIj/IqFV2Qsw2PyBr+V6Ih4j/E24vtpg3c+/+gcoeevF7tFDUmbLQFlBsr17dUHkIXFBggsaEaKiN/Sf65d2IgKWouMQBYC79EorcuMF/U3MwtT2tJMvGW/GyQCaLTH2p/+JV2PJ+kSfPN0z/DWkXSblagcRaOZnTQpXidVWl8j6R4t4TgiRQUyXuqm60+z6zWNIKgZZokNWj/TiKkCWjRyri3zLeCYANYqWZDEP2ZN3qi8TI0D2LnQel6xTtwyAXsxM66HZ2k/3+63zCulDohr2JskrD4F4IId7FhY5XEG3WreEKtb9zM+fpnYESkupMY4JW9HBE8rk5tL12A93soz1+YISBtW/c2pMnn1Xq9C4EO7Rur1FHMGQtRDoilRXznbvtcBHGCZMCPNtMbyI3xNzkIpAmCpHt+Z1Rz2gdtXycEKj7CD3XM3aU4AlZXY3BTtuOnsqM7166qLgjgLb4LCcDblaKHtemKJc0O/R0iH6TLNjHQYpaCy/vQdyJWqi3PAboFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hOXj51VXxSEPpldkt/XoAtBILgFMs3NeAPK/QpXHmX1L7sUymwDakdntaS+tcL1RAtTaAcVyN7X2zNdJfIAF3BfbfQSUXIF5QsNKnub5C5qcwnzllhU5V32AgI7RQCJqGoKF0zadxLY3UirYcB6LMHtTsKPAeBs53lveeR1erQCCOZwXrfZrgVqgsPsvkg8uJsDnud7jsG/bDVVsof4JecRBXY3Yhr9R7Q9jQAjp+8TBABsVlUZXmHlzKywW1JlFvKSF+cfWSX+6gJxYMeuizPO+Tlcyhc9DiaUAc4BPR+EdOYHWWFsf1acVtCumGjr3VzMljELBzY0974PgxNjBTdtLgi0Iep0nj8VRGHKjyLANwDHLj0u8miOPnaYD3/HSxGK0o90iPWrQEJjsDdZeMrfFUTCol0kEkP4Jcy44mkpNgRrA6AhqkHxqFUDdOgeH6KJXp0PlUHQ76IUKZYBvRHoxoYiJlh121ZvaDyOwhh7MNDjXcfH0j8YRqd+8gCHoOb918QG7vUM7NK0jzPzdVIEeeCbHHBbWBR0ScH8zUQOjSGUm2m1S/n2hRpPO7gJdB9EWUv1xeJkyTjCSpAuf7XWyjL0FcOaVokKGB9K4pLu518RKPESqY1CIlgB5SBHt9H9/Uf92EC/RzC7/9FqM0++v32/e1nN7FYJgNF2a0GJ1tlnTx/4CQh9jFrTC1al+mycMJDBCvsedVODxhW3TE+0MucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/Oq070aXQCf2mbYdI2gIhoghvIi6UwjhBhrypHidW1yj9bxIdTeRZ4eKYS8cv9J82xAg6nTTXLknUzkO8w/FIMx4YbMMGBa4b080nVjZe6dKD6FjchjaprJtuHvQPKcSJd/AiwWkI/sIHR+aRYO9AkvZ5dKnbYrSZ4+BQx+qakArDwodp9KiYRtFEuXS98HDpqLreI1Xgm7NawEB5YTDEuJQn6Q69KZGwqNHQ2teK/PZOf86Eb7rV/cWPuZRlS5EXPr00C9go15JimwohBfXT0nj9btGcnHCixTN2OQPFmMW+k0gz5FeTw++UTnrGyI+0YXXsnHWh1mry4kkXvC4Kdw5nav0m9QL0jrMMnc2aCCPpXCJzV6AGxtDvq0CS7+q2WI7CdYehD9plUaoS0fL5LowfoI2bo+rsqiIv/ZJB7yUUJvIJClUtveV/s8ID82KSqV3FYWgPQTAoz9p9526f1JxRLmoWrR7LFIz8xdPur9oVQgTKSmDqLX3JMHcUpJcprweXuyYBKb6hFF6SYpKeUayc9Amdozssgk0aDPNxc/ta6xPgA+ZimGiqbjSuV6rkiebaY6aRX7HrWaiNe5FQM/MQLm1kO8KiSaVKH6/eibTgiLygRFxYIGnSrA+UIt0ddi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl2nuKOOxPq70VkR/w7psMw3kmOH/LeVC4rD4IHQbH/OQSxyTHossExJB8fYdy1F4MUf5RmsVNAFddnZz3oPixHJV7Yp0lkfLi/7nsaERwMoks1Z3vwQiUHkKWKy5T4plzN2LT3LekUekrEkNpJ2lc68Pgb4vXV9v6dGahvqx1NmXV64xhcfV58evGfxLNwGKwRL0tyEnMGAbbVdHz5fnkjKGCP9TZHojuqsWG7oNy2Gro0GVlhnBs2auITn/sYsFmWKPrbQ6Oa1D1WKflRIERgwCCOv5/ojs4XsvNOAEkKA6P2ZxZ9Ggm+yY1wcqKe/ldsLjvsR9c6ENQOjJPC/2iJtACgcioMdAx4dPazN42QtuzoJvHC8kBcheP+pv++mIEhkMUfxpLf/Cx4DNOCo9bTE7/Va/e5SHXSW1UrTjvkSfhr2BQPJdmKrUPEMScfG6R380jE61s/R4Vs/sjcZ4Lz+ZoNazlxJFCfOo3VOVsCRLloxJCVxzFumRpt+JB56ArnbLbq9ugiOA2O76HNdpKyaLQpkj5p4hKzdkARIuFkNb8MKRurD6p6+xLJM8F8PQQ1KWpHz80vm4A68Zh086EfBcw+DOKdnpRXBbdDGZNl2xGDDTYoWP0wStKjeMRCCKEwvshMgntP1CyG3sBcKasyO28HbiMXpyXc7Th+8bFsilYkCKr99+vhgMgJ1BHkJdcQDNT9JwgvrQ1BccCXZ9etpEQ4snqolHBHw89FZ55s9cS7d6E78m8zUivMc0pI0t7jSRIFJqJ1lTr3JxZGeAXvk2Zn3PxgNnureshvq/Vn5PM6ORaKAqffHLtUkLBP9o76wpTm9c4hCAawncgmxKuQQgWaj6OI7HMXxEdHcPoHF6NekxfSumlg+zzPIgKdeJHRrLKNve5NX7yDqKQRyyOqnCYK3lK0eFQwh+iYlazCXpNF9H77k3yOVLlU5XInMAzyrR/aU1x48sneQttFYUmJ95RYHh0jzJbMW9s4K+ezVHbSBUdWDO4SAV518b5xCA39s5LHCVQqHlYCs4+0/E7BCvnuOQ3kry20bzHGIvtR1dzJxoW9GE/a+H5iq6fzqsDACjwsylsPvT59x7OX634xkT2mQRTegosxYKMPC4D/xaxoYE1gltjmAcw7AnYNIon6cUS5qFq0eyxSM/MXT7q/aFUIEykpg6i19yTB3FKSXKZRdSVJsmZC+8enN6sqEz7dSyy2eyfYdCwbnWNOcxNrm4iYEctuvip/0o6+kYw5nmfuEPFkkUGgtB2/qlj48krG1ZpGVax+4UWtWcyBqbQn5C2GLGVmCvnk3zp2EKT7lQVV32qS7ubSp3pX1Bdeg/RspORpy5z/1djho86to5tdGDJKMa/xZp+5A9oUNuMs02VdUEC7hHE62Rs86/SIlhwrLTehcw+L9K9DZdo7es+1m15XlaPMQW9fVU08Ko1BRGrX2EfVLCsPNKrku/R5B/LnnPp7CV7XdAPUGmEVjIcO5wc9UxUsu6upIKSvDHHccaMqdgmrqU2oQsBWUh+YkqnToSYPgj/HmGqHMX/1wDW1T4sY1lJi6UrK6W9a5goiy0/tLvKADEF7qH2gIUMLfJ9AYcjq+ozZRHdlzynu50/8x0W9hoWTklY3kOGzfPoHUDnztwvc+IHVzduoXvbizzZJuMZtXViJ3Ya3T9Ed+mD/UxYcuiAGldnS71pTzVx+prabU4mDWczHoSLZHeN9T0McTpvzGhlObvusp+bFK1LCp5yBlPR0+1UlicCeNk721huEM4/avpg3CuWfVveYLepqqnwfZXa1e7u6Tzscch5MpXTIysaB+f3PodPIganM2kN+G/uh1fdun2PqQVbRx+LEdGxLnmuW1F54IUiC0CFoWdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl2+zdqvESup32wm19CxvrDKSHPE/nmCMPwHoSsj7YUTe3o7baNEjO3uvrlTAFzjJfv5zYyi6R2K40rXrhROsjQ0f6RpDQqonVU9o6sA8yuHDLLkR1mbE4F7khfRVNoRprdUew+3LKXioWaodKyX1eBGNGGP3oCUvZQxGfwWmaKO67+FXY3oCIKAoRElhGggiYSXJl9Tt9a197TILMWkDeMfEVPB2uo250Yfqjenj39Pdl2FCMtImDtlBpiiihYMls+zWSsTM+gFZAFQZ22kWOv27lUnAMfhFhV+a7duIGrWuq/zZ2P75KRLYkilO04sy8K70n7k1QFcUQ9bmH/nUsjbSPGmmeTWDkeO122anzcXJDgwFr10dR/CwcR9PaCYi8Ycoe9RJLsKNxXA5bLDkSjC9ovv0k/I7j4NYlS5ukRtVwvEPC2zNosoQgPu19LkbyLdZ747usrDvjYPeDnxc1tXlZwAdRVYTyu777SS8iXs9CugIjnZOY6FQWbR7DgqavVQou8P9Css/3aGiKqLm4AmH1FjnS2NL7md6kTI+IgiUIEgDHc12YNywbojXJ4tE/YkuEwbYZEZ9xmHcvTzhuHbbVSOZ5haPRuFd9lNa48/Sg/JWWvK3Yw0cGzwEhdKvjvAvHQ0nt5GewSF0pW4CHVJFiGTws0EGq3CMf3Xm05yh76TSDPkV5PD75ROesbIj7RhdeycdaHWavLiSRe8Lgp33B+Cc6L1qU2bVd2zGvjtly6rWP9iBHPdsDsFruulztxBFUXqaSjjifaCRezHtZrSlH8cHuAJmN5+pnXGbn5GKeMPp1Uen9cKOLarI7YR4bSBiFo4J/Vt6n3i46Q0BSc1t5LwKFELe5EwIkuBmTgBwGJdBFnbAYnfsWF41uXwLCprJQHkJEkbWTaBgFgnTUZZbjKf8tF/JLzZwo4u/t9BEjc+pQA+vtAzjYOomnJ2t+uqvBEoqcG5HaIavCksGtvkPYgBDGaw/zcAktpTA96z1iF98UqcktKQwGjma2NCG9Gr2UrBItqmP/kt6W9mnrkUNpiF6qLUE/ju9qxbd/iwN9+Ni7HEiG4Nxeu50Rf4MxQfHRR+VsukoKMVhW9HUUV3e5DhN5Un4u5vxLiHPB93G8iChuMWiNi5ZPwGiNKE0e3Uyv6/0Jz2rh1gNt8Tygdai/5Ujr77/aH68vokjvXMg1Ci7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQfZV7pN09dqYFpIBW3k6w8GAJmdrWCbhy+FTH/aY4uDB2ecJzMWhhxUezavxu9e6J9htBGOZvPEKBX4PBNT08tzFRTSZd4S3aQ8lxCBKNJzwTEHkUCYxi6WN5naOPQt0PgJURtcVoHcycn6mR067nXQz6CD0ZvCo7138NfvSxvel/poMpIZNKbJeAVJQmpjlwCS4Zexobjz24j09MEcPHOqmQA5k8cxxs+HPIKm2wX2FLMCWLy/56/ysPhdQf73pk3rd9VugEQOpeTPoMMLqY4+8I7Jl/o6jI2BCvT/yEGbKyTOwl8hn25l20I7+5pPA8kYMeRpz/YpUEa/rvWi2JT4nuaDzMEdic2olPMGMzJU74aJVJLBnIbzd0cLEZXcneDrK8eoFM3L5xKlwQMedyMp9xIT5t20yWfmcBjpVRHQcohoNDIkiPVW7uKN4dOveGCtx2l3zfh58rb5Hk2G7qd6KpyRV9XQY3Bh5K+/h4GraUb3fMWYqWX5aj1bBGqmzIR6Rkesrcp6pXBOkYcX3lLrC+Kk42975vvvoxI8/LFp2hPLQAl/aIWm9ddlN9kiBHJS90RBel+4kmGlIfp3Y1TCdXU7zp9rCDCaV9oDKgSTQWu5I8O772wu5MJ1+0FQgQmkOLvkeffu4/yo17ESHfUll8T2+xRTHMAwaUK6fLgjGlHemJ19cHOXUgli+GE2tYvGDCKYsZwsCorCIz8G/liB/qfT+OwT9h884hf0W9w/I+kghYWjU9Jrr9XCW+gaut/9Q6734OxSqDGKBrwi46WKXMLjZtw4uQ2Jofv085XuWZSdHtR9PgWz87WGqB4a3W2BQKOYYenJEGncD//3QIBMOFhcdSZUNJXBqEtlbXiWGcWlKSb3H51KRiN8zEytZ9LkNW0A+MRFQXYjqzu5T+Yk42TNmz24FuoJmyJ83UOh899bxRkh5wr95bZXUGytSlm/IvMWwCNrvEqJ1sGxlY0xTRtUX4nCrxBLvnSyDOSV9FcHpaTnTGdWB5FfOlWtiN38GXVRADAJCq6Y+h6udrXZjkVGYDu97DYpY33OqiEnbe8jVBVHX4aOP/t3fJAv0tO+FkhSISR6qBgpePTRlCI2UFr0AcC+82r+WGgtcUbw5FjNeqlKnmZv1WWaLobva0I0zjxZdVeBUJgV1f2fu2q+G61Bq7yCKL2lfrffqqymjFNnfHO/lNxBauQ0PBPp+crOAYwpNvgNH93mKJ9SfjxpXKGOQW8oo2ny4/H48YjGD/8iTEzPI5DQC1utuxtXD6fw3vR1B30o8cGmf6w0VDnPy2wBZzjUXlK7Nd9p3n38D8VGp/aTlq/f9IWb9pR1qK5ZjNZXBl7TgE876dLFsm8UqV+qmXQxHbixBBgDgvSIxWyNCUHnKzdR3iENmHHZp1NdU89p8dSEZ4hSHYjxOLc1t4I1Dm3kxLdMnZskj6SNESR/37Sry5pax4CbARnl1befkZg3QR1RpWQszbPTHifkq8U+ybQR+CBF+QhM+IZp9MLH+YlyE+Gtf/BIY4Ed9Yz5iua9CzEHCx80RAd5PmPJR1Lo82T8OQiZ32X7ET11XufwZgmbmGiFe9wXkYp41vbGLD7EAnd23BjXgo+KAQkblwtbp7+c2wSXAe3qXpbYvy55D+Ir6KTKlo/1a+a65sxZJWrkFzPfqAo6D9GsOapzeIVmXKNtappnnMZXsvgkEC1lNT93XaA05Jw5xLIjLjvl+1MK1dTxuDL+GUwa6qbIp244n44rFwadcbK4s6j1wYKUWtatvtXErPDAZCdZJEsc7alMmyaN7DtoX5h6GPelu0XJLb2AwcJpwqqo24rfU98T0AQzPv9CKcWKB4Lo0av0PWx5IkMBXBo5xP0S96hsPEQsaJ4aWEiGbNcMt0fQeJUXQFO0Wzp0pVV2GWSExRAiEs7klic9z9aqAJ0IgvqIWpBuTstH1qKIdR3TDAnvj+fuxnzPwRXz2aZqfLT6jIYr/ym9IkMrwPY/cWdmn94VCi7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQzCBDaqigGLI38cJm+iK6l9dBhKKMUjqHIFaaBLO8d+/HV85U29QA/JIsrV5vtg1cD8y192Oar7Qmi4Q1+MbisecG2vHbpsTeJawAji/mvAzLKyiZQXloYf7zAYd6kjEAdi09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl23kuwxOnGxjyW0GxSUZTL97WC030z+zSc2R7IIKKbn044V0v50QB4c6gnNQoA6Qt9/dmnfYy2M2YiCKTJ7to5/vfelUTCTcX3Ac6vzvZu4LStkEdl8862yks3GIhHiXDdy6sHdoZWwQtBiskKbSelf2lVLmH3rs6T+eYynIfv3UprPvEuxHG68/baxcdQeFuW48O4aICcCWkdV6Z031Ji3cVV7J/dX6ePpuhJ/ilCNHvsuqIEglTF1QQfZQ594fGeNwgfIjKx30Vkd96KsWrrgBuoTHtHVZ6AJy04Y+cvfk0/yGNIlKaFQBmWuG1HHeD2iSsJ0GiYDZhkF+GaTwNhPu9GvOS0ZQ/VnAwGYv/qT748p9x48y55JipvysPmRkIOUV7/rvkRO7FGFIXP890vwOBUjWVvQklADMwPNnsoox4THdCQAnAOWxrKQQL655npp8mGcut2Av/xra6pBQ9up//QqNMCZ4O52hs2xc6ecXnSXzERz/+mUBlSwIDStZLp//+1ycFpf3o/PK3PkW8vhvyX3ohbCCiXc82j/XRxkKgmqYRdEJdfrh7nOIQwYpoK9PK+7f2/TrBZ9gxR8fAU6YQJffsfz4G1m0EKE/NaDgLBvXxug4C7w+jMZ0L5vYv1h6S34qpZhGnJCgfso+L3SPgyXy2ECc5ftKLLLsu4E+eE9MX1ct/hE3Az345CzTD3U3Sd6Wq/FZQ/ZBbAPFLhhAD7w7ZJJyDT4SS5Dds9wlKosejTvGcAFqddA/Z3lve15if6eZUJycx0OYBTTUfyFh8A/2IkWtb1Jw3ADEZ+4YR2ZY6pE4h6F0TeFIjX9qTloTXxbOfU5w1v6m911TWWbDvL3XjdeCwOqipHzwinCB/yLL+ULnQDW37l+6kL+Yq5elf0I35Mi7EkHsAMlvWiPxq5qI5lruF9mI1NPrAXKXMJHhVz1P+qnRanKaza1wiRgItD0oYp3ty+QiI4I9vNbaejLKTzVNISS88JrIPy6q8PCW0ze8NzM6aZiuSGIXqpFlQSW2yMnTLMhV7Zun8zHwDaxfWOMUjstqyfEOxYM3CrVW9BqvnMlyPTf16/f2I1r1NHgTiNMFdhRB4psg+E7FiEcx+sugljtnYtedNWVy23FaRgEkOw5OyRqWKEF8PIy8No4H9O/fVATK+Yd6ExStqQq+WyjcAYNGla9JxWikR1/xvK+11zRuhE5jnv+c9z2X6u85DuXT+fp12WfbRZS8qtYsLAk6salb+Q+tqSXPVPlFXcfPDweupXDeQzeBdFiJH7LKqFepqMde6KsllvGcj0ykvPB9/Bml8Oig/88Xz5iUMpfuZk/wZFAH/j7t++5JKL0341XBm/GHacPNBafOzxzoWCWZTB+5/HRxrXRtkoYQmazYibDRkYGRwboFAB7GzGka1zX1BqUnclpDL5bsGWcpMPZPbF5iVOgmemeqT/e6d6QzjmbzCwNpmM9xKkd/184sO3UHyN1CRcaHmd0tU3875GNVoYnMcIfb4YBwQmdUGeGNqG00R6/Tn47atbtZr/3pY966aDL0Ej+SAA8jv3p/HQsWCRakA2QM+PNUShDguKb56TuJvIYcn4Q8oLW6ZfX1OwyOSHbVZQusbOKIj8J6niUD50XT8cL7UKsPhMxPfFijBIOOBP/iQes4o28fmLKFxpBiUPAl+G7FLyfNFDVz0dt+SnpjEJmpHKKMzrBOR5iIWznbPd6wpNXfl7lnnlPiGLrQr+6GuWxKAbGmzGda88+N4fGfXaYtyY29Vbazc1MqWQkC6rBO04TUHEhaaPrFipvfyW+8ca705RT/1lHoVXFBavcYdccBHCpsXqdw5vXOqRb6b2nxik8pMIdI7LH1bJbWan9Z+NNnyLwdP0dOHWuHLEZjLUrb5MrC55FVxW/Iod5Eq6kMwHvefu9Y9LU9nv5HGtchGiaivhnBXC7ixcx9cvn3X285++5PndrN6XXCDapx1njeRC5M8nQDRglbEoJnW8gfFbATndvIkJVOBrCAgI/+dHynF4+dnn4bvBuqZr1gMh45l9crwL3PZpOM9sNxSH9/C6EobobsIVMHrMDcRYi5p1am9GClZZOlR7WnCfTMC+ThOYLL0yyKqCMPBSaxMwHPFy2s2tbgXMWimVeDLepb4h68fZUmpH7EwQL2SPEmW285OmNPmHhmu0+WuvTW+XpV/oT5v+nIY9Ha49wPHeDc7hpZurq3TtPcvqHNcCelzz4J13/3MlUG4XBD8Fw+FqGiEEyt9SNgZeUwx0hcvCmyXppteF76/+VUega0zAvgcgzIcZt3yzh78IJiXuTFQc6hdzvXEDgY3PzvSAMV19EUrMWS1on05kHIWnS9Drww+iv46hoNqj/dXrCCBOt0SftSJlKSlmz9i1kJHrNO3O5iWrNnCitPWhRBFc6BH6L6CoPsG0Q/uCaco2pQoLAXdNCdjQdrvOPbjCXyccm+nCd+xpoiPbQzgAoHIqDHQMeHT2szeNkLbs6CbxwvJAXIXj/qb/vpiBI3fuYWoU8o9pK+u5QkM9SgFy8hT54ywdXaILB8zFhDB16NtYPMlHkiNCE6qejsrlA/9uZ2vmtEwaftccz8jIO7G1sgiQ1HkrXsIB29MpKSpMJEl9M3u/A11qfvrqYF64oUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlD8nEXEjr12u/tM+VC5y+YwWGRxG7XBzgOfISX0CxGv17jPru6G36sWWy5cN/LWeHch453ulCqApf3/KcXLQJFP6+8hi7Tx93iFFUNm74+tyKHI9SpBIr0bTsJz/VaUFEOU8w5fDQ/gjgC17wVfleFJ43sf/mcLFcIPVRF7McEgS8abDFKzSa9EICv5Jb3KnjvwRN7F63Dnd1PGm1tbmvahLOT8id4/A3iBzImbkCLNFr37DjSNr2EnKuh2xDp/kld0MKcIZo2mm1P/Z3F4AMlfs5CWIPy9zNUm++pQEEeaVInUP6mVKc8CAqmsqpSB2Z2+BsACycX540iVVj/kvdKfN4aNCL4TNhb9FuswGc7r8esSt1N6C6oaGDIINV7dHpuJ5TsnwoV5x0eA64EJ3fGvHk7UTlAlo+JQC/+YFitA0/biUZxINjqMhqXqaCy2qeGLF+3uRk7itOEfSOuRad/p93rFNS3a6IhhOmmimhX3S01OVXP5Tm70LNPg/APgE8V0LCwTylkGrETql+TQKIJOygI01oLO07RzgD3p6e4+yCf8HgJjsZERVt/3ctiXEcjbwzJynLk3nnUC/rlezh3gvjGgD+EjzgEqcLyZBa8vnSTdOb6MG5auqcxBOT5qomXhjiw/c3wJD+e+cu2jInAcPRKlQUMGh48rrULbd+QmHyU/L8Bnr2Vm6V3QkXYSjKAudthXog0hXTVr+JdpV0StgXMWimVeDLepb4h68fZUmpH7EwQL2SPEmW285OmNPmF7WPdthAaLcN1Vmn72+hUgGx4y2f2xH0q0gU8HJ8s7aYGry//FpVm3fzz/HwVs47/KX/W7cO0kiDnviFcM6X+SCDM0/BmDk9W1/vwaWkyhdjCzhoufRda4ejO9EGl2HqXkw+SK4fZ87Jnks9jOPceQN000Y/vZ18Rp9QADtqHqexAxRThJvIJc1xX2i2xT2fp4QPOuZp99TwYuVwrl/emDjXEgSvRZJmzZ6ehmvMyfHKVsbZ80CngvrAZ6OTocVHdfs1SOebr+106FgYy5WBVxJ2FrXkYo4QA1ziGTxOAes3urWvNIcMFbhojga4Rt9jLodS/aQeRA4zQxSiJVFCWy8esppCJD6XAnfs+COZSl2HSngMezTTVr0u/ldDMyKjkOTcYQdUQ+BfOSOvR8nH0jZF8Z184C4pqOzD0c/3YbdIFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hZn5wPk71ksQ6uwwDu6ByX+3KeEF5YR0JMxkNJipn1fxYg3ahiz5RTmeJnuYMZMP4IuICrIM67/VD33awxzgVeQBR6ShRSY9lxiiEjH/vprbXaMpGwIKhDSWXukiPme7CG/KpeI8BydGsDvbISSyGwE46QdC1WeY6mOs0i0msmpogT16z2xUmzDPAWGeGc/6Yl6RrzzjwcDj68nAeTCW1a6yTMkdGWh5eO7FFNQlG+ibzhm3TgiLIkIf/KEDKTd0gPb+F45bs+KbBzdmumLpHaJwjAYEv8Vc5S5HG5GaFsLmZHTwirutuYqNdSlUiTROQ2F1PEvvNjCchmHgSFM4d4ws+F1iizI/YIMC6IgLM4NRC+XyfpIE2BaLqyzbc50mcpk0yw23jFtki4V37/vbA24rycs9Q1IsgwmF92HEKrW6KHvlVXltKOg1p3OGviV4guvjXLsvZb4mgQkzNcyHHLp+5WeNZvSdRPgCabJUljrbwHQZ9rsW4UM6mbV2Vwq5xniOywVmpj8yTK30sbe/xUpNLPLxRR0biKn2tkj+pJiY64+2VVTdsUSnp/l6fB4XWS5kHO0Zh4/OKSLx20AUZhx0zY2TC7gBAwBpmmULsY3Y/dm6MjUjuzvjYfJw3PACzhLAhbAcBToy4WsEowZ/5ecgUbibEPMgP3AAdPjeXmk1laZc6wuG6qHBNE8dpM5PHSJW/o3VY8U8fFA8tyslgf0Qx39Lg5J0zbG/QP+RqscoulrW2t1HL+VcLJxlYEJzhpXDBg71lLCc8mdJgEmq2Ld9ZvlZnVlZpsqmQGsV1gfeLKog1J+k8WFl79sf8BDDZpm0QqajYUy85LZtq2C7vSRMeZEM/bMFNUy+HKjkD23mMjJ4EtyimxEVNxwfe7x2e+RLK8D73joxmK8/Gc8IeyaFxBErAKD2rlsZLWe+x4woKCXm6/iSP3CxokHfpbXOMkzvonFEc6/2Xm9LagyENhfSTUWO1KwoOJvXQM5M7NeSV9d6cJy+nv5dt4TtLJ25rfaIs6pTG2LU4lc2qwSdj/sJQrd2ca//G6GVIwkH012LR5N4205dLz7fB4fGIydCJRO9G9W+H6Fd9BTxr2BfEXheeeHUCdB1MAQc4L0pGAhYgDw2S43iDNn2y9jlfNGm4o7ccivbRmbT0dZ6exo9APklSYvYrR06P4R1w589/gD/LIu6oM4BwW9eRtTj5SHWrTkY7mLji7FBJFrr24+MqhN9xNRfXuUO+5zGL6eD28RRrvM//aZwN5mTNo0OIkM7Wex4+rceQXVTmQ6x9J3I2H9PGiuNMN3QPttX41Lmnlwf0gfCJx6AbFFpBIkr2BZNcKCFh7ZTbgx/OfYDUv/cOv4Dwg2u/2LVlgM4NOWBrS2ewwgcg6VOLudrAkqTCa/4HL8mYsSd4hRtNOX4avggSgTpUudsxRC95z/ObosJ1/77m0vXj9i8wsEPZgnfx8SyuQ07loOTnhEQVd2hL3X3pcTWUzcIeXDacoDqi0bIKEXSCdAVBOKsKSq0Do4zatAqbeXarCttPWOEQWjDyKwxCysVDd4b58xe62zX3WXk0EG+pFTZC8R/OerF3exuQ4oNvlau+3fnhdkTAA6jSMHb4WMjLD/vpCgM4zBbboDPCScpviEE6T3P7Y98VB3zcQgUqIOS29dSavW043+9/P3U76U4Z8yBhcJf5TuSfwIPtajCYHodpe71zuaFt19PyCvJl236alrkdMTZtz34e3D4LmLeQ+ZC/wPh3AKg8Ixrih3uqmW1ji9cqwHkFaxWvkUqDmbiWiB8aJt28XpeZrVgczgrbbokQ+WjvYYB7FCnhFKVw4ReBsgn/dWNUwv6Ra5uUJCwUbP95ImizNshj968bcSjrLgt6Q1CIQflSjHRxYU1vN2hi9pkYYAyr4ieckOW2ZTAPf2g+xumLaM6pApLP/Zi4vMTScqQqulVGwbCKY76dRLmRYNAgOmjXkSSUC1tbA0Vi7zCxK7ILPc0/uLSl4J+ATJP+G07H1kYX7KuQYfDxDTrAAJRSRCOMJWEVGuDtlmWIc+Dkf4pBnsS17Xf5G58TMr7p600Ia9zHQ2JP4QYyOcrqMMg4ook2uTqSbSet59x8CQU1j1pdqWARKXPm/bxQ3wHbWsgHrt498VlWtgZASaTao7djD2JM9ZQtusbeyMIQqMtQfdGwMQ6sn3lcDRBz2twP7aXGZyl6LKT18pLcibsha8oszA15THnDU4YgwHt4bzvTMeCPqJyibC1Jbn6vZEEEdEJEACLDdN0SlUKhJYqvEw6ZDuFes/b7SmKTpxudpcy07PE+osevyAoHuk5CSwtTQhBLOeZ1Y7GiTz7B1DUnupu3MKzQP5xxulBYiDbI1s1HXhh5pCUoWt7FUkqTuFmMJSY3wtruJE4Nqy6F/SAmGxdSLR9M1N6RtA4TvpNIM+RXk8PvlE56xsiPtGF17Jx1odZq8uJJF7wuCne1u5g8n2SBGZ/gy6E8UDiAOJBMMDDC9vLqrJzUTJVNigVsJWIIcvmrP26iSXqD7YtMeDNvPNqglXyA5VulNXrE0x45tsjXPMlGcApwKZHpkbzDotxfNqS+Q7B9HjDCUiS5UUKrNYoL1CJRMCk53tDow7oMNJEgOC+cIbEY+Mi39/8Ft7CVdDSRzWCNc1BQdgHSBgAs47DDEuREIEumCRKhNnBtSLt1Qaqz3u/pRezq+k0bIzjVlpNPkJgywRcVaY/Q6T7zVjqzqB3MHhjzq5ZAfZxSNmyCgOEqXpnxnop5oGg6+W+CuN+SjBJs/Z4EkRI9nhgzd2sOJXmwuL/IYjRNQoyOXt8euMTKjFy1KJ/t+YpiFO22bi44jvc2GfXBoH4Zvtlk7w9K6JXutHRSFDp5FtmYI3DnaV6UWHRGDPDp9HXzkbqkx/FXu9746KXBCIhLXCD80TMcC4+vC08NQ2bI4yr2QUZOuPuKx0zy1YOyQ4Aokm+a9FiBeJcIjJOisPGcUS5qFq0eyxSM/MXT7q/aFUIEykpg6i19yTB3FKSXKarzozKfhVZ2WAF6y4yg824cvuDmNoIXrDk3kjdXyMWQizNZvDlxWXobpMynmqo9umMZ4Lkx/ORD3xTvKo28Bjx4LeT9vbtbznBzVItwZ5KB9SBakNNjJA9h9Xt1mwtSc0b3KpB2r4InokOh81B7mkrH5sfZnn9SbgQf2KUWgQxPWY/YkFDXskmIjJeeTUPdB77rpd+MFxHvsgVO4XE5M72qPBFo4PW0RVHEdOVajbiTh5P0CoGtbP8Zo4jxHeZJZu/VYfep3COoaMh1BOf4RgElVzmv4i+AJjuB/GeNytW8iByFXmTooEil+a21Bu4330Nt9OwDrqeANwvlD7vAppucUS5qFq0eyxSM/MXT7q/aFUIEykpg6i19yTB3FKSXKYA507AOHrasqYbCHQ977T+gvlRZUUOBDl0SYPDy4SgWbh+4Njlo8VfjhpPhmFyfH9biGQLQjNRYc1Xcl8WkQRaLERSqEkZXT/uZMVOq2U1FjUd5VxcUx4esvsyIWiC45FgEyYJ/1nrPPjCjgHzCm/fqQYTtfw+n1jegf3D61Q+ZFfwM2fkWJGkRLefdKGACJK7DPEOy7cdjrNiZHnE6rwe8HfFLBZqC11iSJHkjrVqeTPxyjdve2ExOCC0EpSAP1UaaYO+QSFrd4Ol1ysFcFwT3dMPF/b7S7aHMtA3YLqRzRvkwLSvzEYIU1SbDIHSpgTkjkZXoUQN6oJSWe/dTKgJFT9NIthbD1EG7aUvVGxSHfvR1OXTNdDZ1NK8kzj3PN+MXYutQgosYPGRAww6lHZaeiu3MFUvH8jZ7oy49jTgtj7qc24+H2Wm64wdjDQLpvxoQSVb8tA4awUH0tbKZEdhpjDcGGribU7cVeibi/dBEgg5hPq8qxqz8PIhTs0lPwcgRJ5VmgQTd94Fq+wnPsGhqQdgkqyKlyuUCpHYTdHeFtSs5/oY5n7VMX94LB4CCrW3jSElMvJmFnh4W1UZcE9CE4ZL4r1Bt+7eCRxSVEakWPFnkhbf1HPkzoVzGFiNKrMP2BMH3CUyqO20JE7uC+A1S9obHPOvNjnstuhyijOdhvr8qpEM02jMSsaISJdyvlnHf3jGp96ZGVkFnMkVs6Ihbf8YMLKnSzS8gt78W5dGX3r1Y56E7ZsEBA9xDe6Af3oFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hoFTUUFnsBRViH7qbMyHGJW+8nqUBLw1lwnXo3Xaj+uHoumsQMjq7ZMMa1t4Z6z+s5Rnudir/yLV2iKA5ypvub1cCjZobZQrqJZSDdKfNaPgJs7pdx/PcIFcSKGyctFZHsHM42XwT/qc0nQDH+wo7NQ06Ar5vy1a4JgSqPpwztuSxJjQ9ITfWz3PVcPPaLsCNQCvFfVKAkG6hxrOY0n4AmjHErKgo+I/xAOHGwyV+1/rSREj6d2BBfz4KlCVZY1W63WyyXsDZFvHvP+fx9PLstmmONhH2d7aya+Kx7sIjeKpDLnDm0HnjSsBniycbw/heHbxsoYUKaOgs0JvIkMzkPxuU0oDBkRaPDQg6fsmoRhpuItyV7W9Umdzm0gJdVuffQtc9b39o/x9at6BaWsyRJi2sJWuiFshFkW3UfJOwRLXHwIyjlYlZqr8ZRVnrHs61nmvtkgbDq0momBpyJq5n1+kGgwz0XKxoE+D5FcriGEn1wbFoQ5X732Y9wRP5Tw/oVptkwT2MmMuSTUOouaPRE58LyEjiI+WwQTuOBy5iQiy/kZiFyg3pRE1+sSXNINQxqOZLMOYoxTPN4XXJvF4ryACyN2ZJm3VXGdZO/6Y/EgJGuEtbNLVipDvjdsh6+K/HTOye4jupwpaCcyq4vOsbdIdtz2/AAGikzaMU15H08D42jrLOtlgHnDT9tiQQRLlYStFGpnIukexCbrs7797BxDNOfxDl6B/uiKkyn3u47hn7eFsUQ28Nr5v88uK4IR0QG5U4Y5QYElPyx42WNViGkOMzyK5SIhm1tMxkOGakSFDTNdGF2y41ewG6+bGOXhpr5AKU5P7F5lN7p14wOFA+0dFjbldwb5Anh1ryv25rrYw5eNH6iTcziombkY/6CRbcHRNyNQdHiQypSWZ8dRlAGiyJQ0BeI+y6HtasVDrnXEuzwpfi2ObGpeZ7VLgysYEP1Ovt3aZCSJoani/0tQ82+ixNvuj0fS8ykzBSC17fGe8lDh8eXuTRVK3cVWz8XmZDst8i33NO5vqCVAFpGy6wXBg6ardi5K97bOscM6IgHjyie/XYq2dWm2OeyId6Iek7Jiy9t68Cb3B8DqR2ZPulMiQG/+RM8Fr1HzFGyHKKLhtZ1EqQTP5s18fLxkoe+Kw+BVRYhL378SVpO+MkYtU9Xf72xz+/CP9Y22fF07hC2rOgmNv4KwT7TgqOuEXYOOzUt28fRG5KJVb00A3uGmtLDq9pNCJ8OZON8o3751XuLbLLnRNE/JF4Zld58lWMPiQyo7ccivbRmbT0dZ6exo9APklSYvYrR06P4R1w589/gD+XfBXs70x80tDA+5Po/1sMDvPgEuMIr+zZtHTj9zy2M0mP9IxFDxXSuPeavmATydTD88EBZ7PPizWEFnGc4YhL9IhYhetKKZWyR+tIJ+4IvhC58hfOPcvN9jbFnYIpE8iW8XXf58h3ipFEFJOA+0ctilRPPROX9RNPK9YO5c2XFj09lUr7Z6Y2JJaGWsOsOvWfzfrtiKuzwWxptkNqtCiY5anKJW8CWr78UcQW0YTZwVtYL8F9JCkTL15QYmKK/ryMjnlttbz4rB1sihK+8lDYXCkry2KKXcBsnxVVpY+fgtADHWiKnDndBtyq7zUm0VeyWSU3HPLVtOpt0iMu1WWQUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlB3V626CZXD6aEOrhKrLwmXT5mTD2NQ2HqoavOx0vjb4BVe0P4m40RdigQqZB/Jxt8NZCgjg9Y9NlR4cURyN1A4mMRZTNnQ4s8J5oBWuuS4dbfIE2s/yEDMhOLZfmkk53GiDCvVEM4J8xM+nYQTv2lCcPVJvDvzJBJFNlkwCmXOWXMRHdqhQlhQ2yjyJBRzhS5Q8a9H2f0rUDW5yHstB5GqX5jJNkoOoCWsC5m4Z88I7hK18hEeXS5F1imLxfocwdo3MgNDi3wNzVC9fgwdRyjsJWdMZy/F6qnY4yHp6TRtvIAjKgjLpzNSVhADzMI6MG0Q4f1Ju0FHX2k+2xry3fZCciT1bFNCbIjs6CQc4ztJj2NnoxiPBSojKezTDo3ERt9mJ+G0slu7yAifItVaDYC79yBIC0q9EO6dXgXTyeU3xyZrjdPRnx5/tg/51XXRLNBOqTLIKL03JOP9HNj3tFIYTNKrqICFQCPGwy7QjvjYBxFAGOkmDbxVWeivdFdIvo3qlqMKWxoCRRxzQbRkdcCk0jZ6SekHuHkDB8ePuQ8WnUMucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/NP/cVjYoCYLLNj7w4wyEI1MFA+gl36jRSx/1RxumW/O2s0svgm87/ZzdbQBD3N2aJDAkAw1x8rGtRS7yFThh1C76fEfV4cqcwdOmM0VTF3/ZxxDkaWPpjSGu3Nn2wYXVL8CWPqUcn6MRL5hJlYacy330vB9YNWy85zvBOnDXA2HWOWyUieyXP67qG41NolcAk4zr9jUX3/UBWk5hMVgZS1Nob61iJxj2DKbvemmSpsIFGl6dhbZZS4NFw/29jAX7PXQHoaaU1VGuv8oUxfZLipmlAADxfz0TbGlsVcwyb32AkV95mZrkCN4kD6Vmr5HXQetxriWSfN2JSV82LydrvgyBjOeaTbeis48W1MQtX2Lp3mihkb0kv1xbo53dC3PW/wILLpLGX8hzT1u5Hn4JJ7/abOcA8IgaOtTScgg83dGdjVhFPZyTDMCqlcJsEGZGBZCaDDoqkj3IAt+5wqrS0PI0o42bZ7MK59npVGBvCOtx1uADglyfQulQZvEoXPrjIINDJmAHERH//2dTUfLHFLRMB75SB5CdZoF2lNvWIX/Iw4pzMpU776vWAGf7LqY77m7OK7cdAL/IwVGq6QShzE37DDswhgZJ7fDqbb5Uc+L42lUCCziW8GpPNCPB5+08Fh4JN8vcITS0KjTj1NNPqVwFw4Vy9lMMf8uV+u8QKkHL9YfkLKrUNK4ZtJWNpTiCV772mfXFHDMT4QGsIXtDt997HxUTGlhFtxQrtyHyajcIYzc4rL042Lyp4oBFGKzyy19hC+9nAD5P2exHK5hAw62N3KlpC1MLZ6S0px14B+ewlqRgSUa+XVNjWL4kQ59BKZLjlg9HoF67uMr7R+bVXs9jCyT/M08z1CWHSLi4QaMMhe9Vf3PKXxMDnlmKvbVWxzxjU0UpGtAeqfzhM7U/GCFhgXDFjXMMflCERLVdQTB6RwLeKL5CaN8ezOJ954HJ5Ey3imZPceHkVau7W7Mh7mZADm6SbV9V/Ux+QzQ5V3Mhaqk6KoiwharJtwdIzAKdaRHUP94aSRjikykqenuUU05HtA1U+ymj+5ncftgp4HvD6pZfOBLVBAeNoE5oBdu7OyP9G09ost4Q4NdvTfJ64WWft8GHwynJahHUaNhuNgx6yea/huD8xM2u+/zbym3T/+gBedIyv6xJIxHcMfhAzL2nKbSWYCMja7QpI9UAwpWMa5uDfwXVyo//KqqG16YdJhSjcBAKaPgsVQ3Z8SjtyW1X+AmPGxGud0gBinti9JB4qCmbEcsGr6go2PQX3kyDwfYCWT9S5NfOczgZ7i6rjxABTJ05KtURMJnJD7QOz6tYWDKLyGWPF+baw6vNW/hDraBCBaq2VWMhOIO5qLH/X3Yax4nARwGDU0n49Clk4rsMcVC12CFxgULn19eBsLv1WjVYRndpFYmnshwhTSS9nZqDOkO6Jqo6Co2+4EQyGaCBcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YVqS0e8B6/fiffAVNmo1UNV+Dy0P5r1Uk964YFiLOyGwm4EQMGHN4qRrbIoxufZbttHOmkqb4bkG6OjdYlFE/lMDUPoImSG6MUnlk5VPxdt6gAnsEQsUue2Clfz8UGc0Rz4y4PAD6dfWtrHGJ8CovNWK+m/6Zy9BfpFnyibfFAJLo7ccivbRmbT0dZ6exo9APklSYvYrR06P4R1w589/gD/tP2uGc5dGbs0f41hUTPwUq4CeNue/17PoIRcrXxtWTmMaaoSN2GIIeV/9vclN1HaeKp2RWuWEuwhiHr8QmthzXEZQj57DV6qM9DY6VtImI+D/NVySqGDqozC48lU1GO0CaSifPZwdQvlgTHYHn99YYBwChNcS66a6lWcz+q+5CsMKRurD6p6+xLJM8F8PQQ1KWpHz80vm4A68Zh086EfB7/YDKvIl3VT6lwny91a0UeDIDpziiGts6CdqcFBOHS/8pecPWgXA5x7OA5k47sNPmfBD5NZO/0edNgLOYxNFPczHWPeem4pQ206g4TpWJPxgm3HzSwtJQTi8S+WvpAf77iO8k6wrF7pVEKGOK2u170MbkqGQU34e0vsMXgR+U35yHplPhktH4RZBfafiLs9kFd8kjebq3G/+CknFtJ/YtMOOI9LEPEEL3O/7Ox73beH5YM3XTnQUSTStChalDwgXyVoLtXrE/ZCCzQyM/3XdmDR2kqG4h/tW4m4XnAwnWvmOp80yAJNOHmi9+0P3Ekts8Ze5ko4dBntzoMYcfmhP9qcYUpfwVbGodH2VT+ygCyKb6VctVS5knBBsFsMu4kkp0momY3nMaM2ub111uXrC4XzlHeKtRLCzM8Gpsmfdx2rGq/XOgg47SJnbTUJm2dedfrUUvCve66LIHb9AZjQguPkuDPJdBfNSelPw6t+hSqKWa/l16mSNnraRGH56ZLMYghjI6VsMVU9h4yFOTbqa8QTFyfRWQ4tgcids1j4oZ9d6GdHu+KIG1qc/qRWvgK9D8qrO4u8JQZF13B1Yh0a7LWLHBfr10tTlI9uBax1my2D0Y9M4piFcEZwQVNgw+LFD/+dArCMDT5cXCVr6eCn3F2kdxeaO24eqhG1lAnWs4HssWlpx4+De6YRLrTgMryk1J7G1mKd/Y9l20j+TKHfTuzWyt6jEJIxvpQn1hNgg/6knJSN4HAc69FT1PVXqObOsq0R0UoNC1PLbzaBR3TLMfAJUp6Hu6E+3SnJm8CNpG87Qi0YoeIdmRQyMktIpyV5OsMkINzb4VbCqg8LT/+g1cq2wrCrYrBkm7UkaDNb2Rp0EUQ47DAAbUCj6DqNX0iEdcImiDhh1pB/sQLK8+Nad/WRByy8uVfegE6Dx0BmN4l7oY7Vo8UxCElx8Z2ecGFsAGQibPRzLOPzV7dfvv2GkSqO3HIr20Zm09HWensaPQD5JUmL2K0dOj+EdcOfPf4A/dqTNfWrrVd5ZIWmU1/gx8sHsp7vR0i0Qqptx5/R5Uw5r31/7cuCDhC5D3ObdCcpcGFjsLZ/AKvedcakIH2kD3HUcC0c1LoMdhj/LOMVzz/vcM2lDq42QgFDbe2irJwxwvpNIM+RXk8PvlE56xsiPtGF17Jx1odZq8uJJF7wuCne8Zfn81ppi6nvC2nD1SBeyyVJVNSZwPlNVqXOceOqJdO4HJL31tJX5ZIy/Jf4t8NnnN+3wCbYNipS96w4ghFgbUr/u4E6tkqVvG+LqDE8p7l1opo/HlnfSXgHKkTG2sktkdaAmgXmn3HFxrfv8uRdJHP9ItgM0ddyJTIzJt15LQ7h3qZhsedQI09ixhdLd9km9puk5xIqwfN2HRQGLEoZ/jZc+9HPErZdUf1sPeqEsi1W0B++Ftp9k7o9Lcm2D7RVL8IFZ2e1aHIuP91vZgH5TtU3l1Ib55uTePY7089QOz0MucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/MFa+ZnII01XzF717cd4yjL0CqKpxUtr9upPIQjf0hbQbw/Ad0rlDr/pA6hbD7dqSQ6cngtmy4ggV9pxIydGiT4bJ7Ec43ZwCPqouxUjUe6BV3BLPyfciFHQizUFfvoJWHmsYHHP9hvz7vB8IPvsC+Y94QiNTx+IUR1WbRoeU+uFXErvbqgWm/qHLK8zjsw1in/OP+JmAtftLS6dtFZd3/mRj84YjO07c7s5D+WJAR9lbaf41UfqOjop4EFKtPHsLDpRQVssQkXMMIh/tJWq0Mlhqt9I4WnVGM6Q990ZlhmFYsTgGY/+Wa77IXULRy6PUUZZS2ZFXpH4Crv9EILWcT9oa7LfCc+jlpJfA52qp3cs5WBhofLUjJE63tr2tBQ7Xtg+SFzq26fBsbC0vv5luYB4dsd+z6EQqVGZyV/dpolqzMQmLm+Iypkw2EwXxLz0lrUvTUv7SbCjW/s1ijn7swKDXzeMQneKSd2AkN/61MbziV8909JYZTy52oqxW6tdkmzGda88+N4fGfXaYtyY29Vbazc1MqWQkC6rBO04TUHGNzGFYM9lwHBP42Suu9XDLDXu4Dgtbk8vkyaG5rIH71P3qxnHrBu2MMZr7sYQC9dq+0NuES8VCIcxYSzZ/soRUj+nPEReS8TfoxlSauK9wgAoFEJ0ErMcg86tjwCoKhXhhF5L7m5BV4Sr1Z6I6o3lCZCPVyVFVERY7skm2ShFQAbwJbJNsLArxJHSqSqXeLbRuUIzM53lRzC2S3PCTBONPPrTwnZf+AV9mCXctXFv/ykkEi0bIv5azNnx/rQDDuw3v44cFUNeTopk0TfyAWuAJKbBJ1GsyS54+iQU4r61cysqVqHeErnu1WOKAQMl4Ahyk1rJVatoAeSbd+XRQqtD3SOd+pOfo+W8uBrbjEi9zMtJRIhajPure+C0MwYDBUnz9zMIbRQczacFh62RSKYpJ9YL9PFRMVRv9/zYsl1xx/+HR/xEWzU+yhk8WbI5rPNNZDLSyZAuzbPsUwPsKc0gH4+ZuAaILCbxkBNFAF32gJX/vnBbU4jc+NpafkmwKfmTn3Z9rj0hTQPv+mwifHDgd6C9K7S/Vv/hIJnCI8lMODcwpP0qz0f+9I7mqhn3H0J21ApLx5FJgVNALo1fI9Pbrm1KcJ3bzlU5M7CVJKy5b9FMd1184xr9M4WGnxQa4IFjZOE4AXD1fA2SXM+d5+f6DxLCXoMZsJ+dMxShh8c8GDB4BFmcrRi3gf1pQi68uflC/Z6zyZ4Mmm6LKSmsdxw+HTOqxTgQFiCuaKg1kw6diXDkuPrMeOcWKSAfDjGsCH1NGzM2tbjzFW2sVFqp91/blu4k21UUxbjEX1LIBQklmKr6TSDPkV5PD75ROesbIj7RhdeycdaHWavLiSRe8Lgp3d/4SUZeoE7sSb40SmV86jROGUxwRUdQ23e3yzIczrxZVOE57bCn18Msj4EOhuvP9HlEnqBnBGZJ7OgljjjOiEqvPjkP1VkZ10JgMXC84dmt1yL2Dx7nS182ysgiD0n6WLdQVWwHU+Xn0sW1ufmGJlN1HvGoAobQcQ7t2h4IkkTqEOo2wBsSw6r1e+rNk38IysFDTT9NrtUCtn365GeYCX6j+LXZYfgO8aYAaoULgcWgxVDPlDI1vGVq5vRnYihEhjcPyZLYVmvJ0drQsWzAFywoT/cQIk7A/ZytUN8ViJsvOmI77qZ+X9UfUAHbVbpxcAHluNksjW99ynNfYmcB92YFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hdMv73VcPR+WeMZbLMtfuIJw8lwazF7IxC2vAzo5yIVffQ7PQJIWw9tny74HV8h0HsnXtkrM+FNEg6JRXW4kw3vZKq2qZmbHcggpfhAMYOOAI7/2tEtt/LmrftudaVxG5di09y3pFHpKxJDaSdpXOvD4G+L11fb+nRmob6sdTZl3L7pEWZz7nVQHFYKBmQnz/LbdYC3C8vjwChnW6F7R/9W+lC8rdQVVKOXQcCPu/dwdo9wy1H7GVOAkevmwdo3JrvlTJ30hAL7C4CAwvbyersZLOvYMRzfGtlm+RcrXa7Z7uUK3JqHWjmCB/ZLlFVmqpyaOWOsHjwnqlX3vwezZRveDamUNXqYrhUGlaiCC3qc+urFaCxIsTg7dd1IOtiJK0OsaB4TFAO8vWVEdBUOHLBDNg1A4XIV7DZXr2+be2pz34adhOptGzeIEqEtqQ5wJT1iYZX6t74NMqGMS5Is3aodqvmAP4F7uQU0j7PO3jBX+CpjroUETaG1pwZK6Pi61SxI9bVfY7MTRSlzgOCIuREAcwJrVG0OqeDsebNBpc4troByN7FcvaSy/g+A9JngGg0fUw3U09V4VNxgnwsn6An8vF/WcbtRMa1j/VBaX8lTqY+HFkQ11+lt9wd23+aRFeCuKUOYL0HBX+E4tv8ZFuC0e3wOPdAy6yfNWretBrawAr2QnXnyBcT4jRrgAYsKMDY1OUZovP/JGsh7Rd1t4m4o9UmVGnpSwyRvjwXTaV6ev/qZW9Mmcc7XhsWqVjUL1/byAsNe2AQH86XIoAgmHoqk8JKWq3h0s4uZRt2No8bzLkZi3HRMiw54eN6ZudJOqa6DYsUH8lsWbJCljP9LJZoEcToTBycSIuJo1H542NGU1LKk2tPwOqxm5ADLOu+4/CvzUsGSSJ8Zz9vGp2LfkvM1JKFbGrrxGKnBn1We6uPXrc5mIdJsViorWNxSKUI5GHYDcinnzr00zaIfjCgbd0wjvmdSu+QKJjy0GRqrUoh+0r1levdymvk9eL6lw7hbdmtjUFqvi9L+58UJy9YuM+lsVpKMuGhtnv0VuXrrSOZgGi0A4ci3yumh+0OE3uIlMm6/zkyNFrFcNdwgYYgrZdQkMucObQeeNKwGeLJxvD+F4dvGyhhQpo6CzQm8iQzOQ/uE4n+nEITzMywYTJM3CMSf5lg1H6NfHBwVjv9csxffYs0L1yPpDv2rpex0DXSRBY7vQbGMGTK5/k/75vHXcUzpbwz/lROgU8dTYQmyQ1n66aWyjZp9Ywlr61yyuqO6mjag7hrqE1gOhSWqi2toO5E+XmrVIhDezGe2DvTdBNoNBsMCub0kEuKTWKP8GW6psvqT68dIF1nSvmNPnTKWTvtX/sP4MEFtMD+iHMr6kAFiGfCUOjyl4eGu2kVslCgB8S3YuTJn5RJuhU/35FQ+uh1VK1YVyDxKmWEIDj7Rf6BAl7YiiPZh9jU3/ldQ3opH4ks8IEF5bCypo+L6eDMF2oHDEMpgD/Jg3pubrcHgqosMSCqGDUu5Ijxko4tS1b99O6HpxvSQnjTIgYI5PO64IGxZiweJrAKDiqQ+uDsVTPbsTLLKCq/r5hNfaWfGEyV4TKOxPN7Nv4zYfH2MangBv5aCwTX1QZqNR1ZRxthw2dKaWGxPRMGVjcr0nLGHUcIhDKzcNC7RYYuwOfGlcx0fbw9yvKypABlnu+bFsQQ+Kc/3JezAyGan/tYtLIKI6WeiPs16j02AQifj7T3ja0sEhu6lhgSBH/b/UF0HjzTTUVmqrPo0CglgEFswiJJDNS9qzBtbHUtKU/E5AS+nyIzfFtN0z6h7Rv/PkGbjW4jFikIQ0hSpqoFxUSZkDzo33DLw1DGYuJkTcoB9EASWa81/36/HN4NN6aiAdAGaUUEioWcvk+CjbVmwmDJrhcd1Z7Ka64V+QM0b4x0jdo2j9Eh2bGouDU1+UfDKG1FXh0Mo/Loi5M3vGKJm1C/xWpP28ISWyCKI3E+sBnBYs21UAjvyo0oeUIwd/atCXznPRBfwzw/np9xinJRkUya+UmzDqrDRrKY1k8rdauPU336x70UG9gshYU8dnzNgYhGTiNO1DW09X4iTthLpNNbfGts2ePglcTFmxPYK8w8iP3HOoTkkGjkgUxzW8s//nc6YToMNo2UVQ3ljTdGa5RGGA0JgemPDjOF4vPtfWFPy0VcJg/2mAjg49EQIlwvmX806jJeNy/mi0YSjEhl4pm0zGk10TF2QAAUeHA9uBtteAashpzMOG7LbOIZfh3l+uLJCF5ADhu8ieeFeTwazMaq+2c8y5ffcFOs9R4ZUls9TMNjqz3uw6N8qtPLeSVv1ktpB5hc+wgGEM2MF8Tx25nZog5xx8JRNl9lwvfGVcH5DWRohxqLLyxmJ76X0YD1HO0jJZ2E8uc6q1CJ1MCxbVO4Xn5JEfx6EaP/NFkncmJcb8UgTzw305pFEs2hX/IA3+klv5HJl6LzViBcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YQ+GwAnynrO6K4j3mnCsbx53lVbihp3eVnMOSBEZfIE/QXUhH3EPhcrvan/o1S1+Hev9qxoqrQrmpkxLy3U4f0wjOMLQfnEnCUGpKyiATXzT72HKiXL5GQm6zdaVPpiSp28lNSbw+DjGop9FHB751GoiuYBMXmi9ZaWu8uG9v4ughaTEE8N9bIrBMGgaROqG3ZzyjG3ZEwzjP/VVAyE0aCWxbByp9L5dN2gutQZvBsdmoy0YfHZeSpDpOD8L6dxaVUoVf2ZUKYqxAiUnQvv8YSEdURO1Iqfd/Jfu2eNPbGD+nbtb3gkVbcfNbBZWQ/xubUphVNc6f+ju/o+6S1vuW5OBcxaKZV4Mt6lviHrx9lSakfsTBAvZI8SZbbzk6Y0+YaHJgES3E0Lg8aVmtSA8BwDMQzHYATn3AZZOJkubL0wJcpwo7MwbR01wVZEMaeXfFtHxLOoiYjFh/KNCuC/NA/rOkxKSLb/F/zQfR4PFuQA/F90HHnnbHOc6BFTE+i9IYNhkv073fZebw32yeXvpPmgYZsbXe56u29g/Ils87u+ruThT0FFrUc2+scGrIpORN+UlB9jPOBELJfQC+AkeUtP8t4/YvtLlv7e2nnpjai9sEp2h9gGO8+YYEq1ReFZ5kPAUvrUC+WUWTyoypSsKRMYX/HgmUqbzATaHOOxxQoFDhC5PxxacUIS0gaWrntH77XqdnWYM3nQJzjvI/K15RVBOWjr1xGf/xZb73EBcd9wGj6eLp7830wlFUDlMt29GflCi7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQLoXg62L8IGvCpW1hDeTMF+ZCVXgbHeLraT4apm1+Vfe0xa/WU7kdmB2y72qmhg2uqpU0PocaGhywj3s4IKmv3JvkcnKW91IxfWfBlHa1AyurJUN65fMn91tS0Rz6jB2ehuiV89fHdqAX7zxrArm+8X+b9ICTnHZQ5q+LJ7DXmFR72Jt2Xkrt9Cah+yYIwQ3btcxWUGBN4OXxrBz+7PmELrqvjSfDt/sqzihZM/x6eEygwo+jpoV+BTlOStsWAcT4pj9cnGijlPTOWTIXYxoVP+xHfA6YBZczMT/bYvmSwSBN3faOzOSiWEBg5oICoZ/xnPzSaZzwzMPtEt2LHcfrbqX34luzoPYurIB3/YhKvXTqgwzOHpUS0WCVkqgjAAOtpVPLEWL+vFD7PAExzGya2sOFOmcoc+fu8wmbUBdwcGXdskRy002p1s5nU75YG0qs2ciDLFjh90HGuTfcX8RPOlGvlP9BUd9afPGHRC/1Xt6eDYpD2ybAhNG9viR9bi7y9M4LWwi7S6O6RJOU8WeqB6puM4v1gkoTFh1NdXMc1sxKyxjS8IUbK8Du7TK7o0t2t//fTEhZ4H1qdAc1zkdCd0vzqiyiVC5H3u8Hrf0pbhqg18ha/q5y0WhTsZvUCTtZUKLvD/QrLP92hoiqi5uAJh9RY50tjS+5nepEyPiIIlCFCzi2oPi/8khyqVrVSnZzoxjrZ7OLKJPGpC8FL9eCZwUwQje9XMzk6u3c8XwrOF5Lnzjv5Z83fg+/BSKDDwn0le8bhsIEcSSWYOwA4FBzAZ1JwH/7cC0/Y9uJxRDkJXgGA7f5jyXzLzK3rN8ne/XSqrdglNlya0qlRnk5r//ua9nAg5XgMpODSgInJ68z2T5t0aeYwxkmTG9z+tl5JFCcMVwTkPxWAqgIUIeUPmoCjb68SVr9UasHLy8TkcuuIuAjJkxqXElzoeDhK2Vr56/813IbLQIMhhY9MlaQZ3alFZsxnWvPPjeHxn12mLcmNvVW2s3NTKlkJAuqwTtOE1BxRFJl+rBTivWlz59kW0z8OMmreJIpQVM341/yTWstEUBE3s4/jxCm7ZcobWY0Z6z2KhSwbGZbqrZTa+qPi80JYWXe8QRFep3I7J7RhVXHyEYSmi4ttkajIX8jvv2NrvJtA+FYoMkjTy2/lmK2apj+hmJXt9gS+il77k1bfJ4Aj4wB/QC84O3WwYFeWnEHoQr89je0f0KS3+Xw2mn3gV6kShTbQN9uObnN2vA3kvOcEHXx58Dqimlp9IhI+D7FmUAgNi26s8RKLdUQ4pyZGDQzgYd7toSvdcvVmOkerNZIVM26ASdoTGPKNyUws2L7pP0EBB7piAtKrPTJWQw0bVxyFuO6vzog62Tz5JE35depKbq1PCKYK93CI1ZNYnsPXsg+q7hdIcRutsmp/7QDVafcb7oQM3OwTAuy0TO7rVpPuyF618gENy6QcJgeWA8z1LgnrBvvov4vO9P+D0UbcEnujTrLr8wsnjvRuwtNw8hWjqiFlpaFVR8q65C8JTrGQi8WMzCibElp1XPCw6S56LFv6GiWCpAL57/xw+wirBi6yQRLBchRnjhxHMHa4iU3gcuGWGOeOBDi9jbXFEzgYm6PsvRuT46FT9Tt2vnnfWXWNDdE1rDycVvLj2l/9UV4V9hcsVE+Hata8sGxFyytvcoA0NvOpo+QcZAW7lkCEhu2rKEESk4fX1zIJI8H8KNG9Z23R/pJpQxl7t41DO9JPgYS+HtGRl148bSKkTzB8lj17Du7c+DAzgStr9qYcDSpOkrX2lmsCtT+q+Kg5YORjjCWYO2vRxpesUhpA61HC3qmUnOZv36EZWX9SXXkx+LOqN1gb3J2prMEDDNGhcvQl+oBuQ3LeU1vZPWYqOBfwDMbHEDuUoKpPJjzPaKntWHrI8F2YqC9Rhg1s6iGtB/ii2v6OQpZfbZ7NADRhBrrPpQiWiI+luWEZCjrMHvt1aYS5WTjwTq+ql6qJkNV96WAGQ503YH3+IpA9W6f/XEZ9edWm17pAYPqTlajs3ePsi8T/QK3GTt+ysvm2TdwktP79iBcGV+HPiTBowPdDuaoDakVSaGbsvPzHjknpekvVVSttjqnXFYJIPpbBgFBkFgMcgC5V38Sgx5ko1KuygEj6Cc6S0YY9hSR2mI/y7BZSZvhSuqtqdJAc/iPu27GpXS2nRpx9g+/n1R0Lgrga5uqj3J6K0mrgj9BABjAhTZx+w0qAsIPK9vpQFbooqrVs9pyeGrDtsomVWMoZ6Kfj1V4CFAx4uYEcXrbXGwxynxvWKPbHOkLNfWLzeJZm93cOKMXQWzzB3Jje/5uG5bmmjIL9IkiWlcwoZ4yN4Z7h0KEGo3MAzzKkl7k6ii9kmqHL2hXSF+pquqePxOiCFPn6ryaYWVcQDXmM562RdPD5/rXUMOhUJjKeh9ZuiiSJmjr8as5TImeF7D68uqV2Tb8/Yb4GA5lrvQJeOQCjLIGdZYq8BWV4OdJni9nIwJLT0xXzKHT10JXBz7uVcA+jMD3CrKurcXtYsJGRItWHTgvcJyVW3sEJ7AHVtTIHrTUtsUjJG/Gq4cnfJtscRQYeeqaVioampI1UV4YPLFV/G9Re+0TFwT+1wJwH/oAXhfzw4cvxDrTBlQ2wL6TSDPkV5PD75ROesbIj7RhdeycdaHWavLiSRe8Lgp3H7qJdBrXEcGsmOkubfp31aZupRKvd8diUESc97bRmtMALtN5yYA6zXGMS/4YVefctxUJzgtpBH7fC0ipWbw8QZgRL4neuYWia6vEv5OOJQ2h9/yMFD8xP/XgoIK4F60bPBTe2CZ1YGnzUc/ROF3/PotZgVoaBm6BaRDdsBO6S1goa4aap6E5A4qO0hxhZF6dTJH6kANxYL7K8OAOP/JSzrVHc+lHPeoOE+3F0VeyYPYT0LZsO4IF+ktmZXnGSymJ8x4+n4E2T3P2a4Xwj3xv/A022GUnmKNB5tT9uvcvCc8ElCq/aK61K75RovQwqR8Ccxj6sm7kOFudonQkumlrNOtgUGU4qLzxiV77drPu8aOcPBRtBvEgD8cvYPtfQQ1yh4OzX6nAFdwPsIaRzpfAQkQuH9D2QInzgxZFKL46QeW8G6Y/PzGXKbgxk+ktfQB275M/X7KOIlcWEAVGkr4vm3nWfp2ZCukKBf4UdjV+vZDW7vg79c0BUuXQ6T4QKO90G9umwlrl8MhI0S5ERzjXG27EUwpO2eTLK8j2fbjRQGN5usru81kou89zWGxRlfFbHkvRxYBmfOdiXZRoIUu4dApc5hDUuTHQ8pezJymU2BlejTZ2S2uBU3+Tgg3s1LWThdBckp0BpU00yFUikPfHAlDFVk8z76bddS7pz8d1bSQtKhPd46qgnTwpUYHtRUsUKtu7BRaSVnyW6iYfyalHvJ8RrIdn4zhMh9AJdGJJr5SXwh8IezFwxXqvaTwwB51hpRJWhdZzYf5ek2uzEuhJ2su3IndVIlv0yKW2aavOoiwdxJe2fukfn1rNk/oov6Vomi1DHn7pY2YFVc633CYa2Dh57aiMB1SHYWlsBDRceXEZDXJNMeUvAs7ocSPibX49hBISP+F+njwztiRItxwC8njjCJuU0XFkXFbQPcEwzgpoRHM12YuJ4JrRmHSSU3uVE+4SXHlciiDlO2eVwXT5DmtwSjpiUyauNhIsungxalA441A6xxfpVtZTE1jPk9gYxVyYpsgGOxA6jPrDux2G5UCuuog3mQX97PfA1L75sZqX42WAVlNLCoWt71lO8UDW4gRJ4rRtDh32lMwaQQg/NvwlHtsECBUwtAtsk0z0JNPE1r2bDjQKoVHa0aw+UweQvpNIM+RXk8PvlE56xsiPtGF17Jx1odZq8uJJF7wuCnf1jM85BiuHrWQlpN3qSAet9Ro0UVUOeui6Tbrh8iMrQ3IP1bvRwfElITwwn9K7c8fUE1IK0qmEoTYEgtF8cJPirB1fJGUfihHhIfoUZLQUY34fqKecLUgWZLGTHmeLTFdBT8FuyRGfqAVym4SXsfnxoGbadanEhBMVnV0qqnDndsXzNCAJ/gyDFBpXHlwu0d6Ih0BmAzvDmz/i4JOVlbZcBYabU9hXXKKgCYV/8Aq1bRoHZZFnndR83o7klT/MMnc5FSt7sUHQPFuFC4ULPeEH8eDwUB56Wr0jo+ze7WSjTajpYIcaydbIepwjVdficDW7fCB2APU0X7Ne6WOQIE4jSSF3uLfxlif2iKJUWKpeUzetXhD24tOYnB1HrTbzBMcHnNw8kPwxJk7T6wj6V6u3CDzCnM7LvjzxTucrUC15/jrfge0KdV9yjKHDJfyNiK7W4ICKaaPrFymwdZCx6AMy0Te3GvsyCApb80pUyH0YxsAUNB1hdNBlxbUzuk0te/YOP0YhyRSMJPhNTzz8MhI2yOcyPH0Scig2U+yTj/z4EPcqrf8Z1atWuCB7abTjXCyWoDDKK9HIHVf9PHA+TuHvt7h0lRRV56YaSNz00gAiwfuWzEDs1uhze3fvIirc2h5PUH5cGLV/+NiUYprVLHWXF5e+yUi52t6gBtTFUH1902kR1D/eGkkY4pMpKnp7lFNOR7QNVPspo/uZ3H7YKeB7P4OO3riOcQe8eI1Ts/g7dy+JO2LzrL0PaOrWImkRB5da6vAV+H2nziP9krVuywGcn3DTaPiT1w49Hiy6XO4g2o2PrnpASGLVcnoVokARpUU1xZ2X3dzyNZoYuYKDF+vGikeD9xd2fRNoVjhJI9RusMyDxQsywyeaUmGZ7Mc6UsulYt5FxIMQJ7MsK7DWsEZOTw8ZBj7saKf9vcwXsJ8LVemb/SsNnO/s5a81yZltCQP8Frx+8Erwjs5wrKZD99frvHnRREj+5GBL7YSTojhci/Cul6s1i4HI+h/MycYa0WVC/GNdWTk1l63Q6Ikhv8aDIaibQNQKhOSi2Tp+zsfIAKNqrfNPMLOxiJQRoWEg1ztc3ZVthXLTBkcFyUJHHKNCPlstAAlCimufQWTtJ+1MUKVo3Ax4PvjKEEF1A8yZ65CHzf/VhlMgUg+8hJBOF4t6frq5Tc/6LrKDS9s/U0ehHMde0xSYNrFu5l78Wko5rw0NnM8xtX4T+Albu8ov+9KlUXxg7pjjkuRe+p3lvn2pTIjF26KPahjKzSXR4nDrKZ48fWixPUpmpD/vPbjgssZ2y+UfKDsL4Ic2ifG3oBwXfhWp1qZ8nC5bQlUdjYc9L8RjEYwO33nnPYHLx8X81llbjncjQDCE6Pq1Zorbyy3GnUyj4JwuXnmr5+uKDzm9AH8RNlHIH69Sdpgtwj5DBqGVjnEi0FgjWORProza/QzbY7iNqvZZN9UCtzkkIaf7j2k6Q3Mji2qFg58tlpPKBB67GN2EDfGbIx/mom0NoDc06YIAgrmT6oR0Uw1B4HugRuMQGVvd3ln8BjUXIT2y+W4N1U+X7A/cCG/VdhJFGbI+ZI3Dd3ApdcoCOX5FG4suwBn3Ox14nytYxuWdnuSNWPC8xDW8rRmeNmEe2SGM/eefpFdtcsc2FfvkStBhmtJfM/P5DrC2C/53E2bp6iiNZvbIijXjbRaxwMcmZT3P3YjkD3Gg+BMbQ2ExOMZFYGkz7fJS20tsJ6BizTtOPm7sMXQCF5bqqL8TQnYQ8kFwtjRRgn4f8UvoFSrp9oxjP8KcHttJWIfeywJkkO8SQ1TNJ00NRpBOMEgx9Od5DTZTbGE5E52IZLm2Xa12Aye7Us42EG1gHCNcXd6J4MNiwSLOJbAL2drZyzmDFZVzCo9euBN1QAUV9ehEAa8Xx1BV7nRF9y1Sb16QL83bBbG70W3CmncYLn6NiD8j7oNWb+oxlRMXxWkPHR37JSh7yCaH5QUQpeWK9L9ie6pdmJuYqjcu9p5KAJoMtf0XyJxES9rU8lprYF9z6tclUqe15d3t6ritudy08yZjyRQoXc9XfLDfoWdkA5f0M/E/n3Z1STu4xB2z0VCi7w/0Kyz/doaIqoubgCYfUWOdLY0vuZ3qRMj4iCJQSnqmvFZuUAZXrMwTzOka5mANOiBOIP1w8xK8YvVxGK6mPGzliWcEwRDn00htiJWz899oKNlg1b/cSMDKg1vxgO4HhZWe3HYjapfQj/lyQQptWCSyEj1bFfN2/NN3dab4iw7tbyfltSWvxiaCDy9q+Vmna/ttQ+odSbYBcRr7YYVJhygIC9Ysdx86Doq9Rip/cnAPbMrQovpa5dTMjpwOqOOfgt1cKhXARU8w3LBo5y0X4vJ7eDjsNny3O1zKjR05sdPcYpe7XOccjdS6aYWmbcV1NaGBk77o4NYk6OSPyRTFaXX9j8zEEYbqcgRHDZAzwjB+NCewfT7rY3JR3FRaIYVg2GK1282r9dvyylwT0RoLxT/Nuis6bSw3Q2WU9tfzHB6U5vSJkeWAH9N7ACTMSc/WLyjY5+meseVq2q2r7yoT3ZjCa3G+Mtvf/RU1zwH3ekraxmOdhc9u3dHddgfLagP99uXDT6wZIC4LsHF3pYWo8Otw0WASb6v1tXagRgvfpijj7Uulo7wngTaUQRNGzKc4MBVP9X+qh+TFm2nMgLTau3AxekHDqEqA156ISWHB47I/GS3LiynhapHlFl7d4wXCzIQARV6XjZZ/d5bEofBXHvR9DNootGI4QZfFXV3Rc/1HGTMH4nztm6IpfntOoVopQ8a6KhVnLmef5As0TTaOSCdc1SksMBWs3eKHSJ6eAvohdoWgBKDmtF0p6J4DoWPZgv35Xz9JwZbN2OI76EwMVITG0+ldQbj0Uv1r0AXc11hzLCAXn5wW0MQejWRMuMFz8Y0e5QG7haklbszBg1y6LWPTP1KrRUOQ5q2kUWKDbgCtZj7PbHaiBjn6FEyk+qHldDbFftz5IUtJFllE8pQ8UFaLXb7lXej+UWPrFKxW5aBqKZ/CUkdYJQKmGp17BI/eX9FuwzgZYNWUikd9Hqbcc1S1dsRCQlsupCKRrcf0TrFDxkZ1A5Lv5fTdkgFxc5HzWXrQUlmGxtOHAFp4cxfgMls54qKdqNGYo8tT9OEOPG1aHK1VsrR0b7aFswWsAVTGl0Zb8YtznRJnjBq56UmYlUEymiRnoLVJyJzVsN8cL1zVYAuHcms9VHrNapZNhhKW06FVqRDRPqTB1Ww2qlkACnMMybY4R4bW/dp9wB87vuHVCKP8PKX1TZDCqLW8szx+EJ3lwoo5guAOrpP85cz3nBigtAOQlD8EG4pBwI48jcVbyqPS1rwa0ZowtqLgrAJVxPozG3qdImaNzrt24nswrtuHIze+slgBdymQlUqF8Iq9Ic41LIF1EeoAKsf2rKEo77mI3c6GvsqIhDuLU8xxlpSz1ZKa5KSVNi/9cMFxhOrrPGAz2a+/HW9PCOJtkoFzFoplXgy3qW+IevH2VJqR+xMEC9kjxJltvOTpjT5hA3KZdhRXddB1j1BGgYCoqxD1MJoPMBSVydDr89DQEn7ud/EuU+eyxzTkVE9OdgBeklASN2Nk4SdM3UUywDtvIwQ7w/hdjMROUxVv7UaAu4vRc9PoE8Hc4r1YB77FCQhYXCGMxh9GlB9pFNOWV7Z5XGUbJJeaZcLoKzVH+fGAPzFEoZlTgQj9+FvK2Xc0pMt8iNxLx/jDzfQ9up/vD31XM/LDTviCH9R4KHNW78ZODv7GPtvygnNvEeeXLR6CAgiNRL5PfjjNI+TWf6cl9wkHDCb36dGbo3I+vANQy2V+FebMht81damI5mz639JT4Sd7odkYRLRbPfOBggP/h+z8EYeB1GYUk4j5peSYLl19oqN0PxBK2ePE3T0aRdir6mBJQmZf2afDUfHtAD/947hWGpxNNGcc2TttrLuY3Ccsrti4xhY/eWfRng9XVMeqdSnLHLAeO5UjxxoQdcd4jOwKfOkhqwp1Fqv94gDluF36MvmGNS83KLf6Xyd0g4qNYuSyXiORCKol73rOQKUZ3nDGYsXdsrU5YtzjStkRMNnJnS2NykWNA7M5peyzTSzbsB155e3Sxvs0FvVGaP6aIwcCXbX5Bb5f64/LAjgLUEYXxRwK/FSFav9U116NRiz6IJUy+EHG9xZtKwztznK6p3Ggq+SICXe4pZwtT+DN2oV9+fuBZOTLzx5Sy2yKxlYGQdug78TeozziOSZzoYfoLQs7bRqFPugq+E5EM5MhMCuFzgueaB5Wh69V3+ZoInUjkAsUfFpu/fylWGXsIudztRIA5DtLDgU31USNq8g651OV66SNJtG7Vth1I/wyN9pIH9Vpi4Ln7df5vTt3A0efue1TBTQGqJ8VfC6vswVhUzJgK+0vcnSI01Z2whJA92M2PlCDVqjfG20ozJ6qKTQiRMa5b5WulZ/bstFLDF9HwWlWDZP2K1bfMN1yp2yhyVe/1p24QFMHs91Kf8G0pv3khszbxQfX9HcOCu632amKJKZKFNIEvjuHFxMV7ZiVkp4FzHTjOdtB1Dl+5sUb2srwjJn0ek1C7VMptGZsuhAXlNcGMgxFeQLzmbkIv6ys57yGjLyf3sZqVgJd3jPClOkVRNyGwOfX54su9/Xo2auGW9GvfySPkgARYxq8vqhTrGZAau+wDj7zCwWHtzvfr05//t15WGdeISuJLEQQCp7vVXn0IuA/iVWORgiqxFU64dvQ3bs/Ko/MMevMNFg+IN40K/taNHvBa4Qk/bnLbVYdVBeBzXq/M8U2JfwdlZU4+fr37SVnLXKXI32PCjUVzscNIi027CB2/9D8XzZW0icsKHEcEkhF28aGwaUEtTzpzU9CPjzfo4G7DwdzkNIhcLHjpBpP2C8kDy4QA3WNKlD41BBa4kqQM5Qm2JGPb19lgUdsVqfzPdGHpPAuAOAsKTzKK4qcT3TQugsawWYIrIIZ54+Jgy0v9y4sgIT7SLVlX2KK9WhFWpnaIx0HrSVfAPV8BFIYn1YpEXEsb7GgIjshOSQtrCG8iHnCNe3qUdRHQyYr47k3nFqqIm1QMlBpQxO8yYNmQ9FUs9r1Pqm2rG9QT1OqFKgaUhMAicjNBPhNpESQnXlaQwhFxPSdWXhlABe+LZ0QyZZRsDS2cz6LKOyIxGZjbmAqE5P++vQSxh8Pns4PoIdTsSqWGvTelpUZvx02lYv2/0SDG0gXJiTtBaPAaHgJDddWuRLZYzGmwzTmhOdq2R9UYYqYKRIeR/N1O2HL3VyT8bxgjgjISu42/lLOSD8PbHO0VESbcFGxok2TscFYhF81ZlO9WHd/EbJYs2TlFHH/zdGl2WEevjq4zuMnUk+/OwS4r6sdjUyawHklrFzmG4J7+6rHa/S5uiw9SGTs7tUiHf2ISrNFdTX3goRnMLz9XzXZf8OqS/9fTEfYkycmOL9+uL2XcbDWr+DQeEmcMKpfjuZw3yTARflaUT4pIX0KYJsu2v/7s877czYsp1jVx2wXa//yN6QDZYr4+EHMW+JXZp2APV39gHFy1EQjCygf5Q/ehWguQAo+ZpXObb9+gL1nvvg+/rN9DhX0/qq+ofC0ZbMq7rrcA6Zatrt5Bc9tF+qZOt9v3ucTiorp1n6VupWn6DyxWi+QPsmF6kMwpRFkjoXmlFDeeOviVdT+NqfBDH/FcpAUyY37ZpDijSiU/Xji+fQ6+FjifSJmBKqTypdppYHXWnV03CosQ9neNeYCxsoCQyhCOKmLJDrtI+o44M2LuBd6mwsVLj25EgOo2taHSLvmUwQpPoyWxBmWKy6jfTZ9Lry0J5M5lJuN8CU9C45WSzyi7wpZrwkzSUb272kCw+wbzl9kxOHmOzHasUT/q34dpyHV+mRwFKffKiE9u+7NTTCpnbZAPkcnL+TiAH8K16iWCksUSCtBGpUCIqExqGolkkMm+o3kOvJlTDxwbRl16PGLTlKhdsgL37hnjoXrkgKuZw+cixWLOs1pWNt202tvKlX9Rr2gIc2tSbZ3jIv1f6TLvoZHFqmxYcFQsDXr+C5apaDgkGI9ekbv2e46au4pzAMKVVWUo7A0AjD9/5qrQHq0epgIGA/qRRGsi3M+uTCpo6lrbiYHK3LtwwHnop7k2MREp856QMailQ5b8968KMbmriP4AsbvksqPE51Ed3DfhbV88XCqyJs+cGbpDbmxigGHno2VjX8X4ZZ9xafgMKvQDKekCnxbVawEuyXJRddW8yeTkeW5zm48GdrHqeqW4H4M5szENmWq+kB99wBcrO0XkhY2mzZt8tfcX1+EuyH1QIIJGK2qPRjPiS1G0PYWRbQFSX1TS8hSSSJgac3qXf+qDQ+SN9SVxa+RPaS2FFtJdUfON2Z5+KzqF3hMtk0G4hHCTr3un69HgZoSss/EZ1xLbMbuEhSefXSJuY1QuPSxuzZcEdYitZ1M+ycSz/jpZXpt0ZUHB94c3/isttLyi7Ce9hAddtq+gBHA5MpBVDNWJQdl6bnGb3vxD/DVNylqGDAGtFK/gVVarmTvN4UUbvsn0yfkE364TxznRtxqR9x4sXS5wLiH5iVuCz8Qx6kooziXubLsanAA3CZ9cSPK9PWwJvBYVtsRT74HTnbqH4FTmL++uWuYr1zdQ73Eawa1Tf0j7Pbw/XIfg2PtI0kARpTisi88HbzkWDaGmuUjKjXCrRfqY/wpkAvY1xfYkep+11vNDRtDoE3HzW/f25HHUNlo1zVk4L0QEoHvmCMCckBUnn8od8m7dGS8Ljttk0HBLnVTc0SKqr/OgizhMy5fljAjhQD73mt5F2T1h+IuDxMUO0hGojS2X2r+aRLjcS0g5H1WWs/7JRBHd3l7Rxl6Ae1kEsSe42ttlP9HiyO9r2zJBe6Y8BqsODPNH5bmZBdHQust7U81LhU5rfbbLsr+PPNwJ4bboYIqqOR7rQ87RUC5pw+GIwYJP8rZL5eHqaOmjEGuGRh0PObYmgIOp9c22fbCdW10t8dnZ20ihwCsVpTZkqa/gs37tA3YqQBirDf6EgzzRExJPiE0qYSGjQ0sCnasmwY67XS97x0Iq9LcDFpQPkw8WggjWKr8DluupZaym0uxsHYxxepa8WXNJvWaAbRTnbfb1+UeP8UxAhxiJ9pPla7khZ7ZY3zpCiE/aJjlg+zqZtzD4FHU3LEpwokIRph/6HZ7rGI+oQZPwZAlpPqQh/V/b2LsJpOF+FBg0Q/QK6YuKLmtlBKT6Kzb+QV3UNk+dXizf9PKt40MX0pHFFlZ+DY16xxgBovPZDbYzzfKps7uODDLn8/m2kDCsYRDBa3LHhBguFDvgTQQKFV4zziYEexPqFDs7CIWiLyEB2XC7W8shlsMP4szr0YRyi1bDnDSju5BMaLK1Kxz+1tnGOmviqQWj7yRBEtnlWNqVvJOnnkC7g5yPUVip7yeKSarnpAHLe4AJRiICZXouZ160fBcu6Ah/y1mNnvPpNgTfQK5BFXgK7EIzvC5VM4W+c5UFFvEJfQcBOQb13azHt7Rw4hMYL+Cw6utFHz/amoswR3MLoKKT4lSsNuRMKI0aPdnBUhU7JHZxCpuCZy5JVDQAcM5v/zb9JnsLi3zOPfi3lRunR2obmXvyl62MssEWRXHlPeLlmQc5g9jRPCktiOcP8X7LMj3mSChnaYQrpOTmihVhOQ1igSRG/6s48aZ18PA5zpp1c0Dhp4ksem8fehc67Gr4NdCA7O4Ojh9Lih+a7ZAl1/jn9qUXmmSLl5Vc4pfoAZ9OfbqqDqnTzSU5Sa/pIXdGVKfId8+KvQi7HLqQ4Dli/z6JqzS76Af1zmqx9mcRDIswLkFNkwyMdQAyr1aZrG2E2IWpm/0gagBYDHNNNwM/+gYzM+yU/aRo/xsnhmdFJDftjRDOvqGNvWB9d9hfQ9r9gaJp9w1S4ieOaG2RO8nOyyDlXdy91tM3X87BTe4YwA2vsKRVmkWvfk590SSGYhn+Gd/t5bl9/tFnTHPKC29/gT7dQSUG6g09cF7+EHYZGkmOFjqpkoVxSzTtv73zIp09kD7TasCXzznwc/e4RK4ioOS7NlVm1JEPwm00XV98IwzxDOdrdeaJb4Y5MnTSNe8jbOIgvsZM82J4O93KpIJRU8FE2ECOm/KOIyQ1W4gue/Ps5soSqAFQlijPNOETDnWD42+RmS8xpp7Rw7nw1uKnf0VYBISXnUXhjA+JCwZ5BVaJzMOuBzFgI700+qRVFjiHWfchtkRBEwjyF/O/ykJe+a0cYQ1un/XmVrHkEC8IVM0Bc8LpBbWX/XrLn+Wy1a0gzIRFnd0w5ErVA4atoY4Pz3Ve8V8cN/C7sEy37iLGcE0q0HhSSj04PrYskf0trp+kxvKpeb9rIiDRAJ78bxfTBFxNBo5bq95GF9UNAPhoxsVrtSp/Va07H1phJuBFmXU62PGFpfRnUQTE+7/UM62RsgQa/kONA07l950nWnKRjeT3kudMAVIqCHxrFbGPmcvazMwYU8OTgnScbp0oYIzf2pXoHW0EbMvcjQ/iFphjW6ceQEOd2Nu9ObXdi8Jj2CNTSLTS0UDPu4FSGLHi+2fGEOuM69bxxE2AZpMvFQTjoVIqy7dsbHsiAEi4sx74nDIJ602jWRD61Jpy+2bJazAl09PFJdZZ/Iucg/52K8Vu5wETi+14uT8gtgE+/yf+rbc8PrABMQKFTjkf2WmYV9cQ0xE0SOIKm/pQuDZqjsxj/duz1PNKnt6ZsY39IGrNf1tRQzz8+OxmIp/61vncxz2j89MPU1yaBsJCSSepNbXZedAgKYAj3lpeGSiiLksB0Qz8nLCjX/Vo0aXcqXrkkExRwkwQk/HzsY5gmUvmEP2gW/3DOAOMRV0Wf+GA4SLPLisICnLZzGFlGiy+Sd1DaEkkN6RStpivMCipl1VAtN0jRL6lU6bSZcRGdkE/p31kTp7hWlBhn2xELil5stbVPqujHVVpgckww9RrJTdj/0Kp+zsD17fMGytFeZWPAkRF86nqBJOVW047CafpjYbn450LSp2UfZOEMZhH9oIAsremYdsQclDF0ZG+q7wjHHChwmfgxNb4PoqbZCVHfTuQfYSjSF62ugs4fVeavBT8og9o9H2ncg06SR7T9xWfqlM3KVUg/PuRv+MXoCGH1cCqz+lerq7MzIWh7hLp1J2uQz+d44M/TzULnxnETNxSx1+VnsYFxoz7uAf20CLp2phsz2Mh93ClbAHbUtSRe7cTJevgiHnnb7pfTSNI/2X6V16weaYGLQVdm/23bgSozhZo3CoMBGgETnU3s59qSvy/RyESmEaY8UHbD+i74dFNFxaOQJTuG8VEf81UoT/MDlUKULCsM3yZ34fY1dLgf6BwoltYAMu8ks+yyZKEI3Vb/kt8f2WRvoQt7mf9NUSgkB4DauPplgJu9MJW36FWuwM1Bw5KX1YotfaLJZQH0UWd/Fvhp4woo6NATPN619TJwcGcc2wFSvRk6+D06zkfRKkfCHMeMHvmKdfrh3uoTVU/uhpZLsaYD7ntC5rNDUtLjNs/4B8gQ03/ML3zKycjxqM/iOUtppt6dDfg8eyNlLb15GUQDmCYrsXd7i9Ipi/sGU3RDVx8vVdlSiQwGGqiFrqzE5sW40s88a1oRKfQRiJevP7xMCupfiMDMCqrO5V++f/mKDiekVPHxOALFadBZ3LZ4Q8hFiz+f7znHZQHEh2AT76ynBoPk0WI4EgJM6yhmP2QZt61XqQmMUCnA1Ev+DNYDBT+oWOJb8a4xtZMbn0PbHdg2v2O7tvB7f7D/69oT/cGtjY06niR/j9adBBkVB+tP2A6dX1ZAmCxwB+1aztX06qizJIz+yZodCzCenEjx1HjOwBnNKbqhIbOsHIj9cvl1dIinISrQ+O45EHQF3v5YceME4+TmU5OZ//yWhB0y4EZqI3w8nrK1fpplVjMBn5TJl274QJ2WCIyw3sRE/0559gA72lHAbmOzIsO0WHQ3gMANQUi1Bq/6LMMxHs16iytI95ckKwXnK7X2uAtSA7bH12PJLlIyJSnpf0xswyWwr1bGxTzmc47uwiQJzjGoWNx2HdY6k0V0D0XkueujxXW0uYMlbSJzOW8waUxg4nLFY3eZMvLcpOt5nTfaa7GOCk/6agzNOjjh18ty/dpAPiVy4c1zlx3GL8mWDyuqd6T3zolO4RxMWQ5eNuRrGuwL3ppveKurO3RPIVfV7oLea1qpjGXcdrrAZg/66XqOZ8kVDBuwZN1AYYuwnJ/jz52PyRq/FgwmdVAt1B+DrBsA/2QY0fEnRZKhX8PMLeQRLbC0JhRg1PTl8P56bXiyW6LH6N3iBfRJs9STQeaydsRzdaq2Wx/6VqO17IgS9xWNXjLflx7J8OOexg1dtY5cKJkDy3IN18+m54EMOFtGYQEtGkpIDeo4IDvCoKy+ymGo1Nm1WiRjPYhCypWpaz7qKtjFQMjT89Vgx03/D8llPPBWnLFnHDX4g9pTCaOJYEXWFh6+INcSmD+6ZBwB74HXqF/76NLdJmi1xUzdVV+YuuKRO1MWFSA6zZWKCfFEn3O3KgCdWflUQCBo7qoZli5FUOZGk8flJcIbpJW6N9Ui3wbLH8odoZyfjJe/UwQE+/jzZhRDE9Q4uqI4DXkHLkzzJGHzEMZnxF7tNppkfgTuIkuZqGkzhadmKgOSDOUnW9q/v/sfCPDFI+kGxCn6Roypg5JcHO0HBLXBmRwTifs7JuAb2LV9SDqpNBa4ffQVpM+TVrg6xZ3oqAiJ8xAh0Ag4hO1R2djBL6aCtY+dcXIGLyopshSErDodYVlj/kQm+cAti3DDQdpH328gN2k7trTjDbnNu/vU/30L7OE4motvziJ0oLbhyfE6e4Fby1LMDjaZU7NmQBtBq9tDg1pBGNbgzKLgFXzRMk5N8asV2g8v0WGySwPbft5S4pkBwW5dR6qjokFrTku+NtvD9qvyXWk3GiMMHj/j41o8EGupTQPJQCZcEQ4Sk+GJAoQA/2LH8FqgsupPVkEK4kIP1pJo4x0BOM5fe3xPq/43aNx7xm0TQgHWtS8zOwf86V1Fphf/iSQMO6DUpZmMevmgcwQYneBO0hsgdkJbJFXjYLl1nDcbRxFChz6Dp/kKsFHN6q9XWblzKpKdlLLEl0HDxWEgLlya9M2FhjB/PHwmMg4L5Kx8TKuC+JS2XRgoagdI5hNpvCnsL4RrLJYTLN+/D+/3AM29fwliC82RkJ0AILTPCPMbFQTxhTfcRvcbUJL35jwiI9wws+03LAFmJfOXfU/Ok8N7K4U83+dy6bnzMtuyRsvwgEZKT73zP7Yfa+L44XNfN9NQQi66tBVbjmFz1lB+GJsHeHkVzRDfOqN4t6+gu5K+LKMXwSgiAlyK9JkN/pKkM09H1sRbDMaLzIs8k03hTnbwOU5XnWo63PgvRGyyPUz09+k9YSewf8TRM1Pmn6DMH14Xz7pQDbUjlpdQR8VBRjdW3ZOfVHyff7/xrYki/jfKue+7aXoG3XbY7bY1AJJw6RX53dxahp0xODuuWKSnSgXfpp5LIzcWhtrDwyyleV0R+R2OqRTdBI4+p5iS+dMjbDeCfakKAvDq15oHrMjy33PbX53QSSxKBq2cGb5Wg7IqK1sXoYEgs8elt5cmYD5XSdAOPFSOlUEC/nMmBkpvvP9mcisJ7W23M0cqqKpKoyS+j0UYieUaXigigWvl4tK0QsW7rI7lFtCWfgwps8W4OmfJweW/kmcnKVLh+jy5vjpsv9qKma0Q8J+Hly5Ow0kuDI0AfJH3sEDffCi6+3A7PHRLRyQ/SUrOhijBMHLZ054UyqgyJ0hfPG9tJJyYp8rpo1dYd2Nci1Jw4/tbal6HMsMVD7LfZ4fVD488iIr2COhUbf9hGsAPdBnFWTu8H/OVdVcIMatpr19uB5zZpXM64HTIarnE5VOeFPwbx7CBXt7ULYRJSn+oZlCxe7bLNfXf5AvYzNHIhMS4prwrI39qfMGgx81BjUT+2/TIx33YxRIj2waqQVZMIpQuNe3tgkiF4M2FfIn0ADT7Gvpig0h57ZLDpt0BgbOXXIXs8Bagj9QRNvduFlD0w2Gpsk9vCHO0g+J2GaPb6XZz3KJk+RuJWOEY+bQVfgUuphhg/nFn+RuWpffXTxFv5E5s6Py8tbAllR1rudePrfI5XEq8T7KXNO6xeryghCIe0prYt2QTukPYVYHQ55/XKckrdwqt9KeL5fNDi2uHv6U0/yRbRIDIBdIMt9GbYSpnQgymgUj2bbZwnIlyo+l0emlcIIQZI4hP5N0vWexCtzq1njfSDRb9KTPPts7aFFe5iieztpbAqTNiSmJ5uD447qZMGzZGr4z+wUxoIac37XtPSMxqs9odE2XEZuXXTVArBgMTAGNeu3is2Ku2zpc+jigrVXI6s7AJDmH6SGbEq0Ve7HKAK+2dn9JkTFf3HhUNMmAa3bOFANm7oH4qkdX27AxmW9bxfX9EcDAFvxZPzJ3vxvW43QzTxRse73Qt3/5YWMTpYXbzVIIk2dnXnOykaFWFmCWZ0QoTjAQWOiBes2SlQEMmOdrHKfK1J1dRvQQZsuI9uzMiHi2SSaGLnIGWhitdEMbPkE4eI26MdqoUb1P+NABE5v5z2ewZF+JGSgzFEe+BgCgHeUT72gyqm1uBV4Qo/CXtSsUW20s8t6Tdztq3BRyWEczoHeDtZPu5tMUOeS31CORxdcWpviPPSF+G0B0I10pccWxgNdbce0NBULcE1ldydT/GVzgvbhFlOwSeE4qac69OuxtQCfJtql478CU/pRu87Ydv9UCSyTWLbF5lEaZP4JM0NanFLmZZVTBkBz/kXN3tNOilnm+y1WXc0lTO2ICtCzSddhpbqWl9l+RyIc/JiY+lOmorRzN7C1bFvhOUoelLdAILYOy0txQfdOtN7garvmX8Q42fUEPOhQGl72MshuJ7yGengYGfL0G9zXmSj+EDqUuE9ucGGUUwBKT9o+T92Fbh8pAMkKbOh7BV2biOrKaOTBbTuFqe48fm+x3XsUm8p1aIQCdkWkJrwOigJbo0pKTW08qCf/QRa/TlqVah3sxp7Oz9WbCF/Y+4TIsacWS2rBkAyXmoPwH94NBldNOYaAAfGWZ8f+AmgbPbwB8OjKx9ADzpnTn/RY5XvXAXIll6TFnh/4QbBgCEjKnyDwAfCvHK64zX1cPe/vGTT4hrc3QmEdYfSUfxho27vtII5/BNJEcOkdprpQme5/6DvMigP6fxqk0lLGajNrR4+8cE7TJuQrKZWG7vyOJbZGPM45umIlu1LQs0dtoz9dWQ/VA8QTHp0XozL/8mHFmBCxXJAfcNqRA19lfIOCLDpVSZNR4Yu4BGJqLA+fmJQlptknvWziMUtScmgiRh0FEtcdX7cRl5d7zTMfLk6V/S8vEqSSxcG02Z8H7yks4mMF/Q3upbZeyGjjvC9YqEznVHizof5gKgvO2dzIimrFhGQg7BFsaLN+sqUWC2mh9TXbp5ZSHuJsz4h3DuVVjBqgmSkuf5w6h4kZSDBTInEkjhWJSLokT/aLigtTsK9+9Nom///HaRkCuihYlx/UUmiMnaph8uWC/mPNOYKccc87s5sai1FjMbbDKMaAp88etq1d5CbfN7Z1Q3IgEPyiG9gAW09X/VATzXuectBIEfikEiS5tlwEyLY3Avjz4Jgq1cYE40P+YgEwPdnmOS5cJNb9xglIXna/wKBBbtmCKSs4GjfsxvI98OsEaO7i3oalldsNqvfanUCFPuGBPIrR4oABhPyDTn08HdDiLXnLqZdocWY46ICileeRhu1lhPMemftYLiygrHm/jGcg9oBKYLi3bl94sPgI4d71BOUdlvB2tMv2c4b5di0ddvvQW6T5cPCrIoaxER5K0UmjNtI6/gGKIRh9KToifqDMqQEEIXBUF1lR6bm/yRxlKWblwhnjdKonaqan9TQir/gxZr1BNNiqqEVpYq9V0TfvUME7VCIb9IQdJUcjxXRWn4dWLKeTFyrBHxg6xTonbO3ORa636D1AOWgq4mRy76imb/44181PYzhcks36iSU5NVbIKb+HMirLDBE83FDMFXG0vd6D3LfdsFNYeZjdLKpkIj5WtJ8FMNFagMWft5wLRLg4xcAtnjdL/b4JX9oPBEM/B1guwdkWMNQ6AppD8yBeLk4dLRMMEQlaPAqeNW35wwhQRUCex7HUeFj9w7inpuOouqbHuC1cejrSLqOJ/qvVkrIPYmpiCw8jQcCwggacU8zgEUBZfj8xc3s5JOz44QVUSmShn9n+ckmhkltQVtearsC7DXXhOnd0grkgMLYXVwTiyO40STC8MjaiN1m1Az+qzdMtvlnn+1Zp0Ba95aiksRmCES5OrZqG78vpMSDpxOicyW41T+xfztY6Ekl5G6svDUSy+e5k+YSdHCdjQ3cy5F433NdBCZx+ttLIK7joRJ4v1pIyxcbCVIzO/z5m7s1CJszI63jWwr/ADZHTS7OKNDTQuoUOjbt1M48PSMxEn+7R2hQiijUo249zK+n/ll/87wNLCaRAZX+s+6Yn7gHn1rmJtOrbA0C/KyPII+zqn1yEF8uNxNDonRSCS4uUhVENxI5gnyhnjpqUe8hxYOiMuj/0MVzaWB5Rlm2GT2qNszykZCaQwpwzTl/sBH9X0xiwABTLUxYvFVow0gYtTGuysBgczkfTIn1EbTw2cWuIVKAq84a+kJx9Mw+4aDfVrY51YQq6HpeiP9TQhx3/TiMHpZq6vMXzMe1tBVkFF9/R2DcoGxEj1jLZJbKCkPYc4irDlufh+ZS6ah+x86JobTb2W3cFcEE06QRrbfLx8JoW9r7Siu/FaTONgFipX6yaid1ImX53VqWzcH3FJrSsYtwGvpSduvo7qwHUIhNdEEf19rqpINJlqkCEFPqPux2VcfHuootJeC6XT7RGZuLUOqdq6mj0NOyuWVmjW8z5IO8EjaxQ+eDQPatsPiottOcFcQNtogTaul3co4lohKVLR5u6rEFDbEKekAp5yhxxZBZqQ+G64W2VU4nXeFiSUaqZXVtuO4TbQbb0XmQtbiV/IBSvBdyfPsXzTFugdzCDmjWkD7a+tRD2JQncur/1ijxnejW5v1cFnnasbcC2y9sTxLdZchGbPetklm+jHV7Cicreev68hIWs6CqHM/F6r03HPIt1KDbQBis/xxsoETIZ6USev7MTfV+onEBiZgNblvwqMVzgb3UITdXMNpfs1neb1D7TuTTt43oc/e0u6HqVrMvWs28geJlhxUS8+5L4OufEe3x4Y+EOtpL/A6UdfOw0ea/G1IaqORX5TJ5craiqN3Dy/L5kVCU6QGko6I1IAFIpdJDwwDMgGbUa2KXMe9B3r+18vH7KbGPxGf3X8DMOsnW0h9WAvXv/ceqiWw95qlXd6shBVAPSd203Q4c4Zib0+iSWnRPaotSh8R896htFRrPn2SD2O85PhOJIrtyccDC0t0SZ/YAKQyK27koDJ0DyFZvzLmDIinzaUr9iZboQ+V98HqpiqVpbPfiGYiMnOLBMkjkCfsllRCOLojdBM7QfXyfF7xwLNRUezgBPXqGgkLb6DljZI6afFlw/DPUEo9pHId3F0UR8toRsYnrHPL2IzPi+p+eDkNKlqccdPbaVOJrZnh7CDUGNK5vokGMFI/UYM9vZNJprychQ8qz2wO9ljt5d3OdpOqcYy14YYfo0jXH4NKleAEBYuG3a/p8hZ3e0a0KOIDpi4xro5sbazS8/+tNyxDD/m0GVy/xcdFI8Dm8zkJUjfurHKUjLx/Eka9rsAVJdxxtixrJyw9AQbJ3kgd4VOG4uXgc6q9XQkuBAa4vbGdLjlELFRFBb8He3IYzHaj/r3HfxHg18vMFGaSuhJUK435JV+cPsMLfjD5mxTNYZpc+YGJ1Si8q2wFuawGMymXG5jlaCRjPfon56hPzIijLLwblENvQpKIJrKpAufk5AxQiNpjorZdakcquZNKU1hOJz7VoPNwajzvweeqsad2CwB75e7srPCAffVvrKTWQdrpIioGeK0O8cDAixIorV6Xu3LtZPLXbY5HS+f9zHTjFy48dPRoHeSnfrfwHEN8xE104oSZUzQPExquCiQDGIKaWfS+yUebywYPALPlHs8t+ygVUGB3Tl2UxTEm/chasmFqbrlbP1JRzFsUOhulSJ9jTBVTnKUmhlx7zr27hJmXxKuAA5pY5dRG52ns/Lam4dhRcvTx4/nRCg3Z3GEGaKs2AFti+GxWlnfooN8sXop1naEgZJ5uRXI5Ztb5zhr30phsZSymOajnurvy/M2IdzxTUZx/U3ZYgQ2vWvlo7vLFNrnfP8KZ5Kb2laG/1QIfmfhinRAWthpNEUiwV4NNGtW0ladDOPuZisGtBf8LTK4br55SKoV29T/03R8OZ8GGlh++XIenShAPYabQW0PP3rbT/8/hwzRWHqsZOo7Q6EzhK0N74TUhj27keskKUpEOQxry7lf1vzkT1KCkFmJpI/Iv3qypWEjBhHtCiEeuAF+ic7i31b72XHZoZK6/1J2tnhpuKuV2yrtqbwdhfZsdWw89LsoDYgJxiSzWm2gNdj9WILcoyI910RfUBrvFh7N+tJWon7N8x/N9Pxm1kPN02vRl3jP4B9T7rTfuX0ovNAiAAO1sERi3QK3tIzXPLLUVh+I16FAF9iq8JLBOk50pF7hnU8qSH/eq82tJCm6iIy8qlZN4vwZtCuqwygVAQyOx/KJk0k+8CDjuy0uM5r1IeO4OudNDtTJqL8ufAuyGqZn2+1bGQS+CmiKcGJtcVnyog3PAffuvec2fDQlbTSUxDvct9jdNnYInUX7yGwxBAzADy+S5dXEGwbC88g+Gt2Xm5lDPyOSXt0MQfL2ej+r1Ryijv5PQRIcHM+iDYMAkEGJECmkDskV01s6dzqAAeiPTVVmMSE9O5gw0OIsIESSUu1/swuwdJyqUR5uesr1Q6K4d4Cl4paLSi9iEgvBxpcTz4SwB5+Y0urKxI0esuXEsclSaqdNV/yfi+k2TTWgLmqqeIixWSSp4CIV9texHs+SFQHm2v0udMKlbMOOHdxIdoU0QRKHwb4PnnBzIoHFGB6svXWfFf2RlBoNdjUO26H3wzD9FALKZ9YvchGD27y599GqDwhGg+L01ZCPGuK8jJ2wepgDKyQWAguIKHwMO2ySfLanqeSdKiIfpgaSwl6XM/M5qpWAa97ZDJmfHpevkqrSvFYz+qVQpHgVHyjv2iMHpm0v0Kn+M50uMgTaP+fgIGTRt316Nf4Tas+rlBpkW+fxp8iU87Tia7MONK3GdTXw0SMpWZhXNMO+9C8bYZBvLFCmzXp2qsQm9AICyE4tY87g/iSaeZrNf4JIbgCsOGjOzZKYlRcjYnc5sHQEuQqBG7yD1AV45un6hkOWVr07ZxwGMn2PNNnV3crLrbJugPLFxWNRf5Z0kaaz4vfc0k6h+KUYyny5OPIV87dZtg1pwEFMP9oXa6n/mfeTk7c4WCKM5j7ioZWOKpKqPaLwzfj0QarCEWlzMqOJBFf1+jOSPpK1aGfkCKSlmX0DmUGjfAQ7xWQWeG67y1xn80tejvkhB6gsamQTOkjzou2JjHKQ6ZWPEOfDUv+7KLOlGAoa/zsqNpXBcIbxVCN4jmpFQFVbD41G9kU71MESp/hxDnsPDulFV1s+RxzVtjSN/n3pqxASaSpBnoMTABKvfJ0xbs5mBv7iN5VFYCszjN6zpicHiyDdLBAJ5zcYyIjTg4BzD8Rxar+GVUbrwpTB3xDItw7DYQ36F9PMeRHk1Mc0Fl5FEDZhoe3SSnYqrvpov7XML2+JF2xzq9VDsfF4Z0yqCuE9QTUiByEb4/VpXrVcyjAEsZWcmcAhcUO75GNg4WC2G+2g6WoXd5P9+phDH81KuXgEr5tq4c3UrdvnikWH3r13xBe/9VI19s60Bi83otIN1WxXRMYWPkFAgcgu2Hb7pxWbn2njZu/iuGhHLxbqqSqJTk6MKN1bYw4K3i6aRZ/ryj/0Kfn3uDYtA1byIOC4Jyq4QnJyVc3U+jdeXevU2hNJn7CIu+RdOqEUFqlHXivYFDWSvBGaQLAo8z4HUAIVyWHCMlQ1p5z9SoRxuyY4j2BOp4l13N202e2xzl3BVa2QRoaE3ZGA41ffEz+Azk188PPMB26hZXIwpLvWbThsEN4JirvrUYJVszkllFXMgfXF2xT2yTZrxgA0Xeau0/nFQWvC5TUZwu9AmK9kxoPsfrqPY5RLRNWDgWjJizDQn0NiBySfUtESHGyBRYRsok3FTtsyM6tMZ1EGpOwzYyJHKD7F2DHsFAXa3mfuLCFX6yqo2akKZaaINneSOCiMLevFd3mBjP1o9WyHMyCXm413kzPki6m1v4WAsaX6awz0CMmH71tDsJVW+IZ3dpP9yIacbxzv5MWaw6DLcz3ppRr9n6lyJLOLL8dB+YHaQbLmwoNvQD+oPVFDila/GAIfleQWQXmiHOrVfa4Yj+kBs+qGspqqRRpGdrXFCkgtHgOvB1Pl5rXhUbm5aMlpPrmn0pvCZEiNyZfJX+BZbwODmdD1mYjGRF6ds7IRmZzKTamgvXwqIJ+L9BKv4i+3ShPSW32RnTH1+oDmAXc0HwfAaxaRgw0AYKFUXIwJslXNhw4n43Q6cGdKVaNneBTdzgffsQM2jZVNbU0B1ZESHF38U9SywiMgBzx1vdf999ClnjGG8j9FzNl5CGkhlSoeOMD8a87Kys1vF5MiyvTIDv9XwF5lR5lvd6PeThbq82/JSTclIsYvmuyxeNJ3mChTytVY59PFa2iFaCq6Hi4QXm6f1A4yUwgLvqVlWglh/OwbCKPQePAF3TCqutihVMBDbEEuTCSRoLAkA+pHsPlcMfqPCmXKw0u5r55BoPgFySk/f5aPAPjh5n8zgPBujezQmeLRhGh0GuDrmnkRBWowPsz70t1ZZDcLm9tlRVu3ZcZyjmortfeOI2sg9ZrhKNwlOFA+vMt7tVNkI1lahOrkgXxN04RwQIjNO+YK3TVjAezFfPSifqzqv0gnwShsmo2j2JT5bzIpOtP9/fH2XoBdSfUgk+gFdR7o8Zzg7UoGh1QgZI9MzQy0NL++QZurnKlwwYRiO0vsHxi4EbYr8trOCfHAM/eE9OLaOn6Yle+6GucLB0xeU3j3rxyqd5M9fsvNy7aO09zwWwTdO6GRj8TQhsZ9wFxHAm9FV6Bqn0FqRCiO1Plvi3SmuQueTWBRLnwHrI1AZGqZtdyOv6vIQiQmfbqa3b98+ouKIwv2zaYkeuKIyVvo1aBUXVVCv5sHrZzs/bCa2l/pazdXiQBd4wymilcsxmfigA2LIHOf7a5+r2ymZeAlUGgbsw/8t0mZy7EPVDo8Tp9T5LgV9gzu01o09h+Ng7j+8PE3pyL7502Y5tAzum3Wu4rZg5RHWJs9vEVRDXfwCIMywMiHKHj+8cXGMKPRhcVy2t96JX9jGZtBe+6z7aMPJ0punQo54LHVwzuQvSYoTdGQ2bHrSmrGhPD/9JGchUj74e1YHcRLSwrAHoNMhMSgfeCk8PDWAX94WFFKJzJmgqJ1lFKOQb0xIpapOe4lQ+oGJGQDJkOWR8ANfwPK1NwdPB7xSb7ntsEccKFXWjN/kzJv6L85UD5VtYiNqDxxD+Z4ygxok+G5JO+PR4zvp2PrpU29kG03CIr3ZXN0bKRl4gyzvsj1Jx4gBAFxDtXH9J/cHDLfqih8SrfUZaOGp5VmWgf/ZwIbQ1KxkAEl9qNRvxV1a06JwlHgxnJkmrh3E8l9NgEuYkTlzoW7hCo88sQL1Oua42xGRS6jQHBBrzzp4fi18aCWHecTHcKAjt7424shNLhQhoqHTbX4+UBlVkQV4um4I2AuZC5Kz44oVRDOXidYxTtRYr/3LWkfyXEirKQIeIs5TRz+vBWKvOWX2HPOF12zKXKVfYlP2pcbpoGOK50Guc/UioPHKH++Qoj1n8skCvymF2bWhKnKsLgk7IPRHpu4tpo2W8Ke5YZXXM1ucKynzKpPnDiGgz1nTlbc7EbdLi7JSoYuncOqIUCVaITdHWqFT2vUJFJv1qW0mK2l3c4F+gMHWVcowPMe2pPXCqj5TwFB05fcy2e3ioDxOcvfqX6T29DLOqzQ+rUeIk0xtlTR95IsftSpJEtBG8REy0n9X5I7PQfC+JXk4aqlAITTUqE64SKtgh0KMHgYe1TnZX3SunxeeM3ttBmLLCNimg4udm7wsZmm869w6Ppu+QhCakkF6g9qq1ROxdNx3oVliBDf9cdTWQBJ9eqKiLd05s0QyDC+1u5vVQ+A27oyIcbpO8oB63cO6Ts2pQF7VYnL0pCZI4Vv9Hl2x3NCisePwFyXDI4Ehm/A/jex3DhzKqj0YWYNAM6zRuQtW/8gPaB8lxlMoaq1A7b6V/BFvvW1Ym2nYhEsnonuIfBoHJvhBslQ/qKl8JJoRwOxxquOqawg6SyAfPbn4BoaWaBkE8Xe67ssIfHGgAwYZ+jp6QaIP5dlOGuDFEasEkxvxAMAuvjRDzqmEDVEfCGp9QKjgQccDui72ASzZjiPY8HHsYkBRT2BFYjrymBDDu5eOsNIE4PncwTjjHOpaq+23Yz04pTmKQ0E6E2vDJ+qFygBPi+X53Ncn6ra/Yzzg1arSzopYbuy38MzzYqwQSD0qbf+HdN0GfyO1MiRSfUblrIoIOAgN7UC3jpbhfyMkzSJyKij2/wAPzKNcd+oym8z6LBJXL3yPdiMIXlkKOY1j4v+g4wf+7Pawj/Jy3sKztsQ3q17ASP603ASsDfC0iEYxy4sA1ZEYXx89o+tAehmOfJ9zZVfUNIT2DOntfXi5GX2qsjrbmV/mdBfJEkPKNDBnvicpMeXbhmS5XikOlCQtOPqKNp5UaF7t8ddOzn4Q9UpOshJ/bRs+vqcakIJHnBIMHNLZSIsFJeZ81WLfZpuZrvTmVR6+j9DApRD7DBjiLPECd8CpwA5G0gZWbHK+sCVQx9k2OaJmhEPY2LMQDIcTxtMmaZyZc2LYUYN2H5V91BTZA2APBYaiK+Ao56MKAxO1S4qLZlHBT0qdQZmOztXGmmAR0OvHUnwrr1SQ+h1NVQq/RkRRa12WuRdULtTXEPF9FfA46TtIwnXmeawnDaHsiohLNPD458tYXzDGxM19IKhvPDUI6uhiyry6+4nLpjVdhjwihfBg4TTopuh4/I1a/pceXrf+3ePsHS3b43vFTHK+NUpixgExThWIlTj5jYHUI+cnT1Dfy+NihL4poIjepRIuxRixgiB0z02OWPKs/WLpfUp/rWXVsssG5crlm7sY0+5KDmfMbpb61ZHD55/SZmowhawPYKbj1QY7M3neKLxtSQoIYeFNjJyUpeek4NsfUtRrKNLsFCg0oTX+rinjwK3NBeJHfUqIHiX1afPY02kOQ1N+o4t7wGLXr7bKZdn7ixH54mtJTwTGz19ms21loJFgh6W1W92vJERI8ROauZAsASXCaEEmER3YMxdlQtbYcFNjQs6p6lAKDrDiI/bVCWses/WkWMHPe92621Pcr9h8NNkKvyogbYtc6/wzZz/KYkBdCTcMyV6AUU3aQcyRFin3waLltyLx2lD/o57mxiKo3j18Fy5tmU2BQIZPHo7/U2RUWjhHxJv7bCUEIU/t5Yb8pqjPMxJ8TEFW1K8JSFuemtqNUSPw7jncYMIftp78HNPe3fCgbshcjjQE5s6oDl7BwkpZRmqFoJF6y7eRspKWT2F9qh6Cu9ISnSnmTj4SYNoV0vpIpXlKT/5j8gBVskuoUJpT7mji1FaVTF4FI152rC82bjarL1xKASHOUcFC82jXb52X6zPs+zoldVkjUV/kL+UcJn0BnjFeaLWjgJjOHpBErnQxOKahSzLpGaBakG+X1ttSRISQAmcxhKalRUzDJfZeLzRt1lCE2zKjiDo8z1U5mplpbTpxDEyAeXZBWvpCHAqqGummZOdWYQLqSJxZSviVa+/00FCnaPpEgol+H5T4FFIxrCJ9VPerHBD31n/bNTBALrwNHZLAag/yPk9etID3BE2nTkM0rbUY8qSaat1PVpIfhYXOl4lS/aazfnAofkpD7Ygqmv8ZaMC9Zxi8X67czRqpUkfEcw4PZXCHTE78Bs7sXI8lyx8lN/U7Uli7sJRLWtfQ2+nZViogmQ2zUGgqAz/qPuHNz7fUvQM75sJ7MWsgMCoOoZnAgiC32+rLGYS+OW+9PmjcMIIkHXKy43FRYYj6JvfTXoylVGaczYv0qMBmQHdn77B1KxAbSXYyPYA0IMdaXmtIVRszDXv7oMrHOedc5GMoqKSEIkwNCHkc484Vei3FtICAxoBvNNQi1FX40CUbtW4wUMop5TBKbo59qPh5sJ32r4uFJ8t0I8SkY7yoVWu3anz9lIP6BHOwvRuWn8vnHKH5jISTpKCBw3XWh/63CW4+SnoWVIjsHQJrvmL1SEdr6bdOm8f300WavjQnkG9F7meZ9kiwpW65ffPdc43h9Lo1JA1IDzlDB+HQJNVvpqfNy/oGLfqtLmJtb72HU78/khEU/w5gMBXSZdm4hOtespjloHuA7TbEWuar9IWEEoyHtCu/+9xoWlfiZbmRFMhFKTSDqQtPydvEF/aUkSwkVHNNx7Cx9mDMJk1P35RWBO5q2UYKm33XZjxnTi4+jfEU2NahEBI9SCwptuUIPokUQ+tZ/Xr96JsjhVGn+RA/guV89bJFVaoQLW5gp4+OeMKSiQVzpu28f+chsKrsNUUSenaFJWHuMpfGo6gLCxwD3o1fc260J1UCro5A9TVM5Gjs8H3jk/eJT83Dx8wT+3MO2B+h3mGvdLGaShjEx9+UK8KwvvDlHFbxc7GZOwycXg5pdxHcq36IZXZZKTbazuByq7rEY4LL3IIuH9kMR00FHlLa7d7jb69RdqpJSvwpy1Fgak261xdNwoxY5XWlqvvlUhMxoW/Fkt5aU9uePvKnEBPBi/sano5pHyW5/9YIGWchGgpmEdTd3iWDuwuiv2ayWm5HURJcnVkxZjfuz4Iq5+A5La0LGz4AO4j/TVEL4fqgOu5e7wSRsDK+cHNd17If3m7ZSSgkgtXg0WxzX+GJH1fKMYWO63fMsg6kufeABgWJvpojLoO4JpZubOYFh7LJdfGQlw5chfKYCKUeMoqUabI0qKuvV/NIdCzWfntanMY7xhpsPTAYbq/nnxWnHgi4uZEmiWZ3mUUR0dEpv+lI0vut94xHCw3Mv0YXQqRtJIwkql3ccUK2eMKkiFhgDHosb0qRu/k1GezKhxg9Sj1NTUZ+dTaMZTWLjyHXAAI1VHx/934i5AVH1vWdWaY3p25g4Qzzj672CtPl4E4ixuW412kw484HM6mmWJ7aRqCz8EB6dmG98DDqrPhDy7rJxd3XF5B6RcPZxkSOILuHQrh3XuxXdqrwmfZmsaztrNfkSdvesDvNtTJX0szPmUmBSJystNsA45m7gYTcFWXmz6x7okfTAAyawSd01heehloWUXtdYmjKvZdNiGHxKTSQE0CdH3eRTylXrudNC/bB5K11uiQ8T8WbRvCsn4u3yumPc5CJOUWFeOzaZJynHJOhriVhIDY3y0xIiAt/cZluiz/zQS/MfsXlxDryYQj1y+t8hrDl027/JbsOmYrGHNDDyq50G3fXvIFSSakF3kbplI9lKB97X6S7EjRatxG5mQ4KE4P5lasz2U7osFbr75avm6g08qhDCqtk2mkWbBIvCyE1SeYka5tYMptO0C/bl7U82TUJs7BNyGH384Hw+rbN+PN6SB+yH0eihzRl70RInkTgiadHSN1oVAlycH2KJVOmdJxeHJBpXJWGFK7lZcB6U2jjVev1M1pnXJTq8UcUyY0szybWd6mcZmVRrkuGxa2ZaWgiGa/AlOJ5KPshM7mt/rcLY3zj0j6/NVKYvofTohJFok4lN3/564/G9qhb9JSXP3kGiYY/DW6eAiG2S4mXJCKl6wjwq4LmyEmqEjrZNLtN2xTugWyplmjQqy7g1lVHnaVM5dEdazB2T3UgZAKS35oT9XZq76UI3zQHUf0/5ZBNoUsWRJw/KTbVYf5FRgPqB+CcFMyoJleJM3ekHH1fkYjwphmG25a1+t/gblPsqORXZxodfM6J5r4KrEahveWSw3wk595NsgaHbhewLm2evhjjEWuTLQ/4iLEqRzc/f/1zmxDTPMHGt8PGF00JE4JmvgyUTLWLyMbG3CINVGuSric6VhN0jAQdpsBilzczZL3ECIs3eYvyeJ0kQ2SKcqimgGOSLn2okiHYqLs4CXERGGb1ulTCOtYTvCQ5OZNx6srD2UPrWf16/eibI4VRp/kQP4LlfPWyRVWqEC1uYKePjnjCkokFc6btvH/nIbCq7DVFEnp2hSVh7jKXxqOoCwscA96Fm4Vex8jzITQxyxe/gl8pq+5j20PKQvVWmeDKiiwtifIy2JTcwDEJlv4p5jCVl2ZWdaXlq5WpIrh9KU4GqFP2fohdGzZ3FSuY8/AshKQNPc1yqrUQ7KNOBlW2nJrOrWgo9Wys3bFEDA8frV2h3anhDRM+nSS9UnZYAqxyklQ9ENsAwcGqZ370BW0lqWU0NzEHRpAPm63vsMtDm8+grvCo8ytnnlTPhkGr1hJDNZ+PVW+i41g07cOZH4mTg9BCWs882HizktXMT9+k0w8Omt3uBYzg1JDoLrAmDozTJRCwdoF/I15XHtUJ3ohObivCya98UJ8Ri/+8x8Szt1XsxfB0gXFKgahcaD3Bkh/cj6e8cBY3dioQDLIh45ilStssgltvVFoygNiAi6OKS8QFW+hysA1hd263qTr9dRFpFp+FvRjycOowqVp30ho+k9D7y/yi5to3cDvRKs+5jCcBvdzyNh9sSTHIIQUo5VTjqWFbVGHYbKeG6GSPX2UCk5pjQz9UKlKr5MV0Ia+NSTISI9Po8mHuN2C8YTv5ZxD7vmERWTTgCsRf2JFvGY2HI2WgdKulZLQ0B6ZvAZbXy4QvCUR9n/NIIC8rCDkkuwoQhBRDaDZdi0e4DOWxXMGIZ422mfvUFvNEsV5GQ5uAICoe91J/67mDDqiCjaz+HrRwMt+9IsDn/zIVjM1g4BaEwhy0AYVdZKKufDlW1RnQAVcKCRSVmroOtTiFiytght4bsp/9QXgIs1FvzM7JgRkt0sYJvxi0Tu3Q9putOJmW3TSPiSITb2aYDwPFCrkTkLgjTt0iou0KEMbrKWo+1X4eNZs6TIXlOb8yD1GoSo5uQJI/5402x6KsgBe9DdsC3TRcf8yfJa1txIpnjqhEgOYjP2DCYAh6jE4iJ0RkXK0NflWxemktEcwG1iJSv881umKy+RFzWkkQVI2xEdLaccZOaMq1+Zrk4hJmlOlKMRvM86zScZIhzX5636S9qVvROuY4ehk2VNoHP22DzuH+01MuDHCyCm9Ykjc85oJrMHDowju+OFsV3YTRCKoX2ekct7hiC3xz5FTPlhCoI825IXTOo7V3Jsw2LUIBBDXSI/5VtR3RssQLeohij3csAXGJJdf+4idZ8ABJDuWCk38lHeL2GuoJEMOOED62jlZQiJa6bbwM33CUGX3oSjA/rIgH2Q7P5RWmTKkA+Uj+UB14NioYXN272aJMLVffiZcfkEseqWsAgzjYrue2gtehC35nzW7wNqTq+wZk1NxWPg1UHgvi4kWWGNG2CRAnzpynmR5gzmeI+d4U8USs5RMkvq7sv/TFABhR1AO8aJzqhFq/nWffu/61b0QsesLWgK6hrm40R1HLNIBNheUl1N4dNZfPXFlrjFNbfBqCrBYVbGJEpYNhufna+X1PyZR9KYUtnuOj4kxbP3Z52RJpbCDTBxFmHdo36HJ6UYsyUZndjLkQ2Tm4QwTw2poo78E8WA5EQFJQ5OqcRbJYGtCueX+7D+DosBHZm1nvnOp6+lwVPxS50ARwZvUEeTSXsEM2ELoJHO130YwYbraQ5fuNqzZ6SOwvAArOhDTmjKUaBIQu0mrbmxK6nEvAAMoUtZdnobPxXkbjWIgIRtFNDXEQ/6JNgYhqIUVHlagxOwlq3V8/6EAYrPKuYH+0fru6AZhDdQWZZHVdIvbVDtaDCez8iiXSecTBQ4dV5Z7/7JWNU1kRqT4px/2CdUFjto3K/dzECa27KZ34gQoT+RKUlLgKcG5ncOVDj7jX+TKEY+tTm/CfQITqUw9xKyHa9Wx6wcX4t96m32HaV3HQF4J2+gcboMcmpJ2vVvrHVJk+J3tJ4qoK/fgrWg9KvuxIzFR7rNXDKYR+YmLk7iSNXFfH/g36bvJPJ0V4XDcCdyQOVmqOOjETsmS2x9TUuWF0hHdk8+gJwdemPxOc1YnLD0s1oZdatptecHDB33/UilWDhPfBc+9qoetxQt2j1nFS/Y3Hjaafqv4HsYMV/gm4HX4/XkCzGaUlQMRI5AxlUGleVeznQNogFc3pOrdK09L+9DJbf76nrbwHSjGXpXqAXncBrGAgsrdGds3s4ug5iWTE0mKJoYa5q9XNWObz7hWotnEXdXqVDS5dgBJEcjWxcpqcitQdNOYlT2FL2/AiF5ZtXOeC+Vqcf14898qCIjVAmKOK2AW2ViZzr2hoya79Em67vbIptxjZ0dMiyLtZENOckIs02efJQ3nO1x0eIVI9rIcI65siTWmyoWrS2zGUOPwCKFp9/VTRPSdgDDGiBTPeGNpIGXLdb7v7xA6PIbzuxgXQS/kMwx3+WY7vjoh/UtHAWMeB5u5aq+RfoGroogY+3BTI5htIto1a1ujYUTDYWldBBqw26fyVPax6qQjmAoTGnSuqNErIujs+c88iglaz6DuOnf3MWySkpLfGqg1Yk1c5hWfSXt//K9dxsoSEZpAMhXWGaL/JMdvHDR3pMaJdQFL5ASEKF1lQbfNFfx/x6WwUBRj4bS+NxYFLsLarffNk5yFVZHKmLZpaFF51dYMibILFRVqTquLAlAmjdAbDeXKwbHncrSIybQiSy8wUkOQVFhjIf1XDi7YyC+Pa0mTZn7Rh8OMC3r7c4RvbdELW//GPoWREJRPuWh5s37XD4SoALbz3NtQtrMVGPUZzIh6zqOB8Uwx+ZzFBnsNkIJc0QAybNIyE7qVIXRzDtVGYyOTlVpVOSJS05Ok1iLD4TTMDkmyqPK29RXDBWsBqztOd/vWhhXxfHwkAmupXsQJWI5zPC+w+iFr4r+xKk1cIY/FCpKkdRjq4B7g9awEaVX/lHISM+PRWViPepOUAnnofv2Yo6ROZxBb1FR/zkVT05DRddQfBEmzY0Fe2w0blnvPgkltQwNcsO4BRBIpWs333ExxRjO8CBljEMII21wkmjpc5F7V01KnF9wLzUzDIxj/x+LGUn1qkZbHfMvLbEOVIfnfNE7BfedAqpbpV3XUO8I4WWU0YPynHdJ0PJZv6SSVe0ywcY9aEGJDINRK4CkdjyhwNdpSi7OESUufpF2ZHnY5I5v1zkyv5YJheuMjEj80AG8KEowIq9f5CMNr3A8POPQMa2SZoOFaFmbGbE1O1pKl/gBhvzs4Ki9OCw6wiiDi6PH4onGjqh373DBv0OaxMx02cnFp270H9Yl+QDNiGxBvkb3wDTvZ5nK0u9x73Ggt/9ycRzqJ4Ta+amH860Tg2Hc4qIm/1qu3n4agpUKw6fFrWhsIBIue4+051mFukqvaENFZkAgiuB8at4p4MfqQgA4HNGdl2rdYdtSQxcQveJbDi5h07zfy/BKHNssdiHOkKPBjqFnkHnmMgQAKfk4koXVAsveoM69ZRBFdq4H8FxHgdnVOQpjVxxD2zeeE8D4HujXBc7XifHVb3MjhSS4q/2v6o0iBuwPIOw5pQcicoC9Vjw8+4V2Gvv5gaozl99iKUH0gX/uot+11Wz2uiy0YorgvRwm34Czf25MTjwCrHMqs5n1l7GSCaRR3PWE5nvTVZVCbCLpBEf2JbJKQnJSgkGhdJ6GHn/L26M4j7bPFRPo5n5lKQjLeP9poUlKQR7MTMWsa9FJYPjTG8NeHtyxZU5wHiAliu8U+yKmGvcKgu8jvZTG53xG2rAMdWWBhzhuVD4+wbHqju9b76GDUd5v6bng33+GkN5PngHXqV2e7HON8uThrivvmQtLTnr/4OYWIpl5XOBoQDgu22inEMqOcaHiWeykdPk3/DcI5v1lW9F2s9wDKO3AUD9zbw/zlapyC6nI+gOWji5xIB9z6pxNz1/YJWtiJA6EcZoZ9rqSg3bcWb/TtdZdlzWA7jk1QoY0vTowYj2b4+jA49usAOlXGL5POF9cgcFT9ZrgpC2kyTSLzLc5mZbEMoyxwWtsa/Dan0s6/vPmzurHxpUvlpHxOXT9XnT6qOx1UGpO5bVbi+mxHpiXXq7VmqGe+5AMURH2fSKe2HtDCyua6p09fwSiGH6oRm0cZqz5JCiLpB1r8dMtnmWj2UjjoiiFhE8DB59MY8XuvFpKKnzyFdiiEPrh8Hz2aCTnqwDxL4QSLUYJ/VtMs5v0C+2sjmR9MKvXoG2MhmoXfBxwKhyf5by4XpKp6KYVeFmwWjIRaXOLVXwoXyAWPknuGnGZtgd8M8wOe3CQSqNcoU6sVpNjqud56GSofGbHK3Nrt8b5dKoZ1HGkXj6DrOssbfCCOWIkPnDM9Owrm8zKH4IT2WUk/AzQBK2srY2xllkt46Aeo6d+dHcb+qVItA+62FOPbNJ1D6vPYtt0hq5N3NrA4oxlF36AHlE8d8kta02KTgQpSog+oZqEbvBkN55IIfQwZOB0trp1Yzw4wp0DBuP/wVijOKGONLd/o+wyK7BPa7uXRNRfWQj8HD6m5V8KtZA4rX5nLPz71GgAQ1Ddsn66O1uekf9/pCIukrqdPXvvJVJ7x4dV6Hy66Cc7nvZDuJLXPqN6T/hpY+rQuwysIRC8LwWS9BeE+oCHCkIEHgxsL/vnFjK8B9PZRDrCeybkf1efUTfZMqAIfN5UQ/qmlwAe0mrHwMqmC65YldDACGMqRsYF9KXzppddEp3i0EPshanLIKOGDi3R+qVbxaOE4Ea5QQ7GhnH2MtdDKJr5UMacuWroixDzkFKnW3A7B2EdARu44/EcUmOSH1F1JVh+lKRLb3cbThKC3vUH0OPHWDp+4OgOONPdEcIzoyss194PmuoGPQSNsA47DfRI5bYcQ48UMDiF7Bccs90h53Ve2DwiGc8g+JidasDI65gsaSRBuvVKUMG+f296HcEkL6OSCvYAbPJeWaIPrX7t9tGwH7b9FU9I3ofpyTLctPJQ7hmvjWOb9bnTt5hROCZ4zNfy1GbmvT4a/rbm+xnwO0nHdHOJAI85a8hamU4dBuHLl68u8jF8j4+jrhZo4PvEG7BW6Rxn3H2QoWrNYf5aCaPRQ9FHDhziG/NQe7jdB0HeNTQQ8V+w4WFELbIc9rWzX/VSxZD0FvDqshuzE4jktKklB1fwU3IQTnBJrPYtiXJ7NiiSlaKZ71HsIfPE3ItE6Eszr3ev6V0wXKKoSGQCGEcnc5bLSpxutgzRd4iyMfU+DQR22ONyTfehJaBii175bHBsCewxlfp4+W7mC2+zMq2JAA5FmP4VPTuuTRTdeKNlmDVuq45Ty5adWke7g+rT5mfFG/5+18PMBKiBBAp0HzTQYvJBBNrfltZBHxCTu5sI2cnzYGtmdY7aQWfhrgWWvLvDgTIBcQo61JtQPoJjEdd2Tla5XxJfqn0oJz0RUAwlFmNwuO+4M35yWjpRSxBNUw1cZK0zsCtQZ+xt4jxrzaUN/ktjB6t95aMxPiiJgpxGEDi8azzNRsefZ8i1EqebDQCh8emV/Nl+ebykkKrhh3jN9l+XEe726u0W2iirveSV/BRsulCT6olj5QucgJYWzOr1OvHNyCG3b1JZn7FTMdog06zJWCSjzxx3C0IMdvxg+uNtGaFfsQr6dHJIaE9mXKOkUcoTP9mr/bV5r8RlriDojcWwxwrTJ87rl33xw874cY1DY3pRvvNL60cfW2n+pj9I3Pc9VH95g5DxPoVmj7V07glSA38dwlmzRus+M/LV/93nCGxC1cXg9ZyS9Ao/mKxNNtJcuEE9yru95FjnNKJM7dqhqb4y1JLEHPESVJ/RnnXQalM0coAxFQ/9qqpIVNidR/LAvVE5tNb3Zq5UlNyvjerP3TX0X60R9cxxqqXLzHg/hGBwp5iPAhpPSHIxNwpTn7l934+p4VitbhJKvSIaqHHlNuSP0CR6stdf05DJtX8tDy3+Q3xy9Lq2+GGpiL6y8k9Xvnw6hWmbCjQnmtei7T+9WFaV4wy6XkUGaASLQYhNJse46U+S0ZA7Rw35OY+qomilNA9A8WP05IWLIw18927n8nc/Df2D/6YeBoNlBgi305JW+/mwlpfHy5z6KqK2sqWvhbT9PeC+ipZDswNG+i4+HhTbwGTtVdYfO+shZbYobN5kDd+0Z67rjNTA7ZDn3mFtO9takSuZXp3veYQj55mi0VIaRfiTe4ApNTBp3slYTqsuZMB0FIwTZ/SfiijHHWX6t6jtq/YJe3gx/sQCk9Cb0L76ZD9GPb7jMgyn9wONYRclhHUusJcSrgJdVjAAA81KPiXhLE9bsCgX4MGhi5Y0YCkN2PyYq3xnsKhx1KCwk9ELVJMLsR3WLMfillmstCkIZ4B8D80yLJvOEJxYPDE4DuUk155HsCxs0DhgNXASeYhWap3WpPiWevXxP2TRfOfqlZ/VWq9DDdj55WE0zoefoIZ/zBiztlQFqDwaRMqq3iYBGM0F8lNq0x0ykUyicV0bpl5gFpdQfTU1vfqJUoqouxwWtqKJUt+Vgj0zs2R4yQ+/5N2WvGz3f+gsYkewZq2JJMm/pzXZsO7/uH7baD24+28NBAhIsC+soodnpaox8Mh3LXBPzz9GeZNOS/zAg0NoFf6GwOpEQOiCDsUeB6EbVmOHUCMJTKmOz/HkCbNLcdg/b1XfzC7ad7raC8CxZ5ZQhtsHekdQOKUFUx7EFWdW9dFoxgHyyfX46O/5a+xQuzzZ9r23Ofm0M+QfV+HNIHFyO3/bCopoJ7oFFVf89JgMuuF+1Pwxa3GvLqnjLiFXX2QfBupQMYx0k/sbilmZXMLuukxBHoKaOaIwmhm4peva/b4cmgjPjxsg2xyR7xP4J2gFYFwNpSchHVOmh75wYDwlvP0YmGzuK8SIMLAxK3B3hWx9bo36X7jyc96DL02Q3LhWIXYgJFe/8JOEzbX4+0u7I/etcxmJrO4QIPi5Nag69I7mMeWpxDxuKKIe15X/otY8lJbJDP/cgeZ0zHJLqnMAyQKxhrqYmYaossuvd4iAqLBT4lkzDy4GBxcK6ps1/Q9fdXH5ulF3z0A/6d6DMt8mAa3g5AHYO/9cdUMcybe0HBmXGYxp5xbvc6vFg4P/e3N4NFnaiEW9jhq9apPXXVmE7WK3Tes+HZi96G3zgEyf/AhDDda+iRBx5+QLrpdoDKQT2KiY14+/QjgzH/2fuQa5UMZ3Uk4xHLqw6YMpH4rthpq10HkFwxmwysOGFr7ot0eNaO5dbfz5OZxyQZf0OJGcqHKvqJJiBPuTtgglekN2w8Mkg6m/aS1ciXaSaJbbGjADdoTopSObMoSKmHNkfD4J4KMpdnf26zIRSKDt98kVPSpcC/LozSSbCB4F8S3ftA9sG7MJF8a6ln0wPx8P52Dwo4wL9RtRNfU1RRwmOK6t0SliN9fczAwcijcpJ4jGOo+FyWKdsHLFdyNdhial5+cvNG534g3s2t4f17zOyqrCb+oILphO9vIOid9oxTJ2N/nkmMhM3212LXah+y0TeREGh1LCbsVgicm/gp4l/tRosOia5MrqFdecD9OhNtm45DdgXE+GW+PFxAd0030hbLOEp1wB9TPIVi/XXQgqY5HaOrjHmy8nvSz9BINT10wT1AY6Ncjr1YLEAH+GmIeaoAPYn4fmeQcbeH0eHByNk6qhbpG5lyx/HPoTkG2MOrvtxQ/QAt61pOVm6Fa99Bd8puHOE+2IlCY3hVI2VRFKo+STTF3mE0NZAIN9Ekl2evciqPHme0RpLfJr89MLHvQqQcRsl8yRrAh0/h5aUOjpsFa6KpxW33lkQH3Jn/QyzhxtFX8Nb46fUCZf/CqJ+ddsI/GEAjVCh6Db+uUN9kj9QB7qKxkrZFRlap3dwV3W4+Kb3FK+cQ2WSndzwfQXCueYHOhYjArPcJzPlSuNUU14OJ1sK0PIN83W46eBcyeV75ubtCy5NUBJpBNQhWUR2yvTT6mIaOIj14lt+OPL6e6ogd3c7PpYyI3czDhX7y2x0Nnj7uhmlLil7F/bvK55CsSI5CNHpippjM/wT/fnXsALwYcngPXmAu4gZKyNf3anR9Qha9AURvyEgfl59W3zX+w3BSLMRseX8l5mjzKd6PAUm5NG8524aTXnJdYuKOlQVhGDOgZCTbkaMLDB+Qo38A4AOaUr3XimAwUr+ysBLFMqvUR6twpfTCqn2NaljCw8jxfYLhq0L8NkygVTdGo8aS/qIixLFVvca00PRbhhKvkZWLRKIoeiI+o/Jyb7thtm2JNjuAV5BdHEEfxF7Yb1NZePf8UevcMJH/o2rFb10yAMxiCz+2YJNT/QT1AN9M4CEFzzo+p0XzujCISrk/WCkYjzdJmnRE0AoFyF8GnH8g1wmQ1zC2UWmV9w7fh6nQGFdQRWukmz7ie9m7dcry+R1bikkjrEEkJ5U8cWvd3aE1jS31Y63EM7WtGHFoT3vllBD9F7F+SjrZYiKl711xzpXP5V/9XBAPOqIXZsTS3lnLT8NJi+dhmhVBbU0IXpGAtvPBJZRFXj0jiPWw5Bbf5pRDe7gfBiaxB4o0I7zdqS39f8w2UzDSt0i+ENS5j1sIRS89Fgl5HhumZ0kYxrrlhxMxQMZAvWID2wZFZZ6b/XOebQ/G9ztLV0f5WCZianRSVB57uVQYgUdOyncEPEBTXx/Zz/coJbtLjCQamZTC2Hqr+HDYN5/DRnfYryZQ7nrPI0pVKPVmL/1cXNC9jEd+hzRA0GTaRtqcNQuJyJ2dsbTzE+DIKsoXvCNKZUSp70+2Ti38piPZ65GWhRo4YKaiwskQpgWWkLpeNK5QzfT2KF+mdtDyopDtrzo8ZNKBNNfVG0qKcAQuQTuTsat8FXzyfEow3NzoxktDjgY0RDPFroorVYzuKyvQyggbIqyaBObziJfKEiFp65d74I7cSFIJKMggrY5JoT4vlkKvWIvY02Xtn5AIFAJIIWNA8BA3LkCl8Ou0iiY2/P+F5kHSwRfQ8y4EQx+eAFUZcF8ncj9ZviTnYU30N5CPg9oXbdN5gu5Z7aUd46+HepYuXVaNYwLhLtPx96GwuPKZRCMSlWjnpOJ1KeTFN88dbz5G5k5wz4cU1VDhduC/pV3+p2PP5i//g5asOSabE78ek0wJL9MtlIZTt0vfihoux6mzwNTkD/NrN8OtxTmg9VHYiRJM6ntH+sKyami+GoEQA8zQ0H1E/E2v7cVXi9nCJ7MYVwcO7eFeQRllI8fZJIIo7gWacxLSK3HPeViXTTxyY192qWMLGgvEnWJZMrFh6GPoAs+t8BrPmIUbdxXT7yItLMUHzd024PEOGE/W9E3d8x6XQ0AMWe4ygX+jFwaIC/s2puSMkhrD94dpRg79D6w4fQxggq6jG4ULPOBdmKsmf0GUgaNO9opt8gP/6gtV8HaK8c6i+e34x70tkciSbU0uFHa3ZANBErtMK8lC4DxAgOR3lE111g4i6Aey8hgP/qN7v4XJphJVQI13e1CayeQ8GSM718+5R1kmwMZtZydyGD8YbfDYLDdKJEKL/NQCJ1AWOfOL81Ynu8MpEY4FOYOuwXU0DdhaUZqdFGc9zl3W58GAqT809u5MmfZ4SznC6ROutFqC3ps27vjF5xHDLQBGR7SIPCuGBOqiOTjSkZ2C0uztzEbl7bujfAUKhjwLHsrR02u9BhJQAlv4xYm4XzdU4xbMwYCpDPvzadP9mkfxYPp3iWTmMGf0FQOkZ7OsskV8rH9p70R8H1R/aWqwSx2YOM72YLV41u78eBg6zG6rP2QybnMMhcFjrki727eu3+jGxaio4B2AQFVxhxBjaUL6XjVmTmP9trQX7dXxnz8W9ZausTZvn6MJEmBplSDEKQ0syLpxrFGH2p+MtsWxgnkyIY9GKrCBcYNsC/cvjWKMYEKKu5YnNK7BsnAkruTS548IdX8t/BlobW1fx1RDwOUDXjiLETyOPt71x381x4rpz1KJWJJp9eiNlODl9G03/nHl33eVn/K/WDNIt2kWDYTOHfMy2BfuWgKRFN5Th7b0zfz+OrMY/s1io9A2Kd+GISU9jWsFULbhfmjheucRLms2dkL7yJ67tdwcbsdmK8jb/UeZ5U3OxsV5GySXROho2OJc2MBmeZftBvENlTpe5zoEGIYbuj9rjznWGbHOI0go9iCt+st0O/+3HJSR6ReLvjlmYGS8/jaoUBYOV50CGowOFCD9QSjmSZ2I27OArWcqO5pkl2DVKkC7bNDl0YgnKHnu7EGK1XgRsVE3MZ37gsUo9Jn6IN0iTFOrlf135Pugc5dlRJWRvjV+Mmev3xeeqjsr7u0I9WJtHeAQaNPHLJABlJZY9aQBUsqM2dEwVC7Ezvd2cY/++y0JdvCbv3Wx/lQkUiimuin3VJ6rBHZVTkGZzdmlv89AEH9k+uQgodl0q0/DsRSVauvZnkgS+atF6WddPaIa98vHC1zXboaMS4DuTdAD+v8rYBWSMuug5qA4cH1U65/RuXuSE6noR3zGobgrLbAC9upSV/JQ7BfAw/G7gCV9UZvE3tSbBwJwpAM5NT7y4NYlMEjggbnX3Njd5+C0XbXikIAIyRPoFDE6B7ogS2pSmiEJyIjA5rfiv1sbPti+4MaNRkGI/GtK6HA7P1UmD+qWm9RNjtINCORrosC91TsKUvErw6PzdcXFX7YMxUVCpewQMUSCyEyjBwgSQzh0X4sjK3zSc/pDhTHOkANRaYOdhsRgm5bIjp//Vc+eXaJFf5nLZvqUxUT89fQdrAa+kCZ6QbDywL88Pn6DrU0oAWCdzDCywXsbKZ0jUDYUbe/dgN9w04mt5SJ5DZQhl9OCVBJe7bGYogXWVEDb/cAhVAYzkuqF3qdT2uTAxiG1WeeJrBYU26c52cFBgFRqiKw0/1FQ/WXmdlkRzrsbxFPeNtD4+0k4aP/ISCb0swLJctkdfcKPeFpuq/Hay6OUZP3JTIp2Bi/w5tWpDLGg63YC/evFUCcQbJRewVp7Znfx7dbx2DH3mCJ1Z1ECmYE0N+xM65gqI6RYJ8F+AC9GLBCUDvtVbXR5Zxj2eyOCqiQ5+DufqCNw7PO+oh1dPrgHx/L8Alrv3Oy3TaRyaRBZ+ih5shjjdldvGZKeK9RjZWQLYrF+q3YC0FrSn0ovVoax5EMV1Jfuk6a4yON7YL/ud6hT3gIBsbPHqLGr0of80bQOMHlWliok0NMUbrzvzDEvEZmqV4V7K4p8onLLcMhFOEldY9+hL8Dd0R8q2x3QBObJp8TAMzQGNUr5ATqMlS12cBmQmQAImXytOVUoRvXClIBzBkcXaLLy3hS1PzxBHJ+KQ9dqE73D5VGIUFSU7lcVpRIfKTrYYQ3+7SoOnoLScOinogtjln2CKzwuQEISoxBEgQcIaUV7hBRWiRPR4ccpVXRPlIZOGasVPwPIe2iQE+7D2ZRRdChl8nmvp/cc+ZVSWu4PoDhs9IOP+s5NP6zzla92eJFa8zSRNE986O2D8HOunsUSGSkajxFAr7f+56esgsKAJ2yFA6mI2N1Bcby6r1mlqEF0EXwN0xnZYPbYjoxtCw+U99i0Bz2aTnwZN9LANyjkVFah4BoLTXdoNEpPlHVNutdAV7fVWZ7qBx4VmZihscAdz6p7oEBcJiYWI3NqAxrxedHBL+9wKfIefBhmQssrEV24ZG/jVQgE0LhDCKPrRef22ERSzAMGDwl1wqYtkagH9iJRoFslrVrl1Qtw1TOljeEfaBnBl2+1gdPmJL/aYr1mLL1K16PWXLVUgVXCMsWEb7GWOCXh/KDiM+U+1XrdUg8KokngCIPMre/YOIs/AaI/1hKMvm5BscIW5EaTfn0STLWAXBOcnlZc9LsmZ+3oPQ/gnHzSw7AK1oLT3bDSUSiMB0AoRixc9Kr6VjbBY/07g9lSVJgBiBKUg87B35EQvNBCH+x1YPoMRXdIx/sjnZNynapzVNA5j0OX1CXgUzSQSaqWRbifZdWTk+kDWt4iBhXWB1/ha7CzI1agcsycE2vb8VDjbgQwdtnk6HuWTh3OcJ+c7h3qDKH9U2OKAcSUYR4xu4dm3KyNCSnttPmMtN+awikOTPG0TPui0RX8KVD5oogC5e9NAFdWNmcbAhriil2X/GSR2QblseRYIsoMIHkyd/rdCTAS3ev63VflZCojUiSduxIvmwvW1CprdJCRwJJM/x5FR12EO7IBWh4P0lQLSb9nWxfytYdAIzPEnukeYMnR99GvT3evpYRAjKHJMOHNNqjSdlD+qtdES8sDVdS4lyo60OqjCR4PQdu4hBrA1et4CCMUE17sN6W2kobufWzy35qG2vV/Kq4v1+r9xaccQn6rYsyxGHJ2ykMt+ffmKZ4Qt0M22JkaQNuOVQmC1+sSfFawqL/GsvGC2S5LolgT7tI/xvEqED5I6m9bjNYeYRIz7oEq74rWHz6x0Kwlx2m3KsCM2LNwnzp67+9p5FubgRmhXLl3wB3lGNbjuKWPF5BNlaz/+OeaPpO5Pr1vyzRuTvtNnGVwZm8tLayHXR6Y7DFy23eKwvnn1ols8E0Owc3V1+L1jdCc7qXccyNRw4uxxtCF152PDiqsDx2PNyDi2rGEGqS4qnSo6ShCOnoRlH1VqDtHEu6BSyoKi6lev73MSqXVj2ixZeOGSayQEaIsYrOQTCEEpfxpEZzzq/GUTflCQDP5L1UgUACd0H4/36BJk6yMsy/RhPd3Z+clVMyrHEkKBvS9ftmPdN6Q0xllk6Anb/ZWGSMFUwI3blaku9/tpZFThC95xi4jpfddE2sT7mbkDOBX+6DI2cRGuEoCQ67/WOWNFVZSM92Ty7mU4SkUF8YKHHYALNPUg7xjZMC4oHrd9rqDbmo0DrOg/LUZmk2UnTjOMJLmil0gNLRYynDMqqW1goSdU1GR3SAYeaanbAwyt1pIcjDGaOwoOTL8kwmt/lwa0rIxdLf5z4L7EM09NCRTkrVX1wcAKjihleVi1l5KtVCNVunmNBwoTCOadVYNsaM+8KYbyTu6hdZKwEGQ/OMz9pnxVD2pDnuvk7FdwPUpWt+6DVWcbSqDX5jLiitEDBt+d26sRD8XBGQ4Skly5siC7dAF/wVCFNHJZsl9YsdrwWr7pO8wOya6niCtdK+UEHrVoM2hrs9BB0i8FHv/ygFdLHK+6a9oJd4Xr+mXM7IpDTd7UfOPLGMPPN5+tEmrixVlkq/KdmrTWELi+WrT26XODevH57f6C0+As8kNHjVxv1SKwVkR/Ru3go6KFRlSbMGSAmKPJUjAqRmdG6HhWsgQ/tAJQT9Ylu0Zgl7SSb/NJI6Ep+QcB4ulB6ZDHpmgg7+0Q3VSKlFupB5GPezC0as5x/daoPxjCJdi1xgLsznRAYIER2f0DrOg/LUZmk2UnTjOMJLmil0gNLRYynDMqqW1goSdU1vM4UfpylouGN7ruoa0IeXkKqKIVQOHT7UN0jFNnBhcNYdEQeZWRb6MyV3nf3tl8WMp5Ch+15ZeJN9HOW9SySAA==', 'b3a308956c0f9bf79b86e6c7b9aec906');

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

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
(55, 1437294167, 'd52b6da1', '7d780f72409dbf770d5073a3866a4b0f', 'https', 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', 'html', '055f252c', '', '', 'TED Talks Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'https://embed-ssl.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', '0', 1437294167),
(56, 1438156083, 'd26c37da', 'fdcc68781b55b51ca9e57911ab9a974e', 'http', 'nhaccuatui.com', 'nhaccuatui', 'com', 'video/hanh-phuc-chi-la-doi-long-khanh-phuong.KLmAL2UPckCMC', 'KLmAL2UPck', 'e1cbf217', 'Nghe nháº¡c MP3 má»i lÃºc má»i nÆ¡i táº¡i NhacCuaTui.Com', 'photos/raw/other/BjhSl630Dzlv2mANkhp1oGu+zbHDtceVtj4+EaF5lEAe4dcj3hHC9EzM1SLXHY3r3krV5KWpoNTcJnC9wuHRuQ==', 'Truy cáº­p NhacCuaTui.Com Ä‘á»ƒ nghe cÃ¡c bÃ i hÃ¡t HOT nháº¥t hiá»‡n nay, táº­n hÆ°á»Ÿng Ã¢m nháº¡c vá»›i hÃ ng triá»‡u bÃ i hÃ¡t cá»§a cÃ¡c ca sá»¹, nháº¡c sá»¹ trong vÃ  ngoÃ i nÆ°á»›c.', 'http://www.nhaccuatui.com/video/hanh-phuc-chi-la-doi-long-khanh-phuong.KLmAL2UPckCMC', '0', 1438156083),
(58, 1438156797, '22557490', '16259d782222d59c162ba673ae660589', 'https', 'flickr.com', 'flickr', 'com', 'photos/128541513@N03/19439705425/', '', 'bddaa4f8', 'Bangkok Junction', 'photos/raw/other/PT4xxTEM1RAcj0LzUxz9UJ0hvLwySRCdFfsh1T1Efbx2myxklYWpSOjINP4H6MMa+t/fkt4U3Uzvfh2zESkFHvJFJ+HNGpWUPSrwo5IjeSQfvzLhxfx+Pm0xr059Q3Fq', 'Went to Bangkok for the weekend. Experienced the lively night and its multilayered infrastructure.', 'https://www.flickr.com/photos/128541513@N03/19439705425/', '0', 1438156797),
(59, 1438158471, '5cc16bfa', 'fd9a67f705082c34494066babf6f9349', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=H3Sy5cAHFaI', '', 'a94fa6b5', 'Bicep Workout Mecca', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobvRLUieo5I7MByOnbWAOSkkaAwZHAfCWKvCVqAP6rTSag==', 'First part of workout: https://youtu.be/ACPvts-R0gE Bicep Workout Barbell Curls: 4 x 8-10 Drop set each set to failure S: Alt. Curls: 4 x 10, 8, 8, 8 Hanging...', 'https://www.youtube.com/watch?v=H3Sy5cAHFaI', '0', 1438158471);

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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

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
(112, '7b1f2c57', 'c8ca4e8ff9bce681403230e155ad96e7', 1437639883, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'gX9ppqqWozuCMnCRvtebFPLKmkUghA7vPkIjZdKZ9SE=', 0, 0, 0, 0, 0, 0),
(113, '2e2a9c62', '4f29167fd8196cb61915c765b7d58ece', 1437818619, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '3MnZERkKKoITbMUOr8s83nlmxkRoZjFQpzu2MfmnASs=', 0, 0, 0, 0, 0, 0),
(114, '1f2e1d4d', '033f6f13ce6119af0d7d82e651a39413', 1437818687, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VkYgjyAxKuBmg/4Ss1CcvXeEZnM0k0xQINDy/xJDoWc=', 0, 0, 0, 0, 0, 0),
(115, 'b8951b5b', '79d1320f95f65c003e897f12bf0ec241', 1437818718, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'PXPsEt2nGyzshWNUjg62cyfmZAKkGxfvSoVVY+BOQtM=', 0, 0, 0, 0, 0, 0),
(116, '6fd167e3', 'd53002ff5f18f86995c1413c604d038d', 1437818736, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'CnHvwuhTcHFLH2KPV16WL+9p/7ba8BhAINOEaEccP4Y=', 0, 0, 0, 0, 0, 0),
(117, 'fc31b6a1', '3a93f8509eaa36a7dcf01b4bb049b104', 1437818764, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'GMXEILL/Rk6h6/dsPrMkU9NwS96Huc4H/TS9S0IaGUs=', 0, 0, 0, 0, 0, 0),
(118, 'f2f88a93', 'de760b9ec603c61a2b51b066cfa05e98', 1437818845, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ESgrSpnaGaCyzdZdIrLXtlzrZrFm/cX1rxFllYWOm8c=', 0, 0, 0, 0, 0, 0),
(119, '61e3f03a', '9ec2d96f51efc8d31cd219b2d7e21aef', 1437818877, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YNyskJjX+ZR/Cfc5uuGraG9fakiIaYtO09GZhoQ5Ml8=', 0, 0, 0, 0, 0, 0),
(120, '5c35551d', '8b312e0aa1e7e71570e2e0d7b896e84b', 1437818894, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'MBAAwZoPJVjaS/OSLDP2CiQZ1gE0aUFbbFVyiR1Kfw4=', 0, 0, 0, 0, 0, 0),
(121, '491958b6', 'ddffdc20dd4c0979b72830e481ec5d58', 1437818924, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'iGMp831cmXulN0ALUjd/90FD91cpOdO54YSd1HyZp3U=', 0, 0, 0, 0, 0, 0),
(122, 'ef221972', '5f95ba48d15887891a762bef7a8d644b', 1437818944, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '2xsI4yUxnigD+spGwpgU/r5jemUQJz4kuBuaNtKDPEg=', 0, 0, 0, 0, 0, 0),
(123, 'e5ff165b', 'd3118175c17e2e24c9bda872151f8d53', 1437818970, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'LTho/4OVQwCd1RJhMSicC/3vGS6svNhsS+wd+e7pEIg=', 0, 0, 0, 0, 0, 0),
(124, '1417f7c9', '2de9a3b759d06a3ff06e371cb869e800', 1437818981, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TVG2JCEUdEbRxMEE7rQvRevczQiwerg7oxIMvZ8XR7Y=', 0, 0, 0, 0, 0, 0),
(125, '6b7693ba', 'be275ca5a6f03d5297d2abc6fb7dbba4', 1437818990, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '8U5ZT3wJ+knplLo8L2HfXY0NiuYfaQeJLdOxBrBnvcM=', 0, 0, 0, 0, 0, 0),
(126, 'dc8e33b8', '5999d6da12b9f4f34f631e03d8614080', 1437819002, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ALJWWS285ywimEZ4wzltf2zKqhU+cMt4MMFxNjxmIZo=', 0, 0, 0, 0, 0, 0),
(127, 'c91358c9', 'b04e1bda1bf64f56afdfae714a9368d4', 1437819072, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'oWA7QRVT7IGGFS9WmMPRPiAGXfD4FRfU8rsuaNlgYpM=', 0, 0, 0, 0, 0, 0),
(130, '0798505a', 'e859eb5c9cce17766a6dad0883cb5aed', 1437835720, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'uxoV0YXGdl7LX/NYi35d3RNIVcj2T8G1S0FwcIL5Thc=', 0, 0, 0, 0, 0, 0),
(131, 'e3eaf03d', '30283ad661beb734480aed67978164ed', 1437835728, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WTuqK/WQ/+as5TkJThmq3USzDBiuFPgZ6lpHxRcbRIo=', 0, 0, 0, 0, 0, 0),
(132, '16f5966c', '7e685bab54ffacd5bad13ae5cda95af3', 1437835895, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cJBAilnmD9kwESKRXKcN5kWyJ+klNwqbRR+1WyAz7N0=', 0, 0, 0, 0, 0, 0),
(133, '71b64e69', 'f124ea8cdd851e6acc3e312d683cecd1', 1437836069, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'jXQiu4DCU11Gp/Ztj1LETssoTSc+GxX3DCdXTo8gdXw=', 0, 0, 0, 0, 0, 0),
(134, '8abf789d', '4285cf087ede38a14e5a1be947f47e80', 1437836217, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'BPDT4Kkhgrh0c2TVCysEk/QCT6+PDcWCt0UgPBTTuE0=', 0, 0, 0, 0, 0, 0),
(135, '8a766317', 'db6c7e9fdabb0d51bbe0975243f5954d', 1437836263, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '50yT3SK2XbNb5sIkIv4eI7FNvRLA7XYTnbHbVx+Vs+w=', 0, 0, 0, 0, 0, 0),
(136, 'a3de633b', '3b875690eb991a0ce37444bc4aa1197d', 1437836329, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'wr0pfsjUYspfmZsQLNKxJI86s5fXsx+7kdzDH5I2bek=', 0, 0, 0, 0, 0, 0),
(137, 'e7aaf4d1', '1f15940ed51b59e81ed332bc8a510e42', 1437836373, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'pb+BNvn1t+EhTsqNPvaE5WrdJ7GWn++2agpZ8dMf8IA=', 0, 0, 0, 0, 0, 0),
(138, '554b6fd0', '45b5f2d3135a63bc399f0b5fe4933a5b', 1437836501, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'FB8HeuLRuMvFbxLn7O53kfmC8naBI0SAKaI1aXFodHE=', 0, 0, 0, 0, 0, 0),
(139, '14074951', 'f5420a2e78d6d6711a84b58d002c21d1', 1437836510, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Yn4K1mZqdwyOLDJVnO317VllwRZ2GSYEwblhSDvR5Cc=', 0, 0, 0, 0, 0, 0),
(140, 'c83fdd74', '4f249d246ff7a8d2a606e6510f0b2a58', 1437836532, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Cc1BtPfdcgo/8lQmV8I2sLDzGq7CuPun2WUXILEtHY8=', 0, 0, 0, 0, 0, 0),
(141, '11636063', 'c3de780036f8ee3891dd0d8d46e1ebc0', 1437836548, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'hzv97Ko7RvGhwLHz/anSTfs2W4L0YJl2XRvrK3K/37k=', 0, 0, 0, 0, 0, 0),
(142, 'ae1be7bc', '5501f442c02545b73c558469506fe9ad', 1437893593, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '1ZtSd+pfhjVDbYyVATUPFDW5U+5JSWK0jHYSEmz6Kn8=', 0, 0, 0, 0, 0, 0),
(143, 'e6f0a9ba', '6a2190b091ebd657c9f158738d65cc21', 1437893629, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'rFhGr4bEOIpIbbgWighg9MgX2zQ6XONvqJIH2+XyxSY=', 0, 0, 0, 0, 0, 0),
(144, 'ca2228eb', 'da377a92f18cd615d9d40a6a8a137388', 1437893634, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WIoJAbcCJcmxzKhg3C3Ib7VWdW7Sa109kPBwDEy23YA=', 0, 0, 0, 0, 0, 0),
(145, '85b0dd08', '4d1beb4f223fde1c7d634805ec3cbc2a', 1437893637, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TzM6Z+oFMowgVBjmeG3hM//uqc5grAMSpwdixDcq8MU=', 0, 0, 0, 0, 0, 0),
(146, '024948c7', '696a1c42333e9fe607f40f8e305a3bf3', 1437893771, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'AtlafjXNQ8XXYra+s4B4qjTbzpO83z75csQRWMxCsYw=', 0, 0, 1, 0, 0, 0),
(147, 'b960af10', 'af26d1cfd343942cf68f071968160f36', 1438156116, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZtiLRvqiSa7dwRqTzfzHM8KMuIeiCClIC9gHSUN0YnQ=', 0, 0, 0, 0, 1, 0),
(149, '2ab0ea16', '18f90c5444e20c5d826d09e984df598a', 1438156800, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'NDF4r8mqOAOHI8FSH2DQAk6owSxTSsJcaS4UH0/nrZ+kpt9TrLKyBDCYZrep4b7LI3mrM/e2hULp6jG1oDmLkA==', 0, 0, 0, 0, 1, 0),
(150, '160138d3', '1039dd418edfb34118e37acd555fa783', 1438158478, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'KwxxloXZXNElT+6u3tPXiLJZM/Qv3unlPrp0eExMGb+wFnblVzJz9gJdSRAe/WJ5RsD+EAOlx1YK9D1lzy2Q7w==', 0, 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES
(4, 1437835772, 131, 15, 'user'),
(6, 1437835779, 130, 15, 'user'),
(13, 1437836224, 134, 15, 'user'),
(14, 1437836268, 135, 15, 'user'),
(16, 1437836380, 137, 15, 'user');

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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

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
(148, 1438158478, 150, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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
(28, 150, 59);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
(7, 146, '1');

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
  `dead` int(1) NOT NULL,
  `online` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1438159571),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 4b6e16d36', NULL, 0, 0, NULL),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 314482e1c', NULL, 0, 0, NULL),
(18, 1432316172, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'b6b3e0c602', NULL, 0, 0, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.label`, `user.value`, `status`, `client`) VALUES
(1, 1437984497, 'id', '15', 1, 'a0f61a4a'),
(2, 1438154963, 'id', '15', 1, 'a0f61a4a'),
(3, 1438154967, 'id', '15', 1, 'a0f61a4a');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(2, 15, 1437898255, 1437898449, 'a0f61a4a'),
(3, 15, 1437967983, 1437969248, 'a0f61a4a'),
(4, 15, 1437978129, 1437978129, 'a0f61a4a'),
(5, 15, 1438156071, 1438159571, 'a0f61a4a');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=696;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=241;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
