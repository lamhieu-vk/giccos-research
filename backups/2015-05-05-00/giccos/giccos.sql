-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2015 at 05:45 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(9, 1430489614, 1430489614, '4bfcc403', '10736b63', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '42004592', '7b127898', '0.97', '54.6', '56.3', '99.2', '58', '74.1', '90.7', '54.3', '102', '54.3', '102', '86.9', '103.1', '86.9', '103.1', '1.7', '7.48', '-17.59', 'asian', '0.97', '0.47', '0.5', 'surprised', '0.02', '', '0', '', '0', '21.34', '0.08', '0', '0', '0', '0', '0.9526', '1'),
(10, 1430490094, 1430490094, '5f190565', '817d59c8', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '15abf5b5', '4feb225a', '0.98', '250', '255', '449', '264.8', '334', '408.7', '247.4', '460.9', '247.4', '460.9', '397.4', '470.5', '397.4', '470.5', '2.37', '6.1', '-17.76', 'asian', '0.98', '0.57', '1', 'confused', '0.02', '', '0', '', '0', '18.67', '0.62', '0', '0', '0', '0', '0.8536', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers_topic`
--

INSERT INTO `answers_topic` (`id`, `time`, `language`, `category`, `title`) VALUES
(28, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/b1fb8e18.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -vf scale=640x360,pad=640:480:0:60:black D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/b1fb8e18.png 2>&1'),
(29, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/f9c8b212.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 640x360 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/f9c8b212.png 2>&1'),
(30, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/65166e79.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/65166e79.png 2>&1'),
(31, 1, '1', 1, 'ffmpeg -itsoffset -15  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/9bb0e980.wmv -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/9bb0e980.png 2>&1'),
(32, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/ebd94d9a.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/ebd94d9a.png 2>&1'),
(33, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/f87a9347.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/f87a9347.png 2>&1');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES
(7, 1, 1, 5),
(8, 1, 5, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=latin1;

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
(50, 'en', 'type_username_or_email', 'type username or email', 'false'),
(51, 'en', 'type_password', 'type password', 'false'),
(52, 'en', 'pages_accounts_register.title', 'register :: accounts :: giccos', 'false'),
(53, 'en', 'pages_accounts_register.desc', 'create a new account for all services', 'false'),
(54, 'en', 'type_your_info', 'type your info', 'false'),
(55, 'en', 'checkbox_agree_terms', 'agree to the terms of use', 'false'),
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
(429, 'en', 'gender_1', 'male', 'false'),
(430, 'en', 'gender_2', 'female', 'false'),
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
(485, 'en', 'do_you_want_redirect_page', 'do you want to redirect the page', 'false'),
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
(527, 'en', 'comment_disabled', 'comments has disabled', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(16, 1423880117, 'user', 1, 'favorite', 'status', 176, '', 0),
(17, 1423880133, 'user', 1, 'add', 'status', 176, 'comment', 42),
(18, 1423880144, 'user', 1, 'unfavorite', 'status', 176, '', 0),
(19, 1423880151, 'user', 1, 'favorite', 'status_comment', 42, '', 0),
(20, 1423881486, 'user', 1, 'add', '', 0, 'status', 177),
(21, 1423882595, 'user', 1, 'add', '', 0, 'status', 178),
(22, 1423883226, 'user', 1, 'share', 'status', 177, 'status', 179),
(23, 1423895622, 'user', 1, 'remove', 'status', 178, '', 0),
(24, 1423895622, 'user', 1, 'remove', 'status', 177, '', 0),
(25, 1424152523, 'user', 1, 'add', '', 0, 'status', 180),
(26, 1424152546, 'user', 1, 'add', '', 0, 'status', 181),
(27, 1425881753, 'user', 1, 'add', '', 0, 'status', 182),
(28, 1425881932, 'user', 1, 'remove', 'status', 182, '', 0),
(29, 1425881940, 'user', 1, 'add', '', 0, 'status', 183),
(30, 1425883240, 'user', 1, 'add', '', 0, 'status', 184),
(31, 1425883278, 'user', 1, 'remove', 'status', 184, '', 0),
(32, 1425883280, 'user', 1, 'remove', 'status', 183, '', 0),
(33, 1426131205, 'user', 1, 'add', '', 0, 'status', 182),
(34, 1426131508, 'user', 1, 'add', '', 0, 'status', 183),
(35, 1426158301, 'user', 1, 'add', '', 0, 'status', 184),
(36, 1426766917, 'user', 1, 'add', '', 0, 'status', 185),
(37, 1426767162, 'user', 1, 'remove', 'status', 185, '', 0),
(38, 1426767175, 'user', 1, 'add', '', 0, 'status', 186),
(39, 1426767526, 'user', 1, 'remove', 'status', 186, '', 0),
(40, 1426767530, 'user', 1, 'remove', 'status', 184, '', 0),
(41, 1426768696, 'user', 1, 'add', '', 0, 'status', 187),
(42, 1426769239, 'user', 1, 'add', '', 0, 'status', 188),
(43, 1426769647, 'user', 1, 'add', '', 0, 'status', 189),
(44, 1426770047, 'user', 1, 'remove', 'status', 189, '', 0),
(45, 1426770050, 'user', 1, 'remove', 'status', 188, '', 0),
(46, 1426770053, 'user', 1, 'remove', 'status', 187, '', 0),
(47, 1426770075, 'user', 1, 'add', '', 0, 'status', 190),
(48, 1426770106, 'user', 1, 'add', '', 0, 'status', 191),
(49, 1426770144, 'user', 1, 'remove', 'status', 191, '', 0),
(50, 1426770157, 'user', 1, 'add', '', 0, 'status', 192),
(51, 1426770196, 'user', 1, 'remove', 'status', 192, '', 0),
(52, 1426770908, 'user', 1, 'add', '', 0, 'status', 193),
(53, 1426836364, 'user', 1, 'add', '', 0, 'status', 194),
(54, 1426837403, 'user', 1, 'add', '', 0, 'status', 195),
(55, 1426837467, 'user', 1, 'remove', 'status', 195, '', 0),
(56, 1426837483, 'user', 1, 'add', '', 0, 'status', 196),
(57, 1426837531, 'user', 1, 'add', '', 0, 'status', 197),
(58, 1426837535, 'user', 1, 'remove', 'status', 197, '', 0),
(59, 1426928323, 'user', 1, 'remove', 'status', 196, '', 0),
(60, 1426928325, 'user', 1, 'remove', 'status', 194, '', 0),
(61, 1426928358, 'user', 1, 'add', '', 0, 'status', 197),
(62, 1427007059, 'user', 1, 'share', 'status', 167, 'status', 198),
(63, 1427183228, 'user', 1, 'add', '', 0, 'status', 199),
(64, 1427526748, 'user', 1, 'add', '', 0, 'status', 200),
(65, 1427527136, 'user', 1, 'add', '', 0, 'status', 201),
(66, 1427527174, 'user', 1, 'remove', 'status', 201, '', 0),
(67, 1427527176, 'user', 1, 'add', '', 0, 'status', 202),
(68, 1427527214, 'user', 1, 'remove', 'status', 202, '', 0),
(69, 1427559940, 'user', 1, 'add', '', 0, 'status', 203),
(70, 1427559940, 'user', 1, 'add', '', 0, 'status', 204),
(71, 1427559962, 'user', 1, 'add', '', 0, 'status', 205),
(72, 1427559972, 'user', 1, 'add', '', 0, 'status', 206),
(73, 1427559980, 'user', 1, 'remove', 'status', 206, '', 0),
(74, 1427559982, 'user', 1, 'remove', 'status', 205, '', 0),
(75, 1427559984, 'user', 1, 'remove', 'status', 204, '', 0),
(76, 1427559986, 'user', 1, 'remove', 'status', 203, '', 0),
(77, 1427559988, 'user', 1, 'remove', 'status', 200, '', 0),
(78, 1427559991, 'user', 1, 'add', '', 0, 'status', 207),
(79, 1427560152, 'user', 1, 'add', '', 0, 'status', 208),
(80, 1427560212, 'user', 1, 'remove', 'status', 208, '', 0),
(81, 1427560233, 'user', 1, 'add', '', 0, 'status', 209),
(82, 1427560297, 'user', 1, 'remove', 'status', 209, '', 0),
(83, 1427560400, 'user', 1, 'remove', 'status', 210, '', 0),
(84, 1427560592, 'user', 1, 'remove', 'status', 211, '', 0),
(85, 1427560602, 'user', 1, 'add', '', 0, 'status', 212),
(86, 1427560609, 'user', 1, 'remove', 'status', 212, '', 0),
(87, 1427560667, 'user', 1, 'add', '', 0, 'status', 213),
(88, 1427638082, 'user', 1, 'add', '', 0, 'status', 214),
(89, 1427638156, 'user', 1, 'add', '', 0, 'status', 215),
(90, 1427638244, 'user', 1, 'remove', 'status', 214, '', 0),
(91, 1427638247, 'user', 1, 'remove', 'status', 215, '', 0),
(92, 1427638250, 'user', 1, 'remove', 'status', 213, '', 0),
(93, 1427639656, 'user', 1, 'add', '', 0, 'status', 216),
(94, 1427639662, 'user', 1, 'add', '', 0, 'status', 217),
(95, 1427639716, 'user', 1, 'remove', 'status', 217, '', 0),
(96, 1427639753, 'user', 1, 'add', '', 0, 'status', 218),
(97, 1427639814, 'user', 1, 'remove', 'status', 218, '', 0),
(98, 1427639831, 'user', 1, 'remove', 'status', 216, '', 0),
(99, 1427639896, 'user', 1, 'remove', 'status', 219, '', 0),
(100, 1427640018, 'user', 1, 'add', '', 0, 'status', 220),
(101, 1427640037, 'user', 1, 'add', '', 0, 'status', 221),
(102, 1427640046, 'user', 1, 'remove', 'status', 221, '', 0),
(103, 1427640313, 'user', 1, 'remove', 'status', 220, '', 0),
(104, 1427640344, 'user', 1, 'add', '', 0, 'status', 222),
(105, 1427640356, 'user', 1, 'remove', 'status', 222, '', 0),
(106, 1427640422, 'user', 1, 'add', '', 0, 'status', 223),
(107, 1427640429, 'user', 1, 'remove', 'status', 223, '', 0),
(108, 1427640464, 'user', 1, 'add', '', 0, 'status', 224),
(109, 1427720534, 'user', 1, 'edit', 'status', 224, '', 0),
(110, 1427720547, 'user', 1, 'edit', 'status', 224, '', 0),
(111, 1427809370, 'user', 1, 'remove', 'status', 199, '', 0),
(112, 1428414267, 'user', 1, 'add', 'status', 224, 'comment', 43),
(113, 1428586404, 'user', 1, 'add', '', 0, 'status', 225),
(114, 1428586404, 'user', 1, 'add', '', 0, 'status', 226),
(115, 1428586482, 'user', 1, 'remove', 'status', 226, '', 0),
(116, 1428586487, 'user', 1, 'remove', 'status', 225, '', 0),
(117, 1428586499, 'user', 1, 'add', '', 0, 'status', 227),
(118, 1428586523, 'user', 1, 'remove', 'status', 227, '', 0),
(119, 1428586533, 'user', 1, 'add', '', 0, 'status', 228),
(120, 1428587809, 'user', 1, 'remove', 'status', 228, '', 0),
(121, 1428587827, 'user', 1, 'add', '', 0, 'status', 229),
(122, 1428588381, 'user', 1, 'remove', 'status', 229, '', 0),
(123, 1428588393, 'user', 1, 'add', '', 0, 'status', 230),
(124, 1428590627, 'user', 1, 'add', '', 0, 'status', 231),
(125, 1428590750, 'user', 1, 'remove', 'status', 231, '', 0),
(126, 1428590759, 'user', 1, 'add', '', 0, 'status', 232),
(127, 1428591008, 'user', 1, 'remove', 'status', 232, '', 0),
(128, 1428591026, 'user', 1, 'add', '', 0, 'status', 233),
(129, 1428654339, 'user', 1, 'add', '', 0, 'status', 234),
(130, 1428654413, 'user', 1, 'remove', 'status', 234, '', 0),
(131, 1428654453, 'user', 1, 'add', '', 0, 'status', 235),
(132, 1428654590, 'user', 1, 'add', '', 0, 'status', 236),
(133, 1428655330, 'user', 1, 'remove', 'status', 236, '', 0),
(134, 1428655447, 'user', 1, 'add', '', 0, 'status', 237),
(135, 1428655653, 'user', 1, 'add', '', 0, 'status', 238),
(136, 1428655700, 'user', 1, 'remove', 'status', 238, '', 0),
(137, 1428655709, 'user', 1, 'remove', 'status', 237, '', 0),
(138, 1428655723, 'user', 1, 'add', '', 0, 'status', 239),
(139, 1428655799, 'user', 1, 'remove', 'status', 239, '', 0),
(140, 1428655948, 'user', 1, 'remove', 'status', 235, '', 0),
(141, 1428655971, 'user', 1, 'add', '', 0, 'status', 240),
(142, 1428656102, 'user', 1, 'add', '', 0, 'status', 241),
(143, 1428656137, 'user', 1, 'add', '', 0, 'status', 242),
(144, 1428656156, 'user', 1, 'add', '', 0, 'status', 243),
(145, 1428742983, 'user', 1, 'remove', 'status', 244, '', 0),
(146, 1428743055, 'user', 1, 'remove', 'status', 245, '', 0),
(147, 1428743194, 'user', 1, 'remove', 'status', 246, '', 0),
(148, 1428743200, 'user', 1, 'add', '', 0, 'status', 247),
(149, 1428765105, 'user', 1, 'add', '', 0, 'status', 248),
(150, 1428766048, 'user', 1, 'add', '', 0, 'status', 249),
(151, 1428766189, 'user', 1, 'add', '', 0, 'status', 250),
(152, 1428766505, 'user', 1, 'add', '', 0, 'status', 251),
(153, 1428766543, 'user', 1, 'add', '', 0, 'status', 252),
(154, 1428766576, 'user', 1, 'add', '', 0, 'status', 253),
(155, 1428766602, 'user', 1, 'add', '', 0, 'status', 254),
(156, 1428766792, 'user', 1, 'add', '', 0, 'status', 255),
(157, 1428766809, 'user', 1, 'add', '', 0, 'status', 256),
(158, 1428766858, 'user', 1, 'add', '', 0, 'status', 257),
(159, 1428766893, 'user', 1, 'add', '', 0, 'status', 258),
(160, 1428767174, 'user', 1, 'add', '', 0, 'status', 259),
(161, 1428769621, 'user', 1, 'add', '', 0, 'status', 260),
(162, 1428821429, 'user', 1, 'add', '', 0, 'status', 261),
(163, 1428932551, 'user', 2, 'add', '', 0, 'status', 1),
(164, 1429187371, 'user', 1, 'add', '', 0, 'status', 2),
(165, 1429187801, 'user', 1, 'remove', 'status', 2, '', 0),
(166, 1429188004, 'user', 1, 'add', '', 0, 'status', 3),
(167, 1429188222, 'user', 1, 'remove', 'status', 3, '', 0),
(168, 1429188230, 'user', 1, 'add', '', 0, 'status', 4),
(169, 1429188299, 'user', 1, 'remove', 'status', 4, '', 0),
(170, 1429188382, 'user', 1, 'add', '', 0, 'status', 5),
(171, 1429188422, 'user', 1, 'remove', 'status', 5, '', 0),
(172, 1429188427, 'user', 1, 'add', '', 0, 'status', 6),
(173, 1429188453, 'user', 1, 'remove', 'status', 6, '', 0),
(174, 1429188459, 'user', 1, 'add', '', 0, 'status', 7),
(175, 1429188476, 'user', 1, 'add', '', 0, 'status', 8),
(176, 1429188554, 'user', 1, 'add', '', 0, 'status', 9),
(177, 1429188595, 'user', 1, 'remove', 'status', 9, '', 0),
(178, 1429188597, 'user', 1, 'remove', 'status', 8, '', 0),
(179, 1429188605, 'user', 1, 'remove', 'status', 7, '', 0),
(180, 1429188615, 'user', 1, 'add', '', 0, 'status', 10),
(181, 1429188846, 'user', 1, 'remove', 'status', 10, '', 0),
(182, 1429188887, 'user', 1, 'remove', 'status', 11, '', 0),
(183, 1429188896, 'user', 1, 'add', '', 0, 'status', 12),
(184, 1429188896, 'user', 1, 'add', '', 0, 'status', 13),
(185, 1429189798, 'user', 1, 'remove', 'status', 13, '', 0),
(186, 1429189803, 'user', 1, 'remove', 'status', 12, '', 0),
(187, 1429189934, 'user', 1, 'add', '', 0, 'status', 14),
(188, 1429189934, 'user', 1, 'add', '', 0, 'status', 15),
(189, 1429189971, 'user', 1, 'add', '', 0, 'status', 16),
(190, 1429190001, 'user', 1, 'add', '', 0, 'status', 17),
(191, 1429190446, 'user', 1, 'add', '', 0, 'status', 1),
(192, 1429192118, 'user', 1, 'add', '', 0, 'status', 2),
(193, 1429192337, 'user', 1, 'remove', 'status', 2, '', 0),
(194, 1429192377, 'user', 1, 'add', '', 0, 'status', 3),
(195, 1429279357, 'user', 1, 'add', '', 0, 'status', 4),
(196, 1429365563, 'user', 1, 'add', '', 0, 'status', 5),
(197, 1429365787, 'user', 1, 'add', '', 0, 'status', 6),
(198, 1429365850, 'user', 1, 'remove', 'status', 6, '', 0),
(199, 1429365875, 'user', 1, 'add', '', 0, 'status', 7),
(200, 1429365908, 'user', 1, 'remove', 'status', 5, '', 0),
(201, 1429379220, 'user', 1, 'add', '', 0, 'status', 8),
(202, 1429713683, 'user', 1, 'add', 'status', 7, 'comment', 1),
(203, 1429713688, 'user', 1, 'favorite', 'status_comment', 1, '', 0),
(204, 1429713689, 'user', 1, 'unfavorite', 'status_comment', 1, '', 0),
(205, 1429796175, 'user', 1, 'add', 'status', 8, 'comment', 2),
(206, 1429796482, 'user', 1, 'add', 'status', 8, 'comment', 3),
(207, 1429974337, 'user', 1, 'add', '', 0, 'status', 9),
(208, 1430407892, 'user', 1, 'remove', 'status', 8, '', 0),
(209, 1430408421, 'user', 1, 'remove', 'status', 9, '', 0),
(210, 1430484850, 'user', 1, 'add', '', 0, 'status', 8),
(211, 1430484969, 'user', 1, 'remove', 'status', 8, '', 0),
(212, 1430484971, 'user', 1, 'add', '', 0, 'status', 9),
(213, 1430490905, 'user', 1, 'add', '', 0, 'status', 10),
(214, 1430490999, 'user', 1, 'add', '', 0, 'status', 11),
(215, 1430491179, 'user', 1, 'add', '', 0, 'status', 12),
(216, 1430491819, 'user', 1, 'add', '', 0, 'status', 13),
(217, 1430492013, 'user', 1, 'add', '', 0, 'status', 14),
(218, 1430492052, 'user', 1, 'add', '', 0, 'status', 15),
(219, 1430492131, 'user', 1, 'add', '', 0, 'status', 16),
(220, 1430727326, 'user', 1, 'remove', 'status', 16, '', 0),
(221, 1430727345, 'user', 1, 'remove', 'status', 14, '', 0),
(222, 1430727348, 'user', 1, 'remove', 'status', 13, '', 0),
(223, 1430727351, 'user', 1, 'remove', 'status', 12, '', 0),
(224, 1430727354, 'user', 1, 'remove', 'status', 11, '', 0),
(225, 1430727357, 'user', 1, 'remove', 'status', 10, '', 0),
(226, 1430727360, 'user', 1, 'remove', 'status', 9, '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(3, 1427524390, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '41.0.2272.101', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safa'),
(4, 1428588669, 'fb6f173f', '::1', 'Unknown', 'Unknown', '', '?', '');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES
(1, '', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, '', 'ChIJfVSScR3SdDERarq1P6Mafi0', 'ChIJfVSScR3SdDERarq1P6Mafi0', 'Khu du lá»‹ch Äáº¡i Nam', 'QL 13, Hiá»‡p An, tp. Thá»§ Dáº§u Má»™t, Binh Duong, Vietnam', '11.036086,106.632199', 11.036086, 106.632202, 'rv_park', 'http://maps.gstatic.com/mapfiles/place_api/icons/camping-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=11.036086,106.632199&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C11.036086,106.632199&format=gif'),
(3, '', 'ChIJ0T2NLikpdTERKxE8d61aX_E', 'ChIJ0T2NLikpdTERKxE8d61aX_E', 'Ho Chi Minh City', 'Ho Chi Minh City, Ho Chi Minh, Vietnam', '10.8230989,106.6296638', 10.823099, 106.629662, 'locality', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.8230989,106.6296638&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.8230989,106.6296638&format=gif'),
(6, '', 'ChIJA2Ui9N0udTERLRHZAuT3cBY', 'ChIJA2Ui9N0udTERLRHZAuT3cBY', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', 'http://maps.gstatic.com/mapfiles/place_api/icons/cafe-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.769319,106.669258&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.769319,106.669258&format=gif'),
(7, '', 'ChIJgwBiJxCkNTERmrzuxYyvpfg', 'ChIJgwBiJxCkNTERmrzuxYyvpfg', 'Äáº¡i LÃ½ ChÄƒn Ga Gá»‘i Äá»‡m Autralia', 'Chá»£ ÄÆ°á»ng CÃ¡i, Huyá»‡n VÄƒn LÃ¢m, HÆ°ng YÃªn, Vietnam', '20.974658,106.052262', 20.974657, 106.052261, 'store', 'http://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=20.974658,106.052262&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C20.974658,106.052262&format=gif'),
(8, '', 'ChIJc7PBOygpdTERBfm195KyEzY', 'ChIJc7PBOygpdTERBfm195KyEzY', 'Vienmaytinh.com', '180 HoÃ ng VÄƒn Thá»¥, 9, PhÃº Nhuáº­n, Há»“ ChÃ­ Minh, Vietnam', '10.799588,106.67532', 10.799588, 106.675323, 'electronics_store', 'http://maps.gstatic.com/mapfiles/place_api/icons/electronics-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.799588,106.67532&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.799588,106.67532&format=gif');

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
  `emoticons` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(2, 1418192623, 1, 'user', 1, 'xmxOo3PY+igrcPacZ6lMu+aHuv5ht5b9lI7cAOl2Mnc=', ''),
(3, 1418192624, 1, 'user', 1, 'mL3TMoXDG6hLZ7vFXNve7KV3qgHEWHzDmGMH3l+7+bs=', ''),
(4, 1418192625, 1, 'user', 1, 'PewIUU5KG4DJ03VJY4VPLaUCOiLEtWkPLrEm47HIFyk=', ''),
(5, 1418192625, 1, 'user', 1, '3F5sFWBzQ7bCzYtsMuDdsBy0XfjhbbsNMjxnDrLIrG8=', ''),
(6, 1418192626, 1, 'user', 1, '+GdchkAhwP9brSxUUUjXMa0HXZTDtBRK1+hnYtg7AB4=', ''),
(7, 1418192627, 1, 'user', 1, 'fEoHvmZ3fIdClooBXYn1Xqo+FeuyS+RhRDL4zU89DHo=', ''),
(8, 1418192628, 1, 'user', 1, 'rUuVUosxABLcMEz/IXcyDSaqthvfFTmmrRiOP/ZSnh4=', ''),
(9, 1418192629, 1, 'user', 1, 'j2PTBXM7IKCEgnETPDc5tglLBBvdRC7tgdtfabqDTgA=', ''),
(10, 1418192629, 1, 'user', 1, '1M0EpyAjSTGirn0PoF4m65R5Jilyprxn0V43iuf9TjU=', ''),
(11, 1418192693, 1, 'user', 1, 'KFA05A8BKJ0258fqTOnyQckzbjwsPv696zpnwu9FXGU=', ''),
(12, 1418192693, 1, 'user', 1, 'BZs49HewgvmvGO9JVvwCNVld6d3NDwBiYzLPpPI5jUQ=', ''),
(13, 1418192695, 1, 'user', 1, '6MSGxBg0BSW9Fv1XTFNGXMy0ag2uIXI5dqBBIo37qEI=', ''),
(14, 1418192696, 1, 'user', 1, '0HzRQk5N4jthwQS/Dzx9a5nXAqFhjalcclHiQt+qQkI=', ''),
(15, 1418192697, 1, 'user', 2, 'Ax1ggQOBjF/FKon5bDePU/K6QMS/e6tWYfn/lmFC3zI=', ''),
(16, 1418192698, 1, 'user', 1, '/uku1amqqFEs4cWLTJR92aTjAo8KbDMnEzHO+WUhnCM=', ''),
(17, 1418192699, 1, 'user', 1, 'r4Jzos9+qOvRyBvFBfxddL7rgAyVO2TrIUDlBbrIRXY=', ''),
(18, 1418192700, 1, 'user', 1, 'EkMtrfVQms2QvBxnImcVQhtnIdlpOlBWqIIfU4Jpz+U=', ''),
(19, 1418192700, 1, 'user', 2, 'NZJaAAUJ9gS2xAZJNPG5BfxH8+/a83dnHl1fOP56KDY=', ''),
(20, 1418192701, 1, 'user', 1, '643c0onF1xyzv/0672tGY/u2JqA4cgoxAPV1cUSQEu0=', ''),
(21, 1418192703, 1, 'user', 3, 'cI3gpLhSGlHyT2Ntw/xtVnfPRMaRqjKoGw76c6vMMIc=', ''),
(22, 1418192704, 1, 'user', 1, 'nGRIDZKLS5Wb/9Ue/rT7+9cABOPeZyEE+acgrtezHzM=', ''),
(23, 1418192704, 1, 'user', 2, 'uQyGSOqvaUmyLeZP+u68J+YICw1YQNCtys3SQwd+FxU=', ''),
(24, 1418192704, 1, 'user', 1, 'ne9tAATBKFq8d/veHOeVn56zgUw7zGs1gloLDOgYR8A=', ''),
(25, 1418192705, 1, 'user', 2, '0A6FSrtFiwtm3Czx/FD5EpZvVx2pD1AnBSExCGJwe0c=', ''),
(26, 1418192705, 1, 'user', 1, 'l1i61HQuh49ScBmgLAk0POmgbIsA3a7tEhAo1SAfpxI=', ''),
(27, 1418192705, 1, 'user', 1, 'abAntmFbTacYBbIxqHGLX8oKM55dgIUhxmvX7e50Bqg=', ''),
(28, 1418192706, 1, 'user', 3, 'mF0NoG56+RznRoM1ucHkdOzSph4XF00GVxH3+B5I9zI=', ''),
(29, 1418192706, 1, 'user', 1, '3Mfq+SErA7lxRL4uLSqM17/Xju2ux52yLf/yaHHc5d4=', ''),
(30, 1418192707, 1, 'user', 2, 'ikIxxh3Y116WDx93qKOj8M5Tb4eKS95piDU4+5zyxaY=', ''),
(31, 1418192707, 1, 'user', 1, 'Cf48e4yrc3Kj/ct1i7AwlzkvrwLmzjEhSAUYAEBGxTI=', ''),
(32, 1418192707, 1, 'user', 1, 'Ph6BfrfyozKqP/tBv2RblA1MRwFsvwtcfyeEV9BqEm4=', ''),
(33, 1418192708, 1, 'user', 3, 'XduhcotxaJIwWh41rZ04apGGhxZRA2t8BlpL2z/iRos=', ''),
(34, 1418192708, 1, 'user', 1, 'cvXZWnkSNV9HuK6rB5wNWT6Aqef2B3sgMCS+mIAjAfk=', ''),
(35, 1418192708, 1, 'user', 1, 'N/rKj7XoseiA5ibJkhp8uJXYHiQpgmBRjxl7qkbUDEU=', ''),
(36, 1418192709, 1, 'user', 1, 'CyvlZ6YTS78kEz+FGeR+jZ0ivnhIsDovOV2ik5gABPA=', ''),
(37, 1418192709, 1, 'user', 3, 'M+LECUyTYwx5YnhnM3ABVp/3M/bQv0jB3TofZ4mwlzY=', ''),
(38, 1418192709, 1, 'user', 1, 'JN/MVR7e1vmQQcch9JWM71qLGm/bgYMc34c7IkV+uTs=', ''),
(39, 1418197110, 1, 'user', 2, 'BFQrtIqculykD+UlmixH2uU6c7FgI4GJ/ie11XVNE+8=', ''),
(40, 1418197128, 1, 'user', 2, 'tf8ifcPucQpfca/+b60U71gwa1KHebaBLrvu7tVXeVM=', ''),
(41, 1418197131, 1, 'user', 2, '1NGwpBr8Th2XwbWp2zx+iMk7ciidC0uYhS73/4LHr0g=', ''),
(42, 1418197141, 1, 'user', 2, 'VGC1VCRMC4OC+8rERwpBLa7J+qTsQJvQK/gX2Wam2+w=', ''),
(43, 1418197417, 1, 'user', 1, 'j9AakhTAUzFWZTFtTBhfNeKSRZ5sJfctoXgRX0Ld7iwhciM7F4wv7mYnaZrdEBLg3ur7gxdK7NMcUtUlBPumhQ==', ''),
(44, 1418197456, 1, 'user', 1, '4IZoQQnyekMsn7r53XB8hZdyUlsUTS/psHggX8sWkwO9SaLXQyh7kQCDMWhmggM7CudrysKgMTOydivprsTqZg==', ''),
(45, 1418197547, 1, 'user', 2, 'RjKtAC4dSgBLGHqKyN5GDs+rTSfleTah5FWJ7xedV4LYhROiBxL5xaLPiB7T8nyZMord/E4/34hrVIs3cImkdQ==', ''),
(46, 1418200090, 1, 'user', 1, 'MOc0Jme7/0hrlZcYvo/B7SgjhvVxLYIeq8G7LIH8i1M=', ''),
(47, 1418200244, 1, 'user', 1, 'hDmpuW357nz6/WcJcM5xLrRlgZJ1wwrkaPJUUOnEju0=', ''),
(48, 1418200505, 1, 'user', 2, 'M/Ae3y39vWoFxFfX/p9jR+MMsGZl9SWWVwMlQxcXz/0=', ''),
(49, 1418200567, 1, 'user', 2, 'YdkJoMu+BJ8/w2p61vKqY0792yN6jzpnHS7tGXnq8So=', ''),
(50, 1418200577, 1, 'user', 1, 'v6Dg7z/YG0fdtNfubjU9hbHyfwnKoEFltiBMNWQlW5s=', ''),
(51, 1418200631, 1, 'user', 2, 'jcOrwjkQ2vPKto0/MJTGpJSPATKzdLoC7hc+TtJOC7A=', ''),
(52, 1418200669, 1, 'user', 1, '5qFDWWir+yrY71YrIYnEVihCDiM2HzwZGWC3bbvrOPc=', ''),
(53, 1418200777, 1, 'user', 2, 'o7ggwrv2IUdk9abqJHXdwFCHpowvWtXBeDYEQG5HD+E=', ''),
(54, 1418200797, 1, 'user', 2, '4rm2erf1JqfVehv+y/5RvK5UxaAg1/GzpGM8kTOjoV8=', ''),
(55, 1418200805, 1, 'user', 2, 'G7VpHe+xlH9ZAsIu9fFICDiEQXsp70nuym+MxpVRYEQ=', ''),
(56, 1418200827, 1, 'user', 1, 'ciOXXE6IckxiMT50XAoAw6RoHFSuIZC7gVS6gT5ceIk=', ''),
(57, 1418200851, 1, 'user', 1, 'Z7u/AYeOMkwNGWcMGfUn0HYSYM9AO/jYOWV9cVkY44s=', ''),
(58, 1418200914, 1, 'user', 1, 'Fi9NPWnu10uZok5DacXKRSGxdTpnowKwp0d80qmNs6k=', ''),
(59, 1418200937, 1, 'user', 1, 'YbhtAloTk2/Her8LkDifk1LwWLYChq5KyPygEgz8vr0=', ''),
(60, 1418200953, 1, 'user', 2, 'qobUWYW5kIQrxDG026VoOGswNErVYwnIg4+fPaIgWtY=', ''),
(61, 1418201018, 1, 'user', 2, 'OyYunL2rO7FKJa5H6316B6nzDNzKGHcjapDUu5LtG4Q=', ''),
(62, 1418201020, 1, 'user', 2, '0G0ChhntMrAiBVubZs1TDBBUpMVK98NtzVbYnslccMM=', ''),
(63, 1418201034, 1, 'user', 2, '2dWNI1mZDFw1RTnOiZgvVgHUxhzg7QL1DJcSNieHw9A=', ''),
(64, 1418201146, 1, 'user', 1, '2dJ99UC2nQE5faQSRGG/HXgW86LO0N1wDJkp67/VjCc=', ''),
(65, 1418201389, 1, 'user', 1, 'YiMgUCvWLZhXpO+MSvYkA2IKnAkTL2tCn2zo0rG9GZo=', ''),
(66, 1418201469, 1, 'user', 2, 'LWcQm7+GtLujATv0HNeV6c06PcCJLpjXS19WEtv8ruc=', ''),
(67, 1418201626, 1, 'user', 1, 'DVAVj5G+9U7s2bCo3vLsH0sCWsDaU2SjXsR6FF6K3R8=', ''),
(68, 1418201899, 1, 'user', 2, 'JWDx5Pw7vf35kqPEGAeKBJUwvpCiJpy2/s+Lj8dKAQ8=', ''),
(69, 1418202222, 1, 'user', 1, 'juf6eZ8q0nX11/U+8VwKxCBgUT81jFbNPRDkD8l2BWE=', ''),
(70, 1418216968, 1, 'user', 3, 'Gjcj4ftxLPlJNnIjSpc/vqQU5Iekuy4HSmqf7C8JdjU=', ''),
(71, 1418338075, 1, 'user', 1, '728fJ7FeMTgLtR0aYd0ANJaVFCA2ylH749SKL/nWZ8w=', ''),
(72, 1418338294, 1, 'user', 2, 'nWv9f7Cj22VYP3/5T3YjS5z6BSRGZf3KT6JGrly6ORs=', ''),
(73, 1418382075, 1, 'user', 1, 'NU+ThQpual0KmhqsrC2XGLGXNPyoWp3r0Ky3yHUX8vc=', ''),
(74, 1418382895, 1, 'user', 1, 'ZrjrFSegYGVTIufzChtRUi3P4S8RpFgNj7Rm427u/Mw=', ''),
(75, 1418382959, 1, 'user', 1, 'NKd/UHlU2yEqkcKK4RXyvh++fZAXib6DkxN8eNl/iNs=', ''),
(76, 1418382995, 1, 'user', 2, '4uwMI6KUBG5+2mqkaKsl70Kkcs39Z+0nRogjohYDC+Y=', ''),
(77, 1418383008, 1, 'user', 2, 'XgD6xFt5KSdcFxD3FJQ5cE0ZSvWPbXjsTxrYBDOiAgQ=', ''),
(78, 1418383013, 1, 'user', 1, 'q9Tgka9Z89LWhrruODhGDQYgWg/Pe98epvqVCPh0lZM=', ''),
(79, 1418383088, 1, 'user', 1, 'KwO94USGZrgccOstvmfe7MZW9BrYUXXMi8bnbtFfPRA=', ''),
(80, 1418383425, 1, 'user', 2, 'Kv4G87hECuMbmrKDimDF+Jc18A/6niYPAE7weA5YvdA=', ''),
(82, 1418383454, 1, 'user', 1, '8FHccz0bG6JLxh94tWAjlA3F4ByfyX0t+ObaTGK1jMc=', ''),
(83, 1418383643, 1, 'user', 2, 'HA3HaTuthex47vLj38kPx07rpG566a/Xbs59VCHcgtg=', ''),
(84, 1418383651, 1, 'user', 2, 'upis6yK3cyGTgqvJ+3Au3cbDBgT6Yh83rtOT/xOncgA=', ''),
(85, 1418383661, 1, 'user', 1, 'EQiFdRC2vad4Qh5ud7haqwly8DwOw/NWM5VDup206vM=', ''),
(86, 1418531590, 1, 'user', 1, 'JD96K7+cvPYV0S/1Q+GN+UTLYALc9cGumYX2AtOOu34=', ''),
(87, 1422195462, 1, 'user', 1, 'IRhVPnmEdgCCxZHkhhe3HsqK9iRIJvBxbkGI6Ztir/o=', ''),
(88, 1422195472, 1, 'user', 1, 'mlow3jFTRFjraQd6LprbToEqaK8q+dVr7BwqnbjnG6c=', ''),
(89, 1422195473, 1, 'user', 1, 'dgqF23A7UqRVaPmdf4gBFkxrmhQbuXRwisCvLXrYpLk=', ''),
(90, 1422195474, 1, 'user', 1, '4pVJ/yxIDic2bDv68o4GqsKOhj4RK64Kn3PeTxmmhM8=', ''),
(91, 1422195668, 1, 'user', 1, 'ekULvYg6Owg8ZfQ6sd8tjxB86lP8fqZYeJE73oyh/D8=', ''),
(92, 1422196030, 1, 'user', 1, '2vCFS3qh+resoXS0Q3SNzLt8jrlM3vyNLXIvFhdGUaw=', ''),
(93, 1422196033, 1, 'user', 1, 'xSVp7SpcfiTD9Fo1Fa51ROaMUJjjSw8GG4sya+cSik8=', ''),
(94, 1422595683, 1, 'user', 1, 'QAOEGXTDJVrUHxKAd/NbC8ZtqxnavXWsTdZaiJjRbis=', ''),
(95, 1422595686, 1, 'user', 1, '5KNYVJYvE866TPMGsYIeYxo3ELMNpll0p+PHNVyo59c=', ''),
(96, 1427004848, 1, 'user', 1, 'GMBNTn76TkQ7LgH6amMvDloaIuBxfeVDp7TQQnci+Mo=', ''),
(97, 1427004883, 1, 'user', 1, 'q8sXKoRKaOsUDS8hypJnKdNDe3zwhWn4euXcG68upf8=', ''),
(98, 1427004893, 1, 'user', 1, 'cwjlsmg9mdo3ZJsnRE10b9l31XJBevjMa7R9Gw0NwWU=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_hashtag`
--

INSERT INTO `messages_hashtag` (`id`, `hashtag`, `author.type`, `author.id`, `time`, `content`) VALUES
(7, 'tag', 'user', 1, 1418363022, 'v'),
(10, 'code', 'user', 1, 1418964326, 's'),
(11, 'code', 'user', 1, 1418964352, 'x'),
(12, 'code', 'user', 1, 1418964546, 's'),
(13, 'code', 'user', 1, 1418964653, 's'),
(14, 'code', 'user', 1, 1418964666, 'g'),
(15, 'hashtag', 'user', 1, 1423665527, '.'),
(16, 'hashtag', 'user', 1, 1423665540, '..'),
(17, 'hashtag', 'user', 1, 1423665625, '...'),
(18, 'hashtag', 'user', 1, 1423665670, '....'),
(19, 'hashtag', 'user', 1, 1423665763, '.....'),
(20, 'hashtag', 'user', 1, 1423665832, '......');

-- --------------------------------------------------------

--
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `private` int(1) NOT NULL,
  `type` int(1) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `private`, `type`, `name`) VALUES
(1, 1416920954, 'ebe59e14', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1416920954, 1, '1', 0, 'user', 1),
(2, 1416920954, 1, '1', 1, 'user', 2),
(3, 1416920954, 1, '1', 0, 'user', 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `author.type`, `author.id`) VALUES
(1, 1427297824, 1, 'user', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1429190446, 'f8934a6e', 'cf34645d98a7630e2bcca98b3e29c8f2', 'ss', 'Láº·ng tháº§m.mp3', '', '', '', 4, 4, 4, '23ac7f8ce645aec0e94a5e0700d9efc1.mp3', 'd31ffd62f049fdd180017baf0e0634d7', '0536ef93', 0, 3201024, 'mp3', 128011, 200.045685, 'audio/mp3');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(1, 1429280140, 1, 'user', '1', 1429885041, 114);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1429190453, 1, 'user', '1', '0'),
(2, 1429280125, 1, 'user', '1', '0'),
(3, 1429333217, 1, 'user', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `code`, `language`, `value`) VALUES
(1, 'notification_error_timeout', 'en', '3000'),
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
(13, 'popupNotification_timeout', 'en', '5000'),
(14, 'popupNotification_limit', 'en', '5'),
(15, 'sleep_when_error', 'en', '1000'),
(16, 'sites_id_time_limit', 'en', '3600'),
(17, 'sites_info_time_limit', 'en', '3600'),
(18, 'sites_id_rate_v1', 'en', '1'),
(19, 'sites_id_rate_v2', 'en', '2000'),
(20, 'sites_id_rate_v3', 'en', '3000'),
(21, 'sites_id_rate_v4', 'en', '4000'),
(22, 'sites_id_rate_v5', 'en', '5000'),
(23, 'notification_info_places', 'en', '5000'),
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
(109, 'hash_status_content', 'en', 'g::key::status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', 'Asia/Saigon'),
(113, 'user_language.default', 'en', 'en'),
(114, 'user_private.status_default', 'en', '3'),
(115, 'hash_photos_static', 'en', 'g::key::photos->static'),
(116, 'hash_photos_other', 'en', 'g::key::photos->other'),
(117, 'user_private.info_default', 'en', '4'),
(118, 'notification_text_timeout', 'en', '4000'),
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
(138, 'security_accounts_loginTimesIncorrect', 'en', '5'),
(139, 'security_accounts_loginTimeAllow', 'en', '3'),
(140, 'http_cache_expire', 'en', '86400'),
(141, 'http_cache_expire_quick', 'en', '3600'),
(142, 'http_cache_expire_static', 'en', '129600'),
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/no-avatar.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/no-avatar.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/no-avatar.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/no-cover.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/no-cover.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/no-cover.jpg'),
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
(202, 'hash_comment_content', 'en', 'g::key::comment->content');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_faces`
--

INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(11, 'ad10174a', '13554915b77fe833a205485ea61e41ba', 1, 'user', 1, '726b114fe58b6cd35b839371071ae1f4', 'drive', '10736b63', NULL, NULL, '10.77', '10.77', '125.38', '125.38', '1.1963', '1.1963'),
(12, '2a498d1e', '27e3a96afa5697df4f5d5dc5b56af0df', 1, 'user', 1, '343e28ee2ec6ec80943b410d2cce74c1', 'drive', '817d59c8', NULL, NULL, '91.54', '91.54', '503.85', '503.85', '1.3396', '1.3396');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1429379219, 'b01d0653', 'fee5909672179ff7db422c1092fceac6', '47bf294f.jpg', '4815bc31 (1).jpg', '', '', 0, 0, 4, 4, 4, '236c5e12e465fe2af50b81838bf4c99c.jpg', '0', 'a715a28c7a527fec1e2698f9b8e8c72f.jpg', 'd6a04472c937bce6ee751bd29fbcff94.jpg', '40671ca8a56801b76f59df00dd01f6b3', '0', '309f667392100ca3b12b380267e09289', 'c5d462b4a06f45a9c0a87653411a3200', 'cd89ca0e', '0', '1dcafc18', '26a564d3', 2348, 1409, 'f/2.4', '0', 0, 1429379217, 2292541, 2, '0', 0, '392/100', 1600, 'lge', 'LG-F180L', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/12', 0, '0/1', '24/10', 0, '3584963/10', '0'),
(2, 1, 'user', 1, 0, 1430492130, 'dc85621d', '343e28ee2ec6ec80943b410d2cce74c1', '9bb57ecf.jpg', '0fc454ff.jpg', '', '', 0, 0, 4, 4, 4, '5dc53266e7f4d9f3b051892f43cf61ae.jpg', '0', '0', '15807dfd4cc421fb9d577726ea2f6cd9.jpg', '3341d870c96c03952ed8e4a0970b38da', '0', '0', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '4dcaf1e3', '0', '0', '40219890', 675, 675, '0', '0', 1, 1430490988, 292389, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 1, 'user', 1, 0, 1430492130, 'f3dd1a1a', '726b114fe58b6cd35b839371071ae1f4', '4d191094.png', '0fc45x4ff.png', '', '', 0, 0, 4, 4, 4, '46c2acb0c8b370100183d0f14248c56c.png', '0', '0', '0', '0a90cb74f6e23f994325fbb27749dcb5', '0', '0', '0', '54c0cdb9', '0', '0', '0', 150, 150, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 1, 'user', 1, 0, 1430492131, 'be0f55b2', '4ad28ddfdaf6cc3653f6d0997666df91', '7aa01062.jpg', '0fc454ff.jpg', '', '', 0, 0, 4, 4, 4, '28f321ad7e5327ca55a2749d2a5f8435.jpg', '0', '0', '6303ddd26e1bcd1f4c9f8a41858552a1.jpg', '3341d870c96c03952ed8e4a0970b38da', '0', '0', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '76481406', '0', '0', 'ab477c30', 675, 675, '0', '0', 1, 1430489601, 292389, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '0', 0, '0', '0', 0, '0', '0'),
(5, 1, 'user', 1, 0, 1430492131, 'bce7ee39', '6ea20ad3fad7bede08e70742dd47d25f', 'b70361a1.png', '0fc45x4ff.png', '', '', 0, 0, 4, 4, 4, 'e71da2202ef7c3a5c261bbc2c592a01e.png', '0', '0', '0', '0a90cb74f6e23f994325fbb27749dcb5', '0', '0', '0', '20ba0d09', '0', '0', '0', 150, 150, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0'),
(3, 1430493119, 5, 'user', '1', '0'),
(4, 1430493119, 4, 'user', '1', '0'),
(5, 1430493119, 2, 'user', '1', '0'),
(6, 1430493119, 3, 'user', '1', '0'),
(7, 1430620473, 4, 'user', '1', '0'),
(8, 1430620473, 2, 'user', '1', '0'),
(9, 1430620473, 3, 'user', '1', '0'),
(10, 1430620474, 5, 'user', '1', '0'),
(11, 1430726557, 4, 'user', '1', '0'),
(12, 1430726557, 3, 'user', '1', '0'),
(13, 1430726557, 2, 'user', '1', '0'),
(14, 1430726557, 5, 'user', '1', '0');

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
('x96aTtJRjlFmP9LyzZAok2QmrtQ0sKOZOBIKe99WB81', 1430840728, 'Y4jP9r9H3DsLdyfaAKKJP+rFHgJFN+BrZNOfd7Gf6Ao4tcgx55LtyNcpGc58HWtMm6AXfStsWBaVCkhKsKlJl+Tj4kFlABwqd+rbJS0zjxDrURw5gS8LTheAue7PKA8Mp5edcL6/oygaYLzkoWagDagvDULLYheb5vjJkvWbELux+JS/1JUJ5DEZD90SNNSWN7by/ZxPxrVL37rUfxubwC9zZZC3LSTFY/ygLXYSuHL2uNh1stRnBP5GgVoVwxBEJN452zMim7umzzckDTyDwQm+ErJXsMZKIUMWeKmzA2Su5SDmXQLM7kMuarkoL9mAWhCmFf0orBSfV1w2wD9JGbsa6aWYnzgZhAwuIwKisM4FUvQgVFGstTMjV6/vAlS893XhBy6OGmxMcmfoOeTXpinbBUjqB+S+OVcbN2h80srkIIzpRCeNGz0y+h/PS0k3c0bzJHJzTQN/z3zDXaM8fNfIKivfM2UL1FRthQgrYxiw0PDfnxYZNFo+IqUHCezJuMbMdvG3GjOn9JU2ABpVIVMq+9zPTBfhCOisuBjfxYzC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfe0jJ8qND9x8zXPpDliVjse55ypFu9ms9554Ozv6nvn4B+36C6g3CNx8N/DcygA2n3iiojxqtaLqp3azwJ9kaPbxElIIOj6oM/u1lrxIg/fTWJ8++Ucpag60UGvMWizdboHznQ4Q6KFa4jgff96mSP0ERA6ZIdZ9OBiL3J6VzjMQcybmPDQMqW8ITEV+1yd4bohhg0XyUtDlj03G6CEQ3LGcZRFGeV39N4S1Yr2bFNkO9lw+buVUuSNnD1sdZDJ6qoozuCLRuNumS6i6TcZTO5vKrrLFv+H+kQRMCCx18Jb7TkvvOto4oRqTyWZQ0me2dRLje8q34+6cAjwFcrl05qbs8d/S9U/ol1WFe0lASQnh2O3jcvrYFep5ClXGpVyoE9tMAXZfipSGvdWzRKsrG3OEoNmD38POZmjmauGXNxZsNgKSAGSyQACd+vDX2YTW9fyXJEocE1cbumKYG+WSbuX9x1arE5SdLnh93h44tIo2oG0cIcsE64W6DCk6OnAoMRQJBT9m20sbfJBDlH/Tgv+Wg5XvyUMhefcND1dRPUjVtsep+26rwAjggSw3t94+IhhadzPb4UU6sRNh43XK5UmvoEHATF2db1I9Pk2zN9CO5tUxK6Ht7FAncxDZV1k05qCwdEdOU11cdrKBinmTK9DdWbC6ANMieJKZis+rqAEik9XZvUNIv0rCQwzl4iNDTCTUV2KCAV3sZqByC92IESlnwd7ew8WeKWOEff3rsTF7hhR+gGaPIm+6QYak3YCrPoIG4yCfPVEEgcvHt3Hepj16sf9L8Ia58jO7E5kZHCMapKoBRFCN4H9q6P6dGPBxHGRZ/KMRb8cT6fid4wUwsbZ1/5zxcGTfRA32OVK5uh7KF6OKOKjOQIJOZrAQDlWsm7bQ2Cen4AUrFNeclEi39JdOEModH6xC2O0Kp342sJopO1PK+mKBrJVgXsAkI9yFioaYL/K9ZEGJ5UJx4obJzNh1dANqPuwnjnfD1aBQ8Gwj8jpCvTu9rRszJ+iNPb8W0T8lcERQGKyVwnhKogIo2ur4qvq5MzjWibnaM29bw06NuawXxhxozrNRYWtgJq6RVQk0UMie62D9bz7J5tQ3qRL96ZLbe65qSGsN433KSDdEi7mLht43U+JmyPkurd3daSa118AAWOd3IG7772o8gJn+2nG/dRz2hSioyT1j4xE7MgsGsnvEiv4Q1Jh2CcCxl0GYSgwol9dbzrjw2M9CymosLuWZnEtAu8Ly5Y6aLDZB9jKRS2ZCvQQM1QxN94a1+i874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnblTRN8uvWH/sBrXt0c92pc2CqzX8UBizKSwd9QfmaaLTUgvTeVKiM1AKJ2VTE+0pdX6k8gtuwtLZEIBYwGrkiDHja2sFtBpcUVmqjxNOwPGs/yOzSQzkeDoJeyKhizauewul3Pqka1x1lmZglOXCtp6UzQ8rNzgd+ORsXRXooaX2WdIBvnGgay+ErrJ38Tzu6U+iu6NStKzierJzgccA3dZRLZufe25ngCNrUPIava8CiEEAPjT8pzUMUT7Xrz/3WKF5YErJdl3pDa9dkRWzVMFM6i09KfkPgBXWHzQaF0P2ry6Oa0KudF7diYurhvACwCsS7+H/2I2a/EW9PKpzpevQDVz2dECpCmRlJUMQE8MDh2H/p357NJN7QYlaPeYfpghN7IP7OP15yzck3kOPDKaBlUVF96QN3GJ/w5vFA8gFb0FNDGarJg5JsUXV4u7L8suoda2Xo8pinPnpTjxvD5dRZvKbprafN5TInEHFfSnc5YZFraWwnaQY47LTNpyKK3DHf2M1cxuiGDVx6L3P8xOUcot6msPP9xJX0UtF+2fod6fBAEhzeyagcRbk7FpxXgr9WY07opx6FqhLWNnlH7Uve65/9j5VlA2369FC6vwwfoYliNfvc8JqNFgk/TSPbBwlQbH2BwtCLc0PXUddIx/+rHm/lZL/ajuZ/xj4AnnOZQNxLutihK+UL8mGaljNZ+scy6NK6krnOkXp3h+yd2rLdxAjmrMrwcOxIcNM8a3HEmI1vWnArBPPngVtNhtI83PkKzwCRX7b6a2hStp3c+C3o0m5YAUt7iCgiJSp1ZXXUmvTBTmlMB1IqtqOjTIs0394BdCUO8lGrD2Y7Qg2cQh6wSWqmMbqkI2E6jMbcEadQ9wcMDV6f8IHXiKoT/Df9dx4RN8Qqyb1GQKlsLVnVxvQzb+WyuAPEuXDWo8LdTHJ+6j3En+K4nnr+UVhO53wOY1W2WgcUBkypUxy3otZ6T6L6e/lSUzPUtERlq63ZG97i+X+TFbjutkOrR8hRAiByj2chGhB/ll6MUTUygd3mKJc7mnIgOtkKhNMqZDFtM34IL0VcvMkx1FwXXECyxks3Aqn0/WxYUKxBdC663oat/x9laXGlDCCnk4qhsgTMhRQoIKw4Dc/+2i/ivnOf+qL/4SXSLkmiJFT7YZ/RxcrWW6smN4m8JxZuoBtjZstZDm1ZfL7rxj9sd2VFu11WG95j2kgFQQicOx4pjqp/BFaHYgk/j2eThdVYSmuC74rnOSLpwVTjMr1oJphFw7CWCLrPgzCwSZ/Eza7TIF1uzCa37uuTuH7cYpLFe+B++VHP75Tz3Df2fliIllO+S6LY5qjQnLBZLjScWMHYVXjt1iQucr6mHblDz+crTEnjj4gJ1DN8FFtNDNMUizTjHi7QeZ420cadQ1UER2ZNo+++7C+yYkIHQhTyLIUkrmY/wd44i1dF6YcduHEyJH3q0t9PO9vnE2ut4xpxmODtOVfeDDmWXFrV1zCgO0pvjyzKA3l2+iYUZps0vl82eL0dOXhjgjXJiktFhuuFmuUmTJJFlrKjRFxomgrOGcWYfxBUzzyb0dgfpfmnD4rBV548T3kdLQEyEdV8TPmABf8JyCrpjk95qWD1U8VVIrXANj6xoaJHuAhPip0dSXYoUmSJINFmcssrCzaakOjoY5R/iKH3/3j/EYuq2+aR2vtpgd4QxybEYF1Diu4JA33mxLMki4IzLYMQMek3RPKwEX4ODN5VnOQYnrIyw4qlrqjCzSaapEISDzYYWo5YCzyGi9I/ZvQdcC2CJbn2Wk+lxNJQVrxsQyRbTKiuJMHbv2ey5QyH0OFaZZXOnW9ryXEKJhQZKw8lzqOSaHWe4RiUSKaR5EU/hK/3E9TfVSM+kt9sqpKVExmm5Aeo/G9+Yov8P+eeMzZ7N61e046BguPAOWxZhH01pr/N/OSsMrnWDw/1xuEJpVUmMndmqSZlpHdlNuR7+VX05ohjOVpNCput++6iPp7U8xTTx8Lpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9s8SO+QgY7+WXwJQyQEodYo0UgmBOTKYk0uxU/4+Bykszxc0cxT5tx1HVrnZthYlRoI6d4JmCXn5+ID/1T7oeLjLnC0TC93VoMsjBaYZGMCufJoCWBhJjY0WamLdI3Y/e2+2nfV3HfQjJkyWeip18K95h1p28zBtENveTWh732jE6B6eNw8CpmsiHaanqAf9CGkOe1CaJR/V3KaqsCyag93rtaHNvmgynMzlqi7KVkbemKEDZEO9Whvg1SycnFRi694FiQ6xw2Vd5UvSM4MQ/z/ypSuW5hw8fYO89VqplHVYw5rw0BtzNkibyqlS8FISwsmxtUaoVpNvgpnUK9pGuZVWHUoHl6x84tBzD/A9LFrT5lWPbwxra5wo+JCsoL1JIPUOVx/ufttwvZm8S/CMtHtJqMz2YJ0XobX9HVPeQcAPaLTBJKHe992+vb4K2awikZC8n+ZgdrSTtRGosGqaek7Ge/FfqTLjFttuSRFiRAbae+zh3pFm+MesM1aHDQlmWVHqKuBJGSNgfNaHoRP9huD8AcZrWhhuyabczY3b73eaRkRTs2ksrrFMkAsBAbvuaIUsGUYNrlD7sh17Uu4ob8OaBpJaVXgleqZNN9uUFuC4m04Mk89oYKRHKkFrb80pYhD1ye4FDf/dtCXAWmz5w+7F++Irc4eUdjCcnCB0zjPfOvr9niyFRZXEo/iH7k1OXWLLc/2pPHGTz4spKtfLhT9l7vcorij2uODb5fYMRtKr005izY/FTf5SxO6KnGoxZVz7RN1WkFNfI2nhVZn1jLC6KLtRUS8HkssZSI9KYIizSxiX0kD2PB17pPstV1C3e0a6EaUT+ZU0Skcag8U4EKtZ3AuY7gfIUQsKgGx7/HL0Uwb9TEuJegkyRGHRAT4Qhe16mxCjKgeXLrZAQlwrvvZG7VVevaGQPaANeihEn4TKzWSaRwtyotuhB5eVRjO9m5aoP+C+rBgu5ie3S++Ow2LGe/FfqTLjFttuSRFiRAbae+zh3pFm+MesM1aHDQlmWu5avg4p2MY2yol+fSW7j76JU7W3Xyu96KaSeRpkLZIYr9ty6L2MU8iDDErw7mIdfx6uqySxB50aVwdkt8wxpgk3ddJXiGNx8guxKKZ9xZyF2Td8ROrdLWoB3QhJq72ovwul3Pqka1x1lmZglOXCtp6UzQ8rNzgd+ORsXRXooaX1ToXXj9XOiEl6LGfIeuZfgZME3MNA+5+fb8zfovfv95XlHBR5vAB3PMbeEVLgr6LkKFLwEGAc2gqSjSal+vVRWKBTRlucS+B9AZ0vl9SPOsCvWtAacpuSIrsa1g1DRGyrisFtqaqItEHfgcvlrWauyxF6bzT0S0ZvtpQCxkt0hEEltlvslYwZ72KUxRIAkZFCbvZ/BT3UfAyH489lZNll/8b6+tL/oTs7jnh5HIp7rN7+RiBE7saxRlBJj2TK5wTRT5tIQ++3PaHhXQghE/Le7g08NCs6RvMMFMTWTRKNd7S6AjKpXnzQ9Joic7ODL68FTxJcLXOiDNrMyYn3ZbAiVchfNjlBddaXsN3a8S06bUx9XjWt+HJsAWmzjn9QOAUKxsiFeObHaX7q6/e6rDu7A2zxpEt+7pz1ef14Hfo7FIEWXHIuUZh4yOagKP4RwiIti+GcvD/1yaiXmGRUFFSslm1CNMJcycR4bxwnYT/RRz9U7B4/Ehfhbf3G4XJy7PFq+eSfFqG0MqBJdNz9y/wdkZfCfKGeJ1thkW689pMtFX3OjEUM2M+9kSGd7ImQ7MhzI1E5UKy2JETcSL4sQZBRNsWDEOrCZ1xE6j5pdpybMA0UrUMYvV/mfv2poBcHe2BhmEQ25O2Yf3NSDnnxnyrpPtgS4vm+v+qPILEUBNnMpVmEbwc+8/P0LfLSsfpBivJyv6GE+XmmZb/0cxKwgnDWTifTQn7RALrucAqse2WBxa7zhXwCoPY0AzEDGa0igKIy+wTYT+KMiOMUbgFPldZEqWA7KNHVYLAJHhAYkOmwj2aS2gOrIEmrFxQa4d3BjShvl6VpyAf+itKAgy1dhkDCd4zALYy6nG3aY4YPFBs3eQSnewzVtshla2FWD8e67AGzpab0/NrHMbMfz3LzdgPqPP+33hEFDNFJPH0AgGSQgCw2iRSLcD0NKktuza2kVLtZ79BOWSDm+/D81Vxb88gPqAsj0J6CUoYGd78uncWmD5NvR7D3Kq7mIfdKimjoZZcth8tXIHwO3kJDIAY1lKUHFmCy8cbxYFJg61EZ8CRBqnDPxD0QsgJKQ5tt/Nj7QpdFZ8A/j3aRrUkKjR//zwt8bkoVG7uT3bgkSAOwxL0uuSDGw7fKS8cu0HJkQB/cawVgNsX0yLNKn3ucLdzF2S5hTUP1vPNZzn6YWJUYzK/12ufWjMH4SDuxUa5jBHeWNRFKMH4nT7HOjg1CRlUIgFjFHtcqJLwY78N5robrT6kN/uVONlcVQu3+RgFB3GEtayzF5C0TvNbU9GF317mxFaGzss6SKqpCjJad/8YjwixhDTEzxdaRM/u/Gv08oi2olT0XP+SE68VcTlyUuX9SJ4ElvaEj5GVwmf/QXR9pExkx5LecMVASF2RYt2QJFErVNM53lfpuuARh+u+pXea7Wn2AiQ/JfFulmHzqfn6KPQA66FbybYlSPGexHWVPD1lP/Ns5fbEm18rnMYTKMuJ60rNUf9jvPN3kuihrphysJfglnJmai3wi4OeuhjHV2XMaFXsGqjkn8lMwnk19G4MVoBJGZFSGdYaBidbUfBzlWzKwYCkq3KYGs3IKvsi+wBDV7zp2aPs3s9Osh0KnytS7kQp+ornVKd8WuzDFYoQz08MjQemzTEKfGJNqxsDpLfM9Htc1dd5j70gp3F00ACjGhjYS4i/2jUhzGea5Sziin32fb03C0isNDalENAFgL7CxGeN9wGgewND2R7A/QMedFQY0CXrKJLlpSUWpA9FgbgAEjWxMrW2LTEDjZM+Wb+D5q90ZluLKxk8lESzlojeFGTYHKhPp1xMtEoMmupKIwavQNAeFSaZLnDX5MovmaQpctaEVG6V3cF+i+/IWFg8WAgsaRVYfLYdkpmWJq4hgfut/+un3ziwvu5vDaF3LmXPcohEQc6BhD9HL4VJcEE+1RtDlU65gA3RKOd31ILVINzVFWxpjHgLXFyiUAmQidwUhFBfU05XsxljoAwHm6zpTLokDjyvoDy7Va7XhZhr9XnLqjvjlqfKKENRAg36+WiogICSSs7ucJI+Z5GQ0rwfhLIlQaQKE0tWRC3aifwUzKlxqV6cZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+FetYOELhInsapr6knGH7IxLSwU1cHw/sXcV6QwNA7N1B+J+ZoluCEX4HrjGJJVap1k1pCJjY/Rwsk6rKKUHndFxenyigpHmKURyocvOPMDzxQJFsHcGF2gSPWEiDzrUL7aI+stfZkTf0VbDQZc8WM3W9/6+kciVGwt+5fkqc9o2YuOeJSyk9DuiPuwZ6qKUoO2sH1UMO1LoMYNVCFT/bX7PbE+bBF3W4DMVu4PX3gCc+JhObq/HwrbS0m3XEXPJ/HMqcY5OKQhX2qYaeamNuZGDCpTjbtQLf0RutGCQQzlQ73QcCUdqdFuAdlQrl0qI/RBS61TrDxPvsKMwTfCi78t0W95CNJXRxoxkKU9baWhEtXHsSLqIJ6pYRIoxexVOgQD8thFsw7Li2jRNII9XQ7ufhMVE9wtTFS49wdpXM4fL9ZNa/5oq2G0laQOiazUVQsTOJgerUtjWBWyzhPJj6eCFwhGGlJVxfy+r/RgVDO6gUIKFlPVxMXUMj48g8HUKeK62XRDR01NN5Karb8tUQY/FiTTnOtVIsvPxYhB1VHnHXhXyWSaDvZObJMV0l88ZqH1Xz2splhJtzRBRfN1CVA1qShYmmQuujUOCOLo92i0+ASmTvY5GAdQNILTs5SgcBqE3xctFzeoxwp9iIl/xyNMx9WkeewDIBpaBQkTMxhP0EoW2zxmz6+w7k0xTKTlOwj9FXEG8/ZTL7X6Qbr25tdbcEfQ3zp7DsPy8KQcaB4RoyeEKtKqYx6g9nvxv6vBXBWG6fYTIFOF/NcRa3y1UzpisxbjpqAgTJxU59cxsHBVsPS1FwlUzjbF4BzKb3E0AffxZ3kjZemDm1STHdwJCJ+E1H5Oi/E1bwobTCh7lkSRsswEZk+Yp725awb5ugMK2HAhwXtXRruSX2C+jCwNWpU0Mt7KoaKUHUYPZ9TsDkY9D86iVP2hvev7DfYJp65MjzOIewSAsnnmn2thrBVnl1RWbg8ZaUUJdy4OFVYakWPVg423+hDul7mzizjkuMmzo/clDEUbNIlHkkBl6/HAdmU7tZd4X4tmaHZWVGImGChgUMegWCHql1OZcMDiWKflejpcwFPWnjrnzRjDgHnzTSFbDi8/rr0DCmt9ecQ8CrhaBupuO0pG+SWKso8LYIT5McGDIkBWk/J735fnxHCCYzqDeDxL9+W+eRskgEpG2kkPjC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfWKScYEZUzMwgvytU5/XAdx+UO8U2nY6xi4Z/vxZ8Jy9PTYnU5QsGmvn1GmfzIcZI64DBPKVzrglspRTlrnfU0W60nxr5C4o2aFHSxrwa8hscpFGfF5kyDcqixtFUFWoRy/zJw/x62FimWv0CYEmNC9M1L6osdNZACOSBVGfqeVOxnCXbWG4OMx9yc1BTaqusB+37sxshB8jvNuXYbQWFn40ijvuKa/xh2P5GfAOjt2D7KAWOjdvPJ8cvVmuoAiLkrTHWMWibJZcFXqL/hlLg+rwJ9kCgopbtoXtk38vtQvpxisPGce/DsQDcr7Zr4K9BT+B+n54JTWnaI5IZCwLxoqBqVJ75Z0xwILJSoXx3hT/YX4whqOBS4cPED21RxLy70bV8d+BmmXS4053nsgBZPypExU9qOsUiOGhFnloqnFgG/QG8uL6tYrF1z7WAkr1902vbnNXnZQcDMywIAshgx2jPI0NwWCHoy7OFuyeQsTynlcrouZccIKUbbMqUqjiHqJBBe3xorLM5uNiYeTOlN0VtIlEpk4u0UF06l97qVxIKLw02Ef3jSZOql+ZgQrqyKPPXU3nH7oIBPhpuFkB00O1JxzMD0VCwrC+3NBcVokJ7UMX+Y6qPdRZ93zY/dO6o4nQQK7swRaBEuOyV87+U8IS0Jjq9prXmzbzfNxIdZtO17AShFW9ox3OYDYpzcpdDO5q6DadjJH0pT6tD0Qjyp63uNrc/V72jPu/L0lgUmvYvIBNg8BBp4ywtNlU7+uLVsC7CrjnNRMJpkIMT7DImfKH8LqYPtt2y6bND0BpmgR3oVPXDRiAyYM68rQbeC6gViAxK7Xh+MTA1oZ1V4sZ+vqxOALwHgzhhxtnQ2oI2EWgHhNXJnSyrhrMKZyeIJJGXd6nHpxRlV4Nln0PLPq7iPtPlZ4C+9RpF94DFmggBsKDx4ZtwzUca1rioZnxUBc1BdLU9qGK14ESbJnr5nJN7qKxH35DGfxAR7Xot8sbYcYu+FF3qfGDTGPrHcJMszNbvnUHqXvkc+hmB6xkFLYQ32oMWEHXIWalzbbnlk4gMq1so70qUT1oNZxitH7zRMVGo00EzNMRkcxq8AyDAVsot1emf0+Y2LRb47DSRq1X1r5VqMHHBnP2ChHp+8Icr+oix+NWsqZX1GQPBtYgppMaGv0VDRbQiuFWeepPxcXwFf4WuBZb1z3oUXVaZfnFY7DMAozg7mp2kjIik5P+/KNUrruGgMf/e768n8I2WqO38q/O2IYBfWcFvy3E375VtRF3DP0dnPRKz3yfFn4gUYkCaRZm4FH9ODr/+ZNQal/xSFOu1eq1U1yRotJ7w1DXOMpM5tj+MqkPJ038u11eFHfH1KgFux4S6rtGYuuZhqeK7+8y5y5nZ59lmjdskv7KLt20TcYS3cwr0nDkAR7PQEp0Urq/ZtwLTDN/7IWkTY/8S+dZpAtlKQk+lGlqvNSUKj3/LMwgBjKKEkyzCc9QXYe81bKPVUaXLp6jr+WEB101o+oqhJNCgaopIAqr70ErG9iN3jq2y+p0pQtmbJ8gjvtkrLMI8YGS2Wq5klNOCV5cQerS1YjZ7TizjK0VY229GWayFDI4j4sHe05/oDoIsBxwWeOPm7m23LXcfVWLgC+FGU2h5jraXCMrSHGsjugkNgncQq7zrRRsxjCdZKa0yYXgNiCaj9v+7a9xb/f+Dy4CI9LG4ascktFBGw7/mK+H4IFzaGDF1o8LfsEHsVdjkWffACAgc2pehKoDi6sfZRcDGWCdjPv1FGB5BetvBeqOQRp7Y95mHYfqZIZ1h1cMiGbrK1QbtySxTLNB/ZqDE3CC93uDQFsG48Qv2AYznfuacvzpoC37GPbks1ZWvjefxemF16qWNsMs2gWmtS9O9v4178qIb6zcACznGESO/0bD/VbbY63jnlCkMsOQ31PRWZ+XGsWwQpCEMzjHv67dTAnm13ncW1Oaib+3UTJuRHU5Oc/yMIF8jzPjeSNLIDz28g+34sUUeyBAKpYtxzLBgxE0RVlAre/xApldkVBwRWzW8O+nU8pmeD09C1vLuiNKrPClmBX2y25l5tJ63/NxD+d0mCKVqKISTSWx+K7Ven2dkgMgUFP7TynYgLNqffTEc8nI2BPX+LD6reW/ZtZv/BfiVRDT2CMRE2DKC0eE1kzv7g5eWPYHPdcM7UZhEo40EteKG3Q9a0tHteYXld3+W6kAJRR4ljbDLNoFprUvTvb+Ne/KiG+s3AAs5xhEjv9Gw/1W22MbwmDRXmPFmQFoWZURltpP/Qbo/14ug5QbwgUrVi9TqlUO/KyfpS3GmagnZnq42rYZ/0PYNh93USjpYEmyibhSQEX1GfXs85ZkmvCZ7ecm7d91Y8oMsE0eERNoTa73z4FRXMRHQvVVTphzvYstTGjXYXsNRru+DRmiE0ZqTkc1JWap/MisdJ5X9lhOb2P0qUAM2uszp8gRQWeoMQxx9Ts+O4I0CgETunlwIl8cB/6Y9DhbKYoVo/56C6Vkk5+FN4xZF05Rbo6SVg62lcjUoq1eC7qHeX8+8e8U3maXB0c1s7Ge/FfqTLjFttuSRFiRAbae+zh3pFm+MesM1aHDQlmWu0S31+QI6AM8dcn88jcREB9NJM3NMLYRbYBWK0BruSWHTqUy5VqIXYPjKayOsg1Rx+gcZ83q5VyWaiW/rLwJPlB5xkLqMliF/tUReT6He/+evFKMDH5Lp3jnKmyOhl4cW3v/qMF33l4nYHPGCoGvX/rXxxKIbFQCD4FjjjwhPECergjw3C30PFpCE8BBdm3C9tel1knObisS2CsEqLPZEQl2MHb4lcP88R+pETd16GlcVWd7aFurX+KU1o94gPdHvYEi7DWN+6dGFy9sJl4Uzm/Jlg0Nt7tdbIG2/A8tB9mlEzTQ9tWYJ07JQx0vl39xhGYIomkMOd3GipEmngXme8Lpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9pB6KRjGeLHGwTCPZQ7EuNBV84BQRz06qUo6FBnZadmfbBU/Nx3cBg7hM+WjaR6Oatk5uBMnmqQxEP38xElDSbWkCjVMSSygL8iNvDlq7A6wMIuRIO6haao5e+9svf96f9tgUjXylH5Leg9acKaSnbueV7MEqkf7Zc0gJhkjZW2X5Y8IMUd1pAPGV5Detnd+hMeqGKL3xjWtiJUeLJNzhqQJuKHpmEIJ1jmlieA/ekdBgcswkMgrcaObT2QpLo2sSLiYkO/sNaxO9gNH4lddQml2Jjh59q7FgGVsWJp8mYw1UPaTeB1PNHo6IoO3GL/M75uyKjvvCD69bD4czFVyAYpIYWYEnpohqncpC2N9dTT4kXKqPlHqO7Uv93ifCOkhA7frQ70dhAmX2R1be3xO5fHe0XtA+lExgihvStB2bZpquL+IWw3CsLRZm15KefT0dR4wpb8Exyjk9Xwqz3fT1Qn/zVgbr1Srac5wWB8FF5ltMssd2LQBVKa9WgOg26QWL2fk4HYfhs0FQIczkSiD1x91I6B64ybhivPKDajJ8bH7IgN0WbpPZ+UJ73pZG3Q3fnRAkTLOhoQjRhgyqoLWRVuBE/nnRlfhFPCAgzDtKyy0+HprYtKlafIHoF9bViZ5BJ+YLh17lpzYiNXZi7leZdysPmAuWJ3qHihliHirmKXEZweediJblh7WQVAdhfzkrkprRFjJ+/icvU1QN2w1KE5oHBW3k16Ra3zHP+SUSYi2/gRNFTWaz4Sq2tEncwHeLldbPsj9I9XluDY9kNKFFHvBHO80e6aLxuZTYJ1DL7Q6CBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGiKngBM0J9xRh/ASXPrNZBqIeNK5TZs3MV0QDY/XFE5cWoyXB+gXi4Fhaqu0FGSo0EKEJt2W9fUH3aTcMK5bS7yti/gC8qhLYDt5SK1bM1dFKVR/z0jRZBLUSHvKkUApDJ9W1NX4NSbNojtYvh/xkE7mWjWylVBWdkaQ2GVv1x1VZGxy8/HVI6XXFS4QcaGPcPAIp4e1ydB4jpT3cIVeRifh1Io/B1MYmraSTZ76jFnUmF80WKXtE76VgEsEqp55uBzUvhbnrwpyg93QhHK85fNb9XyEUcvIJ2aVL9FPGJiatpu/L+AOqLbHUMd4ooeJeX+f2PqR93h5bS2gh+T7tBjBI0RXzV3s2ifuK10C6EbwoBcRHgIemwZgzV2GvFTtDJnAayaJXzrz6fZLGrpi7BcEI2EZa2e1xmtXjic6SwlR0l9DSXsqrxKWxhKQoN/kMdmwFStU4880vx+OviQ4LzHdxXnj+9/rWekRWaIGaabMwzWVLz1bSdUNRlgAL894mIM1pKte0H6BXWHXJGgDfD1Mxk9tUhAruZI+ldJ8iyCdAht6FAyZjG/DKIG9WX/BGFTBLuRTv++4g9d2j/2+59S0lSEmUou7X2HSOC8Fdk8GyjJzaWFZBhmsp/LmOmz4P1bRWcW4SSy+KlxvnDiOg/6a+gduVfOLVVv/N9/sxWYuawtJJu4nPsI9oy0Y721BWDkjzrLZVYcndHqvI2e1EB1mrSviXrZ7h+o7TViqwmxcwGIbQOANVuY5s9YFF+yekcZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+CjjGtO3Im6LDoBvIJpiYj8IQq0IqZa7RDYgbjcsu3/Z7hoOYv3lzwvlC8GDs6lr+Ka2rWMy0EQ/Bq/qMWVxSORCUw2RtS+Ny4XXrd4qgS7adisB3ZUQLdM0WHcA32uTwvYbeaD8l9IDC9sqW95J+DoFCGI2Hg//+KC6dsR/Cfl3CiJg9xz3lB7jn2eskCgWata7uMrGZfYZ5bIRCsHJap4DyZYZ5JY4gQMVkvHYXUDxvaHiPZIDA/aWF0wf0HbuH60fKa5ThmAffI7SadpIClAJ8nDyiNKTtDBy5/KBbbHuWNsMs2gWmtS9O9v4178qIb6zcACznGESO/0bD/VbbY3kRBE3y1hUpxF1hrNEB6KnKi4l8IuNwYuRvbSTZRBgia0zVmNTSmNP6xDyFdVjuA22x4z7X4Lm7HRJSEYSc1mFQ/QKeZBmLg+wc98tFiWExJNO3kxcnedzqdCaE+BwSFtRsEmOi2IfWsAaXKRREyq7SBVnwZvZot61Ds+GFyI45mLGiQU4NZI/stbtkaMVfxTGsj2QQw3uNDnHJFG4fi44KOXoHqkToyeJhGtNre155cBvVqtXyHn3cWjETY5EbKWrw39nBWYA4eMZ3AjrucE0EW7byp050OuEUWydzALZgmurc+EduQavyDVtI7+8xDee23mVocNg2pZya/ERbxiDGcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfhtjo/NqJw9OAea42/wTU1xZYwCA0/te4wqhK1p8msHRQfX/j9VdL0HscFteXH38d2hw4MDIIiSJ71TvlmjyNK6jEA0a+narEzl5rBTORLbMxzL667lGPEYqPcLrGLHIfSaxxRy0PbY6wdoBJGeM+nKrSr+JY1IvflPYlXYXV9avQCEIeCqAX6S/2cNsE7pB+I3DoEhEp0QSk1jRwzurlje4yPsliN1kDmAfsnNfai4sJR3TDsWL4h5Mm9/2oWuBUVP/GZZ6acq3GGmF9KtXCFEMFFIWoe/yKG6wN6MwjOX3WxMO4A35fWk2Pr5iVK/zJYnOnp7Tnd3yESARzTtBeSKypqbZBmqFnA7mJ28/houoPDHFeVUp1DELzGnplZN1S0f73rmyjn1/XrXxc+ZhHdIWmiaY69MPDqPcABeT3VBo3DmVZJTIItJLlTqUkZpQVfjIuH0vgIwOSZECrBs/InwK8t+rVwt5YNuAzLAUBLPSwA+G6HxmdZPzBcL5urrpu5YGEqHnpFz2RzkFFGDfFVD9Nm2m1OMLTzKUVVbtahhTQRe48lvXujvtfavMqY1gATOQsGdqwlWrliDrfOJ9EUitezH2+TUDyH0pTVY7C1/5tXnV1L1MX5htecSyt6w99xotknjdfmO2SwYu/KivCWIlA5/yE9Zvpx6CEemD6zSu5lQF77diRMj8LUEOMv1lFjODPmdOwQs8t2BgugIIlcP7q/YFQqVx1zB+BJIRpGwLfZawRTbZcPe/DobfMvRxQWAdqs+cFCUvBaa3gVBOR6by2k/NFa3G9f06CX9Mcmv8opesyME7eHB6aqk3pAR9BTI9YK3PXcPDaznPfwk+E/DNO/T06QIzFWxSJmXP+GebQROoDW1BwfHPQYM0cR4f8KRKoN7lOt4E9vE1ufIAOXnWhdT6GSdnGEvbEhz6OLLwXZ+DGl1LqQpGVh17390CZNmq8rIEe0hAa342R3BhLiAgs/huYnmhOl0Ifu0YnlILotVBB4hdDz+NYAXw2fG/VXNLPCpQYHYZA5o7l2lNX6wpmbtcXYhQsDV5JlN72cf3yaffJwWGPRfZ/NSfvY67oe/q3spUY4JMnQipWJ9dCre9hRY7tVz3ArwPXjbs4ASZtTekmUaRjCqLSo3jw3A5YPjCgw/yhKRC1HNSSs/YpDTOHLEgoK97YFsvmrzMPJfCrLsc7USY205lpvZawUVNbukMrnJ93MLbAhCZzlCkbxhBWi/eRvMDNERLSEqcdVtNqN09euuIg+xkFR2+8wymfXODaurBoBRZwhOBgqfbHGU5xQ2xLhtkTRsEVM2mZ8kiqsM5jFkzf0G5Mb/SqjR3+aKbNhrA1PjWQxZdF7OYo6aCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGsG/l7Bn5WxV4FWY0kq+fusthA5TQodZI0a3rXIyGaCFJZbE8K5IWbK0aZx9iIxwbwzCH7TBjZIiecdS5tyauhvBBBG6kwYWiV+iXFEXO6e/W0sget19WMBnlbNqKMfWiny89OlcMtiOLVl498aJ5C77thbsXoQ8lymgt+VrFUtmoJOJ7+xKA4qVnsMCPmGJDlgcR028tqpQfICnpDJypsuIxKDhS/vtlRUHMBzPh6YJNsL2Utveee28rDyqBcPa8+pO0umMUtdu4x5L5ryUn1fHihKgGmdu/ghPyWi8TboiVzWS+FJuTvqV/ZdRZq4VSm+d3pgt9qHRsxzgqg2s2lO8mW82HKWncLeBXx3QtcGqKJxyHhwJhJWBPGdCzCPMkAOq4+n+OQQ41giKYJeW8SlHeqSGOrb2GR00dA0yxNCaCMRrmsXS86M0Md0BalpuG6bSQDOdcbRwJ8u+5ItlTLGtFO/W0O/2cplka7tlZ3F1skT8Go6vZ1uGFKNn0DdHas1eAnHlYLlotqorSYHUmT/EfvGz5g0+Xm4CzsT0y97vR35+ObbHoy404/haDfDHStcVYwlDCMZlm+fxQyY3gYYwvItsCo7kkSEIN1i1pZp23NA8SXAp+u2g+ifoWERjtGZOKjLVLrKawgyoV0XGVr2cpcnso390wqoEsSFj72UhWfAVj/SZgtZQFyUWZNbYLYndU9RPKKygFAZBTwEDtWiCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGtVWObmSPVgCZtpHhp6TRjU+LM4dHQeoRSTmvITCnFPxg/6DgXSP1jAAmHoFuPNExTdCzuz97LqAX81/6UtbRR3kTf8ov/wp5UHfgXnxKrbG18q/XssiX2Cwz9Y9qfy7eDY4mUlMSR8dMTReRDZFI2ganvgcBb8VFrGIS1QUD96QLzvibFXlxEbpUliYp4ke6v+xftiLVE+0+IflXwQ1GduPSHtt9Hpy+jVCKOC/k9i3KE13d/t0aZuUsVcuv442Nci+QVPgN4i52+yq2keQB86bbyeFbwt8lzfTKMD2L83qzQMzB8siwc6tXywOUDOjuUXuBHp+dhNk5JC4qVpDzvkh8hl0yl4knXBmQjdCCBfn7LoUjeegbrDRMmFDWNFVRsttKhwE4na0WFPPlL7JKMh9ooum80YSVISqg09doscJ1vix4Gts3o630oO3uv40LX2Dip2Ag8W01hMoMtSuV0om3VZHf6ml9nyeUznaPDTmiMIxg5Bp1i14GJYCFId/ksQLzzFKmDRdWskKLGROE3knTsoe9+4EDmjYjG7/YPiJUKOJIuAcp9jHyxPx2nr/re9HU5X9OnGhRnattxma+B/xVkz6YtYAHCHS7GAeHldMqtKIvmnDLfnQ/6u9YtcuUyyj4Zb9bryZmLyJIaoHowaKg90AavGpDYhLF9zAEI9DqN6n/+C5mCUKsh7X9HsXoeu+d5EAi3So4HQAHNC6pg4eJmFJx2CL0JUPxkEJNz1VvW5Ldkg/jFMxbHAvqKoXG8Lpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9pzqmx/jnrJANDMfK28okh7r5XNyispd6wjjJiWBzv/w1gE/ck6Y9v1Al0A/gRgcQh6iWUd845lHb3PNaRrRWbh5KrEHAAvEJEKo/b/qzq+nHF5fDxewEd5vlR8Kow6mbXVa2wLLnxPMxyajpABENLGTXuKlqflXXTRbcA69BWpbJ3thBraN6khN4naP0F1hzNTru7XGQnrIYh8ntPmHQh0Rl4A6ryn4Rd1trgROVoEFMOsbFR0qZhZ4oNYLMbm7hWYlvUVqHwOVLI/Sy81RoG1oOYSGSNqnemJMqe3TPJg2O4SyGUvaKLRV+8pJjoS1zeogBtTHtLoNpT4p3osUqxhxzDmg5DMTJlqmdytguLFS8yAo3pzBnGSBo5YNtnb3GwUQxCRqB4imhEQEOpaMvybiDvCBTp17BHtqnSH4qePsZ4wbQW0weXhvDKPjodYq8X48bbRa9HAAyiyUkRkVyzr5r8MuYX9t/Edd1xOn5u+rxGmX6phxKKKIQdDAn7jLBKGeNrHNmkmyM2sq2e6Ig4D6FZZ0QKBYvt7WzoehoHVBa2t7HQJXhFzCXP89/s8h8XWflJtdgTc0aeysyttePMUi2C7Xzvm4+l4wu6KAlST8vysPZRRIYdMaRiP0Ux0O0PLUnvIiYNnZ2UAGy30Z1KNcNtb3r2DmR874xglLH1J/eqNPbMpqvUipciqWybQAf6Vgqrob5hb1lRzciQcY2fqszzXMLQK9h4x1TNZEE93VZtufDAmfcXxIpU7AH3SAZLSaX1Le7f3MaJz8ojvgWolrSJ7xqo9NczRAsnKnpeGHgXkKQZyBGPfl2IYkzYi9+ZDdCXsDOmkPVsobFIcFrsCTbA3f1iuQujChG1WpCEDRQ5xw9GLfemCcbadzMdZrXD0h7PkpGwQGQ5zSv0e0EIvt1B3HJ7KxgqjTtnqza8iO2ROwqUPOT20OH351WVeLwbSzTkW4+Pl62jBq09ZRpJatvferi2eRtigLJ2p5Fu9dXSOu6LRRtVTz4ugenT4RQx9BRXtCiAp7HTZ+dDi7Ul8PlDf90GOjAPnNKQHp9D2lb+T9mOGNUEzS0qZb4Y5eiFhECzynux2q2g/N4fud9v6wR88C2OpXwQ7VTjqCN0Lka9E2L/vanPejZN0toWv3bTqb67T20qQD1kuerzZ6lAiSC2Y7vId1a94fMJiDxW/QtiRefIyeFgn5+YPxotK30mlr0s9YH+TJEL7PgqtqSZXWtS7rooSMGtzaEnsCy0dJiFT1HIdemUUFHOPlx8tDnwLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHePAhfEEvEIcDEyfWSmZr4Jh0NW8C0HeGB28gkM6AMOo3RO3PaUhKYA1S8wELYolWFNNvYALNv1UpgV07Npr0QxnnCsPGH2Z71KbtGgVnuTum6NrYmxGQY6E3oOvhacE/OkjT8qe+1cJga2IICuTNzCrGfqDadeGeE6O1c8RhLmHafNTfWrLwmGWxB7cgAD6tFE5aeaRe6GrzMrPP5xcLIQJ075En0nJD2AA8itoGmUFEdIyD26JKhTQvUjf5Mr0UEf/z2g5w01ALULh/YufYHzesqd2VqypQJiq1aJHbLbV427noC1Y4G2dX/KWzbQLSlOqYgE0J3vWC3tILXrM5T6wYcJPXl3Le02UDJ7RMQObVrinzaCiQLUHPs4sG13b9/qy3KniPHGX00ky1bsvW+Fgfn74brdKg5MXhhwnTy3X4aIjbULf1LbCbI/iG/TejH3hlEc8v3AfmtKdRtfM/52AMSJo9FY7xv0YUnMIYyssINRH539M1EK3HOA+SM+tA7x3C/68JXIg7WeuxUfYf5dencKrRh2e6srcU5Ke34/804oTchRgz8zLdJrvEVTka0XsnUc7/Ty4JZNgREr2gf+Ju7O/qOrxpx6I/y6Q09yGzWOxcCZjF4mkIdSoZQolelGIK4alCql+L3nqQYUXySw0b1tgUP3j30B9+uNllbuRcZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+Q3U7vYBQHXJQGcSwP0gn5i5Zt0tUyzz7opulPFvJq6NtL8VkJcJNJPG7MRoocY16ThjiZWqK3HcfI2uRgP/QTx4iYXyGtv4RS0WldKE2Kc1RG91WhzQEAv2/UepGgVwlrcc1I1c5r8wiAjfPNc9mQ5cpRk32bXEM3ESvVH6pSLaSUt5SNww3gYenVnrJlMUsxy8B7BgDcwb3Sl0AewNER/FJ2LHsonKq6Zqm3AbiKohgYfBOq2WEWy4ZNMEzRrcsPqIfXs3M5VCFYTZ6X+h4mRxL6jxiR3zAaRk2NG789pQ8vrEMuwIRafs4ThNEWitL8fLrW5Oqx3QXmeqF5JMitri+YtUYtrIuFPK5/Fad6W8z9a0b/u/LQo+7SQGXzi1KOr3wDRH+gB6L2LG7t2Op7Wd4ig/uNuTn8LtJcRRVG4IsQvPqVMOI7sY2fVfOc5o8VUVCMbA02NYs82MtpPRSbqYgEf+dKsvK0FypJKqat+ddEHiiHBQb5ki35FUybW57TQ5neMwRBM/kvbShYHkaEkCGRCTQM1S/ehMVHMGwBZnLAQ2Ulo1wOgIn1OmCgUlG/tLID77b9p1lbcsZ8Cfh78jdkh6E+jwvX+wHDd9i75mVboij1ouiNSn0Tj3csrVkKgC8/lpcXF36GkpWxG4MXpXiZCCiJQuJwH45X0nEG0Q65O84pE14k1vkULJH8cRaZZxIfsVNPo7ztf7LZu9b+xzdJYZcNWfqWGeBxo7jML3egBM/aHM/WbL5vEExKP41ySxre4jGgeHnspqnKq5PMWWeVLxILwxD8IjzK6f9BzDAuwq45zUTCaZCDE+wyJnyh/C6mD7bdsumzQ9AaZoEdxMHwM7o/KBZI3AHwRo/KcKNhaGzTd5QH3y0K2rM/P50cLImv6DqsyTTWZ+RB/UYTYAWY/v22V2SvolZgqKyQ8OPnUkOzbuAHJKfL/07POZrW8jNEHKYMgbMb1yBwEr5wxWyDiVUH71dCYIwY1MVMJRAYAODFdZR2BGxwDKPbflwyZSKIQdepMl1RvGCAtdKsJCJEVpAIFXkPscF3ejSVrdZkdNCWiGxtll2XBp8tvbHLktLDSDcVaqi8AL2Z2VaYxETuT7q4JcIVb1w6RPRgglTnhqFciPnxS0+5w6nDJ56WvezFyY763+eyhBgBrS+CIDyqmqA8447iLE6bTyp3HHGcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfl7Vfvtbz8907zU01SAyEAH/kgvw6PA7xy9hR0LNfrDGT5NYX2f1QKNfHqd+Hu+qSJwv3288KhokeycAatjNK7MbO4+9U815HA/y+7rPQglsXZ7T+rZ4pZeZxx7MPt1ONaM98JHN7CGpWZNBUsnZagoD+44WVxni50nrGDlk1oubDhKcaHh8fT5kfKnDyLAKUYNIUDtuvaELuIE9HzJbPd+Yry0LZTY/4iqS9YDCKeIPisX/VNAkYI1m2QeO+uacxy2Asqr9Yy1SpXsyLiNO2u8NTMiElTb2B+/WaugUMay4JtWxQRNLNxh4C/itNywPW4b08uXgHuelgBgVrkggF1MXRxCfjLq8vkV+R+NXZt1HaXsAAe06oKy4WDeh1tnOguviJbKz9VwymjuqEQBu4yGUILsuuFy1mhTfMePqzDv06qcQGJqxzMDQtLy08MRFHuAbuIA5629LRjslitTfPKcZXZpTNvaIJUnbGXKgpjJyz6Qf9HD2FVQWUtbI+hQQLxx1tSividMiQy4kdISpVpy5X+qGwLCrO9hMVKwLmtvzjEd1Tg6x4K1CJxmiRj/HL1wPY0+FGydma/v7ifeB3v2cPJzmlSYQmxZ4LVUREDx9PylEodQ7oREeUD/wZXaDsHcRy3rnt8hJ2ifq593zbPw7WNrE8PTKmnXASHS62KTya+hxy5d/n0Jw+EhHrrgtCoZyS5is1B8FZopYw5K6u+dIvIi6Wu1GbAQN/E6QBRKOe4u8USd9zGHPILTxaucjSv5IW860oBaGke6HOdujZc/TM9P+86a6agZCgOtFf4YEefflwHKZUWFNbf5jxcj2OLFkTg012UqVLFeiq0rWHm3HgHm1i7OMISKv1veLhxaguvmf8mtJbPTkd1bpPcFfOpb2PdzUdmW01PNzG3PciVMQmGoPLBCWJwbb4pYaW4jNXBZD1/8i9Q8Yr1ZYeIsmlFRtV+uuPYjZzqTj8W2nVSh3pKtXGK0L7RRriT1CaDEjDqXUeHubP5XTxEMMBr/9AsLpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9sKeD8agW6zO0FHqVfOwpJ2iO4notwaak2hsyp6fkdN05BnBr2rKRdLocEWNKkuQL8iDRMsef22j99Jz6V2yyi2lsxTo8cGKAsXfQ0Tsx1ZN+HDIzVOzMORwwofU6fDihXBm03VZ1cA7oqFYVrFQjlwWxlrbFnktaav4Shn7JRQG+EAg78xpQvPSpVm1e1+nWHRhTrxGFZZKhs6ChmM6iyAfGHaLxAfHV3WAfrHQAL0oDAzXJaEd8mLtCBonD9qknljbDLNoFprUvTvb+Ne/KiG+s3AAs5xhEjv9Gw/1W22MQaLnbM7ZcKrVtPzpM03IQtmrnDZjM3uVJk8m9SUmxeW5HDMqrS1ayHPmMhjhxd/AJ8pr3cAyFMirpWmwbREzyafQBHcqH85JfoViaH3lut7twkNO/B+gRmBhpcB99c3eb2RptF613lS+zaE3gcReKcCjt+mbQu3AcMY5QiqWvxlGTFFel0R2PH2HhxTxou+OE79SbGTIpro28w+cLZ0+s0Qv2FY+085akcUS7hLgWtdXtD9rSqIhOrjPYifkqiyP9Yg9iiwRAJ6+a3Cc3zUnTd1ascFhI73JX7Kjzam8eLyaK8d8UMljno+YlqduVNLIMJFjWB/eDT+XX7JaD6/MK1VR3it9q/SD1Dz6dTH9p35U5tJ+dCRdTHiEtuCI8w6XJ1zLmk4tOzQiXeA1g6Jr/s88ptc+YywVvtTYYXwCSmrGe/FfqTLjFttuSRFiRAbae+zh3pFm+MesM1aHDQlmWdmGDHf5k1UVy/Bc3Pxx1Tb/KTCFHE4PdXpV33AavqEEM97RDKT/aTRNWxIX0dUJhOJyAp4GYsfmR4dZih2mUyAY+VGqZIXoeHgOqkG8cwaKDctGYNynso3NElI87vZdTNTQdsDzVVzu0dJAjj3ZCa8wBS6YzXmAm9L/f9ne4sjK2o9qTpDqbrJgripHK8ZVtL12hlDMe+SMdlTa0na55j2f3fLW5QL+Y+JcgIH1V57ozzWbwDV+un1zCyTvRQkQv7gJ0BnZvEU6zih6UU5sxPGGenqYFr36i0fNQFQTzCHBcMTJIBP4DXg9OBLyEQvvF4z4OHny6I02U3wwnSS55fV0voFLZ7R28RY2D34XARs4ObL4GhqciELpXEH1PULkzF6ptorR8aHda/a7fG0yo/XtH/Z1pkoa8QQMPKukCUdphdeZama2dmXhkFFNWoVVz7u8Aq3wzadCliFjn/s138qY2PoBnE9ZmsCfKuEPkQp6rC5j5Q7Hn9LiEKTGsaFgxdG0QgNTmJyxoCd8AhhastUeDzkg2SSC7lrtsDnBTIDBZPRZGBvw/AxDz4Z2UcfomJTmc1iglM+UxeY5VA2jc5zcmmR5CskxjjgPgev1n6b1Sn71ujEtPl68kBRudVW1rwD/e3sTJ5JSgIOuZk57lZbHUUYW17LhWOmyaWdpm/a+Qh5SP7iUJrrEMe0vT6BQLSWsr+gbry+NvmvYIELwEU5eIB1mHZO8GIaRld6FjON6b1y6X95tDxSW+Si844LiJljbDLNoFprUvTvb+Ne/KiG+s3AAs5xhEjv9Gw/1W22O6d7/QQ5LBCBBkts1ri3dhUfZNml5/xAQEqSlD7h3Gjp3bW00KwVp3f6E9ub1yHPHvU3uoPcEL+GAWAPKi3BLtuK1ONV5hw7X0jUsVVKqWYTT96VLfLO+7JCqZtQZ0ezGB850OEOihWuI4H3/epkj9BEQOmSHWfTgYi9yelc4zEIF6fWmYD2u0y9TW3i2d7J1wXF1cuNQr563sOE5umK++xZPAo9neNi1RWG99LHX2jaXiSTPwZz190v4oif9TtcCNvHnqlksHG2ZUDiMC061N/owJkSP8MguCLS8HwmaMHfwDomuC/w87YKt1ui0GqvI+DUrRQ1QayUM17oxDVcUAWfXYYHyykjOFKcD83doEmwrlyIveMKClFq0ZjVNTMTqv0e1g/TxJIe6xM3lGxtjiuGKzdDqkDl8tB2OemkcBF01RyhaiyV+uVc3Gd6n9MVYkpOoR2j1Rv92KLiaWO7NQjRYcATNlKNzHiL3JHGvZp5g9IodlJdEm5a6NRBhvd4HQT3VHkyKO+k1DJigQxNN+LaSEKCzKzM8zpdvASQXoyZjKAZ2kBmmr/LG3ehntPteGftEeN+1ElZ1uXXGtKK/GdaHkFHv8G5gErXQ6UqQE824lE+bVH04gxkFpvKg2S8aYcSNh/OnghwnOLDChJO/c/JC5JKXURvauVtW21p/S1dfYfnD+tEiQFJeGrQa7IEyDS6JSorL8qfU4QqRYc7DgRNSK4gMEm7J4I2If9Atp2jdRi0VNuBCPp1v1wUjHCbUmBNjVu9Bu93+dPY9jj4bzSwwbyWmFVIcjwH7hLEWK1FNPfw3sXeZes/Iw3J7fm4EU0D/h6YI9/L9rW/DJXXs43RwgB3iqfMRfRbNi6B8XxylA2IDx+r/GSStm+NyZY+gyfalrRjey/Z4WgTmxlMDUXAoT045xiacpy/J3BLcvb8Lpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9MpNP9e9mFev6w+htrxtdbjMV8UEO8qJi0e2dRntaGnJSrhTCUVcxookW77K9AAag1roG9VWeGvhWeda5acWPGmtpnXU68X9M6P3C4O6stBYengGSwGVaLJhxDK0gUAHC8GP8RLJ1ojHbNvV5IypBQP7uZcBBA9yMKKWWgcRFEkyCQyz5ZmoPf8VR+9qoy3rzq/ff79j4DVQM04mpFjyq6si4CZbc00Fj9wWy4LbqJB0CVIk2jsvCa5xFDHYPUvHeFgfSL8uwBNGJbqUu5HDp7CDqGA6I7Bl3uiGbgFiLV75nykSWQPykeRa2FQjVZ+3vGts7Om2Hk89j5duAqhlEFBGuICKJePi5WXb+WYmE7VOYuxWDREmFDWjoIOY1UndG0uGPrKiTAEykO5Ix+lk5dfHkg54AfQj+CBaw2oYoI4o1QxVOD8IfQD79bxT0IHzDvWXpfqkL+mby+sht0IiUpVp2s24WOYAlel1V3b7BkMTSNoZDPlHAUnSAO/1UFkqpsZ78V+pMuMW225JEWJEBtp77OHekWb4x6wzVocNCWZb12BZ8nuhuDTQnSP1iuEHODE1i0SW04oP0P0O/uBxJ8uQQUaBLiFOHH806zGx/91ZCe14xk3nhL9//ZR19DHpnFcbAKsGhL1At7AHvVW71gkXzFKWYpJHPn08pkFHYzp0NsX0yLNKn3ucLdzF2S5hTUP1vPNZzn6YWJUYzK/12uRRIkr/cE3pUNj8LV+nlUCx2oim4ua1Lj5SChrUDjYgQffWAYoag/l2eVE5pKuou6wU6WIlg1CPpvBjxCpufxNoibQ+bDm30VTY82ault5//eRrvOYVeOHCt2LQKgyq+hsG5JTfXb13v0fYwpojxW52S951xoJvSt23oLjHp3hCVZpYPJwqNqRtl0qzzuVCTLKt92HI5dhFJxCv74x+whXQMFMgNaCBREcvbf68qyyRRqpwQHkUeEzoPAMODCTZhaEwedYG0ng//G1wB+dJaVRbx7rrZyToEAg6YMINfapLvscPgGhh11f62dwl/xOxcvSKPdXbsidiiIl5CyIOGVjQdYFhZJ9UE+lUKgRS3+XfoLUe8drymV/IhPlbkrQhYH16t5luwgkQMvsTt4OPjVsEYAtlJZM5L69E1aqDcE6S0UVzER0L1VU6Yc72LLUxo12F7DUa7vg0ZohNGak5HNSW10PPak9ui4z10h++eBUIo3Pv4crhSa64tzIKG/em2eR2l1SSSsxLLsVmvvLvnMi2m1rqJ1Itw3fcZVtzOAr3A/q4QPXTFwWYLKDbzZ5BvwCXk58X0lGBbuPkWJGWY9SXGcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfq6vCpCvjUtgODMUOG8jhVrIMdsgF0OQ4o6G4a+2jBpLnmfmQzSJfvpx9CEFwp5XzPO/Bf3BYuJMPiv7aGsIR86heZityKwZRbBK4AEWEMXIihMgLVxAvWuGM6yyD3B6beiYR7aTkXMFbbINOQUxui0aZiOSUxOZdR8WA9dcZAbhZjO4ND83ciJqVhL16KuQaHWSQlvH8dBKUP5p1mX1yAobd6nCqkzVc6U8baX+/pIiThH9DiYjTY92JqCgao6Fw5etF2ancNlCLUgRwhuIrWFCcpWQdZ1Q1jcNmtiG5A0dvJtiVI8Z7EdZU8PWU/82zl9sSbXyucxhMoy4nrSs1R8PC9hfSPq1vN9KMMxO0tc3MTKNglBXlyOdxFB0wK93Bel7j3Ms/snBITBN5vt2IEruVQt1s5OeOGjjlDn+0gS3MmdAf1uKiOY/YrLhvC7AkjeTVR4pwqt2BviQOzAmcUzRpd23UxdoMoHHLymmGlWxvM1Xf0m1z2COGvZ0gVvFOn3u2hlmTeWrOORKVtI0Df/svnNrF2KYrw6+5+mpYKQBxOT+MczalAVBHbGJIiI6/dNv9bglf1ZpF6kVzV2aiz9AnCFkYWUTymr/jkehfb9jTpS7v14Q39EcqdOdHu/AMuxByiC6OyOFmDO9q45vIA2hI6k7fqMxHivBbaUQ5fUHkSNPGN3E6sJunpCgERlsXqWjs/+5beFqGMynY+om4SdAJWvGFvOgYMsVTtITtSe4CdIJZqFJs//KsAv41iLhWS874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnb+72r2XH5oDgDn/JA9lfLc+Wj5dVlLjSFH6bjGZjgwMKJY/SUui7vpVg+mztx6Mz0I/76mlAWxu8/BkIX0fM5EeF9ANCWJhqYGXINRR5A6OJvfCGk2j7kHswoE7m+7wOkwLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHfKHwDlztmCjwGHCSfCNg+OEURTA/fEUg10v9Tc5OULLdA1+RHVe7/ZtDql7DC7dhIJAOb7evT6kVSSY9YpthG/O+QLHksetZRtHcw9oF1I+a+sbieY8HW4NsaCHgRaORl9OTvDVshqAlF/UH7JBR2tNuYS3nTAwIWYfu9UZgWfri874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbf95IzyZyTDtVikitwJjI/Xx8TWZ2GkTtzS8VvkbySioEmKF33Q2baVs+rETeb6DNupbnYh6G0aK4zG3N1VFo22OOGYLYE1LQm/ubKArfBWWfJXZ5MpKLFJhzH5DyLHpK9kQmnnJG8XbEhj4ZwBfP5eO8jmvdWlnxuTYsrJXfHL+EpTtmw8EM/W27wGGkzndz7Vv7m3iTxH2ImXrefq++enAyR03q1b20ov5yiuaAylyg3xz1PUDiuM5Pxrjif3Ei6JhHtpORcwVtsg05BTG6LRpmI5JTE5l1HxYD11xkBuGRGS1t+3aDqfl4ifMNEjYD2jRTo6kD6g0r1e7eQwPSIZIm9zpO/WzSHa24HYVg2wnXhcOEtIA3d6JaxKl4QL1mQ52ys0MLgxiTj+HZbnug3JLBg5KqwguJUomn+YZjQhuUYOab47zLsIzeV6YYZLMVJys6cRHYVwwSTMeHKyzrcdsP88QDEPuqMMtjhScxfz44LztkBuqHK+zaTNiH3flGD6QfIJ9TrVYVa5JIaoeAvCCGQuZeQpn3vXrg8w1vIeQjNDQyRu9lHYi+fHtnEP5YuuqGWWezTzcTW5xWGiWnB9C/dDBu335/O/H3hlpmXLFBvz4PWMGzZqgKHZmFaZjZWM6lLBzrXR/xNaJOBGjYIMFrTjN0QIGwiQ74Uje/gWL8dAZ8bOVk/D8ZymJCKzCHp7w436RmFxCgYENGFuJvTjib0z8nMNiJuHfREiPhBYnp1XuKjZGQoZ30qRZW4yhVmvIaGkhDtcnNDcQshRJTM0IGQmxp2Fhn4AQsas5lzKxxNy30Eue73azB81rCOYP1uYQKlw8p72lhJsx+2XPpE0e7veh6rJKUTTEIetXKFzLAj7loe8Exh5DnTD2Gtmb6UZU8br1sSbVhCCQGJeh1iffOmYxAgjakcKAx++t9SnFNYGm/B4mO9UoACPwElHFuF0STn4GZgtC1U2/qdYhCYeiYR7aTkXMFbbINOQUxui0aZiOSUxOZdR8WA9dcZAbhJGwWrgrrO7Ev9+sIVTZKb1BWs7OA7WxyIhWhmUTohftC3CmlTLm0gZrgurlykSznDFgGUOg8yt3dBFcvcRC8Zkdj+jkEPvd3dZk8Gc1Mvz/73I8pXxVb9V/+7PSeBNuKljbDLNoFprUvTvb+Ne/KiG+s3AAs5xhEjv9Gw/1W22Nnk8RkABkHQedWa4KFu/oERUpRUeWQN2JAnXQvjb8OzX5/NfqTudO//O9O+sgiMxWbnlx0sNsWruo1H+Zq+Wl14YtXZ+V1EuHDge0ZEj3R2wTm7rTFmbTNm89foQY6wTHomEe2k5FzBW2yDTkFMbotGmYjklMTmXUfFgPXXGQG4ZMKfjdEmSKYgpj/Oe10N1j51tLAC59hIvZCaYTyLCn88+5WZALonEewyletqb3jgFYspi+kMQc3lsrw8bst/Of9BgGABSHor4VKT0VlL2rKeZ+7eNAvFn4Iz7p9eFJxq8Lpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl98msZDi5SceUdF11iK0LhUkq95BnKAqhJRY5h+3sLSiIr696zR/5rnpiLKrzQBsllzDbRrYjDbuMQAAX5qFxtW/tHvt0FbdBbLLmKNOYtH9gx8oW+Zd+GsBeaXgjsK5DJsZ78V+pMuMW225JEWJEBtp77OHekWb4x6wzVocNCWZbdc8qQipUmkY5f8XfTtMQ5TI5EhSsbMxunEl2WsznQlyw/XGubTzM1gbTjO1hcVfWDMYwt5DCZdIUki+0enZFNfk2rAxxB4r9DDQbMjgwzqbB4DPpSzeX9PghfJsEXb2MR3oT5eD8hZdGFQT7l9ktZDHjC5X0afv7CyUtEDYFRfSa19cQinTITlYmy8Evya+DhCyWBQFKUvWYxrj9Jf60iUCj+SjWDffPJQCnFUZrCG65s21o1gCStNZC58FP9q/4o6BINYkoMiII4iAcLJW4/a/uZ365sWNLzmVdhaTWZK28RIxP9EUC7xfdTsLe8VtrhxyCOtcpAcTiRFQOg2VYlZKRdB/qZrVegE3s3zNZs0PvftWjkdS4gS2wIqHhXHh0tt/OW/mKJbWryrXnYPThV/g+7bqkQHIOeB6mr1Seoo8b02JYj2FCq5ipSTNfCTo6KO3bihz7WVdtAsLCInDTxCMxTfkfs8W0wjkdq8CmcWy1OC2rzkxzk7m3a9xVRRRCFQ+MLTB8omr+autrkGPLDpEKaIwGcD9E1BpI9TWiYNj++pmi7vLoq6TGal9kGAq6K4ZPr1QCSGLteJabPvv2MIy+4OpCmsC5lOMbItUDnsRMOt4lBwoLJ8picbTb+vaZT4mHBw2LI/4rEqWGsIrCNCxE3fdxk6DDmZEj+B2IDS1WkVQao8opzbzcOG6N9nMzsfyTZMI4ZvLSR5T6n1GhzWosGqnWgtXy2DU6TeWoD2PbPR3+QdDKZklZ5q8PbSpSyOdiRhRjfJGo5Cj0bVFLDhTc0NmTBN82LGj2eoa/6FcC7CrjnNRMJpkIMT7DImfKH8LqYPtt2y6bND0BpmgR3kjnqXkuiXSzM6+7IrWsYNaikLyZHonK/2OslHiXZQkqFfFkW+oVFsqR6AH9sxGJBZVQQWny2wfRo0svLfvFzPlKahBlNNdYOtc/sDAKYiXRNtnFTSPMUXi9CHKeKC1Cq8Ow4nJXao2bsnxMRuMAJHauaFocasJi9ln0vyamyLDR9CaniuVPm2ZJh5ZtyX2eC9I5iR7Ad+3YZ0rTvAMTmgMaT81l3YPQxZ8UUtGmNZKsAsYqPIhgXyILEUzdtAd2ZoLUuWELv/buDqWTFdUHxImyiKYSOPkmdGrlxlPy1hMxzZM57AzuxXU5rHkv+iI0YCeuAJ7iD3jgmE4DaZHpfqUXjCTAR5Phii4BAOq4q4mSMXndZwdoIIZIOCdvhL2PV57TToJLuPIp3BfdddTABJGSkC9CQOZL8+AMPTYz5nDG7/CGjEuMqjWRtRNb0ur2ennGNVQB42zZgQmLvrKqbcf6iojFOZwJj4a1+oMrZgCMjBwAz8xXLO7TJva/5pKbOpVKudRdnmoyrg4AZnrLdnwPZFZxgn+OiAjQWubZCb9JJXFilQLZ3J4CLGW+nGONZECypPcqOG6U1OxID1xTx9ud2xgEmLUAFV4yY9oAca9Dytf1mj+7UJJw6eWKXQPyuyvmTZc/i9Z4TQ4jscry/nYJiIBLfJNLqgJjyqOlqYnzW1Zkjwy5o7a3p3XXMxt83idD87JNDjTbm7w1w2xqfq33mExp9SwMiBuKlS6oSFET/h7z0PyhyFhUQ5Tqkqy43rtN9VRC4vuu6O7DPUJLubUhTxvtMO1UZHewyAEsdpmuCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGmelHPoNfwW68I1dGQLCc6t+MHEQTzq9DGkFezb7qYLox8Ij4H9WMpk2ZdCM6Ra1IwQd5JPgbpBOLUXMaEYO7BlyCYUr2crgKS8pv8/ok+lLXDJjgUHG7hlIvgG1zrB6By874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbmc3zIEn7dFkHpbSSvz+H2+P5ZNXzNe7SdDzWdaNItQ0vKE1mr6jTUJy0e8uSXKqoABB00MAuxy1NQEI0Bmplv2Uf2O+L/zLxP7tDvQAU7jKPFAamV9RSawQRSI+LsLBovJtiVI8Z7EdZU8PWU/82zl9sSbXyucxhMoy4nrSs1R+MwF9Uee1vAUMN3K6A3UadT+DQRDe28vx/XM3hngJjZmJctsy5glxDP4MfVLc5L0GpoLdc28Ib2HP/H9lH7HcmDx+HVQJmz2wqDjIqH9gHUgAkZI2S92sC/UmqsPsiae8YnHV6zNKxgHaC9isxictmUSqYoYSuRSC/GT8swsJ8s1EJ4nrMqFc4tYttrREuskX3cDEh7T4SJFL2ePqsgRSPAzyXvHqjUa5jy2tOS/WOwkoKMpxzei8SPIdg0WBVqUhZOay84piaWe7aH06D5FoddRP1kFevKvY3eHmnxomNmyDVsi16dIIgJ1amiHTVutiraFKQFDMuR2/MsYS0p9to0ASb5KxO8+8XtZRabhKDCgf4KjvXu26GhwNuzPX1VLOAuOChhPlLZ/E8KAplXIhlm8TpKVV4rlFwYoEl+TVMJX7xEyx1PUD9og7L1X8SP1wg2G7rxNScqGkeFZ9xA8F4ljbDLNoFprUvTvb+Ne/KiG+s3AAs5xhEjv9Gw/1W22PLnR/tX5e4viR2TIUsykTwBsVk11dqXnrDTQgFxW6m48hC2kUm/vfLr9q2gI0wIxLMzLg7Z8c67/tSIL3dziCnsSNUEozcWncgl+Hjws2RkPa/8wtNEraqG2Dyz8jZaC3GcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfqJLTzpyttRd7AX6QXCasL+0KAjYcT39wfozIsL8drv+BuVDa6iC6/by2YQVqaUsKgmz4awbTLNBJAilsuspw/I1pzPzZgBVlDw7Ms3/czI4Q3grLvLSlkbaYCTLpMV5jplA3Eu62KEr5QvyYZqWM1n6xzLo0rqSuc6ReneH7J3ab9fIyTwsBTdww9TkQ2vJiOInbOKTcmtqN+qZE0hVytHPu3K+wl6wDoLixVaowPEl+yvC4N7dF7pG0hdqaib35DXoXqjS7nTtPpUGSvdn+HDbuG8pmi+Y1MPyUxGtcDLpNTQdsDzVVzu0dJAjj3ZCa8wBS6YzXmAm9L/f9ne4sjLX9AWSJ65cnNH/AHuec8FjuKqIeZzO+8cdeZVFk0oxgu4GWKPonJar3uOM4LcwczQOYq0f4nLfGC8P6AOmTgp1SHwFi0Bfd6sw7qg9yWhgXkjRilYaGUjvNGpQ6AkYUs07uH0HcTsST7zyGUTkmG1DNE6JkmOchU7Su6ID/feRcCHBohH9ygPphQEK1HpeZk+pArj5LsQNfNP29atJBQBClC3JNZ1WAkPiwfqYH3BKGeD6nBGChZzqhXi3UPXMaJJGZlJ3hE6n2YIJi95RilbRviI3sAsDlLmpPVXed0jcg0tERbua4mejiovQm3Wfga/fW0sL7jq5QHdQkQ4mQxv8qa+izYmhgwnlN2X7AfkquE54xkgTwV/VPtSa9NtNUCXE60parVPUuYF28ZU50C9VRRBepuCT9JWoN2BC4bfYWr8fJ+QA6OJoORlpkGmqvTYTWgE4+f7INiz9WJNolfgyVdFMvMWFtyRMSzpQ0kcYOMQ+tMxmyiWNlHmUkHm/heVhhpwgAFl4iKQbl7VzOJEqWRvMV54gx6+dYCUKgbvjcSSsHjzybM/lyeQr70db2GVaYyPB6BmJrr8ESdrW1CwJcm/A+dtvLgO3lJC/TZYW9luKJEVEFT5J0qjCwBxWG8rC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfUJpN6NL2HVKtjxs/HsynT893Z0CoSa9L0T93DfgKs5nbdaroQVmP15zwt+7MTLooEBqGhi1D6yJw2IooF+ymtUnNHvW+pRbnAZlRSx2pDI9Qc6eKpMXBL9r1hlNiLhUqIeAyiTmywhKq9nDq11iLtlPgiJoACHf4FfPTRW9kwreKUx0ysHq3z8r21NBjGXgasZifdfJLguFlqnk3liSgeZMrnJjkfFxVEe+AOAUsdGKvdOK+zeLNs/jVGhjwF0c5BP6G/2wIDDxK1W8DnnUBp79zD17Nyd7Uzw0uiS0Z5sK0HIHERC+z279rbAdDdPe61K6rUBNULq9kLQ2Ahse0xyQPnWx16sNERzsoMj60DzvVU01J0uGaoPtPtavu5Nt0EYCHythRWcvgxNhpa95+ZvESb5CyVh1dM8egIHmGYjT3BIJm+Dy7bJgQ1eMbVCckVDt89G7DSOM8y3rtPixSxMXWrUnhXAH6TR2xi8k4Q2fKDf1nj/M3MJNJI5Fg0v9Ky874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnb4q74I9mf1QEv7zZHrBl3MMVcEjiOI8DHkU5MnYkW2s2Yljn8jZHZ6vSL1SIhQTxwijCUDkz+UIKUjvXjqEEJ/MUMA9FvQdPtTqZRof+UIMjWeCNUIxbbGjCMJ0qApAcDwLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHdZwxCb3IkAjTZryBvCbn7rVZfbkf5kRHNcc3oAK/Ytqvruhti12wST1rziwAkIiRxtauwAhfA816zgBGlZxqTaMk7QEpe5PJnwYQA03NInrBmq3TL7aXRiD/8fdgcCg0pkNjZqJDraBY6JWVRaNXZ9rff2qJUkEo7YHHSkcY1cX8kOLS2UR6VNRkZ+ekey+HSjKRwTkKKQxi4EQ7VChK65qNja3t4TcKQhY1+DVLPceMIR8UlJHg2R0l48+ekZUGqj5PxjnsML5FNCD83Rl9izHTUyM2cGZZD5RN3PGuu/pqiDvpENf5TYk4xGuDe98UZCmnpVxGtldyU7Fntg/32EDNxYI8kbtM52M1Wkfgvyl3OsKv+w3as8CVIuZggeoQjbnt4pKGMorWqEH2IlhlxmODGUyRWUeHmYKrTTnMm0f1Dpmgeak5ASsl+05FDCuNKdPrwrOyRPs2HCklNLxIFY/WMS54mIik3Q2TfZj64l4Igrvo+35mjAD5trnaeNR7puuYPVdfCDFoIE+doIGvawjDwugDGDg7DA+jrlfg+TZ0b6Y7cWJWr4uzsqLi4IszIPV5cAahJydR5lJcxHXNFZMQmXVXRdj7P41j2QvwWUMPXvWaw2foRonVY49C4OXwWvgtj+C6Nae4UI68ubEtueQGTOkA4AOOvI6t5SLxdlTdfBEYfqbCbJyyDW+VfkK4qbT+br5SmyEzxRBTPMqzXaXqhggBqIOkip2yU88pTpf7aVXXf8R63ziyXIsJGT11F+QzuZBs5loiITfn+xECIvEapL4R75UexmG9lZ6DY80P5ELsZw6ft/4xWsStrghkNdxrRONRlgOMx2OdsNKT1U59IK/9zdZV72zNKFtb/XkJFERziCCZKfxOs8kmGpI+zvVYLhKUOOBRqvC7F78jRqmHB38PV3BzcDevPps5r7jmjJFE+jvNRXGfKeqOFSVieU7ajTJ2vXu+2/s+mPhdiY5bpmeqmMMScFjVDNBFILln/z5Ey4obgEmFr9LLo6tmhv3rzI8xyN1jkMq01o2fcEjdE3XW0+H0nElS/i4Q6BLiN8WOmAuGBphY+OhBN/9lD/RBV+0tWFSVxOUEN5ngGO6JhHtpORcwVtsg05BTG6LRpmI5JTE5l1HxYD11xkBuHfnkAVa42pJxkQ9OvtDCgG1P+5wWaLhzahFVvJBxvNwBupnQowfxiCKzP7exRnOHUfnDMzTxVAOB1ByMFmgizlrzzA01zqH1qolJhwVYA4LJcQCkjn3MyiFDyYopTBLyYm3KN52aRLuWPWQfyijRSTihCA7UfK5cp6LiVHK7tcU/2Hoa9GpKuSMhYsGbqCF+7ARLeInERclfZCSOIdhsmDtkCBJz6EMuRmHBNqHfR0uS4u1h+Hdv2Piz/uQRyqTAff5fvfdG/FeaPu8QZQicc00sZhaowhinotAEo0R6e8THMUiQwGpGb+X6+08GrlW1RoKx1ieO6IroFWKbKsHox87xpIXmZni0Brpe5rXpYfw6gOt79/57EvtQ1n9pas0Zi81o3o21maZpDlrspwiYWxUdAgsOLONuM4SuxgFqo4oVGnSSFopWY2hXq4LMqG9PykKCHwNT5qf6oJEZYkHaws7O9tUwm6aBEi/+hISmpOa+IP0fEIxesXZTPb2LrjAbXC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfQaJTfOp8qkbt0M/6AYFPc2E0RLMQSA19/Xt1ekC+pqZ1WzK8DaCimTfWENHSG9cKwsPCTZ7sScRYevhblezkJJTsPABUDlZgHcfKTjkQJCh4zxkQQiJMb5NGfT+2gtCFIIG4yCfPVEEgcvHt3Hepj16sf9L8Ia58jO7E5kZHCMa9EcNQkdmHLMimASWe6HWOLYxRNu3Do6J1ytLmXyzkf16+BhPR9i4KKdWIOiNkj7IzaDEHKODgCXDMsW+RurentRBWf7d/9x0jK9EvUaKFSN1ym2a0WipJbQQcGueaO840FQoEtdEyngAWzeYCCqbvRJsrKOrkKulfFc0L2nF1O/1p6HvDPRejIhshDbSNQg91ncxQH41EzeTIweJHvDztpzuYuvb9mPvdq+2wdzf/DG5UgeyxYxHgK+FUlKHrX8xH+kjJT9S7Y2jyVQYb1LTKd7VW3KAfXrw38BlxjXvQpqitpKmdRIA244fBycdfxaz9MxG+quKeMGmlG/G1vNRiYrjovoChuAoiH3NfG1ZQ0bFeLZjs3x7fmTv2yXTR33AH1JCMWRHcrQRNqZjwtAvkEOsRIQJ7ERWbVTbZSFsh4HCB1DarENN38ghV89xzitQQDq6SVs47uHqGegAXKYNFZIVHQmIWCf9CL1uRty5xVPzTaT5xBRd2n/meDvJNhF5Dkb3LB3vLqCw2x+mzT6h1u8t4CrLLwwiLIis/WdH1GP9oULDpuzwf56d2p2IS8qKgrv1ErkICQ8D2JyxgfC/Xy874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbbWKibM2RgQ0/Gv1EjikzTvrjdjiBaRiloWQkRcaDhE37UIbU4K2zT7PUBEbmZDA0fOx5KJRlR9ch7KDcp9EzG3RwLLZ3opXTIItLfjJa8wazlKu7b5xCgmn36612z4BeeVT7wxQHScBB6ZnfqPFBpX+Cud5fxaKBRNmnpVfFAbe52llCv7LDcW/+7DLVXV1JuZ6cWJB+KjsR5esnNB6cCX98sARvWqP4aeXSQJ6oh1/1VEILpthUpSgzT2hbwpP8nsbomCK+J/DLkj7esMKhRw6Aua1YoqXUuOc6Bi9YuzlrZiQStJZ2RZQ79eJBjfc7S7qSV3TnYrC/xd2Za/h1R11tbSa29b9ps0eVFFlP8Z8W1kDxyU3Gg90SXuL8rsUM2RAwPEnsV3oz1vacp/6nzlfwG2P91IaXX3qPzVKYgMSN7ei7abV0BzIMI4bSmRQRd1cpQfvKZ1Q+3MVFnNcDQYOe+V7twJEsHaQ8Hadzjgb79B/MYktdwutwO8Oso4IoXwb3CcSX8IauBtmEfy6LM+phM0XIDDzvvZKzA1IvrRQq3TC7BfRpXozgRs7C58E8G7QPyWIt+kwJZ3Mjn2KUX0F+ia9pdL+0pSTov0MsIi6Dqz2pr7MlJgPy3VR0GNh3ggbjIJ89UQSBy8e3cd6mPXqx/0vwhrnyM7sTmRkcIxrRoSKJ91fGjf/r+CUKkyyLyRUJsBvGpLu2M9YnLaa5HKSI9AXytJzmZDQELop8Nz+vYXzBtTU61lZwBr2czgxpQU9von38jiVWHR6zpXt3p/RPDP29iYxliit/5O9Vm8tqyyPPyoKAscRD/iUyOqvfgzgZmj4zMGVvPPPYqyol0AwQIkMvWzS2OTR+V4aFuV3s0xKkFkumzj9dqitp8F0969lddEdlNHhkRnK3aeI8ovq6ga0SffqnIZjfkTT65VaqFH9Px+oWsCv2sxEUq/kLFotFQontFbM09gGCuRpQvD5X7ii4o1Mw2bS2yJgciM/fYffUn/Z1nqlHLJUtXW2vqQg6I1dQi/KKh4+uE0Dj6L0BPGy6vhMLcct2ZbXHw5B6IG6UqOSsB7zPEFdpuAdLrsXxcSW7D3aNRi6Cr8EuSzCtOz53pcCA28eRAY9Tiy/R3vbpmxysUYxIeh9A5vhHvQZmoQ1cckdZROb00qNVe+sMFXEjfU8o3zPfo7UlWnvGcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfoXc4bO9+ma7j58EZ/80FAPCPPW6GS+uG/HX6zQuo3pNGrwRbKsDvnSF8iUtzh3PBKApcPrsjJ3JyYVrPyGpxlYTFsHbD1QYL/miOPkF5U20H3Wlfvf84WTkUq4QKmmSXcPAaMk3GkMw4rMz24uG0TtwAvufA0zXgqCy+QBXnMhF5/XuHEp9EpVYVYUAH+BSMxgo84/8GfYvgBSAGBmtDh1fXKLui9HmYatxtfh1C+HRIYwUXXXJHwUmEIrn4FczUq5q+Z+fYvfWwVk/eqdzCbiZVhSQ9xKxaAjzXpxsaxk9DuNvR1O7VcNo7qTa/4XYlR8FTgnNfPFhiIl8CpwwSapg0CY/LLUIku5PpOuD5T93wAY3JWW+LMVL/AMLDxnyLk0bMi1AVRq+u/btlryNGj+hPfhEklYs1hWxvT7nOb7iuOeyuLXo92KkcDWQVrdSAZupJ4pN5iy1/QD1VZQhmdH8YVxem/9bUgkoIjTxq8jHBxGVGv7CGUXcmqGe6U4oivGUkQcpkEyNezBxttziP0402nROTu083cycfouZGNR9kTznFKfhLllISKmolxvitg72HjphsznhsSHwU5bxY+3qhtzAgnPnqa0Re3DoFrKWreiXjkt7uKCSLb4Eo60dK8Lpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9q1Iv8lhnfRAxHRBXcqpl1bYcpopcdbT6dOWeMjRCChvZvVY3gDb9VPeZ48gfaddwYHt1wI5jBmrVRZAccH/ZpYvTiLQJbKDrS4/YI2qdZRa9QjCMCVx7RIrTc1L/PBtGsZ78V+pMuMW225JEWJEBtp77OHekWb4x6wzVocNCWZahPNf3gNXclyJyRqq2aMYbGCL1ancLFNaGjKh37Tnno0+aEs5T2cE7ONOI9xCUz86vd/3T910NfV6TNJbSN35wZC4QPldEURRXDEDfY33Bm7VYYxrdOwdtDbZ8LzkcrZr6EmxJ6cZus+o9ReoHrU6sSMtxCEwv+jrhuFz4bhsOFypG6fQy0y+NgrKb2ywSQbBDXGsnnzlK2a2WiJ0l4CS8T2DG88AraOHyQnFFWbC4/pqu30QciX2HtIasPVx2A1MS9+aXTfYanZHDQBdU/TXHCu9ROpsO1L8t7ibnhdL5hx7NATYUw4RDc8a55wq6UDvcwYRnU0yg2kkpBnnAIKJgf/pItF9NWcS4Pn4s3+KEl9bpGlsW8ncOmYTZ4txz5uZ+h6XTC+0sG/8N7QZRCzJV+ClKTysYKuUtU9ZeIo2ULaxLXXTKfpvCVgjsJuxRU9EEA7I2O2dKrq65dBqSlSJtCa40619aGTaYBMI/yCdRYQyL6OKJ01nUSidYU4eWjLgrnXUMD7+tAHUg0usNnKKxkhZm3ljFOK4ftCOifGWkxGUAI/T0Ic6ydythkmoSMNHlHQFcKWFU+xGx0wv1mhINRcwi2pylKFFngbgeNuus6BrsmnZOVCkStGhl4Dy9d0i5Tfyrz3frqffRmZ37iPc2WgrWRbAhRQiTaVW5Rk9KAePDt0RUZu/84o8UMPCrNXA/+hi1BwReHsR9fBEZh78enbmTlPmKHAmkPD5NtzB4TulEPkVB24Z26emUxK6NGBnc8V7ysmBs9i9qAFtSH3UYq1EB6OOOUsw2MvieTy3dT1FZ31HrXAvH5zvxZ+haN8IK4AjI3JAU/1mDX1NNxX4cv1G5FDLab/dK3m72uOdlXjxqygl9LXCMg4buuOJXhTG7OwohxQdfnxwFbRY+dpz99nglts6ssjnlaHFanxFyU02/2LDWTQB1xG1WgvbDXjSIxGo94J3Wp/lo/r8TtiW4Dd528mhbcGY6oF3KApcBKxvNuLbvt8FO4EpqH+9ilurdFruMiHApa+yOCg4nQXcRb3Pm9NeGFP4HWRirlu/gylIvdehmsIQlFUXGq3DZTAp+dR68hFWlzH2E9GnodgdTgOSBYhD/6TwR394W7b0+Z11k68laPo1EDAJPKmnCRN/9cu7bkFQoA3KYWE/RXft4hnqHzce0XAWNgAjUXvDFJ+s8haiSEuO16zb/OjTrPTiih088OeSXbBE9TdjXYE4ixnCXbWG4OMx9yc1BTaqusB+37sxshB8jvNuXYbQWFn5tdooisheqkk1EaFqStbYqtoEFDR4//uuVshdfHcbPm1jbtvUKsDIqZ7LnUJUZLZ5/lzlJ4t+o1ThvyOyD2d4a7BFEoamuETOksaU/xLmca7OYl/YKC8PDcDg22fadzQIX6xGJfGNViUlq/iEAQY6Ub7fhDH6r226JdDNcvi5F2E8LH1guYAeOXnRQKFhi8gfpauGvUFiA2DNHpHnIXWBuTwnxxfDQ5Ug4SHNUCn5gCrRomRjzN9ovsEpHBOwX5gEwZMlLSTAOOfHDS0Bkg6U2RV3oRXGh7f+w+vhlmJcu0JY2wyzaBaa1L072/jXvyohvrNwALOcYRI7/RsP9VttjUhcswmdW/FgErmPJYeoONtyRxEwP5+qwPQjkAsyGuAgjg/SCqfdZBN0cUM+RnzVf/Xe2Y5FlGBClgmF/Vzbs4vPU/GDkZZET3Hqg5+56aQcEOzBxjTpPMz3rAOo0q8UQMDnVkW7XUMD6MXYrc2w2NryIn83dQK1Esw5hXgxc6XTmOd7ISVFWMqDTIPfIgZbgnb6yjRU58AnNhROT+Z6TacNOcncuCcAWJLdiBVJJKMbz8A9qeJ+wfWa65lZbS8aBSZ205YXTTBKfc6ub6n0/+BUZ349kNCxksUxcMj0eKBnflnDQ7KTtvgg04RvHitDusJnDPJ9cDbnSeuUJV3DwuwV4zagsYQiBy0+1fAgWAJvl/Z0iCYIBl2xODYzdm1OL8MnWgf4URn5rjGvxka9gXMfZmDC4AIkQ2flq6pcnMbOxnvxX6ky4xbbbkkRYkQG2nvs4d6RZvjHrDNWhw0JZliIzdpI1P8doWz9bcUQhYU/35dhaeF3IXNdkcMv9lKxzPAi5W4QfQaBWh8VccUx5UxOL0PreiDQXUSBO+ZozAqeSErNNfrnlZx25B3AcqOQrz6XBkFIBlT/DLAu1BpC53Ije5ApXpMbVyhQbgBQf4FAirAesZuRYCkTEVryvjaOcqZnGBcFTIOdiBzd98jCsq9qXRdsKAaonvNRdWh4iIImLQ9t/xXafagDvXXki37jSNUyHcrL0P3jq5c64di2jbh9alPuVTC0bMrUeMZXEqAGuHXdby2JR7/KMNC9RT4gvoj/d/TAASuYeqhZcuDTt7aeEdN9wFqqjFzuJzoHz/W14DMnEB0Ph7CxRC+q1uEzxntzM6etMo7fCyfAO3VFfBTgs4LwGj2mfVv0/f2kfv+fzgcXKaeo3EAyjriuYNWkj/yrqjH5mN2ve3B+pbLljx21ZfGQmt5fnWnPiVn1L0MvaXJQXgHICEnRUO/Jc7a1c6N0WSpskhigI8j2jzl5plDTcfcyLuRXfuwbdVcS5hSph4Qg11KfrV84yrkhFMF8p71J0R9tTXA/j62izLeLwVoCHDOaG3Zkz1paYarnb27J2VEwTDGbPaGoyiAar0bwEXfh5N8MSxdOpj8CUYRzVPSsblp38U1OTw1GFnylQ+/0jBctEbXLLbbOK1e4BmkdsmmSLKYBWNJsKHNu5d/L4InRXateAUxFBpDqPRL3Vm4Vbv/bq9wVxj4xtJF+wcD2Yk4nSpamXQtQEtnE/tr7j6gbbtyaJMMK1mVsZfCp/XAWLVapyMCfTJFz3lfHJwkfHXkpBP/FxMLqLvmzRwIapKv5obgHdFupdxBNvGKKdLHOo+ZIgOBwwVrVIZQTJz3iSySTjp+yBwvkp2hE8FKPm6zMqKEMmqaro4/atjClqFvwwMOQNaFrjkr5lGTVv7+xBxroi+wlH+5CIzqW+s3UTjK4F4oJQqtbChP/TaTLdBchyDUDd86JU2101bdivql00MWXREdtkpPXs0hzXhrTeEVEUzcfaJVmYbsPKH3N451sp/FrFJZQih514v8kZYzVUFIN35gp5712//eKqQ/SLYxx44flZ6K9kVDyrlYywM+UvqRUG12JHdqqzpffRnP53d9akNdilW2zVRkUsq+Mn8gzHAf3zxPP6xfvYEuCIHgDRvCy09FJ2AHe8+xBgi+HHDWro+zwhxLrFIuAPufdVgkBE5rMUECoQZK7SJo3caTvUERWTEHwwhovHWeNLaYoWqFNgUu1ZhU4Cur7n0y9o5iZ4yWrWOumGiQ3w/jC+h8Lurd3EJwM4Gy1Gl1dr2unSn46QTV8k7ybWX8VhKb9BOYDyHFl5bqnRcEH70Gj5ewkvO+JsVeXERulSWJiniR7q/7F+2ItUT7T4h+VfBDUZ22bZcDm0x0GemhUkRNLCdwytvNpgEivGQ5aJOOEocZavR3naK58j0VoxB/DDTGmMrco3OQuZ6fIsc+puEovEyS7YuJCaP46swhCNfaZY3b922m+0RNhTUdJjTJCCnk7dgZy6+Wrf4F+BwXWzwYLfOEEHSJGFUbB05O2/UdVj6wCQ6JhHtpORcwVtsg05BTG6LRpmI5JTE5l1HxYD11xkBuECevrAX9cO9srykzoKtEWOU6/CiKTJDLgHUy5rzk/cuccRz/fIfgtyYUPtOptIJBAZlIczsI8wBgmzbNEe2g8X45HT1IFcxmlO3pn79+zltxKPBrBz0ShaadTMiR3iygkiXDyOjlnZ3Tu+JnidLonaPduKXwIjqv9VB5a3EV3iWfwX2XJZk8fjMnpITr7lFFGQTJ1DbprgmrVWwOk2IGRadm2LjIQ+EWHbdEwAmUo6sHmBOKwfoICyVW9JPKUXLEVpxww7LgQ6Wbj23uREagf9RnqlhjqSHNBQGHkBpIIFQUyvRoLx03ihp+CPl1Ty/ZHQskn4yM2oSyn9R74IZ/kLHykOGnHIQFHjzJlb+zc3QvT0upYIVbvhPqu6kiRJMBEDsqTjsANXFUQHj50hyEHREGBpnqA4ueeYA1F+dT5p18Zwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+Emhf8BYMoLXsqE+Pu1f0Zke/veRAXzE2W/kvkU3N1CwJ4s6f+pTPnJ5oY/Tr3eII0nXrsMM4DnRSi7PlHJeKmR5Yz7vsR4IvRUkWp3HknuVmICtiAx5neGRFCoI7HhhkzIphmyj+9S0SqAgAdMrjDMpS62e+jsU1uHJqpfoPosGDi2eLHggbXBvxY9mQclzsUgT5IuA+5UOqMTF0hOMHer/aZ0nGS2ua0dl3AXFPWC26NUBpdzhq1p0wY0R4MJyNJHT5V4N0ji+4dw92z7Zzv6qG2UbGMAnMW53NUpyke7yb1HPVTSuBqniFqS3GdbPdzBainDyc2lucC/w/uvqte5PTBAraKUTvWN+kVrsNyifA20aUtjm8773X1SkZtnjFMZbDq+Rnxv/Fqyi7lzLZSi4n0o64Un8p3IgHTDa+p1exnvxX6ky4xbbbkkRYkQG2nvs4d6RZvjHrDNWhw0JZll6rDZ7/4KyQ9O+YQtcyHJVEbtlxtpgZJ7lv1ga/oQb3lBpOA9evXkE0LWpG9byDjE/mHkP6aEqbKFT9hm6X9vTumGBS0tgsCfIYVOg7L/JZcjyB+hd97TjaeJ58vBdgQMZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+PZPev+0k9fGTjAm9Xvo5w7z9PYwQAwE7IO2yZPXCt5b1bHPLVMDwvlYhLpOwWJJOtlg94xsv+SBP27LQn3A454gPCh69FEa29tQTGBv8HHcB9TJK1+ICuKRsStwkFwW5424Cc3ov7bEfKaEG+lcJ0NfGHP1CqpOi8N0pZN2NyY36jxp89IuXKR5mXXVtEI09ExdBTJU/bYKt3fEOSe3369AdTSbKalNiI87FDdGcGlvhc8s7gUHAB7CszEp9BB6Z1RnTseCvEcz3N9dbUuh1uCQHnZKXI69LAut/sWiI4lOttmNXpYttkt6WYJ8bVWTMzE4T63tZIpwNLO9PkoollD11i6IsQwpCk0Kh9JF8zn2BDHbVjhf1UkgX4NwAj+fvcdjbQf/P+49eQ3Yrq84ImrRowAZPr3Uzs9f/cq3d1a3BOJtZpazhecMMjLImGHynuJoH3pc8sh5L08aXy9oNLABF/DvMpitwY/G3wrIv8iuUej/u2W0zGaQQTBHpZT8Y4T96Yeqdlb6F3KR2dZJvt8kHRBlTtqMf+90c+c5ur2bh5NYT/2DGjMDmUw5Fhr3tKMUbi3wLexIw/cVdkW3eXtijaeRQBWWuouaRrQWLCsmuHJysrAqm2FfzBBWj9I+UVB4GjI8Uh3dtQc+ua2g0G5DNGUpihiN6qNvImfsnEaTAuwq45zUTCaZCDE+wyJnyh/C6mD7bdsumzQ9AaZoEd+D3YK9+NA5XWKM60R4+zmQCi0JmMMQ1d42aAQmBq/mioP10EixaEnDfCGULvYqpQStepyac+MdDJhfqHaRUBOtK5ymjfni5eyyaE5xr0o+X1kJYrm96jNSKQuc1fN38Rynhn9RW0p6FNzQfyT013bAf9cGQw7Mw6CGJgHfhl5kY+1zQsqtLheIurL1vO6Z441fiDr6N6Oe0kMJY8fSPP7U95OIoEyCoZiBExoZ97sDFg95IJxf2PZIxuT8HLhNRiqkb/tGd0EUQnaqS48S1MgaX8y/gHuj9nAiQ2Boe3ut4V1BBWNX9lHEZEdgi0YcxlNJPHNN5h1NNz/5az94Y2WTVuBtr4eRVsmgg0UkBXurqiwIndMYcTazQGmcnsMh7C2m7PXtb8zkZMZSjGFnCeiPWWWWK+5kv90s8vCy55165789y2ikzxkpU3jfa6wtdAbkk6E9Ql7A5b7u/CssrSsOAi2baL87iOvezeY0/yQOevCSHtVEwoPIEo7k4qq/5x27APgAPdVqWSbkSv9FzhWqRNeIjPlB4SA6Rmmle8y9Lq3ymqRb+cD2WN+KASLJ+DJDj5cHWdLIxBHPgQKmtdcOdPFFIZyJP36rEAqeGuE2kZ+Cu3V4GKmItV5UlicQDg33Kk68W0ug0teKCWLoO4m/fAZygCNlr7xaBOflAUK4vtotm4Eo4qKqoqAz1Kf2rupU0n9e1uUDWxxOwD/D56rnoDD9vH2TFmWQcRLMjmKo2hW9p/MT0NoaF4owFyRwy/VFcxEdC9VVOmHO9iy1MaNdhew1Gu74NGaITRmpORzUl+tkSbFiQ9ZD7IRwW/viMeq09ZYSe+5Ajvj7maeU2Ssab/SiTpfe3NF39WIKAGWSvqRj1cdcgRmQACaLnrb63DhU249TBZDlL6grUho7hqwST78kOkPwJ/6ehJlwNyvU3wLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHcCAIDJ10JySvOFX0GicJ+RXAq/rGS1gq/9pe96hQg1JnN7g5K2FNk8S1Vr54UQgoZfwUwMArfYlNgx0/a6477j0fR1nw+C+WbSRte1CNsr479ec42mNsXxl647C0V9eTE7/W70u4uOOw4v5MvrmcXgcUXxwySuO9IFKfA+poGgfcwI+afYyL96sKApMjHozpn3Gs2wZU3VbvjUzTi+31K8uReYJ7eRWDtf7DPEt0MPk4SAXDeRbHW8TiJn83MG8yT5nEjR11AwL6zZfrXiObtGoNrF28l4/fHRSnKB4BKa8DXmWEi8JeslVNigvnjFmPu88XHL0Dd9MenmeIRSOfE3pJWj0GfN0OHhItFG8/8V4+D4K09TUfKuaD+IWU0nPTNWHzVZ3b2XkHG4G25iHz1VdgTkTrIplnSthwOrc4KJRQBA70Q6RbL9pkhQK9TeroKlYTv1wylFSVBcDS3BGggYY2BIdE2/E7OubFwpTPVa+1pks2TthdN2GJvNPmvvssJD2wD+U5y9BqzeFPibQx3fNilS2d9s0YZxoOh0KlTKOtTy9xGAiFIGq3fnsznD4r1YaKAyaMU/YEdewXvzvKb/sxdeO92RZ09NO4Q3KjVJdsKNAQOaJNqvD6uo9PVmGE12iR/7lSewMXkBHHdKiNeChGvUS8pGlBtnwSYmiX1UjBdinn/v1mvBKo52RYxupIWmwEqMqAbPgjEImrY3oLax7J7n2PMRBfV1r/Ln7yogx2sqNGY2UvPjyDoNLLc5vc43X/LFXMaGZpq3gSJzyJfXLTkyYdlHaagPCBdGn7cgHphPoK/ZyJuXnBFnbuLlCZVxMi4UKxu7T5EN9YuzoGYjBtSAPHAqkGFPblFHC0CUkNtHCqMRdv1TalvU50ahuRd8JG0CnCv6gUsqJgyI6FwlQMKkYkc3uWuhC6kwwwVeGY7GWa9rF3n4pMOxt7A98biwyqBp4Qmv0mGfXdQplnkYOwFIvAICGL3C+LJ2q9H+3bVHVEkBjnXQQW+maFUrVXGx3KH6ezb+v21HbduXeQK7lToKDmeTh4BTwjxsGVymz7tL7IhabiilhdSQldcPav8b4K/4/pKKkuHFmFfoZjC3+5Ezgjd9j8sikvDiqDnUoxmJps7MHEq5HLCmHurgdszvniaACs8vAgnF1xTarDOop5CXYQ0W2oiZ/ISM1bD9RVExuC+WwyNZ9OGiv9oouHGkRIPh5Ru5YfN0lO3HWruu9bFJPLVZFJKSWzROiAIJKAMUU/P4gKC/adIadWkJf0wqGz3fKN/IDDZLMTv2aLsylrFAOaVzRNsED2yalqHyBtn5OB2H4bNBUCHM5Eog9cfdSOgeuMm4Yrzyg2oyfGx+2y/8xQi4Kuz7QsYS/2LGafVkdce5SK9mQ8MyENr6S1WFJDHtSMFRNgGRRsC+9ia/h0i9xivchhXWH5JB9kqYRX3z9eTmgxcmjm4K+IKPI0icpAoKHA+/uUQiGhy7oO+3CBziNpXS/3hID7kwHTOvNPbnNxfypvnTPkgfBtB91GSXmdX9U7yt9DlBXZYEwY/um1dpvtiPxC1E+lsyWL7E7MLkXr9YXbmCo6sI0c044RKm5iXoioX2biVkl3vmEd8NxahfUfIfNE80uOHr3drIe0NHJBpAsQNiupgRa8TKvP/Auwq45zUTCaZCDE+wyJnyh/C6mD7bdsumzQ9AaZoEd+/HV/2ahpR4O41rCroEtcqOEHoMUhgxv0+pPE1ArVgP1dr6AXzOtIVQ1VdKD0B4MGwwiToK2eXhGy9clm0/XmA6ObLaNbxPiXOSthPR3v7xWHW96hSP/w9APrhlWUz7iSBNlE7fEGqlYG9NdmKW/9QAzW0Q/o9icc29rUwBLcoeCRWcsul7ARAYZeVO43zt8wnQY8BnwRYga9iQRcB80jQYfg2wCr2wuztMtuO40h3wrYwQJu2h3ON4bMw4qMbDDss/FT0VDSs4JXVEI/i/ZJh/fnudwjCWvzSLO+5WOl8aftdYciXJjRAz6tCWB9X/K6Bw3VYKVjXuJ0dCg3g48bc+mV2sgtXlF8PyYkHH7l1ORyLV8i15uJLHVSt/WxN4m8Zwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+CN6QfDidJna/zf6V3KB1EefEmtl0t7jnJulPqC9sV3HA/44fq93YQ1qXXLHBRNxfXmj8K2HBZGODaKLg8NCAtgGUbKqA0S6MLLpuXM6ofgAWvVMJptq6eAO+Hymchcwslz+b7FtTfc9PrImBg/zwPyeNb9yIJrYr8kEacS/eOtwxQGF5oWaqz1k48X5edhfYQEd+J2BhpvbqVK+XkEM2Q7LH1n1ROIGbM96+tHHOaXrGq68gu5KkTt1KOQ78/5KVFSBDac93Hir2P7Bo2Q1jwOX0l9gUj7h8n2zxWe0TnTrQ8DkmjawXePRnzzOZHAuZUpU2z2wtyVVXc6BkyCaMmyOiIrnUc63awngbBqEoD1PSSZgATwc04Walh7w7aVu4sc8tb8JbcHrQMwghZXUqXJhflR15/RE4RWITEeLo1sHT3fy2dZfA2IqGa9R97UfA+Rdxv54xLeqXkBG/0LgV2OwGaJcb558ytiaK+q+iIG6PKm8vn+zsJbNk0U0khaT7wLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHdMdnqvqJiJrMRvDNvxPONtjOpf95kSfpdcUm2P/ata7QOAgWRYFziaCQhLzOmfgnBqlHFSa6ddFgBpxQS07alm4SBpYKdYFT4himULEuI8kQJ8o2JnkK3MbdwgWMMIhSd51bE7Aj4zmn/lZv75yJhTAFq1LdzYqfevKBF/dsNpqsZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+xdovLPXto88fIqmHz5ehifvPSrQj3DXU2IY0jd3pKh6YfLPxXH1P5iFLyg98yr3inyFPCqR7xjxD0jv2URrum5EFK1Po+kUJWhSPiqhpbPM1NmtrheUt4mOzwtjwsl+1vYxN6f/lxD8hpg56fur8S60V8zWFiNU4B2M29BmVm1jKslurqY1VABLLrePsfVFRX0GEMbm0saboomWXmeBVxVjyP0lCwOYyj2UeeXkc3JPfEGak/YUZoWbC6Nu2iswZRbbYo1bEFOXDmYSY+iQA3An70YHaEC8VjEPp+QvA96lInYbSkgAyUqJhrh//lb7V8XBff4sHVULuajLS4UMYkAeTxxA1Dc5p0DFV7xjPrGEKVYONxILkYaZrEi/eVUQZBc0aaIZHbV/8zWDjTFQ6//hdEc0XQ4hf2bbp9LS1HMEKy/ROZl7+1WuIm10hRxM2WivH6/7l1YpohoopXp6jOg2cqLnX3RQKFPDZpX6XAvbxm5fXTUnGVZUJIPjGQ4cl+iCy64lrqw7gI3g5TJeXP00GrwHPPKVpl++IhVl5m78Z5xclWKrSYksgY3ogxJ4rSZQmXCfaTRa3I3FG4XBppf0atgPp0pK4n9pJSaXAbO6YyEh7GtgU8RKckwJI/pPWurul5+7ZxUFGdM+miD+A/GOHTNlTsGG9NFGzTTSXyfZ82GMXELIP/TWwlq0XEr6EkPN3NaxGXh/e4RXEAGeWo+8t8YtNM3ANTqDs9dh0yQ/fOSV+DHIVe7weGSrY7gaCOiyy/x4Ul9E/RUt3qxLv0mFY2REaEXS2IE5liqZ2dgVTDY7Usd3jQVdsFvDBE+yrdY9ldW6pPrE5t5H+sQLxCMZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+8zd9AaoHFD/oJTAhlVPbAouhdhYm3mVVVb6QLnoVnefwpoRQx0MTg6ZJqB3w9R2RZvYPnrVjwhYgDiB/HjaKFYt8cJbVMDRDWecKO9sGY+HBrToIbWW4AK/ssTJDEpDYAsumkhgTNTdmXGMh41UTuWjEOFEDhvgND+KiAMdIqubfje31EUnu+ah2DP8JVcZDjgaCbbHfQyeC3///92QLvA0KFscRyx4FWo177vWm4RiwUmghw/Q8opr6a7kawivkfi4XAYtQjElYwWH/3uIUocX3UG3uSnYsQQGRsRf0eEV4QFxMixIzj2KjDTi5u80wWb2Lh49D1Z6t6y6BTBLth1xeMzNWngQEcNpywoZBx87GMmteTksyfu6TONA+LH3ojHnvggfaKjrqe4n5PVZtlHeXUrgkjftsG6dJpEOIV6r+0wwb+za8UI6QrLq9i6lVL63MXIFHRNtcMNZvd5SR6hgOYlq1itF4LAf8EN8E2V2GbycR5EH+ioiC9qiq5OWbR6PmGK12HE1VrVPHm+TwtqyvwLLVkmTrBrT2BspVa3m6d0AqjG7hoyoSGZx9ZVAFpCKVrGyZVGhNMacKANVihZRidcGZbDssSAMvT4r1st7SYIGu9VQUg+qi3GLt228rtEQ7TiCnYBRaXiV643p0jp8TmSXXYVEwZF/IbDRMj01UyKO0d+b5g4JcCuFg4nC9U/DIEfZ8L2gsHN5Cnd60PI95vC9i7YiabeXMB9sf7T64hnIYc6kCPzJAb07Ot+jZcGVf1PXUTQS6VzEBkfwSSmIHeAnl2IwKlXuXjcjlHQQaUkJZMf9oBQ6qxQnAqCZ4rRq1QWvY9OBuUgfBYpv4cJY2wyzaBaa1L072/jXvyohvrNwALOcYRI7/RsP9Vttj3Rtf7quK6QxJAFsOMCOA8auEOtMFBuJ8EzkEOdMPX0HnAHqa/9l8QyVYUKHQA1vZWDerunsP/aD7mLbD4ow8yZrOrxrj23JL2YwNveh9ToicGhlIG/3RQf7FEShn4Oto4n04rinLj7b7qRJvjY2H0oZfuoGmZfDeXesOrOUuFsM/8nb+5mYDArvJjrO7GVaTulRxiN9KVd29+dyJPEuU+lagz9oyrvMSTxvVDCcy0lHIsTwfMb21wTFVILmSlRigeYwWm4mm1vzCzq4RYynbfebddRuic9vjCJK2l8SMFG2nTohiLvFCGY84NyDJ8tw7nGyDSvmt+OD/8vV+Ly1tMAQEMSOCZrje5TZzvS4T+A8npcB8PrAgg76W5ACvQiMGCUAn9FFWkDVqOtL27nnxX1lZsD639z2TBQEg6iSGJOOX5mLWqtSZPjJl7PvNJXS8D11/i+gwfVaaQdFJBl2yvZwjQMtQwmEXnSQFcxrEzmrbEEyqp8JEPWSpa4EUXgYohb9tWGjKUCzGXNgmhOosbPloXScfHV5AvFO2KLg0GUA63+rZJqV+3Ic53yYOcUSbJ01UCteL0pcfcFK5MtzmGcZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+N9+oM+B04dvggEynQMEqd+1fBEHRNOcTnPibrsBeI84yzS2Svq4DGTzCheQjfdfyFewaOABjq+uvm+BOgvVwOUJVopdOjD52PV6XsPNPhxdjhYGcS5Q4SJb6bh1mefPs1SoSWubnwcFy1+rGkspG3dhkVZ+MrLeXiqSL7T750OVFsnBhjngmv4xEBFXnZWNFfpPfHJxTVvfx6++zE+gTKMl1r0tX7X1UU13tEak+Botu6FHb9oltMQ5kOuabicZEOjMHqEkanGbKvrRu4JPhGV1kk7KvVMDjPVwgdkHBgxB0s4abmyriyn2FfufUkd8euZeBRqrn7B2CRWCMLHc5+8slsnBG2QfCJ5DXvdGxnSOTrik0pgPOOacQMj2TevQ5WrhBMwsKHuGbu/IbEB+/XOnGCr4Cj/04jdex9tRN7CA+NyN/uRvml3Og8EABzKQZe8gTWLNxuiTpeUoaA6g3n0/brrzB58x9BksudMKeqy34pzgexrwCStJHOnT4pGZWil2z7Rlv0hHpARV90ercik+pTZV+p0ckDZSXan4nksqdPKvPNDHdgGl7/hoxVXlLEyKGypvhSWH4WY0AgY/XJsZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+f1n/Wyj7k8TzLPosNKtNcj6fiFO2FO9A/1aSNkgXXZr2QCCIhYEOSPUncOemdJC/z4s6Rve1rXg8OrHa830pUEH/rEteOcZiK1Dsvmv3sF0tbeCEZwJ1KYBzr42gy/D70NwzNCZG8See+BGMPRhrxvT5WQjMTyHKLgYBFz0XtWLytQrfc8WeKPbGYa4QfHe4FlR4bGBrk6CyQo2vJsyGpnm7uBpZNSqDeMUfpMk0yOxCqSmGT98e32W5eID0fvC/zvtGkiO8MXq/42MYLu456AwLpgF8ndUSEfxflB5oziHC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfUzT/2qw4Pb2gRMijvHUgf+agCXQnRci0TaAVpTWVW1vXOfiyXhqbGRY8i1kEVJbqlxlDad+fA1B0mjw5qIn1gh1BjIqNYO5+V3rL/wFgcfDmQp5HQhCm6Q0B1+uV0C+mOJ9OK4py4+2+6kSb42Nh9KGX7qBpmXw3l3rDqzlLhbD5r/a1D7JDQvwQYjQuSPPSy5+86WxgbdMAX+c487kr0WdkF+xWOsf3SnxwyG24dLIQ09o1SEneXnRqnO463BcIwilWvMT1wwivhmMZOXSQJNzk9xxr/7trKl6+Qo6L1WwdpBpydR7IoDEXFc/qt18WL+61zbRxOva0Fi6ev7O7WhL7J3FnfmztOaTao9Sz/M6TpO1MSHdxBeKte30XZGZV6JphxStmatmuhgrhMVwYFzAM5VgW9F51XetPji3KZ6+dTzqdfQwOeT2Ov/C4wKX6iCpVsvES3iz/pnn7CKQKxAjeF97SP34008sPLUtyZBF8Ye3FAbh3g8xTVC5TYZeRV+Xao/rK8KFcERv4mxnquqa2qXE0vMG2YtvQ/oDNdYw3jQDNw2ozFFCsbhTizuudjpSwj3hbmAA9aKXAqKxrDJih9/2EdK32fGk0+gtpU0HqOSlIINXq2MjufbnkKhzxfR/ryVABF3FTOKELVRtdYYS0pCXAhE+p02D/f9uNZlkB0D0K3k5hnINn433MYG4/E1rHPpRwc1GClo/LcrxcfgBAm0ChsSphhD+5WPJsqXbtLiM+AQCM4Hzvylc/QfnE8ALSHXE4z/i6YTt3nK7Ee3U4/jaRKt6+s1QOOu7eILoV4GEYa0CgM7mlrCWF1Iy8cxrHBLcW3DyznVqVymz92KITThJVwjPVxIV+ozRqB/3UIs7+jL7duJqvNrTTbkXPu4lys6giv6ezQvoUZ0gsuFAjFmLXczeru/sheb/YXJc8zqWH062Q64gmXMRgoi33mgASu9V4fpKmAfuikbKasGj8QhK1QrrVTGii87LyQURX1irVj35xFt7AFUaySx/5FjTqWN9hClbJjVnLJdKinj9ryeJwtI5N5aEZUFfgCxXGHtGwTj3EmWqjQX3/Huhcw7lfFhEI9b7a8I8xevH/eeeScHxU4DrNqD55gc2W9rIitNc3AGnFezio1o/BOExX4rW5LfInx2+NhfaxImVy9Fg3UVOzpad6i/EqMvq/jJRfTzjgn417dC09+oTeHnP0CzG+J9c0C/8QsQLycMjwDQAnAhlrhAhlLMzo0TqXR26+xssFD+1daREqcXaWU7l93R2arkfG1DxUnptjLIDXITNWCuwTTXP63AQpzmFwCOiNcPAQ/XC+seXkU/5LGTJkm6n0uKfMO+6CD96b6LqQrqxnvxX6ky4xbbbkkRYkQG2nvs4d6RZvjHrDNWhw0JZlmx1BhZo12tRUFPT1lA/2fDEGAOZjtFXtjljnFTIboipzKUNF/vCOm46burtzky+DzULlB0XwelkKWYow4ui2EwDNuC41OsFoCHb560A6xJ0QlSyCCYWDBGTMcTqJhBPf7KmptkGaoWcDuYnbz+Gi6g8McV5VSnUMQvMaemVk3VLPu9spVMKoKPg/qexIUmfv44w9U9pxKsA589vc3rXZkWD/mf7cR0Np3HBFDGIaWQhCE1T9LGDy8fPpH2mFYFAw5snQeKJOp9Q71BAbWJko/2cJpBnvVX5DMm0luM72TpGGA1UbLbsa1ayWD662nbEJjbPSkYUaPjZAwyOYAFhC2QCoJomhfSj72gYLxHO2MqxgVd4H5Mhbl1TKz/sBNaCrVeJmm5yUjIm3Twf8w2Q8jfIoND/s6XViO5M8CkiPqbaYM+Fma6ZrIfbPka5nnQdWsp0mivamQoWff6jCjRUaOjYljpEZkkWr2f6ndSjlpHhIuJHSrt8V0YGwAVZ18M96SB2Wi702ff7/2Gyd8v1H5t88qJnGnLADJyrRp5zBBSUhiJFjdgHvs1WkGtNwkfkOug6YuZzuV2nFfovLJ+0I4XrLP4NQK2qNE5+Z/+AyY+xPHjALGHjYCIWTra3raUfHpyeo8JiA/7Lkujs2dd/fjXE3a+FBkcpfGSFo9eOx846ez9/a3/1X6HAggke5QlITCTo7iITZvacv/iGxyRSsmw5kwqPtJLWeYHyazs1fZT9iRImlZ9o54NrLd3ZReWAF1FvJ5dVjbylSXMRmGHn+YUpkabGW/ACwxSPFfFxouuZnVFUYc5pl5jl1J0h+Im/dO5JZjWJwOx5EqMhVcZsdUJ3PptARGfLKTgfEMI/bsmO1QLIDVIBrricN8gf0z2YdmVsAEZdUZp6MP7uF86Op22iTkCsiOi06dJKXnLuETty9bVHUM6nGZCtZA4RH5N5XjBMLLIzQDIRBQpv1NJaQ0+CBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGlNgXl6M8K9QrIM7fiyFixhesUvPFA3l9z8qp4+LK+WYn63AurfvNjESuuJjm+nlNhJ4q4hm170QvgcQFDSc390MqAnNGrT4Xu76aFjbHg3gbaHUfMc/OeKLw9lxfQjQUYHnz7kuRwMyiywYSEmHFMk2xzmB+HuDrUOMXTBoi+gybgVCXbM8wu5zMAF1DsenndkTDCbMq5CzQKddwa0dAHmxnvxX6ky4xbbbkkRYkQG2nvs4d6RZvjHrDNWhw0JZlmJdI1eT2q2ZAvLIw3ePnN5qq/mQ4eZl3c0NxQ2wxd9iu+QPkUpiId6iV132k9Rf7fdB1VXo//jQAYf6HaHmJgi/s71p2R0CsTn9nCUVl+Bn1xP8pIuS+/mUMKJfaDDcqYt3ymjdFtkW3VjY8tQmNRJ5IjXmVVKiJEhVt+KchW4hm1HfSxnsJk+MPjiVRfNdNFI5WhTkmA+0BOgLu/KSQhm/SSMhWG10oyrvs+Gd5rsP8x7XCOP4iqQW08O5gkuVhJh8A2bcO0VU73GO25tSwaVFxjD2Sql142aIzh3ZH2a0s86DXxMJVpOjP2IVMzcZlNeYF7vu0dHeJYshTgrYsbZzrwjlDFT07peC5lry1PHL2qrzmKIErMddkcv4UFbJLX3wErVlk2q3+7jb8g2xlUCOxzHBxqL4jFf+U3xAwjyHQEWhnHyeKb2Qz/OZBDSh/1ReFcp8AWZ6U04id/XF61cWS4+gDNan7uVcXwGiL8UGj4ubuXHbCF9qhPHp8nD2EGlIdcVTj7Piiz9MNeL3UAIiTWLJ0xhX3mMC3lbO2/VQEsiYs/TvP3f1pTM6LBELe0ze9tP3d+pzr0YrvwqAeUdN/PVYKbYNgzGw156wdexZqwBKUdjvmULoBS7oro+Knyn3SkVa4sfMO1Und/rozvjqM2kl7d/v6bk7VwR3TSj0IgMW6KLE5LkMpQiA565B2tfx3v8YIM3i3of3fgaTr0c+QggGvbv9FUeTf+YzypLsJkZMH5QPiQAFQBCnMVpcyebbSan9HrcbgRk7EBzFG+m8Owt3ad/HpvjR0KmbgOh6sc2L1OQq8BD8zbMa5Ix6LI/uggygeWs4QgbECeJSFBkuJ5/67Lw07foYygBI73rd7TNVZDuSU6l8nXfgMXgJfcFIttmkSbC8m36qhCa2Uebp4zdbUNuA7Sn6qA/SGiYXaR5/zo37kur7am0MWWBo5AiLNuP4lNWZYlgJCrI7SoztYA9zwZgsyLE6U3eeVtI/qB3kFT6Obx3uY3/GxOVjU+8IuvQ/cjhKtdX7GcADWXpM+80sKJHUIliLlTbU2LmDIIdpc8T5sZjSlTFXg3ltdAML/ZjSUjz76sYMz3vrYQ/GFWbMitV2HsMwxpVRVvNrgb8vnNIRKbMo3EmV4Rcrx7KmptkGaoWcDuYnbz+Gi6g8McV5VSnUMQvMaemVk3VLDxiXvr0w4gNBbErk+wJqGD8wO36fS58B0PLXM0BDMg7i4Mev41OgbFOasB5pplbTpL9PbivWHw+PkQvmiWlSRBG5Emj5O0CBfI81bcT5l5kJmdZesdeHOYZ8kxJNg95F/XOxbBPlU6otVlqzzF+0vmkxGULdnMS05v8ZsAr7wZs1jiw9pp+r48/Z9bDbWru0jnDsSWPwzN1+oWx7MSO/Bc3+SB/BbkhNbQCpEiKFF7fWiXuh+WqV/aPUK9ChNrAJLsJT6d0gsNe8o+izCPEdqutGhs+R1rLCCQmVCEaqFVKxZaKxaXPGfE3EBrQ4W+qTUK3BKfCd0M/eeR6L52HdLyoffhPn6k1TkhloW8G1hlSNJzvifSJTkDtZwvPyM48tfGY1TNzavxbeS1qYaRlu/CCGcQCLM+nj8xyJG4opAUmbb4HdoIh3VL3NNZl4P5YUXAo5xcvQ/IArP+RCk3aIvbGe/FfqTLjFttuSRFiRAbae+zh3pFm+MesM1aHDQlmWp2PL/Fpl7HNwG6qaH/V674ENiYkxNH1MRt12WTuruIRp65/NHDUg6ttejZk2e9GJx/YwebRPjJRrMDS07295MdCb2sdeaoHdAaU6i+zSGHvmdYksbraefT6DADx1Tzlo6JhHtpORcwVtsg05BTG6LRpmI5JTE5l1HxYD11xkBuH5DwtziwufSgRMX7XXBSF1tN2VHiQeLweP23SlG9Fprrjjtm1x+uOZzlFxYrEGPlzEU/YpMMzxJi933366PeyOXiABYhBM7eW3nSf5Z4zzaOsMiLlL3DImdGEyPG7AfVlaDzX4fSqakhEWAIi9pb0gSKOpfAkcxb9WAtrt973h1zGLr9EsroMfghOaVffx3N3t4ayiYA2/FJ2WcFic4//KhgFp6M3H5rObRdI4nn9gDCQAWWOR6Jd0J0JSQw+sROOCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGpAo3841ozcGmqKIG4exdMmUhDKwa8nUndVne9OB4KPrAGp5JW/QUprSKa7yerjIo3slsfowM8gAPJiClLhH/tUBZuxi8LhadibAmzoBHELUgb+PlafOwDjI+sZQ3DcIt2CbWPuEvM87emU20S2ll49Z4g2ixWoG8swOlLnZaBAvZ7SNd/voMuiMMEkBWxIlBlrAGhXVyQHs3UwrHrT83NHd31edl5krzz1a+aGZ0ZZHjfv8pYwMGgttkPnfSdTWKRpQTy/Oeb7qbLweWe/Ge/Tl3Dr4kP0dKWLr9Xl4RbdUubXO7vc9++84qgqPf8jsOFsxzsh6D9hwpMGwt5BD9tjtg6bhU6QdYJmqia/Nww8J3maGjpzuU2sebvoSNaIxC4/SOFySf4OeBOb8vBvrsGnuAscI0i2D/65aBh0ktASHgOQUbFzXBZ7Kg6WchkjJ7m1pUUVxXKoWfmwWAdZ2AtGZsMrhEISQ9Af23MOUd1z2o7BAyMKlwKEXSy2lWEGhKe/yOLWCXIGSLYHPmx8jk58q04J0BonDKRiPncRHEg9qDV6zLABKCkynzOSVJjoawpwNxQax7SiiQbDDpvCVpym56zGdE9HCO1QavzABpaFh/s8y6zxvokpUTWfkM8JJoNswt56MYevd5OaSP4pkSL8MKpGZZcxNxGqQyjpEzWBZEx31GAY2IS0JHTMVJRA4NvdmtUB/jgIc0xPovRKoPSBoste+WNqK8Zf+tF33E4ZIFgsiiLAFCTcTUd4uFDMdUWbJmYi11aKscgtxxZbkIp9P/7LTy4TZciqv++9C/3fJWyzSOj/FV8LEjOQO5bE3BSkoSWmIwjaOGM2K37+AewLq9lXCGUJSxAQ3Nup16TbCegkZv867I4adGXwkiglYKvOjQ4zlQTsLIikbOoYvHEgCOhoQnzbVp8CER+ysotdi8xLkQzMHrdE3w8Q7ZdM8PWsyTGDK/5ZvfiSc6+VvtofS/gACR130wEqgf9yeRO2zHVMc1vKVSjck7PQl2d9GDy9wWeJq3hBpCJEcF8NZHngDie2ClBYzHYE02O8Gn23+WdreUVH5Z6aM2xPzrpjYkliKgT4D172N+F+7l7VFazjfwAZskeO5z3S4uCkh+N00Yzmz+HMbY7T5dba4+ff5lna8yjlMDFe+JvKDw8KRwNEXQR3QE9Y8UBPco0sAmPJmv47a20YKlKQG2D7ypmuI5nyTHsGcWbAaxTR5apyySTm3F6eU8tkGehe6WfjjdHi4DsA9dCaBQtwa2H320tFU5/Asw9esd0erDq6UMp9XG/VYfiRqH3O5/drXrtuJCNorAk9nex81e8QqQwcFlf4VNxHWV7PY61u+Bq2msZIvNxszcai4/v4n8+zad67dQB2PY9SqiNkDbc9tiagTl7Fd/QMsrsl0xSoP4eQHeryUP10LmOECAxWd7Choi1mebcPfHWijT3A1WbtnhQef7Up4u7PXMbhKV20YYtkoJjsILbLvI2ZzrjstUJvSRAQk/RnR3kAN5QqOoSdODgCL7aeHsDLBJutT8q7u5LQBT7QSIxMzQaL464/rVxWDB+Z1tBpYuMJzkbk5D9iWZDOFsFm41gAQEnVdZ9qkxXuDnTfnLwN5lNE8fdcS2zcAZykXKZ4qJWOMfB3abs9vVdGA+AxgXadDci6dz/3/n5XTgwuDVOAthuiEGYLLwYyqBw5LlRkK402Spycx29KiylTeRUKcsrEb22Zdn+IRVVO2B6wbVpnelxoWSSpv4pIB7nkKLQ5PLLBsrIYodVstX0AwVJ8TG/5GAIaNW1RvwWdOqbKNvmL1vEQ3lVpY4Z/SgqH77a9Lgjm3Su+pnfVmsuXKXoGXPeyFlk1UJKiC7xpDDAip3xBpQukC0ea07G0lq6pJ0s7NVBIP2ZtsgJAIv5oMlVnHQ4dim3kiDJ5CaZoaQEcvEmWZxVYyx/xWCtctKxms1QrYAcCbv5d8pnfzuaWIkxpaFYqFBtVrrvPndyl+juZtCNaSwp8KBvMkJAZgEfsj1gV+y3FwCiP/RdnRDohL+HdntIXm81OW5elKiQYOWC2FVbkRFncH/am3mNQ8/gI986sbZGQFRXU55LnVrIqyN1fT2qj3rsiYdLFTocFEe1tqKw+rlgmmepa0FUSDLhmqcOvWNEXJBjRK4axASXz4mKi6HXq37jIKHXYtWFeQUOL9eqng6Z5a3JWJ8nIxqp6mMVli4qggg7nSKlI9lQeCR5j3cxV5C8nxSScDPThUNpHQwPO4DbRS/mRHHU9zR3Ew141NQ0QX8Tq4RfJ6glzjbLk9BgNGvKgnMifM+OAqmYktJgEmy0Ke3i89PoBoGj0Cvsp5BqvEzH+FtcuW5wQzL3W5hzF165YfQAVB+h7LJvwSUnOCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGriglSO3v+m0WKWa4iLvKxgi2MUMaweC4I1G6GSVgjztIO9pvr26sjK+bLtpgG9uCwdAYWoQHz3tyajcdfuSTXGUwT1TCZwAse3WY2JLDYWuoJwyoVWjD8iexAmQqdzVT8Zwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+1rtU9HX/aGU42Cfaz6Jkd4CU0rbOZvt1/F2+fpeBLApLlfvF7SCA6McV6it/goduJULg7XIrmGWOl9XcP7gkymMbHk4cfhJrGuEI7VTvCQxnE78ubQWjvL6iQlFY3Gti6sy/swBhhJssglBcA7hxFSeakBg57hlGrSCVnbK4k7uxnvxX6ky4xbbbkkRYkQG2nvs4d6RZvjHrDNWhw0JZlumjHSS1N+FBsMbraON3BXo+rub+fUbS+V7xwzjFskE8Zqgs5+UBFcakGSKLlbyup6ElBLdLiqNAQDNSGz7bO67luEsEItLCPMgK1IycBVfQycTw3dEjILo6IjMf6Rto9+iYR7aTkXMFbbINOQUxui0aZiOSUxOZdR8WA9dcZAbhrGociXzngScMIBBdrpawSvuJjTV/eA56wte8J2ujoGFQnSkCLYi0yOYoelyRW4z0EUgCnI+Uo4yt8FCBg+7if8R5Hva3jg2sBQUnYZMABjPCCdlWQYROg+Dqczh/zxZjNTQdsDzVVzu0dJAjj3ZCa8wBS6YzXmAm9L/f9ne4sjLuf+BiuCGgQmJJtHB3bBMEG2XDnJ8GmH1RwMoOPi5ffwMIU4gm+p53tEZfI5gMq+Wk7TFNHvCFah55KaaYMv3w83VKKmvM9QS5zx4yZmUtJBWuk5VAT3++4VgU78aI+VHiEvqoltMsc+PCmygkWmvRbS3UtWzPAKmRPNp2v4e3n97A437fQwG6aVIzBvVcJPzv2Rn+pCTq7aa1GLW7vAWKKuyUgYy9s0RjhEaMUU5Y9z2IusL6sy+9sAdNp5YPajnllrxW7pj8/R2PVnTudL48+476qwA4oxeuEm1d8ENpoViCJexqXIzkiku3zyiEyifIxuAymDQkGFkbxcnuplR1X8k02yYOydfVb6EMy+JkVGqiL/6Mo/i3s+csKoRnbjiAISTJjicoIWQyleUaXj5WgOXp2laWrMfcu2rH+lrlVfD8G0m3uoef4HmgbtENx8dGZ5l9b5c88wQ7ywOrB/LvUsDBXM/U/abLMYDDje7jDjb5+a0C5px1MTQZKXXuRZoNSttpTGTZ7db0NdTqataJ918WCLmpu8NWT+NYQDg7wlVHJWOCduHjeVQpwI+taCQpesBCy1QdErKVn6oW/QlLKwokg4apJlxQ4bBIbBIfyk1AzaPpP9Q50iVW4faTwuaHnGvtSRuc3ga8DHu6Fz0Amqk50iSuQ0eVEdm9RQVDNQjiSn1sSW6yXM597Bk7yixjJ7zoGbXtgcooSm+KRsefP0/e6+FpmidhiUb1s3/O3Jl9sSNzvYN0KLahh7ht0V7Rnb/PCZZ+VHU7T+yHW1RReXLit9kKN9e24zZKznu6POhVFPYSr+jmM3/jCQr975ua3mCg7dBmbQ+YoiYiGduIMHcM9QRpCcKbAKy5nGWDxSK1boWy1sSSgpag6uLt6SyCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGtlJNC/ae+oZWOBm1F9+fmlm2iIKuPknAjAjML5Q/3KOqW0WSwHVJV09SDmmd7amh80K/07T/u2woumdWKoqKJmrvSgwQUlDGIW4jXxnimd4xPPgknC0wflfH5DKPl6ATqBEQ6BYlTL7e+XwZrCEPkCN9yR8o2FjRORPsnzVF774nTxRSGciT9+qxAKnhrhNpGfgrt1eBipiLVeVJYnEA4PkjM19gZZEIIaPkvBvctS7pQzLLK8owRa8vBqdzG2zO0VtH3M8j8z0RexesBqBoDTgSdSG93u4cgZZ9mZygmnL24c35C0DJ7zhwk/TVgS8hIZ6mHVkXIaAzYfLWyoWITN2dcPGEoOhkO4mXnYzjQux/dQkizfQzotnZ1FXcV+yFXkz8jPX5epFvaNg2cpYDd+Vlcc/oH6Bv6oNwiQYuwhBtnOCNhPXo82xvHutfWPxuQP84kaP6b/ENSr+9RYBbj8lbj6RxybpEotrS00T0huGXNBdzb7XZRng2KQ6Y4pSk7YX120N9H0zZmLX8v07MjnICYwGB84z5IXzg/Z4SSXveIa0XATX+xeu2oYQ4+GU1LuMQRWO8Sih1X7aikS6PeIJhBUCHd6b0slmdm8st8Skqvi7tr9U0/QlBoO+rJOHjUNPv4DZIM4LAi9qofyE2p05uhtHNwUBtzoCtJqNwnU4E/nvJatHtlhBb9vc9o0m/pPTNTy8wF2VwDRgwDAAvD9+EITzf41t849Ei+ChFWV00axzxFdISdxGZWt9jmrdgyb0nWFm2B7nF5olhK0nbSUpmqgGNyP0affxm4+Ao0cXow25xnR77OzDcn+GQSJdDzdGLlg0u1s1fa0U5SdVZ0/8rFSi+L7G8TiCSRNtPewHgqhZf8YahrY/ArLsb4XBYMlCXfyC656uKRjToBzPU+iN6kh4FCeJFeqrM5DcmveSrU/XnjU3HpGUfALjY83mMpmbQssAIuUOvyYIbP+1JoJW2YCQ5Yd2DWQ8UTjXzUJQb3nWVFLdA+85cRQpBm30pdnn5P3D0vU3fg6Znh7Ar9hvuOQGgOs/38NtCBPDw8x9vqYfEDnJ+IOtVjR9DZZxex6cLATaOLI8UL/4+uzxy6dnkHWNLtwkWTAri3UcDXQTaIds3ciJKjQH7C/kVo76CktEY9DIBQiVJN5j4rXEVsEZoyVVZuZJ6TJA9eOZTxgX9HsuRhzQjh5N7jboeWGbkCIqd7yMetOVvqQfr75jgSvzIwHWA32krTCIdWWN2lvn19qR2XQc2OitgTRv/e2yk6cqzCejdMKljKckZbBmYg4/BW4DdoPvHEypQ93L0TppbfAwbbb9Y57LusHLPZllzvuSLs8Kyo6fqRc60tNpqIlqkDHB8ar0ptrvu+ZEVsgh2XWzqF2avn267mEUwFdyycLpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9OjXUNWmaCiNq5LtYq0XqRX2O1FA+4zfFgxl3AWc7C2v7BYkoL4xGr6hE+WEJ0AVtimtI2KT2XVPfUamjnXoenuQ0ZtuBLEEhkjZB9KyF5QMb7bBwIWnmFBD37HrPOW7OWU5dRY1vPIbPFURYqZtEoYuutBE7ZaFkrrM6QbaEvzjlzB3MnwZBZqCjMivOtrWTG3cBphvDUCKTZ6J/YW3AiQhUDZ/nkX0qNF8i4jxGZCEQUl5Pfh0Y5WQ1JEa8QqE6PIlqEPxWJEij9m+hmQSZ1Vnba4NHGmBomUYMc4IuEEVpI7cWIeDLymmcN2SmR5gZzs7MIIIwm7k2Ooyt5s2ccsJyGmVv0rkSKag877f+Q/34CbiSjiTx59TvQB9/AJnIWKuK4LgRTrP2DO8j56WMRFJiDLJHGFzbLYZ+E+PaqgWu6nJzvyEi2kFofQL/n/dB3HxDU2a16aphEE3sEPXvjP5NBX7TXLt0SN7r9B7sXC54DI75/o4d0aG1GUoG69EvewLozvxh8pC3YLXeWFLQMod+WLFlYzOCFLC6ODc8FiBPLY905ASB16EDKvroR+AOzo+flY1t4KyYspHSNnaKa1Y28Boog2JgsCTUlzDFLiQoa3Pk6xQRlJaSQDWp91cjXYxUljyns4IIBCxFb+HmFjVos9JC+vJn8NeaNp7PAIVoqm9nW5jsEJx4qB3DA0Z9cBlp7pTPLoVGPXEStS7iJroz4YpssLy0o/W+uQt216H7hpUhEm01jm9Kudywjg2oNPMWF5bwFdRsTVHijE1ROloGdnaUAbC57Urvtmwe29S8e6ywdGjRM0PrRCClJthu2yFBKm3djiF069iEoClQNCXAHZKQCELuib8fzheBlvMmqHfYU5XcQ9s0e6M12HD3d4/BjAfo1Bx0ZDQK9kcE+4Ecr/CYqph7+fkWNSvvwY9y/Ez84qtHTB0BPmjcgJuwIxKMfEj8PAqncwwLEw971hXptvrmpdUmxHpYgLdGgMix6hncozrOMNgZBzdouuhknBZq3m5etZqipoqidbqy2YWXhicjtcihOGsVDQOXRhDAuwq45zUTCaZCDE+wyJnyh/C6mD7bdsumzQ9AaZoEdx2Hn0aUFKjlbbXgLbp1nRvCP6I7vFOkJj9EZTqJXh4+xp2FcE9ZfWs05PFWv4X6B+tBGuZYD9e+nIl0v9CGM6WQDx1ATGG343xBcBIibcsxXUNJPKc+ZLao1GmF/PCFQhdifHTBvlOE8cq4KlYbEIuSGREjDYxMm0uIG9HForYIjwTYauTcEx+D1HdN+D3/5n6i5MIDB7IfSUK4Nhsk2Pbd+syENtzQ+C2tSRBs7PPR4cXGDyNM5dKjvBCr82EI2E6Sp40BaaGNxp6pAG7enzXMX2GJ54wJxpXiCP69UKjBh5YZ1Fhk0dfyLZ9mN7kOR9RBXCdbKjOle3DFLWIAiK+47K+ywRNJQ1NwCuDcWTMoV1vXaGG29bXYYRSFoKyW2F+cA5uLXl9TVbHzyzV8GechxgUv0Il6lSNfZDzIUN3zNVxJe+oCUB2LLws3wmFU1y4YroQYrG60qtvY+BQAsSUW2nE9ysu0cJM2C7AWdu2JdyzY0eFEhjJR2LhL+z99UiRWkiKtTinLt554UVefeX9cIis3e00VS0qWga4aCgnND3BUblEiHKyXGiVHGFy8CjYcCb4XIUcvoxIcESeRwWUKaqZ7c0NgMSCHMG0kOUHsoKgVJHUE0E15/Synw0QGG01YiDjNWucjNMTaIMT7d9XYwhSQ6iIb4g6qtE+oZSPuTjTXhblX7CxX0zjjWwOe4o59l3iEkAqbr1zvbNheLWU/VpcKf2w5ZLpO1gIJW1WB4aD4GghTB3d7k3lwlqlkf/+MsJtJzVdsXMo9YTrBrBqh8i1AqZo3mtAcA1IZgbuN7PVSUKUZkNvK+dhQCdtEukKZsect/rUCBEdPoK1JcD1yQn6FsIvBGr4kAMtM/JlIpD062UyaMzmgG1F1vlP5ysuE5W6WivvUHljzmFW+xVGYOMrGmDMxoRvc+NxByo7HHM2Pv01XJ10jPt/3aSDo9UBBvHgEdxKgBHkbtoeH/6ULT2mwrBkif2C/NPolthTdAAYt5PlYglUg2k69LxfHTy5207+zd6AEDYqt3PCcgXLYL54wmJHHa2z7nuBbVbH0yy4Ch/dZIC9Z7MLCWBCAYSX/wZ5XJf/I5zrzvMXU5Hop37ZeozzTg0ErU9PatEhGdknTQGVFiiPL7y1mMuWs+M8qo6Bnqv3NdMLlm62y+KVmBBti2SM33aHOoypnsBDUxFAip2RC58lWa8ZXMv5knzHejuX9k7nhAznuWhGKzEaULzCFV02G26BFCwgjTOhfuXMXiJqJcTgB17Iigr+NorzEkynl+QmcAHiCeHGTvdY0m/+90wX6dalZ41uoTHC7b/291ufYkhwHpJMW2jLNjU47Ln4nVS3Ku1iiS/BOg/LAuwq45zUTCaZCDE+wyJnyh/C6mD7bdsumzQ9AaZoEdzV0ShoScQlf5L1QqxVz5foQVSuZZgMphn0r8FY7UbNlig7VK0ipVq9Tb5vidZyjJKeyuktVW9gJUnNa15I1kQsygGpBycnCnVULR4lwB3Z4igiFZgbL+GaJDvfvBstXnC874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbAIvlWfyQCIF8xQPDviAVwBK+hKVGHLpHn1+2Ein0qV9VxQ2Wu5WS3IVVhkgcfsbCEFaFosptduWx0lKjMR2el8d3AW8lMrEV5oS67lpsQ7ZoEkuMe5srXnyqe7kRRXXK6x9b6F0fu5c1iwduHtSEgFnM5RSxbchLum5nAnK2vxPC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfaQEZoD6kQ9/NO5+Nu5uS63fosX3PRag4P4gagtuJibHt1Z/RhXxeTPJiGc4sIQ+H0G0qFLMBRO+yDU47XeOYICP6FB7odrwrJdFDMkJ/QRWNiu9rZ31GbU/aZqzDupYBPPMO0OfJfv/80ahJSH17H2hlojbgtiCkNs2hbefJrVoljbDLNoFprUvTvb+Ne/KiG+s3AAs5xhEjv9Gw/1W22MlkqOj+SguKajzdlDUDhYcw0ZiqitldUSXuZp5dQwsN81KQ71y714y5cJFdyHq9/Q20PnKnNcKeLkZ+twZczhnVVj9uvGs1lx238lfNR52rRxS6EkMjZl8lpPd41jnbR9YJ8OIJBJ2tfLerx9l7Qjbm23jIKhWD+tDIGkyaMHrDEX8ggK4aVqmY5gJBZCNj/8AOeque7EYqbroEIKtJ1bHpVtlvdI253WmL+h4coko4PnqRJDv8fxSQBXfHRnWjjf7VgWJtt9HYXlQKTLYDgKSNbqB6hhecKnilqu06wAhf7xCMACFo/WtLVwy8JlADN6ELhK/uBiK53JJ9hARJ/b3yWPwZJYyIMVYycYEl/MupK1Ni1YZoqvpTTMV64G+QvcR2UNET9iVq3DGD0wM2OaK+HXaGVOGtWHqiSy9yk32tjCvDOILJOhg5mVZamBO+90DT9fpo90rpqs4bk6YSAjfVtg0yighBjy4A2Z13im0P/OYJUtOYH6gZZbevQ/snkIOUb9LPyUdCmV9O600GJyKqQpMesPEEsSXNFDugnKSJz3E59ionVVhW0bHiB8zLlwfeCent1lgvuMb6az7a1UGFNIucEezrmJnHybOIMXLWVamGsB30PNhj+cR76pDhWfMRYNFn5lauwSS8ogRW54zx1tTwSe7l/rPUlew4k+5/UJ+u/Yci8h1e8YC15DlSw83ctU3BEhh5F0uSp4J03FAMIaGt68zANnIK7N1vX3pe625amY1Bi1wOT6wRg+T/OPVu2eY+I6LAwrjf1BGfhfvSy12o7Ro/nV/5qJycu6cFCTKQeg09nJzR2XPi+QZqXYRswBXrm5w5XZmEId00b8bKY1DZ2mmcut5glLhnPyMNaEw5bhlafKtYw2wqTbTuwbGcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfuiwKrAN4/N92gX2cYmelV7b1w5w8oz5FcCYhx3FRNUkTwH2bzzg0WzufrlIRWeYMPZGa+yExc5oQuBPls4fghN1FA8koqP5TNOlSfxfTkELAnLNnemFARNF6p74WLWSk6H/wELfvnlDl05Wu+MOHA1mebzApOsu4BvP4Jk+wdNDEGe12jZKK48MZfhAIrgP0+Dhi6GOZqMRxW1kjiUw7xAe+7NDatxZzOBwEvGi2D7iet6O1uUozogRTXXhzCTUwcxrPLOinRYZqwoMPXTRzZst8qhVvDAvz29YYV6Ik880ysTe6DLXfH7z5HO+mGZsq91kd+GbEp4aoINNuZpuB+nYpbApvOgbbkBJxvkUoIjKWoVgu9ruKgq3Gl6xtcDTR0/T5EQEfSM1PNEy/asGUKcUmEjXKAzlp0WBpelc65jeVZ3YNKDnvUlZUfa6PotYQIkkflZAiBmFzmDXMV5w+BOQxGojG/ANw11EbS00MLYqHlKX/WxziUhQGeRklynomBzdFO8YBABZKNVrzh12za1CbfTRdmkmZ5/IZ/T4nbtn6yenZmsOkvoUUdjGAQWiTLUOHNAd8rnGQDl8oy07p7TFnifnoYNC4GjQzyMLjXs6tQb40/TwrF5jQTuANFoW9/nswf5vT8ciRxJ8UCxJVd1A1Wep5ihXHfQAeK72rjjQvk48cDMxChkmhOBXQDs+LJExPrKtqLYFeZdRlByLif9a+B4969+da09WWYLs20JPisHogmAHOMR328hnV2ZRepwFLC6dMTTb5srGyM5y7Cdy4aM/RRtVgYgUU2QHowW5IsolljILkXGMOZA7KhglYs933FYMUTlOXeDszN1z8MZkHOqEG6EZ2IHxaW9EWiIV7+yzG2R9wAS5b3VoT4A8XGrTJBkaeRE5UehSVmFYacpFLJJapJXCVCqnFSfM5GMRtdC6JmRa8KlLA5EdwtFUydweFJr8FmhAo06vMgUP9YBdTVxeCaF3O1VgMoV/VLePpnj0Hp4OykrNpMAeAJ/6kwn6B87rXEWtgePnMgscoXvou/uEb/b9MQJoUzXs0IY5+S9bfAAHMi+dnaQ6tfxsiHeZBMVm/q6fFYUg0qsy7zGmGqojK4pK/icvH96oz84KTGooBD8020w/riFdnXZlBd55ivFY+53sozBzQOuQCq5qAip8fwvk9XjjXA+CWzL05khUaZEN/YbLbaYvj5kMc2Tp/EWhMYslVB3LacgBZbk4XqlapJP7tOLPrc7xuqpjzcI+A5xM55BMw9kTIGOs8gI3t42jEOG4+oA3wkYBqL9M1WypGuTlsQGY1jARmwklwe7E5VnIdfGuDN2eagfyEgAsLWS/rlT6MRPAg/loN7xFO6qrD2RVwXYxbIHieiPU6Ju3hQm23Uh6D5fU70K3a8IqC7/l1epKk89jtOIn968zAhsgPb3Stc6/C0iPMjgAUpoOydlB+c0rBGqAImRZ4VbJS00cdVUuZJYbL8Hz4U9bX3+51XsyCdJo4jxyS3wi105YGu03HR+4R+MzwXSf1lE7ie7FXZTAshdh0vK1MTdn9Mq4maZBixVFc3kR1KXnwLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHezrCo+N3MhaomGHHFojznsysFgkKfJXQuLDqEHtp1wU6xwuex3015bxVB72CxLZb5HRYBGH8PAMTEEP3ihPZCIeGASy2xanZ1i2cXYD5YPeVBmO6/Rv16cGJvXyIQXC32FBqWKDl/696jMbwLGzf9/9dZvS6dvJ/QW+DGd5TCiMxnXiflnvoxWmG0zl0LgX2bMmK161aV4NJnI6rSUfxkWyzXY2zZZXv1UJ6Ld/1vAmCcqSCLRMtc1MDz46ZarsCo4tvz/ZUqIVD0NIP2t+1zgj2h5UWyNSvhRV4kPV7eKeqsP7of4T6rRG/+1CC4xVBTdu3SDJtGPo986JwvNCt+EggbjIJ89UQSBy8e3cd6mPXqx/0vwhrnyM7sTmRkcIxpYabIS0B+ccPseXZ+ojdXXBTRDi9pw3+3Iz2Suauyh5NmF7DlyTEtVRZMBhoUuFQ+5ujHVJw13ffxjpehgjG4TSj3ZX9/GAdPRJq4mZyvwwRCkFR+hJVlvQEmp2IyW3VmVIQULZKmGxDfjTEXtvqUicgwSXy6aaoIp4rN3/Tp21Fa/jSkN2eUoJX/21jnJDKrrpLKM11GkCrBaj3TfgUSOFhvIoUvw8gSomvwXbAe6l8t61HHOPpnjhflHlBdad8qu2r/cM7tmJLDWz4add8rNUMDHKlnYf1ZG/SOVMCQy/UJtcod/UTQ1xYVosWfoI7nB52LI6Kw9vDbJVjEizaldW7mKzq+VoTCFzGVkc36I1YV9Nqj+MKWY6SoZEcUSTn5RXMRHQvVVTphzvYstTGjXYXsNRru+DRmiE0ZqTkc1JU1hlkSWRMHMhmgRZTEfoWEztNiKhCe0+P2QR6FeKTZ3AerKaGbJEo2vH66G4yN/De+95Knaz03mUpttYaSPZ2Lr3pjwUbty7hferCTXyAI0IiVuTvslFztJL0XIKw6eLKRq5xA53/x0oi/npZYkh++Yd5r+yF0U+P1yIt3LwUXfIarDASlafzZ53oVaihID30lLkfkR4N6IR3FxH2ptGw2JXds0mPFCB1lWaS0PPApcn240QGSy3A4q3glsdeNqg9oOXZ6HIX+oC6pCB7xqZu9GBhQIyxW6L7MDxHaOW4b+5ZbwW5ghlGy8QzK4iPV2/R2j/mReOBe6gYVD6UdrcphOCPA4Xv4+Ch9onBwtl45oAV/Uy3iCQuqYGbNxm8B/RFbr5uMCzwcCA/sF/raDO4s9aIkdCAY4lO8g1/5Lt9k303nv1CViYSnljIM0+asNrkGxttug4qLj9r8SlcIz9RFmNuOp/F1SI+TEGHu+1hul6dSGpUCrlVv67wvLY9mC5WdvotuUyI9W4RVhM1tHhOsmkheNkfLQjqnPTk+Mtc6dfzM7r9f+zi/hFs3/WnRGghgsbFN07Drbsvt74I/y+8ajZuy/HAvnxwNNiLO5YMtLE906yxkxBjqOEPODo2A8jjkC0h6gSvkklsTKxNBz9iCHzSKPAcqf4lMv+tJF944aaN+g0AVKIE+MxkHVHbqEvwZdpNyGivqjfEtb/97+X+F2SlEgYmGp4EaKH5RD2r+2bqpZwj9YV4j739VG+NPxDRGTdoYZAh19i7/fbfqdXcj6xZQoXADHEW//Q1sAD3iN7usu5jYC0aVjaJ8aomT2Z/DkmiPrH3n3ZRQJ/ti7+5X7q0O9bZgWoFbZIh2bqmK15t/pBM3HL60S9wP4s8ZmF1lZcgdJiiWB3fD/WnAwj7awWP2UPqzm6b8/hyKfDUpMQDxu2riq9X7CnCp/LYqXqRj2Iixw+dsLBaLY35WpqwVRzGjX4GB++pj2hb0ZWSQe+uuFK83DhAztJ5ZDOT/wBbt3DD938UgUsQrUXehLKtAl6axpF7wd8XUVE/0Hz/JSeJrmn6wz4kQfhM1C8zmZCisl2pLNQiS1nWT6b6hEAVk79Yus6fypsX0S249ZqvrDTBmnyS3DnPRxuI3kCDtuxNhuKZ0trG4+YqOvhl9X5HNNdmp8kVyF8vOBCpOLq/9EIwplAjsyhGf9ZpwFeSspT6aDHjupL6rGLC0LY/CjaSSZBPSZD3ku1HABMhpQnLj0Qbjv7QSJtBqmjY7+4lXmV1pD3Pm7oraflcCNLZtpJUsL5y97zAVSJ3ItfGQ0IuJkaZ53ltZVs4BUfusuo1Yt4z5A3sAL9GXUDDL81+MvR7o+/+vjIslNacZ5D/0vXeMMCHruaeCX3OYMZD7FD2RCEmTbL99S+HxrplyBZ+O6SSGxJUG9twlwkRJ2LDilxvA1siegz/lgHzIZaThqKAdqEQd56uZeNpftcZGj3M4SV9Pv9k7yh25ZzirubfTiUrflF2dHSCxZare4RUowyuI0xPH6KDvIAJZM5JejvZsDjZIUYcLZN43rWzU+HJUE9sR8bbtlEyEMTMwBDULPKipxpkRb7KECfSv3SaOFByz5dfMSUWl5I2UjkUijkan8IuiwKeg9knGurP778qxRmoRENsLpdz6pGtcdZZmYJTlwraelM0PKzc4HfjkbF0V6KGl9kj5qdhLgqIZvz5cnHnBMNMVI7Z0iJ5wiDeqQGPEvzCsEByzDZtIJINDiSog5QBuKViRCZLpTGBLw05vJhHCVINDzZuOvT5NZ5sKJ8nZKggf7AyZuAL2FGTLlhODHQC1ofb7GeBhPAoUJWx46aM8/ySybEAdnRUleBsLaJCazX0P4zNecqxNi/U5JuXKNMgHOeeAFlV/4gPY8LfwRtr4o34kGuIHDWnEPYzYMPQC5ufsnVvwYlNzrdBbPoOi7W6GDy4JcJcZuhXgkq4cuUjXg6VILWls/VfFlXJqlci5iPw/EJmaMKaELLut1Gu1iyQU1Q5zYxosU98FF4Yz7oRekI2pSzG46tUapY9NVJzJcMuyxfvNLlqgX4l30Wkq7VIIRgSg3XT3l08uvWgI/oXPs1/1CsNUuG/AYks6be1AF3KH3PrpoJjLRswRMa/BEtSrH4IbnjEzwaGg7oBsXqc9LF0W1HScS3cFaTDrW/nUWJ94+g4hSqZGgNgt/MXTs+a9GIEvPm0hGtAnj4vbyrZko+z9kJQfSApaqEweLYzlt/6VhMCQAq3TgVx9fIKuC4U/o4hdl0Iz7KQW+DQb9eGfBDgfrvbL1dK7jZgUzXqXvPEHRCAGGrMBZ28xoHHF2/LjcTJD1YPFTiNNskEOCKkf94yNgazIKEojDlLe4IFo87GfIX+4cWm+FalC9PUTzKYkTeHQi7F8Yx+uoHryju5juNbl3wi6MmvAMZ5S5HCWJJBTy1SxZwSP7o8fum245zjsTe6CmZoVRkV6C9jRVoppG1NplUDx4eHguKZhZZeIPxf3IfStSFIrKhNTm6UqONpbR2hv9IdOdsC5Sp2y0rnOhXOLx7Ax6WNnRlc3W/dh5hoAdk+0Bno5yttbS6Nt5+moptz7Qgk+H0PUF2Z4QDuM34t64jbMbNeXpFQKflOQz4FecJ02X2BvQuoc1dqiTkf0fK0rkFyU+8PX9GXZleDepYqHivCqG6fQSbxi78eM7DKtOZpW/+CutIQWDWpS+4mgvatUXv78fXbceWWhjnmcv5jgydq7zAQqsxm1xGi98WYkg2aQuc5gc+1/IcQV7mVR90seMtyn4pX2p7wSfJkl+2OiYR7aTkXMFbbINOQUxui0aZiOSUxOZdR8WA9dcZAbhct97XZKo/Cnu+nkqgmsYuZurMkDTuJ0YalaW6XsGcqn7i9PnXP5TMvmOGXm0JB+56jygkSQo6f9/o3f1nlpvvvqojZthlXxYbWxVsghhQJUYJu1g9W4VM6qUj13jxl8CLzvibFXlxEbpUliYp4ke6v+xftiLVE+0+IflXwQ1GdukgmXP9U5IAnjGxIMv8bfL5MgYaXSzF8oVje44K40TP7pvdXc55gHIhCnQzTCoogALobdG3gEnQpCOqrGTOlGww5MyjGUuT0z+/PMPSY424RsfIkrNhXAN5bbgcTqvG0bomEe2k5FzBW2yDTkFMbotGmYjklMTmXUfFgPXXGQG4UGE8FsANC7EjyA7+SCbQv57ZiF12H9h/B9ZlqMgbeU3uNrOFVdhuT0HA7n+BQ/5ByQQbJVkQgryRbrpBh8+Gm2xDAkYBQQ0pW1uJ5WPmFuiWYLNxogjvhHi9/5cLaFgCcMeEccwP/ySJ3/yq5f4lmIq+NiE/5U9STx1nS4xGteb8HOO1GpN1Q6HrP/IC3gwTmDC6NPb/Xk6qS3PlSEkhHV960EN3ufxKOVH1SN1flTCDW6ccs+eyoe4fmAkLty0YaQEqkJUUGYLl4M92uCA0nUVlOfUF/UuDHkLA72qgPI6ECvTul8CXENHM4MTOLoKljWSfZ3rzg4eMjm3ZOLTpU7KhMB5s+goZVn6Ui02Ffw7zXjp34AGAISQ6jEz9hhP1XxL3jHBCLblhoXTjhivBtPEqP+tMUgFCFkZ8YwBD4wBqso0Pi2NcOFPXuhIIT1ZQegyDakpaLaMTt5Y2lRmpvhf+NML5A+0Jen8LnRgxiGrvo3LUY5R/xdByKjvzIVKIEeginlb0m7HE7K7k1u4oqKk2Y5XX0SvNDN3W8kWVoZVoiAg0d4WMc9n6tPCNXNH/7AMxw/kgh+ZH4Wdrycrs2e2ZEiRlpVqJIGGQRchABBWjo0HeV9vrqm6eSUIHNA46bGten3XPr6WqTPnj3nxowW238sA9r+EyyasERLHKtEfEXIbyQLnFXmDvNePfazHPz+Rlb+fUAbLwCv3HbeYg40uqn2oL7dqdAX07etiZ5YSDPjCQftMniUcSXM01yAO7vl/YqdXw8y1K8wttjp/j/NIXu6GoKCWDnBTd0WTlgN5icXNOS5GqcmxKegyOdR8XSyVxr7RwyVoVLVVpB49OsKqIYEwX0ZEMgi0F1BtajmDpNdSzu6rXnnkgf4PFR7G3xFjYLJV6RGyNwKFqea+KQFhCVYAegVpuZfh8741VNJbho/4IelVv2p/u/uOKRAkb8UlmkRPXn0YLfAmPqp3+1yJxc05LkapybEp6DI51HxdLJXGvtHDJWhUtVWkHj06wpHm0z0MsOtg2Gsws7H9FRzama31zd4v2ZRHdeEFZ4txd8+pSckf3kyzmU7In4bXqhBejyYwI4XHuuJD51qUOQUM5N6jG/BRcFiEVcCk4XqsdOQr6HnTpTmKogkza2Z2SZlA3Eu62KEr5QvyYZqWM1n6xzLo0rqSuc6ReneH7J3aEqJk7TS7BbAaNgTViknVRv7iWqn5OIbMOpYIKZzKn02TubapWcbH+G3aRy1in8GRNzwkT4uxSSZDq0V6mwNSuMmv5vxgCTrP78HaIuZ++ci/qeLJ4Bq8LfQq8ptjsk6xxnCXbWG4OMx9yc1BTaqusB+37sxshB8jvNuXYbQWFn4McRbPbtW2WjSwVopDCE6EKUdnfCG8u5bLpZp2Y70oCqjfWXvqcuU28qUSvS33eO+rx9WFSPereZYRbtP3IOF0AV9STX+tsmdsYlx9e53M6FiOkdUDL/6rATGUA/UVNpbomEe2k5FzBW2yDTkFMbotGmYjklMTmXUfFgPXXGQG4cb3aWya3t4xC+knekO+iaDQPvPKZ6MrXn9MDvvF/ChcSoq9+R0211wth60k1IP4pNyVA6xhAPuoBpaTnIB2O5esvOgqxy9kfPwb0XROtRoowxsvRFS4wjI5KCrak6QqVy5lljM4udzBpJf9F3cmYAAVmN5UZmJjUEQEtN3bruexy6SOrH7RvNehoahNLijSISS4ox5N4qXylmS2eDbAPu5ZYxA/PeOo5Fq3u+i53ys2zRS7o0pBZUX2o5Gh/792Kva3CiqQBZtk+qsKZtSlaYershgbMhhUQ8DZNqs38tDzE2GmJDbBZ0a6SNgwc8E+NOi4ItIE2ww3hZ5T9B9dAnLd2vlEShAygWGoYbxxyqOPrRVd9nKs1Ghe4f/2REvDPlboB3gaSZ1xfEasE4/eWPL96SJBrlWazTQZut/rwl43t1lrTv9JLUyelh9xBhUSSEcXhYFfNIvrrbQyZiFQz63Auwq45zUTCaZCDE+wyJnyh/C6mD7bdsumzQ9AaZoEd2KJhY7/wT/xejmtYfbGKq/uzH3XtPybXptyl/vBQ5akbKow1lVlmOv5JoC3Qr+6Oc80ygKyXAb7w6np5hlctUelNbIrKlMxMZ0jPyHlNIeKuvxehwWFA7BbDFOKJqponJl5ZUU7qloy9+/EDi2eLs1mNJ96XhW4FUO1q8huN1t8SdTnDAyWlPi1x23hUAe7Za2SaNwwKtKrO1AELWVD10PmPf7RM1EJP+k5NxhIvIESl6G4Z99g4vQaYh3jnYiFVjlTj+YaP6z/cX6JUzDL3U3ja6Wpq66/DyXZlCMF2WflpNdlnhYWsZdmzvXNOW3XpicAT51S+6uYnuaxzhbQLofMD+FdWkXU3KlKn8bwaHeb0+FfS4AwK7/K81gefdhN9VHLIn2/1vT/PBzzFrUCCDQTrSDufJYKG0hku+EFtxmzn0Ybd2H/WoOAw6J/wmTgOjrj1tp8UO3M6T4ThTv6a2WJUvIO/kTm5CF6NOdu4sqC5rE7OrYnph7KVkdlKzGPSfy8BFqgjkrdw+A65+ytTu6N0rzX9rQ9ts/7w2Dk3kixjAFyHho6ys0nqiOeDNL3U0g81TVJm/V6tC0PBROR2ANKKyMC8Sor23bVcZHDq4WfSzdfBor3DIEAd43GdtjpszqiAmLX1KHO5EHrTNWrsmnbDkvcyYIJwCqyO7H8yyjIW9isE44qUTB/90/ogPadkbYjSbyIrjcBm/KclagfIn0bZt1k2BOi7wfQvC970e6eMyxCJTHDhjzWeDYwxRVBWgV3Rc3sqBfG0xzjCcTna3HA6oD74MerW4YnPaz/lwwYCwGgJHfM/9CKWxBdA6ULzSlQgm8+Aq/W4sMy7l19gceWNsMs2gWmtS9O9v4178qIb6zcACznGESO/0bD/VbbY9Sd76bZusS2cnQ1+6w85mHUUll/62QLbQrwHC9ZcirNZPOfFcpuK5D67SYl1Qr/qi75guzCLvTnyoqfQLYSPLcx/CUXf58EmvI9vYrmnpkT0oo3yurk+0TuayLF99fd2vg6zluuIaPc9CxaPptG5Kv9vrh1cUNi/RyFr0q92Tp1jL1zkjKpvbfTQXQQXANjGaGRITL0L0deuhwJM5RNqlHzoyrW656On7/tQkpVlZlcPK9UgFB8AgY29F61YDVJGuCChtxPSHNNzvkp+vV6STDYZmQi5QF1nC/QQmi6Vb1u4xugHPVBjPFyTrjIJWnU1JAcyd6EAb+64YEj3260moilTXnrx5WhpRdov3lf4R+gJ9D5hYe01gECgEMRTiZKV2fFJN4xUtTwr0clU8tODdHHwjlES6SrgX0OB+D/r6SCwcyoUnWwdgl0gUH4720D/Pdc/OL5HEL6HNk1uwChlVHDFmcf5lVUIeQWd4hz6Dcn960RId3Ml1enMqWPjXsASUibXtTO/P+aMkJ1IhY/4bsy+ZoJzsLS/bH7rE1OdWD1wul3Pqka1x1lmZglOXCtp6UzQ8rNzgd+ORsXRXooaX0PK3x7jGwqd0tGFCVPLA6xPnXvnLwWCOuMeucID4B3ZmASEuntRH6mig0EN8T/oNsyLFHAEFLnFIKxLgKbfTjFyKhgpr2Oi9LzezkdyXJQhaOAsdPbMQs2Asf9yIG9HNaEDbJIshuWMyNH+arebm9Ebgd3/kSjPohN5fV9lqMhsIygiw4R2uWxxf1zLo+d8Y0tmLOgZw0LgtMIYUJoVAdCHcZsr+4ZJuz2jAoAHRTLKpsID0smWqyHGW7JEtRutunJ/37zkxjErhtHDV8e0+hlNSygT492xhpGB4mhVfr3pXAKV2UUbsR7xI321k/W9aw3s2ZUiRH8teJcLVhV7r9ErjnskC9Tw+dfVDKVRPXvXGZVnK5aY/FbEnL/n5pQk6bI6PQYfSBq/5sFBIe24861SJu3Zy3GVFXiayzu/nn7zOJ9OK4py4+2+6kSb42Nh9KGX7qBpmXw3l3rDqzlLhbDGDZV55Ydb434DJDCe69l71sZLIFcV9xlsRkbxrFAx5gtK+Gs3DFMnGPn6y9R9MX5LYdFe9h7XiVJQeOMaTotNXfk3j34oDGE9axqBAB0aOcvwP4jlSrkWfg1FIxlIXq+ayY4wE1zLfWZVT5ZwDni02+3zZFhvkn7QOQiD5WccBJaESu+Tu2Nem58GEfdBVLJr5qmMSiUP8mozmuH9O53bcjCIXpuUrWuUx8siJa8DJlXloG0EXw//3WuRIa4HJj++TkT27a6KDVoLvqHjFUzYu3WWWfTjzlgAc2rrd2clqgwymFX5AfqPfLGQ5zLQcpvhb5PkWiwZrbDXNcsT6w1W4ITeyD+zj9ecs3JN5DjwymgZVFRfekDdxif8ObxQPIBdZ/QnFIkFWZzRstFEfxVPLiFnCg1AbdDztmOO3kK+lH08Go4usa65Lyb0yXa+i5f3lFmOYj02nguZQEdwz29MAnUibsWK2SAaSo/Mbjjv2y8zpACh0LiYytivgZ6hwzRSPv1l9qqco0EtXT4yQY9pMGKCPvgtaUqgWQrhIq/aRaB2NGKc/P4WUXHHCnNEA7lpCgQtSZXMhevXzedazZKYg/a2+ov7irL15zpJ3CsoV8WVCCiEQtgvDxCiuE9KtH3H0oTbINuFfqcTjoLh8H+oFM0Xqrm8PN6h3D2vWVpjEvd4kZziktc3ZQZ4WMet9xxuDHjymEZyuai9aQS9y9XHc2kaGRdRdhv12+ZuX0kBjRaho1KJkOVU04Mwke1JEDV7EpvJA9lANKPwex7G1MU/y84Oq2zWLK++JVflSkOaB1w3ot4UY/Tdgoz12+mDMBLy9czbHOaQ35Ku7q5T1YCczrjw3cTxxyDs6oE2dz7Xp56jEQmdtIK7Hot22ld5BzA+MY3eQiEQJqD5iFWj1AiJk0bhPNt4PqTKydIUegHDYp/PcuQ+0kfEAEQVcrIx8Itki7j+AdxmVpODq5Sa7XsWy874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbEXQOd5r9c6wKocV2Aut3OPAdO0Kn2Gys20g4pP/SGn4NoN0dJ7rUFc8ctpqw3IiLIFbLSZTIIKD+t8YTmXDtLK7pHWhWffK5YjE7y6mqBTcTK75C/pWsohyNz8kN/Ul450vC/UN0qkz14mzk33wvk3bNx8Sx4X8LYk1poGHHkGwYfn1G64rATUixPo6F/EG+KrRxWcaa0F3rCgLixFE1VE12xEwf+ub/bH9sVCGoWz5MELZS18luaRSjv9QHVBNhfKRbzRcMmfIkcXtjrBwdzXwAlLnbExJ45urWUCrcoAzu3/LklyaAD+m2yPiwYN4Y3nNwr8c5lCGGpXcrqo14fjoK3krW/GsDcXF4apBNR8RzLWxqd5VgTx1FDSMTTK9D8tmcwE0XoCJsY0vX3u/V3Jae6ukvp0fAxMJ58NKEuHmujcOllUMhU4/dVOUJ3iFZ6O8y6q6i6ACTJd/VYJRDZ8C7CrjnNRMJpkIMT7DImfKH8LqYPtt2y6bND0BpmgR3IMrodDGQNc6niRkc4VDdpqhpYDKZLAjdxGBceRZ7t9OWvDy1DV41YesGdOpXYzX7kENUvTwdq8NeqNs/oFxeo89v43fMRnNV6QuEUZuffHpyoRVBUVlbniHaUjAmcGGcmZr0HS5SSF6JAizTNEpm8+ow7clhWzrg2ZLOtlDgY+C4byVYQ5ztmagpUkLrJVsF36Y+2EdUQga7axjQ8GKdrs1VnMEre4PBo6LG3IBdwdhOceXUpHTBub2PajP0iVaiKk9AzuZ6/YL4nHNXrVx/EuKbkfnFOKsVjmin8ViEATFpvAwa9GQXn63BgnKVqjOu/dfMgZgR+pya98zIT886gVNB51OlnrIG3cgOxZyw8F6pRLPfzYWCaG2aJRP+zxJc6TU4uprQihqdrJsT0X3M/1M6TTVhcfqUEpr1B/LX3e3B7iDPs4RGhzobtNhaYTXRXtYkL13vTV6aeeA7q2zw3/6LQZR3sjsi5hhmJVZcbR3CEfXK7XDYzoUw3jMLw7T/6SbTUfF/2sRYZN+1cpaoekPFJWTcf6plc6a52PNa2yCCDCVBT216Mhogx7540OeeSbQs12NJuul+Eaw+aPYxmMZwl21huDjMfcnNQU2qrrAft+7MbIQfI7zbl2G0FhZ+6YE63TC3O21+KETJRcgXPY7YOtI8OnuCEjjHjerWvRsmMWBXZHYAhAzXonQ4ijF6o+6jnc1OGBH5V2QXzFkt+wlUpxytQI1jgZNFcPmWetchoiEOZPmaw/3kIXDJtUiMQ7xwXdwW8a9i1uz4cRfy4BYmFVUe2cQeqTL6ZB4vTCPomEe2k5FzBW2yDTkFMbotGmYjklMTmXUfFgPXXGQG4aK513Icyw7q3fmaezT5w7kRL3NNucRa6UAtdXs7rYFPFNDMO9zZbOgY2me2/STowYSe1k5YX3Wp4gmetoHNCwJpqfAeTMjacTy6ailSxqJobGqGFO+YsFVQ9RS7B9uFCE28DA+60zaZkGAqAel4PCLQDEvNym+H7N3m5A0Xwa+uwLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHfsfwzbGCdDhtGOM0/lK3TBe9SGXbHAimnBi95gGP5uJC10VFEJO3UrbPNFcKiAbGJFkcu8i66PfCrZISnACeXvVumhCMfCLHEKmda+LHiWNR6f4spOPR6Vw5wYX2gXM9+PrL608xKm38LNGHZMNZ7zVTicju/eBxvwXEtYnAI0TA38tZHNnuif3Gk1tG0RHZzCjDGEqTfMe36bAbhNWjwREtJmpYBh/TJDiGHhhj1RyJGhCeC3GErNUlWne49WHR9ohiK0MLuEx2UARlf9yqSgoq3caR5TUo3Q2yaVIqxsiQNC/KcLRSPuu5sT+nNZIGnaIU33o6cg2x24P9T23/Je9i7+eifbr/8o9yhDPZISgVclBzMMJ4HYsXxCArXSibPI0Kv97JX/HXbehNOHhCzTxm0kuTtCaB8YsyPHFIZSsD7NQmfnxzG2U6K/PSNjm3X3RNN4Ckwj2+pAsi0CDYBKrhQbkzVD2oYfG0r3LHCRbYmaafzVAabzxyjSffI1Fj/LWy/SBqxtI9DJXhIRw1EG7ltl/sBx9/Qo1txgtFB8C9mlBddtxMJzk8d5MWYi6ZLUR4y/Ev3iP83pbadFWzC97Pp4rrnuh15NRhm0314YcgbHLqghQ+iQlPYLa+zHh/BE2KhBwy70yR+tdV+rZTiy/MW5+9LqAs9ILaOE93OdSwTjM08Hvd6u6CTabFNQ0LtR+/5v3u9HA5klJm6aT7qzLzvibFXlxEbpUliYp4ke6v+xftiLVE+0+IflXwQ1GdvYjlvHJlhY1tRgoAybDNklKE0wjAGsRmyUmdjfH7Dhvuo+a8idL4F5UwOIUBZLuiRkQi5/tQG4s9T/weTGu69noJIf8+E2HpNF1gt269rsbwfmTG0sOxIFNHTMAbLdlak1NB2wPNVXO7R0kCOPdkJrzAFLpjNeYCb0v9/2d7iyMgHq/cSiejnk8n0T7TGcyeb/PmA+Nunqc8rQ3Wq5dISjg+obdrCOuD556jVKMFO9Nh9wLzGBFP0FSJupdztU7HUkJnLNyEstJXD6iAoxrDtUvYViLE3f0EZM1otYXG23n+3DhBRh02hUT6643LoBWSPXHKTbgs3dSQjQy5s3Be9or515q9caWNifnnBV1NyHJUmBUva+HFwNQZmodS4IRgtTtiJ00Ck/v6oK9sXTaDuDYVJFd3Om7IH0CqZ3CYvVIGPO7PkG11KefwtFXQ/vKMBGU0PChHdGgXYrsl57Y1ThBHHOk9+0yFyujin6Ddl+YMzL9b7PJ3jRwee3pQvhzHt5WWDBoqNoIoc82vd0KUtD4ClqpORIGyoCc+0ps9Nrlyz3tqnXjNORmfTaTpqesLzxcEWpxIewzwfB3n1U9CpCJMaARWuPSQLI+1AhzlMgAjLxyf6SmRK1aUf3zhv+z4mCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGsDOSs+CdALbU34nWSJ8XR0lDKPM8MvvYO9IBz/lxyELtYVlHy/3NVVqaQQzDgZSuATVgcZ2TsAYRezcQijuXJrJJMCGBj3mzSLMfJUqiNUcuZOkYOjxisj2xZPdSpBhB6UyCi2k9d9lX20oks7mQMVdfujdwWkCjJPMbG7hX0Zbk4ryVKcfXD+kJaktmVkRAnzzS+iJeugJW60lqkrfyanJE1PJ1CovzVqlj0IcRLTmBuAgIX3UQTQXfiZNZju5Y7+3ameLKZgSt+LHFj5LUqUkf08opMEHOJ2F7kJyPx5jiEKD2SLEPz45yYUweg6APZhx3d3f2GS4KkMuVOc0wHpbE6sY15M4wJEAEyWL9nmtCleEVDwQ0THRcAJEKogvdwUog4c2h0WmR91B/Fqy5Qd4MCD6wlPiUq+cSVbd0h08vKzdR58Anp5hiAPqqpDqvCcnTtpeGJw2nK28Tu4BJv4bfFDKhgecixzsvEbNxbKeerTjEw78WTBtYyBkr4uQMcTHOKOn5FTm+Fgp4/Pi4QMBjmO1pKrNIWKqZ65TGfbKBVu8GfDQqjDw8IF127VICLXOJqNcMY0kyPVysnZlLW49CV2B8KyfZBaHp5flg6Kdil0pUqazCuZnsnNhv+crxPDleb/LAzGTB2yW3vOnkV9V1IoRcvP2h99FqVwPxMETbEcBsmL5kSZ41MCz/NQYuYZWyxlyb7v4k8zhOzMmtXpw4Nbw45i3vr7t2kcxC/peCF08C3GLJ1isdHI+D6R9bRmI1QHky67pbp8f9HACAyJ5Kc4I0JeUbZhudUN5sshteW3EVhx+kbGHw4kilEIXtIUyTf7uD9O3vy8G7OTtGOANFKtkHb2/qlP/1g0tZlpMkB2Q33pcgmKG1mTw2LcOJxLI0hIZyOD/MiZLAUBcGsHmgCAFkFmEhpQp1eBomeUq4WuI2WQ7G2izAM2yM7xZ1J1y4amBMP9XxQjeKnK7n65vY5OTV38ZxXXbD+o1r84CQmhonSJ7QZzZk4OLE3L0tpfi3oXHM8qdai09MekcoU/XVakJAxcASsJehALOBScM1AdC1KdWMvhYHsvMAyFaXS8xtQnML9a/mwUpcVKXvLYSQPMU6mwHyI7Px3uTcFV+AKVL3aiydA4T4/FE7IyMt4B8C9ZiGf7fQTNIkb2sdSEqKJl4YcW3aCCd81ONRvbOmiimKd1T8vjHc5T2q7OwEephOq+E1W0p2A4YjaoBus0L4lb5CGDXeSM9xx3C5ewaglq/66kXZK6XimqRdrKQnCxGwBpnyRMHboiCdMfCJr0hbsk+zwUZKEDXRMMIeFtMsZ78V+pMuMW225JEWJEBtp77OHekWb4x6wzVocNCWZbVCEtVigsE7ChFshINdb2TfJJUVo9buRHm1qe3Zw2cgRi1EUkqhEJUR9nho4ZNAmAVZ16ySRP3tL05x2+6MvReWeVF2tbN4VxM25J6Zlh34O4oznFSc9la+xMsRT9kWnTC6Xc+qRrXHWWZmCU5cK2npTNDys3OB345GxdFeihpfWY1vm/RHc7xzYzgieKkfjG+rY6YIQvow7AHOp5U1S04GQD5vIudfIMiBDJ1ZVTvfLpCv4YL7DSlAS2JoqLzbYebi/gKJzEOezjoGKUkgvSn8KLTan2exB+gFUdWhS0V7i874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbNmAXUpowdtderW9qXTXKKMXsvu4oVPTs73XNUR5WGnK5ms/8lxm7KdAE7KISU56OOZPXa2wGf3wNR6wnF80Jy/4ffJZuCiIObQt/aM6qAMD+bTgpeEkcRFM1mhe5Sh0bsfCgfP2FAwWH2Zr43lUdDoK9Z65QcIJpTTf5tr0fHoKxnvxX6ky4xbbbkkRYkQG2nvs4d6RZvjHrDNWhw0JZltuYppI+HeENVuAyRH/neuETzBmxvZYcGrm0yEUODCPqaqjSwLtgeHp2EbGcMEGvsunslx2hxBSaumhV4p5WhLgouG4f/A60MM0NzQSaKrztlp0xRsNP5xTeRXD7RGbUWTkPoE/S5o5dMqhotomceSZQXMHuQKVNDzE2o6Ovifz544al24gyczhIg0U9Cp03Q17POiwSVvGsiFKGrqf8K4iH41WWqX5YPUCG9T1QaaiDKWPr0BauoHRiFNYXCfW3A0MTWnFmi4uf8QkqTCtgEHxXYKi5X9fFNalYTngYyWBDHVlLCH58+2xPH7jCmYMfYUbl+HE/MwtoBcjfCPxmN5ULNpqQ6OhjlH+Ioff/eP8Ri6rb5pHa+2mB3hDHJsRgXfwvV00OYjBiqaNthNA77b1o5EBPgpTStVGxIT5ZrQmld7OV5BiYJ2BAEndOgFHL30RjTeIeez0qrE0vxp5R+nWvc2AqYZp0ZvnheWpWaWWwIaWTqLLieguhNK0kqlzRYoeAyiTmywhKq9nDq11iLtlPgiJoACHf4FfPTRW9kwreK2RgnWABQABMnE1JIck4lnsUwiB5mQJQiy38OsjH2slsNsHG3cy76Zgv1+XX//GJ3zKM05b/3eu+svmjAu0GcTiucM6SK7yvCMbpUy5asmozlf9PRRYbApLAtWsfCOLqlnI9SGn7q8CIon4iesCRSz/krfL8Wd9pUpNHEWgbda4SlUzJZlkAluMxSuhQEJrjq1S+OE5fBW5lC4V/ussiIwcrFmuSQH6pA0/RLrDw7lQv/y45NwMOpUiVclnmEePtCMv4kr4lNO56+PZC/san26i7tVB+FzgANY9js/7vuDN4beUYL3CutkA8NWT2PpzOQsn7wvC1m3WqZznP43OfjY12miqTqWhgzVSbYIjKnu8wEbxWhoDZWUR9fWYBHPho9QLJCEm7/JMZWpWS2GBPJRLuCgXT/DlxrbOYIClnNyQtsXoyS2wYJiMCPZy8uAuCwaNzYE5InekvjiS+bVYnGebwRu7xz+wF56V6JLjI7mZXdyrwke6xr9N6fTG/Su+r3jk5BL/cnmdYNAnS2zFAsqk4gbfQYzaqvdDXsUGQ2WekjcCTqxcxAmSYlvdWOThtPg9WOUDRIug3Pu2L07x0cIIG4yCfPVEEgcvHt3Hepj16sf9L8Ia58jO7E5kZHCMac5Un/zJ3gyopZOWnOTYlizuhbofIp8cYUE5v1blXk0bOAoH7TKOJje70MrTdYns8GYWupPenVqR7DQ/f4lrvZ8Iwj20Y1hYqjqYb1Eo3+pfl0bpWbFVUtVItIrIdClVycsegijd+qOfl++zxlnf7tgflx7M+zkUER6I7OiueTwiGRZ+gt4xD/9BidBROTzni8dC9s62Jnn4LF1IjwSGpdP2u1tJwXQSu3RCdhY5ttywH/pVoF5PpXss3utgaX1WEfLczxnNWjocmNG+kpDUXIxUCVkuihs8YKNNjikvQRB7GcJdtYbg4zH3JzUFNqq6wH7fuzGyEHyO825dhtBYWfmicUmzwk6djitJ1ruclVoSZVPTb8XB3MUYn9nCRmdwH80jYPXO1TEDsTjid22zMEqLlrb8x3177UmaClUw5UYg1idP/40wmuxVqTXa3E/98YSlwHqDkYHdbS1Nevg3VPjCi3/ouH7Dxeq8KIVzeQdSnnLF4SWK3lbl8L+PyMqiARQj+oD2WcypXHxCViektYtbqxChUFb8mPXtVFtnjzc7rkdCLkDTqhArE01VW5inKb6ZYMdAJmBqe9AKxuHZ6wDwNQFaN+Igb9mqDkluUqV/cUvkgd758mJiTwU/s5yA+uXg17FCpyFSy0hkFww0QlTqSsLfdMiptV48iyfmlXGVH1O0Te5uz9T7wg1tMEr+m89KWkfeESYHiMvmniw+BrdXsB0vUmZ1uXbWfbeA31AP7b02Kv87sLULBBLNQSSODc0z8NwLonkPt5dluWkgkPIwEoj1cAVltfeWEEB6gC6ZgXVG9QDpzlVHheF/eyiZswHxiZL//v7yzqeOVGpLFwyTZu63i6EazKimdPnN0wKwf8DdE32bI4e/jWIoI9ep9BtSAPHAqkGFPblFHC0CUkNtHCqMRdv1TalvU50ahuRchI+7lZase4rOAkNdY3lySP7m5bLXF/2yN15U/GlFvxnCT+LjEuUFf3ADBVjCv6SaWlngvzOySr2iP4eKSuYiv1caczddakNVF5jXW/EDAToUBbGlN+V53xy33zOVConUuigIv2a4V1qFfpxAatTPUMFsU6LlptTylgegiSAx7/1AEGHcYTx7wGTJ0v2KFxbuO2pgE0+fot0uYkAfYeBoRPHcWqYgs5m+dZjUOEvPxo44ZwRVXu1ykrb1nCNNpx/TVmHaP1rJwoN/kS8CiiJ2GCmC92dYFAZYRsl1hNXiTx//ppkJziPceqvSiSjuKeeR26R8ZOu+fVoUqc9fOgLIm1+tB46qEYxG+iINS5maSHiPWun7oqrHd3Ty/1M9JbZ4dM+VqUBl1p+rJD/ELuoXCspX0giRvm2vS+DzSF4tvigfAgSN3ux55ERDJ/+shAWEn+b4WHWrjaSIwPJbPvW+5weHntobnY53o7upARVxdvh1ZfEYsDbhvege4ySpqlS5AjmTEbNcKt/Y/xEDHzu5dGlfFDh3uGUwrxZP8xlOEqmy3gbQBz5OBHe33+3sdeID6Q3ylZ9EDJBtqlgJkF8GJHRC4erHa9nLO6+5VpQtXlLVrvYqFjNgKTXFFLrx4Bpknjk6IcsGGm77Mr374RRbyiJtouhAWG1iEoUc2k45jy4EhpIw1NV6/cZLk7nuhDMFdfcwfNJnZQDsl72tKmgYFMQhpawyLMMeROarxz6ALKch9vdqcg1Nk9VWBZ0XtRLwmYsvXhxmJ8BF3wQYWyARiCZHlaAL2izNUIBxZnJGlIbG+4OJCRs2ZajBeRMhc6raFrM+nvBjyYqmpkNp89Zh09J0hVZGfRhEupJ9iNyWxjm/exLApBiRMxS4dzkSQvzbFEPeIZ46kX7QxBcWpYToXrRjjy4iWO+XgFRnuJeespjlgkT7RCeLC+Jns0A3wAKgm96iel1+rCyjLLFvPqwZ+k4iCvy0C9TksOrCELeQpRSbFlwccohkqgvuiPIQuwPSTnTTSsYfwzCFGKkl+gG9M9RlLJjmleOLGqvAqLLx6JuCPDgPukNC+RZ4AaKetYaCjkJyjDM3um4wylTHBCXFXkPk27Ykok4IqSnGqXuGhfI7a3CGYpzuYdzo+WWXXtKBnpClxkYk9RoJqpfo/r2T26XZCKj5V1ArIIAsoLKeKaMjXrvGd4JBznr4nRwT8ynR4XiJTL3Nkw+nWIJ1ss3/DT6nr+dzFQ3A8pfRdI+SawjcvYMq5eXU957ugEhCzShRBYGls6uzO7nZ6g3UubPQgoJCfmKAMgySksZCoJqXMtMqVHyY/HWHSbXfR8AFKB0BTDyclLmadAbsc1XQadYhoc5KFBu+t6VIy9DqY1ae1kKV0/u8XiMqJCkECR1QM2YS6I3AsIwaspT/hPbOVvkXMfcX51Z9sKwPe3lIOeOfWVbjk60nC9f5zQeeV0s5wtCpXQngU0frwqrjYdO4yjPgkjNzNsimeAwzOi8VllUiFr9fzcQlirjFPvg0tnu/8utvCrQGA2n7S5G7x7C2mdF/Hirk+Tjz89KigfiYmX+bF/8h+TyZFG2bPw3/I6g9pT4jQSe2OUuSCtJ5eX3yaKFBUSX/MeLY3huLnIirG3rEvPax5iGLvEZ4sO80tUQK3pFaL6ovGBU3s0HH0i3L/MrCMDcXtE8cpz6vzXV8ujUcylrBuhMdXEFepiY+zm8PRDSZQ60dCT4YBeexAqayy/PptQzomodu+3RQJcDCUn8DUqaLughu7Yt1QV9SBfSAxFx10SEyl4SWA7DiPZVUWrwZsBjE5Bmv79k7G3le/2rvDs8X0Tg3R9JzReDTwTHRzn12djYgVC6iKJiqNJaEXaJlrA6rlUoAzNt/JfL0U+rcXyh8V015uv9VHGdggEo5j0lKm+lNHTKYAnLv39FDR2m2lASlUk4I9rKitGs9elHQBJg+u9cWB3/YUtrUwlTDnt9W9uJV+8LktVYJsrv7V7erVUqk+ThnYrD7XoEtWuDanmNGLuJf/fyqNbpYMQdI/qAGk/fFzy/tGsXYoW2HCdJaL+9ZbkGrvWBximW+u9IPrF8SFPBLgPwvzOxhKnygBssCWWX52gDvU3rUiEwHjD/IOggbjIJ89UQSBy8e3cd6mPXqx/0vwhrnyM7sTmRkcIxqNYK9U1Ava+YVPNghaRk17jAsJZIKzLSVyGb+AgUJ+6w6s2ez9PfPGerBlze52yqYXFHT79LPW3u9vfF6/ksy7mwSeuwPfrKJIORMUexUO/I3wqoa/BShhjBwJpecRaayEYsYQ0NoodTyh2iMi+indJxL+jUhYVvGY2siPg8ghuPnYaMXODNWOoCuc9mkl0Zr4w+56SOSdNC2SVJRBVsQviziuezmZT+tXdWXlksIRKnabBJWhB2G8aBkoWa5wUkJZij5f3I2b/mgMjcJs7MdLMjdZtDqjbJMJkgqFrjrc6Xnz9iqjfqo60Fo8CJQ2jC+vakL1gWBDJ/Uv3urH/v/tHagMW4bOybaQbSXS9yyeurSTRGe7hLMsf+CjUm2o02GitkXaopSeWZI9Cevb5q1sERbQ91G0lmdcsq1BIAgAtiDOHndIvrInePDiMwithDMOo7GmajB12KjgiI72tqQo2XWNlGishJyD4MIsVAcj6cjQBT3eZySIzousLlqv8dCGGziaQkVnla2336EBRkp0ig3nA7vgT7jrm3uF2ZDmnHlxhLFwhVJK2W4ZNCHNlzCn1TIvjQQxSAdKxmDw6AOUDKQbwhU+Acd2vFpFbAUzibqdMrrcwWAczJZcIS2VSbbmXISIaS1P5qluETTgkQIf8RyExPKtOODO8x4p/8H+17L0/Hn/mei3W132vCMKZaNF+Omp/F03UxarB6qTMVE1xnCXbWG4OMx9yc1BTaqusB+37sxshB8jvNuXYbQWFn7Pn5iMMjhC55gUckFFHFkObYrCd/QfO6cx9ww3nD6PG0XZwVECOCqa1QuEiH4zPtlWau5o68zUy8ucic7bz2JRgwCFXJAxj6H4VAbkzhzx4x05psHLpal4GzFxHOKuUBCCBuMgnz1RBIHLx7dx3qY9erH/S/CGufIzuxOZGRwjGksQ0kBF9bBcQZwPEuE56PeJIE0GPocIiyI+1WDmAinzQ1Vv37eMGLVPfNEhQ1dw85p6yaQN2dczUVXHDd3eBkMV3dwasH3QVOkSJKU3ei2DXDlo0Gl9aqY7dC8VGbXV3ZLiWpPk52Y287DVCpkPNkmQVoVKDMh3ut09VfVpLrd+wLsKuOc1EwmmQgxPsMiZ8ofwupg+23bLps0PQGmaBHcF+59rtwr0fsJw0dW4arofBK44DM8JZoMzHim3q/SVexiMRHHBKuJUUBQNVbU+WBMLlKjyUqOYSurmhMywYo5YJH5PRl8NgE6AWDrmjsRaqJNLUK4ncm/9JwiHKnupxLRRXMRHQvVVTphzvYstTGjXYXsNRru+DRmiE0ZqTkc1JXKyxeNAAT6hpewOs78nkT3Q06rpiKqAuhMPzYN4WF4HazLrZMq30UMbY6nB8NzFvHJPv3HnpiU0RZYR1tAHYt1z1OhYgp0cr7a2tvUj1v1cuMK8mQMCzlmwBlkVhVi4tJY2wyzaBaa1L072/jXvyohvrNwALOcYRI7/RsP9Vttjnka1MXPA0tKNNSAQsdNGC60rep6a86U0lOs1X0Fo9AsJucqNjVByZ9TorzBRPy6dZu/l7ifuC5lAUbtlLxZ3NtQiJCBwIRnrfnaUhaoQnGOBMXAvCP9H2exAGfTR8qVxlb9E4jvYAVhy/aRfyzQXUmbPDmu3iGxTE22mwTdkYyP0qqqwANByEWG2opk6QMKA3qVBbbOTaH98Ggha5jqNA8We3EDLGtXwKMVO9Iqr7DoN8bM2nCl3LlO9qdyrmXRncDlr3khxPYJZCrldK/8KpGAebmYAEObPsG2K8qVP5B7LAYqX25DUzrSu0P9YNg10WFvT5LeQ2xZxu/HAlB2LJstyrTjxrjlqXNt53yIiu4XligXqoww+M8ZubFqw9Jiu32HN684mRX4VnRFtSuaaSNIYxOsiD8KyV3JWuBXFxQbmig682FmWA/wTqAnMGVoB/fs8huXS1hg8/1D3xknzvCuMLrUwTw+GTF/hgBmNMF2TNtkdsF0Y1x8NBPYRkik8S0qcwFhDC5r+rdSLlnat/CRLpkzb6Zge3Rr8zdHB5Hf10pVnT3oI6mOlTQKpQyJxQ0Fz3kaFYewW31tj9HJy5j8tbc5ZErgMf1dvwV8+Bn0DjGbX3risOythmgXcFPFcEkIQZh9uOJPDuKjs++MGFfPT/lHuMK9hB7l6QJl8kEbRSKCFMQ9joexMCB/t7cng9qFE8u9fafwHUopkchxbZueNt4PFjLpzXw6Tc3kYIKV/8tdNSf0K1bbMaF6qXuK5KAd2ZltQBiQp7jc4zECcLS1t83c3GQZk61MRXXYjDn/wKs0nK4nALX9IX8G1y5iW5gbXZemBZ85Gu/H3dOVtkS874mxV5cRG6VJYmKeJHur/sX7Yi1RPtPiH5V8ENRnbWpTSORoSgiqLHFSLvY14ui/anItsZn95/rDjkJ9/LcG6gx0FWU2d+yrKF43pYgwGedeTgi71c0RDhWg6h/357/UOF5ZGuGsBZvtkzhm7ywZu7dVlQScDq8nxa/qIHgdP2qq7aVcitI1TAcKb24K+e4m3Vr2kovZq9jgrYHNgW0VdC4RTERl3t/PTtOqz29OAiDd5gAj0etY9Jcudccl9MbBhVq4fMbQtHce6zXoQd+JfnKE5XVqm9+G79mGQ5VXiXPi9w7vPHW8o1h9J5b9b8NzrhXcX5m5t4s657cLuwoUNxWG9qJz8y3Li00hdBGFO4WUq472xR1AupDzedfq+rJsrFVJnfcanJ6rtGGFPbV0h9l7s7T+UAO29ImklQDr4SILYHQ1g4vFOlfnF7Y4HETjp4BbzMwPnFAeta8kZ6H1lJgH3AleOA8S1KEdHhAX3BDTRAK9u3A7xGYvfxZ+CW98w0id7yJOxVcGKCa5d193GxNz7iDjdRRBOTmFc30GnBlMOXx/e/1qhFDdtDWAWnV+buFo/xcsqyLihkXGByyw0UxvQdMajKyY7rtcaCtPjgYguHeyyQxyKtrJKSk/qTdSet5bUw0QQSwCywPPIguQ+AR1Y1FHcEo1I7l/qES67QjZMyUvgl9zYMNq+tzuXQ+TPU618VlRf2yMDrdhFAXonN11s697N6SF90/xgT01CY33Mmi1sNOv451oCvUYYObxH/Pfza1gTpy3iGWGervriFYN9ChF1VasMw/rzw1pBDPHMSAthafl0qKHd5OPv2fE9JHlxRND9vA3xW2TuNYjH0eTVqgsCvnediIs5vNfhq7bbZWXGYWErykaQ82G9MZzUjyPhmkXp8WPBUs7jwQP35mGDWANZGMryLmorCypDmNepqK7DPNl5Jk+O3Y7YU6Sr25kn+Icu5caR/S2AiPSiWwB80xIqtTDNmJMpbEe+Q9GwJm+PhdCV36gHK4H7zbJ6TL5MhWlw1u2OOycn7ESR+UjOPGHHUacozGVkkEUxA/VA3YhvXGSahBzXZCDve0pZl+7tQaMlS2lUW5pbKhZ5gm8qe6KJAkNOi8tUbGl707a/PAttfJe9z8L/v/acR4B/lJ+vr7uo7Nijq8ajFyCvOQjaP3xjkBcSW/s/+A1BfxhDL/H5VpTjti9FKXapFqWUBEh+tgVS2jDQnP0U0FS8RIj5VW+bc+sGDILj9VHPitsgDDHLZ6Uwl3b6qsWSQ0SLzXShj7r9yfsqtH9lrEPD9zUMIJfcugWlZYmIf/9ojh/yalykP+8IZm1OhAKzPPgoELl5zWpC9nwAyqSbKVkuI+4/JemOcUQh2O0HhZMOyudZL+ab13VQywSe4ya6zG+xu9tylqzosNDII1KaymM7NstB55LHNtm0MyPZWU1bFkJZHls9zviz1drZb28wGwyDOOeDiTCtiHQsjtRe+6GJDxWScp2QsJkdmQ5fyDwDOd2HQm79zzhZZhXeIFPMwPk8YAkon1J5VB50YBzkw0oE/1+nFGFf6TXKwWNglDT5OAe7/ymOD/liw/vZkEVUBynqssoqj+4tF4O1KarxMr6GwqyBwdncknMkdgRojpfC3jmVVQzBZkKYs/PXP1rtfpajV6n9n6TEr+XovBpGVGGP0j6zZyO4UF3YWQKH0yL7fRD93UTxH+oYdHUvMnXqSCuTxT9m2M1gwceCoJ93cl6H2fSg5ZUeq/fUu2R568gSEjGcAaBYCXv0PoeZGSgOZo9WnaExexSWRp9gpHO5gqjSRcO5lLYh/+L/pdkqFYSuBqna534+XdzmcjU/i7QMulQt92CPqoZ4UYXFT0Pak6jkn4clTmZyCQE5IHfz5lIkYCmsEl/ZoDEszxZKbzkEbvInPELCD1LBSrS9wquh4zWH3IpdfNj+el01Tm8TF87lI3UWapzOxokPr1Vwt6w2p1Lf+9LeclOUoVkKNw48Myr/C7q9uaDGK8FKg9e3zMdku8Z1yYrdnI21RfbjPi8tVxNRi2HkW1v8+yw49bhQWohBeaCBnyLGBfMkjU2m4Y8L/6V4xM1HzbtCJvRaIloE6qbFV7K2dAcK5kbxALvmMYI9gw2x9W/KR2wEr7jgf/UujcOzxJKoxY99W7GiN9UMtAgXOPfJS3hBDmFkjHG1vkE/Dq+L7/gkJvBX2OQ7uAx3+b9tO7W8FHWqzxE2dJxi9JpVkXjeSOhXIl4sNefpHj5JsRfZjL3BBIuUI2JmnKuJRsf8ZyUl+HCbTitEvMEzXqoIPVrkUvKFHvFfUjaJSZvj8XHS5CNajUMkwoWyjQ9C3fsZeDPbJFByY9mPv2zWyMK2Mt7JOxYQzufNXuank13ntXZMqHkw0J0go16baOApC/9j514+uUTBUsi9BbhdMYWWmnZBD0cpImo6NDmTbT0vMIMZyrA1jZM4yPoexziFfjT9tXd64ID1X4gE/LTNTPlZzbhSZnRWkvEjOz26IrzqjAQ7ZDKeHFOOJEI+jm9luWlAnbK04Qn+iiL2rE6iQme1yUVAYlUGm+yxLyLKeWHlXrKandfpHhFFcK31h7SbL6AM9Jl+MxENC2dCS4yeyiYlTSQx8XrYpMmfoeIVwrb9mH1yjycEYLkIP1b8iTbpUtUagC8ofvwJHtRifsEqJCn5utad//Oo3rpRDWi74laB/1eMdUnBpFS0bGc/GwPiZwA9Via9kQTgxA2aZNk+s+MFVRzsbcGWbpQe6+11sWYmyEzOBRJ8L3ferKmQM4OTyAo2pk+MurcRRfVwoJwvkcwpoKC1RDrR9arObBlrVzO+KLu9iuh8FBphIemDOL8Ao1k7jdd0Yb+JicPn1oEtWeC2/JZ/jkbgN3um8IMqGX6rxE2HignxS8HRexF0anEu+0dX04VPVW5DHztCKhyCg8N7MyEgu6q3awoSNhumwEPj58sRhpHuAO4ZCqyKGu0zb+15YXgWdh4UA+N71mkOACtI9MbfFeSfWJoPVl0wnQwgqwcsomLDTjK2/aRyXAZHnIAzhq2wO1ztqBy0yS+v8dH9YqEKF6XsU+qGys2LyX2+yFkyZOln5qOCBhgBpfWbj1Oj7tcLXbViSraYbmbFcN6BlDdIIEZdhPPtHIqoE7iB697yAO+JFmF3hrTJA0+rUqG0UNM6G0bxOTVvHfYswSIbvoIFl8b8Qrn9qHTMF0LXuCHWHfT2nLFHT54/pfPBb94X+ZjM1kRoG31MASTEyCLWNssjgh9iH1zjx212L/CwE1+QHzLnEiv3zOSYhjskzNsyo2PJHqnBczWFlPWu1jsf+e6MVv7Ufb9KMfUCtwXzFT+e7oyvUwYyZKYnQIAVy2lCgOOQdajaJualdJWDdCvvwd9CdWdOb+Uppcs+kABWg0LKKNULuuGcIWivUuvNgOqfT7WNPZFs0jCvmGoGQhLQBK+1wEQ5lcvTHbreMCPNWJAM1Z6MMeKeD9bCrThdQvegUo1rbjMgBWLqpF6n3sBB/XAbUVVWSRcpuT96e5kobGrZ3sMZLVesBCiFxyQ+WNXLbV4E7fk1bEKO7Ci1hU58ctUgntthiywHZtwzPYjgewY4I0jYwImX9Bk2x23OfbRj4LkjXVRJ9nDi5O7HJluxf3lKM2YHRNQJULmgiPxV51wJ9TtLWxWfZi5TWkqBR+un1qW/C+i+hAg9YQ7wwHha/M50yyC6W+Z9Vfe0kiegDmTUYSauBuDqM1u8niQ7LNwAKjBqUMYTmq1TRVNl1+hOfNmdesfnGZeqJ4Bfcok9hJhtz9QzyJ9ADwQ29VRdkZ3s0BRKCpjAEXhndWnyTTdD5ed/u+SyXCpxaU/LKrKOLPObq/15RiR6phJZACANeS+41jqInfU30joAnPtul7dADr3vaWTrSNSrY1zGpCYyvnokKswL2NreoCWuMhky//Km6HdZYH9asO1tFSvbrp+LY8lK/Uj/QdrpdG9vq90kF+yd+qN0t0FpTfxxXPSIhesA9/RkY1DwQWdwpZ7DbMm3HIg5vxMqj4MqgZDJblMKYxmCwV9gsJ6o9W5MFNjWTW14G3UD/SPq1g8veyynNtWFC408L9ngPKET/jpmTXMIzcpzEBDlZoyZMOCOQVMMccQHiYG0eQkZRr/YzLTLkCeJdzgEaJ7+XWUNBKgjGzo5RpGTr0g/PRRg0BIxSTiMvm0s9LyUeCpI6fj+6bucgryZ3lJB4GZPtpr4kTLrY1W8NjlaJXclQWc17G6A48CtRlbzkw1BRRhRr39wQjzDAr6dRJywTKRrJsyFMuu6K6/sfUhIHrycIxiLTD49KmpRU8fG80u9Gw7TbtvBF3e3vqsx8KK2DAONRJCuBHSZfZXFw1HMdfmIVeYl8GRnyv6ttmRRIUuiWB8Rg6ueZ00ZTn+haXHaBWRqgl+sbPrBj5GM5xZhXc/v30V8gv4syk6tgY1noyOhHCuOeMl9L0LNaiKvL+VPUw5BZVLoDVlpA+YHykKmIlntoKbCqaLKANQreNTj2TXamvINf1z+1JZkxmXPA3bnELdZVW+Y3pYsYfnfEfnCvd+eUxdX2gRSJgFY4uXKEdne+FLe7x15NuXzA3qPxt6PvPNBxL7cmdKg7/uSUVxMVpxfcAiuhoUcNqilpJUiKrdBlRTqPITl5sj9lEf6QY9UNefTQ4NiVgF5nordthHiW+N51mUOcMb+A72RzdCYB28pjhUITXmkZleAY5KJooqyXfHv55S/UMtd2cBCc2oMO/Bhj77Wc5p+dSZ+aN3pX89aZpRgBFt0SZFey8TiPHAkfnQokoSRngxnESeqebbr7XBj5sYMwJKUzeCtvQgFhMuB61EjCaV1Of5OujrNzefAReOquInY+853ii0RwPVvap592UmlX3Oj5Ga2yN7pJt02mvsRoDbYFKJnWgO/oRNtP3BN2OVl+OtiUQL1DMiLQETTA+CaYmMGIMI3GYj07Bogw/+9JPYJUH3GU952FwIic1USeBKMCPUhwm69+tb2Lk2L3+O11ZMnvZNV9U0PzqYQsJJ2em0FRAsU60+bAIZpmlo7avoZmWJ7xbZTox6eXk+eit9u/55qWdfIt+8ZYInGDjeLcfdNU/l2Z0HuEtwrmixo2LrWiEd39gJ6O6KNVr4HZ1R95Y0t9C5BWjKxowfM8EZNyJeEw7wluxGt3pjSUywUjSRLeMal22Ssi0yBKIMJIvgnvkojk6zguLPdbXRKlVZc+ZHktZY3ltG23jFiAKtQpiH5etXUdRYBweHHJSv2X8wHo/+JGXFpP9jebMdmzA/7A49pZ9jRgRIXnXOd5Pb9Z0N/EhZqE/MWrpc0hII9lq+ZUwFET81tv3IoYEbkzYhU2kDmRL8we8PjyziqF8x05twTRgI8kl+aM+rau0hjcdUDS9zDG4DJwqnEU2E5p/KEaEhzAU1vzeN9NYO6ph6ohnGvjPXHI6n7rpgl22FSQ1gdA7dMfZE5UCFG8fn0194nLRE9LxjrLuEjhisL3fEnTEfalAUXRWhklml6Dg8JI/zTYzGIgIl3ySQQqk2e6iWiapzA/PD9uZw5BRoWwPiqTJaVNTnhk7if3yE9p4IcwNkf/44Jet+K+vIVjcM0C2Xwuwscjjx7yrM1ZNTIjj6LFQHQFbAExX7ahnCXlwDc/vbULz9Mr2th7/XDArKESEi4MCUjkfwZMQ7Q3gOsa8sgg33pMWfnaKTpZPls8ius8lmr4ov+J6O4z6rom/bVItI3dPzidww0Qrr3ZopBQIfi1/MF1+s/DbNaSbmE0bZ7vwKXjqwQEff6c/Kw5fA6dma4sSlqAfQij7JTk6opEECvB8+T8+uUOvf+dm5xlLr4PhwVMW92VUJvHUfbTb+MFeOEg2oD21d7j0VqYhtFzqmjM1ihmz2iiLOR6I+isxfs4NohBuaq0BPjftH/y6qz8wd1UU4gdj852Tx/5exq3YAkHYLgilYySLDG6HvV0uC4Ab9yMUqYYHcjly+R7Owztc8oD9KZI0FmC+CohaA8tekzOd3j2c8ty0t/VWqJdlbOW7PTsKZpB9PSbFnrgyvANffGQpmrGwNAQmeYCntFewaqmYr3sK0qWTEP2iVM04TNnNrZNxIiqa37w9encnOd+slfo+GQA4Tf6TCMwiBVFwwtDCVaLtI05Rz9b/CD1haQ8wUOmvkQYjUueWBZa3PcO97wRhAhQB7d4XOqqKmQwa7uWhncR/dKpwuXbtQN3gduMzjZt91Ru6I8AUqULNs4PEUH1giN1I/ZMftnLWtagyPomkgew+Iz+f/UUn/ow2UliULfQsFZQIpVTeFKlmM7kF8Ip1vPYlCOVov0J7lrGCDWYDUBxnkJ6RBaLFgIjTv2gUBv3w3osMZ1H+ISrusZEFzPMS0zQuVAtcaDn1TBA+3dOlIhQrtJC1/LXRQ8HEh/S5NbUQw1NWMNEj230W8UnnS2hms2vEhNMz3Jnxbpdr029X04CpMLqyzpl0MdR4ifPXwAjRUNbmJYPyVkHFjC1Ag4xQUxlaRAG62FPC5sdQHq0LYwW0g7O7z7HHIXPXOOlGcdJRuYDANfWUUrEnslW8iTdq9vDjJaRYtZk3wuS/aQ9ISq5LvlpGMNuiCjMtopz8kbFRRwrEMla/3cxwT90liSD3BxOFehufTg/Y06Wx4JCzwlBgcIXUatH15EyZcGh7n0WhAC7iScONMqlDCUAS+QiRn6g006q6IAnm2SWEmdYRTRRqlTEHTcYNWYmX4oZuP2ozQ8102ENzIHBMpMY4Kco/DR5Dm9y5PuA7GDpOXJ1brT9oPyj6YdKQSNhtfqDUoTQ1GXsU0fpJTg58onONDhtCaglDSYkICEpJBUERIMrQdsS4FZCS4mCvE/GKFVmuiJ26AAQP9RrcZfe+boMbQOc4I/PZ1z9xLJOI4LEL3ZocVVYgRElwqxFxKE3hSPPFHd9s6FmdH1ESJgeVapq7OziDCBZ6BXx1Gmb4ZZUZ8ZgRVVJQ+9h88YLT4Qj1CivE/3alQvUuRWHNijnSBJ1CXLXDZMpxzWvJqlm1hQJ1UWGqBthbmfEWVC2Cl8ybFKWPdSL5eDJzN/+8hwPEdqAXYFXTC0UBfTslOsUn7URzVL2VrMakK0r9iP6k1q1P3SZ1kZZIzOiH0SIO8dR2iPPF2BmII0B7MTyPsfFPs33RQK6RPVHALRQvbRrBkcH3mindYBENUMIBlaolVg/bE22TVA7ALrQKCKOimExtBC+XGX0Ydm6QuwtX7FXw3m/DPbfFlVCi0Vavt1PHvvViWSwww7W8oyClrJDsCvAVDx+3dLNk6EE3SBvAJUIUDISjnhzfiaMo+riFvMjFA35022QaUd5cGlLebipLBHEe89Mhgwl2UW0zanC84D+beRq3KK8k8SBfRVBThpj19B9S5mUzYgKhsSUc4qNhfs31uZEx8qY5tC7v3U+RT1fmc0itL1deK0AkP/t0D92kBPA4IHrjsnUGRSla4REaY51vfRagwlI0pKhdNj+yM6IKoUUrQ/5RE58KV8oSQBvIbMjoUpSD+xdPYaqvfAvzpzNuQGi8T+UguStJB4mNOflUAfch8pgVDv48V1i4eMpjshUJ6DhIPlr72dyPnDHPkmDwsR+haf6ARL/R0Nvx8kwdCmh4K2VBDlggfDpy+WkOwcdtpVMGE7c3pkQ2jW/39hCx+Q2/MbSEiMwnrJU9O3fX2C0O46l+OvYfO48wbzcNj8CzhC/7NFF6gl/t9pV95up9rrdu3hXBHRawi+M3WNruUzq/N6TefYsc8s/EZ7iU+N5p/wpF3ip8VYpT/n4ZHxkGLO2W/gbDVL/FSZARl10tfOSZ8hBfFyPEpd2wKEVKuK5kg8/eArz5m4fVLZQM+o5DMcpxpg+NDx0AVKKnNyq8DqawtqRtRRQnmhST2i0k1InY8IvsL4ymu7mbSFBpSRzE/2ukUn6qI4i7lAhh7BkAyHzhC+tpWmF9wHuaZ9uUexzF5DJk2xeiwWHy1WAVuyZq+xjVfIGD3FR8DH/BanhBohHw62Kq9nOCDlJ6YzwcGvQwWR+zFdDJaf864R+c9UG0eLmF63DvrSyIFX+q3f7zKNfwNKBCpKrGkfWpOpxFLx65lsR9+9aRNbdL851mpdFsdfYYOrT7iRszVU+/Yoh66iLn6npzTsuUlLjBtKK99/iElfQZeGvqBDjAZZV8DGB3XUdrSBkJv1aTUDl9feC5I91Vt/Q3C9CNH72oGn3DnjXbHeXka7CXZZh+5QtjuOU2lmpVcCdc44SZOfr0nGGhdjiUoAjeQwF5h9GTHsh672Z3N1UcPdeepoFh50Fw61vubXcv0f+drIU4DZ7vf9PI4ILvMz7h91eYCtjIYwHknlpYzZEoq1SCBnJmq0a2qvuTQT/YRkR0cU89i2IfULPab0cTrykVvdSnWQJaQFZiBs48AAFD/mywcjxhi8iENA8A2s6fbetY0Gqb2wVQZ0fpjAdGnXlmrKLYgb0VZqOcsnk1GatEiqrcNVbhPO+1r9stWmFait9d3xg0bw5JDElWInQhM/KzpSDVxCuMAiLn3M3+f8yEIvIZwJflvreSHJax0ylmKlhGIQo0HEYoo4FmLmRyDDq8xlL7BtA237bwS+yulBMnEnTVHt+xrNjeXXyVFFodC0QwJyKdcL0bNSxFqo1Xwk0gA6nne5I36rNLPSCz9sEz4IYIs4goqYDT+mjfxTCtI3SzHXh/XXxwMVA7KkHqMfJhUvubSXAjjV7FDk3NHd8min1FCx3nNrX4mf4QhkX5Y0ubwUUKlD/h5VX+kwdUVdTzpAEA1MFINOSeBxJsTGLwcfYC+PkPj4azUJ8F+4ORt0alUcaXdO2DhiIibxnSCyPEGinyC/pM4kVIHCYh/AghoOKC1XlsC0RjZo0yeRG65+cMPd1IXeMR1Srmgfh8ziYavnkvNVnxxY1rtv4WZc3pnZEKr5+GhIaJawkn/Vq1lofju0KAlxoE/Dj8qvjLND1VWPnCb2yiTAkRfLnXSACvD5L0AbL0vSQiTlBF6c+/QH15QdzFVvT0LaQE8DggeuOydQZFKVrhERpjnW99FqDCUjSkqF02P7I1yts3PUAzjqFWzof6vhokZsb9c+nBkrODYXNIGCUIOv0nIs6MdXRyULOATPMwBmgcPnfDv8w7kOEYq6iIF4rhNFX2Pn1Z0AK0eBVY/A5y6UodGZenbJ32shee0M12TwYyEGFDkkg46Pg0zHgXYwMCmd0jTa0fd/8/71eIUs/1uxa/wlAARDhawYRK+XDNQPJSjvQ9WBjDBdElyzNLgJrT+XMCs/IRgwIh+tDKapsB5eJTMVz7ENMQHlXJ1vR2P49fk660qVGMgt8m5cH9m6pHTsOf6GYvjpi7I+VRQDTDPE4gw88o4ggj7vNMBHUSNnPfuKQoRbdoGUJ0jNW4fh14m4bLOUOSSgTlJ6Cal1/Jv5xiZAZhoN9/vi3RaOTzlHB9V9N+SihxEIe3VWHHrWwjcBF57QHSMqdMU7keFsV1wiF42seVMKIvdF8cPa3yic3F2k9UbBObK4YGgd62eRt829uFCt12PnlEIxRyTmIaK7dvjfcadOXKnTfj3Oj8/EyOVWg/q0PC1LW8EnuN4vbXg6HDigycN/NUPsLwA5n2S1pQOw2nZ0B5+o5hjFb/qRBFvPJEhe4q2qXnb+a8WGRvbbbjL9DJdNS9utZbGv0iJ2D4Xt9/2nfmM/SZpTAifZMYP9PN+KTh2Xga7kUCMyk0qLxmcN/S5v/b/ar3gCuDEYpZBSjYt/SvfTPsQM7sMnTivdGf5M9VwGV8dITT+6TE1/l/B+qFvXh+glKGKUO2Twa4zEnO1xZim5YnageAnjqd/BKVP5f7DRNTXg16MPGj/zRx398EmBFT11DrYiKxUyf78YRk7ONRcanFKAABUmO1+Q2L759VjV2uX8WTDRFT3SKAKMrpkvrQnRmxDma0/PKZk5FoEthgrhNsBV4Um5upB4nW5/qIVBvheZl4pcbp6TFHhfCju54Hx+GvNHqB1tZBkitJPRFry/Ukd4LIP3Dn7XfiMI8IPavMTclcE3uGSk/UDP+4lqUmntTjzl+hsiF7GbkqosnNUzM43TLwF2AMVH9e9k/1s55u3NLXCJLOaeT5JI+W+kj6A8gE/kHVEP1j7Ypfqvhuj1g3CxOPAtNR/lX77XPXwpHUXZsnkSF/jJgcHllQn2KgOV5FqK9NAFGNAaR70Kvg00mjo4HdQ6YqtKmOiAxfcEGHOZEP2pFfLlAPDnDREnmkULIQ3jI+W8PAKEh4kIwh51lU767pC8ZjzhFkW9JSG3zMVK4uD5CUsGUER5GUZVPoP2+ztxQr/HwyI2dUypRLBKBZj5qmYBi9vIKxXyMHnEhKhMz07L73X6VbXBaKhJ96JdcwLgS/HbQRb27asyTqENwgNN19YRONmeyEFHNVH3qBgHV7Z1yRpY4bSpWTwYBdMVdjnjjvutQBKbIyY2xXw0nAVooaus51sWv3aUVoHHn8/X9/oHy3GGyMhNetlLYt4scOWwmtL3oN3qZ4pN8+lFYtzSzBjhectqbGgiUWLHEVgDqYjCixMfhdPMkMSo7ZRqoXNK4vYbFQMYylt3q4ZSkO86bvK9F/OZdGNBcCDLmQN221gyyq6lsGJwNPdQzSfMIylWyMdL2CWJzgWLIxy29HXBoRASBLEvMQuIka0yYfrpnunG8w4BnQP0mi871aC7v4U+IRIPdiMf75YfNFqKe1MhzXNzcAvOQQef+Tx6rYkdV5S/OVuBpNZKrikzMHBTpUc3OL0aVvdgRIjUD9vSIGyU7j/hxIB2n3gPXMOdyu6PtwMYnkF6kDAbH0Pjps9nJLBi3NSRCTyqChKL0e3MX75tCirxx/+55LyCeuYI/z2gGhem/4uISfkc0nI9TQGJzf/YT94Y6EX+aNREzzJf80Iyf0kJvf8RffpJ9ie7opPCAovx9tdQiUwTI20/E4uX9mfm3EM2DU6Eqk8R+ZPlGp7xL1zI1AJyLNEXG0BosEiqUYtXEDhuymAoxPif+z2xcJrH2mqBOjVJQemm4Vf+GS1eEnseMJOj4k7ax+YCboAdYpqpKF98p9Nl4kRzVVPiqNWsgerW87RoBZNxWwZM88GFD+W9ljJbAITbbRFLDqjbKKe7n+zRDs5WEemWNqUlXzVGo58EZ6KnqCkLpPwn9UJTOAJl6MIr/AooORWStSMmBjdu4bEsmya7N4MqYrt3GTYp+JwQ9EDiqub+DP8SC+1wv9dBSo+N49xdgodcgIbVH/Ca3s1ZE/i8YOHf0l3JI9OPEhShArV1QV0/z64mG8iJo1dE827aw6QMx1qoerW0kT+PquE7OPxBaswvvId6Tu49Ls2bjB0n0ieUbmmWcKb8HhHrsPDUDC+U5U9QoW43cUSoW75WnKN9T2ghiEm8KyNWIl9QQfS+qZKD3PcAeCksyzMuIoZ2OBcW4TA05jk8E1ra5Dy5eL1FCIZK8rMFcDhRVR2pTXEK7FaP+Zc+Nl/tEi0pJiVS7dSYoNMdLeHpWKE31d74HI9RZxMGmKxcmKqFZFVTCHH9eWzFRT7m1ap7fWu+1lcWHiwI1OzhPyc3VHkLnT7VrdHcjAJVl/89yQrT12fWf6YKcx1AwW1t8zBY13V3oqtCbo7/JHshgDCy+NOinvTiqwwdmCXy1IBCNoLdWxVsQeceHr5z3+38C4EJdNkXmN4Ld+fGQGu5J5CChVqEsHx1SQ3kdmQpupaVwoxNCdg8bENHZkllsJxsxE/uuue99x5T6/4d3UEKiEhSnWNVUolkZC2FiLF0RkMdy5VoQNdGUu6MQAMV+XHzZIPVK4jopMJDHIviT32r9GMXOK+ATzelnOBQcdkDSkfbb5M4dFRcAlQj5smUUCx33764sTT8XRFyr0KDGYcaeXYna+W25tEqbW2nprwrsy8b5ICYIZzlxUsYzafmEFRHtHpq22LnmO3S3iVcxrRTeZQiM3L18yVJrdVJaVeWSC00uiDTFVAx632e/t0D/64asZ/Bpzt0fAOdmQqLLABUWu78oIJTYoL78hRjuIUWal3dN4sHpsuX9QNRLL684QCVViCtOil6M81AcMwxDSW26gegJg/48PArRXMle2vv1uDhhCarBGvKJG32HMkHbI2MC+Sjssk9sXu3QQKIaCOVS1M4wmXdNAe/6NxMuJGMvDDeLfekMdayofs1rHrHOrzQbxzG2ZBauieEWhzeDV4mms60ZjXTM+YU7z9Jm5aQoOHwOeEFcK4j00uIXq1AJqbe6twkC3wtyo3LQyBsiaU/9gqSHtWLymK5rqUIFh5jRy/EirtZjmHlzGU1pvygQVQtL6Mk+MzhT/1hZ7PCQgA1ROo6EbBLOARXxIV7DuEzznFg/Y0gp3Ob3MacUw67R41ofZYIAf2mtT0sgoYNcSKuOiZ0xlIz7k7RPl3Fu4i42Fa3ykYOUGzAe1AD3+N7o98Z2aYWs0zPIMRc0/8HUyWndRzgzAfWWmyMWnKhmMi3glQ/geIvDTguyjPIpCMTo57a0DKeOYLbXx0es7/KqWuw3EPA/1YjabHETF+U+xJEo25Vlpt9oz6lGpVVhNcQxYkKCEJKUHohYvsvOTWCFUvf9h6s9Jhc4I3RnVp4US7rBp1PWwqd5NyGwGd5W7zRvcQ2wjcg4gTPw+Sf7/nC7rjE+zAD27ijy3hCw5KP78scy3GOir34PKykPrJxl0qAUBO4lKh8DLuxhLdWgRZIXAftKxsKeDLv5/w3cbCg4s0kNYCO3kI3+ey9cH6BN+W1RvoSwn4FPTfVJfU7eiEfcRSXDeklvc+1Ia0eKOxzAFFtfx6e08NnMYDpbJDStXSdwh1tGAuAcPy+CKkQHD86hjfFnr3jjvlSSR9bQBTex3yLzPzKJy6iaNSmLCi+I8AVBGLKVCucFpQq2XTSfEdWlXJEK6VedBmkTvtupjPYLWk+7XopRB3QZAk9Ai81jB2ZHx6kPZUWRER4WxX6hyNMlAvdBfcsoI3YeziJMVbi3A5/R0MGd1b1xJwiZyQmqPUgJabxfNvbITH/6EbEeBrX0QO9vZGLSuMAkZSDAKwDL5tP8YdsCOjxBDi6c2LLQ8RQrLb2O5HLB6iVX4OI5Hn0GCGKUvhU5JciO/hGR5Anw4LSt9pIG0usCmgDUU6m/3ToA7jfpUT9rm+GhvPprozwcXU5np8/5b5dWjRCJxz9xxTyjc1ZoZLYUByJI4M7FZ2OV4sjOPOEOo+mwvacI97jbGdOtMQ6Jp6kMikCv/evciOShCquLbxjV+sblmYicxDC8+8/sZie45OK11ijIjDj7eZjEOce8uK8m6/yiSEhdc5LPFpm3yubdOtmYMUDaIhS23dlRxjuNWuEB3VntYpbDcJ5tSZCu0dsdtMAT1Ik3NI8T4C570JQiwy+tj8gFW69t39co6Z9MdJi0w7LaYQAWh4M1pXKm4yCG/VbWeGh9/OwiglSlrTjd5sN1cKYjSQgoF2KKKE4s4I4UQRVlB1kb5iwA0X0gAJNMs0191tC6ZmA6giGnPnN6prGqedCYwFDoU7nBYNBQPYnPizb3NWt5WwLcjyEDI7dwLVlQ0L+52GoZRrKhbzpZi6LdzpXJwIr52omZEjUPfK6qx7WjDaVpyMcGxnElIj1/cMiBN6kgi4USOdJsDS4KjetyFjUAvVK4GYUt29GtXy3WOq7d5ECzxrsX5FLjS/jv4hhQhw1fyNl4Pb+yEEUzrS4EPTYj3rsg4bvaebXeMVGHp/lCFJK0ghhqyZ4FnzDRYVWIGOm0oDKDv31jNdzva+tivSevZYd52XHOiGBG2+JRxJe6PfxiA4iGF+1hxvzoWxgGF7zrdcC5k7BUaArUhocHs4Q+otMpSKTXCVQ9fRWA0i+3rXTTD0GazBm6DY9VCaWjPCiDEMmI4FPYZ1zIn167gbGQ0AOZgB0w2qv2rbOuxRhVY0w91/qNUIJzMvVtiYuLouK914EcvEaDaZZtzyqKY3i8hAW+g0SRN42ZX90/T9LMe7qKp2ZH2uorCHft4XAjEED+q5mzx+LqC30PJbyOMBsSAPheQWY36d5UCUGzVOi7rUN1qT3gG41ibkcl9f5ZNiGcJIYqSUSNGWeFoSmn4JTD5nSERsEAJg5xIlI068r8rIurNoC+WhIK+q3gH4FCLdKxo7ZmSX1BdP26tUaKENTIh3nCnczpUY34XEfKuIB6NauO8Mzq5N8ayoHf9M+LVevBC1tf9IG+GEWpe2W7EZeD7yDslWyeXKS+a2wwNWwtrRGXQHe4gl1bOnapAeAIyQzPd7EoSeR6MHRLmZxN6cU8AHXUAhpG3Kj8ydUTP6f9/TX6gpMx7kLrjlBRGNqq4d6Uxqikb66a6Iw4cuYViDBTKoMnlvB2XsY27N9HjDxkwfAqqJlbaNPPiX0yZ99tjS2TaCH1o1a90jLQc/LxNpokuTMRiRley/Rty+xkt2uJKT+oOMwCxlMmAFe+YH0sDijEA8anuSuebMbU7alZiuWsxqJ47acJaQr4nPiPiKJd/qfvCuhBr2vIBRfDtVxUzbAdrKZJ8op9svBoR6goG7Jhfg3PmU44lFN8Kgxj/6jLfUPAtYxo8+fHjyZNqDF0Q+JXcsJJVF7EJYcQciH+QXHffIhJPRHum3smMsK2QkWaMv/MUApuqmnOBmZ5Twr+BAnXeVgibSd+xVbFUF5b8lyZ140PgTKuQhqjSXDE9WyczgtJ59u9fbIswPKbXO5GDy3ipA/tdVbT5DAR9ICwc6bjQGMIWaUwFJg2yVQnQuhi5icNfso7viY+0IT6eFe3hZDA7SGJqU26WSKhFLL+8tqZtLhzQ4Pf8lL//Nub/7Ikiil/5PgbAV7Xcnsr2q/3yVasGAzCug3hUN8yDrY+PlxbIG5X6QCOi1lP5mkxS/5Eq4rZvqaNxZyPCiYTZUnqiSSLBhB43U31YiYW57pwp3LC46ljfXPrbhTuNUmUKEkgk+6gVg4sWMplS40Atoa7MwKc4rYR7GWk8fY4y7g13zN0ZIkKnO2BV7B3ZEqMLg4CNzFoIFF6gaxPzB+GP5MRR5vqco/mJ7vg4aeI+o3d3DDuj33fVjSAbI5Q6+DtSr0INr/Of40kd0HQZQ/4AWYhDgbBR3q/cY824dpmaoiS9YaIDz+hHvSSXmbRKlUm+gTROjy9mM1vnvwIB0tUOfBX1r3X8RfdBs1HIrvfqrFYdm43hTGsCZhNV8o+4YnWtyTFdMRVLPZw9T5nGtdrk71rvVIVlH69WlVCzFgjgRBVbu6vrV+n6fN93BpBvm1q1ysGDvf/lnTwuB0VsC2IyDOMJl2tcT3DS09I54mupqVwJJ0nOPeOanzlGKtEjhq8jAgUOrkO5Y0VVo60kbBJweD/MXiZ0musrlYa7ojjmsp849p5+8ahbLfdatkSuty4cwL/Ccy4kKUzDCptkYpdKyGFJEKDypMrkd02nSve5HrZqH3lPzgzyfjQrkfW9li1M9QVfmM+RNHGe9dE+GJaJ+Qw6arENbT2I/U2bUuOcUjcC+R45yJICpbJQeGdUU0lcuyvI7xgHw2QWdWmasrFxzmxgn3A2puI0TxdCXEO6kYqU0rIiftwPAnj7ji6weLwAkGqoCp4aHiVCvOY4sl8iiL4aTKCHNXkgmejpnk2wPQHdsQJYDo1EB9hLCJNxm87Lc+u2ciJ5L0Zf82N2sZKKzLTplcu4e9Wyvw1VhbJsDIfxEbZnEFVFU4NCeODRwNJ0YN+D78jnXHnyWJGGjyHMeJRpXVVAwfjFaGrolGLCtuVeBBRpbgzZCeMGxUrfhTtJdJfOp3MWYw0026RN7yHj03mFTDBiArNFT5fjEFsOrf4s5T/Y6LypFg22enLUUDNkLjLdRP2OhYmmozSLf5dD6lx6nOIofcahiQg4G1dmw46qKuu2o0fD368khlulC2wltYs41Un4MsrZBHAmIqoT3TBodLL3ewfEoUwU1sXtR0va2KwA4c/ay2oxtIgVVSlBTa82Pi/Ac7SfXalcgXImGKv0dRJ6COMiIYSq14jb+xvDoJmS4YR/tyRITJ2MgbnhsZIkuKLUQ01mR+M3KYEoPiy87CDaM0EZmuv+nHKdYr+z6z9wty0yZW2tbug76vZo54bBU2jlPxdm9QGvr6I2itpRUQsitMYYyTul+tHRqp0mB9/+ock3XNFeYmS67L2fY7O1X8SIgosC6bkOLAM6dxQRno9n6NAVRsRJeGokC9QV+B77NnhdTMu1IfQysXif8NR1HsURKxEEh5wAAlvFNRtQGqNbXi/5q9WW4r+MOxj5iiibIJg0FvKv4a8c5vKRS95A9jRhpAnYYXm/ba10rmoocV9VhzSnY1qoeRBpgA2rqawKTnLncxCQkowlqnMBCkbZU8L7ppTKMF98bzyUxAt0edwUkXB7U1Z3NnI9nFvoRijUouI0WVAqQxjyjFd61XPIrNA1jiQjYDIEb2/ndKNf/RwEeU7C17itX+3tEy9cAFWZr59dxonCT/wF+JAUJRPFJSJF0rLY5M7d7CsIWiagZhl90s0a4vnUew9bSBIG9r5RfTxOiatpx4X2rlcJcFEfHG7//2zZaUrucypabZQcHrNZfxhlniXxWNk0/rVK4dIQYNmpfLT2+S3/3CrMYsC5F/dbvltf2m5qp/Ua+385bF3tAEv5XGf0MOwm96HAnFFZLkmxH4sbAb8H//JAhrFVP1XCBkg+QRBYKJCN40/y6B0JY3bndpYIzmLlU1wR66C13YfkLkY1P/8RUSxz9GIhFTWHB0jiRhMdcOHoI+L17k6yhGok6arp5G3UZjUP6PSrGNaIwuyZSccu503p9iMiqI6WOCh3QhUTEJ/kL5ar3wm8RjJRePZhN4p70BE9P+UWo5ugqTdEMxVGhXiJfGj53kJO+r/C7vOJxiFISoDNYAu4meV8gCHeX7j31v+O4dhGzsWlmTEkgFodYs+KrViHdY9wCFFsI5gnWAbCHkhfLCOlR+3H10S7dxfCPXZantBidRLLWa7FLOcxhOsHRrodL6VFb1tHK1s0FlWlaRpcunqvVIJCcxdAlmYUXQdvnIuKd3IqFoyvTaqpsAwrT4yCRVKFP+S8bXusuTady6TUlLSZKoWq6xXvzQHKE/60zvilqdBls6lwbX13ivvPUtuhmeKKmzTP40b7iPYKlzQWRO3KFwxK8VjKuP3GJr2HeqR2sB3CSf1F1nxs1GFdF3LZX4FXLbQn+7snaGMzfj2DxvF1lHZqkJsC2cNOt5ZNMRwGUYB1B+N526mPk6C/MV/tZGIhXF0IE4slj/r40x1fptEL/z7tiEARKUwWBz9YRPCeDOEvPnpbFxZlxhtNUGQY/9t0nkXqUWl8cHU+AQ7n9wDgh4jayECzKoXom67ohL5bgHyCNlrMuVwPBbutxenGhbvunow6y5S1gHe1ZMPP9O9g/ZeXZY79xo7EKDM5VPsI5BPFQBWRdCDVEeFPK4giwynxUV+AtQfDL3ifru35SOsOOfwpOBvfI0CYmJ3HHCn5lIESb83SsrkKxub9nzpM8B6BWwmNjx84fh32sdwflykNz3OFOM2mbAnUXGHMjoSi4rHK/AFVCBAFGS0fYIIoQl/JxXQ5m4nOtQgBOV6kTzZI5vCbeVpbbqfi0ZWgZ3CcfdzX5GNKOus3qelozgKKAjT2vCyuOGINjobU45pbNZKqrcvTAniGb8BSAA3mlxMLSpkZDTjb/0SETi9adTsO7GsIDvglEvtF+lhT380+Vss+rKIkXIsp1VqhrR0nXFrqTJwkCPzROj6P5UuA0wheVXpm5Iwa2KSy6B2kjuo9aw/6YBHR8HYubaARmOXtP93q5HOnFUH2XpED0Ij1KUJDmnq7yvN9u7wzVaWPp0v2IecP5Vg3lRNwRIRVqgCtuKEGD+p2rIvGaW3SnsQH+DnPsGjbK4k3Nj0uQRfiJS8FPe2Hsx5Ana9yzJEiX+lIxaAAh633MOK1i2TnEYGonSir2MhnenzlvYI5X1MXKPIgFHrILPcfxKGDr39irEaImI6l4mL+BFOWDRpA6I6kfxGB4qGv3ocyzwkci2YcMU+/EM1FhBR3tc2hCmSqZ/Vay0knGb1CVDCFl91XkhMUbPE9+lAU0CHgxiYMk/bWwPMSg0sHarkJsZXfRL3dU/EKVRpyC6BpvfDTuamdeBaJUc0bxgqhIsZVFHJfmBH3aO53pxl1gnvo6sbaiHvZLziBgGOgzAwlpy/DgxiFjyTWywh6hRNoyMDvSGtBxa3aOfq4gadPkCrb+bt0BvbvRgBBX8lRgbb+z84qYuUDRl2y4AurqbS/SN3JHvfsOnzCLV4zkCt1oDeJ66lQnmpiEalt9yrcXdqdZLF65Rcvh2N2rLv2TgcIp/Q7p0TmyFZwYgBayDVnd7kaL6fTT4EujFAW8BCW1SwJXpyJSZ/Dq3qROGJpMHuno2UrzltnovSPr6tafL8wpBxqyHOHeMBrxtAx5beNadrNoqOykvyTHSlKACh+1biA+0hNXgCoIubo0eeiANryN3uiZE1/xcoW+bDxyYpgDW8kVll4vOkUgbkzGUGFyOlXR3z5oo6e8NxURwpPZK4jeimRPbeDbMsQh7afkO10kJisP7jHy/5+CQvM54Vqb989ylZUBfkPpgDUwNjnt34TY9Vej64sxanwhxcdsHScT/u8m1EakU1Ah2zp+riBp0+QKtv5u3QG9u9GAEFfyVGBtv7Pzipi5QNGXb4vTvlMB46pFZ1rczjecm7eZpcdSoMoG8hLNX5fsslZbP6QoAQeJJRutBbqLoD0JL58dFenjA3LDTThqHzKcCQbvz8oEvlFgIg8MEo6d2flevW66HQ3hCkTq6EEFVeolq9MkvM4wz3dM9HDvECHOC7yWDmc0BxLM6T/HsU47c8NgPENrSxCvGjWcLJgjNfm5ZUu8Ugg8v6eoC0VQ9aBE+VDiyGx0Gc21Ny5nax2P874rLs2xasAP+9FY+y581Z0Bjsiw6JNLRIoRYn9BioU2YvyaxRmEkEq4nUrCgaruyzLXxyjb+Stg5WYovK19yhFXxRsrimndChvJmIni4qDkNOtQjER2K2lqgkPqxgHYKPUSgWHfAndAcP7hllce9dyo53u24MyRMi3+f+navTfJl22wgVwIb+x3HjZAD1rcxsALeFLIjyFF25WT+c6dRr7LDbRyXmUy39WVH+otngaOMZk0xCeqtzeM0ckfwnr2yGId8JxopWM617TuYiIdYw+gTc/DY4H/+3jbUUERQrwKNchxs2f2wDOEpiwl5hJRYUA+Pz45ufyjT4wF4cRkvYO8G7sboiAApKK22Wy99fh+wurVore7qTNMDO2QPv2WZiKy1uKl+/gCPBOwICfgu3nN01cGHKo700G6uqc5Na82o74XUd9Ei3m8IozF1KeBYogv6yLvHYJfzSNKbk78dPw+U/y6DJdoFWiCV50ZcLkhZg918z5/an82H3HtU82lNjz7ryPUBbQrs8IdoU6hCra9XGiXKLnsLshDWnK54ODXJ0N0eHbIKKAYeL4xPBxYSl6JibLtBuWC16UauQqkmzWVw1ZzciP8kM+bCetsDu5CzB1sUZUiXyJ7ScKN/CC6c1DJ88i7Swxqd6GlC2kNwUMrG1/RJeJ/YuwrGH7a6l9qH4+nJoTcWAiok2c9a+/Qo4MXDzZr+ZnWp4OGdMCPmqVEXHmjcebWveYlqrw1VTl9J865/laNmLjkIanQo0zrN/zhLZxRMfh2CJ1S0xyVCuXdsn4z60lvm5EXzvbQDX5MW8NCPUNBU4HprStlSm3ZObx6nc+Ee1oxlX+Yc0PwcPYtiZDFq4Xf1PqJ0SAx5lYdw+mbAyPMG1PXBGqvliitQ8VdbY9BV0u5aAhqF/NGF7H03+7ZoYgPbprg4VTRnHuVMGz2hzzHPID6UkuKAbEP0EIdAFljCk8C0PvELJWz1YLLWirWXgU0d/7mqvii+6+wohYf3Yzqax0lxzm6KsgBpXUUo/ilTi1A+xS3AlDqzzsZelGmvWKEfhHhg2e7mjE4TlQwzQGIMQLp7gR19AyNhbQQTvlOIJijkP+++6kUAeg0AHEAcbc7hwCkf+KHPc+CAZUo5lk2oPQPPrNr+jnyaAgFO72OQwwMX/EYM02RtHv0zThR1QR6sYH0KsT6QH4iuXE0B5u9pHFViIgVOJjG4gGiIOjw7Dl1kZaE7788ce0GiKe8qw9a3b4hwfIya+kXzQ6wC939VPcskn6YEplXMoqbMy2X5BEs4la4YFWLyBebMmPvm9Q3YgGsqbSirmxLEst6MhVDwJUQhAIFXh8byEZU0u66PpDfVLvqHRuDvJ3RdLmxZcwXcdhE44wVQc6y2OeA3FDdHKie6jn7V8fAuHhNpxrxf4er084fLZR158ESlIIeHRDJdJ8Y4U+bzG/Lw35S3O9YxtEpDaZv0C7B7fSD0+bLuaYEds/n1ldqFyZQiBx4sIWmYaHumpTogDF226tWCkZfvdaMvK17SUiVEgC9BlVo6nPYoB3IUhYVPkWJTCKw8L8S/jatU02IeLz8b08qPt2o9xWk9wvpECQKRFk04shsdBnNtTcuZ2sdj/O+Ky7NsWrAD/vRWPsufNWdAY5O9D71VOiIWfqO6o+gXRC/HKkiuqSVcL0OKW1IWO7MOckyA/cSCId/+mz3nW+P65EJk2sqhkPF5JcJ6hilnNzl3QAS4xC8u2XMZeZCY3uyUa8QYTEoQUdTkL1NUvRUHzvmtyTI8w9fMrIn3cyrxHLWlQtM+InvJ+cDL25KaMpeytbSBgKJY8EQ/l2gFgifaV/cV7pj0YYuT6+peOMGosD2EcFcXKVf1V9MU6ZQOEpgW4/I6qO0Cnmv6aR5FwvLWPIlyYo7+2F1IIDvMDHWEC2Z7a75hDln53GdYrntTk0Dd9YHh7lAMmO/FtRJXciWvzVueWP98c3EbWgu773pNmyKSy6q7VpSh+GnQYzzBd80xXttSj2e3uqDLuIdheesPs2S0sYkfAQTJJYbdzr/eXKIZ2gFzsVorduYHdWXc4+nhaQxPK7+AEhOrIcSphV/cRodOTvaE0J/4En+VEUjSwW6jsabZdPr92RwVpN87ISITGxLnzDggVR7MDcasSIvkBB3uhTa4WTYP3sz+w/GrVn8W1jlPnVJz+1BW01yNh5nCgdmJoNieEVAEze6/ft59hcKflhDAlaI7aTCmeyB9FVHzKxvlx+Rrf8q5Wuf0PP4pcXIUQ8/XjoDlnyt2sf2UQb8J7CE4AFkV78E+FNL5xQngvS+VeenH9a7eFqpstPtXGMLei7r+nZWvdhGSkFb5Jfva1SYy9hg8G02dzvLFXBmCFlPJXro3yqKBWe9Z2q9OL2ON6SUWSFky0f70BNeg4HDPDxvfhNN0RWflsxJbcInJ4kuagJ+ZCDwkQmGqtmjmfBYlFFEer75sjUCOQHLEBlyyv/Q8x+YpTayyseN+09IiPd9Dw2rtqB68lW156j9eO0vJocjcHsukjOc4u7rxW4y7KaJMuLSs9SiwvY4df2N2HajSP5d3q6DxYAUlFbowL2oXGSRIGILNYu8rq41VepAe/JamO4s3+wQM3TTzc/nzLwMe7zeqxW1AqA+k9hkpvuAlBtOVvuiY8/g+ZSD6tBUkxBAZTxANEiyRjyhkaIhSsmCX5dScO0pYG9cE696oGPs7w44HtHz5HXDlecgbZsm+LdVHVkETtpi2VlAhCDg/QrMKmShCBdKCPtw7bwg9xfZELBHrUpF3r+VXfFTkMdFlkzTPJabOjVAMGvAX/paRwGrh12XJuanGF4KG+fig86nj6nDEpKRY4pkau0aTVrUHpNaGnP0fRa/XoDBHdZmv16c/mWPjcnt6HMGryH+ET+uu00nieaLSUTBsJdMBROeqvZtXfxctlNMo+8tGgoGVZ31BL57k6VdPNSCz0DEQt4p49PcActmWbQQlVlHKGCxJDJe26wUSyoLLfWrmPtO/Jm+FHoLu0Ryky0lmS6rthgS14yRUll9ejIN2wEZH+AN4NcRuqEEvwh3fQMby4xHYVBxlwejlrsN/rMSFK3eSDsYmHR00zIsIIORK0RnVFONp5IpEL9rHxbKL4j2b3AKchPE8hovtuK+5fnyY2OPPEhWg9d66aV9Rb+arTfrTlU1PuHS7Zup3teVNeDqNv2xWlDVnaytgjLLJWbiZoMtByLEL1Uq0zAfCTMTjwXExCPwJoDrtCRlsmXgoW53cyIrUB5XwtE/ZiVEU+hQ16uRxkneUB384AdsipYytgqct7o4w4skiZ9/zDpu48aLZNra8T2IsWJF3j66UpREhehPSL0fsXW+bsUCExAWGkaY1yrC3gzqFPbiC0d7d1MnH2PhZnfgWEHubGeKtWPGFNMrJwjfJyDerD9zrDD7I8uiekXG93iH1lBlTXFv7o7fNNSeHBeJ/e5yhrSqDKL2ESbvMKoZZChcSFWjxb+MdqIJ2pes0NIZhYGqglbXC9IOO8ArrVOzWK56Ib+mkRW5KjOsXka2G1yKDsN44dbNACcERLsn/4yR3CbNpSvdKEN/qZFurvGchu0LS/MyT4j/gtIOJ3yDe3R6bh+a2/54cJjYELG1W65oRQQB9QuaS7a7hpn72mnxrBu88KRljei21+732CnhrURLvKfA5CNs6IB0IjDFJCbMiOVugnv74+DKodFAE7U9DxQrmIN9t4PTsHB9B1Npdc6Mc3SFy8sVF66xcUx2/LeljxT8TT9PwaCSTKEwBJpgrvnxP0Mt4vIvQus47ljaZcKzWgEMW9EAPIYkEC7YY8NJtFz8o4Y8WG0zqob9Cwv6audXEpvbmV8/mf0V4q8CJwuScaA6wTvRzqT28k0neOPV58wmm5xG0pcqAzNSM8z/d7skn6BQSz8QHBlG2VrzBvZa+GCoy5bZALNKjPxkvi6nbXurd1MLD/V8fB8ff5YEbo6f2UEvEDYlOE5JR88qysQ9xOZA27/FguobsDXiKd+S/ZjZERWfuk4Lay3D1R0idy7PUfj1GGCpuCDCbK57As8HhcXjVRinLK+ISCB9cqZYLSRjYBu3fyAadQsodw5RuKeLGgAUPBDv6duN6pdgLBsvD5pJiqh6+boIgPJPTKH4bKuawZsVRs9Bto6zxOXJZXO+gMFNzWjFKXxTszTTHbSHEtH6biqjRH2G0+/UYdW4b+GXsQlmCTBCZ78PAHhibwgxNWIF9iw/Iq+GmrYEHejTM+carP56WgUaYQ9aB2FOQMMeaM6Xjj1pcwmbQjiw4yvj9F5PrnyDerNwskdMS/UCDMoPXOnUImT7EwNr3cGqMS0QYAwl1QyM3a6t7xMYIAkMCnlO1wfEKVy3Yfe9+AlVglE69Yyjg/h8gZWir7JdBiFwIe7TWbSfOnLR6vT0b8UoDuH7I5Koy9S8jHsBjamwZygGHv6iQVgLbabn7vpPbhwazgDMVPKIRTPp+tJns9sZdZPcQ/vdjkfR8Ck2qtSG40+AP9wBIWZPwJXKVOBPNxUkenu32Uf+htLkKEMvRdR4iElvR/ViY84ZfIhLwaBSAJvvXA4Cq8E/D37G7KdcXjertrABPBSMVDrMvmeR5vxweJNeOM52EVbClnCr4FFSWxw73YSYRcTXT92QknD2nfBwpeU6/50RH90y03N9S/btUy7BKVZuYXrW3oS/wMMosZRPA6fnrWHwJ467O8AM8ZYD7aHa669dSgN6/qOR+mF+0FsZ4gxiegIhnHBHteUb4UFygeyZldqr0sv+Ch97v8Jur6a4PZvz4V1EsqdiPKJo9+t/pQ6WYYw55X09QVUmsfM4DG68YA/Y+I1XuSpPdhQiLKRBOU/t4uWhWGRKAiOY33mPXXiEfIGJ1fJFl8lfpGmwNyAu7gdHygOx8eCyTdF2zu9IhNDAmwbsS6/q4eOTDLmxvjSbURqSQXG8SNIdkZLVbDMWqsal9VlrnY4LyWa8TfPYw3O54w1VQX78cuzvpCfYO14ejQbM3mHZkHrraAsDEoO9IX3ZCetZu+pO+D4zqkZfL5Q7lZzKq/XLVOkCqVlYVTEcx8rKK89zabqWlvZw/ANNGWaHs5/nJHzEfwXQYm2IjAGU3H/oO1bckNS/WGvA5uE/pL0QKgMhgdRxJQjZITD/yays7R+X2rT8RRU5V9F8Z1ptRK5YUs8pFAwJkqbD9ZFoV0wgfUFpdXMMKkJK+kLxaICDL62B57ZIHpGGHWC15HYbkSavfn1mxd1Y2tc7EHVlIRWm8mQw3cGk8BzqQcdoqNWEQfXbeEs0NKCd/djcCpwAhqYjWeY1zZwSeNSEsiDz2fqIYN/B8a/1dz3UmUbf73qFT8E7sobQiuoDNyi/rwHmMoqxIfJ18XWqbaoRZyOeT03QtgSSG9LU0BIv0PTqNyJK516uX07R5CBxaM9G+tyhvnta0xJ+48m/D35mt7DXTmJWQD/7BylmIhyWZkgwfTIRdhwR6q3kYaVy1nAsrBtWRCf4f5bf33GsaocfvxplxwEN8z4vxY0TLo65czuhmJJIzppKJXqc2Zf+IpmkwrBOUkX612h8zbnOEjtU7PZMqI0rc0HzYdX6+jvEv84A6mwYBrafU6rRJdWPU5Xm1EML8pwO3BagsTW2aU+V/BL+lFKQLsMBF+ESWQ0fissL3eLG7mMNMekL3KYB41KVWPu5DOfND3RgHCVcMZzx+NM9iHzxLrSAATvA+q9oVd1ffKDoOQDod263UFD6mefbeO1F3jFGJpFo24ll/HV6MM/dUbEXivoMpMBSzxIh42gypw7MvT4eMWkpW2J5e9WQV0nmB/lXcgVMS8iKevWeswp1bEt4j9xjLPRc0E+n4aoZvQdb2J0sDVIwJ6y4ZKjE8OgZ32DdUdZV1tB8vesa0MAI/rTT+C7585sKxOeoGPBPL9TBM27kWxfebwOa7ZWkaBgZnsR67yAaDRyhUUWg2eWKIOtulhLCBY26zb31rLtNvQLNXp3Yd1cIgCnwULmeMcKpedGFpvTYjQRsI87M/80h9JcwSkUXt4c3r7KveLG0fhofetN6fJHhJmpdq9N3+4POQsYOR5ki70DIfHcl4dmWLpwFkQpPLlmXSVqfp5QKP1vQhYrXRDUf3ILi1gUK3B//EUKYRfVVxZKXv1mbCPmU3lecBjp7qLO5EgOveg5pY4dPic4LS5lzjkdXhaiL5PmTqCUylJOruda/Nxrv8FwppGkH9OmzALYUoo8cbVz0ngBNOPJIwvpY2YQpDdkfnFpEGsAb6NdVoVS8yw6WgCfhcV+U3xH1g9y1QZOOU6LWNuOoEYn5C/oIoSIWlofjhnhLmQU2sLj/lanl/OMJwSOGJ2WvtUZ3QHR6aHChPey6ha7vpM9SeYD+lGBuXicxZ0Sx1nFHA9/YYQI60gAJqmbkopG91scO97YrY/yPBbqfxqzZ7BIJiOFX3je/Q8/ah/HLYdk9kD6IPBxwEuvigVjyMFyMBhc/BCntLrCEjMcfTrFXWIaqsPxrxS2BlQTg9d6i3x7Aowqz+H6DlGuLbJcDFzCdYTlby67A9fFiea168Abrl1KH7dnmScaPP4v1qPuQL/bfmnvgO/k9hsLPp0lmUjwREE2DD3mr25oE9iqTyQ1eL4iItlLtJRBUCTB6iBoP3CsRy+zzHNYb7Y3Tv4ofP/K6ce4zSKKRDzrgEPhx9dO9o5ecNBIvOABkIzRA3R1OdMmA3qgdPmMRFgrA9Go3c1H/cose7eRpaZiik8mFKeiQSdxXPRhFMpaXfnGxoXZL6cRpIFOZsJ21aEkTAmX6LvzzbKi4T0t8qFHF/Vl0nx037y/w4UTbpBRi7QeiFj1QxfE+FCHPGtWvBO1yqEiJPE4wYzUOLPMPQWYTimAdVBviveUmPHsG7uTv61zgdKV1v6lJc8H2VJe6XQXby+Hz/07ciFNlL98V8gT2LXmn+JQZETOQgQRStKOw1XvFMRLaeKZRI+GsRSYnWMoVrLPfDRfD905WORyedI5jbW1mpnfnzn2bhXrw0nsrZ7IqpJwRgZJptmJRImzpy1H5YepzfuW/4O0InbLKsSwnX1dUBZkanqX+F0jALhDpWpFUuUNQJZt2kY0m8Fz2isJtPJJGA9k/mPkQ6NgoqjbUAaeUeyiKjs/U74scJKVoAn20Gh7vYjyDhdyJFWHi6sSx/YciPTP/g+MXf09q+WVBJ+XCqsapN9+/6eJ5DsJ/H+i57IBgNtCZfdcSVsnMy6unQZrEyMcY57JkGhhZZQtbr2fM+Tg8Bv9n7d9ysrgPMgyXcOcR+TxjhbTRr7AJUbBNLSw0w1/jHdfKIWXv6dzhDUouvUCUwGQ9rN+perGdeiP9aZYzrnHnuZp8GYFQj4iRYhpj0ouxBqY+vsazrz/b6cNKx7ebWLBODMjGBlXVa3LTeIQUpu8WI6nKtGnEeDrVRhAn8xpqunPKzYfH1Hh/0ChMpqoTAcY/g6Ak06rgSddhOq10SN51abtXNzxLUbCmonyU1iuUyWDwXZnxqOjkw75A+3hq1jGUmjU1byUHKwpurjRHalntYJkwhlti8mphJwVzhQFnLzxJBSrh18GZpzEF6yBoh7MY0zSi/LUvPDR+GdwKYLWW0tI52HU1ixGb3BTTqHS9BoExmHag1vkv30c7ZqYfptfrsZyBzKphZpE7vzoUpPMKPmpNidn6f6TWDUh/io6ifGroj2CHqWhdsBkRlgvdqBDjJas6V92xLuktEeL5hrjMDUkZn5SHrupTDceboMlaih5LdfOwaHwxHgWhZKzFXJSq9HgMrt7GA7TAZptM/ikkqAAPVVOa0Nmo3jnPliw7g/9X+ZYesmhgGsJTwH5Jp4waDqyAOj/DnWfp3EwnRAP8uEzG1nhzHmaTcJfnp2RbnOvhl6dYFaUKQulJoTflPwnW0LvqVprZ84admliN6SOHuKV5muUzAlJVcWacJRIzzdZm0MOPN2Xek/YxDYC3b4tdmUXQXzYA1tjLlYqFmvgzfKijerV9aIAO3PPy+bvgb2ZsjXLRTn9/C9aC1q3XLsKxlqvlywHZIf53i8U2lQcyG+5Yx5YuHj/ajmHRkr250p3U3SQb7fGEIv5mNlbYlTxU1uANsAQekf0TjsQL4zUG7Ip+k3zfiCbAthItHEjjIy8CyqIUusO/pJ7d1HnKHkZnuXgom/l9aP1lGTxBGXbi9bwWwk602Eul46a+7MYyjhf0rSTYGYIRP/JPR68/DdpFr45pyv/UCM8stTD+t7qdickwYB8Y3x0ZMWAy4ht5UabsfzAX5dU/j64I1rpqlliLlTyfldlh5YlHbP2vFu18Nf8WLWH5bB8MVfOs0jXkp/PDCW4luYWfVMXuRbHt2fN0GlfGp3JHf5WKNo0ZNb2KvBJMJTvFEk5xgkAWxdr8CCv7UztcXsc6VryUgLfXF4FB59BF7udRENG2zql/rewcAY6lFvYmEwZ/iRvfcq8U65cxUe4KZQ1PmO4GOYtp9b/MmG1VxUqj87wqM3X4Z2WQPxsBgzRbpptF0NuFT99KxShpvGRm5eZE80yyYq5oEKS2X13Uyhr4hf1f7vxWwt6qqM0gwnKXlRjI2SVYqErxU3oMmCwetSv32cd6AFEsKdOVQh6BalUT/CvFTawqLUe/bwWmGxVXLUlY36UQeJls1MA/YwWu6qfH3hI77XC5LTo2tYzF56CbA8mDoLKAXq6U+HR9uHQ3FazUVEibwOLJNPdnFh2Nu258AYp3h6RD7tlW9yjsI+GIonu+BUgX+yVVATh7KASgaUXtAX3bldkLYXX4g6Exc7ogJ9hXhxlv+pmWZTrJJzezq9pgUgNRiN4lDNLa00UNNwsZV06TzZKSmg+vb1xPoVeFKP8JrYUPgikMgTZTwDnQ/ZD9NblpIfNg=', '42a6653f');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(15, 'a415c5d1', '0e4a78fbac81120f73fd38a1dfba2f26', 1430492052, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'FUj/pVxJU431/35+sNlcRQRv2H1+8h+PWtET47gpAHs=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(7, 'e5ae91d7', 'f5df8303d8ed36f3f6e14a04dd7da0d5', 1430837980, 'status', 15, 1, 'user', 1, 1430837980, 'Y3IyBttgxyCv39WpEOJSplsLxoZBo1DJgqY7ya3Qsmc=', ''),
(8, '2577d974', 'c9c1471b9eaeeb406b75f7b3d65b0d05', 1430838403, 'status', 15, 1, 'user', 1, 0, 'waZJa/bbrEZPkWcjesLpuYTOPUZu4Qv9abTVv0RzPso=', ''),
(9, 'ffaac268', '45d8993cfdca317834de379ba3cc257f', 1430838702, 'comment', 8, 1, 'user', 1, 0, '7W57T2bY+zNoleC9xUb5iN5UoJ9y27GZHk1zR8j2mrk=', ''),
(10, '4fa3c3da', '085d7d1ff3163cd3a58f23f1cfba2a60', 1430838718, 'comment', 8, 1, 'user', 1, 0, 'VdesS7jJe5uV7qzOWMoR9ZSCi7iHQ3Wzaxzr4fGcmd4=', ''),
(11, '7155dee8', '8a1e56a0d551b844c77ba595e7080cad', 1430838733, 'comment', 8, 1, 'user', 1, 0, 'ryGXbyxvSfH+jmTAGx06EUEUiPaywP0EDf7f7Wh+1pE=', ''),
(12, '8dccfb69', 'c4fc9fc72a89a6408b095c40e2f14876', 1430838788, 'status', 15, 1, 'user', 1, 0, 'G4Wk7o53VS+U6cVMYZCPEmt9pHrlzvufdesNS9ZSCD4=', ''),
(13, '96175174', '70ce2f08f107fe9c7fe43ec50963d0cf', 1430839946, 'status', 15, 1, 'user', 1, 0, 'K2jbAiBCSq0m3CWfcIOS0XvWHjPkjGIbZp+A/LfU2cI=', ''),
(14, 'cfae34a1', '8a48b16abf3909f96d0d5e42ed03f75e', 1430840039, 'status', 15, 1, 'user', 1, 0, '1kc9C4I2qg3Fz9dTu/ssQRlZMVMXkNKRJOnNDRzmEKs=', ''),
(15, '3100bfde', 'a8bbb16771f045ae509171928d1c0d91', 1430840081, 'status', 15, 1, 'user', 1, 0, 'FpKfoQL1C/zVOkNPURpN1ahy1LDhbYEpZenAUfiPzno=', ''),
(16, 'fe8f1d3d', '9697835ed367e144b24ecd839a4d48f8', 1430840279, 'status', 15, 1, 'user', 1, 0, '4ybNuBWiynU89dnfK2Z4u/6zrWq+GpXbDk3MC2HSg0A=', ''),
(17, 'fd19c7f1', '0ba83987470fbd6c469b0cd36134a27c', 1430840297, 'status', 15, 1, 'user', 1, 0, 'vDHwNxv+yCWkWlDsTHWDhp1jPTDm8hN1sB54ZN78FxU=', ''),
(18, '5c507ebd', 'd57625f69de0283f6837395868d954b3', 1430840397, 'status', 15, 1, 'user', 1, 0, 'zEost6FkugYdOWGcFHswKMOOeQj2eKCwOUMYas7u2jA=', ''),
(19, '6d7577cb', 'e9576afb11bc2935017048cee29acedd', 1430840431, 'status', 15, 1, 'user', 1, 0, 'EuXi1H8xDVdc0rp5YqPtNE9aMivHGBxSYLx8nmoGteU=', ''),
(20, '41a98a7d', '6bbc56f75bc249fc85660b5b62cc8eac', 1430840486, 'status', 15, 1, 'user', 1, 0, 'Ph2MSuk9dZpUaAtb+vp0/EJ+h/32SzR0D4XkkZvr51g=', ''),
(21, 'dff48d34', '8976ef4398dd25e2069a69531fc87182', 1430840550, 'status', 15, 1, 'user', 1, 0, 'uwwZUM0XZQ/ohboisueVRE9nW+WuVLBtDbDP3pGlGJU=', ''),
(22, '1095b058', '764b02fa05b8ea846152e183960fed78', 1430840571, 'status', 15, 1, 'user', 1, 0, 'HZ6svqeA4MBlSoUYTJSSSpwujbdLB8PkbGaJkw1CzRc=', ''),
(23, '175575b2', '2e239e3562172fcf65c7edfc5eb1b575', 1430840588, 'status', 15, 1, 'user', 1, 0, 'TE+Hxq4liSBhTqrf8gBo40SHyDlIc8988djA7ys47Bg=', ''),
(24, '6b3b7c45', '3909218fa2c30522dacbacee1d39ef9b', 1430840694, 'status', 15, 1, 'user', 1, 0, 'Lg83Ny4+ZhjsKN6VrVk5Tm+0EadfKbgJWfUqbcqj3AQ=', ''),
(25, '91922d83', 'a6db4a0de934ffbb8cd12ae58d768d49', 1430840696, 'status', 15, 1, 'user', 1, 0, 'H0x0z8RH6+I3wGxpRN9QGtBh9FU5lVTtkGBrD3RtQrc=', ''),
(26, '7fadbfe4', '1053d5fcafc3d4e8dff0c63815f2945d', 1430840699, 'status', 15, 1, 'user', 1, 0, 'eQrpIz8H5qFQ+Ne3AYOoLHslTgYcqFOz1Q/b9tXb3Is=', ''),
(27, '1f0e0f6b', 'fc5b9e707c3614a7c84e2a10d4b441f0', 1430840705, 'status', 15, 1, 'user', 1, 0, 'vxYio1affxw77Fm1+x2GsoU9gOJBk4e/J3KYET05jlQ=', ''),
(28, 'e0f2d0be', 'd16c8c446e39892c02f75c48c23abb36', 1430840708, 'status', 15, 1, 'user', 1, 0, 'NgipW4S4zl06FVVPO+nAnckQlMFqPpDQKlovHswrnS4=', ''),
(29, '0facc758', '931cc8edd1a46d71cf4a66701c43db6f', 1430840715, 'status', 15, 1, 'user', 1, 0, 'fjWu7zdmxtmhBImmEiH5mYgF6pUPJosajf//lWcK6sk=', ''),
(30, 'c5209da6', '0f06f51802b7924121566f4c866929a5', 1430840718, 'status', 15, 1, 'user', 1, 0, 'XLrVS8A7dcStyHsp1w2JuW74wA33QzzHcajL+9u2HEI=', ''),
(31, 'fa75870c', '17ef09fab66ef92c56d2c4d357c2e458', 1430840719, 'status', 15, 1, 'user', 1, 0, 'YCXWmjHHljScOwVuoHcmznqBJAH3XnezHMngscA6ezo=', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_comment_favorite`
--

CREATE TABLE IF NOT EXISTS `status_comment_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comment.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(15, 1430492052, 15, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(2, 3, 2),
(5, 7, 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 3, 1429190444, '09c0d755', '', 'd31ffd62f049fdd180017baf0e0634d7', 'm+2K6NMnsQfCIzu5B4+EqOdl4HqEkEu5qy9JNzeR6CNuyqGwwv/lZKo0lMzP2+WhcNfjyjcd84BEvXEStQakUQ==', 'audio/mp3', '07ebc063', 'Láº·ng tháº§m.mp3', 1429190444, 3201024),
(2, 'drive', 6, 1429190446, '5e447272', '', 'd31ffd62f049fdd180017baf0e0634d7', 'jKQDby8NnxSsw2fH4vqPmBo+EZesl4blPsEwU1qX9FB/k38KSHayplYDXQia7hYTwNO6BaIWXN8+pqH1TkziLQ==', 'audio/mp3', '0536ef93', 'Láº·ng tháº§m.mp3', 1429190446, 3201024);

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
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, '17ecd421', '', '6d019b64e1c1245ea463de79345e52b3', 'gtVogaCEIvsnhCZxN0AFIKb1Sito/eSHqz6FAv2SnGLgs5G5rHAXhV1ahhwak5eatf9lS7Nm8aHDYZYujBoepQ==', 'image/png', '005637ce', 'eb8cccf0.png', 1429192107, 11900),
(2, 'drive', 5, 1429192118, 'dfd8dcf0', '', '0', 'R/4P0nc+HvgI7R6sHVpke/pR0gZsthC3SSO08snJJUlxXcYa4r1Ba1hdoCA1Q7cx9GqwgDrRVO4r/CQ6nmZKxQ==', 'image/png', '374bd3ab', 'a36eb7ae191dd1692e80e2cb2783bece.png', 0, 0),
(3, 'drive', 6, 1429192346, '4745168f', '', '6d019b64e1c1245ea463de79345e52b3', 'nwpFLm8P6XLAmfT7HtKvBiAkYmLmC6CDeFg869MYEsKiZiJdk9ZaxmFL3rDU42VB35qUiCvwjXoN11j0eDO/0g==', 'image/png', '76658e7c', 'ed6531b4.png', 1429192356, 11900),
(4, 'drive', 9, 1429192361, '317e296a', '', '6d019b64e1c1245ea463de79345e52b3', 'eEuFnaBM5gvAiYNVlGUdeltMUxtvlb0CysRxRw5m2xmvjrG6pUUDjpZQikvoiZL+6ge7196d2wRGvqYS5c+Y0Q==', 'image/png', '8e2418ef', 'bbb55a2d4b12267706ddfc90a4d67aaa.png', 1429192377, 11900),
(5, 'drive', 5, 1429364676, '72804900', '', '6d019b64e1c1245ea463de79345e52b3', '3TJuNpeAvkVDBx/ZCnSRS9USt0YAePXpFgdTqnBnFJXeYe+mKKSaJ3Mq213VRYesQhmuHsMgLXlhxE9QlFwpHw==', 'image/png', '1c3fb179', '49b151a0.png', 1429364689, 11900),
(6, 'drive', 2, 1429364738, 'b74ebe8f', '', '6d019b64e1c1245ea463de79345e52b3', 'AGZRnqcC7wriclPxAi7siaw9Ptp/4qHvit/mw8vkNXSz2Hk77fsEqYgkGg8V5mMjThiZM9B4DuT12hKBXm7tjw==', 'image/png', '07af1318', '1be94b77.png', 1429364748, 11900),
(7, 'drive', 7, 1429364862, '77ac8bd2', '', '6d019b64e1c1245ea463de79345e52b3', 'jndr08AWmMofokg5TbY54wg4jdvBT9FRXKSaW58R1PfxqMLr85Pii86VNRzf5EUgT02Pg0d0EpV9d2JQpf8HlQ==', 'image/png', '90b17a0a', 'b8655859.png', 1429364873, 11900),
(8, 'drive', 8, 1429365059, '2e43ee74', '', 'd41d8cd98f00b204e9800998ecf8427e', 'WC3Djm9z3PrANfKNAHVPxrtbbEif4Wqf+QpA94YR2eu44I1PA6mctuwxSrGS7r9Tf/xL7GygGQmL3+4nLDJNUQ==', 'image/png', '68609900', '8ad3a70d.png', 1429365059, 0),
(9, 'drive', 8, 1429365315, '056ee945', '', 'd1883688fa28b0f520795c517faae576', '7XT86nE8qBF7TnTtm3tF1frsNhN1jP6LbYlkV74qi7ZPQK8HwzZxAp15u0X8DyAIquCXmOxdt3pFvSdDAjUpLg==', 'image/png', '12f1aad0', '83fddd34.png', 1429365318, 14890),
(10, 'drive', 9, 1429365454, 'c504240f', '', 'b3c620b4e54f26994512dcf93d6498e2', 'x/yO1/PKvL6aViGsoFTO8OGLCTDNWkc4kAAdHPcjf4CceGCwgwWxFuwJ9jNAURRu6qHjSgWh5MEPZxcKxiY8kw==', 'image/png', '43479fbb', '6644746a.png', 1429365458, 36956),
(11, 'drive', 5, 1429365555, 'a798b03a', '', 'b3c620b4e54f26994512dcf93d6498e2', 'nD885KwTGnvcgMMJ2Cm1yBMEqzaXAZGiYxnEVtk8Bo0ouZEJ3Pg5nVK4gOZb7Y0kGqVk5Gf53oRvH1j+epIvOA==', 'image/png', 'f4ccce7c', '760459ef915fdbe3f68970d0d62d3883.png', 1429365563, 36956),
(12, 'drive', 6, 1429365771, '5f3ea35f', '', 'b3c620b4e54f26994512dcf93d6498e2', 'Xkq1LNA+L9Wp30ftm4x31osSe98g+f3GfnOZ2Fol/8KvZUarcQLciVr+oQAo64loCEXYTENj/V6/q/4eKsef0w==', 'image/png', 'f8f08ae3', '84d0573f.png', 1429365776, 36956),
(13, 'drive', 7, 1429365780, '099f4fb5', '', 'b3c620b4e54f26994512dcf93d6498e2', 'WrrQEVoqfoRgkacnCf/G3/EZRmp8BWqyb7Vufa0mPi687hjJwEu9qZ0CqbQ1xE3XG4KjpaVdbHrjK86ZNsWl0w==', 'image/png', '9d7344f7', '57a97cb03ea0994c7f4230357f296aa5.png', 1429365787, 36956),
(14, 'drive', 10, 1429365854, '1c11a9a3', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', '7N+bvzQOGQwzCsIHWoIxEdJq6k9NmTFG8S+ZH+8DTWf6WL82wUZQSHsbGG6fvXW+F5ifpJ9tYoeX9jDznCiwyA==', 'image/png', '08f4ae1a', 'e2869f53.png', 1429365857, 36164),
(15, 'drive', 10, 1429365871, '45bd766d', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', 'LbxHThsMmxE/ufGr6oo5qhtcScPQledSmj+PU8gAr9LaoT9sIzUQGDmO8zzJjRDwi6T5zJNWGxcXdk2vdThZbw==', 'image/png', '588af2b4', '2f4861b1be3231110a218f8350fd3242.png', 1429365875, 36164),
(16, 'drive', 6, 1429379215, '4bdcb2a3', '', '88ad80e8a4aaea8c7a7e0b453e84801c', 'u+1C3sRLLj2nqcpOcrZhg4XW5NyTYdWmZBrI3i9mVoGMeL5QGDUbEABeHNxnHqJm9JuMR8yVjM/oGbeNJyyJIw==', 'image/jpeg', 'c62e8b0e', '4815bc31 (1).jpg', 1429379215, 3886727),
(17, 'drive', 6, 1429379218, '73087217', '', '40671ca8a56801b76f59df00dd01f6b3', 'SuCgm9m/9bIK6ysSsn+9+9q4RxsDJ2oSBckqJN6T6D4Ttrfs6tO3zGIy4Sfy4YwMEeSnWzO/emEnFhEsPK3teg==', 'image/jpeg', 'cd89ca0e', '4815bc31 (1).jpg', 1429379218, 2292541),
(18, 'drive', 5, 1429379219, '78b4449c', '', '309f667392100ca3b12b380267e09289', 'xXHr0zsn8Wly2Dk96td9I8JntvLWlID9aQr+pjy77gSPM2JV/MjxdIUz4npWp3FYTBwtqx7iN9f6zCIlmazLDg==', 'image/jpeg', '1dcafc18', '4815bc31 (1).jpg', 1429379219, 2292541),
(19, 'drive', 9, 1429379219, '068f424d', '', 'c5d462b4a06f45a9c0a87653411a3200', 'uPGWH+9PLjXzlLgJYqmDmYvzJPgcnIVPcdW/aKEjylX2JrOSLHxjKy3DXSrelLTNakj9G/aDIPtCeJGwzUvHzA==', 'image/jpeg', '26a564d3', '4815bc31 (1).jpg', 1429379219, 2292541),
(28, 'faces', 561, 1429945732, 'c0ef6fab', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'Gf6AV/KuZdQVqjKQEoY6PGGEk1Dd///z9387uWPq7MbcZqfRZ1m/FNnByaOh9EUtLxAYh9mKGeJyWaBWVzF6YQxw1e8z8fH6LvyGo2uZTBQgvA90Pri72iHRbWdFOSNZzm586Mc8ANaXF/p1amX1TCrXoKUEz2ITbP5AIPSRReY=', 'image/jpeg', '100df54f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429945732, 79563),
(29, 'faces', 561, 1429946080, 'fe813fc3', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'LEBX7TF9IGtrpp6DmogpnMmCXKqlytzV7PZHeD7VLd3Juv4E3Isqp4gH6UNV4Vhzniudl3IFzaxTU3fCwl/FJWG5SBnaUudx30QNMJWIhuUlkYeRet9fWWN/+JOrVHNsD+9uLbgS7mRoRD9vEOFsrC/kUhiwWoH3iBQn5MPgnKI=', 'image/jpeg', '1436e8b0', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946080, 79563),
(30, 'faces', 561, 1429946179, 'e18b79ab', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'JiFmsyZ2YWuJULU3+EV5jGUyvkaRZ5JrXT9JVTa+/6VqZ5G9+1YH+o+VSTWHM1V5y1tGuSaOGmYmJW0N4QGegkIY7QL3YCtrPJm5uxTOWyYhBRVu1a6OkyvU6ACZwa0mbcVM3QJdg/jupbwL3oRYogk1cE7W/Nzw4Y+Ley/GrEQ=', 'image/jpeg', 'feeb5d89', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946179, 79563),
(31, 'faces', 561, 1429946211, '7b36bcab', '', 'c4e033f58424ee2ba6a1df5c54694a78', '16CseZmeWF6UGlA8SvaoUJpkiTyLhRnsQEOMr58QqNxRTmu24G5NItlnW9wKNjom2W8I22CBD7jDqnESgzVCCPlIH4Qwy5eyFVuiFDSF7ybSsQbAGqSdtK/3gv3mC3P2M8DKo9wOVtF1txfYqtxoaCg5Naj0615UWsoB0LVUVnQ=', 'image/jpeg', 'aeaabb3f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946211, 79563),
(32, 'faces', 561, 1429946289, 'edcc9de1', '', 'c4e033f58424ee2ba6a1df5c54694a78', '6VbpBreJZ/8d4tzTE1arYdPDeiypaHUWspxTUtnRuc8ju4PHp6YT7uJwaO9HL/4VIE0UvXlrlbm6EY6bG2J6iMY9SYC4Hhtl2x9eXjvElYslcKQDbbSPrixRYvqZ1GlW6l4G54M6kvJHlrrTHebBw1wk1ZZsZJx9vWXiRLJm9Kc=', 'image/jpeg', 'cb31b63c', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946289, 79563),
(33, 'faces', 561, 1429946304, 'bbdcaa66', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'I/ZNaw0A7FLz5fgRrCY+zs/oP6TDcUfJ9cEhVuMQxXfmWZ7ML8RtJptBDsu+AVXiboN1rcD25qC88QqTwvuJ+dR8Vj9lbSv5iC4Cgy6vxG/k+FogvLdaRM1CbacnT6FUhQkVozVwrpBN7/pg0Dk72QFVOdorhAThNxVexFUw6Dg=', 'image/jpeg', '5db614b8', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946304, 79563),
(34, 'faces', 561, 1429946404, '4d241371', '', 'c4e033f58424ee2ba6a1df5c54694a78', '9LYtzPebcocWOflxGFuIzd+QRaVS4DiIpUGFofkxpEpIF7zAxb1hq4DBSY/G9ytk61N78pU68kMCYOr1iyNA9Rkb1GGeiMRdohGYsgbn2pkzj9GLKdQMWA0uFLH1ail7cOIa+Vd9qX2QA8Gfd6nxDuMkg7JoxXQyLos8rivfEB4=', 'image/jpeg', '4c439d11', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946404, 79563),
(36, 'faces', 10, 1429947076, '8106173f', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'BOX+nrO5h6TMwf5+WIBcsI2JARx8iEllm8pZ6DQAQmv5roylZpccMUj4an8YbEfGdVBJ1r8aXWuZ18fK3bzEUA==', 'image/jpeg', '7796ba2b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947076, 69608),
(37, 'faces', 4, 1429947110, '3eb5cd2b', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'qJcn3mDw0V1MZ4NB+rNuNcI3o260LjxTYioJflrSNGbvBxMbW/o/GQngHgWwod875Y7/6ojRjZObAfygu2WqaA==', 'image/jpeg', '35c8f9e1', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947110, 69608),
(38, 'faces', 6, 1429947160, 'c59dd9b2', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'ZPv97LtclVoSAaOv+xdhFCTKWie7gvzDs7gCCxUpo2bI11L+KNhRe8yvqkm6u1rVDq6S/9PmXAmBh/tPyF9lUg==', 'image/jpeg', 'ab3b0e88', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947160, 69608),
(39, 'faces', 2, 1429947186, '9a1f1350', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'af8iFBrj0R1Gw+n/0Ip7aRSOIgvtp93sAmhtKLM5QYZpc3AocfOrJl3d453yDqvaQXQ25tB92bKuC9fXO+o07g==', 'image/jpeg', 'bdaf741c', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947186, 69608),
(40, 'faces', 2, 1429947216, 'dc4b9033', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'Vab9jB+9gZ5pjLQSScRsZyPFc4AsYQRIL2k5GDpMumKbFdMCTvMstDUEJsSOHG7r+YOpgIhQxkfa6D0OCgx83g==', 'image/jpeg', '9a5ce330', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947216, 69608),
(41, 'faces', 10, 1429947242, '86cbd5fa', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'WxI32JFIkjqeDOu5FWOsCjtstT0s2Y4GcP2jAlEKN9bvVPnQKBvwJzNO9hfxezM2fR+mcsCc0FByYT5mgBAZAtr7EObqAnHZ3LHyGEJfhTTGO0f3PTePaPQ7ys43KSZB', 'image/jpeg', '0ea6cc70', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947242, 69608),
(42, 'faces', 6, 1429947322, '820404e4', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'zOeOcE3zsYJnELwLqES7pWCLI+Vlqg/Ikue+nb0Uc2mUuIrMzA8i57dyeRdgUwfdq2YmUdzjaFyYQMxQdbWYUQ==', 'image/jpeg', 'f0568973', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947322, 69608),
(43, 'faces', 7, 1429947410, '0fc02ae7', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '2pvbFrfGfv24ADgjRaOJJJGTWrJd8elco3TVhebLUXTbc9tn4l6JLfOs1E3uVjdYI6xHQfRiLAYRqoFHHlM6Nw==', 'image/jpeg', 'bd8c695b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947410, 69608),
(44, 'faces', 10, 1429947446, '90bad22c', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '7MugdbtZ7EHFlmy9SmtjncmtgLjUkbx7Od2x/UriL7TGGxyVlUyLRgyRnVAKPhUg4W/rEHiERLTPrU3RR0wCCG3MWqtAThE1jBoaq+j+FCvD4jHrp477+6PGXbAjnDrY', 'image/jpeg', 'f718da54', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947446, 69608),
(45, 'faces', 8, 1429948013, 'ab265d98', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'ndGK1zwpLiz3ctuBxoqiyCgIFt4TY7aL2xdRmEwDClXZILgMBtBFMb7dvevRS5K5Oc67mrrxD9gpfFmloszF5w==', 'image/jpeg', '80be6259', '1234489_638157786330815_1794467412252996416_n.jpg', 1429948013, 69608),
(47, 'faces', 4, 1429951501, '092ff2f3', '', '17b5102fb1191b7686180671731f91b2', 'geqU92/on0IQQLjA19wIt160oK+MtQV/SV/kfXxg1KmPCrVoDC8s5pOPUrJStSBxw4XkaPyXz4wshn/5MGMEvw==', 'image/jpeg', '4dad00aa', '11182252_1416413628676582_8957238758697593813_n.jpg', 1429951501, 15949),
(49, 'faces', 3, 1429952210, '42848c96', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'cwrXOSs6esmDQUSqxL1l7b1b/FRrh1k36QvGyeitJJltB6qEPVTke0dysikDNivPMMtAlOmCogNxf8ig5/+vvA==', 'image/jpeg', '7416ba14', '115.jpg', 1429952210, 37566),
(51, 'faces', 6, 1429954360, '37832c94', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'zYjtYWvCV85buMdNT9NrUqLcpXE8byJLuWT6EQlne81iEN8C3bmUaAGwvo0xzAHXpwVjzFOZHtwUlb0/gqBnYg==', 'image/jpeg', 'fe684453', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954360, 79563),
(52, 'faces', 3, 1429954429, '7a6c9891', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'ZpW0SDd8ZVItV1wsmANF8UADBI1WDr2aiVEwUcd0Qg2GgNIt0NiBkLPxQjHcBBrUeXMihYz/hvTgelhZKNpXNQ==', 'image/jpeg', '19153703', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954429, 79563),
(53, 'faces', 4, 1429954523, '8ca4d5ce', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'nrGnk6h4PcbMxK1azSjrT13RqAOKKivQvKCr/JKb+k/+ed/l7AvJ2278sNCBkNA1ZTLc5jXchjYiONTa3MJm0A==', 'image/jpeg', '5bb062f1', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954523, 79563),
(54, 'faces', 6, 1429954552, '0d76ecf8', '', 'c4e033f58424ee2ba6a1df5c54694a78', '+8a4fc/QmyKYZCm+ZES6/qqvPn8J3w/Zae7T3ZtIuIwFAq5ygeOAFUgzc21lIBhFpMqHv4MGt6aDoi1xivtnlw==', 'image/jpeg', '9e04dd0e', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954552, 79563),
(55, 'faces', 10, 1429954579, 'cca5da5f', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'djugqwzCZJqmSHhSU2WEXzJqD+9kPF3nKUyR86et5kU/sheDQQm/o29Egn5lbFd9Uws7RWNGv1QGloUr60ZIOg==', 'image/jpeg', 'b3597846', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954579, 79563),
(56, 'faces', 9, 1429954594, '38d6fd5c', '', 'c4e033f58424ee2ba6a1df5c54694a78', '3BoKkWJajcg/C6hA8IYcNreLUR8AP5GqbB7miMmZFyzaEscBDiT2pXUmyEb0blPBiuYnlYjZgNaYTy6igzeUKg==', 'image/jpeg', 'ec5a8084', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954594, 79563),
(57, 'faces', 10, 1429954618, '330d22a0', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'yow/wQkXSctFucwfOZjhUg/oGrqT+eZl+hwW3XRGL+gzXh2gEcp2fog1FygsJ3mFK/6LBmiKnDWc20Nuwcu57Q==', 'image/jpeg', '6d1f416f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954618, 79563),
(58, 'faces', 4, 1429954669, '4651225c', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'JaPZoVJ7x5rCeU8BjVZeTRSWLmrjdZj0YYxsgWUa5LH34/U8vURbrQ+EWOhhhXcwZzW4imfm1720l/Vur/gTtQ==', 'image/jpeg', 'a24ba065', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954669, 79563),
(59, 'faces', 4, 1429954701, '11a055c9', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'g2JK7N5mVfLZ2GGeNfwq6ZDM9p++n5/jCg/Ig8/7dE2jlcr/YSE3TnVVoaD4robQLu1LXLgpns3cNPRCUXjyAQ==', 'image/jpeg', '09fb1e05', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954701, 79563),
(60, 'faces', 7, 1429954734, '54010674', '', 'c4e033f58424ee2ba6a1df5c54694a78', '2iaeGjRrVTsvmMVDQ1Q5CxKUYHqCQLQ9eJc391zuz2EuRt3x5jK2cyXoyJlQZFoPitAM4q+KzxDjjaZYBLmvqA==', 'image/jpeg', '1a807daa', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954734, 79563),
(61, 'faces', 5, 1429954785, '282cace7', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'uvYME7Xh4pZxxylMdcTUZwwxsvRpE3cN1ZvoiAN9WURfa22Z1cgMKrkEHCv7n/igrPinsuRK2Tukvv/YyqvVyA==', 'image/jpeg', '950af92c', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954785, 79563),
(62, 'faces', 4, 1429954895, '50a9688c', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'V45KnYIbygBKZNYDboyrByX/XyuBaNd4C1JBaCm/1NoddMrXLsCqFFhFQns/RsJ7wMi94wR1tXWnJrN0ZcuB3Q==', 'image/jpeg', 'cec34abe', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954895, 79563),
(63, 'faces', 4, 1429954952, '2327d1b6', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'WtJaYCLL7ECzeaqe2r3VaP776t9R9NcGQP5okyrX99TkjP1ldB4p7uDWmOStR9qu6nrh0tTyfl4XLt5xmGeNzQ==', 'image/jpeg', '504253d0', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954952, 79563),
(64, 'faces', 2, 1429955213, 'f3d9147d', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'nEeBVF8ADaMF27u4GgQOgohCLUhH8be12xUSDv4p8zu64NTQ1UocSKJy1jRiCE4bUC4S7NTrrj2umADUhZoIxQ==', 'image/jpeg', 'd0600451', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955213, 79563),
(65, 'faces', 4, 1429955307, 'fad9f241', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'v6Z5O8hV6DmKaaK6wS+g4Rvf3YAXHEQy2VjZJoNeZZEcYrp/Hg8j9Z++XTCPkZZxlgAJvu1bNbwaNxdc6RJlTQ==', 'image/jpeg', 'e789bf9e', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955307, 79563),
(66, 'faces', 3, 1429955348, 'ce3ac646', '', 'c4e033f58424ee2ba6a1df5c54694a78', '7RfiGwbviNlIFxlxkLT7Mnw3af0W4mjJgChCH90rqQP6ByjEwAl7+2/Umbi6bMGEwk5vBhQSEmFofMPox2jPQQ==', 'image/jpeg', '534394cc', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955348, 79563),
(70, 'faces', 6, 1429961372, '44055703', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'fVWvzgxWpEfl/L3m71F7oD/cmjQAF8BWlO9HSCSQv/D9edGj7HZUXd0EFamIgv56juIBAZqT5MTjjasz8j69yg==', 'image/jpeg', '198be059', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961372, 79563),
(71, 'faces', 9, 1429961493, 'f5976e28', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'HpN8Y5aWm6Oo/xF3KVD+EGZBUc6FKh1++EouRgujalUbmd1kfbIxOMvlUog+tjO3eTlcKZda1swOJyxHxtkUmw==', 'image/jpeg', '09a76061', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961493, 79563),
(72, 'faces', 3, 1429961538, '9a70b143', '', 'c4e033f58424ee2ba6a1df5c54694a78', '/CfgLsXEhOTOxYTEdtYuwfBs3mU9DWZfuXH5SuEqhXykwahIjQs3uSMnsgi4/EsvFHG4x7j9d7zOJhmwfLZdWg==', 'image/jpeg', 'f570e9eb', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961538, 79563),
(73, 'faces', 3, 1429961577, '0c3def61', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'lElQR9w0AnOyAOG1FSYuPBCh3BdJmypHphSbSqb2CKyL9DlRYk50o6MrjrwO/3W6ybybPHHSlXJEcshl5YQEIQ==', 'image/jpeg', '3def7ee8', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961577, 79563),
(74, 'faces', 2, 1429961646, 'c16bce21', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'QeJ9By+cZ+terRKJQrD2lYghivKOiLoNXD4Zlm6mYVaXNw0zzcnVjj/+biPBKfl6OVkfWwHpIymVLidez7MFUg==', 'image/jpeg', '109334b9', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961646, 79563),
(75, 'faces', 1, 1429961709, 'f81d8b9d', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'qzMYG/xyKj+lflv7UsIeir/seh2IaK/oxSAEUepzPgjd7es4cm1U2LYt1VxHJ0AjJ4VaUWnDgxk1ChBSzej7qQ==', 'image/jpeg', 'a950eb6a', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961709, 79563),
(76, 'faces', 2, 1429962362, 'c11ffeef', '', 'c4e033f58424ee2ba6a1df5c54694a78', '+4ZdBugi7Ip/aStDG80ZLAGX9dRHB9/UG5Qqm6Ms21Xjoly+vfHEzW3hIeaT5kq7GoF85tQXQs7J5GnCheLMeg==', 'image/jpeg', '6e968878', '10985280_458046784350741_8656683154662365614_n.jpg', 1429962362, 79563),
(78, 'faces', 8, 1429962406, '5eb8787e', '', '6102a0745b62d39feac33080816ec5a0', '/Ft2otiZNRvhNABlUkC63iUWdctr4xLIDhXRYbF91UeYlmuqND1vjRfuaPltYECdlZMgQoM+cqwsYF1zbpZxrQ==', 'image/jpeg', '218262a5', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962406, 84548),
(79, 'faces', 4, 1429962411, '9c18ed68', '', '6102a0745b62d39feac33080816ec5a0', 'gU0PRvBE0z95AveaB4bxQAg9SCZFX3Qa/FJKV4IKz0r6pGzF1tmOvfawu+47EwiYDhB684T4DgC0bcWE9IyrPg==', 'image/jpeg', 'efd47e94', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962411, 84548),
(80, 'faces', 3, 1429962414, '8a2918e0', '', '6102a0745b62d39feac33080816ec5a0', '8M2TkNLDwFDJta/tIBMHJchZ3EOeFcG1G0cQxOi6+zz6+EvqXlLlIHUq36zW3uXI7OUfQc4LQxUMhaDIeKA69A==', 'image/jpeg', '51230408', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962414, 84548),
(84, 'faces', 8, 1429970706, 'b4217fcd', '', 'cce20705f5896f290aca3bdf211ea685', '7ZByIks8DU9LsWWddIVDjoYwAggU5YIhD7nfwsYoOn0eOYPop+JJEhvOOnnRPmsHKV+XB4VpCPyRtps4dekZ+A==', 'image/jpeg', '88f83612', '10984130_640550226091571_7053296818168215029_n.jpg', 1429970706, 14318),
(85, 'faces', 7, 1429970708, 'c75d1367', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'cFKumwRFl3QNi5WxL5OA4TD739V6zYAPXaRTeoy+8h21LYyAKYyo7EBP+FTsaBazJv+WFo1GJPjMUK6XVTtJzw==', 'image/jpeg', '465e5d2b', '10847938_598251166988144_4544651445744408482_n.jpg', 1429970708, 48777),
(86, 'faces', 7, 1429970710, '365af501', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '7ebj4NjFzDlcc79C9pAiP8UFChTAIcV2SIafzxqXUjGIvPLlaEpNskExa9EIm1UQLNDFr9IZ6bL+mhdJaXgELg==', 'image/jpeg', '4b8bcddf', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970710, 69608),
(87, 'faces', 3, 1429970807, '0e059540', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'GveWVoJ9mbl5ZiTBCV0geXHoEv4YxYtE2GNFM0BCWmxwkGTxPHXmqlDIULgmn2bGUqEFRdLzFoEaTbJSk8tZQA==', 'image/jpeg', 'c309c2c0', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970807, 69608),
(88, 'faces', 7, 1429970862, '425b4f3c', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'iNclcvgJkMbDqsTezaSiK2J/ByTz9RfewZaf9cgz1b9gKnJJtAJxP/2XlMqnDpjaua4M5Btf1k7uoUK0uQMLNQ==', 'image/jpeg', '42d3c94b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970862, 69608),
(89, 'faces', 6, 1429970909, '585f15af', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'iyPJNuZsHEvQ/BULUPEBjwy3zWvvK1zPQZ/pC4+3RVKnvylZETTRNpC+ChUom58nmzfJICen7vwURFjUbidw1Q==', 'image/jpeg', '7fef7bf2', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970909, 69608),
(91, 'faces', 8, 1429971106, 'ed1d842e', '', '2cabf5729cb487206cbcdd8844c6ee77', 'a8qWEaL9mesgReEXbo18xND3owwdsggzbs56tORwDfGrk3iOpf2aVu2lkiei5Q6Hzw8XRUwTWWn1uWEQ5Ub1JA==', 'image/jpeg', '53fe462d', '11058415_1564846553801245_3565501618256816433_n.jpg', 1429971106, 41553),
(92, 'faces', 10, 1429971252, '331aabdf', '', '2cabf5729cb487206cbcdd8844c6ee77', '0qA4tM6+oGT19uawZM8uxQOUTXnnaGkO5p2DMUtstKOlyDvozrZWqKDa1Zjfgzr3DNbKgwh12YF/qWOpCHsBDQ==', 'image/jpeg', 'f3166dc5', '11058415_1564846553801245_3565501618256816433_n.jpg', 1429971252, 41553),
(94, 'faces', 9, 1429971374, 'e53864d0', '', 'bbe6a039d707951c802a937a76f0d078', '54i+KUAuvdy/kj5RIBF6dlcq0Sd0EGdTI9CQE7vT1rkIwvodU4Y2UEyFMkoLYh9YUWBKJoSD5V/89lg2C024Bw==', 'image/jpeg', '037f2820', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971374, 49420),
(95, 'faces', 5, 1429971436, '31dcc22a', '', 'bbe6a039d707951c802a937a76f0d078', 'vXkkxqQteTJE4FQZ48ugixuL7/8VyOpV8/uc44KMCpTFAFjCl4/tzm3PhQ2D63T0kn8T9072zYnz9KG/JCKAqQ==', 'image/jpeg', '4331a8a5', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971436, 49420),
(96, 'faces', 8, 1429971520, '8dd348ea', '', 'bbe6a039d707951c802a937a76f0d078', 'sLCkbKKLu9iNLCts4e0fhAhMH0FJFxSIsiPlj/nXcO430QAAFLT0wUH8DrHjsTuBKV0ulupz+K6xMw/7a8OUtg==', 'image/jpeg', '38a8c64d', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971520, 49420),
(99, 'faces', 10, 1429971704, 'edc9ae55', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'vMg9BHtCGU3z67FCVq8fVtDNeZbWZmsOpgJNwOyMFvL74+ATbzexUzI7ehyS5aVHyM1jbW8kSSOgu4AZjCKzfw==', 'image/jpeg', '7dfc7bf6', '115.jpg', 1429971704, 37566),
(173, 'faces', 4, 1430044854, '891d1e26', '', 'f6445aee92e64112a4eae2c1054da60f', 'x+MNqrf6EjHgyyAimqWGQ4LerHlJrD70KW0goz9Y70qifWZUbaZG1lIRmlS5fqOVG1u10AUNtXOmLaGj6yWhRg==', 'image/jpeg', 'c4f83796', '11061781_353337004858260_4178643732005538742_o.jpg', 1430044854, 294764),
(188, 'faces', 3, 1430048816, 'd008bc75', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'ZCc669mKpDOiRJANJQ2Fg/coIXNAPZMk+iYlmFE/YAGcvFlGu/nkXjXM3ktg2ATK0/5i/BmSLHgNRord+MzzFA==', 'image/jpeg', '92fd5b20', '10985280_458046784350741_8656683154662365614_n.jpg', 1430048816, 79563),
(190, 'faces', 4, 1430049555, 'eca0e312', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'dXCYQRVm78wsXwouPTH6Enn+YkJqIbGFD4eX0uMjC+InnxX3Ma7tKuRr1t8VOogFlK2ZsBBua5zISAxuTFCwTA==', 'image/jpeg', 'cdbc4e68', '10847938_598251166988144_4544651445744408482_n.jpg', 1430049555, 48777),
(230, 'faces', 1, 1430061307, '437d2ed3', '', '4f7fd659c3630112913d29e2769cae74', 'HDCIDqtV6z9siAv5ZbiYzGyYO7PCng8u4UkS1xe56L6fyu8GNz1OHk4HD7QWMVVvye98ZsGn5jnu93nTLHVGnA==', 'image/jpeg', '4d5ee95c', 'nhung-buc-anh-tap-the-lop-vui-nhon.jpg', 1430061307, 99113),
(236, 'faces', 1, 1430120225, '6191b392', '', '934b6ffba5b4547e1d8008f0abd34393', '2HBsiXFJzxqq56yCXMndbdOKWof7Ee05cI86WGZwk6mzI9XWFB8RAR1fm/HPMuM0OQEBblWaFauUwaIAPmDJDA==', 'image/jpeg', 'ec6c831b', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120225, 146301),
(237, 'faces', 8, 1430120233, '4e93f269', '', '934b6ffba5b4547e1d8008f0abd34393', 'gbLhYhkSzSlFfva7U9ll5+5OV4wg6yhr5TDseLprrwRdYHy+dYCIZW9rNlkm5ijr54oDAdnFsM7pYeeBfZ/3mw==', 'image/jpeg', '7fbf5d9e', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120233, 146301),
(238, 'faces', 5, 1430120239, '0784cb86', '', '934b6ffba5b4547e1d8008f0abd34393', 'hs8ieJRZ53cFpgPbGr7fzXF8cLHJkOU6lkv2n1t6y5zcv/q/QjjWoyd6KSv6oMndWFOrwyN6Yun/ndEbY1aOPQ==', 'image/jpeg', 'c0576c64', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120239, 146301),
(239, 'faces', 3, 1430120246, '741be0ec', '', '934b6ffba5b4547e1d8008f0abd34393', 'SgZGind/LIO3l7JJycfM4qMfMrwSHUgAYnxO3Oi10Hoqh2PyKMDc00cw+UPyYYWY98MQ5fclw9HOef8CSmcqCQ==', 'image/jpeg', '3783604d', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120246, 146301),
(240, 'faces', 8, 1430120253, '5d4dabb1', '', '934b6ffba5b4547e1d8008f0abd34393', '4J4ub7j52r6Kp0HpP8oU74HQOn/bHcirV5FX8bkRkst3ZGexjSE5VqBFDBvNTDpSYNovWC6oK5UBGyRg08E2lA==', 'image/jpeg', '2f52801f', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120253, 146301),
(241, 'faces', 5, 1430120254, '3c91c0c7', '', '934b6ffba5b4547e1d8008f0abd34393', 'tox+jzY5X/DjddzNggiHL3/bDy2TxHWUAS+IeiV04IiFS0pMIqYGfM5CqXPyFWHm/smr6NcQEdanBbwrLSB+uw==', 'image/jpeg', 'e92e5c74', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120254, 146301),
(242, 'faces', 3, 1430120259, '25de4f49', '', '934b6ffba5b4547e1d8008f0abd34393', 'b8oLe0Noz+evNlO2oWQw6saxD4lP3RBdcFIpHGVQKTwUFyHHoXVmxa6sgkunqaqHYfXJE8B121vdwsD88mVJ2A==', 'image/jpeg', 'cbfd7498', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120259, 146301),
(243, 'faces', 4, 1430120264, '3b87f1cb', '', '934b6ffba5b4547e1d8008f0abd34393', 'tX7ca6zW1UrpUhFA2Zs31ca2GZcdc5pnAFhXeicKPLBfhaJQBtwu2QKZxll2B/epjRADea2M3JtQlCIMbIr6Uw==', 'image/jpeg', '40bddf5c', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120264, 146301),
(244, 'faces', 8, 1430120268, '57b75e93', '', '934b6ffba5b4547e1d8008f0abd34393', 'BPEE2bOVgG1U9UX5t/1skbPPIMlrUrZt2Jai1SqD6HhPkepTYnQFDK7beYNFXcKo+Tan6fsTnH39azuaaptRew==', 'image/jpeg', 'bfd17721', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120268, 146301),
(245, 'faces', 7, 1430120272, 'a22e636b', '', '934b6ffba5b4547e1d8008f0abd34393', '+2XW+SKdZHxhMZTYTMw/edG53/tGO6kOZoexmBZVHXTv5oyMQAOzmJfugqv0oo+R/hpy2rgSormx4O9CXe6ukA==', 'image/jpeg', 'd249d091', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120272, 146301),
(246, 'faces', 3, 1430121295, 'ada39246', '', '934b6ffba5b4547e1d8008f0abd34393', 'TqS1IZKl+ABDuAl5PK4PKYL+yHDedUK4euN8Wchjpe4cId6/ha9+6LvGdI3SDv0xM6wanNF2xsao24aKGqoeqQ==', 'image/jpeg', 'd22c8317', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121295, 146301),
(247, 'faces', 8, 1430121300, 'e31ac20d', '', '934b6ffba5b4547e1d8008f0abd34393', 'JA6lzemcXo65+fL1m2ehPMY8saIL91igt7+8T9ZjU530G2SY2Q1aa1vkxaITbnnKuLHvwUXFexrdippRxNQozg==', 'image/jpeg', '80ee5ac1', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121300, 146301),
(248, 'faces', 9, 1430121305, '4742ff81', '', '934b6ffba5b4547e1d8008f0abd34393', 'Rurmba5Kk/4s4dU057+Srs5ZY9UVrfpS3SqjIRe8kMJoeyQwcmySQmr5TIKnx2ccUailS7P6NU1Lcc8j5Ie3VQ==', 'image/jpeg', '4d1f99b0', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121305, 146301),
(249, 'faces', 4, 1430121309, '09beacfa', '', '934b6ffba5b4547e1d8008f0abd34393', 'PcvQd+La79F2uRkKK6dU9/ELCEAeYcfv3OtZe+skO+QGG34fr42vmp7oE8LMXl8FL5kMGVsqPO6Z1RJghmNTqw==', 'image/jpeg', '6af73d10', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121309, 146301),
(250, 'faces', 5, 1430121314, '417c1079', '', '934b6ffba5b4547e1d8008f0abd34393', 'ps7SZQ5NvdGuS77XBcuwj17nVEb/ySd2cVjVx/ee5kEz+L0qzHxH2YZKqFBG691pLW4ALH2lbf+/pZPSwAl//A==', 'image/jpeg', '649ebe38', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121314, 146301),
(264, 'faces', 4, 1430125899, 'eb1b10ca', '', '8934d73eec4b5aca7bd2a5cb08b52b19', 'aePd95HgsZdygBzI05zCtf74rHx7jCEIbYecFZDMGlHWFGnAnC/0sE/P7TNTN3aEYqS6IHDvSamDmnOEyES28g==', 'image/jpeg', 'e52f758a', '11037216_745881038858595_9190097026788226341_n.jpg', 1430125899, 72332),
(269, 'faces', 5, 1430125990, '906a2b9c', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'O1h0xOfEc0wk9FJ+gGV8sr4nH+vUkGohzRFgJiwNDHpbL9GP1fLzDXWEpOLT/0WbruCAkrvHx0BlWFyS8GRwhg==', 'image/jpeg', '89d8542b', '115.jpg', 1430125990, 37566),
(271, 'faces', 5, 1430126112, '0bfafc9b', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'Hoq8nIDtYi6UveEnw7XA7PTIUK/MOThGKwRF055FDl7MUhTRWXBKX6kd0Out5ly24rp8gfEG0o5hJ9NgBc4EFw==', 'image/jpeg', '3c9e0271', '115.jpg', 1430126112, 37566),
(274, 'faces', 8, 1430126382, '9176dc21', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'rVzqPOCah9qFkLL9JDnhDe9dHrqnovwgifNgfHFy4LBdkz9mZbf2/Tf3h2qfZ23xJZ3lu7KjUSarFkW9nFmv3Q==', 'image/jpeg', 'e362566f', '10847938_598251166988144_4544651445744408482_n.jpg', 1430126382, 48777),
(308, 'faces', 2, 1430201816, '99b71f76', '', '30aa18e9939695e74a5c10f430036c6c', '6OzWipmcTmh52SKMGyCrxEqzAJGY+adKtCP7qk+6O2nr02+hmjsTii7paUaz+VgqSsJ6bQ5PAjg4U5PUXLyvpw==', 'image/jpeg', '3a5a714d', '11046687_383521038502730_6349441757754271948_n.jpg', 1430201816, 22205),
(312, 'drive', 6, 1430233303, 'd3a8d29a', '', '59a4659d3004f7ca6b52eae364a3eba0', 'Tpkz5uE7fVRu+/sN2njEkXqQuf2JazX0oDkETZpsYi2D0IfheqEanfR+4YFdk+jZgSMc7WOZXWc44spVH8mP2A==', 'application/octet-stream', '9891d522', 'C360_2015-04-28-19-55-26-791.png', 1430233303, 10576856),
(314, 'faces', 8, 1430234882, 'b079b75f', '', '59a4659d3004f7ca6b52eae364a3eba0', 'P8pyPNPplAEvRdA9C45OoiXgpZqVl1vQOsrExwyZEe4+xkHyYeJylB/AonvQ5bT9UjQYX3VABXdl2+4aA0Y2qQ==', 'image/png', '01276e4c', 'C360_2015-04-28-19-55-26-791.png', 1430234882, 956490),
(315, 'faces', 5, 1430235066, 'e0935808', '', '59a4659d3004f7ca6b52eae364a3eba0', '/TcxYcGeD8rqDZiQUkJ70Qb0EdsMO39C8MG5Wpv0RS8/OWwwD0rn3hx9S/7nALVD/LIH9i/R8p3F3rQs6RrXQg==', 'image/png', '442be678', 'C360_2015-04-28-19-55-26-791.png', 1430235066, 956490),
(316, 'faces', 10, 1430235294, 'f47d6e80', '', '59a4659d3004f7ca6b52eae364a3eba0', 'dhH3a6qqxloTcqDI1zl9ruCO5p/Od959ekF8JyAK1kE5YXQ5m6clZ4SEeJi7aZzI48qAI94VDqnoivOr4W1uUg==', 'image/png', 'e81e3aff', 'C360_2015-04-28-19-55-26-791.png', 1430235294, 956490),
(317, 'faces', 7, 1430235568, '9658dd2e', '', '59a4659d3004f7ca6b52eae364a3eba0', 'am0LP4/SIXhZZxMi4prV7z+nF9Y+4Mxbl+9uy6O/aGhVc2tEKrlk9AkQNS0gkQhRCdzypJKA6WWneUvsXTzi0A==', 'image/png', '02acfc2c', 'C360_2015-04-28-19-55-26-791.png', 1430235568, 956490),
(319, 'faces', 9, 1430235802, 'e8220501', '', 'b29d292f5349619e6944ec7c35af2c33', 'qC77YsW93mjopXdjB1Ay7DmpOQ276NwJiAeJ7OMoC6ahwloEDHtrkjqhcFttU4vpAYKZmgCV/CVYrkphplxRNg==', 'image/png', '7917c43c', 'bc3c5f9a.png', 1430235802, 993092),
(320, 'faces', 3, 1430235952, '9b965eb5', '', 'b29d292f5349619e6944ec7c35af2c33', '8PWbFebx/pG9U4Nlmw+iLqOEn2GOgTnG7fxGWb+OmilxGbbXwUou7MkdC/oHJrUYExKbtgNfKpy2ofSzKNpYcQ==', 'image/png', 'f5dd4ff3', 'bc3c5f9a.png', 1430235952, 993092),
(321, 'faces', 1, 1430236085, '71bb9980', '', 'b29d292f5349619e6944ec7c35af2c33', 'IprStT69eJDkHDdx3LJps+/eQGj4cU1Yyf8BW872FtkiAiD6hFmMBo2m2yPvDbJ6b8f9ClHcy2TfkOqqU0R8cg==', 'image/png', '38e0a4e5', 'bc3c5f9a.png', 1430236085, 993092),
(322, 'faces', 1, 1430236874, '604cc877', '', 'b29d292f5349619e6944ec7c35af2c33', 'symZg1XSVprJ11eLXSOC9VdWJfHe6MIQ8easpc+bFWYHVKurOfp0k8RE7lq7dDxyQBSvKb+6vYkZMv2giHqutA==', 'image/png', '74098445', 'bc3c5f9a.png', 1430236874, 993092),
(324, 'faces', 3, 1430295672, '0f4ee763', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'jPjCNksqoVbH2bueyPw0V8Vtz7t0AZ0Aap2Q9dXtAVpHfHAH1QDTYP3/pk5yuCamwnzHIxK0ne5YtY1XyaLojw==', 'image/jpeg', '63019bf5', '10985280_458046784350741_8656683154662365614_n.jpg', 1430295672, 79563),
(327, 'faces', 9, 1430320571, '8c252ddd', '', 'b3b553b30941abcd81ac7896f2e2e8f6', 'HqfzutMg08EuEE7RO6cMNWoxPo71A0NXiWXZikRWBZqqMbCiVGZ8p+Z4fdp73/gHryfCOfXlFrIctIloysKWBw==', 'image/jpeg', '0be64c4c', '11173356_628503133951364_5877760069393779979_n.jpg', 1430320571, 92465),
(329, 'faces', 9, 1430324400, '1ee205c8', '', '163093cc6c2cb87b92006a6dafdb66aa', 'xJT+WlKJesJ9eWmA5s5GdZ//5T+NOUeLr15oGo9P2pImzcnRrE5bm+xatdlDTA5XD2eg4UPJcDnDNQR7RrD44Q==', 'image/jpeg', '20799b14', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324400, 85622),
(330, 'faces', 9, 1430324404, '920d9089', '', '163093cc6c2cb87b92006a6dafdb66aa', '02N8GCm9MD0TXkpd5Bu1DrqUTPXBiviJ1ylCw3T1ZfkqjGlb4iNowYP0RD/x0EcF/4SgQTVpwUlIHoQrB+70iA==', 'image/jpeg', '62e57af2', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324404, 85622),
(331, 'faces', 3, 1430324408, '0cdca99e', '', '163093cc6c2cb87b92006a6dafdb66aa', 'gw4bGMElFfOz6S7cQCRSveVdu4cY6xfngyvBjWR8WbhgksTIeZlljGMfcmtYcgKsimRIKq4ZT87VZvBtM+w1cw==', 'image/jpeg', '2f590ffe', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324408, 85622),
(332, 'faces', 3, 1430324413, 'a9dbccdf', '', '163093cc6c2cb87b92006a6dafdb66aa', 'GJ5Gi20MO1Hq79IDlACdvSYzY4GWEsJfeRqWLubKX3yV56F9EzbPqTAVAB61mLr28MW+GcEKjFmXF99PqBYs3g==', 'image/jpeg', 'feca18fb', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324413, 85622),
(334, 'faces', 8, 1430325065, '60ed513d', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'Ga0NoQ1XtGGVU0Wkzs4ecG/ACdCzp4j5cGwdZ+nLHSkyubtaUvZK4vGcteVIObwui2TlxV/R1Mv5ENFpQF++rA==', 'image/jpeg', '7f4b8e1a', '10997097_431451950355779_1526286295_n.jpg', 1430325065, 73810),
(335, 'faces', 4, 1430325069, '8f293f65', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'ohwFND+HzBij9/tP8rWbffDlLK16mHZUS/gFTwY4f4G+9/sUj70e05bgklFhe0hcXA3z8S1XBHnpv2gPj6Cv6w==', 'image/jpeg', '35abf509', '10997097_431451950355779_1526286295_n.jpg', 1430325069, 73810),
(336, 'faces', 6, 1430325074, 'dac28e85', '', '6c576d37c2a5d0121bb74cb5b09d3428', '+5rph3W6SlNBsoeLGZ7ASU5QNDz33loJ3E5e6jScX7tvoUyK8tTq8TadMtbosxadGs/RI4ay7OZF2THZnNyTVQ==', 'image/jpeg', 'a8461a5f', '10997097_431451950355779_1526286295_n.jpg', 1430325074, 73810),
(337, 'faces', 5, 1430325078, '80e7139e', '', '6c576d37c2a5d0121bb74cb5b09d3428', '0T8nXQ5jc0mt51eBE2lb+SkTFLEu2lO3Sqwkij8HDrzg4S1cr6rhjp1R9WBkOl/CAsXkN7idQl00d064w4oimA==', 'image/jpeg', '6e31371c', '10997097_431451950355779_1526286295_n.jpg', 1430325078, 73810),
(339, 'faces', 9, 1430380653, '4b7a7c8b', '', '59a4659d3004f7ca6b52eae364a3eba0', 'HG8ddLhCcwopyEbfM1YYe8tEKzCmRa///98F7jVnCp0dh9ci3+hGSbotBNKVKO1+8yCe6colULqJMLYYWhehSg==', 'image/png', 'c3c2db4e', '0fc454ff.png', 1430380653, 956490),
(347, 'drive', 10, 1430404702, '23bf98b2', '', '59a4659d3004f7ca6b52eae364a3eba0', 'EgVy72RnZUo+zZ/UlSvlV9M+SGcO1KbjVTTsx2aYU2iR88vRTtzksNSfPaFF0+18tQW5mPqe9VCc5HuPnMgdvA==', 'image/png', '27bcee19', '94a796da.png', 1430404702, 956490),
(350, 'faces', 8, 1430404980, '6824a2c3', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'RZaDCogBmvRHagfjG/KGKETKI8eFew2w946vVEshU27d3NCsQE/NdanvKAVQd0Qq+40d5txOIvzMQaZ2yPuXFw==', 'image/jpeg', '01ceefa4', '11112459_1578533342400668_3637651088142192147_n.jpg', 1430404980, 50024),
(352, 'drive', 2, 1430405049, 'd5ce5819', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'PbOVcO13mdPO+hlDJjNAo0qPGRn9vMxiJ0VDCNGqmEjFNPyba8fpoYCkQknMvYTr/FCeQ7ycGe9/gr6Nw3CSmg==', 'image/jpeg', '7917763d', '11112459_1578533342400668_3637651088142192147_n - Copy.jpg', 1430405049, 50024),
(356, 'faces', 8, 1430484817, 'bdebb9ae', '', '44e8a00763cbdfef4a66f30e6a4fde27', 'D0GDiAWJ5+H47mGHzaTeJeQhPKR1Mk9szGP6SeUFqbbcBo/aQcTSB5VSrjunllUHBJYBp+XkEdwmXq2iTnNsEw==', 'image/png', '648a1c5b', '0fc454ff.png', 1430484817, 582409),
(359, 'faces', 7, 1430484950, '71d5a20a', '', '3341d870c96c03952ed8e4a0970b38da', 'wRJJKcRUV1wV0idx12IEw4PddTlcZ4tRX+dS7G+B44p0P/0Cwu10mPmkWPP7860kVJuBackAiceE92zZF871NQ==', 'image/jpeg', 'c1a8f0e4', '0fc454ff.jpg', 1430484950, 292389),
(362, 'faces', 3, 1430486597, '779ec50b', '', '3341d870c96c03952ed8e4a0970b38da', 'fQOy2SMuHj9jK9rKdNWf5ZvqnfGV2/9/IotwgLl2mYPSlZLEBk8brKg2RQ2cUNbSfgCJoUuT+SjLDB2fL8YfKw==', 'image/jpeg', '0a0b84ba', '0fc454ff.jpg', 1430486597, 292389),
(363, 'faces', 2, 1430486687, '2cec4157', '', '3341d870c96c03952ed8e4a0970b38da', 'HVvxemOQajGd2H0OdQu7U7CJHiy5Uw4C7tBD41DSFYeDbWxiT1N1izAFtjAVOih+XIThpg5CLdbLR/iHYYl+4w==', 'image/jpeg', '2d104764', '0fc454ff.jpg', 1430486687, 292389),
(364, 'faces', 3, 1430486756, 'a26e9077', '', '3341d870c96c03952ed8e4a0970b38da', 'loCAFT1K4YfErJgu+jLJdBZlmn9wQTY1PemZu0u7cupSMnTlPSS1Vd1UGl93duDj4v1PkUq77P0uq8nWF6+yEQ==', 'image/jpeg', '6aee3aa7', '0fc454ff.jpg', 1430486756, 292389),
(365, 'faces', 5, 1430487027, '874376e0', '', '3341d870c96c03952ed8e4a0970b38da', 'aQFpVdMZkCd8ejBgtWJHmPp9JZ17bxNX/0MoPZ7xSv9OrRYXLDUpsIapeeL1OYqKwe+67N/2WuIupk+w56fkcg==', 'image/jpeg', '5f4c369e', '0fc454ff.jpg', 1430487027, 292389),
(392, 'faces', 4, 1430489541, '55d9da9b', '', '0a90cb74f6e23f994325fbb27749dcb5', 'b+SpPWw2sC5srm0Czr9pGNkbuCHuGYkYK5CySVZHema6v/bQG4Nj283AEJS1I2gt60Y8+fC19jeMNM909eYLJw==', 'image/png', 'ff467097', '0fc45x4ff.png', 1430489541, 50514),
(393, 'drive', 7, 1430489601, 'ab2b9748', '', '0a90cb74f6e23f994325fbb27749dcb5', 'SgpLrC5AjTGPtnHbuz5FPAB2stPYNUqYF2TxMBCSUQ4sWShsAsjeFbreS4HfaAh90lwdwqRaog01T+46Jf1AqA==', 'image/png', '405b2c0d', '0fc45x4ff.png', 1430489601, 50514),
(394, 'drive', 6, 1430489601, '4c3e8179', '', '3341d870c96c03952ed8e4a0970b38da', 'qok1jiFfE1KgCbLwvSaOt/o9yn4tg3L86vQM+FsCWgq7nbvVM/gl4da+BEHXijl2KK94u6FRvVESOd40tzPwjQ==', 'image/jpeg', '2097fb2e', '0fc454ff.jpg', 1430489601, 292389),
(395, 'faces', 1, 1430489610, '1de4750f', '', '0a90cb74f6e23f994325fbb27749dcb5', 'TTJsMY6dE9zbKv4kQHt04V/VcWRG6PkbDZM2KcqyX1MQe43c/lWQZZGwq2qKuWlFNVPf/AfDkT8CIVs17cZX/w==', 'image/png', '42004592', '0fc45x4ff.png', 1430489610, 50514),
(396, 'faces', 8, 1430490090, '85461113', '', '3341d870c96c03952ed8e4a0970b38da', '5vLhgg6xVz9VApIW7LvUmBeON737X4V+yDpg+gDoEUkCo68AWCnGgZtHVFQ2c0U4lr9D8hDtyUt5QC3kLchDaw==', 'image/jpeg', '15abf5b5', '0fc454ff.jpg', 1430490090, 292389),
(397, 'drive', 9, 1430490988, '74f3680b', '', '0a90cb74f6e23f994325fbb27749dcb5', 'gr9yJu8X6st6jfVrvNTppRYo/QMLznvUt0bRaCBrLKcM8YnIPtHtbdtHQ5p2KJPkvE0d4Q8GMkAE2DrUgEe0kQ==', 'image/png', '3873372c', '0fc45x4ff.png', 1430490988, 50514),
(398, 'drive', 4, 1430490988, '81197b4b', '', '3341d870c96c03952ed8e4a0970b38da', 'mOQrJOwUZIqCvQnrGXKwSRWbcQAL6CiSux6vjVl9z6pKFspioH/saH8dNqQXBSLl/74CevickGePa5XeYODkMw==', 'image/jpeg', '4c2ca703', '0fc454ff.jpg', 1430490988, 292389),
(399, 'drive', 3, 1430492130, 'bac643d9', '', '3341d870c96c03952ed8e4a0970b38da', '9fH9MdYSqAJuutjMzchzBgn0zf44mD5mVWHv+3CP0wTrZlKsqWRiiSa79SG1CZbBZSj6ifzYJ4AlL/FNGyAmRQ==', 'image/jpeg', '4dcaf1e3', '0fc454ff.jpg', 1430492130, 292389),
(400, 'drive', 5, 1430492130, '9046914d', '', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '/OoAWp+NBI92L0BXh1vqUhp9A+hMkA5zpp7kqUPvznAqcg/Ejb2em+2+aA41N2Hb4iSltDbdviK9Ixur4f8IPw==', 'image/jpeg', '40219890', '0fc454ff.jpg', 1430492130, 292389),
(401, 'drive', 6, 1430492130, '7c1b39c5', '', '0a90cb74f6e23f994325fbb27749dcb5', '8pwl5GqzOdENVIlhC3wBm9QNjNmIgysRu7QXT8YMR8D3D8LoQ5y+ohvFiBEcSNBM5l3YKsuLd8orCrftLtWSaA==', 'image/png', '54c0cdb9', '0fc45x4ff.png', 1430492130, 50514),
(402, 'drive', 7, 1430492131, '8ca90f20', '', '3341d870c96c03952ed8e4a0970b38da', 'LyG0ZLyW3j1Ja8Rgc967fGfMDDeESTFd0QSdh6dW7mDeZtZdnFGkXov1iIx1SL8Nb+wHpAf8vI3z5/N1ryF1iw==', 'image/jpeg', '76481406', '0fc454ff.jpg', 1430492131, 292389),
(403, 'drive', 8, 1430492131, '1c74e9b6', '', 'c5a0f8411a4cd417af6caf3e7f60b4dd', 'IsHAx+rcIDA3ZARTnNdVxggl46E5K5jReicg5DXZigX3rXnHMfpyY0XFORsKUn+va5hrrQFnX5C0FWynSIxylA==', 'image/jpeg', 'ab477c30', '0fc454ff.jpg', 1430492131, 292389),
(404, 'drive', 1, 1430492131, 'd4c224e8', '', '0a90cb74f6e23f994325fbb27749dcb5', 'GYiP3lMl3KpDcIcuZZB+3IqRoWT6NLeAOLoudWWqxcP6vfH4epgSpknQglyy/uF1I+wqnPeB2th+UnwRdMIjrg==', 'image/png', '20ba0d09', '0fc45x4ff.png', 1430492131, 50514);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_static`
--

INSERT INTO `storage_static` (`id`, `folder`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'swf', 1429190446, '0b2829d9', '62f691cf0d3bb2b8cc8300d1107ff931', '', 'AG5aUd7jzk17rxOvAsf8b5uE/3gduecPYB/7tbhvnW8=', 'application/x-shockwave-flash', 'eb0e03d5', 'gplayer.swf', 1, 50221),
(2, 'xap', 1429190446, 'ae46f3cb', 'a83ab83a3d43222e4ba77cf96e0074aa', '', '6ETAZpJ8OYMcqKL7e4G1mZ8usEhVvhWg2X+uBR8ZHmM=', 'application/octet-stream', '3e629def', 'gplayer.xap', 1, 50221);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, 'a2feca4b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'fYkUFHJl6X/A3GtysbOtGYynlyy8Fzw2yy6ZmrfvhJyr8rCZrUTbl/VdA/o93BoBFKICNyShi+lg3abAFfPssQ==', 'video/mp4', '42e0c9d5', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192096, 47959396),
(2, 'drive', 4, 1429192117, '2f26626b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'pQom57rWOXNSbzILKf2V8PpP4VnGRObVFTIaLv7ag4xk5eYIR60YdncVnA39a6UlUMte5ZnSdBWpal4OVO+zOg==', 'video/mp4', '9195bb7a', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192117, 47959396),
(3, 'drive', 5, 1429192346, '34bf7db4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'XpgoduXBmW1O6iMTQnuspP5isQ/7NPSrbe1ZL3pfYsnavFZc3bCXa7cOW0fpdfjZYpOtIFCnkU0UZl4Y/9f9VQ==', 'video/mp4', 'ddebafeb', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192346, 47959396),
(4, 'drive', 7, 1429192361, '42be53d4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'ecoSXvjCbxOWocg3yV5BEudrkp1LwlQRiSntYw1oBnNJ8aGQNCIbnT9b1v8M3j8wM42fZk24o/l10l/LTG+xng==', 'video/mp4', '001c4826', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192361, 47959396),
(10, 'drive', 5, 1429365454, '78502b41', '', '578f92e722a29145902e935ba20030b1', '/1G1B8/Rj/ClEDC3/b+bc0nmecBSzDCfPAK9iUhd8LfbAGyqOJHcH0AtQlqHI1N/gpymy+Bo00wHJ0SKCcLbQg==', 'video/mp4', '43e7e9dc', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', 1429365454, 11800047),
(11, 'drive', 7, 1429365555, '1434ce24', '', '578f92e722a29145902e935ba20030b1', 'hTXH3JskRIqlscIHku7uuzfqPPYnPEpAYc+VzGZe/cs/Bfd7jofjZKix57GUYFGng1Sht2vM3aOtP20zBaJYFQ==', 'video/mp4', 'd7ee3f3c', 'L&amp;aacute; Di&amp;ecirc;u B&amp;ocirc;ng (Remix) Ch&amp;acirc;u Kháº£i Phong - YouTube.MP4', 1429365555, 11800047),
(12, 'drive', 3, 1429365771, 'fc8a15cc', '', '578f92e722a29145902e935ba20030b1', 'Xc20uMTe8D7gmyptDT/rmKGU0yh15YrhRgCGgnLf/cCgU8nR728BVnx5sUh67sYmuWuJ9h1gNKNl+QVjvT8Nzg==', 'video/mp4', '70c9873f', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', 1429365771, 11800047),
(13, 'drive', 2, 1429365780, 'ac05fe39', '', '578f92e722a29145902e935ba20030b1', 'eJmi5a5s8Itjz1bKPlXBDmhKt2ZitDE0NPGxtdL2b09ePvZTDZW1drCDr2dVGq1do2QHlaitDqg5i/SI74/uTQ==', 'video/mp4', '0307a192', 'L&amp;aacute; Di&amp;ecirc;u B&amp;ocirc;ng (Remix) Ch&amp;acirc;u Kháº£i Phong - YouTube.MP4', 1429365780, 11800047),
(14, 'drive', 6, 1429365854, '8fe3ca8d', '', '768f0b5e43d356d8abb8b3f8569f2c8e', 'TXMEqcQSmIJag8JciTkDyMH5FhGwVs/QHwCsALobf8poK42jUW0b15DAkVETeBl6hO9m2PZC4/NEUBIyD92wDQ==', 'video/mp4', 'e328decd', 'Home - CloudFlare - The web performance &amp; security company.MP4', 1429365854, 10069607),
(15, 'drive', 6, 1429365871, '2257726f', '', '768f0b5e43d356d8abb8b3f8569f2c8e', 'E5815JnihXHLutWPBmSCkS+Db5u3zC6UOBND75Mceoa95tFJ0mM2JpEEMSu6+UfVTXrP9eybGyuL/gyfY9zQtw==', 'video/mp4', 'c98f61f6', 'Home - CloudFlare - The web performance &amp;amp; security company.MP4', 1429365871, 10069607);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password.hash` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
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
  `register` int(11) NOT NULL,
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
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `register`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `verified`, `dead`) VALUES
(1, '51e97042', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', 'lamhieu', 'lamhieu@giccos.co', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sH4sSk2ab2euudk+Tt26k03x/Ye75GTwpoZJKe8Fg4Y=', '0946083033', 'Lam Hieu', 'LÃ¢m', NULL, 'Hiáº¿u', 'lh', 1, 2, 923871661, 'm/d/Y', 1, NULL, NULL, 'en', 'Asia/Saigon', 'I created it. Giccos social network.', 'I see tomorrow.', '0', '0', '0', '0', '0', '0', 1, 'wall/lamhieu', 1410787532, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 0),
(2, '3d15fafb', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'QHqCu+ywO6slZ22otoJGVpV9TO1CJiJWWcxMbiO/kTQ=', '0946083033', 'Truong Tuan', 'Truong', NULL, 'Tuan', NULL, 1, NULL, 923853661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Saigon', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/truongtuan', 1414757503, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(3, '984c3d3f', '561ff2d840decaasdddbf136ec9682d22c7', 'thainguyen', 'thainguyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'oRNqTlcTL0ngnzvIH+vZ9U1+xeZT4QVghrwCcHL0e1I=', '0946083033', 'Thai Nguyen', 'Thai', NULL, 'Nguyen', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/thainguyen', 1414850443, 3, 1, 4, 4, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(4, 'e84211a9', '561ff2d8ecdbfdsds2c0ebcf8136ec9682d22c7', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'wH0xYlKOrs1MzGEqHkohSJD82YMUw6rewLBIxhsAsUQ=', '0946083033', 'Tran Duong', 'Tran', NULL, 'Duong', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/tranduong', 1414905982, 3, 1, 4, 4, 0, 4, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(5, '6a9e1ef6', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'minhson', 'minhson@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'Adn6fwgLZuTUheXXW0+fSk22rieUVvtoBOPJYAQDGrg=', '0946083033', 'Minh Son', 'Minh', NULL, 'Son', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/minhson', 1414988945, 3, 1, 4, 4, 3, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_contact`
--

INSERT INTO `users_contact` (`id`, `user.id`, `private`, `time`, `type`, `at`, `value`) VALUES
(2, 1, 1, 1410787532, 'email', 'home', 'lamhieu.vk@gmail.com'),
(3, 1, 2, 1410787532, 'phone', 'home', '0946083033'),
(4, 1, 2, 1410787532, 'email', 'work', 'lamhieu@giccos.co');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_education`
--

INSERT INTO `users_education` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `school`, `level`, `description`, `address`) VALUES
(1, 1, 2, 'm/d/Y', 1410787532, 0, 'THPT Ganh Hao', 'High school', NULL, '1'),
(2, 1, 2, 'm/d/Y', 1410787532, 0, 'TH Ganh Hao', 'Primary school', NULL, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1414828075, 1, 'user', 1),
(3, 1414828075, 2, 'user', 2),
(5, 1414850443, 3, 'user', 3),
(6, 1414905982, 4, 'user', 4),
(7, 1414988945, 5, 'user', 5),
(8, 1414988945, 2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_guide`
--

INSERT INTO `users_guide` (`id`, `user.id`, `code`) VALUES
(1, 1, 'explorer:select_a_file');

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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES
(1, 1424923573, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(2, 1425711630, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(3, 1425878188, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(4, 1425902195, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(5, 1425967943, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(6, 1426156274, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(7, 1426492718, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(8, 1426503780, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(9, 1426667251, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(10, 1426766353, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(11, 1426836092, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(12, 1426836157, 1, 1, '50ee0459', '::1', 'Unknown', 'Apple Safari', '10.0.9.2372'),
(13, 1426836292, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(14, 1426837652, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(15, 1426837701, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(16, 1426927703, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(17, 1426949773, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(18, 1426954818, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(19, 1426999482, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(20, 1426999489, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(21, 1426999493, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(22, 1427004681, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(23, 1427005357, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(24, 1427006996, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(25, 1427007038, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(26, 1427028782, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(27, 1427116355, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(28, 1427179531, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(29, 1427271401, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(30, 1427284523, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(31, 1427284803, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(32, 1427286585, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(33, 1427297803, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(34, 1427331920, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(35, 1427439227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(36, 1427459726, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(37, 1427461977, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(38, 1427522813, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(39, 1427526495, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(40, 1427633980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(41, 1427716675, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(42, 1427809220, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(43, 1427809231, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(44, 1427891806, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(45, 1427897996, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(46, 1427982013, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(47, 1428238359, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(48, 1428328136, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(49, 1428411466, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(50, 1428469542, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(51, 1428473540, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(52, 1428474271, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(53, 1428479332, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(54, 1428553737, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(55, 1428653838, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(56, 1428667441, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(57, 1428742687, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(58, 1428765064, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(59, 1428773298, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(60, 1428773308, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(61, 1428773428, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(62, 1428773526, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(63, 1428773810, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(64, 1428814180, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(65, 1428931871, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(66, 1428932109, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(67, 1428932179, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(68, 1428932535, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(69, 1428937471, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(70, 1428941287, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(71, 1429106717, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(72, 1429187227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(73, 1429248511, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(74, 1429252130, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(75, 1429273616, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(76, 1429274432, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(77, 1429331094, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(78, 1429335701, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(79, 1429335974, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(80, 1429361980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(81, 1429377266, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(82, 1429428422, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(83, 1429537314, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(84, 1429600856, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(85, 1429691695, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(86, 1429712488, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(87, 1429795800, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(88, 1429851961, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(89, 1429862688, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(90, 1429939445, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(91, 1430031222, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(92, 1430059740, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(93, 1430117184, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(94, 1430120857, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(95, 1430121547, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(96, 1430145116, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(97, 1430200936, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(98, 1430214325, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(99, 1430295208, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(100, 1430324370, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(101, 1430380489, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(102, 1430384812, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(103, 1430399759, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(104, 1430471411, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(105, 1430486555, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(106, 1430490161, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(107, 1430499670, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(108, 1430620446, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(109, 1430643977, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(110, 1430655601, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(111, 1430660956, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(112, 1430802102, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_remembers`
--

INSERT INTO `users_remembers` (`id`, `user.id`, `client`, `token`, `time`) VALUES
(20, 1, '2b0bad37', 'ea7f2d79', 1453814608),
(22, 1, '6c6f7705', 'bda0b029', 1454909318);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_workplaces`
--

INSERT INTO `users_workplaces` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `company`, `work`, `description`, `address`, `awards`) VALUES
(1, 1, 2, 'm/d/Y', 1410787532, 0, 'Giccos Inc', 'CEO', '', '3', 'Author of Giccos Inc');

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
(1, 1, 'user', 1, 1, 1429192118, 'a563e8db', '183539e54667dddc02d46f94bc0d43c5', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'a36eb7ae191dd1692e80e2cb2783bece.png', '0', '0', '1f7a30ef62efff22dc0582d6ea60ee6e.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '374bd3ab', '0', '0', '9195bb7a', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(2, 1, 'user', 1, 1, 1429192361, 'fb7450dc', '63154d5661f774fb7d2d11701d466aa2', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'bbb55a2d4b12267706ddfc90a4d67aaa.png', '0', '0', '5450cb8b869148499855abfb22689b0f.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '8e2418ef', '0', '0', '001c4826', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(3, 1, 'user', 1, 2, 1429365555, '0b82d4fd', 'd4bfc50adf9047e828a28dbfd5c006d6', 'L&aacute; di&ecirc;u b&ocirc;ng - Remix', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', '', '', 4, 4, 4, '760459ef915fdbe3f68970d0d62d3883.png', '0', '0', 'd91db1f6a7f388ffd90b471b229061ec.mp4', '', '0', '0', '578f92e722a29145902e935ba20030b1', 'f4ccce7c', '0', '0', 'd7ee3f3c', 0, 11800047, 'h264', 360, 640, '16:9', 511029, '30000/1001', 184.725998, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 185, 125596),
(4, 1, 'user', 1, 0, 1429365780, 'd99b82a5', '42e44882afb0ead4c7b5ba3cadbda89a', 's', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', '', '', 4, 4, 4, '57a97cb03ea0994c7f4230357f296aa5.png', '0', '0', 'db3acb91b7c9557d9639e7b66044d267.mp4', '', '0', '0', '578f92e722a29145902e935ba20030b1', '9d7344f7', '0', '0', '0307a192', 0, 11800047, 'h264', 360, 640, '16:9', 511029, '30000/1001', 184.725998, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 185, 125596),
(5, 1, 'user', 1, 0, 1429365871, '2e034807', 'bd5a0c78cae8a275e057e63a8ec966bc', 'Home - CloudFlare - The web performance &amp; security company', 'Home - CloudFlare - The web performance &amp; security company.MP4', '', '', 4, 3, 4, '2f4861b1be3231110a218f8350fd3242.png', '0', '0', '4ab04dd0288ce290db7293ffdb924acc.mp4', '', '0', '0', '768f0b5e43d356d8abb8b3f8569f2c8e', '588af2b4', '0', '0', 'c98f61f6', 0, 10069607, 'h264', 360, 640, '16:9', 855138, '30000/1001', 94.203331, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 94, 107039);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 1, '6839d58e', '', 1429192117, 'Khac Viet', 0, '', '', NULL),
(2, 'user', 1, 'c1caa202', '82161083648835307bc2c21ab8e07009', 1429365555, 'remix', 0, '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1431409012, 166),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(1, 1429192847, 2, 'user', '1', '0', '0'),
(2, 1429248743, 2, 'user', '1', '0', '0'),
(3, 1429252108, 2, 'guy', 'c52e3357', '0', '0'),
(4, 1429331616, 2, 'user', '1', '0', '0'),
(5, 1429365791, 4, 'user', '1', '0', '0'),
(6, 1429365830, 3, 'user', '1', '0', '0'),
(7, 1429365883, 5, 'user', '1', '0', '0'),
(8, 1429428565, 5, 'user', '1', '0', '0'),
(9, 1429518365, 5, 'guy', 'c52e3357', '0', '0'),
(10, 1429537319, 5, 'user', '1', '0', '0'),
(11, 1429600805, 5, 'guy', 'c52e3357', '0', '0'),
(12, 1429600863, 5, 'user', '1', '0', '0'),
(13, 1429691716, 5, 'user', '1', '0', '0'),
(14, 1429852288, 5, 'user', '1', '0', '0'),
(15, 1430384846, 5, 'user', '1', '0', '0'),
(16, 1430384866, 5, 'guy', 'c52e3357', '0', '0'),
(17, 1430471420, 5, 'user', '1', '0', '0'),
(18, 1430804204, 2, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=528;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_block`
--
ALTER TABLE `users_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_faces`
--
ALTER TABLE `users_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
