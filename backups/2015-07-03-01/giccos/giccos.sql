-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2015 at 03:26 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=latin1;

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
(644, 'en', 'year', 'year', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
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
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'http://localhost/giccos/maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'http://localhost/giccos/maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'http://localhost/giccos/maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'http://localhost/giccos/maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'http://localhost/giccos/maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'http://localhost/giccos/maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'http://localhost/giccos/maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'http://localhost/giccos/maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.038364,105.419912', 9.038364, 105.419914, 'store', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'http://localhost/giccos/maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'http://localhost/giccos/maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'http://localhost/giccos/maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'http://localhost/giccos/maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', '50.157455,14.754981', 50.157455, 14.754981, 'store', 'http://localhost/giccos/maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'http://localhost/giccos/maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'http://localhost/giccos/maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'http://localhost/giccos/maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'http://localhost/giccos/maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'http://localhost/giccos/maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', '49.06255,8.93288', 49.062550, 8.932880, 'store', 'http://localhost/giccos/maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.857561,106.763582', 10.857561, 106.763580, 'university', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', '10.783215,106.694749', 10.783215, 106.694748, 'university', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'http://localhost/giccos/maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', '10.80559,106.73116', 10.805590, 106.731163, 'university', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', '10.762176,106.682418', 10.762176, 106.682419, 'university', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.872103,106.792817', 10.872103, 106.792816, 'university', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'http://localhost/giccos/maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'http://localhost/giccos/maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'http://localhost/giccos/maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'http://localhost/giccos/maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'http://localhost/giccos/maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'http://localhost/giccos/maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'http://localhost/giccos/maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'http://localhost/giccos/maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'http://localhost/giccos/maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'http://localhost/giccos/maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif'),
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif'),
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'http://localhost/giccos/maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'http://localhost/giccos/maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'http://localhost/giccos/maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'http://localhost/giccos/maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'http://localhost/giccos/maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'http://localhost/giccos/maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'http://localhost/giccos/maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', '21.484176,105.61102', 21.484177, 105.611023, 'park', 'http://localhost/giccos/maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', '76,-30', 76.000000, -30.000000, 'park', 'http://localhost/giccos/maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'http://localhost/giccos/maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif');

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
(42, 1435568449, 1, 'user', 15),
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
('qSPIcK,aIdyMERYQWWzkJXP1Ym-vJu5TXmRj2Y-PpHf', 1435929985, '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', '5955e1449d833f73f7d15a3258b830cd');

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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

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
(146, 'drive', 1, 1435497531, '5015d4cf', '', '0', 'YaGXEElG13cmTFtmXj8XSt6VrdbpJ5YVx6e/MGWR5MJDTZXVX9U8Y1008OJdMWvzuhmXHfOv08C1L+mzJClEXw==', NULL, 'image/png', '705d5894', '81a4002e.png', 1435497531, 0);

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

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 1, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

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
(107, 1435912334, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=645;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=179;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
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
