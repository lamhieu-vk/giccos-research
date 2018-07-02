-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2015 at 07:29 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(27, 1432305661, 58, 'aacd111c', '0c5dbeab846fa3c6e9502d851375c8e5', 'user', 15, 'hkT2sbLGh5KMfM/pCT6hJqSrBCBXVqqsbUxX30dw3z0=', ''),
(28, 1432305662, 58, '968f35dd', 'b9dfb59addaac9fa7ff795b1fbbe63da', 'user', 15, 'YMpJtggDOHHGNdXwJm0dzXBYiLB35BIIpy+2ykHJk20=', ''),
(29, 1432305664, 58, '5172d4be', '56141c7797d455f065b99b7d5df61e4a', 'user', 15, 'zgw6PgGNFqVGZKAVUHclcgSX+Nv7pm1XKfX5+ZVT6mI=', ''),
(30, 1432305668, 58, '060cc94b', '0b9425f3a3df6813421080c8a7c8140a', 'user', 15, 'IGmDNCe3am393gD2L51iuGS4UV18jmDTIYFbkLeMGy8=', ''),
(31, 1432306792, 58, '0b92bf61', '931d17f6c52fc408f950b9e9c07afe4d', 'user', 15, 'cfhWOoBvwd2o0oTXNF9DWLKzhN+l9tjva1A8XFuYlME=', ''),
(32, 1432312459, 59, '01e70ea7', 'd19b08e673442ed121d27c77271cef95', 'user', 15, 'Y3mpILyc7Xyc/5Gi97LvucHf5gJQEDUPfzv9hxPvKdM=', ''),
(33, 1432312460, 59, 'a39ec9c5', '3ffa8ad01d18ad85278bcee45a2a584c', 'user', 15, 'FgggATm8jk1RBbawSYJsZD0vWTyoBkmTI6HT8r6BvOg=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES
(58, 1432305657, '48cda1bd', '0aa208294d775325838e5b831c517058', 1, 'private', 'Tran Duong (@tranduong)', 'vi'),
(59, 1432312165, '83902e36', '3df6d135d89faf20eb64843acb778c70', 1, 'private', 'Truong Tuan (@truongtuan)', 'vi');

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(92, 1432305657, 58, 'members', '0', 'user', 15),
(93, 1432305657, 58, 'members', '0', 'users', 17),
(94, 1432312166, 59, 'members', '0', 'user', 15),
(95, 1432312166, 59, 'members', '0', 'users', 16);

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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

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
(224, 'messages_update_timeout', 'en', '3000'),
(225, 'messagesPopup_length_randKeyEvent', 'en', '10'),
(226, 'regex_messages', 'en', '/([\\S]+)/');

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
('3ANA-BePhJAONlpldJBItJqohwQPMnIHiJOSJwYErt6', 1432315796, '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', 'cd2f86a1');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
(16, 1432305182, 17, 'user', 17);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
(34, 1432305637, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
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
