-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2015 at 07:17 PM
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
-- Table structure for table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
`id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=latin1;

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
(572, 'en', 'it_is_tagged', 'it''s tagged', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(1, 1431546174, 'user', 15, 'add', '', 0, 'status', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(2, 1431448990, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa');

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
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(40) NOT NULL,
  `private` int(1) NOT NULL,
  `type` char(10) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

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
(206, 'ajax_request_limit_time', 'en', '300'),
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
(220, 'hash_storage_path', 'en', 'g::key::storage->path');

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
  `id` char(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('wrlY3FSeP60hXjOX,yHna6HrS,kBwAuTcG2PcYmG22f', 1431623782, '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', '51507ee2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '7833f514', '0e96ed6ccaaf991d545aa06af99b8f85', 1431546174, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'sV3hVenGgqawjBnjWA1ZuB4iX9b+sOSazKtp0/slzq4=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1431546174, 1, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_cache_image`
--

INSERT INTO `storage_cache_image` (`id`, `time`, `expires`, `hash`, `path`) VALUES
(1, 1, 1, '1', '1'),
(2, 1431532904, 1431662504, 'f0151de8154acd6514af9132d0a727fc', 'B66dzgAHoMo44TqIxjlQHZ73bRNn2KOGWbDbfOuW4SEXIzND1MJ3TrHqwO267H2m3c0f2M7Q7RerPYR1+8B2Hw==');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(5, 1431448099, 'adbddb2c', '9f1d2b46faf600704c3e3f0b8741d675', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'NlnzyvYoTkKBUlzFkgp78qSYBLySCj6X7jjqG4ylOzE=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(6, 1431448205, '8cf57000', 'ae4e4b63a02bf76a1d9dfabc7c946e3e', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/J13BttHqQzEdxvJcE0U1NQ0Zh3meXHdLnZOIvEmEYw=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(7, 1431448265, '4f3e603d', '6942ac59b6fede37dc777b8317fdf751', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/FVIkdvojCZDelpOywW9c0llcqh78Whc6ztUZqJQbTA=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(8, 1431448456, '7da0feb4', '84b5d5a26dae314b0400435258269f1b', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'WWXOT3BVq2ieHf6m8bRuD+RLg2Lp41ZDPk8wZcEjIic=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(9, 1431448487, '72fd14b0', '3bc41f10078073cb2b5118af5b104957', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'w2QTdlNvG3BTMBOWvUjdnS3XcCTmKqSfPUFSTrEFrS4=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(10, 1431448511, 'df489942', 'afa31570ee8152a8bf652bef8584d28f', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'dzpzbo8myv302WCk/91kUZiEi5XspnTAdrU5V7Eupk0=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(11, 1431449021, '8e833e0b', '368bd0a0bf63b9b2eb24e5e38a20bf5c', 'sdsdsd', 'dsad@sds.df', '0cfc685fbf85060b38e78034a0a0a81e60713707', 'nqfR2pevPIIeCwuPGKauyyY180fTlxBuZ0aEq0Wf2yY=', '', 'sdsdsd sdsdsds', 'sdsdsd', '', 'sdsdsds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdsdsd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(12, 1431449110, '1e55d9d6', '4c45bf7e2436a619476aafa7cb3ac613', 'asda1asdsad', 'sdsds@dsd.sd', '12c0df67744df35ba10c6c0a93eb73eefb597b91', 'K4oIt8TrpsFUHLCzvGktULWOrXCK+NLyC4BRixL5/SQ=', '', 'asdsddsad asdasdsads', 'asdsddsad', '', 'asdasdsads', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asda1asdsad', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(14, 1431449623, 'd3eba551', '853456af6de014778a55c8079829b52c', 'sdfasdf', 'sdfasdf@sd.sd', '38419dae304a89840014bda5570aa0f5cab782b0', 'RmMjd59/scrynSoM0fSOwdwQMtISITO2iwwtrAHVQJc=', '', 'sdfasdf sdfasdfsdfasdf', 'sdfasdf', '', 'sdfasdfsdfasdf', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdfasdf', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 1431482041, 15, 'user', 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 1431621776, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=573;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=221;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
