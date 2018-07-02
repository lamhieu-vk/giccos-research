-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2015 at 07:32 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

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
(23, 1432488695, 'user', 15, 'add', '', 0, 'status', 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

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
(33, 1432312460, 59, 'a39ec9c5', '3ffa8ad01d18ad85278bcee45a2a584c', 'user', 15, 'FgggATm8jk1RBbawSYJsZD0vWTyoBkmTI6HT8r6BvOg=', ''),
(34, 1432315944, 58, 'ca8801c0', 'b65fdc525cc00d48b135361ebfe59b55', 'user', 15, 'KzilxnR4bg0UZFRwyzEMF9ddZCMDv4m7tF0gxaKl6t69XRUiH9zZ9DaYXfU5HXMTGYf6a0yBoD+z6I6pLelwaA==', ''),
(35, 1432315956, 58, 'b1e19f7b', '87042e0da66f94cb35636b70c45fb30d', 'user', 15, 'oy1ZPTGGIHc0+1o2HTaCi3fkH7voEnZSpjCpvVeOg+LrwQ1AAc3PLhoLtLm/Wn2OaXChcKjudWL00pB5dIfTfwYmo7x1zxt9az/DJcaTaxdWa0OS2pHBC2fohpThSWfW', ''),
(36, 1432316185, 60, 'cb42a995', '50e3ff8831aa0711818ece6412504a26', 'user', 15, 'nw+h9avWkhGD6hV/WRrC/Gd5p3jusXJXOa1lGxvmwaI=', ''),
(37, 1432316254, 58, 'bd318765', '52eb970ab3aaf946059dedf3c25a3c63', 'user', 17, 'nwhk+XJBifw3QTsS+2Y+z86iGMBkDmalU5gLju/PnqA=', ''),
(38, 1432400984, 58, 'f85f3810', '81e217e9b1af8d3ccf8f8bbdd1341d8f', 'user', 15, 'G4c/k6MMwaa+8hh3pwiH6QwiBJTbcOOGvhD9KQee2jY=', ''),
(39, 1432487138, 58, '4d3d2310', '9966d7d5f97246c6c4d63fe7f5724cdf', 'user', 15, '1UzPQbP+qu3d3bWyKv9yOnpApuIx1qV3EKEfqXghAy8=', ''),
(43, 1432488034, 58, '214d0607', 'bc88a6191916e1ce3c874c63d355a007', 'user', 17, 'C+kU28U56NG7/NvyZRhC3FjR+45WWM/xtByH7Bp+dok=', ''),
(44, 1432488703, 58, 'a59c6688', '72b0046cecc735783843481fa517ae15', 'user', 15, 'dCVBndndrNELsGLUVd0DPlbU3Qr8nkYzBsDce6DS2m9GHyHcf9gUXgPOLzf9rVyAtLQfV9IsqatxhZKaHO67iw==', ''),
(45, 1432488742, 58, '29e7a54f', '5001a52391f7447653c77f3ad2f7ec24', 'user', 15, 'ZdjcYBZrWOQQI2S+Gpf5LGiqBCFuF9nYBmRKQphEih8=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES
(58, 1432305657, '48cda1bd', '0aa208294d775325838e5b831c517058', 1, 'private', 'Tran Duong (@tranduong)', 'vi'),
(59, 1432312165, '83902e36', '3df6d135d89faf20eb64843acb778c70', 1, 'private', 'Truong Tuan (@truongtuan)', 'vi'),
(60, 1432316182, 'd245ddff', '8af0b58221503306efd2055da442796f', 1, 'private', 'Tri Nguyen (@tringuyen)', 'vi');

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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(92, 1432305657, 58, 'members', 'en', 'user', 15),
(93, 1432305657, 58, 'members', '0', 'user', 17),
(94, 1432312166, 59, 'members', '0', 'user', 15),
(95, 1432312166, 59, 'members', '0', 'user', 16),
(96, 1432316182, 60, 'members', '0', 'user', 15),
(97, 1432316182, 60, 'members', '0', 'user', 18);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;

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
(226, 'regex_messages', 'en', '/([\\S]+)/'),
(227, 'messages_typing_timeout', 'en', '3000');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
('JejkAPBbQOixvdikMbAfC9UNStzqYnb8wqvYe194JQ3', 1432488742, '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', '1fe4497e');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '353fe9fa', 'f836fa1e87b0184a214fa6a8cd4b6f95', 1432214173, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'U9Q+PeiY8DCd8qrZc8BP6FAGs29JeA8z4SjaD6ocveA=', 0, 0, 0, 0, 0, 0),
(3, '7dfeebdd', 'ea182ff65340ee2d9fea22718d0d8169', 1432488695, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'VW1ztHFiZ0zSHVfu9qr7UbGYsZiXUwGBpL9SGarpSbMX2hxi1h+wWpkSvFXs8GTClFoT/iy7zvUKKDpftC7weA==', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1432214173, 1, 'user', 15),
(3, 1432488695, 3, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

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
(38, 1432479801, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
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
