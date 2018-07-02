-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2015 at 05:56 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=latin1;

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
(573, 'en', 'type_name_messages', 'type messages name (default: auto)', 'false'),
(574, 'en', 'messages_not_exist_maybe_has_deleted', 'messages not exist, maby has deleted', 'false'),
(575, 'en', 'may_say_hello', 'may say hello with they', 'false'),
(576, 'en', 'not_found_old_messages', 'not found old messages', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(21, 1432214173, 'user', 15, 'add', '', 0, 'status', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(2, 1431448990, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(3, 1432140873, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.152', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safa');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(12, 1432264264, 30, '8a5020aa', 'cd1734f2bcf55f927b6b4e2c54acbefa', 'user', 15, 'S7Dvyr8U9pleeH52XfvL9K3L2PTsWE1YRWlhIRsnUgM=', ''),
(13, 1432264267, 30, '2f3d0136', '455425036dfe3768e511a923a5c2163e', 'user', 15, 'tE/KwxBt8rYM4fEo950lA+mHzqTxB9G5P+n/Q9qftgE=', ''),
(14, 1432264268, 30, '06311e09', 'c4c54d0534625b827f5ee27b2fa96943', 'user', 5, '5upUMzT52bl11eVpEel3dZywelPyxUSboqy+oIRZq4A=', ''),
(15, 1432264270, 30, '9381f599', '066ce36353de75a1cd4766f15dd4d549', 'user', 15, 'fzx+0rbFJcAzhAaknRiomgrabQxpM6wWm0hzjIiQv/s=', ''),
(16, 1432264412, 30, '31d2d827', '8dbd28f2dc9e236a3eb6d822d0c0250a', 'user', 5, 'QukSP/pwyp6B+8XRR6zNE5R+q7pMSCnRrmLlFQNIkXs=', ''),
(18, 1432264412, 30, '31d2d827', '8dbd28f2dc9e236a3eb6d822d0c0250a', 'user', 5, 'QukSP/pwyp6B+8XRR6zNE5R+q7pMSCnRrmLlFQNIkXs=', ''),
(19, 1432264412, 30, '31d2d827', '8dbd28f2dc9e236a3eb6d822d0c0250a', 'user', 5, 'QukSP/pwyp6B+8XRR6zNE5R+q7pMSCnRrmLlFQNIkXs=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES
(30, 1432222579, 'df75c492', '565bee5f72d1e826e5b13ae0aa49a511', 1, 'groups', '@asdasd, @asdasd', 'vi');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(35, 1432222579, 30, 'author', 'en', 'user', 15),
(36, 1432222579, 30, 'members', '0', 'users', 5),
(37, 1432222579, 30, 'members', '0', 'users', 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

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
(223, 'hash_messages_content', 'en', 'g::key::messages->content'),
(224, 'messages_update_timeout', 'en', '3000');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 15, 'user', 15, 0, 1432051085, '5a532833', '8dae07ac97b8a31727c280491940b369', 'ef19c165.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'd3a4e4b4329bf19d4479cb6f841637cc.jpg', '48f2726ee4f9af0b5fddbcb515454b70.jpg', '25c7ba34f1914f110e0eccc586a06296.jpg', 'af157198f535b6368939cb90026c7da9.jpg', 'fa4694044b7b0446f637af53483aa7b6', '7e50192708e693bbde7e59795d5afd7c', '5482caf667fd514c0480c4876fe2ebf1', 'e5d3fe0eb62dee031368dd45650eafe7', '43e2b107', 'ed718a32', 'af410299', '08e11cab', 2158, 2877, 'f/2.8', '95/32', 0, 1432051080, 374785, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(2, 15, 'user', 15, 0, 1432051223, 'ef6b2125', '3f861d49e7661f4d2c0a3ccdcc6deff4', 'a79bc602.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '056d3f6acc796f8e24325f191abd7d13.jpg', '604d89ab4f516f2d63e7d2be01ef62f9.jpg', 'b8bd173658b6280a1f2e871cc7d02815.jpg', 'a4d5ce010273a5eb05fe9f2c80c36e5c.jpg', '850b159e4cd63b2ed57399d4297ca245', '4d4b904b148cc8d9e7920537c5628b0c', 'd36e266546fd4bdaf15f23799c51ada3', '2a39fa12731aaf09f6cb5ead6f3ed6d4', '9736054b', '3cb0e53e', '5ee65d09', '676f1ef3', 2158, 2877, 'f/2.8', '95/32', 0, 1432051203, 2431812, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(3, 15, 'user', 15, 0, 1432051278, '579b2df4', '8227a0dba7363a95a864e8f32423ee56', '13b39194.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'c480aaa6c1789c1d58f5716a9307a462.jpg', 'fd124848b9ced3ccc870753fcd8193bc.jpg', 'a912c19acb7956f0acda023e2a1c7dc0.jpg', 'bb2160dc69bdb6fa758995e743b5c56e.jpg', '939e0dd4cb98489285099851cd0b6f6d', 'a09686187a6120f3147c8b5724480ef2', '28eefabd91da4a290ca17f74f7721261', 'c8bf4c239e573c38bc5b6ec20b69f084', '1aaf46de', '5f67b421', 'dc4833e4', 'f8ccbd26', 2158, 2877, 'f/2.8', '95/32', 0, 1432051272, 1815494, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(4, 15, 'user', 15, 0, 1432051327, '11c05bf8', '8461f4cd13d76e67975b3e7d80233363', '7958b533.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '640ba19fffd5649e345db867e1806d54.jpg', '8e521ac71a6bc22a620c3e8fac73421c.jpg', '699c86831f61c608553eda848ab1b55e.jpg', 'bf83b5e86c8d782f6134032dde7564c4.jpg', 'b5709c3e1f471436aca52e672cd0bdb2', 'e4d89fd5717422c3f37cc2dec8f86acf', 'b68edade64b8b79f36adbf308262a173', 'e6f92563995501a1dceeefc95d15f073', '7006d245', 'ed74506c', '6b274276', 'f3aa9e8a', 2877, 3836, 'f/2.8', '95/32', 0, 1432051323, 3069106, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(5, 15, 'user', 15, 0, 1432051385, 'c4cf243a', 'b95a4868493df7e8301c12907476d222', 'ab042cbc.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '28cec18d8d29983042700733206cefb5.jpg', '9e799a999422bbfd2f304467b2f3d9ca.jpg', 'b17f6c7e6f202836dfa8ed6152acc513.jpg', 'dbdace3b92db1ac52439817aea8847fc.jpg', '37aaf7392ef7dae8f38ca81ea7771517', '043cf8e7cfac66e1737bbab2050dbe7b', '1c2e5a1fd55b6c7320a17445cd8b3173', '220dab04a8651882ab7b571d18f5202a', 'ac763230', 'f187ed84', '880aedb8', '95b952fd', 2302, 3069, 'f/2.8', '95/32', 0, 1432051379, 337577, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(6, 15, 'user', 15, 0, 1432051455, 'e7138165', 'cded99d4aa9c8477d33896d4581d435b', '08bcf1b3.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '536562be57f47c02d4c4674238475000.jpg', '2fd37689d52be0929c531bab0665ca0d.jpg', 'cd35f9e81fbd43d922311a2fe5e956c5.jpg', '98a59d8dd5c1a62d9126ac3182e27a40.jpg', '3701e94230b56a3573f981e5aa02a6eb', '54f25fc28b3d6e7196c2badfbefad578', '4e8dcf4d25bdc796cea8d3312fb56217', '3d8ecacf895d4f2932781b3700dea149', '349c3f1b', '6b70b215', 'f09f58ef', '7866a590', 2158, 2877, 'f/2.8', '95/32', 0, 1432051449, 267468, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(7, 15, 'user', 15, 0, 1432051647, '9b7892ed', 'fa153c36bd95e86938264cc2441f8ebe', '0fc27815.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'd280d752401863b5c3aa9225aa6fcb40.jpg', '24f45f0736e879b524cc2b577bb2fcd9.jpg', 'facf40e7ebbb8f73cc61cd6bd90e0382.jpg', 'f3abdebb7625ef95bcba34d5129584f9.jpg', 'fa4694044b7b0446f637af53483aa7b6', '7e50192708e693bbde7e59795d5afd7c', '5482caf667fd514c0480c4876fe2ebf1', 'e5d3fe0eb62dee031368dd45650eafe7', '696b4484', '91c23dbe', '944094d9', '1c6e6e83', 2158, 2877, 'f/2.8', '95/32', 0, 1432051633, 374785, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(8, 15, 'user', 15, 0, 1432051716, 'bb1775f5', '84387f56d3f1d021f20883f2743991d6', 'ccdf17e6.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'b345c95f59f312c8937bb8d0ef2681ee.jpg', '9bae6e81e460f98d118d04ff9815c68f.jpg', '6f8f331fbdaf4fcee3d236a3346ffaf5.jpg', '0cdfd42439902acd38e28941a8923157.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'bbd316a4', 'e7a93ec6', '13030303', '98ea37d3', 2158, 2877, 'f/2.8', '95/32', 0, 1432051698, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(9, 15, 'user', 15, 0, 1432051906, '94d43768', '9539786f77d0fc36a8b80f49cde7aae8', '21551e01.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '9a0bf5a528681c98fb5126e2e96d0327.jpg', '66778cbff093bb132c34cf6f04535954.jpg', 'f98cd7e173163961aacb26591277fef9.jpg', 'e5eff87f4aecab8216b9a14ef23dc18b.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'ea10423a', '1462d4fe', 'daeb99ae', 'cecc7caa', 2158, 2877, 'f/2.8', '95/32', 0, 1432051895, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(10, 15, 'user', 15, 0, 1432052165, '3209160c', '408d0dd2bbfc6b2e137b2f3dbc612739', '38160140.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'edc14b2625790df717b631fff2321c49.jpg', 'da9684d1f737bfddd7f3633c2beffbee.jpg', '68123b9b0e58c7adf664a9ce399a9027.jpg', 'b13fbafa084abd815f5bb3cbedabab7f.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '822783cd', '24cc6310', 'db8e1d38', 'deb6d4d9', 2158, 2877, 'f/2.8', '95/32', 0, 1432052159, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(11, 15, 'user', 15, 0, 1432052377, 'd6fc0be9', '660b561cc5d4ecdbde52a927433a6547', '89c60f20.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '964703defd8baa1c285e23a0ae6d0601.jpg', '19d7e8bf26ad9ee5cc5fc0c0c1b5ff69.jpg', 'f3c0986bd91334447ffdd662361d69be.jpg', '7540dd9de7ef63928177eabcef9edd71.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'c24c67ad', '589037fd', 'f492494b', '52b06e63', 2158, 2877, 'f/2.8', '95/32', 0, 1432052365, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(12, 15, 'user', 15, 0, 1432052430, '5b2220bf', '2b536c59bd4b299edab1822c5996fd1e', '1c2a50b2.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '27260f79ff66ebc1a2c44dea670e2b4b.jpg', '0e60048c363bf3747a4de01674f05ac8.jpg', 'c3c05d6c16cb075e5e0bc2b9474cf696.jpg', '307395a2e84b5edbe21f705790583133.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'eefd1d68', 'f534a2d9', 'd92971c4', 'ca727853', 2158, 2877, 'f/2.8', '95/32', 0, 1432052425, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(13, 15, 'user', 15, 0, 1432052517, 'b309e341', '6f5dd51868492e9227d1b8a23b226d05', '6005121b.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'eba8fd2f6c535333e68bc9325502f253.jpg', '9601a2f93871f8d1145da946023a9c8f.jpg', 'c5597a83c0eac505986cda1d53243247.jpg', '45e011b79930663c929b198d71791825.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '6c486bfc', 'e2b89e30', '63a1b1e8', '196af27b', 2158, 2877, 'f/2.8', '95/32', 0, 1432052506, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(14, 15, 'user', 15, 0, 1432052597, 'b39aaa65', '43e2d6994d7401a4c09481369ddc8fa9', '5d63348e.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'b830d1589d6c84bd3eec407393d78461.jpg', '3a5494e0df8da894756b4cfe410d3373.jpg', 'aac36c791d2fc1cf65ca3bda5b2ab5e0.jpg', 'be0365323c9c06f8b08918488e2dcfa9.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'c52c9ad1', '69c9ab9b', '92127110', '0b789d6e', 2158, 2877, 'f/2.8', '95/32', 0, 1432052591, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(15, 15, 'user', 15, 0, 1432052854, '8ade564d', 'fcfcc54d53dd20af95ac5ce26b6c3e78', '7e4a239c.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '992d80912cc0673d3af8d4bc6ada208a.jpg', '08ede463642a275da191f3f9e8cf2237.jpg', '29c0ee0ef851ef45fd93775733f716be.jpg', '7c38d007c2eec7f4082b88621407b315.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '365d7670', '4e5f8960', '260f5450', '3468b9ed', 2158, 2877, 'f/2.8', '95/32', 0, 1432052848, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(16, 15, 'user', 15, 0, 1432052901, 'f9d94fe8', '3faf388aa74f3bdfee9153ea6b60635f', '4c0e0f6d.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'fbfa95cf0810d9692ccecb9c6b9f344a.jpg', 'a28f468a880a889ee8b74d32a4bd6739.jpg', 'b5f500d7ec60554fd6d8396578175f35.jpg', '4277873f822812a9bf8aae49a0cf4df8.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '06760413', '3784ac10', '46e90382', '13e984bb', 2158, 2877, 'f/2.8', '95/32', 0, 1432052894, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(17, 15, 'user', 15, 0, 1432053047, '3b66e383', 'd7ad12111e2793d2606cf27f8069845a', '575454b0.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '3f3f9f7ec0048d223a32a43f7fe230d0.jpg', '90ad94aeb507beeb04be573c489c18a0.jpg', '4a4084dc05dbfe342d0774869b2d427b.jpg', '72a9cb611124aeb679fed9f5e4d3a1bb.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'b9d3c1ac', 'd35ecabb', '9381a1e2', '031d59d0', 2158, 2877, 'f/2.8', '95/32', 0, 1432053040, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(18, 15, 'user', 15, 0, 1432053216, '92b881ef', 'f5cc7179c8c990ffa89882109d2d5b7e', 'a9005d29.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '6209a49c7add597cf676ceebf78abc15.jpg', 'a9a172c91be43af146927dfea83bd0af.jpg', '7b9aae6ea3618caf9a5013079c5413f8.jpg', '', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '', '4d458318', 'c4333210', '28b2aa55', '', 2158, 2877, 'f/2.8', '95/32', 0, 1432053203, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(19, 15, 'user', 15, 0, 1432053292, '0c28cdfc', 'aad0a2088d3b38d70c1cf274dc87fe31', '446e3fb9.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '1dffdac4bde5144721faa02b878eeacc.jpg', 'e7fddc554589267dd8ed115560882ce1.jpg', 'd8168aa226321ea7a024f24c8bed70c7.jpg', '921ac8f8f177b1bc2386a132399bb44e.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '06ac338e', '12140afb', '4c374905', 'c617f8c9', 2158, 2877, 'f/2.8', '95/32', 0, 1432053287, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608');

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
('yoZZcDuTYG2o4oOf4I5b6Jm74hdunNHTb6At7Mgr-u2', 1432266967, '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', '0b8a5079');

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
(1, '353fe9fa', 'f836fa1e87b0184a214fa6a8cd4b6f95', 1432214173, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'U9Q+PeiY8DCd8qrZc8BP6FAGs29JeA8z4SjaD6ocveA=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '96cde9e8', '182f3e4bbd3c0d1aebe5f697a78dee68', 1432214181, 'status', 1, 15, 'user', 15, 0, 'BTnNRmBjgYgqjJJTLKTND1YsaK3zZUUxC9VAIyKtjog=', '');

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
(1, 1432214173, 1, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

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
(24, 'faces', 3, 1431790755, 'f3222bd5', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'raE1QOE54fI0KrhowaKlvY/9rSuvNcZVByLsvLq/wpBkZwJ6dZ3EMPLX4GZXD3mt8nCPZanh6vDDiFi7D5wjbw==', 'Ia5iDB6apJ0UFXZ652CeGc4LBteXbUnKGbvhwhBlBoctHAj6t7thBcC90yxU5NL5YHv7WY+xsxSiRofoiyfGCQ==', 'image/jpeg', '249761a7', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790755, 62556),
(32, 'drive', 1, 1432051075, 'd06fe42b', '', '94468469a47333bc6f05a4e926a1b68c', 'hDJIhT79eVQpT6wy3O5uHSP+On5bgstW6EZgdYx0dlzSioF82ZC5SCxCB2JTR2DrfTtE9CnzToz2jns3NVrkoA==', NULL, 'image/jpeg', '76df718f', '11322255806_7110cfb945_o.jpg', 1432051075, 3778260),
(33, 'drive', 1, 1432051081, '461ecde6', '', 'fa4694044b7b0446f637af53483aa7b6', 'zxs80WZMOmihv7Y6XYyNJ/qDN6utkGDTM6aqLv7WphFPOTFTM0X1gHZItOxYe/XrPfphEyxL42G9senLaehvCQ==', NULL, 'image/jpeg', '43e2b107', '11322255806_7110cfb945_o.jpg', 1432051081, 374785),
(34, 'drive', 1, 1432051084, '3f8fea2f', '', '7e50192708e693bbde7e59795d5afd7c', 'sBqV1tEF00p1gXHcX09HEZMlCh2RsA0zpaWWXEEEUfrecbGmuUnfA1ttCFpq6iSZdSY0WVPX30Fr1970bdPrQg==', NULL, 'image/jpeg', 'ed718a32', '11322255806_7110cfb945_o.jpg', 1432051084, 374785),
(35, 'drive', 1, 1432051085, 'b5ed67b0', '', '5482caf667fd514c0480c4876fe2ebf1', 't27Kpnuwy1+ZpCvnlXEgvSh8OSKq9wsgp/cn51Paz38HfGepw9BiX80hfBzxOgJzyQxOmpAiQIieAK2YzeZOKQ==', NULL, 'image/jpeg', 'af410299', '11322255806_7110cfb945_o.jpg', 1432051085, 374785),
(36, 'drive', 1, 1432051085, 'd1e343b4', '', 'e5d3fe0eb62dee031368dd45650eafe7', 'AgCayvf4Oj5Sl+grZJnWaycmCjgeJ7NLiXNqEWnFqJ9tBEEIP63dDkhcEP+oX+gK0faCsQJL1HtRUv/zW6Q8mw==', NULL, 'image/jpeg', '08e11cab', '11322255806_7110cfb945_o.jpg', 1432051085, 374785),
(37, 'drive', 1, 1432051197, 'ba980e10', '', '94468469a47333bc6f05a4e926a1b68c', 'mglfbWlR5rnncTnGkwTyE6PhkUWHwPqDXeWCJMI7jgCDt9RiAhjxHxMlRNYEILRaLTEBzpIwzyc8F1hRNXmzMQ==', NULL, 'image/jpeg', 'e580466e', '11322255806_7110cfb945_o.jpg', 1432051197, 3778260),
(38, 'drive', 1, 1432051218, '81e63b1f', '', '850b159e4cd63b2ed57399d4297ca245', 't7O3jOvbG7WfbdGB5qYPAmVXolVXieBoTV5tLQn6Xqdcr/sw0YcGP9vrPtCdrtDotWjqi7zluFNz2xsPlNkYMg==', NULL, 'image/jpeg', '9736054b', '11322255806_7110cfb945_o.jpg', 1432051218, 2431812),
(39, 'drive', 1, 1432051221, '8b54b23b', '', '4d4b904b148cc8d9e7920537c5628b0c', 'SDk8mOkyGHkxq8GKDgmKvgahKQh6rwh/CX4H9Vjc6WTyOFawhfMKQLU2I4AC/1tWsS7ArbAcXODisql4I8mGsQ==', NULL, 'image/jpeg', '3cb0e53e', '11322255806_7110cfb945_o.jpg', 1432051221, 2431812),
(40, 'drive', 1, 1432051222, '52255750', '', 'd36e266546fd4bdaf15f23799c51ada3', '4sZKQu4hX/bhJ3EytGNs4WgtDwBnsXw3SWDTREC/+H8zhfHUwotPJ3TYhQwfw+v0Pc3UAyqUR0kr6h+Bmc7Mvg==', NULL, 'image/jpeg', '5ee65d09', '11322255806_7110cfb945_o.jpg', 1432051222, 2431812),
(41, 'drive', 1, 1432051223, '4d4e425b', '', '2a39fa12731aaf09f6cb5ead6f3ed6d4', 'husjggquvpKZVh6OtS9qkEpbk0zl5SclVt34MnNlh6a1QYIOb/BSlcme9u4nEg6mLNaTYpdBRxjxl9S1XiPwZg==', NULL, 'image/jpeg', '676f1ef3', '11322255806_7110cfb945_o.jpg', 1432051223, 2431812),
(42, 'drive', 1, 1432051269, '42418fd4', '', '94468469a47333bc6f05a4e926a1b68c', 'RMDtKkUKjLX/jS+xD8I/3KII3Utj/sERWrF1XdsI8urHs6EuS6l9T/Jl5iWSB6vOQ7bgdXTj2zoODJQXmiCd+Q==', NULL, 'image/jpeg', 'd7ddf98b', '11322255806_7110cfb945_o.jpg', 1432051269, 3778260),
(43, 'drive', 1, 1432051276, '821ba2f7', '', '939e0dd4cb98489285099851cd0b6f6d', '8iT/DR7ekjSWKWkgZF0sRwX9eRdmAuqJ/ADu99TufLgimp/cRXq08OVACxCs4lO4MZePyBO55lcbYLNzmrIHyQ==', NULL, 'image/jpeg', '1aaf46de', '11322255806_7110cfb945_o.jpg', 1432051276, 1815494),
(44, 'drive', 1, 1432051277, '43646c29', '', 'a09686187a6120f3147c8b5724480ef2', 'bvwgyyu1YxrhSV05gZZ9vZpMt9IUThKw8B7K3Tr7XyciPXSbHWVnKja71+8fUc2sfYJNHgRN7i2DNN8R/TIIhQ==', NULL, 'image/jpeg', '5f67b421', '11322255806_7110cfb945_o.jpg', 1432051277, 1815494),
(45, 'drive', 1, 1432051278, '6cde1437', '', '28eefabd91da4a290ca17f74f7721261', 'Y3vsp8zg2SguAODDLXMPvJWRbjGvVWPgwJUoe2m5J3lRRV+ZLmRLOrVJtMogGsQzVEK+2SHcw5CUz7d2/7BOKw==', NULL, 'image/jpeg', 'dc4833e4', '11322255806_7110cfb945_o.jpg', 1432051278, 1815494),
(46, 'drive', 1, 1432051278, 'cebd1f39', '', 'c8bf4c239e573c38bc5b6ec20b69f084', 'ye6aSbYGyxwTmu4Hlvi57VmXeumSWJGoRDe5WYDNHGzKAzZT93TXNsZEojK9qhz7yIUbiImgKBTOlts2ZmSUzA==', NULL, 'image/jpeg', 'f8ccbd26', '11322255806_7110cfb945_o.jpg', 1432051278, 1815494),
(47, 'drive', 1, 1432051320, '91894608', '', '94468469a47333bc6f05a4e926a1b68c', 'UndiHyzasikqVeQTAzVEmoGAAvVsC8cads5g5aaXF0847OuQu72RNM6HKNsZqmJ7k0/QNwkgzeajdCVoquc2Ew==', NULL, 'image/jpeg', '8423e384', '11322255806_7110cfb945_o.jpg', 1432051320, 3778260),
(48, 'drive', 1, 1432051325, 'e58f6967', '', 'b5709c3e1f471436aca52e672cd0bdb2', 'Hez9tHZEOjWhnHc7Tf5oLVXdKO3U38PLJCWXx5OatXSQkua+18QR9xG4HeWHn7rKK74DcpIkIGkLLTz2tRYm4A==', NULL, 'image/jpeg', '7006d245', '11322255806_7110cfb945_o.jpg', 1432051325, 3069106),
(49, 'drive', 1, 1432051327, 'f31c4cad', '', 'e4d89fd5717422c3f37cc2dec8f86acf', 'sRMRnTOq+73TGwi4BETChTPZzlqvjpAfv087EDG/z9fRFP3PMhzEcSzgh/fBxtxUbh7M8CsOoHKRcCxMtwEAPw==', NULL, 'image/jpeg', 'ed74506c', '11322255806_7110cfb945_o.jpg', 1432051327, 3069106),
(50, 'drive', 1, 1432051327, '6485dbfe', '', 'b68edade64b8b79f36adbf308262a173', 'uMH+qukBny1XnQuhBdfkaqE1ZzpmiLpBLokPteDEH4xYOe3ZAM1gcvpGH3E9tW0dYZdWoT8u7l1c3jvb4BmNGQ==', NULL, 'image/jpeg', '6b274276', '11322255806_7110cfb945_o.jpg', 1432051327, 3069106),
(51, 'drive', 1, 1432051327, '3402d2ca', '', 'e6f92563995501a1dceeefc95d15f073', '2GSt6aDqUveNe9faw8Id2ilufe9g9vCa3gOOvsG0I62gt7XJZJ2szmWn53qCVMvk0PTmiKuvHXXWTzuNi3cyNg==', NULL, 'image/jpeg', 'f3aa9e8a', '11322255806_7110cfb945_o.jpg', 1432051327, 3069106),
(52, 'drive', 1, 1432051374, '3115d97f', '', '94468469a47333bc6f05a4e926a1b68c', '73tfACF2boPV7hR/LrO8ihMAAPINwrgsUo/LMnRrdcZrNzNipTZR1RmkxmSSxlTbi7ffuG69Xn13WcKTEsTzjw==', NULL, 'image/jpeg', '3f4e461a', '11322255806_7110cfb945_o.jpg', 1432051374, 3778260),
(53, 'drive', 1, 1432051381, '6cd1a372', '', '37aaf7392ef7dae8f38ca81ea7771517', 'dXPhhetZ78dmhcPMVUOFwAenlHE7ZzepeYCpTGDh//6nw+daA5C91hqYKgffGXLZBYiLEpv+gEntoUGNvIz6BQ==', NULL, 'image/jpeg', 'ac763230', '11322255806_7110cfb945_o.jpg', 1432051381, 337577),
(54, 'drive', 1, 1432051384, 'ab89b81a', '', '043cf8e7cfac66e1737bbab2050dbe7b', 'mcPwA76OT86RbhRWMJ+uAIzu0iEKu3Ei9RySAH0rAj2+hYntJxKy3Tnv6JzwvxtuZpGgMRKoTtmFpHod+egnpQ==', NULL, 'image/jpeg', 'f187ed84', '11322255806_7110cfb945_o.jpg', 1432051384, 337577),
(55, 'drive', 1, 1432051385, '8be7412a', '', '1c2e5a1fd55b6c7320a17445cd8b3173', '0cinngZyR6iY2aalkfOH6cX4QesedopHCA9h4ma5Ej/oKyPKdfWJJwGWfoReoI6vHj0MJ0LXWJIEruSx2d3GBA==', NULL, 'image/jpeg', '880aedb8', '11322255806_7110cfb945_o.jpg', 1432051385, 337577),
(56, 'drive', 1, 1432051385, '060d9ade', '', '220dab04a8651882ab7b571d18f5202a', 'HCpHCzdgpEuHk1hRroyI1SXv4QDANbExtOSvsEUY5ID8Ol8Rk2SfJ/AHcNPDXoFfsgWNcYWB5KxBvSDBw6BgBQ==', NULL, 'image/jpeg', '95b952fd', '11322255806_7110cfb945_o.jpg', 1432051385, 337577),
(57, 'drive', 1, 1432051443, 'edea8d63', '', '94468469a47333bc6f05a4e926a1b68c', 'abTlDdEqzT0xHeUYBYY8QqtdwTrnYutPLAk0S7s29FW4ci88ygxun1aFKY0jteCV+/I32ocqL7+1ehjWycXV4g==', NULL, 'image/jpeg', '94d84f02', '11322255806_7110cfb945_o.jpg', 1432051443, 3778260),
(58, 'drive', 1, 1432051451, '17e1eb2c', '', '3701e94230b56a3573f981e5aa02a6eb', 'ZnLEuY/kxpjGcm1VlqxuPjlB7i2N0S6Hs89AvU1XPOE50SPsKpRJHVcn2pfZKi8PNN+hoZECKzoi8239cZ5F2A==', NULL, 'image/jpeg', '349c3f1b', '11322255806_7110cfb945_o.jpg', 1432051451, 267468),
(59, 'drive', 1, 1432051453, 'a7c001c5', '', '54f25fc28b3d6e7196c2badfbefad578', 'GTFozIwnz8E1vLhRj4jATy/vyUS0sm+G68+XzqB1wOn+qVOH7+/PoalpOEV4kZyoFQGD7M1nvRKHeZBnK7LJwA==', NULL, 'image/jpeg', '6b70b215', '11322255806_7110cfb945_o.jpg', 1432051453, 267468),
(60, 'drive', 1, 1432051454, 'ceddc34b', '', '4e8dcf4d25bdc796cea8d3312fb56217', 'NDxyDZDxXDZtS0+vha4hlhmTctJ4EH9+sewdCLI3uHdcs8pfEiCTP1IFRUyY+TEYEfIecfKM2OFfHZaOTHuUSA==', NULL, 'image/jpeg', 'f09f58ef', '11322255806_7110cfb945_o.jpg', 1432051454, 267468),
(61, 'drive', 1, 1432051455, '8628b8e3', '', '3d8ecacf895d4f2932781b3700dea149', 'CAPXy6FuMt3YqVIZ4j4eblI11RnUUGPhNNhc1E+B3n4EK8dQP66RKK9KHSYAiVD+kRSuM7cidF/mB5xSi063tg==', NULL, 'image/jpeg', '7866a590', '11322255806_7110cfb945_o.jpg', 1432051455, 267468),
(62, 'drive', 1, 1432051627, 'c7737812', '', '94468469a47333bc6f05a4e926a1b68c', 'Z1yBJZgp/WeB6OH554nfQedJtUplaWa1Kd6bYLhn6BimD9UXWasYrqp0UhLm0Uzru6G1C/MYvlxpWiWo58a9eA==', NULL, 'image/jpeg', '8c82bf8f', '11322255806_7110cfb945_o.jpg', 1432051627, 3778260),
(63, 'drive', 1, 1432051641, '403b2b2d', '', 'fa4694044b7b0446f637af53483aa7b6', '/x7A1Mp2v7CxhD4+PRtbiFpr7pJ63lWgQokVicYKSSzkKyq+To1qpcqAKJdK83zwC1+cVYNz/L+qoMRmLx1oFA==', NULL, 'image/jpeg', '696b4484', '11322255806_7110cfb945_o.jpg', 1432051641, 374785),
(64, 'drive', 1, 1432051645, 'a919112e', '', '7e50192708e693bbde7e59795d5afd7c', 'J7R7UB/wcu/eg5GJT5VJMCHD+sw/t5qpd6a1B0Wxd8f3gNgzmlxoKnTAIMB+selvREbNHyfXqyHUHoOtqEAzTg==', NULL, 'image/jpeg', '91c23dbe', '11322255806_7110cfb945_o.jpg', 1432051645, 148674),
(65, 'drive', 1, 1432051646, 'c53f6640', '', '5482caf667fd514c0480c4876fe2ebf1', 'BOfaPE6TKpJ1YtXJ9wscv1xV5z3IiJcplsjbxo/Lf5sytzLP5q5IGCubKuOB5UQzCQhL1G54xH2zwZjIQyER7w==', NULL, 'image/jpeg', '944094d9', '11322255806_7110cfb945_o.jpg', 1432051646, 69463),
(66, 'drive', 1, 1432051646, 'e62a58a6', '', 'e5d3fe0eb62dee031368dd45650eafe7', 'f8nez+llDFr4fecmenwIlsdXyoOEPRCg0Qgytf+tKvjiqIM8Q3r4MPxpBzQilHhhsRnkEXcnxZm33F8OdC5HHA==', NULL, 'image/jpeg', '1c6e6e83', '11322255806_7110cfb945_o.jpg', 1432051646, 38743),
(67, 'drive', 1, 1432051694, '3f9e36c8', '', '94468469a47333bc6f05a4e926a1b68c', 'KPuZeyhqf/ciO17OY+02hrkGip1k+8VZ+YlVTeQy2ruWjrakyH4zvCvcNRhRzB8Q1jEiGMc6BPAIZSCpnr6mZA==', NULL, 'image/jpeg', '839ee0bd', '11322255806_7110cfb945_o.jpg', 1432051694, 3778260),
(68, 'drive', 1, 1432051712, '29f17fb4', '', '1d578845874dd88c35a387ed8867d6cf', 'iVgSwC6c3WheNNdlVdjcHD4n8BDvFe8UuitIfsyM6QHd2kR832ZnJLrKsx3ayQtGBXIRrR8wqQD7sDZaGpir2Q==', NULL, 'image/jpeg', 'bbd316a4', '11322255806_7110cfb945_o.jpg', 1432051712, 382739),
(69, 'drive', 1, 1432051714, 'f9bfadd6', '', '10f5a81ff43a38af552e5df53935db8e', 'kDxd1esqPF0sS/IIbLtG9FkDlvcveMz0OHCngD8hx1IXF9IqeHc33jzcpjlOU566wt8M5go8lMGsOCRxeeeQlA==', NULL, 'image/jpeg', 'e7a93ec6', '11322255806_7110cfb945_o.jpg', 1432051714, 149067),
(70, 'drive', 1, 1432051715, 'bed03e0e', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '953Z2AuNhY9XS6XLLqlXwlCW0nioIbJb/LhpvRpz4jsSN8leDNtt9x4edGoJJD2Zxhq4PDWF6zQ9k4OuNZOOIw==', NULL, 'image/jpeg', '13030303', '11322255806_7110cfb945_o.jpg', 1432051715, 69417),
(71, 'drive', 1, 1432051715, '949e99f7', '', '7e79dd4f6123fc3047580388565f24fc', '3gpjBnkua4y5geOuLRwB26FAQ+usR7pTauaSUrFIlBy41gKJmxV+/zj1YSkefKZM6X75u3d8BW1sjgR1yq4AVg==', NULL, 'image/jpeg', '98ea37d3', '11322255806_7110cfb945_o.jpg', 1432051715, 38736),
(72, 'drive', 1, 1432051892, 'aba85175', '', '94468469a47333bc6f05a4e926a1b68c', 'HYKS1I0tF1NtosB0PR3hu7Vqytzy8wy99TgbbJzkEZyE4MzQsD6dqf/A/AB8JHOY4vWb6dnnzAAl3n2KZ7Zuiw==', NULL, 'image/jpeg', '1eb691d2', '11322255806_7110cfb945_o.jpg', 1432051892, 3778260),
(73, 'drive', 1, 1432051903, 'c7869e15', '', '1d578845874dd88c35a387ed8867d6cf', 'vUCO3sTuP8gwe3GcjLpmlmGTPzZyoeSiCk4+DyW2oqgwv2IOKaNJkngu7tduyXNAVOMXIrcm9usTp9/u4YB5eg==', NULL, 'image/jpeg', 'ea10423a', '11322255806_7110cfb945_o.jpg', 1432051903, 382739),
(74, 'drive', 1, 1432051905, '7637c283', '', '10f5a81ff43a38af552e5df53935db8e', 'DS+raT3aXrCKAVpAqMhk+ry4FQDES8ROx9Ct4Rvq72u0YKj7t7yXUmePjKhXSdaBL6aloM0GXSDh95QmDxtRNQ==', NULL, 'image/jpeg', '1462d4fe', '11322255806_7110cfb945_o.jpg', 1432051905, 149067),
(75, 'drive', 1, 1432051905, 'd61f1f9a', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'UzZ7zJ1irU8rO06KNNmJkiP2Tffw9oarQItAu8qyCuDYXp10liHkMivk28SV9PVl6iTm9lvW3BvkAyTvg4LpUA==', NULL, 'image/jpeg', 'daeb99ae', '11322255806_7110cfb945_o.jpg', 1432051905, 69417),
(76, 'drive', 1, 1432051906, '053c9b9b', '', '7e79dd4f6123fc3047580388565f24fc', 'naU2ludhNwBbRJLky8SyrQdrJupmNgWBixVuEBaLg9faUvXAqCGeP5S4wvzTwdTEb7pLhLYjWdrGn7Es+RhZfQ==', NULL, 'image/jpeg', 'cecc7caa', '11322255806_7110cfb945_o.jpg', 1432051906, 38736),
(78, 'drive', 1, 1432052155, '14a133e7', '', '94468469a47333bc6f05a4e926a1b68c', 'IXxoiurwJot+M2SSCoQ4gUC94BViZRskLUr1OoXPP3Btt3deljVW+oLpIdETEW7c3M5z5HUwqs0dFffmjN0qUw==', NULL, 'image/jpeg', '04d9bc27', '11322255806_7110cfb945_o.jpg', 1432052155, 3778260),
(79, 'drive', 1, 1432052160, 'dfa0d281', '', '1d578845874dd88c35a387ed8867d6cf', '0jGamll8xKK0njGAh3aDQcBcqbDFr9H5VlIPKhYPFRPYaqlFlZZMQXmdRA9KHjjilvEASa08LseTkwJ2voE57A==', NULL, 'image/jpeg', '822783cd', '11322255806_7110cfb945_o.jpg', 1432052160, 382739),
(80, 'drive', 1, 1432052163, '4963b3a5', '', '10f5a81ff43a38af552e5df53935db8e', 'jVpJwc0Yl+Ck9qjWwTiDbhOptt9Th346f5cgCgUDWR4einhRhhdde8rmLj8te0Oor7lzk6x1z0Sb1PvK3PMZgA==', NULL, 'image/jpeg', '24cc6310', '11322255806_7110cfb945_o.jpg', 1432052163, 149067),
(81, 'drive', 1, 1432052164, 'a57e3601', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'QJBGZm7k1bvdylKrLt/Jp3RXAyralQQ3gxZLZ5HysG4bugvruU8H4iqFUq91GJPNmZPp2SLCMaaU2iSxjuGnsg==', NULL, 'image/jpeg', 'db8e1d38', '11322255806_7110cfb945_o.jpg', 1432052164, 69417),
(82, 'drive', 1, 1432052164, '7e913199', '', '7e79dd4f6123fc3047580388565f24fc', 'vY3vb0HA30QqC6Rcdk2fgYUbfeKduPSiGdNAflAg+pPnOtdRBWaia5HU8Jgi7TDWcSNrCoWouBnhjJ44aMl7xQ==', NULL, 'image/jpeg', 'deb6d4d9', '11322255806_7110cfb945_o.jpg', 1432052164, 38736),
(83, 'drive', 1, 1432052362, 'b7bdc117', '', '94468469a47333bc6f05a4e926a1b68c', 'tnkDq0unVYyREXDpAOANd0X4Lgt/8kc0bVMTfJP9opbmWDoqkCxSFCVnDCqdaqTYrQGR2U7P2256TOxQmyfKPw==', NULL, 'image/jpeg', '3acb83f9', '11322255806_7110cfb945_o.jpg', 1432052362, 3778260),
(84, 'drive', 1, 1432052373, 'd65ad77d', '', '1d578845874dd88c35a387ed8867d6cf', 'f6Aa66/Gi5ju4BKr0+rpykcyuXr1Ika08sFWErtMj/WrfeZ9RxhwdMlLOdfKP8HgYgsLWIM6x+AExxrwxphXEw==', NULL, 'image/jpeg', 'c24c67ad', '11322255806_7110cfb945_o.jpg', 1432052373, 382739),
(85, 'drive', 1, 1432052376, '790dcf00', '', '10f5a81ff43a38af552e5df53935db8e', 'Sy2yvFzHy6dBEnMxScPXnFc7/4GRx9RWeinGWvaH9AMXQK0rCo38vro0FvW+h8G33cr6JokSmJsk1xb0N0Qiyg==', NULL, 'image/jpeg', '589037fd', '11322255806_7110cfb945_o.jpg', 1432052376, 382739),
(86, 'drive', 1, 1432052377, 'f8559301', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'oMuH3hpyBBm6yalpVEO+M3uQ1OTKqqZ9eJxo6p2mgAzRhTsZae9rDgNCBstQn0c1IfFqj/6jnUc+l4AT23+Ryg==', NULL, 'image/jpeg', 'f492494b', '11322255806_7110cfb945_o.jpg', 1432052377, 382739),
(87, 'drive', 1, 1432052377, '6386bf9f', '', '7e79dd4f6123fc3047580388565f24fc', 'ECtLSbvy+ehlAnsn4T2ZUJ4Ka5zGg3FQ2Yu4Txtn4hScjQ9RSfNOXUpWsNPKXK0iLi3Phm9cr4k2xegNLSgEUg==', NULL, 'image/jpeg', '52b06e63', '11322255806_7110cfb945_o.jpg', 1432052377, 382739),
(88, 'drive', 1, 1432052422, '1542843b', '', '94468469a47333bc6f05a4e926a1b68c', 'Ur2L+an3DiD0xf2Ax5ZUsDr8QWpgZ8ird04rmlzkUihc1RTBHftf/oG+vtTrb7MFuiNAaAGUos3pkV0hW6Y6dg==', NULL, 'image/jpeg', 'fb1db5e5', '11322255806_7110cfb945_o.jpg', 1432052422, 3778260),
(89, 'drive', 1, 1432052427, 'f99acfdf', '', '1d578845874dd88c35a387ed8867d6cf', 'cijk0sXUASZJJs0yCFk61p+8cS1HDSGYXuzd+22/dIRDH5RMXKeTM0DZ25l8bp3M+lQO4EEGC4UT1JVyhhl6wQ==', NULL, 'image/jpeg', 'eefd1d68', '11322255806_7110cfb945_o.jpg', 1432052427, 382739),
(90, 'drive', 1, 1432052429, 'a33804e8', '', '10f5a81ff43a38af552e5df53935db8e', '66h+O2bpKUK8p7bA4fswy0Bxs2NHKqWPOv/JP1iO3Iu/FPyJ9M1M7+4S4/0fZNRdgbCaMabEf5mTk0KLDZ+Qgw==', NULL, 'image/jpeg', 'f534a2d9', '11322255806_7110cfb945_o.jpg', 1432052429, 382739),
(91, 'drive', 1, 1432052430, 'e074545a', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '3fa8sl2YkMIDCnWuwsoGxbe+hlIDFi/nVCTtjn25H3/SI33ShZlpZ3gtaF81GVD7SaU4Yi3/5zPln6h8JSuN6Q==', NULL, 'image/jpeg', 'd92971c4', '11322255806_7110cfb945_o.jpg', 1432052430, 382739),
(92, 'drive', 1, 1432052430, '0ec83318', '', '7e79dd4f6123fc3047580388565f24fc', 'XvRWgek4ivrHsE4H1wPOL4+wihQcIdzNXBFNgP2Ds07PES0XHA5gYodlVTxbups8tg9p41cx6YjW58K0nTlwKA==', NULL, 'image/jpeg', 'ca727853', '11322255806_7110cfb945_o.jpg', 1432052430, 382739),
(93, 'drive', 1, 1432052503, '0eab610b', '', '94468469a47333bc6f05a4e926a1b68c', 'Xzxdz9FpumeWviBrZ0jxuOWkoPVw8lbU5Iqsk8vXceO3x/HZ1F/AnYkhQ4qaSLMcVfA36vBnaVBDWYSTNqnmqw==', NULL, 'image/jpeg', 'c59eee15', '11322255806_7110cfb945_o.jpg', 1432052503, 3778260),
(94, 'drive', 1, 1432052513, '4206b0b6', '', '1d578845874dd88c35a387ed8867d6cf', 'utUbwu61TbeA7tGoL5bbs9dDyjBVfnXODghIVRcfJkwM2r7kPFAUNJxlZt7/dPK6NWdzOo1JWgZ7h9U3KlsPkg==', NULL, 'image/jpeg', '6c486bfc', '11322255806_7110cfb945_o.jpg', 1432052513, 382739),
(95, 'drive', 1, 1432052515, 'e95f2f31', '', '10f5a81ff43a38af552e5df53935db8e', '3zHxxScvCe1JmJyoqFlMMhtBLWgAm399gF+6Y5g0q90RuCzzFDscG9Q47kPBmGEtFrXaXiGXxAnGxpB9ULAB2w==', NULL, 'image/jpeg', 'e2b89e30', '11322255806_7110cfb945_o.jpg', 1432052515, 149067),
(96, 'drive', 1, 1432052516, '6a173cc2', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'FgoqkSMdPZfGH7DPZ97K9m+lC4AGqkNkc4n5GQuo0RnT1PWCsWSb/FcxoSFXcX398wL0AlIw9lt6/c2s8n1IHg==', NULL, 'image/jpeg', '63a1b1e8', '11322255806_7110cfb945_o.jpg', 1432052516, 69417),
(97, 'drive', 1, 1432052516, '161ccb4f', '', '7e79dd4f6123fc3047580388565f24fc', 'r/HNkW3aVCmny8X4hqD77BZYKyCdVy6YE/BGRTe5K4zNDZud1ZR33/RUl4qQEQ+47VSCIMZYq/dBV2gZJPgmBg==', NULL, 'image/jpeg', '196af27b', '11322255806_7110cfb945_o.jpg', 1432052516, 38736),
(98, 'drive', 1, 1432052588, 'a7b4bac7', '', '94468469a47333bc6f05a4e926a1b68c', 'eHF7hIeKm2q0d8waWv5mmRLjd2fHixXtiT/5sIOBF/kT/isx1IHriSdKfcURHZWcMVL5eBxAKPJnAxIL3Fge7Q==', NULL, 'image/jpeg', '61b950d6', '11322255806_7110cfb945_o.jpg', 1432052588, 3778260),
(99, 'drive', 1, 1432052592, 'bfe277b0', '', '1d578845874dd88c35a387ed8867d6cf', 'h9Zy6vA0MK/cuwKA290svQrsrQq4/BzxcrxlE447/WzhMjtY3AtiyOZyQ0zV6vnTKy84KePXeI6LHpW8BuKTOA==', NULL, 'image/jpeg', 'c52c9ad1', '11322255806_7110cfb945_o.jpg', 1432052592, 382739),
(100, 'drive', 1, 1432052595, '889c29e7', '', '10f5a81ff43a38af552e5df53935db8e', 'vvGs8RISxso1tIoh/ukscCRi2x/6gRvDZTfrEVX1Y1yyz9jx4gW0vC2tRNdHCATVOlDBtice9xSPhkih5Jzg3A==', NULL, 'image/jpeg', '69c9ab9b', '11322255806_7110cfb945_o.jpg', 1432052595, 382739),
(101, 'drive', 1, 1432052596, '49ad910b', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'VhufU5khGuWdbzAtvyHPfwCLl+v4EzroghJIpoXFVDc73RoAN9vXpaap3/+T9ioBdmrapggMoTTe2ArXpnjPIA==', NULL, 'image/jpeg', '92127110', '11322255806_7110cfb945_o.jpg', 1432052596, 382739),
(102, 'drive', 1, 1432052597, '3729c9ff', '', '7e79dd4f6123fc3047580388565f24fc', 'RgqYMBEiZpx1jC2Ub+A06Ur4wVzvqWJD6YT6jmKdKd2VJbXi7y1X+e+bi4NkqBWISLVgT9jMXfBBkw0JLL3ttQ==', NULL, 'image/jpeg', '0b789d6e', '11322255806_7110cfb945_o.jpg', 1432052597, 382739),
(103, 'drive', 1, 1432052844, '342eb84a', '', '94468469a47333bc6f05a4e926a1b68c', 'LfdL6cJsE2LV4hDoH62TGmRw+KglDVboZu5ncEx06a+zLVkgmnPDUjleK11ENXoyDA21tIOMU6mfzrRSuLNU3Q==', NULL, 'image/jpeg', '8a467669', '11322255806_7110cfb945_o.jpg', 1432052845, 3778260),
(104, 'drive', 1, 1432052850, 'd5f48139', '', '1d578845874dd88c35a387ed8867d6cf', '0LAL9IjZ9MYGLBqABnccpab6TCsTIwNahDYh3N9/eMVI0Ll82FAXiGT3vW5J4r3uJzPTMQri4h4sczD9Dhw4Eg==', NULL, 'image/jpeg', '365d7670', '11322255806_7110cfb945_o.jpg', 1432052850, 382739),
(105, 'drive', 1, 1432052852, 'f3e38fad', '', '10f5a81ff43a38af552e5df53935db8e', 'iCgh72+9iqN2KHnwbsYqlNaBfNkowV17x1YTtP8OU12TP4dBKwQWLK4E+YzR2+bHf5nXd8nAmxJVi+k+luu/WA==', NULL, 'image/jpeg', '4e5f8960', '11322255806_7110cfb945_o.jpg', 1432052852, 149067),
(106, 'drive', 1, 1432052853, '1525942d', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '9Jz06ou4wF1wtMdpO8+dc9uo8SzOtcS1bnuXuTEMCd7RwKDsvo68IpJvRzV12YEpIV++9dzA4FJhotevbdvzdg==', NULL, 'image/jpeg', '260f5450', '11322255806_7110cfb945_o.jpg', 1432052853, 69417),
(107, 'drive', 1, 1432052854, 'bc8a75c3', '', '7e79dd4f6123fc3047580388565f24fc', '3WeIzGnr5dfKewsj7j9ugjlMB0iZG1Q930oHoQGH5RxiQS1Z7CtuqcwkzCZNdZ6hCEbsRSIb/qp+kiHbPfl79A==', NULL, 'image/jpeg', '3468b9ed', '11322255806_7110cfb945_o.jpg', 1432052854, 38736),
(108, 'drive', 1, 1432052890, 'db9188ae', '', '94468469a47333bc6f05a4e926a1b68c', '9HU7IzB9MLv1yqvrl8SWUDHittS8/Vha0/yuNqSGmhc9QLn32X6YG6GslyJlrn2FKV/q+UjIZkMww4s5z00pTg==', NULL, 'image/jpeg', '7cb32fce', '11322255806_7110cfb945_o.jpg', 1432052890, 3778260),
(109, 'drive', 1, 1432052896, '01453b53', '', '1d578845874dd88c35a387ed8867d6cf', 'FEBNE1AD7EJfBJsmHUszWRP9Q42tJYgrugdVCRfA/BQpHUYIb4gWrmBYRlsIR1bSupTMIUJKWzYdzvfkGpj06g==', NULL, 'image/jpeg', '06760413', '11322255806_7110cfb945_o.jpg', 1432052896, 382739),
(110, 'drive', 1, 1432052899, 'c391202f', '', '10f5a81ff43a38af552e5df53935db8e', 'nY6qd6gEorLoy8rguWfpHZysrtaaB60JkUfdvav4SrwX4wcz5mC/ZzVIv9nmlQwRrsXKjeu8JqPyAI9Nl7QWrw==', NULL, 'image/jpeg', '3784ac10', '11322255806_7110cfb945_o.jpg', 1432052899, 149067),
(111, 'drive', 1, 1432052900, '1443af02', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'hEhGMndUOldlX9aP7K7nWyhsWQR+jWIMnym8bl/4O1I/uPewxS3QBfzUKjSWcNrTXHsIweltlWP3ZH3bMDWe0w==', NULL, 'image/jpeg', '46e90382', '11322255806_7110cfb945_o.jpg', 1432052900, 69417),
(112, 'drive', 1, 1432052901, 'a04183b5', '', '7e79dd4f6123fc3047580388565f24fc', 'w9Zpi3R3hLA7xrIaaBsqMjrl1Yfr4ecphMSfbEV6TfnGK37Jr+AdGrD69vtSUhbz+kueU58nT4It0acOD0HNvg==', NULL, 'image/jpeg', '13e984bb', '11322255806_7110cfb945_o.jpg', 1432052901, 38736),
(113, 'drive', 1, 1432053037, '122f498b', '', '94468469a47333bc6f05a4e926a1b68c', '69v6WNRBamBPS5DQExT94zgUhr5T6+C+IuAfM8i0tagNtluTWZ8qdjOhGLp92hUkaUrKMKsgTFEIjAszu6fYHQ==', NULL, 'image/jpeg', 'd70b0f87', '11322255806_7110cfb945_o.jpg', 1432053037, 3778260),
(114, 'drive', 1, 1432053041, '9422ec53', '', '1d578845874dd88c35a387ed8867d6cf', 'O1noEAuesr7v3suO55GjOp6I5xw7dXACnhNfNkbfmca9D7RKpVi9KkVYGjER2dqXJH+43H9lUMA0a/bFls4k2g==', NULL, 'image/jpeg', 'b9d3c1ac', '11322255806_7110cfb945_o.jpg', 1432053041, 382739),
(115, 'drive', 1, 1432053045, 'a6ad09cd', '', '10f5a81ff43a38af552e5df53935db8e', 'I5HOxGHrX2BHuSBUNwC0SunjFL4aMcGedV/bVVmVUKAz2b7aLG/GVTvr8+nrdQmxO3DU+f4rHSiU1weixhwkXg==', NULL, 'image/jpeg', 'd35ecabb', '11322255806_7110cfb945_o.jpg', 1432053045, 149067),
(116, 'drive', 1, 1432053046, 'd9a7bc3d', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'EAdYLbrQkDRbCavZkaWpSqRzxn7ygSky3kpOpY+i11OvqwJLpQZIY0pLABFctajFo8PBbaFZ2EVZxRDiaZFR+w==', NULL, 'image/jpeg', '9381a1e2', '11322255806_7110cfb945_o.jpg', 1432053046, 69417),
(117, 'drive', 1, 1432053047, 'bed01c01', '', '7e79dd4f6123fc3047580388565f24fc', 'evw1hPbNS6oM+F/xwqSzGbnrbmMJkFPD25b2YTIA/r9IJFiBxQGnmfKoxmUvi8tUqCl0N+IoVUsHCCp6ojBsPQ==', NULL, 'image/jpeg', '031d59d0', '11322255806_7110cfb945_o.jpg', 1432053047, 38736),
(118, 'drive', 1, 1432053200, '2810a869', '', '94468469a47333bc6f05a4e926a1b68c', 'YX0cK3Kf7YJjlH6lE1i6/DezTjLbLC1RnDZS5873ZvWj68eVDESilCyLySH8F/lieGzqtSome4UtrmoDhZrrEw==', NULL, 'image/jpeg', '5fc8f127', '11322255806_7110cfb945_o.jpg', 1432053200, 3778260),
(119, 'drive', 1, 1432053212, '613536dc', '', '1d578845874dd88c35a387ed8867d6cf', 'NXM1pccZHR9pW3TS8fZCfCSnwiJO3B3GshbsAcsJ3jdbZTZbr1xU56Kz/pdOGOC9H14CvplsnmmENSARchqC8g==', NULL, 'image/jpeg', '4d458318', '11322255806_7110cfb945_o.jpg', 1432053212, 382739),
(120, 'drive', 1, 1432053214, 'ced5156a', '', '10f5a81ff43a38af552e5df53935db8e', '+shKzD95pU7oM8tjuO2dqvtH+uywenm7JtJe3OdDbfDF6iy8B8WyyKxQzWugUan7Semn2rsKk/+dOwU5arM+YA==', NULL, 'image/jpeg', 'c4333210', '11322255806_7110cfb945_o.jpg', 1432053214, 382739),
(121, 'drive', 1, 1432053215, 'def3d57e', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'ufNapIaxMR7rgbgrqyRPrFY3D0kI8gc0MUTVTRapKgQNrxnF90ofR95PvbcmY5H6Cob+961wWdhFn9m5MENbDg==', NULL, 'image/jpeg', '28b2aa55', '11322255806_7110cfb945_o.jpg', 1432053215, 69417),
(122, 'drive', 1, 1432053216, 'bfecb36c', '', '7e79dd4f6123fc3047580388565f24fc', 'zWzkVF1RbTFoqJHGfh1Y4d/R4fjfX3tzsGbcYSEKQsfczlkOPR02kp6pjTDaptuXfS2MpDnu5wajtVRrqWXloA==', NULL, 'image/jpeg', '6ac495fd', '11322255806_7110cfb945_o.jpg', 1432053216, 38736),
(123, 'drive', 1, 1432053283, '4a620d60', '', '94468469a47333bc6f05a4e926a1b68c', 'hv1cuxdVl65XkSkjyPyDvcf3/bzxs4J0Rlg6Dwr4cpNPDtk7n/gBS1QaiooiZ86nJ8ROPOG1KF11PKP7pHvW+g==', NULL, 'image/jpeg', '2e0707dd', '11322255806_7110cfb945_o.jpg', 1432053283, 3778260),
(124, 'drive', 1, 1432053288, 'cd40ca58', '', '1d578845874dd88c35a387ed8867d6cf', '0RzWrLbuuMSLWS0vD3WNmew985o3+iAjcaMgBFsOcwoNNVJTyLLe41+AJQofnKHxABA6gPcpSnfKmcNn7zCH8Q==', NULL, 'image/jpeg', '06ac338e', '11322255806_7110cfb945_o.jpg', 1432053288, 382739),
(125, 'drive', 1, 1432053290, '6d956da9', '', '10f5a81ff43a38af552e5df53935db8e', '5NBHE6f78aIEr3QV8Akg9vhhwpD4pN3ZEbX4upYsG/8NDDmEOh+dJr4z03pMTQpughNs9nYI9vY72mU0pHssQQ==', NULL, 'image/jpeg', '12140afb', '11322255806_7110cfb945_o.jpg', 1432053290, 382739),
(126, 'drive', 1, 1432053291, 'd93109e8', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '+3FQ541GrCuw+xHdxfX9UNqOB716IgqlXRiONY6NVa1dOWRUKEA5nqoNbZn5mSViTPfDxEOis5KtlFPOQD8xjQ==', NULL, 'image/jpeg', '4c374905', '11322255806_7110cfb945_o.jpg', 1432053291, 69417),
(127, 'drive', 1, 1432053292, '9c9077b1', '', '7e79dd4f6123fc3047580388565f24fc', 'ATWnJ08KxJHbR5qtYRmPgM5kM63SI+KwxVWXQ30vW1EymZosd6qOgggxuDqFseUXhs35YLF4TIldtKO1OKnDcA==', NULL, 'image/jpeg', 'c617f8c9', '11322255806_7110cfb945_o.jpg', 1432053292, 38736);

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
(5, 1431448099, 'adbddb2c', '9f1d2b46faf600704c3e3f0b8741d675', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'NlnzyvYoTkKBUlzFkgp78qSYBLySCj6X7jjqG4ylOzE=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(6, 1431448205, '8cf57000', 'ae4e4b63a02bf76a1d9dfabc7c946e3e', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/J13BttHqQzEdxvJcE0U1NQ0Zh3meXHdLnZOIvEmEYw=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(7, 1431448265, '4f3e603d', '6942ac59b6fede37dc777b8317fdf751', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/FVIkdvojCZDelpOywW9c0llcqh78Whc6ztUZqJQbTA=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(8, 1431448456, '7da0feb4', '84b5d5a26dae314b0400435258269f1b', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'WWXOT3BVq2ieHf6m8bRuD+RLg2Lp41ZDPk8wZcEjIic=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(9, 1431448487, '72fd14b0', '3bc41f10078073cb2b5118af5b104957', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'w2QTdlNvG3BTMBOWvUjdnS3XcCTmKqSfPUFSTrEFrS4=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 0, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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
(26, 1432257626, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=577;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=225;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
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
