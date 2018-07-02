-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2015 at 08:17 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;

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
(164, 'en', 'may_you_find', 'may you find', 'false'),
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
(364, 'en', 'question_photoEditor_close', 'you want to apply effects before exiting ?', 'false'),
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
(501, 'en', 'private_0_text', 'link', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

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
(195, 1429279357, 'user', 1, 'add', '', 0, 'status', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

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
(192, 'videos_thumbnail_image_mime', 'en', 'image/png');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('R,8VjW5Gzu9HiFC2zVqQ8jUZpdBjz-tE5jAxCQ87TCd', 1429337852, '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', '0515fb0a');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0);

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
  `status.id` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(2, 3, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, '17ecd421', '', '6d019b64e1c1245ea463de79345e52b3', 'gtVogaCEIvsnhCZxN0AFIKb1Sito/eSHqz6FAv2SnGLgs5G5rHAXhV1ahhwak5eatf9lS7Nm8aHDYZYujBoepQ==', 'image/png', '005637ce', 'eb8cccf0.png', 1429192107, 11900),
(2, 'drive', 5, 1429192118, 'dfd8dcf0', '', '0', 'R/4P0nc+HvgI7R6sHVpke/pR0gZsthC3SSO08snJJUlxXcYa4r1Ba1hdoCA1Q7cx9GqwgDrRVO4r/CQ6nmZKxQ==', 'image/png', '374bd3ab', 'a36eb7ae191dd1692e80e2cb2783bece.png', 0, 0),
(3, 'drive', 6, 1429192346, '4745168f', '', '6d019b64e1c1245ea463de79345e52b3', 'nwpFLm8P6XLAmfT7HtKvBiAkYmLmC6CDeFg869MYEsKiZiJdk9ZaxmFL3rDU42VB35qUiCvwjXoN11j0eDO/0g==', 'image/png', '76658e7c', 'ed6531b4.png', 1429192356, 11900),
(4, 'drive', 9, 1429192361, '317e296a', '', '6d019b64e1c1245ea463de79345e52b3', 'eEuFnaBM5gvAiYNVlGUdeltMUxtvlb0CysRxRw5m2xmvjrG6pUUDjpZQikvoiZL+6ge7196d2wRGvqYS5c+Y0Q==', 'image/png', '8e2418ef', 'bbb55a2d4b12267706ddfc90a4d67aaa.png', 1429192377, 11900);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, 'a2feca4b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'fYkUFHJl6X/A3GtysbOtGYynlyy8Fzw2yy6ZmrfvhJyr8rCZrUTbl/VdA/o93BoBFKICNyShi+lg3abAFfPssQ==', 'video/mp4', '42e0c9d5', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192096, 47959396),
(2, 'drive', 4, 1429192117, '2f26626b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'pQom57rWOXNSbzILKf2V8PpP4VnGRObVFTIaLv7ag4xk5eYIR60YdncVnA39a6UlUMte5ZnSdBWpal4OVO+zOg==', 'video/mp4', '9195bb7a', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192117, 47959396),
(3, 'drive', 5, 1429192346, '34bf7db4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'XpgoduXBmW1O6iMTQnuspP5isQ/7NPSrbe1ZL3pfYsnavFZc3bCXa7cOW0fpdfjZYpOtIFCnkU0UZl4Y/9f9VQ==', 'video/mp4', 'ddebafeb', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192346, 47959396),
(4, 'drive', 7, 1429192361, '42be53d4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'ecoSXvjCbxOWocg3yV5BEudrkp1LwlQRiSntYw1oBnNJ8aGQNCIbnT9b1v8M3j8wM42fZk24o/l10l/LTG+xng==', 'video/mp4', '001c4826', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192361, 47959396);

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
(1, '51e97042', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'lamhieu', 'lamhieu@giccos.co', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sH4sSk2ab2euudk+Tt26k03x/Ye75GTwpoZJKe8Fg4Y=', '0946083033', 'Lam Hieu', 'LÃ¢m', NULL, 'Hiáº¿u', 'lh', 1, 2, 923871661, 'm/d/Y', 1, NULL, NULL, 'en', 'Asia/Saigon', 'I created it. Giccos social network.', 'I see tomorrow.', '0', '0', '0', '0', '0', '0', 1, 'wall/lamhieu', 1410787532, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 0),
(2, '3d15fafb', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'QHqCu+ywO6slZ22otoJGVpV9TO1CJiJWWcxMbiO/kTQ=', '0946083033', 'Truong Tuan', 'Truong', NULL, 'Tuan', NULL, 1, NULL, 923853661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Saigon', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/truongtuan', 1414757503, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(3, '984c3d3f', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'thainguyen', 'thainguyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'oRNqTlcTL0ngnzvIH+vZ9U1+xeZT4QVghrwCcHL0e1I=', '0946083033', 'Thai Nguyen', 'Thai', NULL, 'Nguyen', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/thainguyen', 1414850443, 3, 1, 4, 4, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(4, 'e84211a9', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'wH0xYlKOrs1MzGEqHkohSJD82YMUw6rewLBIxhsAsUQ=', '0946083033', 'Tran Duong', 'Tran', NULL, 'Duong', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/tranduong', 1414905982, 3, 1, 4, 4, 0, 4, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

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
(79, 1429335974, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 1, 1429192118, 'a563e8db', '183539e54667dddc02d46f94bc0d43c5', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'a36eb7ae191dd1692e80e2cb2783bece.png', '0', '0', '1f7a30ef62efff22dc0582d6ea60ee6e.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '374bd3ab', '0', '0', '9195bb7a', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(2, 1, 'user', 1, 1, 1429192361, 'fb7450dc', '63154d5661f774fb7d2d11701d466aa2', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'bbb55a2d4b12267706ddfc90a4d67aaa.png', '0', '0', '5450cb8b869148499855abfb22689b0f.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '8e2418ef', '0', '0', '001c4826', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807);

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
(1, 'user', 1, '6839d58e', '', 1429192117, 'Khac Viet', 0, '', '', NULL);

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
(2, 1429253663, 2, 'user', '1', 1429938260, 135);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(1, 1429192847, 2, 'user', '1', '0', '0'),
(2, 1429248743, 2, 'user', '1', '0', '0'),
(3, 1429252108, 2, 'guy', 'c52e3357', '0', '0'),
(4, 1429331616, 2, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
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
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
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
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
