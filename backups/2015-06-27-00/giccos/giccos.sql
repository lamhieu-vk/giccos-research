-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2015 at 03:06 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=618 DEFAULT CHARSET=latin1;

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
(617, 'en', 'feed_nearby.quickdescription', 'general status from users check-in this position', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

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
(103, 1435410307, 'user', 15, 'add', '', 0, 'status', 73);

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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

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
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'http://localhost/giccos/maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif');

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
('Rx2H7zI-bCGaj31J5J3Zt,CWouWqUF0AsL,1N-Xd1od', 1435410404, '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', '96e89d099a3f41ed5b10ceee4cc83994');

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

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
(73, '375d1a92', 'fd2f0fa914f9d6e5500462187b0844e0', 1435410307, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 's3YOmGino0OEr4/8YISS6da7VD9Sq0PeJjjz70wp2ns=', 0, 1, 1, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

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
(71, 1435410307, 73, 'user', 15);

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
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_places`
--

INSERT INTO `status_places` (`id`, `status.id`, `value`) VALUES
(1, 71, ''),
(2, 72, '68'),
(3, 73, '104');

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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

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
(93, 1435396013, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.130');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=618;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
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
