-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2015 at 07:58 PM
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
(573, 'en', 'type_name_messages', 'type messages name (default: auto)', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

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
(20, 1432053292, 'user', 15, 'add', '', 0, 'status', 20);

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
('EvZ,I1Q8tk9NjoDkfKuM8XUa-ph0LqMZqcmWzjv9Km1', 1432144689, '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', 'fb3c90d3');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

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
(24, 1432140886, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
