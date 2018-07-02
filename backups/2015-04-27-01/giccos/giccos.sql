-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2015 at 05:07 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=latin1;

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
(526, 'en', 'remove_photos', 'remove photos', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

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
(200, 'rekognition_tagdefault', 'en', '_x_all');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache_usertag`
--

CREATE TABLE IF NOT EXISTS `photos_cache_usertag` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos` char(10) NOT NULL,
  `faces` char(10) NOT NULL,
  `faces.image` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `faces.id` char(10) NOT NULL,
  `photos.type` char(10) NOT NULL,
  `photos.id` char(10) NOT NULL
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
-- Table structure for table `photos_tags`
--

CREATE TABLE IF NOT EXISTS `photos_tags` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `ratio` int(11) NOT NULL,
  `position.y` int(11) NOT NULL,
  `position.x` int(11) NOT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_tips`
--

CREATE TABLE IF NOT EXISTS `photos_tips` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `text` varchar(200) DEFAULT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
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
('flajkIxO0-katbiolHl2Z0eMUgzc0SKCy8mro3likw2', 1430147028, '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', '8855bb7a');

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
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=latin1;

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
(274, 'faces', 8, 1430126382, '9176dc21', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'rVzqPOCah9qFkLL9JDnhDe9dHrqnovwgifNgfHFy4LBdkz9mZbf2/Tf3h2qfZ23xJZ3lu7KjUSarFkW9nFmv3Q==', 'image/jpeg', 'e362566f', '10847938_598251166988144_4544651445744408482_n.jpg', 1430126382, 48777);

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

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
(96, 1430145116, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
(5, 1, 'user', 1, 0, 1429365871, '2e034807', 'bd5a0c78cae8a275e057e63a8ec966bc', 'x', 'Home - CloudFlare - The web performance &amp; security company.MP4', '', '', 4, 4, 4, '2f4861b1be3231110a218f8350fd3242.png', '0', '0', '4ab04dd0288ce290db7293ffdb924acc.mp4', '', '0', '0', '768f0b5e43d356d8abb8b3f8569f2c8e', '588af2b4', '0', '0', 'c98f61f6', 0, 10069607, 'h264', 360, 640, '16:9', 855138, '30000/1001', 94.203331, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 94, 107039);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1429948840, 165),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0),
(12, 1429542964, 5, 'user', '1', 1430318710, 52);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 1429852288, 5, 'user', '1', '0', '0');

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
-- Indexes for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
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
-- Indexes for table `photos_tags`
--
ALTER TABLE `photos_tags`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=527;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_tags`
--
ALTER TABLE `photos_tags`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=283;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
