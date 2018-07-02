-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2015 at 04:39 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=latin1;

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
(516, 'en', 'reply', 'reply', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

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
(206, 1429796482, 'user', 1, 'add', 'status', 8, 'comment', 3);

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
('tIB,7QRgEo03m,lzSg6AHhFU25AzQEIDnIEC6leoDp4', 1429799944, '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', '48051276');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(8, 'a9ce73de', '8a5a88d95b81c7d8ceb8e07e419b2701', 1429379218, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '201UDIuRsuPFDiN+ji0Habp8RKJdeVS+idi2hpcj0G8=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(8, 1429379218, 8, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(19, 'drive', 9, 1429379219, '068f424d', '', 'c5d462b4a06f45a9c0a87653411a3200', 'uPGWH+9PLjXzlLgJYqmDmYvzJPgcnIVPcdW/aKEjylX2JrOSLHxjKy3DXSrelLTNakj9G/aDIPtCeJGwzUvHzA==', 'image/jpeg', '26a564d3', '4815bc31 (1).jpg', 1429379219, 2292541);

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

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
(87, 1429795800, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
(13, 1429691716, 5, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=517;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=207;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
