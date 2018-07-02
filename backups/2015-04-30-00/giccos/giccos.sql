-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2015 at 04:53 PM
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
  `user.id` int(11) NOT NULL,
  `uploader.type` char(10) NOT NULL,
  `uploader.id` int(11) NOT NULL,
  `tag` varchar(40) NOT NULL,
  `thumbnail` char(10) NOT NULL,
  `img_index` varchar(20) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;

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
(207, 1429974337, 'user', 1, 'add', '', 0, 'status', 9);

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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

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
(201, 'image_faces_thumbnail', 'en', '150');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
  `faces.image` char(10) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_faces`
--

INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `faces.image`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(1, '21633547', 'ab3cd8cbc17c5049700cc202a02a8df4', 1, 'user', 1, '33be3254', 'cache', 'e994222e', '63019bf5', NULL, NULL, '21.33', '136.53', '324.27', '324.27', '2.9604', '1.9304'),
(3, '2a50d84e', '13d3dec10d7bcb6926c366abd661c8c3', 1, 'user', 1, '1671070a', 'cache', '88ed4b29', '0be64c4c', NULL, NULL, '-38.4', '232.8', '425.6', '425.6', '1.6917', '1.6917'),
(4, 'c8341c60', '1d6fcfae65277f11996809357403c938', 1, 'user', 1, '5fe812f4', 'cache', '8ca21b83', '20799b14', NULL, NULL, '65.07', '263.47', '149.33', '149.33', '6.4287', '4.8215'),
(5, 'c1c2b702', '3400caf109fbc0fe172e9ff7813f5576', 1, 'user', 1, '5fe812f4', 'cache', '644ecda1', '62e57af2', NULL, NULL, '130.13', '20.27', '282.67', '282.67', '3.3961', '2.5471'),
(6, 'd100169e', '109ad8835e9f7d1634c7532a93d64d3e', 1, 'user', 1, '5fe812f4', 'cache', '05ddbd99', '2f590ffe', NULL, NULL, '150.4', '452.27', '126.93', '126.93', '7.5632', '5.6724'),
(7, '1cbe4aef', '3960cbe8c88e89227b7b302d4f921b01', 1, 'user', 1, '5fe812f4', 'cache', '6fc97c06', 'feca18fb', NULL, NULL, '158.93', '556.8', '173.87', '173.87', '5.5213', '4.1410'),
(8, '648d38d5', '970eeb67e73dd967e888a66c81479a35', 1, 'user', 1, '32d0a9ee', 'cache', '0e665b73', '7f4b8e1a', NULL, NULL, '81.6', '248', '86.4', '86.4', '8.3333', '6.2384'),
(9, '7d856559', 'eeb446218dcfb6e8326fafb484fbea7e', 1, 'user', 1, '32d0a9ee', 'cache', 'dd7e7679', '35abf509', NULL, NULL, '203.2', '325.6', '83.2', '83.2', '8.6538', '6.4783'),
(10, '5debc1c2', '6a99b95cc1a87bca959c99a07dd2f934', 1, 'user', 1, '32d0a9ee', 'cache', 'b7fa2bdc', 'a8461a5f', NULL, NULL, '54.4', '120.8', '90.4', '90.4', '7.9646', '5.9623'),
(11, '248d0674', 'ff5b17e6b46c57b317dd67b77cb01c0d', 1, 'user', 1, '32d0a9ee', 'cache', '0a5b486c', '6e31371c', NULL, NULL, '96', '331.2', '86.4', '86.4', '8.3333', '6.2384'),
(12, '06291e5b', 'ac614e84d83fd7a6f17eac8030375ec6', 1, 'user', 1, '3d157907', 'cache', '31970202', 'c3c2db4e', 'users', 1, '272.78', '116.91', '427.44', '427.44', '2.5641', '1.5370'),
(13, '1bd65fce', '902d714c91d51c1ba010358363f18c26', 1, 'user', 1, '795d0a99', 'cache', '1b589cfa', '01ceefa4', NULL, NULL, '61.87', '177.07', '226.13', '226.13', '2.3880', '4.2453');

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
(1, 1, 'user', 1, 0, 1429379219, 'b01d0653', 'fee5909672179ff7db422c1092fceac6', '47bf294f.jpg', '4815bc31 (1).jpg', '', '', 0, 0, 4, 4, 4, '236c5e12e465fe2af50b81838bf4c99c.jpg', '0', 'a715a28c7a527fec1e2698f9b8e8c72f.jpg', 'd6a04472c937bce6ee751bd29fbcff94.jpg', '40671ca8a56801b76f59df00dd01f6b3', '0', '309f667392100ca3b12b380267e09289', 'c5d462b4a06f45a9c0a87653411a3200', 'cd89ca0e', '0', '1dcafc18', '26a564d3', 2348, 1409, 'f/2.4', '0', 0, 1429379217, 2292541, 2, '0', 0, '392/100', 1600, 'lge', 'LG-F180L', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/12', 0, '0/1', '24/10', 0, '3584963/10', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0');

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
('cDbAsTNjrxItqM1SNj7713z1IHQIS4wyegL7aCFDQX5', 1430405623, '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', '037ca871');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(8, 'a9ce73de', '8a5a88d95b81c7d8ceb8e07e419b2701', 1429379218, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '201UDIuRsuPFDiN+ji0Habp8RKJdeVS+idi2hpcj0G8=', 0, 0, 0, 0, 0, 0),
(9, 'ee75fc76', '48ec7e719e8c9ebc402fbd20f53d3df0', 1429974337, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Y+43ZfXpOri7s4LYoqVgyACAYcRS2SsQNXarkC69YiM=', 0, 0, 0, 0, 0, 0);

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
  `time` int(11) NOT NULL,
  `status.id` int(11) DEFAULT NULL,
  `comment.id` int(11) DEFAULT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `time`, `status.id`, `comment.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, 1429713683, 7, 0, 'user', 1, NULL, 'FT31nobrZDH1472m/oStm02yEbAitfHJv//eHCyUbps=', NULL),
(2, 1429796175, 8, 0, 'user', 1, NULL, 'PYqKoVX4jtitJzpCJ7XG2cnN/ekGljg5HS5cP+dmQVQ=', NULL),
(3, 1429796482, 0, 2, 'user', 1, NULL, 'N+XMxidfhzNtzJS6ByaZcunkES1Ux0DaRsbugddCXiY=', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(8, 1429379218, 8, 'user', 1),
(9, 1429974337, 9, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 8, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=latin1;

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
(352, 'drive', 2, 1430405049, 'd5ce5819', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'PbOVcO13mdPO+hlDJjNAo0qPGRn9vMxiJ0VDCNGqmEjFNPyba8fpoYCkQknMvYTr/FCeQ7ycGe9/gr6Nw3CSmg==', 'image/jpeg', '7917763d', '11112459_1578533342400668_3637651088142192147_n - Copy.jpg', 1430405049, 50024);

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

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
(103, 1430399759, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
(2, 1429253663, 2, 'user', '1', 1429948840, 165),
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
(16, 1430384866, 5, 'guy', 'c52e3357', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=353;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
