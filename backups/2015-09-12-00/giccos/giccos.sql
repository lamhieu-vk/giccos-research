-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2015 at 03:56 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
-- Table structure for table `faces_id`
--

CREATE TABLE IF NOT EXISTS `faces_id` (
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
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL,
  `mood` text
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
) ENGINE=InnoDB AUTO_INCREMENT=859 DEFAULT CHARSET=latin1;

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
(21, 'en', 'write_a_comment', 'write a comment', 'false'),
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
(520, 'en', 'PhotosEditorPopup_footer_text', 'Photos Editor &copy; Giccos', 'false'),
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
(614, 'en', 'feed_tags.quickdescription', 'general status has tags selected', 'false'),
(615, 'en', 'feed_friends.title', 'friends :: feed :: giccos', 'false'),
(616, 'en', 'not_found_info_nearby', 'not found info your position', 'false'),
(617, 'en', 'feed_nearby.quickdescription', 'general status from users check-in this position', 'false'),
(618, 'en', 'country_at', 'country at', 'false'),
(619, 'en', 'content_empty_please_type', 'content is empty, please type the information', 'false'),
(620, 'en', 'avatar_of', 'avatar of', 'false'),
(621, 'en', 'cover_of', 'cover of', 'false'),
(622, 'en', 'location', 'location', 'false'),
(623, 'en', 'change_private', 'change private', 'false'),
(624, 'en', 'custom_time_invalid', 'custom time invalid', 'false'),
(625, 'en', 'private', 'private', 'false'),
(626, 'en', 'change_view_private', 'change view private', 'false'),
(627, 'en', 'change_comment_private', 'change comment private', 'false'),
(628, 'en', 'change_share_private', 'change share private', 'false'),
(629, 'en', 'feed_family.quickdescription', 'general status from family members', 'false'),
(630, 'en', 'feed_time.quickdescription', 'general status by time custom', 'false'),
(631, 'en', 'feed_general.quickdescription', 'general all status', 'false'),
(632, 'en', 'explorer.rows_sync', 'sync', 'false'),
(633, 'en', 'explorer.rows_cache', 'cache', 'false'),
(634, 'en', 'edit_information', 'edit information', 'false'),
(635, 'en', 'sorry_you_no_right_do_this', 'sorry, you have no right to do this', 'false'),
(636, 'en', 'not_allowed', 'not allowed', 'false'),
(637, 'en', 'loading', 'loading', 'false'),
(638, 'en', 'write_something_about_intro', 'write something about your introduction', 'false'),
(639, 'en', 'write_favorite_quote', 'write favorite quote', 'false'),
(640, 'en', 'middlename', 'middlename', 'false'),
(641, 'en', 'fullname', 'fullname', 'false'),
(642, 'en', 'day', 'day', 'false'),
(643, 'en', 'month', 'month', 'false'),
(644, 'en', 'year', 'year', 'false'),
(645, 'en', 'important', 'important', 'false'),
(646, 'en', 'add_a_phone_contact', 'add a phone contact', 'false'),
(647, 'en', 'add_a_email_contact', 'add a email contact', 'false'),
(648, 'en', 'type_phonenumber', 'type phonenumber', 'false'),
(649, 'en', 'press _delete_button_agian_remove', 'press the delete button again to remove', 'false'),
(650, 'en', 'type_middlename', 'type middle name', 'false'),
(651, 'en', 'type_day', 'type day', 'false'),
(652, 'en', 'type_month', 'type month', 'false'),
(653, 'en', 'type_year', 'type year', 'false'),
(654, 'en', 'type_language', 'type language', 'false'),
(655, 'en', 'type_nickname', 'type nickname', 'false'),
(656, 'en', 'add_a_tab', 'add a tab', 'false'),
(657, 'en', 'type_schoolname', 'type school name', 'false'),
(658, 'en', 'type_description', 'type description', 'false'),
(659, 'en', 'start_time', 'start time', 'false'),
(660, 'en', 'end_time', 'end time', 'false'),
(661, 'en', 'not_type_if_now', 'not type if to now', 'false'),
(662, 'en', 'type_starttime', 'type start time', 'false'),
(663, 'en', 'type_endtime', 'type end time', 'false'),
(665, 'en', 'type_school_specialized', 'specialized of school', 'false'),
(666, 'en', 'type_company_work', 'work within company', 'false'),
(667, 'en', 'type_company_name', 'type company name', 'false'),
(668, 'en', 'type_company_awards', 'work awards', 'false'),
(669, 'en', 'type_company_address', 'type company address', 'false'),
(670, 'en', 'write_something_about_live', 'write something about where to live', 'false'),
(671, 'en', 'write_something_about_country', 'write something about where to country', 'false'),
(672, 'en', 'action', 'action', 'false'),
(673, 'en', 'save', 'save', 'false'),
(674, 'en', 'type_password_confirm', 'type password to confirm', 'false'),
(675, 'en', 'verification', 'verification', 'false'),
(676, 'en', 'code_is_invalid', 'code is invalid', 'false'),
(677, 'en', 'activated_time', 'activated time', 'false'),
(678, 'en', 'activated_code', 'activated code', 'false'),
(679, 'en', 'type_password_verify', 'type password to verify', 'false'),
(680, 'en', 'verify_password', 'verify password', 'false'),
(681, 'en', 'account_has_successfully_activated', 'account has been successfully activated', 'false'),
(682, 'en', 'confirmed_please_type_new_password', 'confirmed, please type new password', 'false'),
(683, 'en', 'time_created', 'time created', 'false'),
(684, 'en', 'type_new_password', 'type new password', 'false'),
(685, 'en', 'time_confirmation_code_created', 'time confirmation code is created', 'false'),
(686, 'en', 'confirmation_code_get_password', 'confirmation code to get password', 'false'),
(687, 'en', 'password_successfully_changed', 'password has successfully changed', 'false'),
(688, 'en', 'notify', 'notify', 'false'),
(689, 'en', 'news', 'news', 'false'),
(690, 'en', 'not_found_info_places', 'not found information about place', 'false'),
(691, 'en', 'question_display_content_embed', 'Giccos supported display content from this url, you want display content quickly by Giccos or read more content in this site ?', 'false'),
(692, 'en', 'open_this_site', 'open this site', 'false'),
(693, 'en', 'display_content', 'display content', 'false'),
(694, 'en', 'content_from_site_loading', 'data content from site is loading, please wait...', 'false'),
(695, 'en', 'pushed_content_from_site', 'content from site successfully added', 'false'),
(696, 'en', 'content_notfound_may_error', 'content is not found, maybe has error', 'false'),
(697, 'en', 'click_open_site', 'click here to open site', 'false'),
(698, 'en', 'show_more_content', 'show more content', 'false'),
(699, 'en', 'click_disable_collapse_contents', 'click text to disable collapse contents', 'false'),
(700, 'en', 'tips', 'tips', 'false'),
(701, 'en', 'define', 'define', 'false'),
(702, 'en', 'last_updated', 'last updated', 'false'),
(703, 'en', 'source', 'source', 'false'),
(704, 'en', 'please_wait_load_data', 'please wait system loading data', 'false'),
(705, 'en', 'description_about_country', 'description about country', 'false'),
(706, 'en', 'description_about_live', 'description about live', 'false'),
(707, 'en', 'last_edit_at', 'last edit at', 'false'),
(708, 'en', 'guide_down_line_press', 'hold the shift key and press enter to new line', 'false'),
(709, 'en', 'comment_content_is_empty', 'comment content is empty', 'false'),
(710, 'en', 'pages_feed_general.title', 'general :: feed :: giccos', 'false'),
(711, 'en', 'scan_this_code', 'scan this code', 'false'),
(712, 'en', 'create_by_giccos', 'created by giccos', 'false'),
(713, 'en', 'view_qrcode', 'view QR code', 'false'),
(714, 'en', 'checkin_at', 'check-in at', 'false'),
(715, 'en', 'private_null_text', 'null', 'false'),
(716, 'en', 'private_null_tip', 'unknown', 'false'),
(717, 'en', 'people', 'people', 'false'),
(718, 'en', 'quality', 'quality', 'false'),
(719, 'en', 'quality_custom', 'quality custom', 'false'),
(720, 'en', 'auto_repeat', 'auto repeat', 'false'),
(721, 'en', 'non_repeat', 'non repeat', 'false'),
(722, 'en', 'off', 'off', 'false'),
(723, 'en', 'on', 'on', 'false'),
(724, 'en', 'resize', 'resize', 'false'),
(725, 'en', 'see_more_about_photos', 'see more about photos', 'false'),
(726, 'en', 'null:music_singer', 'undefined presenter', 'false'),
(727, 'en', 'total_views', 'total views', 'false'),
(728, 'en', 'pointtag_not_allowed', 'point tag is not allowed, can''t implement action', 'false'),
(729, 'en', 'pointtag_add_successful', 'added new point tag successful', 'false'),
(730, 'en', 'you_may_want_read', 'you may want read', 'false'),
(731, 'en', 'thumbnail_from', 'thumbnail from', 'false'),
(732, 'en', 'copy_link', 'copy link', 'false'),
(733, 'en', 'redirect_link', 'redirect link', 'false'),
(734, 'en', 'this_week', 'this week', 'false'),
(735, 'en', 'ratio', 'ratio', 'false'),
(736, 'en', 'your_rate', 'your rate', 'false'),
(737, 'en', 'rate', 'rate', 'false'),
(738, 'en', 'rating', 'rating', 'false'),
(739, 'en', 'stats', 'stats', 'false'),
(740, 'en', 'host', 'host', 'false'),
(741, 'en', 'hash', 'hash', 'false'),
(742, 'en', 'title', 'title', 'false'),
(743, 'en', 'page_null_certificate', 'page is not have certificate', 'false'),
(744, 'en', 'encryption', 'encryption', 'false'),
(745, 'en', 'usage', 'usage', 'false'),
(746, 'en', 'issuer', 'issuer', 'false'),
(747, 'en', 'extended', 'extended', 'false'),
(748, 'en', 'key', 'key', 'false'),
(749, 'en', 'common_name', 'common name', 'false'),
(750, 'en', 'organization', 'organization', 'false'),
(751, 'en', 'certificate', 'certificate', 'false'),
(752, 'en', 'malware_scan', 'malware scan', 'false'),
(753, 'en', 'page_null_scanlogs', 'page is not have scan logs', 'false'),
(754, 'en', 'total_scanner', 'total scanner', 'false'),
(755, 'en', 'detection_rate', 'detection rate', 'false'),
(756, 'en', 'results', 'results', 'false'),
(757, 'en', 'danger', 'danger', 'false'),
(758, 'en', 'suspicious', 'suspicious', 'false'),
(759, 'en', 'safe', 'safe', 'false'),
(760, 'en', 'unrated', 'unrated', 'false'),
(761, 'en', 'not_safe', 'not safe', 'false'),
(762, 'en', 'system_scanner', 'system scanner', 'false'),
(763, 'en', 'stats_lastweek_data', 'last week data stats', 'false'),
(764, 'en', 'stats_thisweek_data', 'this week data stats', 'false'),
(765, 'en', 'mailer_verify_account_subject', 'verify account at Giccos by email', 'false'),
(766, 'en', 'mailer_verify_account_altbody	', 'we sent email verify account created at Giccos by this email', 'false'),
(767, 'en', 'request_begin_please_wait', 'request being made, please wait for a moment', 'false'),
(768, 'en', 'ongoing_requirements_please_wait', 'ongoing requirements, please wait', 'false'),
(769, 'en', 'site_visits_statistics', 'site visits statistics', 'false'),
(770, 'en', 'site_mention_statistics', 'site mention statistics', 'false'),
(771, 'en', 'mention', 'mention', 'false'),
(772, 'en', 'favorited', 'favorited', 'false'),
(773, 'en', 'commented', 'commented', 'false'),
(774, 'en', 'this_status', 'this status', 'false'),
(775, 'en', 'in_status', 'in status', 'false'),
(776, 'en', 'shared', 'shared', 'false'),
(778, 'en', 'mon', 'mon', 'true'),
(779, 'en', 'tue', 'tue', 'true'),
(780, 'en', 'wed', 'wed', 'true'),
(781, 'en', 'thu', 'thu', 'true'),
(782, 'en', 'fri', 'fri', 'true'),
(783, 'en', 'sat', 'sat', 'true'),
(784, 'en', 'sun', 'sun', 'true'),
(785, 'en', 'mon', 'monday', 'false'),
(786, 'en', 'tue', 'tuesday', 'false'),
(787, 'en', 'wed', 'wednesday', 'false'),
(788, 'en', 'thu', 'thursday', 'false'),
(789, 'en', 'fri', 'friday', 'false'),
(790, 'en', 'sat', 'saturday', 'false'),
(791, 'en', 'sun', 'sunday', 'false'),
(792, 'en', 'account_validation_requirements', 'account validation requirements', 'false'),
(794, 'en', 'tornado', 'tornado', 'false'),
(795, 'en', 'tropical_storm', 'tropical storm', 'false'),
(796, 'en', 'hurricane', 'hurricane', 'false'),
(797, 'en', 'severe_thunderstorms', 'severe thunderstorms', 'false'),
(798, 'en', 'thunderstorms', 'thunderstorms', 'false'),
(799, 'en', 'mixed_rain_and_snow', 'mixed rain and snow', 'false'),
(800, 'en', 'mixed_rain_and_sleet', 'mixed rain and sleet', 'false'),
(801, 'en', 'mixed_snow_and_sleet', 'mixed snow and sleet', 'false'),
(802, 'en', 'freezing_drizzle', 'freezing drizzle', 'false'),
(803, 'en', 'drizzle', 'drizzle', 'false'),
(804, 'en', 'freezing_rain', 'freezing rain', 'false'),
(805, 'en', 'showers', 'showers', 'false'),
(806, 'en', 'showers', 'showers', 'false'),
(807, 'en', 'snow_flurries', 'snow flurries', 'false'),
(808, 'en', 'light_snow_showers', 'light snow showers', 'false'),
(809, 'en', 'blowing_snow', 'blowing snow', 'false'),
(810, 'en', 'snow', 'snow', 'false'),
(811, 'en', 'hail', 'hail', 'false'),
(812, 'en', 'sleet', 'sleet', 'false'),
(813, 'en', 'dust', 'dust', 'false'),
(814, 'en', 'foggy', 'foggy', 'false'),
(815, 'en', 'haze', 'haze', 'false'),
(816, 'en', 'smoky', 'smoky', 'false'),
(817, 'en', 'blustery', 'blustery', 'false'),
(818, 'en', 'windy', 'windy', 'false'),
(819, 'en', 'cold', 'cold', 'false'),
(820, 'en', 'cloudy', 'cloudy', 'false'),
(821, 'en', 'mostly_cloudy_night', 'mostly cloudy (night)', 'false'),
(822, 'en', 'mostly_cloudy_day', 'mostly cloudy (day)', 'false'),
(823, 'en', 'partly_cloudy_night', 'partly cloudy (night)', 'false'),
(824, 'en', 'partly_cloudy_day', 'partly cloudy (day)', 'false'),
(825, 'en', 'clear_night', 'clear (night)', 'false'),
(826, 'en', 'sunny', 'sunny', 'false'),
(827, 'en', 'fair_night', 'fair (night)', 'false'),
(828, 'en', 'fair_day', 'fair (day)', 'false'),
(829, 'en', 'mixed_rain_and_hail', 'mixed rain and hail', 'false'),
(830, 'en', 'hot', 'hot', 'false'),
(831, 'en', 'isolated_thunderstorms', 'isolated thunderstorms', 'false'),
(832, 'en', 'scattered_thunderstorms', 'scattered thunderstorms', 'false'),
(833, 'en', 'scattered_thunderstorms', 'scattered thunderstorms', 'false'),
(834, 'en', 'scattered_showers', 'scattered showers', 'false'),
(835, 'en', 'heavy_snow', 'heavy snow', 'false'),
(836, 'en', 'scattered_snow_showers', 'scattered snow showers', 'false'),
(837, 'en', 'heavy_snow', 'heavy snow', 'false'),
(838, 'en', 'partly_cloudy', 'partly cloudy', 'false'),
(839, 'en', 'thundershowers', 'thundershowers', 'false'),
(840, 'en', 'snow_showers', 'snow showers', 'false'),
(841, 'en', 'isolated_thundershowers', 'isolated thundershowers', 'false'),
(842, 'en', 'astronomy', 'astronomy', 'false'),
(843, 'en', 'sunrise', 'sunrise', 'false'),
(844, 'en', 'sunset', 'sunset', 'false'),
(845, 'en', 'updated_at', 'updated at', 'false'),
(846, 'en', 'sunrise_at', 'sunrise at', 'false'),
(847, 'en', 'sunset_at', 'sunset at', 'false'),
(848, 'en', 'following', 'following', 'false'),
(849, 'en', 'updated', 'updated', 'false'),
(850, 'en', 'tomorrow', 'tomorrow', 'false'),
(851, 'eb', 'days_left', 'days left', 'false'),
(852, 'eb', 'weeks_left', 'weeks left', 'false'),
(853, 'en', 'months_left', 'months left', 'false'),
(854, 'en', 'years_left', 'years left', 'false'),
(855, 'en', 'minutes_left', 'minutes left', 'false'),
(856, 'en', 'hours_left', 'hours left', 'false'),
(857, 'en', 'latitude', 'latitude', 'false'),
(858, 'en', 'longitude', 'longitude', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `library_cited`
--

CREATE TABLE IF NOT EXISTS `library_cited` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_voice`
--

CREATE TABLE IF NOT EXISTS `library_voice` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `language` char(4) NOT NULL,
  `word` varchar(40) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAADwAADQ4AERERERERIiIiIiIiIjMzMzMzM0RERERERERVVVVVVVVVZmZmZmZmd3d3d3d3d4iIiIiIiIiZmZmZmZmqqqqqqqqqu7u7u7u7u8zMzMzMzN3d3d3d3d3u7u7u7u7u////////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQFqyIAACAAAA0OZfYCmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAGhAuYH9DGAEpS2OXbfACFXdzgGLeAGYGRx/B+Bn+Hh7/wAHD+h58BkAM///wBwA6OfDH4GeAeHvhvAP/w9/4AH//z8ERAD5/D34GcM8PaD3gBkQyOP8f//h0PwMAAD/zD3wGQARHHwx////0/M/gB1VANGuWSx63W63a+36/U7LsmF0du1Yh4DFMa9vzNl39m8suoqhQDkXu243NafY0xcI4EvZc7zD/Agz+ciMIAix+c7Z7yvnlUFXgs5hC2QaYvfH8rlf7lr9folH/40LEWkEjotZfmsIDk1lVS5JbdR4RA5q3Sd5jncz3nevLToUZ0i1xrWTTgBf/49uX6mX3MqXHtfLv8MxDGWIvy44OKUKWWu1PdpylP2cua53fMf/Lff//z/XPCHAsiyC/qVwWUgyaRg4qEtQsFnLTxdL+5n+8fu8z/8d/Y7z+7/uHf1zP9gCStocxNOPImm9IGesUu+XkA30WggA9IWKHPLYQKXXz/lJrD8cat+RId0E9xrtW7z2VAACVbcst133+2////+BALI6XBQ9Xbr57xv/jQsQZJ7u2tl+PMAG8l/EJnsO7tzizOhkFZ4PdAyHu4uT6/51DzkEoIs9NM5MbZRK0lw5z22wjXstSENVZCq8OzxLab02bSacYzsRONpcvr/DJRo/Ix9nlZt0k2x8djtvYua5aRdvRuLlLSt35ro1iTPD83P924ybrO7f7520tTTymyfRMqGek2MhIVTbraK9hSgi2VUoo1K7pLHY7JrNO+HhtkBpieFXNhjftIgTfV4l6onKt/nMgFo0EIg7xmj+DF7xjfmnrWv8m6yH83k3V/+NCxD47lBa6X5l4AorkIh+9rWqQMWowjLOSzeHO4lzo8/1nWLx70iMiMbYqrNNVLStUF949f/RLn5CZV3PI/RnjoBa8Jka3GlL3z/833SC/nV7TejJHZIkNV3U60oMzMckLDnjX+tf/++/pTHOMRqWZTwQhGQWZCnI7zcPZvOg1GM8mR6sRdwS3DgL3r++//fGMf/P/6iNBJp1MKFVoI18HqnkYeCXaFUiU29eQlh23wXFOYeWdyvn+6QJpagEAGAjv2w25JFlwDcCo3dEUYbn/40LEEy/7Hrz3mKAAMewwWPrIDa1XccrStpFUNUBfwLTAu0EBAOh0VgYMGAMHE5ifAMjxA6YwDAggLjbvWXiCBqsWWQcPwAsDJsZAfaD6oyBohxIRNhVNCWZrKoom76mTHcXykXC+bE4zpWa6t1u2gcPGaaZsZkSJiyKF+1SDJ6kGN03kNGgHLEXHOJgcsiAs4nyBKdWtWpWtGqm7toIN61FQwsXnMzIjUDA25Twc9uBzbzNqZuHfNTcAoBux1qRzW1UKrJFnRrDYQp7bsxQMqv/jQsQXMbPu2L+PeAPcbbyTGBI+G9/gWkesciogp1xt8/ncuGt8X21s6Yv/+C0A5vEbAZXr3X3j//9JwV28eYdwa19sZa9ZxfUx2pY7EA8jp9xQzWc1g4xCzvP9pI9rqI7EJlWMHEdxeWtAYg1xa3rj+tvj//Pxj5dxGF3l6wK2GurK3GdPo3+v//anz9V+JNb3Ck3T580aeNPdoy8XPVU1n8O8KVjtA3ffkrTM9NYxX/GKfT594tYF+Ko7cQAJIKPGhGKxqLRaADDFLiI+uUIF/+NCxBQoO36Nn4VYAC5uWEN8/kOOwmj0idd/47S0gjpe423T/6JMIIwHaTuHbv/8RjElnzNY2h07f//xiXHiSTkB3B5KY/////8kB/GkeS8xH81HaHo4SXG0Wi642td///+mTjc0KnGzTyBDLlB8pdKJq2HOa1Hc6f////1CGswPrjuthsWlaRAEBBQoXsajWGqwkoKFv/cIkgKlHEKwhsLYkrwEw/OOwKAmKgCX4IAvgkYX/5QqEYL2FpUOv/EAIAIB2PlYYWFv/xHFKiT1X5L/40LENyW0DfANikAAf//tNWMMYWVVKOmP//xofhGQYIhd2zT5TFQ3////p3NxTuUHgeNG3w23Kq3////4hhGEYcUOdEqz4oy2mV5FSmtRUV2lmb//////5PPGCIIhZ49HeDDJs8QLOlvwiD5CEqfDScTjkcjkEkkEndl+Cz6ey/ZfFyQAQ41ha9zollHNDiq7/9dSnkf41AE5z+fAboQ3DLSkVVvMG7+H/NSt1YXDjpgQAukRAp9d/7e87Cx1hGwIC1UAuACAysNKJXDZ7fP5///jQsRkRPwWtb+YyALEJSPpfNkrRnMb1qQAKGVToNIkl6KC/zP///974xMwt3KR/5Q6DO05ItLZHH2htzi////////8OxeR8i9PSU8rlFmxDzkUkjgWci96xA05INc///+95+ff5UrztBRRmB3IiUF0b9NMcuGZfJHasRiJQ/FmxNs6cojTBFwf////////////7YHsflx38mLuUYpL1WX/Zt8xtWEiYW/sZZGku3wsAyWf7IZyL0MBU1BZrxGk2598jcAo5j7Hsyio44YUe9pl/+NCxBQfQ+bJt8gYA8wOXaAbk2xrvyQwkFhyZozL2Zz1CtE2087sZwEYo3Un2f2FVbv8FM34Mi79OEJKk2KVelxnNqflb+d9pWqzvUp8bSEUy7SuRGoC04wOxnE6H2l8X2ZVIKUdSJmdel2Q/KX77GQUXZSX2Qqk7dZLddsFvpqPSdPnnFKo+pvJaEl904V6j2iTDGACUBQ/lR1sE83YitJTIyM8VwYhQEYiQ8+G0M8zZjhERd0SlTJAqgz99mUhH3+yN26o3RqmWzUlRTLRzFH/40LEWx8LjrG+MMUZLAo8GFMKMKtdmZTqrPmMYy5dNzPON2Xvm3Ot75+22NzJqgZo3ZJLtfuwLBVFP3MOlDItxtl6wQMi9LgRFLly2MQRZZV+FEL7ENPhGfuVGqQiRX8rCiMcqxESTfNKxHCtN8jCdrxj9tzzRNM46XcyKn/KSES278Bbc4OTkOxsTZkqLojnwwXn8+/+08q8zTzb3FSpnLEdq4AgUFUBiWqqkcvIhMJCc5yQMOZJyiRIkRNRo4KNlVSY6oC3DgEDE0CsFbAwEP/jQsSiHiu+qb5ARuGgVKgKGQaNtV9lVVUmYMqqqw/DCvClrggJgIVGqxjZtqRRyarwKJUm1UKxxqTQCVYxw1LalROsIwq0SSiWaqokqS9E0KJUBOGUP6zMeawzUEBMGH2hkYUTVhMwEK2qCWonClhWDNPh1mDAQNBVnVDSYgpqKZlxybqqqqqqqqqqqqqqqqqqqqqqqgALQLt/9qiqi9UVU//////+qIqamBggQNFqiggSkf/////+1ks+tQUs+wGCBWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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'),
(10, 1440152726, 1440152726, '3278a210', 'en', 'you', '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');

-- --------------------------------------------------------

--
-- Table structure for table `library_words`
--

CREATE TABLE IF NOT EXISTS `library_words` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `word` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `example` text,
  `related` text,
  `attribution` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `host` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_words`
--

INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES
(48, 'en', 1438956485, 1438956485, 'fuck', 'verb-transitive', 'To have sexual intercourse with', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(49, 'en', 1438956485, 1438956485, 'fuck', 'verb-intransitive', 'To engage in sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(50, 'en', 1438956485, 1438956485, 'fuck', 'noun', 'An act of sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(51, 'en', 1438956485, 1438956485, 'fuck', 'interjection', 'Used to express extreme displeasure', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(52, 'en', 1438956485, 1438956485, 'fuck', 'phrasal-verb', 'fuck off  Used in the imperative as a signal of angry dismissal', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(53, 'en', 1438956485, 1438956485, 'fuck', 'verb', 'To have sexual intercourse, to copulate', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(54, 'en', 1438956854, 1438956854, 'life', 'noun', 'The property or quality that distinguishes living organisms from dead organisms and inanimate matter, manifested in functions such as metabolism, growth, reproduction, and response to stimuli or adaptation to the environment originating from within the organism', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(55, 'en', 1438956856, 1438956856, 'love', 'noun', 'A deep, tender, ineffable feeling of affection and solicitude toward a person, such as that arising from kinship, recognition of attractive qualities, or a sense of underlying oneness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(56, 'en', 1438956856, 1438956856, 'love', 'verb-transitive', 'To have a deep, tender, ineffable feeling of affection and solicitude toward (a person):  We love our parents. I love my friends. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(57, 'en', 1438956858, 1438956858, 'kiss', 'verb-transitive', 'To touch or caress with the lips as an expression of affection, greeting, respect, or amorousness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(58, 'en', 1438956858, 1438956858, 'kiss', 'verb-intransitive', 'To engage in mutual touching or caressing with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(59, 'en', 1438956858, 1438956858, 'kiss', 'noun', 'A caress or touch with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(60, 'en', 1438956858, 1438956858, 'kiss', 'phrasal-verb', 'kiss off  Slang   To dismiss or reject', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(61, 'en', 1438956858, 1438956858, 'kiss', 'idiom', 'kiss ass  Vulgar Slang   To act submissively or obsequiously in order to gain favor', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(62, 'en', 1438956858, 1438956858, 'kiss', 'verb', 'To touch with the lips or press the lips against, usually to express love or affection or passion, or as part of a greeting, or as part of sexual activity', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(71, 'en', 1440151617, 1440151617, 'what', 'pronoun', 'Which thing or which particular one of many:  What are you having for dinner? What did she say? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(72, 'en', 1440151617, 1440151617, 'what', 'adjective', 'Which one or ones of several or many:  What college are you attending? You should know what musical that song is from. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(73, 'en', 1440151617, 1440151617, 'what', 'adverb', 'How much; in what respect; how:  What does it matter? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(74, 'en', 1440151617, 1440151617, 'what', 'interjection', 'Used to express surprise, incredulity, or other strong and sudden excitement', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(75, 'en', 1440151617, 1440151617, 'what', 'idiom', 'what for  Informal   A scolding or strong reprimand:  The teacher gave the tardy student what for. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(98, 'en', 1440152727, 1440152727, 'you', 'pronoun', 'Nonstandard   Used reflexively as the indirect object of a verb:  You might want to get you another pair of shoes.  See Note at me', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(99, 'en', 1440152727, 1440152727, 'you', 'determiner', 'The individual or group spoken or written to', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `things.type` varchar(20) DEFAULT NULL,
  `things.id` char(11) DEFAULT NULL,
  `obj.type` varchar(20) DEFAULT NULL,
  `obj.id` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(1, 1441182140, 'user', 1, 'follow', 'status', '1', '', ''),
(2, 1441182140, 'user', 1, 'add', '', '', 'status', '1'),
(3, 1441182581, 'user', 1, 'follow', 'status', '2', '', ''),
(4, 1441182602, 'user', 1, 'add', '', '', 'status', '2'),
(5, 1441183070, 'user', 1, 'follow', 'status', '3', '', ''),
(6, 1441183078, 'user', 1, 'add', '', '', 'status', '3'),
(7, 1441183315, 'user', 1, 'follow', 'status', '4', '', ''),
(8, 1441184003, 'user', 1, 'add', '', '', 'status', '4'),
(9, 1441712484, 'user', 1, 'favorite', 'status', '4', '', ''),
(10, 1441349862, 'user', 1, 'unfavorite', 'status', '4', '', ''),
(11, 1441880448, 'user', 1, 'follow', 'status', '5', '', ''),
(12, 1441477168, 'user', 1, 'add', '', '', 'status', '5'),
(13, 1441540055, 'user', 2, 'favorite', 'status', '4', '', ''),
(18, 1441540054, 'user', 2, 'unfavorite', 'status', '4', '', ''),
(19, 1441711567, 'user', 2, 'follow', 'status', '6', '', ''),
(20, 1441711567, 'user', 2, 'add', '', '', 'status', '6'),
(21, 1441712383, 'user', 1, 'favorite', 'status', '6', '', ''),
(22, 1441712385, 'user', 1, 'unfavorite', 'status', '6', '', ''),
(23, 1441874857, 'user', 1, 'favorite', 'status', '5', '', ''),
(24, 1441712672, 'user', 1, 'favorite', 'status', '3', '', ''),
(26, 1441712926, 'user', 1, 'favorite', 'status', '2', '', ''),
(27, 1441796193, 'user', 2, 'add', '', '', 'status', '7'),
(28, 1441796193, 'user', 2, 'follow', 'status', '7', '', ''),
(29, 1441894929, 'user', 1, 'favorite', 'status', '7', '', ''),
(30, 1441894989, 'user', 1, 'unfavorite', 'status', '7', '', ''),
(31, 1441874863, 'user', 1, 'unfavorite', 'status', '5', '', ''),
(32, 1441880450, 'user', 1, 'unfollow', 'status', '5', '', ''),
(33, 1441896405, 'user', 1, 'add', '', '', 'status', '8'),
(34, 1441896405, 'user', 1, 'follow', 'status', '8', '', ''),
(35, 1441896604, 'user', 1, 'add', '', '', 'status', '9'),
(36, 1441896604, 'user', 1, 'follow', 'status', '9', '', ''),
(37, 1441978261, 'user', 1, 'add', '', '', 'status', '10'),
(38, 1441978261, 'user', 1, 'follow', 'status', '10', '', ''),
(39, 1442061262, 'user', 2, 'add', '', '', 'status', '11'),
(40, 1442061262, 'user', 2, 'follow', 'status', '11', '', ''),
(41, 1442062521, 'user', 1, 'add', '', '', 'status', '12'),
(42, 1442062521, 'user', 1, 'follow', 'status', '12', '', ''),
(43, 1442062607, 'user', 1, 'add', '', '', 'status', '13'),
(44, 1442062607, 'user', 1, 'follow', 'status', '13', '', ''),
(45, 1442064182, 'user', 1, 'add', '', '', 'status', '14'),
(46, 1442064182, 'user', 1, 'follow', 'status', '14', '', ''),
(47, 1442065236, 'user', 1, 'add', '', '', 'status', '15'),
(48, 1442065236, 'user', 1, 'follow', 'status', '15', '', ''),
(49, 1442065353, 'user', 1, 'add', '', '', 'status', '16'),
(50, 1442065353, 'user', 1, 'follow', 'status', '16', '', '');

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
  `updated` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device` char(10) DEFAULT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(40) NOT NULL,
  `browser.kernel` varchar(40) NOT NULL,
  `browser.version` varchar(20) NOT NULL,
  `agent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1441026126, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174'),
(4, 1441097394, 1441439480, 'ee5504b2', '113.170.42.243', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(5, 1441460383, 1441460383, '7c514c94', '192.168.0.102', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(6, 1441460850, 1442063781, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `mailer_id`
--

CREATE TABLE IF NOT EXISTS `mailer_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `secure` char(10) NOT NULL,
  `port` int(11) NOT NULL,
  `from.email` varchar(255) NOT NULL,
  `from.name` varchar(100) NOT NULL,
  `reply.email` varchar(255) NOT NULL,
  `reply.name` varchar(100) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_id`
--

INSERT INTO `mailer_id` (`id`, `time`, `token`, `type`, `host`, `username`, `password`, `secure`, `port`, `from.email`, `from.name`, `reply.email`, `reply.name`, `updated`) VALUES
(2, 1441114225, '3b1af93c', 'mailer', 'smtp.gmail.com', 'cBujSTWchgmVNpHKLWc+HKKu4QeeKiCXZ6IvbcEHYjQ=', 'VL34VvVJiLnANU7oTzV0lrcCZMhe1W9NZqznriEt/mw=', 'tls', 587, 'mailer@giccos.com', 'Giccos Mailer', 'support@giccos.com', 'support@giccos.com', 1441114225);

-- --------------------------------------------------------

--
-- Table structure for table `mailer_logs`
--

CREATE TABLE IF NOT EXISTS `mailer_logs` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `mailer.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_logs`
--

INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(7, 1441125666, 2, 'ffcbc75f', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(8, 1441126202, 2, '0d92d0df', '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'),
(9, 1441175133, 2, 'deaec939', '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'),
(10, 1441179134, 2, '8fe21218', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(11, 1441181995, 2, 'f9c89e40', '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'),
(12, 1441441369, 2, 'ec37d8e1', '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'),
(13, 1441890518, 2, '3006c7bc', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(14, 1441892033, 2, '94152cb1', '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');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(128) DEFAULT NULL,
  `language` char(4) DEFAULT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', NULL, NULL, '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', NULL, NULL, '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', NULL, NULL, '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', NULL, NULL, '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', NULL, NULL, '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', NULL, NULL, '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', NULL, NULL, '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', NULL, NULL, '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', NULL, NULL, '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', NULL, NULL, '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', NULL, NULL, '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', NULL, NULL, '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', NULL, NULL, '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', NULL, NULL, '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', NULL, NULL, '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', NULL, NULL, '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', NULL, NULL, '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', NULL, NULL, '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', NULL, NULL, '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', NULL, NULL, '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', NULL, NULL, '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', NULL, NULL, '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', NULL, NULL, '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', NULL, NULL, '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', NULL, NULL, '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', NULL, NULL, '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', NULL, NULL, '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', NULL, NULL, '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', NULL, NULL, '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', NULL, NULL, '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', NULL, NULL, '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', NULL, NULL, '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', NULL, NULL, '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', NULL, NULL, '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', NULL, NULL, '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', NULL, NULL, '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', NULL, NULL, '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', NULL, NULL, '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', NULL, NULL, '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', NULL, NULL, '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', NULL, NULL, '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', NULL, NULL, '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', NULL, NULL, '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', NULL, NULL, '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', NULL, NULL, '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', NULL, NULL, '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', NULL, NULL, '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', NULL, NULL, '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', NULL, NULL, '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', NULL, NULL, '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', NULL, NULL, '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', NULL, NULL, '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', NULL, NULL, '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', NULL, NULL, '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', NULL, NULL, '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', NULL, NULL, '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', NULL, NULL, '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', NULL, NULL, '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', NULL, NULL, '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', NULL, NULL, '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', NULL, NULL, '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', NULL, NULL, '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', NULL, NULL, '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', NULL, NULL, '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', NULL, NULL, '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', NULL, NULL, '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', NULL, NULL, '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', NULL, NULL, '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', NULL, NULL, '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', NULL, NULL, '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', NULL, NULL, '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', NULL, NULL, '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', NULL, NULL, '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', NULL, NULL, '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', NULL, NULL, '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', NULL, NULL, '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', NULL, NULL, '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', NULL, NULL, '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', NULL, NULL, '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', NULL, NULL, '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', NULL, NULL, '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', NULL, NULL, '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', NULL, NULL, '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', NULL, NULL, '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', NULL, NULL, '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', NULL, NULL, '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', NULL, NULL, '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', NULL, NULL, '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', NULL, NULL, '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', NULL, NULL, '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', NULL, NULL, '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', NULL, NULL, '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', NULL, NULL, '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', NULL, NULL, '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', NULL, NULL, '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', NULL, NULL, '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', NULL, NULL, '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', NULL, NULL, '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', NULL, NULL, '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', NULL, NULL, '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', NULL, NULL, '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', NULL, NULL, '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', NULL, NULL, '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', NULL, NULL, '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif'),
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', NULL, NULL, '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', NULL, NULL, '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', NULL, NULL, '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', NULL, NULL, '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', NULL, NULL, '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', NULL, NULL, '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', NULL, NULL, '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', NULL, NULL, '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', NULL, NULL, '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', NULL, NULL, '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', NULL, NULL, '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', NULL, NULL, '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', NULL, NULL, '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', NULL, NULL, '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', NULL, NULL, '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', NULL, NULL, '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', NULL, NULL, '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', NULL, NULL, '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', NULL, NULL, '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', NULL, NULL, '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', NULL, NULL, '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', NULL, NULL, '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, NULL, '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', NULL, NULL, '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', NULL, NULL, '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', NULL, NULL, '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', NULL, NULL, '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', NULL, NULL, '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', NULL, NULL, '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', NULL, NULL, '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', NULL, NULL, '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', NULL, NULL, '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', NULL, NULL, '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', NULL, NULL, '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', NULL, NULL, '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', NULL, NULL, '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', NULL, NULL, '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', NULL, NULL, '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', NULL, NULL, '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', NULL, NULL, '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', NULL, NULL, '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', NULL, NULL, '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', NULL, NULL, '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', NULL, NULL, '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', NULL, NULL, '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', NULL, NULL, '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', NULL, NULL, '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', NULL, NULL, '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', NULL, NULL, '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', NULL, NULL, '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', NULL, NULL, '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', NULL, NULL, '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', NULL, NULL, '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', NULL, NULL, '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', NULL, NULL, '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', NULL, NULL, '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', NULL, NULL, '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', NULL, NULL, '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', NULL, NULL, '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', NULL, NULL, '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', NULL, NULL, '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', NULL, NULL, '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', NULL, NULL, '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', NULL, NULL, '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', NULL, NULL, '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', NULL, NULL, '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', NULL, NULL, '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', NULL, NULL, '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', NULL, NULL, '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', NULL, NULL, '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', NULL, NULL, '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', NULL, NULL, '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', NULL, NULL, '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', NULL, NULL, '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', NULL, NULL, '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', NULL, NULL, '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', NULL, NULL, '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', NULL, NULL, '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', NULL, NULL, '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', NULL, NULL, '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', NULL, NULL, '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', NULL, NULL, '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', NULL, NULL, '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', NULL, NULL, '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', NULL, NULL, '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', NULL, NULL, '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', NULL, NULL, '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', NULL, NULL, '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', NULL, NULL, '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', NULL, NULL, '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', NULL, NULL, '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', NULL, NULL, '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', NULL, NULL, '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', NULL, NULL, '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', NULL, NULL, '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', NULL, NULL, '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', NULL, NULL, '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', NULL, NULL, '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', NULL, NULL, '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', NULL, NULL, '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', NULL, NULL, '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', NULL, NULL, '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', NULL, NULL, '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', NULL, NULL, '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', NULL, NULL, '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', NULL, NULL, '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', NULL, NULL, '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', NULL, NULL, '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', NULL, NULL, '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', NULL, NULL, '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', NULL, NULL, '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', NULL, NULL, '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', NULL, NULL, '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', NULL, NULL, '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', NULL, NULL, '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', NULL, NULL, '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', NULL, NULL, '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', NULL, NULL, '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', NULL, NULL, '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', NULL, NULL, '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', NULL, NULL, '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', NULL, NULL, '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', NULL, NULL, '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', NULL, NULL, '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', NULL, NULL, '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', NULL, NULL, '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', NULL, NULL, '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', NULL, NULL, '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', NULL, NULL, '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', NULL, NULL, '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', NULL, NULL, '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', NULL, NULL, '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', NULL, NULL, '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', NULL, NULL, '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', NULL, NULL, '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', NULL, NULL, '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', NULL, NULL, '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', NULL, NULL, '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', NULL, NULL, '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', NULL, NULL, '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', NULL, NULL, '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', NULL, NULL, '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', NULL, NULL, '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', NULL, NULL, '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', NULL, NULL, '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', NULL, NULL, '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', NULL, NULL, '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', NULL, NULL, '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif'),
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', NULL, NULL, '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', NULL, NULL, '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', NULL, NULL, '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', NULL, NULL, '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', NULL, NULL, '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', NULL, NULL, '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', NULL, NULL, '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', NULL, NULL, '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', NULL, NULL, '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', NULL, NULL, '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', NULL, NULL, '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', NULL, NULL, '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', NULL, NULL, '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', NULL, NULL, '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', NULL, NULL, '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', NULL, NULL, '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', NULL, NULL, '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', NULL, NULL, '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', NULL, NULL, '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', NULL, NULL, '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', NULL, NULL, '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', NULL, NULL, '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', NULL, NULL, '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', NULL, NULL, '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', NULL, NULL, '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', NULL, NULL, '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', NULL, NULL, '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', NULL, NULL, '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', NULL, NULL, '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', NULL, NULL, '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', NULL, NULL, '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', NULL, NULL, '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', NULL, NULL, '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', NULL, NULL, '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', NULL, NULL, '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', NULL, NULL, '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', NULL, NULL, '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', NULL, NULL, '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', NULL, NULL, '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', NULL, NULL, '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', NULL, NULL, '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', NULL, NULL, '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', NULL, NULL, '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', NULL, NULL, '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', NULL, NULL, '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', NULL, NULL, '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', NULL, NULL, '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', NULL, NULL, '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', NULL, NULL, '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', NULL, NULL, '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', NULL, NULL, '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', NULL, NULL, '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', NULL, NULL, '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', NULL, NULL, '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', NULL, NULL, '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', NULL, NULL, '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', NULL, NULL, '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', NULL, NULL, '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', NULL, NULL, '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', NULL, NULL, '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', NULL, NULL, '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', NULL, NULL, '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', NULL, NULL, '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', NULL, NULL, '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', NULL, NULL, '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', NULL, NULL, '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', NULL, NULL, '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', NULL, NULL, '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', NULL, NULL, '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', NULL, NULL, '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', NULL, NULL, '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', NULL, NULL, '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', NULL, NULL, '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', NULL, NULL, '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', NULL, NULL, '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', NULL, NULL, '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', NULL, NULL, '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', NULL, NULL, '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', NULL, NULL, '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', NULL, NULL, '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', NULL, NULL, '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', NULL, NULL, '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', NULL, NULL, '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', NULL, NULL, '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', NULL, NULL, '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', NULL, NULL, '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', NULL, NULL, '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', NULL, NULL, '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', NULL, NULL, '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', NULL, NULL, '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', NULL, NULL, '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', NULL, NULL, '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', NULL, NULL, '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', NULL, NULL, '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', NULL, NULL, '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', NULL, NULL, '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', NULL, NULL, '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', NULL, NULL, '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', NULL, NULL, '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', NULL, NULL, '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', NULL, NULL, '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', NULL, NULL, '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', NULL, NULL, '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', NULL, NULL, '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', NULL, NULL, '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', NULL, NULL, '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', NULL, NULL, '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', NULL, NULL, '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', NULL, NULL, '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', NULL, NULL, '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', NULL, NULL, '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', NULL, NULL, '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', NULL, NULL, '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', NULL, NULL, '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', NULL, NULL, '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', NULL, NULL, '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', NULL, NULL, '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', NULL, NULL, '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', NULL, NULL, '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', NULL, NULL, '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', NULL, NULL, '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', NULL, NULL, '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', NULL, NULL, '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', NULL, NULL, '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', NULL, NULL, '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', NULL, NULL, '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', NULL, NULL, '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', NULL, NULL, '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', NULL, NULL, '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif'),
(444, '8e9436ec', '57c6f58f56a7d2ce5c11bcc80ec08bef', 'T-Mobile', '304 merced mall, Merced, CA 95348, United States', NULL, NULL, '37.320641,-120.482665', 37.320641, -120.482666, 'electronics_store', 'maps/raw/places/staticmap/location=37.320641,-120.482665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.320641,-120.482665&format=gif'),
(445, '94e44c8b', '2f1ef85ef7b883e18fa4ffff3e971623', 'T-Mobile', '2800 Independence Dr, Livermore, CA 94551, United States', NULL, NULL, '37.702952,-121.812573', 37.702953, -121.812576, 'store', 'maps/raw/places/staticmap/location=37.702952,-121.812573&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.702952,-121.812573&format=gif'),
(446, '4174cb86', '2ccaa743dd9b1cfc08f39ab2995a0f0a', 'T-Mobile', '1709 Automation Pkwy, San Jose, CA 95131, United States', NULL, NULL, '37.390678,-121.884723', 37.390678, -121.884720, 'store', 'maps/raw/places/staticmap/location=37.390678,-121.884723&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.390678,-121.884723&format=gif'),
(447, '676a8b7c', '279c7c744f7723bc3db215eb22016746', 'T-Mobile', '232 S Garfield Ave, Monterey Park, CA 91754, United States', NULL, NULL, '34.060276,-118.122601', 34.060276, -118.122604, 'store', 'maps/raw/places/staticmap/location=34.060276,-118.122601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.060276,-118.122601&format=gif'),
(448, 'e7cc414e', 'd7783054b54662ae46cbecda015b0ccb', 'T-Mobile', '3100 East Imperial Highway #1202, Lynwood, CA 90262, United States', NULL, NULL, '33.929169,-118.215504', 33.929169, -118.215508, 'store', 'maps/raw/places/staticmap/location=33.929169,-118.215504&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.929169,-118.215504&format=gif'),
(449, '82eae489', 'eb76f7325c7c9459e754fb07c69495bd', 'T-Mobile Los Angeles', '105 W Century Blvd #101, Los Angeles, CA 90003, United States', NULL, NULL, '33.945752,-118.274353', 33.945751, -118.274353, 'store', 'maps/raw/places/staticmap/location=33.945752,-118.274353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.945752,-118.274353&format=gif'),
(450, '368d120c', '32758e573fd615118d8f898704804d8a', 'T-Mobile Simply Prepaid', '15126 Paramount Blvd, Paramount, CA 90723, United States', NULL, NULL, '33.895331,-118.159604', 33.895332, -118.159607, 'store', 'maps/raw/places/staticmap/location=33.895331,-118.159604&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.895331,-118.159604&format=gif'),
(451, '4a9fce37', '63a283e6d731aa86c206f636ed68810d', 'Casino Cellular', '2026 W Olympic Blvd, Los Angeles, CA 90006, United States', NULL, NULL, '34.051463,-118.27974', 34.051464, -118.279739, 'store', 'maps/raw/places/staticmap/location=34.051463,-118.27974&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.051463,-118.27974&format=gif'),
(452, '5c9ddbba', '8b7c70b8e8f9c6c28cf623a0783c1cf6', 'Law Offices of Patent Attorney William Mansfield', 'Winchester, MA, United States', NULL, NULL, '42.101483,-72.589811', 42.101482, -72.589813, 'lawyer', 'maps/raw/places/staticmap/location=42.101483,-72.589811&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.101483,-72.589811&format=gif'),
(453, '698464dd', 'e7082e759a5a09a97064466764387993', 'Twitter', '249 W 17th St, New York, NY 10011, United States', NULL, NULL, '40.741474,-73.99985', 40.741474, -73.999847, 'establishment', 'maps/raw/places/staticmap/location=40.741474,-73.99985&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.741474,-73.99985&format=gif'),
(454, '46ae68af', '9dc62e02b7462c78431abcab59afb5d2', 'Westborough MBTA Parking', 'Smith Pkwy, Westborough, MA 01581, United States', NULL, NULL, '42.269972,-71.647496', 42.269974, -71.647499, 'parking', 'maps/raw/places/staticmap/location=42.269972,-71.647496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.269972,-71.647496&format=gif'),
(455, '33964f31', '8ec23e1de6d452abeb466bb33da0820b', 'MBTA Commuter Rail Littleton Station', '261 Foster St, Littleton, MA 01460, United States', NULL, NULL, '42.519236,-71.502546', 42.519238, -71.502548, 'establishment', 'maps/raw/places/staticmap/location=42.519236,-71.502546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.519236,-71.502546&format=gif'),
(456, 'ef2146b3', '04052bd617aebe425d629cd296f18416', 'West Natick Train Station', '249 W Central St, Natick, MA 01760, United States', NULL, NULL, '42.283098,-71.391789', 42.283096, -71.391792, 'train_station', 'maps/raw/places/staticmap/location=42.283098,-71.391789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.283098,-71.391789&format=gif'),
(457, '9ab6ffea', '934230f0ba11c7863e9d591084a15f3f', 'MBTA Attleboro Station', '75 S Main St, Attleboro, MA 02703, United States', NULL, NULL, '41.941956,-71.284967', 41.941956, -71.284966, 'establishment', 'maps/raw/places/staticmap/location=41.941956,-71.284967&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.941956,-71.284967&format=gif'),
(458, '09e5e151', '7321bbb348ec702562825eb03dfc181d', 'MBTA Commuter Rail Parking Lot', '231 Centre Ave, Abington, MA 02351, United States', NULL, NULL, '42.106644,-70.934804', 42.106644, -70.934807, 'parking', 'maps/raw/places/staticmap/location=42.106644,-70.934804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.106644,-70.934804&format=gif'),
(459, '18ab4663', '43b0845fd16485f018f9446ee27d5ff6', 'T-Mobile', '1624 Donald Lee Hollowell Parkway Northwest, Atlanta, GA 30318, United States', NULL, NULL, '33.771923,-84.441318', 33.771923, -84.441315, 'store', 'maps/raw/places/staticmap/location=33.771923,-84.441318&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.771923,-84.441318&format=gif'),
(460, '3384f5c0', '401f2e99260af365c3e2cddb75e002c4', 'T-Mobile', '137 Hester St, New York, NY 10013, United States', NULL, NULL, '40.717146,-73.994692', 40.717148, -73.994690, 'store', 'maps/raw/places/staticmap/location=40.717146,-73.994692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.717146,-73.994692&format=gif'),
(461, '84eefd4b', '624c13f196c433a508038a9d06639ee2', 'T-Mobile Authorized Dealer', '6149 Old National Highway, Atlanta, GA 30349, United States', NULL, NULL, '33.586766,-84.472181', 33.586765, -84.472183, 'store', 'maps/raw/places/staticmap/location=33.586766,-84.472181&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.586766,-84.472181&format=gif'),
(462, '66e1b471', '555ac7b65bdb0e53785e4e3a3282da79', 'T-Mobile', '3951 W Ashley Cir, Charleston, SC 29414, United States', NULL, NULL, '32.821599,-80.08132', 32.821598, -80.081322, 'store', 'maps/raw/places/staticmap/location=32.821599,-80.08132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.821599,-80.08132&format=gif'),
(463, '175aa42a', '15d55a610d9c54ac644722cc9ab7e9dd', 'T-Mobile', '1900 Cunningham Dr, Hampton, VA 23666, United States', NULL, NULL, '37.040756,-76.378973', 37.040756, -76.378975, 'store', 'maps/raw/places/staticmap/location=37.040756,-76.378973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.040756,-76.378973&format=gif'),
(464, 'd9928f08', 'a084f880f2f90e0c39b17957449bc8c1', 'Calle Hernan Cortes', 'Calle Hernan Cortes, 30833 Sangonera la Verde, Murcia, Spain', NULL, NULL, '37.93208,-1.2036638', 37.932079, -1.203664, 'route', 'maps/raw/places/staticmap/location=37.93208,-1.2036638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.93208,-1.2036638&format=gif'),
(465, 'f6c3dcd1', '9fdb03e95b1a6bb3b987f4bed9e5e629', 'C', 'C, Quito EC170146, Ecuador', NULL, NULL, '-0.3042075,-78.5531236', -0.304208, -78.553123, 'route', 'maps/raw/places/staticmap/location=-0.3042075,-78.5531236&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.3042075,-78.5531236&format=gif'),
(466, '85aa7b49', '88fe53bbfe3ded7320a0f4f1c1035820', 'Calle C', 'Calle C, Ensenada, B.C., Mexico', NULL, NULL, '31.8571031,-116.5711914', 31.857103, -116.571190, 'route', 'maps/raw/places/staticmap/location=31.8571031,-116.5711914&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.8571031,-116.5711914&format=gif'),
(467, '9860e7b1', '0a78509b01eee29fc9d5106a9d06b6c4', 'Calle C', 'Calle C, San Andres, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.4902,-99.1847677', 19.490200, -99.184769, 'route', 'maps/raw/places/staticmap/location=19.4902,-99.1847677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.4902,-99.1847677&format=gif'),
(468, '1fdddc06', '0f405b3d3e8580a737fa069d15b7f1e4', 'Calle C', 'Calle C, HerÃ³ica Puebla de Zaragoza, Pue., Mexico', NULL, NULL, '19.0053004,-98.2008319', 19.005301, -98.200829, 'route', 'maps/raw/places/staticmap/location=19.0053004,-98.2008319&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.0053004,-98.2008319&format=gif'),
(469, '432f223f', '167dca7a3dd00cdbd6194c4ffed25bb6', 'Calle C', 'Calle C, Las Caballerizas, Veracruz, Ver., Mexico', NULL, NULL, '19.1740927,-96.1678445', 19.174093, -96.167847, 'route', 'maps/raw/places/staticmap/location=19.1740927,-96.1678445&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.1740927,-96.1678445&format=gif'),
(470, 'aab2b62a', '4e3d9550cd8c33fce6f04325352720cc', 'Calle C', 'Calle C, 55040 Ecatepec de Morelos, MÃ©x., Mexico', NULL, NULL, '19.5906898,-99.0376842', 19.590691, -99.037682, 'route', 'maps/raw/places/staticmap/location=19.5906898,-99.0376842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.5906898,-99.0376842&format=gif'),
(471, '9ee8c785', '6ba3af6ec41d24f2172318d0be7c4e97', 'Calle C', 'Calle C, Potrero del Llano, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.4743497,-99.1601774', 19.474350, -99.160179, 'route', 'maps/raw/places/staticmap/location=19.4743497,-99.1601774&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.4743497,-99.1601774&format=gif'),
(472, 'c27d6318', '63f4d10ae9ff844dbb4e5901d042c7e5', 'Calle C', 'Calle C, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.419685,-99.0987226', 19.419685, -99.098724, 'route', 'maps/raw/places/staticmap/location=19.419685,-99.0987226&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.419685,-99.0987226&format=gif'),
(473, '984d5ac2', '9df87fbd4f7eb7be4f0c85d59735996f', 'Calle C', 'Calle C, Culhuacan, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.3423118,-99.1080633', 19.342312, -99.108063, 'route', 'maps/raw/places/staticmap/location=19.3423118,-99.1080633&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.3423118,-99.1080633&format=gif'),
(474, 'd18d6d31', 'ab2d75002fdcdabba6e15bdec4f9ebf4', 'Massachusetts', 'Massachusetts, USA', NULL, NULL, '42.4072107,-71.3824374', 42.407211, -71.382439, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=42.4072107,-71.3824374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.4072107,-71.3824374&format=gif'),
(475, '9cf3a761', '39731f8a78f158e25ee17526801a8c47', 'Saigon University', '273 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 3, Quáº­n 5, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.759669,106.682372', 10.759669, 106.682373, 'university', 'maps/raw/places/staticmap/location=10.759669,106.682372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.759669,106.682372&format=gif'),
(476, '1b43f810', '7d82d889385a5f36ca2a59ac64d60774', 'Ho Chi Minh City', 'Ho Chi Minh City, Ho Chi Minh, Vietnam', NULL, NULL, '10.8230989,106.6296638', 10.823099, 106.629662, 'locality', 'maps/raw/places/staticmap/location=10.8230989,106.6296638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.8230989,106.6296638&format=gif'),
(477, 'ee7bf4ff', 'd4868be4d83e6b6556dac360a16f2779', 'Quan Natural Heritage Area', 'Quan NHA, Duy TiÃªn, HÃ  Nam Province, Vietnam', NULL, NULL, '20.6343043,105.983208', 20.634304, 105.983208, 'neighborhood', 'maps/raw/places/staticmap/location=20.6343043,105.983208&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.6343043,105.983208&format=gif'),
(478, '40d6265d', '19c7d0da027b118eb63ffe60b7b816ad', 'QuÃ¡n Natural Heritage Area', 'QuÃ¡n NHA, TiÃªn Háº£i, tp. Phá»§ LÃ½, HÃ  Nam Province, Vietnam', NULL, NULL, '20.547845,105.9560341', 20.547846, 105.956032, 'neighborhood', 'maps/raw/places/staticmap/location=20.547845,105.9560341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.547845,105.9560341&format=gif'),
(479, 'b3f0ac1d', 'de0b5b04ef169df8961b3320b4dd1cf3', 'ÄÆ°á»ng Quan Nha bÃ£i', 'ÄÆ°á»ng Quan Nha bÃ£i, Quan Nha BÃ£i, tt. HÃ²a Máº¡c, Duy TiÃªn, HÃ  Nam, Vietnam', NULL, NULL, '20.6373657,105.9869852', 20.637365, 105.986984, 'route', 'maps/raw/places/staticmap/location=20.6373657,105.9869852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.6373657,105.9869852&format=gif'),
(480, 'bdceefb6', '758f9952cc74597fc315c4e1c18a2dea', 'Parkson Cantavil', 'Song HÃ nh, An PhÃº, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.801533,106.747268', 10.801533, 106.747269, 'shopping_mall', 'maps/raw/places/staticmap/location=10.801533,106.747268&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.801533,106.747268&format=gif'),
(481, '3dcc659e', '4eb7c36919cecbf8142ab3d94a2fb20e', 'GiÃ¡ Rai District', 'GiÃ¡ Rai District, Bac Lieu, Vietnam', NULL, NULL, '9.260136,105.3753129', 9.260136, 105.375313, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=9.260136,105.3753129&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.260136,105.3753129&format=gif'),
(482, 'fba8acf3', 'de2ab6f854b017927a47441eddb83258', 'Há»™ PhÃ²ng', 'Há»™ PhÃ²ng, GiÃ¡ Rai District, Bac Lieu, Vietnam', NULL, NULL, '9.2234179,105.4243804', 9.223418, 105.424377, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.2234179,105.4243804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2234179,105.4243804&format=gif'),
(483, '37976eb8', '19b702d43a04fd913f262e797aa48d20', 'tt. GiÃ¡ Rai', 'tt. GiÃ¡ Rai, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.2388149,105.4586323', 9.238815, 105.458633, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.2388149,105.4586323&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2388149,105.4586323&format=gif'),
(484, '59d8f30b', '1a9fbcab52540f436c72aabdf4830fe0', 'New York Times', '111 E Lower Wacker Dr, Chicago, IL 60601, United States', '111 E Lower Wacker Dr', '', '41.887565,-87.623569', 41.887566, -87.623566, 'point_of_interest', 'maps/raw/places/staticmap/location=41.887565,-87.623569&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.887565,-87.623569&format=gif'),
(485, '37992d3e', 'a5579620fa302382735a172ee534d9e6', 'New York Times Corporation Library', '620 8th Ave, New York, NY 10018, United States', '620 8th Ave', '', '40.756032,-73.990028', 40.756031, -73.990028, 'library', 'maps/raw/places/staticmap/location=40.756032,-73.990028&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.756032,-73.990028&format=gif'),
(486, 'ff04c206', 'a9041fa85abc50d3b99cc3062baad2cb', 'New York Times', '1627 I St NW, Washington, DC 20006, United States', '1627 I St NW', '', '38.901662,-77.038035', 38.901661, -77.038033, 'point_of_interest', 'maps/raw/places/staticmap/location=38.901662,-77.038035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.901662,-77.038035&format=gif'),
(487, 'e713c02d', 'a37dacfe746655833b827b1af70c51ea', 'New York Post', '1 City Hall, New York, NY 10007, United States', '1 City Hall', '', '40.703589,-74.012773', 40.703590, -74.012772, 'point_of_interest', 'maps/raw/places/staticmap/location=40.703589,-74.012773&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703589,-74.012773&format=gif'),
(488, '583ab475', '1002ac7e4085a6e99dc5929ae7fcac81', 'New York Post', '1211 6th Ave, New York, NY 10036, United States', '1211 6th Ave', '', '40.758558,-73.982337', 40.758556, -73.982338, 'library', 'maps/raw/places/staticmap/location=40.758558,-73.982337&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.758558,-73.982337&format=gif'),
(489, 'e2a4c715', '5600a7ac55ba0206357533bec28c7f58', 'New York Post', '900 E 132nd St, Bronx, NY 10454, United States', '900 E 132nd St', '', '40.798094,-73.912825', 40.798096, -73.912827, 'post_office', 'maps/raw/places/staticmap/location=40.798094,-73.912825&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.798094,-73.912825&format=gif'),
(490, '356026ca', '9ec62f4a5b5ae7621e5e6834b598ecdc', 'CNN', '10 Columbus Cir, New York, NY 10019, United States', '10 Columbus Cir', '', '40.768456,-73.982809', 40.768456, -73.982811, 'point_of_interest', 'maps/raw/places/staticmap/location=40.768456,-73.982809&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.768456,-73.982809&format=gif'),
(491, 'd384c2f4', '9409ebf6d2313774ec577817132ab505', 'Loomis Express', '95 Micro Ct, Markham, ON L3R 5N1, Canada', '95 Micro Ct', '', '43.83571,-79.315094', 43.835709, -79.315094, 'establishment', 'maps/raw/places/staticmap/location=43.83571,-79.315094&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.83571,-79.315094&format=gif'),
(492, '94dccdf8', 'd68a1b86384182ffe2d9232e6c4bea46', 'Inland Iron &amp; Metal', 'Ravenshoe Rd, Sutton West, ON L0E 1R0, Canada', 'Ravenshoe Rd', '', '44.223131,-79.329935', 44.223129, -79.329933, 'establishment', 'maps/raw/places/staticmap/location=44.223131,-79.329935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C44.223131,-79.329935&format=gif'),
(493, '07f0fd46', '9d2d34bafa39c95965190741206b9fc8', 'The New America Foundation', '199 Lafayette St Suite 3b, New York, NY 10012, United States', '199 Lafayette St Suite 3b', '', '40.721148,-73.99777', 40.721149, -73.997772, 'establishment', 'maps/raw/places/staticmap/location=40.721148,-73.99777&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.721148,-73.99777&format=gif'),
(494, '477e7f96', 'a02ed9907a072197c28421f942df6cfe', 'New Relic', '188 Spear St, San Francisco, CA 94105, United States', '188 Spear St', '', '37.791354,-122.393048', 37.791355, -122.393051, 'establishment', 'maps/raw/places/staticmap/location=37.791354,-122.393048&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791354,-122.393048&format=gif'),
(495, 'e3b27729', 'aa6f5d7176ae71f257b515ed1da98165', 'New Relic', '111 SW 5th Ave #2800, Portland, OR 97204, United States', '111 SW 5th Ave #2800', '', '45.52263,-122.67575', 45.522629, -122.675751, 'establishment', 'maps/raw/places/staticmap/location=45.52263,-122.67575&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.52263,-122.67575&format=gif'),
(496, '94585772', 'd6289bf1cb17ffeeac7d90dc632649be', 'New Relic', '19, 2101 4th Ave, Seattle, WA 98121, United States', '19', '', '47.614084,-122.342398', 47.614082, -122.342400, 'establishment', 'maps/raw/places/staticmap/location=47.614084,-122.342398&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.614084,-122.342398&format=gif'),
(497, 'dfc77bb1', 'b088c17fa5a9ce05be7030b765d429e6', 'New Center', '1100 N Main St #100, Ann Arbor, MI 48104, United States', '1100 N Main St #100', '', '42.293139,-83.746819', 42.293140, -83.746819, 'establishment', 'maps/raw/places/staticmap/location=42.293139,-83.746819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.293139,-83.746819&format=gif'),
(498, '806255b7', 'c8e380136a55387549a43a76aac6d69b', 'New Balance New York', '150 5th Ave, New York, NY 10010, United States', '150 5th Ave', '', '40.739623,-73.991359', 40.739624, -73.991356, 'shoe_store', 'maps/raw/places/staticmap/location=40.739623,-73.991359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.739623,-73.991359&format=gif'),
(499, 'ee08cc9f', '1b350a5c5fb13c0342e2b5dd982a4a82', 'New England Journal-Medicine: Campion Edward W MD', '10 Shattuck St, Boston, MA 02115, United States', '10 Shattuck St', '', '42.335134,-71.103841', 42.335133, -71.103844, 'doctor', 'maps/raw/places/staticmap/location=42.335134,-71.103841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.335134,-71.103841&format=gif'),
(500, '5648e777', 'db2269f03e3a6b6778d100e0389fb30b', 'New Balance', '7000 Arundel Mills Cir, Hanover, MD 21076, United States', '7000 Arundel Mills Cir', '', '39.159148,-76.7242', 39.159149, -76.724197, 'shoe_store', 'maps/raw/places/staticmap/location=39.159148,-76.7242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.159148,-76.7242&format=gif'),
(501, 'd21789b1', 'd1ea9177b3993dcd9432ee2bec80fb95', 'New Balance', '350 Tarrytown Rd #2, White Plains, NY 10607, United States', '350 Tarrytown Rd #2', '', '41.04272,-73.795241', 41.042721, -73.795242, 'shoe_store', 'maps/raw/places/staticmap/location=41.04272,-73.795241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.04272,-73.795241&format=gif'),
(502, '4a76527e', '97d9b3d02b4dc76842a1ffa1a07c5526', 'New Balance', '1990 Marlton Pike E, Cherry Hill, NJ 08003, United States', '1990 Marlton Pike E', '', '39.899217,-74.953446', 39.899216, -74.953445, 'shoe_store', 'maps/raw/places/staticmap/location=39.899217,-74.953446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.899217,-74.953446&format=gif'),
(503, 'eec661f9', '80dd671f138e27b51e02ad91405a774b', 'New Balance', '4313 Dearborn Cir, Mt Laurel, NJ 08054, United States', '4313 Dearborn Cir', '', '39.968813,-74.902462', 39.968815, -74.902458, 'shoe_store', 'maps/raw/places/staticmap/location=39.968813,-74.902462&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968813,-74.902462&format=gif'),
(504, 'c0bcdaf3', '39244f2aaa26033b2958a5e2984c5ab3', 'California', 'California, USA', 'California', '', '36.778261,-119.4179324', 36.778259, -119.417931, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=36.778261,-119.4179324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.778261,-119.4179324&format=gif'),
(505, 'd6218595', 'bc1c5d6dee17adc7ad7dc40b380a859e', 'London', 'London, UK', 'London', '', '51.5073509,-0.1277583', 51.507351, -0.127758, 'locality', 'maps/raw/places/staticmap/location=51.5073509,-0.1277583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.5073509,-0.1277583&format=gif');

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
  `translate` char(4) NOT NULL,
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
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
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
  `file.320kbps` varchar(50) NOT NULL,
  `file.128kbps` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.320kbps` varchar(40) NOT NULL,
  `secret.128kbps` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.320kbps` char(10) NOT NULL,
  `path.128kbps` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) DEFAULT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.320kbps`, `file.128kbps`, `secret.original`, `secret.320kbps`, `secret.128kbps`, `path.original`, `path.320kbps`, `path.128kbps`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1441182602, '60f9d8d7', '6246b08f5f02829a6c81c31d96883073', 'Ä‘iá»u anh lo láº¯ng', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 'khÃ¡nh phÆ°Æ¡ng', '', '', 4, 4, 4, 'f9c9c0d67cfa9bacae1b319f45802bcf', '2309e46c1deb259edd0ad9a865dac0fe', '5024c79d1a4f3df36ea6b1c078cc52f3', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '314b49e3', '3521a9ad', 'e224e7ed', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0');

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
-- Table structure for table `pages_block`
--

CREATE TABLE IF NOT EXISTS `pages_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_follow`
--

CREATE TABLE IF NOT EXISTS `pages_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;

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
(23, 'notifyPopup_info_places', 'en', '10000'),
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
(49, 'media_cache_time_close', 'en', '1800'),
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
(98, 'regex_hashtag', 'en', '/(#([a-zA-Z0-9\\_]+))/'),
(99, 'regex_usertag', 'en', '/(@([a-zA-Z0-9\\_\\.]+))/'),
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
(112, 'user_timezone.default', 'en', '+07:00'),
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
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_year_min', 'en', '1900'),
(156, 'select_time_year_max', 'en', '2015'),
(157, 'select_time_month_min', 'en', '1'),
(158, 'select_time_month_max', 'en', '12'),
(159, 'select_time_day_min', 'en', '1'),
(160, 'select_time_day_max', 'en', '30'),
(161, 'select_time_hour_min', 'en', '0'),
(162, 'select_time_hour_max', 'en', '23'),
(163, 'select_time_minute_min', 'en', '0'),
(164, 'select_time_minute_max', 'en', '59'),
(165, 'select_time_second_min', 'en', '0'),
(166, 'select_time_second_max', 'en', '59'),
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
(190, 'cacheClean_user_limit_min', 'en', '100'),
(191, 'cacheClean_user_limit_max', 'en', '1000'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'faces'),
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
(209, 'regex_name', 'en', '/^([\\S]{2,30})$/'),
(210, 'regex_password', 'en', '/^(\\S{8,}$)/'),
(211, 'regex_email', 'en', '/(([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,6}))$/'),
(212, 'regex_username', 'en', '/^([a-zA-Z]{1})([a-zA-Z0-9\\.\\_]{5,30})$/'),
(213, 'regex_date_day', 'en', '/^([0-9]{1,2})$/'),
(214, 'regex_date_month', 'en', '/^([0-9]{1,2})$/'),
(215, 'regex_date_year', 'en', '/^([0-9]{4})$/'),
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
(228, 'messages_views_timeout', 'en', '3000'),
(229, 'regex_sites_url', 'en', '/^((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(230, 'sites_info_time_update', 'en', '86400'),
(231, 'feeds_nearby_scanning_distance', 'en', '10'),
(232, 'user_mode.safe_default', 'en', '0'),
(233, 'users_getpassword_timeout', 'en', '3600'),
(234, 'regex_sites_giccos_direct', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/(sites\\/direct)\\/([\\S]+)?)/'),
(235, 'hash_cache_readfile', 'en', 'g::key::cache->readfile'),
(236, 'regex_sites_giccos_host', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/([\\S]+)?)/'),
(237, 'messages_postion_timeout', 'en', '300'),
(238, 'hash_storage_static', 'en', 'g::key::storage->static'),
(239, 'users_online_timeout', 'en', '300'),
(240, 'regex_sites_url_fstring', 'en', '/((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(241, 'hash_user_info', 'en', 'g::key::user->infomation'),
(242, 'regex_sites_giccos_domain', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/?)/'),
(243, 'regex_language_code', 'en', '/([a-zA-Z]{4})/'),
(244, 'regex_word', 'en', '/([a-zA-Z]+)/'),
(245, 'key_api_wordnik_1', 'en', 'a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'),
(246, 'hash_library_words_subinfo', 'en', 'g::key::library->words->subinfo'),
(247, 'hash_library_voice_content', 'en', 'g::key::library->voice->content'),
(248, 'feeds_action_timeout', 'en', '43200'),
(249, 'hash_photos_qr', 'en', 'g::key::photos->qr'),
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check'),
(251, 'sites_views_timeout', 'en', '86400'),
(252, 'hash_mailer_logs', 'en', 'g::key::mailer->logs'),
(253, 'hash_mailer_id', 'en', 'g::key::mailer->id'),
(254, 'weather_cache_timeout', 'en', '10800'),
(255, 'client_location_timeout', 'en', '1800'),
(256, 'user_suggest_live_distance', 'en', '50'),
(257, 'user_suggest_country_distance', 'en', '25'),
(258, 'user_suggest_checkin_distance', 'en', '10'),
(259, 'user_suggest_nearby_timeout', 'en', '604800');

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
  `photos.path` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1441183071, '8e68d095', '8bae5fbe328323689b3cbf4862b7959a', '16a2f66f', 'CL36_2nUkAATviz.jpg', '', '', 0, 1, 4, 4, 4, 'd70331a9af54d79bb2bec2e50a1eda79', '0', '0', '6e68bd54961af9bfc7e836fc22c83dd4', '50d36e33ce1f6d1cfefd3a54203c061d', '0', '0', 'd91e809c1152dbeecc0ff9e60278eee2', '87d7ce29', '0', '0', 'e8266bb1', 450, 600, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(2, 1, 'user', 1, 0, 1441183072, 'cef7d498', '7c018bf97aaa0d167bdc0b4eee61b849', '32f75cab', '1440690613319_3257.jpg', '', '', 0, 1, 4, 4, 4, 'b38cd0f48889f7803ef86dc98cd794f1', '0', '0', 'bf8e8e43e05b54a19994aabcf8eaa552', '1c82fa8c3761ba1bcc88cb10af514bdb', '0', '0', '3e3f258d756bf1b8dfeea76b61490d8b', 'fce21e37', '0', '0', 'ae225fe9', 900, 720, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 1, 'user', 1, 0, 1441183076, '3d96485a', '6cf02720d7fd880e3b05471602994f77', '985ae914', '1909298_1474502006103047_649702505_o.jpg', '', '', 0, 1, 4, 4, 4, '659eaaeef227919f798a05d7bd4680b2', 'b3824d1a629d0880b8e9bc3436e53554', '551a6e94bde1b31a8385f0f8a7337b9a', '203809947b2d2fee728b52000e387620', 'f322d982f6b00c3e546469fb893d312b', 'b19cce68ddc0c0bc34772db494234278', 'f55c976be787b8d4a9afc91e4e1ba63e', '0bc94804ea378316e3dbeccaf0b53716', 'e03adb6b', '7df1e26f', '999f329e', '997478ae', 1536, 2048, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 1, 'user', 1, 0, 1441183078, 'd10bf299', 'a5766c9fb32ab99fd715a648c0e8d373', '3b16fd4d', '1500x500.jpg', '', '', 0, 1, 4, 4, 4, '8f8209219c1da97dd13eca7ec2f14bea', 'd474dd118aa4794157e1ea4f291f8b6b', '5c2318736297703f362d63baaa892d4e', '165d7da5001c0d5a230b5a411daf6e9c', 'b69946e35fff6c33d17636829b6c7fe9', '49d9392e6cc8b444d5799abc5d2b3347', '3ba915353c9ec1141db4ade4639d2d09', '781d56f8dcb33f904a07c2b0b2b68d5a', '25af09f8', 'f47e0c81', '47e3399f', '67f5a822', 500, 1500, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0');

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
-- Table structure for table `process_id`
--

CREATE TABLE IF NOT EXISTS `process_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `total` float(16,4) DEFAULT NULL,
  `done` float(16,4) DEFAULT NULL,
  `percent` float(3,2) DEFAULT NULL,
  `logs` text,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('8hMn9PUsn2ot94i77i6hneXUcY,ZSInXLc1RUbPMuS8', 1442066180, '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', 'edd6a2a968562599873b89ea6c06ca20');

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
-- Table structure for table `sites_certificate`
--

CREATE TABLE IF NOT EXISTS `sites_certificate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `issuer.c` varchar(20) DEFAULT NULL,
  `issuer.o` varchar(50) DEFAULT NULL,
  `issuer.ou` varchar(50) DEFAULT NULL,
  `issuer.s` varchar(40) DEFAULT NULL,
  `issuer.l` varchar(40) DEFAULT NULL,
  `issuer.cn` varchar(100) DEFAULT NULL,
  `signature.type.name` varchar(30) DEFAULT NULL,
  `signature.type.id` char(10) DEFAULT NULL,
  `purposes` text,
  `valid.time.from` int(11) NOT NULL,
  `valid.time.to` int(11) NOT NULL,
  `identifier.subject.key` varchar(255) DEFAULT NULL,
  `identifier.authority.key` varchar(255) DEFAULT NULL,
  `policies` text,
  `usefor.key` varchar(100) DEFAULT NULL,
  `usefor.extended` varchar(255) DEFAULT NULL,
  `subject.name` text,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_certificate`
--

INSERT INTO `sites_certificate` (`id`, `time`, `token`, `display`, `hash`, `issuer.c`, `issuer.o`, `issuer.ou`, `issuer.s`, `issuer.l`, `issuer.cn`, `signature.type.name`, `signature.type.id`, `purposes`, `valid.time.from`, `valid.time.to`, `identifier.subject.key`, `identifier.authority.key`, `policies`, `usefor.key`, `usefor.extended`, `subject.name`, `updated`) VALUES
(1, 1441477109, '4999265f', '9e682345f64c2ceb7f2bcb9debe98f83', '60fc2aa4', 'GB', 'COMODO CA Limited', '', '', 'Salford', 'COMODO RSA Domain Validation Secure Server CA', 'RSA-SHA256', '', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:1;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1338678000, 1496444399, 'F8:D6:29:80:5F:40:E6:4B:8A:1E:E3:36:36:04:A1:34:AB:3A:91:F7', 'keyid:90:AF:6A:3A:94:5A:0B:D8:90:EA:12:56:73:DF:43:B4:3A:28:DA:E7\n', 'Policy: 1.3.6.1.4.1.6449.1.2.2.7\n  CPS: https://secure.comodo.com/CPS\nPolicy: 2.23.140.1.2.1\n', 'Digital Signature, Key Encipherment', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:2:{i:0;s:15:&quot;DNS:*.tinhte.vn&quot;;i:1;s:14:&quot; DNS:tinhte.vn&quot;;}', 1441477109),
(2, 1441477146, '2ce60b2c', 'c9968591e83ec79036ac420f3f00fd04', 'a18bd28a', 'US', 'Google Inc', '', '', '', 'Google Internet Authority G2', 'RSA-SHA256', '', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:0;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1440608123, 1448319600, '26:1D:BE:F0:1B:E7:1E:0A:C4:7F:DC:53:CE:0C:4A:44:6B:DC:A8:74', 'keyid:4A:DD:06:16:1B:BC:F6:68:B5:76:F5:81:B6:BB:62:1A:BA:5A:81:2F\n', 'Policy: 1.3.6.1.4.1.11129.2.5.1\n', 'Digital Signature', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:50:{i:0;s:16:&quot;DNS:*.google.com&quot;;i:1;s:18:&quot; DNS:*.android.com&quot;;i:2;s:27:&quot; DNS:*.appengine.google.com&quot;;i:3;s:23:&quot; DNS:*.cloud.google.com&quot;;i:4;s:27:&quot; DNS:*.google-analytics.com&quot;;i:5;s:16:&quot; DNS:*.google.ca&quot;;i:6;s:16:&quot; DNS:*.google.cl&quot;;i:7;s:19:&quot; DNS:*.google.co.in&quot;;i:8;s:19:&quot; DNS:*.google.co.jp&quot;;i:9;s:19:&quot; DNS:*.google.co.uk&quot;;i:10;s:20:&quot; DNS:*.google.com.ar&quot;;i:11;s:20:&quot; DNS:*.google.com.au&quot;;i:12;s:20:&quot; DNS:*.google.com.br&quot;;i:13;s:20:&quot; DNS:*.google.com.co&quot;;i:14;s:20:&quot; DNS:*.google.com.mx&quot;;i:15;s:20:&quot; DNS:*.google.com.tr&quot;;i:16;s:20:&quot; DNS:*.google.com.vn&quot;;i:17;s:16:&quot; DNS:*.google.de&quot;;i:18;s:16:&quot; DNS:*.google.es&quot;;i:19;s:16:&quot; DNS:*.google.fr&quot;;i:20;s:16:&quot; DNS:*.google.hu&quot;;i:21;s:16:&quot; DNS:*.google.it&quot;;i:22;s:16:&quot; DNS:*.google.nl&quot;;i:23;s:16:&quot; DNS:*.google.pl&quot;;i:24;s:16:&quot; DNS:*.google.pt&quot;;i:25;s:23:&quot; DNS:*.googleadapis.com&quot;;i:26;s:20:&quot; DNS:*.googleapis.cn&quot;;i:27;s:25:&quot; DNS:*.googlecommerce.com&quot;;i:28;s:22:&quot; DNS:*.googlevideo.com&quot;;i:29;s:17:&quot; DNS:*.gstatic.cn&quot;;i:30;s:18:&quot; DNS:*.gstatic.com&quot;;i:31;s:15:&quot; DNS:*.gvt1.com&quot;;i:32;s:15:&quot; DNS:*.gvt2.com&quot;;i:33;s:25:&quot; DNS:*.metric.gstatic.com&quot;;i:34;s:17:&quot; DNS:*.urchin.com&quot;;i:35;s:21:&quot; DNS:*.url.google.com&quot;;i:36;s:27:&quot; DNS:*.youtube-nocookie.com&quot;;i:37;s:18:&quot; DNS:*.youtube.com&quot;;i:38;s:27:&quot; DNS:*.youtubeeducation.com&quot;;i:39;s:16:&quot; DNS:*.ytimg.com&quot;;i:40;s:16:&quot; DNS:android.com&quot;;i:41;s:9:&quot; DNS:g.co&quot;;i:42;s:11:&quot; DNS:goo.gl&quot;;i:43;s:25:&quot; DNS:google-analytics.com&quot;;i:44;s:15:&quot; DNS:google.com&quot;;i:45;s:23:&quot; DNS:googlecommerce.com&quot;;i:46;s:15:&quot; DNS:urchin.com&quot;;i:47;s:13:&quot; DNS:youtu.be&quot;;i:48;s:16:&quot; DNS:youtube.com&quot;;i:49;s:25:&quot; DNS:youtubeeducation.com&quot;;}', 1441477146);

-- --------------------------------------------------------

--
-- Table structure for table `sites_comment`
--

CREATE TABLE IF NOT EXISTS `sites_comment` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_favorite`
--

CREATE TABLE IF NOT EXISTS `sites_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `action` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_id`
--

CREATE TABLE IF NOT EXISTS `sites_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ip` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
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
  `hash` varchar(40) NOT NULL,
  `scheme` char(10) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dot` varchar(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mime` char(10) DEFAULT NULL,
  `fingerprints` char(10) NOT NULL,
  `language` char(4) DEFAULT NULL,
  `country` char(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `scan` varchar(40) NOT NULL,
  `certificate` varchar(40) DEFAULT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1441184169, 'dd3c4c8b', '4f1aef1fef151627b42a39827ef573b5', '98c50f5a0eb09a4544509300d9e7b5b5', 'http', '', 'vnreview.vn', 'vnreview', 'vn', '', '', 'f3ea46d0', 'vi', 'VN', 'article', 'VnReview - ÄÃ¡nh giÃ¡, tin tá»©c, tÆ° váº¥n sáº£n pháº©m cÃ´ng nghá»‡', 'photos/raw/other/2CNBZDSZx3rjgGR4ZJr7g46cbP9oyR26lajSCX+WGEUI3UfShu7//qzeWw2wR7PFw49bgMEcDL50QITB16s4oA==', 'ÄÃ¡nh giÃ¡ sáº£n pháº©m cÃ´ng nghá»‡, tin tá»©c cÃ´ng nghá»‡, tÆ° váº¥n sáº£n pháº©m, Ä‘iá»‡n thoáº¡i di Ä‘á»™ng, smartphone, TV, laptop, Ä‘á»“ gia dá»¥ng, mÃ¡y tÃ­nh báº£ng, mÃ¡y áº£nh sá»‘', 'http://vnreview.vn/', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 1441184169),
(2, 1441184691, 'cb8fc719', 'b574cc4e97fb1e05c8636f9b1807f6a1', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', 'a8d66807', '', '', '', 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net', 'bee1dc32244d643d0c040bf91ffa84f4', '', 1441184691),
(3, 1441184704, 'a49ca74a', '8778467be4836da0ad1a95347c6553c6', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '10c10843', '', '', 'website', 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '736444bc3612697c735ac92d365bd219', '', 1441184704),
(4, 1441477108, '9d24e854', 'e0efa6913cc843827a2a489bcee00cc1', 'e89c605794cb3c7646e2bf1d275b6e00', 'https', '', 'tinhte.vn', 'tinhte', 'vn', '', '', '6399826d', 'vi', '', 'article', 'Cá»™ng Ä‘á»“ng Khoa há»c &amp;amp; CÃ´ng nghá»‡ | Tinhte.vn', '', '', 'https://tinhte.vn/', '27ce15f2e348d0bd76fab1920cb94568', '', 1441477108),
(5, 1441477145, '7ab250f1', '683833be714a2aef912d5a17ceebee84', 'baa034786446164961799e4189df7f65', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=aw9aBIT3HGk', '', '6635cff9', 'vi', '', 'video', 'Lasse Lindh - Run To You FMV (Angel Eyes OST) With Lyrics - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuHgBt0WZeaTWap6WM4eyneW7NdfuJU8tBlDkBWIzloGg==', '', 'https://www.youtube.com/watch?v=aw9aBIT3HGk', '', '', 1441477145);

-- --------------------------------------------------------

--
-- Table structure for table `sites_rate`
--

CREATE TABLE IF NOT EXISTS `sites_rate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` int(1) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_scan`
--

CREATE TABLE IF NOT EXISTS `sites_scan` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` char(10) NOT NULL,
  `total` int(4) NOT NULL,
  `data` text NOT NULL,
  `status` char(10) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_scan`
--

INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(1, 1441184173, '9d0c92fe', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnreview.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:56:&quot;http://malc0de.com/database/index.php?search=vnreview.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnreview.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184173),
(2, 1441184694, 'e45f994f', 'bee1dc32244d643d0c040bf91ffa84f4', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184694),
(3, 1441184707, 'f0c9d955', '736444bc3612697c735ac92d365bd219', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;http://www.malwaredomainlist.com/mdl.php?search=stackoverflow.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://zeustracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:62:&quot;http://malc0de.com/database/index.php?search=stackoverflow.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:157:&quot;http://yandex.com/infected?l10n=en&amp;url=http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184707),
(4, 1441477113, 'e247c0f9', '27ce15f2e348d0bd76fab1920cb94568', '', 62, 'a:62:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;http://www.malwaredomainlist.com/mdl.php?search=tinhte.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:55:&quot;https://zeustracker.abuse.ch/monitor.php?host=tinhte.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:54:&quot;http://malc0de.com/database/index.php?search=tinhte.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=tinhte.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;http://yandex.com/infected?l10n=en&amp;url=https://tinhte.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441477113);

-- --------------------------------------------------------

--
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_views`
--

INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `updated`) VALUES
(1, 1441154300, 3, 'user', '1', 1441184500),
(2, 1441154300, 3, 'user', '1', 1441184200),
(3, 1441154300, 3, 'user', '1', 1441184300),
(4, 1441154300, 3, 'user', '1', 1441184400),
(5, 1441154300, 3, 'user', '1', 1441184100);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `public`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, 1, '4c32d620', 'd9992d2be4a14f6f783e75ba00acd488', 1441182140, 1441182140, 0, 1, 'user', 1, 4, 3, 3, 'status', '9uqB0rH5kd4IBJ5ptLir8TubCQWhlnh9OUjXuYy16/c=', 0, 0, 0, 0, 0, 0),
(2, 1, '33d8a653', '50958d06f698b081a7e1ff9588f5e672', 1441182581, 1441182581, 0, 1, 'user', 1, 4, 3, 3, 'music', 'BytrpEuLSZLrBO/n6LkS3yrGLTaYfpxKeRvbQdB7oM0=', 0, 0, 0, 0, 0, 0),
(3, 1, '28d3a2da', 'e6feab677c85bc700a82cb9f1fefdc7b', 1441183070, 1441183070, 0, 1, 'user', 1, 4, 3, 3, 'photos', 'TSapcav1HSAKSOSKAK19ONFgP+WLtzdyfkCo+7L2DFNgBOTtxkwdScnLg+0aPA+TD9h5Dfp10c1W7KOUy6VpoxOFmK6fQXy2AFZzFkj4fXlkfgCEWy4FYt8FkGufnrXpbpzSYgiC45DJPo61Bo1wJwyBKA/63QscSdLoDC4n7h6KirpD/bFPq3HoDgpfZMelQBqc76S+C2tpPKqE0vuEYC5dXu5Q0PXmu6aeXaJz/hThPd3jcVuWmfnhTNSlh9R8F5/TE6oXP8KVhjpLZt1yDASlm60BhllXMg1nzAcfigE=', 0, 0, 0, 0, 0, 0),
(4, 1, '66443ac1', '2c36326e2cd9bad1547c07b74c3d16a6', 1441183314, 1441183314, 0, 1, 'user', 1, 4, 3, 3, 'videos', 'O1ywWonLhfGda5JhUz33gADLK3t94mVYAaw1lLpf/Eo=', 0, 0, 0, 0, 0, 0),
(5, 1, 'a2374f95', 'd30c9d53bd0d6ab960b2ec8974c729ce', 1441477168, 1441477168, 0, 1, 'user', 1, 4, 3, 3, 'status', 'cEgJg+tmTbFAp2d6jUWzCdcjuM2aCisNjyEAAOm9GrGOcRAQEi6QY4KWadqhTyLR2ZcT9J/TTreXHdG2ClYmGA==', 0, 0, 0, 0, 1, 0),
(6, 1, '4a21d3af', '42874a9ab645d7a4eeef2edf6056f399', 1441711567, 1441711567, 0, 2, 'user', 2, 4, 3, 3, 'status', 'jJO73oXwUBaXjSG8BsByrm9Quq1Rg0lNQCRu2Y8hUzQ=', 0, 0, 0, 0, 0, 0),
(7, 1, 'ebf521c3', '866a57f8adaeb69ea344d55b690f280a', 1441796192, 1441796192, 1441796192, 2, 'user', 2, 4, 3, 3, 'status', 'C3KZrvEL4UuEV998cpdU/HeRHIWcdMCEEuq0h93xcKM=', 0, 0, 0, 1, 0, 0),
(8, 1, 'd0521010', '6c8fde30aef91afe28978af3e40b3e98', 1441896405, 1441896405, 0, 1, 'user', 1, 3, 3, 3, 'status', 'igGV3LXmgVBSmiGR7VS/rfEdMDcmHgmdIYuVXHPse1gfE5hMVnvrZPbyaprHp6lUxsY1gIhAQzi345ZYCVkO0A==', 0, 0, 1, 0, 0, 0),
(9, 1, 'b724dfe4', '4d99614fa6762331557a7a0ec77fab09', 1441896604, 1441896604, 0, 1, 'user', 1, 3, 3, 3, 'status', 'EIH/UZyF7O2lCpJ3EMKUMnHDRyBNqJ6Tj9gNobkKBDw=', 0, 0, 1, 0, 0, 0),
(10, 1, 'dda8bf5f', 'a01d1894e6f10fe3b5d3d6c26ca0c630', 1441978261, 1441978261, 0, 1, 'user', 1, 3, 3, 3, 'status', 'jRSnyGa3bRXF1MGDc+iKANUmD6WMb8MsaxmFEovxYURfAdVzD4tbVREV1z3WLS55I/MmL6SlBbc7/VqBTRh5dw==', 0, 1, 1, 0, 0, 0),
(11, 1, 'c07fa22f', 'a450437f7e9162b8dc1cbb8324d93ef7', 1442061262, 1442061262, 0, 2, 'user', 2, 3, 3, 3, 'status', 'G5Q/6XO63Kpjdk8t5VUirXFYZd0IWjoca2oEiCsQNkHSYsErZ1Qg8C4qsKdbJ0lCvv0uh1EGSecsKjoLqqesJg==', 0, 0, 1, 0, 0, 0),
(12, 1, 'e935b403', '89b01f2155d6a43dc6f1bdc7f5113ee3', 1442062521, 1442062521, 0, 1, 'user', 1, 3, 3, 3, 'status', 'UXf5pXoBEa2oUUM/RNsmXQJk5S0cmtsbZ2sFfPizg/9vL3QE/Y6QXceAJM5ZtA2l6JBv3Z5+gnpHw7e9ApD7QA==', 0, 0, 1, 0, 0, 0),
(13, 1, 'fdd58849', '3d3b73924a9d5a292a30f93296219c16', 1442062606, 1442062606, 0, 1, 'user', 1, 3, 3, 3, 'status', '2i4uboa55/eYsCR+my0fBlm0mqhy/qWuVrsImjWQuJ4=', 0, 0, 1, 0, 0, 0),
(14, 1, '7231d079', 'a81287bb2ed995f50f63a9da38b2cd15', 1442064182, 1442064182, 0, 1, 'user', 1, 3, 3, 3, 'status', 'msQz7o1km7NjhIeCZnp66AkRWnOmbqxu7c/zO8lhnyMpPS9i/GWc7a9qNW7MXyiWjH+XhikocIxKbMx5K73yLw==', 0, 0, 1, 0, 0, 0),
(15, 1, '14fa0165', '82644e1bb0a125ad1273f29d279358f5', 1442065236, 1442065236, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Fr0+NHYCAO+FSvzZLDf1O94bfK76FhgiLT/XZQ3QgI2VuSdcEV8/S5UC6RI/GCWc3vDmFPTl8vjFNFoTKmpEnw==', 0, 0, 1, 0, 0, 0),
(16, 1, 'b6395dd3', '6993af2aaeeda1497dcff7d97f719d46', 1442065353, 1442065353, 0, 1, 'user', 1, 3, 3, 3, 'status', '1QC1iwJ+TWQ8T5ehjfQJnxqjbr7C4WPUxh5p0qN1DuE=', 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_actions`
--

CREATE TABLE IF NOT EXISTS `status_actions` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_block`
--

CREATE TABLE IF NOT EXISTS `status_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `things.type` char(10) NOT NULL,
  `things.id` int(11) NOT NULL,
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
  `logscontent` text,
  `places` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`, `places`) VALUES
(1, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'status', 3, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(2, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'comment', 1, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(3, '2a52fe3e', 'c4f4bf297e38c9e8217e942da2ad9159', 1441712504, 'status', 3, 1, 'user', 1, 0, 'SCA9qdGPndwci8ljJ+FaC1vu1T3EeAu8pXAXSIhA9uU=', '', NULL),
(4, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(5, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'comment', 4, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(6, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL);

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
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `inside.type`, `inside.id`, `guy.type`, `guy.id`) VALUES
(2, 1441529806, '', 3, 'user', 1),
(3, 1441540055, '', 4, 'user', 2),
(5, 1441712425, '', 5, 'user', 1),
(6, 1441712484, '', 4, 'user', 1),
(8, 1441712926, '', 2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(1, 10, 'live'),
(2, 10, 'ganhhao');

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
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_link`
--

INSERT INTO `status_link` (`id`, `time`, `status.id`, `sites.id`) VALUES
(1, 1, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_mood`
--

INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES
(1, 7, 1, '[feel]sad');

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
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_places`
--

INSERT INTO `status_places` (`id`, `time`, `inside.type`, `inside.id`, `value`) VALUES
(1, 0, 'status', 9, '51'),
(2, 1441978261, 'status', 10, '1'),
(3, 1442061262, 'status', 11, '1'),
(4, 1442062521, 'status', 12, '1'),
(5, 1442062606, 'status', 13, '63'),
(6, 1442064182, 'status', 14, '179'),
(7, 1442065236, 'status', 15, '139'),
(8, 1442065353, 'status', 16, '505');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(1, 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(2, 'drive', 1, 1441182582, 'df7f7a54', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3pRoOIIdWWRoJfFdu3wS6KrehyNdMHfWe6gDTnRTHJSVZRECaPlnh/VTdI8ldlGI0NLClOFzOc/Cfbe53WgVog==', 'audio/mp3', '314b49e3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182582, 9803861),
(3, 'drive', 1, 1441182582, '89ea6650', '', 'e6321c040a4eceb05c0d6241487da67c', 'qMJC2HgxprakgJ35nS2WR4qz7/bQ91FbZMtclQ4vg1XXwmSwf4sCmKdHsZ69ZsfI+HsfdBCsQXRq7ch4WmRlpA==', 'video/x-mpeg', '3521a9ad', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182593, 9804514),
(4, 'drive', 1, 1441182593, 'de5214db', '', '7f3d0ab076b9fbbead304640c8be22af', 'uQi5Rek/ln+I0fLv5VVNeKr9PomUbg6EbpaPcci5JMlf/ShVod0yXy9FLD6sIehode5ipY0l3lt3enie94vdyQ==', 'video/x-mpeg', 'e224e7ed', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182602, 3921826);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'faces', 1, 1441183035, '7f7b5037', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'XlNUSVVar7t2igeKJJ+vwUooML3Rj5+vTUsDe1976AWw3k+eeuZk/XnJf3fdzQDL/JY7SN9fkoXRk8d9MhMzUA==', NULL, 'image/jpeg', 'f45a9102', 'CL36_2nUkAATviz.jpg', 1441183035, 54420),
(6, 'faces', 1, 1441183044, '9f1d2ed5', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'nF+Rta09RwrTlGEq8cnpxsJmdo2mjb7zGc39szRiQT3W9H/bdzF042lYGgZFZMG2wL6Y0Hi9QftlanNjYGVihw==', NULL, 'image/jpeg', '4388c5fd', 'CL36_2nUkAATviz.jpg', 1441183044, 54420),
(7, 'faces', 1, 1441183051, '8323de3b', '', '50d36e33ce1f6d1cfefd3a54203c061d', '5QCwOmL1tJugZqJYQxS84W3AgOtitxbX1p9aHnJUBTvRUvUPGpoJOLlu+2H6/Bjnep/Rb4G9b6yO6bbSlLOBLA==', NULL, 'image/jpeg', '8d153617', 'CL36_2nUkAATviz.jpg', 1441183051, 54420),
(8, 'faces', 1, 1441183053, 'f3970573', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OTXZmajArbOlu3IsLlZPaW4efbJInUOh9EBDo/xjgpeLksNGCO6oSwgK3BcqEKRCCjUap57aZThOG3KJows2ww==', NULL, 'image/jpeg', 'a06c6ad1', '1440690613319_3257.jpg', 1441183053, 246017),
(9, 'faces', 1, 1441183054, '9f413d25', '', 'b69946e35fff6c33d17636829b6c7fe9', 'LZwwOTyUjq2k1q/tPNPnNi8GzICif6nkYy94/y0fkxCcQ6BPIP9hB4Xvi9aS7BDQmewNqlie2xvNMSHSJ5tK5A==', NULL, 'image/jpeg', '4e27d80f', '1500x500.jpg', 1441183054, 101411),
(10, 'faces', 1, 1441183054, '02242222', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'KvqL3i/zn3HbaXl0Je596sVTxSxNTt4Gzq1sRhjCiGW1TKnjsF+shVg9MEdxpjwGGrjHTWfOoyKJaKo4ZdznRg==', NULL, 'image/jpeg', '6296c255', 'CL36_2nUkAATviz.jpg', 1441183054, 54420),
(11, 'faces', 1, 1441183057, 'bdc7b196', '', 'b69946e35fff6c33d17636829b6c7fe9', '1a1KJ/hOfgbBO8If+amueqWYV2vm6H6mQfut6mOpoMU8Q7IN/ki7BqXrCZOtT4KvShi4KQivLd6DkRH7JEaWmA==', NULL, 'image/jpeg', 'c311434d', '1500x500.jpg', 1441183057, 101411),
(12, 'faces', 1, 1441183060, 'd490aa0f', '', 'b69946e35fff6c33d17636829b6c7fe9', 'ejtAXuPKnqy4+Ai53TGDNPhbEeQMeHxNsHyYTh5PJDjVVLh718oaWkTPUN0Q5hSmQgo8x2KYqRE5WSwsAk1QlA==', NULL, 'image/jpeg', '1b399bbb', '1500x500.jpg', 1441183060, 101411),
(13, 'faces', 1, 1441183064, '9d9d07f5', '', 'b69946e35fff6c33d17636829b6c7fe9', 'nfx78XGS0YQ5wimeO+ie8YV5KNR8Bvjy8tfDGXVZeL3xTjl1WWgcaz+6ZtoKnFxVbNlrWjUWsSz9mop0g5CCZw==', NULL, 'image/jpeg', 'c935d3ce', '1500x500.jpg', 1441183064, 101411),
(14, 'faces', 1, 1441183067, 'd137981d', '', 'b69946e35fff6c33d17636829b6c7fe9', 'RXtUvzvs99wKIqxqbPqvPHfAVcO6ADD+osks7pll5vjjXuo9t2UhWPBzCfSmGmVD7dskSSX9WodKQ5aWPQv/Kg==', NULL, 'image/jpeg', '9c4869b9', '1500x500.jpg', 1441183067, 101411),
(15, 'drive', 1, 1441183070, '540470ff', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'Bafk4A14j7L3NBYeF11bNc+mu5bvlqG5psjyZmcMaQbDjoDjk4Ze9BZ/GqsBhUQP2SePU+0bXnVTITRkJlvU6g==', NULL, 'image/jpeg', '87d7ce29', 'CL36_2nUkAATviz.jpg', 1441183070, 54420),
(16, 'drive', 1, 1441183070, '0ac0b586', '', 'd91e809c1152dbeecc0ff9e60278eee2', 'Thr2nQTWPs/LA8p67E6dbU7Xe0831a9SVpRx6LiZBmve+dXYksrZVCOPvopzIv67GfgwkUOFNIQuHPSs79o8jg==', NULL, 'image/jpeg', 'e8266bb1', 'CL36_2nUkAATviz.jpg', 1441183070, 54420),
(17, 'faces', 1, 1441183070, '9a002158', '', 'b69946e35fff6c33d17636829b6c7fe9', '7FE3GCkv3Txh9RF9kapR6FtBms2M8TN6wcu9moCO/9ZRWwG5SQRxMFak0MYb2hkGGcpiutiDYpcI4ZxJQ2c/LQ==', NULL, 'image/jpeg', 'd6e56475', '1500x500.jpg', 1441183070, 101411),
(18, 'drive', 1, 1441183071, 'ece62837', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OI3mYgpHSiSDnqK9U2YrmPGEiF6Fv+oyXSRpS0HTFP+rXsBBCQoaYqWpZ5Lb1lykvBVoD2jc7otsOn6CytArGA==', NULL, 'image/jpeg', 'fce21e37', '1440690613319_3257.jpg', 1441183071, 246017),
(19, 'drive', 1, 1441183071, '3678ec28', '', '3e3f258d756bf1b8dfeea76b61490d8b', 'Mx4g2jnkawEUHn9/7caXxORaJZWM5G8gjB7ThuCsOxT+85NT6tdunhA7DBC0DrPZGfeGYYLJ5CmsO0JWSajJRA==', NULL, 'image/jpeg', 'ae225fe9', '1440690613319_3257.jpg', 1441183071, 246017),
(20, 'drive', 1, 1441183072, '947b369a', '', 'f322d982f6b00c3e546469fb893d312b', 'Bmtl+s+sSJwRUnW+zxgKwFAV7oWL4XyE04nv+r3anhO5I9YYMPpd2pXEAgLIUdGUJTuMgl4ub3x/eJG2TIBWVA==', NULL, 'image/jpeg', 'e03adb6b', '1909298_1474502006103047_649702505_o.jpg', 1441183072, 295131),
(21, 'drive', 1, 1441183073, 'd023675f', '', 'b19cce68ddc0c0bc34772db494234278', 'VQ/shrr+LwbeXcwk7EdrIRygZMvYf25xT1nWHNRx6+JXbnlmAM5LwL/Jh0DMjbjHuU2qlfWhfubgmzZTeE14bQ==', NULL, 'image/jpeg', '7df1e26f', '1909298_1474502006103047_649702505_o.jpg', 1441183073, 295131),
(22, 'faces', 1, 1441183073, 'a41e4855', '', 'b69946e35fff6c33d17636829b6c7fe9', '5BDMvQDEgjI5/dDAc2GwC3E2HxYvg1w3YoPWewAS8uDyrLom6eM2TpPjisUMpwQo4JfnpGaum3iSkVHQkB6L2g==', NULL, 'image/jpeg', '322e17bf', '1500x500.jpg', 1441183073, 101411),
(23, 'drive', 1, 1441183075, '733b3f9e', '', 'f55c976be787b8d4a9afc91e4e1ba63e', '8dabl3NlsZrUPo/jIUJO6Xw3AgjoMVaOsu0F08SciYZnHY3Wkmohp0tpVi5hNIU/ESu2XDGEdZsSN2kKHyaJTQ==', NULL, 'image/jpeg', '999f329e', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 75328),
(24, 'drive', 1, 1441183075, 'a5251c58', '', '0bc94804ea378316e3dbeccaf0b53716', '+vsFEBOG7zTSRNZaAfTUPOlFVtCI/qFizJe5RK6wfPtPPVplf5+usSQjd8bO7CtOW6BqPeK6EX6zJyY/IWMj3g==', NULL, 'image/jpeg', '997478ae', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 28178),
(25, 'drive', 1, 1441183076, '87b1642b', '', 'b69946e35fff6c33d17636829b6c7fe9', '9JkRYCPlGtmTiacjRoawpAksWPKj7fk9SRwLdGcXXTDrpkXIrrBd5pPdCUYM/VRHl3T+xauFlpzW1PMLinW/Tg==', NULL, 'image/jpeg', '25af09f8', '1500x500.jpg', 1441183076, 101411),
(26, 'drive', 1, 1441183076, '1c3f7826', '', '49d9392e6cc8b444d5799abc5d2b3347', '+EYRQR+Cl7lrJTPNcE0LOt+Q1JXZzEm/Z57BTmrtQHHMAALan6g4gH05KQ+tDOZPbu0VtltY8QHvGiACHy5emw==', NULL, 'image/jpeg', 'f47e0c81', '1500x500.jpg', 1441183076, 101411),
(27, 'drive', 1, 1441183077, '8c957bb3', '', '3ba915353c9ec1141db4ade4639d2d09', 'NKdZ/BkR037hdyZatZ7yxBywhbFnl0iKGbQIpVhujTt1Pwl7uvxtsHnAe58IwBABBCj677CM8MLBS4q60nlU+A==', NULL, 'image/jpeg', '47e3399f', '1500x500.jpg', 1441183077, 35991),
(28, 'drive', 1, 1441183077, 'd6d97b41', '', '781d56f8dcb33f904a07c2b0b2b68d5a', 'Vj5fKuQNGGSmDl+8gq8dZI6c94PUCUHoFNlVNRrmLg6sg2sdZnffJormfjH0ZRJCbqfSNw8IiBAkfNj8oKX4Xg==', NULL, 'image/jpeg', '67f5a822', '1500x500.jpg', 1441183077, 11651);

-- --------------------------------------------------------

--
-- Table structure for table `storage_readfile`
--

CREATE TABLE IF NOT EXISTS `storage_readfile` (
  `id` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(2, 'drive', 1, 1441183315, '12655393', '', '54bf075239ef091cd33eded54a766da6', '2Wgk1gYcMn0bKZzgQG6ZAqbBdJSz0qlvhm6+JHXf2kZFZJUZHCpKkxgi0nPVaGsKQ9AJEA7zSa9DT6xF0ipv7A==', 'audio/x-mpeg-4', '1f4bf6ca', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183773, 48873769),
(3, 'drive', 1, 1441183773, '4ed123f0', '', '3e2b285b4479d3525790bc8592fcb2d5', 'lTxnTNPFVt2zql4jC9rhXW6EOX9ee8IS7zhqKhJvl0Iya+VCJiyUrUoncvZp3K4GcCt2tj7YgSlW8tjpRPKZ1g==', 'audio/x-mpeg-4', '9ca0bfec', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183960, 24005656),
(4, 'drive', 1, 1441183960, '0f82c8ef', '', '91f9ec3a914a6213564c2a0db2564387', 'p9iEYH0oEzQgC2apb8OcmBfx/lpRALKq9jrH+TKrcyBZ5+LhDGhGzVffl6CxSRmKXj6261VSKYsBC3FvDMaCCg==', 'audio/x-mpeg-4', '94560fb9', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441184002, 10340185);

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
  `quote` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
  `mode.safe` int(1) DEFAULT '0',
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
  `feed.order` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `country.description` text,
  `live` varchar(50) NOT NULL,
  `live.description` text,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '0',
  `activated.code` char(10) DEFAULT NULL,
  `activated.time` int(11) DEFAULT NULL,
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL,
  `online` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'Lam Hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 0, 0, 1442066180),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '64', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1442062664),
(3, 1441890502, '0236434f', '6dcdec6cd495efac92603381bfa2f812', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '1amHNJuPQWpKm1f9pbxT/S8duiP2G6C2P5StZFQG+iQ=', '', 'Tráº§n DÆ°á»¡ng', 'Tráº§n', '', 'DÆ°á»¡ng', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '1e17e0ee', 0, 0, 0, 1441891790),
(4, 1441892022, '0b78a4bc', 'fbed738d84551196d79ece222cebe8ab', 'trannguyen', 'giccos.inc@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'DfpjMlIj0dArKEB8E8jox7VsBXbb8oQErXUyrFKollU=', '', 'Tran Nguyen', 'Tran', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/trannguyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '4d198899', 0, 0, 0, 1441892183);

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
  `school` varchar(100) DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `description` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182000, 1, 'user', 1),
(2, 1441441375, 2, 'user', 2),
(3, 1441441380, 1, 'user', 2),
(4, 1441441380, 2, 'user', 1),
(5, 1441890524, 3, 'user', 3),
(6, 1441892038, 4, 'user', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
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
  `user.label` char(10) NOT NULL,
  `user.value` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.label`, `user.value`, `status`, `client`) VALUES
(1, 1441182000, 'id', '1', 1, 'ee5504b2'),
(2, 1441190217, 'id', '1', 1, 'ee5504b2'),
(3, 1441348176, 'id', '1', 1, 'ee5504b2'),
(4, 1441367637, 'id', '1', 1, 'ee5504b2'),
(5, 1441439510, 'id', '1', 1, 'ee5504b2'),
(6, 1441441375, 'id', '2', 1, 'ee5504b2'),
(7, 1441453387, 'id', '1', 1, 'ee5504b2'),
(8, 1441479693, 'id', '1', 1, '1a4cb25f'),
(9, 1441479820, 'id', '1', 1, '1a4cb25f'),
(10, 1441480106, 'id', '1', 1, '1a4cb25f'),
(11, 1441521669, 'id', '1', 1, '1a4cb25f'),
(12, 1441522142, 'id', '2', 1, '1a4cb25f'),
(13, 1441540022, 'id', '2', 1, '1a4cb25f'),
(14, 1441631017, 'id', '1', 1, '1a4cb25f'),
(15, 1441700354, 'id', '1', 1, '1a4cb25f'),
(16, 1441711519, 'id', '2', 1, '1a4cb25f'),
(17, 1441795788, 'id', '1', 1, '1a4cb25f'),
(18, 1441796147, 'id', '2', 1, '1a4cb25f'),
(19, 1441873705, 'id', '1', 1, '1a4cb25f'),
(20, 1441890524, 'id', '3', 1, '1a4cb25f'),
(21, 1441892038, 'id', '4', 1, '1a4cb25f'),
(22, 1441892595, 'id', '1', 1, '1a4cb25f'),
(23, 1441896872, 'id', '1', 1, '1a4cb25f'),
(24, 1441897059, 'id', '1', 1, '1a4cb25f'),
(25, 1441897659, 'id', '1', 1, '1a4cb25f'),
(26, 1441977018, 'id', '1', 1, '1a4cb25f'),
(27, 1442048512, 'id', '1', 1, '1a4cb25f'),
(28, 1442048708, 'id', '2', 1, '1a4cb25f'),
(29, 1442059870, 'id', '2', 1, '1a4cb25f'),
(30, 1442060135, 'id', '2', 1, '1a4cb25f'),
(31, 1442060729, 'id', '2', 1, '1a4cb25f'),
(32, 1442060809, 'id', '2', 1, '1a4cb25f');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(1, 0, 1441181951, 1441181995, 'ee5504b2'),
(2, 1, 1441182000, 1441188582, 'ee5504b2'),
(3, 0, 1441190189, 1441190215, 'ee5504b2'),
(4, 1, 1441190217, 1441190300, 'ee5504b2'),
(5, 1, 1441206087, 1441210601, 'ee5504b2'),
(6, 0, 1441348160, 1441348173, 'ee5504b2'),
(7, 1, 1441348176, 1441351343, 'ee5504b2'),
(8, 1, 1441360505, 1441364441, 'ee5504b2'),
(9, 1, 1441365272, 1441367637, 'ee5504b2'),
(10, 0, 1441367630, 1441367637, 'ee5504b2'),
(11, 1, 1441370160, 1441370536, 'ee5504b2'),
(12, 1, 1441385718, 1441386020, 'ee5504b2'),
(13, 0, 1441434119, 1441434145, 'ee5504b2'),
(14, 0, 1441439482, 1441439507, 'ee5504b2'),
(15, 1, 1441439510, 1441441557, 'ee5504b2'),
(16, 0, 1441440379, 1441446690, 'ee5504b2'),
(17, 2, 1441441375, 1441441512, 'ee5504b2'),
(18, 0, 1441453375, 1441453382, 'ee5504b2'),
(19, 1, 1441453387, 1441453392, 'ee5504b2'),
(20, 1, 1441458509, 1441460379, 'ee5504b2'),
(21, 1, 1441460386, 1441460840, '7c514c94'),
(22, 1, 1441460854, 1441466917, '1a4cb25f'),
(23, 1, 1441467459, 1441471728, '1a4cb25f'),
(24, 1, 1441475501, 1441480797, '1a4cb25f'),
(25, 0, 1441479687, 1441480101, '1a4cb25f'),
(26, 0, 1441521144, 1441521669, '1a4cb25f'),
(27, 1, 1441521669, 1441529812, '1a4cb25f'),
(28, 0, 1441522113, 1441522139, '1a4cb25f'),
(29, 2, 1441522142, 1441522400, '1a4cb25f'),
(30, 1, 1441538468, 1441543677, '1a4cb25f'),
(31, 0, 1441540015, 1441540021, '1a4cb25f'),
(32, 2, 1441540022, 1441540055, '1a4cb25f'),
(33, 0, 1441631013, 1441631013, '1a4cb25f'),
(34, 1, 1441631017, 1441632835, '1a4cb25f'),
(35, 0, 1441700332, 1441700352, '1a4cb25f'),
(36, 1, 1441700355, 1441704088, '1a4cb25f'),
(37, 1, 1441707322, 1441712945, '1a4cb25f'),
(38, 0, 1441711508, 1441711514, '1a4cb25f'),
(39, 2, 1441711519, 1441711808, '1a4cb25f'),
(40, 1, 1441714701, 1441714734, '1a4cb25f'),
(41, 0, 1441714960, 1441717532, '1a4cb25f'),
(42, 0, 1441778894, 1441779325, '1a4cb25f'),
(43, 0, 1441780191, 1441780333, '1a4cb25f'),
(44, 0, 1441795783, 1441796146, '1a4cb25f'),
(45, 1, 1441795788, 1441798338, '1a4cb25f'),
(46, 2, 1441796147, 1441797754, '1a4cb25f'),
(47, 1, 1441804581, 1441806674, '1a4cb25f'),
(48, 0, 1441873688, 1441873701, '1a4cb25f'),
(49, 1, 1441873705, 1441887394, '1a4cb25f'),
(50, 0, 1441890470, 1441890645, '1a4cb25f'),
(51, 3, 1441890524, 1441891790, '1a4cb25f'),
(52, 0, 1441891797, 1441892594, '1a4cb25f'),
(53, 4, 1441892039, 1441892183, '1a4cb25f'),
(54, 1, 1441892595, 1441892808, '1a4cb25f'),
(55, 1, 1441893240, 1441893269, '1a4cb25f'),
(56, 1, 1441893738, 1441897800, '1a4cb25f'),
(57, 0, 1441896867, 1441897054, '1a4cb25f'),
(58, 0, 1441897648, 1441897655, '1a4cb25f'),
(59, 0, 1441977008, 1441977014, '1a4cb25f'),
(60, 1, 1441977018, 1441980682, '1a4cb25f'),
(61, 0, 1442048505, 1442048702, '1a4cb25f'),
(62, 1, 1442048512, 1442049786, '1a4cb25f'),
(63, 2, 1442048708, 1442051860, '1a4cb25f'),
(64, 1, 1442051170, 1442051979, '1a4cb25f'),
(65, 1, 1442052643, 1442057041, '1a4cb25f'),
(66, 1, 1442057496, 1442059436, '1a4cb25f'),
(67, 1, 1442059744, 1442064203, '1a4cb25f'),
(68, 0, 1442059855, 1442060130, '1a4cb25f'),
(69, 2, 1442059871, 1442062664, '1a4cb25f'),
(70, 0, 1442060724, 1442060804, '1a4cb25f'),
(71, 1, 1442065207, 1442066180, '1a4cb25f');

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
  `thumbnail` varchar(40) DEFAULT NULL,
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
-- Table structure for table `videos_favorite`
--

CREATE TABLE IF NOT EXISTS `videos_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
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
  `file.vga` varchar(50) NOT NULL,
  `file.qvga` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.vga` varchar(40) NOT NULL,
  `secret.qvga` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.vga` char(10) NOT NULL,
  `path.qvga` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.vga`, `file.qvga`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', '', '', 4, 4, 4, '9453472a838aa76d4afcae64086aebef', '0', '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
(1, 'user', 1, '65926ca1', '1338470cf917afeaa1e8d80353b33689', 1441183315, 'khÃ¡nh phÆ°Æ¡ng', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_pointtag`
--

CREATE TABLE IF NOT EXISTS `videos_pointtag` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` float(8,2) NOT NULL,
  `length` float(8,2) NOT NULL,
  `sticker` varchar(40) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 5.00, '', 'comment in videos'),
(2, 1441980392, 1, 'user', 1, 3.58, 5.00, '', 'ná»¯ chÃ­nh Ä‘áº¹p quÃ¡ cÆ¡ :D');

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
-- Indexes for table `faces_id`
--
ALTER TABLE `faces_id`
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
-- Indexes for table `library_cited`
--
ALTER TABLE `library_cited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_voice`
--
ALTER TABLE `library_voice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_words`
--
ALTER TABLE `library_words`
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
-- Indexes for table `mailer_id`
--
ALTER TABLE `mailer_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
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
-- Indexes for table `pages_block`
--
ALTER TABLE `pages_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_follow`
--
ALTER TABLE `pages_follow`
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
-- Indexes for table `process_id`
--
ALTER TABLE `process_id`
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
-- Indexes for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_comment`
--
ALTER TABLE `sites_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
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
-- Indexes for table `sites_rate`
--
ALTER TABLE `sites_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_scan`
--
ALTER TABLE `sites_scan`
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
-- Indexes for table `status_actions`
--
ALTER TABLE `status_actions`
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
-- Indexes for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
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
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
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
-- Indexes for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
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
-- Indexes for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faces_id`
--
ALTER TABLE `faces_id`
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
-- AUTO_INCREMENT for table `languages_list`
--
ALTER TABLE `languages_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=859;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mailer_id`
--
ALTER TABLE `mailer_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=506;
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
-- AUTO_INCREMENT for table `messages_hide`
--
ALTER TABLE `messages_hide`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT for table `pages_block`
--
ALTER TABLE `pages_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_follow`
--
ALTER TABLE `pages_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=260;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `process_id`
--
ALTER TABLE `process_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sites_comment`
--
ALTER TABLE `sites_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sites_rate`
--
ALTER TABLE `sites_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `status_actions`
--
ALTER TABLE `status_actions`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_music`
--
ALTER TABLE `status_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status_places`
--
ALTER TABLE `status_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
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
-- AUTO_INCREMENT for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
