-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2015 at 05:55 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=latin1;

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
(527, 'en', 'comment_disabled', 'comments has disabled', 'false'),
(528, 'en', 'reply(s)', 'reply(s)', 'false'),
(529, 'en', 'show_more_reply', 'show more reply', 'false');

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
('c1aI70RJtYE1ku0haNml-pHvKLNeoLTPwMsjpF1S,Wa', 1431014140, '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', 'd3f91ee7');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
(23, '175575b2', '2e239e3562172fcf65c7edfc5eb1b575', 1430840588, 'comment', 22, 1, 'user', 1, 0, 'TE+Hxq4liSBhTqrf8gBo40SHyDlIc8988djA7ys47Bg=', ''),
(24, '6b3b7c45', '3909218fa2c30522dacbacee1d39ef9b', 1430840694, 'comment', 22, 1, 'user', 1, 0, 'Lg83Ny4+ZhjsKN6VrVk5Tm+0EadfKbgJWfUqbcqj3AQ=', ''),
(25, '91922d83', 'a6db4a0de934ffbb8cd12ae58d768d49', 1430840696, 'comment', 22, 1, 'user', 1, 0, 'H0x0z8RH6+I3wGxpRN9QGtBh9FU5lVTtkGBrD3RtQrc=', ''),
(26, '7fadbfe4', '1053d5fcafc3d4e8dff0c63815f2945d', 1430840699, 'comment', 22, 1, 'user', 1, 0, 'eQrpIz8H5qFQ+Ne3AYOoLHslTgYcqFOz1Q/b9tXb3Is=', ''),
(27, '1f0e0f6b', 'fc5b9e707c3614a7c84e2a10d4b441f0', 1430840705, 'status', 15, 1, 'user', 1, 0, 'vxYio1affxw77Fm1+x2GsoU9gOJBk4e/J3KYET05jlQ=', ''),
(28, 'e0f2d0be', 'd16c8c446e39892c02f75c48c23abb36', 1430840708, 'status', 15, 1, 'user', 1, 0, 'NgipW4S4zl06FVVPO+nAnckQlMFqPpDQKlovHswrnS4=', ''),
(29, '0facc758', '931cc8edd1a46d71cf4a66701c43db6f', 1430840715, 'status', 15, 1, 'user', 1, 0, 'fjWu7zdmxtmhBImmEiH5mYgF6pUPJosajf//lWcK6sk=', ''),
(30, 'c5209da6', '0f06f51802b7924121566f4c866929a5', 1430840718, 'status', 15, 1, 'user', 1, 0, 'XLrVS8A7dcStyHsp1w2JuW74wA33QzzHcajL+9u2HEI=', ''),
(31, 'fa75870c', '17ef09fab66ef92c56d2c4d357c2e458', 1430840719, 'comment', 30, 1, 'user', 1, 0, 'YCXWmjHHljScOwVuoHcmznqBJAH3XnezHMngscA6ezo=', ''),
(32, 'b394a988', '3b2fdc8cadb4e8ea6a00c9dc98a5ddf0', 1430920767, 'comment', 30, 1, 'user', 1, 0, 'kNFXCYWh7zpCWSXs26gCYu9KA8HlqWFFtBoG6hpSgT0=', ''),
(33, '9f453776', '1da3f85b132b667e9d458c011ddeee19', 1430920933, 'comment', 30, 1, 'user', 1, 0, 'YBT3AaesnUbMd4CbD7ZUzclkL/CapbNycavMpc+Polc=', ''),
(34, '896b82ab', 'dc2a9681ede95dc1d5cc0cffb37b33be', 1430920940, 'comment', 30, 1, 'user', 1, 0, 'bfjW8WXzp/IyneW2KtFUZenjdp4+1svNhkLO21C6uIw=', ''),
(35, '01365b86', '5eedd056434a1f1f96cab4092393ea9d', 1430977495, 'comment', 30, 1, 'user', 1, 0, 'Dy3+p2RBYYnUP7q+teKXvuMVGInAE6de0259HuDwpPI=', ''),
(36, '60e4ac25', 'a6022a5a26a4c372fe2e944a8fc7aa20', 1430977828, 'comment', 30, 1, 'user', 1, 0, 'xvPz0uOb9tAyD5GJ5yAJMZtSHybqSps6O5pk/9nPfNs=', ''),
(37, '4d39afdf', '69eab485d4330bfc3974ce03a878fbc7', 1430977915, 'comment', 30, 1, 'user', 1, 0, 'QPZL3GHprvuZ+esJrxF/a5dzPa1WBYigsxfjiKphv5c=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment_favorite`
--

INSERT INTO `status_comment_favorite` (`id`, `time`, `comment.id`, `guy.type`, `guy.id`) VALUES
(17, 1430926113, 34, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

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
(112, 1430802102, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(113, 1430920577, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(114, 1430976526, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(115, 1431007935, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(116, 1431008542, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=530;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
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
