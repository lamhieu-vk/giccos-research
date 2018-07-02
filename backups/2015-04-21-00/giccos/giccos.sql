-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2015 at 04:29 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=latin1;

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
(511, 'en', 'login_interact_this_author', 'login to interact with this author', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

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
(201, 1429379220, 'user', 1, 'add', '', 0, 'status', 8);

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
('OBHbLyEftJM8l6s-NtAGW5YHX5jmZfCMUatZXxCILQe', 1429603372, 'nAzvZMog/u8S64atATq3psDbhBiXtPjx6XFOl3fMEicFlv5/09ThrbFSomNc/1DUeNI1SvIvnN1w5y7XgBi8m7OVEFvXd8qG8LaVZRK+lTa32f85HTrQB3NjotNK/xEHkkIcN+AdhIves2SpNQgAMYlV6CW2z6fFKaEB4IcIsNhOF7bxZyL703yGe9baMp8jUSrf4Bu5YHHUJO1r1HNaYf8x6w4PZa7gOY7ao9oxsA93+76w61C0D9pcrQmYm/2j/fGvxyRZw93ZQoQx2eQAEMT12w1rv/bugvKuBz8DMvhaLGWz1wDMWPA4BvBdpX4llQE2h2flTVL/PqqOWy6rMGPzjuqkUXJWYGADi5ez9xigtrMu1c6qXkhVW+oKwjKnu+tc3BYwODMYjSF2Rl9/dkdX60DmfdEGviIJRuBYa/vev5rd/WGMS0/a/HyfKJXjYvw1H360wYLm+DmEMvmuh2jmU/7iRXkjgRUEC6yLVU8qjpOehLdVtx8CwHrrQ5UFMA2J9lkGmx5MepxemfOceyIVmJ04JR30KEsEM0u7gxEPksZCJRk+EAn5Hzzd+lc3r8P4BsEB3kwyMtV6ch2Lzo7/k/cR+rxExgPz9wVk1WShLxAUCwY+Wj7LjOPhmxZPas6qXJHvz1O9ea1wY7DOF2BJaQvA5ZxZRGsgJgPrTYFiDg9jrvsSnWWFRtrUmn/tiQGWbVVvv7+GUBjQzbmpJzBwNjD11n6gsjhpZxbnKY6xhpJjIKHgooiaHX5WBr8dPfvZWQSqaR8ZM+HRTVOhK8DipnCvvuOxsC0uPH1S0Cuyhm5iEVHJ4fp//wiC4dLNTQHAHVHaYKwt31uMgnBCdzZRBCuqAOU/9jEJfpD4vKSCfGSz6oshXXc28xFy9I3FU7YsRBvUlWPQr5MO1EGNEiBGjOC0fstCLyKf/Wbru9GSxGYC7nfQ7MaUcrPFvfdPnita8ZjeL2LQOUQwZtHFhIicAWVa+oTptD+FYvdi2wIgIzZDw6zpoEjYgiy5pQqkXF6koDgxQYB8zfg6NeL4CVhp/wWRF4HHMShCR/w6tdK3xn1i+op+/5CFyedgIwXHrK4JR+odehpPr7s78GCMrikdaJ0UbfEZjfx6V1k0sefIytNRMDX4HdhdmutLNkRF/helzBWOJdQ98j6EIInlWv0vEbF1foQt5gP+plk2F3eAeTPI+QpoS/YJgTPQswnv4YXBfS0C8wC0llLeg7OKSNxY2+sobVhYmrBFOwpexWD62eY5c+E2iAFvO2lPbERhJh3qC/1pAqSLOKyEPDHe63yio8RwXZXfF7ohOUsLkS0ezvXCq/kFnpniT1D+zb0/Qwt78J+en2YDxVjxz9V5WV07i2BdMEJkUVOUNd7gk5TGs+d0JgJYJ0GVuz0GZ/NjpASOrjGDVsn/Up/rzcnPL1wOQw1TFQS9d/CkRcix0CuQ2pZxaLRim7XCKw8A07tqgQc61I0/LadjvWsY5pOO5s815DpHDcRQNWGE8HMj+8VIJQe7VS+0AvluMlMPoHbWZ+Ge4LVLGFOJsDz8lNMBeHHeKzOVR2CpuNyXfOmcWuZmvd/g3qtfyOZW72ndcXXnXiItlsjBmLVHaOIKZFiOG3TNY/9vVRpFJfhtFOvKpvy01VfpRaQqqn4nTcEMkTSkono9ihZdYpLnmNtxIqPmTwVukIgTVcAPDD2UQA8LAGdKDdaKgJpYMcB/w3YhJz8k1fbk6DG0ph585NvnvlLHzU3gE+OUbyH1BzR1TRC0y+p1VRgJ92Iy30MnkmRmPxBSiA56VqTas4L1Ov54E0JGg6KHLb0cZG7x1utR0DnQ+ECtnkMwqNCmnsyif+FaLZQf23oQtgXnQT0L19pdTbUmuoxdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwvkfa0M0RqE7XwBBkoVxz6+2A/UKCFiSgp1RN1FA2j4K5A1QJKXUrbXU7gHAGOJ7qZcUJY4XlzAfYF2C4Qov0uLKzeJ+6tXxBNBdyfqd2L63sa7xuiGu4qHZzaN2jdoYd+D5LGQiUZPhAJ+R883fpXN6/D+AbBAd5MMjLVenIdi84OHBCd0aNnDvq/rkej/imuuYICChSIuCUAlWZogTlj2UPloazfgyGl8gwQLR/4fuMgkRxlz0FsPUChvc89DMJOAQEvYKLIyMAGTSfmSAdV1PW+9oTywvbWN4YNb0+tJ4mUqcQuXXLjDzzowwIsmbqGSzxwh4qI2aPFrOh8riPvbBs7aRiBastNDc8dp8uUPZ9U1Nz7ww5sAuQ6EjviK1LLTtGEW8YRHMBGac709+5uwgQC9VIeXKZFtMcGB6/ElxAluOcDxoON6H4sNkiSz7nuULN4GWoZX0Gfh/T6uWyR/iCutyDGCE394FLdsLSFBSzyNksgwu2xKEk2IUc5z8DN4zzqmD7khrWKUq5d3SXM1sPXZhvmBqm+1aRlBgGdXl20vS7VN0gzFd+bclOIsqNnQrufx+lKuZ9zFOWva+aBFHROcIBoqU5mFhIZxxRjjIQt2vifPEASTKcGWr+ejDqNw9ZviNuf+CYJuTKn34teSPLtEaggCVaYU8zGRPiIOhLJd2Wvc9SH8QQYG7TuHrDHH7jZTNO/s5v6UZSPOZjmdI8piya+u02z+xvbQY7ZWOcvIp1O15+6yra4z29F6+QNIpsulKGhYZKhMD3Je0ri7rd21s7YyGvIgPRLJW/EPF6pBjqP3kXaFePc+aIPGzcAev1dICty7DlGuAERkcc75Z9gPTdv1JxP8mzAkNskPY98XHBuYB41XcujTxmzSSVygOIzeDc6P+OkokJTvSJt+xECwyBVflXZpJRamD8VBw+zZA2n/ciV1/a6SV4TbOpxbsgN54wNP8jWHwpDRzvh4uxzK+ZA2iok/bgTDWlmtVbTQlJ1k1DTfBQmj/VTE3dsIdOeKks8HBRyX+jDcACwDcxD8cR/SqwBI2+JcO39QN6gdxALPiLvTak4Y79Fyt4BxwzpFh51DCaDazx8er3oQ84cDtENk2qakop7vd5QNWreUiXYArLnIhXl7W4zNbyF0AdYf4RzRIzqSrqaqtuwxp81Cits2YSe4M7o6Eh8YYaPu595FDqeO4ItewvOMYVOOGfzcg+KJa7jtAmPlSLfWI6Hy10Pc22w7RxPtnrKl2TBplcOk2WC3c+uOx12BqXuEhir7Q1CbzVVJ/9QodmNosoWuJ1eGdmQD4v3ecaJyWEMib3lxU14xNKLXwPEGWEfWV6BOkDfmjhQUnLLhdqJtTjsJ/UGSAKBBMTdHh2touJCzbtfF37jodLItKAzS8kgYl8yPqsngwCTOQntakWu5X7+iEruCyNlsS+lZxbzHFZpCGw+ZAeWc0sQHRRUrciAfaqXK8X2aIO+DWKx38kH6Ty4WN0g2EyPeTPVnaIxFII+6Yv2TRCRy2Co66d1hK24YHUMJNc8PDKmeFRLpXz30VyRq7C5M5LKxoUTJsvbT8HXQtpOVuDzA06BurfGmG8EsbRBbvaZZo8bNLBH4fwP2JszFGFo5JlIbEEuzA+qcEp4CF99MRRVm1d//1cnUZzjw9Ig5fSp+2BJNQ4U8xdGgk618I2mzzP/ZRI8SwcGu7h6UGVjo1NMWH08MHy+B2Oj0NG0ag4vFVvBwIaZ63x/hWolPDIN6hu3eu5iMoxR4O+xBCgsptKPbgI97FuN2SkXLZd4tcAtss6qYeL+hgFesJhSPhMwxV2orPqDBNXRiZMelTY/T1VOTolvv2++4dXmltO14yU7c6aWL50cajnTnLGuebCAKV5fHE3DSXpFxtMimaXzzA8NsGubPzDYU8gYbyt4qqJktb6rvausZRV6hQ/7GYqxmKIjX+aRgjwnVBP1xCo/UAhddJTgLZMrdNxsj3N7liFNGJ6OAGFtmapWrQ+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvOj7uXZviwRy+USngqB9pCSPD+t231UYwoLl03Sw4K6PczNa+O6yP7xZMziwFaA9yeCfIHOJh5a6xXmFbLGHppkL7SIJfL4V973xXpmMDAzIx3T05ly6/E9IK4pRGuqNMGId5gVGn5YIDbKDXnMqWv8waq1LXcQVh9gTOINSB/H2RtrmFl93aBxHxpssq5BsQ/40oFxbQTVEYnaxSl9KfNxcKMG1jEsCOv9W4ilvio7wkjianmu1xeo7KIkkBNCH7pvtNmmi8XeJCyJGCd5TRgeszs0Cdi3N17QUIbfFs1VyubTFXLAJI7zBVat3rHxj6iJPftKZ2eH4jUTb5NFAFt/3pSoGfXYFJiCzB664rMdEK++/0SkDOj6OcJ0+0XmP0Xu3BU+huji+uuQ/N4AtRlt7avgO9/uo6rjrzP/8y6rg6JYc5uFNUB/fde43oOudXASNIe8vQC8LPrENaSGWb8nEpSXCE3eQSvWCiyVezx3Ri8zmFnivvRyH7926lKEXC+l4MtnWq4RdjrG4e8/5byEmTkOJpXV2bfD8Gz5y+cVT58lupZBZHLA5EjN6/Yq5MG72AVXmNl2KV3rVmLNxrbcapUmTdIxGGaSEqXk3vtMWDTNUyhZ/OBRzfk9zt8P3CVwvYipuU/INuvOZdjwjMvelLx2hOfNBKLkqXNUEiY5DqP9YyyWjFiTTaCygG0d4i5WNCiACtPS5sc46A5CeW6VqGaPCEI0y6uBQlbl0qsQSsursKREIkpx2XWFhLVrmE/48MXoP0E5yp2v2ZVwcmflQMaGDQoT0pVUuI379SsIEKvvO/rlJzTB9OMvSa7dN1144nxYwPmtmepPPy49vOSg9FSjX/qc2BXX3NrIr+bOuBBpI3uZVEIZm6lJCcle5HV6fXqP2lmod9O3PlmBt+4u0V5r0QbeNaN3CRzFv/Au21z0fK6UipUfMZBpZy5MkQTQ4qkSIlwzleIf7iPfunn/0pSXCE3eQSvWCiyVezx3Ri8zmFnivvRyH7926lKEXC+RT//xLb9XL7ZoceY/55/aaXI08RbmY0OMm5lJm/BSE3LnbpZgBLJeZ54aMcO6tIOp4G57AYV4J7yhHsmSFyGMcHpZ6QsBBhFLt3tpmeb66WjLLObjZiYY8Mdh4eHlFZ3D5LGQiUZPhAJ+R883fpXN6/D+AbBAd5MMjLVenIdi87wyrjemixgImjgwkM4nvr1amZcuVfbLn2+9YxLoBnzSGSS4Uo8h6Q1MDLl3bcISIKtdqGbDBYgsAh9ox5XrWsEMJ1s5bTmuwSyjb92OJupJ0wtGTT4qYTV3WYNe+hu39La62Jf7E/64EEM8EaJB5ekdiLgIl0qkngWnk4i6Eg9ECM/+NfCntsW/hMaTV5IUirI1EQLHTSIjjOsm7gifnp0Fe3RSPbMBv/Qgwum8qTpssHBeabIqNvqeEMeicrOEzKw+seUSPMEX19ATKu2jNLFa4EoeXf1zKtOhHsIiSzkLVthdzpKcxRS6jq6LR/7N1gqmNVi6lBPFCp0MSw+GUZEfGb5sqXul3RY1EX2z3gwl6L3Oz2KGgg2eEf5XLLLD7jHEmKk4tHzxGutrC2CM7GOTZpMYNI2ngp0rngN6jybEU/KZq8sEzA7o0QOBOBwFZlyauQC6OwHYb/B8bvMqH2H7FbIOreFpzZWrnwD/4FliD82+N+1V+sQ/grmu7brGPvBcDSFyvYxsjuCBt7+FHniumBXzRWWtGyqvpT+4aIUp6QvQUVmMBhfim397CqeVllzDGAuDLTYlY3+GzA2qQ6rQLfLzlPC6rbQIO8g9s6VTVHmKF888476xenOG4Hoy/xADRr7y+Af1m7t2OS4bhp2P+7oabTNPjSOECO9Ugxqc66YkL2glIoJBFR0FppfUdzRwh8YLX09UjkrDqRT3w2pWKBHjjJtFMgSJ7+x8AyPCO2FghYiDNXDyHjB/+1OOxQPpC3NaafFKzCvY+riPYQjEWm22/NeFNj2tju6yEDRrRsq7uenKns5JC6irbdOfgRV0TFC8azXRBqLNnAO1b0Fej5iImSBQNkTNu4Qn4eV4dJoA1CVmIo8JhS1Io1hlxj93FAGfyyoDyIUj7XWQpcA/dSQ7s3DZKpT8elKgu83ehM6ng4XfahPjG/I9/FiIbi7YMj7bvPCuyCzcZL/G7w+ZCW68ZGm6kdEWgpn/eicyUuCAaVdUZlKGco++3ehu6nmIg3ZIMvOekY5E4BlMxDGn+Vd2ShdPjRqPMJGKKptuIsuepXsVOUwWUYhIuPWCWo8/ShG7Plv7MfawUceQNK6OX4dGR6w5RxvQAw82sbiQYPilWDzi9aE7oYelpRaeOW7r9YB/kEnmjnKEEsnHqEcvaFfQ3ePtJ5Dx5XlgGQKcgckkpu/UaFCzlJtzxJ/V5UJ0yUFH++SdYuaxaLNmlbb7Wa9nadTPtyH8cuzvkJsOHGS/eV0LmE9t8PmrwM7jo3keHN7yJRa0udUKa8beCNjEECfzz2Vy3pkAz8NhepKsf+qbvKvDT7ZJOp9Bhw0AeOVACm3tkG8JbCFVvMGmeTLva0TDDVnkDicO13CcTeCxvc1iHDquBeNuYF/vDmX+e8x9/6CP1gwsJs1lc0y82Y+ObmtmtTYlCWhWHt0pC7WQtk5TdkX1gk8sZqm4mf7UBtUDWWztD/5Rv+CVDiviaUFfSpVa2Vq9N2Uu8OViOBK46WfaO3M8dUVoC+xp9JdY5bZ5sC1Zt4nZfQAGHPANCpkLnavNd4n3lxs0dRFpiMmvagIFoFlas0BQ44QVPBSjkVIPyDBHLptFZHte+4utxtv0u0yrxa7U+TjpIV3+g/uz3r0kvzXA9kZyVjgSnAh57+pExsqYf71bvyOzqS17/r4GLmpPzsi/mTCXcGrnamt0L4RVZivJk6vqlGS4iYwmVPN7A5yFrUgrjKkeAXSTJ690vD3XshRki75vh54oZIPBz2F+3paxy8v+fFsH9EZ6y9+u4PuEL9Bc6dixQxVCRPYwQ69nnq29VGVZSZrRHBccL2BrTWvqtaDIltoOA7CTRLSBPBGJYJLzfYruKK87I3OH7l7ObJYZ5i08/1Op2meh4GmbpO2Ql+CFnojsnN2BthFQ2j0m2ox1EG/eRVT4XPIOXBRMCX7Lf7gbvE3GJq612k/fUsLQVR+AjZ3/eYW96O1t55B4fQtv8TRjoiMJDlpDSbr76LfVd8JhN1PL0UZkrKc5/iQuVeDO5NJnh4JJuJigTDzTRB/v9ercCGcPYHNvcFh7C+xek429+hIWdZ0dIFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnso4eBlMu4yKptqHAW9zm1q4yo50cqiO+ziqEH9VO8UHQjBmK3+esWHUfRATI3ly1/plI/6ToMizN5eSCFw3i/fU+0gSx7Eak+cK/sUxk91J58Ba2NVeH5N14iHudOQvPOAmyJ1CLofqK8Uq6KWhhPi3v5n1ANy2rnUZLwKvOxUfEXFRtuCZdjz2RvgveBsHj17PEuNpE3V5PqIWMIjKx6mJv7Mde3S6EJeekE4/te1ho3q+tork+GtkDwgOQiEN++TYXTD8cCTSlcDkXvTBGUFd8DvY/6aGwuqIBZOIf6kc62SI+M64nOYCAZQDlV+GEWHu/3hxaJyRSGw6r0KsPKF9adRXEf24Z5YdWTuyi3f1uPxCPWf8T9wqUJnqFzan9NqRC0RCl9jmGECH51dZuiLJun3fl62b5LuNxCTkjmjvRz6iCacyZH+UpnQdDx6Ql/NWovj+Eub0xXInp8sr3dfk6hejWDmkHi+FmYNVEg+C4F87FgAeLiMBO9ufpYK9DnJXaHlefCvi/fjdqGVjnOH4P5P/TZz1qhvfPFIVRep752DzI6sDd5DuSKqx9sJVtD+mKue/8o/ZOkneJ74XzIrvNTKN258QQf0gQpcfOQCQ+GJQOMl5UM3f+AlfZ8rp/QYTk94fjGws1Yun1q76891lsF+fiSLlmQm678xs6/zrm0mxJrQaijUgFV5s1UIrPtUpSdcCKDHz2sYGwqk6G6AGFuguSbW4qMazd8gBsCYF/hHMq5W71VG3fmFW2nItbPTnRZcAe8Ln7VmyIOzD/zwlQQcinUrpJX5zpknlSX16mU737if7meMqgBf95XBdxyMQ19HPWthddDRc0xFgKDnKHDam5YX4B31DEJMkF20+mVa8VwrFMT+DkQp9GGheQiZte2w7Qche4endcgmxeNo/G08POxAm2R7VvzLvBnfF/79YNya14zebOSL9H1Vfmg5cWksikr6/rqs9IT5cpdKJdDsMueGf1YCxsUwwi5ywq8o54pLraEgnUBxgWHz1ciG029Lu3wIWGnWbGfUtKbK3wXXzaqQMpM/h+JbsUlynuda958V9Ct1LYsFj9W0vSrbdzZ+h/0HN2QZ3/iXl0IlXpYPg4jY1XIjqUgsof6hI/QnXrcrY6RAxqP9EtOHvOqtUD48baMsEuSkM4P501PsjcGnjc1+LmzsK7g5S8YKgPksZCJRk+EAn5Hzzd+lc3r8P4BsEB3kwyMtV6ch2LzkTraDxaBR/v0YKSYx/ZOZA4fpCThnlwB9TaVdyVA6sOJyPutvf6FMHB+8wXy9d8QeXmoAKIUBw6kpxWGk1BQaawuQufy8O3MhHxzKsMUu8ti4YZFppC2aHRz96b/DUC5uNSz3GasnofEAKkgOqsWJSn+/8cJkYlXFfLfrlEnxbxgWp40Mx6mkXUrZaGV6CpHqbzU+BaDKNGau/npYaNsyfgJeR3JOTvb+1LTujkcJ+3lmnK+42XlYlePyk6bm6dO4Yql8LIj73T7/rJfLpOuXNNxaGqGDqF2/VUKF0Dr+kxEjzbPDUMySYvAvTPQ8up6+wlxlse1pWg46PC45J4dMy7kheJpeVhwqugEZV+wPBd0nJ5lXZI7xEljd4Q3ssDhm4mV4LT762LVvgW8gl6PfTcabNZg/bSKefMpIfUSDI9wYmz1ASNBZ5iF0KxrZ5c8rP7hT3k5K6IEGO+pwbCVM/WT9AwCaLJElnDWh1z083livv2W7ORnfctKYqsraNlY1k1zeih1M/3wTpUb67uorrqGojmtTia1NbZnKKNlmXX0w9rcsVt+NO60vQZnH3qsfLxyOt9iPmowNZ6Sx2K73GQ7s1PjL/dxxAS6yDRdHnOe9zkLAM2LH7GwMfRZ52qaqKkGfWz0MNteVbOjJ9jPHgWsP1j1evFt+81i/MfPdhzft7HtnoTn1RJwnsvC3Ftc8iDZcba/WgP1iJtY58q1P0ThD3jw9hL9FcP21m61T+1KKLEWtn80q4XLRmDwi8oV11nUkUEYjk3PPkpP3XC1ABpNqZQawVE47BQT2hUbiG+w663R9ovhLYcRUiW2L/Hpp8HyzgkGv8taRdE5b6G4R550LEcgmPGQdB41zqk+Ct8XssgNtU0Lcgcpv1ylU33cMRA8maGjr1mdv1BMnBQj/IAlqxU05KIOtqhGhDp5vEvAjrm7LkQmkeY1Cf3vcn6U8hWhh9ZzomNLDqVU8eAaK9SuScwqrUCF0vJoSQUlAedcF9mN9h5fsIHKsfBhOtFCFgSPujbhO8grv1tc6TWl7PvH1l+ofADtEf0R44PvCTpjhpCw9zytXtd/xypNXg7+QwxqZzAQXgBY30ILtTXP8oKHg+9Ty7c2xtlgyAm3nVaqW5cpM4K8xz30QGvuAosqrdBCuZTHtQf7R8dU3SBVLGTijTz+Y9gcx9ECEuKfvQImXdUz7sOczYSDyZ9xfpnONDURHxNEJapp6nJUSfHiJlXL3bTpm5FgMSH4+u/QVxnANQEELyxdOmNA5L294i+t+K7V1fNGiIgqZ73b0kS8LVgjIry/1OA8zr6Vo+JYqEJFIv9eM9PpFHqudjJf5tdzVABysgunsDkO/mUfpNItAKTts7/zTklYDAs3CQ8OvhV4q0NsEhEPNx9LaxOBcBE/uW9i1zfDq8+vLQggLda59fU+3IPbI8p5/aJ3w0L4Hi6Kw2vJeAGMJYYGxpTLDt/oIjoqNfn3FgzoK7VCtoJmWtCk0DW9sPMhz/dKwZqc4j4YgUdix3qEgZ0T9dJmVR9ikRZ4pcmdNVWeck2YPRuF0s4LpxfOzIQw92yLCaZplRDcCFdYNYNH35LzvduIZGa7FaJoqCwhYGsVzSLLBJ3B9/Z7uigir5fRQ77CXG01FFKnC+PgHo96DZJUxkfGsczuVt3rc4JP0C53OpbclT+E9NUfHxSkbIo4KqnruKAfXsx8UVe36kwu4P4yKQaIkP7uxTzPPYpTAINa3DWWFNRe2RiJro/7mh3uqrk7KgV3xjtsDL0quy7m51b1vgds0uJPV5dKsfUGsSXt8WvBiBG/VXz4uNnkmpzZS9XTFvgIddQqGbrzB7DCb2faqIHp8oPNzWSzKMTX17IrhguZOEuCp6nzC2Z6KiQFlFi+wPiFvZgsLItxL5Sl+1n3IttjzVzRhRbS0wMHLnPq6XtwqSoKPwGvaeTQ1vM7I6LB2NdinjgC7pRzar6TSp7F9+kmGlLTgJ2CyiJ9lJ2UucVMrV4/LsAJgD44zh0DeVJT8R7uL2N9DrmFzD59g1uaDmSpJUFH005VafijUEwIJqvbrjomqWvC/o68xaONa4z745+TvKb34LEV41YeYeG1I+/2LfN81bUxHBMoU8LLhJrw29ntIM9CHyzNIKvnPw0qayWmgEMn3IVVEJrH3btBT5JGiIbJEPTPnEyTe7CbQZv1Z/RRtkanHnRcn3sMMGMfH00nrAVp8wtmeiokBZRYvsD4hb2YLCyLcS+UpftZ9yLbY81c0Y4chKc+eVm2/hieeMyARH0a8lAqSZ43ASm/v8CjfMpcu08IVTOAsWe4f/hiBRhWp71n2OCKMesf/28/ysKnc2wgDBgTeFWkEJNBvL14b4fuueKLDSHilILWE7ae0rCpbLcJPTYsXKjSs4bRxCO6bJx5B37AX7cQSpZSdI/wZv8taUuI8E02jOonPwXMkwBfhA/jeb8DCIsM1Pg8FuT1nM24yv6l/pWwRfj/M5JS0HprHMQpvhXU1h8b9OfnwtOCWDBSQbwh9wT6Z4J6hLX6MvyGw9MtTUMf8/YBKa290+N0kpSXCE3eQSvWCiyVezx3Ri8zmFnivvRyH7926lKEXC+r3naup4wI2Lz9kSXLudK5paz69HKLDNM0SbXfT1dvFQuQc3ppf8pyXsYARlGyAZrAT5stDq0eJ0arV6z1tPuRenxwBkWx/t2PUtp4morTW3mdK1+nQh5onzftzMvIGUUih69u7knVorp+qPg3C8UJfC7TC68JOAkXVQVLnfkqhtlTp65Ym4xtgmB19XK3BDuXCI7OtshW5Dm5LO80W5HhfZiZQO49tzBclqvpUASB2EYPCLA3gl+2Dz2LX0vjj9zfP8WGQm0QeDxGGOQTU4xkC9KpnI3dvdcnQOdMSepbBcOu7ja9XBib3TwyL0/A1WXaDpc9nSvXD1buDfZ1ZQnKw+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvO3OviVYU0a9O2+OXuWlAsHWeBkbVcfI7MvFpmOi6xVvrl3PDeCwaWkxjSwfB+rhFoq7ZUzim+Nd0rPnyBmHDSqE9lIOXKN9Qjzi9VvhC0qkv5auyCiqOl9/G95L4p5EUeRlMcJDiQCpBBoqhxNCKsYJqshnsy14r/qQVEH2ei1jQruhe0AFWJ+1H5oxqI+tVZkANsk6DDqXVC3x3rSVdieBmni64PPu+yNxFw47DWfkHDICZmRrRyOM+ajcb63ha33rPIRlliAmSBHvDg0EDb6BX8ABxxEK+nSoolfEKHKe9w+D8n5cMaYBlFjoqX7j18iwdbqK+aRSBs+tvEOmXgIBZWh/UVUtBX48mwu95p+6N/ge8wLhrodrXUVIrLMquR+VnDSMrPFrr8Od1NCoFstzVnWzWSIu/3l+pmYE4n6JOVCKdRFuAMwhALEdVYghDz4ere9nGJHetWhc7fhSEBb2jfNCJ5cfqaTzAuO1tHvoFxFgAIDmvQ6TYGKdcguknWfjx5bdhj9f961JflrCynwKppQ6lBNXAoa0+uhCzegUbqjo7AqCrm7FYMpVdmSOmdWPjReOLMh+kY9lQWuHocCR3MLAVSwC7Ix1VYAaOgtQplCD22+nushzj5FJOz+nHYWni69D62jFumeVmovNG0facbU2J/FWVo0/Y4TE8tl1CogkbfCZeIrfSXXWhT71npKUO5QdGCk0nqOt0uSW7PsY7Hpa/rKpyDorqCoepGvs4m/w/GuT3riI5qXH0Yo5WO0CONmjTCwJy6AtTLRx5KlxgntS82hHNdtaOOnkQDW4FdO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY+qrvp3CK27XMi/Z7DB9FBOrv1hch9XSaFuggPa2TfGr9ga+mwQJDUYcG/v48WlF3SsycBG3ZoS1pM5ACAUx00nZbl2xISnYjjmRDzK1xtMLvO9mDpbnNSzaEu7tHzDHYSPmwU1/fN9RDQTi/rTmljlsLIaHnmigAwvyAzkb1iHZKbG6tj3Oz9VTZgNX53upLpAqGuuykC1dY7h9cBVlNHEUhKo2R0Wm2Ds+Up9cu/c0N1VM8ec3os6WqykFFnaeie6BnoeRSWOHjPOenRNzI/LGkBk8s0HlxzqACOGHY9vd0S6okoThMYskWPCrXOeiBcln9eA9V/4OGedPwoO4hY8+ghGJmdRpNPRkbOwn1N3o1MtOR5Lzx00bviHt0vPcRCS0dTyfZSWlHASQFihoUlTrlcSwdJELi4HEE2+jHxyo6kPkJpOQCd9aMAA/s1569DB5mR6w6tYNMHgDtmTVvdfYfBnchk4S76yUlqHWoWwINvydVuVx5QiTbXBf+TRtak0pXrlJLx8SklKvSQISoj2CbKw7ka2FkB50Y7Ed70FFPzQiqWCGVWNUvHt2ETAeEZ8/4vJH4tplHw1bnhtXt6rnrv2Kepiiw2w6EzqreMN7YyanjqR51F01eD4q5Aolk+5dwlvtPsX9rmYVxLdzFqCHeALxKLkA5IGLZpkJXpXLGtMJKWFQb3Oml8pL0Rfd9TtKWUH+nhIWOMrphjBEiKv5NtFeHxmfggy0sh4lxpHSeLab854yOo3I/bwVN5qGuoFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnl5qs/N55PaUZvXpN7UWMXxvzFp/jAgfd20eahwzromesZxvCKGBGEp1GppcfVOjbHRaSjvaBLybITORkMOFRtZGi6hra2vSf8l24Kx/GcPbGr54RsvgPYppRUiWXT9xJiV/TXtEaZm6qeg1DuKUMxG1pHzwvOU433LzaIQWELwc5HbiHiuKdiADEeAAlp3kYDN4opfVuliYNyN2pEYboK79nQgrT+ORxHIJfseQVOxovF/qGrTPuHQDsl4UDsY+voExxxwiuB/9lPt/P+mU+IdHiG2wgotMY9oPdz7IBKDynzC2Z6KiQFlFi+wPiFvZgsLItxL5Sl+1n3IttjzVzRgj0pnh+e8wMjf9PK+bBBIcnvlUT94HsnU3xZLl3GFPD4chMo4qb5TuHrJ4K9Vme9lX+gKSZ0gGgP8K/jJDRGphpb+5eGvTu/B2FNWigIF0ShZ/uf8r7UnutbbVuGoiyfrR5Ttjs72zD6jizM/tqqr/fq8ilbRG5lCWWZdifkk1ZNWjIDB4vc3nDDLw+VPK+LfYASYEOSbD7pHbGp/JsLEQzvB1eDze6wG8XupS3R4+Iu3teJPB0gJWRnhvugk/W5fq/iQbQG0fueYMAPde1OiRgqtfa/NtLU8dk+rpyZnUWNtDlkEd/YulUD8Rb+m21vqD9+rgMZjFrD6uGe6uceraBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ0oz+Tozm/KOUhEc1jh6kBCAxhpD8g5HXEtmJrWLpbjv4dEBYJcee611/DcSf//56VAnrNDkAbCPI0OQ19YJHRGwZOSVPJ/9YQhvrmCWiNl0GTYtPN46fxNHMDjlxx5QKdMX3D8pVqqSTj0QoAIyDR8fXUMfjorOARzHrqy+nUikimviVjAZ62A5PCwWYwmP+coeJBjkQHoViWb8Q0EX9inltHZ8c9gB9O11PDXzg0qpk4ig3nb+ZzH/I6JcE87LW/Q15u29ou5WhTfYgvUagS6eqE3AHwJiikYXof0hi+A9cYAVcQvhyupEt1kxezsF6a5/yw6+AypVms46Gnmk17uq0izdgb2N4C44w+eI05palGYNN/YXNh0xK5qj+dFhjD8PMeIrP6kIhj+A4Cpc/JU2VMrfmXa7ZlIive0CtGqfWZqiHDc6OHmKEtTOYz2jQyzScSOknlWKhrMk3lXy3nBGUpSuokbRIsszA0PtF69QojhZ3S3y0xIJFm1LvQY/Brfk4Kgh5EEd30KZHz3MPrUWBjdEfdDKojEmf3KPWATpT9HItVPRca2kLcrbD5eocMJS1sBJhYdydaOTbcwfywEC5cnBvBxrfVfT7UIxB0IcCRjclHOtTDXIdK9X6GP6PluVPNj76/lbpH5wydh0kPHfAWUEtX5/hOHQNW4VWgbX1fxt9klIkeJe2l0O2Rc1IIwbxrriv8IoK00SlU/ilVWrp+DAQr98g5nEE0363dyPKeCRvEYuUvBYU0VUrXaqO3e4+Zrfnz7PcEg1kqRIORqX1qyjRdBtp7w9EQOfIW4Hw0k52Sm8clkWEY8hduTDZNI4l4iZ8GahiHLkUgATHox9S0RrZ7cnW659wn1f/FVu+9UGSpxuAu17TJVBOMDPpOwT+o+HKBnSnA6Cwamq5NJVQQZAgvRIjQw5teYjFWDt5FR67vPZd9FxniFhypvO7BKJpiN+m3wnJXpZaW+8xfQL64wjvGZUR5lXieJhtnONsbVE7TvBvDxhPVFyv1+4CJew9A3ZzwoDUzjYrxmSQInVYwu4l32d3XhoNLsg/L41/1fESQ5eF9sWEm7bf3fStbMaRlaL0mqFJEzktTnNUNClcJa1HtgFW4Mzhrsg2v9tPUCF/DKYCrvv2aOVDAex4Iqm7UktauEyKsFAtEstZ7DCVv49SftKYcf0ci3uKCrdXuk/tCKQFVcFQyuj1+QpRGO2Y8IgbbEhzCzsLFWEhy535NMbKu0frbcbdqx9y9S7LTxykRoDAarxfl7E+B4rArxdagAxRjfoX/ciWAtehAUB9wNxRaqtrPnRnxTDc7AR0CvGwUc2lq2CE50vTbMLiDxnLhy50pZF2IFWpfH7QBldO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzYxOBWA3ZJW/0MtZTu5BoNrc/SqgKeQQHnAgVXdlMnd8ArPz6VUA5umY692vq46a1Dxz4s8kOy7t7YHxccV1sg7fHLA3TNx4rpphaUhFh2IKrNKbZvVNMzVrLGS66R8wvX/lHvASRBPMnZ62dWiDe2y77NP4mMCjAf2vfaeGngxwXaXdyr3yQ4tXNzRhRKSKpsGo1SkbBcxCYEZCfaxKEz/IOTGqCKQqqn5LMdjmXUCq2r/hrDgeqoNkHBGupSanzSfGBq6ALpS/r18xiN6UwncklghqotyMtcDSkGmu6WR1DV/5Bbzh2dvXBGBVDTbRNtO5R6i5uIIO8FpM617HPw8Z5fVO4R006T/X8jmIkc1MyvqWjX+C1sV7s2V50C+XkGFA1QYTZShYdQwgxtew5RijMvyX7eV4jCmCYaABnczfr45Nowr6sseB24ZkQZ+LR5zDKp3/Xu+6+mP2kcvrJC2QNT8JCVdLWfhXU32fo2DDfYgWoJHapKuApN5c5zkMiYe4v5f5idpgCaGR7ekxOhcEWSlh21REbWrHHQiQ6o2lNsV8dpzkmJ6fKHsMSA5ll4HN65rHS84AMnMcBL5mwNvNIkwHk0WM5jgON66xrDNaHyPlortu8YFaV+7jy6pqYMLH9H9L9c769w2AtgytR2gLyFmdUpGQrtFch1TQjWtVTHOVforM9DUmQkz8UOAdMvM/XEFzEeuil5Z2buP7FvVhdO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY54uM9N82OYZCvO32m1Xem1kvfR0KEt1J6nK0+VsSGR0gBGW0Tk+3Sg6L9RemwMHg138hxdXVKixpF0FfYU117g2V2do8NKzoMELGNwSj6S40wr9qHZriqB/e/eaWZZpAr1Ea9wtrBdyz52OraL+GnIQjN9R7JZ4m9fiYNTP9c6yjF0ztGHgjYfYGAnwgAxlKFp1BgSc1rV/pmYnWwKYzC857dmmIHW4W852ZXGZ3Rb5GHVBt7Nx6XUDfBtWbcHr0BCVHh6EnbxRWqEmnepeUWTg+lVjeLhMGvftdnBTzr1aVF3EuQme01iZWDpBZPp5oRvyqcIvFBhPjr4YgIbIhs6V58bRIhCFoCITVCU4qTBz8FWL/xyoR9zWk9XamLq/NxajbbELJreqO+l1WUc+YUUumlFzPbX8R4h5jNpLoGZn941MKlvurlXoM+5De6e5Ujr4g/RdKCYvuDUpuryHGQjJ5GHbqkdErKGCUwQCsmXbHOtYoF0xPmadTFZQXPb7KC/tVKoj4/A15GaFCY68IRYhHsgvBEWmYg52jqg7ZHuSZrtCDgZZ34gMub0WBAlnGX/Njkl2qH1mDOtJXkzRXYx1J4Sd6bv0MXVwL/4TquF69OQFt96sbWej2QArpeNhGdNyjElXYDNege8LqpyGW1X8AXxH/cTvo0O8lC6AvLAX6NvLb6OsOndzqUplDnzJW4UAOeSXDaNJzhsY734MXCrazm/ffloFED+5xLySC6khrPX0AjgA0DPlzYEsjOAauA+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvO8qpnlZjHFwlcJLURIuZafqIi0Llqu56KITVDUdE/lJvLfaEXsDIKOXJP5OwugGDFuuIIkWLbwbLAJTXQX17ynxf/DnFkSnsY7nsZzlmC2jey6oZp8T/TcG7n9upUhI914xOublilenrkD1Gu9myeZv7K8UJb6LqcXTGKFIHhHDd/TSehWJEBNAZ0xupG272Jbou5e+fv7Ph9oF9ySDuVIn5+H51QnA33yY6z8NdSqMz599lN5EsBd7VbJzc1iIuIlxo7L+k8vbi23Za7WFnitbUUESa/H3+/970dUoomAGUE1ykKn8t1b19Wf/zpqR2RIzxXcCt6mxgOflhtBL5bzZ39AcyskrnXrPrh1lg7pAyBpXdQKkAlXdRhxAqCVR17uBSQ9AMJJ94IgmT3ljghAc1J+FV+DftZ7OrE0/+mSGU2mPTiK6jVAJVr+uO3flHZzJEteysSy/o3eMKqMg9bBndtGAjPZXlm+q0IJA8A1Unwy0csNLjwDg+ldmB7AiZPdZEYguIy2U0a2HH6ws5Iov08BQiK9TIc2ctQQoemHsq51VWwQiLAD3mNzyo6deFGHjrrXwONMkURXCDwkBzhruOErrGeytqXyEwKuqhp4zjAADOwGFEIJSXl0dHvu4iyfztaSMIefcnPbPoiHimpcfQCDmYReEzgDh9iYAihU3APU9Rea4C4zatorgsaaO3WtGCy0UDSniHDWzHx+UY/tbCOd0xc9vnhSgQOwXjhWec7Pn1jMTI5wwA4YTvnFXjhjUDJT4pC1kTanqW4X3vjJuKSSIltL+MvrMRvZz6n+ooJdKAZsB4ozoqdD/VMNidQ/y9RhIvZXcT2AkGJ5GQMknitWcImcPWB1TKti1kje7DBOh+M/NeTFu7X/iFBuNgGd4L5fF7vDnPqVimlllYep0HuI/tpnQL657TT97tTE4lL/qrXhM4WDMwovSwFjY4iSQsUA+Lcsuz49A2fLxeEOhR+75IWJMoe0Wwh3ZUp9oJokyMGK0UAN5CKtZCi6oUs3VooTabGUmpyr7bHRcIpIL9/I9Iwp3ydz1cyy9JtawRIUrfKGLJlmuk9UsI5as5gh+RrkZ9PnDYR7FrNHcqKcG9Ue7gxb71rtaAcXYIyfqjOx6Oed/d6sw02JKEAKPvuE23H6zzppCz9wBuB8eQLK+TDtGSIbVlKgRGGMrmGeDsGflnE6h7bcMKRu9rSLzim6j5u2B1BVhjtaKjx/GhApx9YzCLYgUmx0x+wQg7b7NWIM0HyOWFdLc8NmzfeN+PFXWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb7lBYd5SV5/mGr3HnDVg9agB2bdWMfaUwa1B8RWA19abR7JQI9VMmiNn0mh38JN69ychaYHukN0dO19JsLsmuVkyLuJHEZAd+jYNZ3c/LocVfNu/eEP5deh7qnMIOu0RNm5CFl+WpIcYmtyRkCll8bg2J295t5xTd9RknCjQNts5Yv5t6shDxJlqz6+1YjvWxdQT1pHBDs3bzgAQTBLM3PaAt6Rqgrl9PLhWATXmEBHmR1va8Mpr1TNSqdinr3iymVFg0cz49KxCpcf7TYGZxb1OgEp9Iu2yoj3iP48nyVWxpFq8X2uDDtI6zcAg8I753XjEe339+PTD/QwXTW3kiDRNbL5p7FGUaxrAy9800SMCXJ6BMTFQ8tZ5q9GLxQWDtL2gUIugOj1HMBPHld95omFbsleGcKmw42f/+FatWM/uEJYiz/wyG7SSOSZLzdvqtdu71vz5Y87MfGotAP/B3W80k8jlhvL14dppFDnne8KsbUJB16kNR6hFZuWq7oGAW+FYJpsygHjIWkRvB80/kC6bY2bGcgm1wpKJ+WP4NsdqmQ+P7C4qqoaAI5bXKWLBKix2TXrZ8iVhJLWrjOxl7Y+rLDmAy4BKdjxoXeFQHfY6CvU7W83NMsKNr97IG8557rGH+KC2SewGcQortIpPl0LvzZl8XSB3ab19Wj5gUu5coFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnPj9rklN6AnS+eEvxODTiQHCSedeHdZS2wKhLLYZfKZckadoSY6gh/ZGb5THyAom29cybKR2oyBgn2e64Jo6n7tZzneNFwfm7iKSVUAeZbzCYivjhqWvir1PTZJ9fuYBPjOxSuos/K/SRBmns4QwdASrZwnlu9QAehZ4/90qy8w8HjmhB1YxzqQVJyDwS+a9GC/U2Yegie80mlv52KcqIlQIIBbHUZ3qfwYXiG3yZ5Bb4MeFQrlZMu+C8WtnR0JkFTneNSyl5B4SU0N7r+W8FXPQ/IxbXH6CfBaqmwPOFArnSWJDegYAFzVzfrsdFwZqxfPqbswUeZgCjIXmknYPyUfJfPfTBbpYaaJ0Yp6DD4bVbhq+whkS7/Us7BjG8Oh48nV2gitGCE7lbIoFaQ60WP7MyXRWBnyoBJSixsOzqZc5vly4BCNhPfrCcjI/Fewp5SQfpMOLLsvLaO8ul5GELHKqp82ZytimjTQIJiYcUJWthXwPiW4TkYJ5P4bayc7IS9W9WIkWpNLHdizASsEQMPxsi3UMjZCCHqlkoLNUVL6Z4yEglzUMRGhmqhCEHZJUFjsp1DmpJ60CZz+mDiO/eaYHbhZpNhi0HAqP7Vc2mXAfFqByMbqjM8MJ8iVqQ3B44dJ6bLPjBx9MWENmmJpFQcIIyGh1EiOrTzpH9dqsCAu47KEvTnSi3uUYoRAjrLHDccepojr5dq6PpRtq1yy5zzDecO8AIo5C+l8cXvsHLyohy51OsafjzYaPC99hZDAJiW7rfWLIJDPrkBbcG2VFgtvKE1amI4/9U5mzmrcxr5GFdZ1JFBGI5Nzz5KT91wtQAaTamUGsFROOwUE9oVG4hvpAp1W2uCORyU23C0rJxD7gsmJIDjlNd+p9dYPCTfuku920LpVUJXNyHsdygrpTZVdnzfm6f0ptpyLJ5zd315hcoy0wEBzJejvCY1a4ck6VmT2uiVgLI/LKgfT24wTQa8u8GvEYAPq82dXEnF1svUFUN9J9hMB9QWcgBM/7MSB6ZoGR7oX2Wtj3o306XgeVRSZuYbW59wnkQNT7N08V0HI6xbsbVxSdJ9ijM1M9xs5LNLdLEDbIebAJzzSHcmfDC1GkKDg80AYOGa4ONoWKbiRBtd1YZNCyy3X8kY9DmI2fuvvrtyCW7bP3EIwXmgIXopfCAxqYzi8RIHkOrxv3uWgiBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ00JTfdtlHwU5AyaBzbiuckTiQHqb7usIbcxmrNmpd589G8a9FC2hgibV6uZZHN9KPSguWZ184kbS672icK0aL4+/9a7u9HQIZYeIHzfbjw5hPajG1fo7yLy+39jpKbFAoPBQwnssaX9ToPyaAuGRszH5Zh/5OYVmUvrpEP0wvBFfeZhoxmuoKSbRprvEA9yOGUzlEfBhzJFC6Vulw9d8Z9p1qCrH/NV8uGtzFp1IFc/g0YLcyVHbNySpK0yCEGrjg3pu5s3MZemFvvz/eof0Aoqnw+NUJ98mkTTJ0V2S8z1OUjl0SRT3PO6vYc39QKdPwVwdF7quZv2h/xFZ4iywkYYKOfV8qQrxo4izz3t9/qopkesiCN1V6mjRX0E6K/ap1r+d76wKBsiU8HX0BPvG+yDhhNpy1BPs8San5tJ9m9DlKq9jNFxAbCYhqoegHb360PYb/bBJey1W4uHEKACxuC4iePC3O936nlGOySwenLc+LJfvcl6NdmTCSYcv9uz5rX+/xeBsc64fgFg04AfPVvIlLMW5phmWU4ehSW3hyyvgjBjQPJO158EIo7fzKbcCJC8eE9riDaf2M+3hXyCGV90oU+Nha/udy20I25UgDBl7viCPQ9wHlV7v+GYjNgSpr6CncxqHHELf08RFhZZeApuq1D0XeXZIAK202+Q2839lw1ljGFry+b4aO3S7ea2343t+QWKINnpp8Se0S1tkHDxWQEmWVY10Vm5Jn9t3BCmr3URiGbeRJsFKiQacKagP1/Eu5fZmppttmRLwRbsN8h890v8kxpRhAyxk/ePTZ9sILKGOoQNIeg1kKVkE92d1c8bJu2oKyA6BjhUWG50gHjfw8K02lgEPPmCx0E+J6UP/C5BER/bPd1QEQnKrZOe+EPVhq4EwT/+NplgMtC3aKn4BuV1I4AtEKUszPc1XEpWPOn2MZNUiI8ghN9NzLkaW0hwvDrgq1gzgrWE99QPoUEDgqMPdqu/U2XiwnjajB/fYvYiyBoVBFWZiam/tui3aQ+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvOdtf6MTl7ddx0DlfEot6l0hLFMJxXzrSusghZi0V/OSMgrOxICYI1PzQQLT9Xrx3Vy0xyBY3Xu837aQVpTKSJlAB6YlEFajhyn12b7uysmScZ3gYJNnXwWaVQNpml8094cFwJd7k80GxG5IrOb9Er2OrVwVZSJ8dt9s05mh99isi9h1lzPZ5+p7y08OPjRIxZQfue+4jJva5AphLBDrT5EJMAZr4n3uhpD04/z+9ljnau+kt0BaYsu8KPPDNx7dYRp8wtmeiokBZRYvsD4hb2YLCyLcS+UpftZ9yLbY81c0Z2qMvlFmo8ueJ8GhHfzahYqDzeRfIe4bo+s5s0LdGgfK4Q4GJ9nG9LF6JzKEXZHrT5TKGU4Us28aSJqo2vA+1amhZHknJ5FuzxVxr2ZekRyoTDVt+uTz3XtSAnvNMgHj48HhfIUERbqjZEZq8NxOsKyxGD0kEzIWnTAP16U9o0qo0XZC9Qi/jBAQoSY31JebfANXlKVLdB2mo14TH28cTu3qDtD+lieRHEBtBvqtl/HiIhBDrEFZ/H+P821P0oetDU/6hcwf5cbKg7sJndtfyDpre3nByomO4HF9HnuWDaHOjSbVZulRTEztHwJDkZLGiQpKMZfNKnHgIssSuRa4Y+7Qk6jArZ3Gq0glOgMGJgvCZT8Ogxuoos2YhuVxJOgEMorpt1c72rVORiRnDwSU9+2+fgZuH3YUOyCdA49vxU5UpSXCE3eQSvWCiyVezx3Ri8zmFnivvRyH7926lKEXC+A2tXU9YTz3/dWcOx8zO/+3BvAirZI6e9ZAI4fKaJpdLk1cNfj3W6AITFXEGLSXmyJZbxIrGznPyY+ndNbSPvkWxSEuS7K1UzSz6hIWfq3SIQYMFgzN3+bQez4KzDHDLJOC6K0sUrKEOW4S1k9JcNhoPjXXb5Eor0DnfGfAxmO2ublSIqwS9L8I7dvpE97VFQkwskbdkM6KaH7hzIQSoqH9hA7ITOAnPiOxKpar2wUcUEuFCOD18vAl3mxqnkIc+uu/wkxabagv4kqzycR+QKYqq4jLEx/EPjbiFBV0V68Bk9ypfV/MfVu5jVS4lr/IXkit1AYn2agUjq2sCQIuhWoJ0d4Z/Mx93PCvlZGzC5al/ASqQpdyNxTVvx1z7rdxb34ksQK77Ft7AACJynnJg5TjaeKezJYcQaZwuwDdnX9yeK77SsNgvGA7Ob90BtcnX/9X8GscHVF8o+SDmqQZ2yENjF0PqADCl4s0v4+NQD2OybSARAy6IGKV43B+nLg53QxQFM04w6ggya1AoTrDwFpQrDRXJE9A55nijYKAvjXsZ1xQ57WuaklVV6VZScmV/mUXahcPIvNVsXIx+Kg1dSD04yjBFR01sXDHH+UmlG40L9MpzlkiWwzmdi18sr2vE+XvfBuel7r5VErNgihPvNmZFR3UNiakIYq8Pr0s3gssbbu9qq3N+1mgfxBUOAVPCzQO6CsvIQtwjOnEl4n+HECxx10FjEby9U1AFrhKUCzIelcxhQfEqzeL5phJgQjkOzp8wtmeiokBZRYvsD4hb2YLCyLcS+UpftZ9yLbY81c0Z7pEPdGT+GPFbPOe8bpBH9wgSrAWwWu/Td27RO0esB3FlvAgC3uuDEdelOaumEY/13F64PlQ/0Qtx/EQzaBWnQuhIiohsxdBo3j6yULr0lcw8FiOaEgf+PlyWX3kQ6gzwwcDYw9dZ+oLI4aWcW5ymOsYaSYyCh4KKImh1+Vga/HRi1io/AF+ASbhkmMHwTnQPz3WfP6sAC07JpGSbELIMySYcIRotJy/Exq0WIcBIfemM3V9/gP7kdG5vV+/zGcq3durBy8aiKs505unN+MqKB783mO07NtGxmr6w+567plaBnJEgzugdfJqBUXRERTa/p9lW137gRdJYeIl5a7Lwx6LLQ2ArtAdQFddhmdmbGrPKo7o7NzlMGTOWEhcHdAAQv/w1nBlGYiTtf1KcT/Bx/yDK/9PZ3jlCVLgkFsqGhA4bymvMoPmyj6wh/SbyDUroAlL7tcJ87HdM0GAFP+v+q0nw7YcTgpOtHyWNFcoOFFBAbOw7eznN+QF4HA4gfTII13ro7a9Fu8hYrUZA6WVKJv25tB8ZD0aWIA6gTcve992cI8xI/989Jy3XoFX0O2yHUuchA3TUf5qlikSvJ6utHwnG0bZ2/2qxYcvkxUJYjX2lrOXD1MY/GViJWlrzcOC3A5CjYjmRoJhgFIIVn4HxsK/awwi4JAkgpMrepFyW73IuQ/Phm1B3AGWGhliTqXOq4uHo+1isSbsVu6C8XiyDK6f4T05RP/ix9GDSHLOGS9BLtgHEDZLixgjPqNhXOPkDhJFsCNHucOkNqlZ1RgJury2ySWp6WHkQapTtVTC2u8Qscj3NquKPeVnCoCvGlUgL/F6vYq1NOVA+R6OwOuj/ilwkqmyvxFdbZWY4RsBNSSXUmzxem0zXeYbpY7cet/lRNLYxCTYRxtOKQ3y5off24dLg3Mt1H16q0HK8/SZE7rw+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvOdI41N9LLAuTKj4k4XU39jinEtkW+vko67nqKCh8H/ML9DHXX/vtr9KRcfr/Hkh6RVof9q1IJjw1Gq6c4Th3DnLbLS7pM+n1OhT/jTQu2jf/jujthAbPNjX88iUNX6tfNyRjvJX4EG3uldEoXeAMrAHwh5iJV32MXnwTvd2fdECLPcV26yDDAS9xiPsbwUfFsXsFDpCVyH6+UoJs/j/kU2NdRKfR3veliC87YMKFfIM6SbtNHm3iq6gspYnjSoDxjUEwc9ksww4LeppsPgc6MmZVGz0zIt7bH+WkcsP7j5vOI/4vmbzGUAWJ2qNf0LoIS9StYzkZKu+9FQAUT9dI7RmM1/QK4N8vgJZutSOICs4jViReUlQBGjecHsAm9XjeCHGMf+z9oXJxlNhKZEFVMX+cLihHFEs4JgzIQzSOuVeTugSva3D+Ici55Ko6jJh0AU0yVuOlO4pIO67IhM7hPdgobMJ4FIZcGln4IXTz/Cedc9wHYiKdAjNH900KT/GsZSlJcITd5BK9YKLJV7PHdGLzOYWeK+9HIfv3bqUoRcL4OBLBeuj2tFMhFNCBbXMv3F0s62df+4p4KXiJTjS55TEA6S/sf1JJr3orw5ovMy+2ejIMSEYtK2DqpsOztyHx3ZXijJvF8dzpNKW3Gz3or8l7k0wWFaXSkz7/hb1zDj9u7r9YB/kEnmjnKEEsnHqEcvaFfQ3ePtJ5Dx5XlgGQKcgw1bpp62GNv8GDAFkK5Gkrg09b1vEaVGS/bGfDPoTRWqnwIyORU/ZiQLPjbkZjfHnXYNyMEOQzKSkuid6gr4iOZeT+E66jEnnFa/fHPt3DkG+gxLDj6CpJqLDXPrltRHTKDNIUL+YhGYSrFDOo4w4Vmaw3AeFp2K3gikKt2Fq77ZH8Ulds9m2sElnqm4hHbEi/nS/1b4m4iEzRsMwNAx+z2WmUPjFwS2gNScFkhJwPbeWMq+tFSxrjpGUAOdRR73h1Qkl7JQr33H/oHeGbb2GmmuT5ICvcfx8EOHiwwENbrwAqfoSHnlyFAj2lh8r89dePsJ6Wa8z0ORKBFvK9t1Eaih22SxqJirYOrodtIzqAUx2uoyIPrHBZBlqFBuH+O0tLwaIjDFbxfnv00Aw0SxB/NB2WkHqic+y5H4KTCdso03CT02LFyo0rOG0cQjumyceQd+wF+3EEqWUnSP8Gb/LXbZKRpluUCVOwUVkjTQu3FDt/SsZZfrbWlzWeBOYD1Ht4KbfVBvAJ/ge4PTlj43pG4cgn1SdV1SwyvkjK/pja81JdObNf1ClebIRePDpXVCBS2hgEq0vwrpb4eddMD2CeBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ4iZQ8n+Qntx7SEJyp/QxcSe3xnJsT8655co/az6Gkz7dHtj3PtYo4A/BE88GEvlszDUaqGmH7LeiunBuEUr8+tEapkOAHBWwC1K+8gWxWSIoFowyCkJm7PvWLAcUCfNUaqGaV13deZvUA4uHjam+1zvwaDBjhuC7cFsZ7YOp83k33cFsLPvhBFJ3OtFQ3KYSPNEboEHKVe/0dHkGvrRQ14WYmiRGd1yA70ad9azm+/Jq9zY9EU2b6yBU7hFYPest/0RWo8qjJGNZwUfyNikDcnzM7wxltn73gkYwxi7CIcT2TlN2RfWCTyxmqbiZ/tQG1QNZbO0P/lG/4JUOK+JpQXal0fLlv0ioeJZOc9Z8Qn3QvfDcxb/Tcbc6tRtXshxM/gjX7WsYZW1f+rkKHlDmQGVpa5V+dllbfYI4ozSlm/t9DNRvaOygL3E067lmxzWxUqD5lawwj9sFHEvAzpMyvnozxR2+YzaaFKZL3noSk6hlpweNAo2BnJU19DvVdHKzRMS26pbUMxHX9GFsFO3PzC6T1EXowMNN6H+hSkf0D4jz0ArsnIvMajUy5sAY1iUR5txi9J1tmAov/36gBZWPN/wxNinaG1r2TUv8P/gUNw/M1oUNEpunHLEI0RuGWuVUvwL9BFdfVh/EArA7Xbt6Ab0rw1zBaON4M2xcCbX3lmUmIxDd0LcIgVkYMrTTRvCCqBMeq3Ae1tXpLeQ9ZA3hb3LUVYGRK9gA2pIVoRIgAod3Jjxqaz5fWNPf3KIj/nCL4xdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwvwLVruR4maxm7d60Liqe5WagBlgHCgPA+lBsPUkqZk2B0yd4pequgUYfFR1uQMmSfEwsUPb/dZE8OD/BAxITMDTIoPrazidJv98IpLLE6FlHTk7c26Ov4tsZN4wQHOifTXWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb64AEnUAK5MfF4vH4ZI3JRafXC4EsRGlarKypWD17GuKkIvICW3rg7ZV0eg0vSvUmpmOhR7hzvcNb9+R07MItzOtcKcdQKzU8VKUfbvVW68pR1MlQh4Ldafbt/6cIGiZ/stbQ58oKNdELclcGa/PIFjynorkpYvvc4xl61UOwiFyoxdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwvcHFEraAQPS4sj4ffW+CBuxLAwrbM5x5jc1n1ldbzk6Umzxr6gpmr8a7yMwZ6sLNpPUvsDeEq/lb7zRzlAuQvzviQFZ1Hq4Odsj3jD9tWGB0uDu2RRttExFeHdS9JjgapeV9kvgg+mjttQiZ+YJfhcQKIO489LRquFCV7evs1kBQeG2+hvEddqj7uGtMPvmWqG0el3VS42or+tULUpFDpvwjNoCByXTPEXYeLa1PS9LVc0Uyr23++pw20D/MFMbu4qoZpXXd15m9QDi4eNqb7XO/BoMGOG4LtwWxntg6nzeRE6bCxSO2McFPUDz/QaKxPlUJtcxp+H6FuvKnnkSHrdPYYwP0IhhEpOZximbI4NRUXkFCwQ3SSTOE9UV2OpPEnVwX2sSI6W6tVD+3SbCi1Ps0TzMDz6cbKYHWaM3oHkMCxkP/weRWUX+8Ch944g/ZxbV2X6V8sD7pT1nTp9ajY0I+qSZRSHAtiGtii0huEM1w4PtTU8Hq2Ff2Uvx87njUCgyxfgaXGT78LXgLTcg9lI6Gr1cxXquy7GBrnQqD7tucWimnFmWBDQnJp1+E7mMzg2kqNCqbxPGC6Be3Wr2WRZ6rW1xOO/8HLc1zLQZ+2X1MkuRjIWmOBTj9rI1iHSfxI6ZF6QVS4UYMzTiGTAlkD+cxRN5LeXSbqocNCzMYzwNwdQLW1zIDDQGcuC3tZfQZPf4pwoYOn6tYH+PDk32d1lwYvBCfgL+zw9QTtv7TPOm7oAV52pD5sK7M3DrTai+2e1thzhKvwORF3seGSQR+ns9cibfP4MLuXUfxQkL84s7b4/KfOeZhc1C54zjyHrPpqqtCNm9BqYHgkEcfPfzKFVm7MMN6Fwu44CI97sq5R81r/hO5dQPdJfgkcX/gFGrbtqlKkd/A5tIYeIwRVabN3I/eJ2cYgyMNHFUkCdvCp9dU4lmK6nUczxJJFMmW6X2ZkSl3h0F6lfP10TXalX7rjFaqGaV13deZvUA4uHjam+1zvwaDBjhuC7cFsZ7YOp83k1DmNJ3iFgGmKDrPE8n2wLGOAguuFvKgV+1mTnp1SpiJ/G+QNdtpbUDdcFfCdVmAsrPL0VcWwgbUtmzl/X3D0pxvMhhOCVD1mw4/LZhyZmA3xQ/wkBxKmwzirfSXdtNysp8wtmeiokBZRYvsD4hb2YLCyLcS+UpftZ9yLbY81c0bcd4ly1IW/xdCog2NxpCkCB3T9dsaYZ/VAkKK0IED4FZjgoL1M24Ss5xxJ4PrUnGJeNWiLDbm4s6CaF+v2vokcI+Et+hg+rDlQpZv8Y80Iz3RNf00atxJ1rsGZn0ovwyyqhmldd3Xmb1AOLh42pvtc78GgwY4bgu3BbGe2DqfN5Pb8o7/5Fgw1jQuOKeP3BK3rnySMmf0P0Us68qqYZNeiW1k+poMaCUHqjCDAEg4Py5UiQH3+I2IY7y5Qyq8515qBSgWRzQSjsByE2IQFKK7PaUbqGgjYbwlxYbFby3pCuw+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvOteNhlr/BLWrF9YaxGOGBH8+2sEk1uE5m2ejM8eRE1TeQ2tBI18UHrnYibALepfUBMTkPeqhBrt4kTUvyRoYMJlUHAhUWlbOtJHMjp25+GtfZQtFlzUA267Sq6MlBJE2wSlJcITd5BK9YKLJV7PHdGLzOYWeK+9HIfv3bqUoRcL6Dd74hJIJ+roXNOlEZ4jFjrs9QBUr0+zi8YrZ8xRg7aIG/R1cBIWoNF+J5d9BJGTdbLZTeSprTKQgQ8NFcPcCE0McMVSNHAcD52EkH9LxM2JWIvsFu2/RA/XjCW+kCeawYfpGJPRF8bzeHJNPES3gtpM1zP5Jj6naEhn8G5c4lt3ayaesjUdGPc3OfnBDETChwSndwsZm+9+P8/Ev+NlhdjRSevm8EXCzEWelKR2l+N9UPd59Pm2Dh8qj4k/yRtxeDthkWvcBwckOWAT0wAr8JoF5+3LqYDAceVyK3PBvwW82L5LQKXVsn5J7G7mvOuORso0KZwD/zjgEOh8lVr2xDYyGG+A8ihuCI3TLR9YucUjyzBm4SjIAcHKxf2ObCTRp4AdXqpLqfNQhayD8WH+JOxPgQSTL+Kl9qXuqEhWv6DaWEkawOCktDp3KDRkYgNo0FhrdAckSLGqm0OWMCuXYmTT2nZdt2hVbbiLvIEsA8cL68fxc6z8zAKPhRHdLv3DNPzHw4YQcKE0FGkvqn2YOV49msDKTW+Ihu87xJKvdCWUpk1Bxb7iXuSouXKpHjZ/b4C/aRGhMRPSzQRVMKQIBStBY+FizSTjXAn4S5R0Isug14qtdlQKswGDD3nli1Xl62GWVQ1OTONb2rk3H/zjz+F4tRA6bU8E4c5JkfhFpVAFrXcvL4NrUM4EEqq0i2/dRYUvqgbl3PQD6GFKMk1XnYMkJkBtbP7Mbj+aAxtWsFrgQh333smAKybHyiT9dLiZoA1v28lpkS/x0gEtfrmdmTmD0sREmTCUUHnTaKal7FOl1nUkUEYjk3PPkpP3XC1ABpNqZQawVE47BQT2hUbiG+Pz9/FKf1C6ciQXOfTrJAoRcHuuND4HpzomzSPyHuj2tMDQYoo9Z4HG9o2cMQ78ITIGeGAQFCoZprIfb04h1WFgX5XugJ9j6gdOGgGuiFL4H+olkYL5yNquLjfo6OzBQQCGGVs4C70gNSK7Z8jp/+bxNWQCl19z/x3Ztalb4Hpr+PxjbcOfsTCNRCiPciBVsGfLWdqkz4B3mpmp3tfNoYJ0ymntPFOJIX0d21y3xccawu8fk+IDA8+BzZ4CYfMwMHsVjWEUEflGYEvD5/ldghWsxvkb0fXGPKo0zoLZTB/cftsAjUKLaBQo/RWLBIzpZA0wXXWuKfTif9OQv0BQlu0FEgzNyJOSnk2lG2jgAYaYfN8BrN+v2vHygkSsmyihSaz1eSQL5dnVsCXRJmTGxmXa+Hq7nSN8Ffv9YBoLeQuL9CcX2BQ7uZJVpr/iAaFgH8VEzErdHz70wUPAZWf5xAyw0yDq5DGYERWuDrroVvPKHSjyZFz7lZHMVznDNAnTPh1z0DqtH57MJiQcBt11AMLf71sNkFzc9v5Yzp7v+nNGU/xkhXsNzNbO8sjzvAbtaUgZpWBASDqY9c+I7WdnwUID3+IU9dLFr6/tsDa7pEB1zjKu5KkRDwNC+Ch80Uw3iHmzKPuTvGHdmZ7izLlyn98ljEyunBXKYGjYfl4qdWv3bMhi6ifql+y/xrm16etdpVXJUl1IfyIL2kHeRICEj3ENIOiYW4lHcjIjr3g7ocbWsqiJkLdIkkVJM3CBF+INVrS/JM2bsPQ5vGycWXnhJwE2cvZpHntZr3y4auswXJrxRdO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY3whivZo4w/gQquEV/tPSJkxswkc7qLW4x2Yn6t/0WQHPH6VPYfourdIjdXaBiryKPYhnpzrIk6I8DjNwYb5jGTDjT+3RyheZxDZoM93DTf50y8b5GxqB9LCO76z5CTAJIxdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwvvxSLlcp9+XBGzOOK2oVcQkF8unq4rst+0odBBoShrU1bwzHJEfzIKteC2nqJ+JcrQeM0lrQSq8KqaoCrrqUqrKYNtqGzzi4/HlnpPv3Rp57iRSBYvN6GUYhyX8pvPR6D2TlN2RfWCTyxmqbiZ/tQG1QNZbO0P/lG/4JUOK+JpQW6vefI9cDvRNpTXrfX/ZeF0C4RvM22ky186QxW2tW+7paTcMok+mRxqhGKPzCGuORLtyz2JmP8EQarUISIFco/pA8iQhiBNMoTTCCPIe3CMgqrl68XCbRw43Hi55ADV6wGwL0EA0iwyZh1ZSk6LMLyLREgNMDpiagepfFqQna6SIeg2q9BaLcqODzTDPMXzFlkmvUgN8efG9wAOqh3cGiAt7uwfd7wRpB7yry640F9nM54BKavyxazBlz50PvfERYTjSq3d6uM3Q3bZnHyzLwntbA9Mg1TjGVlmFYD+lvKXSAVc2zuzeCbtcFL+wBtRAVpF45L1ON+cgzIg2fHpIbU/QVsQmSU1VB1PtEnnYzSJqU5uwCJtfxHk1ZSntWu4rA/WNlRJ7/Uq56lQGBzRmil6JndW0x8gYBGok3qaKAk/MByB2bkaCNf9mVGEzA2J1oiJHVpBx+qwNKDBssfIgP7p8wtmeiokBZRYvsD4hb2YLCyLcS+UpftZ9yLbY81c0bdeLBA8PZ1W5sHodKRiGVydYghROHgTBDcA+Wkv1IDWHrZglPuM/ucEnilcKfE6xqkefGMSKXSsLUSOLbZIJ/vHSsG2EK8zBvDbg5wXnX1Jg4+RUNSHOWO6R4caOR9OtiBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ7Yo/3wnREqeIJxYyJNVB0ojJQxwoh7pp4Ie8OWLzq8y0XPubj6hJlsUyLBZhKHS8ODaSAcae3kxEL/T5FodMXJGziV6LYOLxtFX2aqd+k6XlIcyrepYgbW3Mv2zSEaTsMl3Za9z1IfxBBgbtO4esMcfuNlM07+zm/pRlI85mOZ0EtVtdfDOFTccAw0TXmuO4i3nI8FaYmJTPLeY0zYFxOpduz+uhY+leeWRkfUeakKEdMcHjUxX/+j7hpf01ZyLfQsdAU8/E6fnvN2wQZdrlTPHj0fjODk1W2FXJewPqhN6OC6K0sUrKEOW4S1k9JcNhoPjXXb5Eor0DnfGfAxmO2sqy8e8CT0GF8RP12pU+XhDBHF/Lo4w2LbABf8XzpHwNZU+1pMoX9n1luTEHBzuVhoqCiYpIIzo0h3kfiQTnNrRiyU7v49Pu5jV7JpmGDgGUW0vTQsLOrgHVog3JkRhU7Ix6/3GTr/5GEMnC6LTFPtRV3aP2BzKtdcDRNl2R67t/MitdIjgLXgbLh7sI2dqSacHiiUn3wVJwpx/WEssADb+UPrPMWXNkN8LQ3xfxrQ+EUFQxIv7DTH92o0+F11o1WA+6gdV2uGh55ylZ4ISc4++zDQDNIgAMH14q6QJp/odvO0o4VazozEC4Hz5l2/13rGoi2JUfRmb+mZoVjjI7sZSOmayTxm7Zu7leinbyIrTOEW3tv92MsP+x2vyt9D8lIYxfOCDj4V8modEhZ8NPUcAVJRt0yzdaylswmdHTIqTqDuxLrOedYs7O2JpIk+OKZ1wd3jnCRqrlxYG+V2+MdgWFS5h1Qh6ZMITFD0mzr5WVrFbvlAfsZ+UWoG/FtLH+tbuSAuWT6bx1n87Sm91P5Ldpj4BEMUA0BQGtPhcyBw5kNQ7Mq7dQVMCW+qNQ+eq+Ez7R/9swnGUgAUSgY4uU8kIbyISOnobRrgRXsln8FmwOAN9vd7xg8ZO4+FbyFAtadQPksZCJRk+EAn5Hzzd+lc3r8P4BsEB3kwyMtV6ch2Lzp8A9faRfR5QALkYj4zsfeH7lGwa96+9mprNpa2LyFSaXTNwq77/haAmQ3pT/ec0QPGVqlS0Pkby4uiLQmujH2BtUvi9enkCW5G9pFbevIgtq6a56sbGWn/6Tk513P+if6TmrnEYFWxiWowFtXGp1XDbX4fL0fxdcpeKXc2DaFKXm7huEjz/E0cVMNAb0gywuxGIYULFBOOoHFRcsGZJS7pFft6ylYUxn2qMem9hq1WTqDMDl1qmABT28Dt09ufkvyplX5vAhYSa+x0CLk9ThCQTR07wSZso5cacIRcHbJZQdqOs66pWeSq6AsQ1TPf5jY79HDsXxfmcE5Mtfdt6EUjJZbnT02fRMgxaxKiTPiTGO9fNWTuO/NyanA9U+KiDA9MckaxWqFfyH8Iyun/KW5zyZUbFLHfW17b1B6btfarSDkXVfY1czrZzl5aWwKGuRGxep8DJqcNlIr5n8irtZkxvu0RdG1WRsnFJee83p9kD2aHPavEoYCE7kyqSseG9NYxdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwv/9xzu5RLW2GLRrHLgyPh+jzTQLIQ+3ZfudEbJ2nG00tBbfokqR7nyQuCCGSsgUSJC6FiqzKCyNCaXNOIlj3uBlANxeHwELjE9eJ5zBOEBvXRP49AUzpT8zHwR13zY8B4XWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb4KONZPfKJgmwg03pLATQ/meWbwAjUjpr2uEOmMQ559PYnxVWELdlF2+ZEEi6sR8gTub0+MUYlkjPZvHvYdMKecUAt7yfKP5f64LDPwqPB9Y6h+HfWIG7Gi/10eGJ3inDFz8zgg9jgh54iasN7rdsoltXP3xjc1nbfN5JBSHxRxS99ua+tjum0vrBNdCUqbssb4HhDK2I/ZTnXMq3axt9yad5lMRtC3wGtAmVEo4aKjOS1MwJIHU/e5OMjED3cvfkRHm7ZmfzuPzRHEkA2m+mX86FCah1642mpWL2GHPQAAuyFs11kqSHGqbfeyaTa9WU/DwhgbbR+9iwRlwwfT2bovDvUyVYq/5F7DPU3n9y0UfyHMOx+miL/271mU/l/Te050cJiteG5CyUpu57d49K4cigP13IKvoHig/ksJJ4Z4AtBiu5KolvHYT+BSE+ZcOUXSZGa41Mt+c7omC+2SNHgvKltFTnKHphO3jUs20IaV881wqIs+7svIGgLQqg0JjO5pjqpGyRwzhgS2cRyxwyAptG5zt1f4zwD+scwKeRybndH1kpMrU2xMDe6SmLt72z43QP57s064VgTJ/GIqGNOmhR64yWq+laRlLlCZqbOv/8o0Uivr2PNt1mac4pKYOFFoQhQ+EProibaI82xHP5cP67qV4V3KW6n/aCOLKCjyYlNgEz9bg8EtoxH6zmVte8Sw8YiBJvZ0bwd6a7hCq1E1IDiSa69vJqtIIswnrzhT6784Zz3U9fysV860h0PfdRKQIIs4ZCGUgVnYIk98gzceUdBB+wrV+1SF60BW12Hmc2J+btCGBLP5bCMYZvTYUKeV848zMjV/HPS579Zpj1y/AN5ZOX1jfWc0yAdUwDha6DuinNxUzioiIwNbC7KpD1Z4WgpCUmXSJ3/toDXiWe7+wuD9PXzUwuMAkmA6DN9P/mwzhznSY7dszyj9viMITFJxI+ogEkd6Hc1sNlN6hB4/3LjwaP7XOZXCTuTtstjEXbnaRrSyowy74i6ft2sr46T5dbCcZp1XtrYtaw1YEhLcrjcUwFqmW6kZdb8I9jcRn4LfeCY7i9pDRdjyv0NVr56fbBolThyMS8uorXR8MSn5qoZpXXd15m9QDi4eNqb7XO/BoMGOG4LtwWxntg6nzeTdHQY8hqCC+8zOC6xts1uK4pim59HMY57GRXAeXEm9Nbdk0jtKArS1PTejWRdscwS1LUn3gVNPZMBEZ8yBIx5ellwl9S6gtxiZLzrplgJ9dgbJJ0Ywgcm+/G53+eElkEVihw7/HlA3IadFzB1ZYrJJW/IqDmnISl12eHQgWMS4B0ePjBPNQ+O8xNu6ioWBExwae3w4CsgGsL82NIHwD7SS5XZaH0MdHHVGKC6ClXFPAWsH56zbRT9AD7hrSvwEgkOhsJAVpPgPT5QgYsi5umAEt5f6Vo5QUvePzk6GTBLuXUf8o0Nl7/8Y2q9Y6PVWAw1jwYv8FpsBCxCC8AZRmsMvpBHSSY1uRKKLIPnEHwbnHjg8sawCXe2gCbamkAc/csRsv/6AwpdzTBBGSGPJn5HwE6MTtVZ1kbxlFP2Lwy82fbA4WikkzPQp1Y6XWk0mARJaMNnfoEJgJjaqg+T/KznH/KcRQzHLwcCCg6fzMIsY//4Ef3PpHi9C0G2Kjx82uYoPksZCJRk+EAn5Hzzd+lc3r8P4BsEB3kwyMtV6ch2Lzux4ZshPxkkZa/fZ0dFZi9QaEnqZc6LRCgq5DCEqOcW6hUibHty7YwFpnFB74bFLFd6Q6yWp3OeLccllcmt7avP5w6T8BJziDcOmR+53DipPTy+Fs+OKD5djqlgcaH7nc107i2BdMEJkUVOUNd7gk5TGs+d0JgJYJ0GVuz0GZ/Nj8kX8Yj+07sLuX4sENXa+azu0zz+VdD1Jb9/sjVyfui5vm/v9rIl4JsmgIQwqZEFoWwCphkXEl0qjQ/d+E7/MTLsK6nYSivipDPZzPwO37SYTRoQGo4tBDT3WVoJbA60G1hUgLG1kxm4fzClhhEGck//lVVGbhZLhvU5p0bbZjrAnj5kBj/UFMAuDB87o3y2OKQ96OKFnFD8FvQonEbn5yOnP6cW7TvDrtft8LXkpfMtW+HFK5/4eGVL/CTD7R3FtYcNktYkeG2ScKueiNgui9gGiM0oxkq4n62aN0yEyZl6JdsI/dxRoRIEmdqAsxJZgVpvp8GymGr6YhpPJYiL4bQpJdUR19jhe3YBo3xDjLhFRpHMEV2M8piYITnN5D6lwMfSBb+l+rWhUxfXGCJgwB0oqVriFwsrNf7bE1AEZSSdIGSxmj3mzPhkMI+L4bEcGeMqXP45tUzSbGswo5cyu0W75HVJkG+rhPQxyhRTTlNIU+DgZhWyJKIb5/mjVk0t/pTkT9cnFezp4xcHabJCga/eZ9bNZ4Mo8NhrqrjpX/FHTKTwZiGoIJmriaZiqxAHDkdYcdwd1lz1siaE/Rnz2woxdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwvZbkSuzcMOVByqJSkb+CKADTMMeol+RL+Bx7zSmtwTnVTyj6QTTBk7TrpUEmqfGsiIfSJxCKpHI6W3mxCXU83+h9cX5ljoSiGnKQwJB1Mb+CtLWTS1zZSrcrdG9v+F2NtlBu84sVtHCpxJ47s5WJG8WLxt/jCc7Zw6vb5kjLHml8Lsn3HiIx/li5Fpsy5Igg/JerNiGibVJx8dJtODcMPwZkEfVgoLkZd8ifsvy4efAJo9LbV1oh8OTT25flNmT6Q3vhwTbSS8fZW8mOm+7bLKE7HJY4KVrEyJAt2OvA9Jf0upvbWTlys0SSEeeCmRgdOAsWnpORCoMgYE4TVilSpjodKyiPUYHCVYUiFxfSeRqKRZAfF7hn7h5ODtM7TyqVh6u/7Dh9PQqgrg18eDVpA+qpJHR57ugewCtf5AnYd/WX4/dQv+bSeQUHgLKHnTsL1+jdJ1UFWuYoj2k5tcV0Uw0PpIRxCBhhIBNjktDt1CAdXUIF4R6L58ffs596a3NxWyY9zk6RQVU+oxRlQC0aWwBSeQH4voaSEnMS2CV+LSqPjnDJRveFcY6pY7sCBPZPNHPWJMeDszwOoawRhMhm3rqhTDqlVQFK6tcVxPK9+Od2L5wj5FiHcVQLExdztyo58XTuLYF0wQmRRU5Q13uCTlMaz53QmAlgnQZW7PQZn82NE/h0maJaczEojn3odVC+VLw+GEevfIk8iIy3zyDIJWmjzyYqbBW4AdeDf8F+DRU0jowZvxrm3Mx0Jlb4OW2gijQms7uZMjwFCOi4fE4QXMvK/P0J3wRAZqMBoTg6IRru2UfM4/cC5fvbRPPqJNhdynUZhYFcZLE8SKCIb4IsIvxo/XDj8+YNerUNmwH/Fp2l/4ylXRcUROvGyrgr9Lx/6/QndlrjEzr1+ZQJsHnTviamvYXS+P6bAPgcqy1HPqx25AIcBH7rGdyPZMgx6XWgNbKWs8qM+mbpbb0x/lNyURvxtxJr+MDRS5Hzrsy2AUkYVELENWZ6iO73/tdihn4SeuYADv3mLz9+B+vCM9porLPgq6w4D/sU1MsrpJ9Jz8KE/wz8v6aQbcWGduOdwhCV/jm5rOF8IVEZrTEjaaQ8/l1dop7xBGAQYhWzFvEJonFiny+ndc+BwfZG0y1p0ySNXDnxgM9K8F+B3vhmde/Sv+Okw37tbgp7Ssl0gT3PdHmWBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ9cr44uO6q9y/SvhasllN7tbGwcbZYsgcRnGvQ6QWQrNO2cTu2vR+PqC5rVmAjzukF6Kg6WQWCKKrIbG+25awWfJErhIlvdm0i7z4BYMMYw/tkshFM83hO8Eg3brwwgmiKCb1P0rhllZwKPac1KgjIe9r3X6ahNT8bRlNTp04Ca0R/AfeE8gQLtkYheJjfG+VMOoA37L5NO5BPEisEGCr669W8SKZfDibHVqChaJp2Mpb+NJlXH3qff1qG1taqgsvI/NsGvTsgkX39kj8BpTHX2SZoMUbaEKejANuOUUg6MdQ0JMGD5vpcCuGKESh0bSUMcP6/XLI/olFXzhvbFEMh8ki6fhdmQwKx5dIqf/ts99aqkqoxIaPV0yCYp/ggzWBTZevdm6xBluhfdCc0nxyvqS4IqDSESM7fy/0ZUZCldV57DttOUVBiiua14HyjOl1KycbgDzYXV6KJXrHS8qBhHEmhAo7beSLl34Uc2sT5uzX+u5oweNEPrl+2wuGCN+InhGk+19U5c0TlAdlyC/nX0d18Jf2GGITFZb75dBXUbCCjHJ+HZSylTAYkgyGkw1MOcZmXaAM92rEQUe5iHAZ6KEkadl4wU6vJon+Iu2UYfQT6O/kx04A4updMIYVwHPKw+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvO5MKQz/50pMjZvSNCkwMvXv98iVZjud+kyFyvMOaNdY/sUT6lVywjfYYc6in6YBoSwVY8DgB8mUJo6Qiy/Oj1xmOSFsGjU8rZk1PbC63spCStFZ0uQMrwKxr+uGNQTzyaSlJcITd5BK9YKLJV7PHdGLzOYWeK+9HIfv3bqUoRcL5rKwSBvnwfEq+A0SnEA/G76WekLOV9QKGH5/gWMTUIv4NY5n0Gt71xIcxCLdt4qlFuHRGsgbp8/SC8R6FabC9OhgrfaPn0nUF2P0/jJN8utoD9pwKPtK+244gY6WfCNiO5n55/uJHuQIH2Bufx9PYDred7lV9UmR0megvTr2hFEEOrhgGu5vkJkDdR6iECwAEcMWEUncI6OVSkYUFLOmwpdkAVpvoCEgE1i1C65RDmz4ku+Nl7rMmcs6r15+PmnS0IQxr0y4XxKo2qIuoTaOZ0CdwhqHEvOI5jncksxYUp0otYi20gqj3BHbcjA06JHwDrqm9KGc0W5xwLLkeqmz7I/GwiRxD04S8tN1WQi8UcdVcoTeEL7QnscXbdhw7MEnMM+kiP+qIPi8PgjdDF1VXBwJNz8eyIwXWRTaJYefeOrRSf731Ky3IinceL6OmNphjPzkaUchUVktfXEkDWxuHEACRexF83fMg+6Ddjey6G5wXV1C1YRFTVGXTbfutaM8OXdOsraoFGykejdZdLhAS7LaTaLB7gaOT1r8/HJgA9o+uCqxbnyCZ6+S+PZCT5Dk71KQTYh7L2G0bQ4+vQNZ7Vr7PZjwYtj6puTFS3ye2/xlYiYLU7mrqKZbWiPo4d35NnB/fqp2yULa5JiQHdYPEBE3z2A2h0Uebh456CNG1/PdwdNKuX7citlC5O0TQkFnTnKz2JFtnw0y9joskI5GbcKqyIQgCQa5umWcBE+k01fHxRNiyo/C229KXxvpx+LPNhqD2X8yQ1XgABrIcnsEg4dqiF9N2/i1Jg91jpb2bTj69IlOOXuur90NTf3DWCVR1nS3j5tBqtuzIyObsYLmYDpSG6nqIJppioLnETBbSAJbG8Tv2b1yeT4ESG+hyPyJphCuiOnpgcptJzooMvhcvfAMkY0KDRU0rlpgdOt2He3I/OtSbADhw6wNX3GBwzEao9XdKvqVjBAjfH2GVfiDu7YlP/StRp941bbcIkyNPUSmxfUipq6diKjPAqvMStjdgiTpLwCZNbB0t+4sfLL/cZXgtD8epeHapwhskVE0LHvIEncGEmkUH2ji05E8xftntFMTY1sZiHVFc9r7g9OFdAKd+wiknf5Ure9XxhVI+yTlwt8nm5YAnyA0CXCBKnhev8wMEDfQUbTg8p4pAOFOf1nYZ8ZjagEgSSCvbhZyoP9Lk29S2K2ukuPZGgv1CjaHvgcF6g6Nu0OOhbR9HUUsGNgWp40Mx6mkXUrZaGV6CpHqbzU+BaDKNGau/npYaNsydGYSgzt0wmVmRPtR1vD/PrBRYOwhZp0dlTOjefNmIfa/iUPyjWaqXaYUqsbA5Jlum8W+5e9pZFKeijaetylu81H2MKGH78e+5qCBB/h8XoGq/bD9mB/uPIknVrcokQyHwI+yFz8CUlFySpb/nKPSquzI0j9vgysTCOiyrUF1XY0oZ8A/potNwSCnn/jaG+q01gY+H9pi7Y9xL9mlsEpUao/sfn9l8AIzRUsy3vuh2vaTPgGLIXs6DUPlofOU5jQnZdX/tuokChL9YehiiVJw0n8AL/oU9diokeI6DpyVtw96fMLZnoqJAWUWL7A+IW9mCwsi3EvlKX7Wfci22PNXNGqYW6Rec494of8PsomBWo+TufsxILNy8Cu9r79b3gXU2R9WzFQx82D4pnPeSsZCTa27srDj5D1w5pZhHXP4WkRxSERT0JQ2OBDroSMguCCK5ihqYDjEcKItVNH2J5TgJJNsrZKHSBuwIUue4YB42hDyw+qAvagaNuYHGBhiSjlvptRzNXQd3m+cU68H3gAN9CILwRgoJZuR31H0btlEMGHShfJJVC+nE9bN54OYNwrm46SHe016G4gYRoiE4H6H8IxWalwRV9yftj1rr2mSNx5olum6okIcrw+5xP+aaWczFoWIRzAGS4TMJQPbVZc+y/24Pi3qB3C8Z7GFRWcISV9DEkhb6W9R/75A78zNNm4AQzo38yOo78ClUD+RKKp0/JT/KrmxXLv4LBoxxCdePDyPNt1I+YlFFy1L4IUjx+7/JKUlwhN3kEr1goslXs8d0YvM5hZ4r70ch+/dupShFwvqs09COxgcaEWHBmeNNZgFGc+1JE6iEu9n/xYO7vHpp8YmCavR3mqqPfBvv8IHvpi5Sf0h7tCQsgpR3hLt1iAkLxIn0JI9Bz/fK1Lw3HJ1Rk5vGUQo7jm507dsVdpRaBEqh5qAHCHhYM40uwIFKljQESCa1evws5UBN8xO8FrQU8hXTPO2slrUmrv6rAgkMfUrpbmuV1bC63abrFFO9gQOPtL90bbxyA0yB1RZv82Pf9esloWbanPyX0aB/KVdkJfWFVTw1GtnG4PkM5hQUea414AWizB0oEYJPE0Ljp43I6cZwj6BR9T0AwvV/Mz6aNOOBigzve4sx6JoU3sLXmQTeMIgePG/YcsxgDU8Cd+GXbwFEy8Z8WTeMILxczBc8uWXYs6Ig+8H4jjldyf9euBBuEEfTb/g8zZKhhRLt7nuWPC+bH3DsKVOqSooB2hUatYB7Eqg6YN6o5p1FL9QbWevyioAv3I9RLdC0kQFpsx1T9WeikuNcOcAYFD8gXxVVxj6tyQHDGxovjZVl2hAjnoKkFmDVOYeT76ijejCSqeRAZfRxTZaZ8rF/npjh6Re4a4T53Sd+9PW42E5H1ef9FaZuok/p/ixrbdJI1eZuOZqf099ncVPU7i/Duv9BHXSP8KUSPKCTTWMER0yz5iT87ejH8k5sldaHTaXNR8UX/hxLwUQI1lTYkOcXnXfz6tXc1+ZB0Zkmy9kYg9gRcCFEFz2UvhW0LSjUbsRTlokjkpagqxZ+1LXrBVeVblvTthnOtA4MUB0yBmo8YsSBivNFNaY3arYT1ZhZ5IvGi4OzrrvvbKuRePaWw0ODL18f30Y/6G0CsAeTUIgX9Y08Yot8VBPyPOfkwKSlnmS2wTlcfx4eXSZfSaUICNHuj+i9S3CWd7KVU2pO4ceWyGzlO0TgXLTZGSQIxrLbHCKyX6+kDPsCllYHWSLoEmGJ20xvLaVUxH/4B4bqInG2isCvIMptZ+l3a+Pt4YyBU9HskD//jXqNgIhAuLuct5TWrEy4KJOOB+RGMLaNhyzy6GY8lXEOL5kIqq6JkVNHTLcUms+zezc5bFG5XKFbBVbBVDJCio1wCSip9nIUQWX2nX22o4yyUY8uczpXm9OEePNIr0eFIcGJvn67ad8SEo42FJoOJPCSfDfw2tI8JdJbIo42csd5ViOGsDRV8OUthlHiPa5xnWss0Ize38Z+ygBdZHeIdpsPueS1r6LxgN2AakYcw4sZLH0sJWRpvIiYpDItp8lhbIGuYVgEOFnTGzdb7G3JNbWaK91ztOFkgE5Pja8u0re8YCYjkLgMRYPHSKk2Oefl09bsHFqT4SB6HNgx12Qt+aLHs7/I9x5EW72GGXLJ104+8T2uMXTO0YeCNh9gYCfCADGUoWnUGBJzWtX+mZidbApjML9mZ+aON4txsLf1rNEAPEhUDl9ZYsgkA+g1XOKyWzdMeKuJMOUpKWKgYdT6uzXHKDqK5WAYNhJKJkxp9hTbilhsCT91nTJPvVyR61UXGQkS5742WoMcM0u445Qq23SgRRmBAArfZWeauBnaUMXZp8icMmRXGPK/UOcf5Daei2wUTqoZpXXd15m9QDi4eNqb7XO/BoMGOG4LtwWxntg6nzeQuEktzg4jr1Yz4yojt8i1Km8h/AJYEM+pGgW1UFOSKYlN+uIJmZKx2wBVB7T7c9W3IV+JIEwFow9yaFfgNH4fstZR3eQLn8JVHn8glOyoSrd9dpUvg+gp/JRQcy44SN/Pj+1FKV45K8iD4VenvulL/DxTIvFHA9A4RlYCpXgYkkNXQY/Wm8zVK2MQXY4ePRM5L2Ry5Y9jIss6+Szeor9aMgOQ4rSL34jggx/mURaWhF6Lj+l2NwNgBVZ5iZwUWgzdMTht/bvKFHMcVyH+fLtDOW/IB4TDXUz1wkp2+w6X2D9oMCgjftx2HpE9AgfOzSoIjZppHdDYEtjR4MPpCVUS3Hn0MXxW/0ShETuq4TSlyCeHoPuvLWx2kftVIlqqTypMw7cG7eMhX4T99xiWZu5vRt00TurzV0kQdmHCjMkzWcIFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMn3uEtzKU6ZcX0GpDA2brBRgBgiKxT3QjapF24/nYHPTknhhioOaF09nYv6LktUBvqjlw0qB8NcewylI7N/4aHXuw5H7iGc1DFiEBKaKlp6x86uknyTKzp6s8Co3Bv6slnOP/wVyf8+Qz0CkS2J/0YkdNMQRxGubt4bbR5jX9ollb1yPPDsKmfsrAGmcVpw9a3dFtRsYvCHfFoMXQOsKuPIqIX7+bD9WJp1bcc2UGtLEXLr/qdUMvDBRFepNWBkEcJ8XmeH3NOLfWvm+Jy2VHcj/+r9BV8w6LF3zy+JvpesG6FSd9krU8X3kqFajKAZfhAxXjhZKcVTrUUrsTnoGP95OAF7eKIwH1uH0vBlYTirWgPFaWoPKpEpF+rUAAWbx8HwrYPrOAs7sL0g+mO+oQaO7pCsKu9IT++SlmQd0BZ1N9KUlwhN3kEr1goslXs8d0YvM5hZ4r70ch+/dupShFwvksqjPlMU4OHxk7q5sVkxC2lRd1sD2O1QhKzHIM/Id3Bk5Vdh4CXWeaSXf+6fQCV3mlGgu0HFH85qznLxEKFfKM5pnrUG8k+n6+M5gV7YbkMeIkE5D+HT28xggG6SWTF/YFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnMSZ+/1NxmJVHw4gbG58BtCj+yQz1qjwJNvMYByk9dcl6ZX1XfdWX91zsoWAv8Si5uLk3Di0gstaZOpZX6MorObq1P2KGtYQnOqlYnJQsRyr+QjhSExq4y+N4rx63j993Dq3NMgxbMX5OfU+ocpytS5myedD9sEO7LxDDfM/crXbxziJktuFlUzozMtdUMmXAI7smWbwyaTx0Lyixw568LGYvp6UA15jORkmWcnI9pzs1oqp6wQUe/r9cusZKPu2pxQHw+DWKFiTw5kwpmh6FzV1XkscjzT5OghZFQFrD/y6PEV3Ja+eDSApzYlKNYJFvW/6OPzeuEsJJHPwq0gsUWEjMRyUu5tqv0exYnEk7c0HwcP+uDFxPlt00TfQiujiqLU7dMR0mK+bP7F5sxMo2KXpBB9anmuErII8fbx4KHopQYnsAXOphfu2MGVFqPgHvoFNE3fmbuNO+rW7iOIEMv4QcqxAU9+1jroO/m5ph3wdq1QGt1T7W6S9aXZ+q7337RPNWOlywzugzmOXqViPX8gXO2EcuGIIudVqrmVV7gZDWvRoVO58bVFrZtyrtV39+TCVXW3Zs3jiSVi9yLFuLdn6xa46mK+XVKlaVYoJbJeVC1Vw526+4LuxUzB72IqzNO4pfKLh7zRAtz2T6T461dOQUgruDYxXqfyDSFg2J3WNdZ1JFBGI5Nzz5KT91wtQAaTamUGsFROOwUE9oVG4hvjlmm1xVMfHhen374Okzd3Y8x8Bo9ciky/+zusjwyccmzgwz75arHVg984cYxKdBuYgbMjKzN1mvS3HIutyeUHdDUAKoxOu5jiMwbPrmfmlpvYKeuU+Z3ptuh7p/lzK7yP9CbS7ylMCpJmIU3sAx2DxyLhZPA0RUFoZFPOk6g3HK+6qyzofc7H5nLoLYH3u1IrcD5m81Qe/YEqXbNjbvdyF05vEzXK9M1Byhf8eD1xoAbVjvLBs8AiY0jKinj5XUgssR1Ym8HXGRFdAlO3bdcLJ9pQKdWd9wzYEkqDULWeVPBDwXIrwvP+lWyh+A22V2SLLjj7qib/JPLyzb12nopXYjF1vg1ek57Z073IqgO2dHpovytKv06OaMi2Qfvri1R4jTp3XiJddiyM8/BDvlO56ko2Sh8MSYNsuiaK2pxJjMVtEO3crTVxYzlK/9S7JWH5Fvo7HgSETZy5GkdTLA1eEUsuHVILDJSILP6QWeKVMT+lT5wBl4aAOAwXp+rFCBlQswJFfkqqRYxlA8QKfflQ6QwbwB1wIIGcnJximZYF2bP02Qpn9/dH70k1DCsYRQnohdj53HIGdAYlQxNC6WflyHg33ou2KawjFygAlNCnre/bqfnR5Y3i/5CA0PnovJhXVh9BizYxboJClutsuFv0phRD6IIU/aUAmq/uY+bptrOn0RgocScBpg0C1+UDXAwCzOoqEdJUYnYW3YlBOsg/iyvrdrLumu/1RmqhEmpS1OBlIyCJO1eZi7RwKSMjFGM9wk9NixcqNKzhtHEI7psnHkHfsBftxBKllJ0j/Bm/y1E3v2Ug57ikjRjZ7AhOkd1XqOb6hd3cq/2et8JUNj7u3OyLW/tIpKqkCnYnIClN5242fHp2VOcYijVV6Ff9k3Z5TXZGLPbZHv9pdb9psEAP2IK14+/96zzdj2iZCTKovbXWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb474f2qqE8qV2so2b9sdfSI0oV15xXnq7BSzjnzMOLaTySGGwf/7HOjIWQqNMdS+oPE/bUOKZzgmU4jI4+4u2eAuxQMRm6NFH4leGhWr7fFuu4vOiwcYv1eg9FqeCgI5E65PNtuPhB9g/i3vBvqbqgtB0gpjzW41M9sTGl7OXndQMSDpm/GCvKppQrUM+2D23QdUhV94d+trKSd+D0eT+2Vtk1TyKPoERo+zWCcTuePs3yQTFeXsjWHn/RoOOroZSM/1ovkWxRBN6F69mhR3EUZGJwRXLVhD78vzfSRzSDTc0WKAKPvVqD21Ed8I1k2hSbPmkv5gkxiaJ1dkWmz7nUrVJkpyLDMP2crsUjJPFEjxRWVIVOIPKD5+xANv7fm83qvH4w4I2BHmC/ineRg47Sv8AU/K1areneBQhGcs++5TyIlHNqNa9+fweDtuetO22kZRnu54y+PECRMznBAfDFbjiZWJglr0gi4immimcejDlfCxC9nEwVDR9bsLa+n4XbAZT+kdal3t46d6oXXXxeu+vQ2H8q3qnATpG/Ac1VHFGu8HqHw6zn5VE1wKsRyhYq+iJS16UC/TWB9jt7MTQ9jiaVoUjd6OOy3zaBJUufArYNH48JUVeuoK0hZ3copWjXZ27onrZCMGY/0TwrUz5XPwsllbp8IfTpMQnV1F5UfINa1inKuT3Ot7SBWk+DydNcAArogXwzxkdtB3utwDuX1yi727+E9sLULyT4I/ARSUPKFHsYLyU4s2OOShoyeBdUYc1vUQPo1+QDUA/wDcV/856U79GkkgomyRlkPtjmrFed/V4NiyDpM++cmTmYkflnIddt4DUcJLUoMYdcHEZQHaR7fmPO85StyspQ9ivTpnvE9JkTDBHhBQf3xHs/xaSFRya8uEcwrd62ceIRRdFchsP+YoGw9MRbDAqwCKKsoR6fsYVdNh2Dg0ie0sb6NzD2bb3LVPWAxNjiNMPXFvH8Wv/RYMZ00jjmqrHYNVc9uL/Bw/lWi7fll4G+qzshO4mBOrOphPftWj/yh9n9iQJbSsWUUNuXmxrg7YZwPtit3DZSpfc7oklflwb5DHIiPbmsP7draLiibfKgzHFB+g421xUe1YlSAnqEufx2PDW7paT0eCVqnjQPCRn0bO0g/A39jCucDnSDvN5PZcKnMJxqIH8f3WFcD6Sn8AM6KZ3HPdeCgGZKTecnv7jSeDeJ733RVKI+QttueM3PsvGwkx7TW0lfVE/MYsNX5mw+V2f3H8rD2Vq5ILfIjIiUv2uz7FTPhbljdlgV13fnZtw3nAwjOq1II/2tJYFX8WF6W+DYpU348eW3YY/X/etSX5awsp8CqaUOpQTVwKGtProQs3oFGbitcQesX6CClImQ7yl3a4KZBk+2lw4FK1hBXpqvxWrhg2T0o7iZjg5F1tAXvcVosxpvw0LOhZj5SMImyRtiAoKSLuKLrLfkFxic/eow4yZaWfUGloNgOs5ggEVGslUcFF9v2d06mq6rKEYySPeKFKOAJJ+MMNT03avnF84wu8zqWbVeKZV4ycU6ZuBU75apdpvPg6jnFYIb5mQQUmEZzPZKcPJGdgsqtCTstPze6e3K4wjSOEZNqQCJyesM7tXzalLx+cqnGYEeQrRPoSguHfVuOf1wjDNdJF6rAD7cBHHtdZ1JFBGI5Nzz5KT91wtQAaTamUGsFROOwUE9oVG4hvi9kBnc10Ts8I2XCEyUJKxUDxK1ybFa7RI7CB1z/bu9rVfxjLILyLXQHab6LO+Y8XH7cIIf48BWHgOiSX0cl4tS5mjJ39d5d04NNmCTwOsPVKGyCVHXdrrh89wQA3wiPl3aEI7O8tuhY17Ix/co1x1FC0dfAE3uMECHWL1W55/+lDCPdPthR106kxL+AVh17eVWM2uLk61zKsHBItiSl8JCkkcOZ6kHLEgH1zilSuBs/jy0ELlgGuT+Y6E8o01n1pmIfutGBW+hr2JxsSFKNnqC0wc+dzratXNT2/PDQzuL0tdlaU118fQH8DA3amuRw8Y4JujGFC6QpiWW7bCgiJAYU0rurOuV8ceta2xZj/fzFrkJuZzKBRdfNut66EEulVYFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnAsuG9OAYjNfWYcryVBuMLk5hIYaYvTjVfA01zWKjOn33/56BxAIvECdiZE/M7CvK4Z0Yas1wNFHtPlnPcNLcgRttGj9zxDgnGCuMuwFlPVjAWzOz5b36pQY4Db4ShRg5lkA9G3hhLu+ImhUPsifkHff/1jE9IeZZhlvhokj66lBfFMoBaMMQBJMVbK4QBtzmmzRcJK7BD/CF7+tH/4cm0WEsxpP/IP42Z0EA0PgVri5wZmK4bp+vMf+80T735e9Oy8UCyEvfQTAmUqTa4ODg3cR9/tD1lAint16jxPDPB8pe9pqwFl9TTatBbOx7T50QbAX+TbR8TSBNAiHvj0rOarwsMBVn6U40BSJSJzO7xOSmNlAZctaH/HIGyY8s7ZRY0i6bzOp3O8plWvKmr1boHWORR60Z4DbC0HZulGem0SEHumofJ5ib8g/S8pPwX8CngFkR9qv1lhD3+fEjmcBKxgPywC3Gt+fiLqSRkqdlYY74Z0Sk5Ti37LparzcqCGptXWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb6v38VqkRnMtk9pzpb790FQy81SuX6PYWs3fkfMux+hwpDbq5fMPhTr9fZcAVA+5d46MUn6TbtF2FEqm/lN5gI1ZaspiDSeva61zBeu3IdTb2ELhqvFMa/I0UE8L7k4/C4Pp6u0Zy0o4svZqnBazmkrZdvwDwxuQMwWK/jeJhdzIYFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnjgLJw+GYhGophXsk2l1tkDSE7R+ZEKq9c44ojshdSSl1KlEG53GqBS1AxaER5J7Suy/+PeqPC4/eE5ua5HfV0N1Cj8WCReKAK9ccZGRLkhcjs1KwzihHp8/5EjczgrM/5eKTgqaxYkns6O2poEW8bqMHqqdPrUo8edgf2KzZUmRbwzTj6S54z9NscTxPMFY2dWEfnrtXaVi/2N3TlmlcEmqDY4SnZfy4WeO9Lsn+KORsH4K7zqgrI4KQ4N4aDlNiOW2KGvvK94y8x39TwK/oi+fC6RoTwj4+RzfU9+gi+ZyR3165RjSUBy2LTcMVMP+dz7eJoIKf/U0kf5A3sjhxcQSMCW3YdhcuCaRMmZfPUvXMwCOeTaxkE6ocINuUFDoEsSsLO1/XweZhuh+2/ZdU/+mIV68tonKxHu2cheSZuQVJk909NywYTMGnzaFOXxgq2cTw9UqK+RN37/KxdMj3KTH9OW67r+K5ns1ppHYD3roV2ml/QlEZzZmJHivquYcqv39qvO87QXjLPAncRTJ+Wy9ZZtvEicrOjDSEhapgjBvGwQzqSBCNmJr4JLTOInEXbwJNQ4cB0wHib8aKPLc2UPIbuUYG/re0Ey+4c8Ken1gERiPlklc+R0UKBaUEMXT/rfSv753CjdJ1JMNNA7D80JEYSNhRDrWLCWjU5OSOpqV7h2RbbrIkC5ZaNYXy2EvTt4lBs25wEOJDf8ZJoxBzuNbFiQOJQVzyu1mVNHkzREw+8R3A/34WQwbjjfI/BFtlI+nEtb9kC1kKnJmk+gBDGy6aR7cVHmF45fpaESahhvK8nEcZie+yeVBV1AleGSgtSY9ba4qj81FbSUG4z0iJV4FqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnNVNzRXSEnY97cSPTry0sTMEZTHlRJx7QsJXf1KLpAgQL+A528wb0d8NF1FKfH/HHf19S9LhzLqh27JJ70MYPNJ85vI1muIXq1Z4iHNuc0XHrtNNg00uyVPLMi+gTMYICJaHZk+Yee/jy4I9f1SpZsWk9OdwFBVHT29IR+ouBhajehUd5e2rvW8tUrFV+E1D3HrY2TL/wNxW1o6fD9VBUV6PBQEty+5X6C4dkwmN0FStigDL589gVbVearSbTPzPzVX3ZhK4OlFzIJx40Wjp+kBceW+jKfjyLHhgG8Nx7bUvgqlOiTfr746YyJkBCG/dukzob4fnfZrbkQYNaKAYwfHXlQRRkrFJeCYRDDxgDG5AdPEb5el3j2Wmqw/fDTCE5rCzQUi1Y3kQBtO5lvde0vKzJKXzWo6eAw/bkTMNzbBPxHNs7JeQMp6atP4VXrLqiEoNpdwjMxDXeLCVRcXSyefGA4laFLfFTtMP57BN2j2+YHVdGfLNkdc72MpggcC5j2GsdPkCd06eDTkUuntu8JVp8f5FgUXyYB5HuzsXdAAhWoxtfTWO14R/1TTt9bEI5SBOPElXUTdSR3BkNFJS+OO+16qqsfCBXS/VCTj5iLdUwl7TlveyG1X7L/Kuuh3773hXt8EmPido+hPE3cMlpzCWrZxlFGHWk2LA1igjPHYSpVJMO80Z09PQSKM/ozd3ngpWGKma0T7mIU+PnKFeQIi9WjFYGUQb/Ll8Iva+3wmLqFVIXGYPfk/z9kCFcTRjBVJ4vCiz3CDCBKGVd6okonMvV9zYxcmaE8w+EcZeVvPV6JGl0RBnWq27/3XqRcxJV/zwHgo+z57puLy/qcAMmBqfMLZnoqJAWUWL7A+IW9mCwsi3EvlKX7Wfci22PNXNGbMlMTSBHhJFnPtcYs3gEj1hjY5ye18NmCPjS/PD2XQpaBFgoE1wI7PUNg5SFLVtX8kuv68iymjyv6hxRq9j+of1jljJ7kDDBr17GDYmZi1yss/Bf97KYgADGM6ySsim7Eku0DOXh+9DFAWupHFRG47AfSDPCcyQaPnSUgOR92VgncE7OPJ/fVnNRg221Ny0QH0QZ5FoF5UiX02XQxVTzKqzTR3O8ioPqOWa5rBYyiQO0NPwAb+XtcEfH6XELko+OZxKjSsHQDmVGXjJPGtBDBlWUaEjOT6rvkN8hvlJQB9OnnfWVPWuiWhg6/JS4AmHLfa17zH/jejYnsrzRSnGcRPy9rJwJSk45Xu+jEX/IzjIhFRnKxvx3S9/j3uhgbORoSk6ImGpaa+dJgpjRWDAeLv5HdO0uVQgMpaxO6p4nBs0Bc/MgwMG3lwxiyTMUtDa+hwJ+92RUdTFfvCYhUbOm6B1vVGrTST+PhfxwoQoGEaZIkWHGMeZPxwOAei/97urCHNs/LgL7gdc7bplGevHKSaLaMasxxOAmk5DbKF/RKiGrdWDZZgpTl5tCQWKTe2gzEISSogRldz4IAWmyHgJ0bIFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnDXBPtVhMA8melNdVbRwHuGUhJW+z2y1P5cd0YqgU8gt4awcd6QUbDfU1ukPoEkx5/TS7+VRBfqGu3mfFMmCtIWyRbYY10a80vJHZGStIt2QSCEqC1gnWBTpG3BKELKpkDPXYoAY99Xs40UkRTztH2XuMiqwL2gjWJu86Iz/bnI3rE0abNj7w0+HxpS6PtPpqItGfTh+ItflNXPB6dJuFSlWH/iePtkz7ecqDbfNyKmhNxmgn4gYQl5glx961e0swyaKi5Qy9KBJUuDM5zcjVq6zEdvftA1EbIhZIrYxCgF/C4sQnN7vGgWSI8zijS6GSqgLo+DuLJzlxz3vd0kWND73t1LaXvxmxXjcWmzskSeNLzEwPyNSQYbf+YddqEWfrz6Q6BEeyXte/y1AaJZJWio00g0/0ql2JjAP+9zNC6TegGnMRI4axNSjVEqPy4fTIgtJY15QkN1p7/scNChwU78wKkjKGHHbgfKwNl0sMan+AqMlZBa+QG+42b5ox/8yVknmQaK47N2uFCaOV/gvdnVcukeh8OcHUo2ahfh7lYaE/Y2pna786V3aX7vErs3bG8LeFiSXpJe9vkbhxxxAbCIFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnKBMF2xj2afTUm0QLAq7ibHN/XU1GnBMAcIYIKCQ0Gg88KO0+cxlRiXdX3MUDMiN45t/8tdMfUR34DUAdfpEcIheZp3YnOSCsSUuuOSk46Y25TbADhkXzyrmLb1MXA1YxEGDTTK+Vse+4xuC+p7RTB/5MziPdksBQzrAsZSbxxNneNduRVVwO1cr5KUiaQROAaTh4J1gTGITXrnZiUcvsuF4r3vIfnCsV0OHlp7w78K5v+zwOKckm/kFdKmKBrC1RUBo9iVfrLqkk271f8vdg76YtrNXE+XJKT0atVPiK0OoPksZCJRk+EAn5Hzzd+lc3r8P4BsEB3kwyMtV6ch2LzhSX6Qhkl9ta+LW6VNTZ4XIfNQG22APiUmcTHaEg9udgBxiKLhgX6phVmzuMkKPrgWNA1jsspcEEFnC0Rxb/lbavTzaDQT3ah3ZjC5oSIXjVv7Ftv08pvh6SnKsTkIlPKBJLtAzl4fvQxQFrqRxURuOwH0gzwnMkGj50lIDkfdlYOTK4emFb6yrvQjbbnNyd/+NbbMN1HhdlN5MBj5N+SlwR1dfYsL3maiUc45Q5HydkielyhLyh2nrqs+SYc9pL2nYo0YF3Trh0jeClPknGkjYNf2FOY1z8PLBuQJ2r2z5U3QsWL1m5OELdb4B6RHqZre52No73qiLp5JAOQcT/+pOTBEfDpeXWPz225nB4oFlprfKUIWKu11nrSkNS7A0sMHweHylSYje5rw+IlS6upiNY3FwrvOfCQaKennfRaI9XQNm1BmN5QWTPWvO6AOp2lih0/DaQcp8lqIxkBmeCXCxQIfEV19/m3HayPEvjInDRWgMU/CuEe6pIfUyXjriVHwY2rZybFBhUmGfmMSYGMHZ+cCy0Bx7vFW6QyF4oYZER30WWDsDflYv7Z2cMJPdf20Dn4f48nrKKu5oeIpLuKoTHogFRYDIylRSL45uObdCR8G674lg+O95+yO2FZlY6LHZRHOlzQAAU9ydwTnkGOtHiezwc4a9Zo3tuz/PHR7XAH9TtNZb9upRqJ8yOciAsRciXoL6S+XsTIIYOJEvSoZmJstldH02uN2lYZ7WL/mD1Q9BOaqbGH286+jR6w6h0G5KMlLonBEO9IA3N3xKKAEJOuAkTU7fnZEtgDsYg4BnHkpQn5Mt3VP3JBxNvCWK36bOzWmyIHHjfv8YMGyYN0jtFo1448jRdBq9CjCzeEwU3wsYLPzrkS/rL1fBp2yUga7n1cwleIMsdXAWwD8bO8lkwGJmQjCFJW4L2mVvyKZMUDQ0unkV8eKcDhOxohkPmbvJJr7U2Amw8L+UPPyu1xxqRjM1xaLbopJJdJAuZ1YX3fJDpUDfn0pqKzZa7A3yMsu1kIUGetX6xZ5O3f1D3FCr3aqXri+615IFT6YyVrLiBbCL1lU608DDfhZkyb9wMeie126R183C4/JcyMYJtAxKeKOyErN3HW2q9BsCcIEo4RB2wbLXzVVsapteqHr50kaN7KMJ3wjwqACEjGeLMrhuU8icOu6BTqOOwJFB2XilOo2Fek8CPKc3FxKtyczwudRsG2f10VZXgyVy4CDa6PGdjbyRLm2IsfuFo4u6DXpLLVWbjVZ3dDpImqqdAP9cnEbooIpepQgA7mImW6MrHwoWGwoPgW68Hz6IdxxJsktlnx6WbWRpDAO1l7zad+tO7JnsT5CSxNmLQaYVRuRVGqCJKUlwhN3kEr1goslXs8d0YvM5hZ4r70ch+/dupShFwvnrDjCYTKb82mHPasOlPYjbyubFeMkEA6suIehCKBtlw2C4MSQZkrZQkwDhuFPRGqZPKfcS8Zq+5pZCkF8bmJGnTqtlM2TYbLucrDzI7J4t2EZHGdt2FZ9Tp0RgBbR2T8KrSLN2BvY3gLjjD54jTmlqUZg039hc2HTErmqP50WGMDA1nv9oTvKzaB6BMzy43LC+NZ+C+pp5qrPaR2wv4qXKe46gWGC0Uz6spwYtWZkZqpVbcVtzasBc2UnqOYaE9xCasR1142E7mZ0ihejHt2Q4kJVbA+covUys1DF6GpimdJQOG5+ys+XCKVGux5sdYG9T8ZHwpQgU+aDqkbhCFsSiNqslbr7ZKYed8etE8EfMu6wevCxcFJ6dzb/PNONR7XJtSRMQKLT5A3bh1UMjoWUCFdvoJMyQJz80MTWhErPXPXPgf4uT56mLiuIiCfXJEs4cACYsDEg1ph5tt8B+X8/qYVDm2+OpiNnfi2VbkCBC3lGHWaVvb5lDFtEPpTq5+ExG2YV22D8lWjrtm2tLi2hg+/ocev6L6QPVaOavVheRLjTPpvyo85woAiDWL/T3axPQsmXXVWtlsecKKu1W9Xj03B2djtcKmm5cuA85/tB5yBIQQvrJhnApMa5fQKq2yuk9uAeAXMmHrcvalYVm7DXOa+UdtbOHa7Bp9cdYcjhSapz3TRahXQCf38+N9dtp5uMKSh5RA5iyvvIxpqYQ2c4yGVQJhJhgWpOxap+C1DdYBcNxcs83CPyQ7hgoPuI8pBNVXIEg2MdNsKRqiMtI/TeOwdpeKzN2phtIXRZey+jbpSLF6rJc2SPErwJuxPI/EsHGgeqrhCIjgefabLH6hfOl6APr01MoFSfpP2hzstzTbyZ8jsl6SpI6oT/k6LBOkiu6BBuoHO70xctD5oWVpZcBEs2grjmT1hpRJ/ettgtgeoDP3RHEZaguaeLbzDAQLGjkzIcCtenJktqCKedJ2LxddO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY40Nt1TxrsuKA7i2T5ZXX2Lt+3Y86mWpkBV2CyIBlHbJHj3+GansFeBorFSPPEfPqr/X5ykXBcAVm36kOWBjV5WgHm1PpittYZx4zHLeu4l5F+MqRvE36xqLHknTYRSqO1gU9jpOCXgHkMQYwy1DmGF4sy/OqvA3p5xvxlJOEltiA2B8uv6beZj6jKZn5VkTkf34gpfk2fZpKz/479AJU0RKUlwhN3kEr1goslXs8d0YvM5hZ4r70ch+/dupShFwvivwIUukegQMdOhS741KtWCF+FXps/nTTT/d2Tl3JMS/MxGWydHrrklIotMaA5wzvd9hs6UP5jpiSc64Pen8TjaiUEkJlWtmc/msf61UGnzYbpC+bIUQgZ73O77Z+gtwSblxI5VIEvqReyFUkdXlKzxeEoM8Dk2QJ3uJwue8XV/1HdVof/mYq2DGBN4oT3MgKy6AuPuJd8xim5YBwJHkzJG2gSy5dQv4iR/LYjH7lsJmTN+tbnhz9c2w2MXPotlqG87Lg1keolcVw8bMLRfwEzJncBL1uJeSc7RhO2pPsAzOQr1I2lhUksPsknpVogUWMri0X/S5p0lK5c/CM+L1BoiHCqIug3eZQDESVnQqCu+d2l1FfDquTfHoOCQcH2cwK8Pytpm4CwUC+XcaiIzpGvomdGwCA4Ws/DTzDDz+IVPdVOSQBPjZjLHX5x/EGbW5BATosDsNrfjORgZAcNxbFCUk1yUl38lzFS9dUl63stI67NnRPzzH8ILXbH0qenD5SFRC+4h6w0wvGendTb8e6pOFwKkY979DrzgPYTkLPP7TAjs3rVvYW1twj45AR7rgXG9Dp5+3dlf0/HWtOcz8XFHvbKoWW2aXO+wu/f8NYVn13+4x5hDwhZBbzf/y0jDwVrXtoifogX5AjfSg9qcOuk9UpF+MkwNkIQ29JddGnbTknjzXZc233HtuQio9Ie/eyLcR31z3/1K1Rk4sB95AoxOvL0LYdDol8f9I7Z9Kb9Wc62cyhMGw/4kipbE8SC/6EMyydJTpb6EBzCVw53LCYyl7clFlLwIsW6GoXFt0um2TSfmInmPIAcQiM6mfQiEZ+UPMQzkOZd9aBjzzqVF0ALCTOqBgmQdlpQpwLK62IvfmJ349OreppFE83vR2hGGEVnzSOlTL3ngaKbCpmEiQ6O+b2UuoPeJJyGH+eFaYfa+Db9rxlhPeKjnwWrCo1VkLK0vOqBqoUOcXz1wldR0R7v5/Wtyyhb3cw0vJpG4tamiO+jjL+7FB1dev25CopDEod+A/W8+WtU0/8paxU3sazjSjAbafz6wu5XFOhsPLx+hgbIpDKky0P4kpoqfwoeLgjVuEsRAyUyygsa59uIsOT2JiCc2uc98mtZHXeFz5/nB1R4J9ZHlQDWkkEi4KD568hqrSLN2BvY3gLjjD54jTmlqUZg039hc2HTErmqP50WGMzIDIYCnDbF6b/0DIGyD5qd6Ad5++tF3RvI0tLpEpzHiCFULkquNAkrMjHuxOr/qog0LMICVomQo0AgD01xE1Vk7G6TBWni745VtzJZXyEKEHeaOdcR31UMN9HJS9O7omfiKPugk4KZUJDxDGtuQznN+4+EnQSzlMJMohs3YqMJLhDYuO03lWMntW3rZT5TcrSIzXvMYp0GYDSkIrkOzjZrD8WIDU5NN3am+6L68ZpbO7+Kf3UCAkfnKdYk8Xr4KqqXvUATtAcwNuHQSqt96YjxwA46wv+CvlUgPb3NFOwvj21rF1ouCyePIiQgSu9Tk8bkd7Irb34vzRIagPaWDYvkpzXSWUw5FKTggqmfjSCm9gBMNllvtHFeFw5kd9opG0MDXBzEhsEuCtHxz5AeBAMAWujoFnRFXzXdTzjqY+lVMDYhX74lISr645t2brIans5P4vHwW7dpoySfJ6SrB9a0pSXCE3eQSvWCiyVezx3Ri8zmFnivvRyH7926lKEXC+2+2TlhMj9jqBEVnyAfCd67SMUiJdBDDpGZJ96Y1RFC7rmm3Eqdjv19pJNlmbGKekkDsCixEp/zB13lJ/AuUE8TnDkSqcxmJNANB3+YrzgiwoFzHwmwz9eCmAgpVcqCGlqoZpXXd15m9QDi4eNqb7XO/BoMGOG4LtwWxntg6nzeSjrKlyew+0iJiWpnQAHHNNkHe8xNtk2P62/TGANed77z9DlCgd5OAOjGzID8oqFh0msWesHIMtLA0u3gPtA3DTmC0M61xU32u7J7nxHCDuRtksWoB2cL45fS/yEhBcXzrTTPDhGomcERD7jaa1t7L1Lgo+S9adcNG4lbaKU9L6tG4uuwIJSHtPMXfyQBZqtvmwojvpEUIMArWLGO7DwJrHLMFe8vzKDDV6kzzkvdT/1q9ETAmRQFp+2SYhBr7QY55dO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY1GDbkWkVlvwxru1/Eken9X4DwJMEw8D6PqfX3SvcX/QgbS8SXVY7sVosiUhbcqVIFXx4ASpuhYKe6cHbUMW+m1QO8FggGydXJbgcQSJOVpNeWCLoGoNnjjNVCvPsmpNCPVrEzWiMUfKkbOws/8Cm/Pun3B24pgcM1Ol9YNZBHY4JlP78QXIwYHJFtInULMtfFLt4l0Cep2fTvLokt6aPKjnGyCyLTRfAAgNOumydGQuAiyteJyB7f9AAF0+3fQOOizZlDrq2SAtIfYjmppo0N0HL0UJ3eNeflERsC/yqdB5FL0KKUdF9NkF5XtKoSw0yHl3+DdRG6bNawX3zYsvAb6yW5IHSLGo3qcFLuFEb8PLRHmbCPlTOs13W5Q6bxRGsPc0EpADtX3lMCNh0d9zM+XV3YgV55e3XVTNSqmIh0c4bmkvbphHKW2jbfFLb2me23Nuwa+dtoHVW7Qy6vk/50sYdRsIwzkzjTSHXcfwrZ3fPpHCgbWpn7M65dPiTw0wMubB4xF+ZUFsFdR7ki10kBkxVIpCWuOiiEAroaB3W54kiMLHKq1Y3dkgM9SM9PT+B1Q9lKTxDzKJj7TuPELLiuUxOqGzwSx5thk5ypTlG0dl8w5w4wZyByfIDR72a+6HbyaQ0Ep7TkDD1Ms2igNVE9ulP2Fsen/mFJbGYbvuw1QzPWIezq1saY/UtpiOVg3qJkgfQLkHef8jTa8pwVQmRIYadZYzpqlaOFXhv5ffb3Vj2cGYUipXgLMGjbweUsXtc2ViUNvMwm6pqBgWUW+hGNvpLV0J6n2toF2y/G7wHKLTv55ckBwYa0vwTes1abEFMheZP5cSSfYiAmuL45YHpxlPlHcI6m0qAGRi8BsodgZwGxvLEjsC22fxYTji/0QiuyYF8rQQWwSJP7tfh/YEn0UHcMFAy7gnSuLEUT7QW8qODUor1EOjRISqR28kbza6ASsyUEhfhKNP4bgq8+QZMZS6MwiONU3mzpnTdqnW6buGKu1clHp1fh77W23BRgIE+vQIi89Ia95cnNSQGKDuwo+JybvOwzPN3HN9sRc2pyOn0BAukntiOw60vkg5Z2BGKhcQ5It2Ay4wUZfSbMMIUl6Esb5MWSOP26J8W1egAtYGfWbp4JpzXoyh4S8YG/m/EqYwOMKSBsBKiAsZ34QY9pWFk5984fCo+23XEJGoG0uqCfuKjo1n/VHtn76CG7w1ZtIHMkTs+ukQx9tbIja4+gspQQVQALuMRHyl524v7x63rz/OXPr/jH90du/1efwRfwnJ4bS0A1OcBsx25I5FRjdMOXIOuvimTnMkZ64Otz0pE0JIoyCT1hHWzIQ/ijgTTaxP34NvWVCtv+hmLzHliEjJvQOBmMlPhokCN0M/b5GGIk3ZEdFVP+jvF9DWUGa2V/d1gO5N10U/6wGVSvincYVRY2P9hsn8ve39wakdE2Fbldc+CULRBXFUIzOwg2eSzfGMHjsLQCbFmEdSz7uoNnwYn3qXRnHjoyZttTSj+6ziH5dE6HCmMy8w+jclFLg1YpeBgr0M/n03b8tWz31HNU2ZlvXojsYC+LiZ1KiO+J4LxqAo0UOJUBFpTcHOn5U4g7dPL4u8aSA/UKwc9GPJRV6R7TqHSiSaIhKMV+eQOLx4UwYIQpzCV6cDi2m4SNAzrl4xip9tYkSl3zWpu40fhsVTibBdeeLaWAolEv8rXfjdaHhpc5CwrsfJXFrjYnE4RnIRrpCq51+6RSkVCq5ZGAjZmJLQg80Y2IyM0868A4iNU6YM2Oh6F8SDXDdVmsUw8j+ssbIXNatUwUphURAvuISX19+upw5t8dX/Z0ncQIzGaR1mmVLkSPbMcl3P1gtkzDrFua15U6n7cCwiqAldqrwGWEFNUfDttNI1g/+XRbTf6kXPeF5V3rU/Md2IVMINY9fxP32AlFz7aO6eV2OzFH0q17/QGT0AP4GeF63wLnfJPoH6UVvZo0H8tpou8u7gYAdmlKc929SpuTwTSgMG35vN9/3MyaEkkmy74JxSR+V61ejKdrVbX39ZcP/KtPS3WAIhc6P58dClPbZq8E4RMAvx3wqek7T/sXWvcdiCfiAAbL6Nz7NyWH/ueRfDB4vk/WndjoYpbMmRu4lsm5OMg/NeHcEbzBoXOJT/SzJzeFTuhe+2xou+V0f2wTxksbP0THpy6eyHVkkqLi38OOWs0BcCDCEWMGXpZmVENfB0j51xGSplsAr/erKKrhIRQ1z+TFBCIBhaoa9p7xMGBu1wD3ZvDh2ueZloI2dIQBXCo/KJDiYaUONgLBzcNVqaA5GN6vE6M6+O18s2lg9hL50skiHuLIFFIgX7dl7KrUgEz4A4CLmvFaYS0+KRCkZk8ex+SlfGllGrAnsIU7zPhOVODg1dO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY/Of97386bn62iUfl+cqBiTyzYgIsKsQOqo2nayHxdUO6VkcDVGBGEm+YjHpqTk+wtdqLIHD+u/leKu1VTDccKiDRcw3ouMk3MUdzSz2H2bvgvClsATHVu7SQgdcPlS8gIFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMnCWXo39vFkRKD2D42N5sIZxLm01t3sL8XIaSU62n86qTp+S1/T7Dk6J4Hik/QSXtpFWjU5h20LBFvF9/fAqH8uVECpYb25aWR2901oc70km0ih1C8JcdWooTOpSqM51V+v/DpK0w2rlxMXNE1nKPSq5B+thhsYzSMCPVNu05QrCRKUlwhN3kEr1goslXs8d0YvM5hZ4r70ch+/dupShFwvlazMXNTHmloG80De/9IB0kF68CAMMlgPOSMPkpvVD/SOLDtBo0tuljL9ofzki/Azw3EXWq6GIpW1tvIwWmjvq3FWgtdJtG9lSrclDdzOjWFiVLUnBYyWfxfOw5iunQZOqqGaV13deZvUA4uHjam+1zvwaDBjhuC7cFsZ7YOp83kISLDGk/IPQ1Sig10sv2zTBHxxhWdMQb/gPc3c673mV+HxAMo2a0cNfgH/2U9/vbXe/b1w9jM26wYdqpRhnnzR7QoHDoRsPG7L2/eqPqSJ2eCE3cNb1TwuYc3CtU4oh71OC6K0sUrKEOW4S1k9JcNhoPjXXb5Eor0DnfGfAxmO2vA9b+l45G8uSYHJo9VpDCmZjetCPxpzS/5yPUn+B+7LoIX+A/oIFVrJZmyE6aj9l+bUh7uzv6pORSMj6DPNvUXOzn2r8pctpPj7mm87/9ti8H9eVrJ9I3rbLkoCkBt1VtiODAxZK5tJhlXKECyJ21smJC4Dv5KQ4CdiWyDMgUVLO29susZ4KoPSFPdgUGDlPMT0bYD5+IFZZqjpiKQf7dm+b+Gf5/gfMV2d+cNoPJ5mCWsxGT2LrNsvvbdj21z1wJUz7d7d3sY7FiQdzeWxDB9x4Lvj8EefCzNX8FwSOfNafsDtQLWVTVZXRWnhFIpKThxqaD8WKcjFXdjKd5VI1KnNltVgMchPssp45gn+LMfFIxL44/uadYvw31IvethJB1B3xFR451yL0lK5bjSE5DxwvTAEyXuj40LqqiL+urHNp62h76kbQZNO9YFCmQlvL12qwiXD3hVhBcSmf3MX06TTLS7ywd0kEmBVHljOomHwlkAPnTW72CSsBNW9hpa3Sd7/3pfQiJArVPXRUYjdyhY4lFx+w2rH5ZxgXh75TQ8bbfCRW60VCmQBzdOyHpaHMW/ZR/HaNu+4JvbWrvBT8lCwkoYrduapSHP/SF3yD+ew+2/td3HCIa1/rONT9Gax86AX8y1pxTFNPiHu5gi0OpA6dhbVEzmiFc9BurvVc2DVjKIKmiLz3oKoB0UfauWpw8h0pCwOCUQz/nLbZDLrp1JVvoyFYz1oIU23j7LVKa4XwwZ8dYhC+xD0hwuSD0x48j39NKeuHR45jZx6Z86rsr8NkdaU3K2UJ6A89lGFJqLTY8rLcCuPn7x6aNfIX1d1L1VQ868n+fDJPxdHG+lGPHUOTbYgs186asC44tzhJnJztpY7sX4LPpLkugT4rSlDxFdO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzY5ayLdHYgOsyg/E35K2wjuZ3q/UfInRsyorwWd8D1+V/VXLrsSyEIG/m4sOHTp+BXagjriCpTmo0PzsspBmAhLwdgEAbOSx9HPeOynlmKBVtZ5NjLzGi2i0+zspj+JZqsNb1ZzHkPM5khoSvnFXYauh7nsMY1viMLRvUlRQWSdDAh4N96LtimsIxcoAJTQp63v26n50eWN4v+QgND56LyYWhe2WY9DKrzSq7HD6gHQvHiYvhcyI9GmWuybQxQcvAw25WyBwfn2AkRWDk4LqXzOgXrUtlcvKV6fv0BzHt1ptpv1Jtzg66BUCBkzDsInCsW9/UCy6z+O25Udh6K81HmjQuluQOzv7gH+Fxs0mZswtYazAcXQXZ/40wkLla0hwCqK1GbGOiUwvcfRYFmC3e8QMAcxrIW1d/tQ4pqa9Do7vDu1aRNPYYblFDlfqAmN2JyD0JR7TNozM/iapr5y3TT5Hsh4VM2VrB18Py+UcWceqcupeG9N5YAXxn2xHnGQ8xer7D2OwJ+6RTNahv4twjsn/K6q6DEmmM6yfeFmvWweHWtXgd3A+rczLWtAz9O6heAI22XXRXWX6b79YQx7wUMw8n6LovhBhJVSB0VqJFUXwt/EA4h5hbi1S+xNCsyihTDlCoIk4dBshjNnIH+k9++IGTlHGnMbTirVVt7pXQlbBicKGsJQrT3MvS2nYIr9/I7e/vLaDzUUlCsm56GtEBi1OzOYBf/l75flRWqHZmnWzj3/XzwldW0wSFx3qX5ep8aciu4K1El66YpuEsDMkSCn5jy637B8cz3WOeYKNrISKT34lEanBcEQW2fBXjr/5huBGCHZCTFE6uXGDOuXdexaBdU9eGv3j76KYhL+0S+XT+AUOcmb24v56ouA603rmrz+vUskm3j2UhdPHSfzd7yU3m+ZCUhqmKq8BpNJ0dyHyHEku0DOXh+9DFAWupHFRG47AfSDPCcyQaPnSUgOR92Vg9Txqz+GfhvlSZwgDyVHxCPeXUc4pTU0zT/0j52hl7z0yc9snJeZCHB+YJwRDT7+KjelXcMJgE5NbJsKgwZ+r98qjU/8Ulii3qtGspH6WVpaEUTgiDd5cD0dfdU2lqeBPNHIAVw1po9rpr0n8xiFD8CK9F1vugTCLrdmlYSg95nUJ3ibjWGrYi+9pK5AMgE9buL/pt1KxNDmPoTtVqr3HYNnjhcR5PBlBYzww1TugdvUcfscs17s2caihqTGBjE/+MejBteTfNpSGrjW9IXN8M4zK4JpfDPswZjSZ0DPNzRJ17O59sUb4VUK9ap9A8xLmlYO09wAs3sE24UKHx6iPiCt7i6QADBpcb/7o7P8uHGMNzTgTX49s7l5kF7dHlJvg9Vl7O0FMvF5+SB8/QhfZdFryahWMYWhoOZup4XNc/24VoP/uEoxaY16l3yjVGtexIavz4nj7KK4+nYbRLhT6OHgs62rA96KtrUfKYv8Vhn78/h0jss98GeGhsccgAdgKyErT8pf+zi0KbZ3z9S7rHAB+7Q8Zs15KlG9iigyOIRn24Q+Fkw/O+IaQR3GYiE+Xb/HflNd8Anp92g63iHVXqyKYPQc49kKAzXrK30E//+Zs+3uffApNmdmRuZ0WmozgPFpkqXgy7JUvrCIoYwznea37SC3Ylu7KPsVgPesBerjj+IoqtIwEzXQ2gQBvDxWEulbB3K+TA+ZZBYCAF+XVjmzKPuTvGHdmZ7izLlyn98ljEyunBXKYGjYfl4qdWv3YLHI9zarij3lZwqArxpVIC/xer2KtTTlQPkejsDro/4lkZ6qrjUuKLUVZUXZ+JORQUzG2uDhbzTuxyyxfEeSwarNUVbNlHQdp6XU7LPlBlHAdmBB66MKBkIDLo3F0/g2Yx5DAjwxOJwdaLI1cXEwPVduHvTK75djtBs4rNE+6+F7Itk0HsLPPFpphouLeseMD1Gw/2PUsd5zPJiv98av52cRR3KAqT8c4NN3xG0LJjMa6pM1C817UYTNG8PAxKzUKKwIXV/Vd6Az0HA9KZ28bzbkDK1mrOZDqATJBJJwxzPxt8ngo/ApCZU3Xtbn3lUuN0gikUwk4tPe48mzld/z17CnzB91IcukEO0q9plQ79csHOSWUDx4XEPIajbJHlgBauB23vytQYpuJm9qH3ZsqDIl8A0HvF6LCxt2ZscjOxcCzciNwwAjEDyEsjSTmu+GjOht4H9g8CilrnQxetIioe9flmfjInYxHCEK5uTXFY8unL5Nx5sHrgvM5hf61seJtmPjsQ3SnKENMVTs85nH7kPWymp8nXnWf76emrBndGPrI7EizvafzPBlEHg2rFwsAXjjKEcqX7N4WENyItXcZsHrD7j2DjYZWvI7Yw/ivv6W0PF1tjvNcvlBlrcCHVfCfjVlOdcqRYcRtQBA3kEoiAd9l6tLUY3gNs3fr6vGx7B8V3rNwFZcxJtmGXg7osQNa/4a4Kaf+uWotdJ5vBu+7iN3ChMRFS/3O/8IxlrktMqTCDnBnFPF/zeJcbjlZOpAyqhmldd3Xmb1AOLh42pvtc78GgwY4bgu3BbGe2DqfN5IPphn4CwTPmctIGnB/tK1OBoDx8T8fFLjdvjLUNFSqL//S+jpfc57r6O0WpEgFWh07RwTyyXWF0XPt4vHKPt+YZU1z3KMMFW/ZJhfOgpokWQ8xu/dMCeWpgSMN4U7KUhSHTnipLPBwUcl/ow3AAsA3MQ/HEf0qsASNviXDt/UDe6w7o4lGFOmu1+42cA7L/ZKEhL+1/4pib4RnwgQ3QqnfcT4m6/0l3Y8oHmH/9vJ9RRh2m4rSK5A6PxAWaimkSFMGriLcEbBUUeJ1zof+c1kv925be2/5pLyqMiv/mP+6I0nfOwc0LHT5kc5wnipzzbXymoSnYGs5TyEuQE6w9ArM7Mug9AK4Prg9hzRiVBEuaSwb8omXrW47UmfBvg4dCy0tYvsPZit0fZivbwkJ16tyMolidVouyGUFQP/NAgOWNXOHvEsHUOnso9smbwaZjJH/+6BpqQRiNE9i4i1ZaSf3g1uLB5pa8MZzylw5ttyEgmgZ/AnYwJwBq4SvJ2v/zSreGFGFBtk0Iz5bz9P+PTUA89cLI0aXFu7X1K+WvvTRLqiEPWAC+72DjRkwGoguwvS8TS2yqKQZ9FhMOdSboBhvURSDyV+hEJFInCMrHMLEC8PlIXj2/HI7RSrNglWITZ/DhYYBHtxgybdc8iy/DtJnq7J3n/xrtknNR5yGqdBmxYnT7FFKs+mm0Hjif4o0kYjNjLxAQ1TmzeO55zUkXnRzNjoLlxl8rV/YolnDIsib3b79HYaNs+qQ4dDajlHN1/QkaiGF0A81BzhVF457pi5c/KOtseAbYwvCxuDpydfsjkogoKdeKziuZwzQbkHD2YCEl5D12gNlPrnbxx3RzDriXAjPHYZEbc3zvn9mLwVJEHVYSh4UT0xlyr9GkXkmE+LNK1CtnMdaac2foXECpF89l/wEqH2aWZuDTYnmQZ+zi/O4dygoH0EcE+M/6C8ftgU4E7fi+0QUNplsJqPPoe+dCmt9qUP3GixIOPJZlqqS+2tiPUCT0+535lCeu7dIUM4hvmvNtyOf4/l1RBjifgF03wnHmna2UHLiY/K1utdgfMyR0p9BCRIpgh8WAiBo8nFHA+QCUlAeraH7CM3jNJItIYwgLll20SIfH6NWpA74MAWAUlDf7/uwzoyznGO04aZ55J3NesByTJW197mi2aoXCs6cmSMaQKpASvNWH2/iNx2dTPij/UweDZSjFx1R+7dkWqmewdUQBWEETt6jWPPsd3ABuhJrL3YEd5/NBtc7gxV/JmqQpqCWixFxeiWFNqmD3JKwROb907S7NI/HYaJHYLMeHt1DNmaCh/GYxOrCAwhLW5Kh3pklKYE74NcWHSPU800/90dobu7pGQhawOcCqhmldd3Xmb1AOLh42pvtc78GgwY4bgu3BbGe2DqfN5MtznH8WMRM3gAzTORhhxflMjXtBy+C+7PC9VE1lWgIoYXhgZffmCOtZ9afRqVUcW0QXe/M72WiU3jLXaT3bpbNSQk6Dd0LGezV3roc+VAB0pLfmku3Y32u0jyrCt7B8ig+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvOgtyIpBUqWCBL+gG1/ZzVq0ioV4hQGv7ekRTJYkqNcSUtmxrkcPTL3JZ48vhBOHHuQ3uRzWcVPMU1N24GsynwkN88osPzP9Q36w+jpBgoCtKnThJV1PWnv8qVOSg6rIKiIKwTv41cy//fhijdnWs5xNJAH3H6dGmAJ3nvN0FpE+NpHt+Y87zlK3KylD2K9Ome8T0mRMMEeEFB/fEez/FpIVMqPfnShXThuzvbYE6nPdwy/Gf5DaoaUFKnCRRGak0thDNamlH4EjE1mTk8M+UqxmRAP5yBL2Es3KgIhTvQbh3AUN8bisYX+lZmXMCPgS7lF28GCW7kA6v15IS3lAyJ0C/pR1s2vpIKd1LDA2qy5U4FEBBkzNIW36EuHqF5AJssXTuLYF0wQmRRU5Q13uCTlMaz53QmAlgnQZW7PQZn82NkmZEG/x66aEaqOTRT7Aa7oui/cSNUCjl047tr9cRlWB7QmcBJq61pKAGZghZ9124KnKlXCxaIWvhJG2aKFNkuSZbW09sr5BjVWoVu0PGJUMBrCzAuhOyHkbxuOXXE9Ywqv4hCdfNX0p7d8eOx2IehwvTQ1QL6lAQeIrW/MUM4YuzQdZrKYjyrxUoHMp9WkjVNgw2mOOMGgKggJJBFL0Erw43K8PHxleo7lC5jkwCOSeSynluPJe5RSOeZuILWbpU1bhPyLm4GCH//eOvChxosD7YWvrTats/xOGOyHzMPuf5I7vvFLrvHrmhyO3drBNFRIxAOia7PAJhM35J6k2m40eynhilQiMMBdoW0SQ0EZPEHqbZb72L/qZJ4yuY+/psGcn7YuX0/9/ri6JWc5O1P7wIy6armYhfDHVGwVbFff9dgXjDpp5xrjyUEXl/neopAQ5N66w39xa5ocrwBvaiggu1NZOV0XSQXE5uCJwcK3Y5aM0stQmNNTHFNx0UVKSk80gba119+/zZMohO2ZNOJVT1n4TKXeIBE7d2Fa5mPogXnsyKSRTb9ww797USZxfelB6Lh+A/UBxGgEHdCkUvcwPtIZM30peUviZ3HaoITdcL5JlyeLT1z5C/yPAjMXzVAUB/QMtRe/bktcekGYNbWFho7nxdD71wnsErgmigeq2fNwHstiar6jMy++ZNwE2gJ/N7RjbXFfoMe3WpYvU5s5x8VM22oDfjSLnW2CMFrX1hAFwmM5rKUn/H455em36cKfKWGYYVLblWCzWTaE9jRheFCbTiHd9fNI+Te5UYNgxuw0iKuW6pKD9nAcHbsPEEcOTD67H9Z3MJTCi3BVaebUz/3l67KQ9HNQC/oKJvTdZ8pd1rZ6YhiYb8A1uBPkUeMXTO0YeCNh9gYCfCADGUoWnUGBJzWtX+mZidbApjML3Wd+DOsup9QZOxLPIQ/hOL6tVFVmc7fF8VsucvYdQh0bJZ6AVhtbITe2SZEEzCFwWkp6mQV07U2lRo5CfIfZudJiXw0hmq7g+xtIS/6XQHBSQbDHXPU2md/tzb04xghQuDANShwweDj4W+fciyY4M8dWCEmj2q8N0nlhrVycazDKXVah7+0W33cFW0tgedzgj7Nm1DuPjMT4eJQqqzabE50HQ/Lgq1HHLm3jfeHeNc93huX/CN71uTxS66U0NszJ78YQ/On+m40fCwZA+4qpLmbQg0l8y04aW3FXtNj1HtHM8NlNelBNazrkMYnQEp1R0j49jL94YD7zCyWjdmkBpfY4q6w2Y29G2jS+EEBTTs8vjfL2KWTyH1GZ10ylPa0hOkpBPuE/QXA3X0OexPN5HzFGqCFuZ0DRtdlTA9lb+kGcmQCoZV7FIoD2PDtxJfQzKrnxpFQYQX5m2TuVMrI4xgZJO65J3h8WcQZ0xPvVFPrJscSJNvZD1jgNU1dXh+YbkQSXesz0wPCrBSD3J64YN9iOpuzx+hCKv7bsIFdoTAMd7j5mt+fPs9wSDWSpEg5GpfWrKNF0G2nvD0RA58hbgfzAqgFy6S5ji+nb8/dS5EvIXFyE2lldnxylfZb6OZdh97lzSiqsHciF9gXQ5RRhGjvX3zAeQhoI1x58ZNekly56h3zw9bTt5e2wI2kNv9forGNcmxavAQ0nedrXuRrrnl+HMXcMNdhsOzrVFrlOFSvPG6iEdr/bpTQ/9mvxW2jPrH6/AQgfxPoygTQ/Facx423dA26RpzrNCSQrL65ZkdUhA9t+Y853t3AZsjdn/QPJPlxXcYfhT7xkksN7mH0K6ixMswz+hti0csMXdohmlmiXLV76/5OuIqpuDmzUOcXFLWmSWUiYKai8V5AQbFOYuKTiWVVg85oQOhewGi1qLuuhYOouKaLgIxYEPvUz7GpmHM7Kq5YbHbMJbPzcJmfWcn+JGMydqQsHXJCSZEYmchh+oc3x9RwpddalnPQKYoWFqILe5KYNhC7HlRL9SahuJdkDbEA4XK9CRQkqZ+ON7hj7UUuksNew6qfXfDAL0z1M4dSEkX+tyofCvVq0cQOq0iR5OEPOU6wHIIjO3pfIPYMQmP1/og+Z+Ff5TejLORhIsHMOpKcf/L3DR+32lcG0vYgqrz8p8yZ0wReAJPzvG9okIGpUy7bP9EzoYzWfkg/KG6mfPDIjDamBoN+iEBSg0sx03JiAdbM2PT5RKymp0l6xjIV6Qw9WRaG9hXkXOWAFFu549iauXYTJcKsMZmFOE1IXkhTZwIOoLhsB3hwJAdt374rRnwcrECbMZB4or5YZjyFFPHk4Poo9u4uf2MFu+0CsWUSayvlsaLNhVGw8Nd6/KScGvdMiXCyNfuwBDgW9TSMthX+BbOj6BfHtefqaZ+CIVDiSYNYhf0rfd08PpDRmMDio5dQXRGKJWiJ7OPdeHjB9zM/oukLUqWbKC/Sk7HSObzj5HUTzvxP+pXTDkNtlxKlVs908JuemPKJ7xWIgQ7kKreS4bSJEh2k3XBqc1MGMR6+79LRUkBy00Eps0tSqoZpXXd15m9QDi4eNqb7XO/BoMGOG4LtwWxntg6nzeRd6neo6wbeXJF1H3kOmiHVsNFwq/210pac5RB9W5IEEgA4m+qc5zXijjrwrhZoZR2Tz1TPM1gCkoyJFbzFPZ/PqJbDVv/ees6G+qDU/PvrFMydqw/bDGuG8U6Y7BJKwLFIQNYh6Vsw7nDBnfL9GCAzMk8hKSatjAcw4GjtY2wFXQSnRtkJ2+ogbkz+WjNzTTd4I94UPKWkGTbj2fsIgmbkp38NfpJvvoM1IJ91EZ8zQDdr+JQICmzAeYAl1CGMKXoIHqWEoaSL5O3bXuOlKFfgL1lSjOXl3cd7YAZmtietORXvICz/DStAbBWLjILQ/Yn+ixomj+wUwdFcdItrEzdUXWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb6Pfg0Iz4+THJrcBhfjtzXdb69N47p4Xx/hOY0fvDnMnu2ZLPwStlPxkw0dwg52Y88aPzvfho0cC6L3rWW2kGSzTNMxRlyHbGaRiz50wMGhrBEwpcFBeiC/7WhoASCVLp1OSL3OxncrLqzLXrkMXn0GKClFBtFTxjJR+wARVBUaeU3AJ52P50OTg9yiNQGGSDwNhjVMD6ShlsXo9J5XP+k62mwQtziuoAPDeLRqbMEm4WemB2hpnxtwhIlL33rtEFO2NLAF1Qw1i+PDtwD7Zhnj1O+6mtuWkH12i3Ma4fLwnc0Hz2IygE6sHNgC0mzVAnJlv1a04Q6rIO9vgxu5JTRIESq3vBQcuTZor14ge1MAuXNtg5rCR8655nDzwIwdcDbD0iDl9Kn7YEk1DhTzF0aCTrXwjabPM/9lEjxLBwa7uNoaGMnEhyEE43FRGQ0XJJqnKauBz/kKUFMjlHeDKT5PMqaYT64ONYlEfkdKchxU6/6jfzzqn0ialSSrgjTeM8p9klqhcFRd4zNIMPap//YcYFohrMaZMPBAgOhjzzcWXUyurn/wMLxkrY5w3KzAvc1sWobHfPvpS+X9ZYZBBcX17zR7Tcrfm1dHgwQmLo1HC14reK/y2BvStVwv9lsglYTO5BE+XPy7Y1zVCRXXoDPe0dyOYIAThEMl8i4WmUaEUD2ArzHqU1yGrYcY8ZLPQMESV7Jnsx8PBgODzSiYh8vO+KvF9amYhFBun6CDw2jv7MROfkj+JcJu5M/UC0r7Fs/229rblLnB83TMFsyGkvYEnFCRg4c3WUn8szBmMqnB930nW72xtGkmWN9rZNGa5fVNBD213zSurFM8ZlgC1V7aTkS0tNuInUofI0fSvTzRZV7eP/hZpqVvPN0DU9i6CvNopyJ8yC2jjOv2SBII6JtjFTHgg/l4LFsFtPFg9LYov67Co8R9T7YQv7N5AxvQwikXMIOmbs5Y6PvjMoTei2/qvhtQeKOBwR+ysyddHHZHOrOkLy6vU7HPQizYFrl3w+FUSyE8+MlcgqmqkvPvU+LLeMswvYzhYApOeRHmYsmaKut8YFT+77aTsiDRwHYvaFNLO0SeIaU6q+ykQfcyTYcpiItTKmd0ipvQnF0aaqnhlraemlGkreYuPq/cazUg3empMsDw0C58hM2fAR18+WTyhQdqZ45e8bffcXF1tmMxJsmvX+SovAG6ofweOVNLcpccJKB+KMm1h0JegVX8skaM0C7vmy5g5eZmNOAsM+cFKo3q1PnCuAll0lmBqglRzLab0ru/iGrUiFOsrvuq/Q51loYk4B9fkrIK5q+B5Ag83ooGSUFZEtUyEDmMxLgKnaylCAFOSglsHtNBRIxCw1nQ3LW/CN7m+Bh364jdBkvgqr84TEFV8xAsmU3xl3vMicFnlEdPFE8MxSMmEQ2/fT+eIn7S8uoDWOjbzsiHIrzCd7g2y0l7nfozyI5KqJvsWfmVO0QsqEozpvNRR2nQMA4DpEhCbT2epNx0D9rdZMfpUeGRwotezzcFVGOvHoogz/2oVfDRtPSPfddlQlWIotCZX56tDFXnyPyO87shjyoAybiuT3Mioer6rhFkj7Qh040UqtGZ0ExHwjBuSrw/O3IbKGeirXwljeblvCf7g4RdhWDJ9ugXsglAKKSep3N689RIaONDLFHr9jsKY8IRklw4k6bxJGEqF1fNvNySk6i7G/8B1V67k5s0spuTC11ZwJgWHHAsugWp55KHSIdB5I2pNy1q+dOD8mQmsWWi+t2Ld7ZiL2NFpIKdTzDmJjVfwjcDzE6DPq3l9a39M+8IKIJHYAWyxf4cClojhCL6qRkcO9f3G9sDrD+9EgLczDdHk1pHjtblV/pX1q8fDbhWW7KS1qHII7VmlkOsw9ynm8XQdsYdUPPsV0Q3NJqx3akM2Hk+aKQr5h/miQF/QRZZEtoMh4+KF0/AnzfPBiYWQkbwgO+qSSHdBSKzutLsKrgtEfcz5LT18te6DjQIZ9zTERsCViMJ3s3tsoy4q6l+O1XUyTix3G1HolbEpjpbt3FB1O4vLIDsXE0dNYC8OEUROZlJqNz856PueG5nL80ShIYufGke35jzvOUrcrKUPYr06Z7xPSZEwwR4QUH98R7P8WkhiOi4dQJ5cNeXVRHNFTjbasoNe5O7Peg5h8BeDvgtcDUtyf+CY/aa+MjmG+/TEPIElMvtDfUpEdS7RzQqmbo6dCJspFeOzu9dS/pgCak4BRBkHKsW5uqVbzgklIRdhafxb98AKJDxE1pw18Gi/sNTnen3vnbNI1Y7OWOlSXPircblc5Suh4pQWR70OVj9ytbrnavUvi5Jxfes2XN2N2X/5l15LnD4DI2y2hGL0LQuGr8Z0aX1tbyynLEPy85URdIFWOzzVErwv9WEam1/XVC4JuEr1lKjYpSI9otrXhvYLc/DXYcVPPx1q/KCL4Ig4HTPW2RX/ADUSK40Wiw1S+AKdnDo4wGf0vRnZsTgZksat3LMzYYulU8eVWi6bXX5UnieASgM56QoijIyeDKioCJStKKzPZH7Y8AtdEseNVp6VnKCUcVO8nh3h8E6xzMWXor2ixod8rWGJC90gkmkFl3SMcSB5hCIcZ9nxmk9cK2OoWtILYS7U8uXvrscPkROTahpLYi88A/iWrVnly5S+qVqFrryOYtNXEf21AgcGnj/fs7Wk04c45ZIbf6lFIYM4v5m4Lf8fF8mFf7Rc883GVD3IMZ/IXLZzSNIfPdJBRt/ElfEH5xBSEZAJLyBy2SXyTMpvzjS77TTdw90iQdjBHKeHEFWy0zzDpvLWyefOZdSAbDvAYVAXU7V+SP9PRzAJvPJ4vLdtBUig5DaG6WtmUFSotisOCKg7i3SlNHrQvqXPAWCMjWoD409c+1mp5Ixq05UfR++nxB+BO/K6BuUxVaULxfyge22BVkDFu40A/cOJDfeB2NqRxYW409aKLhu3WRK3DrcnB9EFcwQMb9U1go+pu5Pmsr7VBDzXqFIrnFNtss2sBAuOEPr3sKfSAVcvisq8Pn29TvSLS3NPt3eu6524FrtiIFKk7YZ6Hh9bqF+IeZKUlwhN3kEr1goslXs8d0YvM5hZ4r70ch+/dupShFwvmoFD49LWnycqHEsT4eHtbCV1WuN/szJ0jUmRJPaIN52CxWhCew7SMP2ZpJdXFDoTa/MqUldr9VBuJrAJu6j62DS5ufOtLvWJpQkCCKF1pc0NWAJZtduRAvAobQbRSnVEYFqeNDMeppF1K2WhlegqR6m81PgWgyjRmrv56WGjbMn1PPuEK5zAhUT4qeU0ly5+vaSWkuVWoNd9NeUejrapIKdJnfB0m4nu0tukJ9UMy0Z9TSgWP1OiQ17Hrn5XkuooK9NryfJd64bWIRkEzIsbZTdLjZEsXXaor/yGzCCmrd7D5LGQiUZPhAJ+R883fpXN6/D+AbBAd5MMjLVenIdi87TfNqRVpZTVz1aOYVeL39Q5QY9GcBsJVKITvXBTRQlyGCtRvijHMTop0rFxHeB9Oqaj/RyGvSaGA2Vsve9VxSOhFrszK7MALwKqCz7dSBgKNCczMNJhZglEobb3DN3P02BanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ3a92DWwHMoCClUl17i1l7yiS3GXkaEPpq0jcGPVYQVpgAxpOMdQCBKsKx+2hgHgrA5HTckOzXhLutBK3rMY2a3SlVtopf2UvJrZHQPcB8AmxUQJU3BC9igOSN4qhS9Q1LjUCvzO3wlUBB4NuNiSM8Jz7AsY7EQCi42kJZ2YEscNtqBbBem3iFZqtIjx0alY5Gti3WALzQCL/z5Qf2MDZWA7PFujjFNoPtBiT07ejXRdx6cTK6GyK40+5Mld2OCiqyZg4Inqv2tM/6S58aNqM35tLmq2pMLbHjt9UVwXRKmAvLckNn2mlqa3buNIdlIzYkFmIe1bHbus70ArfF1cZuhMkn75clfOVupAscwkx7DMQiY48BT5ZBO40P4vQfe6ss1saRhbQkdv9YaI1A5ntr3mSFo47EA6LMDjjly9JODVzmLPCAhvPxmTo9QFDkT7auuV+i8d5l90+Cw0poaMJ5fIwtPm2zsoobXMg1z7Rpl2MgnmmTjoIgVtvoP2sQPaqj+T8wjXdMBy7Ac8isFr39cWDyTu+WyScRW/IC6U/lexOMRpRODxJ16ySkAOuJfaV1hg8Bvk/ZL18NKDuFTUuzSmp38OG9f2FvDD+hFapaDw6jTNvqQk9bqN2TvmPdkH96UEarknNVcqT2RA271ClgAke3k4OoAXb+5KZ69BZuQQ8MtKEBAliOVug+ogx/qKbKEw9x0sbuqv5e9PeAp+lq4tRaf48plLI1ilsgsLcIRpO6x7m9fbam7aYOtTSjFysgD/i18a2wZfmjwUIiNLcWpAaOREWtCxCQg5xshvhxhNk+MS1XhEo7khdO4huSL0c1w+wR85kZ8jIwIEs2tiW6F6lrAeQQtXkW2qmmvKFANeYpfp5YXvp8cqOvqj4AVNk0iooyrNPqpF/ZE7sO8ra0CQGjlUmjV+6KIaA1lRMnXOE8Ru0clYUHKJ1nmhx0YT+xV8LgcVEoE02QFvcEPchj6T4xLVeESjuSF07iG5IvRzXD7BHzmRnyMjAgSza2JboUwPEljbMZ70hgneyRPKaUyTbjyZopuFooT18djBGB4OqXNA9/fmV2QRICfVYltyP0iWkX7YiwMIkl/EMbQ+Ys1BjQa98wX4xkibn+W9EaNvyG0YnIDXy3yWQOgtosM+46Cu9dcVNeI4wfS4CzuIldR+5Do49y+zLxwzD5/Tu2kMpU7U37pa3VM7pv8lkwaIiBUw1YSvDF6g+zP/DFb0XF4ZsmzWoL7iUmZbN+LXlZDHfobdcbpeMqtdOIuKtFf4/CKSXUCHlJYqwG4IazwP3riPjHF4IJ2gwpDIePU7ESGcjF0ztGHgjYfYGAnwgAxlKFp1BgSc1rV/pmYnWwKYzC/YolAia8ZMyytj8rHaF2HabI+1urhWXWpbZ1pNlVJstLPoUhDMT9Vbtc8z2PvYappi5h8FEtKwyHjBAKy6nSwOMjtOv+Kgx0GrBEK/6ThJmU8wADp0OPWJAkJYfbVF72aBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ+vD7mgZszChRvZ+UQg5rWgTdcTIRf75GjNR0lXXKtyknY5ejQcCyfjSvp2b2glK6AVeGSipI3zLYLf1Y8FE/3iJf9Hk2fI0+mTaNY48BJSCaW14WbUP4kUkbiEF76q95dAMGB6mykiDx1m/vQphwaEW1xdmrzUYIgby76nYIbhrUmjnNniihzhY2fozlG02XUjuw3WoW/wB7ABR4Oxg/woIy540LO06zb3jgs1lUzAxprT7TW10Gs7FjsrHDV5HRt0gh8bp00q3/pgbkp13MdD+lUwloE4Q5qFgmb/lZNPayctv/yNeFnzdEt4P8R/uCqjf+tXjy+0bf15YXu8AJLtgOBQ+TORDjwodVWyvMADXDRHv/AxKAohKkfcoMP+6pSuxArcZ5OVjHRf7kmrVrXPGKB5Qh822FvUKYoY47oJOYn82BJqcEW2zHTmJkvPRJIOOBOHiSSW6ChbI0oSfMe2qhmldd3Xmb1AOLh42pvtc78GgwY4bgu3BbGe2DqfN5MPQuCdDbPYCl5ed6g87e7St1/xd/wUEQ7Wm/7jDS3IZzr8AQceXC2mS98tUu3EXTf4elQHpKMyJg5ku53wH1b2pZOHWOQXjvg6WMbPneHvFrYDH24aiVVQNLbDX+TsYDRJieI0zR2NqK/JJdJtWq5qWC83RMaaKejadqtHm1e2VqMTpnv5H7jw/2G1nVHLDoXgnsIWkeNl2Yd36w/PczNNxlJz1z8Mw6c145Ol4g2Es+I+tVyy81aXlqGEtC8SUao9z1Wn8nOU3IwJBoIuGv1Kd98bXNms4aecrGf6KUeLSVdR1Xsb8ZOJAFcDDeAB/Om+0kqrOJ9gg47MIt3HWL84jj5b+fKtwfaaXv2R3MSdxbTre4gpDHPESCEWIDf1NzXWP7wDbs8PeTenIUaYTy3uAHtyuZ3MRqFoq/GmIxfDC0WKxhe6Bg1sEd3QS/QUOk/MDUxj7coB6IUgjOh+u8ifXHMXVTok/3FYX2+mz4T3HB5EybFkJRDM28qenc4BwksR4Es3U1mkxTXeG/oi+RmWy9JSmmdzPLAZC25AwDLqJjBppNirtQvZ8pkMe4atI0KYaZT9T4dxNfPqxQJvW8RJIPWjQHEB7EcLkdUKHR3myM5UiXcg9//mfSOxlxjzfMzFjkxUnCM1smlxCTPtPzURmkELvgdNLdMcWKt2Wf6G1/nzL+EZTvtcXLE26hK/D6z8i9VyIazyr+Fa7/yWypPqhuUIS93QFbVkLxifraM2YinSc/RvrTXm/Ah72gV+4EfyumDVrr/AGK1FmZIhtRHzOMsWc1OFVu2Iqs7lXG9Vc8WTNayirL6baze16spmOPc+CxxaL1lkiejRzQXWLusBdO4tgXTBCZFFTlDXe4JOUxrPndCYCWCdBlbs9BmfzYzP6keg72LUNRYhNIJuhvc4y8zUQGCRvI5U/JMgi1iPcrnzAA9dRvJhFHt8JvZn0km+XwwfOSS8l5GMkiaQUcNJna1A+GsYRPV9E2fQLe3x23njxu8d/M8GT1DRw3bVa/wi179iUIw9bJ49PWYPv7iCb1lJrqhVBhRdUsEVOZpYzFxy5uzMTVK68CwAQCPygZ4RyUhhDbC+8ahYb321ggd9iC8uqERLqMs9PBKAV/dMDi7i0DXLueOvX0YZ8UZHhS3XVPyS4qSJbNAKMpdp2ItlweHRTykFp8u9SMpJcEJ1rLBfCCSUVIoE8W2uDPK7bYLpRvKKdVoVtgtuplQSKU1IlkwJ0ZeOpezOCZsgGmsHjS8MseW0uXu4oI8Vugjs6V1ewUCNcCWK07BBjiaY5gvzc2NNpxg036fPhcOxoKZ0kSCua7eXyzCZ5Ib2SCQ3SUzuJxS425bzO27V/d6N3Di6yIrx9SwTU8hq2yMwuRn/Gv14qyPYhbfP6FO1tSe/RGyGyjJixj/ifoKwdXbjvvIQ79StLLgfz4IQ5UvCWVYicwGU/pHWpd7eOneqF118Xrvr0Nh/Kt6pwE6RvwHNVRxQ7Wx69+eVT02O8AU8O9WIH9FCNKkOT2hYtsfC2MapoVaERV51hbMhxw2ft59CcTDY9rlkzrSP+kPpF8riNMuGocgTi+V1fdvIBgZQV/au4bkSQ152+CQ0bBTn1TFZEL6wBAOWTrW0dFf3/t+cmEKGbZLmamIBqqlLak8JZ/S6UPSK9UX+FOKMC+7+bVAH/lff54JoytT2fpLtBE6LThxo3xe3qcEIQCOaIoUeLCTa92+qD7/AlZBCjrmAT5287a89BqP5X9FIJqnTJ2BxYUOFEqGyj6WyfODzXnP0qgN/PSF0cAgr1mF1CU2Bi0NLbQRuw7RUU1Ah3FZ9GSHB1OaAbEa/hrraDu5ERbnXzKLfT77rdbtEw1vP/Mw7aaDynhltieYGp9FgRB0lIgV8+wfE6ePte08k8y/i1qpb7MIaQNsc+cfcfqenAsTrYHzo6kOAahUrAOBsQULEHTLMzJ28Zxx5AHr8DOZYeTlgiTMzMVy8gu+p5Dg4+g3XlkgAXdynp2+YCLEgL0GLVQkOlrdxDgL3G2IATd7pxI/fF5vybIEiEzI7CPktO5XNPnLW5MITzPqfz/UkdT5WYN0KCOq9+hrrQA3ayiavBPsH84lhChaKQdWEXhMaEw4xFsJFLhPOow9QzGlcPmxrHQBzaqvAAnDnZ9tNJUA0LQh2vKvAbE2Rp/jCL1ypFceIqlEw0cOipxJvUvrsEWf2z2MVGCsqswnMIyTSp3BLaH9WAFrKls5kRdT3JqBUvDmBVxfZNlMpwXY0qKH+3cBTnX/gzu+RWyAjSUdXh/Y0eNGSSUlgTvUeTV5+c4EtSxoDr3VOjBDy85sEDEJdCoRX9+2jOUFWyjzvlwkh3KMp3wvsPuV/EZiY7F/FovRwYm+Fo8rbcWHMK3jtmKqc7AWVe1nmMT80toXLePp35+zzVX+h1JIMOWhycD5T/pg6oidjFH6FJyA7DfzvJLmz+hISt301H27gdUCeyrVvZSUjYv+rxPiQsA6lu7IPLAhVAJXmklYS6OM3jzQWcoJlu5whIjckX4Jds6sYxLYt06KhIW7xuitfRnvxH6TADJWelAZHTazgONqwuHgu7fcCJpn2HUPUQEa/XkR6Njx0FnQphrBFE3/UuT8AUGHSvj34w3ZjsOwAeI+CPoLB7kW018mlpo/G2UWHZJCg5D4sgQpAiXyWeniYfHhMzz+1FDiK1jeOQgFbK6edUKSC3Uhhz51LuOi1KFEY2BUmwSE0D9EHIGQ6l1lLjlHsFLGqW2JxEqdyntyM81/ya+jaZyUzVhFGX4RYgwqCOVB0oDv7labARMmH3hszI5yAhX4Kje+74WygQV8oPjU09vo5itb6X2VHFtBHJ+85rq4VXEEV04pu8hL7KVEpvHUvRKXfPUTXEQ5eMKMEMVW7Xk7Hz7XLz8XqagE5HKJYbLluydujP0xqS3Im7YXg11A+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvOo55ICRPRmzc35sGsqzJPSZA8eEky/Ecw8O7pHVbWFfLuFL++/f28tm5SLM1uPJ2FWHw3P/X7fOAbuGLM49tUA2NPjxVgn8OCaBPYMzjrJC2XTrIpUpyySyw9y90J8l0E1lEW3aEq/ttn7fkDjNbII2u9uT6kZ5Id+IASc5oAnQxmCaD+iI3BJoo3L6QItBDishsoPXbcEOaT1oLkBC1ITBDm6FgS78EJH9az3GdGZ6mR/zSXRZQBSZlW341ES6L7liBIFpdIdmmY9+6W9Q67U9knDR7oWgWAwndDZjhyh3D1yP7LSQ8mX3fwfsrwEsCh2tTIFg1T7MrRleBdM9aw2DqpWcmP3LVL8n43t1SKylqO50Vhu8rIDv4YYVvuuH4dEUZT0TzDZuNxjqJp4hzlFOasuoEI7Kfw+BAmV7TKrs0TzOBkQu/t7eacDjesH668rn2RH5guayq8Id7V/hv6FqqGaV13deZvUA4uHjam+1zvwaDBjhuC7cFsZ7YOp83kDU6Opts0MuUN8xUl0hnTjDwjO1efcCKRIekbK17zLF5DvIftm57idu499hA9wHlvPB69cPHfSkvyctBn2e8GLNXzgDfH+2Hsn8MM6lheBXwQTeMrQ5wMo1JptUzRArTz8+WdySYBoGGa/1Kz/VzcegzHxBe+P8mr56Oe7NOSSDsNb1hgyWMuuqd9xg6lyje0dKLW9i7iNhDk3Y2k8vuZNhHfkP41SpnPAf3N0rqGGy7cnevA1RdZJgGT07ukTkLX2xUA2ZuzWEQ6AVwWvYnBXEQuSqN/0Tx0n1Em1wPImt1//+MbS7zKLVo4IlpNW6OPCYwkGDyidUBge9PlB4OcGXPPMh6h/rgOijfrsESCJ6oFKhIJmdXDW1j7f7+5X98jIo4MlCN+QC+GTPQiU0HwDhPNMQyTLyLlSFtWi2pZRIX7lbI35ip7otBSUC1Gg0IfWH68JTQO1QjDLeSzKIgXqLzUnPDR0/u4RnZ0TjDDrx0ywT6O0/vUnnOb6GShNFNJvVQYtGsjZoNJj0z36KQYnmJbYTO1GCEZ/G15Qodo3IdDi2pl7o2qajgXvWwt7dj+r0WvbLJbO2bcurM7xMGDGoxdM7Rh4I2H2BgJ8IAMZShadQYEnNa1f6ZmJ1sCmMwvuUNfI9tAgy+/KZu+qmENi213YZtOSlbgLoItYpf+HU6DeDGJCHLnYDVGKbx38QBuiTEfLbk634Viuwdcy+dkM1mYLwAb5Q/xQnc9QHPMlC1ue11CUrx5ndBSQCjm4s5BNsmgFVHzNE5lRgsuFhXbqbRWjfbulZDac3Qks7SYxZGBanjQzHqaRdStloZXoKkepvNT4FoMo0Zq7+elho2zJ2bbLYtSulOcuRqcXIomz5mkP/ggKDkQFoAfX0JynhJm/zUQj2vDzZKZDN7ZVIdWZpTuCTpkEUpPH/v7FajV5jSJ0s8s+bdzgx6HgSZXq6TLy9lJPoqjijELUIlv375gVIhtsL6eAS13qbVt0NrCo9Pa0t876DVqyJt/ggBZb42DqoZpXXd15m9QDi4eNqb7XO/BoMGOG4LtwWxntg6nzeTJayqGczj+z99jTE3NNCcpeXy8JraT5uWLzH7KTazsXnsekeGbBhmWgqHbAZL6yeF8vGkF3doMu19PylXvnuzVqbgc9CX/zq5tisbXzOBJnIcowc2SzLqn7L/7Gy4qFvpBwvPD1q55wl3j9lZ4kjOsLpgwUMXRhUnTdFIX6I9Ix3VyUfZ82uc+yVPS0/w+FW3qdssVF+Z2PkVwjdwMTbjwOceK7H4oaasJ+Q2Z3IPfrr0wn2d0FHueLzpzMwH5vKvDoeyQK0w1PS6xHS/aLGiDH15fwg7vC1BUx+rPaO+xrciu4K1El66YpuEsDMkSCn5jy637B8cz3WOeYKNrISKTib5g/k/pqsTOrsKwNOTxan5FODbBvD9ngHsTgZ9+aTLBx8ILCoDwLas0aY+FsKwpuJLPl1YD88U9D5/grl+9os13h4lD6N8brT0NiHaUk4Cb+N9cnEDSVSNUwW6GBDpTEDzVnYDNVYuKWdukYfCEw3bZvfIW9dSQbBfz3PGKdb5X8GDAElYFS4n6BMvyVi6rUY+s7VgOETP0waOHg23lBrsgNcR3sHWMeZcFW7eSC94b7yraI7YbdvvDUfGL/IZp3nYlEPmV/gjxeK8aEvmDooS3iWpgzv93I3vf9j302EJnGcJ1q5BbrrXMqhfOUo1TTGPrVldQTJrX6LaIuy2REKR7g6i8t/nQzn5QPoMYoE08a1owHVHaYawWi8itHbGVD5LGQiUZPhAJ+R883fpXN6/D+AbBAd5MMjLVenIdi87Nu6oRIpHx+G9OYZs7I6BxrPVTTuLztVvEnOKN61DfS8pITp7rGRZfR6XcT+zQHsDD/3gdb7+K29cd2BwoIhZWOfBimbXcnQ5GxtSgNK92hQRHgrkZnJJtXbGUPiw83Rv8q1Lh2uRAeyfXbpzs5pPD1aE8OXmJpzKzLSpwFm41tbExmgKe2q6AiqxTfW5vJbE9mR2pLniZLnn/QVKW51Zq+V550jNt9qjT/PzqvWd8/MS3Bcq+rrEUvTClYrhC5e4cMSkTrRPLJR16a4oyG0bLOATHduL5zKmXN5XSjApyT3wrDpgbBrUQIz8RmXZoHBeT3JZROsEmZONGnMNKGzN6Jr5GwyveKoXhT016+kYitqnBi1mr/rQHxauOn7AHU4V8Sw2+mHV/J6bcPPfOl31WTWEJLMjST7JL5BAR46rcjM5uMD0NofNqdUwSPm9DX9donA8Gyoad8kWC+N4HPvNjxbc/moOxLDqyxo9bTrsbSUpxhe6wwTUZ7uaEUVdf5GMLN0PeevHHGSL7DcLq4/QDBIVKQtSN8Tn/dvOnlmmPchLbTr4FSEgEcEG7V3I84PAPhbdyNuks4Mzg8lwbcn3nE5d8a62smzsUmW8cpdZ7CBK0FVYk2Ssn384LL2NRNQtdZ1JFBGI5Nzz5KT91wtQAaTamUGsFROOwUE9oVG4hvt6XySP0WORoeGgsWxfhJp9d6wCRSIRJV26jbe842gmrUA3SFnC20M/pOaI6UAOz1/6p7gslgTlZBHlLfq1WloXzMpHlMCpFi3yE00VlhUX1hYT3yxl7+k5iPkeICVQcIPx3bycehxgRPJbGToQQ+p2pyhJdjxzdlvWByXWr84fUhcpPU7JfcbaBujMws26ErVFJcvigo2cFt8YQDkd7NrQB+T4HZhi9qyavSRYyBRN6FOuG1/59sXOZgiao5iokUWP4X3nsIsyDv1qPnUGF7ibE9zJ+agD8HyqK3ydrQGC2t7MpTMm6/d501uTQNByB7A75VyxWhWU47ufUZiFeY/aF78PfsBUEzr+7KEXzsMrsWn2m3Nx4mQ69U2UnnomStXLPPmPseMtXYgo6OHxppyyzm6DkOcYx7OJ4v3uyjzFNCxjwnfAMyybvWLw/TAzlsBM3xIeYTFieyQkqcZHN/jwFhE/O43VKjKeJH7AcXdN+In++zowaMqi6zKaiCJg30Hk9DfT5/zIwE5El9czmgMNE7psr709/YFiI2PLQFmit90k9kG95quuPtDH1KBZeDKuM8BKIGTiSS7EL7haZt5EczjCe5oFwiChSUVlGDjlz0+aP7xBW7L0YpaT11Bj26Nk5TdkX1gk8sZqm4mf7UBtUDWWztD/5Rv+CVDiviaUF4MZpSK02PZ5oi8sF7GjuHicIXvEbYupFMMuycnLQGLKfM/1tlnZiW5YmkEd6RYyGKHEfGOFC2CAjyEuXyLoZM8IE82K8OnCK9LdQBomR2OxTfY3DJL8aqV1QneYAMjoXTpO+g3FjyPcUZn0HQImqsB0DmMrTcLvFpQ5H4bcdug+x3Hhcvlg2kizUnK+hq+Dcn0N+LYn4ltoqw7I84hclxvLaQuvmpu2A55IjqD9/+Xo7Nz6KmwspzZqQNTR2qeD5Yztsfrta+qGYlXOoD1JbfjH0GXtZm9j3y9/7lB8EVuJEtSLEFlXohOvQgY2JkDTSihzPgvm4EhwRbFDZed0ZNkJ3Dz6MWG2y3HFc0Gpv2SEb+xIuN1OwtZwNK9f3ttY1hmTWjgmcb6qhItWJijqVnibCyzd1swzAkGzbCl5+kdlz+IeOOuTtNVa7AX+qNpzyJiNk7ISYWPM21w8tGx3/uNw33+ymmE8I/vnuZe+0n43N8EPQ93TXolNONkLZEMRswe1lQ/HH6hZqeoWsOzz/QRR6QHFmnS2ZB4AFQgZ8Fuk9eAMDxD44DiT3skpB/Jt8FHLHsEmBhc1cU29NB78gmeoZRwJe8OUzH7rhmhhaqAoVD+ezttpY9zcpSjg2XMEep8wtmeiokBZRYvsD4hb2YLCyLcS+UpftZ9yLbY81c0ZpMXqGUJAVUiYQsYXN0p1qWKEzONjdjK/CsoXMchSeKxy+d6oeIk03SgufC4mSySUbDyJsyi//sqaCrPdJ627GiagGqaikoivSU7pjSVRt6DpN8dTaiLWVAVQbX57xFN3cJPTYsXKjSs4bRxCO6bJx5B37AX7cQSpZSdI/wZv8tZasYaiYyadttbtttvPHeiPmWWB0PK5Vzy0uoW3UYCmlBkzf3cTw6v1Lqoo635/D170cZwnpNaUtZTojJ5irO4sbYcE8iaQHwPtFhPrZUgXfGGPRbIo/UYrf8T9uIpGMgA+SxkIlGT4QCfkfPN36Vzevw/gGwQHeTDIy1XpyHYvO2R2nO4+5gmpZM8eEM+m1hDLM2U951PWcadXSuN5YqbpjJpXHJQ1IWh5p/VLwhgRTD9TPd1dnyuXyObas50LT0VhCHY5RlU/j8jqDlg+hzIfNSaDRmybEUoHgcpcslw75xBXuVMgZtJCGzau3Hd/X6soKk3sJlNyjE36saIO2wwenzC2Z6KiQFlFi+wPiFvZgsLItxL5Sl+1n3IttjzVzRn5K5Q8TXhCjgFHu3W25iRZrFW1RO4AcBzwNUuhAmeIOdALWNRT7eFuG8ukvPNOVJRyf2Hp4x72mOeLs2hqLlazGYmb7g52UYce5nji6ZtmLyvYOxn6cQifCJ2XGGwC4fRQ9uOM3Oj3F+ut3e8M3Z8TBXgaxMg/7kWt/lw0FfF6nXHOmDZFTHkbE9mZmqfij+a9OBMXMAmjzb/XyTPmi+6CJisAsvgvXhfVhTJu90qOvkfolcJLMVcWglxmeo2B1PgQ+l1fEpBAvv8ROdYqKKTxwFMY1VOT6dttMGh+HGI6PkZobwR7buPPWaenm2TUtFdIYZjZSKdyTSmXQagDD8629bc1iRFQXZVmFtIIe23hO0JgYiXlppQ/LEyfKzbob8awuwSvC8WNz/iiH78eYOaiMSm/cmkZOzCExGZeLYa+LlTTCutqbp4mbKPilty3Umsb29w+lEF6Nwju9jfULuhlr3y/eA98blxOhAH/EXGrgxfgUmu3zIaoMmd4p4hMK/wbAvQQDSLDJmHVlKToswvItESA0wOmJqB6l8WpCdrpIHU2oXS+34FRMWlwFqmYF4LulZJsR3YxNjTOf+cC3QXFRwYFK40DUvkniMuwpCoTAgrxixdlpfE/YbO5MkLHosKVaU6SwP/NVIDjYtu1hPy2xxCUw7QfDJGZg04Qtb5TI+5SuthCT4A/OprdpS0ax0D3ezrvp9NMbxQEK6PsIvuv6iCvqMWAwPJuoXvRiy4mQQOWzxPgOiABAtgrGYOP1CiXAQRHYDGMet9nqnx2ZJKj7jOFTD6Zj6i0lXvqaAc1LdQheZ3wXDQLmhsy00e5z4Qa6ATsBnxAvUc4Ml54Wk/Yhm6v7sjrFmjRTkzmXVxFmO2lt8NNv/RiRtlXn42appHraEgSoumfVoKiqpABvhO15TilFi5GOZZ8NG84SVvPX2V0wIQ/qdoWdfB4pv5lVXCafKNvtvOVHhdURt9dZs1WDbUTdwcUjB6f1nIlIVT9qVpPXlt/aj++/kUggTX3hIC9UCUa2VNfK7HrYs0MX90XE9+nlzeTIUsqQQqT38Xh/+FsdJeYsrpKXid1xKuAjezyTMoorYtruaQmJDRW3IQ01a719GRflMBg1iRM57R3dhDi29LYkNrZeRpVF5AEyEF1nUkUEYjk3PPkpP3XC1ABpNqZQawVE47BQT2hUbiG+sdzky8N6MpceSrqeoxRelpOPn8jUTO7vroyN3ePHgRap/Vkd0BiDHrlIThI9aJ6bz3PZ4J4fXDoDvCMPtjtXjnVLd1h9SZUKl3sRS+3A5gXCmPGrM9gg4ipH96uu06HdmzAWTwvd8c6pkBa2wm9ScivGVcbAZv8X4BaHRCaMxJUO99r5uSO51tKqDiBpsYapKNCHJH0O8ei5gQpM6Itjy6HVagHwGIduWLIVy/JHBY67GQdkz9PhYhDgvjCqIT8oL9+q2d8VD4fTA6Eun3n0zGRv6UEgn7nATLVj/Ao/GeqMXTO0YeCNh9gYCfCADGUoWnUGBJzWtX+mZidbApjML6husVtUecpDvpRFbKMJGvJDaLeX3Dhw8ap6Zp0Gojezzr33PGtS8wpjBMsp3RRVN2N3q9C/X0sz/Zb22QALTItQ0mOCkmlqo2QBvLIPgdjydscoyJxX7vG7g2YqxGzD8rgwGA2sdW5In1M4kK66CHNSaWm7JyIWrSpZL4fXQueQ/QB7WM+oc0RC59OnpRW8xRJoMuHc1ZlkGu44Jr9kB9mo8NTqtunzCqxYFHV2mvy7L2AGI/h53TGmqDh+R7Ibr5BQMTRcIlpueKVTrNRdl01mTiJuz4Wwjs9xnEy8jau4dZiUh2nEZsbBFcggZ4+izQyxFtTgWA1mhLkNJ/XoKuipUvYJH5kUEd04ayl9c3pJ7uewG5hYmxI+wXFRHe8jmt26Pt11WHyfkxwJxbnUzF28WFep8vgCtbtcIsfi0glPjQYbZg0T3uW8yfekWuIERNFTIb//gTUnzhfh779s7tJELIIhZqtSBObsTF9MzUQxxz3va2hw/+Ov5KZQXLgLExZTdecvzUGnOW6YDMAI2VSJ5nMm01ke/2SnERihG0/1ACRexF83fMg+6Ddjey6G5wXV1C1YRFTVGXTbfutaM8Nup0ydyIVEtZLdym+mjmgtc1a3ZMp3IDhQRNbuVrxg3Wg6I0zqmqbxYanU40x4oetdhHA8NjyCGFPx3qCX6QMrhtgEtIjpkSeZVFOaR5mmmwEqI67jCA+w6RCuX7K/JR8r5lC4tuRfNIzhQ+7to4ttaER3Sftor2FHrjv9erytBLVG68on39iz/akeIVAxkHzzB7LfCOxdq3oJILNj4m94LW2V5zc1zM7yee8HQGjDSVKl1oFrDqyMWJ0rGSnVNTCijZBAeZqS0k21ofrJ5tVfyzu7wgBb5ywh1KgKxEBgPPQOu8VVeD+tqlp+vkDuF0gdcWl4Xi3txJORngow/U7d5LDWoOz8lRQzqGnxkzddDRy7cKW5LNDii0Exj+2Ms2xvCBhixi7TfKqnuLjHD2qkQY28Xxsm/r2Y5emVkPOprMtsXuhmt+aSE1Kbu/fzj3RIrbCItTLEdrLCWdEVlNJdAeAPkz0tv/TxWWnyhcANiGtZuKrWkqqz7IoO9GZ6tAnCLewsWIMBLwnThWCFA5Ccan6pTQZgDWPyL20uN/6344UKtNXTrOsbZlOIzvpvcOihehymkPnJqZO2jMhFjWgV6twSurtH9PM1JkJ9yM7G5fYtbtHIgZ2Zmc7WYgtxsxgHlLK3lsvNjADvug7/wWSNmRdtVqgOb1zCccSiLdb40D2DY/vV6IQBR3sJ/eDLHJEfK0/qiGOcAB4L2WCtpeNCMWUuxXp2NUlsb0AS3FCW/wCGvIw4KTasEQjZTkLpKoXG9IQ6JtJqFOU52EQX1a4sQmZ79/Z3Ig/U4eFXUosjIMPgNJAYBRk6IpN2wRph0q0ceL3c8Csw8mBcOw8L8VQj4Y4kB8tp952u1eSAz0iQSrbp0ZrXJzTilVCL9UcHm/1XzRDKbNYlUGfziylMKSTv0Yqpy4barjBChrDHyloz8ju+gpJOwN+NeAQkrMKTLuf+myjwxHY/0T8TahHqSWi+VVdYKwt58YDJsOYHJz9krWBieB7OzyWMMlPjnTF925xqpztIQJMZ0Qxeoj4jTQ9owxmnPKIJXvb15AMM3FFKQ+6kFZvlm70PR22HJFb98nPmW0I0PgsVuKe4KJgg2AIJ4C2T0atxDk5Cq3Os9eOh5AQ9dbqzxIrlZnisHwPa0lVfJ4zPJT0F7TCH+7/5jU8/k1USsiZvPJEw1kgUQQF9pdpidRsa8pjALBVau1BpNrmNUCOc6HT9ucFW7+j0ACfvpe4WeeBN4rIeGaNbQXV9Mw5MDpzDBNjkRty/8G2ePlhqdJMhjdS6y/4/ufvcVNO57oddjx2ZDsLm6OkPflbqyPWfNl0U3sy0o00+BVxK1PK4IZ8KwGbEaFXfzoacknwx+6HQSm8MRjSko5Gp+zwZIlvwpbDDK3kOzZultW9ZdEi4MBgNrHVuSJ9TOJCuughzUmlpuyciFq0qWS+H10LnkPa3MQNEkYTd8J29XFz0tyY6BMEUNUxAocTvRMLkuA01hc9Xlh8N2grtQUHvkvuXU/yMS+wwwOPci3K4VQh4oCkUVTiFHpCd01vA3YT7vYcK64rDs8mNde6alVczd+uVPwIWxxuu8fM6CcdmbS97iQaeVNjn9Qqlm+fjdJpCRSMA15/EiadOyzu7PwoeaRIMI9B/xjWhrf7S03owo8hF+KEHLZrBQYPfrA4r1gRg76618DPoWKDtl6iP2AsKh/Bj/CjF3btTQ8DOojYjLGOmPDSYiU6wyWVPAbYRdO9oGYd+VfFv42/GiUo92qP8qgwbglfdqfqSoMzTSX5sgScA+3vWjqW5RjEqQ1bhU6GqQlFoSURNChwZV/wiTT3eAgsx+COJJWT8LlKaJVJs0dFb/WoPCrHfbJtdw3mBrqvWAqc9VHTI2C3pJRXc0C9S9/wwdUL9GfCi/PHhOduNTC9+787VF6z/zk3eGPR+yibAIoEh9pfO6pIFKdZf/0SrzLf85HZjN6Doct7ibAfSB31fQshroLjKAsrN70wlrFJ5AbFHyUu2wY7njpgOVLpzfezQdH6RbqL1oB+d1khFcSQ1EguVNdf7MBNP61pQmARoyAUI/3cH3MQ2hfvm5bi7GFyFgcdhHYZWWQ5lmfyKjzDgBb1fVUjKY2DZoPfUeGzcGsrFXWdSRQRiOTc8+Sk/dcLUAGk2plBrBUTjsFBPaFRuIb7KmNGTKp1LJNwaDVWfYlGa90XWS5++UHqqUEV9Ok8DDpV7pR0Lfv3Rz8HdpQSiBnR4fziuzBiyAlWBmWVIcwvN1wL023Svm8nBrVp+1/FepMHRvZclnnXWvPSyKeNTSxhekzCr00kC6RE4Qycb93LWKhvK8gaq+Rndmu9XQhQSLkk76lxnbUGLK9s14yKw3HMc7H1Wen1eA1GJN0FIRjUruczpwBo5Abqwoy5e68S+18IW6BkCaaHs8YIDZ0XJf0TbFT8DgzCRa+XI81Bi+F8TXd4S+zGtjX4ewosboMXNMh55dAcA/BXTKqAYLMKB9tR4b+BP1ett0QJzP8qO1+NRWIlkSeJUbK38qWY6kqOnj6hi5qafgHH6PpCey4zlJYjn/mzQbci/vjp3zZFN4gwZtk1iqR8lA+3UGm9GbmMyrY+yIjv8l5HtmZvoE/M1n62QGN/8JRjanCMJ6ylWelkmZUB5z4QVReoB9dOICmtS8ZPDB8A5XPe4ZUQE4mlZdjP7Wl9MPXkraaRZtNDlkS9SM2KX5X53YbPd6l9GEKgKzdyy2707z7EEmuGtrPxclTUW8mIOBBPZo8M57d5v77TZRIIE/erZ6nRufnY92EA4aJ0aO0cjj0NTT+GvVbb9Qd/0CGEjyMROiHB7FYqZoSjDTQ7jGFXrNwy4R836hgHMZyDtFziOWwAkv5OCLTPR92qFd6Z0inrJ4n71euSecVENOmHOVoPO6ngMp7mtRMpPCiW/Oqjd7LvprM/e6sKt++6oox0jIh357WNaDs2CQsIZItqhwt+KNyjw//N+CH4Gs+8tGnkd3UtB1pLQnp/2zta32ejk3/ftZ0cx9Zoi2sva8uqPy55ANUAlllwX1bXlhBraxrjjC+fWNtJeP8fgazjNLo3WUPxLNEXEquWJkQZL8uf2E4r0cZVJVFmvY+eHtPGESmWDPpPuybLLD52Gfwyx8o01mlVTIwPe0dOKPEqqny9BUCuIEM9CrJhcGWyGsYSgShgnQMEsjE4ucAmyoPjxDz8Pnv+TCXKuMCR2tL7a9R3CUgvYSLCC9GDgcR8c241XyH68knMSAjdTguWDWTN4+Uem+pAMfNGRNr3D+IpLbTx13S2WXqkmlOixSXEI2joGl7kgNuFVMr4Wiab1DrH/xLrg3muFF0pVX2mDhF/AmV2Tknl1ukrMD4e1CvTcwJcu/V/2OydopliXzbeho/YyxM6cvt1hMOs6LGwDr/GKKVFCd2i76BzVgZM4sAw76qi+gCEl/QhAIapN/QKJdY1fNH6xJpfNRFJiEaosaFaFvgEPxJTmnXPzCjFMI1JM1sFYrkwhnmpAQI6+jo1TeJ8L65g9KAClNVrnj44HfMhuL3qWWnC8ugdlGOrEOvVcEWIEtPRy0aNzMPI4PyfO2dHOmEsgrYdDX+nJCakFijdJKJFk+ziWTK8knqWRT1EM8NyKSOZyEC2fwIh5IHul9M9eAUd5XuuN6x7Esn9PUpuHFpmOdsG11XykvBWBJ3IQcJg4ogn1L2uOeZ4fFiSo3Kg27REOOYh6sdBCaDKpo7baNis3QJ9hgMNKCuVVm0cEAMeViO+FRyQcXzdTYngdjK9b0+O9T3b+lazgIaYbPbwvnbNDsQE9Rbm3l2yaGTFqOXe79q2Xo38EPlXo5NmUtZABkEJsybIutKPPm33edAwPr9JwiwNzSmhmcIZGar8i2NzPkWpLUbFrbnUvvWUD5j6todhNa1prmp1bvf4OKrn/pTtvL71Z/9ZIJ9MhdFCdIp0rfY9mi/OU54tsF+YTMIvq7Zqea5YgluPEodEtmjr9mu+1X7ViRSwNafTuy9k5r5qJeSVfM0M3581JJQV1qVgIKFymVqVu9THGG+PEEjVH01LITitOqMt5xjDtI7n1eN2YP3RWCFfXA3Jz+G3hQFmB4fzWLLHwTSjOTi228eCXEU46wJFat8sCu2gH1AQIb0gsAOt0yptSX73zbmc9H9S2YfTsrx0zlkHc/NvJuBLhSQG27xKmYYVh88qLSqPCpXa70u8LXzxkapOFFhDRD44FiNF9E5LZMdf1SU87WsPw/RDzIaWvB04kctI/c3FsYyDMOSSQLpTNBNqdQyRk68/zrwGu64DlwRZOVVNabAv1bddiQMjwK0DXttzRVjyuKS34SZf3WMzGRhLzwm1tN+NLWa1ZCZwwd3isE7yqRx02y24EsjhBHRivUHXx/gcT1Xe1PD4BVO2HW/6yiCTgsQyVAsr7mWA+6Hdur1WnTRc7vYbLm/hoqWER71taKMQLqZbglZjQ0cJi3FQqtTUGKgYdHmT4p6z4EFzPCiFXh0MHUe1h7+djyG4KrJsA4arV4gl/urTGKckwXpn9A4WC9KQAFeFJkxNo0iBF3aFPgf57R3m7aWO/Tc5dvQGHtSOMwrVHbJdmoi892aI33ZnKlba4PWhwUOmeNTODudZyIZDrl+jA3foVIv1BUEvccgo4U6OTTWogiZ1sqR2NCRVNXIG1ybI3BSL7SQPiNoVlVKxQA3flqraYt8/9wFqmIyCvTasZlhCn4mw03dHp9QHPh8X1LxFia40HchbbJQo/4Pgr91sMiQSfnEcw2vtzLeCCkL2sW4l0GN+2DUL9v3trWWVZ60S3o/Ej2vpPm8VjuG/IZ2fkcg8E5nWO9xZGA90xsRZN0qGFaQLR88otcFdb1lhPXXo5/os4V+jhd3SIIe2w/Jc9HdFmf2q1dekFc6+C47PxVepFu+N8afqkQ7Oa5RA0QeFEv/wgZgZ0Cst6ji0UPsQUgzGQrJT4Hvpoa0icOdqHB3piUXgLFF6xclUBehb0vXS9gGadN2jvtGPvbBdYleRzH5nwcMrViukAHkmN1yqX/GkUVI4WedYveD04ssrT/oUw+7oaoUTWnUso5ITDRqhiUpgWoZg0QvsatiJvOW1vdf1gE4J3QrCidslGYppkEjqUJUni+PAPTl2GxFRCcNKlW9KuiDA8Rmj/hCJl4KXAICb8qMvkwZrQPlPdldXEqfly7IyRdN0v+KS77Dze5cTIqJysv4Er4jSoHWBPP93jFBlwm5H97tfH3AndIQY3R4evuQezb8nDdrkbOXFVdwiN3Dz6+UZQL8DAsokfZNyMI7BHbiUZ1yPnRgp2oabTI76r+ddUVR8PqaXcxZtsnSSpc6oMeKkBkGyrykgiSXZ7C0VVNQ1csXfi0TgwtlMpGqQou/APtWl217e662EU29hPU8HTDUHc7HyUKpODo0rSF4pQ3FaPL/FpMoGUyQ1iTr8mQ7Dc8UzfQQHHDtYzI4ejGUOsGkekX0fZOJpJS1/bUJDHp2K6NH14yU2oEOrmBF268USqV8KZJbtTp9hTePzVpb66MdMU2TJ2pEU+5QGyKfLhmuxCDofl8iVYZGUcHzSIeKZ7MbBk1jGPuE9G3cm+93sC2MkaueawWtEMu7gllqQiEAMT8UbJzVSdIKr31bQgs0iZMKRFgrdQWimQDWNOXh7eFCXb0xmLkNwMrC2J2DO0YFrslviVztxPAxx1e43GYwAWWCtY+4OCFWvDKMpJfKAu84ihdRLd8OSPn1WAL1E6JD9pUeAZRRIYMqb5ATGXWPhUKfdeZQP/OJjE8nAiOh7zTJ9vatrU+MhsU4nKafBwcWl6KFD19XxLTIJOGUZZL0QXmj+bSz/9Qj7kgb4cfST2K/AawcRFcmfjO16Pn13vDAaLmrIQ4UeZE3/Y2wCEpCgjnqT0kGQFFyn/rnwv55o3zFLLJ+OViwz3Ce5K3agIa9lahj3YxosBkKfE6w41ufcxjHiivY+BpvJ3sb+aUMSUuEJTQ2u2ZEIU9/HEho5lHnuXUyFH9Rtek7B63IGmrqRoQXaDtf/oYcMS/BHA4zN4geDttcwd4bnmVr2OgmdNLsm27sYOPu418af7tXfXUMjiz3H3kdN3RRJixVOVpfl+HtMdJ4nd7O8h2GMVU7h9K6+O9EwHE4/auxp8gsYI7Ovr4lamHT1a+1AMg2PXGhuQlI/IlehZeAATKRj2u667aFflJykyB65iCRPS0AFUv5Lz0tkHdh95Gt1y324zFxRSdti8QHlhP2k1ySdD219eEXXXg/DBbjQAcJPkinOuUpcXtPtSQ3GJ9a9vdoIxZQTpQKfllLtYdBcGUYMnjk65VWBM4QBmhqeybvWY8hwtfcTQISHrUzRzrmYhasHm3raRw0Rf+Mjzhr21KVB2melSaxsloONH0zhRpSFnYr9d/XGLxFONqZU9loi57uK7i0fWHb9hFKvpohOVzUZWpH3wbIifxtmDrrWKclRWxyDbekvuVvmsiTQku9vWVrSc78gVCW/P/rgsQGOaK5NCjh8q73Zne0AIVWTSB+gznCicv1kS4XX8SRXGJmtY7zsHgZHT82ejX5b+SGvWLuSkglEqickxIg+FkBdqivcl2/aCoYHZfujXf+D7vYQplWjAsUVgaO/mfzwtxrdJB2f0g8lMkgrZTmpqJLcruy0PsAsJMuFXmCylbqP0MW0ZoRO6WUv7wrS8hb0hK5dCW7xYeUNXIOQ0YPUXTmoGKF2/oX3Sjhgmr+L/GU+6JELqNqmnkt+mjulxU083r9mzCXRAG5CZz0t0Lj1inXQJ1SUh3PGmT0A85SAT4qx1bU83c/DcCUgDHdcqXkhmKuVD8YgVNeuJXvJrT1BVpV8tW1P2pj+iqfVEWhL1dGKPw8s19E8jAsrG0ue/LLdXC/LNhDeSI4qUenQzLFHkdr0OerB9pN+VCTz+M0eqyEPHkliCwT/BjZOUBs2nhohFfyaQKoNJMJgRaMdfi4p9/yr4rUZt1EdTS/gMuTaXJGUWchDWhz6v+PLuAbAfefxxQReucC+eZ1iJ9XmTDtL+bwRfyyvsbznr048MThBFtMVWMnS2vW4kbcDxfoaNZe3UBCMwONnys49QXyK84GXSsaiqWG8NcQ5hWOk2Q8k2dclBxb5FMU4469lJ++UpGVU3NkWNzBpkihG8wlpRcfS2ocGWa+YJsSgGhaYyXmKjLxRXXcbtHnO7hF6oeeN3FmhCTbMAiFTEn+hl2vgX2242/aqnGWzlDYzoE3MXnUiLczQHZjzpqvJ0ThcnK7b1GCC8N5glRTT7v+0OC9JnWggMO1cJdKQsZauBk7Clzsp/s6aB/XE/POzlWfX42mIuKmAmFYHnkKz/GwLcpz/SlK8p/Ga+dy4Y7Oyp6PSYVk9GFZXwvR5N7fv542+RNRiIi3h/J0bCQDNRq9DrJvKyhNEZtKfBPJyL1tC30AdddHaPdZLOJkgDkBFAZea1aZ5zOBrlh0vw3Rnci8dPXWDnUXlxzdiZnW3p9Cp5QTxAY+8MVIdbpzA9YfUlAuJou8LNoyR3I1gfFiYH6FIe1lvlpTvQjpffYhE4cxCGeE68RwtDd/nQfgdH3/EFnemaXUdmzsTmJ9XvV7D0n8G63jzTmLcu0iK6WessiW45QNXURU6TAvPVsdqobG3VgGvO3g6pIdKOrzRD9CHKJSSsc+SvvIOF0jFahGq3sAZTv02ohItdBSYJVDbHFEyqKXHo68zKxw8NIP1CFOeaykuxVPpy8v7cp9fq6Wa1dywTqTjqiVZa1bPEvP83atT7xxTdDARi0Hg3egsvZYkvaQwapjMmZ81ldranM68A37K/Md0kUguy7VTdiJIClIQ6l+NL2BvnLvUP1dDgbPdmVOIGKENVCNRz35n5iBfm476Kuiiji+QdsemTIkpbcU90NGcGp4WIYxdhwkxDrBq4vKpsDjRDtODg7ZC+wctfxGdKoGVsuNPsIfmDJPZQ15bgJHACnvjGM1aaFbr3mW4jQjSNqgITEr/0utxNeOeuyHMpnz2F1L13Lzk5k+KQKdiGzXQ6g5sU/emD/tcnE35FHvc6FJHIBRz5kiR+8dTncL2LZon0NlGRNMGa8txwreXOOQqo+0lvRrpOqfW/LPcl+LM5UpUs2WYCGqml2XvsLsyndT5/8/T2uF+ped6Q0GsYUU7zwidFymqqIQl/bcZrXQ7dXPJ8i1tZNTmfmO0WV8DMdlakwgZYU7nh2/CkTDFC60RIdK+LH2YGNW7v5Lb5OBCmJZYBb/dDvfZblpOCddm1f/MHcV9urZUMi8rPRgbekMokpt3vQ0RGwOF+zowPiR+swA1PaxmMHx7mCv8cZb4YSxTEJxmiJze/2FxEvGdcs9UbTRMdyLw0O9VXxwWSuVgk4izgZXqkEAJfwPfG9pBxOytIv1OsZ/ul4LrtKgpKA2DD6ub7oYqKiWsWIQC9HTpEpQiWelbyNqpbC3gAtfk1BTwf/dgzsTbvEzda9ykJUvJkYRVfX2GSCpSJ6aoa5MzgcQrvSDfomhp4MYCX/9OFwBf4V5wHj8p/8uLkJDIkX9bsiYtJjMS6CZY/yWhjRp1W0YA9EFlp1fj3f1MRq84cezG/R8NAIdqvcnVrFDXCK0mTdy/Xp6Qud1uOHLcU6YedHcpQ7bUsllQEyzWQhJdlgMKMsRZo31zADH++JjJJB3mg0RGxgx3p24Cx1DA0txZ+/PiMKrrehPReUJPY6uTOf0Ezd75iiPYxrXuGOCnRy2Xes2YtXckJbMupWeHj+FUXe2fQt+752vQldonv8GgxsojYPgQcGNafSoKC31OGp+E//mdHhtarShNIKPJ3mbUVofD5gc4kX9j0UP8/plohOXiIntypyBLgmHwddPOeJa7kpqcz5wsyIBZpv2sLFfEUOg3vFYl8isWA7qO0+iuRNtDPxTYQjz6BaLEGchSAZKy1vH0YL0soRY+0WteHukQTaN9tY0XdYG+mYg3uBQ0Yssj42xl+veqibtOJVR4q7xXX3pGMt7j4of5MLty5qOS0IOLLDZ2VjwRE2YTVCtRBUmLpEprbsJmBwegcehYCzomse20bH4+h0dUurw/02NUBNZ3HQkEuEKm6irZxBbSfOyzr0+T2gUcWHYObsw42GLqPpcbtRZiWLF5Qe5lsOcr/xm9g1hLv/YrBC86vShyqWEHV4z6py/MeznO1wlJyEqswXYvk7MzpnQSb4/1xOl8m+biPiCtLxWFfl7/xs7KRp7TYbHZb9gDL0FrHPj23W/UzFksH2zEdw1dNRP/KNLTNDvvS3AZDJDu3HEBcW44Hafm4mFQdnPnkQQkhdwhrwMTWtb7RKqYkLguTsygLresk5cLyUxqsPG3B3M/7N9WVkL0K+hQrwlhCamXwiSgYIdZpEZY7qqooIBSO4LczyQ34B/oNo3b8qCfWbs7WrhoLRedP4hkhdd9CGkPWGyM/6N377kpbnhw5Kya4Lj9UgjClqYW6lwCVFb/IKSsbVAEdbNCR3oFjL9Gsbb6fsQtCr3avS4KtGZwAh/iUSjqMWW/UEwkgyXIpfTxOGM0q02HB3tGcOhuJdx8Y86Llp2GFerAVvKJGoZ+ZUBHw7RslE1QnPS9iZiN/sPhKiUupDyOcSQCS619p2teU28NgyTqOIbsd81EAvViclx0MCvq96x3H/o9+68AoV0DaC4ziz632AuepTeOUDTxwgkh5AFjxq910fmD5+AUOB3HDNtepkPhh22ITHAvcjFVdXWxEApFObRFcL0mKF91/ZbpORBeMhf6ijV7DqaeoC7kPIdXn76l0uMsFelBKUHf6czwlC4Ic7TcisAF2oBrE9UiDbfwdiOfjIHMQPXFUN/EvmtNMkEsJXb/mi8qpR1s+2Cwx6o8kEj2Kzkw2svRXe5waZvWpcURUejindXlWuYS87LBOi5Pf/vfcdNc4kN2ewBRdrD5osA4NJ07L7uqcpH+jRJe5uAUnqg/V5ylBkRjupo7bDs9E8BpvoPW81TZOBPtUyTCnHqk5/lvlUj1TZesN/CJTOHaSSPttMKWTgg30SKENu1zeBe65h03qBGwWITTh5/E0gzjmiMPLIaYYAH6ZUlk8Hwa3RFJ9oReC84lSvCRff2jTbp+AOXgUpYAqMDU8x1v6n7gZR0OR1tyDKIC15w1tZPa+prgcPzcEOzDKR1nlimTNZ965oBS9R7P+ieR9VTUcJRHtYuqXZYdh+XdyRUagbClf41SRzD4f20vaSUTnhDmx+o33a1ZEVLyoiYKyzkFT3eiZgelbNiygcmMniUlaQQ/Sh0yIkVNnp9Xc1hYKA28DbxyBxJLntpSQeaeMoitsM0mzIOWiDF4ZkKJLoTjbpn7ieZgraz/lS5BAV//nX5pAxNRpEKoRm6dvh+jcEZnRrwIEZr0+w6Uz9/sQrgKwZI3ITn6mba5NToLXI8nODY8bbiCxOKrYXbMsVYo3c549RweM2Q4VFshXgOCaQsEoHFNQZedFIvg5pq0NGh1cUG+0ooRUQWEIMR1ONxU+DX+he4GG/jSZJ/iHkyeaastNpdAHi/jhmrbDyfMStCikCWwrovMVc50pLt8Q3R8TWot0/XOj3DyEwmb0duvjqd8j+qosx0fxzPa2iSvPvsfIlq0nMVX6IYTh9eol07Se7f27uju2wos09E7Gxiv+M+LX67wh6LZwK/Brix4VKlBrISFabLDR8Tt92b3GN8gJEpy1Qn+zJaribS5nT2NqfTPqU9Z22i3obXyw0R8TaPQ6j5Z9SDBnhlO9QEacV4T9hebQP6oLe9oTSsbGKvjAM1jlonrPSCEuPBqgv1yS0H4w3aihyLDpVfI9DzQk+vhKkFG6KbTuFmBMOzE/1cl+vCSulCAgqexLPVylS/kpZgqCwjSEXlzzweh3jVot4aLYw9qiBCm1jCMIsd6iBV4xmFixVw2zyxOTCmliPBPUHmVIwq1kJ3lbNZVHSGeAB4fe2YfpaNVXE0iKZMojwJNH/ts4rBdWmkKaWXqLwP0MooGjabgvfyCfI2d86Kk6hjWYD6TZAIlZ8DD4A95Rm87rkMt3e1hl9F6p5J8zicvKS1LDpPH7HbfIICCN0J7MhscIM4pTHkVRRDDtVakT5I2Iqg9sKNsRPH2rIfCCQkXzzkxc9yZKyn7MmsdIzh15IXDA5vAdpn2ldC2jQ3EBm8va3xTrrIR6joPLkCHzYyLFWH96shcpiW27HogfToFPr+ykN0QB2Yhk2hdEYnJRdCI5NxRiaKg+a4EcCaj2uG2v6XiXW9KHrFtWpiCA05sCRgp1YYQMpi0LI6fr0aioVm769Wq3T9ibq8SFF4Ea+vODlquI7VvgdWFZNpvawPQE4EPBzOx407muGhIvqjfmvY3H5QQpuCsNdb0AjRXzC18dCOSGCzDgHvFINNOXXfxz7DAsMohtoReIqxa4qbDWNY5J4U+uiopE16aGFbZxdhMRyDDQbjZ1AbezrI/YDQFwlXCf9KPlhm6tvnnP8eveH7slTbs2jIQbsANGHFKg8nUYX9NGOtewcHKmDZ4Pzr/uJOSxNEz+oN4GLGIgd/rir3Rie9qjnMtYBqnIeMhodtan25SxiccOa0NauOoB+cQ/ay3JmipdXpISnQO8Y/1z/tLz1SeLS9Zt8nNriAm1F6utBDj+vVfrKyt9pd87wbdPv8DsFtkh/enhU/bos2/zY/ruMGWG3G7DW36RbBGku+1gK658OOdrmbF7uZb2t5DhzOEbGIKcnVdspkzOrxuqOZ6hoUB2Xsu9cT7oxzJH7vcU1UCeXpQUmSmSsVi0EFdm411uAj3Nf0HAC+anPxpethPyGQzn/avP9WUWzJBMK/Lbel/xVU0OnehLlcPubGeRNdRpj2yWGgmKZ/18V+95q24eYh9q7b3qRIFYcTw1I9zJ6jlPtDgrx9G/3OI2VJJVvPlh7y+3nmmJX8g3XNfAmYBdL2/tAUP4t1T1tQDksR1n/MUJaP3GqvwjO3YFx3iZ9iLeomENbgGkz4KgB59PGQHSsYD/ijYhSS49oOXpOCfe+/5+q6idc6FrMseAQIn1AdK2mWeosZMFVHO4EiM9TxLzTQlYVgn/mNekFsqi1+GLZgsDO+IbhyBQORqtZ3P8VEYZjeJw4bAqrvYrL+MB70UblRYpuaOVW95FbsgFfbe72/5zUeQSigwfgdRvE0/YTX13MnZJ/VqU/IVBuAPcXVb13EjUSxOssw1+SfMWe/MAKyDLoZ8JgipMXuSwfLpHcILSV6H4wE1JwnW/Q8lK9o2F9iILKiG6iXC2xNSlXMAKhSkVhfKv3eOa2B2hjZrqB/XXFOW0F1aLNTOdaIT0cvQQLV4duL7juyjO+0ddG3fePrGKk5sBaRtdkKHcQRprEvuD8kvuubFlELioj1wWmtm+X7tUF52NbQrTbBjdP+yckIPJ4Go3b1aS69KsYRZ3KtdclQsy5ucu400SYbN0EmYjVKTTxan6Hm6qz9owcgLoyNj2iTqjZyhdKmc2nD2BVk5JmskHIN6/n0LqxL7jsvV++zZDMlrkoWhbIB1G2hNub5WBEHgV8d7hyY6PfgM4QZFJVR6zQkYSjtTZ/hP2GOOtmoeGQXx0DrJpSDGAjBaM3WZoW1NlM43bS6BIsoG3gt06zGWTLFaU79K5wtGdiNLPACn9jVrlnMyTAqzX89yi3Cj/1VjmloSaT4O+liSx+fhfWaS2aOTXTpa2lOwP9hLntuWthn4f1/dH3jJ7Lssto6m3BTSWyM5+e2A0kTvOB59eQz6snoSnkTVIGdZXd/HNo/cu5ihXKsSTz5hEQwrMLfBIu4bPyC3Sw14+DT7c9gf9lcq/i6f9a9YtL0++7z+zz9MhEYIaM91MfwmMgucTOB8jcH06ljWoTOkAKPOSvAnrbgs0yrIB1Ox9QxpgtbbbFEyZBGda2FWp0XbYVgHfKOt95vFNGoCqJMBASkHB03FzjRloxYG0VK6dR/OhzGVsz/YQh+pGaRjfk7fwgLWxKDrtFTl03UToHv5YADoByPcb7E5rNzuk8jtq87wFaLOnvtKcDmu7e3WuZeN8cA1X+rSqbBmcc7iFJSqZjsIhKW8DlQgm8KWtmovX69SOMFuBCmuGUguei23vSFuT63HeKbzEAWjrm8VRkDRJV06RNy3e9gFo+nFTGwXED6Cqag/pHmQQs0TdtDhTVsZfpFyKpBOkOLDUfvGhztEQl+FoBmYDUe2af10M/rbgtKoVv/zzAf4Gp6cqgGLBPTHEIOIG1S6hRd21CekhPoyNDmkNRKk9CwSys6fZNCeQZwNySQzfVqwcR1biKUcPSmBc3NeOIyE5rVxRtTuKkx+t6QxVZKb6vx8sN2uPw9vXmUbpG0kKue5Fn2AFIyyelhg5kVhzHnW1ebBDHWD5tkSnC1sd35SdRnLjv/GfKt9RIWp8pyJYPmYF+/ZkKXEBwdgfxJH3UWUtjf0OKZ7ZbVE5uUX/2Joqhr/IOHiYe71GdXLmQT7yObaw0ziSeDHOflS4FAJZETNOxkYewS+ghPHvygjBlc9kuLUJ7K+FimqPc+QHY05BIApezhSOT/e8G6O3HumbcdPnKVd9OecoPYGXaYwEsTyG7yWqqUzP9o3N/q5Q+JGVhSWAUl4Gt2xV9AtrsVM8POH8Dq45Qm/neMczdC6b7zkz64DMhp47GNf1xk4yD9RaOTNVcsi48seW1ZY6E00dWeIblDkGhB7GbRLLge+BVMFeyYO48v1mZDbuYOzp/A4H7RtivlfXWpckp6LaMAl6p0bMrDigSqTOqcku8JwRFC4A6XnkMY7IQzTNJU0A6KCMdIm3av5p7C9DKG9U2+S7Y2tQ/6zFvHMHmIYJCcUt48pmU778u+9DoFyUUy0qBkKd0YtJ4jDn+e6X2L6jqbtv/S23R/6z4i8vodLoEonyoFj68bGl0uXyHc8X/Djz3NRB3kBZkt/vcyWwlpcAZEnAxT7rWZca8l2j0rYqj+hAdHWiMjpwYQx25+jpE6z0/Zfeqdj5bAwzfCnwck1ZVynYkcVvOc8gSZrzo1lnIV9KbfNBdiC231vgH6ZFzC8fsPegX+dzqyDfCNy8A+ey8dHkTyaqh2c/y6T1ItDcqNMHqGdpAqbkpYVpLXHFGjrN0oP2ENCOiBLTFn6g/OyHxjij8rvLhacLk+ddwtTU9g70IpTQyju5fYnAO9EeUsbxFdd4aKqY0VS4DtN3Vm8+lFog+PAEoQ5KvbE4aj3YZCwufhUbIRYGPShGcfyIUPy5juxGi4wYNjAGU6vlVSLjQCYlpzj1YxZpFCVqVqz9We25OxB8/zRh35o0DPVU1eduv4vxRda3zuhI89YW9vSqiHTMoHwZFHp+XMbGwaV9+0HLgTykrqtIQUVDnkEoTFSlSlJG1979dhWxTArG4OZgYehTh1x1mvCurbedVgj7/V+GpbWv+kncdgZHTaL7vaB14FOnTio7cA8IEW0poOCU6sCxEgA5gvYRSU4mb1ZFoipv2mYWsa5OfdszC6SYKri7p71oe4yv9Tj6CbUOGKlmrBIuj8yLwklEUtk3QfAMHd1rMm0264OsbjIwIJbPqBeHkmY4MtDj1ikXk16ee3ytUaFANAZ9Ja73wmqAHIjD1fBmdkukmbe4gzm1HMQHYzMwGuSzWVt+K37SZtpioG3VxUTBSjHiqOl2XhvbVWx7/vRaP08qg6lo1EXEDWamqCmo9A0chxhzi9pcprA4U2/v5K1HAH6DXcZo49MiMAB8SomnUL4NYee+gO9z8/yGWU5BiFiRTjhxpJuKyQr/k7B5NVrR847vEVuLIGOb7ZxmshldkCFZ14lp6U1UexiFUipNq/GoUns/67x+/PbWmuAXcOrqTV5Ier6u1arKx6qtlMVuF6Z036K4ncS4HrxHJT4Bq16qcZCOkxP5hRmmiEtTwvnQhOb+M4xp+9+5X4S3TdllZQo2fPL52V4Ao3L3JDAvCruzicLcURyePuikcVipnklN1MNoLsO+xy62YWqCu6Pnq5avuXrPP4or+yBrKERzgARwx5ZibFfZd1qQIKdHBV5o5ZFZXZzYWcpjpcErJs9uQxWeaO37CAkA/UNmW0bYQHgaYlndq1oZbSj8rhcSFIyBXe0dvJVRtgKfDq/A4CNyj7nhyYmEWlM8GDzxAKrSffOXYDNqfaJXoZBUbiTwK8tHJFIX5PGZ0CeshZ05jiFpfs73X+t0b2ZmzDxOMmIuxnZEhvNgTI5NRs5ncTxzsOw+wxXWxe58i2crmqQLSJKtMWPoHZVJowacrYFdIdTm3KD1LDlLAL/lCqtpUYO9XwNXMbrlApGf0bQMU9hjxU4ULGH3sdRblbTiXaiAgCUCdmcI0dIJEnWeAOfjU7s/X8ZKak99CgPSOe+3ygWq1uIocw4xQ13r8sH6YbzSlXrO+UwrocknUaK/PlIBop3II+zIGeVFx2UDGa2gLPoIKBiGWihQUtmbYrP8CfI/r35qyfw3/wk631ucK8zzdz+52OXxn68q9bF+zccVf/H83gHhM1J/3HGctLKjFR4QGf4a5yjE1g5IDYiYie7TCDgRoBj+S3LAUNNN5tG7+nJfRmA+9ueKPC+6iT2gc7L9bt5oDNzuFlgFwo79FfC+kAFhyxjNTzgCnhmoH9jaZUkhamcKVZsJ13ECFAQ6aS9cWez8Zo7lBl5/FPtUEwamnedtwyUek7cPcE/gQaMxdOiGztGezcKJ5nUFJ1e/Kp0Fg+Slp27toK4zz7n/J6o+M4v5p+VLNcyws7jvKI+wheqGfpGVK/p6hcYngpsRXpZTR0auD4zzFWH6fwKn9jjYfjAp+UPEyy4UYBK/SJLpd61c1xlqX/81sUOfn7dpU5cn5OClDQv6ZphPoRAtPH5cMO5EDGUmypEpCbaAXra7TYl603HoHwM5GwPLZsZZIiIAyX5vA8wZf3BKZ5vDOOkqiQyAWCd61ouxY3MNL4E2crzYZTYgWKParRk1GZKpQ/wyCOWAbhBIgcONTwdR/dfLHOW1EisnhgzfgXQn+K1V7BLdANToeM407aHKDEsCap0cWoTiQ2cDfka8fQg7aG84y3n6E7xIQBFmsPTr2G6zpFSwkL2KsnE2wbcE9e7m1y+wd3ikCuJX2g8glEG1i78+KA801E9OG6L6kBWI1GRgv3lNN4drxJw7ZAa7+B0wmE5vxdxxiHdRmldskJm891ZGgm2aNourggKbAQjuMiSonDqV0hgwpj93oQ6UqOHfB11fR/e8244gUNebIp23AVS1DA/iPgFZQ9asXM4B5pVufQCvXdcs/8csU+dThsOInAvCeu1YL2nHGGmSTdDsFSm8cbyqTcn+dp9eGpMnCY0KeJFV7PQ3in+6ksSe69AAH4X4ISPIXfVajWfOOrAcr63NoENWzz20UIf6N+cowRdpRDDK5cJIja1wPSZ5hRU1Zk5WO1w+aUs2U5EhCY1KoTPiOuTV2fu1jvPWtxWDRmqRhpHGo/DAFBzvNp5Lw2uUPdqUZCmLV4i2BDYfqIGEH6DxaZOhRGEL44nv5PYomnpp7KWJcDGVSLMa6EryH//RbI6CNPCwzjGWspVst4I2OqQ8keX1N2xGBIrGiFU6GBRFcrsslBj8jKFRjt5twD7jc6cNb5tExnYYRq+p9mYq+rFY3a+Q60+JFzQgTDwDb8l5xjK/3xy1qUmj9+ZLNFgLsUwzWWNfdwe1mJEOOKZ1h3g1fVtrb6cLWY7tu6y6U5ghDQz+GP4kwNXro3d0feZ675ZBjzTsfer6NxKT8t2SDD5riqS5vX5SyqWu0XU6DeCUTBfO8hlnCsrlD8js5g87jQ8HpTUvQhzdOhn1RyO883Dng5yXMG0ANU72/0XlHZrjkBc7jrVOFXBMEQXVxuk91hpqKbFPWX/1KqMqMyLmnR92qZNLtuaaEfELJBfaeyJ3H0rqsNVTsodxgAZJHVUvegjOr/tvCjgNGB9L0dujr+NUbfybBnKvrK7E11NrZ6bG4GU4Ewvted0THwNKBq4mumwPhlx9FtGEh18gU+cI2jl9QbRaUxJPL9SXLM+uKM1iezhSu1PXQXPLJCIKcIc06k33ZnEFZQtZCzhqqu+Qh29DRH9N1Mig/x7C66GGFcdZ9UCiiIem4By2XHL8RQJCB3cDmdPi5EYfVpU6auetMy3fxlhBYOe83UT4QO22ANnR21f/DyFY1aCy50xrklXV8B5Pcouxi93HhyPo85m9cMZtaq4iHD1uCVUsgW/VploUUzjymaHgP6EoPLQYUJKnO/CFToHH2ChuTnIvQAzONqdAEo1bXQl6SFo8LV5EzUWei3pwvE/2OMsKsQrf6uYMV1+JGXr23ysU2O/eSF9PT5TzV54xGWagKcccqQf1FVuXbdUXyoAf2mu+kk6kgHYxUIJXfefsiYm4ekt17CDsOhFBjTeazbdX0Mz6XjWWXUZEukL4K8ngeiU60yXQeh1O819LMqrxex57oR1WPEz9jBN5HrTC34+zNe8aUhd/gRUKH+5j9omdMNYxGQuR3ZaEC5G5nrhQWh+4HShHu6XZAjJ0Cslte/EXBCgko1QSO0k/Dn9P5cT/rHl9rXjlE+k14fFark+HphMljm8YadkNOj9fU0eyvv2UwEzcUtJOAvvfrgErU4X8Eiz4DLQafH3UGhuSqugmAUEmaSIaBUKaXGvRQYorMEVuQTefTZ+1UiYZp1zEgZPRb1R1WAR5pEZaoY6il89KPX+30DaaxADvsHwzsz0xjlk0hrRYdhSGcMGPpC4QH/J9/WX5m7yc7XEKxftrreExGDAo/7kOmp0GGCbM2yBt8LQke3wEFPfyzOWhI2o86xoPIg/sinTz/tI803sLf2VCbZjrzVfmNQ5QsCOgu3X+wof5nCvFilKD34YmA3b1ppbmDUKHXgkN1tZtScNlCSP9z+clGL6BJSrR6zLJPGxLxJ2513prAMkqeWoarNpePgFfUUIYYi4pkhnLIV3JAlY0Fu4fc9EgO4X8dh1Cwi+nId3dJwljTnpy5VDWxAUcki5VBEthyUuGkJKEslWCpRbj/ji76xqtGlgzkfbAusQZRP/DaKoFb8sNI+LoOCYAMHI5R4xzfmVQK6xs70SApwIhUxTDvYZe1lZsPr1Jm2BprPPXz2uluvHNJsEMnNQtM/2VKZwr7tyhn8AFaGvB1yiDrFthOoRbUnOwrGmrFqXlmbWJZGueB4F6s3wJIKhq/SEXY+C/YhzovfiNAJNvqkZRIDXpxOkME8HWUOLVDQpC5407IAEOOxVAV8CVXEh3LYRF/Zpw73+2flT9k1zg2Lds0HQAWMeTDdx/c8B5vNLfDhpP1GNoXlukVOzDNmLdFpraEGyYlq+KXY/ngCcggw8mKyYvwPp1pMMEOlFIIQJJMhT8C3It7fscVH50eRrkc9p6qYwqC29DtTBdjG4+WPXxCPg4tJE/NeP/3M15t6spnemr9xAyox8TVaameaekGKzYEv7/bdHBTTdXUXlf35Vl4yTIO9wAeOIDmV9vPYNFQ5TGx9ZSa7zTZnUSc+XU9sMEutVWFafnnySaa0KELraHZOd1S7SOMXU7wOpk8IkXc0s+r5Duf9E6RRKaNpufFQ/x9GazyKSrZhP+710vBWujtNdeeHpg8mk2mBX7gti372qqtwXvo6qvuIiYWxl/cepmqMk1HFxcKxnfrF8j/LVh6HkOsmiFXaEdNtcx9BaWOXZUofSRRdqfN86hXL5WHihyRduczhbHR/OsuB2htCY7tlffDpQExpISSUt7g0P5IyPke+WCC2lLLFOy9CFzyR+YK1s3Bx2YivIsGWBVU9r2oIwEH4ZWWXZUr/XDfsc12ICXl+fEDrFr4wMmVXEylyVQk2yn5EW1bdT2QJXxiIEyIk4LhuLnojwy9JmXCsA0FFlgrcRJbU7InejKQiygIcicVu2TTQwuXWbZbjxTRYh30VjnGWTSr1YPAYnofxk4vjPX/qaAOy+ZZHdF9Bfph4Iipiu6g80iq6yUGsvkAi6G1DE5HmA7ZllzNReITkUcEnqXTddipDvFLP98aBTOtLxDIsLmx7GA0/AftDwFKOxPNQ2+p8sIGczp2WGgB3Ld/4SAlyLnf4fGD7vfG2qn/FDU6sa+GHxHo82nMV4Y1z2Is+MD7Ja62blienSDSDbIM2cyOp+MsvzyX0G1/BarO4dgJ/waPVCf0AgD+4H37EUAC2eBVn7sp/mNooxNjtVi6IRha9crc0aO1RqDztNlCNsOCekvDZQgYUpmQS/oNIGdTWHRXXxXr0br+QbnLqZKk+lQibSzuheIBA6V5g0WdeV/fpkw/KiCnFRgVi0cm5HUzDiIXXciPtKVQmR0D9+24MsLp+0EMkKQ3RnRtGQJJX4ckyxbbBGQylgT6kjGlimQKAdk+8nLrp2hv5kOl4uXPSNjZvcbSiBc+2ssruwOEhLXbAwEbqqyklrUtZfHcuMTLa2bJYpHnqT99xtCT0XBXGX1Ace0QnDlPxVGCf1MWPYHlMHH7zhAO7v+ZKIQyPcTebcvvTaouYa7paj6eUv6wmYw9O10wCIDZn3XKpoEfk7JAXLzGAindNawezTJc7qS0Cx9UlmdKrMrmV38hFSCVyG/71YjU57AGDKtOld2IYyw5DhrO0oeYU0Wu+pvmgGYGKpv19B0i3AfwexzxGWt29cCvHE66V4sfT5g+bIm+LUd+Z4DbtmLSnK4XaZnxpvShtDgfUw9q/K0ds5IWznaKowHZ4Kwjglz0+5kG/up9vTtqKnBizl++EiSXe/XyeRTrn48TTS55+hHVEfpw1hPVO9Jtt/+K3eW7j66ccgvCyYrzaPauTRK/3767Dp72P64qEoRlHs9x7DXdV1Ic7GFoQaRBRMJi+52iZ4VUB/94BTMtoChGDiY021O7VaC0u7O7aFy2NpJQ7ddYUfXJu48r2M7jiiBs+IFxrn1Pq5d132jicCbd/ExSwcQMNyeZ01WQL80l/UWiNyKmbHw7xj8NCyFWRg2UzCQNMndx/fz72B3WpGNflCQCxjPEBpSDzZT9S4RHDrqqNQ1hSmokT2wr4PojKBPdTLs3VPqLCAI1wnGRfF3dpxjJkbCJvchDqACn2Z97BGyXnJBIQyISmwAexENU/0hBIss/3ZUkknzkK6pCBjVn2ymBuwrCJg5mPCf02xsUW2/fxCcYgn/7gDxDS8gH6veGeZ21dHHDJGJmoUgE1M1xzyW2umOlY+C8osjB1BI3lJK7McEIElf6AA0KQxgaVrmLJZ57XpJfU2VQZg5PkhAPJtLAkRasM36H4OINZWK4vu5ziobwvkkKOPVGzLY4bAAyIMhGH59u3+KACowGnPt0VR4vkK2RxZVgwXiGbdUXzOpJjFce3Mqsu8lE5/nht+K8ZregaHGwX09n1ASd+BI5pPqIglz3tnxNqNTzGb7z6CaOiSwVenXOqzvykTIl+eJu0Q1iihmn/k5mw4UXdP3qEEDoK+LVgjA13UTANgqX36Bg41wkhazIFLxAW2ZtI1R0hTGafKFrVpS6MxTE/azknCno9uVAz4fMSTh0/fY0PRnJezILiqDS7bPWto/QQdQnx/ksR9tkezznf1cQKZGJLF8ABHeu08Hzl1Z3/sG81jwvA1I10gnMXO5gWP5vuJaAN5l5WQ/DlQONs1/wl0SmH5DhSgk5Cz02YumnZJxRx2WPgQXfv6mss+s6lYP39pDzPcncY2vNx7K3zaepLCsT7l2cE0TpplazfrQsbEJxUzs/+Ajdk/HkZi3SXSQdpHTWDCBwvxY0+G/yQk3rtfU4JfQRaqzIhMOUPsrexcVmuda9rSYyAMoulYqiO98R5K7SgZ5Pg61hdyUb/vEEzuBBqMkqI4YON+muBcIHSLUCyFJcu04gKTwqG3pA5qLRZGVAgvt6kWAASCzWgmtp1cl8iSJWsXdaPEzOg89nOMZBQ2yCttrSxB4COQJxhqrcu4Fo1YgZj3kqCDVv9S1OIqf5LSZsIjgYgM44MBlUIaBh2QmFrmRrXUv19RO7nCTf/s1diohSVm39G8/9GEtGN7C2rt0o6bwhwqvY6gJTu3yGrQkafGd2N2IBNClOLDmpFdvqwY1HRNKDmtJOdfNsII1Os8LvsumzCDdvo5kC7VR+e6fhxy0nJsjbof2wH8UgFAuhKgwUU+VTlTxs97c07KaFc6rnPkY7q6P9yhTKOO7IMksGEajJNmuyWodgE4TR0G8JjH0bJ/N0PohxofLcxCkSvIjcyawTYYsWfGrNjt2Lpk1wgR6bektBgngUHhJHIAd+x3ptPEheN3RBBimTmdsOUFRHeqzHBcR2fmx/e4EWg9jrxw3i4DP1HkWoc2lO088NSUTAyW05TIm+wZkkNMvfqvVEMa/ui5nUmJSdWwuFL/0JKUhZN+lmWZr/RkO3oa3UX+mWx01hcFxd1Ob3/Ql5PhrZrEPexa+lRjhnzCHNhLk3MT84N7h2sQIztiYMLO3+ih83OMxX2C1pk7KkuoWtoiVFnr00cejSnHMk18GA2C3EDNNDoZP/ImXzubZC1mpveuIB4Pk2qq5Lk6t0dhHV4PBBy2EGnrxqGI6muppixJjgrvtJLJy8V+/7mvj9cnSwMoFVK7kOBAsn5S8XJWs+51w0s2seVtVEls7JsoLQaNoUzDF9LtcniZHeKhwYcqRYIn4U/jtsgtvZ1Gr/vJJv4LLI01R25KVSIHYf+epapS91s1HN2jZyHYo3NnVeLfhK6snw59aULrh1djkPo7TAIEzCkJnJt+m2dILhwYijBVqcNgSPma6zAA8pzY9cOgSHMbD2Yr4zULdeM2GzEViBXhToaIhoJ/FbYJ5DBHIPfEwr6XeT475StY3zbWuqDMCDH8e3uSgktAGGGiPiDbJLn6Kh/V+EGTYe385kFTeCkCUG1iMhvhzHWYWkZSKQOk1skf5YbnEmhHbQ2t/ItuoVr5CZ9cXgslUKSCkHY9aPvhWrSDn8i5m5Qwg9UtvYGgHc32YT2xplCJGn7QlSJgJ4p4Z0ucqynm48lHKzSpkp0t7q2tX9rAfgewq17S2JhdRUkR2BVZ8ufiDJM4dsgqWVM5LEWzRk0RdRzMN0pUbF+HmsxeKFJVWys85DeQxsUASfRZ6PWNsxVYY97kHcWiHaAM7qRyXDlHfDWrhvVpb8e9fhZGinl32Nc3a7CqrxxfF4xlWtf6wo14qo6WGGB+QpIToMx/f7qDUtQ2v/U3d9kyu7p22XTP+6AEZOa1keuR207F0KW5dqla529w0X02lLXAN01/kX4UH5J86D1lZTVHr7LPBSz0CrCnGW0lj4glHyy6GPdoqkdlETiwU5AvaQ8z3J3GNrzceyt82nqSwrE+5dnBNE6aZWs360LGxCcVM7P/gI3ZPx5GYt0l0kHaR01gwgcL8WNPhv8kJN67X3sFeAj6erlseFORvnnLlbBe0XMQkwILaKouLoHN3WUcCa1JjxuhJ59wBtH5G6oLYT8dxHLQJjNuM1NnSDZnkfob9vuIyopmwRgRUWHCBPyC7wl+rselWvaQouXvgFjXXFMMtdS7A2tFr2naBHWpVnWcDTxqRGw+184a0H6gyHz13P+vfMNFwSevTNM1LikB48F2rWBqOrdLOn8kBoqqEdeU0EqO7conx2osAY/zfk/HGr7U45ybf3qnQKLMoRijGAATVXd+J/mIBowR5gHpg1nfUTzqkdOZJtrzfcsmzhbgXdC7kDsf2tz8n7A18CRJMkMTCQ3CVUrL3gE6t3pDvcyVNpQvqNpFNzZzux/proy1qRY9gpPmcVjgUOaPDZgMQx4WUqmrl1TiliwFvFxJY5LmIoLS0Oeo/CI+VYjA8/Bc5vfnNUZImmk7nspB36W+igAc0cONOytCqImXeRmdkBm0N+yMfxE3asyza+iEFx5/eZlKQ4ftEOD6GDj3meXpCgcyE5OQT4n5rPUZ0FpPkt42MgSVbCeDv4NRoyntz3xC0sNhaj69+UsecxqgBwEDAcVkAhkaMaBCVnVZaBmMJ6u2BDWzfAtvqdW1EIq5u6qHnAMi2bGhXrbUAfGFRXaNfbGxPG0hmvOOZ2hNjK86itUFN5QtxnqKbQi2ZRNyvIX/covs+cbTZ7YZajAHVEtcgg1syqNzc8jhRw2r+rPplwYfGYirKMWaouf14Mqwr4tR8J5TP6Gxw/aSMb1/hLTsYnSAqfHrZu5Obr3BXo/ji45Dk3oE5x+TQY2Pj0DNpNKrwwLElcb+MwgofPOlLBPP/P94o4k/I2nrgR1za3CFv7MY1LSj+WfmAWzK7pE83pJJkc1RyvIB3rkh0NHKmgrwlr0XT90ItTUjm3peASEPTiOyQI0M/7ek8oyyfPdSXgtSySh/ilMfRW63ZOM41VHQeFjBQYwjK3Bu8WtzgUPREKNEWZoTUrM9TdZsQeThNrVMLhFLMgO2gpprkanPD55wb8uUvfGq8zarLlDW7ppwwqDXwMmzSss1YbAqNc32cZHX57cDMFjDQag5DPxINRKw4LLTH7vT0GEftInqPMGj1FFYeoaocBfWiTt2hqQz3UhDCeEDD4NY8o/6DxPTqXWOnjkTmDCjvFWptZOPrGl2P02YX3C3l15FXT7y70xBHpRS9UvZjHzePQm7g5tBqOAA7oe77hMK4YH4dyMiTWKmAVVoIEAOX+qCKHCAYGjRArAICMfa6WQy799Og09/cP2S8nvy8ABsoRUdaM5BznLrw5fv7U2ZNQxzAZ5DLXZj+i90olmNKEhGuOFsaxRdQss3DsHMq6YmPmZy6BHO5B0OBCBt+tOcvHyXYLLCIHLsd2vdj7g5slujcY8Ah0XF+M8GAJEgwg7Ja84ABK1hVQS9htvL6tvptzqHDqT/VTiK2Zxob+MZ/Y+buFLpzkC2qDteGD7j+v8rkWrSZtSNkUa1MkpV9tQJY3jI/7ehj49Q2RqQPJPso7ZrzKFC1sEtN689CdRYbpmiz2MVNdFOFcFtLatZtLZL0z8WPps8dVa57HGwYWQ9r0ps7rbhaxZTcT0Cpu2BKYEFqjKzPGoL61s+h2GbzZoimWWW1OLBR2OOXpW/Ypu8BtuFzaj42134FOaNrpxbt6OHvuWxJDXxB5IZ/fglqBTx0E6bRYo5pRFQR71SrEkekkFnydZovwOr2TQ8lKUyN+F33JvlbmQEbAb/nT1dCAUmprWEIh22AmjOWdHIly9vWkD+N4Bocg3SACi8C1ywO+vR10LViDEVA9d7uosyYqlIHWWCEnjlV4V2mf1mfovWoZLBTbHFGXrXBQO4Xej6M/mB/H+xgtNOKa+KJboAzCrLqewObJdsUPholJCSS/5xBL2REjXl49lTDZ1vMxNY9Hn9tH8D2TjZ0cKybn909437VC5raLTCw0HUNHB9yNn2jccS0m/KzdAxWZ9poVOFh8vEozCpdk4qwgW8lWs7vC9gY8uE8yIA7PXnxI2sqh3deNlQIyGi9ZQFeSU2fsJ2rlvD1egf+G2bct+7Yy6rW6aZLH6oERW6Ul4o8arg+HfgCkWpeEjOurHc7Xr6v/shNc0mJPK+Cfyo/j6nKYb9kuXOu9G1tMW3719Ylp9Bna/oBnwTjAcdeGoe2yK8vZUCoBVA1iAnSTFDJon4GWzszbZtOhBIUpFWyBWH01MdfzYNV0zT/sUabggAu4KrAdDGakTM7jf5HKOPmTaG8Bup3rpMoWMWvu3qt8OxKGiyH8UKI0juwBlc6IRBMxd+HqhKcMSoPoe4QZKeRQWvwTTYM8WVoHfZK3CbUw2c3AsjVAopB5lnlcHV0PDVEFC/2tG5a7HuDGBa+mN7spfM6Q5NbkKmfWYdgwzwnRMzM+2iek80wdoxySSL4+wuz+ft9/kH5yT0VAYQRbIFsiRPfwxulOtqpfvDMfPPcKa5A2D8yUow3sqDylWxCfkUjTqEqOZjDtlpKiZejrIuIZS8ge96M7njGN9pVb8JIgivCx+bAXWrIqEVLMpL9OvuL8iAdRzHIgDJ7/l5z8FIYqM5cTDFE9TtcSLdY4d8LMrHwtTI=', '05847475');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('W8hg,jfBJKhKM8fivZinWYZLz8x8LKUyhi9RTYmd6h0', 1429603092, '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', '6fd6ad60');

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

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
(84, 1429600856, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
(12, 1429542964, 5, 'user', '1', 1430207722, 9);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 1429600863, 5, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
