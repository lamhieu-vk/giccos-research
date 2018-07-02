-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2015 at 05:43 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=latin1;

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
(615, 'en', 'feed_friends.title', 'friends :: feed :: giccos', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

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
(94, 1434987761, 'user', 15, 'add', '', 0, 'status', 62);

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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

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
(228, 'messages_views_timeout', 'en', '3000'),
(229, 'regex_sites_url', 'en', '/^((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(230, 'sites_info_time_update', 'en', '86400');

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
('ww2PYmNtwkAC86CnjN2bpPbzQCfua4mBRzlio5F8m38', 1434987819, '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', '5f5418e9ba31a50fb2aa7df3ca866102');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
(62, 'c92ba13a', 'f913104b36ebcea1864862efb4f43928', 1434987761, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Kc/Ee/btiaPtb5zWUKe1PNcdcmpvOrAnWpoYAtskDinSHHQA5t13Km/i2ore3LvbwEQ/AwLnniwWG1pJYntksxZv+CQTVIEg0B0nCgRZQvJ65mApDXF+sjNE+T5Ckqya', 0, 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
(62, 1434987761, 62, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

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
(87, 1434984798, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=616;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
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
