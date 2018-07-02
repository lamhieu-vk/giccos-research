-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2015 at 03:47 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
(17, 1434548412, 1434548412, '97c94437', 'f85038f8', '073ca2a2b839a15fd65a9e146150b38b', 'd4f20a6d', '7c912c5f', '1', '271.4', '271.2', '386.6', '266.5', '310.2', '342', '297.5', '382.1', '297.5', '382.1', '391.2', '379.6', '391.2', '379.6', '-1.55', '-29.91', '-8.69', 'asian', '0.98', '0.46', '0.7', 'confused', '0.02', '', '0', '', '0', '19.23', '0.99', '0', '0', '0', '0.02', '0.9364', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES
(1, 1, 15, 16),
(2, 1, 16, 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=latin1;

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
(614, 'en', 'feed_tags.quickdescription', 'general status has tags selected', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

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
(79, 1434121490, 'user', 15, 'add', '', 0, 'status', 43);

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
  `code` varchar(50) NOT NULL,
  `reference` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` text NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 1433413989, 1, 'c2558a5d', 'db1dee58c5edefdc432241242126ca86', 'user', 16, 'RGpEy4CYcFPnUm7CQM+7kMNpOpOU3ZzC9ue2PahJXoNzuYH/csfUhwTuODRBInFBz08Ch9u7sHO06fZNIgpmz31zRo4LQk9f1jRajIJ+lwF0vRtSb0nb77h1mdxojcsKiTB9QMWTUJLVZ/uhbFQDeyFoEUOPzuBw/53AL1Oml4M65ydZETX/x4do+SUUVd5EwgTWxk6huIMnMc1IFXn7Tg==', '');

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
(1, 1433306571, 'c6729d95', 'f25232f9bc4da9bef5fa1d9be8d3f4e2', 1, 'groups', '', 'vi', 0, 1433413990, 1433312716),
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
(42, 1433413994, 1, 'user', 15),
(43, 1433312729, 2, 'user', 15),
(44, 1433413958, 1, 'user', 16),
(45, 1433411253, 1, 'user', 17),
(46, 1433413884, 3, 'user', 16);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

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
(23, 'notifyPopup_info_places', 'en', '5000'),
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
(155, 'select_time_years_min_limit', 'en', '1975'),
(156, 'select_time_years_max_limit', 'en', '2015'),
(157, 'select_time_months_min_limit', 'en', '1'),
(158, 'select_time_months_max_limit', 'en', '12'),
(159, 'select_time_days_min_limit', 'en', '1'),
(160, 'select_time_days_max_limit', 'en', '30'),
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
(228, 'messages_views_timeout', 'en', '3000');

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
('MqOmRTGp4I1dzZQ-Yfq6oSAI9k7BY0yAinaGr5Y9414', 1434548818, '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', '2efa88dc73cac5bb80a7dfad765c4d97');

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
  `host` varchar(100) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `rate` int(1) NOT NULL,
  `count` int(11) NOT NULL,
  `secure` int(11) NOT NULL
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
  `secure` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `path` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
(42, 'c279fec1', 'cf358411ac6254f67d02d46d5ef3ea91', 1434100458, NULL, 0, 16, 'user', 16, 4, 3, 3, 'status', 'zEbMNRX7otdm1ADLLMDZatlCJVRODnfgm5Gh2/sTEiQ=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
(42, 1434100458, 42, 'user', 16);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(8, 26, 'x'),
(9, 27, 'x'),
(10, 28, 'x'),
(11, 29, 'x'),
(12, 30, 'x');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'drive', 1, 1433745199, 'a0bee08a', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'W0hCcZpdm6iZiDWfTFUNWsACrcMvrl7/V8RGwHMqSuS/0mCf6IG+dWYj4jtGKNSSNleHX/dYcFsJUnWCu3hcIw==', 'audio/mp3', '49607e4f', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1433745199, 3636470);

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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

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
(143, 'faces', 1, 1434548408, 'f0499d40', '', '53b985ce0c501d1710a7d5441d2066c9', 'jmBBqoN2/l1nCF/j8+5EymsUiG9rME6yW5vPunPpqUtzDPfuM3+Qq4hDyhz4RL8AewHonz8/4mhk+BIr3pMqMQ==', NULL, 'image/jpeg', 'd4f20a6d', '1234489_638157786330815_1794467412252996416_n.jpg', 1434548408, 79334);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996);

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
  `slogan` varchar(100) DEFAULT NULL,
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
  `live` varchar(50) NOT NULL,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `activated` int(1) DEFAULT '0',
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(18, 1432316171, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

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
  `at` char(10) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `school` varchar(50) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

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
(81, 1434521843, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=615;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_secure`
--
ALTER TABLE `sites_secure`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_block`
--
ALTER TABLE `videos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_cache`
--
ALTER TABLE `videos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
