-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2015 at 04:27 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=593 DEFAULT CHARSET=latin1;

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
(592, 'en', 'you_may_find', 'you may find', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

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
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(39, 1433254452, 97, 'user', 15),
(40, 1433254578, 98, 'user', 15),
(41, 1433254608, 99, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

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
(228, 'messages_views_timeout', 'en', '3000');

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
  `id` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('OpcBsp4mjTgPgbrnt532QDbDlnrslSqjqe1v4EhFCb5', 1433255222, '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', '4053fa1ccea43305a33b71cb21d0ba36');

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
(1, '353fe9fa', 'f836fa1e87b0184a214fa6a8cd4b6f95', 1432214173, NULL, 1432776218, 15, 'user', 15, 3, 3, 3, 'status', 'U9Q+PeiY8DCd8qrZc8BP6FAGs29JeA8z4SjaD6ocveA=', 0, 0, 0, 0, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_edit`
--

INSERT INTO `status_edit` (`id`, `status.id`, `time`, `content`) VALUES
(1, 0, 0, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

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
(64, 1433247421, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81');

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
-- AUTO_INCREMENT for table `languages_list`
--
ALTER TABLE `languages_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=593;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
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
