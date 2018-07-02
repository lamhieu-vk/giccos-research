-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2015 at 12:17 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=latin1;

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
(689, 'en', 'news', 'news', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

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
(159, 1437819142, 'user', 15, 'add', '', 0, 'status', 129);

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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=latin1;

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
(238, 'hash_storage_static', 'en', 'g::key::storage->static');

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
('5RtUXGopPAwHk8PkMel9oDfruOywglFrnrJtvXsGpe8', 1437819439, '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', 'd8b8d11c28a4b73a55955da08f326c93');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('N,fSNNU0xxzRTNGrc7ZsZphdNmty7y4syUmnhVdoOgb', 1437819439, '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', 'e01a73c64bf6b5abf10e5432c564f971');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('NT7rtsqT3zKwkGRaJ4DECC6auujl,GQhgnGJo1cnwJ3', 1437819439, 'qmRl6R3ewHJ4vmxy89di3gQkImK6UQe1xOOK9869WjT6tiwzVa0+B0SLJKp8Z+v9/hFsXR284n0bqWr3SoT1t3tQH3eJkZ7qNTflokl+w12JPPge3JtgEccTdqImw24ravYfd+ao337jhnFfWD7NPuBeSZ+jHugBFz1SVL4zBEYzEo/UDU9kO2lqLtQbyrrYjThK9KCSUQrOI2XG3P7zq6h2QkwBoPLFXq5+bql/ObyqVXGiHIZj274guuAftCxnruabXZKehY89jwvcbeTe+ae9hwtOC9a5TaqvzcJn/Yy85KvDoKBOkzoVcyUQFEH3Dh2IKriiPFq0mjccxczdFLZFHzxij8ZlfcQ6XeMxsyXhqmaQ3B35qogGym/UqfSI7FXjHrdtk6a6U8f5H00t9Bmf3yhtxg0YIam0/AexAY3+AedNgup49HGRc5TE8JTAJJm3zF7g1/YdCOmNokHE7pCj7ZAeIlj6J57yuj9XGX60TlxDZU4v9bHEVG0rRovDPdhBT5tABR7hlcY6gcoGBqkNwLbI6IJND7uLw1lAUJxj8DCcvwuVZS6hJ1cDuOqTc2H9KCHpeXaiYmAb6duMP8iO6ne4FCZQ1sShIk/iiuG7oadkYEU7B0c1RY6PH2UdMNqqQX6HlSjgOMt4Tf/BD5C7s5OOnUWBOKZlI7KIrPGD0kAr5eRYS7sopmEfTj4bkxDkTSiI1XgNeLlSFN93rRTbbD5KLTMNwcbe4XYtj/LEr7d5A4izbvYqRJuCuK2thwJqYZ7XXR4dHGMdVcbZbqMHXhLAaLzDqhLzOOa3dnooyRU7F0unDqzJ5OxOw7Am84nxUDAnvPJB7oJKdtfxZ+irjVdC76dRjnqNanOpWiogPhxI+0aRY9zGmt2iAllj67lwCocIu1jcwu1ibUBsBe191t5VvJnNJheWJd4H7RvMDasyWDS8/8Fv0vu8y6t7KkrjFiw4h/YbppB+kxt6ksLXhErJmT75tD3DLlfh/uhICdorbKU8Fb2Z1tKcxrUeoJxaube4IiRim5FzcS9koGDvI8rmrAQ9R7HWZKL2vjsKqLCLiKZXx3z+mXsmcLKicPb0OZtkqUn8d2+H5efNFUWUeHkcyxgKeRe3bgfaCdd4gSZXkGsyD/ExcJ0HBQ10FGjS05JRHEYP46Qx+1GwrtdlORd4tet5eZNRYzJhjPzdDAwv7erGzMVY24j9Ns09XXU9yEDmJVBlobSUirn6LyJLuW6/sV2sjxXC5oTiJKv7aDxxeb6ZKaOyRWjlDnGr3IhZeoz83RLWeQm05sXWKebirjthjhEwjfJm8oMvGxUjNP6lIQgu5fsz+ya1xoDNbsQSuy7Xld22FxWkKWPujTeWn7D6IQCiELiI0rcfHXfKVbxJ1sPRT0txXvvS0C8Q0PrTaCW28cWjRuA/JCuO9N0Lk5YWTTaUGyjYR47K+Nm6Afnuyk6JmvCgMHKf8f/odWwAE84ITKXaSlpgvRCL71DT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63KwbhcquZ0zEFKpKFtcfUUz2gq5re2EzNNhoLuW8Lqwqypg03na0x9VXkAyo3AjqhrslJD7qiz0q8C+Q8vS2FaoCXCfcj+MCvHEe2PYrCGcUtPOujMHisUFeUCbq08MN4JD/31nvLODXueaDNK8JhjScVoMtQ5xhPbJ/S0XfnyP7+wUMLpRYIEgsi/eLZjhefFc5dAxSmME3tHaysobzYEsM+QVu8o5yPMbSwOeDyb4bW+2WB0dbh6JQMCeo+w63mXnDmYZMC96TBPyyB0WITWJ64VK4MttPA1J80L/PxBfhAGIPd6uALgeKuzZPHF1MJy8YAiBPrCw2aCJHB9az/C9Sl/lkIeAYllBYrDpvgqepf2Ie/RCA0JNys9ReoSQr1rtCxnhymawgmhWpwmgVAhAKUZ0Tg/7545FWELrYQ9T/ABhlFAfqfGiyYPOQ1kzskaT/S3Ii3iv3iVrGYdmq0F4WNiQfOzcqObmshpVoXJs+cjNvzfW9lDz19iGMz//Z5wGwWv1RVaVa/W5HqJRrDZX7ls1eUwrDUzFHk76ygEBf5e9jIo9RrJ+HCHwiD3P39K5k6FTZi0NP7fzYqyjNUtqakmnTCD2FU+QFxBLZJ14KgZPi2zJyxYU7mlHj4cFwxx0cKWMyYr15OpFOjVFoqx6Dr5+i6HCKxUSq3IStF7Lx/PzynooIsmlkU+ysprIiOg4PM5SkGtYj9Ir3ZWcwcuIHsdo78FpRnwKehz7ZHyIf4ltSKUngTTsMa1qMNWvmvyqG/NiIL4roiHA8oyUKVvU72tXlHOAQJ0rLbTTHv1UgknR1QAaXqH1AlPdtbURHHAwIsyYJaM9vCfoZFvJfHW5F5NwVH/2waMgTbVKhYqdp9w04vxfDi6EAjL2BxthOIOX/VkcX6LXhFnYJoatlNWz506Ko/7m/DQXU9/mZ9vq/zhi7zlIf0p9ytmbF6PMLowxojcaC4pCrKHoZPPOovlnUl6AhuuO2OgdLifEph6XGaF8BhC+RHRMrjectuL2GA4+i4HpuBd9dMMH47Upyt3VQa87WQTfSJdq78obk7x8oN1Il266AKy8KKhn7w7MkPegIGHsrv/FcAH7YD8N0DfmSCM7odvcXOkHv9dzzPKeTVUWi89O+7A9BwZpunE3Pz9Y7gj/c0onyvH1PXDOqxB6EJG9c9umLvKSWgiyAl9Bdujx5GIAMdVbU0iRDY3NWK69T7KzgM9BGoH1H9T872roiYno6yHyXsaMxR0zUICjsoOuwhHJhPo8NOhpLhWX4yA55++6mLT81tAts+lbYzrG7tf1NRC5ZmPKn+3bMdXIJEHj0o4xyAVkMkOjBT366ZF2l8TPlnN2c8t22y/IQ+4IbYWZqhG/NaSQhwy6GQ5MyPrxUTpDMCuKYytNxkTdyvwOKFwekTFfcEBtRSlWewqV3tj/aegc4SZRg4cRJi0jag7fAMvOYBiSK5C6XSEAOguSNFqpNZYStvTHXvbizgMSyqR6UjxWuYZq2DK0wiD7Rc5XBaVsjNWpxFQEtfCFJpYUzYKBvnlpiBoHum9CEEBxLo+ubk4PHLZ1wcqhpIKEmHrV+5P2VhdBhPGG6yUiIcZ960nuduF7zpPCANzME85WEejFksE/IL8gkXTUntHuZbSTYAVyGL/YmkNz3BhHMY68b6Cu4Kks8/ZQO3jXJJnUwV2nINggHSfvJYYgHoOKUEG5pGyjwQkskQ5oMJaODxzHZ+uwIlGNWwejjj1U1EGUl6x16dMqj09GdbOnoC0aTAfbW9qDGxAFhLSlIaeD1lacoqHejR+rVt4t3zWJE/sVa1i6XYe5MNW3hMVyUVY9+eZfamo/I2v+srH+tRijXwCbzZ8yrC8nvdWap3WaxOqPQMaa6Pqp7KpcJlbscOP4ASQhmphrv9oMUkSg7hZx3Pe0y5fdtYX6AdvTmbye1vEbDr+aXk/LCe3agrdmWtR2Aw6z6oHmzjcY2nFcggLEavB3dg7HMtgmSNYjdTou23FUnZBRcdb3VBKw5DB+E0aP/sxZgm1acUUqxxKUFRPS4lWhEHXtuPMui2ZqQNYV95Fxdorrwq1qhxpfG+f90MMnUddhcnUvuYRVVZ6Q68KCmKPoqDhe3EwuqcK/jb5xs+b2T6z2NHvyUZoVzi37yzaC+XktKEj5GXhIUcyLDvu1Vg6qJ7f9/WmNduMRtOVKsWgUHboDsha8XBUslLu1EBVsozVxLVA7gZe6v0dbP8fL9Dy6eM7nSVuPGjJgR3GXXaJV7awrOreM2bt+V/WIV1QFwS2mnQJiLcfveKN68/zP5X6AE1iT3kpwuZJGWPWcp9+iLg7BZj2hNVASPQHWn1HeYypwW++v7Az5A2h+yevc0N6RWYorGBiRylaeMQV7T1+Q8f+GAXo5qqEPAPQUXsdIKZCV++UZO9hZMvYtJ3V36PWoC3LNzSNrMkV6+bhFEqAR56Cvz+cuLBxftWGP/ABYKST8Z2tPiSdrAKxAnUWXlb06r56lEfy7gbmJJy2CpJwEPeZaEzKgrWetZEokQO8zHWK6MbdQaXxX/TLYupt2iedJanVYpKFag0eZ4LpX6n6c27DqMwFVMqkDm+UJzn7fUwWIikYNp78peHalZLdDwDIoENxGbZOtpMjPw1WXoTe3vo4F2fGIqq7eeJvYo4T7Ug952T5KAl5ZYZVGr/JGZK6WRr0/+as7moPJiaL0ieGFSXks6zlAuJ7j5dGv5shec5x+jjhMAGxT/F3KME6XUgbCFsi2n1LQtgRPVThm9hexmxfgoitQ4/GlFkKV+d0po1aVycMlVvpkNxXASfKTN0emwGvhGVofWQ9KlTYnJV2O90Gskgovkz+7TWoIDdyaVuowY0rg0KLU5OeiSOHAiY3e9LAoWWBc3Z7j/7aMLlBtTEWMnOk9nvZtSOlX7deDnkHk3Co0Yc3YXkgMQzQTg1ml2deMpT1fTTZ5puP6lIlE61nfscJ0YTxVS1aqArPcVGUK1PfO+Pey5e7OC7IW180iL7YN9sCv7GtchniuGdHzSTOpQEa3BmGV3/nW5WDqbLhSCIfTW0dWJcYHWM6bRqNzk536KbJKRK00+xCaccWgmSq93Gdb9aByLjUjWiM1Z2FS/oP96SiB6dP3M30bo2r5BBpRzZaWXmKcfOW27rQ4UmgkX0PAmQwDlMIsSzvgPCup0T3czBYxjLQoRCbb5hSuZAEtFvB2flZuE9G+6uXb+Qircria2KJNHTcW6Dh8mc1pLgvanxYxyRL2kgQeGY42KZZnfqKWFW5loceHLFHhgjFvzS/n0Vh+A2NjcNMWP+Txtyjtq7y6Hi/mkzIh0YY5u2TUJYiUIPTyZdv68d9LpFs58ungRCQr1oY/e8MdHsh73sVVUi+SvoCRz6oxnsw9zdmW7J/PKmUc4kRYlG44EAtJwRGbLeeZVNBCg2LYIj9hfE8J1pc63RGE0ddE9gToeOIDAx7EqXaSdSlS+aA9NnPnyBBlGnKhLN2Plnicw9Ml4ElMjWDvy9r3rUQlpnvqtYNunp6g1Ze4wwWXhbBDCWxcIQya9n04LkoWbEKH544NLgfQ8VQR9dPJG5GuDIrsHZBwm+nABIMX7GlOin65k6eJlQFcCn2snhtz59ToWUpwEiOD56WcP2RphUuhp48WNZ6E/ph0rY9K/XdEp5RKHWOMq4CaEyL7cAI1d03A+/Bmq5Rdal+iUJS6M8nh3SRB49KOMcgFZDJDowU9+umRdpfEz5ZzdnPLdtsvyEPuCWD/xT33/aiXjxQavl8TqSssyNQfsMgieP9ohbtZiFRhN0cZXjot+0v4BGIoDwpAofEXjPMw3o7PPPw63cPApborSTwaeekcfPZbqJHNFPqAlSKJULOZj2qxalZ+WXL8NkkI2fCPCQB9ugvQA8guaR8a8SFCcA8Az1G+qFEEmRxqYxVN4zFOfiO6t2qfZ6PEE16WxeojltdzzS7yyR3C3yKjBiYaS5D1yH9GEwCcqPRR2gBBQ28v+y3mnJuEnmr965nPomdWUw1JtkO0O0zfk25BNKXyTjz6mluWwOupm4XzHmyj/xTtnZqYve79x5MSuBxBL0Rpg/f9YQCECSaURnkizu+nbNxfJ6FgY29KbhPcGsxpF6O74QI/vKoG0IKR4myeepiRe8vC75ZY4RD2KOoqJFJfFER6AuFtLjeZTpcK/hXxDCNAqTTLk7ucv3z0jiBhIMuSiKW76WtZ6bt5PYUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrcV5VC0tww+NYhMdyRgY95oB71xozBgOb3ryy7vutco0ZEA4vU9X08SucG+MXLEUTpl0yvqSvc0BVmV55plqThxOcJOhxACuq6XdE5XpMGxaQ988aD+3bIfLmp8sF7PgRFdalqbaJUt4VB1drES4UPHB+jOwapP/oGKVdlFZfDrqECSY7z0AaUYsRbUWOTm/b+Dciq1P0nuc6/bvM4sSXhyE4W8hVQZ1qKSZw5RCJWfJ6W05Wfiv2cgTzXmby9oqQNFT01pLcF6bme6/iMzc09q/4NgkYtBGt5/3nlUE4R/YiS9BUezwztCvBn5/ZoPgFDCWS/zPkhijnjzzH4dqCrVS46xuo8YevMd9PeUlXEYJ8jbShB4Ctzeh7D8J+FPnqsZIVplyeiw1hCJBAVqO13WL+yASY4oWki2Z9qnBAXP6EKLghEF8BxKaAss0x3g4sqZr7JUP4i8MbnupTMlg8YMyAbdPBo4+iH2II/MQNI2/kY9lye4RFQJKINhIQl+0tfui9jJeB5ntfzeFeNFH0iPiSbxCN9ue/iQe4iuL7geVpV1Z5ikHgMmqCNo9vG/RLGaYCx42mDv+8tYr8HDHoCevQcl2v4VKmzJ1zS5WWd4H+6UA5kO9aJmmIHcV/yMXC8Fr9n4DD3g5DC5Yns5NNSaN+5Bzsp8gyM7Qg9bNzLi/NvSAgNt1EiypVD5wQyaY8c07MRzC9NP/V1MVnW1EQVRipZRThlwFqLv6EIHekusuYS4dfAqRYfrkMmwFPkUjveVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnjYp4hlG7fBf7xPRXKEEiaukX3WXt2W8puEBy2vULxLls3GaFFBBJbE/J7Z28x51OouY6FWbPoiPQT0CxzGoDEgKMV73pVxP7pM1nud2BQ/IRALGiyR7Q634sEd5vOCmrxP5Gtcej1Eka8YQyLT6sXga5lCfoTLrtM2aVtoK9fOzwLRL70pWAXFdo5pxUiMcZFn708K1PzqK2zlXZp6ozDj344eFlXRdZVhmuS2icxfuTd31qzga7nUTVFexsX8xJEHm/qBayoExE9UAu4NRkki/zoVTYcaCSpqLONVDfwmlCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dA5yehfMJoIABDTr6uBSgGCDOdw3eXE14GcvT665s1t9gJfjFKUB03+pzAER3y8Hfz9Z4eG9+RrhxaqY6DJT6gMAIwGMQyMltvDpaBA9kXWhpYcm/9bVgO85nnIH3bdaCpgQxeWyiZ8btrqR3vN9KTjxsv+f2HdtI1/kyig2496fYpSW8+tM+1e2Fik2i4NzB6uR082U2Fw6LwnJXgjnLyjdonsV6AX1P4Ci23o1cTYt63eWA5PzdJLWfMJnYIuHV6l3TIOE0CcqYHyoWcX0eQKGmt3dCGCIDB9NIOTXDf7TWaX4B80ugesMCcvdcocb5tuTPV1cctsxgX3uPnMVaa5j3iu5WeDnQnF781w9WT0mnqxovHyeu5F6ygrKz0QqTeGDVJ5xNEumRBdrLG84hnK74t1hqmB+W99k48HFEpPbhptFYRfjagnP2uo6IUcHbbbx7t0Khe8Nj+ORdbBjH1FNYRXVGPwmBMW/G6bOmNupSrR4U3SWpW5EtWhj+5zASAjbzQ8eRX2QN2tlWI+OmiwapqugyqEIKc87HA7F5Uhja5FLqqT+Ss6qQRWz2jTLv9k7rNyVhUBCz69AZsiK7PrCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dBBEb+imD/tc6c8brJYbrw5yeOdf8193Xcf6JIfJUwrrzuCo1hAFwB4VAk0FVDHZntDqCkDJZ8Z4+ghLorDQEbRp6Q53W/KVCSQ9aRrPt0AKuiuASy/hGRUScaeX/IMuhSgdRDS1N3UNm3MpvzaoWNi7WFdfOxkd4aolvJhBfcwmxnLg+XFtCPBq70wP46rZoBLEu1sGNziZXV772MEGG2tpeRt/Fr5rzRzyZKjCwAIyVt9thINRHnHazdKUJbTMgupo/K6jEAXWmgtyScPmyMeQwKSYvnDtnaAZeNDz2i4a70hp+gZ1CBmCY4aILTNfQI8JirPM+9KiSVboN1X0WExCLidkQAadMykwmuFHSqljFK9v9ikcHzvwly9CHJgrZDeDltdG+TVIeXRaKUPN28VQUU9tPkK1hpjmknolRM0SrbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJ4X+oExJXlzm7tdmNnYgrnG7Nrg+DYuze+LUiVWoL3NpVj2vQ6heQUPxIG6A8hNQnmpkLWTo3kNwyJuV0MX/kQunbrbh8rTAbOXw0P/3km71s5PZYm8GfOp7BFK5828Gj041B4uNLsnvIW7WVornBilKUhUqKiY/CNHxBOe9oetBPDOaGBdCjuNGLahBLXGeok1lFMpVzh+FXZKJEXy+FJXVTnnG7JwOgfgQdqqbucSh2uJ7jQvrE5s1MkVZ8p2gHiDSyiy133+uIXU+LLPe7khDZv+hxrVSZWcnWSh0B0rY3V1nU2eJsf31LzCxrXO0dZBJ2CVKrRHY4RshXEk2U7UjgbsugpA282ixTV15iH0zrnJM2CijQv5MxM9t7ZQvGiNdfnVhsbiBAqKuZG/zvhiPwk19OCc88Mlnjsntf+T5o4lTENu9M3FHf6H96pxpBYPQMkv7ZZlL1QncdaXu6UgJUd7XxzCxJWWmkvHLvJ1AORhUbbfRRj/p2qvnH6PHKDYANYElux+tX4eVNsgo/TbOSsLLWR/NfkzJ3ex3ngZmKnGdChMvO37dHpoEmJ+vNuLJR/KdKVAW4/ovNJpagKAmSqTQTG4Z2qAiHClsv4w66rHARucsjk1MZoP/w5k4/soDRkjrvAXaFIcmxR/cTIkaG5DWXaVgTZQyosk3MtoHy5nnkQu5X80/v1tG9NVi1AI1T9jqoCpTYYnu/uJeiEIEDDVU9KAPdB6pC7+8SWgkZgOZzakpjMq096wJXFif7zAX4/eKkbJxgnW8ZFt+P5f7lOkuJE0+w8M8s4wS94V4HtlWWEq341hbyNtrnFykH08y7nTdkjEn1KovygngE1rsMuDNN73B10i1BgSr5bAJ+9Y/4GRV+auRHhfaHwy0qP3EdOv329XW1gDn/tG9XeNRKFW6TXONIszDJoZ8Ax8qxuFi0wXoQia4xYk14SjTSBj398cqoDHtVNQZ60yUJzc0Wtgj7Nh9pcv+eER4srdeuiZM2SKLynRbeSqR/qqv4px4mQ94hrG2r33pKyiT9CHFfQNOIYiIsb58ArVpXjB0PaCOSZBDAfxi3qTKuQ0aReiS2AhEf/NBULB5Z6GKJ7u7QSsfrpoB9LtHBXGuhecKrlaFaP/Z5HnxfjV8pcdIIn3p9hH0HXpNWVnm75sN/J9k5Wu6v7Ui4QjNo0ZZlVPt4rL3k8WWfod32S/hdv67SFkuz9Rjs7HksZ5mXzTBM69LVFsf/xaLiUHp7VzE971WFZsenFYa39ty+e/sOCiNcUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrfAsks/NhSU8Uueo9iJA1nwCMEDAhYbvEcUf04R2tgfGzO9iBguTZlPYi/LkHc7n7R7dychRiPoMbkVm23NA/XTZUjL5/2akGFlB6Qimj2+lWg4j6BAx95Mdv7qmBhqjaa2xHwXRL6NeHe4BPCDQr7vhTzNkrJuxiZAQO1gfd85SR0HqYpWrkUAGr7ZZmkTmVzo6NjPew3LH3MJLVTh6Qh6jYhDfRbGCdrNQpNaag571kR7hLNQh0kAZcdH/ufpcDar7MsDym+s1QJaYy7GzebRQaDMGRRqq0Qv2g+TPe1I+ddg6pHrb5vYFzjIF0xo1olpgjQPIqEVyPZJyQi1vRuoQ8rhXEpnQ/iV05DdGtRmdDT1YaWcwTvkL5HB4EgcGYTL+Fk1Iq+C3ex0XLZkXS1Z7NnuIbgmFt86nledablVJWbeBS2zC84JDi4bV+ILBsX1CpPfpos+PIdZF5G2Bc5qatXByrhcwzy24k385zmYSgUWmPJq85YkKWvk/q6keTBuosmadoUrFYbBLu0owwShay7XLATp7wQRhkYjlJcH/ZYlRNt/YlUmPcpPLpyQYUZFAryxtEFTauctUoqDTWg6rXIPCpUSzAj0bvLc10+oykFlpMzIluKCXLUT+o2ClRkVPm6j9A9QQOtndfwn5omMzGdiLlbX5w72VC7fkGYERw2nTC6EcSODu5DstuJVlP44wKTDzUVN1D1jRnoxlnNO8sM9GZtwnZYNbiSGYORH85m/iGmDBpuYUOl1vPaCqti+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpGzXYG/nTgfv9pjJhtFbIsZzZNX9XZt6QI5XVm2GNA57I03auwSMlsYefaD/mD0J/F/fnjCoae8hIJrpSyxA2dml1Hof2b8Gi/DbjxHNnd5UL/Bv0VbSPJz4uJzh/KeKsZpmXuDjo/VAztNUpaHPioQsvkX3V+U4fnmA5w4VL+bK9ik49+BQjQcomuzFKd26Gy//0UdiI90LpiDxgU9iggVsSe4dJEaNn+aIUJAEdDUYp+dBi6S8GZ0WgcpoR7j1K9XyyZMEYAKmPltcnAXGE6UYUv7GAIC81HtaryDwCd9RESVCRmK9FjqD8zWWEvv42+6Wv7nyggHMVeadBmZ+8bvw5ELj7PT3yB8gkIYvUsGNxA3L3fl7V61ClmhrkUo3UuuHwvG9oOe4aCzpkv75oDt7ViTutpwwxH2oDtZp6U2CMZN1kanfCv8SNloukhnA0N1UwAGuuy6EG9bsX6+BywiMGh85HawCUMGYwLtwly0ebqjKBmamlf1jQArgLYaJtNzRmmxZQelcw7/eDxnpZy1EWHS74KSHZ3SxEPOH2CCyIdobsgSYVlHf3XKk+brhv17yInSUSCX68Albt1LEReNUrT4y/vAKymcXufCJO6VJ8QJJciToCQFvwCCl/VFgxpTFl6vmwjUom1zYmeXu0pqHOXpOdsyHrwlyJ+wouYcAHT5vuoAiaAAGNO0k96CuIjALF9TtBnO+fPzBaOStdvOWAix/j7meXS1/3Upe2v5sVGAPa7p9wp79gNlfsVWTW5TdGN6m8JQ+ovZ08oarAkg0+1KubNm46cc/RevIXT+ORN3jWVRscaQ/DOvUv8p/JHpaNZ5ZPNranDT/WmPVP8xACnq8KnNLamhqNyPNNLbBHJC4AXikriHTwiZMzo41CxvcltyR3lRC3WFs5QJt49zW4XPTTbyjYUytjF0aYUVG8vCSHcs5Bd9E+D4nwJvlZU9c591jIVr3UtN9PeM2IlkwFCNJ5G/xI/vXCZ7G106ZBxYBUeTK920M52SjxZRjANdj231ZPANOrn85BZvBYjY77DZFX8nVwahJrHUp4dV1JZEPp5AYI5UO7muGjERyJQVskF8UOQavyF3M5/ARJfJdw7zjgoZi+nYxlfB7ozXGwP9S0S449B8OPKVUTSg/bUQePSjjHIBWQyQ6MFPfrpkXaXxM+Wc3Zzy3bbL8hD7gPO/p+Q6JRXv+w8iCZ2qY1QEp8g3bi5CJcEbzYTAWdEiYHUNxy1ymmKSwgRmAeBK/MrBvwOh9dFXgNJEBozxmdZ57xEQ9wI34SHLrRHodXwWOkp8ud5+MlMeJGUFEpjJ/KX9i2spELbB5tYgN64RpOJp87Hddy02aHZ14P/8DOtqKX8b52eRV95MUTld6CYO6geBrTpRShpGE5L2FindOGZAwA0eWvSHlcwaKZ7+/bIbcpKUCqGGW/SulZ0r00kiR+R1Im54DbF+v+62QYLXuxiuIR38DY4jTYARd7DNISpAIcZC9fsCVkFcWCDK77h7LPmWUCWs5kwf/lmpi+j4yyxoD+6zr7RpS+G7M6nVDG12miK0xiAJLXwUHmMrvRk/pfRKpkw8JpcVQ/o2JAloGGQkdvYLQw7bqTlt9fqJ86vj+8y5AQQ0klQnZk7gmmvK9mSgiBK40ktPGVY1A5lZCR23HjmAR15bNY8VR+HbqxaflGKb9+cbI14dUpHGMUkRJUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrfu13k2bEKO//K/XSGIGqkCe4vHJE8xcBWFvEyRfa8MEj1iIZqJZ9EHojuHDj5IDzH+Cj1BAVhvGSQ2mL3qCmfDeRPWdYwC9malM1ck6cYck6GiUAXJNL7MYXvz5CBe9sAiIJHDL/5sd+htlIx1GOZpThAE9WKFGVHaC6f9qX4CRZLHwzQgXttRwwezshnHvux82/i+5DbuhTcaLKkmdukJ17UON0iDaaC7M+//oN7iQuEgG7txTG6D7I3PZN3CCGXLj+dPc+nGt+3BeaKlPr7XBjFvy8lDysf0/FonryaoHNeTDA1kK+tL9k5nhNrGJ5sXyaVrDlEitWnNks9OebDawId9PQND5XviUo5jk05uZl6DcSdkFGiWZKOCAp473BI6JxeSLt0ukz4hAee4AUlVrzmoz2v7RuUs5qeTFW16UT04OZKBf3xW5mjHMjrJ4mtg4AXD2M7HDJiN1Rdgtq7ILyGFAb1DazyWbI3OKTApIMAPGjtImNMUlbnpJxItHGdBRlgwmBlVlgyqH5xjSnigP3PQJO8BwPORakPiTRK+iCsKL9tF6AGbnuOXDvThXapTbd09dxQ7cVawxDFIzW87oyrUYg1vkR42SdzfHtlrYZdppiA16TLJw/+WHKKPzlXTyX9K7gmBa4v/lbUQl/TDvOSylh7G+AcFbl5IET9S5smEM6j4sangDI1MLTtnSlHs6fixxONUrfwD70TS8xyUasS6lHa4zjotY7oVjklY2wtYBii5pXInIIN1znlTNQWAT8CJbGkjgusxe6eAiJcRrFXnpA6keTz+hAgrRUmrZrbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJGx8XK21RmUMcEpm4T2ZmwHNxAF+08kI13lsPvOS6Aw0ISNgm5XuP42Zph4lacFCt5dyzLyoMKhIi1ABNhQ+EEt11dZxZNQb4w3E2uqaoEQsYAyEqmWFBJetru/nwv/TCLWtc0oameq/LrQo/fhtAlwA/4cAnbz39oVp63EsrrfkFlNUNp6o7M0niOQS+9MemIpwnUllUqKA7W6s4LHgMz3HQzNGX6IVbZw9sJbrxvUyeSLJH93J3yMmhbHTYwD3phVsBI+LvzMdFABlXZqRN53eLz3spswyUz8+cdjxuAyaUuFZ79hnAqhH3oMDgCqq6Ypevzu2ZP9NBBf2ZjVdyKVV+NBb35RIwN8RCMsrfRvyVZcDfN3CINX1Nq6JkSeQASLwJdwzL5uCFtoM/fgEYz/2keG1Mhh6dAMh5VZZrigU4hnYzo4ce8508FcJadmnr4rlcTtkQm6W7E2uhbF3ac2s6XI85/uyJlAYXkNFh9oAaKEOCCRz+7CLl7CncHwYQeEcwnlzlI7Lj/ilNh1ceZ0ZhR+Ip3c8bYhMP2HFf0xQCuEaPPsWysUdrUVUwaX3HEd4bZ+h3vQlXrAtnD0o3qY0rn4CfwVg6hdqAB3aV+3o0V6N0pb8RQmmnYRsEmpO6txenl2i+S7CJ6QrRVMQALp9pNFV4AwXxADGaTkG+67L9nvNQoPHDUDIECzjvyb9IYYZgeDd3RIImcGqFr+ND4WKKfjrteZgZp4VshQBR50KAzJyqiANVE+G6GxsQ8zRDCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dAjLBVHJFTQbxsL4jYwx4DZcQoafN3Q3DRefYJ1wZOKyOu67UfdXB+FaddkPTMduvF0fl7vdoEJDRaiq3EDHI7CHDx7qlY0P2eUc6fvgZgeTATItSiS0X/wEgKr7QbCaxsaToUKLXYJet0rr8hJ/WyMJmAovG1QimN6AkdtD0w6jKtop33dmak4L0jTQqaGaHKECLrOzoJdfp12h7CMcn9646o+Z/2owqXI29p8jO43YcSNHKhmMZDXorP9gK4d1I5rN1NqxTBrklrxQQ2WbeqVUrNcBYoKIUqDFbGaNb/DkbWz13N+2GiWAvqj0GQ5GrVhEFGcHumPSo5EOTG0yzl9V3MAjrQuxH5BVROhYqInXxgKYFrJiQSlEY0plXQbmeF7+Xjx10Xb6mxXULOXOcfnZigx06e09iQ4HBBYG+QCoBgCFWf64b5d1zAF0mYausKu/a0SgcKHrflKz4BrembN7LKnbmkZU++Ff0m4/d9hkSwBOGjJ/ZlgPFE4lbhryLtkhrW9nSJPy08LeC3C1t4sZavmdljt/C0u6cHbpk2S7y5PgkiQJA3Y+J27RRQfmXOPMQo927Sk4zvXAHHlzDBkE1UODNcZz/aOcXvbtmrb1hL3x2E6OBK5JbjH9LFeFDskD9AVd6+doXTcTwwRqsPPyh222TOXMw5Lf6NPh5T38QgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQ6dQXpV2SAnes7Rv10IDRpVK6YFT8EXOdHp9MRjgaucP2UstHRnC8P8/xGlkldA6/XPgmXEDi3uKMKga4NoOXw+jtbWaBeO4C5QF4h7L3T0MoaCcSVQZBV4H7BYBH9OiwYhw1KIlbyK2DDNQLw9PIQ9HWFzGzCSywIlJ5967tQJbeGz3ykIlSzy6x1etblmxLzfdygdvFtGvChRdrXAQGbvYW3sEyJDyL15ULVFjQ33iazeOR0Q5PXrWTmuaQkB9kAIW3zt/+iRBb9dSsr8ZGqokLSiNwS8epk5x0N65llaz11JkRP376GPvLV1CZOhRNaI2mw0DQ16q0HJnDScPJRpPQtIZqM1qdWUQv5KOC3UoBCtTwsOUHhx4SytyJ6AFZ8B6IQfGu6kzRL6aov+wPh5UAa12rXPD0m1qafSYV3YR1Z+Eyb3qJ3keyL1GpgjV9xs9O266b4eklSNLuXs+kkW99CN0LzbY4LRTXNWAcbS7gVs6ikhOR8JZmjAfxIhwSuCOAPh6Vp2LjRKOG6CbJfsiYWJnde8Y3cNnpg+EmakYg5YhI+xGdIC6x0t3ZNKR+adugqhNRYWuVSENzKUapZ6Hw1vswc8Y2wrNuh6XshdlDWfjXYzVljlvvvaIwpQCD1cZtS0ErRkzmoVgsc1A+MKypX7sYS8xlNyoaXFhDy3CJPkhqJq6idyEWmB2kMp7xLk5tuz1Rc2lvMM9MlCGoN4fvFVIG19aVuSiaXfaXBvtp4L614yvIgaY9yrfqTG8kiUEnhhlqM+i/WKmJZdUQTTusj8/Ylp+FXxrAFzW5L095RJNrpO7Ll3RNgc9wnJl5Ri6txQWPLWXJ0X6bgYvf/dgLIiTtscw4Sdu+7LarjvLBkTvJaZLSKD6q5AcIXNsunOBPTzgSc/a+9h9/TuilV31Su+n65qDAKxo/jxREHWhnI4u5dbvAQ3o82/Q9je1UKSuoZo+XTSjYjopfPEWZQQN6gfOl+jkG94RI11mD1J/AL8cfsPAPcD4FHC2Z9NbCtEDHQsfYTsWyHS4fibBVqAudWskXnUWO0+KpC4sZxcqVBo/Fl9QQWu2v5ekSIQqSs7IVUbbODLzabpJ2V36ZfK4LkJv71w8qzQ6psV98osZR7upB3jio9NkXnyt3bJF/Xsa9iZJuATjaCqow9Nn7ZxvhV4Twshj5x7KaXmTBnZ2hDzc8zHCPGcTt14Q2OFaktdeuL2uhbUN8e0yxU7Gfr7pHn8ZnVxgvExGU2MsaPMzJ5XQP/UfI2bYfHVpNQpcnJwi+lAvq5Q3ZpbC1M1zFetsj3PbAtiwkl6J8XkgIaWn7PQaKVqhgneSGer96gP97dJr/dl22D39mAZAM/Idh9LbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJPnkXXE5YR+WLPIK/MvHPAkAgyQqtF50ZOBlYGwyy+8SlhRWIl/FWcpzs+RE+wRulbVX7Ue2iEKB+8Q0phq78FzNnb80IL+INJinOa2Qu2MrloVaZFMtHIkkXPBc5l7O6l6xYD5RBC9d5yhS422NcjdOFSHpqjqmUHLXrm2qqu/JkX3IuFudFU8BeOFYHB22W9Io446ctDd1p3soeGpfVntxgWMQ+QoLFcEcKDqyesRb6uLutvilDo9rNuPKwM43XSPDXevbxoMM9YjCLeEyGHaWJ0/NhSH6RKhYCKfNlt4umBbo61s+23tc5oC76B+KzHuZtgaoZeWjume/47jzElPSH9Ur28XhD6qQfEoLJgC+LidR4VXrt6uvAX2zRyMuJyGEjKkf/4U1GeaDB41WH7q8pw0KbDw9mGUsl5lhE5rdeQ3Cc/og/72E8xaSk+csVjNNOBV2u5RwRxxragsU57TuOGYnQ6gaivbugfuBAqcmuofiLeb6PUZYVU6IxGJVuOmUXFDndZ08kngtOODB1GUxk6twlEBhOAdJFMK3bO23PEcZK+s+zIuf/pbeavZ/XNlBVYDap90n8UtuvC6GdyeOGtBPbVTgwS1JZaNH1aClnh2+tAkF1SWQggZEvgDP+mftV4UPV3fUVE8Nd0MMYEz2dfGr++x94wa2cJ7GuBUSgE63eu26lzjcphH3mBR/W7AM6nRZnQAU4P8T+/EqZIbbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJK9WIsZo0a4WlJVBX6K0wgd1XLZ6qKGVeAnmxrTHU5E5VhTlUBQLLuLGbgiz2xSFjmp8ommrwcvmdijlI1XOi8DyjPBr/BLInhbZWH4eEKAoxvqzpViaC7PNWWkVFQZEQLbEAII/C2JMeYsSfl+UsJOe/pAJC7MPFX25g54qweOPaQnJB/6H8Y/xfSLI5oY/04EoRkwXT4GH81U6FdaV9hdrE42k/lMRPnXhcTrenzU9CvftBjDLERE8RtNLA9B+JZBVnqP10pXrhmfP4v2SVgqBMlgADPY6j2pMZkkcMT9D5N5d34DNbfwC0OxuR2FCwPdTjPbMbBhM9iyzyiCJl5pUNwuguOHD1OPgx7j5kglsETri8aCf6qHAPtTT9Q8gQEKxF+LELT6Uhcu6jH8QonQ+6KrxSNdNAmgSNW4KYM9Wa3cqTExsHa1WuENPrBECjDDe3G0tDgO54BXnz/lhthnkqwl+mBpW9D69m0S9gZdM8p5UaHRSpvCpp7qvoPG/9HIDmlj30NQdF1plz+xE43d073e+ejxlfQU/95QvCv+JChz5LAlghx97ic/ZT/pWjZFHRPY9JWxBUwTmWPIQ/UgvkbLJx+Lar1PSqzEw/lsUxxbCV9VWo/L5LHSpDDdrOMqWYFNa8R3pNAK8wrXJMRtJuFxc2r0dNiGCKPycIMWSBtHvTYOokn7F94JY+4CWqUH7XLwHYA255ME7rZTt0nDD3AmO34OGvodbNMHgy/WA/kAnIPTPxVF++6v6iUQGsUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrd5/y3F81IwJTxd0/LYLALtNlqYR2sjAxJ64oH8R460PmGI0uBSTXTY8iW1dNS7oPlaGv5DQ2+M+AGcmIUQWXoBNFp+Rp+RiWFGYEJAW0xSWd89FYcT4v7jh1QFXSNZu3d8X4OAvMFDQf6A3Zg+uupFq+bJfNNse3U1Wz/WMf+znEgDE/t1s6TxZoa1uGoi0GbjKq3hq0QjXNDDZFg0FcfI5WclzSidx/IqtYVcYQuiF/Ehy2EZXfFFkt1OBQ5L3seH4HGht28EIsvYKAugjgWs0fHzSEJf5TxfUx5CPodw3Bzh732oxCx33KkCG8BooNrjdnSclo+N8ztWzynazOyuDz1yKqYAYPXSO0IZkn731kq1AX7284eHmOQNlGb+wpQ1ocKQSof9R14JJKFtohTAo/JAPYEtwCB/6GEtG7v9QJ0+0Kt3kB6LCxlu6kmiHfJwWBb05jyYwWv9od6y/utTlq4v6D3fs7TkVSVLvI2yuaGYItr9eldESxGWl46r87gAHJUO3vOvEJga67uCSu5d2clzT0fefm3NzrvlCLu90e+w/qIQmeilxj3gi5+66QkudsSrQYEbR93f/hfMg91dUor+3LYPtlSBuwGPE0r5M4Yh4rUlwVggrwoc83FOUYUQ0gfTHrjajwCfBCSfFpFyJWOr0aeZiHoWhJ/OCs7sUNbhZ5sAP6yNEzOSLjLY4FTGRQP//oc3JYqk8w+epW3XxYHi7KLvYBfn6jr+7edzTTajeb9qHUkMR51JQgrrOjM3UhlxP8cOYpjIIKtLNmL9VpsgeQrZFoW09YuoMXKjWjKnBb76/sDPkDaH7J69zQ3pFZiisYGJHKVp4xBXtPX5M+5smv2yNgtN9av0lZX0xgNjZBUlRvs/XdDNh5crDAopBUrlwfMyrHXn2HCCn5kfW0+RFVYs7NxMqqUsC2LHfKd3D3Tz4b2LrrYmOhQpvywhq5cBrheLwmzGYY6DQvObBSZumcv1L063BmdzKDvONyQbdonvkjYmxG3Df4DUT2wmwNE053qDOac24E8UVJgrsZYc5gS2uY3jz/zZzkbNF5ziDIoE5umJSp2V2yfRa8lOtDS9Iv4A3GdfWPjRPZ4rYyxxUW3yWKG6XXRHPLHb2Rk/Ek6X5P5t5drmaUwYdSi7AeVtzUlOkADjPV5WzXMuM/xvi1mvqxlBqPi0VAMwsGj8zeHotxE+7yYhiE0VbxhEHH+rHgv3wC5gJkEE9EoeHQ7TPvQFWBzv3OQ/qDSzbJshZ5aFB0xkEBLIKe3HWveVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6Ang2oVa0jswxVlZImtnbj/XC1NZKQtLHni24oNvIV0TD7VyhjYeVgmpL1oUSuYIXhPg8I4GfnFuT8d9mrqEDKtrMEr4nDpf+uZuPZQKeKn/2wYLCrEf7l67DW7m+I2CVk5mMflqf8+3Rf+GZlMH2luTGa+f6jn/nlzGZWOSk2OOAr8X5eALisRDDmkOhu81+DcWw7X+guFe4hczCk1/I/f/Mkp6bCUMD6unVkqRA4C4Ctxl05asXF76OB5bK6DQHO60be4BEAffzw7pqnAijfdw1ivLtPss5zr6MaMyB95kiIm8nJ/evqYubUufe9iqgXK2wQSXhMTHe5iLHUUJCMl0aRVIYgQciozE10Y5W7A5r6eWOkC1zhQOP6kAY0E7YNj2f9lqlIOV0+VsWJM6I4RxECDkRfWo999e6SIPqPFmNCGcvsfaWs2a9TDXUkCAAkLxJwuAD6FjxbG0wgv+K7tEoapJ8tkIZnLg9HGKLfjnP2M9OXAy++GSXnLmGpCOZ4zUDM1UdEp32NBuaoWHZfoU6kGwO9lvgMhYhcL8rMpoDWjBlvskaPCSwXAvWTYhQmm5qV86rPgPbplAPupxniGxmlbnkO6k/ibU7VwbgqaQeJs6kBLxCaVmSNVVJLGenzfdQUl9XbIiHng7spW1971VAaSbzAWreGiG3k84dQi5LJCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dAw1z0DwJmnJSgFlnjk/YQmoZi3nJ5fdwdOqWyhC21ASRLSD81D+fXE5MPwgMypzkh39tJ12CoHFUs8PncwkrZgn8Ftp5Yw+Ezmgbb2/j+7n1qCG4EGpHHhCvfxwSaoofS47OlivQwYWmeEkZ1Jf5PniNE/k1x2w45nQoZQGMSuRBG2KUvzZ84syMcaS5llX5BROnhgB1pvZRn/DXNaqmCal5TE43DA9418itObpdGDUn01m7eBJaAmHbHrjA7OVc5dbLUJkonVr53uJ/8eSV8O0Ve97kyIFZPEEhndGexE0YL37BzZZnBIm98uBCKq0/Drhpx9hcQWMyedvwWjlo4PrDD4cZwSo9oC6z++pbqB326MBM5BCdl6YDO3avN9dnPsHK8qqsHOPu2T/6NgbHwnr/qJa2IQCiW7/LpnXKLy7trrDpFnER7V2Mnk2nOPHoEvlVzgMwjMNaH6ZbPr5JGfdnDiSDau3ptqMiU7SVSRQIFz2L5mNdBm4ClGTEC52bPEFZi40VfSHLmjQCB8hBKhshO/S5T9eIrNsPL/oNV7s8jwKKp1224fOsj7OeJg2UISfuVR9PaVxeEEm+cZ0mrqq0yiNk1wZBdsyVNiPQFENCNMjlEfdiLa5mignEedl/CZQvNzoFZXOkiYO1HFEzvxPyhKhDDWlAlu8nvpxw4PV1ef0RtewtxYMiyAnrMBpp+ELT495jQ8qKtkcGE5h9QNCEI7eVWH+ToQKOBvoLDMRWhzfCCAEcCvFCYDaNqjumfDS6/sQrksigAdUe/P1mU79YBDJcdkicW/IgJEFMDuN5V1Z5ikHgMmqCNo9vG/RLGaYCx42mDv+8tYr8HDHoCet7ren/aF6rpwVY2ekgvybYiug656HuKqSDrQe2JwJasMr/o7SlilCeqgQW2ujklCd9kQAtHDET+xrDgW++kXnzalntPv5vS8vq+zlz9bKnrOQB0F+xH3J7t65RfIAr/aLwlo/zQMKbK5WFGd9zFqoLrQplFhuqf4FlEna8lf2MB0w0MUSXU6ffTqk1D2QWpXP+SReQ9FlwqYMGWV1z/DxrTFRR7A4qM/ClMh8cuL9xNCaTWHB/VJAFBrR6giNvPblrPdOhKH5Osn1VGe7hNAVOZeL5JxxVmGIsAKLcUOUGLo03/acyfmbQW8pLsDTbGgaWjgy57cm9+ggHMdiXr+4wgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQWD+BhLYG9fgeWrVaNmO9RhRNDeyn9f9L5ZeZuaexfqAKHTp9Vpg9qhvyDwYcbqhKbkAXGJvdReA8IB3EQfu05a9/ZTLv5iidXPW+U/Lr6YblHqga5h3HkQl3lUeN7r1NZnL1u3jjanuz0tl4YlY2JJaQkwUWQqXV1RXcCD+a32xN4ZIMSEgHHfLjL8xr/tGz4dIFQ7T09o3e3DvWrINCWXd3BxAP6RAalJugLDmS2Lh6qLxMLKcVMTYmBD9I6vFiud9nB0hpAuEMUE9wi4TZhkC4sxZBZ2d38EIGb6DzjHZtFka9dwBitqPr6DXYvRivnCXGIWq0kNUE7zIp0jWSv2mfTWIhODNOmXZiI+Pkk7CgnuI7s3Kh7qj8aib6cGi2/rVay9f2jnCn6etF8rxGPHuoxLW8WVnr4H4MpXtlAIzAXPYX4Z3Tpfc438B5R8d1vdfZhHRwPyTuMNpmkY5HOaCIa3clY5BONV2bCMOJ16SRvOvdVAu5JIULk7qgjQrWcQ3V6hrXKdu7dzCqtNSIrIrTmLaDlEgXCnDmFgGP/iWCHZ3eRpW5ufpi9pK40x7tljXvjdRTn5llEvSNx9gEe5aGlzJSspi/VLD5bmPfGmq0nFvlnO4GVUEenzptjQus8EiY00Cbba41GJfiUTII2SsRVF4F4Cls7J7eReZJxx0/mYvtn2RjSPI6oRCGjj4yrZFDqRzhRnJR1zLw7sBUUsqAQt1HJX0rCZs1txYuSt8a0Wd9/wp0VVtJYmafjktd4mxEtvpOfVhCfQVNpJlFjPvCl4l63s88yq/TkYfY7Gq/lnKPzqGWj4BJHjPwKBHUoOT83gm7uS60O+urHUcP1Fy8bCUkVKpSSlCQDdmVtmSVvUc/prwgubDsl/ObtcNIjjIrrmVbYDlJdbeZX0IAcCuiLQjTw12zHWXqb8WEZgHEVdRgCqZd4GEfpQFPrwbyO7dk8nM8w0UIV094AKgPeS2vWCgbBfm1WvekgTIJEenIu+lF0DCd24xstda0zqKXUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrfYCYbY14z5kqHEqvboDOEm3Hk52WMlu24TVEyruqBqtdpEfr0pKUfZrmtmuq/mCBfHieUwUo16HxA4V8zFXD7OzCPA3aUN2qYwP5whE768Z1SK+ftzOL+dAlR6Bf2tWZLgoZIOvQGWOQ0sNMNllDmTAqAVuHRGN+pxhvwOm2HNfGKRW7aNffiHcosB9QwLpodNvxAt5O08Pg6XuM6pFDq+QvdR0RcLgpbufwSoNCWN/+8JjhG+bGgUWk5zpOp5P/35NBqYgQb83wLn4CpaWx2O2C3uaAF7zcHgFAP+Z/CPigkdqjndpu4dzRvzpxTVeA1b6oZSebJRVZ7DrqLrTZhu8NcRv+rSS3T0AFPpSfraQQ7l5aN3l2nk5RviKifYWanMnTuHnKXXz3EpaLn1767PpC72md/34xpYpcFv3WQxajjI7Pr7KbIVdFFibQLrDkMSXc4ns0GvOOV9JhgoMu/TYEwSUoENxWQ228xUeOpnnHnf9t/7xPP9MiXgroOXE+Yj51Gqz5SNzlXaKGhPcADbnjCOwHet9LG7LkT0V6XWRVBK8qi9yIKaJqyhRwwbM/oz469hVa/mWXu5acTl3I/3nx8ArZ+JQxVMy8v96Pm0n8YBXLblygK8AsEx5oEu1MuxBKoZVG/HqSgR1Vucd1lcscm2fpDdBoqFUKhW5kC+Zy9N6DdBWFvzLYASomfSQ2i2rAxDtH2UXpElZ5oCimf3/DMY0jvFORONmG0FB6NeG1zfWeAwncfTNxucNF3l0VfxYhjZF8JRHKVMR+vjeL1P2VWhsPkAwkWOlG/ohZlUrARToJVzQZfbUuG7tIv8ufzK5u8IKa2ipzTPRRZbrUVkSzeaTDr3s398ivWK59HsDqQtz+tnDrkDy9Y7Vwib2au+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpLvUhTBHQCkCVcgdfhLp2COtYcYXdcvNweNrir4w+kZmITAawofUYMPqOo2jhCLzJFd7bmj435octmTElRefPrFDkUWE0H5ryMNwLHxiXi9ptZGLhjvExsSOw37bpGOQ0ck2h9RdDusJzHk8Ubo4UGgE4EaiZ/bjw+H1dSu4P2zu7dk5blCt9oodqx6kEg/5fFAqFdMVJfgYm9fYoq0I53/QVa//LC8yslbo+6pbbr0Sb8Waa2ncmNEaMY/W7KESXm7+j6khz+CQL+lFtcgxk2jP/X156KbSXcPx0KqfB/TR3EkN18vFft9VXWx4cjWTeTF1HMY111yV9MECxMaRvMrVY1lVnVGEEnQcv+yQwLbPEGyszX6MeIHfmGhcsN2EmjOwXM1+cfYC2irxtEZ7ZExxfH3H4lvVXzvtMmxfizyaUI+3ZAgu36BPo1EpJ/9UQVtyLqMQOkr4gNxMSbxuUUKlawp9plCypUpgoGVZwD6c8KsTwordZ73DtgaWAQjtbHokDaQriyuKD+eBHItTpXqj2d2Spg36ocARcBaX+5ZeC03MXxuD+1nEOqJeO196bD4xwK1dB7nkCxRYWCVA6VUwFCNJ5G/xI/vXCZ7G106ZBxYBUeTK920M52SjxZRjADWtGmGm0c2Hf0niH50HMy11c7j4XdrFz1Ta+v8yJ9+TQh3J0CYtORX0tMedITNdrTi1W7hblhh0pFJK0fdtw1qiOfbJY7eNVgpp5ajlay/dYhXv/Ipb02+/aIl9zvwUhEQePSjjHIBWQyQ6MFPfrpkXaXxM+Wc3Zzy3bbL8hD7gR6i2/ruouJkuMQBHBkgl0W3W1VDgmVCw1UdPquO3x5dI11D4yxQz+DK4iLc4muS69QiU4QpCWV684PpNUx25Sc7m+M6DsWgnD9KeK9lzgkd0t11N73aWu1Oko87GxqKJaEk6egDBjIFqQuo9mOedPUTnyWKEf6dAq+rks2D9J2ZUTEigAvxlhAgb0VLHZNnf7mnRtUU6Odeuy/2LjqxCb0NkHm5WXMAFvlElbBcvSaorj4hj431/sD2t+WkD1Pzs+5Psdxu4DC5mSye4HbCx+8PuHFr9ZVFF79a9sxcO4t+Dc6ZapGDbTNztq6DCbgaddLw2zf48/uIQ6C2nR2UIANNTTraqPWmbss8JW73YKBTPdl5fqvZs/X20UKlDXhNr4yehN4zprNQuZtUKpQUJRnD+bn47NhuA/3D2ICpluCTxR6ozLy3ikByCiH1m83h6mNDgX2LV3ycjRgjQPAjOBjECNXZmMKOtddxHiqfbrNWeC8esIQPhu+HuBYUtQuzyYzMhGN2zVUGxEoL60xshQBnCJySz+gzDJKIrrW60m6v+JqXtG2tpkW455zkiQO+aAk4bE+9zVByFt5R3P646HYw6KwD5orTcfqGReQteqHlCxnIdFB3jI4ayXCz9busW7wUqZ4VBPNjCiZ9KXpaRaaTqhTEN2EXoZcu/uUf4pZOPYGH2KZAumI12a34qgUma79nD0Mln3m2Dvq8JSztFg45QE/tjgDe3tsPcTeCaAOBEHBOV4g5RwQV047PsuuikUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrdQukLvTjyLoDQsrjVHITndicjqRdxq9AoHD59XxF4xeG1OHYiUx3E2mku07uzmtitxzf1bkC0vYRRe6IqVbW8vUW3SKgYOTwbHrkTqVaWnXo/gekVGVlJQ+b957y0CUkjJRwz78CDE8Eqh+E1jBzJD8e/FDk/6MaZh+ny+8DaNyHSn+KWN+g5IE/yW81x8h/ZwkgVjQFEn7abE3Bs5T37HKZL9p3azpuPdmJXDpZ9Oc+Z9ORPZwGR1aOr9F2wxYAQOox7dnpaEr9vwwQUniwmu6COOzQt29QHmqQJM5UrMfdSqbrlHSNeSuRCZt0EYt0QaPL+pBGKj+yQ+c67KzxEFoKzvOrHHNs9hPQD+qaZRwfP7VMDNXERB3VT2BBWb00l0qM2oTJLY1QfHSmqdoOZF584eVHxRe1X3Rgz4WZtQZSv+W0JtVF4oX+oK27V/siFgUbkoyjbhWnDNsbEz7P3n3lAZLR6HsWKP9nXlkgR/pbxH1GCDrVJ5s3MfRCgv89eIsybNGLOQXBB/dWOauo+KWT2ve9DnkvRvaCtTes+pY5U1HEezXGpMV8lA0sV+cquHa3hh2ojqTtO+FETUq45Gzcs7BwjfCaNvmg2w+fWVfEF9e5/OFXefNzC0wppZkujwndaeLNsDm4nwAqNm5AlhAKoSYyzlo+5eDyUkMdrXCL4SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekDMn0Qzj81wa5n0EZzkK4u79eRGisfvhKDvWJpn2ybAb5lq2cPzUdD1/LNNUbQg7C4iPdjXP8IJPChcyGWYT0Wo2P4IULRUstwbb0rVzzBSayv3ur5m//pbF2Re8k6PFJF6O1ZJNN7O9MXibJGEaoF4OQ6E02O5FHhAQU9n418873Dy0MTgwUb5eJgbR3GO41G1SXqaiTs3LAjFeqHW3tAlL+rp95Ly6cLguyCW3Qa4wfGbbr/+uuykX/HIxlKCiO1GUTkvkOkN8nYeP76zJzGQ3LjSCyyzVGdqKofxi23s/eqpIy3nZPYaN4WwI8bh1HLSuC+gCj3L1EcXodFPsRKynJ4pGEKa0ShZh7V1wyygznSTqeu5z0VFZOG9sLGz413Fba11m9YpG30yTHZQUZiVL/qG+Cb87R7xgHa6hcg/9EHj0o4xyAVkMkOjBT366ZF2l8TPlnN2c8t22y/IQ+4AUvNTag05ifbATRkMmnqvXNjGPSDlawv6SOFmt6JpGsqbSv+eWsMMYKncg+hb/2lBr87swaHauUAnRO8+bXhzr+cBqB1ErnPy1WzzyeWB/AtMddvO4ICvkZg41mEgctdAgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQCibn0+MFrPyZIAV2dZmc//svdxvY4BVaJBQY/XK9Tf7Hvff1olNoporr7CEURMts3uAhfTMfvoc9XfzDcQ7VBCJuSNT09uRdKDpbATooXjLGUeI5mp2kxc/gO4ZvZHk3Gm0VhF+NqCc/a6johRwdttvHu3QqF7w2P45F1sGMfUWCNZzAd5WxC0IkF1XMX2BckojRSaUQTffoEreWzy5wPEReEY8XGaYuBaxJ5PCqi1n/RSLJGzX94Mw2rruVV77iyR7bEgZ1FUPbYPsQ4hSHhjZZtTup3YH0mWAB87NMfNtFS4aIfuVnkJcGWFykxwjGMvI55AZDfKJUT1nLi1I3ibkn+WCpTp1pW2ggSmQ6bBHNsiWjyB3gFhOHpKtXwbIjdtqxwiCy4xf8VJaH6c20d4fSrP/DGPhrPh21kcL+CUg1Cl2Fgh3UZRV//3h3MTFwzFazkfaZRfQRZwSuAdQ5udE1KOFyudlxH7WPWqk/V8ROG0dwO9q6Az9j/lbvrj4ux8S0Hrv0pAODZ2/rhew7MZFpbcRF/7J0UUiZ2f6kmC6BITu9q4DnYShq6jwzxkH6OdGUReX7pm9Tbgog47cKK2FtmKZie5VjXDXcMywrYml83SxEeO5iUSgD6UjXMoLOMaMJveUnkY2B0VgsccAt6nWpHJp8jwRBR5kWgEbQkE8ck1+CC5yqb87ZDXs+xanXfgMHfMgJ2/b2YJ2dA51iMzoxrh4fbvi41KMIihvvqfuKyuwYwDyQaoG5MigvSXc32kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYWL0WuiVXZYSDTu7wndNPtNgR8WH6Ygx6eABsaT2KlrQRLxMwG7TZv2lYZ46/96YOVRb4wEEEkxnfL4ZuiPcgFRxb0BYb1nQ4PiaxoSQZp2fKmwY+6lWMwwYqTJG4ZhskWVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnixKuK4SiAYigclwrB/wP1QNf5g+tkDZEvW7yLdqlf03sVgwpbWkOjaSHxjKBRMGlhfDpHwP+m15crX/Pdivo7qcquczWZUEI1c58QcFcyGjpee5wSyJxvpvpkIwdDndAWebfMu3cEb9GvwyPCaCrBlcEMy4GZxtiP3UfZqxrJ3X2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYXkCcGX4NcORSPkuCb6+gtSBFxs0UGziSTjByArbv/DeDeAQoNp/o/D7nRPMf9yhKs00YqZ1xErckVgAKq+74aw5NPrFeMh2TjI61FISr4Xq612G0TuSOGvcGhjwScpdCrKPkJF1DxuyMAF0NHYFmmdk5OMePBhy0/SGp2Xwi/KoxGxmlKxZcxNkd2Uit60za33cYv+7PiFOAIHq60AYLWF+aCMzg4Rny0M552sQjPQ92+zvLoA6cGBei98XqGqKFkabRWEX42oJz9rqOiFHB2228e7dCoXvDY/jkXWwYx9RY9qXUIdU7R7ov4/GfwFijpDHvOZgEOUBFaGeGC+S4ViZxIcY1s2WtkW55d+OJcUFNgYoBTcosOMax0U9zZNdlYUGJu+rTEeo9yTeoxSuQ1VJs/UtIQk+s5w2ifanC/MkAQPXk9oLy3bJd170UxQIQMsfKjwqQJZhKxBedR+dz1XGiWK5crART0t6gEvoXWc5+DV2zC9gXTZUaAbRWhnM1tEcCUwNOAiPEPK+ga91BQBgirp2HzHYNp74GJFgcngeQIV8csQRnNqCURZsdq7arK53ywU7LmFyTYrsl49IfzJtp/N7SpP9/rp6xgD14ZibulibDetx9waQRw0AHSz+VjP3y5pIszCQZYaZ0t7JW7DO28bZ3cRzTEkEwYtrdCcR5WmgvT5dhHyy3ZwzUK2zexJOuzHoz/fO+S5Y6nviKzwbZPTsTVbo1cYARWNOQs75DtCAZg9ypoXC6v0fRMeXxJjDum5KmXVgU0WN/s7rHqKmv2IeRFQCOBdyhMdnX84T74SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekatwYyUc0wxRBezGhA8eS3weoLdMFVG3mq6P6xO/yZB315IEQ/13GHGC4S4aINhap+U0CqTD+T8rAGxZ6Ylc843MzDnHzVBSCoqep3I9wA8Up2fB7iHody1oyJ4jBVy+IGm0VhF+NqCc/a6johRwdttvHu3QqF7w2P45F1sGMfUX+16wwIef+OVKf9eICLqMW0NLkzPoVTrXXnYssTUnkVyWnCW7HufSndo/uFfbmnravONKIDqjxJLw2kr08ID1a+lbr5xRw9hRXEXhxy+MENtxyUsqGG5Zh9+NfKVqqQWJmPoWhx4/wiBStqOdNAs67CZi8b312xRoYKs0lK1ZcgEsjnMnkW6wNdymIwtmzCF1PAuvt8TRq73qnJdTzcIcNEU9qmABzzzlYt/AAEwz4/wU4xflpL1L3Cm/24jzhJTyvSFbCRj9bF+Re4pZOF+bWUlvcAXOo+wi9Gm2WycmrFxptFYRfjagnP2uo6IUcHbbbx7t0Khe8Nj+ORdbBjH1F0b+76+mIw9L92hjSxyGvVtLs1ZSu0Bidmr06DhIaBrhVe16iGj6rTsfh1IXiXCBapWmEA5rDVcVeDogFzCX6bHjNAEI/wwPJmv3vHHmdREw0+WEs/8RbM1ONuwE+yT3MUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrf/1ww2zF+Ph/W4nIPLL8FsY6nK8NGx0++bWPfldEo7KNzMZE2rEXJL1TT2yF6hwXq5ceYiJcmbKQECDl9WGB6xw23bESqgrlYBQ7BfXB9fcmnNQJC7bVCHjtLOCoUH4+V1YXFKFNo3S9MDokAhwvICORmCKY88rariCEAsI9+1ZKxnTMJVE7yz0fD2/Ki9wwpqB8zQFZ7ngbez3ChkQqwUUWTkeqmOzK8yDUD95doros8rW0FTOc/+TtJZXvSCgF9BD1M6yA/HPTsnnfOgHLhIetsbj7JqCjeB9n2OgMbdG+5VltbY8EHFXo55Twq5vF7gHz9GVa6hoEqn0t4MEnJ+VcS2XGnmchfpAcdYMcIZ+0zJJ0lEtLnwKXD4sJAGsx9o3KNC1hGarBs4ku581JxpgxT3jlZ5QRmyIuEGLGOyMkODEJNZsrVpoQKYqbtOhAPuZ6mA1wCnBj1MsIYJMOSfMSihTNTET7IGXg1K3iLWyAApp2SFRMLa3ilxoYUoivNHVNfQBOFGwntHgoD/K55iMTxDfWtijuxFUgLNunDq1aHsCqe2FOBrDICZSreNZ+IqwA2MYq6YxgOs79D2FB+gbjFuA/jPBHGVinHtCKUc+GQ9RTXykRgj5YHhShwh859lzadmEv1LcWZ0NgAYI3jgx6YM7w5Y+k3Lr4UWbZA2ixvtcXktisr3ZY5I9h3BaqNtd53qR1/EXK+o1D/Oq7/Jh73QdgD9SJODYa8Eb2TodMaYlPxeLjgf+dDvL49cOgKMbWuMaEvXCk4CkXj9aNKs8WCkhkDVIaNal1HdRjcuAf6Kbfd0UPyVTgj9+g/ANfwhP9HLzcpBzThtbv44ibLo/IJrZPXqBxGqGl05gFkWpzcH6+6HCRahSPaIA+BIDDjWC0QEhHihjCIoa1t8Iy1iMNOW1zXaH20SnbxWx42HqIjxGUtboKfzeaXwdQDk/Vk5bMzqPMSyvbeRpBZT6CNvlXVnmKQeAyaoI2j28b9EsZpgLHjaYO/7y1ivwcMegJ4PTl4KSwwAoIuoyNh/0iXHRPqK8U4rQv6/H9p+JTYvdiuzxBa2hjidJEzEAlEG/OfDFLdt2mWY46lH2muRrPCUZWIKEaEluE5uLhu8y1tv7F4F1MqDUUk0NskIcOQpO66l5uETBa9oGbI3WXvm0UNf0XMZOO8Mbo7HNHz+RnATg8+pUPHV64o0IWUaUW9S+jOzOWMQ8KAZKegZ+VvuHZzyaBWRRw0H9+5Izh//ljazr6SfMCl8EuBHgojJ43RgESwyjpHeFq1yNdgLS1KjkSCL7SIrnZskQXylykba+BYZ3nzeL1rTWBDWZe9fZnRgZFou3x2A04wa0/+hduq1NSIagXpB+y6uSl0zCIGIXyV1Gi9vtU7psK5spEOc1Pt2CSdzznZi30vQ11PcikT56Sxt5y374F6EwrBSdCvEbj6XPXu4SKwWgdpNi61BwLQb3VXVs6th9P8J6QVLP+CEZbD0bEGpKKbZLoWWIPTlRdQv3NZsivPT0tM0ihpHVLaPxjq3DweEhJFq0nNrQbdWvnb/bfQq7UMaCSXarG4xI0hnwBOglCVJkdbm7ZuAha/D39tj1JLALxX4fEyx0/+05Qi6X+AthgXobHRqV+tVIgMTWg2dt21kWlPgOKEc+flU+RD01SnYG4fro/5/5MZyZee8UnQe7q09UrVIPVK1m/M3/oWf99tyb3T2H6hE0Mo/dg6R209uyYZq7/lPzV3SaVtv07vhI8+EpqOk8Yx55GS1k855QQb9gTlL8ahsij0g2A0RJCnCLOwmpcJYMQe6MfQL8d8Hs43JjHwnL8OMraf8arbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJNRs5eYmlkmeLEktge812fqQAzyDethLGMQroLiocEJMaXMCcGRp3otd6XO+mLFZ+DTnZUjAMCtslrmZR6xEpdr7KeSP1FaWpPEtJyRHa+Z35+WX5Zu6KpQ9TA69XRsp02kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYXbSR3ADDnh0xfbNS1PLKThfSVFIKUGEYX073xIpLLxFG9VKM4Nf6u+Glidy+CEuJG+xZwW7c9g3Q45Zmv/SxS9216wvd3KCKfh58ubEpvM4F/WzYB1iuGHEIdABdlWN8XJmx4ltuC5NIKc9+zpLAOzgGd73hngf/hy4kA6VQi5CCMglLp2HBaFDXb63F2DN0VWYXTlrIrJ68z+snmQyBUL0Z5keZI+DvYoOrZt9jDsXnXBG6OGkf/rCJr8Qjb8re1To5rmiOreWEkszr2RGSZrDjXFjIeMG1uYZSSP7TSs9jjvxZVRE0Yd153PF3ZFxjELHw8sz0IlO/tTYB2FGQ9nJs++To5MFERat9GW6hA3KOtVKzG4ma3lsqMp++dpHrciorqByOuNzyWejQlwO5MJm12TjqEbn1bGGrDUc3FJ/tY4mP0s5AGmnavBDYDeLKhS6Mbp8yijuVIkDsjCa0BMZndkEAWRuyrCxbMfiwrWMapsweVuupznY/kXBSC0MkGCUysk6SNI9Ui0mIoXvN5OiPSBs0a+/Da2crY0Y3YAKlo0bu/9BWRV+Xj492N/d8bvwtgjsX4jYySWdck+iAC4ZZG2QX0LSqRmIPMxICXsvCIlv5v9ollNIgNlz+/g4RtmPoWhx4/wiBStqOdNAs67CZi8b312xRoYKs0lK1ZcgGcr8G7lgKYlHh4N6/SrrlANFfKfPVSk23FpkXtvceT30Z9gGnCOGVRZuyKl8OQkWzrLIgIsgHoUGHblEf6PGyFitoK4JUXOTuk+k6Ch5sP66kPEfwiF7e03ii9Hdd+zawgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQ2fMKQfQQN4TLPn+Ha2CesuwCqv7kwn/Z22byC8FH/GGc3axWQUbp8bTDgb1ZXIL/oR/VKERqmDLiSgAYIHdOwNPfuXHuTO/ImYFGfX4EJKdkZgbfr/AUDua5+MxVK1Q53ovCPkIg8r0XiqyQb0pQ1h7m2IH32CLHqa8DiAIEELJ/UV9B1tqiNTtsHgDgPqxeqW/1K0Aj1lX1EomIwE7DWDYM2625qGIKKjJlis2vHKvXWJlHu0pcT8tddfi+EjcaH/zIWqoxt6x5M3BwbE+lGSTLDzsvLYmwv2OD/bI55n6+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpDinFwbt4rwWb/qrK+AAJNkCHzNChH1TG0myi0Zhnb512oYezK+zFzQzVURdFujj4CBxCK/KsktDAf0HOuqtDuxzB3jO+12YheIAlzM1ZkxYdLIWl782Ov/e+OEKXoiLm6jMdnXkr+B7//eoKldxn4o1ulyPWCbTwVb+uzb8mw9Aox+KOYD5Bp1rkk+56x8MXZGH8l3CHivtvmbj+R7L6scYCJV2e1kH7oBPskyjYVKeMKLMAkNhRcPeTPyy/oZP3vSmvAAx3UqLuh2Q3qpFsMtMmRbqrjhvWg3JmaXyCoDf8sSE2gWNBCtcOchuDzt/Hqs5jrlOi4oHw502D6PZsAx+xMSCTM5StMR6vt4yVZ7DvphOs2C3FspLev6USywPtXZWxpDyWx3BlKjSKIVrU8XR026h+rUkuO7/qX0PjaTenUjVqWQJav4h8x24OQLHQp6/b0Th2RtdR0L0JzAB5FRDllDNMGbJIfKR50pKZ1DQk0kTBtNeqVMxBSZMvv+kjr2/Q1UPj8/ai0+mckzl4GA+PTA1/CJ9Ms15QU91vGtgdXK0Z3BEsVHdjH/F7r66gxjA0638tu94wxPc3/fCG3cDgGubPLbgq6KnIUCkecPeIq1z1syDrEBUVgDF4lrsZFDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63KpWqdutWAhnPnpEJGJvDITPYq9D4o9rDe8/ICM0G7wDk7bw5pgcm+k5ONji0n35es43bA3+jMAmC2yEGwudAHUh2fYQLPCLglon45vADKvXJr0vY14i7/MPIMgz6uqa4xG1XZaZ4VFts4oVECwq0Bzx97MRqY+L5WWBQSkP/GeainRFPNp3ztdIf6MPZ3XjSlxyObR49Bdo85VDa3oQuKeLJz2ZUD5bI3HWVIZUDbte057CBwtvNT3OyyZxThY6VPSC4bNpBqEqBGmT5i8vKD5fnjRKcKHllEGeDhC7QyaQH3NA6y2VEfl/bGCKWBXxHRZkVycIVwS/KbhNyfy9+H++QqCM0ZvQR2XCEYKmiC/V47o7g5HYqevRB1ko9tkiCIm+ic4QnLQeV/+oP1dyzBW4eF5KEORhvo1Fpup3qSkDuIYs8O+3s1pRpJF5EAe6V7Zk5zvR6zIj51cLvjeuIDtwbTJYLjNnwanHcHfGCJzDmOo4LPsTaJ91Ja+M9cJsk2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYX9nIjFpP9U5Bl8dfs9pnSgs4jGN3Wct67cn7sjDDiCVzrn4H/56COS32DRlX5OqkOEcJhVs2nLUKvEs/wG8EGX4LJo2g6WHyDBG1FuWdsvAa/EhR3aLT0LBj/xCzg+LVeVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnqNDgyBBvYb+VKBVYvckjGgT+0RzWrbIZfUYukHVRM/8pv2+KCCyGfKpZPptA8GXFMYbdtRuhGbSi9o8cT3Ji9o6om/s+syi9yt/TRIuyJc1mK87qG7A4anSCMhDNe6lSDBcvy8fNgGi1CPnNfndXw32TjC5SYUC9fQX4R+YIRhh/Ne5VgY3VGMrldOpo+pt0hFFEu/f7/47685v4yJYDfAut+LlfMD/upJvKqaAN8ZXVYmNhP2uYSPZYBNAVZUVjn3N89cQ260SisZUqh/tacxaGklM/aySAhfaqgCWOMb5UuuVbQra25OTnXRCDMw3AKVJvOBa3bZJIDnS4F1qrA3dSO/HAZUbu4jFl6rd78sC4H22SQDB5WLV6FwcntkGPTqjYHD0vZWA2nzU3lhug/dJC8YEyMlKP2y74WU7f42NjIQGrZOuzwCpE/CMkw8Eb6Ig9xVsAM37HX9uGg9oJVTUvxjzMyQalVn0hPiPARYmK8KYHHUR2Ts0JDjlrs7YAGd7VRpjMj9pkmnUCThAax9YwI1cSKT9SjH2G/UhFXLtLmuOFgGrLFvww4MhvGh+z/v1KK8arP7vXMlMrpYieOGztyCFBVvNPdRVGJ+76Kb7Mf3viO7+90S5PadeT/wCjpojYCLrMKvQDLIvPUeuk7EmDt37bEcZfALKU0AGdToOvY3zG8tf3PYYSEc8fhVKErZ6JmQb+jdiMn6ZnWnokTMuq0cBKNOyNhgH7vtNoxTY5VbTDZN7/sGkxMWiXuf9VGrNa+7FVDIV+pPy6586LxpqOrb5149DmRcl0abuO3sA+CKTuYh7zPRSosRfpGbr1AXDeQD/2eFb5q8SwwzaBkKI8npRcpfX5e04H/pIi+2FsnXlZWRXVIU/ezzpd1JNy7FQJuJSGyDDb86VqKEH0IEfoT3Or75Bul8uTilyaIBC7L+EAf1mMiJ0E02Cxyv/UAhAn4wEW+zfGLXGHTxc5tVgKepFQifgKeUI14iRk7CQ42qSEMuPL4G+2VwBzbefpUFJo2Pim3i1/bzrx5W40cmY5guarSDn79LGrj3kMeEI9lRch8/wMn75VTVCoDUrl+oIYlorKuhhgkKFVv3SMQ4abRWEX42oJz9rqOiFHB2228e7dCoXvDY/jkXWwYx9RbvdySvjaUefkQMnYuOOcauUKeiw9WCV4V16zi5DBAPvU8NZoM33wrQs5FmWD3jEWQnABTNkGubTo3kQAK4sXura2Xwb1JdkWXFeDJhFkLXkecjo/4+HwScq7Tx5iFy3gN6GHJurWaXKieCnKfT0fDjKvWqmHICB0CPkCF/XQb1Rbxpj4GcZ4yHa2P+tzzy8pLdRk4dynDQfAv1Ln9M+LpNF3lI7f49K5s+xKHcKYNk3Qihe3TR6OwQHn7UVQ7966HSLb/zSQKXRdGrpZGR20l/gFEywrFEqj7zPxRlhdgKccijMzfiOfRmq2Yve+CBh0D0M+gcDyGshg6n/Ou7VQ8jvwwa/QgSHAxc3kXQty/m+fzGI+d+5oeG9Bbm2DYaeHnjtmHe67X3k4QhayfJlteYhSeLH07ithRBw9C/ClR5+FoB68L59Qh2PdM+UtErjofyxLZMgtQiIOsfGAfAPDbQaf8f351S+mpRqS9SASe1BrxTLgX2VTjHZqdtVlKpKwFDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63f/GAWlBONuMKdn2WEPZZjlDKEEb1/x9ax9ck82K/1hxuWnSJGQgcPCOi+uB7rHdHnkEOwI26wJhvDXzGg6OSdQzZfRYBrLbSUcuhPQTZOkttd+u2/cruIDVwfpsFXnJ1tsR8F0S+jXh3uATwg0K+74U8zZKybsYmQEDtYH3fOUmUmFDF/g3htykL2SKv9x5IXtba190NTGzQk5+s6jaAk9ASqAXPWr758rpn2TN+AEWo7x8se5X1EviD7Tma6ByL2aeUDqBijIQxFd6EkjitCFIg6FcDsmO45FjzkGqXdW8qE0TL3xtqenEedIGlVV9prmy1rEl3XFFIV4nz1n0FqurUOdLO4Z+2Kz2JAlEXymhwkP8yxM17wXUHfYqlfQ8kmQalgplGvkdpTUOTuYb3BcLLQE0tvZBKRn4mWhuo0C2zgXxc95LI5yrq4vBlhwX0B0l+V/oCP9lPhUmJkLQKG1aAtjGRBXgwRCROC/81pwGcgMUTkzY3IzbCvd60B8zj/xu5Ib+a34Cjf1Lq+68IIClQyr6XHd9F31/L81H3r3CE4HIl8tAUVpqN3iRrzPy6SWIlDfqHyRU7cUeePXYyZI3midxSRFeCsd5kOhTEEW16s/KKhjFFWDijc+DDENi6VIcLRgH4pJj4EbnCR4FuZLo3vfsmUV+wY+IANZEl0tqt8+Fs3mqM+3C7os1NkURcw7I1j4R295Q9EOsOprPn96eXSj+aQ+vijA9TCKfxTusaTeN2BLM+grotB2z/Kruh2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYWxZf1IibAdvlUuCbOcJvUXseVUtrrffPL1hr85ejqWbKjVKt4H44bIsj+RyWZL4gMuAp9vFNY2cXjL6ypRjqL60W2fy8rPb6laEDpZYlhcerJxF/BKG1KIMb/maj+DONKFykfu5bFEBNuijGk7mNWtxnDY+l/mDnF9JPCM9S0rcHLkkQkeTlU1dI+fEcXp9tqD+AhCaLuCc55SYL4eL7S02RFEydK5nCMI7Fy7BqN/4+q/dZpTIJ4WpPzkhIfucL1ygH7+4/yE8x4JaWNOTyw/Pv07GpQHmgNg6qL/cpn7EbadMFlfbECNSZnd9BOjYdWFaNdWyh1SXpocE5YtyxE8+PaVn70InnFh4i395JDVlNodl8vAYB/nPoz7OmQqKNVeF6eCW1ZBdsjuaRXDqYPnPGsoPmvhJer+EL6nrFx8zLl4JBTqn5+vjpkUbGl3WYr4ILoyhAOJxzi7O3xzuNrivhI6ITyBkZSBmwKdm6QdNV1mtfMLOmtJBEnWl9mF56RdML3Q3gerlAYjbwaGIsgDw+L8A+xijI9pHcV9xKRTrAm+G/x5+rHaYxXeOeZS0cl6nAp5Lu7KcqNjxeqNXQgR1yWnnRZwFVXcRl8KfOJmRKtWs6zpLvgUISUQg0+woge2xHwXRL6NeHe4BPCDQr7vhTzNkrJuxiZAQO1gfd85SdeX3WCjdd/y4cFNhV9LaKnVgAknCSgXNEbwN9DNK3vaZXAu2n1u2lOh92uQhuEmwtvaR/McZMIZcAKpccYX1CvSJb2nsm9xUVbvQfqALGE+XRM4UiUZZ/vPBqC+fsRcF1pUrJkBhW0jgWvesNdmRfKdD4qfJ5YT5lA/yKtg7VrYw4r3k7b2fGg0T8Avt1FdSvBNsPyuUDjQ3s/a2n2Aekx2Zp9F2cEqUTszhf0YMjrttfj7CWiMD44NRRm4axWjBdjMflIZDG/+o0a1X4jP/Hz781motzrZofPnuwe29iMO/mBgc1YwY+5eJCL9b5knUw71b/03ahzXl/g4QZNLwCFBZG4cYZTj3rGWdmN2Sa2VnKIQXIu+nT7jG2Gf5DmUz5QVXrajBtQ4XQWE7RxrMWf7nPy0UVP7UeFUhwCiGNgM96htMxm0aij9QWGDC3fs1FkfcTcROc8xYJlVHg0OQD/jxbGu6HAzyX/pDFz8fMzDqO4mX2Z1/KKmloVmYZ0U9wgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQp0Llgw/XTlyhDq4xpoA/cUq+xZ+Qoxm3SitsyRFcxlFYy3OKoJOtSV6WAELP2R+9gfSihmFm6DS6oXWctOWaNsgS05pEEZx0kZDz95/QH1s3bzlCuOkrjdSkaOKO7raLkkcrF1JFkBcN+sem/xd4ZjrxFew8ZugPNqrV6hYvhecJOgLXwD/fYy23mHXk13eadb/Jwr3pxQ2KgB/36RyyNBPApwewLCEeKyp0R1mp4XjttreSSP3VCOgx6u1BvkigBpghu5EHU7bGBeoIalVfqHSbV6KDs6sHgATrqmAjCgd/ValMpMGyKRSBcJ0GRelUbIPqyPUlGwg3bIl9sMOVNUS2CPtFxWrhx50XB/dlq/kj51L4Ji+U5uM9h7NuklWHcEvOr8PDBS+ks5/tx2cSOp19IaFGVrSpHXDpaZb+5XMaRGCQCJtqNrOP/QtwwL6qLFtNcy509O4woLkoqnPIoNUcurLKN0FwK8xT1tfzsL+CmkW5rWRQrwsKoUtE2LUo7n1ImjmRCAQOPwOKyn/dv8IFhc97ehjG+OsWYzJXogE6pFaFESLWf7mIZX7sP5LxA//UeVadhMdDTqwMGmgR/SMMKovcVKEpO+3tgIICxi/icofYu4sG2RV0buciYIBlUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrcm0Maq3m6m2RwYFv8bQtsK7k+wOynsQXRob5RMFn2R8gB4Q+XxHG8RrYEvxTJ6Kq5fv8wixCGGad4uLU1ejGZ9H6M8MIolqgM+c/zopfJIslTvua3TXY/Ppx1bXEPnBBCeLfIE9C8PK8pgTH4/b2W/xC/vgrnybs9x43x3gfEwfBf7JI5t5tJghhtEbgFrhyQWS1pjdR4ua66H/6LD48kcCOm5A8QdbjD1HYXEFVlCCYTMuc/9Nw6OfkwN3O1iyGKT8+H8oLRAgwGaJAGwmN+1OQVWTXEELaxeCOS5jcPZTE7K9IZoBwLxzcFJcUsalpPymV6VItAHYIG3X/4mZj48VWSpMOwnJJjiStNbH5EMTgC90q+KwzxP93UoPGLnS5tdAgGw0vdYfORi3bShkz/WWLSBbH8p1jD6qAgDHvkyE6df59XVMzBkHx/eI2yOAAQjegPmiOIGQ+54LJa8uP/Cbk+ctvQiGOv0SU3CVmXvFoeEHjkpNX+UXNxZAjnLy85GfWXW4NQZB0m7PAt+vxYudC14qPZrXVl0LMJDP3VxHepDYvc34F/O4nokDvU1lApcqNLeIUafn9q9jU2+GZcMHGzs6kz/tLYZpb11wDNJgrgaQ0u69vDZNqW41E3XG7G+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpHIXenlyYQqFHIE5KXEVb5qTuqh2NIiLq/A73gM5JF+nZbjSyn1wV0QcFIjuUnlOIg+pI1biJ0Zshnz7yvwoD350frqObNqUm+tsyd2z2Sp3Fla1VZjNHIcfPpzi/NRyY8X2gcjazScE5uVotNQmI9+zIqp/aQ+sQoOUfz8CH0yzYTbmhF5Qo6ng1RRefoH7XeCdfssy4musxnGvKvIKUWmqofZLtNuMHKiBJGVrmjgsNbu/unY18DGhueWjQl2rgzAjcV3rR2Gf0qHB4HeqkAHoZce+HTovp4Ot4iZnu+MIRK7Qe+z12Ii8Pjxx6qY0anWB8HEk+Rw/YnNXefwsG0eSS0IremP1sN0g6VH4slnlHG6e3VAoStSvTlebahbkIPbeU50WetxJa4kJBSBSvv9N7jIH8CWwSkoKaxyZATWfesMP5AUTx65wl3o5p2Fh97RYqYnEQEoa3AuMXjXRvM3h5L7hX6g5VTIr7C0LrlwEBajBpfMgQBYq+CjppEHoJksvsS74QBbkXlaGhwy0f+IBz3Duze7CQ3XMA6Iae7EJIGucXm8DkbMM4ILlnL2onHJDIzApDvEwaooytqoNvx1tBKUn5TElIN5jZ1OMr9vuSunBd4gW0nqRVgyqdV0g5fxUTYKVmf3LLFrf9xL+CoQk4vU3O03CSliE72q2B9yCeeueHcmWpjAqZM218TDiWQL/PxhPuBnDNXtawjdYrhsIJkqlXRX8BmmASIKrEwiqfKWWMs84yVwig2lZgU/10AmSnKqZlHUrqaG1znwT5iZbNZigpuf1P+qgR17AZGD4qwhmX5eI8tqxFCMWecvLS09UqGIiGUrRsYzjIPQUsSVhu4aTi0xtrxTnVj63yyhaibe2dW1IfB+nkRC96u2aThxsRf3dbno+/Sh19DyCvtOLjrOCMtQ0HjH3rgvdw1fzyzkJ+1tJDLvZMB657LLNhEzmMj9WajSKhN07oAy9UuH/kn7qjbFFEVW6KDOeaOyBYYQuLllBaSGxC5bXRxT84PHaVS0ukeFHDVkBBr/dKFmldrBNnNEPPbE7J05/SKVPMBQjSeRv8SP71wmextdOmQcWAVHkyvdtDOdko8WUYwCDFuW2D3sUiPhXsF9GxrNEpTh5qAq3XCeyW6Q7AMkXMs3uo/IANY/ej/3x5vIwYgPooQuYnnKD4CoR1iENDpqEt8ejKiNIl6VVG0wOJvv28g2tIMIMd/l/vtzyemUZOBNBt2tPrnLFhz8BpV/Pyz8KSG2GjUPcGOXeLv5nyos4hDfe1FXvUNvoNzn0JOvbGDFDh91hdTT3KSf7gwYGTm7EoH+f01xdX6WSstrnRAGPuVKbmEBteE0MbKCEzNieMdz5YeQur2iWeIc3pM2m+yWtyjndVOHPbApsZOi8dUcDhUI/+1DeAf5krOW/9Age/Hd5ecy8mAh/iRpnsO6sqAy5xInW2l7gZ61GjTcdFvFmU9eyqG8IB6nP4C5EhnISl9dte6uLYT6H8D7sBC0udQqcDn5hafKQh2d/sqv6+uuyLdiIhOcVPUjVkaqcAc44IgIox9/tOmwpcfUB1iY2W/TeF9eHaesDp6o8cpUg+aEsqLuioI3ymmF0Iw6HuROn+IJiZX3EBdpqdASo1dVUbU+5kFzDNoeZdJs9BBm+yyOWJ4HOMaS/KA4GcAirdVCF2LYK4Y/Ofsw8vo1rL0ijFQeqMqcFvvr+wM+QNofsnr3NDekVmKKxgYkcpWnjEFe09fm08JHPsWbIySX1pjCbL06Wv5gVHSOtJ3Bzzw24N29uk4ol81/T0XwbxCKXXm2hu+lOntO7cF93MQq2826uPC8nktT8q6JHVgHfFILhfXo08nWppaqwi04PgyUM9mEce4ZvnEaVH3n+kG00dh4aLNrQ0AdkVElJS831SCwukPg3mDH/GLI5OMKJyDPZLklvd1ewhYawfiTvWhhtmAL8Xfbc4jaZjG6Qho96/KLr2f8ixUnb/QZgiTUIg+n0LtLR16vusvZgEmmsQKJiV2/a3Oo9iR+E7AijgdznQij423WkCgWtJJX56OJqrkINqruTWUSm9xO213ItAE1Gd3RM0XOi2Ks5+CCz7Fsn9pZ7DOVnlmzgRhnXiFWiZpRNR173N8+U8kgrzMKZTV5MJiXCLRQgrkQ35Cx1bp0OnkcMoX/re+0WjGO8Pd65R9H2CGeaBKFkGGylFht1Xah+pMFtQq+nsQezFDYhA1nLws35HV/b8d9ME2RMCA4a7/ALec1+qr+WTw9cZa7UHYte55ULjTR2mZ99b4humKT7soD2Sg30TBSYs+KnTyDEJjykn1f5NYOUIwxK/f4WWbs3pG65J1YKxwOleq5EL+4Lh73KIGNHyVQaF2Aii089EjUfEzypicIknPn0s99B52SErbCG3UZ1SbVD6Z+9clmxtmbC22mOz71eiWRyUogDwzHL9nckFQggLrUVPJ8H4pFpSCXXmwAs8dwXaK5wSWgYwLqTa85ZzDD0c1RPdjKNQlLFmSj0mDfeshG7DCwzDpbPsBBd/6mC2U0ik132sj+W8fA4I6WImx6i3P0Q+6riy68yqcsGDjxorob0DkBO3C1AGDCJwC6KpJBbcLcyW0Eg8tH7XtZxQVeNb4eYwI+iJZTLy9WoeZ6ebmUy2Jd83RxPO+H5VCBURPFPecnt8TccGDmwq4E5IWf97o2yy+QOQDU9YtN6gKxuW+Cy4nyjWfLjrP6faIOh5iwvgTPLHSxJlPaBt/dAHyq751YhNpnY9O+0xO1iduGWuxpHzLmivYN13eNLXQdcmKlcXNV99OY9n9VONZYxpZHNor5ptwFdVGfBTeC+WA3xNL5LDoqzqVdI2XOJQAu5tyQ8Yco5yJsTod6TAb1VTMzy1zoD0j9ujUFmzybgzQxg/vx4srT2EgyehqP8YcL6OFxdCCsTqtXINMIlzGN8e9pCckH/ofxj/F9Isjmhj/TgShGTBdPgYfzVToV1pX2FRPW00DqLnsOmoPQdAS3uKd6URBVEOle3UwNSzRr1TJClQDPnfOJ0qK6vgWd0UTAxeLXpQjGhf1fAYrYx2QWasGeU/ltQ2Gz3F0sXYGHoy3hpNer0joT4Rla6zZE+V68anSQBXIQMZL7JMU2aTYqULbx3hQz4zdTOiWDUgQcyiZQabRWEX42oJz9rqOiFHB2228e7dCoXvDY/jkXWwYx9RSxVDGzAQpxJp/cmGsFy4iJC7peMJXh0Q6b9QuP3DOM5Wby+nSK3x2rwaW1JXFUOSZt3WPSfFtxPZPZ/v0LLBcuU4AudCwMJVlXwXsCpCldWoO7ICa5C723lpTl52cC6SV0x8r0JByfYciCGieYibKjiwnuavNj8UmilNbE+e02dKAQusP5bGB76Atyd5lvuG3r66vpNDVkVNomIrwsiAo3ObjqR6QQ47Cy3qWzPxO223YT+bbJY7QEw5junVkBX+z4nlUCJBl5LNiqSq5VJlwXlYKGMS3LXVeCIcA71TvaTR6xTRhCMWE13huEQ2LAbiVEkdwMcHmNBQgFPYcG//qGMve/Hy4++EXT2vUIQNUslEfPREcARnSbWl7LohuOUsBchPSSjk7ocx2lbzEgpHOSGgt8TiTpRutDURuFZkbOlCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dCBnra9Ydh3lG540yimrJy87j4kiC4F2vyLDID3XQ/6urNV8kslgSz0ET4YVsc8khp/3NS9+hWc5Wi3SEn7drJ2hF7JxKCdvHlLi2ut3Bd117Erysbpps9f6/lTFIXsCtf2zKqgG9RW3CTLlhFu+e3sM0Sa4MazudTmVnX+USkhBQEvqc5D+WHObRR3QHQCHkGaPnwiPMfk57d/t0saVFlt7+cziK/jI2WVOG/5xWuHKhjyJfju6AijfDybCrkh+Gnn0qt3PLbTPLfvQVEz91BUPdCeqpR/nXYJ62bPLZ9+ZtXz27wnmIt5xiG5smyAgTxK4IMHahUGzIH+rSVyWwH5uQS5qg0L9U/LYK0TH3A4Hq9HLj6cGyfsqryzc0zuu1Xmw4xwXfFgXIv3hLQSYCg8hqsptTJphCRKac/SazBDiCl/YtrKRC2webWIDeuEaTiafOx3XctNmh2deD//AzrafUStGgFxYh145VhEJUyeWzU6ur2OftP8ibE8RUQ+tLIFkxj+54HwFrVkmwoQwFOdmH6VBScIE/bW8BQFmsBTOWsydHcMARQbKMGi0SoGwYpHT1NV609NiKezU/Fj5QjvCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dB9BqdsL3Gru6Cm9qgrRB1MI8xsKNqRsAOZ1d/S7PGR72kQydUW13bHTISNPwEE4BPn+7IEy4EUQMYuDG29KwDd7pBI8u2nruNgohwVUgjiwqgYP/nFlVabsRk3Xh47JJNrGLDw62OoikphtKbVma/BDmsL0YXit2xf6mNwwXXKjNOeU7/3Ioe/eER8EMPNIGGg3n5wEVkcJIgPRuaxvaE89L8ZgynxB+oZaKacvZ7Hrd6Ue4oW7R4hdcQV72UZ7vabsrUYP7MpOUJaq81W0De4gbz+XAHukm2q4paa9NwCyxhnH8QL7xUXTf9QunMF8JarbRXqiiEIbivNw6HSIr6wveSZlGtfzyK3OKwxnKaB0gMzGIK36MVNgjxYO1K3gtuVop+o/k0CKQtgDsoDn8F0aF90D9vaKB93mRhCIMkeRdqJGGLqYG7WkOrMBdAd71WhUeCzVHRQikR1mW049FqMLIIdoblnLniDpfqGRnkUbuF99pibJTcXI7T1dMmoQricxvaxpZ+ZWOBnYIItuH+3++3IE5pyIifPOHNkH9TwqaCGybO3GMxPmFBLooSYgXk2DkMWsmJPZhj+/F460znKBYGosL0wXpiJA5I2bIMbpb139pEbzBc0lYVgMJ3uaL3Nf4EIy0G3KgM3rXaLYBCrEYQGIngud5jMu31TKajENpV1Z5ikHgMmqCNo9vG/RLGaYCx42mDv+8tYr8HDHoCexMNrPvaJMUFqxKULrcJ2VvAFNbqZyeb5dJBHVOUhCrJC94KJSyxkHDOwRbVWl2w4PfHwiFXNQO7bodlADhJNdT1nYNyabwjtKo5ZaIddg6nmEUEiavVHbeQT3nRhulFIrZoOvUb0E4/KEL9zYSXhLb82tuvXstiDbzOu6611xun5PhKWJ2p9/cgvwEjJtJEfnEXhrveMmbhnls67MHo/T+8CXaSxdWauz+8xSYYEVIYbX2GBdZzhkCL8rg5UUG8QCaLkDKJvC/gf3bjn7H55/Zc6BAXHwUCaotkC7cYLe38wUMuCcSYHPtnb9kNnyHxtx54AxuKCrjMl7g5ThcWQlJIbnDvtunwJ+tTW+6fm1hlcrRwH8IOVm6JNCZQ015QyB5o2CrkThxhdUOaOSS2xsRrIFDlyIJzI2ZdhGQRWhTTS3o6M8AozuihnCRTiSMGWuvGtPf8TTAdor530tAoYM0ddchGtYa8vKAIvoqGT7rnp154s//90N38y5cvOcuvhB/1SeWzKo4RMaR+OV0ew56QOHIhZVGY023mEXUOcxwoQ/GczaKKiRYI8Jf8n6zTydXWnSOChZoAXFPXe3twlUMHSIc/h2bnW8u3KmKbqISoyuRvJqGKSJ2jWj6n/T9aFg3xQj5QTErInbYuxD50in4MAstYM9CDt5JVXhRj3jchXngsHzAKhMibbTq2O+nYJwmQ5wDw0FWskn3yTbW9LF9MKg4Dm90WJVGvTDx3GlrNP67zsAvrsbVPJsCmO7Eq1RB49KOMcgFZDJDowU9+umRdpfEz5ZzdnPLdtsvyEPuB3QsjmNdewdQi1OQRQKj+QoNfD61hE3KJ1OW5xAIl0VXIKP+ej41B2xwc43jtJC60lIQ7C8p7kgIYma3aOofZGlG77T+3Ek/X8FbdY+TtWj127J1Hw3PxqIInKsC5X+GSVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AniS7y2mSCyfzrH4Bbyr8UwYiJalKB8my2lTqGU28WKHDs4nt4ZJLvex9WGt7OCWoTVr/Nc6VlK8vHh8+WDXPgDcmPivkRq2IUWrFvQypEjUQ8iTLncrmGG1E7vOMZimpNv3PiTTHyDLPJm2GTtJs2qIdtW6uQAgf6nB+s/gCqP7ca+Fs4ozl0xvUME89C5e+2WPUSPamJuFnC5572QxLmW3ens0XykdPHKUL+LW8C/Iwl4PEn/KDH4W87LOD4vQNcEmB6vrlC9XO3FHzBD/BVtzU9XQ5DjoMj0ss2Iuxp1a4oc3mZzudjVrgszgWmIL+ICJYs9OBhQ1Gge5lbUQGSyL+H2VXYVLAdQ2DThvyNE9PbFfbK6DhUDm7/RDOs6fYaQ5CBftU6u+bD1VkE5NdKyfCxlIGOGg0kXv6ngIrdfRfLXQ3Y2/v7WH69gDnRxyq7/Uf+5HSSWJLxq3bnFajqR+bGf48maMx+ME6qKs9oyRy8TrCk+FHxVPV5m20XnygoEQePSjjHIBWQyQ6MFPfrpkXaXxM+Wc3Zzy3bbL8hD7gA6JCUxZDEPOFVK1nUyy2BNq9E/NM6bsM5pTgqhWOSpzRULDNgkjUeLms2TqVHkahUBMYKibvQ2DMhzFmg8xmJsMe/SQURPsVTjRVVCQYkXeU8E3dfmUOy8FlpmVnu/OiXrGe0VbgkdwfTXjOnI0u3maAIlnCgNcEN98P6+LhYxPEfAeBAFy7xnBzd9ru+4ZwHxilCtcgq4fQ/nNy/V7p8zOxwkkSwzmr08gqGhSYXk9qAXeUo3BULKZGPb+quYxhv95QoSMPI56mbm2WT9WZ5Pu2S5vhhtAIwTU8B2BHDWJEHj0o4xyAVkMkOjBT366ZF2l8TPlnN2c8t22y/IQ+4EWTOPSh2j5hPJGT5XiN2cczT5h8KWK7QASLtel9vkJ1IWufxYi4uefxxUZKb6LMOlLoHyYajaGidIKzbZWG59DlFUEBG/rWKML7C5DG3UDnlRxmVQLrbYr0fqMMu7+FA2yitUzArGh1eKs81PWpH6DsRroTqyB62PThilvByLD5oxpRH7TRdlVi4zwziylJzOIEi/bcvs6Stk9mn5BE24XYjO9NcQs6y3SeW+nyqH5IeLh+b3UO1k9Z7c0Mc14Jr5qnba8+S+s7ntLk8FQt3WtgnbG454fmHOhBbO+aHU69VLt4aSnDvjFXU/aDK2wws/M5qg1KqBEvdEyvCw0BrahcTF2Xu9SstKcfQZaAj+iLqMg6S71fxKKE3vZzIjqMGshQDrsyono0DCBmgymFFpgi5VTP2IC04FRzOxxgnPjNQUZYMJgZVZYMqh+cY0p4oD9z0CTvAcDzkWpD4k0SvohJfVthkJz0knCCmFr5f3FE+GyHYEXyxkM9couNRmRchQvKzhl30uAkjA8mmAEKrEdzyKqqXpgs/Pc1Q3+gyW+mHd3+k6z4+J1ZSN4ecSuBI8kUDDbbQh2Rolw2GO1sNbkIDkYHWZjY8LSfe5/WrX3xzGLB9MScYEKzASYXVau2ClV/JQIlGCcm80GY8LKV4XSasuqGiM3pVcagQqI0+1eyweajNwBRSsSayl/M+57vPhbqhxvd9yqAQh0SYW2wNrQxaNrC7kS6pWtvJouZukeY8FTmYh3eGqhkApXTHL01o5V1Z5ikHgMmqCNo9vG/RLGaYCx42mDv+8tYr8HDHoCeOwIMYKaiK0cen1+25Wj8m6Xks1x5OKS0L3PBZKtH1KdZSBd3einYT/djxZMzOAnCK8zu8mdunFiluvcSdsviW5/YDycw3BMQOIl5S64YOS94TGXeB3ftN+qHupOyLyc3fQi8InP1JsKRmPdbgY5v818TMHlumwlbtz9pmzVF+30QGKXKVsmKp8XGXYITckGxI8n3+LyC+mgQHA48zigI5omBy7ocMga8RAjPuasymUW8iYk8N6td0iaj4mG3orkATdEoUhC1C+uPXMsIw3NsBO/W1Huo5MsgH8yowubyTCZdygleZeDCT594mLyzSLs4/q9HBmRSZq6ppkjUMSUBvNOECHguD97leoc6KaiDmWgNoQ5n3rMjhbLqkVOsO36JCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dD6JvczUrF8ZvaNeU4rl2jpDyXTo2jdNPgvtOnrZ3mret6HMRjTY5VzBAtn+5avvJywY9KiimCXAbuvdDqPzAh3jOvRuX+NZBLIoHW85qv6uuYqlwyinPEsNgeR1uDLLvysjc7HhYAIUt752ucZcfSkzB1G+yeSnAfiy2jl6rTYWd81g8HJ21bZd4KVR/o60tOLbZu9QHnQLbGOTIyJ8Vm7iooqkQfVha2092pBwhGgiM1pL9/kDReuzDz4xxgr+1LtOSvCYV8Ji90k0UkfbGuA/9tVDADdCzCp1Eds/8nZBjD7a6jy4EgGnruhXKOB4PKEoeLQJBTfTtDUYbWnmg6jeocWMOglSiBenq3nr2XgNEPV98eD+HAKtWzP0lFjdk9lioOkjZKFZGib3NO6UGXYdl6SJcttXPnZNEfLkb61xvkz2hSKP3gF54OZi4FycFoPQsmsY9HdeP7m6mXBqfKPaZgh7n53AG0tZonMblLNL60t6WMCAyH2ptWPgwck4gGVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnrT3+8Wmv6JZKZOjQ+o/7Qs1QkLAW6d3C+K7XvOG75TGM5e8lOJfV3iJVNWFh/4kuiiRaBorhX2/+CgEgg1LDoQk1Ar4XPjbs0Bsu0Xcdq/2UB/p6pnx96YiCgKEK6BXy7JeaYwq5TzyexF7UDQW7OKnynYMGNjSaBtksKRtNFb3CCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dCF53Bjs5pbs0ZU94esaDikTmxDeG+6RLAp3noEOB0QXqhYx3H6TVrnn4knhiYwvraxDVGU2UshrV7Gtl4v+ci51F3mefFfDSgUfgwbRp6eZjegbNBuxTEm9n8HgxaqXlAzNWLBGC7KPnLmgiRc7RvD7g/OTgH8+dpsIv+V/f7vK0XBJNJZEVlo/oUtNNjxrSuhRi2xUPpV3nC1SvwqvzHGXojB0794Ktjaa3tw2xgwzw5o97duRmy+iPHzy4befwKwFBqFxrFsbUsiGea+Befwc1EeIF/2/VE6EYpC/2gbf4L6YfpNSh18mGiBjKN0eYMp3o3HruV/l+gpxx1ag7lhy48iXsIprVS4EgmJTd4uNsLu0Vh9rpnB/AEN48nZZDwSYZS/CSgBVsUwmBRXJupYKtn1TERTVZjoIhN6PKDzhTedPxf1ow7XqtZuTAqs/jAKRaXY338GT7/MoSS3W5SjsS+3VYiaPUbI2N/kvWQ9EoHYa1u+v8rz4rgOiBJctljGXYo3zz9/+wMIS4aaDfahYLG7/zZ8h3N7QUWZCT7zx3yitjDT8EYPVpCo+MZopyvtt+0GTqFZewZz1MjoaVkwdqTXKvG35kI5CBPPbilPM5XZnX6Nu8zimhWl6w+8hvt4nGvw8Xr2bxhO8lSagIqauSfv52qkSj+FWbsNwcv5AtF2HHqEOacPYIF+7CJw/HyJH6X81r79jIKt/Kr98BNSV5PA8q8si5dquOpW4zy+a+tA+JCH63etIQMKmNoa4pJ/DhJSxXE26H3x3HfuG0ysqxSnRowAR07dplPxOy9Dw5x4mrM6FSK0dORRqkFIxVPofm17jLsxsTVHqjjNSHxECCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dAouTAQxpmVSlHIjszamQS6f8LQ37dVvsqNwSbdeSa8u0TPVpZcq8cDoLy6oMYGvNO2XDybYvFFJkliXkUs7UOxnwbZbcd1j9RIMlUK70bmoPke202rBeitSvptBcL+qms02Eh+FB2Mh2DJeuM4ezNmbW61oZd3RWq/DQ7PbW0No/zapDghyY6YQvACZFOuEqoydanno7DCGPShKsaZoEHdcFxto6gxtrmnEhB0IyLyIU8AqB4BVmJy45Zfxq9oHwX81mnK5D5/J+mOyknmOIUrbLiBuBp7WAPaCezzzqpPyAi9VcZaCXwMA9bx6injHDObWW0yejqTkmqvTCdCW3W7AlBUHokJxVglVv+4Q6I5ulTU1+zrM/ljopyYU4oHhsD0+gTG/3gKM8yksPUvi5yQLUlMqhQSBCauVfyXGZLh/2FpK7Dyd+Uen5GaymZHwSGYjj1QPGNyMRpNPYSx8BI9Bs1qCJHchvwP6uEkLPJJhqTkC+AilWT4WIxL3dMmS6qlWbS0DqW5TC2NhTe6NQrnuTQXgveEEFdpzAdObUWnzodf76N5o1yw1jYFQg/MY+20aZkKn5rjzyVRRRskBn5VOK5dLcwQRxLQFOa+ZIQnhn94MzGa9Et4d71naSat1L6FmdBKC5ah5bt+XjbFVT4ilmQy1SNMWs7DkWggxOPuUc+DWDc56Z3eSsg6koBAluKykFU59NBzjVoRKMt6KotNuJrMpG0B1tpqE+S1lYbGclw4zPtSU2pftKM5qEWkZ2CP8KsoHTRpGSXrH8YU8ghGwXPycsSCH4trcGaWOkhHyWLr+XNdyCNR3PO0M9ExoKVVrRus8TIHcNKeiZcS3ucz+aWJes7skK53VPPZW7q6R917ltzM86AnAQDl7FYPciwM9zrRQyaxXrwjjvUt3WVQBeIvDBcr5NdSKZO3TKg+iSyqgLjCBVTj5n2DmGuZYbbWcY9PfHt41ZNm2XD2VnDNnCk3qItUhB1WTIkBZh2j7g2KODiEM/13Oy+6sA9lrRUvUtZ2JP/81DZ5dmpQ5rKUTzcEcL5/lR7ceQq7+drhQEuCz3WOt+YYbppQEcPn25GHM5PbvqpSgpVJM1Oi9WlSwu9QarX4qU8E5wnJUHpuNTJoIcTN0Ltn22xJZj2tuZifpVEHxym+pjLYsYxMCZ1An7VGP6gOcp46xblwF1FdeklS2eMSbDjasC3BJO90NkTWBkhGkdjn93pvziHp7SX9akv82kPTdkn701GyvY4tcF2HxGOF/wx27uKkpX8etsgCnSMvtQ+XkxsCN6Uv0JWtmAsCrs2OBcwAMjtoAcCrXQPF+PjstU0ifXAKc4xGkuvIMWOUuNpd+1TtKpu80P9IAVKKCd8fqkpcRJKFQYuHuggPfzL79pL0KOHsvRtlbi6bhGaLnZZJrwbWY4Y1flEjRa+SmTZl96UMXmeDZ0EZhJmlHWjy/shI0C9oq/bvSwO7Hv5tqbxT8d4PaHYinKIJCCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dCqwi0KN75uRgxJNXDxNRpzJ+RXzJnuE53OcOusl9Lc6xSoH1Ry8OgkihefwMDzrocLwqknpIAfApVyjZwuJP1E0/XFUShRlAeLc89HYohoY3xBU/us36MAihaKXddhW/iNtIujCGXn6Wjdho2ViATQIYBX1mWCtOiMWBiTpD14KoUY7h3xOPgspG26WpQI2AFCdfumA49NhrmhqJa5fKR3KqOtqE5JAGOh5bICaJVQ3ViH7fkXW+n1I7+/uWiq7UBkxaqhwXlod8PIR4E3782VY4R2zS7dIDIBvo98+o8itlICULMvsx7v/Br6IkWmki6dIIw+tnCWcXmKR9s9w7GoGCDM3PzlesP0AXeiz3dKottWVv+lNy/FKjGT9N4PsEz3yrvVtKXNQT/gb47HistzFAw7tuzVJRuMvrZ3pyuxIRWnIY8DY0+W8xJsNhrOg30/cgB7GulYN+HQNJPdoR6wzP1LualUDTFT6k5ky/bL1D8MPg036p3ezrd9OVm5tRdjRS1tIKsoP4zg8IDO1vFs8+LhP+tL4FxV57tqmofPEDS1eZaAgD9l/urEeMvxhXIahTP+AVai19Cs6lB3pET+CCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dCcWi+oQLrmjfHdnVqHlNe7oWb/ckicB50RToX3v/lifZIATqUWS9fsiQ8vDdZvXEmOIi2xb0uY+r0KpYVdxbStF39nrag2Jqpnmzp/IT1x7HUZHF8fQNQm+5Uv+60FLx/XaMKijNEI2jLQzW7ijknSEVsrxcDY1kM+AhEYVQ/ql30sF+zmIq+OEBDQJ6Sx+H3O61MeyRMqRQtFNMH0aQ/w9VodMSz1ILit0cotCFdH18IBq/UqixvjWsgQ+AxFMF5hXbSESRDX10iOe7e1zWRfOZsZzkBOWah5BvLgL7kBUlDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63gsFlhCYxXjSlbamrLes7uaaydCRYaFkjrd7LzmLWqZ2sI0Coz/lnOBBn+47be1hMqJcPyN/f2ox/7oNp37UKtPphYTBC9Hpd10jGXo3sMg6JKwpG0FyaL3ZuyryyDf6nL1LWdiT//NQ2eXZqUOaylE83BHC+f5Ue3HkKu/na4UC9t24Tc9v4YUPGtTgAWEeg0OR0RgshOTnxyioe75rU0Qr2ohKmo3QhCYFwPAobi/jGC/WhzdA9nohbMD35/EvKckEYY64ViUv6S4C3YDFeEe7zRiFXPmM05wceB2EIvXFpiMRRAjv0m0zkvXuoMO8fe3RLWX4Hi0GxuLl05G4Nz1WCtNTpoQgITreqjSn7BtGtzsCwz88dQkEK1+L5t9qP6DgahCRhEPSmOF24qGFTPqxpD314OQFrppjqJsIrkxif1ijjGICap2DcF4yqf5zDPc5N7cU6/EGn5gyl89nJ0GbAvdL6vxln0hIxHNaUwOnEQoCa6NWWX53oyKjLievOP6ZnmchaKaDk0GUbUugMZ66mqZC8aMBZDz03HEoApWwFDAjLTyWnM9sy/zOSP3OoRibaHfu0WyxqPgfQRpvEqIkUqj2Rvw0/o8x74pk1c433c1cUSY5Untt2oyBLE/xb+hrv6NEcIt5vC+7iiTWg4cb3iHz+QjFT5tm+t/zF7xMZwIXPxp4pm8CyQBZZ6EvOzjn9NEH7cqtiXfqia1D7+PouEluSAcffe+dfqrb9jJLpFr7SIVB6xqPqfWjGnsaKJ8N1Z7twMSXjIWS3dc2H6TyCHM5oU80waUPJWkvoGS+8jJ2O8I7CbDnmM9eAMcgVZ6YoZrUr8V+vYyX4NhLtMGUzvY5uyn+H+U7JK2+WpWj644AJZUUVdTzebo0Wo1a5bl8h4Cqg3yvXrRG4wSLZgMsY6NGpVNjN2u2H7iwyQ25YXKnEy9IVjSUtmTxes6pr8gmGvhPozbLuSq4BcXP2rwfOZMjfZGvssRatA8tC94TzKOIdKURAgQcDMUg/8OapO5yYDp9YJgbw2L56OZSEUm4BOUOLmN7AtjwaqolZbNHJKCzEVQWnaSyzOXorSOQ9DblBdPsZtpg6V51OILWuqL3YN5fjwqjQ9sZWsc52ildnbpQhydKCa4hURdXvzfz8revIlWU/1zKn0KplRCZ33Z+AYahLIu9g7hwm2ywDPEJYobQQAyeGTT4m3lEw+ITVP5wKepD28P/tDCT/3+sd/JzsDMtpVW37O/XhnqpbiPXrHu7S8WMe5aKNFg6GEz37wbv9y11CqfZh2MNN7OiUDv5Lqlo7c/0TfZjZct5HerIz/uwikCP7vLEmnltmc0aQRPX3MrYb5pgkQmnB3v6zjNG2us9m6qF1Jd5f+mISZFh/PSTqyNuZGru62tumDqIFO5G2daxgpCPRvLHWp9p+dv2xQsc0zYj2/Ut9N+b8fZMk9Rcfg6BkdNHZyqXEV4dfe27N1GTCNGLfHL8MHTfXC+myag8n1LawptXNZlvZ+ntMcja5ILsaQREuO0OHrOU4I05ubONuMCRmSe2mNlYBwSzjCIDBhGnq/OjbcxP2I/t/B0nrS6KhDOti1iOGaWMpYuFNXHSbzoDG9u5QnnOwJHXlLdmZGPMl8LpDWGDxyVBjKpjuBsH2TMT5UDnldc47ZYs5g8+FLZN7qFIAY1boAznGhaTI91055Peexd9b6jXmJMZZG8XHJrPdkeKx9Marhbn5PgmIELqaCKiV9cgFWaCgCxlahHR6XBeZ/wRK7m7GQocWB9HXwa1y47TAq+S1VuKPJ1mGpGHW038hirhJBASKXZUnpB9iVrrw+XvsmWcCSz5dsOXm1c4Lwa0v7j74uyOnJFolStx2RG9/8e0yVAJNeXFkzIxICkXRIUGkPILsGsh7amzn6dUSSc5cxBtRRD2nRGaXLmI06G5CJ8obEs5Hsx5MeC8cmp0D+QkCsTzUXibUDxDTMKMDSIgU8iYRNvI2KkNcy2M3fyBlZO8OWtvOEkHHq33O3q8Vdz71b0bLsh0IENjFQbZx+GqcwD1VElWQ6gUj+faB4+Mbw91XvOUHrhqRJwbax3YeyrJRzSbgyMaI4qs0afdkzH8/PCKxV/8EKMOQzvaC9IZ0g6f55UQePSjjHIBWQyQ6MFPfrpkXaXxM+Wc3Zzy3bbL8hD7ghEBnOsEpsTe8DnK2HYKgk8PgNHil0hdVIgCKkAMGEeo/J0OaqwvoUt/xyoLRw7tH9A1VFlElIGNWmSHtbAkvCC1RHuCasmdjxiLoZhaxqi8cAFdqinHyZFTG134jVpblPw8TzXXHNuA1Zxhec2XDp8JRX4ugSsRh/N+85Xd4QhY4A1zrljha+KhCfGFeV4MnYSvnWd+EJkvF6o5WD6y9o7bEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJPC81GlHzgVwitk36OfZLoe2bKuotHdDmEXQjuafJfeM4sY++2qsJqihfxeQ7IwvsodO567Egamm6eX99DRjjwjU+g5q4N4nFNm4043cViFmGmrDA9JGJa0F8P45MnE0cLKKQQ+B45f8IP0EfY/lzYSQqB8XrL0bO38NfljwmSrGFNM8PqADYqlQ30+7FpRaQM9B1NGg2Wf3Md6t9YkeEXvwzGNI7xTkTjZhtBQejXhtc31ngMJ3H0zcbnDRd5dFXdjwh3Rh4CDrZusAfed3Y/YIDpXt/3Anc4RBNsEZ5d3fe9NVGlM9rA1wlxHPnsk7CIYI0wgeez/GWUp/k5a7zb+b0nkzFrQl63pJvhKBcpVdrbj5bcUWaZtTxIz9Wh1cp6bvi36yREaUOk5su8Wc2LFgnWtlbkOTxtoTkiwpka3tgIFibOFfIvmTaED0U352qxBP2KemkYKuaDJMhqRBVrdTlMEfj26WUYF2Y3CbguqjKU7BIei4TuSjmrnstvX/SWeJqke82e2fpHBGsACLTLIRPf40aSVgcjjDfCgruDSMg5YhI+xGdIC6x0t3ZNKR+adugqhNRYWuVSENzKUapZ5EWdrrdKWjCpHCVQAfqXXS3ri0VkdtOF39gvf1ujfSW3J9rlpmDUTZPlWRROBy+1UQEp6yp+TTlD9cOFvxa7P2q3c2f9huuc6D+dmYEtTnVQDQASGeWLRPyrPGmZcCADkc+LJjVBenJ+lP0ZB3dBjgX58lN96FYDlO+OCz+rYbQqEyLFDGgU8X24RWe7uf7wzyyGraT16laoYYGLiXBbjMT+BDtarW6FxgMRByd2AsB6vxSIcLFZcE58PCwWJ3G++wR/uIaT3nWNG5pH0MmYswxamaHawcu5ucIgkQ3f7plPqzW8X3IHpekc0+0zvInizqjMnmCUu3Aqn4KR/eGxiiRYFcZpTs2g1pyK3qZf/bPN8LfK7s1G0cUwcEDbKjlNGThIc0Kp52kqS39tFRbgmVoQvhQYdhp4ug39qCsc/Q+fK5Zh6w0G4JxFt6H6yGZkSinVszBiqQj+bTNFUs5NqjeWpTlxlwYqLmlNXQmRj0TBEG2dv3j1sLi6QutgPnUDefV/YhJK/BGaNzXz5yVijSYTCMt5LoWyqAybsfGGmGXQ0F0qFuQX0T7RaJh+qxeF/sS1GRCLhUYICZyV0bMHunxDC6Rp6ytY5oQHA9sglVuHC3nTUzJOjyFFuq+AJ/GkeeGl3dWgEV+jsvMiUk98nQMDXnIHQYmx8rv/pzbVHmUmDWL34SBk9/NxehQ6HzY1S11mgqIOJ1xO9ToCXTfTjlkANG2PtHZmwkDA+Mty63LGV9tCOr9Ax6Oc9HMiIRXBqZ1enJ70/eeGVT8v00tyJieY6EbyD+kikBxGZfNFm57sb+TD4K9zdi1fsEij1lc2pgrCHpSyd7Ew6KRZejaTmxTvMKKx0bKqlR1zSC9m/Hfd+IWRmMnQFMQ00rPww6C7rrSpgOnlugQdph8eRqVo/HavgQdR+dKIVBqyj5e/AI+u32gYDuwQNNDmJkUbRWQYP/bplGhS+dFi9XI5ayU2w90lhfwekL+5L7EGlfmLtF3QdTTS/CsretpaBIPtPFb22tBdBreY3cqAOVSZik9ENPBR4PGkbh1EcRq9W5wH4kJaJDRhPfbbtGOUy4pL8Tl9BUCXqcNj8PfJdVt5dNmdHdTgpNFDPmNbtN2RxusX5BhZMzO+dimdhfKcuycxPS7InbQQfEwv/WautkUlxuHYw8KntK6g8jwCrPjr8GzScO+eF+q8iFCKBoJy0HxSa3zik6j3m3yB8P2ZTY+T+kOiT9249mGQqLin+I9IS9fvdvYHrgONfRjnYZIUQAQEGNI5p0Vl55uVAx6ERzV/ufZbppfckJSRIZYpmwVZ9umXpAHUk7Zy/jJYaNYOYIYwwDxUubYPxFZP9lovL1/mJfFT4nOfOW0c0NBfsPBS52REcF7+SAnulpWPEVZQSSz8GHzg1t1QFk/zJLGuO/g2Yzasx9mZrK+hUlDOnbswKFjP8d9vEbzlWmL2/M9v68POT0pzyZLkRBoz8dqVf3jpR4t6B4CVHe18cwsSVlppLxy7ydQDkYVG230UY/6dqr5x+jxymcGhPMNHsAM1EUghxN3pW6NTOnXYAiJXauyizYzigYTOd8JtdBalrjKTVG6jEQvgwwwZBjaTkvUIT+4FCw1LsYtIryz6NpN2HahJeYU+d6qu2pA59OQ6tZKxrjz1kzmz1DxP8lR/Eky7AmRa1fZJ8cRmZByNgts/MYjLpX2jHpXaL8yuzQO3mbqZwk2pv8CdrY1S/tRfpQMHY328JkdxplX3WwxUO5xdFehb3mPoOvRUUpcWJKflDx3WsFFT9YksqNpRXoIuDqm0pC9GMCoVIQi2rCfoXh1MPJMw1HSvEdPuP9SBgRptM9ShmbDZYDiM/UjXAsmZYfcw4Pisyy0GzEbQIo9pXKC/I4xPXiVbQcYeliTYitoypz6GuYr/nz+iT2Vzp4T3vMeuGsbsKfc9+hbmQeGvnchJcZPna8VSX6ItSpOQM8ksvnSr0w58NzJnJrYiH++lKpTlBZKvOsBlvvvX798B5pKcFzNMGh1Shmvk98PaaX9jZ5xYOIrgxbYrX9iUmFK4yGK8m7UMRfRo4inhPQ0xEJ9GE75Mn2ccIN8zD8ZcGPi02IP4qe8DBqWgfRHq39u9JE5rTObrz6oKiijk4XJoPC7FVSz3vjsdIvhnEebLjBNoUdsMUMyhCY3q0mdZtYaj/Y0IkJ0zyfoLQ8lF93vp2e9jsoC7deMAQr56r/DFA1sGes4dAHka2hd/N6vpEwAnkjbTPR0V0rjXJvPisv0HGNH279F04df1+QC99xEmVx8DCxRFWTS1E1hoEQePSjjHIBWQyQ6MFPfrpkXaXxM+Wc3Zzy3bbL8hD7guRCHqlYuCdQ5tYeNhvIegkP9KdaG4neG3bfQz4GZMaQCPLn57c4DM0MmHx+8gGYdgDPoapNxmPQbq05K7vjPOLymqpMe/SA12aesl88I+ZkUYlceEwKYkTsmupibUlFJkEkSGaPbBysAwUsBUyYrswsu93hM5ekC3ciu46pYo+PUTTHjMIpddvMt3las0kwqWmyoxkg8YOjrvj6Cqa7uU+AHt3j/zDl9Jn5TTVi0o9ALLLJ8iedNgSK+cnc3uNerelwVqpcY091/9CpN3SB+TXAPKzPueKu0t3R5da3Cp6kt1YGda9TwLLdppHCvx20u3PTGGamaSBNyWHmTL/DRocO+qhHGNuDdJ67n/ZJ5Ar7F6jiSlI/SIvrRSqHmgAHyhWHF+HgNTP2GyjuIfukzQ0G9pb5A/YKX78rwSbPD87OVhynpLbLol0/sNZjtLGJfcXW/6uBQoTh4iiR/dRIXHQCt+staLjlEidIN/rw7/buZ8VJNllYiDhJOuN5FLLBAnpitbD26pg1CaqCwiUCj1gaVMZCgQZIOmLa++qVCwYkpHV0oREyh2ZgbLXN7ZAq41pa81dOSgJ4XisGWgcBv9ZpTbnTHheAV/ow8cMHkJ7vAUmcmm/EPjp0P4/6Zv5iVREiU+q4Y7iO5khNX1VlIfzFLLYQc3XLLyRqQDERv3OpQ092tR3PKsTGgStoMPiBo3PYwFEORCEM/u4XEqmc+twAu7Yps04gsG3RmRf+Vc5xA3lkqvwUGkwxoP9MBxQ0wlKk9J0wkYj3n8rxgVE3LGVPQHF93tANzprgQd6Iuo2ZBInkEQNsE/lGYDPlOXUMRoG6ILbaIOJP/C+NACg6pz8k2h9RdDusJzHk8Ubo4UGgE4EaiZ/bjw+H1dSu4P2zuRoeYk8Yftg+RSCDgHjpC0g71sFjkoyp6TbhxyHFBAbpACgF0wVuTRY4dfC0pUj2QR7byZbGmPn+pF9LTA0rpBB6+mG8cJl5H0a0CaBDxTmQ6/IDB6kh1OS8WaWlIGpFktW7ChsWS2rrFrXTJSXj+l7vL8Q0qCsuJ9g3tgy9A8CCrCcY2z/BumPJECyB/vmYhKKtRgl3/pBbaknad9VGL0yZE/4QIrM0fVlVSnmTmmw/cEWIIfY0a1h84Ay4MnlbnNu32BYCq0tx17YK/p6Ei9CGa7BAL9Wyiuz2MxLDbKv0YP1AO7z4+D9ZjI/s2nrk4gFQ30TVqWiR/qlEjM58++qb2kJu2eP6sUN+I5kcGYcsdFCnokQRe/RUKWVO833C3dIh1swtRzukCT+xRwcqit4sWcknayYpmRdbA7AZGto26ne7An4ytqC2hcljMfCq0HCVyNdQ3vdV2zFYNJWGecMu79pC7hOxS1Z3z9rSEZm0kd42G0c/TMITJpDiFA8IRn8OXri9O5dAPgtTFIT6VDL5GWSPdona8tYOOSFuZ2kMBGv06b/CENyAM7w3t1at9i7V4PmGu5fmy1ZbbWY+cbWUPEplhIaZaf4oMOdq4dTJ0tJwKg6nAPNjTy8OHwFeFk5spUJ1FRFlcqf0qx4VEjf8TAWTNeh0aYCI56PIUtuJz/Lbm6ZmcaD64fZmMSJk7IqVT2CpRLrNdYnZWb2WVvgU+3ITuGrBD9knTumEjFF2BpJ09xjSm/4edtOPBNEELQgkC+RUhmkvIwGSylDtj1s9Dn8g9k5P6kxApJ67MvD1bWFn21mXVvsz91w3oXt4oPRySxLcbvP5tChvgHMrFrK1WvqwENsRWA9nBykuezKvXLgeIfKYNV/gtq9fgeA6thTbzMKXCxVJMH/+8XUNaOYI0Zr1Yv/0yhmlL4rIXEKvPvCI4ZluYN66E5xHILClFozuB/kYAB71M01DG362dk7XdytFL6b/mxbBz7IgMbAS0zTBCm4f39UmVDjZUWVmu8wpQZtIEPem3KApzv9HbjsyiNLm96nvgOP4VDI6/+2zIl2DJ8JDmZNeATIfXRXy9qeWZs+RcR8sC5CkUhYX4+XBddqRnH9ygpO3JZO5a523ncBJh0stHMM74uiC9XfSjtsR8F0S+jXh3uATwg0K+74U8zZKybsYmQEDtYH3fOUk1Ly4uZn+zFBL/FvgRlbo1CAE8pmssbtfZ0/qZ0yeEsN0OgYx55h11ajj71Z6NA0IA0WLS6AurHdNth9gmfMZrNL8ra4b5pxNKFzhAEh1CPmPdO/ues2/2J5vVuO2g2qSGCqKIZXifGHhubbgT+MysAnDSbIBfu+sXPdMRdtLtC1iDo60181/DtZMDfYXB37NkOSAmR2490H5ujUkIBlYBFQmMatDhfjTT48LW3MozyQZcnhBJZZcPD7Z6jISMJnCG6xNAGv2JI3bFeV/z+gEN6X3+eqGuzTqqUWbpMeQnUtai1RrPM6cUN8HFgBXj/SijAeqW6dMUnWGznVgmFRvQ2so6OxmhV1Ft6RFW+AeTp5vT63+jOeVabcwJ49l+IynixmALbKoGlMn8kSNvC7WJYzWL62S2OTRD2buQSE56XIXU1Gt7BxcS+8ohY0+2Iutja9NL3ob/7iFZRtku0c7d+Qi4Xsot2qssVKZbzpo2Qu+NcXANPlmpbSKQULdWusbaQnJB/6H8Y/xfSLI5oY/04EoRkwXT4GH81U6FdaV9heGYOoojVuOTNvSW9/ldlBoIi4/ET/TaIREQ3oe6RkEXwnnDH/V7WS8tRmaCEB1qW7ZKI1FUmjbjUT9Eqf79NJ3pRwba821Dn1i1TNm1BFdkC8crilcEjaB5NES8VFqvlg4+mJCaS3PQ3YxvCCjacQjfVPxhkUiqpDOtjLrdZc3aCA/BMw8ICzYFEGpPzyZOrGDAPeM2of7Dd9i8izbTiU4oTW3nw4B8NFlB/0c3mJPiJxZ4/WwNWj2XpDp2lA4DNb8/Y42e3tjUw3PTclZtWCZxebsI6CjwO8XhiD95RwagW6C99lJTE26DUpwWZRBAToB/bMvh7ejrf++/7DoLU2PCEagHnhWyDQ5MF09TEfDldQaUhdt2fCMBLBH93NUzS18dgNWmAOPg6Qyvr928RsDfQkMyjdiXENdtdWYVdcu92kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYUWl2gHE3iz0XfmTnyax5nrRmuesqg156NSaj2sD+vS14zk0l8GLjyIg0q5MdZflDJy12Ew//bCP5HQmLZSr5j2oArfG0jI2RJm0NxuE19G2+y9A3PUzakWpWjKLr84SWK+qskb1MuqMUyfQT3pgELX66ieQ/aCmq7zxydOmKjLMxdalD4iCIl1VzIFmLMBefNBHzFNHs03+Tm8Mg5ttpyzQ8VzLgLC/Zoxj7jurT9b9EAttwywueMXHQmAs1QX/YUxOS4iRT6XKpXp7ReVv15UDchN/leCYUB6a2H6Mrw+N4goBSQsGOoM19FJxG4XVF8EF9CpbPvqhojdBm8ZqXAXl7eGTBb8GZeCHHL7LbdSfxTI0kYEUyA92nhkbJ8rAVJ1NUzSRSLYlfUS249sKjc2Cpvni5kNB2deMqi2tjIkko3zqCUf45feopa8ehwvS28xQLIXDv4B7l2OADBk9PAo4sAtMZplX/hxaCNlC2SaOj+umty/7MQnr44ZbPSuWKXULJ0SZ/F8qj0nihGiGfr2zEPRfpa3L4GDE8bifA+jYs13txg+U2CEhgB+LdqUi2R1JwHlWIEhUOOKaG9b9tOpMQctIy40rXO67pQIryYVyg8PDoBRexHCuawPvkadGalvHPPUkyB23sN/AnVqDNSzJCWkTFaWMYuCDeKYjnD33kMRrw3aFJuUQY2mahB5Y2pfM6WOsQbqKd84cUdpR4rzW4rnYbit+p5dBEzCkTy9m9d5SF+fV9i6tIOmx+wtSEElvw454eThNRMWcKzPhfX1zDCouzIcwjfsJ02HYWJzSsMeg8nJ+HpT59Fll3PzCYrIiJ4KzYJQ7aICWQ8rqfGT+dOLSaOw7PvCnDuxsnZcOT7YKdIhmu3RW2GqRtStQhwg5YhI+xGdIC6x0t3ZNKR+adugqhNRYWuVSENzKUapZ2HsovR6O6cgxkJJwuEQAYOYAc72MMOAzpHDz4znEfPsm1exfyR1lEOH2LblSoRWpa3cOBR7oFXMuG4T6vHrO5A9lR0GfIBA7jZkUQkZtw9wl7wbxSCjnOyo7FxS+dKUaTF5fPqG/T8byhHO/7ECKIk/aLI+c7HuM6+B4IofRQZu19TfAKQUub2DKztXwkclxSRhOCyVCS9DqrwqKKvFeM6NJeal0mkB208/F+CUeiOS7URzHYdybFG+Yf3QKaSYFXCkGqUW2AnK41x31bdmtf5PC18nSpePNjJTGFdehX/SnU1H0yHDTn45DF5v52TQxYA+7ugWWnzcA4hp6VapTWOxSb+ztTVoaLe8MSIUlF478ZK+KTWQZiIRot4C5rvvGGfL4/glGGq9qv/yGdCeUzM7eCzWe83cmvi8MG/mM9OaLfJ8AR0VUfvKfsGPTrQD8erutY9bBRke3+0uWwmJYW3aQnJB/6H8Y/xfSLI5oY/04EoRkwXT4GH81U6FdaV9ha0VTE3fbUMTJXRyZz0rPCyNtm3x6Kw+6t4n2Vl79xBGcbsj+DYsxfn2vNyeV+MZ8uzYBPWia9BcwSMRzyipZpY0Hawtjxl3hg8aUm8o37ldNi0vMcUlB6G5C0mzLi7FjX6gprwvm8eLWlM6RRATFSvxT71m7KidlUz2qzpRXoc8RcHdAwFiTp4PWq1X7xQywDPhafKucRgCS2vmujjUe9OGGhw4tE42g70Pyvg91zVK8RZgOd/Lo+i3T5jNju3kYffnI8pLTQHqJ/v4oDGfpZgt3MTSFEk5W8Ap0VcGEmwpz8lpYL+sBas6bFZ/CtbEZFO/bw7VKfPuf//2MWyFzXyJ+h85MS2DLQIPJxY7kFfSx7SroZ7/tSo2NGG9J+88Mj34J6m787cqSNqOSk6gkabyOeCr/iOIuglUgmS1m6i/Gm0VhF+NqCc/a6johRwdttvHu3QqF7w2P45F1sGMfUUQpqZbVZaTV2J3nWvZilENnIHLKjYixbP+gyU0gQoAGPFpPD5SUHp6wfv6JCTtF5bCAbbXS1oG/VbdUab0DGIaYEgbMuwYSZEuftNxW68if0d+1ewJUKa9dfZml5e+p8bPBgLZCznPyjOH1v7dGubGw9KJLlm672G2HB6fEMKjcZs4PA6CwpuLuleeiMZgpu1jtinD0pNDhZx+tB/AfXqHymVjw2Kp96IfIN//4t5EpCRWJ2dFQAsTtps4I/o09g62880u8XsjY/sUiDGpQa2K8KLY8f/bKbD8ARhsDNn+imSyj8WDdpCnkh4shSlbOk+cZgJj1pL+pI58EsT/2OZVmjZ2Zurv/UkcteMge9SRT/OOMBrzsAsIWwx3yrVVH/gZndBefgy4Ts88VgO1mY/tnYUD6Pp+W3t4Ka6yFnJVfdpCckH/ofxj/F9Isjmhj/TgShGTBdPgYfzVToV1pX2F0dXooeYJ0NYekGW4MxaJYAQ4b9Mwtb5k3AAbfUbmDqWrtWnQrEh4y8oz1z4yTVxk6uzKQKEVllj3gX8ouovmWnKRsGMRVoREM+Oi4jHYWD5DGFasIYwQECEkpYJ+gVrwaZiumXaJQoet20Ujc3lxj8tUkXZOeU0buv1EZ/hXaJxytLYQbMWxZTSQtEdpdwg9sn6pD9EgInhsUFs3FmwSoQbxznERQb5Yn81lJRkOI6SP9lXHUEbtfvJdCMTHoAS170N2IBXBJG9skrMMOL999TqqW6pNceXCp5ZzlYcfKpwJv+N0fzmU0uBZnbW1AeQdjDJxGmS0P/ex7GqjQnsUGTBqFvcxqa8YMT4NSXXaba3mdG2bCWq62gS0qh5l8ATOximAVMYdVm/nx/wBwnry0eizJruqa9T/TbHehArbY99sFAh2h1gcfJlg324BeisCHb3OmuO6DvfaigTilVe10SgX5hbFnjPVl3tB1/PoqZkFJqpFWVNsQezUV/uy6acZ2UNklUIBLi8p28Oyn0a4wyTYMIbVjuG61UnsOUa4oL8hx8z0v/G1r5+cFMa5zFjUioyH4ZlW3XfaJDCDAXMR7oJJ4oXii4V7/piUplQm4tx/P8utOhWKZCNCte6rZtmPWwTKKY19W+Vu7Yoz+WGYkP+NO1LmOaJ6xuWxoBmfsEnK5IW8HM4Lz3AeRw8iNWQ4cOdjjV7DphWX4RNQOeVf61fQRGL1bl+kokPCsqhzGQToa/E5aOasNiPGKE6+0Yv4CCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dB28LTfS22dl/PFpPN3tvBiCw1/ixmlb0ZtWX936DQikez5TMDGzkofyFmmsd7QfMLDd+/ekZZ1IkwNj8bqfkC5eThoquVkKzH4EEHIkeErpLAaJM7A8Lo2WZnVyegFFeLvwwa/QgSHAxc3kXQty/m+fzGI+d+5oeG9Bbm2DYaeHvu6Qk79KlEmjaTrbLqbfSAdbu0TJWGHCo0e8As1N9ld48XOl52Xe2rA0zLbrKkDG7LdhrgVOIwM1qt7gSdbHL3ATkg52AC19IEnl99BEcvPJD7PB0Enucu/uqbCSIzKXVDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63/dKr/yOGclnELJUhJKu6xUcs4C/NPzAWmMlv3WoQydCsR1bwuC0ZcQ7chrWOieF2IoLAJuFphCHHAWbMpBqFXWt7r8uAwR5f3QVcKO/L4b0Jr//wXIzegyyMvL26RYnu3uMo7e7zOsSafaaqu5TTulOfruCGm4APk/cbLLourrY/9YLCSaVS5mLiICqPJcto+Z5aODkPrfAc3NvrfnhQ1DDvsn/t8Locu9Y9ZpvX2xvELAbXDU7eSIxauTat1DEPQqaaF6VEcbt3zBmp4d6hKpzWtnjsd92JwCTtHlXxiUsdXpGvBFmoIDM0C9ljDY+xv8LR8YZ0HKamyducakZN3srud7xDKPIEJZwlBH30nxcfAEdi1Kdke7sZz304UOoWJBG568iLbffO8cNPrBO7VcBJ+jZGvthI+wbbAI27dE2u7W8l5TkfBp3xiMcFFxqRoU1Bl97RkruIIBptxfElXRXWpkxuVmJwcK+XslAOlfTQSJHcdAqlceBHWa/GjCMZ2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYWRAs5Zlde2JbFM0ad5hXpEUb24SwvyswRGEBrkHSLQ/8Z4F72nU8NxSPjC0LNCNEQe5sRDPsycsOVGPcwp8G3Bbzu5aniu8vBaDIOT++11ak79Lrhrcnkb5Q66JUUqDiLmC7SEY46nz1efAo7DSqeC3qniP/FVezJC3TkzXabQht+9kOPyTi4TLBzUsQiAnjOnTf5ZyFPyAZdEdM3nKC5pZLPYIyHApJiJm6wmJeIsWAAgfEpk+7csmGJunASIQYTPGGdbtA01NILXIehD6nhO41jHceZ9IXpcR1nGe4IbdZr0TpmcZnWg02uSuRMBeyz5ryXKhRMI7VMHdZNQUix2AxhBC0ULQok6nCHYfZRsgayatw79C12M7qYE5dAwjksTv5h60cIBfqUpKCTKHem8XU2YvjGBhWikpUplLloqR4yB+rQagkO/pbyAStR9AzTenzXont41l/TANDz4367KlXVnmKQeAyaoI2j28b9EsZpgLHjaYO/7y1ivwcMegJ4H6Q5mLs+5ksCpllH7UcBfoKrSZQa5LIlimy35ckGlONOACIag1KqSFUJI4ZTb/Qn/sR/mpZlJAo4zJRNiQdL5hU2CE4V4qUvY8h+Xek7k3feIeYjgH6O2SO1dMId16IDVYM3js6IRJuD4vf7K+nRDHZw0zQ0zKulbT6/lsQlvohptFYRfjagnP2uo6IUcHbbbx7t0Khe8Nj+ORdbBjH1Fh/Nmy7NR5In0M0S9GiUJN+MOxlmiaUehIS8cc1DBgFFmkpvtMEdvTcsr2xRJseNzYIDJQuKoTSrPxEsP2xjwwTaL1UgCIGbkNhjrNWFY0Bn1tUP3dMxDkqKl+mdZMlc+WHVLxLje3xO67n/gc0g01ccR0ozcjuzBKifcaW202cTBfN4L0uCH8Tl22BBv5MJy2OwjDgLfL3n3NSnqr+VfFveUbHrJv6gGmkiuyF8cd8ZLgdWuS5z97Lf41wuEd/+v2S9CCb5qKXFKJZWsCyeFJuXxPJTe1S840RT3AlvW150jcva9nDlBEd9bgTQgXY2qe9lwMj4e/DrrYvVovmXiqLbENzOzT6yhFtLI4s0fg6ShhFGISk+3OexCRPBa9ymTDpLK22Ghd6EAUI/MfZcEPZBd9VZgo1gIYsim6zKVUn7WCJd/Pg78gR5YNjsQhhfThcIoIxUzu8NV0Kljo85APPb2Xm0YKIxEtgROkX7+/jlTO1FyXFO9L0EJ/ufU+b/zaXc7gMjOQHRw4ILCuD+GrgczexKdArSxqOIXpiygUfHh+i/8wT9kykuRXMlvJd7UhYPXpYVjwEYc1KyVqsuOR4J4oxGa/J3lduRzgSNzhRotzgwBDIE1FkjLFBcBph3m3nVm17YRtDP4Dzazk+t0vGa8zYoU47/3LJxieyhuABqoN/M4Rkfs0FqF+X/52rMhfdDBlk+xpn/BEQNVzZMNG08DGDAd6GAwDK7a7NG6Hxh8NZS0imv86KdWJu6a7PVIvhI6ITyBkZSBmwKdm6QdNV1mtfMLOmtJBEnWl9mF56SkTsDsDTuCK0M0yWqNnWZmv3cNSqH1EulZHj4DR+OwAf2YmyOJF8GEXbyxgACOtGUdHklCcOWqIoeZEO3gpO8RO2AOQo9SQQFRMPuieUW1RVZe+ANSnKlE3+N01qsLRo1492F53wP6emcLCj2UX74dl1IXZfz6xxO/NYwjCf6Mql75MhwC4LVUkA+qDiVeNgABpNa3h7xU2srmLuWyb6l4UHxjUAj0i1vjuX2YEN3N64frWYDdjLpx7f/M+jn7B/eRaQWiGtI4V/BLTyX/GRtlnfrSuDYgRVuINzJgDWtSS7bEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJ0nvIUro/u2NZduHK6iJaUwlbTgfOt8UZNbeqeFnpe2xReL7FDIk+hmR/0fYMc/HCJuT1S7cPF11BzBqcUqT6uY9k7w9iHtjBR+qHYbs9wh+bG6JgrSX8cOkE5LUffZxfqXMV8uvcMbDAGOrRfylyJyrtL28g4PCi8mV2KfKxE2e+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpPOYtEPTcDPh96JZq2/XuqpLTlb8bCzAc71EAJQyuwIE5jKzhwWLx13oTT4EDYzagGVu/XdnP6ydi9JSaQv3zsS74XmBjhwbjAz4zr6mN6vBh26tGFSEQMn4Tt6dXbj5IuFZKS8q7Cs/ddXDnH04akQXIcb5WbtFSAJC9FNMbsaBIsH2+pfGJbgJ3i/CC3qaVbrKlb36GloQ16PAubBf6lnEydc0xnvT6koDBWiZhvUXk4neKWHIXQujcZxLkOUnLv8y8885/Rsc68usHk2hGjxkOuMNglMSesj9s0kC2xmJ/Preo1dj50crkImSEBlD/W5CAAmlUqG3HpQnaXxix2lQ092tR3PKsTGgStoMPiBo3PYwFEORCEM/u4XEqmc+t/SbDryo0fuF1tfx3juLz803woUCQ0mu6zuLavCL3WDETHGbsn2/rqhZ+PkTcJU8AvPrLZGwpWUH2H/jnCWzT34ohJR6c3rKrAROxy1/3Ya40//6oGL3ZwPF/Hz8e0BQ8cw8oO+WqB9X8NOqBbtksPd1g4yH0Tb9MshqN0GipqTW9rjYQqvi/tI10yZW3egidkPv4artqhs+KftMg1AguTzoNxhKoE67NyX7w2mlg7+rKKWIa+zwv3Dg/8h6UpsMMd6cUl+s6wNI5k62u/31RKfxIvhYK2aFDOI0kMmVlMAVtQkMjlyhEbMco3w+AZ9W0I/mnXHcM5QucOdDj91zQT/LS04fsxrqx5qlx8lSP5WJdqZLXyE3eVNdaR6KWi/ZDsFA0l46dBJ49kTxJ+HpYDysNwTK+n48VJIgHaZ22XdCBlaDWv8I9WC54NxiN1Nm5BjWvOC87gkH9NEcwyATdtM/81xB1iWZ+nsaalyPFl98F2PLMhgHeiwSL+CVa3sUEr4SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekevU4Cjw9EqT8agGKyFlAfCCM2m+y6DKQuIoXwMzVHl2XmBLnGTw0wgoPvI0uM68B/dexMhMP0+ekaW1ZitIrIWhTvVmXME84tgRGBPO3z/CMKiq541joNicYVbw9A2QJh+YttFwpptOEysVtoU2ikgA3R2EmUECrMesjbVwWax9znAqbGBYTpALQ6axk8AuNWeE4rANIUWeVsGtG4pgUwc5FNvtjMHSsAKciVqpgGgQ/trzNI0KBzDcqUnjNxCmdWNnt0RVos35E5MptV8cZQALXEkF0vnA8af9HgDxFmb9YlD0pqIdsdxZbbrN8YR/Ot/6L6NmVSHlcgDnbw73bNMk0Y5w5+nfMkMAQmPjT8CaUf9fwtVOWYAvT/LHLeBkoApRf1vRZttQxGIXhlGiVx7r5k5H/jZpdu+YihCE79IYvmcLa2Ax7mFyP1xyugcEtAjyKguDcQGnvdMnxjuTd3Pu7CvIvKF989UAVHIOxcQlr5hblxik3qfixuVRJPv9OvqqH9nmO0AH/TjfKgvooNZHfRduGx15cBez5/pXQZXAWskiMmobzR/fBwbYU9RXHFyd3oAyuVW2/vx1VgBuGYB6FGTCn2Kn7111V9Iryn8ElyBrbPTnOe+12nLQE0410ZjdAqcU6dQa7/MTc1LbdRrIcvQ4iYqQexjKAP6uhnvEvgpDloRK0WbILAmD5nZKCVzp41upMPPprpUpIB0ufxa836TRd38y3ZSFYIiPSeMXTS0mzGgqCiV4VSzZaAOBva4KSgEPeGZsmNsgR8aprJ4PJ4ucbJrerL3olUowuFLqjJUb1H+ofwZcEay+NN/jPZoyf3WQKOBtleok1UFYWlUq2PVpvhZ/z/MWLdLLtUYwWlmmHiSgpnXAhicZlIxHHJMG0brlpcpFbz+uwCP+KRRe/N2rtPxZWjWjHt/ohxneuaOngHx3EUHvfi89hQsr3rRDeiR/jtw3tfnq1CNgQWCP3+oX1HdLPUSqQNMBqmPIMKiZqui6p0SwAq0O3OZp+Vfs7bp0qIfufxy3BaMbl/JW3wmir2V4KwaV6AAv1Eriz4o4OVcdiJzVt6cRd7wtOmLscjFFFF4aOt/8mF04ua556LFwRNi6d+2eLnfC7Z968043n/whVtWIBlH/8MjzSRS+xWQNfA0RyHhwoxU/ZmYM+wsuWyrxLntB38wTaFdr7+TJ9qb2xdVThuo2MmmU2xC2xpiD40fK3727K/9uzBggmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQ2kgTwHf4NIwQeUfyTqSyqiE5C6Fe0wmIKJuOUca5X5qhX5hmGIF6bVoVirIB9QDtoVpu0NkQB2ZYu7bKgkE2WEMeJvzdrF4gSVPdHBVrjEljUL+34ceJdMQy+gevsc7ht2Sr2/ORmq0t8R9Nny0RIj8CKXyVFxLnlPatuVkym56QwMDMaAOZelk8eTXXe18Xbweg7ej2zqfIKEBXH+0+NPX2a/YIh83vZH40sgx0sKTmXr69bZ6ltdX0MLHzYiYYG1q8MZyrDz5zH/XfHqe+jRHMf0n7zpTn0pdczanQPQh+Z7XARlwFB1Z4GFLZXwOmdBCIOaw8mNSxsRwXUaQLbcWbI2SrzLWDxeyssWKzkuTBdppsgbO8F3fIeVK3SWxtbqdpKL/T5/AvJNLE4gvoIZ2Me55gJvAlT8RHuFGwbEwwzZDSdGy41Fl6IT67zCrXCFxsdOwboenWrG0LxuRaIYNbG7YwxbQnAn02osbgRLcM4v1hWihOQ1Clq+ydOoQM8Vao8gn1mUazsKzpcOtMFkFZ8zdxRP7plU34J4p3MWGD3+iHpQGoBTDluAXHRiUm3/y8uSO1dALZYsg6aUCma74SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekiEydAXXYDrPQgvC7ec4MA8fErNG7Rk7eTVil5ewi4LlNVUP4yODlGTPB+svdVEGKXEJ6XktPtisI8fvPKcBS4g+tCl4e0c59rN5LROglM1Z765w/ADoe07gsDKTWWlVkaENKyOur1N/nKnYGI18+DDd/z4zQMA1fR5PX1Ke7E8bgpgAhVgCqtBF6xmJU0wx00wwtignMbVAKOdVvbty5LeqE5v4snaBw3qS/i0DPPUph8VWOpIbtzyEBFZdb5xSa106o5M5CiARU91OOlAQkpUmlTP9FR7sTW55Vjwme2Gtjm7v36Ln/6+RrXgmy6M7BknOUhYRRxB0rYMiaaZ2iQQx32o8L9Fi2wKcYNx8PDVzDjdbK1L6MlNJkqgoWKvK78vtzxtsSX49ILCmWrr+67hSuK+rpdEy5UuPbDu5GMZ93DDISfh8D+p+jj+NUY643+ECEhow/968JRLlB+JyvA3gHDeo/Pqzp1ZsYhzucX0CTNX36h4u4GsDHpdxDrUskS1uan0U9zKGPtot8bjPt8aTCe1AU0z4eYEJGLkFf3KS9LK6WmIk1whHMuHuWb/fNjV/NItNGFnMVlvOg6bEqMz1yDeY5PpdSDUA9WyIXRhGYxcKYcJp9IqLbtXCIjDD8p2+VutzbG43O/bleE1l/1dhhsN8NutnD46v8+wONh7wRwIoaNpii2TwToVcZa9B/i73z55/4rpft5gzXsx3vpchC8XRvBbQ9N1jqW/s8DLzhtBCkmrF1v5UB910cb9OmEwR1z2nA4Uuu9PVGVZT3cysuXo0KETmTh18IV+Vk+R+Bpu/WrOro3QKOuu/xCuyiQNLgbeJq/9uvj9gkF4pxJ2xl99ZrHBrXsq7XdBKmm+14GUkO3G+hPi89UvriIhjjCOLPFmXsl1sc6Gy4E3Efxk1JLhVRLLTiF2YOFG1yUut4ZT+1xBIMz+0qUxcoHrh4AKMR1LO404+AemQAbki9HxkH25cuQUmjHgHEqAdJZBd8W1Koh5/pDuSj258gKsO/Gm0VhF+NqCc/a6johRwdttvHu3QqF7w2P45F1sGMfUWzvOW+Ow5LMIwE78iUy2W2jfD4iie9rZnagsR5w75IUXx3GR+6F2HKLJiSWsjTGRMulvisKnuAZkaMHrGv7K799ROfsWmKQSNnNO0ku3fufx9ROsBN3K96ougzjZjGduB0/cdCvlr4I8MjVihAUW40PqYC6RwVcHNC+2dP34CLqpHoblUt1dSl/F2eAm9kBpMz9za1lm1Zi/Zwr4xUKBVdmbG1w/TEFMp1zDYkfzz9kQ4dGTCnoConirkDD8eqP5mRH3QdSc4uZhIZ2rC2n9XpFFTCCWapWiGzlBSMWsD2HWczGuiLBHcLAV6roPyB3JgJfMVUr7LOmSyYNIuLVXUqYEXr+2VVnRQmxNgQCVlel3p3qUMMYv1CeebvNhjh/2xsGmzZIyqWvRF/HZGGg9JNEuOIazTIiXjTjkZOJUxEpjnNMtwa+RoEnxeRJSCIatbGTMQ3MwyeFw93INPR/oA/pMRnWwU4eLZtFR01lw1Ig9H6c/YCOgKJS+IMfmy9Ld6mFMdjqaGxs5SD/wLuQypQAqGUw6IPt0Hnv9lYWp83bfj8UKOtglA9x1ScnQH/3QtqoyEVBI1J3FuBu+yODNEcOmh0ywnAYZr655b1+jOhCQmP5/MdTeuOIrcvz2BFTqvjqI7eFc07m4vfU/FS/C22bIgo2rTLdwc5ykmPj5PTKDBAfq85E/GFS46QRibyFaX0QTVzQGPordQ0FYTqwiww134P6Jj/Zzqppxp4l/ijAWgNSpva4JzCGOV9+THJoHmnYhF03/Gdy+h930wCUNztAOJODhWCA5HRfpqetef6fK4VE7SZ0iIJIKKEPma+z53Ros06V6cUp5buZ2TbWMDTh5+oHy2Lgfqi9JMAdXoftMGA39xBxHExXhKf95nkCckOnXDmmpCu43wIcycDGX94AHWK5MKnqzOttJnlfEUl+iBwoMRqer70AD8A/ROzqgiRHap6fAo2rRT4BobEHZdQ3iV19WJmXLU+Jg0YmexkBlJj12wMYCVf23u7j3iIPUrkMPD6hWrvawm28WQcC5g+LSbxelPS/ZRQI7895jM0y7XpZhhAjYJZD4g7hVtJKzDI7svf8YlFMQOtjuQ7dpe3AlR3tfHMLElZaaS8cu8nUA5GFRtt9FGP+naq+cfo8cqjE0f3/SpoYRcbdP3uEMW+JENAFXcPxT9U2mKItSwIKMUD8PQzWiNvM4r1BvIVvAMOdf8Zpe16nQVLx8xW+SktjjP35poyE7aE7QWsn/oD0W8RGEZNnp2uCU1aCbtGGAeVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnlvndDmCy5ogTLV+vdp9QzzmZ/vvNAbPKMvQkhr68em7x81/YkmX4gDcU5jELp0A1ImzTlCO1Gy6Bi+qzxixnH+pfZoPARK2JFOyw1DbzOaKeF0GVIrIpl6bQwLgc5+Jl5TFl6vmwjUom1zYmeXu0pqHOXpOdsyHrwlyJ+wouYcAQNNtqpP9J3pCXDyIqK8rZdX+rZV5nbJI+AXDv/iMcNsJPQ3x647DTsbfjYuZU/Lx/bli+9DDbe2VAp6aWoElH8isJCJAhdIm1riCprBWVYYOvCxemAUTKbHPmYLCmRxu7MrF5yqbuD7SyT5Dtb1EwS7FV2joPnIAr2jw35Fzbn/LsUdqbvY/xy1LP2g5TT64PSrl5KP+ENI6CP1sUEmpXUgZVZj89i1ssisJNar3ZhmnRoiDSyWbJXQ/ilVxGUYgFcYoMgTy2S8sb3vgya27DlgLAdZ0uuT2cjRXFW9V7lSvSGrlDnwh6fPYuK12Pb00NKkd8ECd6miVQ8Pr+vy7wlq+C/E+IGyN/TX0l2GFCx6DmezM4apjFTiq9xtn45VwfbOkfvj3CCBqyL2uQan7v+KNoABHWBtBZGkXAF84MDwwLnMm1xxEGHIYdcL5/AWBdyFMaSwwQqNSksT9uT4eK559qzRMLRmreZAJGlizFDCkPQoBEMF19d5IBvaMRlxU/mRVshrVM0g1c//Dn78LXv6PjZYUejUp87vp2UBwApBxtq34hGlHXU94K5Cp7N94prtf6uQimmfxRyqoHFvs/AJva8C75X5tD7nVlJq5/k6S3bOLk1faaBq6Ye+58QXISqRplVG1+cJelsnyQOTe4rpbBfk63LFuZgF5AYbbyZpDqJVNuBOztYiKYy1oT0Fg4xtD67WEcNAqjcm8oqvIlQVFltDtgdjOi3FcVQXu5fOcIcs3iE9fMtiR/bGIixzugXePseWy4av4mY4ePsss3dKvFuTeGqAT7cNoErfr8Na5eyG0wuq6rSE7Bg5Beu8Mr3eq8jpo7dL0SjANqDotmYhyuqlEdT7Ju/gOTiMFmolayTQE8zDoIJ1WvMuvvvl0cdRk/Fm89g/HVQQAKYRUZP9MpjV7kPX/xVqtnurd6dIu3d94fgqzsUzR6EC8pSsCGTWEIf3vi4xoXGGgkFjHRrl7IbTC6rqtITsGDkF67wyvd6ryOmjt0vRKMA2oOi2ZWxS/SVIbDqcmntycxUVu+Gswd0YIbn51RnYUe+1pAsOyasnifHdU2mJPInW/RHSGqjj/lY7Y02zq9K3u0f3PsNXVDFyujyS9hyUEPalG5rDNluiMUMH840Fbbk2XaQFOAk3qs7dIu3FjZi93sNUTKG7Rg+dEyg+fjtPHZMZ2fvjow31Lx4Be+wJVV0IV2XNkKv2IlSjkrbTNgvovEKpl2KhH73E4ECcWL5q/MM4DSmLExYlfy7rsjektPIhxDCO4rbvZ3JaUK40Bvgku1qxpbS1sC2hBbS60q2b4T06qKeNEHj0o4xyAVkMkOjBT366ZF2l8TPlnN2c8t22y/IQ+4KkWQaEzLqXu/QFl7KPiMqAmIaNHA024lAkVYuWLiX8DqcnOLAKNmnjn10p11QbTdCsnObnaeDAFcyQUvJZpzAcl6VDhHnG7NLYelP2ma6k1num7L/FfpRKOAhvAHCAABlDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63O8uYakWH/Y0O1xtF+h07tuWWXMu4Zk498LEStB0aA9G/3BwKQZTqFWq9OmjxFGrYn8PsZnrgKmlQcnPLyVkTp9vPSe4jikgZIZBwvCEF2/YjmrrQDD+GnN7/U0jgezNYEzpyGHLPjSfh8D5a3yqTLvUUQW9Eyc+iCsWpQ8Kq+bpYCJG3ywKFuhXcf59AN8cJUXsQ3XJrjY/oun0xd0FThmtJh/o8ikWiZpBSsciVLcJPgH81ZiNZjsGVjg1jRFjvtH1o9iQBwsYBhZ4kpqSFIoMZIsjEk0zM7xezh7GpzV9aqu5F4QyiRDcUYUoRfxfzBxB8cKeFHYmk2Aykd0vlunB6Ll1hDojzjjsZRMmRJhC/lE2rvdzPnp+6LVlSYk0Uzv5tnFMcT2iVzApi+3yJtFM0ghEg4aKJ5V3KaHfgd5p5INwqVOSU8JQMIC8enBR8gXB1NXLThr9H7VNyUUrzk9pCckH/ofxj/F9Isjmhj/TgShGTBdPgYfzVToV1pX2FWezNTTfNq/SpfHM6skyquu/61RKtc/vXT2lW4u72QY+5qRxTPI+O8CSsVb2ICyTs/qufZcttfKLJ9vqj1IJ6yQVI82p/w6rcdVarzp0lfOMSi9HHRujijTr2siu2dOWrPVsMWdrwownBKlh5KUIoXM7CRVDMAsnOE/5kZi5gfCJ0IRYe4TLGpPTB2iAIqK9R5m+7iYpvizr41qHqFm3iKsjV9PwvNO3o4yFvrJ7T39hetQMU99BtBtMteknoVsrvtSCnXoQno1D86e3nB3nzb04v185bUaIdOJF9+VxRVA//g6fZ+fcPN4mBxchYn/HHnpvHzSQ4OxWLWmdd7LP8Cf/fhWdFdp+FVOvb1eVbWuwcpaGWKKsv+IqmGT5T8inqPEeO1jEIT7VMaZxStBVxKe//HE5MoMxl7iXc0tH1UUKd8kuU9ApOsy3DJ9KwkgS2w1r3vk3MgZC0529tBrNPbWzTnVRlFHmd4SPI8UIalmndWP58l2/6Gbj9ALdGucnLdi9zjO+vdFadL9n4scHHwVuAwB02H75noKwGTNfDyUqB/VTwSdNCtrGN5xloWVLZgPAMkLbyuyCYmgmxZRXiqTzvZ04w0/RsoI1LoiMv5fjgn24KC9mJzmjVlSJ78vdRSUxC0dlVDQfi4eczY1BPDtTmqkBYIHrFGuDhCi7bFVr4S5CxIQjtYrTTovaVmcfMP0uu/fUNXFVObpeOsLYWLe3UtzYbnxn1sY14vd2/0Up1hgt1yXJ7Q1OUhk9c79o24TDFQS6ElXPlu4qNt/bHh169ZkhgGQvHL3vfywbpnbknINojECw9IciPFpkm2PEoCs7FP4M7j6wKdzi4kk1pzxptFYRfjagnP2uo6IUcHbbbx7t0Khe8Nj+ORdbBjH1FLvMHZOPH0oh98xRWt+B/1NdXCYibANF2JYahwudIIVTNstsb0MJmkAu2K1gvLV/Zu9aP3gpqy4KUSg34cWqUb83RdJXIZJTXlnK2lgu0iR4CwZPfXpixJTHMQhnWVkWi++HT/VI6cqeeFWfsWxT3K5mj+nNW5Zx8Nm7G6240JX65l+VQVLdMXTVzePsYEWaAjktE0pLVBqmARnkRYWnHtP2ce421zYpMTm+IdENTQhCA/5ONm4pSNTpnaCfikrRn5WwHKEQKc96qLzWpVCQJo1pWWgG3H+89NY9IUP/zyTZ1sxA4EHrdkjBF3T0Q0v/SXp34Wq+l1jU+88uJ9JUWdotYMcEr9Ou3GA87kCxQL2Va8I1YUzz+dpqNLf6c+KIj2Xd6o05AOZstAPGiE0zG2Vuihz6TG24XZ1AFpduw+xz1GUPS43HEq/ZEFRzIqLRVvtmoo0ENnDRSt9sWav4a+btbgLvJ8cbqxJ0LGee3zkEflJy7KWzutx3Qe0r733v+/voWd99NfdG7pgojBdn/OA1iKMA0ozOCZ1GQTOUZrckHh9VU8XTC/4bzdy4UhOJFvBTFAXQGuLWw3BwF+bPJaW+MHsxmDKGi282yFXlpqdvOAPlBDgH1uYZ0FG4iLpPrwktNMB0t8GAaKI80RF3RRM5t3De+ytQZDXHJyRGtGFB6nUT/tSZXaLJmcF1QIVX+kyPk9T/eQbLIcUFTQxZko1jK4iGHtyOlNtiUbPE/tuEc6ZBBFBvCxGR1OF2ucUv0ufuJoXHdrE+7Y4d4BYTo3cfGCsvM34swuBUnkcgUy6e4TstLI55EqIwa0zparFn60JHnwyenPPC+Q4KEjJ2GkMznC0TWsmBHFemseUs28BQ3LEF0AolxyhDgfOpI+jqSCY7QdwnoB9d1TiAYMHq6nfcuZQTXT41eF1osakHlTxHjHnaJqKrgKSiMWUsRAqzQUPko3YA5AaeJxCb3Gpms8AnIdubKiJ8vSrlvd4Xjqkj4yzhS4sd/E8swOPd6h1VL/NGNW3kx/oUqInADW7w1V6nc7FsSOiMbwumCqiB9+CHb/huZsDaDIJH2WN1qxnnihjbYPie+3eyRH4KLapR3kIFUKBzGpZjMsgj5prnjYid/2ymF+1RYDHjkn2KFnUUGF2Dod4bykaDZzkbJ0KiteDPfhArLXh7FO3OZRxC6XgVfQaj8oqumwS975ZGOX0KspGX6q97ADRp3jkH+FfnVRp9bgbg9enEdrSzHbgBCY6BJmObX2JQMbRmIkeX69PfFUmkGGaEnEO/Y7ofEctGz9CGXFheaLdGdlFiZ5Mf78wDFmoPFgZYR84ZFGwOIwN9RnOTj36JTwWkMfcxIwlNWhEJvJRQzAd3vi4BiBzcjmJuNADYx0qsNNZAGfVXx0m55JltFvey4F4BxaXQ8dcFpQBuc1+fhySg0SyZ2BEKGvS2ZKiIlkiE8yKOwtwMCiUVIL6ghYKFSSzrUPFRUfqII5bLcvYwf3DKsoiLOC6Q0gA0+QcXTC3/cgvy7kg4pSnhnC3nX83lUTqnCcDBLpRq3/tD4tthuOHQoZZayjnZsJomoxtX/8hE/bn118Gg82OpEVuHxbMI1N3CJ45kwELvlM+0yKUU715zjsuhczNwEvILDFg+howMqUJ1PkuQ5meM+OICN3Lzfrv4B/zJc/vok7TzQEkPcq3Vy+Otq/mMe5R8VzzLyE5oGPIuyJvzey78ZIOpUNfPb9Ppd6g5VD4UpzcWoL6MEJbo6f9yvHxPCubhSlLr9AYoFpxx4j3oyygnnIvSrTHo/RCjWEapMABs3KTklrIELXt4/UwVJjGRpSduiiWfpd24ke6gM2s73MBnjL/1l4LHRKFMHnfUH8cLxxnCt9wkOCWrPzkBhaRUNYImZRwxIEeCO9FdEauNZ/DxvjZ2X1IVhfw3mTBSBcv8p+Lufov3CkZHKKbzvQueopF7LTQWNnV02qyB6meij9cFoA2c7UsKEQKpt9GvryPT5qReziSge+1etx25Vx4jEBIibQ0U9ugkCLH0zu1ndILKovhI6ITyBkZSBmwKdm6QdNV1mtfMLOmtJBEnWl9mF56Qa4nmdmhNIFM+rqt+abeHYBbTgTATqO2S+QKmgV+YEeAcmmrs8Q6M8kaQmdEbB4St7Uks+6STBkP2MvXNQF2NM/EhJYZitDrgw8MN/xKNoFJ/dZ49zfGz2yMSjzNCkjBgTBwKamvSEBM/20Adcp4NkmgffAERpqkW/oljwGli3v1IMOJSyGl0+1fR83DnXoMWBJ6TWmVCiz0dQ1lBu5VGaS8+66vpYstc7HkC5MlaSR0bwq3XvBjoZc4P30nrxcIDx76G5o0ZyTv48p4FgNFU24cZPlVjYwNQQ0mqFDRZCB8ut8XlSp9QBZ46xOkJFMGEc0TkKawR1KDWDJiDz9DN9eoXJwL2hyUs6lNvwdiNkEugzDGZ+UR5oF7dVw5YCH6ZPPc4dha9aIemx7lmkcPIvHgh08BwASPgdIOKdoAHd99TBZzcWs883UD431z1fY7/RT6z+kFipVqGjzJpywH342kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYWM/C4NRrGXDpAW3hncXFOgCQ5ChbQf0KuUpAtQQL90+g2TSd+EPTwV3+v90Ax42Q+EOCZlvmRANd0emmLUI9XK37bg7LTrr/vlHjJ0Wq5zy8aE3K/JHojdc3/HN3xPKLk15OrqNhaoTi/Ig7qxmafeIy6ZIxzwlsEujPgzVG5ZvRrjnZXkNuuN2rvY94+jlnImKvsqcmzvP8V+n9ckR1NgMw+wmQRp9ap9JWjmE/jh+XN3t12aQ6Rqx4oPk36hCSFwP7y75ali1HjFrAxV9/V+jHrgAZ8fuxt0FD12CEjCbfGj88KTqtBV/MfEfe8NsDomTrNG3DAJde/g6vvye6Hh3k0bd7MHVYnPeM26WQpHz8QuTZ/hwM0+mRQ2+aV/Zwuvt1arOkA/FPGM2XUwhGKgN7n9Rl/Sdm93GC64tpFleGdQuVkaQSs4Vex/M8QMV6ZbxbyKXT+RzAOwdQZAdCz+lmgGdpNE8PUOWVdbJJ+y3+iIiAUU/tZk79tILgb+ZJ5UqABntZRQnn72KutUYoPDhET51eJEh+9a6r+feSz8GMEvMXDv3SxGrCr3Pu0yOy5+77oIUQdF+0/VaV/RGl/MRB49KOMcgFZDJDowU9+umRdpfEz5ZzdnPLdtsvyEPuBbXhuI7QiL9a7H2vckgJRw/bmWpG8oD9HZLxtA1PqXxjTPC16V7S+L/Kezrlv8M9l41TnfyZ+K58aieM0dsfmuB6EIc8gw1vwGU13zrse/zPOG37ZW19DeB+U9KhM7yAmob8ij05DEvwC0oVNlx/s+Kv/u7RUwDqWahTJ8as1cNlDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63QtvkI0kOuh5DG28f/RFcKpA0T2GNcmKBPRr+MR6+CEP6w/PYFfACN1/ldQu2hFlFbipydY+LkXDBeFVbAlfDTL+foKrwRLoAsKw873LOWxhyneDmynNin+8wAbmbRtR/wj7pSxMOUxAl9VYf8iDGHVVmZDt2iAqxss2/V92tCtjaQnJB/6H8Y/xfSLI5oY/04EoRkwXT4GH81U6FdaV9hZuhrwhZX0asS4+X8Q1nl/fY4GiEWcGfOmNQULxklUje6stEo4/oaClCdldpvcCQlsy7c23CUgZe9awxhPxb1KOmrAKtH2VbeeEDmr6xAS15OURCWOrxWyNd1YhIuqtAItBkLnwckqcsL6dkPwy2YlxGQF8wGUNH8ukwUPjsydYS52bcIVAcMlPeJJyqXg83VzqW8w7Xv8MvExG7q6AxoKklvUREcJhUly9yNFAOAlSCDy/i0n8bqUn2fqy8At38nf/QWMNlKCynEWsuJi1bfwTLNJTO/lHwtCrMd1VUqP4MF2l/ZWs7Ts13JWudlVo1a+8zmAj0T1TTUwZuChdfELT+MinOsrpdVFPflOducuRKVV4fYv9WfsKK8QLRHjsjjsp/M91WCeRFNypUKq8eAyRV/vbPsEht9oMGYOxnss6nfvJRlzndilQSXNgbPPMbn8Ux3Ozy1bFgBxvgrZ8DiCCONyfcgkWLvb5UZK6puHUF+Ah2dU9eDwEq5lKhe98oRWZnuhmAmkSzofXC/KSvdhsYfud1a1NAXhx4XkfFn55bcuLpuXvbpwEseDuTy0uYnXrJKSCDJKunfSN8APGHur5RjPYOuPmni8Jb+b3g0diGieQXLsYofSnRyE/MIoGRQl4R3/BOFWPSpre3mLZyHrbkigaJRbLoENq0+Bhgd5gnxtcLqkWFQLO3fGkAFbJo5s1sToNtPq065+jfXtUc8dC+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpPmV+JNL/iLygCiqvosrpi/bJz5S6Qn60CfxvgWJiyzm8IMtNpnkbJnGmKuQFxcECTWmtgFUfu3xuZJ5XQruktCY9onMC7sxKBalMIdvAmlNEPr/Bje/qxXs7+O6vUPrsAQQlf6DmMqO1LadJ5qWmAYAFWxtDiQLjUELPqyILV0qR2qzvA0SYVepMdb02/BKjslci17WEjKilhaYaDp8ufisbm9XCi4U2x2VnOXMjKP7fQKiCWLVTHSoRlA9q98CLfAELDSPAdPa0N4ZG5/VXm9Cj+617AKLFhA3cy8K+I11GE68xkU6ppufMW5v2QXesR5R/JI79jjd2fy9cdXm+8HZNL5O5os85bb7/8mpzZShzF52oSkmz2PV1ZzCBqX+If9sNGLBWpOsoSY+VUGnmNrYyHo8kVwjFRcvQy/EK9CtGx2FrdLUY0LHKjniygT1dPpa6MXcl5ZedUXDdAvFI6rdBKyvbEjHWmU0CRzGP+OpMmxTWn6hGJ7KNCdMAUUnBRepXgTeTp0JOuyGt7yt6nn4ShZI/IoSQS1Fx3PRfdO0ne1t5q+xnE3Rkrpgp2SlYAkA9FLYfPzcegeBBZb3W1re7ilcs7KZhSjEultacwDfohLcG3WfI8xvtZ9SlDfQFAgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQBGkzYHDKi8n94om7m1d5ju3pOYYI+KUnlUGeInWDFljVQaih4SMJ67oAcsKHdssG//1ciTR1/GJUWmvePUdN92V1l4nESgTAaP60pD5E8FulK2Klb5ymYqwVz1bEnIv44rnl5UqibjlrIh/vpwrHBHYCTjOQstf8oyrh9BKky+SGVpGCD0W08St6NJmNbzjtMTLUOA/QVo2WF1x2Vbt0GILRwAJTZqQ+C3vAhEhyBE0xWdPldtiD0v8jMhjuKNJ0WMC1oeAcBz8YWr5+OgYbvNvkrGAxjHxt8Uo7osysDOI8R5mzFd/ptF/Uq5ppSLY9LphCnU7Q1IMo8JhqLueLkBJcNIk+PKZe7EYruiBOJ26Yb4KTkDG3GHnjDLGUO5TAEcZeN9zxutDUfq+Fb3tGVpdOB28RV5ZOR/gQKwcx/glgjlOuGo4JrJo1XGFcBVEazP1xwrtlCVMn7CLArOIcKdY36J6oT7+8otbKrkg+jCOJ/vrjvm6hz/hz/DS392l1ZeRo8YLm/B+FGXVyMI8Ejno5IgSX7B+X3SgaiUkjqMDxmaeRWivGpqKSMPLke5XU80rqJcT8kYEfQU58ODsvFL9K2U9acZZxJFl2eyMQJt2zhQx3k+RtJQX2fgru/Yp9tbPXc37YaJYC+qPQZDkatWEQUZwe6Y9KjkQ5MbTLOX2EhQnJEyuk2Ud+kHV1+jh9dqOIIM/MmH22HLcFIopCgf65lpGQa+CSrlpzGaZRFj/35XTiiOZMyj0bTX5mmXKix8PKsRPN6Ww+056OtMYfBnoDFVqsaK/nwWj6gZWyhbpOr0q9if8W6485hRDLAVH7+oHvGvTzDdvXp967MH2PKD1FKbUBBhWZRdmpFLwQ2FtB/U32faxM+6i5s7B1KwyC+pnbRSRsjdZ8+wP4TPRibwTXC2/UtznusuG5wZS7INcQ4IlUvsSu26f+y6V1CTnOp76ZGlpUgeWpRlinrsZscuOcrBs7zKJtOOsRhmJcJgsG79nJb7lgcn192ysFJXi7OYuauWzxPEqEWw4RVjeAMwB2j/HNyhM4NwrDUIBI8Z8B+xsWUBZbuRXa/Vpoh+n25IOTOmbrQvB2vbrxmBM9BxsblwFOrUXRfHT3VQbVmKEe5I24NVa5x5VIttgrZbHEEJkg3b6K5GYbJAV+S4ki5I5eGlAK1j7XbefOh0HPIio0x3vO6D4HHeSiS6VMFG9QyR8w86xEW0e+EDQnO4RqkXmzCyd92CpglqXKqKemv+wILxXy7xHntStfnl76MoL92RG6hiCeYe4uVZJ6Bz9lR1Qxy3BVrnpssYPOKMjbTzOVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnnW2Y2NUGQudJVM3oKuwMfwtl3iCbWPFFTDw9Qd4duCDfZjf4UfI19R5c+ny30mRidoOlmU1mMyL74cPRS++MB3FfCnielfcDkAFIZKLvC+f7ZH796FLtNbJvDzOk5Jf8+/DBr9CBIcDFzeRdC3L+b5/MYj537mh4b0FubYNhp4eLrH+unKkg+3DR2S0bBt1m5h+ipu3w0rlqDVeiGDCX4ZFJawN1BLJj2KXEJNeqXbCoF70LRwxBRhxxfX82Cex9J8PMnOZF8j0wjcziojlWC52yNyqf8ONKcwzKaNInA2YvhI6ITyBkZSBmwKdm6QdNV1mtfMLOmtJBEnWl9mF56Rg1PxcPvTcJsYvGB3BBUTNwH/zuYzw1nureYlxSfip0EjWItJrazR5lOZoiiBaUDiA+/kLhGHgC/jk9pTjQ//LuuY2vZJIXPyZPEwoRowTHKqzdRpZSoMeL94UPgcSssY0Zivz4P4hmLr2MSdJeesRFZKlKjJ3e+q7sd+06s83zNrKOjsZoVdRbekRVvgHk6eb0+t/oznlWm3MCePZfiMponxWs/R6RbLi1AfHVd2sYQdYRnK94TDYw4osT+FTkb641ehHeSFLO+if0r/qfVbu2sVI2bYC4B+NuXp8EVuFv+t6wA2fVYp/i48cOdnODCEUjfPvAlMgG7smVX9n8LZUQJJjvPQBpRixFtRY5Ob9v4NyKrU/Se5zr9u8zixJeHLfZjB0Mx9Abd7KpFcZeBAEJUJRPc2auXGEuph2yN9sl7RuOZ4XO9mXs2DSmTW+ngzbCqAwBHbcFzQviAMzK5qqVmlruyafjFGoTd+///5lCIYF2KUpw94po0JBWTK7vLkbdSs46pnyhBZFlueUTIaKIZBnT8B+uwJ+uf+WN2ho5O/DBr9CBIcDFzeRdC3L+b5/MYj537mh4b0FubYNhp4eLOvvw6qAnbytITbBFNqReavK+8/C5cpqY959xMTZQivL513YuULeoFDmv5RdB5IpWzKoE0A8UCcT+pP8DXqteamyJJkdoUGL2Wix3a4Y5gMsiLx8Zn5NxbSdxgfM6RxedmBLVFSIYtNBy+osc9xIkeHKdXziYyWRKIRSCCXhbZEMcQDpBbYI0mMqRCmXqHX5hszP4bL16XmsEu5WDW2qMFgCOrA+ipgKrU9yX5n82jNtg/CA4/oU48D9KZtc8/IAhnTlNTmcdB7rqaGphRh7fzKq++Z3csaIgwCLifsMPA+5GnsQE4p6PSdvo3mx4VRIFP0hW9XHClTQkO1xMKXrXVwU7Dk2Dg9oFdSWG2XzY8zO4KkOnwtLRK6wwrHC/j/3q7A5aXb7oSLVbyIxdj7HFAYdpYc3GR5OFuvC3j45y+ptsui2gL3uQXAAQptTRf+TKuBbTG7OhVEsb4FxdFslgfgaF7guy5trh37Bi+BlMyhTS+q/6E65PceRrY0p1vBCcGfCvJb+suVdDTdlmUTKSmY692UNSqra5K760Iq/eDCALNBGlTRbitKZ9itZKNPkVUKtTMzQVZLoOaBDcn4Gmhw61819/gE8OHvTCa+JumaRV/VwnVjeoqvc7ZVPtDPPc2WCVBkpJRP9zzEIZFmFltVbbNGTx3mR+tFfo5tEXDftoweC2dVaDk2vKgR1eOkcNVBHGnmyQYxzJfkSjPGPfIT26CH97yp1J7yULd7xEfi8GROzoo/opcJ7zQmSz0uglXVnmKQeAyaoI2j28b9EsZpgLHjaYO/7y1ivwcMegJ5CcRj4vlXGzic7eRiWoJ9dmpjQgtiFQe3mq8UmyTRcWshYXgcb19kAHj+KPCT/2s4A8ZKUAtYzJ5Lelsr6PRoTBIp/4Ltx5E2YRQsjyynUCTOPbTU9N53uuLW+CptrURfqjmiUv/0D40+G6UcXihjnUztebYo+itAj7xhPOqcYpvvHSIMzdjfS9HdsGMcQXkLiNcmWyr30ov4cubgwPoAOczLmJxR7F4qfN1ZUKQChNXMrrAgsPiR1i3oJV1OoCNlIN4WMjlNZbggO59jdm4wvKjHz/fc+QMl+1kI7VGy5zdpCckH/ofxj/F9Isjmhj/TgShGTBdPgYfzVToV1pX2FCeFbFc9OdG8aKgaBe03+gMi334AoKfaPFXj9YPrVg7CRHUm6FL0cj0URKTe1T0YLBPk46tK9xlYz3AJpKGcCmmzaBsN8SytaKdI1yuekiXg9q2D4CiYqgmQ469if4rT8Jal57BB62bKH1NxlmmsFkSwSchDYFDVavwwvoiGa3/iGU6uQpKnbMOJ7XLC4aVHqfM/a3wzSwOWN0DcyI2KARbTQE0MhkfOQ6J2l7wC7S6ovQUzSmXakyO5vU64ohIZAIPhygfL1KjJmLre+9uZsSv44mcCcUPIITu13JCfEc9bb2bwi+GwszAUUwQJX5Bga9Og0C9ZpK0rpJ1Xy4FwgO9cl3Ck0I0G8q+QCtHk2N1JlQ527rqInWAgasdzFipa+6jI5j3Ce/d+siOGJbSO+nOBz8M4gMxEMh+RDiAh0sLzCkZOco2aLMxj1NQsXHnM8oHqKZQ5PfxneKN1iyq6BBloys09YvBvDhbEBSdP+JXbfd5FsyGXX2nvO359TwX1corQjjn5wAgEVDSluWiv3/IhJjm8iuvwYWAQqYu2HWEG+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpPw180gU3YRYYjwywqMCAgXiN4vOPks6hXCfwj8txa1W5S87R9gMVom0vJHbxHxAa9vUWyksbdnTa+aCpQdS3/AEoIWWxg4iIjTrDUPyylWNKOwNJ9kzp49D1pP6Ka0v3uxBXs/LPUkfSueL2OgbuJGHyRaVEKqrJs6rfTA3NRXLJD+KfIqgbx5UH4wEllGwzrEwr9kkEh5vJyNwwMWi9VBgWi5OH53zS/UA08W0GaQPyqKlpfhVDpua4mVeT1FdWspNzd12M6z5DhSmSgeAWMQTZ5dxNdNGslAPiDnGw/p12YBTZ1/ZaeT/vRyK2jO5e5egi6Cc22Jh5W6o3r9mb97ZU9rUNOjJdsHhUboEYpXmE+3IrJw3mxsKrI6vmeZGaNB1Xy+QYgSmLAwIRIDAj7RQu4MLJvtVNkdk7409oitCsMfF8MN/AVMuv6vR0gVtFpG63VPiceDL+CHjIxJa0jtCFoOKF8deOPZ3KOqJhJBY7c2gzOzzpEMftEvIVADm1I+x6d0Qa3lucK6IqWE0o0b4AUikHpbQjHd+DB6LIiw1nb05TKpTZa4WOWnbAAMC8dDtaPp+EM8pH/Rpam7RRkaNyRJ9r1WO9ttOXQiJHUBpW0oXWIo3gbHZG148FWl31mF51L/eUC163l6e//mAf/C9p3ooTd2f/qZPZY1QgGf1U2j/PTuZAGTXzrYV+kHrp8HOYGSyoCsXHjNctS/g4v6XMSyn0coqbFY2jNihURHFEZZyqqCqq2gfF0r/JIn97nQ1gbaVsAkL+VrvhBOybrfUz2TEp73mXiubAX2Ke8y8u2KdvD941a+xBjv+yyu6lsh+ynCyfMKwqJGsf0Ch17qdlzsk+SPaBwpLzesY0D1Vd+HOG9JxdGwrrqC3VnE0rqZH2/qzUNNof6FhpfQ3+7ZxIuNrP9biGbZ9kUXLXN7J5TdG6sF7qfAv0WrMaReX4tW2ruodzPdcZoK56ab5CZDm1zc876Xg03q7WFs3LmBUMr0fODdhZ6d4zD5kCqxXn9TCCwebe564vAMvyEW4ZjdZEWT0TtYhTogZJcei8juupVCla2BnCye6BcFZGZopN0f6n66AEj42awIdds/9SK46izMDKcbpRR5PHcx489z4xyULShuKWlTDmCk0AeyekMsyFFo+e9//stHLj7gGDr7rw33M5CGQ+cnZsIezzJ8EXssnEIaX//o0oHg+PkQMiaQHHKQAIq9tUfzB76Lg3v2QTk8jlFRmDF0N6qU6LCjIJ+uj1bbakWIOEB0XCFUBpaYyZ4m2IPguUINMPYvyKTa1Yu8bmX0AZjX1fX9bz65/ZzQIu4yeObD0FXFAAsLQaVMHvdVNTTXfYy8us2YCk59pMsI/zO9Q6mTBAllzXG1fiE0/ttMRHgQ5ptjvAP13qW0bqRBAEblz628W3bHd1K/pRNlcuYV+sA2Q6Zdits7IdeYvRADHtsbi8abpUy4of4R4BvYa6POWABw8NrvGzboPyZxS7sehUmfO/mLO7aMY51cL5kPpbN/sMvG3eZfd5FUIkXPuECnqGawY5ALr0+RF0swXyPZKRFcNgkY1bsHqcjPYdMVC7KwkWz9eph9hlnSDfnWpm13HzKe7wynWH9wDbmPjZy0m8OwFp7jvcoDxWcxMCzf52S2goy6k6HE3nQ4PLLkmkaFCsBJvYCYydSDq6txbUavUMKjYClwLkWJDXGmzgWCY2FS+eMrGrGDM1XXx5SrAoJcAUzaf5LMLKSmAce56ejzu8SJW0q4w81I2Cq6shDcYdaQBealmgmCv6URevuXTbrEgcWBcoYRXI97OcdJguu5eCWFTeurFGRN4pHxf7J3uyAmo8lBNzf1n/gcGLszhqmAvgX4VaT8c8NiJwY1G5VL5E4KeJLa7B6NxV3XCHNenfbTnEFR6LWlbUqO0127lTueclbISi8sPAoYRftFYDke/uk9h3kivaM9B9ns791UeVAgECr93aFAS9RtCejUD1Y4F8gY7AQHhNVgjLB8WwBh4WTL5S0uo5QPDG7CJhg0CDjIsgP/L7SRRFYQQ5UlaHYa6Oxc7gA77JJUgt1E0kR2nCty0e8sNRbRz+kQ9acpHrdozKPcmasDvDrrzs21eJsoxFOVwfxsa+3OVdWeYpB4DJqgjaPbxv0SxmmAseNpg7/vLWK/Bwx6AnieK73Erbb+4H1VSsvhpZmRftFX+frKSgu+TZ1fKGR4iOKL5G/n2yCl5stcL543ZN7E1Smm8Zl38IUFpoPAoznSFAxt9VcTaxxcYhE4CqJBTIOZgLjJJRJNkaZsyaEf47guFZbZX0ZnUBrrzN+UKz+LE8OvQzRjiCacRUTIIgzjo/4DWx3P70xfinOHe47FRPtJrDz1Pyb2BQ7wC1xX87YkjBtSQVqYv9j/T065x6z5m6gV41BK9eZEZPPO8/QK5WTshi5DFmdl9seTehPuL+OUMwQSIFUCq+Qf4Q4GahRMfxMuN+21cMh8uuVVehLz5ngzJdiZIFkdJFC5oFj4wCaln/fivhoTdRQxWt+HePnxLPT4ymyNin2twyxfXYeaNInm69ANTag8MLI3fTID7bOOoM1ABQHVHgWKNGdHZu6UWDH3y74DYRuhOCvzO36rZhmXX81cVUNpfD4SJCOXvh+WPv9x7HXW743SBIx9ypfG4dH2mFn/GHkgCiQDP6niO1Bt+RCNBQYzrwNtpkzIvOXRkxIZFk69rRQOps3jQoHznD73cgbN3g3w8Xzs1lofVIBLnCz+uyG5rYRV4z/c1ydfUEvbN2/fyPmP1ayjyM/5DkUsD/soj+Y+GjfFKAQ4wPzMXbJu6M3bK6LVUy3sD658ma9x8XzxqhdzFKnWcHnEPqsot54cpJl7JgeeG6r3akvohpuZact9sGaRfgDphGOjaQnJB/6H8Y/xfSLI5oY/04EoRkwXT4GH81U6FdaV9hXE7qJNHSjq+8dmgwhE8eLy+Cn5/8zAEBfA3kBrxiO8EP/avpxN7Sj3xu1FHGJyGmMdcHRK8bIYI4dWuFbBoi1Ua/HuI1cnHNY/sg1NSVqhgMi5Yfi9Q5lzPjyPw3rUacZV1Z5ikHgMmqCNo9vG/RLGaYCx42mDv+8tYr8HDHoCeqSHZ8DG4eC5YEvf8TyrhO1Xvg5SxM86kaiCulwjvPi6K8PV6Taqt8kjdn2L3JwYzrQX35jW+njLSzhaBCDR5heeHn1wPuQLygUf9QNtiKnPEg9ccOJ2HHHXJFQ6QxWg6uH+CehIqGD+Avw2tYfAP4rSE0t5exbk3p3S3qQhhNCIabRWEX42oJz9rqOiFHB2228e7dCoXvDY/jkXWwYx9RWypYM8E/M9QDBMvuw0J5FRKG0QxkWQeuqjy03DvTzPgDHAprFFYIfZz9lENzmWm8zl3oCn3ZVdsGVRweAe2wcWlRsjy/1PkdOkCd8UGOXnGy2C8mIH0peJYXfjnnSqjx74SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekCKycr/do/6uGUgOWYWrLALtAIsLJFdoY5Zn1Lf5RG9AORrdal8fvcRCg4yYQKj9yE0lrqqCmAlsl0DMb7vIQ4AHRCiKRmKsfG+HMtww5iCueXfxCDMEMQSyEXJ+2JEsEtsR8F0S+jXh3uATwg0K+74U8zZKybsYmQEDtYH3fOUk68EDpoYUEFS6uxrbXbnxsXNZ6vE56KIg9JtXzuyRtM+H76YqfuZImbzjGknd2FDQ1wclnNeTdQJb1rcBX8hDwQJBjmaP3xohvl321gkNqc7Wusb8mxPLzzgg88p4mo5ebkepU/5bKb4YXLQ6m+RE2OPsXaUTu0G/FTRNKfY6Qx4EG4V8y1uzz/+2VSfwOq8UXibswhRTHPBcZYw6Lnd3XBUdQlgzki5AprlDFMLecEf+l2t7Z9D0rgtDInOHwbnGi2+RFudO9Q+nkK5SJ3/XtclZt6TBlCEBKA2FaHVlKO0iKwjFUZOhJ1B5ipngZhnC7ty2n9M4DYywiaAgRDTQ8y9ahZC9WL79TH5eWeB7UcRgyCWdeeCP3OKjMfOd+LhRFUrkhet/hmGzp5wmMIKAduqWsVtPTnTjfrt3i1E5LE/iPQM56+IdVxGcKs/Q6DYqEsVFth7wJxOWkxCeHr8+JLSrCqGN6j6odJpiFnmQuHHqGWPW1yXLkSnJGbLMQ2zYLraoBW5XodRpyIi+tr0hUv0sHuRYaKXvaJETbByxzXXsd+z6MS9FWc52NSMvsLbGHf3nS+A4zryt9Lq3ExZYqjpNhs3H7vqr11RfJnpWdy20cKf0GGXh7qPLKzOxsnh9q3NfqZzTL23PipNLx+n12hSN2bCvzxoYv1fe55ILor0Wvu2KTJGuMV+NRrJGSEoXjk3nxZlZmvlkUrzS3WLz5tlYFD5o0Sdpmc+4PAtD+b8OvodWFK2rWxahZoeJ17wOYf5Hw/nFCcN6XijkQP5FbIcAr7KCKem7ZJ4BCTdquY/QfCWyNx/MTUvU1MsXK8/GCfmjom6sNTQThEyImsqQtUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPreLTEnojIctdQZtWvU2OAywnbolfj68wrWsxrqklDaPV/1oKzmO2b+AaZleOFljkrvt6gYzcTI6+yXsDM++cCMUa5YWe2CWSYpGwLTFwEciL+KDlqvWQfdxQ5fKbGXhuERxeNUTr7jO5lOuYZmB3XWoKFgv9FaN50oVelKuLD/Q8s9FB/6jeV3Mv8IO8CF2tl5sycinX7pZlqKroLtXdrB6KAPo4cor+GhJp0z52mte0qX4vR/TO78x/nMMl/U8lMZ/5/ef5/TnRPxAkLFQIHoYTuvAxUs8jAxcsM49Qfr7ypEtxEtqTXgwOdDLvDNH5s+rNqO0lAKNtp1TTMvadIhrG2hiy3d4+CSHVWAjcvXcFWF7qrILzSB/rCcUvXxLcBrPDQNtWNJggQdptgTJQyjpRkgBrzgJcmaSPm+mAja0B+0hqdo+ZqSJcHp5EYYxNSjm6JzF/zM4MSksZfIFHTfqzwV1Yo/LM99LnOEeSTlzCQZH7fwusnztlv9BvYY+vlILkZRRj56onvK8Rsvov6DkgLJSD1+OFkndFaWV1LbAc/K0DMUtJJKHgBMuwarh1Sfpdg4Uw3MrSjt4rq1yy7J94zNE6hGOZtj94y6jhqBZw0MS1QGx7DUVC0cr/8oUhvFGNxSsKGOF1P23/BLs7qX4835EOGBrmpGsyuZgQHZuSjN5oex2CfFMNHdHRGTuXFg+Eka48vD5O1VJ3YKq2G5Vy4Hbt2ycgDP4PSMO5l7yF4Q0tXNWKTN5AeO6pRhotZ+NLJ53RUSlMG8GMTFFTWxEO04HSpiKLc4exjhkFl4Pt5ojgKxVSM1vnscdruMN9QxqaFxc7/lQ7VsY1fr2hhbjqMZ6iuskSd+xBshJq2GpIZXv+JAUZgWERSuZHzaqEqdEdJsw5OrgkLysq+yBSuZXCmQ1aODIUF8DZcCz14Exm65zc5Z+5yQFlsUmhpcCMFM9v8FkIY7VfKnFHyLvozmUqUv9pINFV9SAf2mjivM8ZnzQTVTv2Giy8MpJ0Y1GCHM6AIwDGfygPxxotGXhuFxgldSiJ1cHzQMI90oGxqrsJzbK0ilSN4Wa5eebI/MuXJQpGy8gC8gNHpAytwr+xVG+wvqje1PG9dTALBoFSrPcxSszmG/NlfnuT/SPVvnwAquYbiyWZ3wLMu3Nl5PlwGMhmPqCRuihqYH5XaD/UaO7ifsZG68xW0RZaGoxwjb+x5/8h7gwUIjUfwD9EXGzoTFdjJWC9ybXuFXn3DF/fGWaymsN4RHYMcB9xEsgwyMgG/M6r1nAKurXTebg1XkNLleib9VM1bBwZFwb11349LyS6dpCckH/ofxj/F9Isjmhj/TgShGTBdPgYfzVToV1pX2FA2kVoNzKItjNCMduYNPJ1/ia5OvJejDBBDEuSAR9y2cwhgMpUZbS4ktSUbUV5b/8eLAAbJ8dcAGjhJ+scvMuKWapfdy+dcmRfpTDJXKakSS/OUr8f839Ksn+tggTfKslTQYi1yfoP0uQnesoa3t13cssXvZ7/DNO5ArfXzIIHmJ6Q8M1Hho+fNpS/9NKYWQznsaIiujhRcL3rD8eidittklxlY/RYBxMcMlzo8An7gilwa+nbSvt9RzqFPG5prn51puUIZzxnrh7SfGUUHILk4R9aAk01KAfzVH+4VlstZu/x6WcSfFgX8Zd3b2yejVQr3FajtfXiundNHlXdXGBiHj/TSd0qGQO4ycj3c8kCuzskG2VAA/9IXInf3yVAmBE3kGucspRvIwsQHOLDn3W/7eWDG19C7qGcN+zJYMJ6PJYGlBKTt1tj37s4ZS3mikBHGk45mgFlcNnbAo8ArM99xi4X6x9WWhObuC9XvNihNfuHlZkSevunYYG9xqNcvkz5pnw42m/eArDCcRQcfZwx73yPxAWYoskD7lRGkm/1HCedtG9ZSeZhXhutpCUqluYbUhp9hUPOmON1LyPTvOyw0ZYq+mlKakVMdxvHMl1MxKqB7msWRMD0xf4nG33QuLs7OzQNplXcEO2LgmD8ViqcNxBOezTk6eW+M7mp7X7gATfBLSNcUPft/grY5SuhkvwnCyXXagPDZbTP3XBy1hA1xs5tQk+xm/SgxEGqtItj2mgnfgpEGDdK5rtmA+Esh3ELvdIL+aYAV+5rcFH7hRAlBR9ckN9dfAhk1VOP8Bp9LhZetC6zPWx0Nnl9IylR84+xWZJ/H09/Fgjp33y0l36k+lm0KmqIfqI+Tq16C9uXF8k7kvOAhIqwbbq1CTeFnBpJNxbQc0elAZ69JkeRWxClVUJiBTGBy4Emd88s8Iq4CeRM/5o8pAISnrdPRaCw2QMVbaIzjE9HpIU8FL6xq3rc933RnkbLGWSgdpRlmKwM4FlE5GitPGhdHB9UuXSpAyJ7F1UvD0SkJRLw6JqU4mPzPF8PWAXBAeA3SO3S21t7LRkPgi4Aa4JgfP6+RF4jv7UOIBfzaHScMjiDH+M2umsMj78sFoYqp67sOxXa5bIo87LSe2lE19MU7AUavAAxCLJcRxHLUtAl4V8hUg6scKQR4JIjvGI/acQ+TMqn2oBbvSt83qkKShvDQ3aaq49kq3aYoBTxzLAE3kWLrv0XBuWeOmNUhoArfsapNoVMqSje+N8N4Y1hBnkrnpd4JIwcUkR/ycFrLNA813eYz8U85nRNAcgpQ5FlVw/rYjYZqBYDndNP4JvDjscWZBjopthFQuVJ2AEp/emFGmr1e9Pg/uhu84Qmc1Z9+VyobHJq0UUML2tjyJ9h4btbTWSvd4Wvzqt8tuqbd89ThUVUFbdFAeMuO2cYtg9fVpU7dIk8ndo4sfLptlMk31i9hzQGzXcV+z1uhuUPS1inDoncfaZHk75u8u3DzNBlKliKTTqF7QFQ6DIynUiEfxakwG2S81RXz04qpweEEtbTuUUmuYfUH/kUUAjAECzfT3JvDV2dq7Ng4OtuMOvnQTvwd0k7PgdNi3QSana4t11vuEI2VBzdFQNu1f2VeQ0da+BmklLzBjg3Voy9SHZkNf2gQgSWfA4tquy9RjGWvy5RFvJ+PIRZqwltYuF7rqE07LM8RNmRA7fhZpOJNht8aj/5JBfrfw/9owN+1Uz6ZINIDrsLJybDb94JjcUP5oyuRZIsSzxHnt9ZbsThdc3j92Vv2rbCHQwJJ2bvK2uVBYuN6PIFDu2PqaMwPjS907HBf5sMTTA0zTSRgSruzmJwh7+TDfrQNi9xSHwToEDsmi0LaGE17l+h1gO+cRwBelXw1KLpHOM7w7ZuxAHk+4EiJQ5exgugT21DBsBzmuFIklyMg8+5ktAbqzbcbaBWnesQ+y2f4UTzb40jkwMoBU3wHqJ9SGo6LbezncY5SFExk6F41esgiLThpa5D0wxIs6mrIJlUolkzJEpoliyL0n9b52vzF0LwQIMhSLP2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYXocjEL0Livlc+6oWRV0AFQd8OFlErCNIwiYCesoX13RYNmRgcNpzXMZMV/+3jc9BvJ1zxxNk1r0T9SK4lHF+HiX7m0DAjmIeltKmjsHbrFh/vOAxMbecDNAeGVfvQFY2YBtcdVQfxT8REfBxo6CI5tw2q6dAwQ27f0TAo8ppjw72vrwv+IQ1+TApMTCPvkgZ8VZp2kT5y7qRJExAAr5Rq6dVh978oBQvbgsdTEtOIvxsb6OSVhP90i7e+q63E0uS3QVIw6N3AtfUNXejuRknmmiaAISZiY2Un9mW6vvp2467vUzF3xkkcuHlr7Ea4421lWB5jioIpUgp/tp7bk0LpSmHS6rt6TEjkViYSkALi11p+cl/7qpQJP2wRoWBNvgpTv7qUSJzmer+cDcZ5Q9AckwtGx6vpEIZ2TEtC0vIxIrOOnPgpud04wfz0C2SE4qAEkfUCNJcpaa9q/EdFTw5UUBbzakyQYHfTOg8DSRgGRod66GpbEYVzJxO+B5YvymH2S/zNtT7G32V/xedjsvji/dWjEZ2ZECarZ29v48+9wNszDqyUCnqX/n4Wmt2KYlC5yL51EU3ULJFl73vb0opqUp2M5sJ8C3836TjoOG9uoGxjbAOut46qHT4i/TDL43X7PySnFWkdoioT1YM3XHB58xibNyUmTkZsodoO8dTwE1edplkGgaduDEdTLJt0nolt965GkqaW+ZPyMXwjewyZctuvNjX7oU27s1LrpiJgUN/zR4V+cZpIMAPGT9esYRhuDwlxXDuw5BPp4V/mLacxNeie43S3fbmE+oEquKGdpkyRz44ZiRq1676VQzSC0+iI41fiPCi7hFvrFbMiEhtVZpEGcyuajCEL3b6emWXo1ooCgm4Ie7s45w4e+0nNgj2agvYGje5DJyvFtAHs/NVrBZ/xPoqBnrSSHRct2lvtneVDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63obERD4OlWHz4mP/2sUGn6a7HKNEc1+Vj2QNF6vSRu5C+aEUrvJ2IbLnImr+h8j1VTqQeKODiFiGYZ1noX9G2OhlT3cBu+o4gcQKcl2laK4xczmSbkVBBMpC6kXKxmUlSkgP0ZsGLRkpOZsbDcyYoe95A7Kt6RXeaa2bkdiZ/HpQK7NKTdhzzW6y1L5WJk01hZN0D3cZ8sKWp68NbvCYYQta9u5s73Q7RgvR+eNtboEERQ+lh/I7H7TAWRkJsKPCwyi5MR4TCY4lpZEZJAbNspy3C7hd597e3V4YwstbBmRbKYa7RU35s4YyhKvmP8sIrOqx88Ru/YhBthURKib0Y3iRM3pB9Y96vWvHX5nyUi6bLbEKUUQS+YbL8MeYjikwu13rYLI6U96Gylc7UL/+N3UjeGNJBYRBLF3A4jyCkcCSY9JPGmcCFK18xjPHhY/q3wWUqWgWUx744p1mja+8Uy61Ja0go3tkZ6R1nWWRHhBmCfn/0kDFMCyDqqzh44Qud3GA7EvsOWt4YbrHS0VgZD/VaFZVV4nxLz6xxwtM0aYGPhHjZnci+YY2m7YsHBKeRmjxFQRuSMYdRnd7dcgIsKjhp8wl7cGp6CajLNJ6ULmV2BSR9uRZlWGI9Fk/9bl7CpoPotj4ZndyLbTFMXZQ82KQiMCHUsvDTZFM+V9bOrBAT0MPRLHkgkz5Sqydm6yrQfwm3LNzq6tDdnhyWFY+yQww8royIG7qiQ61zc5E5IFChAO34LvKY7tqWShi0uLEZnqCEFLKy6jGVQXbgoq5uCxLVdvJmrvrbXLUJdAaTY2z+V8t01PI3KbxWkLIsuWkEhRwMTS7ruA/6xr4HbEi/a97EQpJuIm1neYCiur+ZAv4vEKVCBX3BioYJmQZwtLkECCZKpV0V/AZpgEiCqxMIqnylljLPOMlcIoNpWYFP9dAL9XO68mN4ubTmaBID61rpgKQlrRn7mpNQWDb0VG/WY2a1hbP3PwZutBA8z7KQ+Z+Z8riUQ3ImUmfUEXldUhkQ4fQrauqaLJMAijVv2CrG+0tliFYPkYqx2KGEdgbpmQrRfj4Zx8UzlUYCFX1S7ej8SmnVFIR9LvfDVdHhJmUKUYRfKsnLQCa27AGulO5nu7+Dp5nHrfOBCKyu2c78V6U4nhyfjR2mxkP79386c1322YbRWo0nMjFQxxcM95UT6thfo/2Qz6MkaK5vQv/zV40QlqHTcKD0GA1Tsp4eg2h1qI5+Ie5IAa6GYTDR34m9zAhDkEpKj7ax0rfYc+WvhdIdmoC0Bib40c/xBcx5CbpfcGSVJmLqoQMYmkem7GjeOoUbFR0aE6VHBl9lNZ2S3KZuQL9WdbAT64NF4tfO20GiI24Je4sKFcvY19ucMa8+4YaKPn7uQkzrxgL1zNj52BxwolHOVMtHqAD06A6lkrHUJ4Tm/Ga07Qv8AWNX+IwqEseglkDJAIfKjLKDN1t+Db8QEqpK+yFqynyOpamsgUFEJzY9pHVcDYSBNJU+N02CGhk0OHZArAgaih2IG0XitsBr2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYUYTqQCiK2uYwQqMZzaqtJG8cvJgH4cz0jBSVDxzplGGi1TpdXpdwaCUK07lA7bnh7dQOWV5TiLQPx+yureRQ5rcnWbr2CZisuxmSp5rDFRzd6HXoyutT5Gk5KSL1E5+MCUa8Lh07npulxHU8BWQ2fwtSp/mAK3DdWv9YHnsIYrVLbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJFYY6RbeNc/0Bz9hiWljJoT7+MOljmp96mp88uGjZErgqLLK7j7Z4l7qgrbnZFykXD25VbfQHDcdbmft01TG6fwgfeaV+UewNDGlnaIgkrFnZxKpOO2NqB0yMFjkX5jWLt/V+lqSpFIUk4tsMlK1JfrkvwNHs2TNqpG+TMu+pbglNQrt1yJRj7JVIsg9MAdCGOSOkQK04mb7dEdyRINKUUDSlfgrxJUu4vvkPP4Fz8UorkxjhiMBtcaw7tmXGHLk3VmnEsEMe2NKd9dA4meW0hF8jyAEY2XY67q8n3Jf8b53irGFqclGhK9OC+NaYnJ2k8r4TdOFSBobBS0mrEwfSu62vB6F1fB6Us8H6z4B1d5XS9KFs9lItcyJdLykzQMqyNx9GjcANZfkKDjh+UwqStQ668h9IXFvxd610PTz0wZGneW6hlI/ySjgrzzDTh7a5KLrdJJVhBixnLgH69zHIv/7L2KkamXa1qTngnt53F6S7rSJqPomeNzlFqSz7ktTxIOWISPsRnSAusdLd2TSkfmnboKoTUWFrlUhDcylGqWf32rzLOFPw1xoFfI4iOd4mlgCNsrHDBLgS3sCMslB3uYzP1kTh8/Akzz3IUiGWsRnA4c6ve43QO0FSxXPLzwKqYxCK5F/NFsHvrNOk97lga3p8YiUdtuHrJ3adONwuoo7oF5eJmGViXs5A0kD5mnM6An8OXAeeLPPbF0I0W+zBaLbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJZFLPw6QoBr20U7OuKimgbUWCfvm2h0Ud6GRlerSjo2aeh6iRjpp0gnarvZAxqnUxg+fMOmq1iyJp5h46oI7Q2Mzt2TwSkV12hZt44fmOFPCS4MAJ7YFQbA/hckhBou1ghiqtLdKNh7uNEylPaMOVzud85TDZ3OSTwB4/TlZ0DvzDHgmDqJ0Ti9lm5Pfub4v0M+wIuHWPJ7U/7VeJZjSM0WJrGSMgd8yyrYZPODKnUMdlBU840fU/MTf6kwzrJp76ELo4DyLi5ygf0cCnAjmwoaw5JP/06wo9BN3MIMrz19hk60Gyh8WLQKf/rCA5JtW9WuP/7T22PtweZg6KhVH2yGF1fN5I7lOt6nOdqnC1WzpyrOdHxlAXURwBsJ8n/VzqHpKbvHL/u02/vWE3/ZMBzWVDVUhvduMDc+mUWNla714OEKhjmuUupmLFUwE4PZN2b2QTpaMP2Rbc2Y9yJ5kvgFDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63QVm3PMzD+5K8cuH87ukq3z8CnCLWojQtznryh2CGt5HfbjwXadWPEYkl1852vFH8FmLMemFgerOHtiyssMRD6U0cqQLW8HNG0owznBcI2agRUlKmUozGyLyvDVtLwEloPUUptQEGFZlF2akUvBDYW0H9TfZ9rEz7qLmzsHUrDILwU/HbDi5xvuCr1dp89iz60KnGvVDSFA7bQOGz7PAr9GS/aSuIdMjO0Uo6uY4khu+SgCEqDDbIUW6SjPNL0x1iMGN6mQKNxih+47YA0DnHOkayA9IkawRzlDtegM6faK5Q092tR3PKsTGgStoMPiBo3PYwFEORCEM/u4XEqmc+t1Iw6MQLz92BndVLzQUnCyiOqHxaE4Lzkqh9tNKEt9qWoVnQhcWEUsaLSoSjFrrZqRhhTiwp0KjSbndv8v69zmrerJVw2TXPvze527EezlfheBiXjqe70JJpPtqBi0n34szoYmH6axKI56Nr9dmbrwDb6Pzp54JfZyNFP53puRZz0CzyEu+Fmm/tg9DBeBiiLAmxPmdm/YYPSfe15c8Nb3dg9f48CG9q64vmweVUmEHoTC8xeq5hYd0EOUtit0cYS7MfejLWTnBfhcfr8crFW+hxtPBRONE7c+1M4NbA4J4TwkA7XP2CnspEkFt+GR4jKqPpxqj39g4HJLa7d9QgXNR1YXFKFNo3S9MDokAhwvICORmCKY88rariCEAsI9+1ZHkBTLywEq5HzmViHScAIekC+FODsm1arsYvtU0iOKRGMxMMChPUj81QtySEDr6wUaQYRC7qIiT7ZLt2VuRN/eHYfR8xXxNXj1ewRrTQZcL9twqOfZHhBa6E07/vcRUYpjheokSuRS9BM4qlclw66ESa9gqc+KUf/1+IOPrL2ckgfLPKmVy+TKtSLUAO/oS4bjWVp0I/kBf6JUYaR4ogcoHHLZ494saDa+3LgO8VO/c3nQAjljgTAzrMRgK+ZU+QrgEUMs/JhQUgLRsDsK4Eh7Nzq3J5MawcABw6B8pxQUEjACotlu1BJywl1StfGe/qA4IXhS7L2lX1xwtr1kMnhEL4kfTAtmLYTKXzIo+vsku5ZObAs528lwUItqRGLrbHsGYxHz6Enz/5tLRCSXIgECqwFK8Tk70OSjlKcbtUcz8ktbPXc37YaJYC+qPQZDkatWEQUZwe6Y9KjkQ5MbTLOX00tGmKvjKhR8zzX4Y4H2YWcH5J4hssG16Fo1j0xIFekXo8CTa9iJ4MhNj5asrFGXCgAedAhR2lgljLFvfXcYXgWF5C7NiDCmeCcnnOVi0LPKjfMjydvJjtQVPTaavXJS0dnFTm2Vt+oUjngzBgLVsHSSC7MV+DmGMCfBe45RNIexI9PZlA8uVCctS8ijt9YZUl+jssanpBs0tHtRUGPwdch3pwwD4D6sr6GEM/rbamgl2mU0I/IElhKjzJc4ss44Hi7byBEBmv8pC4XJoBIn0+nl15x2AdubsZq5lHwkMJOJAKdF40vxsWCCM6LtaG4lipjMwugS3feDSNgKlpHHpfIe+Bc64wYbBVSmHOuM9QVh+uvN0cBx6COnXGdplIhrOALJNCq2imkp9SYdcSjSWC2KqxlHZZqxKvBhRb2/fIu1o+zLeIzNBPfWS4J4FYWqu1Us+JS4Taeh0p/FU0fkjc5Kywj8RccELmnD2NggCF9hBSstdURCx/W2+qPZkJFTB4Vu0lxo8tS6MTkMC0DdOEAQyzi5XuGwtwVt2t2kL00Ab6RXlXF3KGFdYwJJibqoxs/jUjD/tUHEsNBhXkZackJS+enVBu2FaRG4rujB+WZt4ZObZ01+paeXv/fT4TnLnAESsY3BC2Rvgir1T0PNFcRnqd57lka6fohCNOkhO8lBy+dE8OwTkDG2l8bBCq6gwngPPhRgkJ394O7i2N4bHYlXVnmKQeAyaoI2j28b9EsZpgLHjaYO/7y1ivwcMegJ73lcLQI2MBuM+WZjV2QKEY4tYK6XNQA5yZF4HNiXmyBNiygw75FJVDX0BbBpMI0Kem8OoZL9KpD2r0bsYIZXfjSNgN/z6YknDtZtgatAW+fJhqNJBEjri4Q1lw5F/gyFBHR/AGGvP7qgOeMrJIR/qbOyrV0MGrylTtfof3JDgb5TsFuZ9IvXs2pw6Y+tGoxn2L33ynaEvdHl2zfr5PGR1jnqM8OnGzsj1/PI0I3LbJBBl9m9komEBL5Pvno1FJjJOLDhSzvuZhnlQp4752FR1pkjKlf6f0H5vU334riTCx1y0xOLrLy4J+zUf94UxbbNF4vu+SpaJVWaQqZUaeg3N4CqJgIwCmJyUacMyOeFfTypbKjG6RuPlkbUiEibAzVl5vScG6PgKBqfO8J4epdZd27oIi7ge4xNAgFHxbenKh22I8b2EoaOQosZf5roTXJM0k3tDcVySx08j1JWxLrTyhDYWBoisBmqZudE9GnnDtqF3Q8+pLZvLJHOdIePg1ZKVBwAd7ldAiGXTIyTADhbcAUqovgr+51O41z6CCISIDZDNv6h0ZB31dEYpTr2BWbp6ymwBWQyScTg1hHNx4tEm2RB49KOMcgFZDJDowU9+umRdpfEz5ZzdnPLdtsvyEPuD17RMQDvjaTZduuJuEo7kNugeDv145s1ETtCdojhzbLJkf7bILhCiegs727uknquTjRZiYHY4nVIfHp8SyX96+X0BDHb9H08Hy1yNvMdfAKm30ljY46gnyzUmrLghabYhBK8r+WI/axFmQJWlaA8JPb5SMtV43xxo7Bvfuzt5KJHwXgLfNlggzyiN3TCqU7kf2CF7JSUExPzYNq4fTFXaSvq2JqG+gPztXnV2yfCfuiiIhMRuNmOwdf5C7n1zsmcZ00QIvsRS67ySMWf/v6+ObF5FsrE0qZzLR3zeR4rIKVphAVR8SSnAcHJxyD5aJgg+GEvEdvugo8wsv7cD25iyO2rWp8iCjWSMDdktUgyi5V+pchrZCf4epKMzDsSxWqMGXnD4ZtUSOg2fe1wsttv24aUsrGMDCAOu+cItx7TKlEjEJ3mQwQWOfvs5qgSuarFeLlrAXLugq41qhrwPqShidN/9whv/ww8sgbUshFTUZONGkod9hMTyyw+qOLwOIe1uyGtH8IePSXh9Xd+pKEQjuFU+Eg4sMsLD1KGanLmMZ8pVNwDBiAkEDPlKzj36JlH964uwtZAXbGkeABRFqZhXx1QJtHE85YX+WRyR0/lIxX24sKU3nBAZ6OtYX0YjmG1Nk9ygAupKgn6U1nSf6JzAXW4qHY886z7Oce1GEX9DAbEK2B7jnme+JHysULuhc7k8KLev0QSu6QSWarQ3DF0nFD1dEq4RoD/eiijHPROiWO+VymKOVD24c/9pyq56tqIPVhKot522K5gceu/IGOLt8Xy/TZhlwA74zJRMqaRvNDdUSArz5zh/1o7whBPzYGTgS9s6fJOX1K2CWXPFzWZGRgjamxyVIiogUF3SQuE6/Cyj3YcRzzFj3xLefJh0Zl7hUONEfEDcpSjkSAUgQ2VxwOLefX7sWfUod7RvWR9OJ1qTk9QtF+/mB/vbs/4yDhEHfIEYthSgFLfAotwKMF6Me7vBgmHvz1DeVhgFtQFeJWcWvh/P2PhXkZHJ51DThoxX+6vGMQqhTrJVgA5m3sjsmlMPQ/gQtSrrHtdobjFf5wBptFYRfjagnP2uo6IUcHbbbx7t0Khe8Nj+ORdbBjH1FrYvPHJKaxSBpJp5eYyY1oJDcR7ihzoqGyOyUoJMxMT80MemncOpOtb+PY+MmXgMlrd3gRnDksGCTM5NJ2Npf7vKE/IEewSu/6lUBw/cIvUYj5wAaJgzyoqfDoSdUbbxlxeh3drCpySBqhAr0QvxEHHkHWTwvk0+rch/1uxLEmP/0nw+wYGICzW++tdIzlUHxgUtIGvFFalht+QSPhRCQbC4rOTnbQNfKYroC8Ufwq9dHxUP3vjVyjAeMyhP3yEWzPIDQhUmMuRCK9SwQpGrnLNasXf0qEw9UnBlYN+Xigk0igB2M8b3IDPXxx8SD4b5kWFPbVfa468iNfSIR2sjO0OYzcknbvFpCkZQTjNbXo+Acmroicn8FcKi5gBtQ++9Y+IjBqk7H0ubdMmZPJahpFAMM2VQdOKa6/1YK5+1OScuq+pvTGlpQ7f6DMq3X7jxSLR2dTOgUZ2Y4j6I1IDC7VoPZay85I2LA4T0l6IbGwAUgA9dwvbTrGeexb4uUfaFz8dOmIRK0HwyCWxtmtHb25E3uR+E/kIGeCDCPkyIxf2cjih2NZFDwckPRa7P2CyX0UqquGzp/mu7AFGb4gftS2szpePr3Cpod+0dufbr2ut3i4jpuW2dTwBOiJrmrQBAityshI/VrEzPCkPTO4Z/9hBzs+exIX6FYmBQhssdtVot+ooER0qjq0OMlElnyXs8AQlGwBzC+ArPHj2WLMBq0CoUtaI5GkKOhVIbl3oteCTTKvgXDXJAONV+teovPKHYcBiJdb0wORnsnqgUTiP2PFt8Pqhc4DS3V8IU8NHqlmAcRXz4KTyWssE4LyQyO/HDDAZ/Buy2p91oXRdqVVc2pdcd0ROxOsV061GDTIkF7uOrDlggnPNuuKarfUW4YtaO+mQy6VLRFDc9LcYtxhIBBuPPp2WisUfZf0Cptcp7laGqPq8AxsKsBTbB04pTwY9ua/FvzrWvhK7f75R8oLX3IOzCuiDIUByrxZmgRjDIscyUoJ6wghfZm9g/UoQa1/d/WEMqs3XaVdJ9OcypI+QvRv1Sp9C6djqw5mwqCpy8Ot/VAkmO89AGlGLEW1Fjk5v2/g3IqtT9J7nOv27zOLEl4ck+imloxcsgx4glX4mS9mo/3wS1L8/SZOLjBRob76PUjFCHx4rxZx2V8wJk3x4GWsIl076L/2/WNXStksptDuxWlFcygPufer5M4X4v/xEmfBaayj/Qo0/DWb1w+PisLD5aqlW/UZXDK7Lze5JMClrhWuY5bNBlRW9G5QVTf+cKO2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYVtQOtvMzh5knMgLlsGwKJ0vrWWXKNN3aYGUbBBdQ6x++c/hl89gldYBMJGd8MN54F/tWJEL4L8KnZ+mFM4sqnu9p6rth9qa9UWS/V3JncPQQ+Pxe0GuRLPTHwxTLr3ObX5pYl6zuyQrndU89lburpH3XuW3MzzoCcBAOXsVg9yLD8IahuRV3FF8jqP9MKntG88ZxYDAXm3bQ0GBF8loKyk/8L/8mtuPZL6ZsnSygvbpdqMcl1MUii1Po/MK8vs9G+GPPHj5zGuXQ3SIJXymI1C/iGhuQ6ZiyZ94ykQ5YkIZsUcCZf1R2AEbyQad2mjZej4lbaVxfaIfc40oAFwJcscWOgbFXqznl/U7L01SYHkS3KYgM8J/1xmJp/4pDymzro/l4PPdDNpD78X6szxG7sQPF7s8oNC/0uvcemGEj6oNKKdiBLx8U1wYFjOl+zXebnwrpLlktFWoXW0lIUo5tXYdsm2M+DDRncVm/i5VLXqF6WT37VpOHE9asFPVqzdtbhYZI+plI8qx/RIups2nLOXzNa5cWN9ngelbg8eqicUCT8FIGGKO64zSM167UHKmHy0nTvZM4RXzT83ZmP7KRNYfXoYx2K5zYt5JGSp1OyTgXoxAnJ9AzSIQdwTVC+Af0qUaC/Fpyi4j7QwJDYbh0SwZi3ef4xeCC5m1CRXCUAeerC5a8SFP+U/YTi1+Q7GxqTyVFq21wkb4Ds6UXi32wSjsmXaN/4/C4y5yL4uA8R72ribpTAJIGgzSRn/nZt0lWDeNchCYfrt3aF0DqsjvGI3a7O3ww8sVGPacszIKsyBth31r9uBhMlFVpJ7lqlWRtCZBBwUfUcJXGeZqa29rCnqicvkM04RnasUFeQxsgJ3i0t4uYTMoh1x8L3WQFqQF8S+EjohPIGRlIGbAp2bpB01XWa18ws6a0kESdaX2YXnpCWdvrGiKSYi6njKCp9RuuFxXwwDb5u+4POHvguRrelqwmQKqZppDoPV1spO87v8jfqGbrHhpsQgMG7qTfZcSxxa9gpEeTnpH8Yjxx/DVOGsw1ooUfdk+Y8VR7m/6ar0VrbEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJtsKDqFphWpTqldhHUjlErMZiWhkhpzXyqIasFeaE8qVsPDBl4fb6TdvcYE263Op/SqYKx+EdyhOEb5NtZJ+TqecMuUdD6GP3bcrh4AiZ026gUEJ5o2Fl1m6jlfrYkJYB4bGaz77sTHHc0LWKcY+Ep2iOB304MsUA3yo8UIwQo5TJmf2+myqyZmdVKNjPRs5nYZEOIwOFm2+7xWpawVNwIIrv/80rWmgWGP9eHJcCvt9DeA44FRZuWjjSKRxoDeP6Vxuh/cQq6xMKtfBcE5jrNKQBEBTeCQVjUQ/ZEGx/QbSiVknr5+qD8SKKH1dgy5WLz612+8mfHkjW/xrj+K+kGgRuxZljrZvajanEwVRjcTl7K3kr8SjsW+yYrNfJVKqLF5T5j3nLARA3OIZRwlFW/9LmdBWD01XQGPVj4QPNuZyZ399PTZKyHcaXxgk8cBlkfKlpdB+mkEl95xZeG7CPzWHuTmw3gOAYNiPw9xGEhK922ImNULC0GQyyetroT/jTn5XwEOEpMYuIfRCeGmPVS+ulpWA0RBz9g9pVPZWkqeMwvaBE1kbr6fkMZAGhFtJDp+fGXuRDlhU3kMQxswBwuwuwc7Kb+Nrp80fASIuzihSSl/LeypPzelRV+g6RMjOIV4ampIS+JRz2vbvV+lT/jg+I7f7DwbJyFiMmoDkOU6fwWCRgYs6/E8Z3mwqLIlaYTDEpQ3x6aRVD49sAz0EupO00DAfG0ja2Sif3HlTPGfhK32mwW8/xfZZK0+lC8clBRB49KOMcgFZDJDowU9+umRdpfEz5ZzdnPLdtsvyEPuD/e3hkTmXSrWmtM/NxdOIMle2eNKTp3fmczT6igTy/44NrdgSLA/ROeUzoo+eCY/UcLf+wpjGwFvC9YmdDkcpBeHYJC/9ngXviJpkkHu149DtVkA11f9AnUS7n458ica/5pYl6zuyQrndU89lburpH3XuW3MzzoCcBAOXsVg9yLPVgbK5jOKMbiFD5oOpoR3vjiBcbmTsyStHdGHi3eEyGybQBLK1lVfpQafW8sLsR/B+KLPb5AAG1TTCPVt44t+cIg0QUOy3spZjhWkNi+8j3W5vBUiOlxIZHvC6nHVBuAn6l+83RRrEjK9xjVx+yRAm5jNsxJMTfsXOX4WZvOpZV43OGP6+thBIlKCvTOaYg6Q39306DTKuW0OFuLwn+0YYzShLCh+imqaYi4eDNsnbT3+O2bh0nVgbDVMMX/sXl8FpO/llxLYLu6sS4SJxW20be7gin+8ryLQcRihcfjAUW7NhJiyrPe+EbOlFnoQxZFt518CmC2u/jwvxVOTIHLsAUcTJ+Fo1+Nrpn9leZJwoQUSconR/e0i1GAnxoA5A29t+uvIsV9+t+PIVFtYEhCXNxlmKSJ6q/BsExeirUIAN2z18aXcsXtvvMvuQ/iaDE0OgmBp+h57d6UjF5tCX0QitAfKUkKj+5uIMFucL+tiRPgV7lZ1IRgaHM/bySqOugf/k+ONkqbRRW388S5FmRdOW8ScL7YJoqOOXsl4cvd/EDtsR8F0S+jXh3uATwg0K+74U8zZKybsYmQEDtYH3fOUkp6NiSs6NXLhReUg1hDIKB1+R+H6ZE+LXdeEf8+trkmAw3DUvwZHklMfYv28ni1Dx7z94X/WQ+dKUBXmLotG6fkDupnkKr8t0dOsjWe1mbvcUx/gspPu/td8bHDwZ17jrBzQuOSI7z7wBqFyu7MSByjKHsudbmxMSD1cEn/MVner4SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekjsmod0Co+0QzU6up3QI99vWze9KpTq1ZNYjkqNUn9dEhSS8cD3DlQN74rXjHZQu2ofcd2it6czWmCkAIPUANbYMJJVHkbfmmDv+vEjJWOzaquu7JyOGsBWGuLnZhDbc6TnI2CjDI7mHm5kizTQju7pkeNSTPomCIn0fl9cOX7fcMGiqLUHzS2FB8AZOBsPCehC7Ov49eKn5PKfnMkrcOj80IruPH+nmg/v196i7XGFy3PXdPpt1oWuc6Qf/OVfrhv33gkVS+c/LECcRLg8XKfOh0/glgXJkWj6Xo9fFDDsbaIul6NPV5K6pNEJprJJlBKqIBZ6SM8LbMbpe3BDXvZUP2zDMUCCF+lm8WFB+ixwM8RAqtCYvjrfWw5QzUEGgh2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYUt8ItfkDYOCMSG/KZUpL8H4SrzQA86zifDyyyW4LzJ7x0xQPfGLVZ/1e777jSJPvycl43CIc9Zm0RF57gSTNBigkmOQRiAPlrq8Uv1a7k/ierZZhI5QmEBg7MJkoaP/O1hWhq/vLpHx3h2OcoR9Lxa+eI9esfuf36bDCkI5Wcf1WUYZNWBGJ/7lC7DknjjylwyHe3gqFYch6d03ZX3Lcag2AcXGKh8SYP2b8ppeVEuSEQI00wm6yF+l1B8Ykx/slOXDnM5wU/59k2JhF0r7t9cc4DO7xLsLvjryL+YfVqsKtrDe16uHEBCDkmNrDdKj2Wc9LikE4/hM2UmRZmGkizka2q5tuGb+7VF/5SfMdFM9txlt4SC6/kDC+P60+Gf/6u2xHwXRL6NeHe4BPCDQr7vhTzNkrJuxiZAQO1gfd85SXQYAvd+qvZKkTtWiRciqhG4Bt4AGLTsBR1IyyZIROgsipc2yID+hQsiCN4UQFA22be2k08XfIMEPWgdwCKEQslEF1aC7t62KmTYAm1kU5U90Jc+5xNtBA7KKsSFeavoZho+iTsfKlM/NVGRI5dHg9I914pCNHpj9HYslTzJcRfE+9D2g6lpZ6OkcqvL9kZls1Ez2LDjCI4BJnb4Q30z1MUEfgtb+piE4goVtbJ49pNYtoS/W1sbX2nTcLgUFDf+AQ5DFwuFLSz+1RjshvGFyKnyyR9dxfXU2cYZk8lMK9a0gbvqWpeZuRfVa6AhXESkH0Cg6eSQCPUfAWSybFZZFgXxIv5L4CT11SO76WyjduP46+HIxqefP9UzYD1rSXOIfxB1VgBxn6hGhlijjzeXshdYiJk8/2asBTH5rjUGBUo91gSSxKqRH+TWyr7Tk1MAv3rT/P2oU3AK9v4glPNyCQRG32RwWuSx/RvJpqzl78O/ot35ViPezIU1XFHaSbpS258hotj6Qc0OUqLp1bS6LXd+N0AwVSYpxt9t8Wb+s/47TNLZqY5BV9MbjmJWPZLLsggi/YWJLOYvzBvJj5hPcybUAmo7BpICwWXByyW44k2JeMV++4XqsyZ1Ts3FoV9eoRaHXSYAn7YDzgesnVTmUr9hQ8rXmdFGfenlL/G4IWH7aWLoteE0A7BSj1dZQt/0HUku89FTbg2s2CnwV2mUEgdgyByQBbgSkYuiAAyNwexw9hK9076vo/8BFik6HEomHo56lnrXZtoHutVCMVenF5+JY2d/edDZlxkoiFrO54osRB49KOMcgFZDJDowU9+umRdpfEz5ZzdnPLdtsvyEPuDaTc8OgYRyA++SvV9tPwx1wF2QZNb/URzUe5L0cwZn96l5Tzn1OrtA8Aw/tzqOZMPAfojnynr/26vA+byKKh0TjXMwI6BohaorOoKzht4Bl3grUnZ4qnBCZNhSaB2/wpfZBr5TwoXtswcH829TVxnzJO8nN6uLkr2+ehxT+9wK6mWBQGlodJbDuOnREPV3tdRMNiaYZ57Bz7JraqYSzBDafnQM+eRJMhx3hmoFMDFHZ1JaGjuB6P2Ap5wQza05Hk5HUlhNpja+m8UwzvLQYSkTvWRCpGXTpdbe+VuSiWrwbOwK0Keu9XJKYSzHbld2bBFMPDNQE2ch2dX2oPoMhecfe4LxxkU+stOgbCeIm1sSQRMj3LiUX5O4eri2JVFu1WUTvMYqSmLW4a0yePzcWxoEIu8N6T+MdJO2Yvt8sn51alCaul2viyz8vVB3QNvJppVCJEhxZe/66eXqoDDGM3UoRv4HLbZeRV9a0w21fZsxjNF+6DBlYB5DHy+nj024wvx8mdtTjDwNDWU+jYXHQ4NII4NGDUJcQv9E4h8q/ri+JkiAl27NAqqqYuNbJFE41nw7hdHr3bP+l+WU8RH0NDiGeOfLNioMNeiPAOAUrX53NbEw54WHMsa1BT+ADOMK7hb+Om7278pKYJ+pXVK2b6sPOAz172Hk0/pDPuYHkO5Gws3GH6Ho8ZqysByCZe6JrPu+dWRRH1/e/TsU1sEQv19E7yL1/CPg4XGJxpla/DkrSFLnU0mflJCBmRn0Kgs958slEGzRIsVr7yasGz+bkiyLKGm3oCMPY8g1Y9Dx4cTjVqnnPMjZACiWrdLYU+WxasxKiE6xWoKQegEgJgnPTlZlStlroHCrYpUF0Fn6ywHeuN3z8Hrv/AtHrjFyvDmRnNcKTxd6RkcfsGqJ/+d4qObekQvl7reOaldAXkTaeeipGXSqTzjJeEYKSNSU4td6kA7rKNymk7rlGNzwd7MWFkNTO4s8SpuXPcsrI8aHtRIfkzH6bWub3PdT/v1QlzAHTZcIJkqlXRX8BmmASIKrEwiqfKWWMs84yVwig2lZgU/10FZ7u1WHVp2/QxwrcoVKHzSLZLBBbxg6vVM8FRNXYK1hn9Vm74jUlQVPIdqT4Cehr1z1/PeJF1+eMhDWE4b/JZaqR+9klTg5/juPGdTGUSHp1kB+2d7IFWCdPhzb9BG+MEQePSjjHIBWQyQ6MFPfrpkXaXxM+Wc3Zzy3bbL8hD7gI+b/kIYTaSVtXquWaLK9p658uBorK8I/jO7uw/6+eFZhVGWaxykMyMoJkkuyijadZUGq555yoPZ+y4ss/yqEA1vyYmTKLgcj3bFIM/lHEcsTjcqgLiWcnqyFZpFg1jIMa2aL28MbihGf3pJyaHJz5+65oINs6Ivr+jn7iGC+cTquLuFRcLKLetgVCVNUy2/hiHWzl+VIsvd84jQt13hHMYQ0qLgMDxS9q++inRHIbmz6eQydAKCSFNkMJ2DSvTqIRsr64ntBmzqwIJFz3fSkXC44OXqf2wwwHg/+RWD4TOOR0mAiK8uYfrmEQAWacztxnp8U95GkvFFEDURjkVUx1W6rvXISOfc2LIRMImxwlgHyrKopWqCQn7pjZvLRj9rhnT5OoiF19GWBGt+ys4UZHwb+sVfCOagRCgWGTUiy1UEJNwN/R1VQlA6U/WLXy4pp8AqYpoW6D2oevb3k8/sAnb4SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekDkCRkWT8+kjUTMxk2SNbifbl1snfytV+3gdDIOSW5Aznot6VIUQonSiau2zzQPIp6QRdfkpKYC6XAhPj70xKessUGxdWXjEDfc7h18e9I+pAsBXLdrStwbmqrtouClXJHNnIm6C5DLjSDw0ZiA94E+w4pHxrALf0xXTeJuTI2iboNqtDV4ZfOjBCdwGA4mKBAVYOfNTGELB+7aVStxZAd94GikLsi8hneL9ZBg20b2r/3LFn+kG3Vjk6mWyZdZt1Rfetcoz8wVk2ncEIm3gVx7dJueolPz9drOjxjZtlZFS0JPl0t8W61/S23sYBv3HL8XJRdnoP9z0VyPgHf+i591mNfDLC/W4MCppcPl1NmhATzCEu+mtgdcXvgS8TGNEnD+gNYrci8p2DYGyuG0xfQ99gsEMfJ9DHv2UC3aoUzlI/U/DLRBYpw96VtkJ1TbKXY1E47Kff8QGrlSd1/TzVPKl9vgkcUFUdVf9fjBE43QYZQ4WPkNVYXYWup1cuO660IOWISPsRnSAusdLd2TSkfmnboKoTUWFrlUhDcylGqWdcPqpvbhSyFlPBZh52xC27pnuUjflLVmSVGFiYi6eJfMqU5SMRjm5eNa+dRIGsfJE0yXl2R3acTMYx6lO7OLt5KaM6wwXSHG1BB+S8akMW4L1EBTNToQO1m+iUraeHrOkLi2IPomWdtW2qADQ3qjSAMyJ0sjiloMbsgJoBxODo9V1QCLT7MwkGIhy8nTUpo+NYah4NXvyBY95M4iRb3axvxEZ5of39TEr/uej5wQHxAeuzdJcHkemMGv6dFRSxnVVSGkDUIaRNeS6JJRtphZjrMTRGkKm/ZCtEoFC0w2OaqJFWxcc45ayN/y2rFwWodcR3dQd7CSdhtfjRU/M7bu832Tglwam3kmEr4AbYO6nwI6ZVVkuwJH00nCACIkpv4BabPq0p/pQiVdT/dW41C9vut8d1d5ffl7XjUt90MPF76USOWV6UWvsTVMZPabxVJ7jqG1uzaVAzGG2dCJcmMsWfctzQr/FS8Dr96qXZjMF26jmHJOkEnlGUf0gDxYb1ojaDZGAx//tbCuOho6Iwj322z+IzT3KwN6co2IxHzdVYUj4b0Juj5TjzIYrnFjGL+fJRTS1E3HjpIIpS1R9G6m5f8dYbTgrB3kjFzLjrJMe4AOQH3WbVAngv0kpGHZPTxl0FqM4vjdFMU83g1FupTu63UdzbZEpGhFYLiegto37/m6XbgEmKDQYcM4JZstm8N36d02kvnHw2y0XzswhRmiazWFGm4UtpGa0UXUjzucFXYLCpKKfrgKbySd6djXcjGIDRkTGgTdZbC4vMARXOn+Ax/8jpNZFiMM4QXQVtBTln0X5nUUUAxj0NZunone1OUU8sVNwItGlJr0jazXmjB4tDZisNyrXrUpwE0m9Ox3rpMoqfkEqwdjB5ss1VQn1Zxs9vOlx9rEQ0jI2g+RsHVLn2lK44yOnpuy3cEn2hjS9yUhFg0YfTQRi6PeWK15R33DkN/dlUW9ETCZBGT7yznSGRrVZcXI3gVLfXOK2BPBsgmlcmQ6Q19Yr9Gd914UZHqHCEXB9GwFD3jmpbC6OAUj9JKnmkHcDYFhxVV6/ajvPIJcX06IKcuhbUQZOyKkivTqFICWIhLXHb14FgDnZyWGBYnYh7zURTprmvQzYYGRGOr0PEBsiknWOkSBcjPi4qCh8DcQDW6IU8V6+vUwDuTLVghoJe/L51I4DnAWaTTdZ83tJCM94g+J4DMycS6ZPYOuFSOUNA7YAGpJEu2Q6mPHqZRj8Ea1BEGBWcNPhaYk5jr9O0En6DBGyhOZBxOpE9SxQK/NcVQN1tCa9nTBsspxCuPHogE1VgJoCkRiGwQxYJ6pMYrhGur8MRpXzANW3B05RDJrSBrGdppnIB4TP43X4SMNqqQX6HlSjgOMt4Tf/BD5C7s5OOnUWBOKZlI7KIrPHPRVq3F/0aUy3UUl35ZlatBKHac3VQpYyW0BOEeeq8sCiTuRluDmdudogrO0vZZGGeoz/qkSKkqU28HQbXskWDb44ygsghX9lkP+ETRT9Kl1+Q6ZAh7jKH2/mIGG82bNXmWW63Bb30RojVGiiaH+aVWu18pe9aH384BA72E/TX4wEyM+QghzJqPKjaQB2FxBgU+dKpR3p6fSr4UpFocVYB0Mxel4jqPl1E1IogNgnbpqRcBjtfB8ucl/OKAW8qrFEqBRPaXfhALFa4OSbWR0odIjI/+v6h8/8umStdK4Lrb6Z6SZLXdhdiTWKdQ+pOayPd34abzOV7IodF9SPeGci4g+dV2Zr9KmTj1wyHwPW/QSJ6XN5GILDqA2ScB/NVQQXZmYqgHtcEVjVmQU+ZE4BEoU60+Z97q/9kZGzoa0yUFGFGEkM8n/8gXIavw9YBECHUcLwxn3R8B+UvSKE8JvGj7ySrjT61FJJF8jobN21qS3ruTTo+3IRlEFHjwDTMCVWb5mbl4ihYDLZcGE5j7CR6Qzp8inNoNup1QvHrXZ7/zOiAeMKhJN90fzqGuLXxOOzKmfBEc4Txf3qWx9LUY7AOuhE5gDPwWKwnz5mcR8Wo5+L8Jw1QZEM+2ddIrzqqpqJcBy/vORTQgPiWqm3mRVZkwHoiYuKF5yah8DkTRQqoxIElLm13sbfNTDP6pkNp9Kpv9w6MY6GjC1mfqMLdYaYhDOrl9OKyceLxwXVPWME8bPaebJlxqs57WpObQobYJind1/PVYm3gPxUMN39B5W728+Kizk2aPcsPuJZDWmRgXcvjaQk4gbgTMtcDKonk5KXgC3QriYc7SYW4nl3WXiSmvKqDGrtBMOfmWxX7gedOk1PqLCIhcwxI5LeKRY8wSo1yDlbNQWWHS6f2brSBmyX2O0f/GVVHSGATdSTFvgWzrr4SOiE8gZGUgZsCnZukHTVdZrXzCzprSQRJ1pfZheekJInDWJ2+FLpTGVnfF9Np2zfnwRMl0Csk53cLdcNKseVHC4rzQHT71oXjiAnGupjM4b5R337RCbVwQJe1b3mB5Xt+4AkosxBowd2X3eDlbBgv1R9+jQr6yd1my6+U3u7EoaTeFBWTVgo8riiIKfI94dGXD4oVhXiWBHGeLpPK093Nv0tAp/Ta9Uiu6YUaE1L/Tr6QJ5Iqeg+wg7iE9wEj35idnsSEb/8zAlVLOL7zMXIX6wnohUC0Q8z0fCMVICFTj7pnSCEvIun6CbYrqXy5/PEEhRDgQyH4aBoxu7m6vD+ZpkzWeQo293QaMd+gYW5p2nN5Ms58+iZMkSnt4U8wUc0v7hgXln0GUeVqn78bIKMXp8TI9B8znD+Y48CAi4qg4bMp/Ll94wzRAQ1vyPtu23aZXa8tZos6XqRpuBRxao1WUUp3MjWnbfDgYgm6TTt3itoaAZr0jzfCNiLn5sZagQscs161H1O7/476cSZ0YjRivmB/f+jJ1zlg7Qfk7lIGmLunXmerdTsbJZK57yDxVmcxnXIZdrMWI+X92RB2dCeO+RVCGIMyyOHJ/fxp8Pd0r229V0f/LeAFJv7Byjt7WoNVxdMkkbXsPVtJH7qOD7KwvrjWHQKijXLwG7c3jyILUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrchYVjYtZoSs3DbhogNgfjPXDwjJzu2ArrOMoQcU1YFltYtjItjZtb1/1Gn7RnVD0I+1KgG4q2LMLzb66yfnOwTY42PHFudKhnzLakEqTnJpY25QsP+Bvy6jnGOFug1LnAAAcgqFkXXAPTIlNshZUbJPuBT5EZY6/a9hXS+lK6THtHqVsZTxO3RXQSPUqGWoFHNnnYpMJX0yK0f/B6o7pqYF/IDv6QFSP0EM9GPMf7gKZ8PrZ2rIRySdZ/bioXlPl3nAcURk0k3ix7QWce/XQsPrB49lRpnA1z6OErfP+jBo9YyIu8hskCts0WD+HHLrNRYha11NJXvRHUy9sJ/t5AzeeMmA3DQ2V/E0WLaG+lz5Xc9yuwQjdRLZy+K6x3JvOTvWXns5BMMiI/ttUtYi4fV5Or2JVbXrX1b108eGhw327bEfBdEvo14d7gE8INCvu+FPM2Ssm7GJkBA7WB93zlJCYf+88Cbc+W8+Ju+gXfYLqyatC25fst2TC9vN3j7pbfit4cyNTjSQK3vmx9K96LkR7QaSrzNhEBO9zZ8DtdbbFKuUqPvQJIOBAaVKyrH5jh93v/j5ar5fjYmL9XjQ3xDLTAcpbdmrBjl7hlZFyzLKAjUcBcATL0HsCoUf6wn5ibQwcW+G4SZFN+FM6rUWL24bufOqmG+nScK7MLUtYeFPjmdAWfSK1EHXKMjIXL21AAF34hFVEZckO/st/Bv0MmQuBq05VGoeAbEpcRjBVv5gvKAo5oKZg7ByWkIxCV9A4UqvIKTNeoVimHBDis5R7u7E3/qwiepDhqkHV/lXnkuF9tLAA+7uDY7J6mcX9II8AqqUSnUEWHodT3vObbqqqWt3KPZbse+9DO1WRqtxdBQAhGnYV+lsNEn8IkrY457L3RYb2tqcGpUtIFrw1QI/2Fc+1CNqH+VkK2BrMNc0J7EaoYmWZVpqhH87n47hgGqBClsYxu6h5H9NxPDurNc6X+H35ZrgwZaPSlx3BBX9g+D829xLlDN0s9I9AWeHzFXqnSTD2/bYCM06TWKs6+FPOLiACmddtmaZJyCksN9pbI/Xf1U4JnaLICBkk+8IJB50BiB8dsB/7rvCDD8q1L/BbiljqzJOpApaAn7JhMDW0Gd0wjz1L39/aLRSNKRt1QlNrAlzJ5riz9oXXdX1TA8CI1iz+QGaLithTZkUEvvbSfNWIOwzN3m91kMq/31QJyaVxflTwpn82O/rfq/FmBSubzQOg6borIMMIFgrQK1hwnrurTA5JnrUhBil/wt0n8SXnW7ee2viD3ofCq+0bnCZuFqG/+zBz00iz+3TAw4Ood62dFiWIcegOQdtzeZzB++QCDqnEleB4EWAp3kyFpR+KMQJQV/NBiTRCzRXH79Mt9tc3PS3jM3iK1gLclU6tePxJNIsrXja/p5S9xmZ43fbmtZv8YzsmDb7JHxcRvhUuB6prJWQunYIRUciuXzXgN3rX1SJY7xQiiRlHAs6aB7BVtjC8yX69yGJARuBhSliwKH9hcIfkKaxI4xE7cqNwDGjz36l9QFXMxLZxiHhn72iRmofEIaVLpooYW8squPBtm25famiYOgt3cwjQmZIaru1eoQS4LQQxoJgYF2YfZgWr8UeJRx/qR8tj0nugR7QLFKaoIvKHumtSPkJHBJaVvWVoFIRTsk2f2ufGqfHuR8remaav/BTwwLVbLmmZWFPNrc00nd5J+y4a1EnOkkXdfs6qYk8rNxxhSLmeNIay2FYfJtz7MlqnswlGL1euG3XJv0nlFELX+VMHHe9vWRBVuago2kczpMQGTChR3TxLYOQeeNwM+O5hmgBOPtyOkxmiqbfDHDnrkfNbnCZTpOUL2JU7fcheRm9B7f0/K+0Krn3lTqdX7h9iDFVg2AicphcNqEeLI11R2TcUVCGCI2T2JpmwwA/f6smMJd+7HpWiuWScUjF8dgSM4RlZZI8SW65mJEi5AekDjwOE+DTzzY3TFKyXud270LFYTwinsIZpZ2M/rDIOBx2TCT+/XgbqI9A7aWu0EVZ7jqzV/xHUb1SPgFEdChw/HuWsCcu+dB2NMdgNrkF6lLVqS0Np0HoWK7hR5KOLI4oQ0cu41c9Xtaj8hnBCZfsVTJH3xdNDir3Yyl9673v4dSsQeO2rVQn9e4ARbkvq+n0D5Q7Yi4Ib6MduEeb6qv6GIVdRzQh+nEpHkk4rRDZDmSodE0RafZWVH7YhenWLq18k8UoE6VlX8M6hya0ypn0sAewn9R1RTbBo45JeJuZK8M8L3J9EVdg00iT8CizlVoWOeNcY46fTN5ruk77EFQ092tR3PKsTGgStoMPiBo3PYwFEORCEM/u4XEqmc+t0YBIP1wrHHH4P7LDBT4DFrr8paR1whTP/3JlGiPgHja2Hl5gapo5+hM1X90OQKuX69s3z14QZXqCK+9F+UBbTzKiZHLLdo0NA/NgBKVQQ/WuXLB7cU6FUasB6xUjqdd6+/DBr9CBIcDFzeRdC3L+b5/MYj537mh4b0FubYNhp4eXGCyH2YIASvDeZ7sgvA9p/P4u5kPUzr54P7QH01fW9fuQ8+KUfHLuGsgufcF5mRUfUUb7cc/TThS87bo5fheiim2GkNxfxVeTOJhprkXNlkwvOcZqFRb+HM3C1OI6yDXlR6aEbcxTv5LYh1OzIUUuDTdhFiwQrC/aTK/NqVrL5dR/wqRZWjySwBC17KK55rVOa17nxaK0uAqKS41EpFVQ6xdFlrHaefZmLQXTi9hjqkdoadbALgNAv5U1FffrAtLEqJlXMh9cI1xKhJi3jObo2cH9/5HB9Um8cQf2UotafbRPFPmd/t8DsDo/cnYHU//wH1bx0ezHjQtRka8D9QSu20ZsaFS/Fi4nbf8maTiBPCUP5iRVediltfPhVgY/Cf4A8tAjk2UL8Bub7PbdMAnAxQ6aTPLBx/4h15JfyERuQK2XzTTBnP11M5ekxCF1ToJUiCB2P35YgwKvl+QjAFYsYQH5YuE1DWL/VOh1KO/wCoFolMXi0ZEJziECRFiSoxGh6ihU8t5By7fMlhcf50NX5+nQRp7Wgc8RnZ2abh0N1vIVGjwhc+9gaYLZZIZFAEjRYd71JGABEi0fnTQE78Veo1n2MTTqltZw9qFjLYog1CLiSatHdcJHxLtqXyKDdrrb3nMM5IZY2m1WkznKlr1zhULx21LyeSblsQGj0J4HvSHWKIKShhe0yiWiiXcoj1SlGFcLAk7qjWkHbE48UAe8gaclpeLIpGynxzlBdvxU2CfhjjzVCqKPUSb1kWcIjB/2mAJVdOPNpwRx9AZQKS6mJCab/LBzrXwsUVYj21W2o8aRYL5g4x8TKeGNEh6gvGhj0XkfnDewfFlMUh0dlmiTlDT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63EgWTi8bdSVi55egRmzPAF5nnm4lCd72CF4lYjinngKRS2NhPeE2FJHSF62Bg8Z88hM0J4M1GA4+plakJQVuQx7rjxTT5f+K8iC/RB0leQU4SCFsKcq4Wo5vYRsCZ1Lmy3YYK04ShBaMqniDosIqyZHzj5qIaicQQM8hdkKG3WSiS/eHi54gNaewYy+bhokIPc/NMQ//SOje2il1ZLXRNcepbfpriri1uKHafFS9YzR74BOVsSrWYyByTZgZ8q5DTYuf4/rJqzkmWyftPk+xDPKriMrJ2PE2ZxYxXU7Izds6l10qKlQ8+RGAxyELceoEiLMGem9VKPPYZCPTc0NWK/s/CEwizXJ1I2MhgAd3bnrtBvlPcOHKj3uaDz9z+6danxSTYW+Eyzc/JFkxAn1C/MSbGbs7bvwEETLidsxKQjJGiISJ9wbSPEH4nL2JUZn3ZovTPtvfi43TZHy32tbG+ftgh0/CnFiI0NIhszNNzeGlj309R2V8UHMt7/h0jt/uosgN07f9z1yQ0iwlv8vlBw00/tYqCBnNV4trHsGTkbYdq5hjIbWrT+3oZbgQtJrVhTlf9kZlmQobcOzX5H5E3OmsdAprdFTreuQl732Snxye273eNcEiLTBgqsDBr2PwuxSuuYit4vivGRcK0kRtkTb7IbmJbOyI9TzoKzAn3NkISu/qvaFQgrskzyA03rrEb/kM9ZDbubbNiyq6YgbJHt8Xod3awqckgaoQK9EL8RBx5B1k8L5NPq3If9bsSxJj/iXLGiiZzIeM4/304VC9ET/OHGrNzb/fqdNvq3/tAzmFZ22XBZKVswFXIrXUvBml8OTJdCHkgPspKdwF61RE9wJLol4D1WzxpS2+X663/gl/6+f87ETewzByLR8T+DoOsj1e18x/nTjXvETxfi/Ldg2UeAb7sApLtIKN0n0fhyRf5M9YeiRD4fDHY5osPtQF+fkkoHCzYTI7zjQgCrVeURcMjBQElA4iWad3p/eb9X3ObQbDjCF98gG4t/Y7GTCsHR8k9GurLV6pNNsQtL0lYsBVWmPYzvte/4d+1hBxEL0nEAbkNy0esa9kXwKuF/85VNDY7Zg7zJC5bDyoiwIhzwpWXviRzZ5zzi+0cZguLtXJb9aA3oY3xan6HFh2oRYmV+dwQjGIPDPcZHJSUqK1q3wGQ3ob1gSqCxxcHhlR5SGf5YZf7jOSws669fGGF8sO4eWNaoArvaazKPlcC+hPU2cK798POdkzkjW1Nb2BFf1GTIBf5+Ty325WCgGjxOteHh77Swbh8P/TAd/UwZvagx0uZaoSOPCLreXvBGReCAR1599TcQUn2rcSnBVocn6l7x+DwMDj4t6CQFWvsvz4T5SOphHHdlvElDaqn28Xa+xMt11e2xS6sGEXInW5e6o4GQ9H2a4K4V9fX7pKcQWPrXroK1uYvs92pskzvQdYUuLYEks20WQwKHlVpOq6eIXezChJIqKqQiqwx1+0O8us8tz/Tkv9FlGFXDN4rMVF4idME+82TFFtfKQfo0H+nxCmug3wy48iitdDrBI1I2LhPsw85eg0zXkb9CyL/Ws7J0m5vtix0FoihGb2cq3GpDIxa4DkOmN6Ln+s/yyNdnVRwUR9Xmru3109W5E8mnrp143DInakskyZqMookiWbg/V2p9vMUFRMhZ2ffiXnTkCNprMf0FbN0v2jZhVXpJEdqQLFFDsIpr7P2BEaQlRrUVMo+nZ8IPTWv/XsvHxaugy54YxptFYRfjagnP2uo6IUcHbbbx7t0Khe8Nj+ORdbBjH1FZJ3H+Z424qPMNsMppQf6I0IWIHfB+Mi9zZa51G3IS9hX7FI4jWN+Q+EV9w4WR/Lnr2dUnSuakKGyjxjFxivqfI9jjn1vSCllqQbcdWUB1BR4Kxjgz7SvqA7q97H+rLAECrPcnSYYmHkwMBR2Cvh6tLWEaUTeqEJ275aEvtNpQl38MaZDy1I3aw+OKqr+9BjV5s1f26untk8rjxs/f/UgDbG7pUuvRRlDPKnVolf0XJuwlEUO9NbEsPKmhMBO7UJnGn0UBruy4iAFL1e8jCNmubksmRKeen5/LNWm+Bs66qe/mBX26EdCP4aYoaF6blqPmLQtlO2FmDHPpcySOhAS35bUTdI3tCt+jM7vQqizUE22OFMMiM2S9G16TnKooK26PpBbtfwPsGXgAE6igkipRU9tZ/G12K1piQY/51v0eXG+8oD4knn8uz7HHr0WBesd2UVawoiFi2tTdFl60+K5niwlkioR8i8c2BOzKyK9J06GJ5BdPzi6BoLOuqW/2rLmJqWjrmmLS83bKISsj9N60PHfBfe+in8Sh0oliKOk559ATUkZzVBjKBQiDwJHoE4LnZfC4l4BDzPu/v+gxtBEkq8FYgVK0wQ9r3slSTCpK44FlHUt2UUfAqY/4UhM06ZgCKG1J1qwXRhhvqfAE1jbFG/P0o0j8188Y9wkgfxE85qKZp6C1nHfFd+CNcmRZGLtS8+60ikHIk2DBG8bZanQZVLwzOGgknDAJj42CSiWLn3puLCE/xbRCAz+vTpQUhzUxhI5xOB2ByT3PVLHzBfiVdUdBnu71kVYomqUwusLlczONbCemPf3Zmqa8XgfHITZfXYV94Ma8dAIJRbMuwNmYI4SPV1fyL5plMxJGevZ0FFyZGv7LegDaGQ0GiY8FOWmmPUdXrfZWPpBPbpjQi8u/qBOt0EFAgIJNFcgWWGCw3ZwKKymbjw/3PIB73jByLKFkj8+pNdzjwabg7g8HeMnnZNrJJvD7TS/h+0RpCEnkL658unGUXa1wNXeFfXpgHcFUNPdrUdzyrExoEraDD4gaNz2MBRDkQhDP7uFxKpnPrcW7s89Csqu1hXH9BRXWOYFtNfwVLYIB9xlvTOXwsZ/EdcoBbUvatR8GqDeaeFglihKMq/iY2rKB7hb1089ACCA4J+9VKoyehaXcddJ1qEm0Qrm9o97iRdUplkoXQ+G7MCeFQKEu0sE/7dSrCi2OyAFwdqK2emN5AgH80Aq3zf2FCfIpVS2xao/uU0KPmxCUbYwoufjNDKCI7Qct6dBN5EECLCn4IQY4IlD+3I2gT/qlL2EsAyIr7wg/UNeTSjjFMC3iosUDsCBi1UWn6KS7z4KxPlD0XbpZP+Rm2g5k1A2rMtd5QminFfbYcq3joGEGfOxFXcBr479ewjmwPVN3s+e2kJyQf+h/GP8X0iyOaGP9OBKEZMF0+Bh/NVOhXWlfYUnz4vHKG64u3pzVx95TYnBdYX4+oy+ZUR0Ks6JbdHPVRDIoC0b3q2GBrOjn2rJ4E8ydt4Wqr2U+ix7XhPZmSyAkk70iHYZAx7x1F6iHhJz0/LKbtvCHs0/O04kuymbPLaUbFZta9FrA1247uHKkbM9h/R9GW+0AasYxVxLAg9S3smSqYnnLr1IyGUYPjqMY6Ir2oGZ0yoj7mBegDDVwRv8LclxkkiJR9RjmmwKRvRF6J7CA4Mmg1+IFppey60cn7F/f5UzZoCJvvDFu+ZyauG1WQtcjbsERhHWkPMRDvKrX+38mK7SHNskrWHc9nmCvv8xVwVGD30V1MfHGtYraVL2rtv5YCNXyWfOr/Y+HBs4Si6acFvgjXijVF0k9HSjsRAIJkqlXRX8BmmASIKrEwiqfKWWMs84yVwig2lZgU/10AXxodiN7kH+fGWEkhZ7i0RmnPDESi0UTdwKhfyKMTOr8vFGEvVX3Fxk8NfVBxvmdj9CrEiJxsiJrGnVFxHeMl2j1CvJuVB5XBppHymKdH9W76RUHeXn0WbgzcIhuSbs0NhAACivXy9XPTfB9YF20gVub87NGSIsiCEnzdcXpfrhBRbKkQvMEcjq1YEtjnKNihA5Sb6GK+xbL04cA1vUC+zvpTIfavY0GwiymGdSTc0C7y5Dih294AistwZ+GVBGGjSWGlEwitDRH3OTlSOPJ5nsCqr5VbrUkNIQWJoBoATZeqsjOkret4ZpXzyx7Rys4EvuL9/ltqJqRDQWLytIJReXEdif69bsuaEiivUKhva0yTeHrruhDc2mPxvVfdThVApgT3abap1Bex3PHpIKIvcN71+xLPf7iF6GTWd/y3+l+KIvz7/+CFGJ8kFSR1eDrcwa3378c+MD1w+SNu6a1iQoWC2QNXWnp2f6HbMs5OM7/3bQ6iNzhdz9alla+hG7uhC2f+v4e+b4R5UWSxjl4Rvx3jKx+fQAvLhx/dy3KgH50XC2dyp7usA9vMuGNFlI3mIHMPx6qos4jjGbvdcNUzTUFc2FeNu7CNWYoDTfsGXdN9fPva6YuqSOMqb+PwV2d9FLK2U3gNffu2VH5wKP1IISVBGQ98v9OQygjEMVWUUicKpiWvwZI2yWYqa0Zcu6EUYHkZKfNYi5+SnNmrqimQntZ7m93Pj8dbwtCi/L2P1wX4Y5OtJN2BbFLog8wYV4QwQhCjaASsEbtatbFfvWJqGEVKm1lOyZwfPX6mhOV8XWU3uVPLpP/DYdTMW0hVEOjj4nTzTh2EwrQzFirI3ypqOQsCVsjWjYTYsw2i1+GFfU9TRuh5azax/fArVomI7THlNdYmwfpjaSY1IoZS1wWI2TXnRxbsz2x1iGTpbr6sYPG4R4m6+0hr1peIKky6FgHXK+WTBfQSfYNwF4VWKpV2/4aMvnK+hj7EQ+Fnfo/YDMMh8Hg5jb8POAY8jjvUZDW1DT3a1Hc8qxMaBK2gw+IGjc9jAUQ5EIQz+7hcSqZz63nY/NWE9vVGUeGonF32Ec2H8d7IAewb4aWDaXUK7IdAc7NF7LXyier5ok0seaH1+DoF6NohZyg+ePMaqeKWvjsr+rziny0lMoTSajMQgobB/DyT5vK9Pi7TzdDtKBhb1K2iQa+LqWvO6tsLfiLNeV/B5pgiv1k8Ln7KT+ZqhpdDq2/WOB0LICIIdo+f4iZKThUZeM8Bf7WaI6xYb0+1EPjwDgQowb67PZ/Wo4ZD9gOSUYJEwVcCS7XolZXfoPpl7izLctUEX1EKAQehSrmL3CWxhJsj4+QIRLArzUY1M4YcZgvKRXUuEBhU4nwaJfJiSWsB29T3ogZp35L5p71qCBXwgmSqVdFfwGaYBIgqsTCKp8pZYyzzjJXCKDaVmBT/XQ8rQzCN4U2dYtTakX6uiVWS3qgoQh60Mg+9ie5TehbW3lX9v8O7/HBHz/92I9yzLuVQKMxyXyynInyTifiWnmZDRjYb7brh40zfHdnL5dzcJjTXfLuRych/kl3WPEbrYtdeIFqPT0I0DErj9Nan4igd1aRbiVpUnD6y+fdDviSF3ZzRF/2cNPl7D86ASHBAbtJfwsaZwqnxQI5V9D0baJaYdNeBttTKwYF1lnUGAHW66buO/Re6qdh4q22ZeMPW+Yr2UBOwVbF7sJ7prFQEx/AafqCr5VLregau2P9SSK3aKZI3O6yGi/jduPFn0mMhpN66WXVPzqmT5jOoKu3VPnSL0isqxire2u2YmqTGSCLCjcRsznuWpw+W00foTBwcjn8C877RwSmfKK3HC8qPDo7oVjTbxV3enq6DI/8foUTRIhlsqnpUh9UuvF65BD0EVq1admEgW7pKmfShz90+8K5zrkJQqPhv1Q15nUVq4Q46o3bQBO/MkonRXCuIdNq+XLfVT57kQwhLf/BMrhmM8HpVsfslavQHN+hdkg2AuzsR1ibz0175eDDeAp84tWMDGCT6rieRLXXfoeSwF93/9v4olququqOjnRGWMeBK12xibg6PPKo9S7hj6XpjSJsi9ekw59hReztF9j5+XITt7bJhD4SfBynydNC4A2gyhnagBIxIklTHsBZifGM1B3KVA7/D6jkpXh4bIZBCVhy573aAInSCgAg5QXnS8035mBw01qKbv0ZnNP4rsIwPkPwGvI5c/r9oLNEu1rdi1QrWcB0qRdLGXSEqoiug98nDlSq77DPWyS1WVJF3haQnF4yjN/X2iBURvDr+GiyqZK9MFIXP4bSoFpfEPcuKkkgXplbpKKwoQXp5BEI8m/nQ5YRyLbYnQL19oETBIrzcn04Ns7XTW60tSHFOj8JA6cjIr1I5LpN3YfxEl87aeuFAL7EU+Idye7tH/0uwi+G06PeafOjEXFc4veda2LwHQBxbyIz8nigDpQJ3heMPzp4+XGQdnkoasvej62K0H64yN5TBzcKW+n14k8TgdOrLxg+vHey1fC54LYkRmL8PAMYU8f2/f9ucEELMlR4tckiWeot8wRHymGWDtIz7wcDChS1iB+2MCXre0UqMQOjzfDvzm69js9f/vDdDNVtvzKjk52vFYAG5p/RAUFlBO6R/3+IC8UfhdWGbJv2ThCMOaDriBc8HoDy4hcSp4yUKMgsbyp/P3jjn7y84NxZJxUXj7nlbGQ6QofZKLEPNe2tNvArGqdnBGwFO1HW5VMvb64cQ+3uoQaokiZYZISJn3+JRTL5WPihdsI9CcALySJJVXJVagAzBpkXRr2oeOdMFPEZ/5cdBFt4rbzkn0FOTitGHM+r2le+guY35RnChD37RuqrtlAaHl2wKQ2KuNXKnDQhIvs5xCGSf54R/kbJSI/KkyxNeOiJiy264X3m+duY6vTAjznxRRwnimfOckFbIiPbUGrNUJO7F9oaZLhYZgRA1m2ElDFHIs5z5FuY0GUKh4K6bEUGQHz9PlDxDezIPaU1rgVU7RCKvd9KnTLxefleGYU4eJcc7uZzEtzN1LJ+azZ4ifBKEQdkEeiilgjOFVX6QWgzm+X6i74TTUrKXojNLp+FPQ+wPrVamnh0M55H6lTFbXqUJsp6JEAfEDW7NVVqzqyd2vur1Xt7cT3KQteQqV8tKN5Fd+H0t0zL9ySAZWiIyV8DvlR8fy4JhxJGibZ4kap+rS4sJOdOCIqO9CtbAB72bZC9BV4f4v9dLjd2cBQnEDEkCrw0KiYmdbm84f9OP6NCcKn9IWaarc89JIRb6V8co4Urx30eF08RxXKq0YoZ8mw7BCdlQIQsPACkVP/8zNuSoVr/S9JfkrJk7kvcnntLDRqXmzqxtS1QGfhFhIR5qDJzu6MmnRLlD+0oP9a4FN4leZAIAJqoppseHsf7j/lFWsHambdxoMai+Z2aonUq8hP+F1LYeUu6uOLr7Cyz77pvR1/lx/bRtLEDmaGT/EU3+srifODvyUPlrv02NHUCzTmB+aYcKgyjHQb23RZuPryohBWRqsXOYrsHaAOhQnVW5hiC8O5ykanRf6pWFNKSJvTf3w54IsP2q85j0vHKpiHlkK1y28hnlpeHPWYZaNoiWoyK0u8/ensB31Bw47P5U956cO5YjJoUOrgDZz6DnM9ysqHFyIdcXP31mzjsb3FrXd/IOKyfXIw71M1MwTc9uzMr4gLwQC150mJZAsZ5ueHrj5vKE7gN+LizvHkGxpyOTyQDm7vmJJ7Zm8mZmL2PG7PqC1qrWqXH3/f5B3yTls8TGwgQ6QjSZExcOfcRstlZcMkAwouUHpipSNFl8UNEYp3G82HBTo3W9DrPDkDA6gqP+dSZqAPL78L7YYf6SQWiRk+pyKIfl07DB2u9WC4E/o31xzDm+SpP/iqD8I0pD/XOwQzp8XFtAGGe9qk92mZL3GtyZGyoqmxgusTmzWUXlEJCbuvnDgy1bIITk7txWcUPKa+5xcjdvOs+sSTsI0oMizQS5dMkgp9O4jxComVg1STPDIiDRxTX4MDKd95kTxQDBmjfA3Yn6xsLyA+pHZ4zBGtJAjUREuorM3/CZR9CUpsYOvMh4OF3o8ORYfsNV2m4Or+gU5bkZ5V6hI0VCOLtDycdZWIvItSVx6/HK5kHjsMPTlq25eXYqcruiC4esVD3BIuDNDb4804enPrxFRUwj1kK1pv26hIcXPz8bpCvFfShn+qx/SGYGr39D/LKBCfB4/HSR5pote9HN/FeZAfUQaavAFUrEc2+o2Rl+cUDAQwjNDr6bhSS3bY7HjTN/KTq9mdzPMfV2GM40qfd8pjomCgS9CpIhD/FLA30NQ2m9jwapG+Yz161G+Ul2061lwDG9ZdD7txLkrNUsCXHsml40tZhw5/81+0U3v8CDjphAyExL+pQpZsz88EE2vSVRii4JjtDgqG5o+2MbTBPdDkVwg3b5e+vuLwS2vl7/J4rxxPugxRwQXHFaA2Mr5BJFjbJ7DkHmDkABvTy4XmAXsAhd88ku25Oxd8XRPypkGhw2YP2qPmj/6mJbt0ieGmAqpZn/7kNA5guKs6Xkb/u47kmSmqHQbUa3BQ6IuThIObtLqbXIstb/VHBuS5MJu86mshVT9qBHwtAXy1Ic0zFKRqExxWLTdDuMHDJ+Ef1ZhcyE2yvt4yiQjItUGh36/InbyNlqEUCSE0CBe2QI5EqX/kcIi4SHRCBSvLMBAoJIacuAVFNkXR/VBs3tw1QUHzlyVjcg/OK75WQZsDCo/+yfvVbYL4yNPxAyBfstkihvXP7mwFJskNGS6hABEGgJfYSC5VIE4G/4z3jOjHGVzqvIr4BBIGcFxdKSSEnd+XHgO9A+dPkttqeMtQpudKOTmJSLwVk2GtaVgxRkWcP02EkNAl+W5NSLBmwbS4T7QMgukI6puEOZ5pnGYHAZBx1sNBI7Zg2Z/y92KnHQvROkFzEGM6pLD0uSpQxNXwQSBReZ0hX3pG2p5BhjETlEyueyc+FlOdMjIj8f4EQCHxqXtq1RhsME7iLqs2oun3lWdKACUGzGiAe6F9EVawY5FykLNxIr8NJEKGZEFnNQa63L7OqRypXiS0L0GHuTZofQqZ78nygKorhm33WZhJdzqe3achacnzdjve6LRYkgqz8j9CNCxNYuIIATD2AFB2jqQXgz0m/7sXzVJzAUeo1GwqDP8aOLv0vwitoTDiTeGAW9sx7Z4kfXZMNKircPj6XQW9lb5cpE+u7xndCaq+43Z5ipKmffI2B9QAGFAgdirkEIODxNCK/NLzBRbwk2Bsk8N2d364BJ8e0n2YBvRDR0meBKIyVerUq63oJTArbVjp2qsQese2rtpYy41sjWtzBYIe447KKTobUZ40xBflEBE6YvXUJeaVtXt24ZiwSxwPIF2l/egYGeQjHQwOfH6skOhy9owoqNqDMlYN+ciBi+Q+xCJ/LVOb8Wz+p1lrllFubrMX5YX4Q5blhFHLkC7+bgd4eDrw2vWa8lMIyw+K1mPYQkIcSExhRM+TozydwVJW/Hd+MuRvpmRUvB67A1rw0gl/XgohGZUAy5xnEIibC0rRyjYamf7bS9XfhumVp7/AA7/KocqZTcBqucABCEJiNMPpLlKI8VBGXVB0uH5pTcUPe1j+OoIGPZU5lvco1s9uxpJisbSY21UXQ0tyWG4R6o2hthXlmfEYYVBRCQoheBrLHWXOcWmy4lr06mgq6xIiyd8PgVwlZDgKcJYf2oxK0KAtuNpUPyJxCHgYt81oonXdFBDVUwiGza4soFLjiOSN9g16ih6AxNM41QxbFKEwTCDDbBVzJB3DYHyOMkVS/fCkejnm6KFyWzgtan++G+biShCE40U7WRef9AukO6uPsrxDfH0HDimvsEIAg655Ty+ZxZWjs5RLjSWT5hglmntSHWm0T+BqZlyntpTY/yaAkda7XIhU1rT2069jva0No/id1ZH2PXwL3SIN6FfzPid39j7460roqyw7fyFojtdOwYB9Y43z2f1rdCl5x7uWwu3d1tOSI+XTRTOOiwF/b1xtu5VevBDL9F6vi3kTZeE/kzSfF73WHtf0AXgdYAXDt5pISojgHzQjVL2O98UX87EXuUG0Pqy3CL08fC+/sNEkNtxD5D41Be41F5Pq7X4d0EasYV+l9XAgNJbi4Vow/KOS8oIdhZ8nMG9lUhH9oFR9ZNNKMhCGk+cXcHMb9V6BZ+EHDn4/dTbLcy1L6ojpC3L8L3ODXT7Pik6sCaCvCjs6+bmUkdtkz6FIjzbP+m0Bv55PwIotaO70j3OsUifrNBWnhnY+CSJDF498Cxil/LGbwVcMwVkh3Xk8nBHKpQIv6Qdif4bDoXUyF6IzZn6fYblKRY9il+QQw3iR44hwZhYqMylFIkvXQt7YazXvpfP09ouetTWYQqtlDItKTE6o1IMykreIONvLMgWyUXo+cjDHgLhuCj7JMdtRnShSVtil0i7la+YRsZ8wUiavpdLjz8E+Fh/uW839j0+6jcGLJt1ndEmpLLpI7ukl/v/zQrA45WJmHOpgAKUGwOTd6/l8S09LGHLZWT36VO5/raM3Y9F6m1gwJH5xcmKvSWkzQOYvQWzyedsg3YMiLGeC09dZ7AhgZtHkL8vgXof38qLkvQ7wdtoBxve6cs9vyfdD5xvljWvoSKEQbJ0roKZBBzk9TovCZlSL+Q/NtNSM6z6dwBDW0gnWmCHc6yVMCj3NeJXSOYtFQGZrpUgmzkPXXsgrBvkKG1a1lhLoCQ20MmGNK0xb96VTKmT7iwKRNzFFTYdnPpmj9PUttLTNAV4Onx647ZoPqhZ6ew4Saf1Nx/lZuls82ZD6YuIU7l8QY26ZDk30OuGaJTot4JmmPiqWnYdw8YWvEnr3wKBX0Py0dfcCQRhxU9RL79xohN70BHheLjJ0F37dFK73fWHI7R0lc4A4sJ9+PQOjUFyejCQvXhbnxEsM3yAnLe4Fnfz5c6ORKa+7Ey8FkCY8PWfKGT5gWYKgNRCDUO3piBwNAxXJ/5cmRw7/owiktb+HYx3EL//SBJKfXuWohX0D/EM6VgLI/f3JetJV/9OEyaRmoz/WJgPKPZ9X8s9bMv+2AslihR048DlVuq8E//tPi9rlvnMvUCEB2R2M4Jde5K8VaBLLzBxpROKb/Y3sph15szUY4uhnTidGp4R7FplfCey8asJJWNXvcLrOPFkr42/plGpfKQ1NmEsx7WrVAbc30j7qtdsoPdpFldoaW3d/ULMMznXO1ZnimV6jngil2OzG3yMNBUKs2cIWf8vxDNB8c9U5rDo+syF5eJPmgAvSMoqNT+fC/bJ9ymIiWLV+U/5qA+qGYXKMqXskYtx7scM/TVuzHdinu439pgljqToN1Aqx/ZLqzQAFaSLwGnw9K4ttbNFIvyB/4uTLiywIVXFSBWeHkoflKbC7Yx/n5TQyF6qUyB8l2XeUXoaJRc0faT/2KJpBSJd8rpz515b909HWPmLMNn6ZUKtK+ZOJfuXgKpvd0SEmKk4QOVyDjUDzO3ANS3/LHVYImPbuBHSyqFZAWc0D52ONKnjKWTpkui0IPPoFZ8DmFu0AKtgydXq+38rm4UucM005H/lEUtLoV/94JGKY5KBVj1ZgZyjjxsjDUogbXc49z5LQEmK/6+25hDxrMmZYSjSBSHasQFuL9hJa0NCR0waKoVnrKj1Uur0X4JCeYhUb2ALogBMRzUSGLVlqME+BWN1YuHKoJ/hDtyw+vvNEDaq4lu4/k1FCd/OK9/5gtPFL2j4yamGJK+m+KtW4rOLEw0/ih5TjZprM7lS5Za68qDZxhHzDOYDB1K2KlPC9R+XT1loizyCfPkZHsoAD/yUyJ1FxCRA/HgL+uRCGXvZhxAcYVWI1buqgPCctWtMKKtKuPAAsGTI5UzKZDtqd7JOck0cGfJsaHfVKyygnEusON9L3n317ziWrtv7oXpgma4BS4yYEliMtn7A27Y7GBrbKUvN7H/dUlaZko/zvZ7SorGyQRnOlVw9bLqyCiBr/5w/cksl7/FGKaRea1HPzZMWj3LmFVJi5czutFO6G2DNfB0y2Cg+2QgO1tu+NNi87hbc5tv9oGD3hyTV6p+rpMW88qr4KA/QWKchHsPeWiC3MS8wSpohUNCzBAd3SN5Cujlqh/iA4L+gRDbl7c2BWpxoXiaWqjFQLJWBDUnMFgXNE1sqn9hClNucVwcVIicVOsMAJoGqIeTdXc16/a2Vm2+pUJ29855FDfOue7LVClsqN0l8uIF2O2VvNu+m14gkeEfxxNFEwY8sFK3s+YmVl0FdjUWkGVebg6oZ1kYD/PuUL2mpASskGb/Q+VjDTavW10n/DIPEZAeW8hoQAyk+5KveJJkWyYx7GGG/pWNhN5aowx50BYH5e/Jk8ICxfzx7G+P2EFIc8tLm8cMpQCnRbRho1Z1ZNg4yZC14ehtWhgMXkXaNLzUDEUOmgyhMVZMxhnEFcn3nErnnUzTxtQrSzgxFTaPiUmSIJqDZ7/ehvUiA/H4jeyJEreherPCPw4OKt+JBLdRzNsXiMOnxUE+nKZazVXKeQGcMv9iE8FbstLlOEIATkmEUovFGUE2n9Zr9krHWsWyVrxhcCDuTf8IULaukc1M3wmd4my9Jn+3UiFLESI7a6wKz/63Zs3IQt4q5xf9Is1IkxZ8Tbd8nvXWMQeSG5fyQp+mKVR0sRPokzaw8t1jPrZCtCFx6G0p7Lv/4cI3Qi8q0/YLTkc+214DypJPyx5EdgKjxB/+ole6Vf7hxTZbCMOPCHJ25cKgOXbQygjOdnjuiRW9oczo/yFaek30vWRm3DEflLzsZOm1LBAyr8EdSO5kI1bIJ0eFbT+xITz7W9EXxq+VDrCKuDFKxqBElLK5HVWHakdzk+aZ2cDzEtGLrlZ0L4o5wVzEKbU7tAFYK0QtoUUT7NXVf19NSoCePqXApuVW/jWKd8beJCGdbuMuorakHQaUI0uW3rKznQu8cEy7sr1SGWLLRzRipa+cCEuwBASK1XXaOii14bxSsvGEcxyavZhmf0e/XaiQS6pCsI1sFc83blryRsFUjYVu5Bqyz0Kx+IV9sKee3n0pw12Kd4DNAMg+D6v8iPUc2U7hmiClDzIbcuKegGN5sz5o81Sg/3rZzM3lktzpTjzh3CdKHrOyN7RWZFaTwM10kIh0mIUGAL52kMHf28JA8bn3uEouD6mdXdOgZAjJ7jenEDnYN7Hi1Ft7jOo6i0rQONgjGE7tnnzO4JKQ/azWhGb1k40MwSqPqTGoV47g26dv91jyviV8xWwlZ2NHkzkhaaOMdzQNCrta12ciHZtgvnnuVwHxs6c6ynolWA5Wh/NPAFVc5i6m2/JV4kM4uxjjFzrX6zSfqp36M/mL7tkU3HMnwFRM0hOn+mGuvYToLIbL2uuQfbKuLJ+rCSdYh4d/XOdRuWJaTz8Q3rzg2hCE0sVrQJaz4dS3AbDRxMUIdF+CBj8xBAkLXO9ziVbesZ2wfuzjOsE7pxALYJktPRsTp5LMvxBVg/cKUpO7e//Ndbv499SmRp6KL8qidFIgozKd6VAtuPGnCT5dIUxaFe0PR7qeINsxTtUv5DJUevhXcdALgQJEIR2i4SA8YE6cU9aI/5UCHlpLJ5nOH7S663pcEfyBEwXaqOJN7LNgVlrxF58yebTlRgzr14td72c66mgZZAt/N7+GWNAXkYvYtyFmfpsNM+QqD8Kl+eGxDbca6nFSoVNB7eqklu1YYKDB+yAauaTJf5A2VJL6QRII1KKZFLQVIbCsdW2hFLBenGMC4WlDHM3J6apo8ofwWrymJgCErU1a1ZwnJQ5iA+9DRLVstfN19yPgBTbxgpcAo3fuNCREcxWqCgPbyFOMPVWNVFwdIjzv4vLwTmqiNLNJ1/zEELEQoOuiOTJSoz8EhMDcqWoJW8/9cgTh6t87xh4Pv3OOlesqLLpiDjCbrv7JbjY2UuLoXgtio0p5a1YtzQvlA5lPUK6QPDWIbpGyEhHG0BBfEa4WM6RaLO0urDQ2puuaTJN1/53lo8lA7JMYwyxs1dDYR5gFnxcEEA0cEZptJewyoGyjUskt3G271iiuG7RxGm06w+2iUcapKF7KfZ9XuxrB63j4vEgIXUl3i9ONNZQ+NHnNm6wkWLe+kxj9V1UjmxiwXh4qYLCTS07P9AV5Vpug8LLp3b2w0XjcUYgvNEy+CGXMU6xxE1J/Ky10R4Ij9jZP1w8Na79V9Az34ysebCFQ9b23ksv4KZqUcJk93EiBWph/ncOrJlVz/PGWIPi2ecszSfrG+MF+9GSRYwoN9U+8fop9nE0ApSoIv3RBOiWkmpR/ZiQSZNpl4zmtdJbEb29D6LySMLj02VKQKuLf2wKXxBA7XAa4TfhrJOGO0d1KIgfRMj7npXyWCWCOL2OEpgO49EABK8at7l6KYq9kirUsyY5y6dnOpcjpVMhlSHTIi7C+eacovganl0YoO/vn/TsebupWn4EqBkE6jhBdGfbA1zXTbv2oxSWwORgIg3qvEF8rGa97tdfOBOqTtmHySlEGKDDAL+Hgpu35p2uIfCBiS6hkS0r0RMHcPsLcaiEM9tD7VY15xHJ2uhjJkYum7VhwlSXC2brfkeAmMNef1gCtH0Ur5KXkh7hXrAqTmxlY3w6fS5jd+4CfE96DEg3W/iItBnDgOyLBmZCTAogbZP4xvB+C9XACPYlEyzqrkGcQj38Gf17ob7s86hIrDU6YldV1ZnYMqlDveuMIbl70tT//UsbeywDos1WiSDUz6IiW3Q0/3qeqNdajYssMMcXinO2+wVqYISyET2P8/C6VFfRWqMm8pS6acCjtQI9Gt+aE4e1zr/kiRGcrhBsp6ZOUgQqLANbvj5ryKIhf/I+xVdEYxMGkacPvoOXADxQb/eaPtNtWcUTzwHmux9r9kzw4r7YdPeRlK4aVgpUFfAJ0jiVVdY46vd8UwNgKCjCdw9pQvx26GXt/Nj+81LP0LWqrFlCk5wIsYkTSyFvzUIlBsC2wSd8Rj+BNZzYFqv0pwCXKTyXFZNI8CkTS6XW6Ni8ZO0r2C+bmyudhF3AgdWURhfmZhSp0cpLDQd/+5VZNNyjV6SyzLMdGZMkf0HjG8bc+mLpRzVKPhbNZsqZRRq1qVpvUtgPZQP2PyKZ9Q17P1dc/bbnAA9uoRCgecZ9tLVa+6DDFoox7XTW0j4VVSRZfL9ZdZqMzv+cMIK7KZBJ4EK9+OXco5q9Ag3FVrNnnjU198knZ95zEZnUQvpd8wH5YAl5zF7NLXEVv4Dh8tfkxuUwoIwqCfNkUzf1cMa9Mg2eoBX1Fi1GxH584cpTtfMaa7MulHy7LoSgx5yWhI19qIAvbxzEFzcXwISYMjcFeWDJmNIxJ2tNyA+vCc6vRg5r4KJmk77HzeIKHzrpxxy9dJRGvkOj1f1FPHRWfgHMqVPdmpxyn8IsCWI1klV7npkaws6KjfM2sysPrxmP+uwqTrND6JgGlAMlnKz7u2+yo51gxaxOGF7DOXp5jhjjMUP0oQvF5XxiKQtp9a5e3b1qLHQhuUosp1EO4zRxTKmPQobbyKQTvIFX8a7HkNK3sd5IxzBjdG46QiA3QORTaz/iZxGS5Q77+Fev+BKMMo/U2tNkZQU7JYOdVBqEDxXCvyPZoWHWub4ZhviD0WVx/g4R8s7NJ/JAmcL/EarG+zRdhwVMdhAOpt6ulsgthIFLAmvi9TkWynF9kRRH9cQrUDOqEACFJfVobNeMAqaMAVz66oIqYKJVpEcMdiJoqZurj8azsxBEg7DxBKQTdDN5JQyVXlCF0BENm3Yx+jdoq4wYGB8YS3in2FNot3pOKAvwV8NUqCdzWOYCpwpDuRzTnCttZ6QCjR9r5J5lcfJmLybGmI/5a/VdRwOFyipDBtjDwKvRsWsiiB/TIChWsVKCSvBroNgsg0Dxbo/v9QqQ3WpiN1namtHYknJ4GlrUVJwPu2c4llK6vNJuKuY1WwEJNmtbFk2JolEdYo+ohh1Q44AQgKa+5AjPfPHb6ucSx6TKNqKtdOPbOU9ZDaIg6XYdH7im2HxveMnEnSNeXpaodEk9+msFC31/1PUwlJeFCVjBQ4JMwDfh5DsVtRD+qr+lHRJfaHC+iUGsWsB/YN2ApqF82sK8d0EB0MeA7srXJEvevoHj9UfY2xfOxpJ5HsSmt/5slt/aam581b6psCHDsLfE3eF03wrKzHTklhYc969EYqiGj8qbIv5dEp8vfbZmfuVukq7HpQtOYNJlvDZ8j2goCEg+NDpRSOPsHZG0kvCaGTwFyP4cazoIZF9rZ6deZaMGDZTdDKlCvBS1evcN8ROGALPd7nij8ciI92fFkELxhHIpDLVrbjk3bSadsOSi5BawX0liogJZnphT1bJqCQ3nusaOEHKuhKGeap3fHYxxz4ufRxN1HNP5vqfX4c5lE8Ewg35B0WJ+dTFD5CfPs+b5nhX5/NmJF28ul1vbDzOHHxtB1AUdCc2aKuaM8y6xOs4UoXWgHs5XPrGMvwQaI/fhh/qxPpDyGUFCSjqTtIpsfdTGm7BLwoVbduc7f01hWL/eU2fIM+JcHI5DGKmymVqMsnzmlWJg+urhmAx7sjFlv2yBJyCpkwT0/C6DM1FujJAKBfElFJLBsGZKmBAZt2qK60p/BKeGOhqDKOJclMKWMqGIuKUaYKkBt3nE3NHkDWNPQnUq5uFwtmrAfaEPaDyfQZMNldQPIwEcOAVAGtD1lk3vm4Si0iigzrh94c1PyCj4yvmBTCEvdAT1BiceWDuSKar4wFrTiCE6dGcSoJ1f3eRQkA9XaB4S1mP+nqL3xWvSfSGU9ivnWVpPSwuqCb8J3WJ4PWIt5OYh5NjGiFPOPs4qvNfcpMWA8eGb1yzw0j4G/PAcOdcZNnXNDyeGHndQaMNjcL28zow1ycSY3sQPsUupIGRs1afQky8+oJdpbD23btVuH5Lnhz3W44JLIxdGWrpC6otbt42xg1i5JCheg0dZavj15FioOdPTk8jYbPyiXjgjqndrXt0s2nTGexH8Q92Mlau0ggqMLYSHTPrq1Q932aZ5b5ipXIKs7SlIGaB2aqOawIFhPPh0L5u65QVoO628xK+wZoifMcu/ZVSzJrVWAWCfsUA10CQy5iRW9jgmnU0tGqawkcWezgXj0rAr36XbF+ALzywYwcryvSxOS3nm++BvDTBJrIqQ2JGB+M+2rZXYw4+SBcwdN/kVYHeU2LEowjXbkED9PDrH6bDgGvHCgXDZ5jhY6h4zTmNX5JDRZurdJ2QEFRiOW9rjQSF3+CpekdOu32y3tuPOBznNOGcFWo8lBs7JIDh9QhrvqhIvJA8SaipmkovqNZtshWskfCjqWMm9Wk3TSViHD62fkuDzkCOVLrdf/f9/Ksm8Yqre1ld4rFTFaxKnRGIpUWlf6SASfqKknEd3CYf8e0Spfgd5TWkZP/7QvSyc0XypgD1P1KM7ykWref3Mjw0hmVVFKjnOsWyPLinLcqZYYymlrcM2vx/1F6sM4p1fdfPE8BiWaGRxsFDW4fptg7W6TfqA49b9F6Z5eQREmwhSAdfGfa1zklgw6bGqlSsS0kq/gOM37IqewGkJeandpiuszvXhYrEWWnNe3N+tkM/XNxcFSj99ATOSDL2gRVkeZfXxGtg31x49ViKymYpfzR4Uxg/qo3Gk/dub2l+9K+ttRhD2PwInsXmEsrQ5Zjq9tJTTXskovLSItkgjdgLDXw7CrO4MBJioMgTEIhXjyjHtSyYHzkBIImDrJrsrrLoHR8i57CUr4M0Kcx7HsPZR3+v5D5AsWwEMK4VTtJyHcKMYmGhfCIX1MEJW/ifWtqRTnrn2ONd/K5plwi12ciFMXA4ZJngIVS+aBgFFdVV3e0mLlo0Z1Qa8NhgBAxB80UAMPjAfnwlLAwKPKWyhkXHHPROdqDvwQGHOc2uAI8cEidIZtMpbaIDFeLdKmlsutmeYK0T5RasiV9lUCZ7bFVIXGPD/puKOM6dRWnIkPGR/FGuzc9PYNxjd99wg0PJ2Z7eLWBKNXHurPJqQMS9VImd4skJVfnfpK76tjoKGiNS24lFBY9zKOiaEDqv/yh5T1BDpbaxVKY3oC3cBmLxce0UIKwDV/+jFfdnA0pnhW1PfIiQszcA6Q3DlGMTlBWYkMj7R+0BUprjrOD1gGsrJ6tOmxw5sMxPLVRLFQVb5GsOddL5aplwLTgBqJPb8tHz0Biqw/FNKmqLuZgSEioeNj8WVxgGr26YsTjU6P8Sf+OBBwsqA48vUQuoDuepJccG/ixnru45/mIA26D9ZhbVlmX0grqtGRLn0LvfkpYhLaw7dxus3iK257TN3o1tBrzdNEf6CldMBN0WiRPQoUoWQEscPhGgbnZSONh1bU6wFWQk6c6X5oqsi+tF30uoSB6bwHMvmbA8UnUJwVkdM9Ck36hZdS7cyigIbdglLLYOVG8+oThUBkVNj5VQce2cXt/eeD+wPOjbrKEVanpaLauD3nFZxoJgiCvhpJ5Bj5vfbQ6pRPwwF0KW645SEVBySGkM6pOi1/ItDD3qGRRHCwsngDaU00Xgjx1VVxMsbulMho8MatGbj1DCV6VRRhUVqBb76gksAQ0XNFSz9WOwdAFZRN4GtvMlnK8fc93jp1DQkt5UoL54I/7EOjVRPvWMA3IOemB3vzSeV5aqLYojkqED/ce9Zkq8um3WWVPDUa786fmpROIyR0LeOcc/iIAlFZSs7AsbgAPxKR3w+wWf5l9BGWbhL03SUoteoh4gB7FULHx4wgPB8rKMwcarhi1VdR9Ja+sI7Em5E0mJhnCMDsji/QfoE5/g/wAdUjZpfuqeFQH2RFPiKf7pKaXzk5lHDZgZsQz99jEFm87mgvrFA3Uk3Gwzh8sL36e9pArH+AivYQezMmWVeOshNqeW3bicC5PIhCoct+FPuHXNirmspSoKdNXowDj/UGXTCja1bt9tuB1uzfEOOjJFbdJcpk6jrkDJmn04gfB+rimCcClI8eAKtpFxPCbUtzlCSbavV5ffXwntnh4whmnnwSoAotf8OkofKexSAt1UDWlOOZw34tMI0sSKVdBGNBRQvwEN+w4dfK/Khu18UB8gn9eKn1OwpjAsqMjSefERboeI3pF5qpXtleaz1Fo/HXdKsgUGsXTneN8LS8BIO86wmJ3CPPcIGAnqI5bbs5E3NLLJ/up/XHhemSUD8cnwT9y0Ay/BTMBkCaGJGgnkX5sYCwkyIFGcHjCAeBBdRB4KSHvXmGrDTw0ncogg0EIjcyYwqgpSazWm8wY9+Y19fmHjP1IkIkChRQq4ae2X5uolBkCH2TqAfrJYF9A9vJKUr5EqCxP7B8JYBI3ZNkkhVLHhV3iViDTGUPMd5rP1cqnVgvkgG2TjjHTsA5rIGYrGuP2z3osHEhvcpxHY/zt+s6fNDyypelBPUqaRlbpF6FMCkpOM3arvoKvmIzC9Ijd5fDPjLs6SWMJ1uVzIAZIWpufSFSmPukPUfzbEFZHsNU0tO7n3IaLKWO7iNqKRem+4Nm4D7nY28B05+oZpUwVcL8R0UZQzoaHaRzZ37Kc0dHMoNDFsJ5bdCyIR4c0vAP9N5LkNHRjMYeH7CgcMdAsq4RArCOP7KRR5rx49rEwDI1Fgxz0UNM2rnHbJcYe7wbTgkvFz6i1hjQzljLvbL/UDo2S/fNk5aXrjVYjtyo2mPQOLNgOQUk8WwKlnGPgDGqt2qmcqbWxyBMMPnjREBPV94+hxrAnmP5tvix3XP6C7QGKiKau3rbF7c+4lvKe/gFSSeQ6tXS83ofkJGdUgt4vu32lvXD+YnfVWWW15NS0FFAHjG0SEbypaJPtViaDPiBysPsPr0ApuQ2waTy15TYa7I/KgUtC8xa+aVB3BNaLjrfrh5UaUR88mekdhjDPExzzNKWNLhkvCfOMUHeGwXaHC+1bbbuqFNmNZHaNSZKFIbsuccQIcR0R1PDZoHv2gLYKDPDi9T8INO6lGqzyuasBifGz9bZ3iP4sYjpSNUv14vD3FtoS0TkccbVxFwndJiUV2vu9jwEVchIy+vqwKKzaTxmfqV9gebbmGFHMghioGfivEApBincIvz8sHzPiZcAzsXiWXVEe4m+WeRkokhOLPnebR95ailEeAuITPdyZIs4FYQJHMxBIE73rPJZX7de/N7A9HOsx83LB7ywTAHbCByyANzzj8li5OxxQQWu7JI5UycKXOXN15rQTEYFzbcwwZn8C3RyjvYYRRDDUpxt9eb1McuPb39/t2eMfxNg0km4/O2DhdeoCjAGE5Rm4vfsM/npRwoBm2dOOZLGAQ+Zd4BliLWjilbFu5xoQeBmnFt2dE7tqFLPSltJMtM0FcP/MOkAkr1v23ZeIDb04D7Y/vGhljYsLpzOLJzRjt+bGjEW1Sv6pTWRbc+8cyjTaFqZ4oeBtvmGXJa6otYVUo+0p+GQmGE8hXRnspUdwBADEkxpPWKPyTmLhbMGdY5vzmncrJh4PxgQ+DYucUcRl5a9lbfJAOsdGvXZGkqrtTUaNMOwH8pYo7Bu0T+LTUxwOIvZVIj7hrzdaYY0HAUm1KJHT4F93evuH2jUkzFqlAHyJict1c2xosm/PqJIgs08fAd00ckpdWJAVtaX+PUexT5WW27J2ayzeH3emAX+CfGiEzeI+nHJr8JPygYEdjkljXrbTNj2X7M4i+EoBMOv13FsnY7pVDqOPXJFDbelB7qGZZw6W1of+yqYXdPgiW72XMQNPylUySLi6+zKSIuzmxc5Q/5OCZrYEBS0GupNgGBdfDslu3CC3tF+/nl/4u+xo8OsUJOs52J3ob8a3paKxWQE2hYoh8qqh1SATCX+ZD201TB+7gdmgDMp5UATZCjOgNvDV/WE0zVlkcUE+nMMJRG15OScx7AE6HkE4G7zh2+aIjc/rlANVATRJKDSO2Drv8GJ1+tDrYMTXTo/aCFpb8WTFuuqWEUHHFW4UeDTEwxjVYiw0x58+n5xRneLYC3kcS3Eor5fwEHA5IO0z/KIwpTEIGLCV5d4pNDltmwmfjutcjhlEMLcRKJbY1L3i82RAMG2o7B0SBgqscM+vvhFhTOHnpUFuPALNpOAMV32iTUxsUyPAvQrex+dW6r47h6Bt2IQpPLx0l5+XOaxiuX973F2UXaRnJuW/hu1iF4SIS0nszZXFuhBV5VzT4MFylcq8I1WVmY738vEBrWqFWNaPOnp6X9ENdp6AaDiNWTny1hgnJqZR6fCTFgeNiY4R1yxksgN7HxL+A5b22HQoCviFEdKLoZD4kXzqMW7UWejtpdn2yZC+iA9cmpYtU2zOjbxM3+S3vWOGyyVJwgfH2cwDN+T1veyaqIZNaxEMhu3VrPhLyzwna9GKE1GM9Yn8zpNW2Ao13ySYP+hmU1ppw3hHjS/dW/6szy3pss/TfSVV9ZSMQyhFK726BzkzUz6spFBzQTXiCd9TvC3LWYWLschKfTT1AywpGUeyER36Wdl4vwsqDxwjqc5UjdIo+VcfMeQAGR1Ye8Mhvf4KnNst+OlU4FbRghLaQ1JNaceUEEaThrwkVR/UIttT5X4a6zt3o33XuziMle0MATEH8JU5PHIFDSLw4TezGj9/rOzG7GkpdhSyzJEPgfjsb81La+zZZNttB4xyyJ+Cxxg+waXU3zSmJ0dp1SpUzGS9mkByG0f9nQgSms1ACBzsVJ50xtLHZPe/cTbj5uHCuw1vLYmaiQkpD63s2MfS91MBgW6Msn9YxHi2tTse2cZqJZ7pcDqJr+4uGPldCBFeTTn2mlpnUh1kqfq3IiatPwgKE44pPlRCOUU1GprSuvwg61N07wYRf13BHmKysvfz3p8kCPzYEyTQyD7URuBrRwVakq9A/cGqgTU2VgY+emntjLuLzHPR0RGXWh6LNCIUeFhIiTrTlgaXZDzqXCmQ3HudoN8vMIjifFyTuyEN8lZJrMbOVxeBu6BfLr8AbcKUMLsctjnUvKjR8u9jnEw81OMhsVIK7mxY5/ZrVYRMRLI71npoXi6HRPE3vzPC8XJiohSv6jMnI5KixPZopS/iDOMcSx9/Nmtb8lShIs3Rtq64u933GsLtI7fpvyDyyZbyMfZSW2iNgvab6vBmEUeZ9CieilpnvA0vorACbTfMd8ZjBDt2E4SX3bSo8yuFLnFBe9tSv6nLn+zuhkJ+6howAKTZGFJDB0Dhz42tPVAFeD9UmqF/lF2nnV8qzkRhvSkshSlBUiOyjgJ4AH7gnRd+jhODBh+zwQ2N0m/Zh1XF8svQiWggrRU1pyWsgWaAZmwGxc4hv8j7wdJLUl3ync2Hpl0DW0rQqkMgMtaK2SQtwG6ccSdV15+U0zh+NOMIvOGKDk7NlSGvc4kMA8+pM1hNrA/P9mjGtxcgrlTIoa1tCYxDHJMV6GZYvbdgvKUfSl28zhNNBn9mzJbw5aL2aIjdW/d1zPmhE2NT0/7YphBa7qFfYELiMMr23D0tBzJKPtG6SOUjL4cf8jiht1V9i7l6L8DUzZ7xnUJ1K6FRldQWyIWcToukMd2Gkyd2ZeaR6jzgNJ2JABrxH/kwZbxBRwgoD6jaDVJKokATNy4K1w8sb5Cg6Mi1c20c6jUJ9AhzrpDWMxBTojsE4EQ9jJHYInTZ7kyK4gkkR8zBubakWUhlj0PyZ+r7f5+snpz6UnvEG32GcwIoZsvbEZp0dNqPGrnPBzC8ug2J28sRMM+VBSpf5eufOoJv4i/tT7Zie/D5PhRg510jX46osNjRj5MRCaRODTggJpr1n+4/9HOzpNEXTPrLiBCwsTm6tQLLtrRz4eCg7uawfibobuJW4BAEDc6wr09Nqj/TwjVYNpFFCTAZsu/VX6uKrbtlgP4qktt6orPe9vWod+trhxXw2eoCHE1g5r9oXOX+833SkIKeGGYSRCiHBmdA/FfQkoJhUzNEGTj9IaDuld8YgchwG4HjkTpnh4N5L/cyCqhcla5r4xUV/QqDdoKalrHmYmZ/kYI00s0KYLcBA5clKOSHBengo2fQdjiwUcVJ30iiDTxDcvxe0EXKegT8pRLMa1qtfEaGl4Ep32zOZcJqMsP408Bpa+R4dq9ELX9Skv0p9jHzGalpBBnpq/Hc4+dIODNStSwiB8CkScwNUhkGLVFgoXuyKqAkS2M3kiaIudTw5laIoz0gpGnkMCHbLoVAmiYH2PxgzLb9DEDx+OJHuj4LJwq2vRQmJs+ryciC1hboJWsfM9/hfoSm6oZLKg4dOC/FuEttd0G1EuySGXALONoGHa2aPxbkwAEi4O0OtfYhnMsfRgTDlUG4lBRuSromvHsL2eBwPyQMmakreuenqZ6O5vtY/4818ZfzPm3iqXTPArOd8rTVTjOoqTP0bXcfzR5yj4sneULn0REkKY9MTFDWTp/xjHgHLAWfyjNEbvVZYUeYt0nsA2DIdKrL6j8Db7K4ZDa6WHu/w3p+nqeQ0o3ItAlo4gya30FJMxWaKKY45O1/Pn7M3U1ywoaEpJ9Wj1IgIuVlrfqtyyaBygnEaGe2guDri1HDhGqEHnw3jWpkNkdsfB7aTtJwfV6d/3JPJUyLutbgkhss93PgnEcJa92C+LoTGDsrIDdhYZ8d/zW8+cfedCU44DH/VJkBc6eZJ7OwmCUN+2WHBStjuiG7T1xmkAjgNvKTDe1H7Ow4kQOxN44Yxg8v/6U+svLN+Rqu2+lj5juN6FmKoP3Cql7LA6aVU9smhmjadndrPeKzJ7I/VOPsZ4YfNkzCt9BW3DyJUxTtLPLq+VjTB6DZ7Sy1NV9eSJgMKXrCmu9zQQzZTDfwU0JInrEEV3dSymA/v+wtJjoWubL/ww6pcTUOo1bLm3pHGD9Un4Mv3zT6un14ROpW4njzCqnxbI3y4c9okHN6JA4OJZe0hnV43lteUG/bySiWeuPBNbZwXwjMvx6cyzTTvxnBA07F4NxM8AnvHjhgtEk/AFFZ80W1aIzmCa002T1BdMXU7Nr9b5Unkow2hc1AWLXLmt0sGjpt/yX5/bt0HI0RLPW1lxCq9dtVZeMYkblehIsHw7CgcAYN0XYnGGTqIJI/XTt/dfJw0OHHPvlFroPFJaMAv2xmpBldGwWzV/TC+JQEQKo27A4mflChhXqcuw2jgmfNikJV7kh8edsw86DJw3HypdCLoMhViZJA0uc6MvTO8TrM7Lb7bllsyVhDRPYHNxw1re7DoiBt+SpUlQsUIxLUBBsBVlNYTBldM8VVs/MmsuOgiQGaX/QdHsGV1D3kXLlL8yXR7JjeEoK95m5j7t2779sLv5VtdeDjxQZ/Y7a78l3Brah3k30Z9Y4w+hYbyjiOkqEy16tO4bZM/vTdiHIRdeh2K9nc19K9/vKiwiEQU8zI3JBtQ5qqRPhlaaXehY1RXIYulvwLlOl4JHepv0l7iDEym1wfYfvb+wd2LhaFKivhHEbwjagRJysp4Ti3gnlTXbj1mcQhF/0I54veswPnAa7b8lmZxH/w5EQqmKEo33XubXeWnLEpmoEvdEC4n5cRovlrrQz6PoPDv6fR2zUXPIh7ODddkbXOPsN1Cwm5nDBIqIqGmmivkqFnE16C6jyu2PP8YANe/Wonu25vKh3M+TFJZDueWc3xwhl+dgxlKazVq3IafjvigonAXB+DkwkUJwLrHJPJshsLgRGj84dd73KauHcGIFnnYyjGw5bLxHACyEeS8fjk6FvK5oVt5f5Pw4KwzB1sPWqoDtNI4Z0lhPAAbocZRQnc5+2ETgqN489vFo2455zBPr8nS92D3cqqXI/Dhzepa6Ubo0J9pQcltNu+GUdTBDpeRRdNFb+FkAdrAliQMpnSfk1yZ26RpRlGdhMzeA22fSAcsBsQloytb/TJX5r/tL2HKvOLkKRJUKD0MUVoZE+oS7wJaMM8+IKhLrEiePmYL7GBgrEXRCmPZV95pRZSi44VQHokYkG11Pf7WWS1d3SIFWWT0mRuwQQxow/f1iKgos1uVMTW/Tv/aojhH9tsZf+/MyMythkbREa1bA6kouO63kWe1N/MKJlZQsa61QoxZFQcheFRnn164bxocZosvpatOWX1GA2ngnnNX0t8OKY28w/jHMXv90TqHYZB2UeKtwCsglJISo02TUOP/Ce0RRC4Y53LfUWuYYKgWELHQua+kkGMi3NxaAB5WgEsGpGZbVo3vd/fLoSvfDescmN50SZpdG4EIgdNJYTRpV1CBezM29ZBTSUyVYmYhYjOyz7tPsDNuTsoLujMjCc/iWRkKIVpDNUmQP38PksfKg20C9rY4HyYA9oSywFOR+EZhlAYZ282znie1gXEP5Wh8ZX7YNvf3lVV3PhAfKTERJnj4JVlOBKPvlG1b6nGsbHzjaMQDGpb45ipKYIkyH4I83pgoAaxhARWWXh0oxyCh4V882tS8fk/8ReNZ04QnXXJqi4Ks8ixf37kFjKxBFd3UspgP7/sLSY6Frmy/8MOqXE1DqNWy5t6Rxg/VJ+DL980+rp9eETqVuJ48wqp8WyN8uHPaJBzeiQODiWUOgn6ZYkcdHR/LVVJt3Hu9sl3S/vUdtorzDsA8eo2gICUFQ0+Hwzbx9cYYSiCDvvSkon2ukUkuJDNC3aN509YW1VITClYdrp2o4/fHaJ2dYbPF5ICWSX2uCdtqd7mqbEt1Low25UFvoe0JChjahn6W23Zu4FLESB6dITlOInMS+dxQXvwAQlwU1h6lmIchzlRgm0x2htvP8nRp/hV6eQb6Fo+PGoHdnowe3BCNXVznNMysoq1NMgnC6hRZCzFbE9Ui0RTg8vofa7H7+/EGc4wv7neZBuj4zYznzWpVDvx60NVN/A7mMX5QjBUjRDCh+gzzm4z8xFK/D68V1+jmY47oStlOJtn2Om94ZHNfaRYiADkSBroyTReGCFVRG+O3xopMeEf+C/ohMKW6pBHH+wjZ1OMlTNlNiihHR26bnBGOYWC+QxizeyVm+TQWTosZuIhd6DWgbms38R/q+ZCcRSByi+JynTifQKrH4/fxqvFtPEryTLr0KcNbocZFyaNGEyWdEQJ/7Lgnzeul9ATQTHuOCmrfTfEGC8LGA4wcWQPTAayDYjq9aWVKTPBCljG7Keq0uREUYnUES6aJDxum2V4hLCOdIS2QsNLZnpp00/Ia/p9ic4LqPjuJ6AS2DRHdfkl+A6A2huyt2rOFHaKK8JZJ/zwWBiNt+wHi80jT2IfjU9+s6xZUHiBwHwN340B+5EN4+jdkdjVbSqjMSOkUO0MqG1Y2fheNe3LXVDqyT7zANQcmBuJ+HAMFW7eldnwUZdwaM+JNB4RZXQU06NkPkjbAmQnleJc31nma/IGph6y3jUuq5s5oXK5LpjJ1fSvfgORuIflaQaCQc4w8hyjfbSinn/4yleYKnatjL9Dzun4Jl4IdAImdPkjiThz6pZ3qFxXl6I7dsHGhr8mbfEB0JnQF5m4u9mpY/nIIkO7ymhvLGFbYxMqkFP9P7ulQQxYl8z076+Yu8XK6INRP/iBTAfTQ9EvvUp2K3WFcnSqcpvVHblNjXDoAFqn3eEH02SXClr07mbHRgaidCa6wHWce42fuz+jKigBPMGAgSk4OCGE5QUY3n3oWmgsGOMtRYHmfNqDHZEUdgguX8Uyg82BKRJskdCwPTOZ1mrdg03Xi4YUnksB9VfwFSpN1FCzXPwBWL2mGoDWuwedBagXxzEm1DqnyRrSMaVeQ3l9TmqXAX/rM83pVVO+K2x8Oyi2runwGQk01NGSlepXw7OfH+1TjaaE81UgAoz9YjHWFqPQ+TmfkZ2SFCWC+6GTunA7XF8FV1QiE8nAseSONqxQMxTXFmCetQk/QYQiw77cVpSPsLWWvcJ5rDnNMVIT4KPOaRXkemn4aEWY/uPfY4q3W15fYJ5oapw2AWIE1RSBIbPZRfejYYcfjg6Ujy2jizitSsw053Ha2lV4KVEjltSYbj6ONhf91kqsvNjVhwt5goMf9CXfF61KNNOKvFS6mVCDArUimjCRmiCj2evVGmqwLQOwDSRf/sMeIuAiIbVVJ3U5+MO3f0JwOuLbgu29cEgIBQ0/J7zJSrn0shxsqT6Q8APGsoTqjb3f5pD1c0GCkp/OnRK3wc0V90BdkIsH9TOEzsAt3z3pinabTopyBCsd/z8vQzCzRpfCxqnTxwWzRzOElTZF9BWfNlHl/g30dfeHLdp3NMyaK+dj0t8RMCYS/nfHAvnpZw7nZDrzbUyYBp2soWWGlVJG7X4TsF3g9pAZGouY2V5K1ITmUXwteA877IivDYrUXLz0/RNN0P3eEZXTbooZmZE0Trn7t8j1oVdBmdvUWqBol/vRxwcjrGVw/pqCot7Z08C89XCDbfZ/UMHdz6p0aCJHaJA2QgbEWHHnhlmtbwejGVOe0tYDUJYaHGCjrx9gfCCPHnurzizkgkMwckBspZkEZvvTfQhXLkIbXLJIPt581Xo+DkXibpw+TRm4NP4HTri1kax0QUBJ4+Dd8K/ooO8Zm29XxDJz8YqqSimHb1nqJehDZLpvQBWoal1yPg42Nhxas3FwCUN3r21UrBcn1epXZaCtj3zOHr9VQVjXlTBlbEHufz3YMPaMkqYoJSOwL6zf8npEuzlxuPtljs6DRX7cHWlSFU7N0UYMU65Vz84Mmn6dyp6PL+lakRq9GYrpOss29Z6Yy4WjJExFMwpARAT7HXpdLmhAOQ6K4/BPGzeBoLdotcfcFy+XSEYV+NE2fzY/Wlm7ACsL8I9g7jrWD8IBI2/yts082KTBryoIphA/okjeuCYYb026dxGEcOfGIkl5dZGE9nWkiCdZDO/X6GSVP57PTCp6mmsFlDh1N5a1Ovkxf6vhmZh+v0sRsKCphu0wzL1VOOJAfzoBPnKGVz3iqWGPsikU5b2b9NXy60TtSsNs62oOsz/KT47MZX2vs4bn+2Jr+fcBMc6mXfMps5GHmm9txiBSUeWKBO7ijEs8JLvqL/liw36IcZkBUtKHqKkiY5yHdkNu2xjisEyMrjP92Vu5y/BzwYqP/9q8z8AKXh/KJiDKJjXF0gAmH/M5iAOW9+aAHzuws8pYEPJ5CMhj1V0nLmelct3zUdUvVbUGkgn3B4w128IWVO6VZUdVbOsKc8XhFCKfErOj4aRnxWsjBAAB7d2KftckvespSNwxKptUO3MpuPmyKnKDum2/F8KqOKO2R/DHbp7cXbPUBTV0UhiEaEF0rFl/VaniqAMADaMZjNYZQUTsbdftuRMHC6DDfYS+rGFFeXNBNNfLulpZPLU73nrNvXg3Sh+QDqsB63c+scF7cCfXjw5L+m3t0S8kKHin9ZhN96wIjbOHsYFoL/ntAaZPMwFpdRVTnZ6UqeX5FT5ylFKNlh+DD7WKkKJpLAEuMDxWw0wgzLmVH9G2W9AVGNQaVCevqAy7h+DZD21xb4iXearD1+9RTKHAaTpxM7sqPTbfNK0wl7kLPDh/9bZXp0wvJkm6YieukVbKc02IBsUXp+K7Ifty+RKANyl9QA3VElicJuBCtbBSbyRfJlHxRov1YSZZCVDPRMIbLCgJTRqKCQ2rJ8o4gPPmw5UvY/3uD6fMBLRSaPlS/ER8T81A4CL7qJ4p5HMD07EdmCrU6njfTEv5Tv/2nR32O+AAqBFdppJM9W4izo8DEF5nPYhJru9YYd2DYcK9RZlGp5fqBbuWCfbp1B2rtfteRErIQxqRblpK3ALeSB/i6GfYDP+SPRssSWzrIHVJmYBLYv1thlZ/jVlwWCg3rjBB1C7Ui1tDg9ecZzxw8yErOMZWQiW2TKP6GKa4o813rgZZcFnjY7PdMApT6DK+VfIizS7uxLwjW3X6Trz6x2umXG+9GQN3k9llegx3LdWJ9xcgR+yBqsKaT8dKW1Uw9mVFPXQB6Z1ZIYrhfByU+5qNQcny6a9fYG2hzrzOctdyT/E/BJwsjld/Th6zFASpJPBIF9IjtarOWijeWAxyUv2uAzyo6+MvTz6/yJyWPxgSiMubmn+tNbgXBR5x82NgrDnY7JfdzcnVo5SbAA5M6Nbch7Yzgs2J/EwaXhCZ++c7I+wKLKpL4WkGvSYHhThRtFVBfe9koKo/khNfthAN/XFIo1vzXCnsO2WxCVR72vjF1IEH8yoVp+KZ3s6LLZA+QU6vmkiEi8dniCzs52NXXGi5Xvq/RyRWD0zBeIvewkuZ1S0nHhUWSnOm6Q7d+QQSJJqEeRk4bE98uN61v0TGu4e16ruWbkkupNi4aRZ1NlLATtHbVea3sfozjcQ4IwWJmLdovVEw8BDwAOIygUkbM+9Bn8O1B8M1VDVkfRRJnCIsF3Z5S4nDyLJr+tgqUMJyOOsepIE+t4wRwMC99oCqcoFk7UVhnq0ZKAdtHNrJQrDsb48bToQiVGeIWpiwh8oSi/H/8Vl+sUIgmhUDfzCZ/nPO4xAJNGr1ha9FRlrCY5MZfFMUNHK/tHzY7IfHD7pjy7+UrjnmVuZs4j50MUzpYGmav0Zzyvec4R2w+EjcUsdEmK04ZTy4nO7RMqjNg5OMQYUYZAOV8tfNaKF1A0MJ4ysJEPRA9WErPvZDOPXKPQjye7biMAqVSrNTr4THLuSwNTQKqlQEUcV0wn9u/L8LkUgPwu01r4U/3fSKohvBU5ZFkaUEa5VT0hXtVirB5u990Cyg0RyVPR9ovvvGLsudf8+KNvvib/SQ8OjPCy7lAxtS87P/8naA0Wv1Yj7nDOdUP25S2d4u5HtnCpPjIVtJuTcrZLygch0zTtQcA463LQiN2UXimU+NiytalacyXsy5Em23ZZbSMFYL5tEjV8KsSRc0eEguCa6lQuBWpzRHK1+eVy6W9zX+evr4mETypZDc0/ej4COb4OkdkCh7GT6A5gWyuKLxZmX/X2JhuG+r9hAdf7L2LnZ+lzoBK6CpUCM5da/r8VuXoXuvtjz0xI2u49q/FYQrg2CRHkrf4LxMQue2nAzry0WzEbmjXAcS9h1auBs4PYGFTsODlegeTCi32AjwyolhVwHrIbTD0f7LqZaKzawAg2FBiyuxmTQexUjKf561IBZLNX9XN43+fdwpS/9EuQcgqzSY77qJ9xtY4Zx7LkOq2SaG0wWX9IUaLPQp7WYSKCiOFkSmrZ/yduxMJa2CGYoewIRxW83VSQxpQ0aHAkuIWIqlEqN9iqnHKZmwS/e+ANDzV7Qoh3tOE4+35bJzTe1rPfg/doMzpYxxsDh/0LhZsK6G+mElAjGSVF9w85cuQOebEM1u3lJZOVsF8xV854W1XqIZnfJby5y8bQPsK+h09v52L1tbixTBa1Y48W4p5xXEsrwgQ1yFFxICsufvxnpzwf9fGzgjWepBsKr+IsRLmo2tlfJ8prZwhZC2R0C2Cc2dakQFN1yxgBPXkjZjz7hPaKTYMBglu0RugKe0P1DaKNBH7s3lqH9q4womNZbhvsokj5bBugTL755bXEubVGNtV/h4ENCpRIuT4BB8vFzjYP43Qfr6JauZxqOpVNCOS2QtPxsiOiSnGBjPX0m2REYQXe8bp2Gh+Izthi4vxBagpcQ2B+Ozs1yL7rv3mVfMHVqXGVL4sQBBKzmFebg9MxxTSvkk/KLfCc2vX5D5Et0bJo2pl0UMF1GUrWcDZbMEKEb2yY30wsMdGerktoTSBtQJ4DMWjA3NSw3ZY7813Dne6NWeZr0hDDMh9qQx5D59SklyfIg76u1uhWyb5aU792RZIYSqKU1NMqdcJGIpU8R+YytdAZUa5o0feXkOXvDlNEh7t69bdV+a4bbJWVlpCJd1Fnv9h7BPVm3TVcG2EYM2J8tCMc6mQbkXEo6JZko45HrQ/OD5um/CY/EDLx+7hG8HroiQyxnBKb+aiPgs+BgpgGzbDQY2ccUTZjhLpp41nJCl1cm+y5JwbhVOgVh9pWQtFqeENfyZoIIITdH2OGcdhfdYKGZ42PeCsfFkAfTcmNFyUFmHGjGHEOJ1YbLiPbbccwVgc48+LhOit0ANe96Pc9T4E4AbO9MKBVdRTHs0BggolSHWlgFV6QDNi4oVp+aAPVUSDRLxN7VxANZlJJx88qBwWM1P84tjZ8SnyPtaMtCFPDDwvvz22GX+u/FPXxPGvLIo0w5dRlU4PjIR1Bk4+cq7i53gVsMRuXkaME63fzr3zXKV5LO4WjYuG9Nlplsgs6492CF4c83/OINdZs5IqYYA8PdzAJlWfsmwDM/MvqxEjRGHBVKXVEuNRZNbm2BwMyAOPjjBQegxHeZ0N1zuaxJ5dYPrvyUC6+ilFd3Yd4HW+sZXeYyxmdhGj/QeTCcjh3y6PBW41v0x3++kGA0fE4kPh7OadN0HpyxbhOXQRSXyqnoj/42UkOoFo79AwkGodyP1ZKHGUHFVlO7cS5JwhXf6zH1qiNsCTvNNZXrB3cbq6MzJczoaEMH+Qdqd0tmfCuvqNBQ/24+QUNGeEuDaoXy/5bW/vsJ5u0q3O4a+wC1zXts5WidI/Em0SreidkK+rvEhRyfI35klRso8VXCWPnaYyah1TFCxZkpOW6oW9CqSun5ub8jfDI9plwVKStxq6dsV7o23p95OfCtHrz9xefFydgFZHK5uyQY4z6FiZOBce0glDz2Lxx4QX1yvZrhTs9Av33Gg1K3V+drlwhrzyJvCLoTnDbLJBrrSvv95xnO/IgRsIF2JQaSzmULbPKiDrVM60bQey8q8srYXR/X8cMJ6KlhYXJ2x5iOmqvHcKD3op8QG2CWOWqg2aHJbhTzc8DLL9ltEcqcxF/TnDlagGQozZfhm90HetIYkGhh8j/DgtzktTRZwGrWNh0/KgKGLAro2oaYDSv4dJSo2e1HYxt993ZN5EKfw54CgBwFL2JZneIl1M44L1CMskkX+ai5+rIZqC8wT472JY+KLmDRrmd3EqHeuEnPkGJgg2uyr+wvjSNaJdAYnARS00+ikLXkpNUwnMU/nEko8lCEW2kt2yI4vmV2Vz4HVUFWyMgSE4fWnAA4hCZsmd2kZd8VOI4D5oXUJ5RYaagjtPAt5evzzfLc0KeTkunhIJwlFiRZ+hI0MOx3M88zmToUmQVg0FFvIQL2iEe3Vb9S11b065QrSK9ekhJvYijNR/qc3DQCNpbLvNd5L2plOdHeqTWWXYfH3Gg3wAqdsBVT8+6dsCpXkbWopmhV1YxfbvkQfKmpcakGXgV8XNFCQS6YF0FWpcMDi0C2EQ1kD57Sr1bo0R4ZTm9K1jeETofbO7OOqKj4KWxdj6DRYUQEnSRFeN2neiW0xq5aruWsJ9RJ6aWUY5r+sFIUYhtz8Q2JwfIa+0a9m9UaDfJb0lJPtEdd7vUhRia9oI6Eg06xPf/gRAt3wREjPsHMMsOFZjvj2bEMavdeN0Ngfe+QuCOip4kf9Qr2BAKF8EY43x2YNI5Vz0XmIH3NtntzP9YjoHA3fAwqZWlzXdrwkaLfyzSwdUQefTuDD6fFzbH3Mhtx2eht8+nuLMcT3ERd2cZ17vtQLNLHAW4Nbs+iQlwH3iO9P+G7VSZ81re2LdlMSwoPApNJrGB55igM03KZuJ8n7ZPHDdsFz8taB6mCzIUs4o9zJW7WqMDGfRqZ5qOgDwHKCukOnCRlsj5NGUrcgNVEWrMaEaWNfx9C40BNUzu7V6NPN92R2y2gpW+gcgKrFmAkzCKkso9FiPlQddzrdEewXITe2aGLPJrlbOoHeT4cVICy8ZeM3fYCyERwjI2IS++PeRHNNhljXPYEXuGrV5IoXxh+iIUgxtbE2pSbvyAWnI8UaB/ABxZ3zR9Y/uClhJBIBk7dGdF6hPMv4X1bInIc4s0d9oOIkCR9a8mAthso26tOeciVtbymfCqKX5nIjTox7tFFUhw1jh8jo51tTycX9lElwjq0mMQdh0I2s+kNOXxcxTP0XGr1cIIg8fRdjiei5oDUxP3O54Yytt/2e1fu1lzYsWT9u/WAWQaoRWWNAxKKyaintReptfEJYAAr9jgr4af854VklorokESwKvwHQ5arb8fHC5ZgzTxGsFDgJ3RlFHFVBhNwcRFEWu1UwyLYBdtkoPMZLCxQCiaghhmq4glbkgSdw3nyr/3NNrEM3eIWaeVoHV6uygUu3ufiiBmICcxR+1cvL7JnSoByfddEVv+4r1VDZYEbWj6eFKco5b0+CsWzIZqr9ZMH1kChB7Yr8QuB2UM/qM5/hlOqOtei4T1LBDlFAHXCpsXH2JZKo/upEXGad4kd1twiOdF3vdvWvzmqJgG0wtUP5thRhCP+P+x/oJC3RLHy6WSv1nNssixhIfafbbDEn71kQla1/RLbClwFJrTB8BrlhNIF8p4wRYTQd/m7bOghd41kiA3HSvQfVDuaP7pqC7FCm1lqvdnmtRJC5fq8lHuFc+AeXnmZdAEuBWIsvoXfa3XEfF6ZWkJot0kaYx50Uht+84Vk9KZa9PV+NU/QoLEBJTXkZmmIUc0dy2pZcGVC+pZbe53jtUjRPE5eg9uf7AoPMZZo2GYcLWiCbpAptfZ0gpLgtiXAlWYWqX4pl4f+ZZmbIpOOiNOwxr3LhWe3Ui3VfzYVIL0YwhwpIZh8jdP4a9twosV5FHfYN5qpW6KX/Fr1TgjWnrPYB+TOXx13X/eJoCrSW4d9OzPZq6oRwIuxOvuLHE58Jw1zQmr5C0BR6ZGXMwy+7X07zK76PF+s58i5/fiv0YMY6k/ByUAPXLpWyECjuS3ZzMdSlUu2PJa4aUlyjyNOcm4n3Ug4Iqn60ewNM2577WgvDjVTHZqFhumExHxneUfCyI6TITGFkR7UNn5uvqp0f0lv2F3VOevP35terU4hL6+HohOzeNqhUWD0Cv4Tf6CgOVz/bac8I4q24FMgno9bwXg88jWarPJtPK7HvTqiP9eDrv8OTQvCnR8Kz5lTO0HTaPk03yINA8wvIxrMBggQUUUrgInjnhoDtoitGAw+yR20f/CoYVeT3bxrMcO7aihcEwROcHyulu3ekURk+fJnl2bkAbe9ZiT5WnyVYrK2sw7MHa05UzoyLuEm/hJnYqh2U1p6kqFJ8JjtUiV8V8NXOfSzAY6Amk2eguvOB1ggi6dh4lK7EbiHv/IpNhfiLnlGm82J0bBF2magyW/+k6vb0DN2Muio7oHM0Wvv10vzCYzyTxJyUO9chtyPNVSUtQwtS9M3vT4aFl9/Xvyf9B//+gw2veT2i0npLDjaJDne+YSJkxkcmlUAaKYNanZyiYNV0mdkREvsNRV+2amsW/b55dADUl9isi0zuqRsxiwkIJiR/aFx2sVNTdYTxxVg9u9n4q2eVMNcSJM9ziDWe7g+oG6RBjE8gCcslVNc4qrk9qBxVCtalWg+GhdNKyyaxeBCAnCt3M5uFSF+RupeiDS/eEv0YXZvVnW6gcgf9mHW78L9I+oOzuM6bGjVzls7Vx8EGi68OmbEy5uA2jmCbGVeE1kwB0OnYshB/Zmdna2tkoaIkWkxcpepe5q+FxXDCwhkaAAy1sqRd+0lq44tHSd9N8ryqwY17Bbep0g+AvgjIbbstlc+rn6bTiejNRcWdOtLknpSKUkVmvfMdzDKy6d2mjZuup4fnAiEJdVPXZHzNzbKJ/iP66DWd2GcGCP8QKDAXI1RsJMUDHSdEu5lUYupixhVvhRUxYZwsOvP9qgonbDtTk2aguXra/HrYnIPnEIL7/wVJLu6bQfN0FFznh7BeOy2Ak3ynlAqWrHo5mGNR9IFJbrgZ02MeHpGhT9yft4rFnXC6FYyE+bL2krSpg/QluemEGyRJKeJzrLnubM0P83Snh46koet5IIkNLE9+VPI97rpuopfcCATXHv7NMcXIp5ikxXhDfiwA8KbYh1+ZHTHKm543jEqYAsk60463vw2FTArpjA+jZ/6T5g8e9JIswLMBjjGamj2rKySxx0hqxQVqK0ShKcgc1Y4ugrz0HL2r7UcWl54c2wRgSjytHHYWx6oQYJohskBHgqz8OPp86LDkcoppTry2dSRkvRIknW02tNpC+huYFHp2ar1lJHbvgb+DHO52w+lBsM60ynquNr/8+tYL6Wp34IOJuggghwFGLN4VIHVAJhk+12aDPVHGpKsjmlgQ9bp679uBShm5lDwF6kDTpbAscDQy2+7V+QudHVcOmo75QStjDG3/n6b8OywJnx2C2T4ABauJyYLLa8ihASD+ILsiHXBFSeShv4zuLfvtki9HehPAM4UUSD9CfngLGAT9c20ekJobI9MmgycGO+xZWhEk/ZQsGfwl628bkg+FsJue9v7fYYNf2pAyIDD6h1iESRYZC8Eg/FbI6bHA3zoBj2HMO0e8YAaDi2VdOcXH4NXkCOJP6AmktE9k0XAWQG65WBNoXS/UQdGsgtbLCZ2ntfLm/NuknwTOrjRedycFq//s68geaniRLURXKnrSgDAhfGGO7iZYPgVSdMhdofWor4RyQxcaYVDR//FdzSmWLfrXhiSNKpOKpZg2Pu5Buc4KCtG43YnCxecoMf8tBaiOHcKZPO6pAhjfWQxR2gctVQ+0ErY9E+kWNJgt7wg/Dlr03rV6jH8Hi4TrrjEmBdc//nfB1rZYLyb92uo6pjVcvBrAutV0qJFOTGq74Z+OVwTpAFKFTCwc9JN+XSlXZ1O5LWkyTRQVt7BZldwVkXEgEhUmrnmE5cr1xnJEs73OzxWzNpUK/Faz5QcAacWUMDOYQ5c6JFqHLg0aCmx/Oi/LrThcJLxw4ec7RZt9QzovQdCiErH725BiWr06QxEVTLfVkWbMyPSOOTof7hkULEj8v0j7iUU6ro3BwSzQX1TO8nSEXsnqT3uTBPki7B7zSRqT6gZVWN5q/0gF5fgpfPajQ0+l6kUApSLHV0f4JjGjNj/Es+36QgQCTgzbuYjnkRb2y8U+2OhNC4h9MvX7RfPlAkh8nf7yvPvt8gpGCUwipWYWD6aZXLyBFiyGytRPEQUUbb7yPF+y2D3/TyKbR29QLhAD+YzfZCqqj3l1w9TY6DEcQn8MfAo9vMNF5URf/510daXz9fOWCHh2djcfm2pb4AKFG4DxTXzKu5g6TmKnSUDAp8N4LcjqcF8tmeajbZCg2M51oIQyRsXtK5Z5nrNZcil4UOgLgZn2U9yke72ybO8iujPAfwJYVBgEebgk2QSbsbwL4KmTALUh+c9jIXV4TeNV8UeeA1hPhXiPeMr/uEt4f+jUsM/c0BkeMOzuoQB0atIAecVBUzGBjyR28ZXoeFZ+ZBzM1UiTqiHUW7/nlTcHxLPwL0td7aaLWE+/55JQo6pFvYgK9BIJgxXhPv9TMDTHH4NFolfHTZ8tu1gw3VpCMVq4JBmLRNa9nUwx8qNOlE4pkKAuW0IAnAqHn9xzRtHi9I46zFIn4X6Utmf1DX5+XwhK2I0Z3RL0gir1L14aSUKlMlbwC8gBwzc0YyvHU1wQsE0jJjXtWoL76zDiN8KV7BKTskkv0mMSpGk8ye6r9H4swWOmIw5i0iGDzYZRJ23CvN9cW9dQvMlZydFEv7rLCMAyIbl0ZcWC7/V1xRaRRG1Fs5HGHit13HnycM2TnUxHrhJ9J5HDM8blUFTCHmImysbjTWtyNOkCy5s+LQUobsStQ1ZyQR3xtX0al1WApH/CloG5aasZKe5oJnJf986Po2dH4NDR9Gaxc/OLLb+3IYEG+RdhPok/7+g+gWjPtz9551Uhx/JJFTLSl4aKViV9dSjs3cHjCZSVK/GtVxMAvuvZmNq16IQAvr6hZf6gaMfgHc5XqEDXII29RhZIfw3lJz528V0UdevpZAYhyWGJqkQEnFx/9sfSPHN8+svsLoYFanO5rc4HYGeFs/krR7jHY1hO6VEfYtVcxVGlWWqP1yVgpltsr2OwTlU1bZNYwgCJ6hnzIysf6/68LSon+ANbQq2fKRdAcuAV4vEiS3I2M4KlHBdfksSoBEONIUt3qD/FDKydGibOz6LM4Ybxw7HBPTBPltBSKXc6RE13v/LCtk558CDAtV0i5EkyNpVE9H6r1mnkJThz+z3bGrl52G4NG++nH55VKtV4SnA8RfBhNUJKK7YXIl3Gv76D+FqTgDqDbNJKPV7n9CWvVpfG0+9K7oX1eMVZpxVKO6aDKXt5xN8fq5NBgPreT09Lacpmji9of3FWvSe1CeFu4CR850PVCDF1GeCvtXC1wnFq7JG7GapuN8Gdp//Ejp4py/P8gKwo9DYTARzZ7n7AoBMSUbjVWh3ns6Rw4pMPr3fHhkLvDe1nulq4wsLD0ga4zK2L6WoEldTouHPwrmbQn16eOQ42jtAfVrT5+EuwH12xcQwKl1Z6XggIvjc7ub5HEe7VJU2dlXQ5ghRHiutn6IX9e6agrHjz8eIo1DvFH/W3HnA4ZvwNA06/TOHIbh7ErUFBwii8jZQxhmzbntm/Xo1YE/WBagNmZA2tIyEYwfcV+evYUcDAV3v4DVfeUGjAJYgr3LkuYEWq8SftbOqNGixd97QmGn3RIcJiFfdfEKbjv5v6z3RZVMhYxLbaBvKh1/HKM9AsoiSYloHYONBFZDSjoe0F9pO9g24MH6oUnXi+B9SfHlL6YDjmVWHOA0VfVD+lYPsxvTdD9', '4cd8ede2e61bc182fed71cc5f9d78d0b');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('RCK-f-iaMqXn,cVw8fPfKzaW75WFwpoo-R5nTn9ei40', 1437819453, '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', 'a473a42642420ea36a6baa54a5404317');

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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

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
(127, 'c91358c9', 'b04e1bda1bf64f56afdfae714a9368d4', 1437819072, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'oWA7QRVT7IGGFS9WmMPRPiAGXfD4FRfU8rsuaNlgYpM=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

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
(125, 1437819072, 127, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

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
(160, 1437742886, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(161, 1437808651, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=690;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=160;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
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
