-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2015 at 06:21 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=latin1;

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
(551, 'en', 'pages_accounts_getpassword.title', 'getpassword :: accounts :: giccos', 'false'),
(552, 'en', 'pages_accounts_getpassword.desc', 'get new password, find accounts', 'false');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `private` int(1) NOT NULL,
  `type` int(1) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;

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
(109, 'hash_status_content', 'en', 'g::key::status->content'),
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
(138, 'security_accounts_loginTimesIncorrect', 'en', '5'),
(139, 'security_accounts_loginTimeAllow', 'en', '3'),
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
(202, 'hash_comment_content', 'en', 'g::key::comment->content'),
(203, 'boxSuggest_length_randKeyEvent', 'en', '32'),
(204, 'ajax_length_randKeyEvent', 'en', '10'),
(205, 'notifyPopup_length_randKeyEvent', 'en', '32'),
(206, 'ajax_request_limit_time', 'en', '300'),
(207, 'photos_compression_size_percent', 'en', '75'),
(208, 'photos_compression_quality_percent', 'en', '85');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

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
('M3dvtBESyxwFC10,vkA5Iwnang4o4nZZ,WsUZaIxd03', 1431361280, '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', '01cf8ceb');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `activated` int(1) DEFAULT '0',
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=553;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
