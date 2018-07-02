-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2015 at 08:04 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=641 DEFAULT CHARSET=latin1;

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
(640, 'en', 'middlename', 'middlename', 'false');

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
('9kSsxGlAsNHU1jOdwV1vg9Vg3RStejFqsEj2iiw7,v9', 1435859594, '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', '70b43f9b87677f69946f0adf73aba073');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('u5tB2xFHvwJDYz5sqDwoHpaj2nz2Y33fJdbJdeF1bA6', 1435859762, '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', '3a9bb321dd965c8a74271e005be692f8');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

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
(106, 1435855128, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=641;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
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
