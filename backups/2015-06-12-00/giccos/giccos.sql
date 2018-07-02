-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2015 at 05:07 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=latin1;

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
(614, 'en', 'feed_tags.quickdescription', 'general status has tags selected', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

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
(79, 1434121490, 'user', 15, 'add', '', 0, 'status', 43);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_cache`
--

INSERT INTO `music_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.id`, `author.type`) VALUES
(1, 1433743471, 1433756185, 'da65d66b', '081ba09e', 'f683df58', '45a0662d.mp3', 'LoiXinLoiCuaMotDanChoiRemixVersion1-DuyManh-3666784_hq.mp3', '0', 'audio/mp3', 9776467, 244.375504, '55ca8601', 15, 15, 'user');

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
('scSIPW1mq1q-sDgcUnyTLWC4qsNUZdVaIAuHstC2rS9', 1434121643, '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', '025b4b6fd0dad78d63569b22ec4f4716');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

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
(31, 'c9108a29', 'e8e35f721d289771033fa0b12a6b5214', 1434098924, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '+TeFxw3ooNajX12Sgrzt0xgGaXLKfVKmFfGYq7+WwJc=', 0, 1, 0, 0, 0, 0),
(32, 'b74387a9', '0102b8b0cb61c8eb1fdc3e7cd4a31c86', 1434098977, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'MqGPKS7oTUr1brjFbHsu4JZqQciySMkBbgiFuAp1juA=', 0, 1, 0, 0, 0, 0),
(33, 'cfe574ea', '5679be6fe001153f3bbf76c69cf653b0', 1434099014, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'uZWnas3iU9TW4Cjl4JG+A82MyUVjdMNm8jZnWoBXTXk=', 0, 1, 0, 0, 0, 0),
(34, '90737500', 'ece53952ad9b47befe7ed87da0ec5cf2', 1434099027, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'm788TFAz7Zhy6gYT8hgiduzpjpuZw33C18umVY7ZG5U=', 0, 1, 0, 0, 0, 0),
(39, '6056daa9', '4e93e1803b7f844f9c364f6365ccd489', 1434099787, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'HnyAsnkA/9bj7GI4UqfkCyR513hDdEblB0G3V+vFrxs=', 0, 1, 0, 0, 0, 0),
(41, 'cf2b0026', '5468d6404a220d40caa531a73525fd89', 1434099993, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '7HlT/lqj6ZoaxaaE5gtkyEfZkE+lcvTtVuRCrBhZdqI=', 0, 1, 0, 0, 0, 0),
(42, 'c279fec1', 'cf358411ac6254f67d02d46d5ef3ea91', 1434100458, NULL, 0, 16, 'user', 16, 4, 3, 3, 'status', 'zEbMNRX7otdm1ADLLMDZatlCJVRODnfgm5Gh2/sTEiQ=', 0, 0, 0, 0, 0, 0),
(43, 'ba63429a', '48d8fe4d334988175b74cbdff0dc642e', 1434121490, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'NC11bZNwOqld4l0+yUzIKqNkwaLCB5i1Unkdit2IECM=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

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
(31, 1434098924, 31, 'user', 15),
(32, 1434098977, 32, 'user', 15),
(33, 1434099014, 33, 'user', 15),
(34, 1434099027, 34, 'user', 15),
(39, 1434099787, 39, 'user', 15),
(41, 1434099993, 41, 'user', 15),
(42, 1434100458, 42, 'user', 16),
(43, 1434121490, 43, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(8, 26, 'x'),
(9, 27, 'x'),
(10, 28, 'x'),
(11, 29, 'x'),
(12, 30, 'x'),
(13, 31, 'x'),
(14, 32, 'x'),
(15, 33, 'x'),
(16, 34, 'x'),
(21, 39, 'x'),
(23, 41, 'x');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 1, 1433743470, '661c639e', '', '451a7fd168c479275d1db21bc4208600', '9b9HyyrokB8IWZ1ZE06gGWbrkaqt13HesfrQb1UBJDVdIIErqqr2DysaQXCQrqwUv31SAmiCMGrHa8zAerO9ug==', 'audio/mp3', '55ca8601', 'LoiXinLoiCuaMotDanChoiRemixVersion1-DuyManh-3666784_hq.mp3', 1433743470, 9776467),
(5, 'drive', 1, 1433745199, 'a0bee08a', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'W0hCcZpdm6iZiDWfTFUNWsACrcMvrl7/V8RGwHMqSuS/0mCf6IG+dWYj4jtGKNSSNleHX/dYcFsJUnWCu3hcIw==', 'audio/mp3', '49607e4f', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1433745199, 3636470);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

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
(38, 'drive', 1, 1433753226, '4d12d7b8', '', '21f1559c387fab9e433746f9af35deab', 'MTKM4YI04Oq6aSG3ltFeaZ3Q3AvQxLLP5HrRwKGvQ4g2Lw3aPxGHy45hMJLciOGW0k6j9atxiLvFFSD9av+9jQ==', NULL, 'image/jpeg', '202615eb', 'IMG_3270.JPG', 1433753226, 34631);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996);

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

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
(75, 1434100077, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.124');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=615;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
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
