-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2015 at 08:25 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=latin1;

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
(595, 'en', 'new_name', 'new name', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
(9, 1433309287, 1, '31f627be', '8f7724639484f3e2d36275503d816181', 'user', 16, 'sYpSoqCGtDFBW6cHQFBuSy43/jSDmqcgvk44pIV0m4g=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`, `deleted`, `action`, `updated`) VALUES
(1, 1433306571, 'c6729d95', 'f25232f9bc4da9bef5fa1d9be8d3f4e2', 1, 'groups', '', 'vi', 0, 1433309287, 1433312716),
(2, 1433307391, '19605aa7', '96ca778c5a88897519515268f0f9b043', 1, 'private', '', 'vi', 0, 1433309148, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1433306571, 1, 'author', 'en', 'user', 15),
(2, 1433306571, 1, 'members', '0', 'user', 16),
(3, 1433306571, 1, 'members', '0', 'user', 17),
(4, 1433307391, 2, 'members', '0', 'user', 15),
(5, 1433307391, 2, 'members', '0', 'user', 16);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(39, 1433254452, 97, 'user', 15),
(40, 1433254578, 98, 'user', 15),
(41, 1433254608, 99, 'user', 15),
(42, 1433309444, 1, 'user', 15),
(43, 1433312729, 2, 'user', 15),
(44, 1433309285, 1, 'user', 16);

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
('ULV6wLqyYlqBN3LuOb2kujfvIWPKZ9-xO,3R-5BOsm9', 1433312372, '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', 'eee321f55d9c5459107702fdc63b7729');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('Z9CIvBOSQ0urwV,srtAWV4XmYa2hMIroQYlXkfAhzd6', 1433312737, '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', 'cc69e5ccaae442bdd3b2b51838bbe716');

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

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
(66, 1433309189, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.81');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=596;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
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
