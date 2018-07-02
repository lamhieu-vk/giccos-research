-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2015 at 12:17 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=619 DEFAULT CHARSET=latin1;

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
(618, 'en', 'country_at', 'country at', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

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
(117, 1435486167, 'user', 15, 'add', '', 0, 'status', 87);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_cache`
--

INSERT INTO `music_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.id`, `author.type`) VALUES
(5, 1434614101, 1434616638, 'da65d66b', 'd6b39c35', 'e727921e', '6b93ff96.mp3', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '0', 'audio/mp3', 3636470, 226.873474, 'b33b94a8', 15, 15, 'user');

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
('KOSvCRJOnktXtsQ9orli8wzxAZ,STtur3rLu3J-6cQ5', 1435486598, '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', 'b82ab78fa445c93f48eff60f142dbac4');

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

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
(87, '2cec330a', '1865729c4bda8589e66f4de5338afc0e', 1435486167, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'pue6o/gfx4hhkaYBPwcc25dNhjgOkkrzAgCoZccioYQ=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

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
(85, 1435486167, 87, 'user', 15);

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
(143, 'faces', 1, 1434548408, 'f0499d40', '', '53b985ce0c501d1710a7d5441d2066c9', 'jmBBqoN2/l1nCF/j8+5EymsUiG9rME6yW5vPunPpqUtzDPfuM3+Qq4hDyhz4RL8AewHonz8/4mhk+BIr3pMqMQ==', NULL, 'image/jpeg', 'd4f20a6d', '1234489_638157786330815_1794467412252996416_n.jpg', 1434548408, 79334),
(144, 'drive', 1, 1434615942, 'fc162df4', '', '0', 'vQSXts+ZjRdohv7Di09h+PZM6iL5Pg806GeYSX3HM4AEVALkuU1vkAaduaWoMzL1AC06XefmOWGAuZUEiUW6gQ==', NULL, 'image/png', 'a065f778', 'b1846cbc.png', 1434615942, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996),
(11, 'drive', 1, 1434615941, '8616b408', '', '578f92e722a29145902e935ba20030b1', 'Kahv7b8X6xyBnW8wp/r8CNzJWGBE+iEJHIlxt7QC36982F19/izcfpf0OOo74Q1AgSEXalBbpvEg3gWeJZWiHQ==', 'video/mp4', '00301caa', 'LÃ¡ DiÃªu BÃ´ng (Remix) ChÃ¢u Kháº£i Phong - YouTube.MP4', 1434615941, 11800047);

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

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
(94, 1435478621, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_cache`
--

INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) VALUES
(1, 15, 'user', 15, 1434615942, 1434617748, 'da65d66b', '2834fe2f', 'fbdf02c4', 'b1846cbc.mp4', 'LÃ¡ DiÃªu BÃ´ng (Remix) ChÃ¢u Kháº£i Phong - YouTube.MP4', 'b1846cbc.png', 'a065f778', '0', 'video/mp4', 11800047, 184.725998, '00301caa');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=619;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
