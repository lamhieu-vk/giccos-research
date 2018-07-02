-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2015 at 09:32 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=679 DEFAULT CHARSET=latin1;

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
(678, 'en', 'activated_code', 'activated code', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

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
(119, 1435801741, 'user', 15, 'add', '', 0, 'status', 89);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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
(23, 1435647902, 1, '4f04a4de', 'f44b0997dcc859d681253acfff5e5941', 'user', 16, 'SkAcShbfLBYrFlSsnzjDYbhsYJJf4P/W+eHnL/0VeH0=', '');

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
(2, 1433307391, '19605aa7', '96ca778c5a88897519515268f0f9b043', 1, 'private', '', 'vi', 0, 1433309148, 0),
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
(4, 1433307391, 2, 'members', '0', 'user', 15),
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(39, 1433254452, 97, 'user', 15),
(40, 1433254578, 98, 'user', 15),
(41, 1433254608, 99, 'user', 15),
(42, 1436299107, 1, 'user', 15),
(43, 1433312729, 2, 'user', 15),
(44, 1435647907, 1, 'user', 16),
(45, 1433411253, 1, 'user', 17),
(46, 1435567376, 3, 'user', 16);

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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

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
(229, 'regex_sites_url', 'en', '/^((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(230, 'sites_info_time_update', 'en', '86400'),
(231, 'feeds_nearby_scanning_distance', 'en', '10');

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
('3aEb6eM69jUXzXNKAfOx2lZU9,lhau-hm0n1ORH6qh5', 1436686356, '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', '65ddd27bee4efa29af562db2a4de4d76');

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
  `fingerprints` varchar(40) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `scheme`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `title`, `thumbnail`, `description`, `url`, `secure`, `updated`) VALUES
(9, 1434721022, '49dbdfc4', '764634a6a5c638bb27f1f802b1709773', 'http', 'yan.vn', 'yan', 'vn', '15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', 'html', '1315f15b58175ef2eca4a6e98e3c9202', '15 quá»‘c gia cÃ³ phá»¥ ná»¯ Ä‘áº¹p nháº¥t tháº¿ giá»›i', 'photos/raw/other/5FVCyI26HK6jGqzds2Beii3qTumGZiAkFXkJ61IEQOIp1+goI3wimdCcR12akceQKRGn19pwWVR3kKSiYv7KhD2xxyeGyrBHtIDzwxY/3oSojXADbGepYSdODcDMjspEW4OPqLDTJ8StkZnhocJM3TpeB0V8clemkoUDplaiebI=', 'Phá»¥ ná»¯ á»Ÿ má»—i quá»‘c gia cÃ³ sá»± khÃ¡c biá»‡t lá»›n vá» hÃ¬nh thá»ƒ hay nhá»¯ng nÃ©t Ä‘áº·c trÆ°ng nÃªn tháº­t khÃ³ Ä‘á»ƒ chá»‰ ra phá»¥ ná»¯ á»Ÿ quá»‘c gia nÃ o Ä‘áº¹p nháº¥t.', 'http://www.yan.vn/15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', '0', 1434721022),
(11, 1434775699, 'fc051336', '47b8eb2948bcecf5577fbb074aba0da2', 'http', 'clip.vn', 'clip', 'vn', 'watch/Detective-Conan-Tap-265,OUCu/20029', '', 'b586a81d3cb18192e354eb807e0b14ac', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan', 'photos/raw/other/hEyZGNA/Wq11Ppwzhmb7bb92qvDRZN/pCFxFd2aJrdlygDbxoiQ7Rt2IWtHNCBoWCpbpiw+z3tU0xVYMvTfY2Pv12ZVDqDXfddUD5D14h3fkT4Zv5wnp25Wo2udD5/zMo6QUR36xjSDO5h3+4iWQzJ4CVs3qwRSJt6AQo0lZy0Y=', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan Detective Conan táº­p 195 FULL HD , Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan - 1996: Shinichi Kudo lÃ  má»™t thÃ¡m tá»­...', 'http://phim.clip.vn/watch/Detective-Conan-Tap-265,OUCu/20029', '0', 1434775699),
(12, 1434775804, 'f9d499cb', '4939c4c2ea30120efd4458a9a90347d2', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', '09f3b94af66a905ee46efb88a338542f', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1434775804),
(13, 1434778851, '00471ce2', 'a3a608455224f0792acaae98a95dc691', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=exorHh1Xkjs', '', 'd495c77a58626965f8ca5d43fd6d697c', 'XÃ¢y â€œÄ‘áº£o nhÃ¢n táº¡oâ€ táº¡i Biá»ƒn ÄÃ´ng, Trung Cá»™ng dá»‘t hay tÃ­nh toÃ¡n ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsO1CZFwpN7Hru4aGkZFAGouow9koIuBRxRN92c3ZPt0Q==', 'Khi láº­p cÃ¡c â€œÄ‘áº£o nhÃ¢n táº¡oâ€ Ä‘á»ƒ xÃ¢y dá»±ng cÄƒn cá»© quÃ¢n sá»±, háº£i Ä‘Äƒng, vÃ  phi trÆ°á»ng, Cá»™ng Sáº£n Trung Quá»‘c chá»‰ cÃ³ lá»£i náº¿u Ä‘Ã¡nh nhau vá»›i Viá»‡t Nam. VÃ¬ thá»© nháº¥t, vá» máº·...', 'https://www.youtube.com/watch?v=exorHh1Xkjs', '0', 1434778851),
(14, 1434779018, 'c5328be8', 'c04c2b0b51dcff0cd90fad125857b936', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=MkBTUMKh58s', '', '14069e95fcf8d544c8d0b8ae23a6797e', 'Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c táº¿ hay Hung Ä‘á»“ Quá»‘c táº¿', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuck8tlo8QBB50v8B7KUiqailfo4pQYeA09jDUlM4pOlQ==', 'ChÆ°Æ¡ng trÃ¬nh &quot;Giá» Giáº£i áº¢o&quot; vá»›i Kinh táº¿ gia Nguyá»…n XuÃ¢n NghÄ©a, má»—i Thá»© Báº£y hÃ ng tuáº§n. Thá»±c hiá»‡n: Äinh Quang Anh ThÃ¡i Äá» tÃ i ká»³ nÃ y: Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c t...', 'https://www.youtube.com/watch?v=MkBTUMKh58s', '0', 1434779018),
(15, 1434786799, 'd78164f0', '45bfa6bc9d89cc61c4adf84da45a4cf7', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4&feature=youtu.be', 'be', '722917e34ace1f901bf690f4a0e2cc6d', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4&feature=youtu.be', '0', 1434786799),
(16, 1434786958, '91ea721d', '0aa9e42bbe0e007ff0ba2483f6248ba3', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yec1SFizlgI', '', '4fba6ae33d19620bde7a3f85a49be771', 'Schannel - So sÃ¡nh nhanh Bphone vs Galaxy S6 Edge : á»¦ng há»™ hÃ ng Viá»‡t hay mua hÃ ng ngoáº¡i ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtOfAip7Bmi1HLlr3fUzfFpEVhHVg7Ui73AuIirIo4jFg==', '- So sÃ¡nh nhanh BKAV Bphone Ä‘áº¹p hÆ¡n iPhone 6 Plus : Liá»‡u cÃ³ tin Ä‘Æ°á»£c khÃ´ng ? : https://youtu.be/hqs3NRzvna0 - ÄÃ¡nh giÃ¡ nhanh Bphone Ä‘áº§u tiÃªn táº¡i Viá»‡t Nam : Ä...', 'https://www.youtube.com/watch?v=Yec1SFizlgI', '0', 1434786958),
(17, 1434787103, '6cc7a741', 'c86707642971720859ca18fcd4d1583d', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4', '', 'e85ae37b31bb9c904bf492dfa60df50f', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4', '0', 1434787103),
(18, 1434787529, 'fb425134', '13b889444d521784a151c24b38fd08f4', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=R79zGqZWQ8E', '', '09e42d8f441b80234ba2fcd1fe004a57', 'Linkin Park - 08 - In The End (Live - MTV World Stage 2011) HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsQLJ+O+kIkGBSsOL0bF2avPRbb8RpUjGvyRLTPZ870xw==', '- LINKIN PARK: Live In Vasilyevsky Spuck (Moscow, Russia. June 2011) *Emitido por MTV ESPAÃ‘A el dia 6 de agosto del 2011 a las 00:15h', 'https://www.youtube.com/watch?v=R79zGqZWQ8E', '0', 1434787529),
(19, 1434788624, '5bc56f5b', '44d1e10453f10123a068cacd1dd19976', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=EZoBQB4sveA', '', '146eb91eb182c8ad760e1adf0760c1c5', '[HÃ i VÃ¢n SÆ¡n - Báº£o LiÃªm] Má»™t duyÃªn hai ná»£ ba tÃ¬nh (Official)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobt9xoFg4n4yxmTQcV6V+8Ibd/qhg7N77E9f5aNOitV0tA==', 'HÃ i ká»‹ch: Má»™t duyÃªn hai ná»£ ba tÃ¬nh Danh hÃ i: VÃ¢n SÆ¡n - Báº£o LiÃªm - Báº£o VÃ¢n ÄÆ°á»£c phÃ¡t sÃ³ng trÃªn SCTV 1 ÄÄƒng kÃ½ kÃªnh Ä‘á»ƒ xem thÃªm nhiá»u hÃ i ká»‹ch', 'https://www.youtube.com/watch?v=EZoBQB4sveA', '0', 1434788624),
(20, 1434789171, 'f400a7ce', 'f77007857843ec3271fa7fba582b6061', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=BKsjE-QEc-w', '', '7391cb37d6aeb04c06d0b5a783f22ff3', 'Song táº¥u hÃ i Báº£o Chung, VÃ¢n SÆ¡n, VÃ¢n SÆ¡n 48', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu+AaaDQe+ZzTf1FELCO/+bszUb7YjqT9t0tdLJxGZMJg==', 'https://www.facebook.com/luong.nghiemtuc', 'https://www.youtube.com/watch?v=BKsjE-QEc-w', '0', 1434789171),
(21, 1434789432, '24f4f66b', '6ba27838d4fd0223b21445694ce10bc4', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=KIy6QxcpxKo', '', 'a256edbf20a3f30859ef5bd386236637', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobshB0Gx7GnPto+/M/VIfeAadx20jmkRKmzhzm0A5gWpXg==', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live, tÃ¬nh lá»¡ thanh hÃ , tÃ n tro thanh hÃ , thanh hÃ  hÃ¡t live', 'https://www.youtube.com/watch?v=KIy6QxcpxKo', '0', 1434789432),
(22, 1434987589, '6f23f0ee', '262f69c66954a3c32a604cbf31594244', 'https', 'vimeo.com', 'vimeo', 'com', '130731671', '', 'e4a0443c8fe64e21d0f04a19d40f9045', 'Signature', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm3V/TxmUHwXfY9Nlj+zDE97tkHWUIQ3PbrR1lM3htVt0g==', 'Nothing is intact or permanent, everything is affected and connected&mdash;the history, the city and the rider. Just as the city left a mark on the rider, he leaves a&hellip;', 'https://vimeo.com/130731671', '0', 1434987589),
(23, 1434987690, '202fb000', '88de1fdd997e469c75286efc7c37bfaa', 'http', 'dailymotion.com', 'dailymotion', 'com', 'vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '', '55f8526b256b3a1742b175b8d9084419', '', 'photos/raw/other/TzdxCHbuRsCMh4O+p6bjz1wMwxvRY/osJPBEb581hNk=', 'Má»i báº¡n Ä‘Ã³n xem video ca nháº¡c, cÃ¡c buá»•i hÃ²a nháº¡c, phá»ng váº¥n nghá»‡ sá»¹ thuá»™c nhiá»u thá»ƒ loáº¡i, pop, rock, hip-hop, country..., Ä‘áº¿n tá»« nhiá»u quá»‘c gia khÃ¡c nhau Viá»‡t Nam, HÃ n Quá»‘c, Má»¹, PhÃ¡p,....; trong Ä‘Ã³ Ä‘áº·c biá»‡t lÃ  cÃ¡c buá»•i biá»ƒu diá»…n truyá»n hÃ¬nh trá»±c tiáº¿p táº¡i Dailymotion.', 'http://www.dailymotion.com/vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '0', 1434987690),
(24, 1434987757, 'c3d2540e', '45ba2b5c41ee316d863a0895af82649b', 'http', 'dailymotion.com', 'dailymotion', 'com', 'video/x2tlokz_westlife-the-rose-with-lyrics_music', '', 'ae5c6bd1fa67a778e05059a08f47f817', 'Westlife - The Rose (With Lyrics)', 'photos/raw/other/4vwUJuLJY5QtNw0jVOrLbWUgdIjlv3fAJEpr7bdPcg3ZCd+En6P/nQ17SHBXpsQ8UZp6fPgmbAlA8fWgjnkJCQ==', 'Westlife - The Rose (With Lyrics)', 'http://www.dailymotion.com/video/x2tlokz_westlife-the-rose-with-lyrics_music', '0', 1434987757);

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

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
(89, 'd25f01e7', '49abf154ae8693724b3fdd472e4ca052', 1435801741, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cu73G2j7RbFuVP01/41w6wZZY/1MruhLjH8vt5pwvPY=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

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
(87, 1435801741, 89, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_link`
--

INSERT INTO `status_link` (`id`, `status.id`, `sites.id`) VALUES
(1, 47, 1),
(2, 48, 0),
(3, 49, 0),
(4, 60, 20),
(5, 61, 22),
(6, 62, 24);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(5, 15, 5);

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
-- Table structure for table `storage_cache_image`
--

CREATE TABLE IF NOT EXISTS `storage_cache_image` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

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
(161, 'faces', 1, 1436408184, 'fec3a298', '', '4acd8ff4eb8f3a090038ed637ed8124f', 'VugBm81txbDCtn7gfO2wS/yiAwi2fLyt1sZDLHt+xn84oIDni/zWbHsa0uBoixrcM6k1hdBE29VzWtfEcjbaWA==', NULL, 'image/jpeg', '23733616', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408184, 100167);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996),
(13, 'drive', 1, 1435497531, 'c2b70853', '', 'a3afc88b6d573875a151fa8df25311ba', 'mmD7J4lIvDbW7EsaX2oEyL/XuKiK4NInmeilZjUz8xIP/gw1JzLoSznf7Xu9qgYC/9AUL9o5LT+oBkeNgIEPlw==', 'video/mp4', '85f7ab95', 'GanhhaoTimelapse.mp4', 1435497531, 41635653);

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

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 4b6e16d36', NULL, 0, 0),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 314482e1c', NULL, 0, 0),
(18, 1432316172, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'b6b3e0c602', NULL, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_getpassword`
--

INSERT INTO `users_getpassword` (`id`, `time`, `user.id`, `code`) VALUES
(1, 1, 1, 'xyz');

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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;

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
(134, 1436680420, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.132');

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
(3, 15, 'user', 15, 1435497531, 1435499340, 'da65d66b', '0461491b', 'ed269e40', '81a4002e.mp4', 'GanhhaoTimelapse.mp4', '81a4002e.png', '705d5894', '0', 'video/mp4', 41635653, 42.666668, '85f7ab95');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(5, 15, 'user', 15, 1, 1433581762, '5ced9004', 'f65f1d77c7249b922f6487e72dfcf149', 'bÃ i hÃ¡t Ã½ nghÄ©a', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', '', '', 4, 4, 4, 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', '0', '0', '18338411353ae839453c12c1c70d39fe.mp4', '', '0', '0', '8937f9a7586f9f04ccf805dadbab3ba7', '43f28c42', '0', '0', 'e6ed291b', 0, 28178996, 'h264', 360, 480, '4:3', 675286, '2997/100', 333.831665, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 334, 128000);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'f364dca9', 'd326ecd0392994c4f04d1061663f9fe8', 1433580771, 'sÆ°u táº§m', 0, '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(3, 1433581791, 5, 'user', '15', '0', '0'),
(4, 1433741874, 5, 'guy', 'da65d66b', '0', '0'),
(5, 1433746592, 5, 'user', '15', '0', '0'),
(6, 1434036789, 5, 'user', '15', '0', '0');

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
-- Indexes for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_image`
--
ALTER TABLE `storage_image`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=679;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
