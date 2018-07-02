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
require_once ("class/ip.php");
$_ip = new ip;
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
require_once ("class/mailer.php");
$_mailer = new mailer;
require_once ("class/videos.php");
$_videos = new videos;
# Get default values.
$_client->token();
$_client->getHTTP();
$_user->setup();
//.
$userReloadProfile = $_user->profile(array("action" => "get", "rows" => ["*"], "label" => "id", "value" => $_SESSION["user"]['id'], "limit" => "LIMIT 1"));
if (isset($userReloadProfile['return'], $userReloadProfile['data'], $userReloadProfile['data'][0]) && $userReloadProfile['return'] == true) {
	$_SESSION["user"] = array_merge($_SESSION["user"], $userReloadProfile['data'][0]);
	$_SESSION["user"]['login'] = true;
	$_SESSION["user"]['online'] = time();
	$_SESSION["user"]['mode']['type'] = "user";
	$_SESSION["user"]['mode']['id'] = $userReloadProfile['data'][0]['id'];
	/*
	$userModeArr = array(
		"login" => true,
		"online" => time()
	);
	array_push($_SESSION["user"], array_merge($userReloadProfile['data'][0], $userModeArr));
	$_SESSION["user"]['mode']['type'] = "user";
	$_SESSION["user"]['mode']['id'] = $userReloadProfile['data'][0]['id'];
	*/
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
if ((isset($g_user['login']) && $g_user['login'] == true) && ((isset($g_client['location'], $g_client['location']['reset']) && $g_client['location']['reset'] == true) || (!isset($g_client['location']) || !is_array($g_client['location'])))) {
	$g_client['location'] = array();
}
if ((isset($g_user['login']) && $g_user['login'] == true) && ((isset($g_client['location'], $g_client['location']['reset']) && $g_client['location']['reset'] == true) || (!isset($g_client['location']['expires']) || (isset($g_client['location']['expires']) && $g_client['location']['expires'] < time())))) {
	$oldClientLocation = $g_client['location'];
	$statusPlacesRequest = "SELECT `time`, `value` FROM `status_places` WHERE `time` + '".$_parameter->get('client_location_timeout')."' > '".time()."' AND `inside.type` = 'status' AND `inside.id` IN (SELECT `id` FROM `status` WHERE `user.id` = '".$g_user['id']."') ORDER BY `id` DESC LIMIT 1;";
	$statusPlacesQuery = mysqli_query($_db->port('beta'), $statusPlacesRequest);
	if (!$statusPlacesQuery) {
		//.
	}else {
		if (mysqli_num_rows($statusPlacesQuery) > 0) {
			$statusPlaces = mysqli_fetch_assoc($statusPlacesQuery);
			$placesLocation = $statusPlaces['value'];
		}
	}
	if ((isset($g_user['live']) && is_string($g_user['live'])) && (!isset($placesLocation) || $placesLocation == null)) {
		$placesLocation = $g_user['live'];
	}
	if (count($g_client['location']) == 0) {
		if (isset($placesLocation) && (is_string($placesLocation) || is_numeric($placesLocation))) {
			if (is_numeric($placesLocation)) {
				$getPlaces = $_maps->places(array("guy" => $g_user['mode'], "action" => "get", "label" => "id", "value" => $placesLocation, "limit" => "LIMIT 1"));
				if (isset($getPlaces, $getPlaces['return'], $getPlaces['data'], $getPlaces['data'][0]) && $getPlaces['return'] == true) {
					$dataMapsPlaces = $getPlaces['data'][0];
					$g_client['location'] = array();
					$g_client['location']['expires'] = time() + $_parameter->get('client_location_timeout');
					if (isset($dataMapsPlaces['name'])) {
						$g_client['location']['name'] = $dataMapsPlaces['name'];
					}
					if (isset($dataMapsPlaces['address'])) {
						$g_client['location']['address'] = $dataMapsPlaces['address'];
					}
					if (isset($dataMapsPlaces['country'])) {
						$g_client['location']['country'] = $dataMapsPlaces['country'];
					}
					if (isset($dataMapsPlaces['coordinates'])) {
						$g_client['location']['coordinates'] = $dataMapsPlaces['coordinates'];
					}
				}
			}else if (is_string($placesLocation)) {
				$dataMapsPlaces = $placesLocation;
				$g_client['location'] = array();
				$g_client['location']['expires'] = time() + $_parameter->get('client_location_timeout');
				if (isset($dataMapsPlaces['address'])) {
					$g_client['location']['address'] = $dataMapsPlaces;
				}
			}
		}
	}
	if (!isset($g_client['location']['address']) || !isset($g_client['location']['country'])) {
		$getIP = $_ip->info(array("action" => "check", "ip" => $_client->ip()));
		if (isset($getIP, $getIP['return'], $getIP['data']) && $getIP['return'] == true) {
			$dataIpPlaces = $getIP['data'];
			$g_client['location'] = array();
			$g_client['location']['expires'] = time() + $_parameter->get('client_location_timeout');
			if (isset($dataIpPlaces['city']) || isset($dataIpPlaces['region']) || isset($dataIpPlaces['country'])) {
				$g_client['location']['address'] = null;
				if (isset($dataIpPlaces['city'])) {
					$g_client['location']['address'] .= $dataIpPlaces['city'];
				}
				if (isset($dataIpPlaces['region'])) {
					if ($g_client['location']['address'] != null) {
						$g_client['location']['address'] .= ", ".$dataIpPlaces['region'];
					}else {
						$g_client['location']['address'] .= $dataIpPlaces['region'];
					}
				}
				if (isset($dataIpPlaces['country'])) {
					if ($g_client['location']['address'] != null) {
						$g_client['location']['address'] .= ", ".$dataIpPlaces['country'];
					}else {
						$g_client['location']['address'] .= $dataIpPlaces['country'];
					}
				}
			}
			if (isset($dataIpPlaces['country'])) {
				$g_client['location']['country'] = $dataIpPlaces['country'];
			}
			if (isset($dataIpPlaces['latitude'], $dataIpPlaces['longitude'])) {
				$g_client['location']['coordinates'] = $dataIpPlaces['latitude'].",".$dataIpPlaces['longitude'];
			}
		}
	}
	if ($oldClientLocation != $g_client['location']) {
		$_SESSION["client"]['location'] = $g_client['location'];
	}
	$g_client['location']['reset'] = false;
}
# Set modes.
if (!isset($g_client['mode']) || !isset($g_client['mode']['encryption']) || !isset($g_client['mode']['saving'])) {
	//. default
	if (!isset($g_client['mode'])) {
		$_SESSION["client"]['mode'] = $g_client['mode'] = array();
	}
	if (!isset($g_client['mode']['encryption'])) {
		$_SESSION["client"]['mode']['encryption'] = $g_client['mode']['encryption'] = true;
	}
	if (!isset($g_client['mode']['saving'])) {
		$_SESSION["client"]['mode']['saving'] = $g_client['mode']['saving'] = true;
	}
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
if (preg_match("/^([a-zA-Z]+)\.([a-zA-Z]+)$/", $g_client['timezone'])) {
	date_default_timezone_set($g_client['timezone']);
}else if (preg_match("/^([0-9\-\+]+)\:([0-9]+)$/", $g_client['timezone'])) {
	date_default_timezone_set($_tool->convertGTMTimezone($g_client['timezone']));
}else {
	//. date_default_timezone_set();
}
if (isset($g_client['language']['code'])) {
	if ($g_client['language']['code'] != "en") {
		$_parameter->setup($_SESSION["client"]['language']['code'], false);
	}
}
if (isset($g_client['token']['cache']['browser'])) {
	setcookie("gCID", $g_client['token']['cache']['browser'], 0, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
}
//print_r($_SESSION["client"]['language']);
//print_r($_SESSION["security"]['visits']);d
?>