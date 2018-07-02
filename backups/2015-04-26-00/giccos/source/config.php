<?php
# Check key.
if (!defined("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa")) {
    die(header('HTTP/1.0 404 Not Found'));
}
# Config.
@define("7c9a87aba3d96d2dc3edc45da062ce72", true);
require_once ("class/session.php");
$_session = new session;
$_session->setup("gSID", false);
if ($_session->expired() == true) {
	die(header("Location: ".$_SERVER['REQUEST_URI']));
}
require_once ("class/db.php");
$_db = new db;
$_db->connect("beta", array("host" => "localhost", "user" => "root", "pass" => "", "name" => "giccos"));
require_once ("class/parameter.php");
$_parameter = new parameter;
$_parameter->setup('en', true); // false.
require_once ("class/language.php");
$_language = new language;
$_language->getData('en');
require_once ("class/client.php");
$_client = new client;
require_once ("class/giccos.php");
$_giccos = new giccos;
require_once ("class/tool.php");
$_tool = new tool;
require_once ("class/user.php");
$_user = new user;
require_once ("class/logs.php");
$_logs = new logs;
require_once ("class/maps.php");
$_maps = new maps;
require_once ("class/storage.php");
$_storage = new storage;
require_once ("class/media.php");
$_media = new media;
require_once ("class/sites.php");
$_sites = new sites;
require_once ("class/analysis.php");
$_analysis = new analysis;
# Get default values.
$_giccos->clientId();
$_giccos->token();
$_giccos->getHTTP();
$_user->setup();
# Set vars.
if (!isset($_SESSION["security"], $_SESSION["security"])) {
	$_SESSION["security"] = array();
	if (!isset($_SESSION["security"]['firewall'])) {
		$_SESSION["security"]['firewall'] = array();
		$_SESSION["security"]['firewall']['status'] = false;
	}
}
if (isset($_SESSION["client"], $_SESSION["user"])) {
	if (isset($_SESSION["user"]['login'], $_SESSION["user"]['id']) && $_SESSION["user"]['login'] == true) {
		if (isset($_SESSION["user"]['getTime']) && $_SESSION["user"]['getTime'] + 3600 > $_tool->timeNow()) {
			//.
		}
		if (isset($_SESSION["user"]['id'])) {
			if (isset($_SESSION["user"]['suggest']['weather'])) {
				$session_UserSuggestWeather = $_SESSION["user"]['suggest']['weather'];
			}
			if ((!isset($session_UserSuggestWeather['reopen']) || $session_UserSuggestWeather['reopen'] < $_tool->timeNow()) && (!isset($session_UserSuggestWeather['data']) || (isset($session_UserSuggestWeather['getTime']) && $session_UserSuggestWeather['getTime'] + $_parameter->get('suggest_weather_reload') < $_tool->timeNow()))) {
				$session_UserSuggestWeather = $userGet['weather'] = array();
				$userGet['suggest']['weather'] = $_user->suggest(array("id"=> $_SESSION["user"]['id'], "type" => "weather"));
				if (isset($userGet['suggest']['weather']['return'])) {
					if ($userGet['suggest']['weather']['return'] == true) {
						$getWeatherError = false;
						$session_UserSuggestWeather['getTime'] = $_tool->timeNow();
						$session_UserSuggestWeather['data'] = $userGet['suggest']['weather']['data'];
						if (isset($session_UserSuggestWeather['count'])) {
							unset($session_UserSuggestWeather['count']);
						}
						if (isset($session_UserSuggestWeather['reopen'])) {
							unset($session_UserSuggestWeather['reopen']);
						}
					}else {
						$getWeatherError = true;
					}
				}else {
					$getWeatherError = true;
				}
				if (isset($getWeatherError) && $getWeatherError == false) {
					if (isset($session_UserSuggestWeather['count'])) {
						$session_UserSuggestWeather['count']++;
					}else {
						$session_UserSuggestWeather['count'] = 1;
					}
					$getWeatherErrorCount = $session_UserSuggestWeather['count'];
					if ($getWeatherErrorCount == 3) {
						if (isset($session_UserSuggestWeather['getTime'], $session_UserSuggestWeather['data'])) {
							$session_UserSuggestWeather['getTime'] = $_tool->timeNow() - $_parameter->get('suggest_weather_reopen');
						}else {
							$session_UserSuggestWeather['reopen'] = $_tool->timeNow() + $_parameter->get('suggest_weather_reopen');
						}
					}
				}
				$_SESSION["user"]['suggest']['weather'] = $session_UserSuggestWeather;
			}
			if (isset($_SESSION["user"]['suggest']['guys'])) {
				$session_UserSuggestGuys = $_SESSION["user"]['suggest']['guys'];
			}
			if ((!isset($session_UserSuggestGuys['reopen']) || $session_UserSuggestGuys['reopen'] < $_tool->timeNow()) && (!isset($session_UserSuggestGuys['data']) || (isset($session_UserSuggestGuys['getTime']) && $session_UserSuggestGuys['getTime'] + $_parameter->get('suggest_guys_reload') < $_tool->timeNow()))) {
				$session_UserSuggestGuys = $userGet['guys'] = array();
				$userGet['suggest']['guys'] = $_user->suggest(array("id"=> $_SESSION["user"]['id'], "type" => "guys"));
				if (isset($userGet['suggest']['guys']['return'])) {
					if ($userGet['suggest']['guys']['return'] == true) {
						$getGuysError = false;
						$session_UserSuggestGuys['getTime'] = $_tool->timeNow();
						$session_UserSuggestGuys['data'] = $userGet['suggest']['guys']['data'];
						if (isset($session_UserSuggestGuys['count'])) {
							unset($session_UserSuggestGuys['count']);
						}
						if (isset($session_UserSuggestGuys['reopen'])) {
							unset($session_UserSuggestGuys['reopen']);
						}
					}else {
						$getGuysError = true;
					}
				}else {
					$getGuysError = true;
				}
				if (isset($getGuysError) && $getGuysError == false) {
					if (isset($session_UserSuggestGuys['count'])) {
						$session_UserSuggestGuys['count']++;
					}else {
						$session_UserSuggestGuys['count'] = 1;
					}
					$getGuysErrorCount = $session_UserSuggestGuys['count'];
					if ($getGuysErrorCount == 3) {
						if (isset($session_UserSuggestGuys['getTime'], $session_UserSuggestGuys['data'])) {
							$session_UserSuggestGuys['getTime'] = $_tool->timeNow() - $_parameter->get('suggest_guys_reopen');
						}else {
							$session_UserSuggestGuys['reopen'] = $_tool->timeNow() + $_parameter->get('suggest_guys_reopen');
						}
					}
				}
				$_SESSION["user"]['suggest']['guys'] = $session_UserSuggestGuys;
			}
			if (isset($_SESSION["user"]['suggest']['news'])) {
				$session_UserSuggestNews = $_SESSION["user"]['suggest']['news'];
			}
			if ((!isset($session_UserSuggestNews['reopen']) || $session_UserSuggestNews['reopen'] < $_tool->timeNow()) && (!isset($_SESSION["user"]['suggest']['news']['data']) || (isset($_SESSION["user"]['suggest']['news']['getTime']) && $_SESSION["user"]['suggest']['news']['getTime'] + $_parameter->get('suggest_news_reload') < $_tool->timeNow()))) {
				$session_UserSuggestNews = $userGet['news'] = array();
				$userGet['suggest']['news'] = $_user->suggest(array("id"=> $_SESSION["user"]['id'], "type" => "news"));
				if (isset($userGet['suggest']['news']['return'])) {
					if ($userGet['suggest']['news']['return'] == true) {
						$getNewsError = false;
						$session_UserSuggestNews['getTime'] = $_tool->timeNow();
						$session_UserSuggestNews['data'] = $userGet['suggest']['news']['data'];
						if (isset($session_UserSuggestNews['count'])) {
							unset($session_UserSuggestNews['count']);
						}
						if (isset($session_UserSuggestNews['reopen'])) {
							unset($session_UserSuggestNews['reopen']);
						}
					}else {
						$getNewsError = true;
					}
				}else {
					$getNewsError = true;
				}
				if (isset($getNewsError) && $getNewsError == false) {
					if (isset($session_UserSuggestNews['count'])) {
						$session_UserSuggestNews['count']++;
					}else {
						$session_UserSuggestNews['count'] = 1;
					}
					$getNewsErrorCount = $session_UserSuggestNews['count'];
					if ($getNewsErrorCount == 3) {
						if (isset($session_UserSuggestNews['getTime'], $session_UserSuggestNews['data'])) {
							$session_UserSuggestNews['getTime'] = $_tool->timeNow() - $_parameter->get('suggest_news_reopen');
						}else {
							$session_UserSuggestNews['reopen'] = $_tool->timeNow() + $_parameter->get('suggest_news_reopen');
						}
					}
				}
				$_SESSION["user"]['suggest']['news'] = $session_UserSuggestNews;
			}
			if (!isset($_SESSION["user"]['guide']['data'], $_SESSION["user"]['guide']['getTime'])) {
				$_SESSION["user"]['guide'] = $userGet['guide'] = array();
				$userGet['guide'] = $_user->guide(array("id"=> $_SESSION["user"]['id'], "type" => "get"));
				if ($userGet['guide']['return'] == true) {
					$_SESSION["user"]['guide']['getTime'] = $_tool->timeNow();
					$_SESSION["user"]['guide']['data'] = $userGet['guide']['data'];
				}
			}
		}
		require_once ("class/wall.php");
		$_wall = new wall;
		require_once ("class/messages.php");
		$_messages = new messages;
		require_once ("class/feed.php");
		$_feed = new feed;
		require_once ("class/photosEditor.php");
	}
	if (!isset($_SESSION["browser"])) {
		$g_browser = $_SESSION["browser"] = $_client->browser();
	}else {
		$g_browser = $_SESSION["browser"];
	}
	if (!isset($_SESSION["cache"])) {
		$g_cache = $_SESSION["cache"] = array();
	}else {
		$g_cache = $_SESSION["cache"];
	}
	$g_client = $_SESSION["client"];
	$g_user = $_SESSION["user"];
}else {
	// Action when error.
	die();
}
# .
if (!isset($g_client['timezone'])) {
	if (isset($g_user['timezone']) && $g_user['timezone'] != NULL) {
		$timezone = $g_user['timezone'];
	}else {
		$timezone = $_parameter->get('user_timezone.default');
	}
	$_SESSION["client"]['timezone'] = $timezone;
	$g_client['timezone'] = $timezone;
}
date_default_timezone_set($g_client['timezone']);
if (isset($g_client['language']['code'])) {
	if ($g_client['language']['code'] != "en") {
		$_parameter->setup($_SESSION["client"]['language']['code'], false);
	}
}
//print_r($_SESSION["user"]['suggest']);
//print_r($_SESSION["client"]['language']);
//print_r($_SESSION["security"]['visits']);
?>