-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2015 at 12:51 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

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
(183, 1438165634, 'user', 15, 'add', '', 0, 'status', 153);

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
('CPBp,AzsvVvDCHnCZTHh6PPG6gub0Eb6rPnZH6FL003', 1438167087, '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', '4d68ffd1503c4ab237b534bf88fb2498');

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

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
(64, 1438165632, '7471a4d2', 'e780e6d305c57a575226c3d70c7348bb', 'http', 'tv', 'zing.vn', 'zing', 'vn', 'video/Clip-Hai-Tong-Hop-Truong-Giang-Hai-Huoc-Tao-Tuyet/IWZB7OWZ.html', 'html', '0be256a3', 'Clip HÃ i Tá»•ng Há»£p - TrÆ°á»ng Giang HÃ i HÆ°á»›c Táº¡o Tuyáº¿t | Video Clip HD', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaYtIHvRjesfP0b6iAiOszxXfmBYsShiuXY003apxbtiSocS9y/pD05jMkCk6GvztLu3z7Lp/Ci8ESP4pgMkP02pgYF+eAJtmAHPxpRUdo1gZMXi1wlDAsVa5sPSwfiEqdc=', 'Xem Clip HÃ i Tá»•ng Há»£p - TrÆ°á»ng Giang HÃ i HÆ°á»›c Táº¡o Tuyáº¿t cháº¥t lÆ°á»£ng HD,  miá»…n phÃ­, download  HÃ i HÆ°á»›c Clip-Hai-Tong-Hop - Truong-Giang-Hai-Huoc-Tao-Tuyet vietsub.', 'http://tv.zing.vn/video/Clip-Hai-Tong-Hop-Truong-Giang-Hai-Huoc-Tao-Tuyet/IWZB7OWZ.html', '0', 1438165632);

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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

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
(150, '160138d3', '1039dd418edfb34118e37acd555fa783', 1438158478, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'KwxxloXZXNElT+6u3tPXiLJZM/Qv3unlPrp0eExMGb+wFnblVzJz9gJdSRAe/WJ5RsD+EAOlx1YK9D1lzy2Q7w==', 0, 0, 0, 0, 1, 0),
(151, '12e5c313', '67f57834fed023c346819bb027abd7ce', 1438162266, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'qzqnVMIGZgHHbmRV4sB2Dqc9aRa9y5aGXMcCzvEZHVQqxSUg9e4itU/Ebx/PHW03U7AWw/wHC3mquhcf+ximqQ==', 0, 0, 0, 0, 1, 0),
(152, 'f4e74ee1', '68da09c1e66b71669cfa074895269aff', 1438164638, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'G4HRs6B46KvLEpr2AVm12m+hZh//Tdto5PJKngURRK8=', 0, 0, 0, 0, 1, 0),
(153, '830b0211', '99e9e53b2b7786856cd0329351b8498a', 1438165633, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '07jfTQTLcuctVU9PepkFZW0kaIiqEqncvi1UJaosYAQX9MU3i09Ht2SAdym6tToWL9Qst8W/wjlmpVUypeqsiwyDTD8sfVj1t2gMdRqTBY6ZfTJ2EUW2Ft0BbQoXIHBP', 0, 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

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
(151, 1438165633, 153, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

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
(31, 153, 64);

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
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, 1438167087),
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
(8, 15, 1438167048, 1438167087, 'a0f61a4a');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=698;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=184;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
