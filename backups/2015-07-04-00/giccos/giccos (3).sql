-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2015 at 12:20 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=latin1;

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
(649, 'en', 'press _delete_button_agian_remove', 'press the delete button again to remove', 'false');

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
('acZcrigY-OhIpu3EV3Kw060MPbS2PBBWFR7wNGRwKEe', 1435961997, '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', '69668d6e63a8826a0189da77f4377168');

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

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
(108, 1435954922, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=650;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
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
