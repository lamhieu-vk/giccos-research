<?php
# Verify.
if (!defined("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa")) {
    die(header('HTTP/1.0 404 Not Found'));
}else {
	@define("7c9a87aba3d96d2dc3edc45da062ce72", true);
}
# Config.
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
require_once ("class/faces.php");
$_faces = new faces;
require_once ("class/library.php");
$_library = new library;
require_once ("class/antivirus.php");
$_antivirus = new antivirus;
# Get default values.
$_client->token();
$_client->getHTTP();
$_user->setup();
//.
$userReloadProfile = $_user->profile(array("action" => "get", "rows" => ["*"], "label" => "id", "value" => $_SESSION["user"]['id'], "limit" => "LIMIT 1"));
if (isset($userReloadProfile['return'], $userReloadProfile['data'], $userReloadProfile['data'][0]) && $userReloadProfile['return'] == true) {
	$userModeArr = array(
		"login" => true,
		"mode" => array(
			"type" => "user",
			"id" => $userReloadProfile['data'][0]['id']
		),
		"online" => time()
	);
	$_SESSION["user"] = array_merge($userReloadProfile['data'][0], $userModeArr);
}
//.
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
	//. $_user->reloadProfile($_SESSION["user"]['id']);
	$g_client = $_SESSION["client"];
	$g_user = $_SESSION["user"];
}else {
	// Action when error.
	die();
}
# .
if (!isset($g_client['token']) || $g_client['token'] != $_client->client(true)) {
	$getClientID = $_client->logsClient(array("action" => "add"));
	if (isset($getClientID['return'], $getClientID['data'], $getClientID['data']['token']) && $getClientID['return'] == true) {
		$_SESSION["client"]['token'] = $getClientID['data']['token'];
	}else if (isset($getClientID['return'], $getClientID['reason']) && $getClientID['return'] == false) {
		//.
	}else {
		//.
	}
}
# Set modes.
if (!isset($g_client['mode']) || !isset($g_client['mode']['encryption'])) {
	//. default
	$_SESSION["client"]['mode'] = $g_client['mode'] = array(
		"encryption" => true
	);
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
if (isset($g_client['token']['cache']['browser'])) {
	setcookie("gCID", $g_client['token']['cache']['browser'], 0, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
}
//print_r($_SESSION["client"]['language']);
//print_r($_SESSION["security"]['visits']);
?>