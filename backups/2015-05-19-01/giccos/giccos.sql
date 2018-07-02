-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2015 at 05:29 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(8, 1431790466, 1431790466, '2c1c6d60', '6c2c8ed3', '073ca2a2b839a15fd65a9e146150b38b', 'd77e899e', 'b543367d', '1', '395.6', '221', '417.8', '221.9', '406.2', '233.5', '396.5', '242.3', '396.5', '242.3', '413.9', '243.1', '413.9', '243.1', '2.18', '6.53', '-6.23', 'asian', '0.99', '0.37', '0', 'confused', '0.01', '', '0', '', '0', '16.38', '0.88', '0', '0', '0', '0.05', '0.9871', '0'),
(9, 1431790472, 1431790472, '796b7f61', '33a0ccae', '073ca2a2b839a15fd65a9e146150b38b', '8995d578', 'd226272f', '1', '319.7', '232.4', '342.7', '232.7', '334.8', '246.4', '319.3', '254.8', '319.3', '254.8', '339', '254.5', '339', '254.5', '-1.04', '34.65', '-3.77', 'asian', '0.91', '0.51', '0.1', 'calm', '0', '', '0', '', '0', '25.46', '0.99', '0', '0.01', '0', '0.99', '0.5190', '0'),
(10, 1431790477, 1431790477, 'a55d009d', '38e8e714', '073ca2a2b839a15fd65a9e146150b38b', '5bf0774c', 'f11f7d8e', '1', '493.3', '225.7', '515.2', '228', '504.9', '239.1', '492.9', '247.5', '492.9', '247.5', '512.2', '248.8', '512.2', '248.8', '6.09', '9.87', '-1.49', 'asian', '0.97', '0.29', '0.1', 'sad', '0.02', '', '0', '', '0', '22', '0.8', '0', '0', '0.02', '0.34', '0.9027', '0'),
(11, 1431790482, 1431790482, '08ce1790', '9e08409e', '073ca2a2b839a15fd65a9e146150b38b', 'fd92b7d8', '6168593e', '1', '209.7', '238.1', '234.9', '237.2', '227.4', '250.9', '214.7', '264.2', '214.7', '264.2', '235.1', '263', '235.1', '263', '-3.37', '17', '-3.43', 'asian', '0.82', '0.47', '0.1', 'calm', '0.02', '', '0', '', '0', '22.02', '0.06', '0', '0.01', '0', '0.02', '0.9823', '0'),
(12, 1431790486, 1431790486, '39e9518d', '0618ac42', '073ca2a2b839a15fd65a9e146150b38b', 'e4038007', '53f99e7b', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0'),
(13, 1431790759, 1431790759, '71b64d12', 'a20a372b', '073ca2a2b839a15fd65a9e146150b38b', '249761a7', 'fc149565', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
`id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=latin1;

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
(333, 'en', 'typing', 'typing', 'false'),
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
(573, 'en', 'type_name_tab_messages', 'type tab messages name (default: auto)', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(1, 1431546174, 'user', 15, 'add', '', 0, 'status', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(2, 1431448990, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa');

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
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(40) NOT NULL,
  `private` int(1) NOT NULL,
  `type` char(10) NOT NULL,
  `name` text NOT NULL,
  `language` char(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES
(28, 1432049259, 'fd2378d4', '67a097e0e7c266d77b621ae5e6c6aed3', 1, 'groups', '(@asdasd, @asdasd)', 'vi'),
(29, 1432049301, 'ffb211ff', '004f9cf362d82a0bd2b9f62a38b640f2', 1, 'groups', 'sds', 'vi');

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(29, 1432049259, 28, 'author', '0', 'user', 15),
(30, 1432049259, 28, 'members', '0', 'users', 5),
(31, 1432049259, 28, 'members', '0', 'users', 6),
(32, 1432049302, 29, 'author', '0', 'user', 15),
(33, 1432049302, 29, 'members', '0', 'users', 5),
(34, 1432049302, 29, 'members', '0', 'users', 6);

-- --------------------------------------------------------

--
-- Table structure for table `messages_typing`
--

CREATE TABLE IF NOT EXISTS `messages_typing` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;

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
(49, 'media_cache_time_close', 'en', '3600'),
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
(188, 'storage_folder_max', 'en', '10'),
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
(206, 'ajax_request_limit_time', 'en', '300'),
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
(223, 'hash_messages_content', '', 'g::key::messages->content');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` char(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('54sREpumg8BtlHPKzWM7y8aeKuD2mNqtOKdOx3BuIA8', 1432049335, '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', 'ab220c17');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '7833f514', '0e96ed6ccaaf991d545aa06af99b8f85', 1431546174, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'sV3hVenGgqawjBnjWA1ZuB4iX9b+sOSazKtp0/slzq4=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1431546174, 1, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(9, 'faces', 9, 1431790463, 'ba6f3f1a', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'PZWCCetxSf04UoRms5xlbnJjSEYp6cOQ3Ctlq7QKhwG+n1q1T/jpo1vz7EtfCBd0FwVgxv+KkNpoB2XugqNZdQ==', 'D9mueBASvQgzSGibH9kuRvDd/6VUeIjlXbKnj0lD18TdbKoCJYtlRM4lPpq2o8gHNW2i2Ac0JgwovZDEw9cl0g==', 'image/jpeg', 'd77e899e', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790463, 62556),
(10, 'faces', 5, 1431790468, 'dd590aa5', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'bpkJJOg/erE8N3ugxWRz7cmzPcvYbV2CZ1XFi1VYtPxBVNn/AZnR3NrXO5nP9k+f2A5xrekMj6DpyHT+c0QDnQ==', 'ebPuMyoniTAO+bE+1fnn6yNxXSF2ffx1ojZKQ7FmHEXCgeaBbBMfEfVcZRm//Jswf6AajjfK3vNboPvT2+Rd9g==', 'image/jpeg', '8995d578', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790468, 62556),
(11, 'faces', 5, 1431790473, '814a4af7', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'f1EIvvLHnV2kM/OM6XugP7EgZF4eRRkMDw5gYlC44T33OeSZqg3KmwUDp2np0PxnWOl35iNhzfArN9yACvBfIg==', 'Qp9JVRsxKcSncyJNhUpkX9Ge3U1EoLo7+5R7pewPTCEGyY6+KNnW6tj6WF8s2Uh7kx7VHyTKadhihJbf7acy0A==', 'image/jpeg', '5bf0774c', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790473, 62556),
(12, 'faces', 9, 1431790478, 'c426bf21', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'Vd6C9T0/vxAXvaf3tKLJIrQUH7Wu60PAfkUivrPDQ+dVaZHLgyvE4btBfWg9G5O38LF/GM4NXacw/idd4V1r1w==', 'nsG5jBCxmhUBFawH6HdlirSzZeTeHiZfSGwyNZZiPImpTLmOIK8EU30X2q/GSFvze3NGGfX4+RAqWcd//w2z4Q==', 'image/jpeg', 'fd92b7d8', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790478, 62556),
(13, 'faces', 3, 1431790483, '2c71a6c3', '', 'daa6c7bd67ed51090f3f27d4960266aa', '0AKruSRcQ7NZJE+bM27GsERCuhDrChEhANwjcjKcgwx+Wzkj02n4x2sMBie7qsXqBaz9AvZZSgf5Ob12qjeK5g==', 'ehw4Nd32v8viXs/sZhOZ4ZkhComv9k2FeLmmzAVSgs849mE90V6sjgbAERCrg0Jhk4gYGRNw5JVbKuwhP+DVOg==', 'image/jpeg', 'e4038007', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790483, 62556),
(15, 'faces', 4, 1431790688, '7ebc2e32', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'wd7/6oILGjdn/4JsZutEZbtPMHzhJ3dLUMUUNYAQtPilkd8wb/PtZVPS/Yh/jirqnGZLh7rIDfOxY7RNq2dYiw==', 'XzsaRgS83Bde4USXfC5zyrL1l5T1aCdZ/Q2tD8y3moeysRHZKvdOUCLhitYJk8vJybIN2ao/OQJRDGqqVnGRYA==', 'image/jpeg', '7c0675ed', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790688, 62556),
(16, 'faces', 8, 1431790692, 'ed77d8fd', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'LlKZmthsGJu2JZ56rFJAdcMj1498LLVsr42EHKAu0PjPeV3AIuIqZmQpSTDeuyma9hOWgjRugKMILELHwf9MqA==', '6pfWpFoD7sUBYdoDyx774jh7NDhfVHLw8JmBSYTltEQ0glp07m8EQdTpD+g0HRC2cWtjo2HilX5A7FOGOb7yVA==', 'image/jpeg', '1a00f493', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790692, 62556),
(17, 'faces', 2, 1431790696, '555c807e', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'uJCI7y4fzVTtjYjSH70MFlZn7BT28hDOXD4Go75cmLU+i9IVFyt9Zj7D4hWZobF3mUh2yWrByPJHWfCWA+qHLQ==', 'uc0Blg6SpBcV7eQxKStBiALftnLhGfKa87EecxcWy3oZQzt52/00c2e6MybJUDQbOIcnjsaM9MxsDXkdDClX4A==', 'image/jpeg', '73d7cf04', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790696, 62556),
(18, 'faces', 1, 1431790699, 'e200ff86', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'KiQljdzVbMJjKeUOCdyFjgy6XDboGgVPuLHydR/+Hjw9l61Mzafj/UejZp4la1JV1/JPcM6CR8FMAhRw3Es1HA==', 'GUS9bqPbOq3do06QjipJMNalAbzTp5XezqDFPsX8+iJCcN3P2LUclPMxz2us6q92yl+smV4hR8kygYTWCM9r8Q==', 'image/jpeg', '13bf366e', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790699, 62556),
(19, 'faces', 4, 1431790703, 'a97945d9', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'oeRgpZ+l//MJiQti+S70O5V135rn1pESwkHA1EATgB6CgOs1uxk0b+YqCezoXjw1loOWKyzdhHXQEPW7CiBQPw==', 'jpkePeWHCa/MFiKguY9szOO+hX1VKoOi5ytuyfSNj6Hwgjl/xfCxVpY7CmeFarf9r/sblfE57M82TTH+7kWUFQ==', 'image/jpeg', 'b5f16dba', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790703, 62556),
(24, 'faces', 3, 1431790755, 'f3222bd5', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'raE1QOE54fI0KrhowaKlvY/9rSuvNcZVByLsvLq/wpBkZwJ6dZ3EMPLX4GZXD3mt8nCPZanh6vDDiFi7D5wjbw==', 'Ia5iDB6apJ0UFXZ652CeGc4LBteXbUnKGbvhwhBlBoctHAj6t7thBcC90yxU5NL5YHv7WY+xsxSiRofoiyfGCQ==', 'image/jpeg', '249761a7', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790755, 62556);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(5, 1431448099, 'adbddb2c', '9f1d2b46faf600704c3e3f0b8741d675', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'NlnzyvYoTkKBUlzFkgp78qSYBLySCj6X7jjqG4ylOzE=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(6, 1431448205, '8cf57000', 'ae4e4b63a02bf76a1d9dfabc7c946e3e', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/J13BttHqQzEdxvJcE0U1NQ0Zh3meXHdLnZOIvEmEYw=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(7, 1431448265, '4f3e603d', '6942ac59b6fede37dc777b8317fdf751', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/FVIkdvojCZDelpOywW9c0llcqh78Whc6ztUZqJQbTA=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(8, 1431448456, '7da0feb4', '84b5d5a26dae314b0400435258269f1b', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'WWXOT3BVq2ieHf6m8bRuD+RLg2Lp41ZDPk8wZcEjIic=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(9, 1431448487, '72fd14b0', '3bc41f10078073cb2b5118af5b104957', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'w2QTdlNvG3BTMBOWvUjdnS3XcCTmKqSfPUFSTrEFrS4=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(10, 1431448511, 'df489942', 'afa31570ee8152a8bf652bef8584d28f', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'dzpzbo8myv302WCk/91kUZiEi5XspnTAdrU5V7Eupk0=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(11, 1431449021, '8e833e0b', '368bd0a0bf63b9b2eb24e5e38a20bf5c', 'sdsdsd', 'dsad@sds.df', '0cfc685fbf85060b38e78034a0a0a81e60713707', 'nqfR2pevPIIeCwuPGKauyyY180fTlxBuZ0aEq0Wf2yY=', '', 'sdsdsd sdsdsds', 'sdsdsd', '', 'sdsdsds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdsdsd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(12, 1431449110, '1e55d9d6', '4c45bf7e2436a619476aafa7cb3ac613', 'asda1asdsad', 'sdsds@dsd.sd', '12c0df67744df35ba10c6c0a93eb73eefb597b91', 'K4oIt8TrpsFUHLCzvGktULWOrXCK+NLyC4BRixL5/SQ=', '', 'asdsddsad asdasdsads', 'asdsddsad', '', 'asdasdsads', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asda1asdsad', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(14, 1431449623, 'd3eba551', '853456af6de014778a55c8079829b52c', 'sdfasdf', 'sdfasdf@sd.sd', '38419dae304a89840014bda5570aa0f5cab782b0', 'RmMjd59/scrynSoM0fSOwdwQMtISITO2iwwtrAHVQJc=', '', 'sdfasdf sdfasdfsdfasdf', 'sdfasdf', '', 'sdfasdfsdfasdf', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdfasdf', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

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
-- Table structure for table `users_follow`
--

CREATE TABLE IF NOT EXISTS `users_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 1431482041, 15, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(19, 1432043417, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_tips`
--
ALTER TABLE `photos_tips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_views`
--
ALTER TABLE `photos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
