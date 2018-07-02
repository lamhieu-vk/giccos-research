-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2015 at 04:29 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

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
(236, 'regex_sites_giccos_host', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/([\\S]+)?)/');

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
('lKhvWoPEHW1pwHUnaFAotSovPPGecjaNTaYZSMb3yg5', 1437661743, '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', '9b51aabb697f76248844870af6b1900a');

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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

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
(157, 1437638032, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=158;
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
