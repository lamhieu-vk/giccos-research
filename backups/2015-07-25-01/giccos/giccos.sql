-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2015 at 05:03 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

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
(171, 1437836548, 'user', 15, 'add', '', 0, 'status', 141);

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
('GllmpKQg8W-,5o7SSVzB5P73f9NzkK2Pf3H4dZ1V8R9', 1437836553, 'bADKo0bkRchFoEjNULtiJ9WBmcyL0o62C8onZdl4jpnCzPygePl570FiW6hoCaciyJqvW791VeiPIgvsiZ3EKrxG81S/siFFMy0peif+NJ95Vw+RGgQJpis0pEpLieAYWpkcYdNkgAaAIl2lvDZOa96Yqk50uSgfz84NrGvxyO0gMzsIeKBo5pYSDwBa2VlM7TH38aAY+S/k+VTS7LrpHL6xzrhK24aKv6pd5VLmBLJS2yruN0rF2eRXBZBGPubp0Sf+NA5BkJ36OM6skUCTyy0eg+PP6MyyUR+93EJVEAXG7tpS16Y8wfBCM26LUlqx7buOhK93OcLPNBaEJuCTxt2S61WILpnQ+xEoCr2EftLLG1o0D2mFDK9YQ28CT1cclEfjqY4Rpc/yFbCCLdx0f8qr39STH9DDfmerhA/6ujoVuAgxYibNcahEDF8eaST+V0xGDQXTKdRMrjGhNVfdnF6OQNGfioKyxHlc5KGcDONmlyacHf3p98JhrklU2d75SSQ3XIXNkIcatLKUWd09gfS05ijak5xaJfTFzU5te96TuNiimT69LH8YuF4tnkT3VHchV15DRfHIGxIRPN23CbiXEIgQ1ZjGFYzk8bhX9j0umkG4gtIe9vDu/9avZIW7t8h2vA/ism9nKY6FTa0nsxmZ/hUORq2+1ZWEUsxNB9GbWpCoGn8Ihoq7xnhLZGMd1h4TW1mufgE5AW8HY+XtIyMx4RBPyKg+fYysziDDVoTbXtLksWYNgZeY7Tttdtd0QppjxES7QD0mVZb1d6PJZoAGP1/7CHxLeiLjSoei4KYIZeP0QQF6N9rmNWHSmOqeW0fc9aPp25d+2Wpy1/IWnkwi559V4ubiFG5PV1keRMWschrVoYLxTHlzxxskztJZYJNLoVMU6sG+OIiGx62Y1AO0Vke81D72G0YGL59VxHYzE1u4xot+u41IfgCJdl6LCRuQoNs0VS9ggSPeYU/Aqa7j2rfGSymIEA2JpL2IzjS5WDjEP9at3VgJPzIe7Vu7ZnhxPbpzwYcbqBQn9rL32D+WAiIR/QcWsYZmO1cjj+icDcmSJZ3Og7Th9oKBsj9iq7d9RWrTHN0kYu3iBAwGyGhiVU2C6yD5kvQHwFKcQrmfkTdxXuKG6QzyAxPuf7WszkW7FCWOI9BwCQRAH1YkIrX/tNNixMuF4Khrjje7vkciR4S0mt1i8I681yXYILvOpT6ThvbXMLexHWzhWc3PxpaomrrerAlpoyiq00xTsTsGtdttDnsuQ/BCZq/3P3h8hsizabj9+V0UsS5zyOSmcFMmcC68C8iTJK0F54r+W9AVYbf1wMDZfQy/XJwZIcV9DY9xpKwCkvKcBq0sG65p4PtAluX77cENdkimdDposAKUrJBcZjsuYizwfv5ffPCtGVHELK5v540AjOBKvDbHvfxH9H7V/WBQxH1zHViR10uzTTyrgtQNTRNikso5yzl2Q8I8HFqQgHAzPP/ofnRXt49h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7SEUt8Ypw+ar2JdOTIY3y5eI8bnrivaehTJ7rJ46gEQnJ1GV7yKHMjlA+WmPOV7KOp+KD0z+wQUtQk6y00Bil7YOTBIxLGc3+/3WNAd9DCroh/xFZWODqUdf0U/ZrzU9klaDr1YIvJf3WFhgUa0Xwe0N1HNQqRDM/zvX4b20rHsKRUrMPUu9AjAe6hV/PyfP67Ra7qW2GUfzW0EQLEDsD+aLyeyOY3M93h6qemS1w40nchPkxecQ9lnq/Rky3oFGVuRQXOyLgekPf+3+xqi6BAqCldfE3L4YyveZXXLIG58YOytlcZbv9/RY9GMZwa9QyGfDyJmJXSAxYO8+m7mPwwT0t5JKa2+zoG3Bb2gh8hMbYT8FofeXunnixlloiC9qo5y1WmV0jUhJ9/Dfu+9DaJUQ2XW/XgE5ZPr+Auc6RC9vCnQ3mFEOIrZn8Gjcl9G1fW8rdJoB/+2iCzMc7t8GSS1QSpEZrcgN3JRN99VW4cka1PhPoozTvj16tzxJ/a6HywOSsSCncXe4c220nmwz+MZveHJaMT07p5rUO68BQ6ILcpMTsSMrbcs0h0z3DoL8XQTDRPCEn8ReCqPSi57a4OT/wGpK5SMsnaYZDTW5wo8bWs93DtoR4fk0HRsNHBr4OVM7/vmZYawOVtmCoF0s1kc2wuVa8cYt+VCa0U0uXoKKbDdmp2KICyiZ+dBoeUdliBLY+Fj7Fs0ACzhDMfw0C4a1TXUgj1hRqpEP00J9iDqvQ3Ya7hoDWPs/06Ih/Ld8v8GsUb+xMHStKSij0gakPkNBCpELK44g38DDF8wglymipGviPiGoQr0ZlKZnEragQqJCWesQiAp8DKUXAkSFIVeXJTlc7HydZtxv1B13OzFOOH4KaR6v+egeoJ6KTw6W1UW5XrscQ8vcDxt48VomsKk2eIvqAaDcO0fX6IBFsVycwlK9caFzB8qWAme4txquMU6OueYnOccT6a0ixxGFZE2sbwPqetrmajMETYLyCgFySiWuSs5E8gofVb4uJE8YAqsXT3veW9PFxgYkCQcH40qkDMBWPtomZU/KC3euvvwj5tp3whysGjkff07T5U/Bbn0lNcjgAjVknc4WtzoXqnxY12pJPM9G3JVEhb7R1UDP3NVzPonmPW0/PP9e/zHegTDeoyIs93IraDSiZgjlqTDn8y9FftkkSLDzoD4O1zuKYW1c0WiSF5ugXjs84mbXKbwkvtRhEJCXA5x3IuiH+FRrTSxQ+HcoNc55f1AXn+gaRasoY6bCsbrggR7YillT0MXR6hfRGcI/aXSOSAbAk8oewGGlmZcf0F7Nj4iR4wYMVWkgTP8JuOVosGpFtCufdioV2ICLflritlZ6U0vz1em+VossyVUS76zwjsChMRMcp+v259nZ8amsNgyd2wegXUyUcGmIr4x82nEySuiNA2npK3kLBEUj5clmkq1Br6lxgwDDIK2zHV9j3+AWfIY5jnK9cx4eLgcwHdqcMLYa421EmPzlLnSvGS5zWii45d0oCW9DAGLJapiJYsk8jl7Br7Kyby1MrpF5qBnHvNh5gEbAbd/591Nb2pVrkromlQFHiwO4etN5SPvDqL5klDqJqVfUTyztYRlUwxSelvy4Zi7sDAktQBfB1SfCQQJ98/eBav2ui1jUECHoOEYsm4fmadGBViDCv+FelTkYhsF1/K04W1KfCKY9p+mJ/QeAeA+8rdScHpz+ztWG8+XDm2BGylMBvcxOnp6DHLK8sVoL9slxkPMc/QkAZQDmFILjtgdIY4wlL1Z7E21OiGuJFIhaT7bl9wGOaxHUZQ2hq4zUdngEnpD7mIfobCQTaJFKlzXe/VRsnHX6HGCyzXJHSvQ3LN+isl+D7hD2vj0Vok36SkqxB5Qx2wdkryLwlaWAYrevC/n+wCnnBtfOvpWNXVNlJc10lmjhEZyDwhCOnXpIoETonpEi7j+ipzZ1VYQXuLloiKtJic3Tep/M0JwvYDMSwHNfwCGivzNgAiNKw2esrLsHsLUxszmAXcLaWHn5rrOeQQ/s7kGs+yeDg8oaN1y1t1/VWVR6L8+EWqOAzSzdGpVJuJZ/hYFsF62kAtXFRux+FqdAfZH3nwCa06KiMkiiyeT22RF1FXg7IzpBksIF1LpNflilTNhLbPUQXa0BBdqjln6qft97YAaPBj0UFP0QpJasZHb83AE5PdkTB/HbXdm/FNg8LxycMcX+MmS36Vmsl/NwP7ylvHj+s07cth+hvMbVmuIyi9T18UgV+D3aU0/4g0RK0Jb2cZk91+6cF2tVEUEsWjA7/HuHETT2CLQJesexG6CW7HjfFtIcZWA03CWPR7tAajpzfmuMm5w/w1LPQ0KM96p6Zv4WR8gu4iifDBRf0FKb5SL9bWtqcCnPr33fni2OBxx/7CKb9KuWmXZYOC6TqkHGCLZCW4Tm67FIi5X16yXENCmle33z24GNHmRQXs2FY90ZyrbxmCyLYlQKSF2x5jfbYUHGq6RScrxTxNwa1x0Cb0pzwYsMewk6ahZ0nbroiRhOw+DgJOs5AuzOC1ND+pFEwYDxFgWifONDYKmRAbJW6KXYud9dNvoHAreY76E7Mnt3z4uFCVK6ktpv6c1Is88HKkNkCfN67X4I0taMNHzFRrGzuK9g4httuKJB+PXtwBjB0ABnQeqEcfXbt5VjFuJPGkPuBX8KRrJbSVBaRDyyzxDxvWEyIqtDBk94j+6Dk9gq6z0RyyjV24pOxQMG44z2SNgEiDq4Wxp7IqA1OSaery48cYn5fNtLkaDHswSnESBU2vjPRE3lfxpyZkbuoHCBhVRxRJWxeBsHu8wmaQur6Z1Bt4l/EOd6M3FWVb6wZDQaRh6vcsMTHI/K/jlcVFftPEkyfS6SY2HQsCy7VFS8d9VOBG2uaVCkUBQ8F1Q2ThYCngKPAPUFptfluXcORGRbG/jl9GzYao3sPPZ14CjdGNIifFg7HzZQ4g3R3D0ieUZ+VU/F8CCMzoHzNSjb0BBGjXggj98g70/8X97vhlXIxsi7GL6BaN690jCodJU2xHQ3UCl4b4YtMHpPNM+lxWdlV47UStxvvUtK1clhfpcJAmQdU5Cs8+ZIts1ALRq1B8f4Ur959Ou/ydU5PMCTMC8ySuWehvadLQx4UCobDKjfxnz+ewxXEOS/pATTqEoCN3cq2y2GDxOmx5jFAwPEYBGYQglWlAoNe6I60DkEFZwujD6Cuocq6XHMcnmOHrpG/4QRYvvLy41u4bn9J4v/MMF0WquGZWiWDrT7Id1nXPtpZRYgzBf1D08ek98nsTLdprhKk5khrjcz0fQpqp4rDqurj1yfmcJNoIX0Y0A238X02mxA1f/K4XmND8z+E7lU4xg1p/koIjppCiIDUBLjywkN58UFJWivd7nV+AYEKoBb+anBrsU+/uvGqQ/OeU93/F3qgtqM3fxf7H9daBIhSYXhwgD/DY75wLx/a1M2ngrCkoUQIOdsnYWUIgPsLwnc39s0Cyor7AxkZIRym81Im5+P1jLACQQqMjldlY3WBNCfTdWnNc903xf6Jpq4te7+HNg5y9Zfg/F7epkU4R4MIZ5q2WIfuOFqrYrk9wgg1h3gyqEFKiWa4KRWV7QI4+9Nfmo8ZiyQ/IJV5uj3tFEFcwHz+JU1tmAaXVhFVdjZ6m5YwgJU6y6181z9kpVszuUwG8Lrm/hd9o2Uc68xRY6PhkCwAL7rQJw8IzT5qFVpIEz/CbjlaLBqRbQrn3YqFdiAi35a4rZWelNL89Xopqk1hkYvWkeAaJHu9vI76/KCZX46b0cwRnQlD0WC7btyNbzgvEoAcr7sFzYe6Uz2zHZin3NFYEb0JXvEuSEYMWE0Pp61gPFWHf2CrB3ZTXjsqoS3V/a7sPGtbHK+uta8FAKh7XX0U6cAlRO7TOHJmfnKmkLsYvtyZebaIKz7/QuW4wHZKVzy3HAip+IaAaY2OojhxRtejD0DLwTmOyw2bePT0P+tqpALHe582n0PgZ1YRgODAlWG9wfW7H/N/Q8wrRG1+ShLpDvEekh1GcmZw04UaIs4ll0T6GfaVlAYa2R3shd080xmml4XQcw2s6yttbr+ayUvdcTwmTICBBwBjSUROkIcnR44jZB8nvfZfFYJURoEV9XVrkeTIAaXTvdfN4FhxEvR2N+Le3qy0Gv2NNiqODDXcJmXAx/1iwk5oQ8n2QPjdrL8VcdhT8NNFL9OhVO5iejGgdRickPN6u97Uj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXuIL3gFhqBH665hEXAQTNjTRnUaITHoELMii+/AtelNorPbGNazAmvisbTNEnBKbRqgqGqbB8bIuZn4GOw6O4Q+gKFqyL9ivY7ounEZAhI2VYq61VoHmCHbi4xZy7QTe2jzccJiWvIsjCEW5waMMFRPUbhD+LVCHcAqeXqj9EgD7Gnb3ujk0YZT7NrXo5aAXkWmA4Fc+eA7NmSwW9RdFYb6rKAiHjRaXa1QK3QcOpFjq65NukbLA/HlvEUd9AsW6eTqcBWez8MP8mtXdInfH6sE1qprn8d6o6+t7J7NKiI0COHNuflSsI3TWl95xwp7SHrhcy6H6VUn6ZVxvALKq26x2SQy+XpKtPh4oRjfuU+flqf41mxUFOCF8LuVegSHMvrRJUex2YjxioBelo9b7XX0f/RBm2ATRO4vaHvGosBzj7gsOW23QMeJT8D7vqBcZ8Y0qUx4Cf5bV/ncHnptC6EBdw7CxOycha9XI3rGudPUfP3YKzrcSbgVRNTpaTdlp/CsibhWv9Teno5D4/A3eylka7PMs6wqboZtA8f1l0I5HB4T2Ko4Rp//MiOapfJHmMI7ctxc4LkJBniTi8nndNWQ2FiOcqKAONrdHNVJa3nUaN3ccOp3h+AaSvrwQXyzOlYJYYyrn5fqtpvuaiSJ5+to6a5P05TcVlXO2rD1hMW5UcIOqzAnKn0ZnoR5hOOWuLm54MXvj209PkMLoR8YIE3P6+y8LKW8ROANocPvlzmDij07zu9Qh6MY+e4dq8sp/vweE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkEu5a7JbXIC99yOLYxlOYw+xieke5d7wpybryn+PkvWqVBpwvHrf0cZMBGo3xaY2ATvGlBO1sE44sPITBDPcqbd67DY9sp2KbpeHtm/Lxg/srCg/us8UtP6CPq66O0cU3tCrWUQpl9FP/JwtECJzoy90cRPq5c3fPvhn0u9oaznrgFYwPxhbAUwGs8Nt7+4R1Mr9iDLhnG7D96TGcV8pxRV7p9IGhpmEm38kP6JAwkjqvgAHrDjuJnRnWBd92eaT62i0Y30XF0FSDr1HKXYIYgrFMQUzQlfv1rCJxM+wNQLuCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w19/2+V7ovExdFrtc5UpZG4j2SMooMXeT2CY7qa0C0jO5DzP6B46sNrIhVLwQSPxdCFoiSkGGRR+n5/KOfI3I6xrw1kZjwNW/eHc7dhCJfATw0jNgqR1Rp56pt0raMgHNvXaItrRVAgeDE8f79z7WCy5WQvu+BbxF+FkkERfB2l5TL+NQDY8iYVNY2zihJPjQ2ErYKlw+BMDqshaL9sfIZefRxbW/Fa+SN9UX8itUdhvjTPvhRuuNxW3B+kDA5HfoxxtbCfoF7fRzgQZZNnctkBjFvtmWOa6w9Kfy1dMt8pzYl9c78GfvpSCQ6/siFC8k+CABEsng3g01plfwnmdiw5SyyoD73bYM56kPEzKfO5yp92UswiMOXlIpn/ZDySz/jGcih9g2pit1Mjr4RyVwP3pgQSjW3jHkOediRIc8h3KtnUy3clBnoCdBRRkrjbv3kkjYluUdYn2tPuaLWq+2MpBHoFo7MmUP/o31rrc2WE32pR15FFiaConPZQTBS8lrSyXlDqHaJVBG9O7szCUVw0GgDcY45qLa9dTxhv/l03mWHwKciUMlN/1nfRgqjlJMIYMAxUqmR2sIVIR+pHT+GTCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w18wkmeWcq3Guv8bO3fTgnaK5woeIqWoc8A7WnINVc6Fa/xSRPrhxCU5+6LQjah4sRBeoZwVvxT7R5E00mCUWP8BCtBG8NRgANYNLIvo/pA2XWHm3+ohgEzi3oNR179l2IiavxkdKBp6uGsr8JmXOm+jmwU1lnnxEnuVDGytMktMTXNmkYTj8G32ZViq9/YWoQwN6o5w/UM8o0hUoEgtmPyBPKUM6tb8+IVG7S28wV7XRhvf3129rtL/BJ1VHYo39KTxQfqTzpi3nWyehFg8Rh6cVxNLdGlrhLJE2z/sgEORNA7jctQ7B1ag736q3oH2WY/ILbCALM32BTIw8sK7ctHD1Ci0zsNZMFmzqwYLP8c5Jnb/8KNo4B5LGCotqI+qjXwr8DPZJynl+w2rvn8HGjXW1jUCDjGoq4iwaZTxOV5ZEGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEE4VvRCl7fgYmigjamMzCEiH0y/caiUqtBszVy4QGudRbwgzKZ7bDx+FFC8zGGDPIN3kFHkNvBbRaNQjL8Nk/Ld5AuQjZePwklc23O3khYzKPJj3S+4IUypaVUpQgjnXZE3tyHgPyVDCfqr6046ArLum7SW8Xorwuf6G/8Sj29ZNwePNmSQsSL+reSaPbOa1KHFm1X5fhq4MLQRuYXCYEPpRiYyZXFp2JlujaWn1RqGASqQOzKJDl47/Gl66XPhmma2Bt1y5hEV5I/MTZTmBRqUnSpesc5JZxUBdKjk0H63juj8nfM6caG1Mot1IxJN+UYgghrKB+2v10C7J1LX3x94JU7bvNjOZDIgaDqNvi5X9x2cgq5nevoC1FEPzeVMm1O1JcihJPwtuhmCioyMWVA4BttiAR45S8hNd2l5xPNxNQsQILCAlnmRH0mx3kn8i20wbVVv/2dqm5TWD52T0wLm3XGI5emCbLTQsJZyNgISpkWMt3ELbSOzSVX1cSsiZ9QSDcV40MHJw24zlbPy+tmuZzCHJN+s+Ov2C7pqBeWgYd/Oku4XJ1l3OTaJObpbjZV3173oiscCCGbeCPvRM+dFdEFYHkCnrPftdj4vQg2Zu3KsKqjY6hWwQhEuaJcdb7F5VOTO9qWXTXYe534wfyKiESu0X5oknl8/3NhToGc4zDuuXMGVR2v9O4ihGi4WqyN4GH48PlIvBb3WtMxXS4DG1P5u51fWl8HCNtpI5XfoUCW9WRW+oPJ98esS3dCkWwUd7DiXzcSbBCR0vexWDq1jjy3/sMabV1Vl4LKv46XTH72JBOy7kNB1S+KpN8OqIcG0J4jnF4veHmQfhH9SQq8z753zwC6F0PBAFcAxHXkRxLGODjwf4/n5rB+Lp4Bv1QigjsKnkyUCPJGdF1Z05t8TPAWYfALwLJG57iMRSOexnAIqzy01HHkS/jo3m74OJPYlgk6STMETeZqdeW+qcDHmWATctm6M33rq7jo/tpKmyQaTcUBWNEoqZZrv8D2lS+slrfpCMatyXHCbBT9ay/PHRLQt0/98ZwrOoPpmAkhiKJ4X1n1uXxn+pYubwtB4SyJr4JjN/0HlFFDkbo6xnQzgy7F4HbOrxRj3ZwtK6cWZABbPfY8oAiUfHpozl4InwOi9jTXzsxVBP30E6ZK+HkwS/f/+8Oy+5FPCpgmZ8it0Lt19yrwyzLROKYmMFbnd8XwyJvSzsIwwYEVgal/FvsFlTeVLgFvJpVIp8YTFdFTBtk50N6omCTiXC/RZAnTLKvoj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXuJ4M4z3ksam/K8r7C5W76ET2q9hS5tejuOa39+otN/weF3Kwhej/YgFuUsZHEYOvPTLs5ZGTgQV7sm8N6iwWriZnTKMCy3ienBPCh655Oj1gH5CUyM7Cz25nvcFVvwpAJBoqsh+wvNhN/ClgGPA+zw7H+t3hBMm/0J1ZYUsxshBIkg5YRSqMg/aws7GS3Z9lrbn4/y3Fd36b1FqJtEtsPWZDfXcZa9X8oqKn5eRFkM1rmWIFCtz5NqRvkJjA36Q8ctfxpqV6n+lA1VZMtSsU6ccsT+VSDiFLoAhMegGoKZLKoRpQ6kPJRq4TOPs+Icg+IP+dq5neVphUihCWDL7e/PSlXIf42RKPJ5M6pPG3aIA1TfPEskm5tqCE1OzFibg1DVy8RVRUWxlflq7JhZpvY7tnUp+AmlvKIcHM7r9OpLDZ9zBGxlkEOOHbmqtwnSDRpzqcIRM/b9HMrEvDr6JEbyjbBVc1oql/VmeyOre/ci01/SIQYYV6CTMHO63SyVPG4kWn7npMdTqXfNVS8vlAyX3/277c8xX6+6kUblWQM8f/bLMWcqh1eaQB1u6M43TbbEmx+b3eIwqvTqaDPbghlfMOpzGxfVa5CSOGrrAyyvDOD9OCldymYBurXxt3SRZB1fLtAomKyNR34Kn2T8X/U0/1qkamTw/SF70euTC79PCsBdJScXNAtEcgAIZB8o0FFGk9sZMRdnRBaFYZdM3S1gOoYtAtUnsC/UtnGihHD4yY+qyxQU5Lmia6wQmGVm9edJXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7YilqEguP56EiAimnlbl+D3BUjMV7zRsXr8AdX5x4npmejaldUZs5XJzMGqLoN0E+VWUghBrovoRSqtFKBfCnnRgZOHC6kfiYwr9N2E8el8lU5wEyHo+j9qJO167JpUnfhfgYTD0VJdCoyEoy2zWw+12aFGlWwU5raacF7VHWlYnbvJCr5ftiLykTv7E7WPpmmrAUq0EmYcx17Nm/0BSHbvGTODEH13lU5XSCjoyHJc139gM/dmOBZuBTWHsgZecLoaGyGdXr4DZXnolgci005oCwBxN0HVO8vEXZQ7b5RLJ2No/cnU9Mrtf1z7MpSjcWJYy0zHCxoMpPfrrHqhbENn06bE0ThA6P4vhb4gfNUgc87p2dJh6OmK08RDuIBC55oW1e2aYXkbbFOfB/F/lSC6BYCpw6gR2aVOcC0iY5qatHsk/HNd29bRwzJmL8kyJPUHIqwe5Zlnf/ztJQKPonbFVhbP0h+zY1zu823MtgOuOVKY3Aq99UXyV1Niuirwm9R2VYJwcDld16BSLbiFF4qVe/Xmghv2xMvbOhSqK5uxYiSheME6DjXDslK2l5SRpVxIMF20LlSp3QTDucThLuidbokF5Epf36oN+UHwmuJb7gRHmM0wGUC8lNVs9R3crG2f27G+94ODv6kTm95Kxw0naNjO6i8uFcdbjayOCOddui8BTaEFZRYzFgTX+kdhMMgCyHGfXkK8Q1sUi9yB1zWWC6/vN1akqA7V0Nxqr8uAmRwz4xrtLrQQp1Xyd1hRSG7Zg71spOWz+XHBEqdwVRdkKORwNYOkwPh5z1FLJOzx5SUW4icMwRgnlldnybZ1hSe5xbXcELKQNntd6rUxcSHNvgjh++aKVm7K8+FY3wqEZVDA5YYfDDo7kS/ef19656l9fzhlPSVSzOkXCPFxcbGZfAMm94T1hCuZOsVhsyZUi/ZLzM5E1MT7s8Ss4GI4+vdOen0Xj9c2SkT9+uFX6PNCp29+94RVR+NiGr5VaUc5HEay7eycj+mnbDBBif81dlV3QkV+bUdFo8DUXAcuzfIXhjN+ysmoLaEsLff2guJ1RANjmMq6lG9g6EJrN7Swo1FeqIqg18OzUI+lWDlve5+1ulkGtbjWiDNCRchCAUlr9i+Re5/z2mHWb5zfTxaZwMV2thVaSBM/wm45WiwakW0K592KhXYgIt+WuK2VnpTS/PV61Vnsds68FcHm4gU+vykl7s1STDwgjKWRFY5T3yFuV0AYueDgx9mdqHcFkSySpxDX2ly1t1AnN1gwwN+G/Pez3MiInikx9PMYTsO9RyxR3A6d3gx+N6cm3BdDvBkA3LptdgEn1DERW+ScBDMR97MWjuZL6d2qkGskT7cYMzZCKJw/hurlwD3xMrnizVV+RliPJj5BeKSxjAedCGoOkA7TibEvDzTaGBV7A37ubOH5SgmZ8AATDctwuVXvzIl3OFgk7G4bUuwN7twfzpT3nsKg/oOap8LuNAZwZHAH4iE6kgeJafIsJis8304u3mKqQsE4TVPQYkT2EHwKxFA4W697aCO4mc8KrZhENtvvYrLI4f7TBgnpJ4HVzvTbvJvlUuO0MW0eOwqsNpXZLANw7cZzpLDXbat4gCKxSpzoFpZbDbmW8GoKT8HYDmaooL/V8MV11ktDzomilNiN6ZSbuEQ7hps/69QuUAY9re5rCA9TKuapbh6wNwfSCN1t2eP08GPLj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXv4CKv7qEz0Y8gItxroai04TV2Lz92r8XBceIMHrpG1N8oCVXpgoAS/uDicR3C5sdd8VllR8+xC85Y7U1gRdUEYFiu1NpRDiWepIinP2RGlnvhDEpnAd/n36xQQwa1OIeBovRAhBZin9ZW08MIMUyTd9dFyGw8NOoIykUCrGJ4qLrIaHWkQcMSYQ1wE3fUI8cYdeNc/p+EuK7QWt4AthxJp3TKPxW91IY+mE6NgtBXFAA3V2kXfUN0m6OjmjKUC3p15s2CIMqc3wzs3nHiD/u8DzoT80ZIu8JtxG6RDNU8ZALiN/v6ANcnjvZmBdBO9pn5nqm2lW7VKGhNkclLVXB5ptCpRe2HXZPkXW7k+D/Phv46eEmryTPerb4ndmAUj9RAvrwqF5nIAiDdLz6pSNSVRk+xwisn6X2v3uFCk/aotijfF8fM2OJK04BY/9hfPPmmtFdbgSipjfe91O/pttsVA5ZPd39xRYjz/DpzVIoYSkqo899U7SaOUMJmr2J/S8REA0vHrE86grs+RJHHUE7JCqAAFwXUADfIpR8jLbJgEmK8k1e7e+yTJYAN3N39kAK9OP33itdZeUhOJV8Ppu1Q0S/XHr6ImPJBhzMs/DCvosyDCXh9Q0CVDOuTMyZoEVagyfyrzjTygY2n2ExbsjR9Xk35wAOHLdCCZW/JCudidh7u/HgQs96kYtu/N5OOqg5KVA/R82XjIiIg+uQqJKTs9r6HBCU0LuPfDrkPJlZtnVeznCOKp0c02jmKYhso/GIcp2hAlWLnIdC1jjm55O8fHjeo91Zt57sa47w6odbHrtUGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEugLL+PIMuIOkGNHS3X4Gv9bq+ydV+k6wz2Ocwo6F8N7nEyptarDpYnPaPGpsA95qCUpfXadRAGpea2Nef3QOZpDFAbR01zoLowmD/wHdzi3PMLLtBD/NPfwy9/kOOW1uSl8j5KWh+kuh6fP8GWYw1aoLaiXubnMGOA7nJa4bcyw++hqtfhwBv+qhD9LJj9KrF/PJz1WKXjziYZwU7MkbYuhVJnEFW5nI9+DdaYRtZpDYqwCz4yoCCaikX9ygimbk4H5RSPL6+YiqZbhWFKYUOMF2wclA9UNPWbAAEMiK72CW2h9hyQPu0v9BGslQUOZ5YJU3NmloePlNujByKSeetYUmy5+UdDR6SWIf5UGpuAzkNbbD1NgiZiJAWslGNGcxUB8Z8JKhaioLYNdhRQudtP8YxfkWxKKRaf5I4H4y1Habn/xYwOqXRYtZzP5xOhhwYYRYc2HuVRCcfM6SGOvxj9iSf0BBh3A+aHMGhq8FvIPcHWVM9oXU3Mj6AvZNEu2A5L5DvkskCezBa2Ld5E0ZlkibMAoLDKwifyoBiqnK5Hekq2F6PhO4myMHgC0N9pqttZmSdaVygKyqCNGn3KI9sO9+ppu0ycJPhMwfyDKdw5+uDOBItfS+GQRM7+ljl6+rw3BfgCNJYPt5GZ/u2T3jM0SMy2rlC8pK87b1OKCPerobCYwRQc9aRoK88kzybAMywJCcepne1NZwMrOdgqesLyK9Q5WW1ZNFxQ24jppArdnfHbGiob13Zi0ClaHczOFMCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w15G9X759D3Jtb6WWEiunhqaneploaY8BTd3PLnntgF0JoRpDLCVkjPUsdeyGnTjwlSD0n/QlHFNarNSVJOGpNQi8673C7zZ5pL5NG0c+l+ylshGgeeJHAxwuVS8g6D972I56oRCof7maYbzbaSYkiQ67lWFPNFjz8yKlPyqetfWayUxSZHCWgg0dgAwNn9cwIMWFxPUX3OmyMYGcjuSmMGT89LpPRL+S9YTFuu2/DXqcMRywgoshX+QH8ZN9dqBIQ4p0JcgxwBN3K06OKaUuw7lvV1IZfM89P8QCQVHayQoyp6yLJvZXhropj8g+zAY34hJ6XxbxMg73YDkErfqr8qPxZ2IJ8trAjyK5ARtReF7g1vKbltip4c/zVD0XgXhIoaWcdWZYgYdrPS2MYzvrXTqQy0T9E+sdNHtvcA9ZUfgnB+XASSA6ZCC2RLm5X+XB0QHJznRDGKmgsrEkJWSlk+Ik8qpSb3FJsKy59Rhk292Oxofe9fY5umChkdgIGrwnSAPSkBGZxQb74RMQJ/sLhCoEYzx1cHfDK/GTVw3LrmkTKvDmefRmoS6XEMxXvYopGgTzpR4FHOYRnsmP5lf0+wvdFeXmgfcFOWn22m/t9qItaBtyh7yEa0fsPFSTJHkpR5BzNw7We0XRw91y/Xus2bm1gOC4N30PtD1V1wCVCrXAqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNrzCdsccF6jDMb0EZHNwSm30nLGlGoyOQMm7X+FbhIeRtShK9HEwcjLEp2Mhys7nbfoRJQr895WS/65cZ+U8vztyLf7kGkHNhRiaiYO9eIUMLNKLGWWHlpDtWNEPj/7DZFXlwio+qXNhqbzeDX4AWeQCuXok85q7neLXC2zQR00UBOahp2mJ2yxzs+lldPCzdJP/ipJqtd7Tc1j1o5DMsBtLUVD9p7ChYOSdJkS7FbB9dc5qi7ap1z6c51Y3bU/KekKBA2pIHfhOGxlwC7rsydG2ZPXWiLdVpVnyfn+MsPT9GcUyZbyBnjJDfRGv337LbG1pevkb3/L6Zcmv/QfU2Msh15bKog0Hzqqk7tauKOsWUB0TQX4BcoS41GSIQePj7AlTa6r8dNNz9J8VPcxW1DGza6R9ZNzJIa1XKNNZ21peArsOYl5ObF/s5Degum/IG9ydeFNklZjzwwpnqCbg+cUOE1Ak47hoiAEBesOJPBtQhmHBCbqJpQkGxBxstmqphVS79fBM+91h2YFc43c+4MtBdVVYgnf5gAUE2J1dQXzvbNnM1FFv3z8GU8d+3iOZe8QvYysgMC6INvCkWEm1nxwN46elgPqY0sYJqEB5nZ5sq9VPMPfLYeGuFHvkWZX9c4U9+44TgB6JRnXDephthXcmHZWf/uEcXqJ3s4HlDnWqHbL1GL8uwJjMD6ORuIk0WPHV0KCxODVj3RZD71yiRFmmdgZak5vc02SMj6yCE16z2oLk7dTDB2RTpirEYbOhCogb/jjQJNRgju/y38eJKkNBKp2EBVVf3dqOnjdCgrNB4BmCyPNHxnzhb7aV0mrGOjkF9+/AvMUx6E1YfnlcNAiJpnGTyGypx1g6sWz/dxQO5Oa5507j5auvBNdLCJBekLPOlW+9H3HW84CoY0X/VDUvtEy0j/B32rWdlQ8uhk0EeD4hG2TzobEu2E3ds/2bnp34labKFWp+F/8yTLQ6XlUK4bHHPf6Zqnrh15ilXE5dNoF6PBKNmF9dtW1542vcdLnZCPoOlUZkxBl9kL3ZebjhwI9wVGC1+1rSgXBFYbmepUlwL3M1NEkTUV+InNOfRA7EK6UBsGmjvv+WAzKNM2YB0wCpusYsaoRqBKq7KI9Bl6BlnCvYCrut49W07AhDABfEsYGQ1pl/9ndyakcPivaDo5IQUBH9UQdMwxEM11WnSmpFPVVveae64xd5GeOatjBT+PJq1yuKCfmU8NVk/1zsymQ+0skTAFS6aBZ5GNv/SfdX5nJ5MNwP/ovonRN7ZIwRRInK/zSfnuXZjo4qNF16vjAPPS9a8K9kAp0L/rYOEdeJn0B8IVqnjo346VOkAgkkNyMQFHKszoqF7EIEkDkGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEvT+gmSwKiSwy3iz2/h/iW0Ci7ws7pUDloqSuVgIRRXpNiC4aSYUAmIMelTj5op8eJ7lPNfhf9kvTOL+pI3zFMrUtAu8iO8erfMYcPpujfpaAKmlSeiB/LMkyi3L/a3OIOMbs4hU7unybFfXTIyXSXaiVbqje2vGvzMhpUDstf7Y+zd25E0sRJKjRfoPLQzMitV3CIF9eQb89uyhjeRcXv5dZqTviA0rMDrzU/AplYDpS0LOyV7i52VMQ2U9PTWdgwMtMooM3qmxXEgN6egyJRTfZmZA/LyamCXar6IGqErUz+Tl/Fo1gC/AnFpxsuXii9bD9OdIW74wV3MMc2UvyAdwlpZajE7mCV7kvAa873n3T6hKBIf05pmRvbzRnmyuuajvIOAG51cgZ7/vxaPQe6D6od7ppMaPRKfk65iZ9FRE0Q7XF4KxSQO+1hLUHPVpLp/LzyolB5sQ8NT452D19+O2p+qu+gzunbK3Awl89UXz8Zvl/ZrH25KmD5CmCNIaSL42dYZ2kKcmne4ISNKsvqVJ52+FODJKXyzFF4y5NIMDE7yEeeJDdNpi8m/BeAjMPmPrwe+7KelD6c6+30M7QbN0kIyhp45n8mqHxIcB4zIUTCJpAaGffoCXJdBrpXEovy5BC3Mu4GGpngyX/r1b+KkClZ6PH4IMtGSVM8JtOo058AiZOdPmPe/yo/PFvC1tNYLojfwbIUr5YTuBT6CrZhEGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEECNvdx5JgVr556ZJIVO4GqwdeM7dxD7ZcxcjNNSZTXnSkmgVfhrmoBw1U6h8zfvVr9XMKDYdouemJTVd963k1N9hnMsJmrDa0Ux9eY2WYXNaoCIUj2J4yJ7BRUrLNXsmISZUEqUblmVe1okN5O472R5zJnKU8Ik/VVXL+CAmJfFZ4VS1NHY4o6zy41fzYf6YpWi9GvDNP0pIXAlHGdZzgWL7hGbeJTaWfLVCQjNVp5/KUTN4fIaxGw58F3TvJt1dngm/VYrIL/hoyi0uXZac10u5/gizbOuEIqpl8SF1IJq+k5/QjyXuC4Yp27In5sTxfXvKoGQJjz3M6gKm8KVI8cUodb5c9HHYpBC0D4YockZOyW3yG5YLMj/qm/5vbM/ZDNknzlAb4i+MFqd1yJZskbGykiAjEgUWlFPjlXrE3g/sPF3Up27Cum8OqSPhV5aoz7R6vt/WoKZyW0KPPMc+FvbsxKad1KjEoOg7akYjOvp8ySYo+g2PJ3e1ARpWDqZ/j5qoHy9V9D5Z2HR+6ahdqr5ANAomfUOAjixs4+wZciiIMKn2/c2gSOzFDlQTUYin18RzgWKHd5G1gepSYH5xLe939zpBny4R1QeKEBEO40wXerEK8tfi4ppwXRKvXhAfquYPhjiEsCIt8omBqElinnoMI1mhedkC9ut4LXAR7XuPXwhK5Q6NtuKajz5wan9RYJbituVo3rbfVQ+mNTCtMUD6CoT42fleJcB8brPA8A9K8ZvfYtu8qjVUbGApYV2ndj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXsjORV7UfrOAse0nyOLCD0/0Ot12X7kNCw2li1gAZ5Wyi4Z7nvBbQtvRb82yrBnaZgMX79HzUpmZmhh1AyHo9OuzTg24BH1htx6NcZ9d2aBKErN1zLzavj/9EW5obVXwDpiqkxkqFaWH1TCQscR5zb/U/fjKY2d+iW9piUgumOA6TYcV/cj5fw3WD/10axZFkaOOG/X7+QVmXHss+6J69xXceB7fdhDGrTiUhURwk/rjS4KdgAWHDQ9Tpzk91dvUo4n5v+NDwvfRbgp4g7ofcC0wGJAX4S8ISNNMJTlP2q/WQ7+yBi60zD83ugy2PTydzPaJOvQphGfbugJXPUYDifPtvUkhQspiBUlP8eYyUnqOJs1kPXBH/sK3ipLHUUjd/65Ue+N931h6ywfOPE+sCUj3lgLaCn+egBL4LEhPIuVewjOUUfSO6OBZDfKqfRXFL85xd+6Ox7F3Vgp2P/r76ycZGrfVe/Rj/q5j1Vr/xv9vU0LkplxSvUMP2wL7F/2v4SXZhxZKEpRWVX20fkWc75rEMkkBN0pUOSpJd3TMt5q1y1MGcye2blf8RzF3+xo8aeXy9aQ7UpZL39MX3ecj9bKVJ78gBX767sIXul2w51vMA/JRZ/kOsqfMzpKDJ/Y1RvHgJIi4G7+26sEKCXkhEv/JKcE1hjD0QTuzec4dDB3YxNN7mNlXr4T9T8nYlN+ig5yss8/K1xli/llj2nCIOo0RnO3f6T09M9ZwScV5jniawmgBOJ4sJoXS37Nb5MOYU6Gxn3uPTJMIMqGKBOdazGMiPKMTOiLL9uSNL8Jxj+lN9DQoz3qnpm/hZHyC7iKJ8MFF/QUpvlIv1ta2pwKc+vfnzA8DPNf7uBrrclaBYTe3MZhEG16mGMBAzHgxvukqt5OWBOVtmVblXybakJmWQXJtUtm52q22cJW2bQJxcCPecxpnFCFlSzNoqfmEiOVf48Zw8HIhyMecdPvte0s0jWvJoWy0X2kev9CsMSuj26ZzZdRD4/kcn5+6NL0wz+b4YWcgdVk96+GZfIeQjxfAfvr+X82k2/yhuizTPASbjcPpahfPnja376oyJr08HpA1vHPRjKLai3iBC+R1wXGDcd2nLW+eWpckJTvTeKXtPVjfLHwuLebeaOs7plxkogF0HNmmVcy9tGzQOQlK79CcnSXM0tcTDBFG+1bGuYSgQ90MQVJ5iG5aRxzmv/qs+BunWW0fGbEi/tEWfMwTyZkAkVJ5jGqMvaqvPtwYcD40cUJ+wCY77YRs4uJ2SbUY6jnpxIeE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkIlwagE0+x8RAo197SWg4Cbz1xBAkj8ADHIDP/ra88Zs00ccAJXDMsuJv0z6GBNZe+ewJ1H1vUBnoHvK03Dce2P+kdL3JrJQddJ+ughCsunSpLmFRuTHtbbz0MJc4mSsUOy9Gb9Tb0Wx8LAO4fW9S+pIbR93GlLD5DIape6ysErTci3/L522QJDtTPApTIk0qenuj0YrLeSXIn0uOsmXF+bd7Ayx5ua8rizM4YEsf6M9iNJAYsAJk1WCx9apV6anZAZMWrxH/NIdQDf3iGzJ2rLkL1GSwnJHEhBbX1w44NmMAFyQPNJQWh+ifBCd9kWBa5S27yKlsfMrSgCtQjblY5pfniiAcRgoApZtCPTM+W5NCfzUJKa5r1R8tIwyhNHhFSrp40kIJb9a7yRHfet1mq/A89eo3ObXlV9t78Kj2jJbHwenpNr9qnAFafm5pZVIo7wV5v2qGNJUfST+sbwSPOkOOLWohGjECU2Ve/oZF5Sm7WDn1EBl5eaD0JVvzJbGy7V51vCaa7sfmAXHFfyVJwFcAqSIzPbY2z8cnPx2wCbmYG0FAYeqdH3zUs9WEqRDM6khxfJbBmXdd0k8aMez+18a8zh4RokZiKLP34wa8hS+vNg4zKENz8YnIDyNAtg5hHWE0fzQMgS85CUCTPSoKkR4ChCorrjlE8FxeMDC80JrCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w3aucR94KKPL41igLy7MZqadMz+KNpbVgTgNQu5WqIJXqjQwL9xhrqNiDQzICH48imEmC69WkMe2NRsl+O9mMIGqmx+PngNNthrv3OP7APSjOqXyntxCYz2/DPNtsZ9a4+y0Qev3u3VYZNh+awTzmCKlmgIRM4/rlRIx+YqrJQbn3qTm0+C/Ghpats2jHCNefMc2Bb5BxyVMqI6uFi3cpfL5g+rS3HsHfV1Vlshnqc5UQURN1rjUr/Ubh0IX1AEIDRtIu+q6ILuYpOVFJRe3tzb+DdO+RjEabhlfQ/SdPCgIBMINCfPhbLX32pGKInjUjqNDx5KyFKIfgYL0+0STNFzOSU//CPYKQ2hh9iP9upeFtGU/9BVrt8+/LrjYMDL6c8dfIQho6Kgy9bIPqJqKxYhZsKS6UTHvzEuUedZp3dmVIWXeW1103fM9CCrqLljaFZwRpkjMHPpoeFijueWqqKJzEt0EikREOLLutZ2rHU1Hebk+vLgcZDq4U/Lai4Vk6H9yj1q+icO3fZegw+XZRFVoRbkjmyqF1YqcRQsz8xQ6EmyQZVJOhjL13fTe7cRA7Vj1vhdAxFyjRsEPacDyFFlDL2OvZ+ky9zSF3GRW22kjKAvK9u2c5P/ev43AvimY/fXAHJpDJH/PfVB0GwVlLxGXW18YvM/+M0CFXUjNmIeL9cugurWZ9nYTh08QQX5iW+/zo4vw9JjqJU7L+KzYu57fu+QERvjRtyFd+MlujaiwMDYogjRpTeCTLlitVwfpZcbDwJOa2mdeQMktZwovAdXNfz5VRIIc0WQuyhcBMMTYB4T2Ko4Rp//MiOapfJHmMI7ctxc4LkJBniTi8nndNWQDa5+5IKFkDZZW19wn/Ge+HP+aOTtrwijTwDCMcE21G0eGaclSKIaxL0B1ZdhaIhDGatb/HF6rKu1g9qYP0a9fOKysUUuQWLWX3IzCbvFNpLF0zC38IO+ZkomG3V/xvDiKIDE/9bE97tczNXJNeb5qruJnBWJaqQBME8xbKYOPXhRnxgOez6ZO36VZdYwqXbworsCINTuchoOVMg8C/3DToHo1PuQ9Xhqq9c40x7Mp4nlu8YheSPSAyj9QbmthHMoMqlFfrv2/Qiu+f5x4c87OfjpokIO2YrgM+MRTkOtE7+b0SJW5vAY7Se8C5qv6FBJLbRoP2xSeJKdtTOH7/u+lAqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNULUpy+5ZZ25HmXQ7zVFSiiv6ofkh+dCGcUWHNgTNj9B8xV737JunHhGLtYRzldeV8hobImsam8aL3o3g6Ys+OVY+nYIMJckN1GSaFrcvxvJj436hnpH3Oh6YQeVvCANdWoTV2IdW6B3JU4Fdlgir2Seh0oUMoDLTnjCtntYp4zU28YUrnZj2px6UmiTY0U4eeNf+w+SbFq1/tic9G5hlvH/l82PY5LE6LeJwb0bMvN5SwaGbGW6VeF2M4msx7mHvjTyzmDv135etOcagVzQH1h8WcgxmtPSYYm4UAEdJcekRzBexOOKkEe9b/MfJ0dwJTsHU414W4niwrrdNVQbj5lkTD2sZO2AOPSJgEqrmu8xFnyEg/+LSMc507YRq2uDuHlSlMxtZtJTSOo92td4ZVSboz2ka2mmoGT8+a1ad+HCLmKwWhcOisGvFlERdcHephkNVSxHQFWYJxz/W8GncuFqxKtBxmBtgU7Eg40kpN/VeZmB7QWUeff5+f5revIR5jeu7D6ZoQjhO+vCNmfCdKpYUSrmIsUzsCNIDy49JkwuBPebwa0gVCy5YGlS9+MXaDxDln6rVmwDe34Jhz/GaSRYCtCRaXp4qNL9RkIG6TCH5gXI23F4exLgh9C3gpWrejd1mg5XLFGXHswOR+yIZf5U5rt+Ia2upf+t1oFx5Jp0d35CzuA6mFb6MGhOqYQxvjdv2yPmJLA2QgpSWC6jgSU6e5ZuRh1t74YVJ3QkAX2229DYZF0xmNh2KyCmmcFZ0wTryWLch04asNrlJL3T86qDmt6PnRCwjLXHmfqeHqs7EO7w/ZZ20/z71fPlHPOwmWZDKrpVrJQkxbWodIbNcz6wXPOsh2GgRDpIsw5KVKnNw4lNdNfSyBzK7d+gE2KofIFqoZ1CwXqvy/gcSMw/82fgzbzfTwZJSwbJKDQBBv7D6mknwa/wsQ2FyKuSCUROjGLu3rxY0dAk0BQLhfiUCE2VTC/caaodGFVNeMPvunUUcyxEiLe1hEYHhSduLxY4nj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXuy5+1hZOgE0gzzySE1GjnEPGM7aqaOUlLjbmYCUiBA+85yPdjG5BUU+CxUydUQp6s4xy3sgSx3hkDCPJptdtvb1IbYMBVjs5QwA9xKsn9BMAxjxFqwpMzXg7dmzC9yWkyFrmPKemhjsIE1vgV4oKbSbpZVaSeWsQDVb2EBO38seV2vL61WlIU/YtqR7maq9Xj6pszGPzkMtKHbKZrtxcJ4DT5VvrV3jGXWfqeXnNDWjngJxqhgw9BBlbPXN2yxmkmWy3qNwUO0ZMxmFdNwJKbxgGbl1aAekEIgl+xnCvj2D+nPr5PRPX/Q7gHxdzyYRRE8U+JHtr7gaik/41fEvtcm4v09HmRb7zP0yZKHTyZFfUfwi5A61zkWjvWurMyQIIyGNddCC63MT0jIQQieFJ8Pah5PATHyZ6QPLf+XICTNA9eORKXobzo1aXP0k6kHQWO9yPa+RbUAIz52D108vaU4ZR/oUW0SxhRoa2dsKdYmIPWZAbWwh3MbTGLVMPZYO0qKEopcUWynE1eMOWm2RnNTXaKgLIJf3qfMZRXb7W0x9ig2y0rKsuaxhmkDI6OQJ97yWMZPoesa2gmtK8k54zl2nX+RPJnjDwE6vViK1q99AZm1JldsokurX3Gbbuxd+6mNb9uhdvwjQY7/ioksrP+iiJTDwornDUnNZ353MQUX2zlsyh35Ah3INy5liQ+gNdCZ2jFOhDPdRgEylU1OCYjKzHHLp8Qujuf3o8xmvV8EOxaec0q2CoNfwb5S5s6hwM40x4q+QHO3BU0Tz+CWxXfocVx1FUpKXMtZJeqCgBd1887SJqCqGXkEG3+Pyj9IzyALgayJK5b7hAnugtFtnMjtS42gclOivw5lkTaqHBjDANHjO+ESxAgNYucV4bdPDixJXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7YilnyVaeh0ESEV+YO4J554AP03kZwXpAQ24s1ioCswsyGpTvNmsUXi0SY51QFkB/AmK13TBWvync/XLE3zo1jefzdWBLDPGTiZQdK9dqD1s/Db9BYkcGVy7/DKDulX+pDNMBEdjiFpAeBzkzQlNWAKTUMkulcNyTfUodOcHSu2Jhfht3IcY3nt3BJHlwRpkPfTb5nsJFEmrO/Ryip8jzr1aebThdKNfUFxYWwDlAOfYjRHqrnD85Qp8b+2529gutYAVMcsD44faYvLhg1emLDUuk7zMEaVUJNa0u6zm7PQ72L4Z2loeXZb9fuom2MpHyI7wFNj1+s75IrmJSP1jtwPtPvF8OlbIXGIKnYdvSOFCKRs6xF+9c9jzxy8BSOjAsbINn/nI5skfC2RH3n+nz5VgF2Y/gE1ys8/A5kp5jTkBb52ysEsGfF2lt2IM1E/P45dmLfxWEg7eUUpt+0pHzUzrz8HE/72dhdE5eXl1WV01NaI3HgBrZV2q8utT1uhMeIWfRf73zlmhwkKIJ9JvfOkzq80zcO+WKvVl1xVhfSKts49i40WIcWHIlqfcX4I4wBugsfx08HlGu00FbRm9vaPvCN+94RVR+NiGr5VaUc5HEay7eycj+mnbDBBif81dlV3QobUVlWWhxP/g1ugHkCPEoW8ZpEFDHeUIwyXhOCpcZdBOFi6Q9ZxEZoXAX3eE5ILXIyiNBjSrF2OIex2tewLoOZAUUTFjWWyzzy1MT8zMiHtmEbb7HqLVjlA3q1+7UW9dxVaSBM/wm45WiwakW0K592KhXYgIt+WuK2VnpTS/PV6h8Ki/oXAbfVvdNr+8Ohkem6QAxWgRt6V06GXCJqbIWPDYEvlgF3SRkQTQyufePgKzBGm3Ekdt5QacK+pYdqDSVtDBE1pP5JbfBxAGnjvWH+WZEE6UWdxAP9b1qh/WUuzdY/n6hJb6s/Fq+KcKjpNc8jmbqRlynVicun4gBhKZVaSZXhYvzWAk/husFM+z4Txdj/ArmOEQ5vHmAYcwRH5YR7lM3FoPrHgnvVJ9epVeIDr6nZDngxXQow9k8dykFA83iBok9qwwnqosbic6HMZSD7K4OuA3YW4e3f3JFexD8giVG/3Cq9sh7NSlBQ9XyS/gGCPcLH80RP+AvnFdUhuW5XBA/0MVMKC+9h7/fOOrKUAYGNbat3LnpgTwRAUkBRUC02nl8toL0uaql+FyCC6hmPBzzZBWNX5hp5tFnlBV3aXKSHftpRcsLN3g82b25nwUj5AsOd2aMoz3gNarFnvCT1kuCwhmCAjwQDERETzo9qBz8iWFJjSWtk/vsqURBsNEubd42967V8zlllpCicXiMLcxzzPp+v3jEiNoAgg/KJu/ng6nzlJwZGyNH0it/0+16OYwTyfVemLU1XCeBqaNwqxxif15NzvnZ00djiI20rcK7qFGoFxYf8kqLsPEVuRTGWIvQeVDfNFx/gtClGV9D2wN5qKWF267VfV6zOfkmjigWFLCOTK2xTaG4OM41CfJwV61kfOjsKDQiUNf2Jpbe0n+AqQMlT4hvjnNRuy4nDwg6n/3OEf/Vj4ausslgAHj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXuzSJ72fV2S/uEkPrubHEpBEcgRgntpxTh9GGgU9TUZv03MZtSthNivZf5EjIvUl4cGsQ0ur8ux6ww+W9cX5oAyCCjVWRqQ3lxEexDhEqtCDywrXWJ/8cVqsjpadrShXVtspUshnpE6CQVPe/2qi8ylUg92rRnu1aYi0saVd/Dr/FjVTU4ICaCQwEsbXqjjNiKFcIX+KYpLbFQfBvh83BJEZm3jpV6xZmMnaXt12sP5qz7AJVGaKo4yU1mNCxKfsiDKd3IJU1hXJzC+c2xB+SPmbkFk0RKWhaCZkSRbTfesFSAO7U2WtelNcVnJiIJV6YOuqmECPYtSlkSt15JIt2GEM+CijPe62qAxcW3wLZH+sCL/RN8GDE3H0wm5SyPOXkKxn8GXz/gcIEHaJ3SsByxvA7gqdHgBDofPBf1Rh3Olavnt6vlhWsLKnlBXPJ79oLcdDnvwrANanoSXx1ABbYA+EVcG/q6x7W2MLJ/hULcr45B4XdAn9H2hC/3mZ8IlwkcnC4BOOv+lWG/AdDId8AUXmI+zKP+LvM3P6EW3QHGH+77KI29mi7u8uoJec7L4+jAEKrsxKVbLB/MpV2KhZmq4PVlnDlKCs+hJB0EmHC/5DR9YqoSWVVWG8FrveEo0XOn0dUesFEAuJ0G5TQ3el3/b7KtfhJSBS5hDCOM0q1ceCUlc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKWK5qYqT1X1QM1WqbuCAuqK1fWoLMo0kC/OCFvOKoYUeCEYZZX23wDgd1Sjc3l0hUfRkggv1s/lsrTIjwhA2hZyHwWwTKyQzacjylhHOE+8OU/Nu731Q0pH/aSNZ5Ptf+/+dg93U2Jea9srfsSZ4Mhutm0LO2yf3+0Q/Cr3nZOsgYWbCBfQMDcIKzdtELrHW3mKWlbkFE/Yr3QBbPU6wTI/FsvRu2jZLQMZclaz26o/MtrEHyp3K3IUVg3NJvj4PPjUqDKzqwcEozbxQFCPc/1BgckGTn/3ii/xBNOJI0O2Rq/ICOWSSq2/eHqm/mqHVMdP4UBYQTGrc9xM5Byu+Dpmo2xmKghmQTz9xrEynEd5rf0H9EZ8aOrgaI/ijG5bn3oCBdJek/IiMqwl7IuLaJWG93H/MJiDQxsNz2nxSfS9CYVWkgTP8JuOVosGpFtCufdioV2ICLflritlZ6U0vz1ejPVdUlN/ueiEwLULK3+/IXcQjxtXvSWXvaxhdBwri9hZzxSOx6FNUKiaLLMwCp4DkJjZXR2Be2t6jhQMQr+SXn1W+b0QoOPHoE61i4cmmznl0kBXQO/8GzZEtlwdsJUFwqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sN8uU0StvnTSovp3XmltRl9QqhHnwG2DZq+hWNJVpgIyM8TPlfgMx9IVYPnmACPJy87CHredFoLvRqAAPeUeKeWWohB0ktnNabWsoXyWct0ITFzmJNxnQNO7Dh+a4olzt62dTLdyUGegJ0FFGSuNu/eSSNiW5R1ifa0+5otar7YympVQrTEU2vFyGt+QQesuwirsfTfyiOIqdlyUubnpbkVjmkuf8xSiQ2QMY7bNv65tVShN2ahq4/tmAacgYFduduWegHQzhTeVSsNa+tXYdlyPwb9Sa04KhrO05Ntl0xQpQQdMhbHKK81eNA/+FcyLvsDSTVUSNGgBUpbsJULO7azhLsjQ7Kie4SalCssyT1Jba2NZvsuQYxdOedFFL9FHQUo4mQnp748HmGfN+ReLpVXvYKWuC1l/SNZyIKJSmgXBd2rg2V0dnsicQfOm1dt0zyXER8Q84DeQ35Zwrh49+3miQ67S65+3mvWJ3AfQIR0XyytcRQKs98dorMl3UpeRAO9t4b4zzo50Rw09l7cB3QBJC7l+Aerx70HTmNTkOLzXoazKhRdVuAMN2zDtTiAEMyGJXTGGsh8LBT2/sEeI78QGzWk5nP/oqV6Rc2aMiBU0RjDcMFiYqnwb158ptHsyrnuyLKMhoUvBZg3fAxxVS6sksjjIsPZqZRfvDszXCXnJYDdpVNoyKmr4oATzRHvO0RnEvEaaEu3bXuMFnBPp2qbt/XKecyO+UoqjdUhXpO/oQyBAJf7MxSJzNHsyuin31LeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FhjVRU0nWMjOY4oANuknr7arVGhOG4DILbownffd5Nr2JZCs9vEBbgpV45475js27yBGP2HtLrxfIszXnulcyf1q3zAYNZrAJFjM8bGBWCCBRC2P7zRXvHiqC9uB0BO1LYeE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkJstjla2FxWas8JxsXgQa/jPpPEfHD7dXhDg8QX2y8yTuSZFfyg3F7vi+TFNNxhrXhJYRv8J36MFzpLGwZX7WlU6roOa5Rr26Y/oIdTF/CLPK4QXaF9rjk5IDmU7D9MhRq0BImfhRhlRVtLKXKbBY2+hL6u+tENj9HxVDYfTdsSTeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4Fi2GOhpMjwAdPsPMl1M5lKqNFuq2JUByrP7Tq9t+KmC2LoRxqg5xyyXQM6EPQCgflsiQ0TdDAH708hhBwow1/c0aadeIAszyoDEQi6ofT6x83VpJphQIJJDOctAtss20ZqA434hjFLHvHXib0sWuDWqfUvPdSEQhgRT4Je0283dnllG9Au1Mqo6mSR7+FlfFNp43j5ygi+u6L+6neOfqes6Ln1zwiHbEY3rzFOYFgFHpDv/9UdmfVNAbCPuf0T41X3Z1Mt3JQZ6AnQUUZK42795JI2JblHWJ9rT7mi1qvtjKeRem7A19mtjQ82Ph8tSCE66OxXCB4WnfHuomydaoGRXDa4jZWlpYpDD46hf4RYP7Hwp4oU7BNzzIoevnFTPj2RjN2gB/eQhlX1G+wWFkixDC5r0/DZxtIWf2Y/+CjJq2TwgnRCR0noJSjIg31+pVHF4y95IKEehBr1uAzm2k1HKNao4XuJp0QkaphjfKnTlsgO+dSUNOa3VfQqbyh3wyWu+nofcr/kitiFf9Bt450INPqeLC7RL0NTW2J0H0bOG8EDPcqZKkNqDAGRoKDeT5QP5qvdIvcRyIJe68ZbJMqXWSOMGcTuUaO83oSFqEtqHCdECY5us+3pJgNpBBEBm+ogcYg7dd2WOi1Ouq+4NF2RJUccSgDmhOcO0CNHyZDIy48AdFliZfnCHFc3tmCvQJeDmeQh2wrqmnpgDSxr8RQ3CHuLSZgys5NKio9jhZRb4RKWuG6LHSO24Vhw5ska++Nq3u97ZoGqesVyTNotdnkG0Dr+DokyoSJZ8ODpQo4ONBElc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKW/hCicRlpHNbzM5CDj2BWK0Aqpa0BR8AxbgHjmGiQ8wPxSL7I2ux6OYakGJe4CS2aM9KY9Tx9KrolJdhND4OFkWvJhASjjG07Z6jWWjUV44dCdNxbmHjTHUdpIpyoVYb82dTLdyUGegJ0FFGSuNu/eSSNiW5R1ifa0+5otar7YynGA0zXbRnqUJIP9tHcivKZQdmTdf+IOhFwibSmv/xyHh3oea4DPt08SgS2v7UjlalNu+qcOSdK1sozrooM6+Dr62tt8hJjUbFLgwDna0FFcxzdbRhOZIo62iK1M69hAfvMoJKOSqbYRWIFlJ8bmPrPuSM+0w+A3uJ19RtbApGWVZRC7faIe0u662LBw0ot5AU7VWVXy1Cgyq48qGUuyromurqONbyWOobRNv6vO04DZT/+576kjNbuGJnqzFRyb+D12ckRD26bAxDLRB+g86rVt85XnwVFL+mzgS3T8XPdR9nUy3clBnoCdBRRkrjbv3kkjYluUdYn2tPuaLWq+2MpnCdI1fpce6H28Hp+lu9e1uFG+A/fxzu/rrw86IDf3hqZa1oZ2OQ0KKU6LXQVBBE1CHXFDzC62MnZlDi+41YA2cciIoTZG9cLpwn8o9SeUTL0zZnaPSd8lfmTXBpm72qxj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXurt0hhC9MRYoxI2IFZsLCblTp+FuKeDhga9hfj3Gl2DEYh27OZAtw8RY8ocX/rwlRx8wLCW+YJgsQNzY3bE++korG0sDIF6xzbDJQux00wiuUlhOWQGcEy/hfP2QjooPThY6jN9P1mobEkZynWxSSzu5fWSTUBULGg0UFqyt1Dpfh0lGxrT4zgXrmp23El4dnicmPKRsdmGczBjeWrnC29AJOe9HnCMG7fqiH8/9g0RkBiah/q8YTL+AAYQlap1B8IRpFI2mbkI4W50AbZLH5BtDLuEAKK6XHeLG3EgGW+AOzfhKBftqJh54Vu75xIO6icvvIUFD5ifWdt8ZtXz8BdxFLThGqcW9t8tEWXQjiQbh90P8HK8blu7ew2ZSioN4HoVPuHu548mUhV0IsYWyDx8DWaLxVDnTiDGJ+OYoOnQSHUKc2nQR+/+oTW/oCT4ZIhMD8qPX0kF08vXRPpKBNSwoBsKfZzYPNWZbjO6FxOefXzxyBztD5dJJnliFe2kRwtk8MgYwRgawALa5l7GEaygidaDbXzIJZfVG5JDQK1RsfGDs7yG6OXhvkeGjzG6kp3K9+xPlTqGgwX/US4J508aS24DtBjtQhnS2RH6JkiG83yb15Rv0K5Mj2O8aEF/5bvzCchuvg2tIuYWyP1yLtyE+VASJ+McJ6iEG5RfLflMvbvpUovPlpZhFxDAhuc2znSZTfyvIdXsWoCSCIjRHRbxqFRH1SgWIEadFoRCFcpMj0luodGnsn7uAJ6FHMSYOSM6Mgcg+2hZe77rp/0YsrGImW2gmw4CE2DMBiGdBp1AKcabmJ2Z91ny6zgPMo/VKs5hxPaHWWlZLE5ws6T26wHJk60YTn65Wb65uS1NmU+hT8jdssLuj5AaJJnFDFMydGq5v6tI4PPpK0ITxO7g6+Y2htcx+NWzCHvBKw70j0BjRYuoUaoL7JEJMV2RCdgAUJ+IaInzl2MU0PHQEpYdMa4HhPYqjhGn/8yI5ql8keYwjty3FzguQkGeJOLyed01ZB0AX3UvXhKRDwfGqjLhZ/mfYFETGhFuqfAo8++TU2Yidzkyp+jESEGktbgeeSY6wLkyslgv4T896gbFEORD6iMvzPxoDeMCS0GE0mDcKJrBZe+NSAIMAfVaRbNnKdDwQh2km94xykmVibUnVxaVXHZrAkdATCzp7bS0gDFvYLT3lk1C7SL9Yna7sebj+MTcRgjqgAVe62EQz6i45ivMiWnbrNEFKBEBsXjc941GuwmPsz6j3YPyeMgrI4pOJETRnYScNd0w6n8mw3+JbdQuhKL58HSDiLZmbmj4mozPF68/O64x7pasuDXPU/9I5OsI3AyiZ83byxO0sZ+JB8DthVegbtFNVp4XHSqJXmqQUp4WuTZfGEs8qL7TlVBywx3JpQPZ+j2nkZAwyuYjjYuyAq70SVXn9RyCr2TfjysWJ/7Mbwf0NQmIzML7pwUTH0HWiOXPaSiHixMeJQ7CMbHdSljPgiPKv7liDpJLhvoiCI3cIPs5QVk4IuOIbC8vu1wJJIfQu7MZF8Givdz3QMgmrxe6cusIOOBdJ74raTGPcWFT4YZrdg38PE6sahrkaY1vX5kXrM1IG+JMF+p/6ELFAfp+SarN5GH7COdgXHs+gVzNDaFN9D7MvajSaCdp7ykQ3MdAxVH8x/rEJNlmaCB6erhXeiVGgywbkQhFUzmyqo2ubjay0Hk5SvxG6bhlrQsBdshm+vtE/as+kqlCcQ/aBrdnC9OUXKzDYVQqEA+YbZDMbCUR9CHeeysAHRwL25kgav3huAWJ3rjw471xL7CfF+zyzfOSvCCHLWuCk3QA3cw6kGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEgxZRMFJsGjimrB3Umff3HJ24KJRSurqC2kIuzncW7JYq7K0DE5V4RR6WSaFT9MSGlr6bHFenKSs2JWFN72JwORQjX4CjrMUoA7VBYWOsvehwW1qsnwqmfC8j6d5JVJPueFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4Fims1AiO9nRdAbPwEIiBUfaAog3hIACU/BuTri2IgcaOTuZRRnUW4E3xluiWEvChpSkUjlbSHHPagjWkLE/jC3vlBW4CpyviJf3KZM/0PO9+rh66rDgaiXFeYPBZovyKXaCvJHzHREGNsFsPk3u7EVdspoRLJVTk13mXbfUgQlM5WnUm7KRCrQFqeaonm4twzabqUJonXRy4Rdqbn6zZt8B5iPt+YQUPsfvrXBC0FPxBmSZf0O8BSvbi4Lnh81TWM888g88zGiXgCuyql8A69yi4UP4nhX+T7TaCZyHIvX3tihPATdiKLFsmjAY4NANGInnzasvdP+to/RFFbS+byOKFfo1S9rMDGxKTLJUyjw03ZaDAblOrhAHE4Vefzi9KBUUgoxzyV0hYyC7dAGMqS5ulhi6wuUtPv8zrpYbrI8pOO3TeC3irUUtPsz/eIkbzRQVEG0OxbmIW2G1isRbxyyBdS/uSwAoDLc6QWssIJFN+q9FIf03/wUl9q4yqZBCa7i4s/Iw2N6I+Slf1KHGmHGyb7U8eS4MrJAXEBz1ovpQP2ZZS1+vY0u4m3NFOHx6N+LG7x/KIzkw/Q0UfXFDLzdsiDLHn9ifpBwAK0WkYp439YOpJyLtj1uLFdVB2kvE9sjMoJKOSqbYRWIFlJ8bmPrPuSM+0w+A3uJ19RtbApGWVQt55/lCjWwIcflRiBVFOh3OihRnI6KPk+rslV6vUwwTsz81FJprubAYvJ0kZELkHUutZP+I9hYOezGdWjC2wIUWyHVTaMZjGJBoWqu7Y6T1FecWRkth1/xH8dEyiOaoMQqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNOtcZisyU4DB6v8NkXxB8bEQXkjrS/1RAnv+3Vw5JarbeYKn8OMpVVw+bJJ+qnhPEMBmPG0U7Rg/9BTRA0YGkpGxVTwtgiDk2Y71SXqTU/wA3MDbgtnYytKEITXgVcI3r4sJVzxngrtRD/jSbfhTnfiOdmiD3sJm3XWTbBoB0j4RNX7F56kQFfLPrIC+BgSwjAQeN5GhEqqxAo5TWMqe6eBn88gEqQ7ypYQaJuhSCtq04TlJs+OLf8rXI/Plr8fwg1Awdkn1V3dURDgxuMKyov5/obCvKRIwpWSVr+65mqA1JXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7Yilr5QGfuS6VEjZlnAEi6HYdQMyD0BS1NVHX2h3CgGYTZ90jqW3Za0PC8T+CZ3CJ26OqzNcVRk40Ooc19d677x8gWi+cC4QZfQvMigjec/6KqHc+Th5tMu+J3/5TpsR8gsEd6Yr1GUjKj/2yfqy7Qey053zwWioewX+9Bm8MbEJGiSTl8l7e8Am/LzP0IuOYNzBCrMS7fl3Xi4W7954Aguyn64ntBeyiZiw2N/egb5OSxkAzCGo7NtInnDlNJAVXo8qxfzSUYBqOC0sa6p/YpT8EeaV8nwHiNgAdbfwPVZZ4nFHuKBZHnSXJIKvjaB4OKfxgr5r8e2zjeBxFBogzdBcxt1UYGeL4iVtuL19Wkl4U9Y6FSVjRwpm8O0ycok1lu/gzOEo0pd9ZYD5MK4+Rtl7tkT+OPYJY6uZ6Rh7zcVDSvFD2mQhUNkKTGYfDCtefAQGu3heeebqmZStc5zGngFLmhgC1HszQNrkTqXxDne3IjRBTU+ungmFrCIydhPNizVP8bgeiEqJM+eqMfr4In+UrynGfw9a1lDlHTMVf7W2Du6M9kXXq8PgR/pREbGqYduMrPLazt6/OEJJA5CrCNkQ/V84rOcuRt//cowtcM4qRYSkkIUfQg7H1XwT7cFvks2qI9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7Wn4SjAaNV/24fJ48KbCjduv8mzghY1OhSpBS4TUgi79xvBM+uyK83Ha1/+e6iNH9Tod08qnaqb6/wconLBOYtt6yZAgEdVXBqSvbOrOjSnycoRrZEQGwd6DgbGSWj0zxvWy4y9nBluzXrORLp29K/wodSuZpq4K1asGhjvSbIh/pa/j7yYAoB6t/neBwhNu3+ysrhsKaBnYyQj6EU7RZR52jxTt5zNeA/HQOP4bvV6UrXcqbz3P/k0MyLykOH7RslUqJGv2AH025W9xB0re8u+i7oApgQZGBqn2ZirEohT8yh0Ig38PrMUwr3SzqzDg91gISWbJtRBcAnKrjn7X2KoJq+mg6zs4ZKgIRZT4ZOy8kG0r/DtxVbdshpSmqvsbDl/NE83F5/e+5QXdxvoyw6pYwLON4QXo7qm7NEWWbJLPhGCFRAWQwJcP5XN92tdwWxNsTEIL/sTOY+qOc9y6p2gyDBHROh7FMXM5KzSpDvmsE58siG5FkU4VOTTYhqLZxeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4Fh9hKz616S9pjJGmQ3d8oeTraro2LvE8Uql9ef8s3ZtOSZW82QQBMwzxh51prOX9IRP+XyWN1Brpxei3xeWHePI6wBf/giQNDBoPv9QjzY/bAPHGq+0Z+dAeQS8yglMW90eE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkCxYTvPDJWLr6ZFUfAmGnAouHG9PGzb+G1hbF753Cy+VlLntMqV2/V9iEcAm5hjzi5CT3DdCCRbCv5yibyOoH8dOsXLb+2s8yjyb/TCyEArSHs3rKQ5GkaqRCuFSvZ8QFeGUtAZ2v/uHv7TCT5rTzld1bj2SG5lKG3nNRDhK+Z3UQuebRYurpFH0XR0+zdau0OawriwhwmOon3DGe4vdOqp48kjdoj2VliOzJudOHLRMlSt5c5/vSjUxqR1fDfuzUDCGjvsxG6TLi4VpB27uAwLYzdF/caXeB90ae3Lqje2gSd7ay7esY0fIqIM30lAWRxcUyXhuu/snf3yqI1z9eZrXxIdZjF3Lo+Hl0+8gMOsgf3e/VTWApDMGPN7XYjaGe3+KjlxwncVm65ohrSCbNBDt3KJwG7u9+ISY8rVPZPGDk9LNoF++4l2Rsi+XqifGn/HhfHvU+8W5yWVYMm+tNZkgCBL962+W9xIMsGwuvdh/POMydYPZawZsd+k2JaRXf3iSy+MKfTvdYTf3AbnX+M5px43ht0YKUMk5TU4DxkRRha+jVJTEl3qH4jh0oH5Et/eUvbDh97uwGSGWu6EXpd0isDoNcEVfO0qL6KF694YY92a8A6mtuIXoxZzMEulRI5RFdMXoqZ8MIBeE9n4pLMdGcpkalyBPPyJh4J6n3iq4rnG0+J3Xcu9wr3xYgIsveGCh/6hDSiqT7h/pfdLx2d7/7A1hjXBEVqGjWeHFPX22DaUD9qHxz0Sw9UJUzvsoeNrXghCQUwhfipmkbNi3qrmfPl1PyFQj5rWVSzBvu+bhB3IoAKn5jiwJkcnis4kPSBEzrXHCRydxXfHtApeLCM+0YCcS0yxYkr0WSO4PmCpXtr/HBQqtYI2ZD7Lrcj0PgtrhJK7IZaO4fzMALQwfO8ixiD+MrEfCkd4wMOVEe/PPu/nRfkbQ0BAFM71cMXDM5gpHU6oqreHXiXgKxU+2dYIRuYYSqzZnIw0YjG/MCI8pjg9or2rXv5VV0b69cHDt55K2svGNMvpZDb4l581EB9d95c0OEiv2nv2ZpO1BrgbsXwzq4Z+EAjqoxdykLbOOvX6BJqnbMNCmujXVZkjhq6DZ1Mt3JQZ6AnQUUZK42795JI2JblHWJ9rT7mi1qvtjKSZLYHeW8giQzbZoM+EMW+EIjZOLePDtp1iI/gYj5Vu4+58L189JBEdUOiltPb588py+1Th21+B9Pet9ruPyGPvYGDEsFLh1oAHcTV/hUhkjB1DfNI0FSitmTIfnWvdkA8fUgLBtK74m9FMUtB9ehFTaOT3Uu5DoGmPVnQ0ofgKQ6Q1bBXZ8H9jbozbyAIE7qocY9ijjaAwfDmXmuYT/SOn3h+yp23Wn0fmh3VuGjQFhslIzNn74c/N8YkY7lj07HONtIucF/iWODBZuYFPpgQbwudBFLGK4hdqOBmRhv+pjfbTsTcj0VS/bizCcTrzEXXm1+Vra68AXJUtpaY2LtfAczjc54SzW1W03RGETn5kB0bla+AD1ajgqbCloNMm46rpTtOueRHisQdISLOY/Rqv4+NoBFKpco+wr+OfbKm9AljxF3Uy4nPHo/rlq9ESWvGgvu+imDlbrMmleaukcoxhC/FjEjq2TtGr7OwkSGRq+1iK2NyYXyMb2I84SHlXgNI9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl72WKMIQf8yEk1F1Sdnt2Chb4WuuXH9NMLmnpX/uzvPth9B/fAm5Wzte39QzS6f7nfgccAJ1POOITzCh+jxt94ENA0qiTEArqMoVmEhtKvSlafLTsqmPDpaUI5W1wXXt4xQaKrIfsLzYTfwpYBjwPs8Ox/rd4QTJv9CdWWFLMbIQQJkChXowg4fcYEUKqQ1OET6uqW3sviikmqAuLWA0pFlnXIt/9BxmceUR+9p5xPPysEhseqknh6bcBfOf4krMPjyzLGfeMRaWDg0ly1dIWMGkC8dqSkdmUVE7HaUDgoxWgoI/6vy3UnaPuLKqX82vM9AmSmsjmxA21e6NvDzCGIDsN3runK/nm2XllMJm1LdMXKPoPxh6TfkBEvKYDsINnP0JQ/h9sVrGKp7Y3YnVi4e9L9neG0pYDlkD0YiMlKfEXf4p96KwxjGz0wTBcRJ0Wpz8hcoyC1IAfv3f0eSztuLVRjrjPTOY2VG3DxmxGmZSexgXY4TcCbHVrhmK5NoEgfitc2IkNKAlxl1rc2lectixpDaie2coBDGB/GqjxFLK3amHDZZ5EBMs3AFb8/wjAdA4/tYiG1nBgWLswanIJQjX9py163Ev+Bu01Q4cSuVe31zHqCdPNBnSLgQF3AD8/ADZjKeDswNiMEwAyc0UgUnCJI8ChEd4jEuGLaGH6qIL1ed14M3eLhBarfUfzOs2JsUqVYxHv6A9xoqSGG6Rf+Ng5yvIF5hbGPhke8zwUCqHBuHdBWaeeUJ8KtL2kZkEd1eFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4Fg+buAYvsmsRFSNbDn7a58iMoxy1S9tcRaenkCQHfHrJGW8gSkLGoz7FFtakB831VVUcc5uZWF9ugfkOME+CfBbhQrTtw5nk3Xdgyfo/g0YeCBDP0ikebv6szpcrD8cAtYMgzUPvbBV9BzMstD5Pd1DSeAD07DcQ87G+xckYPHxrg3/laUkkZXNerbhSgZx//+8IunJnh9xyGh7uC/wcSauGgr++ap53mUGiy7YRoJAAMLy6qFas5yQJtWlAMM+gBTPKZEYjQLsiGCixPcPSydhLvhBh39Rh9swuxxtV2Ay/5IsG1mZ4BIafYXLdtVsHMtSCNElsZzzVQ6Mcwt4tfQ7fVZquwGwTBbuFZdMy3Wx0i6g2W86xV8p7UAw5GdPPeMOngEwDHg0NApW6AObIpNeExl7U2ffMbzfVpGOvE/5IdBr6YvmQ8RTkYg8CmrfWL0tUzeNZpGTHj8aJlZXrLNeSVzp9a0HQUZOjKzm2+5CtQcjuHsfiqDDVEzroAu2IpbgESj2Cf92PPTsR2xzrE46P4vb9PTJPb2PRgtNQdh9E07hrC/QYnasF47KabSsCG7lrvJ9ABw5vglxPw5ozviKfYHqP76nkq9VGDxIHy5UhxaC3PixKDS3nlPqYDb/X7VBoqsh+wvNhN/ClgGPA+zw7H+t3hBMm/0J1ZYUsxshBLS8F86OTgixNM8olCXNgkDMacj3KLNjzdmxCsVoB/ibQQwqejkx9b5m4dqRW1nWdIJYMb+TDL5VVrjHc8IUpJJB1hKtiwMMAI7oqWH6+EnrqoFZ7VOrA5hn70R9BQGHwW2kJAOwAJA0TLFt2CD3mhgKNhbO8puZKWteikTUEP0o2V91QKUbBmpiYSxBVE3NuNUUTE1wPRG0IPjmVsnhrHlkTuh4vvF/RrbJMzvbho9P2HDFSp6j4fUwPo96Vn5oaAGvwA0FodntqPLianV9XJjQwz2kROLue/2MyAVs3VWvF5GJKY95AfE5oq1O2yy/KzuHF8ifKA8Aff7GR++uSR1ovq/X7X748ndepCwpH1MWhQNQbjmocJiInaBjZsqOV1jYGpHDStxY0u4YT72vCtWogmj351YzegLwp86+S+bb4hm/jdTpRejmyzRLS7x6H7WQa2jeVd+Gz6ufiuoH5jkwJZv2ga7Ur77OSX9naCSa3/K+FunSSIIkapRin3WfRAqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNTCI3Qf0F6p8OEJhaYLnTeToQDTi6jcmwyZyLMqP/Py1JcluAyqwx/nqpUMp3AQsT2854P+Dzk8MJT1BPfaTs/HGBLRDZmnzq8JwvKQ9rKm/OEAMxaWYEDyY33vnxvwmn56P076XaL5G9f857jJ3Y3A9YI6AbH/cdBsoDuNhFDUzDWSVvgW4a9yzoCK9He/oRG0UNtaWNdL++ijPEDNGwBBZsScteaNJ9ZEzdzJEe65MCVIoj1POnph8DYSuAuaf2e16BK9qi5i+cqYRDj0IRZMDdpc0t8LFmXBhwvam4CXKMOOFnvVQov86vN3gDCBzq7Ds8GD9FNCiJvuI83FKH9grU9SpNBJe3v2M//G7I1fBDMifqN154QuVdwaNjv7pjDOTFp17lImNOrefTaWFFRpYFxV0snncwxQRvEybikA7ww/nFdndkZK92NcB1Z5iM+/iOPz+bo3ObNOzzfNtiwpkXmY186+Bkuw5HpGfyA8lHMpfXiNKc+jmGLwWQrtTbvh3gGPKW+RPfA+3T6zjnzP3mdLRByPxwB4K519ujV7aarzAJFXNIYPjFsoq6sPoOqCEZOIg9/VfnOEEjjA5mihZ2daDZRO3mOI8v2JGChXE1pNhSip0eIf8LW/OS8Lfrj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXvlyY6Os+nWceHLyqpDar9P3Vd0t+UDhkWGwv3iGr+bz3nPZc5HE6saXwavstJYugYc/t2XW2Ew7tXbnoAT5oXWrYCLVaL98hM00oQmuPEF4sD1/ijss4vjbIPQNnpVo71b0JOz6SX+Mj1xR3fmmtQUpsjEqeNl2YnwoD9QkqXYwLcCcGthxKoddBsevH1ilBIWidklwkExZ90Y4KuczpSRe8AVAHfDZpIqFmnTbujrpedcPOqHLZenMEZNnvStTIbyYBuVoakYnLVJxlOW3QSs/fqYtHp8EHnnjerJJ72bslnJ7+kdW23mnu3TUzfhmxiYJo+o60/ev1V79EFJwd6g4B7wWCwIwO2MM22n2tW1WyQB48mS1DZra3pm+xTSMAKp0r5+Hv6cWpkI37OqBtYtm2xi+wdvhnGQfSUNakTRDRJ6VcXd0S702W3H7mxMfEf/hblfFkKDkQT0fhFHKRIL+0E/RO1z7/C2rBg+F5NdcFEymGH7G38utnEr3LkBBpn8Yu2yMxPIAFMmLaPawki9IbL8EUdthT6TWY9LNY+HP3OOEKyehjoFE01LjqD7TknjoZHiUFyKCBWGXkd/teufr7nEh6X/pKh/dEJ2cw9xvShnGH8wKV4jiiZfnii2VH1JXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7YiljNT7ioF7R3ojMlnKZzc79+0b+y1IqlyBxoCURRVMOcuL1u75AbMBzgoE661qZBemUEo/LSX2cvrGLg4yxOVGSTY7JbxuJWf3wK/laDXmS5d/he1S3sSzrEIV89y0rmAtioqDOWV0jCtZuNogNxnTFY8GQfUzQCNXsnmSnjlbaLLIUsIJRQ6CwMGVGCDieQkyzTfjyB1bbFHDDUGiUKbMXCFR/jiaDY4AYNpUOGOq0mjieBt5B3FTCHxcwpSjYxSN/HvscaJ/ZIpCpIL3/6zIbGmyXvrFrA635zFD6mLIIrbeie/ZaBR9DeclQUPZMA2vKUJk1FPnQhjgWHAZL3oqeHTJiOLlmUIWI6PerKjszaHSrVwdoJiUuVKkDT+IXkFTukL/7/59/yuAIgEQi18RAjFQ1xv9eXhcmkkUl+Ch/F5KDiNr/rpQuyj2iYmathuAVAFMStAcJ4hdB/LQjhUJeuUfQk0FbykJcbdk0HVfbbeUUEa/rFt53uvHduUipBu2gkV75yj64bFa704AFQOgyuZGOOsxeS6yB6OqUslS1i5XGWhMpt6TXg7ajo+2S4h77L8jEjqGiB6+9mibXgWUK/2EXgsSNIO2LeV3wVFn4gVe6NUyEHRhBT/gW/RAnJDofKC8l82QD0qJiqAp0MNrc+7Yecv4d3OYZDj3HYqYZPVxP90191cSHOLqUgPytvrYbPqCH1BlBIxUfbmgqRil4kKqm9kGzvGMltnwP2pj67C2wxnAx9qT7PbPGkGucv7Dbvw81GIqf9uDsPvU1A954jFjMWv2BEEex5FWIaAalTxWluMMMMV03Cqi9jMWyHWEx0K2iMCuZDgrL5EVDKOSypcdqGN3OAhxrTdaQM4foSJkDfjnVlAiMdbPlnuPGIifiDIyN2bCXDaLxHebuHLtG8gM8a8ven2DlCM9rU5X4OGWL8AgKswgb/S10QFtkH8llZsK1EAPtLUtFXzN0Qr79mzpKmrLvcKdv6rs4vkRWVXC9G+U24fnbr+ysHHbM/y6bVbDlDhmaxPZkciDLkO9N++p8XaYfLh2YahXnimLmLhfveEVUfjYhq+VWlHORxGsu3snI/pp2wwQYn/NXZVd0LwhIsQ88CfJktfFwUdcqsu3P1R/qaY0mrbWk4d9h2q5T0Ag4Rn9swONDf+6c8jmS63o5sts42VmA9GkJRRMfMm1opT67nD9WAvaSl9oK8FArEtTGWVWnqQBF6taxe+DxvS8D4xAx+XXCIlNYDgWvm5gF5f9lHk198k1n/HFdDRZkybxxBnsAnPbHKSIQLFLgyTCf8gZ6GlPrVcV2KBmE1NSJpwdw9kk48WenPXsRzSHgNE6dFiD1AfE5rYvyC1rHhmef2aovkg2VWp2DoDR9jVR/Y/Z2aWrpNrB9BeJzLnjXwhDhlFqQj+u/hDDQgpNUrNtWCiaj/MwFIE4fu+8bjzQsSBjrA/j6QJRIvDztTWvfYFjnhlpdA16cgMRk8yTn/lKIl/FTx4swwIglxZpa/+5Dxcsi/wA5Xr4lSs6tJ591JVZs8jzJZvivjad24CTdMrNIfuTdDG/QdXwKRGwYB3iLBqWIyKoXjJCuJ0s5vitVLjuxgXgujZoA6P+Xc52IhURNu7GuW4ku90VlgVyNu1E2yj/1awHXD2K7K3omtYDn85k5gqOGRJ+pG6j/GXOFrdjiOFcG/OgLqDhYcz34HE0NCjPeqemb+FkfILuIonwwUX9BSm+Ui/W1ranApz69/qQSB60b4l36R/FLKp9rZbp7ahduWuvwe/8j6BZiW6VehJDf03eygjGOXLlvfmru7LcoTOSx7KTYH3A3dHPWehT6hdx6eb1K7TI7aw1fKmzo1W7tx53r/iBAjzuup/PHR6KJoWyuTkcBeDcfXJxM/VihPqiBsZbayVDgl4M/iWFYliq0IhiaknhS1x1IbBxFqxNuiXdnWeN931M5Q0J2c05sVMimHUpzgXj/nQjzrn6GO9IYIwmozfIORxCkXf9xyKo0d5jcKokolMYHLndzaVPBu25BbR/FYV29+WDL23mVndBnMmBENDetAQFosGImXVw6wFhIQMcwuD8P6PSkLxNILJ64bhxAY6oF04nBtTzGRK5YDdwFOwqIA6xux11092B2GHnRlWf2KQM1EkjlH9Hg0tWixUUpHoSXUVMXVmWwDRG3XhuXlBpbrHaxiFpLRzNWCafh1l1yKQlh0Ccl+SG5xTO4UFRvo3zUSgKAM/YMvJUyRpArs5zHnf44PvzZ3q8n42wYEG4vmW8k67T2RMTpUSqNia0OGPcqNaXNPsYqua3c26She8L7XFeaaQFDM5C8zgGpyT5PDbaQPVwoaUGSy6nYXXbf7H5qMBbKeyoqXcZ7gbXnipQlJgHMJMWl3DzsaGIhOfF+J7iTR08vbBXRdSBUM/gHgWx0nbPM1IqPg5WxL4bk51CIgIOIW5Jv96zpXG4YcuFI4Fgm0tly192B1RPR9HGmVUmO3snW+tA/CV6ROXKyn+YsBEQ7KBPjr2J5hCWVw1HcpHb0CCUJ5o3FHTab491jJLdQMWyr6LoeTxGCB/mAhmKWfGgho08j6A+VMhqsYMCDeJpsZBhs6uan+KyhwhL/PaxpQVzvKFL60UuUJh6dgBUaFS5O7iZx1BO5cLtulYxicNjkb8AkwSRn9QuONg6wKeFrG5vl+s/Fkun/W4rKHqcRC4lRP/9fgyG7rHc5mUQfscroC7yWr+9G/6pqndKoA77p+Hs0J/AUUuvg11frMWij7q/JwHDkY8n0sJAJxmD+1CES4yLamOBHzAhjpReZXHrnNyVZNVhsp1nNbqtjcrfCQt8vyUXI6LqYl4ofrKhtmCHdcovcE28Urez/spw+pDmECDrL8zZNUw4GGu6tbB5HZkMRzTZ+nXO7DSSe5Zyls6lWUeegO6/NKa9tNkp3dBaUbXnJkaNXhVLU0djijrPLjV/Nh/pilaL0a8M0/SkhcCUcZ1nOBY47hAnWWbDl4pTg03p338hNEyl1nXeuKUIEKFOBFcZgirUjYfIzCFA7ju/5NYtQs2bVh1v7y4hJiKLjH5NLj5X72Rx57yZIOcEnTAj4lCf1TQ0aKTzGX+55S4p0oHmErURcWqzB/2pwjzv0lmIgP9xs4hQRvYO6WxjLj7YsJjdN3Z1Mt3JQZ6AnQUUZK42795JI2JblHWJ9rT7mi1qvtjKZf+4G7TSmdWFTlI84C+2boTVAZukLsoiUYeh288H0bJKpzzdgccbvbWX0ljC5TFcE0phVtalH4Ll2tDY9YBwYSgHicqRDxNAHmDZd6RuXstJCPM3TFRaq6QG25RDvJVx64N6KhwpVo1+R/iXlwNkMeoeXVXowpXmr4oavRetz13XRgcTRTtVvom2BQT5ofHDsLcyRvTPQYJCksRs3u0qMyiWlXQ/vGq32k9ByVv24X4GvIPzPKLaOkZFkxdiBbxfbGJF99XdXU5hB3F14tArJG+gK2zqZutoF8MJqUW6ms6jpLIRAils0NW4gUYPmsH73R4W9byg7ruaN1ghIbBQnvCkpnmqJxrjia/Cv6KGcbr3t3mbnkc5shprNd/HcI8NOhVEKdoVCjen5ljscDDmpbx2qNp2bd8vOSDFywx9/opCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w0RSvCQnZDjMGwbt8Ai5FtDS3uPhWFxWtyjUysnATw7PRadCKcbq0zm+SbzEauJ+czKlbq1rjqYuMjsyBG6j/7HrnECMJj659q/ZX4/pBOcpquvj0+xoyms76HcBR55Cg5buGke2gDthP7PE8nVsSLM00Yo3jomJhftxxz4KIYxbatVc/AqxH8xR6WgJtqIi0Q9ayAItsWXciJcPFtz3JB85pTRZ0f+sMkO0phu88oiGhqVQmiBhzyFbUVcEOPNNYcowz/acZA91O1qsBq0i5Yi90oCE1k3OoV8oQ9YAuTbeX0j3PPI1EEbRWJsxZCALJ8HT/EiYzdlaCueDzcMaCh1LDuG9MPy2po+gA/97wY2XY+AHCmwb6BFXucire50znkN9EV2aAuetkYjiyBzUhcALOjiT8HsU655oHIC9dIAHHYBJ9QxEVvknAQzEfezFo7mS+ndqpBrJE+3GDM2QiiciphUYry06O9dmbh2TU1v7ozsaAvTJPukwwq17KcbATA8JgWxfrvmQmWRMyiCEJvwOILixA3O03IvlR/Lpmv8opF3RUHVeu8CKgPryvvowMIL6MzSTHzSYUgQfjBPu8h0CqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w0xlin0n7YZnqOOnRVp3BCZhmmqcbNwzTEzGkul40kcUhHHJ9d0chtZB5TcjBVxcLMFSAPnF5hUfc44ng1P2RpMpouM9k2DMUDA70aEvgpzlqN2vwn3OqCWhHAY2H4JvXYhxYp91Ep7T7vv3CGsme9NRy7w9OWNPEchnpHh3PDGlC/eT+edsd8hOEwYFgDaWctvkQL83rmF2AvR9QH8y+CAtoOEmdecNAnwkODbdhmc89sdkFNCPvinGtN24HgviPgHgNBtIoe7iyyKNb/VxtDd+oH+FgtP6giLWO0LtlSAYx2Y5UVgcJPIRPM9kGJk4BE28UIwfOQHETPQSik1rIIn/2m2gCZHUFXUu9VJuFg3iqK/ltu7PqpxzJCYvU4dNQiGMsrShQB6hUcicKOB5qyWvqyTl8Cnp5WxQP8v5MpFiccasteT6aVzmCG4SEzLeTHJXW61vSdBPkY86NqQhLXDS7PSVos9VAjiCffoxX0VnRp7xBNEQ29FJtLBU3wvGXrqDRq5utCIv0lBWFUzTFWbMAsx4dkZbqUPPsHzk9Kvj5WWKu/nUsKKvFeT1dH6pwEdZfbX0SMdIkv+hcHdmuUOvFgtid3ju4CeEZXAe84+ojVm5p9wpB2iyYzVc587OOG+mE5Dn69Y8btqw5x8OmkV6g1WW7s+SNl6XyWb0MtWqh4T2Ko4Rp//MiOapfJHmMI7ctxc4LkJBniTi8nndNWQZtOLBZbKZtQpdjMANttYMqF/L2j5Csnh4pKUCFohLc3VEVcnKyW1r9gDykBdTt+zywL1zzBhMz8e7L73rj8szVTlgINCwsz6W6ZvZfTuCDVac3IF8yh1dnLsV8aM4RSAv7C7D/MoT8zlzIx/H1IuNGnQnSPHBKoqhyCg3SSrmWqS+rPcpfuozeyMIfI+AfGB+nIrt0emLUhHUdKGl8qhNlBlMJEd/0ZhvE1oxEogm7/GomXsYCfNePhK9NTJjFjGwqsDvPkC0jCEsS1GmjxmGcAm6BeQIymPD5lTJ8kCO3uQQy8gFKaaACuAY1mV7c0akZy6Z7aXoKJl1BkHngaCSAdhlzgWtnIsK9X9RFp58MXcYicp8tTjgxygzdZMS12PbVM4ogFpnzU01OvmvgG/0dw9hipQGYWRjOiZuwANDw3mNch8ljhOkAtWkUWy41b3yBBnF3OK9YccUaeDfdxvXDHwyHwzWQ3ll7QQ5NJA/9anAUHpxnJ0/sJofOBcp1bSSz1ajiYH7LrS0KfUVfgDwsBpitsjV5TVNlotbI708I0UZJnHW0OJM0yBgl2mDUBFRAIzs0nciVzr7Gdu5nv9JsfHm0uK5UQo2GaQW+gkuGOZ3WEa2zXr30J4CCpDHD8r77gBuXHq6H8Cj0s78BpUwKhNY9WFT7B7apM2viBVviI59JyXKlylPbj8alKNr5qxxF7g2nJE4CgImcGWxtpwnQpSMP+kGqKKeS0x93iyLJwI7l3WEhFdoYKx3n+MNVmPFVpIEz/CbjlaLBqRbQrn3YqFdiAi35a4rZWelNL89Xr6Z8hMg2E2S9Ml2gNNNEMXUn2X44whDuX3tQU0MHxZ9hFMcArmnFEtCc9neWlMUFs47LIBbWdr4U6f4vKV//HyUyCGRPn/b5AEtnIoomG8ISPRu4xewo/Y0Uo9fsGqMWQeE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkBb+ZnhJflB3WId6TxGcbNpTg3Y8QORt49ppW3RqPTsl1WQvs+RYr8qeokgOjzO1jVmwLWZTbsrax01ZBsHICjOlSEoyTNoTcFxkGUZ6LJdpHvGrzI87ZKhtMgXlES8+Ixdqj7S0XBNWL48Zcnb05rvJunnSuYs0Sev/PIwLfJtlOLgELMmK2kz4MO5GqFYzQ2wkpXl5hB1Xmi0LlL132N9swO8CGZMS+gxTA4fkat8ARmw9XMhA/DFbPoAYpNgVJl5nJPbSdIzVdBaJXmm1dHQ0MSGM4rWTeod7gVzoAQRSXrwJ0UMofuQQEoz/1f04zCCdKYP42X6z61Z5Uv08bWLQJvDWxQIGFtzEKxQor+xaFVhmumjFmBUgo9JUVqEyGPfUAYFVk5nVsmuYIS3pbMjdbRKAz93wzeQXQget5oOshIlmynlAm5OqUvFFYczPSjmxQN3qk6e4tSKuGYHF4GLgdZQKgPyBlHvTAmFUNoZwB70Mq73bkYRlavGLizVT/BVaSBM/wm45WiwakW0K592KhXYgIt+WuK2VnpTS/PV63gmqPsJIaT5+G8MbYQAQ3aan+jW6sT5iCJM5R1fMGUbnebvleNcqLRqAWMnvOc2PUE4Q4n2tFXI7ExmWOM8tFw/wFYla5Rd2CzySS8L/7tSLdfNNx0DO82/H0eptLQqmkQ2eKQDMbuMM1xO1ijFHN2ZM1krKfgcfb1gjnHtprOrmSvz8TD9tlASZXS4wuuTzQNMN0HxJcgCR93lxfuDX9F8VnQMTcZezGj4GzE1AxaQUZPDs5YeaqAAJvs3a9WILDUdiq36qB8IrHDw1N7HrAd7tB8MDC1vCDn5e7iRdydUVWkgTP8JuOVosGpFtCufdioV2ICLflritlZ6U0vz1eqStTqzqljOGg56zItPLTx2gA+052/Vg27XqiM9F7UogRLJlYvV8xuKvg/8orzR6+/F3NfTUg66GVYP+sq5qE2viaUmthKApNyNevWkQZUGhp4fDW4fmhjnU/dSAKnOgRQbrigVOo9XV/XSX81+fDuCF6Rmdm9jMqNJhKSPDJjUI8lw/YQ8IqupcUGsqlII8xODJqL+9onyQKx3KGk+l3eHC+/Gx+5L3l52e5ZWxvhdI0w9Wbv5iFMOpnn9VFZ/rnKh2edP0UcS9eQr0wCg8AyFiZX1hPT4zC7RzbMm97c7HKBbBWnJV24BV6W8cw/boWsydAcdb3Vi/5/a91GJAJAguf5v6pD0HC//bCx10W17vUy/XqBcwoEjIJZpald+wI3NLsF5ePnlygJJcCVGhWNcxkqxSeBDPLVMLpGRVHJDgANLx6xPOoK7PkSRx1BOyQqgABcF1AA3yKUfIy2yYBJjOeG3vbARUo9TMl6P0KlWFaIAnnB0pHkrKa901OtMPQzwPRKpH/pbUhbiv2gU+QLdIpPbzEiP2CF8s1U99GsEvb5lePOGTc7nPnzmFBjd1LYnt3mJjh/ZNDZggZxL0d4ZPuuGCpJ6MjE0qpW1yR0k+q8W5sAWsNbZAGQPTXWVyJmvtfXW1aPaWYXp7YbvP75WG/PoAojMp04W9rVArRBLG8JPVYtfVQ7vuEffHHdp/5JEej8NeYC+OBt4cjDQMEaO+A1pY8P/6uJ9b03rlB7E8Lob1B0+sAL3pfbREzW6fPh4T2Ko4Rp//MiOapfJHmMI7ctxc4LkJBniTi8nndNWQ4+cGz6ZAxYEHvupoZs3JuffD9EhC4QuWfKDFcC5fwEs5urDiGi7l3btcYnFYH9+fC2vvqjC8fj+n+zY/qeQJU9AxDcsE1vDqts0v9nX2ibKJftapqqjxPszlQnYK9yV/dO1Bzh067PUlIzeMQWmLdjy78FYKtYMVpL8TbDWB4RJskeWfM/EI/zPF/Yxm1RljkEtYLHW2b84TC+3vk/ac1e8xxD+xqlf7WuCPFIc83nFlClgcDRUuHaR2CeGypL5BVZEhx6J4Fp1irtQEDmryV4o73o78VeT1YF4/Gblq0wmOM5Sl9ICPca8U3TQlZqgBst0p/3lg+P0NaoWgUpaj/BO2WHIdZ5f4Cx+vqyYC3PPGd4BjWsZe1BuunO+A0XA5CqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w2agOUAnUyXhjEIkWLsqmu7DCnXAjAY37v1imbcoYBl4/Sik+ye2n1ordlbFJeNIvYJDXcPe6c9bH+40ywLgTusWlaBYSuNgMjOf3AeD7TTJxC5mxwjO90E8Z7KnSNVCeJg6Rtn1KYpEPHp+y2uQS7urn3uABK5ZdtX6QEvdKMlTwFjdHo5bGqrK1SmfoAbTMG8trlAeaUEF9WaPT1dJK28H8SemZS70Hrr8rKBZRBhDfsY6KEgu1Pjylcgfqm61brxnPvgWm925FklR2Lb4RE8TqCKPNEB77F6CfD/fqmYDfCLXDPcVzA5wg5Pj8G8uVSIvkcYnkPRGzeYzeWCAa0o0ZIRd1rb0kEAklgvkbX9er8BMR1As3PGgpo6nHlFK817dXICu388zSdsI53dUBjHdI+TpEL/4vhplhGh2w/STLRUfkuRICDpQ3rfP3uGwWxWscv8r5ZXyZUg/Oo4MFIU2Iwgz5l5K4EQ8DiF8qyfDfSer7IlIzHXSoHRGbTw6JEeE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkBiHTEI6CND03WJSRlubGKo+D51oPL/eoKj6NCPqw2r5e1WWWcMga7Hz3EsCzJIeaZzxTTkSWPIvauoMrzcfAmtHRBOk/9DMwHU4AIb4x0fxjCl4cyjLMGsAKtxpQcIL3+rcqfxhq2Qaq3JZc01Rs3i2fLsK2AKwo2eTuacp8+j0CqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w16e7AWAQ42ldcZxUT5xs8t0p9H0i+l6ENL2ZvHslC5ThVoKN9V0FgkEtOJFuAqr/frp0PR4QonpvEuKh6c62Y7UIfMI3LK+JdNNNY8ExQUAoGjzJupr6MrHIn01dA+O0F5nc6tVSEKMObMKTkzGPgv88BXDmqCytHs1/Fpb2cJkLak6szdMJK/Qm2jy5w1ayeD+TnjL6x1QAv+V+hnjM0WVXBrUGWNJT8dKKoaPWuJFC3S9XUllK2cfdngzt49abzDn2JcGs9DvtlCfOrSLeBrwjm6lREM2+53aMYZqt1KA3cL7HaAqTTTAsn1/qNkmfdzzC4iWymyRRuqyVkX1dFH20ctQJ8Sso5PVBPlSwQFG1F2yzALPUbeRm7dQASK+BRiOVY8BxVe1Z9qh8KVcIv/tH2OIjjRzjVcQ5zBCU3H4aHo2AMKLGt1KHktpHTFQQyX72v2btaFLDKIsAF/G14cGA2TUmJgCoWV9rAgbgQmQGoMumAUejENws7VQPlxFIA2Bqi+oYrkOPkbvMbE0jwrJuv+n9lwPXodB0T7D9Fqmw4uHWzLX0UKX3Q0YI7Kl4KAHfaIvzmEGUX7dIOuu+mHc4cOU5T6Oygun2BpzPbRjqasr101Wl7qBshQ7/pyocL4riz1WGAjpxDwveH7BukbJqBlVy8+4SV5dzkTeZ83bF9nQOM1UM6xq46yYfK9dUaPOjg9+ysiY3HLF56qbyHTojtHmyCGsutWT6vrP5d2L77PSyiVuVzRgH2/iCXMqXaS3ConCEDmjWNm9fp5TI+GDHVP3Pb+YwWfmTN5xzUvC3gwcrHHp3c43iVzqo//FbJsnfgWgpEgIzEsZaQEwnDNCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w0fIHtOcmDuBQyjyek9u7JRE2qlAD+jaDSY01GimWFexhGCirwlT58h7uZee4KeiUm0hCGee8v0nG2eb8MAijYkhtaLqNjEWESgLuqon6UjSXjL0WeGyDDRN3HLP17R36AFA59OExbfbppHDlj19VQ0JNCLlsADkr1oI2VCojJ6qX7K26ZlOmAf8Pu76zHLV3iZ3PgAOkisAfsPbP3079A4+arTuKmcBmfLr9VqAlLjwcswh/w3iwE7u35fuAbeOacK0Dn5/t27Gna/KkdEZ/C1/Fe5ZDdSq9wHJfoJhXWmCVn3w0llZxaXItc4z2oA299K3zlArxuNk+vX3rOhx9buOH+1lGCRWOnK4SR8BwJbDOWZbV8wZRajEHI2birUIZSRcciJkx6os2p6kgXpICMKpJK6WvEepGXm8SUPy4eaAZHLxAEfr2lPhKvRtj6u6PoIJ4cc1RkzzIGNuK+9Naj9hKTE5KCY1agWvDaUAbfWt+ClgeTroiBwdsMT2s+AmwESYgxmofdkScHhxD4AQsLIXAQLDxcHvlCi+l6puRdN8Okr6Xrd276blFbQRNQeC7DPUxKh7WmCn/64/u8XnOiBjKsyaBwrUHZtqOa2u6zUMwOw750+EkQIbtq0NkeL6vAwup3wgf1z2dQrF1p3QE5ZUD3kY8zJoer6kkvjXvZFV8zFrONYa+4QTBMn/mwlXALfMwd2aRa3HhfDWdUE69ntYDtDQLUCYtW/U2mTZLx7MfFENd3mtd4QntKi0yv8FYwzpgOcrwGPt+OCZnbGFCHb218TO6hKuYx87fGleU6R7blVK5zncUo+dh8mEUYNcjhknSw+X05Vcuxr6PhVSFKoUurvMz5BgMs9ht1NDI66WfY1KQW1VfGM2UFjBwsJ2BqwlJ7hUZ7PnV0qvQfOh6qenNcPOdhuxrMEsBHFXObxZZzWTj+stpwrmz2f/F9X78wP3KzFAck8uY22SbGJrJHE+q0/RTtmwuk4KawyI5HVICbiV3W46mEkDl46H4uya/bF8JyvS+FKdLCZ2McV7mB/piSKQOZiq98/beFvLPk9kLdnGKYk9xI5wu8TxHAhIwQsKGekyqHWSnVgZ0UhO5BgNcaEty5GVGQYkwhLBio6rE4Glk8tZ22ICh8vdhXJdqmyeoFX9X1hsRIjWJzy7BRRNby3sbTT8cgQ8mX1Vsp0qbVkY6yYj2XoOUZgqXuFinhVrBo9CI6KT1T+f1NiFv5eBND4FqhWfeBnmZHGsgZXstr9TnEdtbwdg2omnkEZkY1NRbSOfLtNxnqoh95sPL9FLwLAnCtzAtaw9T9tDF35i0F1BN1765QzuGpelDjccUptEU/o0cH5We5gZVdKPVEs2izoerunEK1jeKNrpo3kPpt/qFpQDa2W19vGbYZq/zreblgZnml+31XZ98YT4MB2QJINyO2phBNRquq4OVRjvGrXtNMeQdnM52VoQt6Ot1iyPsi+ue63sovFajQ2htVXCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w1bP02bgFMMZ3KLMXWA8TSq+Ax90it3Zr2YQ/6BicYmc2GH3nH4xI56cJrw0K6G8dVl0dzbAsXoelAMZrZZNah4Zr+p4D+tzgQawCXuSYfQC9SHFrPvVG18qNxY1HKW+vDN5VbumQqlna+2WgcvU1ajvAIHN3r1/Ozntvm6Z18MeazgvZbB899zHMfKeKqKxBFDGE9Kv4W+ItjN7l7ngBdO/CNOZ8sZj+Kgz1AqLkYGZwHmtNEzrZRTWn+SCWooykuX1GvmzTpXLZnt8ZkKHM9DI4shyY8kW3enwqebtM4FYW05AV0A+6iP0YtQgJNgydOWJDEC2KR2NB8cmRXnfbZGmw6tpFSJ4+brhEZ+ERKzSIOhh7AArw5EuipRcJh6rnQWHYoYnN1D8Q9Ydfqr6YpBZmAyAk6clx+P8CYjpnmCSjN6GeH2EhLxTGFcS0MPQpv99HzH/z/Yjn9n9aTlC6+IMNAdzmVc7MCe0Bc8yfP90kVAofdSuVu+ORQ1/GWKRzhBWbMWtUZt//Jgg5MiBTJLXT6uFCYSJIkg0YfPr5IRKI09PfrW8vOJgaYafJQ0Ip7o76pkLLVmvtrGzUzw03BRCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w2YG7Kg9GhTx7Hl9PAihyGll0XswKLpVAz19lKxVvDmP/mRFYapRXE3KB1Si9EmmxaX9vNakZ2QZPfp4O/QGefEKh7y9USNVcV0O7V8BVUUMIFS9wQw3fIH+97jzEEWm/FO8H3+QSnF+h9CJN2fxYoKrlI1mdXQ8Z3QaTTAy+Y62M/9e+AgZzT5LDjcz3KAr3HxJCg1c9z4DoZ923KmAuoGqpuIEIrA2aHAXvGSKTcRcIILGUpkqkON02lCunqTXQZgvFVMPhO3KkHEJHDN7Tc1mmjFHS2amD8PMEyKNDVoHo9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7D0OctqP7lusYwdILTwkQbVbcLgNdLs68ZpipSY7q9/OkWQoNXPjrIYrBYgE1vbPt3ulWAk8a9XShzb8NJz1FTTfinc7Ygbxr3zulV8nbqWG5OFX99m+Opqo8GShbKlfDxfCcr0vhSnSwmdjHFe5gf6YkikDmYqvfP23hbyz5PZDRjTi77GVlxGhNZ/AbSm8wRUbLhpnplRpKcwbRM7nz7ZVZcuQfQ+vjur994qQ3yLmX3xhBuSVbeuZ4y40QLuyxKaIaRU1Az2QQ7ikQDQZJ9SgtO6kdaXnpT8ejTc0J9tGPDbmhXQoLW6ugPbmgvwQzV6IDDuqArevjCc4ht0qMpTaWgpwlQdbmf+LxS3DBIAPY1o6xgpFj1vwS66oTJXGPgdXRhOHa2p4BH/Q1lpqRpbc2QsiYVHTnh4Jq40AEOiFyX0F7h8c/S7/SE0Y5qExCq4iXcVReDtM1xIzD5C6gZO4Y/1yre3Np2HGy1ycWVXXflNyva2ErnAZhSuXNvqrFm9noZla6xKSh1KfJBSeRs8ZKf9BLXdnkqF3ZGsDAJLw8YRrCMLOF6JN9AaBZSicBalOdJfDSg44LnvJJ+yFw7oTaX5TZ+G3uJVxRkgFpgI/RD2CxkzWkwm1kuRGD743WD/pa7ybt1Z39GOFY4/8m7SNwTDBcc8oFUdCbai1y6r9ckAKLPA/eZcPF003NqjkrjNq2PYyuzdW8uOyjkdwuHOW2FSrXKRutBHW0AoHpYH4YrQTI9VnwffMVdoAmbltpwVdXqA2ZL7SvC0Wu/0nXNk/QkxIUvJv88QYY+hTZMjvO4Sf8Wf4bPS+A7L2S+x+y7yUY8hiM5HEP+XkiRinakT7CiCdgaVr4IelvXDWARCNGCsenZFdjuVCTv/KooDnQa6NWW/eh4SkmeWl8SgQoUJ42ItkKbmrboGoVVArQOzcd8aTvpSWGzY9rRFKj/dL3PaOC7vRbF8bAifjO5SBAniZOoQRIpg8r30f17eQuTCdEiEr/WjnWumkKyVjfjDffvJFw7hhd7V3Rncc+xCMn0x07sDTJlBs8Qt32Yaoj+tRxCgnfR3RslGFAfnEIset9glEwi5l6wgpEfLNxnlhVkgTPVcu1PEOUNjKykczAst6IOdDiEVnnV0F0fTyVsI+7hON9gvsHoj9GHasBdgXIAHdxRlPf+/Z168gQjGs/kPg9Ft/HV5GQvHz3s2l5xez3ltFHrvRJShFrMOnTpFXFsGl4K752CDgl2yDguFbO7v3thAV4L80T5voKjM6gXFABsl+qm+hEnmgiy+snjMhesXIZi1a7L2TX0tmbsA0jAaYZ7BzDbxphUqK0hlrP5WJGyl6FrUJPrW6WFzxLPUySmGxdDNQiFt6X29lR49L0nU2IjmZK49rbmZ86R9SW8cGTHDNG9tX6hLGNYtQl3C1/Y/fLP2WIhqNmvyWH6ahOmzORR8Wpc67bN+29HxgUIqWHfFzS5Qn39R5B49tqS2GHbFFwp25o4d30MUHvJJiH+0Gva36llmKFKfEMUn1ab73UBxppeE4FlLmU28q5CWyZ9za0bNwIoku4ELD4XuhuMlny6CvFA3NW16prdjIS3QG3FR+C+fHy+e8EnTWWvbs1Brgf1n052ZE6J7KUinDjdD5AzBSN7HzFwBteK24wgmigf53R///3sK0eximCkdLNYweqe/2FYjAeO6ltzy44ztzQBtXuHT6GRz1X/He/XQeTYNmu4cMUf6ch1UkxdkH9Ojwd0YuQalu4CLK8zEJrQKL3kgjwgPa8+f5hzaSKn5y7xYLCMz1m8FxJfQqleYDBMBCnxgaLUdSK6+2cP6C69Y8BRrx8avi/lYlKQulp8FHXIf0fVX0jtWL+pMRX7g9gGsZgbkWSI/jsjzVcLLZM8cZtTP4ffqveNBKqEFqTIf0Q5St/pI8Sz4dkUa0cF4YqdKPckWWc2QQYQg858snfmzP01eqJv9kpsDlTSgBOI0ggW0UASAmbJ29sIyNF7Ive3SWdPog60hDZT5HseymK2eyDjIbCCX/OM50e78hY8A26JB4Qdp4AIadsNoKDeYbKNSzmTxVyJkusXZ9ljDa6L6+ieZUVW5l3/OQRTabudXD3lz49MVv3wz5QR0oLtn6LSxVaSBM/wm45WiwakW0K592KhXYgIt+WuK2VnpTS/PV6zRpnP6zlXZ/yasdBgHuPMx1gWUy197l7c8gC+5MUqohmPk1+JpnvSv1+I88dLEG3DTyMrY4L5m4CEmz37cvVWCfRr42gjOu9bzUFUuBVqf3NVo+xJR8av3ybfW7qiLQ192/CFBI/+n9hjA7v9CMe2X5rUaIF55BybjLbd5eCJI1m2UnhGdaiT9p0IVCvPLaBv3Y3nqUzZ2eTb/jAVXyRF0GiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEPrUjx6UB8+Um3S31xKSjNB7Cz+GSmPJ8zOCMkBMMh+dJtQ0HnnWLUfjOSK5Mmzmw2I7tMeehVixxX7axRZ4LhJfrHA/pZtMDtNYGmoui2YalZCI4fdwosKpJo0rPSLPFmL9IkMiRn4cjHapcjMtZB41qYYNt3g7JiRn1HCwwphGIWDWHTRo3UWtADRFDx0z6APrge7ntQZBMbuPBGb/lxMxxy6fELo7n96PMZr1fBDsWnnNKtgqDX8G+UubOocDO8Y1I0UhFNzFicoCvovEqIJEVSvSj5S0PWIZk/XH5iDJd11eMG43sW0BaZgtXF7xxx2DFhWr08ESzd4TNqhOo6evn0bCOSqZcBg2U3SXHAO7vPOV1TyKISsYCVy0+YevhPx9AH/rJyoGL6JqE52ps5YCRSMj5KM8OqvXK8ZPEK2Vz8tzQMAw0UqSugbk11eFU1Eu7ERM7y1i6CvARfWZmsTRiu4lIcmZ+wU3n6edXmZZrvVGd1HoZLJWG1l8LEhcSmm2kKgZmRX8hmymgxdfhFOQz+6rKUwIdq5Gz0QpRqizbNnM1FFv3z8GU8d+3iOZe8QvYysgMC6INvCkWEm1nx81ceCux/pGXldAoe4CVVdxJFUxvzcr2RVllaqmB4zpUccZitESDIgkS+Mfo/big0IwPCqnlTwud82sxKT2nFaVKrj1G/nUuzq2enHRHkFlXkXsnV4BJnhc9ZFtBk294qvZ+Pfl/p2j5q/PWF1rMHhLR9IYk7U+xlEgRnmaX86MVtukblxfDHjM5b2XwdZy1bzgv/KHpsYiiSJiHaEB5GNiydMWeLfJ0Ew1oVarDlgggqAKgnv+GqPQNBWFqHyzZHUkEp9e59ClyAnVQ7OZRJNTmiARCalO3oMZgcJs7RbRL1n2Vc7G2+aTFj66f2pU8StWKdXHvS7bMwlPYWJ6x5roEpGMSSYBz+k31sAxx8ymULDSR4sOKVyIklArKwv2olYKYBLLebGD5paj/fpEhRvXgfOml+h7vFbPj8TsOZgAhX7n42N+ikGSdUqMUyRwLXCMNySB3bUf7ETuYX68oANJQsNLOom5hqeGXrTvjAvqLmVBUZSjAfHZjIZSSAQdknclaxXzDf9KMzqijaV3B8AvRG+ssh/YPvHEbHkPpsb67FT2m7AORgKwtX704DNnqSZ3AK0KKtsjrB2ZassxZmy/CxJ5ZPHsmc+ztwYtBPcBQUsZsx5TXLdg9LFAKgAgSxjw8m/jeW9nDlk5aaP4bj2I5sNyB6Er9W3YhFSjz99wIw729Yeekzl10AmQEaOblzi0POHYT8m+Mq+FhMyWc/lLKxselcb6e0fKWbyCTIaTdUY0msC9ugcPorG+zpUZcyDHfwyrKa9TIaRFZz47lwo5DhxQIpXuhWxz50iqjAlZcI+TQs/Gs16B8KMX5wMLjtXqifL8bTlvziqeDZKYYnfVNN/GUT2rOPifC10KcXtnnNPlbClpgkbo9H7lYO7nLU1FN9fxMXd4F8RlnqDnvJXMlPtDmQYe3/D2s6xOnL0DgKV9M0nsyniNjiMy4CERcSsjYT/p1ZZHw5pzJPQORMpfTnYoEUOxXDtZke8tJ5x1XsP+pWmO2WPcfjYdArzKIMfRxy2g+lXSqI1IDIrlFVfDeWFfW1UrWmzV7V2stwMo8JjoKlyFqJQ95iwSuLzB5DLoHVYeOwcDITpEbWG4HA8s+qLpt2QDnRKy7IqI0iOLpvQ2ODcWzZKvV7dt8NlB18qhW31VK94Tg+biNGzrsaf5aGyMDBAYFh63ZxpNd5cF+jgJJrE0rHKQp+ivEjWEfZXX3LvTCkjf8jNx5p23GcyoS/z1dhTliT0tUiduo+0HtmfBqQSBLZExGwq1klAmL+h3mNXwtoawY4ytJa7vYigYDEvX6Rzxr1sbDdCXxlnDWH+g2qkQLP5GXRtnhY4BcZhg83APEFTZC3t9EOsaWstP2sT5bo63UQNJW+ftzIsbTmxXGcinjLxuPEaHFuVK3Y4T7lcMvpxvthR6GZXD8X7Pv6zsICP9+OwAbq9+uVFIXihZUQE6dLyl+YoE5jvQISa+uu2BbSJrZTzgPRpHHxIl1xiOXpgmy00LCWcjYCEqZFjLdxC20js0lV9XErImfUGjohgUbi+d5JFfaXambHnAUlBjpM9yhNjizYvTo+bNSAbHSu18EpAeYMbC88DX8EgtAGGcvdzg2j2rSCxzxVfWOg3XLcCI2jSocWVI4Inmbkz5ZE99HZg7flQ7yHb/l0q7iQgM7GSImgF9FxvvopqNCEDHSeWMGz+8oLjWNlldzDVHT5S+RhB4/BM9lmN/ZE00PIOxZseNL4VVvNpZrd9RE+rYBounZagrmNFZfkKYHQrqANmdkbSVNkdkfwmWjVGR1vB5FI+OjVj8GQG6aK3coIFp29dNCiDP80utTBqY2dyYAqzgjU7Nb5NuviQ6S3Uu6OuQIn91hoGjhFG4Go12xuUnXoa8auJsU3QTT9w0+3vzdy0GVd8jmZ7K412+IQW0dwVkh4yKZ++MxEEnk1lB74ErzW6FA6MR/YmmlUDsWEscI7Lsss9XUqh+gHJB1p34nY63k9v160fOYdlPoa3uZwNTojA654DTA2lHL2HGbNb44gFXAgcfh4cveSHDeYC/Y80dTtsvnPsuBg+ODPC7cUmdm32NDg10vZ8hBmPCbhmxMl7+jUFnJwNyun88X8WTYKLIXv+SQEak+lTS42VJw4o6zoPK01l+ic4J/v3RLQAJe3vM/WvuiDpzhnUMsM8mBFt3R8INbFIG1dQRUB2OHFpd9V6Kt0TiqpAlAmJ/WnOmCvhsvbog75izjIRg+FPOB1fA6ohKA1yCTmNT06ZodBBz3NtPIbSxFDUutM4KUgRMHK1jzgSyzSjmHpJ67ghVaSBM/wm45WiwakW0K592KhXYgIt+WuK2VnpTS/PV6SOKZf8MujPw3V1WJDISi1VwGFH8QJrb7zb+SLDhYyD+hXcgX4bCckMd/3ukw4KWfX+YqAkFBLgZCTfQBNzWXm2D9m6Fyh4AsD9uE0t2Q3Ixpa0dHbwy1C/giOC0sRJ3eUSu/iHJqL/lSfv/vYWaYmxYu6LvcDgYEwHpa9nadF5oKgIxUzW6xQmRN6e3Ftb4oH0lPFD5botqnp7vDn85CoDa4pvSaDEEeXaluqDou2LEgo7gmQJaml2GlSURdP8B8mHn4Jqj6VUXgAOpYwEKkczAingkmo7E2FjFCepywo3lbCyeX/cmzksbtklQLVP/2pdsDKg/20y2xLdqhPuogImswfzVHd0kQNrI5J6PG/tysxf6iMVR9L9f2D0wQf2aeK3nYMPlvM2HIdB8FwVbjIqeb5yYH6qPT0vKsyAUKIGtQ9p99gyf+sxhEBID1BX5xV1kWRKtzRiV1uaWj5iD6LLk4zyQXzf/mtvJdaVeA+f+sRhTR6SkGOSxCkFU1hl1O7n82g/y8cMvLlyRvomJzb4zfi1hCQdjkLmXgfxjgv2u8bQnlgsGt+8/mkcciGRgos7YqbIaUPOG19lhZZxoD2PbTJ/wY+qYPmG6VeFLxIynCXGuzKahf2yEX1sgQXIp8Xo3Nd/eagThYAg3zUY29+lI5Qs61MKiZQOD08cpGseCPYf5fGR0NdXI1oCznLTexJr33LPZ7UjDljk3yseFpe9sgxpX9URyk6iXamz++nYHqXjiVOtF3BTpnaxWZx84pnU8xKPhsLFL0U2YzTnJge9Huto7YtTLYQYEJTtFxCD/LFgp1mWmFsvPm47G+0vqoKi1uVi2lO7HyCD8Am9KggxEdjiFpAeBzkzQlNWAKTUMkulcNyTfUodOcHSu2JhfhAcrtA5sxmlQANTmVzl/j1NRaYTaFtZrL+ha559/IwO9r+vmuHJW5O04ccZ0Lwr8nmImHrMDCIvwgokRxYyvlMd9SUbRRTAjv4lhEjS6sDEKfom1BkI/vgKHN0njace9KNg4edxkztW3IeaWCYGOPG4D8ZWIWell5gDgwQMhiJZohmhqkqmRpnHpqyXEATePdNMtrRCsre9vVddJWm73pHTaaJ/QPr0sor4X+xvReB++lj+IjiD7hN8T+Jd/6NHP4+QdXj2JVknL+aUwI9OmDtKy8WSswMEG2cxUO21qT3HmHzmmnrYIRWywySrYvPbyJmTb8NQx0MT6Xaef4/UA0hTlaMZfoXH6X5BA6GSIZeIWDR7nPcrRfsMOztFS8RYViExO0Z1ZMPBeW62awys8a/n0fU8n5DbaLf/qQDtUD6q3ErQ9Sg/3SXVNijLSHFfJb/Fp7XZJXqENtUe/UqRCPtsfGNyBcK/21tPtpKGJVl3jPIps7682t08hdh80VLJtsXJgWeK7UFmPUZv6SDufLyuWAOtFq9dB/terqUDPlUBKAzJwtqtgqbZPsMjS+qNvVJj0e6eTFwkz4m0A2cDnevkuMrsCaD0dE0EREJMxTAZRTrPzbgxJpOWS1A4rU6cTYbQNs56rNQF0jGklvNqGxOlnkX5sK7nmlaInIh11SYc/d2kgh3Iu2ZbYGUsvGKZjGUthp5uNeLJ/EacaZHAQ8KTI0aVlDSwV3fG0LXxdTz6Hp+fjV3K86/GOeFxjY9np0A1WvAfMwZhOu8S0DKtODMkFYgOQsF2QhPdMhLWMGdvh5PRpKxyeVtedMOWEJphJinupkrPWzPwGoJSrTeQtzNH20IKsIGXlMKcNzFZN3L4fo5n65odyKCvuAYlSe3XkX+pYpqgHWyagVDofzHRJ/bOJTka7XlRKA9cZzsLfyHsxSZLwu0lKLUmoWFk6QnUaD+yVTjXSl7I08Gmubt39o6s/KUYr2f6VebV1DzWpCQBfXRd9931qAbDcSOFZ2nYm4+uuWcjP/rqmztSaDCA5qT4+byLRaPTuL1P7mJ066q8o6N8fI0cY9tEWXw3KD5YjFzcFNZXH4dwuFOCncnyjb3p0NItyTYuK1MTQzNIuX7rCkbcJ35sNgVGnsTBg4I2iWQaKrIfsLzYTfwpYBjwPs8Ox/rd4QTJv9CdWWFLMbIQQfi5nrFDeroyRwzRyio95y4/7d4PJRiyuzrVUcS6Q9uMVkrhPCF28STM6SeXGS7dxOXxzC7NMRLjCZujQEsg+Z78nvKj8yBgo14MhSWKbqb/7RY3qFRuSozL3mG1fn9gU7gfSgpBxIZZfI5yX4UWm1+X3AHadqEiaKMEWHozJBdzK4UmLwvoZMQ7pgDTM5lMPu4BAofMrfN7MU15uSPQB8sGXUEnahy02R6pmAXEr29xp+J+3zFv5eKRY81yi1DuMgBl7Q+BLznicJQTTR641Cq2RCzmN0yJy5Yed+TlKPzQb9Z2wznrzj3smNba6DF8/zZJ4wLq7I5vMfnWMy9ZOZDd5ZO49CdFQHSBD1dZNTTF5YAoZLONHtEsx/LQ6ETXPEIEEtwstq4emCfzEgVK/OUk4hbvF4kANGSekeS2TtJVTFCym998s/Zmjf9HwXW088Yhy8vc+TJOuz8H63YnxE7QunzjmHmcjFUgl6rjC2FqKXSXHNcfYxAmm+47OLvbB4VS1NHY4o6zy41fzYf6YpWi9GvDNP0pIXAlHGdZzgWASJKQPOo09AAD4z6Y+o5eE21J8mVBP3vJcTsHNqGkAw+u5yNSkjgzclpSfKNm0tXo/GLH4gNVpv3WxNK8qtn/IyqqymjiB6B2HwlIrX3vtp8XEuJyDL6sO6lIZCZ7dqhGoUxhueWrBMBp5zVI5gp5t3MHsMxCmyzbRsyt9DgoReXDNEM0eGvaOFvKYUj1pjGPwhx/vUmXCwRPWMpipWoJc9THJMDvk332bWkXojk6YNenEYiLwxQtp5/HXyOOypNjGbaxwc05WsPJQkyM9x1fcX5OMOZv5F3Exq3FVElF1xaLHqoTe0XbHAqjAl5kLJpfDCxQ2Z+/OveCHxTMgvsiNA5t3JK8r5Xy0R/X6LwhkyHWs+lddp8dIxEntuoayoeg2qrJHbWLOXaNvo2QMx78pv3xPpPjb73r5OAvP8frDoeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FiCq7ne1Ka54pfBduRt00wQOynfqiFVfNkt5VCsIFi5lrmHrmoMaouzS29SCAURgs5hX66dOMtUS2ljhLH8bc4X+zDDIRNqsrIrAIAAVjs+kVsIiNyNy/O1oIb5HnUDq4LQt4EEehfptneAlPBfUOaxejMTA5L8bsKzgXTuFQ9aaWlFF4cVfm/Eu8o48swzSUoepj8wNPQpV0YY3B9DqDRuJ6iasFOFS5ZIN0vXfHIRDd1+Tq4aO+LlOPibwHq7yE5OS9MHC8wsFMMPEL6ddNmSgS6oQFX9JgKxPuP+crSmpHM5jh5lIv2L3KqPm7JKV8su36ZRH0wKf8ODenn4crbpZpRxv9snAu2hDimS4WzWQTP0oEXHx7ojjYaZNTbnCcChLNNDilOT7Aj5DNVe82swdOMxcy7vOlDt4jXJD/z5ls6czVEMIfInG6jXfrXrIzNNflpm6cZwuQKeF4eTK1zEs6YpSlmluyEVfsmwfX+AbEtb8DkOUqMBAYjBQ5X1stmYbVP1go4Ghvv9b1JdC1nOPnNfmdI9WEjkNcSUW3l5pfq5+f1s93lD3MzcdrWkymGzjSoqM8JeRbp6UdJtpHB+LU0518QKGmW8q1jIqlD6bJH5s4YOGjiqSQHFnNrYaQzFOdOatSuq0GKx8P1vs7Jjkv41+a2xgacwp7Oa1G/aXz+SvidK++GF5+pk/kY0tdw6Ka3jhYkFvANWPrQ1cv6Rj8TFoQvAXPyHL397W7jhp5Mh1AbRFDEwLn2/Rs7Fg5HHIUdPhjOCAOmKJebN2q6ox81Q7DQcFGJ5FzIGTjU6DfqquCfHmkdkpgjhbsR1AdMguR6qP/6tteuaOEnGTd1F+QXjn7CEkpLjzTVQYIFAIX+2ofGDHdwk3H4w6OGJpkDbNnM1FFv3z8GU8d+3iOZe8QvYysgMC6INvCkWEm1nx8L5/OZsO6KJD7AC0KpnSKGBUNADRHAM2p7AqzX9qh+8UlHUBv1TuA1GjD5gdxB2ha3aX9TDbtsPO0RAfdgS2mWS0lAI7aNAatpuRK+dZIai/DyWpRFRpMjas/5PWjTED8ltcAQTdDy1rB8z+29DS75gROmUdlxMqDki18697GO74Lr0cCuIIYFnHFd8dqMU/TYBpkz3CSfgQM1zX65g1eMBLCxP2TEvaGYJnX43hXoVPdlaoiQ3ZnKwvOXaZA7Ri7GFNZLBlWhOiYulwNPMG4YYbQ7whGLVDfGVVjAc5fbn8pA1RUTHQEsdmKdHejnFugrmbxJJKOQnNYgZ1LDbff1RIPOFe+bnoN7kZWhdO7KuBrdog/0uqM0LL3LqUC+IsyDUeitz8TORwUE8mL7NssXWgbHXr3HAoT7Se1nhd9IRomY07q5MCe0IARxkleHQhUzpXJ/8m7GSf1D80XIgqG94VS1NHY4o6zy41fzYf6YpWi9GvDNP0pIXAlHGdZzgWA4fR6oznX6ElMoHyTSk8NiLNm37BGFyBdXMnHpKehsDGpC5a4iI7tOO9BjzFa530v4A8eDH5DYeN022F6JONJFOKOwEFxg3ZmVi7yOaotIWidcIHFnigQZYGu/TkL4nP8lwHcCqLEmQ9Zu7M8yhbUFNLW63V3nMpvFQ3cHjgk6nHerpJWE4ZkerN4sqeBCiZ8ysYf84bnfIFb0aGhrLtAI2MKEjid78qnA/Ux/obq6CqNrvz2REU933dyuWTOg+BqzArPqot/s8j3YUg6zzX7ydil1Qm1bwCqPi4e9gaMclK+fXPWciW1GtlsT0D2yl4rblMLdG8kKolsMqg8aJXfo18/AD0Bp4lgeeoHPlZdQZyg+P3UHuhkKbGM/kT5yxzhj4zOJlGsia/YdvooGOLcrKtlLY08esx+F1sa9HFzXL2dTLdyUGegJ0FFGSuNu/eSSNiW5R1ifa0+5otar7YylI4Qie+ECqHPkufzYSAhyVFUtP6UQZZz1cX0jy3NCtIHbfS4nxPyUV3oF314rf8PXOb9XkRc7wdlbBtFsURdkvtXs+iXzEYR2CoChhb98s6vu5HbimLjo45htPciTYvwGLyhY9US1NPurjJ46W1XmLrTt9HZ02f6zaJfxL+WJZ2icmG6DqyAdlwd1zO1SdEMij4XPVx6PSB335yJ1Ftw2F9OGsRq7HI4XMbN5faH09KHYqOORjqdnJLjfiw4TdczArS5EEYPf+xxJYLCMp8+bQAJt4csKsk5AZqK7bfeZxejtQqF+JKm6wShamsBooXLEcHfoUoww0g+95NMjBQwxsNflS4nl8ntaG/r1vB/V8fRBKiBk4c9lr760M/CHxcLT0+cUsfBkHl0mOYWerkreTzMQ/Qz2MBiKI0HQmz6q8DXhVLU0djijrPLjV/Nh/pilaL0a8M0/SkhcCUcZ1nOBYKfZKS3Oaq0oALufKasY+LLZgVXk6UBD/N8A9k+Y+AJTIcDg1t9vqq/mQkif5O0MsRcZ/d9R0WUlvOaLPVw/PJLDYPlVLqfZpWj/MLV3m3+U6yOzJFQvEB22IA1FQRf3twY8NUvpPAiBfm6z58zSrfRrPahCISMvPzPwQQiwRTAcnyp9+ovGQckBK5SG3zJzLqkl4c9jossTAMxi+Dr1ITiolOAb5OFu+bRTTVU+dqLPQV07N1Iafx7+jqboz5WODTBm7nN3VtcALk3HDdpxXlU1ebEOerb2EsRs79H12XIGVL/N6+faZtTkHqkKjA3oIx1hAhnxLc1DHRjo9I4dfd4EzYzExPSlzNh1o4Ke1Jw+o939AT3qI0U3Amah+LF8MtUnz4EK1O3L7uNUAkJyulJMGsfLkmm7Ujv+eykA+O5gEbqI8cnz6ld6YVpflh5hgD/8x3+d4cU5ZUa5JydNMXYUSgK78CtnKM4r5i2+t0+3+m1lkgfkBn35bJTZv7r0YlyeUFJvvQ9IcX2n/ZxWV+pBka4p9wt5xiJsaoI97YUsZSNDk7sz9vYfmpztGNPoBuH5xNtlcslQ3tUmnj42UFcVtIYN9d24USL14/czU2iP6kqujuZBwb7jqSn/VMpq8/DyijYQGzJc2Fkj9MNi4AMPPshwtDRPPNZUnkpWWtBJ3KpYfhQXUncSpPp7Mp+nfTF4QV+qW6ZCCXURFLIKdiCFM6HEm4xHZppDez7I6pSY4Z1MjyjFjpY8G1wuBwv5vCqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w10eL/xPw3vsCeKW7oHbetAp5+bgg56mmSHED6l9/Bc6z2B84cQquSmUsdgjS2BSZcBuBtVADO+GmLDvxlQhp6q4z10yMZXdTG3HBITzAF5N38Sjd5mvaqYCIcimEmXNucczjc54SzW1W03RGETn5kB0bla+AD1ajgqbCloNMm46oaGjDFKeImUlE0Pt8mrtv3bIlFNN+VwgIXS394nH8y/WoCd5/p0Ib2tn8IU8I0QL4jKpbbsq7TbzWjGdFiRYaeZl/dTq4RW2rL1+hSjQ5NnENhu/qFIXLDBwQAVbsEYhI9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7tQNKL28Azz3+3MoY9zYVJU/Xoy6MZfkUAslboO0rAtSGXsWdjQBAP0tqgjfD8UUdniedVx7aSQYNkjyi90LE1VBK8kyRL3UmDkO/SE0MbferN02zt2vgSMGxAxS1gRmKXvGAZQl/eKZH4pL4sImp5RmOuYer0XGi4KeXmhmxUF8jnKAo1wjqcH6TWj5mRpBF5dKWtkMew+VeRhiIBDsgkkjHwrfDHhKRlc+02bgNLj+Yos/VcnpiJifRbIyvrLFc3c7FIL2N0rR4ned06wj6yJ5q0AfW+3YFHl0U21Gmrx07ycGKzoQaA0Y3CbxHuIdvtnmDfodGWgL47VcGnkVpomkgiKyzYOMri5CGFgJaScEnB3ZwNk6fVKmOk5fcJimoo1T9QPgyik9wPdsyMka/G8r5si+3BtpFViy55i19dmxlsNKe8wHm+jAKpNxUi2/Vi2ffCby5BOX5KCtQsKm+FAX6Hcx8n46dS7T/RyUQ2JIRuTZgzp5+jDXeY6B88UvqeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FixxqPOxebiQUScvLcolQgSbBmFC3C051Avf/TD+CekRzUmXXGzm45c9/EFiNgtst2xziVZ90xtH2gG8C7/y3Xq4d/3//1OmxrMLu9wY5ErGptT7pThRzsrSTPUR17Dih17IBAY8jPXenZGlgQUNJ+ey6fUWuEIfPY32LBlcbH0F4OI0UGmu1l30AOvf3zdl4FLAuXaxdtNXJty/5V3+0y4WDcKNFMn8T3Nzt/e4IQnSh7Ra+CWGtMur9pXG6F/OTXY9WnGm87CbK2asXUxp7O+h3LWHMSg/5sy0xuosRum324qsphi4k3SmuinQ29rPlw7PvFsIj0vmIfFc5ZhffEfL63esfA41wcXHUn85YkRTkUyprGXxvjIs0p0RY2d3uVeeyee6uWD1Rk2HdRjYKslWrZw0McMuSSuQPppfQbrDqoGQyZs0tFhrB5UZOZp2H5Y7z9QMgXxqDTOWClT+cxmHhPYqjhGn/8yI5ql8keYwjty3FzguQkGeJOLyed01ZB00wXeSrH+7ARFzAWXmb3g39PpS5A37eRbuRCquQuC17iuu67iADCrBxOsaEEUNETQMcihMXpgzek6kaxpJ/Fzzlx42xqcrrJmknO14FuoZhMYkQfWpRVn0nmJQgFglig0g23mH62LosbnYTkdrwDK/OWAumaeYazpcZF3S7DDqNnUy3clBnoCdBRRkrjbv3kkjYluUdYn2tPuaLWq+2MpjVmUPDgRvKloegVl/jnJ9gOYVI3xwuS0F/+mRxABX9smNNpGgaJzHNsThCtvSlkmvEN13xh6SlIn7ccgfeP64+jaitda7WEtuZviSL0VZO8omaxHdm47De/exYVkHXF0KyoyqlVtlm+7nq30ZaBLEfbaE5ytLDqTVMgmnbAlmqdxs7q2/lv59wYVCyFE1BdVZ0x+coxDEvwybglDLBLAgCYn9oc+k5RvVrZXkyq/QjbLBqXLH4zfPdg9mUb/QlndFotpJ5Cg9bxJnoUHwPwO2a8VsKz5oQeY0qFKtZabax9I+y+Qn80ijjcbifoBoMRBVuy5Rt6m2QtOnm20U+Y16XwHt8/t89OamXDV/duZTUWmYY6ZZO83WWOx3spx2qqEeGEFSk0u9JYKVJ355BZRDxWWKjPe3vaFU0KCaITt/YxitIfJyX/W91hmnB+3ItuaCpxePtW54Ui4P37kDbulR9kkvu4VAYsc4P07HxVitsmWxNYDyyQNN+Db4VqSjJvaZWFBFXSnzzrYa2hNmqB6tZkLPPGuPTHloAnIy8R4LtS6c0UdS3/JAIYdBbpYGdy62qnk8dkVa5h31fVkUIPsXR70cp7wVapEbEwGYhZx76p79vwe22wa2OA1G75buqan1j56z6Ncb8yAzQZ8DWDHcCDSUvo+S/NE+iYvHTwwhAYs7ApEa+YqBTGFKRfi3c00Z2Wyzq5figcTgqm3Qr45GO6wS33DZjgcauCvvZVTGMzTTRL5INv6N9/kKy5XsB0+SVzp9a0HQUZOjKzm2+5CtQcjuHsfiqDDVEzroAu2IpZsFB8Qqn5f389/W39TLD+s52cw+SYqTJhGa7s4r3BJmwbTOI7FtuPLyjaLT1Z053xgyA+I4mONEibQhd6B3DoAggMPawqcJgWKd080CR7cF19Q3u0PmXlt1zF9+9qZsqG++lFDLpMPeeKyckAj0n+C8GQ2JPmYTRuZKeFysXQ/SenDfWAPwI/MBLoSdwv0AZDTiMlRUiyNKj2rVhmrouvfPnpn8NurCXeCPttON2wdqyL4/tHba8gG+R8g4StIMhdTQBInK7Et0+YCqjXTmVhmwXnz6kXWacckX8FNCaWPy0GiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEV7QrKexg+XSVcwqC11fH0+4mWn1dFVsylgrhIi63Vnev0VeXaHc6biulcI41Ak0NW0qqVFj0IqBOpCqpGrFS4kzIG2TYiHvRbAdTtqeSr10a6yOEcE530Yez96ZBHy3mX9er9gSN99Fzo7XP+dQTArOuyOXx2L43GMoGCwFTIqJJXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7YilrHFAs7qObo8Cz89OyINcygLZncuoB1D52YlKxgDazdRR+1+jBHjcI7+/HJG58ewm9S8FDtLquQBPhWrf5sXhmTQYeFYBRq3uybfeMNYx0ZkM5ep9KLDpqK+c0C4AjvBeCnwV0e+vW2pT26gvtgY+qHS+tsh0uUkagfL3qySu7fehW4YDVoajCfzTllfxP4+CVVBwpkVns0G/iuxaA8E04bsYXJYwwD9w+196j3lzhsRJzICS/qJXKycLr3FKuAI2byYeem6vO5uqGthAtZ/I2brazeo/LfGRNzuSUmoQTh3W/apkq/qjSG7a+4TmWnXGkCah0JnEsStirU1lq35rS+PYf5fGR0NdXI1oCznLTexJr33LPZ7UjDljk3yseFpe5PTO9ALOd8ndVu7VNSNCFdOJJtY4FS1fFmGqs2GlclmnpavVbZBi0FcdFlpu6pkWzDxw0emF3UZFfrYGqmUfj48eLlcDDBzO49sxeLR2ZGXWTFh9x02huOH4Ie3omizq45Byrv/V/ZBKSZx68kwtVQvEwUKydAjEGRyxb8Y4mmkqKfleJ69ELoU3EsIWm7oubYXhX/8f+SZfWOaUj+55IENMp7tx9leDNUaqgVihO+EancyF/XM4njby34lN7QwRQhmjzUOBFCBimDFOIGPG/MHMAwv8GCyM/k6G77vaAeaV4Dhn744cWSZ/BJZEpKULKoe02uIuqEcbky7KmgzMB1nuKwl/JkYNqOPf/Awcxrasb+CJy19tU8LWx2pAOfXt3nCVnACYi15SmQymkinr6jmeZgma6G6buXSGP1M/8jeboC9+9RP1lLJAsKa2LxA16YO2MtrekNAhxsH5u38W35erwJ6y/1bnyEkkJ95i5Lh5rtJIrH8beYE43Ukgx/wb0lc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKWTLMQSGTSDM/Vs80YZ3I6+01jGoicJPleoLq+8QQpfAZZb8YdID/3anyYq/PAy5n4HXF1ullHrje9iz+Z0DpjZuIVWFlzhqik4+bKDlBxvP3u73Luo3gn7adgf4SfIjYt+VoxgbmdhUJVx3fn+r4xv1gvMAUtJ0XdRnhJmlWJg0R+jPkwkJnYTl8qKHbew52Br0MyBQqbPv6fEznEmTOPMRH7FhERnDFJx3R8BTNy+uK7yJRYjBwRpzvf9egwl+8+1NXNpSgrL6LgyR3IpXXM11PWMk7LZmPnT2FuFoXeUDse7FJSOSBXkBHht9Qp0xBZqiv2cBEW4S1oJ/U2QIhw5ffx6/hUYMUa6e3NniL9MKais0wumteH+ot1adqYVQFc+bMSz3dIGnxAdkP2Or60dIrM3gS14XLf8CM7/PKYxgkoJYX0m1eLBy0CBVCozpRRaGmgECZH2LuBfBNL1r7okzNP7GkCnQlGRvONxrH3Dm0v7NXlmoJrSfqBD0kPELuD0h4+rM/2V8usdfAy5OhYN1id0QTphelPD9BbmGAN8wKjGWbJc7K1sEQriB8kwG9ek1ErZZMORqKG+9Gg7++IZx1Hnuw/xpI2hIXv0FMneSq/fxWKf0xSoFtFDafkY7rhU0ZdIpv5/hC3sMcXh0NQ/tK4s22oPaprb6JA+Si7yFMj+tiRwnxzVdYTOM2rDGga+hMtfY1mByKErYO6qJXJFjB2R+4aZSA8u7DK0jysdzkPY8JRCUwZl4s26tUvnTJPVfZxhnGnZ5zmwJClS5aKaGkl6OyJ/5HmtsAMTh6eZJ4ZIGjKFYXAWLxOg04LSIMpfT7SFyacR/CSLv9UO4++TvW3PCtb0dMoaLsD+fO4DtpaMjIhMYig1B26J2L5p753b0a9f+gNKYNgrXggnqqgnz1kJWnl24oLSOogjAbitLo8jDPdKL0CybGSvynx7e7PRh+dG1K3f7BLyjOe9rjzYNROZKmr8TI5b2s++tCWjxXr+QG+wJvyXpYSZdXZrsXxOaR2zGbf+of6ea52IoqekaarvOUlerPDn8ZLlk7v+CrVbVkCcTCi1ShPFYxbYMuRTl3RFn0r6mEwV5Xiz5p9glnO3sxPbxtKcSuLxHeyr/xrveAi0jLxcsENJ3fNWapnbPMLh68kPyceZ4GYm7+c5PGqBpY2eAsjsGm0CAq2h3c4Rb4mbfEEUFVeI9A19IJ0lP+uTApzdM7lep9LsYVgIQqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNOb/tYlRwERQQyQCEk5I6wjtlYbB7T8ec//Pk+Fe4tEqg/2RaimM8mumCPBegPokGDpvubRdZXi8NDa678nU8klNC6T25RhhsUelJRicgMsdAtjLPn+e775rxMblof67EWpXlel5By3lmN0gSJ0dHPCNrvMvE6Dqone+sBPUmo2gwd55arVvpASVjSCMxeb+gWlaRXe/T0a4U27fzpEg46yWIjqjEJu1kX+iw4rD54h0cRD5ZsPrOrfggiZKj71nFoVEhvCI3E54ri1RCw54GFsGYWnF4WCFeVbEYfvmxpqRyt1Mw7SggQK/m2Ko0sYrTIyBMSsM2PzLmO91JvjCvYLgiyyxx/Y0b2yS1YWK7XB93qKcvI7FRlHI4rafLD340X1jDJuHP9VhFhcIpQ7Cx+DhIrueQeciMT95gRr2o/6p0XUfEGBhoENYBcDk16Xj8sEg0aLbJd+F1L4vf7LDqypyojY3nJSs6B3f+417BZVqH/rGRky6ilDXMD4RssUjFlNOYTQYhUVyExygFWZppnzAstS60luF4h4m/NVOVQR3cV+uOxI6pXhuJqshNL/qSJgZfdMgX0tc4TK6S0OrBcElc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKW5sWYg9U5yvkZHB41amikMh+9yeTVElh0R/+jdywSvDb3JZih/16NER7hLkeroi9dn1izlEmtpv3UoShS6X5+SbfQSUoK3O95kEceH2RA4G7abYxLnr2OQVVJeNHe3qJKfQClJrOnTtfr/NQZhHVSj8mmZYoJI9AZ9hLOxfL2Bw+5SABi1rk0EKYSHGyVecvrrXFdcRinUNTeGqnZMl+ERrfly2FcmH/J0y+dDWyuqQ9KJZVGsx9zIhhPXGmsMVGOt+5Mf+KDhhn76pVQ8FDCYk76flUOCBZNYD9mDXGFxaNX78QsBHG3ZTi3YYPsR/MOx06/Cw6QMck1IgCzC/3Vio195YUgx/s7VGzt8qwOvFTil/Y4gjHDNOscdq/ozDVLCwf5a2dEK+0lvc0HdBo0brqhSqB6+vQ9pvD3OUeeiIK2SuTuuK/zBpXwUm3XUH2J+ZZ+2M13bZ0grGMk/OxChi5jIzW1fLT3pbcPYIGmqa9CuDmDVBVyQkNZdCWoIojV2qfNKM5YcxvLR6McTd+yGbpSL1Mg7tNRoCVThnbadJTGTV92pf7+iyZoDcaS73JrcKKYvp7r03KYIPfbzmO4WDADvbGxFsfu2v3ma/FAt/zRpMSmRI72LRnqsucdXOCo70T8Ri6UtyvpzRiTjbjLCAWglI3x5crqFzx0sGvj7Nj2wGcuHoVj0AwjiM/aycN4UtjB8enx/XHkap2CDS9HWZ1d91I5Z/d0dZ7VnNjAq8sqHZV05p8jb1U/TmHPkwc55m6PngMWD/+KjLN04BIQELoma4gs68LSy4/acknagKAkOGC4FojKQ1nfCmDtA3+QCnLDqPta6Ux22dAoo6ONmcNlzXqaUjhYqKMS1NbQstSkYZzX4TS38xMfoVnfSKdlnMdfnv79/cLbjoHGhpZFgo8Hh454Vqn6TUysJBRoaVzWMpNrUOyMth2c40Nvcnw3WAo70zrU0eeaFniFYZvNJXKwwAw4bjN9VjgeJDnTAQ/mpylG8KnLQfBwBzo1pk1d2dTLdyUGegJ0FFGSuNu/eSSNiW5R1ifa0+5otar7Yym6DMwgpUvHjw4YeaGqcqAHFytC98UznPsYct2DjtHTLabDfPNNXlD1A2ESaXtIC/JFRPk+yePbx6yU56UwSbCe8HN4hetcMVGQQ+7O/xAAcagAuMjoI17BsMMNH49zj/shm5N1xjSqy12PgYDpDlOVTo7xcf8g3o4jaiEG6lE4yP6KKGqa73/xCNXeP8Sroak3OUqXfi5sQsu1p8XLGmtT+uzzdvVdZ7eaxldvfriL3ZSsx4O9/d4XnS9kdjBz1WfSWTQvsVSGBKI+ocYGAuNd+mk8JhgNj3qnAFgsvygn6TIrtRgQTAv+Yvu6au8GsjE9VUnizRYGCJuT0IAvnrstTGBD/2VbPiTwKe3TDkA/BuDgYR3bxX8I5p+PlqpB9vJD+wKN/+sB/7RsqIxYvFxFEzxrxag2oQateukCUxzng1LNywq1HN0UDZkOKtg8jdKoqpMxAwtfm2MAeIWWw491AoTUGfmEFkDCgMncn0r2CMvsjRTy0SRiK47sZ6r0ywGiD1hcj7TTjEVIw/eGJU+zR5n6s8D0zNTfUkBKaTdNRBWHaQXp7XzziGKJevWo6IWOwORF4ZbglXWlANZnfcZpWpXdZbqXfkvmH5qSfI5e3ZAsV94BGwxMGXfSbVkkwOeenf2XzmoNvAd8XsTfsz4hLpGF0b7j3dEEqHNBLc64TeojAf61s7ZUq+7eT7OLD+ZKdkwYM/76m15XfFR4kL1Xxv1fksyKM2s9GdtWsCkj2Z3y/xeOqwQ3PhLciQh+CLWTj/yc2idp4/uClOOI0yNiqZfQSc0HLa0TzTPWQyGAtIBnknuydba5vNUkcInN7vUpkZ3AoNJwzGjpLT/qf47vCk9a6TyPJ2HMOLKfz8Pn3lEq+e9dZX9hgGG2D+5Egxqpm3b1535ef0075fmTuB0QQ5PLDhfeu6fmMRJ6rj5zzSKb+C22h6P5EdYWYJpKJJmR48L7Yes+3YQpkRC2QnT/scR3soa42JDqXc3oPmf8Sn1LH3QL0zEajqYb7HkD+jdI0RcDgozr4VI+hEvvvkAqTaqTzhwdJGhVeNMHMP5e6VjfxZQjuJGr0aJzmU6ptPNgMpADNdsHkdR5QPA8CcnrdcYjl6YJstNCwlnI2AhKmRYy3cQttI7NJVfVxKyJn1Dm5+Tlh7XYiVQA8BqT0JBW/xkbW5Y3f2ie85JbWpK/jQGOkwff8xzQza/TE7hK8fps7dQ3UYV3kWqynewi23otwD4Kov3MaScPeY3hd+w6ZgbAX0GLs7eXAs7G9qpo5Y8eE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkLBii2EqLQC6V48m8WH0sqAOiVXN/bctdRmRUqdhxzuO4ZhN+OrcxAeSoHmp9zdDQHqThJ/EcQw1EJWZC+9O26AeFIjchtDlMeZxGo3QxTQwE1GKtAHUGBg3mT8WqimhDrG+94ODv6kTm95Kxw0naNjO6i8uFcdbjayOCOddui8BH0Nm51TuFcg81d11KT7PEmRimk1MBdz3XcQ3ZZgeb/2QgER13TtN9aLT2lNINeO2OBzuTeziYyokRoq9T0hd8cTzPTPa93CdnL3UquyvgjqJbQgEVD6qEAoOPO2Bd7GQR8WcqP1RAMEuwnB2gdlhecKi3EFo7JO1W26O/XnavJteshpt7ONi0nj8XBoqQ++L64TIr/NCxStc8fweBE4OytK9IQR+0KRpl6jRh2rFkTHMdag5J1aiOrcA3kQ5GdfMz6j/MCNmb3hNTR7ieT36/4fpoFJbLgIwXa5wX6kiIiCNX9uiFxrf6xd/6RMICZeSArNANnKH3+Vgl5JL6LYQdp8cQzjMjmpXYkx0xnjODloUd4zqAovcX6lcQMIAccjn0oMUuay6c66PMUSuHYC/M9DFfc5OVy+2NwYmRcBdvaZC7VdHpqKo4eE1t/XsTdMhX4Bktl+AUJDUjjVup0X/NF7Y+BMMHWV52FQXDHe2+uUMOR7cNnOkeus4MdH0yWmOpLSekQrPSBRkJOW6KhMtePHkCYZ5N6/ngYADM1UHtIpmu8jT+ucoPmdshxDc7IykHjw66AyMy/dDT2U+1SUBfPhaV9ZpAXzTH9EQ9Z5GCMjF2pqjtxWe7S7Aafod1WUzzoWs+CZQGRKyz5maVjKtrOU0E2kRc1cuHmTsx20BTne431VUbjOH5c6y7AbG+qhJALTvbuBl2uoEl4JiBt9lddBnOMS4rD4U7ACbi8R2IsSOcTXWaUNABbkx3koCr4zZ3mUcqIZ/mja3XDSfU0FQVqskyqIYQC0PpWLbIUlfWn8cmlQwyfVvdQKkjnddFGXzZzJrNmFF3QR3Roa/0/sJ7lR+CxHsAvQPz+TTQET8cqPNo0mXj1y8btImib2h4wuWp5MFTL3DhirVwX7kPJOc44I92Z3mS51Pfi0PY0RNgcRKh5tQHxXeDFUFX4J/vQMqu7+n2OZZ6L9As/TqXS2vgRyaVDDJ9W91AqSOd10UZfNnMms2YUXdBHdGhr/T+wnuUhxOgMLmdyIyIlOCsMrmAw1hWX2NB7SRAMrAVgKdeXNNQK1m7g5YyvYSwyKdUpDtMjNRw5pduGq6J6RNznVONKcWipFGuCTUqZ8TEu/ZRFhegFGvx5BSqtsOpuR2uGMePJ7Z80mTuDMKlVW1DnprB+3/+aYEC8GFAfAqUYdgOuwfyQp4CwVbTOJKJ/kXtfcX5CK8NplR06ZEZSNjeRdJg2y4KVmzRjtdNMiv/jLTVJhuH8jWS8jbDLwz9WG8eOGKE9T26XUlnIeffN0R2O5Yxq+GFr/e/ULsaWIqBRqveC0VWkgTP8JuOVosGpFtCufdioV2ICLflritlZ6U0vz1erLHY+XHO/jYzbeC4x5uF/IXx+F0iQeZ7Zg/3c3hocR/QGhIgXiwywApjv9GirmCoLvR7iG57BDgOxwCbNS/RYTWr/WU5aFQXBL7v2D3sH1pZAkxsgeBTKagYMxBkolFmo9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7iM/ssB/Mv3CLUQQu9eMqrfu+9wJ4WIcxtr87yO5uZPO+chGRbNO68o+lTAaz1FRIt5j9o6er80MCtytIvv+S6npGHiCFbbYVJQcphWrWRXOh7XGkE09tKB3Z8MVUUbXQjhr1D9hFFghOmnkzg8Dx6qHwJes6Gs5nLP9HjEkbBKp42vE9xm6cmwesI9jolfDH2dFYzsiJsDNHZJWc7jeL/vM4eDZdam1jCHIJlm8Oi/Q0ZM2HokTu+BsblM4NyzNOZ7WWST+HExL+z0d74eafVQtUe1Uop52IE2auGwWb5iWAMLQ7cOkEj9iD2dN+pbbSEmg15/TIfjWOrJ8mtlboG7E29IHHKmfUbZtM2fPNtTrwoiZsOPwKrOn/MTpUS5Ljair23r8733KXRJSZ8PHmBc7LS97rg202gaJWMPSMtU6lyohRpfwdyb5bODtu2UusStN2suYSowEkzZSiM/yB7HhVLU0djijrPLjV/Nh/pilaL0a8M0/SkhcCUcZ1nOBYZnYoMqk2dSjmMHwEjm7WMvBjo2RobAXR7Z+F5S+BIW0FElqy0ByELFlcDUhkeKbidgzGT+q0qMQK7cuKsU7Fep8XoUN8FMNbm/jgNzf0SBQyh9aDJV0+dOBmH9UaCaU3owCg5v3tTGcKqo2J6y+BJzPrx3E4SAmh837XlMwQBf0Z+h7ZsFpKWwjSwiZ6gBpdQXJEgPtv7L4UvvesqQwsSahqFgA/gX3VuhndKHdRZ/CKdsPtfk2vhgWMa26Kv5eFQE1vABiXB0HdcOJQyIkRttjCMjwefwJW7e/25fqix/EenCdt8GuHEV6CJyrb11jhWmDuWZXfvaWfW1B5vWH2IM8J7wE9noqyjrL0Q6UlYso1sp+IZ9Oh62AG+6fqyrw8RF5AlioKZFjMoEJO9v18Wfr7w6X8qiv0ALYJWv0dYSZ+hsTkeQC/ILIdyirUfMGCrxXBJuGODhQvlZs1fQbZjUTkCyzK2EMFeej0NeLVueKI0PgE1qjAPazRac2FbYHrJoY9YOyKZXb4CUDyAL/UPsyqiYzfcWYI0kqX0PXUWTP66Qla3SsIyS9QBfSZsEHFVjJGmtFyjpoAF6eh9y4MOIUKqi07MEYQMfm/pjhE6casFG+X8XK1obSk3TTCoywMl6b6NNzLsqYLH8sNU8hyudd3r79PMlnFoW67P6Mm+xvsPNrJXIxFU6KACetgttwTrZwN1Fx6eUDt9yFmAzOp8PlgpmWIzyiLBB3z+YziqkDuuKmHfS/GWxaM0p+Wsr6q7Wo4vVCUyYivph2MLy3uR4aOYuxZwXiFL6yvNaOzbqFQv8InAHzBqJ4j106yMi+VuRZCinQmKu/iD80e5ideIdnUy3clBnoCdBRRkrjbv3kkjYluUdYn2tPuaLWq+2Mp0TrJP584zG/q5iFFB7zUK5YdEy7Z+92VKPkGG884L4YGIiEliNR6eByCmdy5fniEgRSiaD012LPyxIK7XpkNKoWEZzzczL21SgCcnLagj3QDDkczXwWmzq8jxsRN/RQ7nrOdPMbecozfegBSknFBuFIANWcZWwFyAWoafrKdx8u8pwaqlZT9PFpHJWaZe+SUsI6JszwV6UQryxNyPrYpBWGtPtoptKAPhYlSInye9nOStcKCqtkTXlOUgt+L4+PpNPYrSybNDCeXI21ShZOGU6uenu8Ug+nfXsvawDqWg3geUqHMXynsr3Uy+HnYagpg0cbFJXmvKuZDqRHNQYYUpcVOB4/Rxdl6y+5pj9txohRHuoYImVcg9xVBS3kC3XNnzyEwXKnSeWUsoT607/DZ5M418FiMuc+6cXSdHwuAV35zzlQIPDp43IDxjsv5EJ17pkCMIGf8emyGEwUb/1RJIzWqPVjNHkIHD7XNvUhdI/5bx8WCdSVdVlNcrU3ZsmkbPlJPrjybWPmka4S1X4JjuxHWmYph6o8png1YTSb0h8SppKo9yns86VwoeQ8TIdejocF5HTTtY89NnxfPvykaGJ6i/lV3O92qxISv/IvQicNJnQBS17Rmyo4Jky6wGirOeoDMUehnaBrW+C+ZX68q7JwPIXN42KEkfX7ggHsDH0PeMJZr3ChkwCjby9aDuLhC0TBwVUA7g4D1RHuzT4962ltUTW9NtkGwUpBRLT9Qq/+pxnY74e0r3qI6kh9jO8bp1vZYSZBEYR66rfGXLaJuTyO3Xuo36qzo4Q5xUiIO5GycfSMe0C0J5sqNMQqo+9oQHfOF4cF8PyOa7wIa+fq1Ze6+iNKN1wJR1sJijpKxKtUueCD8IyF8mVbdKqibNxhtE0LPjBd3BlX+1s8DCgVyI2OfxDC1yuesxBW4NSDf6gHU7Gb8gUjnU/wOzlsK9Eqr2GcKh1szNNgeXFlI52oPCUJamJLX7HTKtVOPZG8Ggc/bQWHSBaf5qiWXSIJJermMmPQoJ/LRLchEMgf/4pEgieevWdzUuAbPjaN/pIij/1vBxdzIYGLpyv5AyfLxdHLccGCqXvSGVytb9OdDOZVIbtk6hsCcOtDwzSUG9QZPPV8BZow3/oVOHp8k2QGDZD69dv4lj8yTZCJZroRDByqQtX5462nXkdOwLOxmRgaLdGjMBzcUeQ9rlZDfdxNjuu8jqxwKxxqSrlp5ZD4Co4Z1PGGzC0s7X5Yz7D5KeIOK079bTcmKDIxRuH1D4UgNl0S1tg5WcJPbbG+6S/ISlZLsj692JwrQLPl9Qst4zCtz+23EkoAe2x5I9Qjf+7VaqVI9zAbKjE/as+TfZQZ+YsYVWOa5C4hUWhe3Ej9hqX47k8aosC3NrGQaedeOzPJAzpu7ebCjQSKgsGcxjB6y92v0TBidRhMD/UkgR/IFk70knutbghiF3E3dFOGBcX8kNEM47b05JPw5z3RF37A6y4jNm7ZezSY5bE3moi0VhwAD/NUhFMdOtHDEiaBKiSEFyx+l63rwyuezY9JArJ3DJlLo5wTWQcF1EgTa3MBQPC4D0p7NpUVcl74u/uB+7ypGtCqj9gwRv+v1yjzLLlMxvAeTx/MtyT72MgufkXfYMjEnqxwd3nECWU16Xunox5Y1HV9IrZHNXU3U+CcbDZOQ7X6KbNJ89PSxYbCmgxLK2MVr/3g+t0BoAco+AKG5VU+Utraf96qLP0mYFvOGk/8vtS+5P2/xtsBiqF8eAHYlCTcG0x5xwzly7XPH8WgYHnBefRA1+4xBdoa++dsiZBaH64+8DkpC0C5hHjb7RR8tXzA0BfmIC3Frt3RCMCgjoG6Io2N1UEslPFxP4BVx7S7m57uW6C8exCHLmi7+27ilpapuHVA3S0/cT4NyyyI97HptlPV6VqpNHz2Fe0kScZsOZhEgH+lCZ874TJ9UBknlVTr8G4m+5ICTN9M/1aY1Xal78RovQz305yOezGjHQXbxbvGtY79+XasTGQ83YXUWWsYpcQYiyEBX1Xv/j9N3Rh4wzlF7SVzp9a0HQUZOjKzm2+5CtQcjuHsfiqDDVEzroAu2IpYwBJ2KCBWKyybglmZeWmNCyDDkNPbKj/juiO6kI9ggN4GaQBe//jEpQZ71IG50J7kbEaPrHy2B7j4H6Pyjm+DqrD5CIi1Zyxr5SniS/a45Kanb71NSBqXYGc68IUGbY9Y3UukhwjKmZha/2nIM/UQfzi/cZ5I6vn9FHkkwDgy+lkMED9npFaYyTvgI0MEvkAvMp7j1irVKrXAyzfhaiYNTAD8gZuuczuHrBrlwY5g1mYmJAbmr46MS22xuyNbkBOg4BTN3Y6Nr0RdS4lfvjrCthVXOGE7oj3dpDwJmGSSWscXJKQh47aqe75zGBTyXf8NI4twSf98t1xN3uuSl1S3smUfliHklNbUskQHa2a4N4Cup5piho+FIw7qQHPv8XaFK56eVnZ1knKNidJIRn47b93iCzftXhB9dQsNxZf2p4da7XIy17mjhRV+WCWFCNQwl/3a0bpMk0u7C3Xn2Z1+ReFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FgmHiy9aNZ1okpK2CT4MiiivU6BmwkTMWsi7y4HiY3e2Q1yRxcPB/NV8Q8y6ftAVb4MnY7r7wXTderHj+eXuXd5EzGXPAoQ4t/+HfcZlKsJtZfhuXtYLxmeGAz5cA44noq2sn3Fly49bqp7iCYcz3w63Z8vxI3XOZFE7KYx1XI8UgYfhXHOPba8aqVcuoXm0T/kOV9ZIrrJO42BKueeNF5xB/RX6YHm6CTHw6g7/HZ+DgLFamVeBYyJi2VIqdyYXLlvfaNsCnHCHbBw91zXtvDR0+byuG3Gt0nWsXK+0YGWfiDq/CPOCRUBjWoRK7iD9jeka6lVBWg1f+kAjOy8n0WCG4y8JvhhV13s3vbeAs0kFwmmT19nPfsXQMlInIzmwyoIklWqqT7mu++pSHTqllAzJ//BghESvkGsgALo0RWn6q9VpohrEBrLtgOekj4ITrhT7kg3YINBgJ/nQFelKAbWiiPJpD54wb1Ru2mil+OTVaSKnCNAZa7wE0EXmeNA32PORtA8aZ5xEx/jYdJVRQKaV1Qzl7+F9htNgCRNQB1UVyfjZ9ZvwNHnNrD0ufEuOJya8LXjyUzu0EqbzYduezPlFVpIEz/CbjlaLBqRbQrn3YqFdiAi35a4rZWelNL89XotYNUvwO+y5/nl0oOJe+Ld0nZzyDodib9cKsXxMKJ/3zqlqweAy/bEZtsxGJhUma2Fmy6OEKowkpP4mZp0eWfgNEupU4Ra3rfyF3+QsUVJdRHxLhAOHVDNgqwA3gQSv1NNauZ6DX8cT0OZwzVPgekcqmhLmRmHtd403Tj5mG8oQY9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7mOk61oHwsxeAdKSdxS26n57xtK3LoGAfqfNKFL9IgfNNKVmiioB9t6t/SARxrkrMfJRsUXTo8Uxp9Rk3BduNGjBl+XtXpTEsiri7DDSO3UfDXsqEIycs0QJPRMWTBbAgZvGOexebTPYFyYn0gUPQLNpTG9A+RWzypL9y6zyKeG94VS1NHY4o6zy41fzYf6YpWi9GvDNP0pIXAlHGdZzgWMxjVahYnPEaIwxFmo9xEkQo3ALf3/H8txLE7xPlPIkLzAN9yPRzie/p6PNw1GQNQErm4BKHqP4pnypnq+bio+fY+yIeZ4RZ001JXWxQiTTSdfDVVMTVHFUTTmFJvQQ3ixYLkG19fgf4ZXDyORh1j/ZOsc8hQOlx2HsW1ewde+ADNTD0sVOjYElsf2SfNk8q/p7PWOewuWyipt464QuM0c8bOdTMGeOMOoLTbcCVwePX57uaQCn5bAndZWiaqzkieWXtpRA+HRUA5fC4xFcOmaBnnqh/6QYMuQD89RDMDMhzUge6uaa/RerEdEdbbtkwA8GAf10YnI4rtGQqk4AnRc0QOPAxEeMArJdpWKKTM7CBc9bY5Zdd0UZjxeNfDn0uaMGi8GWS+BkAsv2Xx2j26e0sCEInFDYrPNmgnJL9D3ZOvxSHajvyWm/x/ZHkXtNSuC2U4fawDNYIRNVIH7eexVZYd/iFG35yXD7tq81hUwqTilggNgvqcUB3iEiCL2VLK65cPi+KyQPxnDNsy7NdB7pi/prfaM2uHdcwYm9MMCAdnqN4BCjhIVsaUFfdmxCOCm6gZTv63p/6nktenijVrgctu1XrAB72cil8U+iQu3Th0Ko9uKROx1wOlIT5utN5Z2v+1cAWrQfuQqcQ7Je64wUiiXNCeV99IcCWszb4DvX4AHMFYgG7K0DzEUVOLU3FGuI0hp0CxFefd6y5ac3n4qJJXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7YilrYZmyiLm+17TYu9g8dMOy8tNWzkPBlLoJmLW7d+i/BsI6G/obbPvTp3V4hOELVGd6Xm6fPDdpEc3oUbf7NshOY0VEftGi6e0YNR7UiFTK3BPTlPTIUh2YEOfSnSj0ydpC0jIDUH3FYwIFBFd8iwLNWljXoKr1tibgVE86ZzwlvRMp696NHT6lujFMepOF/R/0fuHKBs9W7wo/NwK9Q8bXRO++1z+sl5vx/d0V9QT+Vapwsvs4vDHxi4FHQST+nb9YVSK4Qrz6CB0h2+Zjd9otBPIHh4N+8NMboSVn6pRjzOPQn0HDLYQvbgR3XtR3iTlopm9GqSzgEriEhHU9Dh5AxWVz0NF5phFRvA7HR6qHWaGh4UNm8ByL2YwuEhE4rpqHeqMj8mmIJJcMLiAdexMWQ17Pgk58Z/2IB4kwkgalQ+pNDT9H0Za0oq4Rj+6qkahUIixi+W4DVGDka9wQOUoLF1jcPop9U2J7vVd9r9sOdH+PNF/WOi1tIluw46mc6ZovmiSJvHCuBi6lM1YETp7Z3R/+/gwQMnMrtMXIVLcHqAnI7JFk3/FlAOQ5D3+bGhEiknM4WNdQL5fBFMcgskeje8YcsxdEAfnoPRBnBZrLyC+9FnZ1JdPTpXDRe76d13dAqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNRDbSJ3wnTJbtiCfxIjWCSskhnSj1Wo7RQsBOVuisJ0tFWJHB1if9SlA9QqueSAPzKQtkzM5fW6T5TV+f9JCuO83Ng0xxU+mqtopS3/sF+oUJ9Qk9vt20GeSvl4J6iIEcOHwrKt3B8TMjCCp2YSNU9eJo4GFTAFZ6Et7WDbjy5gFRUwW26ZJjyI0MpUS64pkwuFRFjzzj/7BwdR7nLQhgNGXapsM4opgKZIkKSgqBl+21lqDdE1LIO0eoxZlxf4E8WzFvZUdplW3XdrDXWxqzD7hFNr7Z66LmUjDWxdpsiS+xcYQScXAkvHHe9GWAuVwfDgC1lxgZ0VYYL2XuxbVAQsDBzL+GJ3AsYYfgY3PcEQZ5maGKgo/S3uPrSKJNhg724PlZWKMw9oxUIzInxfdpJNHrgWhZSfgL6acSsDYFmFOtIaW9twSLPsU5oUkdALPZiRUN0qnMI3BayoZ6U4mOdEr2et8/qN1Sivx7quk1fZ4utrKyYWkOt9DNfaT+fWAj9lxMhPExGDVKnYr2CSaL2lPiKEScJjDmSLtAhBte+Jx7zykMIpuvVQnUAJ5mRh2ARWJKReGxn7ReyKInSXjGmjTfj9gfravJbyICOp+xFXjzQAml1q+tsrePJEBFNSOsKnrIsm9leGuimPyD7MBjfiEnpfFvEyDvdgOQSt+qvyqRCSfJV8G1HwU0gCBfjxIeN0Mz4A/ultVFAKASoY3XU09VjZXJjR7vNcl34Wkb2Yjw/n3KGTa/7IpBXXl/48817ScDpzEZZ9pRxJzC4izB7m6i0qAFZh4fEpq0gVyHcb6HcPlytZRpQbSV7GS8YkRS4xNDBzvRCmRs5BKqzPjAnajItisKO7QIpv63V2zDCg1xYwN7k83kPLBvSuXYUI2Ao4CtIlJdHdG9KDIevjATabqNQLZSw2C+NxYzFB1paYHdNTZEtRBNQFi7gxir7ldgfF7Ng1AART6lVUU7NEU7NhFAzVA80SQCI2J9qgkQk9OrS29upaIZhRIY3zbniDbk1ICSe+VraJqxjAxxn6hymhgUmdsdFE93PUnzCsSbrR+/8heWGUO7HOaiCLozWjaGlkFmUHHYg6EcOT6bseQ1ymKkgTUMUPJgqAXOhI0NX15XsLP5QNcTmzACBIsFn3csavDgZFzH2AdtLmIhtqt0IoJPXx9IxSgV+2hCehBGML5qmjEb/cUSGRyvAAHnCr1JVC0sP2JeuCaUXvR3slf8YSq7XECJPFpG16muTZhUSpeQPRbH7K9phGPG2XstKVmdoJWsi2Tw3pXdu+vdx2Oon/ztetH+kzgLE5lGj/LZnT0eE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkKBQYVoE48g650betfhphK/UqjEIHGqjxi1T6ej9HQG7lXFbQ7qt1hAwLfoGLWATphe0cNSYpMSiwxGJy4bIyTExAqfWdz0qj9KwzV5p1r63Uhgw5fUtQEueikyXXldxUxzONznhLNbVbTdEYROfmQHRuVr4APVqOCpsKWg0ybjqcmBxgVm0S4rlyFXcYyDkWa+24mFvNjXeZk//qBXCeJl7/buX2mg/PiZrZQ1fALO8gHWxccRoPHzElC0RPoLWmsbXphjV+nnM7VLo4xVNLIgACdDQsMbElUtZQvC94xujSVzp9a0HQUZOjKzm2+5CtQcjuHsfiqDDVEzroAu2Ipb8kEpPb67Nx8cnVbmb4NdOPfSeP+GfnRWb5Ai4Um187QOCBv4IFGLr1lXNodyr/HDq3DLgIwxK9t1Zm352P2J7Vaxt3XyTS0eJYArDqQvImDEswVJExIuBFp732Ul2GCWpxxLn3eeoN5xKnJ0/Z7L9iqGnutkc5IPP8BhS9nrUwA3eWTuPQnRUB0gQ9XWTU0xeWAKGSzjR7RLMfy0OhE1z3E4vEv9zlQLoKqSa4PJ6ISm0esCb3i1bWTcj2CxLyLD6R2mty2nFm5A23M/XGXM+3Pvvr6roj9NYWjgMWH0CbB5Ytvzrg5MEJkgzkAoCjh4vET0IeyiWAJbGHfrhaY9aadve6OTRhlPs2tejloBeRaYDgVz54Ds2ZLBb1F0VhvqJzYcHGrVlRqvDqFO/4cxuzU08Mi4qwSUaf5kXH88yE+fedCebL/G4OFRDL46q8fUPsuTIgg0EWD2A+TFxckgTOoyHFU2YbuERvf2F25SeZMAV8Fx3DepVSD0nTBKVEAjLJIzOUQQcZOGBYrJgioTVIRxKWsuOnh9+CsDvPDGdDhzONznhLNbVbTdEYROfmQHRuVr4APVqOCpsKWg0ybjq5ZNQRQfWLd48muRAvYYYcJ4hmSDMLl1Ccq7wgaB4at7CgdLZv6d0o7ADN9tpCracM3wewLpJ8gowNGPu7ZHOTnOB51rIlfghFYs6BFAZTT1yd5wP1EZ3zSEIZkUMZBXsIzEdpuX0ylflZAOgK5EvXtmX3F2a9SdUAebtFjL1N5K2YSklTrI3q2GXKJQOKZ1EsEUIARdusRb0NJOE0DJy3S3mx3ADqdGoZIsMuYQLDivLdJW0GQeEFLxR6ZbUxhGTdt5A1Le1eH9anSycVR2Wjc80SGYORMGjU5qMpmuHoV9M6dy7nKN++paWSYyM2SKQEFpsTWaSYTp+rSISV8kU9Qvf7eD3mxQ2OWfW9qEYYw3VJiB8ANC/rFpgL128x0joJqGbtYogMdbs8UEaAEIXNNZ6dJnapDF4GrJ2iYqQ9lpnVIaC4lfG5149r9VVBnrHA56E1/H75Opy+uERCn9VcDO2d+sjNGKL0pTC1AcVFvGtu2e9z+Fn9Qk/lSS10B4XE/z2Wz7tWdWCF0OC8OMrqziU+/egKRyJhNs9KJJNLDXpZhGu3FCgeuqBqEFtbN7n3/O3diN3c+bXqaQ32pHM5ukXvNAvuS/nv0Xua6eidHLDw2sEmbCqA+ZBky0O5j0iqyAHgI0/f6jVHH08WRub+oxbxeJkWghxi7PWjIQOgY7p3ZgRWvU47KzkFjaVQR1Yd++0CDkDnF3F6i05Ftx15Sw5EeMXwdrLrubLo+jbC8W2z0MUFPa8vGKJG8cpR7R3HhPYqjhGn/8yI5ql8keYwjty3FzguQkGeJOLyed01ZCRbbJs3oLmTRAfS0cUuHJu5kzFLvMglMLppBSWUD9dQ3MKINQKOqH8p0NGwrTHMZ5iDhVTXGgy1kPR84mg0AkdG/+U26L/jpncZ07mncla0B9oA+pt/lNnGIzEWcduSJhleUXIToyoxNV15a3zQMOK6kzRQqsG5hFGSV9bo3kJdCTK8zLRMgxs67piv25maDkXqDgfF9CUL6cejEM9dc6mOgSjdoKIsD8dslS1jjKASpDPcVyvik9gWkrtrsfVHzNMBXPJ6sdQqT0bhWABO51eOYw3PH7e6KC1KVNqkSAvO3hVLU0djijrPLjV/Nh/pilaL0a8M0/SkhcCUcZ1nOBY7+SwIqZRBYg8YH85l//riwhm4INboW8AgryPtBudy+d5zNEHT5VjxnzuyNU7T9sb+or/kxsq/a06hmFN1l9YVenieUaOmkI0OHFF7sn03C546HwKhKucSfuNiK4fMd2zm+dlfpWgTWV5ZfhFCy4aiAhc/CQTZBmEwTVdai9yI3ewj0eAwq7shssOAcoeZRPHOrn3b1Ib9YuKyj62TbYXTJjxY1DMrJnJtwpGflif5NMSLvatw+v/RNFg2NrvgW6syYXPJ3+/Pa/Ve/OaruALmiuddFHNeNkCi9jOHYLetgHPb6hTb3AMrDKR0SaLYV0zUu+QN+ip8Tla+sMZJvwfkGXjyx9li5ArBbiXiFfUKTvh0LO1nkExdRlDZZNtcw+HMt3RcUwvj8CpQD1Gk3I9DVSFDzqpSH6xKpTzthWl0H0twesChm29mSHjkMl4l87TNpERHWIwJZOPB23v9k3TSMwT1bOwp4yI3Ma01gPUqLoX7oYYd3j/DEsUX/OWnhVL0B05VyuNR95mKUqkqeRlI72DX1tiIlsybAiSH1owsRNJXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7Yili5cY6Ji9wH338cKOdm/rzCrPnYKQ/PAd2wlUVKIIK/R/ZftDFpe7u1FFTaNUbfcyib9qDzAlHSSYxZdAWhWTcXqFLDeyITctRdapnrhxdgAVJXv+5jKUMjFrwZNpx2rauZ8HEVjuf5UjldCuRblVVEREKj2yiU4uVnm1QMHN2TZ3n7VtnQAK6GCgwcxDEXsC46O/cx0ZpBQtNqjpTn5FBbyvHyFNP2ubSc8hE5fVayYabxlrGSLXUyP7PnrB9aI7MrLu/7iuTY7MMoE2YEERXdXDgMfO4AN0LFsm6xgonPLn64pl7gguXlhFvDdneoIrqIBa2ooE8G/e8a0VadgpVAWcYcXh+mxWbpZe9Njofw4mv3T+cfnaO3Ufg/8RJIIETWCoN1RsgJdSgsp0K0IqLWwmllv7RjtEc0bro2YYJbllLtf5Qs+inQ2xYrTOMcukRv0VoT5D6nZOgiUgeZFLyvKGDgb3ulhhRTMC18L//lGzIr1n47j34ZpvaFYUieX1OiQWZlgkRRXxaBR28xekWr6U+mX5Bw3NzNAMBmrUQfN8YdiaVEWIP9nmE+dGBMZgtG/2kQzirBS5IvOnQ3B84zv5yaWe5pnRnNA6VjDueASWx+gJAmIgKgXM++dOj9dwuDQ3jfRp/UXvo2e12rRf8lGqOrHG5GdYzUIXYQSvsWJc8FNBgeBuHV4kg/JwHnWJ/kVDy2PwH+2XIngVN72OCobJ6MKXlYvw+aI6xzpyoqnbhJRuG5Y66L/vd1cvdrQIW0QSuWoqZ8nWXmSD9r51w5EKAs4j1061l0wqCyvMyu7T5UF/qCpdWf9trpyvCMCqrGddV8WJA0ugs7tGctctvFcW/sVsrh8gvVOzEq2UmSjaxCen9dN8K44O5MuBllRM5Uv6eFg65rcUkQYMKPjKainL2Jvx435Far9EocDrqFvpeuI2xSy2UOcD5Wr6ZEJletJ7oxfPY6Q1/iUqH87Y/EqSuUe9VNR4WZfF12lkFxd7CJJdgDOQI0e4lmNVTYWh5LT6MeXSQDYIuNAYC6im/wkdcRbBN/XBzHVi5G/ZrtT7qQe0PkETc4CPSd7fuA+waEARIw5JsQjDKFLO4q49SsKUeHNnKnoywh5dtZ1nX9ro/sU75AvMeetVxihp7LFJWoRe1l+p2pn/jDNW6PzZF4+KJZYYtDF0lpk/N+boak/kyW6nRctiGeFLegx5Pj/5ZdRvH1rHGMDf93rBZkbQdJ2HzUVXV2slnKwQmwJpF0cGNr7+6uqQce7zAeN+35ydOuPi+1rFhmBWxwjeKVEUhq/juLAKMVxlWgCrU40a7MA703w0eH/JgryVBOSx6MJvpRmRTtsuw+K2D0RnsutthdzsTqUdovL1jIIgjvxZUMWwdEgfGpWj5cm2vM138w312bI6bzIJLViW+hPLh4P7o74L0PxhwLuIK4defPepthDcuCf0rv2w9pgSrH0t8AApPDOti/VCxCqdtuFhQIaJb/XZoXzcEYrrXL86mcZSCUNK5GxCBkSaoIbQXlQ25cNuvzTV2SccJIxBBw5WJBuC8zl+hHNXg/4OKXvJfLhVGKYxpv51eAIobwW1NOf2+cr49xLCR/0xJlrt/DjoIq/bISDj56sYrlO9wGM3GXz0bJVQuvqdVPN+91Fcsp78M1FHXPnbQkfOjljJ6o0WSeUNtZcNuO9GlmZu4j75X5NztSF/4ktD4Wr7M+R/lVf+/dszs3GyqI0gdct/njMv7H8lXlU41dhKh3DlMUoElgVwqGv8238iP+5U4uHAMJDMhYRXeplfMq0JAM4sZe0bMOFrbKGOXoiwZX/GodF3+34y8Ln31w61ODIE9sc5aCXMJf1OAZiUZoX9uvaQOyyynhKwNhF7UeBrHdLemsy715y/Kyx2hOkMLKCd/T2mqHaNKsjym7z06iv7qZBN1AHvsUNx6G5/pOBZxJ6+m0sTwzkwSbqivcIWLc0HksRd19GbrJtrfeXAk3rla9bYWc3VnUiNASc/YdeEYhOM4ujJnbFvsAZGtjMFfkARkHrA9pKzyae34JlqRJSwsDDZzepdJM5vW8fRgdIdfKI3VYd4FkQvxg+A3zkyMWyc4Brpihv+AsloCyqel4aUP/wxEIUVwBun6IeE9iqOEaf/zIjmqXyR5jCO3LcXOC5CQZ4k4vJ53TVkCLL3si3Bm6x6+8tlI2kDS/wg5B/vWaDpK0x1rNQyaVfHVxdeK8HbFJ4Z0kNSAQ3xJas/Ksy6gaoNauf2NjUlhDXxiMVeKz/bhRcZ2tpdRh54rJGp1updm0QPVW9McNt/wmpjH4tI+f3fittzxpRP1okswD0xxkZ2gfRdWDPD2l3w2P0oIqCsevs8u8xsHHQPfLWL4IXAbuZ0rBXQ8uA/zj/8DugJv6gnT7f0fOeQ7MgEs/VOHuUbc/7RlnQQLcjyTZKuXxTLudBE4ELoZ9Y+XBWBT79G/2dRtLM2pP6zRU8hOSFqYiU4zVnt23roKGE1f3B9xO868oXshuskEIGl70/WGwgs9ssV7UUkA3h3eew5N6qccYVrlvAEf6+u2CTze47pvIEOdq1LpH79VopNb99tgff2MLJi2XsRC9xDnt9xaw3TQP87AGy9jvKX6Jb7BbmqhGqWt3Dx51O+ozZGLZzWxz2fmMA99DMNclw72o6YMy6644BKyGk4dimyPCVvLxbpsJ9LEZLNw1DxGFtI+Tx/Nh//bPZVzJqcgIdu+utabDatNxrNOuRhZC5Hqp5W9Ff21sXTXLpApsbY71n/8TASCe82X17p13aiYNui206wV8kkI4A/Y7CYjYKiVU4k1p1VwknqrUD4wEbGkHDxv0ho5fWchUo4t17hOoY2HVhREtykcsby3m0sAIlOROKiF/5svu1sDVeUx2RvIbOyEh4VS1NHY4o6zy41fzYf6YpWi9GvDNP0pIXAlHGdZzgWDpEYfXNvq6svf/pdkxiP7/lVcCtsdq8XFbwkuFdY/qG3cGYevrn3VSKvBLJdm5iO9Cw1lo2v/owUTc/Wt72x9bnw8R7qn+A4vz1jWcY4uapesXzFuR1bdjDKThmqM5N7x4T2Ko4Rp//MiOapfJHmMI7ctxc4LkJBniTi8nndNWQUyhGeYsNNIB7diJjPtZC9Xa5SVtzngBkgyACx3frab36k7klgfdklrgeyQX/otmjjzZdqhP+Kdc96CezOTtH8rVi5Rdcp67AoULdajhbLvfE+xL9iy617xdll/ROyxG4OQS8oucjD+4DlT6AYusLMVjAgqNpwel3+y33dRj6c7jZ1Mt3JQZ6AnQUUZK42795JI2JblHWJ9rT7mi1qvtjKXjVH5yiBmFV9VkzCpHs3/hD84eASWyZ3zVZ07VPw7dNVAlOFM6S0FbSjxnhLWg9bL3LiBgAQyZafiQrDoCDvmMJaUmLX0mBPoMKJPxAYlkUbbjFIRyJLXpGQk/6oN1U4klc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKW54Ao4WzA/A1BT/2wFeJcc79RlMxqRq2mCmeEa4xKmJvdWPe2R4Rv0cs7lOkQWQWnAzX5GFEHvk3FsMQ8gQIVFMwzzRaxdaJGEKn7Q4F19FqB/2QYvjDrB8ydGJByerJ8QaKrIfsLzYTfwpYBjwPs8Ox/rd4QTJv9CdWWFLMbIQTwRVft+8lBbiZIJ9yGmXbDsXT/vwFKbuJAwnTbxEdQQ9s6jwOElM5e1JGpFlSkbFpK4UBTnBJaP5UoyQ0c0YCnvHqi2xqPpkwSbVSQYmUG6kVD8d/GMbin+sXOJNvJAUui1TbxcMVp2zs9uRj3HtVv0dRQAzIG3ByVwMDTp2CMvMdfZ5iz9DL3nNQloclXHA176hvK2/powy2aAML1rdUXdQBm5nGVyP3zXIuN+imudFiJsLBw67E/2/7T3vLk9YWukx9MMRjgzxdhSpZzmjAvF3Kf9E6KSE82NJGD/QSB1RpCyAFpxdElrHNxVsXul95HLeAFEZQ13QpN827gKFjOB3Oi7mLN+3qJFvOxrvl1iIY16Av+QhJXrIqvWi33os/ccJclRfUcmdieeS7QpptiFmCh5XNf2oBVOyQm0iuJiM1L9eX5uozuA6ncnesa6QfG7+TllB+J2Cys9rZbCpH2vOIgzGfaXdpu/9iw8ZCFodDKmFXlsIaDXMAPEH2pFN5hoExQw3vNCT80Cd/adxo4lcWw8mFbOCwq55lRWbQvx6xVsR65QYziMpzePZDsrLnF7Zvkdxbu/xDeKF1lxN0fA98t0/LhYH6vDv7vnm78Ya4/zssLeaUkl3e7/YU466INGtACg4nTsggVgbHc4Ex/hI9UY+WqRnoNxOLEFqXCx2H83sGPxNNwawfZUXCGMRS4EwKAIQsAQN+bmKLWf4HEbPKMZSJWwiSlGE0KsUno327PvmkMycyaEAlFDDYw0hKvuBBOUWuVcoiDD32uyuuS4k5Io/LHHElmDfV/PnzTyy1G+gkkp6C7hXAovCChMXVMrpf/WMImeoTmtQ32YGKsj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXt7ifvSxRPUwNS94IBa0ulHscjujCpFgYEiwkozZAp4pBQXomyqcuaf0qmVbRgvD8A9v3HuugOy6/Ntg036U+MjMT1uh+ky98qm1PLmf+JD6PziNi7Ouuc+J1CKZFC9GF5VnnyV1AwMaDbLe4ClPlixm/PToNk/mg1fvtLAGxnqTokEXEhUZjr+eZdltihN5fOlq76jQrqAwLQNC3Cdy0UU74iCQwfWUiTEhAHcfd/lXAhVmatU6WwgWMsJjrnKrzShY/q4ya1lQNTsUueLPTpKwChz16I+rjYbcTk6JlVmo2cdUHunPbDX2tqSUPPD1HFAc54yS9SeYNDScNN2rXpaRNoIZk6uLCurNHZFN/0VGVRX7qXEM4BX3ryeffDAHUN95WRg/ZfP2xWcRCnJWmjr7Ap/0GZ8dj93Aqi2jxi2zCEXpROA5l6r8qvePgQMnTR3mB5MuOLeo/ZO/3UkwQy4rGAJDcIA+3gsBY52ftBiQvlWou+Q3ZtHk3oVxl1fiT0Dz+NxTtmX7aeIQ4FBxW13jqQOs4INoPJCMIevwZbmT2lc1CyM6rKSfNytT6MhM/O/vwHKKp/f7mh4yPZqr2b5kxIR9sZstnq6tDfos/qtz57AKzTMQNNjWnvprbXSroo0fwHgf0kin/+So4kqGA9V9Y/2hwKk7mVfa9zxU6tnqsKKYGAO+k9RR2yahxL2a8Q87EG9OONak2yDNvph+Jf5gjkbgq7Gk9duggtVlZZlkrubeElYAc8uCZyXsIK7RopjaI8p6dwaifLC42XMKmTFodWlEzV+dXKGEQ17vSROgtWRBGUg4NCeV/MfkD185prdo3+p200fvgWdW/p98xmV64AE1hNPSJ2R+2rsdBqNKgLTOL0eQbphHW2O8B/KPcEn6uWSY66YeQzu9nl0oUjVchi5dSF4fmjZ0OoozPvcaUca36rDvfNv2R5xkkGdT/R1Ew/CMtoQ/cZKyeiOga0NxnXADH1h1eoC9iibKrSEwiFnjRIU8c3e6DYOHSJktJU84vwFoTKxst3TEmW7uUErpDxvXjX2LrdhWT1Y8H15k9B3g68arHVL8m97nWZ63GNq5r1EmMl7N7WBcprotGnokQ6lGuqlzNFWzri72bDlTlet3OaVTxRERDpmEY+ZIWrtd7QiRp/pQCkBiqsnMnSuS2NtAVyzR+jfwLmHM18uHFsqSjFTWIPMNlt3yRnx+t9Z6Z1YSmAUIz6+Gxbp4Q7cFqvY68pM3EKyklA8iL/irrRTYBUj6FkEh6/zmJXpWvZiQvc6ZSDrgLLoAiAchH8H9bGNO7l7O4Cna+Z/DbT9sXhVLU0djijrPLjV/Nh/pilaL0a8M0/SkhcCUcZ1nOBY2sTwYUzBSr9XRRWVwHgR/7C8Lc9uT/nq0cXGlqXwfsemQG0T0cMU64D63Ky9qGc0pSXtG+0D8JNN8Pp4L26MbkcRwXPxSmbzTkPR6yB5we82wmORcwTmSw0t3DteD2M1I2+/Xc5caYIKB3+vqIu+0ENEN16waRq0gEjuQiZ0ipc2U2f8c5SEsEUP0FEL7Dq6WiTTSUBypZ62oojx4jfh+r8QdHB2uTiL3fS4m9WBNdpreUas4sdpf+6S0cfl9R+gJP8UuRkbNNeN1fYWiRtLJQ//SNP4f2hoKMh33VYeaV2ltxGJ6BxZAkvZ+GLdkEayfP+KcVP+6kOg5QAWJm3rXIrI7NR9a3cTnZ81QeUJQWbjXMZJlHAlUymKmyYnbLosSeOla5wd0qGhqGEWCpKh8oDxrLUu3glqvrBWVq03uzLdksa6pBnSbZ5Xz16VF/rRAAAi0s4pAJhh4HDUAY0S0FSpvm4+hnbVkC6ROViz8M7+qDHGyxRYLbXu1y0xb3fYbtBeN8DTQWvwn87gFkrRxe/mOnnMHrkPUh9YchgG7qY/Z8gV4uNodYGi5EzteQoyXqavAyfFQ8KQcP91SSDqocwXGzbQwR60k2wOZKJoAikEh7/pLo9SGedClcyOjjDYAeImMd7wVKdZxZLcWcuYDXQXLXKClA9LJYVNfzMpi1UCYFmpxHPMqYOpg/VZygU8pzmpXLlTfiZXrsBRsu7Scg+w+DFuEPr/y29mNeRLq/orNg8VcMitI+NHIN3Av81kwfRuZQ+R5Byxw1qWlTptyfz5BRZJjawQbRHjjkJoRpyzV35+dIGjj+riYe4yShMBv6SfKm9eTVyWyPE1LdLw7oRZNJH+Hk4oaOUxVJmQsK3j4MFONwJ6Kc7QGrQmsAV1Fd99aIxhaJ+dSgHUQ6RjJ0NE7cEygW5KLXJVHsx3fQh6+5/KxnLDkaHcnjiGlyYVd7VI0p6JLC3TSrl666w+Eh+2dxq+bin0N5IqSP9+PaMEoZ0yK0poVX2th8sy6r9lOagogq2OmiiwYQcnURRRkHppRKPb935wVSg12DYEt79YWoA92EK8J8H642Brwa4HwVT3CfFKYsCLCUXGph/V4fZRhSL/3rdcUlf9CmIDxih7r167mFbSQJeoGQ3ndKAwApEJHJ2GThDnx7BEt6Hs705n7TYmBzxPpH5WsSzTN7Dq0/oX0MekcU4V5kFsUVOZcnWJDoMGIKd0UI5b8wcNEwujJH38lh2EGGtnnkBg3+ZKpZvhAhMn+wiA/Xvw4Qda9MCCh9ZwcW8XXMZjOocpGcAEQ2oa8eSTzBUpLwngIskvLruTYKdN52DG19CbyInHqTFcSsMgr368SG7pGHdJJ8NEOp3xCREDidLiaEnrGiLbxOcxkDAHRlOemlrJ2suOxQYAt82pbKLWy4QyIWrFLw7Uuw8HoDTZUcC33WHgaRkG2RbK6fQO/TBgQHfAqDZts5gQ5Wy/XPcJ8MwE0jcFzZCumIGlcj7192VOCtEK0OV8D3y/Oye4EZRuSifJIpMGEM91T2KiteuEcWqtvtJa1sc7YHpTmJzQsjWEHawI+z6Z3BCsB9X3qgDI2MQRFEUhBRtaDwX2PjqsA2QRTwYqQ/hXvcActPY72uLQMSAA6hs+l5E6pCjysNJt/MNP1Q6M+03Jms7gl5bYl24Xobl66r5DZpdawrIM+eeNAaH1kPUdBWaXDp7oolP+FZrfbzeCF93/QDWvj8Aq0tzkAcZbFF5YewJgP02TvcnmRfO/Ny9KB9OHuWBzycdpknSJqZza5O710SXK+spCSLL3Pg5y+/Ydbq7ozSqyaLczpoEDaqdbb0Asmwg+RfLZDYDF9QVreu/r68ETK00OewoCT7cIyTS9eVtM4JV+Gj8gMqQ1uD+dwrojtEXqTirqKDq6gdR+bRVlGiyY+Gz/FBQ+eF5Lgztbytz7txDaf260tORn6jnPG0gjxPfE7YnrmVlzPkM8iSI60yJiMfl5oKJoBaSAlLIpzUkX+fUjQ//HGVxDGO2MZQiV9Xkj7X1lDJlGATSseFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FgaV2/KzKRLXbpyrfR/F8d6zDOP+sSV3e3ZD02/J1UVGGlPs7EpT4hUkltOIl7znDmrfAk4IPRphU+7/OjgPmlRIG2sE5uKGEPz/0lS4ACULdcz9GTgABqrAvqOotCZ38Iw7G5jJypmJoy4Dil6+rFBHQSjUdNzlNBJ8TezZEtmXJXSs2YREVpxsZdMsbVpy6r+1hesioXEleNRsvSjmgHgD8QPK9hWcUNKlUMUAnb14Gn9PpfURgr6WuV6v8q3CfdcAjYl35f0gRCp1lnIJMxiIQygGtPFEQdtJxIHVuebHXumF0GW7INSrbA9wN0bzD9vdXHBT7NBvoK7RnOuyrwd2PdE9LV1P4pnLLey2O4SJqcFb2T6au63xCCqW4z298TocYqACT0qMg8UIjdkl0L5cnCd1SY8kV2GB8Zhph1Mn5ARMGKHtjeRaYvJmnE+JbS0EqfK7HV8zMpAR+AQ80Kp5sGfQqxaCS0emZtzZTBV7QmVYgBMTLcztGfBYlc5BAHD77ouQkKDzKdb9ekkhS04PMIZtiqRiIHzyxOUMIFAlWJRXcmLMpq5I7l909/aTMKuPECUTrHWudqsWLDpw1C40WGQ7+6O8x6d42uTlh9go1FLLTTd98fADSziFnaMHEs06WI7SrGdI2+RBTEIbPF8l66UBY85abqkbOMd2aV73UlE6HT3I8yuvlwbDi2EDiUo5Cd6PKFNrkaD1FRCwcE1CPax8Xax0E1IW7a6pfWclOM2d6qSjeC53MbefsIIVJdPNgtZPYkUzE1LcH99wNHcWFZXhgy+VJ1d6o7UcYSI3rHmm0KeEY4y436dUe7MXg11fGJmUuqtdYL6XCxzlg2EtT3b8hWYKXubpwcAx+EWQ3MDe/2LWOmfRB7rz3hK1dBH+gevKBOcB/Mk7W8UnJB2Cq34ie0v9YYYr+rB8CttJo9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7eN5NlxUVsRLBi3Z+fDce0wCmc3rXc5VQMQxJ9rXtpVeyFcyZ2yjGYO3z9524oeHKGzD0BNd1n1Cmr3WYvmRzoa42lNAAmx6qxmHqAsQARnRcGHOicfWG91mq9eTnuw0L9QiX2wGz4iXu7DXWxjiBPKutG8w09GYdZKmzre6dxJOLhXci/Humcyf0IQ+lP/KNArzbloqZ4rw/hlvM7Zutj7i12GoChovBA2BEONkcz0cpdrv3ss5c5qAn2lps1swpf+PbbGhejkbMIk8699rTxTWvx5U/ikAIIr7AI50CW44K2mSO8Wt/x7Vpv47YDeW+SBuR8jd1vLfx0Ba3nUunBKk/cbMHK/GlbNo0zmtaO8XKCcj/bwoFPMVYeimpUb7n46l4mCYn9W3eFsbrdT7hj6M7BHruhIdrHCCbUzvwPk7khjWvCQ4u0TTPMyBaKnJRq/g7Gfm+fwHUjIQonzWhyLF8rdFU/jwv6G9N7Xj9CkontQnXLKlHBTAk7sHOAGqbUqJjtgkVgE59sdY6xzHsfeeAmxxa3Cvr/eTBxRFJx4rjk4x14n4XbxeLVA49nT9WJiYcA6AvWMryf+9PSF/3a3PeA6sxhKBrLml9l70173JgW26y5Xka7ccPKzuYjVKDE1dWVgxIXEEG+21MQ0wAEhAIcXI9M/ZAljqZLsg1jjy4AGA+N/yTbuI93VqElX3MSKRZLTR7QQhA9SQnVm0GJJFhGa7uO6i/p1RBZtH7J1clwcp5pIk3HOsAg2DcbuLCYeOx4yE4t9DRWyquXNG1HT48PwlhQPU23hKwfRrZQQOBeGA7DvcSh/ZUUNYO5ts+QjvrQrmGdjnH9zYvAZZb7AfPrhvHllZyT625rDwExkg0+Dj6XHnBTvDK5mObJtJ1CqpvZBs7xjJbZ8D9qY+uwtsMZwMfak+z2zxpBrnL+w1lYp5wzHpGwKW6w+YqIeYKrQPkEoEmh5eWjaYuJLvGN6VguTeR1fhEqTZOn+2EK8zMlYAhB2hQeG0e7837EzeqPAXgN0omaHD5qsfL1BhbLZyHOWOuS1fEWtKtbKPHBDT35/0B64Eyh7dr43h7CFO7N5yc9vsbzHqIC98Kjyn1yIoU8YsGdSuNOCxH1bl77Sci0AgiOSSdodC5ZZzGgXvenC+ADqLzJoz3Lf87Ma+NVUWhUpuURkpxvas9Ca7vvZI9bMTkGUJ2OBBfSGXZwQ8vaoPpYjLQiGLknWfzp9bNOSZWUm9g/12M/CPNMzPdntnxw3gieVdcoZMJKetxNmGmg/jg6Ujhy5bMFGBJfgTSZUwIDDvJqHkulSzxlHLO8wfYThLDCAzMnKgoPGLNEuUsl55Nnd4ixUV505k93VtB2MLFdHatFh1WlKnMiGQQ9l6xvXN7C17gV/Ftu+gFfQyx9stGnFfVzNf+N3wCY63b2X5RFR+CsQugTqM8udY1oD0sxZOcQcjM+yRIQdNcsrWjED70hgeFNfcSPnw4bJdJ9z8mLSW8tVQ7Wr39mXuJTpj3iFsQnRwFQftB82u09n5+eFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FgktwlmbgQquVUQsqZQvoN4slFXaEUrvMU3wc8boa2uDlYU9nXmeo42B+azPTWunf6VDz1RKegw9Mnd3q5vU2yiviyqJmCSid2LS1kjP7eya9+WOEpx7pd0QB0FqqhOJc43ZI7vpeTaOhdFW1D4NihXFEL7kx0iHKEObjV259BURUGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEDURVzx5muqkjQEIXBXFRvyejdnvOU8XwdrX/tzpGcdld58WuDE0amdQJXPwjAPuAo0+vPxG252NGeS534WC/kE47J/L7ypyOkxYMRmZwCS0kNkElXVHOGDBgf0M5Z0oyf6JCC3TJ168YgbxdFCBThLFKipmvJkzDDw6xM3gCqZaqiTlG782GXRMOzaWvKQag5HnZ7FNqP8UATHbz0AyfwJcIZCIv07AneQtWLzCcAMjy9pUTdYXyIgKt2CuoY5od6hmWGo5fhEQu2ymyveRiJqJwH1qUi+ka8iZ1AAbY9EtgBxGzQm/eVn8IV49VJjVL+aLhe4aXVcJQ5YBOtc5QNxCL/6WNpmPQRhqKnzfEqOl5JxmhrGXlWAbbkIYMiIx1eFq5yH9wTWqp4g334Y4xXjZkFNOo6lPOyhXMT6i1jCm819X8KHgHkJTgw1h8GkMWhdEryXwQcNBQZnm4eDzCOi/ihyrhse+Xl8YeQ6cYfhBtXrk2sZfN0c1lxdHpoo2I2zZzNRRb98/BlPHft4jmXvEL2MrIDAuiDbwpFhJtZ8fttabZtr6kPmv6YnZJmofm/NMspmxWu/iZzxndm/c9rkT8Q5IoEFU+oxd0xhHC4K+Uy/OX7bp6yR6uIYF9yM6igq2V8dMnMH5N0yMMIDdECS0/xZDIN/mcdO8QAZEJBxC/0f4fw1+NK0yUXk4RTCam3T4Y8WUKb2ka4Yq5A9rW9EGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEXr+Mh5FrIaZ8ISMTF2HG92HPruqLts7Bl326zG5xZtoNI/mV9c/ZZ+hkP9FXMB36qvUFBJqzyDTErZuFCV5abxFXIajbsOkr7Sd5wlkabx9zutD4oL/eMwUOjYDM1OiCi4P4f77nxv0ORVevLvkX5+0sZ+Mke9weWtZlfNc5miAMrC6Wrejc9wKrkdvCRbaUXbsDtyNHwmbzseAX7wI2QNLlrXethegD/X4yVQT6FrgPREp7/jk6zoSAkCOjpenP3zzlyKX0lqU0XuT9EYOC1R155xdqyn0RGqdcpJCHWpcDRVS/zEheyIijluUtXSLmMCCcsbkGXt93840sTa0mBGaTeqCyzZmJj9LAghohxqUlicyhrRocTKIQIbEteVJNXDUlGmNAd8BTQF3S/th81DPMDmG0aihAxfqSR6VsxCxDw6AU5b5B1vdy7flzlqfbzZhuRaA4lAFF90nSr6z7x49h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7b/KkXRx47MBPZNAUKYYFzxZGVSvCIiOYWB6Iguwf6bQx/DGsDZlZZ8xRpKmdMAdXELEBo9wYdwfgUEcWrHeFtnjJVNl+g6npOBz9DBa8pDBd/LXiEE8Q4VaqvIvOkVzJqMi2Kwo7tAim/rdXbMMKDXFjA3uTzeQ8sG9K5dhQjYCI8qKT28YIQuUKGTXeDahviCRufKt+iwlMQtBxiXTecIRcrfXVeyMN2FkC08QCB6s1jlyfNLgZva2YV1NBE/K6Ppu7F53wLtMPM7X9uZ9xRA+cWX7eJTZ4JaDTq76+0CaPYf5fGR0NdXI1oCznLTexJr33LPZ7UjDljk3yseFpe3UzvbJVm94c1ysGgBboibetuPUoWPTl5wixGAH83Vdd8QSS5rM4RzQOf1hfABVozkIIUx+isbkj3JFEVXTV0cAIUY8Ui+N4uWtPj7y/yZLcYKGT5KYJKOeWTT0BV4yfrAAMdEOztQCaOlE4Dl7GCDfV5OhDHARIc07vMtl7xlFilgTLHEDxkcbl2Vq94yrhnr6c42q2x2uiv5n/PGYd2iDDvilBzd6YjUtp5T7NGiFbp1xnS78FepfWVwyZhpZhEbi1kP8Y+hO+yc1nXn9Bp+zHl5XB2jDSKuimb6xlX3+hBZUKXl7QceEpIvvLJ11nj/cLJscOypjZQo7pGbjvFXbhY6jN9P1mobEkZynWxSSzu5fWSTUBULGg0UFqyt1Dpe25TcgGazYS47OW/1yLGgA4/N4E1n0UoITlvzD3bj07AaVoLQg86/Vfk0PAqUoSp9CLgF2GJEE3bBSNSwGfnPSyStM43bnx4xL6t6OfC0Xo8ARmR77tArNwBU77jGdQ1IJ/YGE2PY8DjWm6pQVqWSd6Z/tfL5jlZkx8I7sFIeEyIDrP6uNIeqTavm/h0mIGszp3N88XH5ieOPcAVtrq3TFLibZRRp7cx3uFlhFfsooHA1IkAEp0w3wsF3pAeUJRhq2OBvQQklA8xnFK0RS+jFH9vNycApr5Chy+QW6STltWRuUnKkJ1eGQgvi3BYADU29r1mfpEnK4DlBzffzYbQ3+DcH5Mu2BRhvhz+dFDNt0/SgGHvdxE+wwNYk/WD1b1UDdMrHbNIgK8rPEsBmuA60GKrHCKavKtWJzo8M7TfWmGKnrIsm9leGuimPyD7MBjfiEnpfFvEyDvdgOQSt+qvyrRFB67FnMr23euAM4pRYg2tUHPrNuKSAv65A++fi3UlV/l8oT+58ZRjqxtx79QWs2WmHNOTKNiQCAj4WqKC4hUtL9V90AX0J5T67BkF8akkROzDQ8teL2sv8JP1pj8uu+ucvBYqNw1ZWITwAPULFMhHt/WHegzjvKXkwPd46WfnUzVTawY7xA68zF2HFcQ7sEnWh63GCJeSBDT2BFquj7oM6SB4+YiauFIUbB/8IPdTh+ViftWYKzfWo5hk1MHK1fkRAo1j6ge0H5+pmAPoUHqT1fmbdJfNLdaYkOhdTp5Vpkg9eGNYNKA/sOpWWQ9LIso0X9rShgzPkbBf52myxIf/NAV6jTFZLUmRccMxVHs/c7v8JFRJyDS/0+KTQripjDi64hOV3MX9Zhf/m+3ktRSOCOrSM6JxHIlZMPFUtGmKoQXPv4nqo1+9BOP3TqJy14mG016F4qpxVssLOctcTrs/EeKsh4yMSXrvXWeZlrpz06X9jBPg/5xYQrGD6TSRUCoIl7hxLJXwjkTR1Jy79H+dtpL7tQ5nV3SE3QyJpvPcRMwWuuwDQKD1IFzfmlEdKkhspNPx4qig0j33WPe/VCLq3ltvh1r8/v/DofFDIBxvqaAmqPJJDXbejV3V1yNrwYyKENLhjIfl23IRGT0boApTpcgldOgYoAGEponefyGo4rH8awe5dnzLSh/4BAzviuijYU6ecnZrzvFr8by3HPQHhPYqjhGn/8yI5ql8keYwjty3FzguQkGeJOLyed01ZDwCr+qfoQaA4IqCYkxNySL3H64rVubyLD/Dt/8KjsA08l33JcFiHVYOL6ewwZ10H3urmxTkIx4k1nTlHtfrlX9rX5ztLyr5n0CXdjBHFA7TL8n7yV70Yww9RS9kiaBtYzStUs2lTDW7q07KWkRn3auIygN+A8moD/k3AKVviaDEp0f+yNjbaLLgAnIjelX/zjdII9kOAe2Je2cp+/d+ASse403BzHufPjzXB1mJfBIxgoCIC1HYHOYoNaKw+b6r9hRpEYoi1vA0tIDU2Xvpnk3lU4hf140i1UVC/1lzGo2Avr0gVsw5FKWg5DlWWyk8dtX9/r4B32WMTBaTtDfEIT1MfjMEihVDZyAY3zA7Z5IcfauDxa1yz6Rj/If09BbP4OZuAHkL02gJ+Jd9/qoyBKOWCuoNafF1pCKQXDl1o26cKOfnPsFn7mmedKFe8NrP8m+AfqHMNIMmaFzhitbnzIPKNcfFYJYnjqaXuglCzGrhSMQi2OxEnTb+oVm6HlbM8Y92btPzQlrA2r8bGYWHcMdvZrBhQZkcgi5fM2QTL0ltJGodnMEDgJj8kHDdFrzOrfJjJZgev+S+fcbn3YcIgUPFVpIEz/CbjlaLBqRbQrn3YqFdiAi35a4rZWelNL89XrTU2D6srO84TMCJ8gb58ILqeYujDPwWs3BFLSXkWdpwH5dltKkSaDSW7LayKFVuiXuW6xS0ww3Ptv+ax/ZOXD9Ra6/F3bwU+l+URfgv4p/+ScZ/d6xQ5LiaCBtaEJIzwb7eb3QeMXc6qHr1q8Ws5DL9DJiZe/Gw+aFcSuRLmyrxc0o4Q9R6MKxNqtd7LC4ZXgmLWloHfVDGYv9kSOMZ0XJ+pVCdNn/3C9+KxJ4eaBWa8IVoa6oT+JeLkweUyUtSDFtlkQ2oVSlB3GTa1Dt3OS39eE9FXczriv7XWV+TxcXTKkN7HJeSlAPUkhkmoXSKhdJ/9T+Jemjz4TGAHCMLD+a5n07Q3je+yPL3SX+oZpoXskUCwacmQ8P7CVFBH2edkaIjXWfI0kDgTvpMGeDpMDdFYWBDYGXaT8arZaAzOGbT8xPf9O/qS+eAiVZFs4EMEWz/T4PPE43EWSJ01vU3vYPLsEcKYWWOcxj0JUDJ3WphWwoFcyyxEUmEN+dLk/OHzqZu5gaieSa1cJgZ3ZPQzxWMuw44tB31afYLthQ52A3hXu9t7DxyOegmoocGng1czP1hOUGejk3lkwIncdcvsuJ4g5BYnziWRFvvtKc3ng0E+tDO+FS/0wbOy88r/MCh4JESBDu49yDT1rUNt99ZhEBGXZ5t8Kr6MuBsihXOSP1OlJHeAGqiTv1kB+vcnOnCA//xmt97MnAdv0GDM2cxYJ7U3dQXXhqr9agtlc3US6X/GcH0NBXP5CFp0KAgEymX7O5NsIi6DT4HbjSJCdWrBg1TeRmqaf5x/yeWaKZVIhimIcODBoUpQd45lA1cCrj3dQvdyHFolp6IBe0Q5sJZXIe/RYsC6oNL/i7+R8oeS6nhWrTQYNBiwVuDCrUtS9oKP0a8SGZSOriXXbo6NyEQx+5Ge2HEAIK9Zek8cYCReSvl1A85MrOhUf1NTCkCvaZLcDwIP+b0wvv1qmiFkrizQ/0qjQw6oIF37hScuYpH3CU+5mYUAA3WP+LsDoS3MC+IMbolgWtzh92WepvSS9wa6i8yp1e/WNpMhGmIZhmVnZcfdnUy3clBnoCdBRRkrjbv3kkjYluUdYn2tPuaLWq+2Mpw3AJosDrbQ5cimbXlo8mkxVnA9jYNSykN4iMZ9Vktt0WFu/uHLCm/InZ1psnOtP60ganZEoCRsOHTc4ALsT/6UvZD6nr7bea7iIDyqhZNrObQyRXuShT+3/oAIWpwweRs2OOrto/Qbb+yPKdRu00aUNrZcqCc1TKt1d0S/Z9jNeyVDe+RVM8FtlLFzDpq7OMP35IQMaQ3YY9v4GXaqCASWeNJvro72kj/WJsIPHbMRZpK/xm0F64PRHLibp39iqq5i9eKA4n58Y7bOxHccERDl7GepWHG1LGKmPdC+yrtXLJ5AxfdPy63mrpR2UyzGpAM9BnT0f+I7rn4rRePanOfpJ3tamLNp7rQVuaN5QgrgbrnDjJhCCiZ66oVPPYEb0E0Is3K0ux1GmrYYFzxC6jDuOnYzU1XydJWqRm3oBVDtKH+MpangjYMhGfBWv7EZvaI3hmu5BogUq0MkyPDr6/JNpjFx0D4y641Gz4LWT1KyNQXk3ggMPkXWJOBYkzJxQNHMGDfmN3vcfPvQEXRc8lchtM85+72jbqRunSie4rJt2RGJfQPt1ADM6lO+SVfj+fEHVpz8CjOJKd12xr3mVJGPyENY34sYI+IiEHLzG41ya387Raal0xnVAqkB58eGS9Ma1/cYzMDAl+wp+I2zrH7bv/FxXYO8CgzeMs9tUVNIkqlV5CbcQ5KTPQyU0eKUJX4lR3eLCZznXJJldjOaxVY9wUs8X2A38gkRJRBkick10OLe39Q0GtDO9qrhw8ncw6YIpKl5lUBB/V+CSiCe2+6M6WkqFQg5fbxOAqdM5W5gkoBdV02F+Iqn8Xj+uvTO9MG3d68hVKfUvg3FhV987vHELMGK0uXn5AcXe/CghisVaQ+QjgafZIZC1J6Ng5k0DzotFHs1fmED7isgdS8XdseG/km9hYXOcn5xo9Rga0LCFZ1TvNijW8MAtmDt4StSgEd3oAE+r+I4YNaVmPfHYWS2pAKaAhQce/KBHdYvOWhl/HBhBMEsEVyFa5X+jwRRqFmkKLhCQ2+JkI5YV3nBVYLPMrk7JDq8O2YAo4+gp1h09p297o5NGGU+za16OWgF5FpgOBXPngOzZksFvUXRWG+oGHc0Ub0M0r7kMMzpe7Y9WHlQZWGwIDZKVM/3aADzftQw4+95TKvZ1SIdjchd47zCkQfO52V+isufUTk6TKcLVbHF8rVZYIbO4nRvRbuWQzuNEsXTZr/6M3KASMeCIF0JPdGxUhjoL0UrGXB+mqdsIA6A/YDawLpYzwyD0zcrXEeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FjUlYoFd+YKMxQIGzQkrrg55MMPsBUe5D+KfxgZdv4wlpj8MNh7cZALYoCtdu/NI+pZVr3P+D20FPT7WOGumFyqr4pPhfCHKcWubhDpGkYYgdEajcGxfTwv4+9WmrZlYBBS6u8zPkGAyz2G3U0MjrpZ9jUpBbVV8YzZQWMHCwnYGmJOXH6cxdPjD60w5cvu0e5UYigGgL/bZSPEfXLdHgFdMw2KBtULGF1O7ooySvX7YKQS7dNBsz6A17WWhC14HumspIIcmV4JyzGUkxj/FgbmmrpcY7fTEnywLYdZ+kQsAKpNRtDlQ2znMagcQaR/VlK40XNKkWWcvzuSav9aJVrEyFW/9CaLBo5eF8i6oOo8X+8D1xeR8XzSglJeFIqAIJKgaSwpkWJbLu99JHGRwpOXsRSvWMXt9Jw+RCL7F7pGd3WeRaUFvHYxI5gBdUELN2+qR2DCu3Rr4TEASxwVNKFUln/gmKyPri3DumtzdWzAGYbugVBoup3yGGX1MBHTJ5z2fWhyaO4cBYicfAAYbwYPa/V6iUfARIWX7roZLsRuZMyTHwKijmIjORoUVuVF7vpqOGiYfKc6AQPN3oXCJV1Pb7jd9keqf3jYTpModP8Iid2OARrtL5hj7QKi5/lXA6QY0o0OPY3wIAADwpjmvEtBRpvZkxvQJ8Sd0wRm+/mYYucpIFWMQsPu+CDJAuLGeGu8tsI1GTG32k2XJttKHRPW08G2Q/xJc6SDT1vI8WyqaP0B74nNQL1uGiREufxGziVVFpCRqdLBHFAl8znssPtgpfcbqew6G0IttqEadWJg4oK3ut2b3ZB2gpDAzKoNDsSSN4yAhxfmhXfGVyPFplOO6AMKPVmUwQYb/pmybTqOOhUTNQP7gepyxc9BxyJ9Z59JXOn1rQdBRk6MrObb7kK1ByO4ex+KoMNUTOugC7YilkITonUFmJGRLYWU9p0h+gO/n9vq3G271RCLCuLcwIW1RFJbl+rbktZraSjpHjhhNfgdajeQtafm8J4fo96VPtV/h1dikMcA2iidy5impzMjTaWNm2gf9hk7Gc9tDRtasUGiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEEykGNa6dISi0jiCInfsamvriOR1EEW24pDU+M4HZiqJbIi/FgeFFpLdJOAVnsq9dvKRu2I3nEVCbTJNnrO8Zxhz2mcqpR3AOXQGf4GN8uUmfe3EKKc5kOXf4V7T+L4VZKOcc8grkW4wGwOVR4l0ueFlQtL19c+hmJVuKRpZXNKpBnyW00CaP4WcIfIpGqbgVMQ/Z5P2EpRGUI09IZbYrU8Jw6pAvP68/OXKP/KuZy/zQjPQNrWLDckBJJ1WJwT30+TpIIWTNXiTqEkblXDIweRndaJKUxRmf8pp1OpCtGxJ0WSgOHENx5pDMhFufhNgJkk0PX8Y3kGTFUW+q/nuE0N5A/0DAsXEWVNZSMP79xSRT2uTyqZFmnwQ4IqJEuOF4JnZcrk4A5HdERNd1GmQZXUlr1a90IUfBrWoQWv8yEJ1/j4wFn0ycVNKRRKZCsWGE0dVYgnwQbuPmoBfUy7OPbzl4f2asU/mcUnwz0bsi5TYUF8t3i+F6kxhPb/fNtlP4d1Ns7cICb+ua9J0NPYe6JTkhBRv+8xQoYTkkSNF0/fNyFUiEvlsgZjIGbsyGUiEHytfqbYkypLYFg1l9q15ldVK4OWKx2A2MF/rsk7H1ZHyzRNlvdzYHgAFyzRK2Mevchp/ZMIGUVVbDE/c7HSriob9DhImvaV96tVQBAOeX2HUbWnZ9bJgXlTNUbCq5i6wAUrjhVADrNamjJ32oSsoT2iAXqE0QnEgHi3FgsTXmP+4StmD0w4omRPWZ7ueJWQwlYFVpIEz/CbjlaLBqRbQrn3YqFdiAi35a4rZWelNL89Xptgr+18Leu+UNSPkKbC+kVjdcRb2AA2IXl8BfqDGdpqquRPji6jVXw+AenESXoaIGnhZTij828cPsee5B8G0itcX3EAjRfA5xxIxDzb9VaUX6X2thgcmNtdzSF/ZxvFc1S6u8zPkGAyz2G3U0MjrpZ9jUpBbVV8YzZQWMHCwnYGiVjE7C/YQ6GbZw4WikCAJwACkt6NNHppyPKrGdGrQvYlVl34huLM+qbfn8J3aOihe6X4yQ2PZ2KRZv6fJxI6G52WBJHqqBkNrRwOhS7ab4Bl8RNTRVyvIyYFdXjrUypFgAPS/ObjFuc4c/vq5/pjY1SEOGtylvQSm9aWsjhUdkCuwowLmGczAz020r+e99RQ1iBbkQU0QoaN2REKY9/mlvqYAE+g7h0LP9vbXPH11IUsafZeLtGd0XVc7PdWMTDYVOP9LbNrarPUX2E8APJmBJ4BS8S0bfi96kmWxGKDtxJUsdWGNLxFYXRFUc7vCN+704/8QfqXE1acNnGqCWi36OlZXxQjGx5SnNqfng9CNga/hdl/s0co6fv2DJaMBvEO0DXK/Sfo9SjAnFLm6sD3wG4Pz14mS3q2JZZQS+18w8zqgS0s+jvXIXNAwccbSAnY7s7W+3RTsSudal0Qo39pLqbTJdA3XOtaucbOukAfgDD2GCBhfENLBAMaVyzkt/hbBfIZrzJEcNALT0hbZyr8ayf28IKKHNFNl3MdgXwR4tXQaKrIfsLzYTfwpYBjwPs8Ox/rd4QTJv9CdWWFLMbIQSoMrBe1HZaY2VcDy2L5GNNRtMjA19K4U4NEJ1qo1zAAzH2IKtcn5nIw1NDJx8XYqF9RMSasDbUtYNJacZpEyBVo82VB9mo74lmIvlRc7SxVyONdsh9gmDR7pjH2Ywy1xpfRHWRD2xqi9j3AQ8WrXxpyJ9srRvkI+411vnUEP7Qg0lc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKWPqfTWcAufhKslEJso4bw1bU3EBmGIKjWOdS25Z/h2OBdzR+j9DNznaUeLdjpgi1Czn1QpocE9ta5qQxBRMRfng5iKU7cYODwjvgyJ+lB4Gzmb1nWUM+tz9HicOqo1uTLsTkPcHivUO3i5Vz1pdqNWIV0afoiOdkS0LXhz3E5j0QOd4wbWZujHIS6Q8KxXd/SnTf7fAuoCMkDt2C1DB0ahUnqa5AbBxoVkXq0VnvjQUuw50ZtXu/PzVrMyIIUDQZblqK4nbZ6o41ueYxObw2PoblHN/LnP8cTI3sPheQ9v79iVEGQAvaZdHCdHkBuSCB2m1hBJ+qhpTbzolvw5eJzUHBbYgwO+o/pOiIdbqej/O+l74xXuTuejfEqLz41OytdeFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FhTXIgTc5cU2xwJCpi5P41HNnBymg/SQbTQKd56+vD7pvWfRqoBMpVneO2gVdKseez3mkAkP9fyBOGxhOd32yZq/BImfMic/WITPFyeWNMOucnI3/YZmyE+oZY88q2L6a/uwk0W5LrXwkUqL5cDXjlcYSsUHhItEnGcwLRjd7uZ1CDwwqMvXo8myFOr3v7cE/XzL45ZCF3vQ570KGH7cif7A3zr2/zN7rHopFvkW+kiBsbHmRRp1h4PmnAHgvs0qARZex6zN/PlSMpdGFtX3BOq47f8MUo5I1+JmI5ZyVYmVpeOJm0ZeYt8oj2STqffu6X4lAOjvjJCr1XpPwcHZJeels4HfD7ya5o2fM/TBqX87i7SeSAtiN0MzzV+mVF6RmtBoqsh+wvNhN/ClgGPA+zw7H+t3hBMm/0J1ZYUsxshBBBQapgPotRtafhKPzI6gZinV//pyrmYDcMZspts807eivsIAbJrRlV3KiwCoberi0DWuW035eESpb/2kMgYPiA7IztC4tyxstI7KaMRwB5+xbFNEZg7uJuPrqVSvGZG7OVshxGjB7Wjd8pI5TBnj4EROTitwGOl0EZkeyugx3hm0wHDFAR9Sng0aC1T4lA4uFbpDTVcVPVYKcoJMlDoF5/DX1XcY9GAamd3HJzxvP9BsDORlPT33vldD9X+97/irPa6CpxKYk7TxuP8ku0RruvxAMcRXeALeXSaPzHom92yOnZjm8+PApxItMXruPdSO4hHQWMiv1E4MZLWA2atm7qM1Ad4KobCoyzM08TXA9u22sPVO4D1xsU+STMABcng2mCb7zhYPRUffQOoFib+dC+uB8kyHgu8IRXQEaHDqPZEROYj/Nkp7/9v8XC3vgKlig6j6EyNbYN3pRZQ6S1he6aVyRhH3lrfJqQNAJJjCt+UHsWqRmOw9ho+k/e79laYE7NRAqkk6053TnQpo5+X+CBt31pqTNABS0prqA1+rmM8tO4kFIV8vr+iwIGNwPuO5AMuWSyoUH2TQLVA69uH+UcL8G0MX5l6sBVpQjdG/ia55oq6oBDW64Azi6+CZiexXl9h5/LeRy+YILqnHDQHLDsrlQKrNfEIOc5CfSaSblD1ef/ZKJztM9Ls1NJ9CIfcVuV9XO1m2hg3HF6QkKedOb/ve7Czh1PmPAO7cCkcdP+4lSRwLvdlk5kkkzMWrDIi7zSkEK3b+oJdJPjUGF08OZ4GXtZiFegM/eUcCvBQNSXdFVpIEz/CbjlaLBqRbQrn3YqFdiAi35a4rZWelNL89Xo3iXdBvu/TX3fyg+04112FJjSAKwPzxasUr5T/VacI9SS+SqsLNg94fszElvd4trMwBnSHwJzVVRuoQoGF4J1AK5ORWeHU79Y3NzhkMFbHu6o3P8tNfrMs8ANPBtvdzgBUkgewtPUYQq8OP5KptnfGWim4pF06kmGUamH/FV5wELkKBdzoNHhn1zuV0qwmlDwsUInnfHGIu9qJ3/mozMSYFL6VxotOMuMykcrSjprwVWckc2IcaWyTVARP2QuLeKuoz6SbR69ZlRR3obG+tkZAcy07FJBM+jWitcisP+AM51fQBb4PoUbj/MVAddkSmhOCTs+fy+rzycMEvCaQj14Bxg/PgHKBE2+IrWCTC0D7PmyHUbXQwEUSJ03ibJb5yryTx7o4NCTDZq8Vy8xpLtFOXWehbE+XFpgxqb1ouZPObpC9hKZFUSWkJdQoXF2K6Bs0Xlk6RLSB9EUDsEJXyO9yDe9f05+H511A6K3EJvSKsh5VXMn2xPNH8mr0pmsUcQ6cS91z9LSqOEBRq2oF9HziLSWmSDgnfi4vYPT9uOEHo6sgZCPUZZ/+Q3PTOtz6I+yiW1eEGEgWACYtngcryytB/j0boRvRvWinkQTD+r6WGqFeQ9mOPZFY0NFxbutT7UNHYtbXEQqWsbOB2qSiucAthCIKAMFZ1s3teqGtO4PN5RXUKhU7HERlpyCGAR29pAZ8ypgHtXg9T1ecQ4xExJjMRRF88mDAbR1ADK8phlM9VxVNrY5tJeJeHUlEDq+6YOK1imU0w0itvQFY3Zx31h3/FlC/7IRGQgPeoSTESoS8fHTz2koh45AFLSBEMCNVlVlOj+sTlrlGodESDc4kD5BbklrmoMlpMO76CH91HZMTuwC+lVYXQ28D+dQIhGOzrUqSopQJrKRicgNXyZTAk/XqO3Y4zJsi4XDkRx4SBR/mrD5zqLkSrSmcE96vkvBO1nLyZldoXriki8V5JUDb/3dUYdY78xsy7BNHV+6WvhWqPqDJPQQPzpB8qBZF1j9C150Kqm9kGzvGMltnwP2pj67C2wxnAx9qT7PbPGkGucv7DRI1So4DwBhak7RLkycSe+/ld1lx2xkmp3wQhfxPyHl14zt0fHkDCjPknyBFTus9/7oKJCJdr+GEPazIe3YmLA9g3qO6CRsYuEh5mmRchrxXK6aNYIjPWS+doCQ/BC8gBBVaSBM/wm45WiwakW0K592KhXYgIt+WuK2VnpTS/PV6j+tJNwR1mAHoH5oYBhNmv51rHqM83vd8qaWmTH0+vrMXjhhLwVn1xp8VGHMOc4O3tZtPO7ag5ra4uENrwkU4XtDYoSeqrj7YbUrlqiza57RFKgd/Ynqi/KRDKwJMaD3Qdm/TmTDlyQmZwiOCsR+M0F2soMpjzhUCRfovq6I5mIxfgjwGxIY0jM1G3eQnmxmPh45NKFCdozfMqLTKku11dec0oJTzMhY9tUppK47vXyn9TltQAWbE1EH0NcftxuN0WrdDXP6v1uB9clYQkR9jaF+hcBxAZdEhCn+5eobbJKQh+pEym/K36TK89mmgZx11qJknYe3pRcWDSJpL6d8tf+jx+j+KKS4ZYWuwDmmIy7CRRaWPRTqQt56Jq61uTmlDeDt8C0Tpqrxb2QWToniwH/K+NfJI1qUO4PXuG5iIE2L2t/wsZuyyZ1fn9yjupKpMErce4Pb3JbVVe+weHA15rElc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKWINrMAVpT86vEQsKS2jM5vJPzqA1X+++AmXrMfZ06naEk5neQWYlVcHNxXWVUlb0r/fSxtP7S1vdyP2WAIHq0ixCoiywliLifz2cEQRn4XHlj/mtBwvOWUSStLnllOrX2JqBtE0umA+kLLBVTqbqn7RgyvYhHJCatIMYb8G+kvkozqW4SkMTt51CZ3AQppH5DGxCVcV5fKBHEaDr6OeM9eU1p2L7fd8sPuiTg2Levfk2MyMkmZUGXC67eJWBNFeVNQZymuw+P4hv2txz9fDtUSCDe1b0+jqqh0/YLQgonAHR75EvZ5VJpwB/BoevwrrqEh5K5+JY/H/2rGkg/vy8m+vtO3TRFMouwpAxMl3CoPf0Nq7eg0BKPrdQ9tuZKs8udrQSdu0xkH4TPYhuelQdYSvg35HEavtivhjL+tc2XkquiKx1/MxAbSFqQS+t6XaxounYooo9gcuRGW9M5qP5aaLU64djmwF0DjpkUDyaZcmReBjK/1oeoCSIAlfZN6JhG2zZzNRRb98/BlPHft4jmXvEL2MrIDAuiDbwpFhJtZ8dffbXlb1heKuzWR4YmZ5wAfqU+QYwrVz7ZQnbi7xI39DC9TaDN2buJNmwUriegHtG2kXZqlJs3muPqOBKuUZdkfZ/ZyqVYfW//j3OaaSab8WZA0kkY8AS2y6qoSDf3WpNy+c2qazrFSjb01W7DYNrPS7tWzE4YNCqXO2HPdMSFWdtpcgp2eJ+ptXpQHrRKi/L+AsGR9U9pnGnzMuOggcjaQa7HmhwsjKUf+8gaeOQE0VGMz0M8xSIwSI8z80sYKf3DaUJY0KHwLfLCTP4eLVbgEcY9thw0WpT419/MNUqP5zfd+XEOAuE0/T8LgeTol/Ca868RsCTV8461Nz4s0OC5rEndnIs9p53bRMJDlZL7Tp2rTwuGy+9aO5ivZUwQ7nQomqVMv7zBrZwxvn4rl3ORlxf3Gd7253bgIjj5VZ9F2BXz3NeeoLeoLXzYtjCKzPMu+hG3l80HS1jwSxqO++/xNtwT61vMnWSqjDgpZZu2ICMUm9zcEfoOerAAxZ0tFHi9HfuZlolvmDOhhDmYiq7KXIcWkHDxdyasWtPCHMHBmDFWS+SaENlZGBT2OPcwkWOOSddNhAjp7WxkqDPfaOHtUl6w73vNtB4cuTGgDjf/H3AUWFs9ADVBOyJnWmqYtptilzP8DMbODP/rj7Yg+BPrHWoypeWCi5OB7bb4cH/h5AM4Di0e/6OnZaeSknlDBoJ4j3y/HfKSsTG27w/29wNIbcTFCmPFoFFwBr+3/Ae9wepRSY5kq7dm/SMmR37QDIGonTGXUYDzWI7EOkXIbdhRFrMOplfqiGXnuHtmsr57bWlZR6UtFO2pmk6CnMJWyVTkSh76O2Z3NRc8U7icXOvq1wUn3NKPZoSe48xtrW0vWkMhNynWLmtml5TmUcj4OJEIts/pXn1un55tQ8q9u9kn2+PRGLxYu5eilUFcokQupnicHWgllQpGMGtO6KMkfPeGDmhPReSTcj+nBywU6kbM/bY2QJdgCB9VEOsaBx21NIKqPMzAASo2C9hqfYoCZruaU1pyca/WbVVMoH9vLLDZPreXVTOgvleFBbPjD5rrVbhvM2VLshySNtlgIHsyEfKxMsCgI+OGtTXCDLll36Eksayu0h01sXLgwmVF6kxm/Db7pWHx9DpJoAEY5NnuT2h5ZmF/rpu0ro7TETFBFJYo8z5P6PkGVDAsVyyAY9ZmGsu4DPODU6+FLnmeu8/fLvd669zVs5gPxlocB0XMFjNB/VCWXLlfwKFSOAf6Sx2ZW3PZV1a+hSergPgtHsybdOqe/h5EgP/7zEpeH8ekihRJWQ8RyUmlzfRKPJ3uCyy0qlE+don129q5/Lc3P4bf6fuDEx1jLuTu11rrvme+M/net8h2vA/ism9nKY6FTa0nsxmZ/hUORq2+1ZWEUsxNB9H+jyFnOd42Ygj4xUISZCIpMkAgOtdt1wkUxnPeO8Nrl0kxg7J5v4yTevpldqEnCWvKLfAgeTu82DGBPYeSOooJzJy9aig6BUyuBWVOTNdeGyROgeu7ipqvhL5nw3sNlKMB7ujwEn1tuza5QJiR5CCFKV3GWNvMRgFQhgaSZWGvXDZvOaj5HODdrFjBCId45nbQ6/gwnyJB/p87uvUQ34k4tPu3DUu8ssFPjzLU/KHpHqHj9h1U4484XLSFxMoeWEmWuCuv1JRU/MHpNEiROZJMVHLTzTlSXw0tOGcp/uiSGS4ux/eQXbRjZ0VnMFp+w5y/4EFhTfvTgvux+zBn72n2PqsxQSkR2vHH1t6vcvTJrk89qKTK3IUGoxa0+VWgFk+u6GnrVw0fpkXamI4P/w0sunnWbSJR1yOeqLMSe4WP5fwRSi+L+NO3hbmoKRRKqQ/2e7cxI/KSahxOhtTMGtYa/B5gQKxanfUwDk168yxMc05Icvq/lezh3GDi53Serk9ijnSvFoEM2aAZ0WtHNemPD9TY5PLtgV7yhpLz1nTbgs8+Q7AVU9JsZco8lehJbMZzINOKYKbmVdjzI9wHoIeiSIKg0Hgf5AnWosoKSGUYMbynF+Yl9M7LTCWTmkmpbqw76H5/0fcSQxdV3nyI23Rn6fuHi2KrMKXE1Dwhqi9/joqCqVvGY6saX29GEtp9HFsAhZuCjEs7HQLPOymt2vIzsUFp5WDearwbwx6Ii1bXjL+WXirjihotHqgBoiOMgZ/DfrH+yC4w37s58GCS0u7nAWnaXPAo+CdTdnhh+0fHDsPxTzpNwItttVjNZ4FI473OF89GGpGLCPfd+EhnNLaT4SMeLaCmH1ECq6KhYWlti2SApSGwhu60G5DhVaLPLQRVs2Y4LUIs1BS4Lxw6lb5+ZLuCCTqmqlCRN/KoIxx4T0lc6fWtB0FGToys5tvuQrUHI7h7H4qgw1RM66ALtiKWk75oSuELtdX6fu6lryO2o8Xd4TY02gHiWUxcwxdCGeasWaFRktmssAHXPUZa8W9JiZlq6KiHgrbsDzsGvwVnQ0py0PTLJIk0NEM82QnT41rjkFTjcFUmbIgL2kenklqHJTcSUoe6rCPyREqmcUm1i8tmjD+8RxIdbms/qK83ouOGmDq0wQZwHBz/jg/U9O8rahzHhmTClTIumS6BnNpr/YeJ6TPW1cW0xd444EoQ+r2YP0KlVuOl7GUsis3GwHNR+c6rKUpXpLhN1x+vf0LUzn6ySOqwYAgh+VF8dyXrEg1tx11CRrKIhecDBQ9LpgFRxKPamTt4v72nVF7HvROmpDNguFZ04Ay1oiSq2A/iSLrQmQYDcfmwpPk5nkQBbRy4WeYX6yswGHYTGH0xuhsVe8/eY/4uA+TOhjSTH3iaJiTHB3brx7SeNnich5lmwRfO36YW5R7uvJQJuhlaytVIADcBSoxEKeDmZz7gRkdRt5FUMj2Zp9mWlnMvZWI2Vg7N1fH1mG8Z+Qw9gRXbURhFoe2mW5pwdgnglPDckVtVkhLoHJENNwVoZVCibw33+Od689d7zRCTLeBefnHCtDYMDaV3IsaPDxiIJU/MCn7HGrIxg3twa8BuGp5KAL6mfWBYj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXvGYDeDphNPVkP5FL72iW4mDdbfIJBs7poEhH5V5BM5vKiC5B69AjNcccnQMCVaRpNajQLasv2yI0LRFe5iCvTtTE/fIhuJDjUA9cgCuBi9I662WKFGJHwVVLRrMTmXsme+EoTvMA4KJA0MHbLa98pYGKvniqYTGi37x9AORGYdlbLz0qqa21bQ3gbkQ+5PuSV8ZWwDnKUgODbd+FzkG40fiQHf2VqDH49zFyGP/C2kBGtqL4+3zuz+mN3O7PtvvDNchczrdiLJoi0a8vloik7tS906HlRXO0PUFPnM+OV80tKfrvXPIGae4aFrixAT0V5l4I2dleuxYz+I/qXltZKUwc3SpCKfgYIfBYXWG+h2X+FaNjkAAbkY1rhVYae/XP9sXwJoLAW9Erpdj0b8pOa0tURJ+gAyCKzHMoNVvPfBA0GiqyH7C82E38KWAY8D7PDsf63eEEyb/QnVlhSzGyEECEGx9lxLoHEBVHjWimXwy6x22YNKNS5Eue83pS1JdzGJm9p1GKb9M3E9/8LlSNfILuU1l9KPxzmU4gDl58vXefX8LnJAs6TLACy12Lyfcn9hs1nkU6On+VV1eOkEixKbQ5BH1hsmhX6/6G6pv1qHZdWk7sLyeD7OvFHGgLrNOfQK2lEWHrHj5Uc2hPGypTmj6fVGwcRmjan3Dq/DCNxeQSEVA2qih2BMokLM8jC7jk+yVnZEcHkVXEBEHSFnTPUOUJFM36TmkvbWdPVzlpdB/zgvggguizkWjMuomgiHrFvMPLzqw74zmJPhe1eHbKdMOxq6EEP1uptQdLiKjRj8rJd5y3GBGFogDQduPyyh/XT3VWfNHeEKgPm2OBJr75l7hbt++YMGDwOVdMgEK952mDNTYU3zGrNPVLWUUl/rJ8lMmOvdOOeURWbTrs5/IHY3zQhDgwcuuCryGE6ZExcQu+3o68blArIrpgt1jjvmw/OFm4N5keBooFszz6WGAYqG5qK/tbD0PjAUq4xQ5OMgVgKAh4x5V5kNYPnJnXGZBA5bfitae6fED4x+6rApvkBDzXEht2EuPMxs8VmraEACGk4BrMqSLuyP2++rD+J+F02v6KonFbGfyk5YqB4/iOjrFyDO12syTHlx9XHllPnn9EFFgllbjkcTf80xSCrJy+pLkLQ79oLqT5SzIoSoU+RL8uv1WJzHegtwaW0kRTG+Fw7JGKjJThFWrHuZzJD6PdBskzhtrZLG5MhqkDS6LR/XS/bKeR2muJRbuTIBEn7hIlsAW7CgWsgfkEn5XtFlWxF3xGyeA8BxtEoeaJYO5nuHf6elLw5ongObgF/PdJPpteVmgnLlApTrHk7TQdoeliyQeObTwGz4XkvyXtfeT4J11zTui8tIrWugXljzN6YUtU4cOkN8GWxkfVlckNj3tmIJryeBjWCWaJ4V5ITeRwzRz3aaG0ERbT2vcuKvTxbA7Tgy6n/zAhv0Qtb+LZAVrq4rlH6xH5KhkuTvbAFDplpRkMFwpqD9pnmM7rLW9anwdAktFsmpAGEMjKytKzVydE7fgdq2SC2cmAIlTTNeD3Mhv3w5VmHQGXrx2SFjZuXM4zhF/1rnCbXvix46gWRjVlUXqz8hBho2zt1slxqElyjkZ/BnJKv1blHPKg7pcuIsbgw25ch4tBU3ZeHN3vetRPVGm6Hg7IxtpNN21wt/hJfY4e3FyWSS1RF141iH+s3XXSQnWxAHOjayrtOdiQ+t9T3dvg5g7UdaT1Ltpf80f97PR/W63tSb3nLBLXxqs6DFja+Db70/qzBO/WRjQCzu3Ttlm+WZdWukXsC/opa4WIhJ/eMzQRqlWrSY6oisKJB3CyibjpirPxBFFffhs/Gg9+ujdd2HwOLSgzVH7+4rj8UV0CE/KBc8LKy2Bl2vMvPwOkYUuNpbuKKS9+j+1JRowuVCWBfeMbSHgiC/znHNtIuM4hP7zdlw1IOBpH7Xh67GOF6WgAyynK4lZ3rd2KIkk0nEcFdoqXyF5Ro4sF3XwDRDhTVV8tcZfeijqDKQB8azbXF7XbaNYLdXpG1fCyyig9UViNre/P3N29Y+C/qTSUFqy9rkeWERuUEHIlFuOJTTrUT8aZDPbAkFDrlUfGr6RaANegOjOM6m/KIaDIHHKsBecBx1caz8kzBYXH9uy8Mi16FmMTucSZBdKc1KOew5oXcPU2gj/fSxx2heB9tiDwGNSbv0lsDZ3b5TUJaB+6CRRsLmaz0HH7zza9lIeafKq/5P0ziWBTyzYoahS6xPpLctv3s7uXQdnxaLA0K/0FfZOkOjRa43A+d817TDXjQZQmaPYf5fGR0NdXI1oCznLTexJr33LPZ7UjDljk3yseFpe24p+czuHXLtN9vq7a0/GXl/RAHVNQNQJZyTnRDX7ZN2i3YFMCCtnCFfCW7t9vWF+5I/RyP/jJodM1aPvOBerJ0QiqzGf8IJeS5jguz1nYhQaUWpnljXLgX0ZJr+Wg9/LhzONznhLNbVbTdEYROfmQHRuVr4APVqOCpsKWg0ybjqXtP5MrPBFGUC7RUXid3ZzNIr+FeQCJB2kx+Pgo2iVx2Pb5e3ymHhuHsEelgLjFmFX2ONW5V6M30NZzIhLDP01wdXYiAn41MGAQ634VyE0xJ5CmioD7GYMCp3ziePbYYyWwTrPHkaav585EegqJF8RFN5ybFeSDz7t5tdstHN567gyjNbcFAuRraftLPS1oC6W/FqYYFn9KkW5IBXCQBHj80qrjCWuzugim+FQfIb3RJuc8ZUd7bLubXrZKEZM9Dti8cx36JMSS5qFxkZeJwTplYpXb0vJEe1o+CTj9Qwl8NCE9KZFhN17hcrdT/ForBNDggwrk886B6bycWlknIS4aV+q757dH95vyNaqdtcCKu1mQGDJz0OFrXMFBJtcVaIgV26jQIy7Ul2rAbrEJ1YLeaLc4039YvWjVavxNGfvCu8mhaULdL90F+TGTBZlDkFUCWNnfJdKpafx0mXw7iWKTuWYoyXPIyqxFB4GsuY9Yax0s9gLsQYuXLjV79PSh9b5sYq6eHgL/jNqfvji2OUv2rwiSnjh8WX/kgCR2M320voLIirx+5uO7oVZaUPz4a/wJ0uwRnnYH4jUFqI7Sj55qKs1yOgAn3nieZKL33jvR004xva6ncGlZEGr1qRmuBaOpKnIgjMxpf31Gms+uYy6Qn976adoEt6BkH/MFLhstKspnjt2PxWeKyUSjVM6lyOoWJanyftj/B79MUY39wRT3uWt1yFzkm0KUOmEwF8550hRYRaRpA5+JxZQKW4+X7W7nvk9xUZGqtmbJJXvuLA0ZFJFCefdO/Z+iKqNxIuU7nIiZPYr0muNxJL8l3ulgUOVSAeh/6f31CUsfjUHZRLg49h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7qALE5oJTvh25Akj4Mh4UMIpZYoIGyNavLcOMrA57pCME219XPURuvDScFg8Edz9i70yDe0yht6hQo28aN2XcXLcP14V3OoD22SEiM98aIi6Wi8W3ZfvUJDCjzYWetovFk65bw67+51MmWKDjORWmPHyUZgnqiBE1XE1njAlV5sCW+UR0cIMbzKYgSse1aFsQfORVJ0bsgtWj2cvf5ee+NN+k+eDiqDVBn/BzieVBS65DHM9u3I4TbTQqm55jOsX8uwkI5cmjxTXmeLsoNX0An/XSDMoyxJPI9EVyuS0QlxYuDh6Xs8iM5SedAySla55eNShYSMT/wDaDh3TL5/sxxVZ61/i7xK/Dx2+jBqqU86AqjYR01kxrDGIJUSQy0zPBSg4WlneXd4grC9LmFD3rW1OnBcaxbT2eVDAOPaMOuloy+7Gh6mSnbd3CAvAkIy4bjaRFKfEh3zQtmaP6qhEnODknQrpdRpFbtgsDH3ox2aNHr64q6InY4XUWuUFNahcaagjFMJv/FzBmV9BVxOHLlpmvXBQqF11qeX+6YuIqw0SzT0Kab5BCsNrSTduQ+ijHzq4xCLebz6teHM/bGcTk6Ap0Qkxh9L7Y38Yfn34HplKctVipprnTNf/74PuIoEAmoqe1XltVAK6v5EYe0AxJNTnMPDzefdVu5PzvEADd2xOdQ7nQB/EdiRRyE5HPEysU28ZASS3edTfUVoI4HStVrLNjjq7aP0G2/sjynUbtNGlDa2XKgnNUyrdXdEv2fYzXt0Q1Ne68HTxX0ek3GmjT6o29RqlnwEBtSrjOFdR8lMmR8zCIEE4etcLzboQhWQLDdmzRLHJ5oYhAMKx4FBl2AeyUGH8iQrFEwAaDCLFvtjw2cugOoXAqh/4bWjTV8tr2P9VCQNYXT5D/tGt02c3gsYEH+bxfrxCudhXMYPm/zvdv7PNOItMuDCYmfAKJBBrBPcNrB9j8Wom5jqReTaVjaRJkItHgQuXclRlWVyY2OVAik91j+V77Ww4vgRaqiTl6zR4GFhOScuyLMtriadAJj2Ekqsc4ryh/VRC9iPymIz8vtuZAGjwCCM3Ypb2Ryqh4BjNpg6h+HNJ6LBl3crEN9Is/QH/r4XE2Ov46F3BkBSXjsKb8YmgOoZGVLWRO7di/ry9SXI4v59lg3kPpzmmhGaUZf+eBs8f/js/u9SNGgntsPvl5DX20m5BG6yFqE2MrGv8gEzuvvdnVgfzy8OyuDYb1iKLW1BMcRaU+TYvyP/h9k6d3UBKXeFKJdRgC7qnS0SEYjmAmbFKEoQwjlkFfu+BAj1pr06+oc/Yj8V585VHtrwvNxhIdaqsK7Jcaf3tT6ezRrDAg9Li2qaG/7jOYGFIk9DYAIX2VkKBi70H2j5JpHSRk0NFxJd/WGR2Oe6u/i3Fre7Mqf+7cEPL0e6jdyK+xsjetIFYAGyUl3KD3zZKsZvElWnpIgLenGibvTV7N3dXe45mUp6ocoiTL/f95kgfwCNPXjUtiU9AEGnbPlTbQqJo8X1ebdKD3zk0AJc9PIynulXgZc/Re5kZzKWYCA6CcnuwTXOAeuKiDx3MKav98Fd9h6MyiLBCcJukBkrzrCA0DSUrLSQoH4wrCGiCaE9lc18DxnY42P28DuWp5Ywlwe05y5+8iq589jFcYkA5tDYHLetOjD8/DBK3X4XaE+FPQdNN/fNGZWr29ADSW2w+MzLIE/HgzHzafEO6THb+r/4JsNTAQvZ+BMD4iXgEti9nUy3clBnoCdBRRkrjbv3kkjYluUdYn2tPuaLWq+2MpSSNkElLevvPk4ZJFvS0PaiwL/lxcGabXuO/jG0Itt/qnpvtbJ+GXyPWE/CG0KBGQJ8V0nulk/ZXwOGoxOQeOgzJhLW/nw6srVI1Z1ZwgHHniDCTwFgiOQLVvB4pJyJMW4yljT93HIyatmlfVmwah5BZ7IV/AQ8uiOWybBEIE72iadG6Ha7WS1dLRdFFTd2CyvkAAXoTcJckDpl1FE8grccRUpAN4sIZuswYFCCZisaRj2RCuSYQZedXiQOkwzbjyuYLVa90tGC5kDiS1hCN99UDfIlk+aw8Qk7P+FoNhPRm9EsU6k6x3I7DlK3D0gta7wqkFW1hfhfbKaFZh6PnhYQZYcXivUWMLupcsonZw20mMv0AivVuAw+H+vw9Eq94wXfrrZmJZk7VAbV4l+1e5vAIdz9VYsRpp680trKxm+BLznCwB6mEUykok4nFtsJaLIuTU29HQnuG9lE84JsIjhPAe/S5Ch8HRCwPioCX+3zN3XMAgNzF+N1ZRL0ODFVpDSkj5QUqgCm2yO/WqhyCnc7FScInfoDsdbypbjpQx9PjlOb4UmuZexf6mswC+4cH6nwmfBBX+zXJUKOg1w3w1M+deAgIPm8wNOkFEIkQkIg0Gnc9oUSU/0gxrtj74Mk9yT5TeuhYDMy7YxPI4D0J6JqPHa4HeWJE56ZCWQFZzcvrDmzC6XisA95FygTF2/Z+DRvwYGxERdnB75s1cbNLQBCpX+oOrJKCtoX8DRzAeloDmrE0j2r0vRIpf5/WA41zhtRu9+zug27Vz1zikCkeATtN2/38pc0V0OWQzdT/w2kH++K/lhtFPG4s2sQssIDrXARzxKqSOlLSuUbe1O7SD3HpMWc4lY5OrsSNiqh+NMj6rHFRY+rWvyDcUFdD0z2+B8t84GRBPyyL1bM8jalF7U0X6JZRN+Z3E8stNUwgSVr1ZMu4f6OImpqAUMROPQmddMg8xkqgzwk0CMNlJNSKoZPHZNXLBGKs5wZiiQxFZNVgd4/93YT/BqxxoE4YLDaSzj2H+XxkdDXVyNaAs5y03sSa99yz2e1Iw5Y5N8rHhaXtylFOv+910kmUaG2HxL2dBoVcWVQKUi3/4MERtW7+1aQ4YLcPvN+Ng9V1APTLZ2RJqcrNTwYfFqZG7ngWcpCRsip+T9e4foQN61I5TRiPKwNQOi8DPnlP8OhGwBuF3vX5FG+Z81v3slfhf9PcqL+q6z3bwfbBfFHWs23rMLyOfQDLrDVXUswMVrB44+ySGYIPDyyGmVzCC4oWWfNXOOXVmePcLxsihveraVjddugj6QpcJtXIUWF4nJwOQw5AMQHDM+F6ciuneOWpiHiq85OE+n8SmUzlh7bis77pyK6Dt7JSto6OdRxyssLT3aPw8bUDUYdJU3OG7RVVAHy1ikqMReFUtTR2OKOs8uNX82H+mKVovRrwzT9KSFwJRxnWc4FiFEkAMgT61/zEDva+SD0R4l/e7xO+ttWdBL6PWBfpQKSDqs4PduLADbeDk6HWO6hw6fUjUw/YpY4Q+qg+1jmHzdFDZQzrGg3uo/DPjq2hGOgEIdSU2tTEe3LtPfN6D2eUxkX1xkcwXbNEchEwvbQw4UtSTIT0+gcDmmEX3wPINoBJTF2cgF2Kv+8rJOayjC/xQlOqIKk4LRXkkb0uBxibSZQXMaX0vZiz1bkVKWYzG6vgpjfNeEH32ROWwK8zoW2MiZWlAb5RYXKZDbEpmKAfB1ATs6T1z0ucWxzR5akd8HKWJoLIZu1+aTNe6/EGRUxOQATMKBcN1J8W+3G7OoxYF9tbW5ew4PO/hrzdPeqPPdxLfBwXixPkPROgM+Tbx9AUKqm9kGzvGMltnwP2pj67C2wxnAx9qT7PbPGkGucv7DQ4v1z2AXDvD8ZS4FZ9npKew82VoM853lvcZGoaEByQu4y3PmhdqGnWzOpdNKzXlGiB4CnHMH/BMXFfyn3Bf/GKGHWWzmN+LlDdm+5zC3XiGvd/N1LYUA/Uz5M451kM2z21vRjLNxg69YSPZp3XhSspaLfm/3VnDQM1UZk9O/paiE1drVyl5kNZf3vQfyz0aw/Vg6PumAt/+GZvOc3GZqj39Kf9Jrq1wslavY3c46F8Rbb22w37M9KCjNdX1G8OjkvFm4+BZgFF+1djJfEQ/7FzVXZJWOlUQ0G/hP+7Wjftb8xWfQZU5on/STL3NG8z8r7AUoHZGvYuAZfV+snOam/4c26YeLMr7JarO8GW9H/Zx/hPaO8AsRK61ZNrH5XIaqPf3PsTHYKoLk/BbjOXu7XPMimlhoSLjCXMagSQSAPUwQjqw0WV0oPNjqimXD8bBULg/nNOz0rMF3IqlGljtLb3LChoXuuIRA0snF04b7PVvROrfDpLiXi6e4COZHFvSAXWbP0vnEE8cmwcfXyeFG5U6Zhk603nBrZI74uN4M48imaLuQkHvbgQuFNhzMcBTWPYjzf7zEbA1W1kZ+ym4HC1U+qvLuu17SWzc/pA/UWDLgfg7ixKO//JT0WvwknDN2HW2Co/fapm5u8RO4laRe07EgYKr2fRpFioUi0jvW+SYLOstyedTn1QeGLjqInlbiUOyDDxufJfibAH99uMgWes4uyPJs2X5toG1qCw7n6IMSS8aV3zWZsw8eJlX83hZ3Ilqy/jPXMCZa+UdvNKHsfItK/srFNrwFT7GqCyCuC1PzfXJMsRNhZIDgNtKVs97fM4LV8GaloOPva6yrFClviTEmWSeKtTSSorQc8xjSnu6HYxlecDiS+n+Nn48EOK8dPPkt6URwqMi7+JVG4bD8qDt7WY1nbojZBhSVqFbW7PuV1HRbtk62icjT3mwCpGu7M8Ml3v87kAOaMaw1L6ufsk7rsdRlcOG51pRx+i18A6dN7ngyAjR8yFFYMTgW2a/WY9h/l8ZHQ11cjWgLOctN7Emvfcs9ntSMOWOTfKx4Wl7A1q7QAMg8juppFMdfJWlfxFgZvJzIfwi6WotS9DRZK7AOOtc/QiMtmzJh6vbOsU7ehqBxKqZbRlzaN3rAwc5oHDNgKZ3fbPQpQSmq9+wUKtgNzH5vocPV0NyrlS8Ms7jt2s+hHwH5dfOZAE2nbZhkkN3h0sE4n1CV4Nl5kZ8vgJt6yUsHrklFfkMQH7DqVhw1Q2H/31VwTRQ3k2aLzftXbvNBd3PKoDj2ixC/sSvDb4JjcsQyenduX1rEgnn9XHr+AyorgnkSG6oTuus5qQb9OYaOygRK3nLGTKj7Unxyw2HTpArFW7ESyxrSViYPp9o21cRVzm28i99MbW3qebiBAqqb2QbO8YyW2fA/amPrsLbDGcDH2pPs9s8aQa5y/sNyAucGBAx/HVCjlkg2HIA4Bp/ejZOVweGthMPqZzreavM8Km1UfxJxhhha1RP/x/IBuD7uXyH1zR2qJkTkumNwIx+f5Mvv/eShc4xGGv+TkAIWehs7VqbS2/pQ2rvOvG0aPy4C5s5fIPpHswb3bBpQadUu0KlYysZxcsUpc41Uq/NgIt45r0PUd+/l3rcnwkRo262iOfo2To592dc7qB/46PFUtdpa/uYKuhybnCgZw/QRsC1lNFCVRzEF694p67BWsHOvs/uGWZbvVTkzjdzmTPaOGbKRFC2kKW+I/KevTNoupd1iWvWvTYlO9/tXEs/ym4AIDFzPLg+pluGlEDRbn83RJFfW2iDnQ1LT8H8gy65fOZ128ZWDfdn5fGlxNrCFt+X9IswLCfu41mGMXuEgH5JU1/kglIFJh6RyvJqCEV47cI5FIdZyw9cvMdL6i01KL059Vm3eEYxSydTzo4OlkiyJNc9w3g63416n47mKYKZHPLG5ylLeDZaiONwlkCbMSgqrTEKSASyj2KCLI3HwGa8fcp6WeoN1yawak7V81OKVkoUpNnmpcFeefj4ap7oABZeE+0Acex28PdLa2oVr+6DDI4OLl8LxeFAuKriTJDOkUe2j0ABNkSiaQGWZ4T6oeaLPKWFkmTnaOa9GvwsM7/8KkXMWjCuQiH2/Um2FtnVIOUkhhRFD/STTcJgPZ4TL6MIWsNTzXVXpqIeysWwbEP7CmK7rOqzBBY29BuuP8izqOdk/OS2eWvY/Jwte216t293uLvTGgw1So7ejCL91K1NkGP2XGQWqscArq0HDqJnl+6c4Ej/JuaovcZBqTcsdsP93OsoewBgEPeffr5JtKDqztkXFCN+Pqee86O7f8lNfGIglmfV770dr0Ke4gxpgNFRu/OOGk3IEPZUaqLAJZ9Cu1itzIOMVCm0CvsE3UtZ578JizEOvcfvWnRO0vjsTsXw0qB+Bh8evEUwziZpKEKXMfb6Xn3/7G4llA3ATmm0Vd54fiHnLGm06wWaaL0THSI6OTOOhp98uoAEtlcOP+82Wvh2sWtdOOziLkvK6fmkPT9wfzKa9PU6CCNoOI3VRpNdfRIaG8++j9BBfbhJ9k7yd/GCVtrOeushskksnxyJAyJZp0XrxeRI0DSvKFgFoU7BceE0zBevF55c6bQI8BrpHfSnjoj2YvDcECAJTASyVdwKOBiobX66slKSkHI2Dc5Yhw+p1+2/rUghpG+d+VdAhk9Q4676fX9hUFAo9w3kFpgGtGetn7Em6N1pEZkio4T+OmS/4vWGlQuEQBMMjORK8LeTWtPz8zTAiCLvLzjBLzYinNv5mAseiTNBUIeUep6QQg4SpZr2eCuemNzzUnyQSKCo3w4Gm8H9NYc0cBrLIsmVH82hSYM6ocRxzndL+cjh/ixcFcOwEBYVfyhGABS/u1fNSq9GTICWc2cBQegdAoMENJCGiICh2ffSW4XidQ9WYHng50a/rgkGXl5Qrp03MjN0DC1tNQJJnLke+aKUl4rOD+WfMvuwsV8yNTNMYJkLSWetUj4y11sT6y997n/Nd+jsDY0y8WmTllotQU6jzeUugHVWXov1nMn/WFTBvjcNfyBqjwMFeWue9GqqNvSsXJ/2UQy20MTUOjdMw8ilwUVfz2an4pplGGuR6jO2oHm74yyZptnF1wqsKnmxZeJNNAmipSMX205IVo0gcH2foV+zxDg06lpAmrMJg6F5SKP3B/IfrQkPdrTypgnu504HNHjESYNUuiEIniaCpCWnViu9ymLFGRU5vNoJ+hT0Iy707sHxmqHbAuRzTm5iNFqjTCf9XaOwTF05un8fRWvfnzlBt0lFOZ1DvbXMVQK9GAGss5S5e5qucnO39RuvCtL9joejm6dIRv5uuRkA2MCN9HZiWknTuzYnimylPMbtLtWng1uWQPW8seNFDDCT1+pcvcfvCkKGTlJ3c0/U4XwjXWJMpx4sbpthvfI/errQjLUihYkCb9168Y9AS1jLwDGP808w6+XrUqfLCvL7PgbA0OrsaIRiDSl2a/LrJM+hvwADuBgN3iSad9ykT71m5U+tBwZRWoIte/PU+DFEPaA8MUAnp/EpfXw2kcwsmLIX0v+OORAaVH/IPntSMld0QLlZ56sxYDSLU31dnTa78vCDWMk8t5Qnqnoh2HpHdCG0Mz+2sCBiFmxwhxUnaOp+F94c1lxvn2s8+JgPjNer2nDwmG7quzk6t7azwb1K57EAWLCo30esu7A12v/XyegVYVtplxzHeKGpDAV8xx29Phm1nGdzvaN6/GnMeSfPegTSv0anTTEDVfNr8AQs7wW378O2J4NbCcCTKGeA7o4eH3LRTD+7rFTihKm0og6gXw6T23embiK9M/hIDz1Ga8sB8QtHi0LKTMJd9K6ns/CSpvoeA01E7GY6V7KdklJJ5VLsR4LUametn9M3bJUPQwE0vImZfnjnpZQHmpIag1zKAOb0fTa2K9CBQueWF5YWOZye0hD83axa0fxsQm8i2Mb7jEA4KZeGTkLitIcbzmDVh0j3C3q1mU1sOvWm4p7vwxT0iVAIsn/tK0K+d2UDHIQkFVag+I/wiSZ/Sy6yIb8TZU1niZUgQFf52PnyqCkbzaE9e8BmkdS5Cw9F1nh/OIlhna+mYar2YjQts6hf+HEs6BB3Hh02eQoqLw1bzUxaeULILaPqfiyapc18J5wT3Z2Cd1enLh6INR6l+b1QPcmZ7oWMNCore7UUTFXpGKUWK2YuGm43YXJ9pnxhxM5DVSBiESDiK5Bt2YBCRdv16xhZsfkZ4xRTavLH25JlvMQwxZNSKolqPKy9ZvVpG6v5R0Z9OoL4xCfxD4INQc5Fl518ez6vCRi06KcciMAPLFQB/zmWfo5qzvjDFu5qBGn2hEjYchrMfSj7daqA0dReIfrBuOiJvWKj1WmfAdRrqB8gL1srA4jCkd0EpBHTWdeFN5jAi7xMR5PByKlLBc2lsA3NozDwPcpmV+zoulgbOg54nPCug+wZ/EysmOD8fzt5Ejfd54MLO/ALchlOoZ0C8AFFXv7nIeifQV50ePSeDMRz9++1tcdl7ZMvGjSWxs8E1vntYBeDGUNCHCv+/V7CgfRkwEBxPIN78FWr7cJ+YeuYVemJmuRL7WZuD7LHkkNmYXQ04lJ6/Ar26fvyH7Rp3+xglOUFm8lA0qXw3ibTNYXQ7oyq4dm+8SlKuJLQkY3SX2YOOzsWk6rNaJYigtc4NfA8N1lhb4QKQnkD7IhDeX7wd49JduCdNVpaMkgvrlFV784XyckvF6zq457F15yBQFOxxhwhGXf9VaFviGdpD36wDIq3bLdGzHYqjhySzTGhxZA0zZYPWbD1SOa1eg+Xj3FNJnPj4tEeqpCBo2HmClIe6Dhry+5RuEaFWq1j0Tgvbj+jVe5XtWBTEnU1747aD4O4w675ru+KTVClE2X0KIVXgPm/BsaMEWax291DgQe7tl9o9KM8U2XStnQOqMi53UPWBt9cyaJKIicanD3UmIVypR9v6nUL85w9nLxkP3OVSKxSoqU/Hcqz2t7Wy7FNsL6d1/gvpmG43eThOT1HW9omuMVuMMWO1puAqGdlQHXiuN5YSO5BzwMS6N82vSPY2HydU1G1WjX8CDqV+/62xqZnk42WKcferMu13HabxIhd2mBjfJDOjpuKlroGw9vuCwzBVgOWcQtGn6r3mkNjlN/4WNGABjKMJ45Z6YmK5No5kRnDCEuI99Hxwmk1u/twMeMeIc2RTyx3hcyYml4AOsqtnVmeTZdG9OY+eN/r5xKo6fhABdWBkXnmg/dVIFyvj+WWRF/ycmGxA9ZKRVkIXFCCHbHFK5KP+Jb1dLLpewq+6w3n3Ke7pO12sOw+dZLhoulxtylGa1iEXLqtHqJGwcqbdhxq1f+awUTaCthWg/Pap/goNu/DPuQcTxLdYG6wIe6dQvfzGzNCyADyAiTwToLA/7AveRQTDYxULIrYD0okLA/JYU/nekQugG+UCNtlwDAqA7WJXPKQ96khxsikeVN3AAouCR9OrfozbTBHvBdJDBwPnIXwx2RjHee7Fm+xQESHeJnW6I7Cy+u7pR0J/HWVmMViWnnBxdKR3V3++/flvLbJmB3KtOlxVCTsSyUXuYJYowg+3geZQhAnB4tX33MTnfnMtBIwQebPEOBYWUaW8Z03pOUz6A90xWoh/OJtDfm/8At4YMqhCwz7iUF5VBVNKf4TNw5W8G7gW2rJSX8pIQaWZm6wcXEIrRrGamq8nZW/NoneZHAhhH/Bp2jTAn/xH9VQvayPUNfzYlqJfYloN2kvBu04ilE8dIovsavrKtQzNSL2d5iZcFiTKtMuffLZJSI9WWQWysUAtdHthECpP0CMB7ek6iBBSbwGHJsXvkV9OHT1G8x3M34yPN3LXy/uSrLgq+H8HU9vavEDSoM0HORrY6njLDGBzmvpDychp98os8V+huyJJc1PYvo+4y+ReifcCACEC2RWLFiA1e6QpZhKbiCe95egjVYKV3OpcUXOnrN99wgBNKLQ3T37pv/l80/PviR6BRzeF7+CAOzWfOGJLwI9HGv5xn2+cvr4ebdalksuagLgEICNS4FZ9Ha1SHj07dDcD5YwqnQNeGzTPbACWako1PPWVwiTju/OFQNZN2GApHu7bJyOLzHwxPxcgqpvYeb8x6vtaJqDJModWXRAhc8p/9PxdWyUObgw1mis2cBsI4ChwpKjJzXoFDCqhz68reBE8IVKv//C5M/rNnhfNEp5NAAzUsRNV6JnRWExHqJebn22YpnL9TN1QG28fQ0ESiedWluwWB8AlpWpE15kmCVoZjcW/LQ8tG0n/8yV28oIbCnb6SQTtkisis9+H8zrwUQ9xmF5sXNJuPlHw1lX/LukjtXbqz+Z+kYZJKQ+1vpccNGMPYcEGmDmGgLDgDuUMEBzyNw2gtICObuSiITCRPVa0y8wGPpEWwbiqZ2Wx9lVJO0LnIyXiGQ4i5WBXLRcE0cJ+cueCEZrNg0gFSxeu9Wad+P/suNEG1NULIOS0fR4umRvYnGadNF3RceT47tzYmkVwdEmscs3UbBS3Z1PT9paQWJrTXSRvLSSRHas1oZ4a7ggvskgan/2oMTMI+ZaL1C1fqE/CUwQ2pAgx3V7UIFNqyGK18MQvc9UVYtzB8+Q8950LU2iewQRpisG4RMpb8w/M7tJyHs3QZzUYlQ7SnffP/Ukb78TpVkh9doq+KhO5LUb++TsFeZTUeTGLXmQMeq84nW3na+43zx3+9HIXrYvA/+VoqhbZbQ2HpYZm0JbshU5jis57N2bYqGVl93eZGMKgdRagBqbHEs/wcaYF7dfb9RacpAAAPjk7bPAvj4G9MQBJ723DcJ63fYwjc3qWLtpfEEyQExMiX9NHyLJ4okxoMbvk5BDq3nGLaeNrlqDPM4XmYIwY/3uzyVAwgG7U2OIDggREoR6qrAeL3MQ3DPb6bJ/5e97BiyMWJVQqTwkMiBkufQ54e7vdIxQuVRUAFPfm5f/x9dnbtvvzN/iahij65IGStJTTBLs2Mvnf6wStQTGs3MOMfBdTNCNZNTZV3AV3a89553KZV8AVGWpzWDgkHkICw1gLg/1xwpahWrojvhxLitzQKmRr6L1yMv0BKIEl/p35GbcGv1TGs9iV89RyoJ0kdD+xu0o5Yaqzf1Cwaw4s2Doj7vrPz+DX2VGUFZNvJwirV5e5lSU+qV6KWUl3tnSv3Y8Gj42JkcrVFlrP2etmCRuH9t9LDwgYSYw0ZaoMV8LzDdroCTR/SRV28tQhCNus0AIf2Z7qdeq14f9ZwUjfkQUrILqEYznJSF5ZTffQvPRHk9fVCSLfXfUCXZpcRMVtc47y/hmuRopKb7Qe9JUxnqzsq2C8kmBPHBYsjymjambvvGpHCvLamwiloAYD+RNdCAAuxDBOIsvV50jo5pUZ9gljWzvo6cdv0mGCRbIqOgGFT+aaIorLjO0R2+QuiORJMQxu7PSzHaMztrZNO9uGoEAbhq7+veWwuko2PNmipVkCTFhyFMqTAVk5gOLjWS6/zXQA1/d3qWaK/dy1Ok5gO6eKEr1/hlhg6jJih9x6x/jnSs+XltHkWVXNS7hR9uszBL4+rmkQz3NDb1TeEjt+iDGTFAC9QvVqQlRB3kY9S/ragNQQzYeK5vzADUkpJfBEnSyZ019TpC1woJAfGsAerRQuVQ3kxWRfgwT+BucbXtkCU1/qmrJ+q6j70o3pWQ14a+bISkXWj5tTE/Yo52caJ5o8upvrJQV93PFS29mQ2xNC8VbrNX5nQg0gIuBLurpfuXA+4HbGTVaCSdBzh6XDmWmEZiFDR7xFUQJKksk1S8/YjIoIxeTYOMqFyo5iteIeHLB0RbHgR4/j+3tNLlaJsHSJ+Z32sFiWos82AwaNaQvm3wgIvVHfhiMrSP3d4GZ7U64YOvcIRiIFEAOxHduIw0EaH1cT63kT600vTL9bebC6uOn8o0mFsqA02dhEW+zX0hYNztcnT8D05JYm/xFVqi6z1svYGvaTSONS69Ab2F/mVCiT9PBsf1WRBiSGXsQxgCgK6krlwBt3SZ5zPzqK2EuYRboVilA2kC2IJC6yDtCOI0hHOkfhdVf7HehN3oePsAkbJXYyyaxq68S15uDcp0Q+q4+Io9lLeuXLoMb0RuL5NsghoeSdSWvt/ajWoFvlySF+VfbsL4IgX+V+iaC5y4xHNUAAdW7gJNm65s/Ic3WurIAHqBhJqhyOOFvf3DzsMWMMo7jqYgQ9xorObdhpK3ivxL9/AX7/xR1EJn/nlcU9XBTaDEg0L6GIJSQE+FLgIRa7TDBpbOHwyHC9ZlXb1VOFX26RSL2t3Pa+6dLxYVVOqQkMN99uVoyXspPVCMQ4V/SdhqyonIfGv815rxN3MUwcwZBpmspQCAMHaRRsEVae6GqNc5OaqaBMoWGB3x5pK7VK3PRXm/ORKaUUef06zRR6C4VG05iJxnIlOXvHCo4zRxky2TXja6HtmfOpOy6CcsDaQ0N/Nw9Y4Eg7CS3r8y/7+IQeAwo6pFWKXdwONoqTGuwaiWkOF52NOC6lzaEmWsvtMBNTnTCOFqTYWM10iMG85jDLSEv5HE/2jxttCgm2Z4U6Ki447DxN3kT700TLEV0UxM9uqI8mYthBWxDVtC+44NBXpY/33hdBSzRltGLDiwlssKPuOU42RKUYLHJLhIkyaegOVBvcnFrrX/RQj8m/PIbCN2eHuSBQhh7VmkG+du90gYF3lMkKpGkV9r4ksobMoBAOsa3etflnJr1LEZSG2Sm28W5ArM6a103XN29OR/fIFHD8JxmOaRYdhqFJ5mD/rXinwHy/np0EMCc7TNRsPgRXsDVa8A3d9f9L3dtxN4dmhgqxyDZQ8JpFC6mol5Op541JMz4li/3U1punUXAdBun0v5iS5iOwaTf9DkqQZisamP+5HpjHdqsO2wg+IezGZPzfWK0bbzjk9c0G/I+tNUEuSXcgnOFxs1ddlhdeWn6LYBEwIIFgb28Dtob41jcoMMu89MbDfYzSRIUhB0m8xMRd5CggvBSuX7M+Q1Jh34xb8dAR1lmsInX1/iAJVOXs7NHLl8ykhY2yaSvn+1rGwN7B1pZq2qzPSZMFKFKX9Q2DupR4RPxOhPzC/cMGDio1LhNdtOqqDXFNkQJ40fHhmYovMxVvoNyWm0gwLFr4XucNpLTpp7tYG4yf6Zt11dYd4X7Jy4XBUQopcwFKPKIRwBHDiSCOwBculVQXOS4kY6Ry98aYVuMzznpUkVwgZJR1gdfq1QGIup6CLH2Fmm1ZrAVFUPbBmq2yTvEuI/GdvlEZ4MURQLctyuVVA19FQFyPe26Ws5Ez2XCsZFjB1RoLAF0ei7eKs/bkb201FkwNyFe7e4aYIE8kcsSIhOj7RKwcnXGC4aAtNsqKz4j7A68CWj2FF1qG9xMnDBF9llb4jsPwA4zfWx6k/qg19bMZVLYAMbLfrUL3WkTczSoEJByu4DplqVM9Q5rx4q5mtMKYu7s9lU/sJfQbadosvAxGd7ahoetovMCzKqiQWiE4b3oNzQBVy//Ou1pdhjPPW6iQgX1jYL4uVZu4jZY2htAC8If193opHfBRfxe2KqFPPUQUjErrC38ZmNTo/JwOWDdno/MTNk9naDmHWvx0gOJ354zEkY+T2qL4AClqae0rTN0IWVIpGqvGZ8eqiObMpjZuAYqWM9Ukba7KoNZuY0Flc/lLCuPM09cmy3mCaUlVd79CmejHevx4JoxYjW4nOMjqXJCQsahrP6lqEOM2ny1OP2JSkpVEJhGyM6xJRRbwIcegZ1cxjzQG1vEiIRRJhAoEkzCcXWllagcc+sojHo+KJ3zOGcm+IEJZMuG4x6k0/ZHRWy2xuvVTe7M0NyK+PMZk2B/8jyC/nKZVELxJSkhpONQUIRYDUJbCzJb3FmW5MNMCEA2pWKJSBZYc5USeMwB0BUMig8FqurL8ZWogue7Cc1fZhUwW/c+b0F7zddsgOlxkLmZDO8cV29uDNYfe+wsOnCw7Rh8c3nppVV0wiKhH3MrIaXKtG+MfO5Dm50vSqJ/qSmEOg883HpWRSEIkHFJo/KVB/vjajEfFjQrEjnjnfEnEwb6R//0IzdA1MXanLVPhGWGB7+LHUZ1jFQ5a1Fncf9z3RDn4o5DqhEOIg/0pELkNALF/dDiXB/DZcSgd8Rhh497hy+We7veuLFgD0rTHtA0Zwi4yyunUpov4KPdfMWPzgztHBY4gV8WZPDVzLFQ3P/92bX9fQUnDvMwdE6Yui0RKs/mC8F1DGEgiai+YxiWO+UsM0+53CyLKIgta6+Eo+v912sZsvN+/pH938UG7Q6tJ8EgM7vgJ7EuROvtgnwsfDBKmCq3Qo/djZ9PHOMhwETzLJ/nmceb/1qfPPz8SKhfKqu6kt/dB4pDtRWysQGhktpHYJhBPwHwSSi2wtKl4q5vd9sO2GD0qD7FbAewzSsN0efnm3D/7Myx0s54FYtxbS0zk17NAvvNXMJshmvMtMGsQu20gMNbYYwFZdnvL43Hqx4nV8zfyOzjQBhehGmzpzOdV2+UfeMWWCziZh8IhtL43wqtYNmv8RkADVcQc5q+8+1hRL2yI2Gd2fxBs1X2eA+79kw8k/d3cFR81L3JXDe1Ilvy8wlAqFcLf8j368DDa6gmgkfNquGHYjpY0LRyqupXi810isv5KGwGuh/r5nOg0JiJIrOy/i79Ma9MPFfGWx49sWkWa/un5QmVsKmCAY7zyuxLvCOQ6SPkEuBa+pH2M9TrUWTlTub4OgjwnS4QP5cEEpVoJfKeBUgdCDF/caaHQY7+sWlIki/VanrZzC33aRwP8gC4kjK3WYpI1Zf1VrgBk911mitmbbv0IVWewOHQJHMXAgoHpIJtN+rP2018gg8kPNvFLiYYv0S93BlKF7IQ7qSLH5l5Q+HYfdX5SStVKI/RzDaOZRs7GM0SIJKpgkvBMqzYRhgvhPJlpLpnJAtwDGq5FvokJu40xjfZiqZ2RWUlmyQJSL+HVGwHWxCSaFs/Tn6by9BDFqQSO2WK8hkEjKJ3SH3F6YWBYBEk16zHzj2UFUw2VDxKmxJWJtDzPhU2ySoukspq4flshDm4o7xREq2rbshq3l9riIUNx//xa0T1QSAcnRd7QBmEABtqS8Y+5/irMNOS1k0w2DwTqZeGqSmV9ww+5Pz3t4tbINfcATrmZXJ9DGYQZ4ty/Du8RlDmmIT0RNq4rAzfDevO/Fea2vx3yuI5Plt0zc3AkvIgcKUO2dy0gWFhjkylvQx/jcMU0C8kO8ZBd0ERvKwyR4EoTTnvO4ROq5fRFqPuPC+KBBtkhw8P/CNhZAL8XSZB5dR31aKzjytM7gKhtc2IjaR1HFK5tESN7+fL90+lsLI3oJ7FtmGLl2jt+I4Hrac8flvZiXZBgSahhMEUwVDnK1IQwjiJtHQnYtdVIz1TyzEd+OjL5MuIgysE9s+Bn/OwNPo6BmbEkwVRosjzudN8/YTCEiH7RPyQ9Y72V9vbI8sWKmQDxMmm5E+jupER6twJVE8oRW52UOGVVYiI0bUgd6cviBjX6h3F31M3tVxwybXvYL9UF4aTkAGT27zxKBPuuD8Q8KyrGqstijY4/0BmWanbx4hTxHWg2roJg2WThLzrCPuaYKgJc1Z9mvBBHtGKaEn02wYP2px2NxyNUy92NtERqV0aaNZbw0YFt5cN0RnKyDV2W/Fy7lIPcRsQXvdD4Hoai8FJ3ySlTGV5maTPpsgKFrGGx3Tt08h3EnF00XVK55k+bkV/JvRo2QUn27vrmdprN3JTYZ0q8nAjDYniokraGTTx9OO6DqvyoSWlE3MbtiK+5GebNCG5CwkDyaoKO0bb8t9kV5lBAXfCgHKBHgI4wCsj+IGB9ATwk/z0Ll48kZBpZNgMdUnLAnQ7ZJEEU6Dk6Yto1n4VU8LhLq1hZnrGgnM89Sy+4lrc+XkhpLzWkSmaqnMbFlA0CwiI5wotLTR6CtUu9RoNo3AnFQoQkK/jAGPHjk8jDsYyN9Dtsz5FgElRZqKIsoaKjb3qeG1g54fpl4cqEr5p+cLteGQ36E9Fq8SHBn7f1taMRakh18jU7lni10p6ooOLgJqOC41p2vFjFYQmRC+BJt/pOD+8DU5OmxcWcI5AlqW0Wh5Mj7hNzfXXP4kZnUqehR+MnKUsVgmdqDzrEjuK1kBoDSufRcYHazrC0IvnkgD0DQijqXCY7BQCCzt7b0Y8kVeSxMcV/EkgZYfLhCwi4MtrFZSg5H331I58o2W1WAU7JBObyElDuOfJFaDqNU7RFdw/fMF4qv9ctGlnWDawtvczNmVSiuPWW9jcqso90/FNLF+urAk3G9m0KMf9S6rmbB5WIgdT/PST36Jab4zugPN53TfwAUGJ8ZshGMxzR1E6BWGTngQBqUUqDIBj3JT/guN23VcMbXsULYb9HyXBOepl8t4f6BmpN6nincurAOKlIJz6udszrj2sZLOXq0KsOmg/Em43QhExS5SJGH2OHajO4KVVJky1bK6xrtzZZ1yeWCWG7E7SHQyxUsVsWdYui58D61F1SppQepyGHehX3v17fWs/kU//KT9gF9PSKz5RskZDftcexL3GqKWPr9IYPg9ODnmTZN0aVbfoapMERs/gYeEOjUMFbmVTnhCm30bHgPaODkD2Q4QCdDhjf1KOvgTBPOVgmJXZt0bjpqiJ2BzjMa2YQDf6UQathDydIKrlvULAyeT1kdJVsi5DQFqH/4YUui0zonlHdh8VDl+405KgFlTYiLwyIF7i3fLoi6TD9zfU3lofp+N31s0i//SUS5lKd6DYcqm7jn4qGrOsbQjHTDHmjjQHs1LAtay6EsCEH6RtfQSc+7+F4iO3WnRhWm6YZs0JEh+gd8pREN9/QVlxVxJZ0ZHHAnFFODD3vFB2e2yOuVr6QdcqDQ1dAWsKuVHN8rvop9JjJjPqxHoZNg6pnbbw7CftjEL3ShVNfw+eFWK76Otr0uQRm+Tt2RDsG9dYRO69u+UOtxaJW1unqhfHuzBFCF+sBFSw9cyXyL1JUZ5qVKU+8X5/1dKugJpSfTnuFoJrRGioIEoREoehWwLoUd3RgNm6bQFRFNjiyG5cFXagwYdTPDHQxrDxK9HwkfjXzdGyaJQFB8ewaGlWK4LbArhAl6xUSI+yZWQtdM1uNaEYmN6c6f3sj6XMYmu9OQHlzC6Y06KfAi/IjytQBD/T8y5zIvJwDfTl/0IPQgH7ADYiLZL+tUK7vgRaUwsd4Z6fLr2SdHpPvnEevgfybRwD5YjXKR90LFBinBKXje8AqR0YLQyCD5UXClGcZuJ16h7t37nToH/CNbsQctuoq002efC5B/tyvoK8BSVlej2c/Yr0M0RYk0fhnWWv8ymteM51mBwU7Xf2s2gr+XMb1oB5uWiNmsxu5AKAjk85YjfIZK26+MOw1niFGRPPuN+j22DYCKiB+T0lYCnm+UnAYhMvHhqw527zlFIfBAz8Tj0nZGrvMc0grbhBizZs2EQUlkbDv9PXQslipv0bSHZUdlPg1OkCdCdixbYEwCLBcZAqidfMMEDNU6lX1Y4POyipAh48bRhN95knDa5zJYkHLF5R7NQKTOO3fG7wITWtGKfepdZ3IvSU8lz2mZcITEKvJfnx3KpJxGjUDh+EMCVepObguHgW5cPeGPyQLCeOkJi2tnRQq4sqwRV6Cb835jH1ZpoxbBBLngaSMa0+hysEMc74f2clx9g6JZYEsnUzst+3kxSGNctGmcAX+k+nNIEkO8XbUyhmqkfB7dH0jXR5xXkWnG+H3wyo6LTXFcudjFlouZEeHidhdpNhGMyP6VJ9TfPCGFhk+IXfXQC+rpDCJbOJrSJRsu0dDoQnsj96p0AqaN/Z38oaIBoTT+I8YsfmIlR9WzMGlg5nAS1DRgt+EzHnN96IkaC/JyF6NPN3Tta2TFaV4G1Me/WHcp4sbaIUUMMAbCzL852284Zuo4/6kpoCA3NWvTTy+pdg9f1MEWjbV0Ljjy6KZgyd0ZJYpCWLiau5KpgZXcdPv2dQ+m6gUxVLfcbb3SARoYAqPvO+L4N2XfgeSjS7nSwCQpRdfcpUx0gohknPq8l/4CBRq54TbTNUzg0OKnPIOXd+Ou8L6UZeEHR/x3iSUubrjHha56Z6QiG+VK9NIezmvyPc5lK11hUj0JNp/wtBTBHha9OBvAlciv+QUn1VQ0SCK9jW7prBJmfjFw5WvT/E6ewLA8CBNG5H/qbHM78kXrZwk1MjJSO0qFEPZ+NpAIPt74KEKHAXmlfnKLpP4A4Q5Ybj+IIk+hUUAXd8cqjpa84XStf6GXIt3TAjGLVWlHfzrbOSmWPAjlfTV15g7csu/0Ac7olblphOL451xo+j41kJBvt9iEybBI7b1cghI6I89IYFBSunb9DckKjGD1imR1v+o2EJV8Z5zsKLqCY60wLlvPQUMg2oKihIgocwkiNufed2Gt24n0OP3mY8/pyjgQOXciyyXUfzXNumTL3x08rXf1YRlobxYacoOxEBNRjj2xeY28GtGKjzKG7OWkXd5UQF5BLb/+X4L4nZFQYKMCME3mvPSyeiGjW6ryEYCcezG3P9F7BidpFSb3xoiQCeKewjJElgS/NHZvpfUE4G8arrMYP4pHjbQIu91sxxYd1jMhtbcxUVTadtpxJlqxrz72r174wicmU4VkCbpCHjcHadPQBCNvV2IWGLDEfCoGOMwvjeXKblvTBrJGjoS0PuYoPm5MBq0hXhn6ia3855ZfHsBPN1TTfj3qyNbKF36vvtuYQ6e7RX4dZO3qao37gu0tgmFihh7myjCjbecmTYJGbJxMet4UrrkOHox/grR+lrpnuGkeoimjjvx2wSsqdBLdfbC9x6EZminBzSFCqZx3Y0H4L0nJTKStQ6uGx5SUK0dDwUOjO/35OvJ4xwocl2S4hjnRl/nsqolZ6wPxkWNpaCWyElp25k0QL4ZFlAf8WoyRN1eJMYPVuUpEu8ZnMVDI6cb0Wb9CXrr6knqJwCJNjaf8Rk/FgZeP/wqmOpa4LfkcThC5NXjl/aBs17CuisjntJ+YOAWhWozhdWzJZrl28BsSmLrvAk5rLFNjpFgJPqx23uK2imsVTWFf9Sf3S20tZJC/pZ7vOy35ps+aMsX0+Rr9YTGMbD9f/g0T+Nr6P9LWn0Nvi97yJSGCoW/4I5tWMWq2RP1ekFZ0O1te7BUF3zde0PmjbxihVdTze8Jy+RTL7qV4YFjiVWofhfvSckA8/PPg9f1Qup5jKO80IrFSUnQV3yrmGCrsIYKJ06WS+XVNFv0xcaePSWFaQxXLC9+r1phq//kqyAimF12/q9DGto9c5YZsVsHydejbdAtnAMldhDwePVRmKGrD9lxuJfhGbnwaoPmspGoXcMzxsz2PRkvKH1UpcG9ssmWqtM+c4QT6qgPriW3uP+cY3EpggVQeKef9uG8MNk9IdN/1bgFC6o/Z4smlok9653vz8DMW7dHsPldNeH4wEFiSAyYHy2QeuDfS8wFpPscY97YPKWLzX/ltQg8JMjMBIFZFele4D7gH/rUiVOl5GyVOmiXfcQMN7XcVGc4yMEXUC7kRYc4pG2HYvVY3shCe+1upiFQBxr1Zo1ItujXn4QPWzkybgDKLZ8epOofciXBoyfY2jRbXsTWnbrp+/peC7aLjjyzVUicRoM+iEvi0qWfqTpe9b1YAt4yx8qaH/H41xmxfECo3i8z+ZO0VbMk53vss3gqpezRytFJhZNmT73o4oYJF42ewbXFkFsl5HbKXQozyyFbUr6nyEOVtxoSexNl61t6d1zGLIkBr97AWUiR46EPEJHbAma/lQCCb9QmrOiOkcw8qh9nu5BxPNjzGwuVCNeBXDdQVDlV6Ze8eX+2lxNFIarCOiWZYUjSHjrXxsCWrY0tXe0mk08D3OkxsXJWYiU4ogc2phIYuKEqMZaLAVBQlrWP27Pht28u/uhSvVObWOGoSzChezue490tFCUDW+nrPwNFxDYXjXUfe9IMIBubInt4uHonBrE2MJZexIvZwsU1E0rcLPMROVqIr6YiVqRpoEHGhc4vRANq57cSpfsAU40tnDccEJwpTTnymKszoPgX4GGJ/3m8w4kZg48SgYq8dTyF5SA6Tqw2MsSNxwC1e2X+jO9Mvh5cfrf88JLrX+pKtoFXDyVCfYjuD8nU/cvX7M9A1tgSzTwi8Zo7lhjKc4v480uTj9nu7OpxVvXSB3HI5Obk2z1vZ7IurqnnOP7f9e1Dt57SGNGG6yCmYYIbGJMw1zXXojtI5v217YkbzJAhCUw0NnIwciARul+SqUrDmR/vMVLCFcgPpsYvydW7owN3b+zE573eS4YyqGUZZarwDOPcYzjUigOE+ewbihB8FB7LXnHkAAytu7g6h15M06lPEAiOjAuIafeDtDsPTmV6DpQz/kMGargVhPvmvgk+j2QvNNpkQEXuyWG/C6qLjjmzR6iO1kcGj+LUbptlCzwaJoqCXpylEOOAkKQILK5pZYv0HkR0yEYdd2NJXS5lJnts1qEmtCUfdAhVIgF3MN+386NcbTkQAsSw7wc0O1LDEKMKUpaU5sSGPvma7Ma/LmMSpbSrGZKdDMWy8qJ0VRiRrvCuMDe6ysI7OgDmRUZ2c2h+Mr1xmmiM+KXKtxu1Uqgo+3vmaiRh1ehq+S0Go60HxFgCauYxTGbjD2oq/Ais/mYQtB0W984KykkKjJnKcfLfGqfpQGi/vjj5xnpKU0RgM6cML7UO+GEVolp0ZeLTwiVQGaRDLBk5NIP1uqTwfQJ0xd1Dr+cYp+u97AfsTI4KbULm3R+RGcS15Bda6W61ahBmIOZwOIlpogyCBTm6/HnemqDRqgWPnYOpav4tgvN/mzEYWDROU+RsXyJxVcnOChe125xeEjlLDJh37KqhKOpYo+sRVEQxY7QTKDVkkPkUaGkBUyI3HM48wxTebSoBIj9TntdmvkWNXjb0RnFd9nVu0QbJtxHjaoRbLq1YXTcQx+kanNfZfLFR0a3jDdP58TTgVSWOfrntRLoVxuQI0lDvn+eIqfC4IU99e+WzCGvMkb2P2uABJ05HeKdKB+Kwu3Cxbi5idhHaHbxf9HedjHjivznRBBOTnsunhApDkh017DaWWlRiwKtGLyygbLRnAPnV0wrx8Lk9Bk/8Ekk43PnAG6I11M5WyzPoshcLa/LZN6m7bUlAFurQ53X0R08Jf2u3JJ0NTHOIS9LUGdErs91+AK3C8b2qp0qa3eTd1cE6V2kSzFffZwCVR05AIUFOf3hVOO4uulf9rQpmMdMn4SLo5H8HzSW+i6wnXK16cMK9Z8LjCPk5Srakk8C/RiZWoScH/Mcd2nRwtg0KksYn24I1p6texdRVOLTEgenlpbK4YoVhdWpSn53SM3Ut7ksR1XNFLRryn7oNqnnRTGoSDlZ6tPdKx75odBE63XK4QYpP+fDL0bCaEpTowDbdekyQN2ghA+ujTFx016QVTQ8OjuiwVwGXZ9ACmuOhoLiXMa0fCJ5W8tKAYq16cxbRhQifkFbjlHycfCVvpRf9g/RcbxjmJnVTMnU6WVDUazLrpVVRlWDlV+8df714qVwCgQHXNIc6cbpNnnpwXXFTW/2sMcUgf9M5+yADPx81EvEjwoH3DE9GlHryqb5u/0/tAXtXid4SpFGQkxWIDGQiB+veUM3UxYImSs7QNg1DohH84e69cQyF0bJAKWMVqqLXn38n9sWJbCKHAwIbBInxFoGIjWJ7L3Hy6N0SA6Im1v+nULZFLl9dcqRHJUcIPKiW/Gye+uo2D+DirY1kzan32BN08wH7v/ppzBb08CYnZ4Ax7/IkSokzODm0XuJAcKntj78wDuX3p09nFNAMS0qHuGshUWhkQmvd9brLB/XFfEbm6icRMaIkRvfxE3vQO3MKJoBBPd8yfgFEaBLzdE5k4SNXZIPeAGy6fbxrV8JtfyrLNBlcvEIETtaJ1weeuoxnsRIZjc7qUVSjzLEsW27oZGDqJJn8fzYmcGReDPf5rsQs/LdZkSt1EPd8DthcWoDKBUnS5UJ+y0ILQJGELlpUYzqvvNpilK8IYha7DajXRCfahu1uy9Q+txPA77jsMOMiOGvVZ3HKRnzoKcEcngntWc6ft4DanoiThbB/j+p47JkAnCkSYnfNFXaKp4UptJbFfKdzAe6Iq45RJSrZyRgoZLVTs5qJGLe6ylbhYmdke/QJPi2hbUmBgqqMGeZMbHUnNlWx/Uuoxhm1ekoa57w/dFr9PWT8lJDxeSjASmoC2+UEsb2nwviaUdJg2DiI1dOLRpNQODkiEAiwLNqhGLLVKRavxcjD0J3J1wWATBPm40GUDLqLS2hVWE5ZGcffmUCjv7X/KDFhBHVY8nUP63uCPidGeT1AU5gHBgC5XTIXq5895GBi+xt2iytsrOP+nX/ZCxCAzuB5RU4CWyGF7dD+Qk1ygy3tpzgUnkOxXMaJqVjO0w3C2x58JeIlE1VCbuYLunJMGovC5UUPEhxN2owcAeWTKJg0q+bed4+J3nWtpiMtYs7WJ1FgVRa/rxlzWcaSXN0p9btblpV0l1qmusk27x/kkQzg1XrCnmBtOQcUqVvEhd3uABx9cusku+iXrEFbNcUySkEh+6satGHUMprm8jz6QK1JBZV+uT5KjTepPhIdIVwCFiuq8jSQT6fpueyZvURxIJWTMc37ckviidTYBysVL8jKJDfv6FqWg6A76UTMPGWMdS1JXLeX4m9O0IIuu9kxFmCOZW02E7iEZLsqO9LwMEjHeADgYAG5Fz1MJY3eZRgCPQhLWM7zxzrYo3pTuPF8fF4nNKCd2MeFQwV3phWLf666fg96pfWYlT/xwrZVbqMNp6TvyooOa6nCGEhUO6pOKoazFpzx1JxXRzpA0Legl2Mp0VWRvkaNM/OTFaz3kxwlF+HdY8aBfAdxbVscNbtg6hRHt/FDaiiuSf5OaQgKWAkZtuAD/a/P4GGca3foJWXmsGI3TNdWfZ2jddBVSpAMCE7Y2e3ZISpo6hKv3vE9V5PugcL2dSu5lRuzmAR9yExA1Xl8d3TBGdjW72yCQQ8Fzfs+tGOi1pHtNI+tPOMHVswyGl3JA4CLaea5NAADxzT3MR155vQNs8B8GiGWMMe3qImr/cpkjEWEKJzuDolGBVBAZ9SRCxeeeR/SOdKL0i0OwzQ1LTyrHeltMDvT/RFUFZEz59J/0iTTmFK/HlRrc0dMR+k8B/5IBsvkl5ExHJ682Hux2i7Rmrge5kN+0c/xdB5TV4HpQ66BQlOeB4cSQqNLXtyqhJDkRMdm8uPdoh2qmHXmzsHGLQO3xNdWB8TJ+g8HweH4oAyX9ImJTvyB9biu3wQx/FuHgGfT3PFkxJyjA3tVWGQmyP61ubCI1VNTgDnl+YkML10T/bk/3NrvPUfb3Ipi7I+c3rzUR/oQ/zMe/bSUQY0gFvak8VrBT0Ajsg9z1EOB/0f+lQ+BhhXXQB+eA/pd3FKLX00BwLp4n/uu+VgaQG/rC317HhU4OY9qxBm/ZsQBczOc627q+hZ+DD9nlt5ywaRR0HeP+ZUmjbFdd21Folrj6WEjhQaFHWr0fusSpPc+ngLTsHUnO9HXikamw3/LP6YYWIRNJUJiQZIsPeaVqBANVOigb43QQRd4rT0PHxJmo0djT+LXQgajySEkgR8xKxh3A7UtWDrL9+fsvCI2+uoWjAGpZRES4iEM4knjEdbpqOO/HXKRSNVigvcZ2/AZ0j7xVfGB7coVYBY911xUZOzOimf8nmKBW8UDNsD/GboX3Bt7eboWwY1VY9LtMvkdzaMpupXQT228SajgHbNLBDsCj1Zgo674pbX6nsUhnqYtrOXDQiyxCQKDY1lEBCFZrP7M8hWsBC/+X2bOpfXqOmolCCgI8NcRC0OkYCB6mTDLIQCdOh3zCxtlyiVDEuViQDtoMTVBTuGjsB64MdxzO9WLm5D1rymCSxwLq6c9RKG30/ROjXj503pJmG/cwif54JzY2kEEfWwfd2VMRw/Q//F+J+DgAUlAPSFWr78BQtajxhCBnumZ4AfDyS+lPe0T8io/HTo3eayy7jy8c6dFLN3RA6kL/eSJAocuLFR7n/4qeAHDAbIdeYlDRuQwVMBWAt53EO1zj7HBoehVMu7fq9Qn5Tye3ooUkGazunJyktDtouaoipy3714MLAFKAS3wKg2Yts0X+ajbUExSnn9/HPy/suvBXvfUMCGCnDFT+v1SvDLS3QmnVWkGv3bSVNj0ZLtL5zhSxTgqd3Iohr5opmFXs/73pnfHvg7J2yLlkW2yG8UzzsWv0T7deJTpnFiw4kkljHlIzu66Zj/yOgmkZB5uNyIQRdrD7adaejupX2Zc9Amzao6TyhRS6pREGWmBF1IO97UN2sDq8Pk2dyk5FWJggDA1GFdXNQa8bdCB7ipW7G+TGe5p9Gdd/EY9OIndAbkd6ENj352hApCPYUAnGwNeoPIYOmkBnNj59Em1FkDTshcPrg6tqzKStFGWIrOMdbPUBRTb5Mml3nNPqkchRvaFvVARgU/Xsd9wz2yfcdtRj/XObX+p2f9xZqrrUBsw9NwYnJ3ubbQ5fq2nJiHwai5pBUFmh/nfO0rVyIHMHxZDQ6q1Rgq8VQiJFb7BkEf8QCYSNfB+6l+wdFRGE5tQQaSfU92Uzqp9noyecvh391aBiyhVxt2YhN//yZ47rDcCpN9RVSMu+On/wTcOHV8ayiOXT3TpCUkb3OSIvrIlsYFAONw2mDmlDiuspRV5XcCH/XVOCOl1IL212bVUQ28XynSVUf/vIpIH8sJ09kgtaFzVVS9DG+2+3VxQMD4uB4ZvjvSM2rs6jbq/fm+K87abHYG7sJvLiHDsZ12pzLBKFbWgDJKl9SiOsZwI4GC1ByCZ8DcSlqtvrgphnYCleqLtkBqUwWFBiSSJyQAN49eWdvF9+5EkXMt9hp4dn4/dKJV3QAfakANnoWLUxy3vP+YHOfXPKn+XWGsdryDeV/eeVpKonGGaALjE1jKM0SVWhcLeSnYj2yMjylPTfynW3bIlU1eXf6dkhKHLCpx+h25nqI9qy58ygo8+qV35u42F7bSrjN8YkMKytiRg5mfnQWGnauASjo18Z34YymzQLsvEonnsakqP3gjARXF1XgcALqzwjFsRzFtmZqE7ieLQCNVhyQAVU1k/YHvS5RySYcrhmLHgbIPbx8vOi2q0cWU2eDax9f7eZvGLlstVXMs42RVNbh4EUEeMKZ36ZDCOySW61R8OgV33GJ5NpqWCdP4eIr8g5Dlo0DMM/f0QqI6g8QOuzlYQGDzHw/EGG+araBOUDx87J4vrfBE+t+tOfDxHBKUxgOB8c620lSjgLQyQQTcc5qIPdOOdGf8UmdtxKqrNT2MxssFLkCaTFj2AJ5kUcr1nZiYEbuSDIAdrY55/JXDinc2jKbqV0E9tvEmo4B2zSwQ7Ao9WYKOu+KW1+p7FIZ6mLazlw0IssQkCg2NZRAQhWaz+zPIVrAQv/l9mzqX16ifolhKGBGTGD6g4MB3KCmCmCTBvrEbiv3jpYYy+r6d7N+Sol0ccU4IIORAEYIZFV5stvW8fdxpe9D8YmZ1ljP+TePhXARy0gZoLFFsv5ZvOYj/MgarDnWZ+LUsXT7SYmkLmHYGR8dX/n1tie7NiTMp39yRtt2exhoQ48We/9nMqqnyx5IYPa9lnPfEPe3cVcvbHav+TVtiW58Coiurcs4Yl99139lQcXM94PBTNZi+1+I4A0bPkH4QqsYpOZpwtZGeD8BhJzLDcehCVNHQb4WoIlDbpSmxWPJbSAPoWTSRumSFIW7ny97eal+7+8sLbhJr4ts59ID7mQKchNh1UwhVAnGP1mTeglINvRqO69yAeKc8moDMgztZ4sT4auCaBcdr0EX/8L2uSQ4CfeO5C7IM0QnV7uldfKdMJETweFTcMhhnoZBp6ufaV87Ojei1pDqFofFLGTvSvq2rDn803q5j8Miq+NeYZln2Mb99g34OOT17CtligfIoUJWKwWMK8UpA0esw6+rGbWXxQfOfz7knPP/WDFTaNB6Bxok9uVsqDvghXLHYtGl6pyelOcEClQYQn11C/810AJivluvbJk5aG3n6Gkg7brGkYfUEqzcz/rVjN6lfbOQxL7bLjVyDojDnvbgRm7Kvl9Sh+LFO4JtHLwgGf7uSHNQmAIHFoqonOc7kQCwtSvz1KVI00pVT2rfWQlZy9kRQvbko95pDZPZpDcntc0WiZ9x7vl/18L3/gnzoxdAS1lwAQA2lBAvQTQh3hJsvZJo5YfpUmxWGl9+kVVFNKXYeaz6Gsqs8rOV602hcn/crDH9brDkOmS2JGyMeZrVa5wjl3jZ9TCdKHTDFvn9unQTNgp0K/J0J6eaZdTm4JuneRgJ4cYzklmRWIh+66YFhnAh86ulvuB3ihgdhFoN3Pa7pCoK5eIK1sxayFUaKiK2k8PE2gx8VEwF/G7rV3X2PeTqXJ1Zfn6zsjmZTOwCmF+DDbiVYiCZdo1oAvDoIPFQ1O90T6hl8+Qhj2imwtSasHdqKelkuVp5aNPMSXFfkE2UXgBUdhKmnVBsJ12zKXdBU4gXK7ihVG/Bzm0hJG3znMlBVIQxvLFJE3bT43QAODja05K3kuPp2VPzfOfTlxbyRSqPri7DCsxiLtSZy7eW6ZY9UwUuzqlDVeIDPavwIeY2piLZ4Bm4FG9ndyI3gyzfYdkxXoP6TEzP4E5067f/g77zGQpeGKtcbSCSvjVlU+UB5/LDWTE/9GLzUmr+mEVRVSg2hLfu/xHmfvT5C73wghKHxw3O3j2sJA/RPMDE/tISheGS5hfBLnBq4PQ/kopgYBtHzSSa7AoJqGocWRa6ZnHcO+xW+4mF/ufMsmmJxHf3+aeBiIV2WE4BPWIcGh7T5P8TxS4+ZmNX9RDYwDo5Xg2ccn52O+fpywBGGFNg5Edh5JDOsJRYnPbBtYSCnCnpjvmHdCuNrOQG+4/QSM6GmA52yxiCjiOn83gw7feTABd1qBRhv1elM+PjWg1H0anuy5lMHTWq1SiNyX6zTYcLN5o4UXw3LIqwzgmQnDOHtnYqDDjhyiuw0j3ZQE+e5hzludw5i6QHxVleFAYbNNupFzTn4P/+PRr4lJH/RAdEqvVQF/Vx4YErGOSCK9LzCrLRroL9D5JySYYjxL7CiqgoOuSufI9pQa3j0qmvByAXERJJ151uAXRRwao8s/XBzX9hPDtPtHfsUew6fdLqBgzAnkHUhtBaxSkDk9cswkhx/YWo9XSBUhK/JALdob1ZGfSAvDTR8XRCWNNE9zSFMaecEDqogGRMnpRIzmsF6THS6+UE9KnKIDaF7e+vNlxx5iRMQOifMmVRG3DlQmRdKWEqXlKVBnFNfiFtlSub3b1DgF9gdCD3F6p8U1jlo8hFHJRZ+PvuOk7pxgvrjdw8tRR5ywUJhCwhbzkFYLt5eGkmlI6kPBkr00MNJ9/CD/JrqhCAUWtWiLwilbQS9nuoYvhz3MXYNk60ohNRxEO5bOo4soaGobuPiplrug7D//qDSDBB2mJ5QxJH+CmRQPSSgnTxZ8aulvieyDo63mbAgO0g77riZsatItAsPPUQwLwrRplt4iBd/uiXUQL9pnyJjG5zuNYWTSaz3j/oAPSmnrrrxiCliC5sWr+/V9/Z/WF22TE4wBfSF2/zYe0FuinUJ5FxklWp4LcPAEJVFkAFhOc3fwcM5D+7OjI1fwE17fkbBA2+sqS7Mr0QESOkGia7p5hhHcJfzyYiqd2HJo5CqC5Kpp5+02rMBpFQSCznmG/qP2hrGlBH2PkmKN40zL8n3sVJ0TrwamHNxZtz6DOcJ9yVDdI3ICbGX+qkm7IUIyZkQeuhpzONwe/jwPAguNZsOrXtCI+Lb7QAXlxDhdP+dSO9LYDHHaM68EaOJf/j/85BtQXHAAhPbLKSuutFSgsGfQSUXz/nZJm7QJYdO5dVp/lsVgYE/TCDmV3CAqsRbba6pyKmEvd1wjzBOaYxLpGAL5z0JmvD9Yk/efWu+EBtnaYIobgy1HeIeN6ir6u3WlIfih5hWdgySVXlVSkJ8mjl/aqugyaDr/mIHVvFeJk4x22nPdWE1jDvZxoTAV0SIk+AUa2LNAjrcjM9V2zfRCyoo36Ui2+qCCX976KRwDbkX85Dtn4uFICXNQuEu3cIAWryaYG2/3zt5XvrSqhLzpKDX1kjmc4z6/zMtKX18dfrVrALSg7DHuA6nAEXdBExC3cl56Nnh9XfCOxZlK8ndpKANdwcVG/1vTlE48uTJmVxpJwElKi7ZzOxvSSkUuozpjBtx02YfgE3SX1J9proh0duh05H9bck7a88HfhWnAXtA4nxgJxcpHUfdFOVYqe1eq6/Y1ZGFO1svrmliJBGNSRRJHKV5aLZB0+SnFKDIsXdmpWB6N09U05yoZiaG4q2Zn43mifVxAQZ54cPmoODF4hXhhjaa96rwqmzsgeYNemEIyc7sGJDMxC1Q3gBWsJw8q1Hm2WEFFVy738VTVhZddkPnBqCVmLWNpCCdmVjR6+g5CoPSmswmzUTNLCAok12VIpabULSetGaCHtBhSFrQVPgDckr87tZg4WEGR036os08CIgrIQRaka3p9wLLSLlYLoTmoTv2ZNRFbuDlWC7AlqIqxBJIPQuy/P+6A8VPDq6/a52+unGBlm7JWwd3Amgd+9ITFjlM2H8rf45BWqek9Anat3+QCKgFcx/NgkKxRWwi/jaRG9oBUMG2iuyT/1a00oWTlawgr57dfSDRSr3STJtrTYwdNNPMYK/GNd4Q1U+UOWCFFjAZVjO7BPaS0H+SZ6Nma4UhUWR1EDjQNKpk1u7SKf+Uu0rTA7NueH0FYAHeFVxMUY8I5Aw6X4NbhCVvAychCUXQod7mAvYVYueyMJF/wr84HbEza2rbyMNqsE7RAAdRa6c5Ce34TzR4msg2XQ1uFy5tlDXwvmAsWBV9FAI8qW37DufecWVPafiEuKqdGGFriybBRH8DPIKgt8mYyjzc9AFpXv9+sj7sjBR+fgp4n4pZU35u88RLZSK5xrf6S2S9L5u0QZdErcZXzLICatPMEbKEqgL3p50CxAw3UXCqR+OwWApzadvjbW1MGy524d5umi0rXko+aCdb4zF+JK1XKE7xjuYkjDMKbvQs8sCofTWv5nSFI7OdlW7tYnr+8FkC8ODbVVlMen3KWgEhRaaFO/movi30ZSlAZ3lIf9DN9GnAAeapTHmzo8WagblGfJCI5o4UYLCpSG7kMHfYj46bj+94dgvLotaSAukn/6y3BuXn7wegpWd5lfJZyRjY+sMlM4EbDk0SejnN/Gu1ViUB2GaibvrjeDP7HUs8BBm4I7LCPGoHPHmv+ifB8YdiMkCZRuwZ3aLpwf67qgaGto+PdoqnbsgaYufUJfEG+h0rPJZ1BvJ9iKBfDS2oRMqm7JihAbX2PJQ+SNVAfrfBFuqaSpNBwhr3Kz1/+frPvQkXUSURWGLRpj5lMnN6NzY7ZF5sS+UDwS+PkIIutvnsLPmDsObFGB0FwOKbDvgIKaLTsYRKxjwTzAADgvyLcSr/qTSJj6QosIxL1csx3itp6kAazDwsTcocXwr4s3uDvLnq/NSHRA46kjakv4/34GdzBfXL++3yoe+IMXdWpnp7Oa5rjmgzbRV+mItdnYTOK6kABQV2NMbefybX0Ds4Gu6obQHmnJ6lhdjYDQ2RZ0y5SHmGzUH1r+jFL/0uwR0RiWovq6q/0dsvr6MB/zcOdenpgvOo2nIdZaZ+6vvBmXdq4OsmMyMGTdP6ggetvHesknDV80NybnhSpUr5JzkxE0qMciCKHKB92xQSmPsjNJ6truTwekhBhtTfdFbyKE1Z2VtDR7+JwuRXJpklVxh5oN9QbyfUlC9PvtGiITzwXEeYGTWZk0lR04+vLTclVY1w292FMeAQn8vdcR54KdIetMW8dNHM474VHrkAfrHbtqlOnms2BnD646mkolx//Rwxb8fTThFqTF9CdICorsTYAkgsQaHKltk0M+9wJgFLevVHEFtD3jOVTVmkMH4mzVl9ZCZmU6KLQKsl5ZMxFEHkNraC9ebvZLVG61QODbzzz9NiA7XcmpphO4vQ1/tBdWXrqqjYPnXH+IsZlSDaerBNIXsNoabiWMIof3CrmSFze9ys7cKvYRd9SfpvD+UbFitWf7PKn/DKO9twdFCU3k+41vuj7iB0q8m3su9JTwlJ56iOw+bXl6l95c1j8LdEwlvi9U67/1gBDapeeZrWpNuM/pWHdtXc28Ye7eP8yqu2WBLzoQBxcNJ8sPsm9eaUrZfyPunq6G0YWCRLhenq9GXqz0wHnTfZhDUSdZDxy0gn7Un+23Fdfz2DkR18ep++1ofGH+eTjNR+yCTTrGZ1iJdAYYEprDhMSvaXfM9dUVhfjOhrSixoyhUMSETkMukKzEEEVkHnOhHGn/D5eq3XcezdZy1Z1M5a3C/VhVhuBaIgOKoDobgq1FytX9yq6pNvtF3RFcX2sBARlGyG/BT499uvApA6MpgnMJztrzoTLIxDdmLw2VwcwjyH88tS06f72I+X4vXH9NLC8wYnMFx1HvWhmFrUdfx93sr45160EIer5RZsj5aN82EcfXG5UnVTd7P5QCjp5llPdxQ3LET0LdO6/XmnU5jx8CGi5F7QuGgVXNSMUzvQB3amAmVSSVBcpgoZSuuZDsIJfbgbPvE81BsSxOTPjGx73yvUFBTUpQif7w5hvoIqAUc49M5mNwNK8vz+w9DwzqwVcdmpWlqIrccibFX1bR8DCR4VZW5oGlw1Hps3bmulOmFcSeuLxFc7eEdZble4ea5fWcFnLkW+1uG3ke9jenzzfHMRbMF6JEUYXNwrK5R9jWUAKCOvjmjUWHgFK+I+7/HKiXK1XajuxRTWPm+JAbtlCOGXO7E2FxcR8eT9SxRzHGqq2u+hBEfNqXAzA3+E9gJDjfQh2Ni64P85XyIARnIkZz3otID74Nu6Olt34+JrCX+ktbk5bLhyP1QcysmRfNn6yJRpgCXCY2R6L+UFFcVzML/OUfVHIwx9zTFtNiYdFbYiKEZraQRJcfAGB4PhwRYNi91Or+xsc3rKj3qoSmFj6KT9DQidqh3664Sz92zLzZ32uRA4KfDyPGr/QOC47RnQbIM/AOKy5DdISo0AXPYab5adORGYJ1y362syc8C44Kd8ADKpviTMBcv3e1+C/8IaEMxw1A1TH7mMXF03d4d2iz3rKVAJO6w/4AGVb9wfHyT2RB0FmrtEy65fKxSoFOi2NgqyoOQOlIH2UN5yBAd6G84z8VRjIYUZSMfnwowbl3kKsw2n2WnW6zjMr3r8pfN2lEZiUi9YeME3nlyRrp7Z1yjoKcI83XSriWo0WYlYMQm9XxnCMt5UUYcGC7z8onXdd7ZHhgafXXW299Q9cd6tN8cWW9eSX13G/qx8GORGmsx8ehwUOJC4Xye5jekM2TP5q8NwWsMw0Y6YK5VPoSW+v8IwrdNhARNeJ3GJs3+jLliEmhhVwPIAkxLw3CvVU6WVhoYdeW7KAohmrv9rIyD/ZuI93fGVHp7v2INO29dMF1lQJ/xnD2q70JlbzNwiLktVo38Qcg0YVtD3kDf1IUA05AQcr7yRczawsSs7gUb9zOnd+8jRy+jsUDUBubnZXHFSORimPQABnwr6GDyML7pTHjma8VpePOlgviyRLz9P1JcZKyozNNMyJ4geKjUfx3n5hFxYyh+3X7GELEtGY9D75nbe2X2JRRc1kpfKnUzaJQ2LqtjTMiWiP5eHAuJ+WDSxDcT4pev3ER1SuNfnrMpjIFo0iqQ/ns3YUzLD1K1rSZVBFkyfi3zEVNgplapVRKjZfRgretYjOKLX3BeRKy4rukfxE9neakR9yK4Sa/agXlxV+SB6DiiPEkh+H94k70zsVh4gJs+1MLbbQNbnCXgr13Zzm2Q2szERly9xhdfY47pr855UmUfZlWU6Kyxb7MSRoILHaC63o6Y9hOxi4i7yCuAjBkCa8HkxO3tQ/A5WBn2O/I9zEgdzqwsvYWHwmTSvhmKrG3mt730t4mL/94DN0NzWCN4Zw1jjPd/fT38pdVKXws4KCaPxqxy4CtrBisoRzJkucodIeAiaFihpFWoxiHBxiDyP7VWwY0JClB1sI4HUzjBYmRWO2DKKo/uW+tBQvTuOctZlLGiNtg/N12fZdi2/XucheZefvT0mgn6J+RzLq3C9z62UovvZsehZvpM8xC2ziiGq6QjUuKmayINqMqspvccUYLPv8WtL8yQa4wFr5GH15guP2M17TZsARWZGxHJDVRqnfxyBzy3k0qi082jtgJsoabcGXfGOcl2A/Yuu0iALG8OqXwqQ5vcmttO5hgmfh8gXrOkHSVRIzCnSL+2Qs4DyMFUxKsIoO3mKZhaUeARJCvGmOuunaA5D0sEp5oLnI0TZ2BxCz0qTNYc9xQM+0ib+Uu2+ZxUV1G3ruDT1dyLpEw8DnupBgBiswSDLEMMNAVUJ6ka+001gtjsxJNlWXdA8yIGDqwgyb3JoLKiYo6XJN6bsG3j61VimrZY8E0mfDJLMKLHufQEN5IVJykItjiiXNjY5KG6aX8PXIYwfdbqFLTyNtJ/daPTuwjHUXA+5fcZvqDVVG0HPmBMPdnBWHOoK70aN3xmqyRG06USkoSurBtZV2cOlzFCH7piCOGrUyn6SK5Wfcqu38wxC3sA0Lh4ECQc3STdSb8JTM1mu/iYkLDR+cmBr7NmpDhuDPrBJdBk3K8O1Ysk8zXHspl7b/g9seML50B9qcLcaRpCvHeFK1pC/RY6+QVg30zhuKnwPW+2FplZbiKXGt0dNZ3Wsi3cmRegMGtAoGmpFpEc22pnAoPUjELxKRLYcF+G3fRRBvKvZChpxjnb752MB+WENb9C4nCz0NN5vp2RQawrOaBoxTuZymGcYwLznDGQt9tDV7k0JMHKgNLPIJbAz73QiZR/xwjLSX6cd0PMvkd7rR9SGCaTHacoerv/eAHw4KP12BBxeAgVetwkmRrn4XVqFNrq714yWOfPVqBPPqSwvnNxmk8Gmd0O5KydZnxIxyHz9xxqrEr/9BC4R3RJhq2iFtfiU1ng5JxgS3kigoTRfPsHNl3m1GGuKhu+vvTXS3vr5VEnmGjATG1CepqUBQ0nNvUJAlNLtkx4H2zgQqdcEIZLWQT+/XY5FaDl0SYMFdNht0DdACNUcfkaqDHU3mwjenm/PqEsSRpYqD+2roIFXXPFnHObLPeBYoCCYfXY6goZNXaPFlOkRVIRM+mu4xxZYdm5fC5pwq4kcxeT1Qtu6aGIQdFcSEZuIIH3YrJDBYcyPVNLPT6xeBB5d9iInh6aQh7vaIz+9Ed0nJxtxyFhgjHIBcCtuuMm/LZg/2ZM74XBa2N52uRWiNVYpST5XFYjH7vRZPzZ7p+r+K5pD1U3kp70daYEnVnrLlwj2bRR1xIOVUsa7tDtOFozzbBWLCBNa5zaSOF01cuRNFj6PTNJzFt2eT1ZCNeNG7cfuRHYoeYFZtopALKuaVjrv/eadIKd5IBRWvnV8DxOsK9jNR5+goHUCtirZ1n+eRim/ll2BMGsfJ8stIbxbY6XCzXbcVyBiwCeYD+8yqonE0KTIz+GgJes0V0yPxnePYi9vYugulcGb8VsM7loWBdg3DvFcL5U+yUzabyT1vS8MRP/WrHLpf+RWjOENVNO+r8ucQRg/Xj2ILfjXd+nVHzL88ZUG5rkql30ZKIZUaE9XxQWrVBoJOEY/viSBrdCLy4vPIIWFjgnao8FdrAliQj0VqLzaaomhwmXCUM0iDALYoNN1ByA6k6GiwyE317c6VdphMXXEhWOEek7F55g6HKg3fwCnIZPqh3PjJa9CvUKRl1tw7IqfYiUNbCgi44g8Vsi3VF19HdGQDyUhptv/Z5HlHfASPJUbPe0tRcq4zb1Yz68QjyVkN5/Mnnpq/t1nN5U3sqzuIob5OQpDmARo+J08dtgsSZayNCy5gfQwn/PAmbsal/raO/uK0F33Q1mCKmVPzibsORArCscTCqcMySkeDFaQPyAW+LkKIyJ4Eypf/C5Ov2mr3pHXOItsgMw9jv6O8j0rhEAvp8DNLsZ7sOmwNfm63NofYgAJSV2CMmCLfGLcxM340WQy7+2sw04g2Cb43qOelk6k4/hWsX3/voyQEzCTxe6WbueNDQvssT3Nv5rdYd6jwNU0qzpq/et33QuWpKXItP59gnBKlKp7L2Sm3gjRACf7cVDgfy6gyOzhseK6KnDlOTdl8E3OK5dTqjJMM6GFotJIaW2sEXwvzbygpIWfE9b+mcnUyOz4S281Pf0BuRfKxjwnzUn+hgsr0oM4wYbOxbrzTwOfFekI+2I2RlYKc99LRJkddxFX1AQoa7oQ0Mb/zCtvxfTwT8wCqbBh6aWmrXQOBK8kYa9gM+Llom8rxAvdL6/JfWS+hqVSOjAawXsWCjGT9RHwjRa3coyxkxmzRG5JVCsYhIV/NmDEmhheM5YBR5/gqY76K0Ycq4l4C05dW9pbAR4JOsGD6HgqHDa6nvl0y5Wf1POWB2GWWOtfl5JYl8URw8up/2Q0z/J/g2zAKTn2NO0Sft7cdqDKSuJYmeTjYdBjqgl7GFGa9dRrP+PZqqKMff2peaDmRB6w1mfgyY90y6vOX9UFzLqL0XE+Ick7bWp6HwYZ7/B23DIN66OnVbRiCjY+OsTbivWzgoKI8kbBK9QevqGrwUXYqn97LSwLglrJTsTqM5+bvxlYebVq0hEn9wvZIPwXTNm6E3gzpj+rVkDiOI6cDvRWXIxiYp3t/V8bpAVWXvlT3sgRknAwI+qhGlCkYi3IkNrSf8GSg7AXe6vQ+oJWszfe2qTKbA1cZI79W5hcRjrLjF55QJOoSa1Vh8DxKpmN4J18Lft9+RZbDCvKk/7xUpAVHqsMHpFeiOkzG+xwACDOZEhc8L7o77VshLeNRb1hFsI2dWbxuF2DZDQahBmXUb2sq6pvbt6TnLMA62U7mPSwQ8l3OCxwSes2yTJPJ3ajNqHLOyzJSyEhPnjNt16/r1OfSd8wJE53s9PdMOBW63xQAiaJabdj0QwNYPIqRZYBCOHkjFRYWciJ6Vzik6sqh8piuKWxt5f6xquuqrwgy2asrhHUzxqho1xcY7RXwlCPJRE/1HMYRFCYHPL98w37X7PgGzvP2bk29YdlNvJPi9vWUYbty/vq36hB//k8hcP7+CxGy9pXBFoxqcfWKuS7fBjrgfD1ocKvTY/b6/cAtBg30hNlC8qZozN3ZHdBv9VraVA4gahyVhX7HavVNvzE0CdiLiViNcC4GDuatu8jY/m3R/C7hs9bBOlihjGIihDZJ4daa/cefzM09Dr6ZGRcogOpSeAFCZeRh8zkp//sYtZZXA6s/RDrxd0565UqtSMwJFFtjQwbdzwWUwmSMz/P3c78atCbzz6xKsQZfYjZQHG7pR4ukcLg6qk/d97MWkw63JHamltiJj++9SpXBFKv9ecLdZrQ0PlPO9o1N5w5ev4vKaMfaK1hu9ebgH6guuaccv91WnON+n3hqQNYbZwCouTZ16ti9edbQZOJLUpjJ0f/UR5wB1VJzLbKcu2IRCU7ZYCppGEvL+yy6QJ5vDeCIR+6rca96zQ95JdMmqBaowZsOvJshYyq8ttbQe6Lo24e3W00xcHamA5CfDKDJ1vjT1bW5i6A9UWJmV3Nio2rJAeu1N9uttnF9nBkSfPa47BVxA6xewkuKYJ9gM9kSZGzAgMwHqHbcWtJmiWeiOFwMCZWCXP8Dt/WN3dbPxyFei5Ok4LcHaIrub45Q9tnLw1G57Y2fpKi6mTF5FWIBmMXwqb0O5lhiGYJDD1o7kktCC1YtdcCRcharb/nj6AaxRNxe+UKdBOZaeiZAqaJS4rCum4o6N8xjUGh/4hU8Ite74Ua4yHMD27k0lw+5p6fziaxjuQwsLGo74lgF9vJsq9LvYBy6Gi0VfdIRRhmRuJe8IraeWJYcwuj+Obkri5LZxilDZgtOaL5tJ2NYKuPRWeJqt/NWQlzQpLaL8T+74O8VNwRmuanDAfRQBT6sfWq2vNSenVdx31i++5jlRd1gi9Mr0vTBy+ceOXME/YInMr6BA8QzbNT/rjxbucOZS5pmYl9SKxzV8jTnjT9+/fzcNs3VVyoAGu3tATKYyU4LBZsj9H/0mL2ajJkoq3Qc2lwRLFdwHKRXB5hVNnEI3fUvwPGJvVg7A7FGMVHIcDQhXYPqn67PUWcjmMdTyahPo0Bgsfz23ClJICDj78KZdmvzBPNvzKS37iCvBpgpfr7YFgzLUSFeJU/OHns4+RMKYC+NzijQgLSTgBPJaGtO0d69TM9hfWlydGcXAYl/W1dBVd9lXCOPuWeSAgni7CCDlJY/4/iq+XWlzQiGGK62HZx1d0j96ewpJXtN4BK66Sn4CeF9GNnMtM+YFrGgT5bwUlwpQLzuXHGT6uaJ5wA1npT/y08YyW1/gtT7VRSoczMIWoENbFgcH8vN/KSHKO+Ya8fAwmZJ3lKfvdsS64DcJJ/vX4KlE987kcoIpAnrSeTWQKaxB/M8ZBksQJKf128BrU/1APJagyQEkeUvIkkzddgGcDX2CzvqaksPMNmu4s6v/6SZeefH8gnM1xAgWzrUZq7Z2QAM1XACBFRgGHKsfUzdr1ncBOcH9GtI5w5QQDOk69qjMWd8zXY09r2HjODkG2TggDplNBgJrjrhuqjnUMHqljvFDwQlHd9IaqaRAno2RFEWHbBE3VxjvR7RYRnFk6VD3aYu4LJ/3HLQrtkfP3sbVpNkFjSqy7Wl/zaGhHispS/Lwz0taJD7bZGigy4J3j9vV/nTnD3zDB+UMdd1mPHC18dbUfG0sfI1cy9355B2R+HRmCHJXndvFgQ6TUAjLzkU1B2YLOr4oC1ynE7SeTAOHWTx3XVhukKJm5r2MIwL+o/cV1hSkE7+Wi3XwjezydBYvxBPOw9QK+I+Gqd4H3taGepWMzL2BWRuqz2u5S6s+N5ELPMfSnxX4/vSfFJau6UqaGVpaHoM1Tu8ukpZ7M4RAKlzP8meVZzcViIr9w1LnXiWBZIywXHEH8rPi1KzP44NxUV0LuC9tu2MrCgsCXh3YKou2o2lbIcZqn05BfvBC+VNjnDzjFW+MgUw2S+g+kX5s76FGzjmb60cNmaWdSUO64Gfo+mGNMsCGKkYazWXeTL/RR/+303555Ng1d2wwPm66+xZUHgywQUQnrrXnRhW2HdXfZaaGLYeC51YvfqExQW5OPV9uNRn8kxEnUgerqzzwPI677ODmqSoMWecuHUd2Ymm/3vKaTXwdJHv4yb0uA2FGpL2JcQnO6aka8Es6TRy9puGeWHZNq9DMIK2dXDtGkaToYhyAFmVKfMqAAwybt6tZgK9n8JQrd9ElGPzXLghlNVw0totrV0fo4dV/ocjnIod83UpZunp9gh/j5xkDkC/v5OHdS+rHUJ+0+b5aClQEKZeqXEykwcaPRQcGjdJwbCpAqg', 'f2fd7ee6c2dffad7e6dfa5c1f98b751e');

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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

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
(141, '11636063', 'c3de780036f8ee3891dd0d8d46e1ebc0', 1437836548, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'hzv97Ko7RvGhwLHz/anSTfs2W4L0YJl2XRvrK3K/37k=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

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
(139, 1437836548, 141, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

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
(161, 1437808651, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134'),
(162, 1437835687, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.134');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=163;
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
