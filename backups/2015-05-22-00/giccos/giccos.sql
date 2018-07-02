-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2015 at 07:09 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=latin1;

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
(574, 'en', 'messages_not_exist_maybe_has_deleted', 'messages not exist, maby has deleted', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(1, 1432222579, 30, '64asds64as', 'asdasdfasdfsadfas2df64as3f13sadf64sadf', 'user', 5, '123123asdas fsafsadf', NULL);

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
('MkBA6vS7XSpXpYvX0KEo,saQXj2O0FSKb7wfCgJ8Yle', 1432227406, '0N25MoKqiMhnG0o9ZWYX59HaRYqDTQDwi0My3lVP/N8S4uf1RaQpGWFtzr8hujk7+O2XZv98WhU+qWKRkLB90w==', '8078b582');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('YozxY31HpJbjTRLfDPcKi6laONm2aUifLSKR4TjgWC7', 1432228160, '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', '4c462c30');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

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
(25, 1432211631, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=575;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
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
