-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2015 at 01:49 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=latin1;

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
(848, 'en', 'following', 'following', 'false');

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
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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
(11, 1441477168, 'user', 1, 'follow', 'status', '5', '', ''),
(12, 1441477168, 'user', 1, 'add', '', '', 'status', '5'),
(13, 1441540055, 'user', 2, 'favorite', 'status', '4', '', ''),
(18, 1441540054, 'user', 2, 'unfavorite', 'status', '4', '', ''),
(19, 1441711567, 'user', 2, 'follow', 'status', '6', '', ''),
(20, 1441711567, 'user', 2, 'add', '', '', 'status', '6'),
(21, 1441712383, 'user', 1, 'favorite', 'status', '6', '', ''),
(22, 1441712385, 'user', 1, 'unfavorite', 'status', '6', '', ''),
(23, 1441712425, 'user', 1, 'favorite', 'status', '5', '', ''),
(24, 1441712672, 'user', 1, 'favorite', 'status', '3', '', ''),
(26, 1441712926, 'user', 1, 'favorite', 'status', '2', '', '');

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
(6, 1441460850, 1441631009, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
(12, 1441441369, 2, 'ec37d8e1', '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');

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
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif'),
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif'),
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif'),
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif'),
(444, '8e9436ec', '57c6f58f56a7d2ce5c11bcc80ec08bef', 'T-Mobile', '304 merced mall, Merced, CA 95348, United States', '37.320641,-120.482665', 37.320641, -120.482666, 'electronics_store', 'maps/raw/places/staticmap/location=37.320641,-120.482665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.320641,-120.482665&format=gif'),
(445, '94e44c8b', '2f1ef85ef7b883e18fa4ffff3e971623', 'T-Mobile', '2800 Independence Dr, Livermore, CA 94551, United States', '37.702952,-121.812573', 37.702953, -121.812576, 'store', 'maps/raw/places/staticmap/location=37.702952,-121.812573&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.702952,-121.812573&format=gif'),
(446, '4174cb86', '2ccaa743dd9b1cfc08f39ab2995a0f0a', 'T-Mobile', '1709 Automation Pkwy, San Jose, CA 95131, United States', '37.390678,-121.884723', 37.390678, -121.884720, 'store', 'maps/raw/places/staticmap/location=37.390678,-121.884723&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.390678,-121.884723&format=gif'),
(447, '676a8b7c', '279c7c744f7723bc3db215eb22016746', 'T-Mobile', '232 S Garfield Ave, Monterey Park, CA 91754, United States', '34.060276,-118.122601', 34.060276, -118.122604, 'store', 'maps/raw/places/staticmap/location=34.060276,-118.122601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.060276,-118.122601&format=gif'),
(448, 'e7cc414e', 'd7783054b54662ae46cbecda015b0ccb', 'T-Mobile', '3100 East Imperial Highway #1202, Lynwood, CA 90262, United States', '33.929169,-118.215504', 33.929169, -118.215508, 'store', 'maps/raw/places/staticmap/location=33.929169,-118.215504&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.929169,-118.215504&format=gif'),
(449, '82eae489', 'eb76f7325c7c9459e754fb07c69495bd', 'T-Mobile Los Angeles', '105 W Century Blvd #101, Los Angeles, CA 90003, United States', '33.945752,-118.274353', 33.945751, -118.274353, 'store', 'maps/raw/places/staticmap/location=33.945752,-118.274353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.945752,-118.274353&format=gif'),
(450, '368d120c', '32758e573fd615118d8f898704804d8a', 'T-Mobile Simply Prepaid', '15126 Paramount Blvd, Paramount, CA 90723, United States', '33.895331,-118.159604', 33.895332, -118.159607, 'store', 'maps/raw/places/staticmap/location=33.895331,-118.159604&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.895331,-118.159604&format=gif'),
(451, '4a9fce37', '63a283e6d731aa86c206f636ed68810d', 'Casino Cellular', '2026 W Olympic Blvd, Los Angeles, CA 90006, United States', '34.051463,-118.27974', 34.051464, -118.279739, 'store', 'maps/raw/places/staticmap/location=34.051463,-118.27974&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.051463,-118.27974&format=gif'),
(452, '5c9ddbba', '8b7c70b8e8f9c6c28cf623a0783c1cf6', 'Law Offices of Patent Attorney William Mansfield', 'Winchester, MA, United States', '42.101483,-72.589811', 42.101482, -72.589813, 'lawyer', 'maps/raw/places/staticmap/location=42.101483,-72.589811&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.101483,-72.589811&format=gif'),
(453, '698464dd', 'e7082e759a5a09a97064466764387993', 'Twitter', '249 W 17th St, New York, NY 10011, United States', '40.741474,-73.99985', 40.741474, -73.999847, 'establishment', 'maps/raw/places/staticmap/location=40.741474,-73.99985&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.741474,-73.99985&format=gif'),
(454, '46ae68af', '9dc62e02b7462c78431abcab59afb5d2', 'Westborough MBTA Parking', 'Smith Pkwy, Westborough, MA 01581, United States', '42.269972,-71.647496', 42.269974, -71.647499, 'parking', 'maps/raw/places/staticmap/location=42.269972,-71.647496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.269972,-71.647496&format=gif'),
(455, '33964f31', '8ec23e1de6d452abeb466bb33da0820b', 'MBTA Commuter Rail Littleton Station', '261 Foster St, Littleton, MA 01460, United States', '42.519236,-71.502546', 42.519238, -71.502548, 'establishment', 'maps/raw/places/staticmap/location=42.519236,-71.502546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.519236,-71.502546&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(456, 'ef2146b3', '04052bd617aebe425d629cd296f18416', 'West Natick Train Station', '249 W Central St, Natick, MA 01760, United States', '42.283098,-71.391789', 42.283096, -71.391792, 'train_station', 'maps/raw/places/staticmap/location=42.283098,-71.391789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.283098,-71.391789&format=gif'),
(457, '9ab6ffea', '934230f0ba11c7863e9d591084a15f3f', 'MBTA Attleboro Station', '75 S Main St, Attleboro, MA 02703, United States', '41.941956,-71.284967', 41.941956, -71.284966, 'establishment', 'maps/raw/places/staticmap/location=41.941956,-71.284967&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.941956,-71.284967&format=gif'),
(458, '09e5e151', '7321bbb348ec702562825eb03dfc181d', 'MBTA Commuter Rail Parking Lot', '231 Centre Ave, Abington, MA 02351, United States', '42.106644,-70.934804', 42.106644, -70.934807, 'parking', 'maps/raw/places/staticmap/location=42.106644,-70.934804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.106644,-70.934804&format=gif'),
(459, '18ab4663', '43b0845fd16485f018f9446ee27d5ff6', 'T-Mobile', '1624 Donald Lee Hollowell Parkway Northwest, Atlanta, GA 30318, United States', '33.771923,-84.441318', 33.771923, -84.441315, 'store', 'maps/raw/places/staticmap/location=33.771923,-84.441318&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.771923,-84.441318&format=gif'),
(460, '3384f5c0', '401f2e99260af365c3e2cddb75e002c4', 'T-Mobile', '137 Hester St, New York, NY 10013, United States', '40.717146,-73.994692', 40.717148, -73.994690, 'store', 'maps/raw/places/staticmap/location=40.717146,-73.994692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.717146,-73.994692&format=gif'),
(461, '84eefd4b', '624c13f196c433a508038a9d06639ee2', 'T-Mobile Authorized Dealer', '6149 Old National Highway, Atlanta, GA 30349, United States', '33.586766,-84.472181', 33.586765, -84.472183, 'store', 'maps/raw/places/staticmap/location=33.586766,-84.472181&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.586766,-84.472181&format=gif'),
(462, '66e1b471', '555ac7b65bdb0e53785e4e3a3282da79', 'T-Mobile', '3951 W Ashley Cir, Charleston, SC 29414, United States', '32.821599,-80.08132', 32.821598, -80.081322, 'store', 'maps/raw/places/staticmap/location=32.821599,-80.08132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.821599,-80.08132&format=gif'),
(463, '175aa42a', '15d55a610d9c54ac644722cc9ab7e9dd', 'T-Mobile', '1900 Cunningham Dr, Hampton, VA 23666, United States', '37.040756,-76.378973', 37.040756, -76.378975, 'store', 'maps/raw/places/staticmap/location=37.040756,-76.378973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.040756,-76.378973&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

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
(98, 'regex_hashtag', 'en', '/((^|\\s)#([a-zA-Z0-9\\_]+)($|\\s))/'),
(99, 'regex_usertag', 'en', '/((^|\\s)@([a-zA-Z0-9\\_]+)($|\\s))/'),
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
(254, 'weather_cache_timeout', 'en', '10800');

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
('s1KSmiOMeV3OHMoKorZwaz147PjhIkfrIu8Q6hb,KL1', 1441712945, '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', '5671af6114c9a1e6eae78168704a3b1e');

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
  `public` int(11) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `public`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, 1, '4c32d620', 'd9992d2be4a14f6f783e75ba00acd488', 1441182140, 1441182140, 0, 1, 'user', 1, 4, 3, 3, 'status', '9uqB0rH5kd4IBJ5ptLir8TubCQWhlnh9OUjXuYy16/c=', 0, 0, 0, 0, 0, 0),
(2, 1, '33d8a653', '50958d06f698b081a7e1ff9588f5e672', 1441182581, 1441182581, 0, 1, 'user', 1, 4, 3, 3, 'music', 'BytrpEuLSZLrBO/n6LkS3yrGLTaYfpxKeRvbQdB7oM0=', 0, 0, 0, 0, 0, 0),
(3, 1, '28d3a2da', 'e6feab677c85bc700a82cb9f1fefdc7b', 1441183070, 1441183070, 0, 1, 'user', 1, 4, 3, 3, 'photos', 'TSapcav1HSAKSOSKAK19ONFgP+WLtzdyfkCo+7L2DFNgBOTtxkwdScnLg+0aPA+TD9h5Dfp10c1W7KOUy6VpoxOFmK6fQXy2AFZzFkj4fXlkfgCEWy4FYt8FkGufnrXpbpzSYgiC45DJPo61Bo1wJwyBKA/63QscSdLoDC4n7h6KirpD/bFPq3HoDgpfZMelQBqc76S+C2tpPKqE0vuEYC5dXu5Q0PXmu6aeXaJz/hThPd3jcVuWmfnhTNSlh9R8F5/TE6oXP8KVhjpLZt1yDASlm60BhllXMg1nzAcfigE=', 0, 0, 0, 0, 0, 0),
(4, 1, '66443ac1', '2c36326e2cd9bad1547c07b74c3d16a6', 1441183314, 1441183314, 0, 1, 'user', 1, 4, 3, 3, 'videos', 'O1ywWonLhfGda5JhUz33gADLK3t94mVYAaw1lLpf/Eo=', 0, 0, 0, 0, 0, 0),
(5, 1, 'a2374f95', 'd30c9d53bd0d6ab960b2ec8974c729ce', 1441477168, 1441477168, 0, 1, 'user', 1, 4, 3, 3, 'status', 'cEgJg+tmTbFAp2d6jUWzCdcjuM2aCisNjyEAAOm9GrGOcRAQEi6QY4KWadqhTyLR2ZcT9J/TTreXHdG2ClYmGA==', 0, 0, 0, 0, 1, 0),
(6, 1, '4a21d3af', '42874a9ab645d7a4eeef2edf6056f399', 1441711567, 1441711567, 0, 2, 'user', 2, 4, 3, 3, 'status', 'jJO73oXwUBaXjSG8BsByrm9Quq1Rg0lNQCRu2Y8hUzQ=', 0, 0, 0, 0, 0, 0);

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
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `author` char(10) DEFAULT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'status', 3, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', ''),
(2, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'comment', 1, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', ''),
(3, '2a52fe3e', 'c4f4bf297e38c9e8217e942da2ad9159', 1441712504, 'status', 3, 1, 'user', 1, 0, 'SCA9qdGPndwci8ljJ+FaC1vu1T3EeAu8pXAXSIhA9uU=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES
(2, 1441529806, 3, 1, 'user'),
(3, 1441540055, 4, 2, 'user'),
(5, 1441712425, 5, 1, 'user'),
(6, 1441712484, 4, 1, 'user'),
(8, 1441712926, 2, 1, 'user');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182140, 1, 'user', 1),
(2, 1441182581, 2, 'user', 1),
(3, 1441183070, 3, 'user', 1),
(4, 1441183314, 4, 'user', 1),
(5, 1441477168, 5, 'user', 1),
(6, 1441711567, 6, 'user', 2);

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
  `status.id` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'lam hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 0, 0, 1441712945),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'giccos.inc@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1441711808);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182000, 1, 'user', 1),
(2, 1441441375, 2, 'user', 2),
(3, 1441441380, 1, 'user', 2),
(4, 1441441380, 2, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
(16, 1441711519, 'id', '2', 1, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

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
(39, 2, 1441711519, 1441711808, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 5.00, '', 'comment in videos');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=849;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=464;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
