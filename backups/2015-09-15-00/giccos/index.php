<?php
# Config.
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
require_once ("source/config.php");
# Encoding : begin.
if (isset($_SERVER['HTTP_ACCEPT_ENCODING']) && substr_count($_SERVER['HTTP_ACCEPT_ENCODING'], "gzip")) {
	ob_start("ob_gzhandler"); 
}else {
	ob_start();
}
# Secure cookie.
$cookieArr = $_COOKIE;
if (!isset($g_user['login']) || !$g_user['login']) {
	foreach ($cookieArr as $cookieThisKey => $cookieThisValue) {
		if (in_array($cookieThisKey, ["gMessagesTabPos"])) setcookie($cookieThisKey, null, time() - 31536000, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
	}
}
foreach ($cookieArr as $cookieThisKey => $cookieThisValue) {
	if (isset($cookieThisKey) && preg_match("/^(gXHR)/", $cookieThisKey)) {
		if (preg_match("/^(gXHR)\_([a-zA-Z0-9]+)$/", $cookieThisKey, $matchArr)) {
			if ($cookieThisValue != $g_client['token']['action']['key']['cookie']) {
				if (isset($_COOKIE[$cookieThisKey])) setcookie($cookieThisKey, null, time() - 31536000, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
			}
		}else {
			if (isset($_COOKIE[$cookieThisKey])) setcookie($cookieThisKey, null, time() - 31536000, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
		}
	}
}
# Get uri.
$_uri_nP = array_filter(explode("/", $_client->uri()));
for ($i = 1; $i <= count($_uri_nP); $i++) {
	if ($i == 1) {
		if (!isset($_uri_nP[$i])) {
			$_uri_nP[$i] = "";
		}
		$_uri = $_uri_nP[$i];
		$_uri_wP = "/".$_uri_nP[$i];
	}else {
		if (!isset($_uri_nP[$i])) {
			$_uri_nP[$i] = "";
		}
		$_uri .= $_uri_nP[$i];
		$_uri_wP .= "/".$_uri_nP[$i];
	}
}
if (isset($_uri_nP[2])) {
	if (preg_match("/[A-Z]+/", $_uri_nP[2])) {
		$_uri = preg_replace("/({$_uri_nP[2]})/", strtolower($_uri_nP[2]), $_uri_wP);
		die(header("Location: {$_uri}"));
	}else {
		$_uri = array();
		$_uri_nP = array_filter(explode("/", preg_replace("/(^\/giccos)/", "", $_uri_wP)));
		for ($i = 1; $i <= count($_uri_nP); $i++ ) {
			if (!isset($_uri_nP[$i])) {
				$_uri_nP[$i] = "";
			}
			array_push($_uri, $_uri_nP[$i]);
		}
		$_uri_nP = $_uri_wP = null;
	}
}else {
	$_uri = $_uri_nP = $_uri_wP = null;
	$_uri = array();
	array_push($_uri, null);
}
# Run page.
$_uri_0 = [null, "", "6027c486", "feed", "groups", "pages", "wall", "messages", "accounts", "oops", "sites", "maps", "videos", "photos", "music", "library"];
if (isset($g_client['token']['source']['url']) && (in_array($_uri[0], $_uri_0, true) || $_uri[0] == $g_client['token']['source']['url'])) {
	function portCheck ($text, $port) {
		if (preg_match_all("/({$text})/i", $port)) {
			return true;
		}else {
			return false;
		}
	}
	if (isset($g_user['login']) && $g_user['login'] == true) {
		if (isset($_SESSION["redirect"]['later'])) {
			unset($_SESSION["redirect"]['later']);
		}
	}
	if (!isset($g_client['theme']['welcome'])) {
		$themWelcomeArr = array();
		$themWelcomeArr['image']['key'] = hash('crc32', time().'::'.rand());
		$getThemeWelcomePhotosIdQuery = mysqli_query($_db->port('beta'), "SELECT `photos.id`, count(*) FROM `photos_views` WHERE (`time` BETWEEN {$_tool->timeNow()} - 86400 AND {$_tool->timeNow()}) AND `photos.id` IN (SELECT `id` FROM `photos_info` WHERE `private.view` = '4' AND `file.large` != '0') GROUP BY `photos.id` ORDER BY count(*) DESC LIMIT 1");
		if ($getThemeWelcomePhotosIdQuery && mysqli_num_rows($getThemeWelcomePhotosIdQuery) > 0) {
			$getThemeWelcomePhotosId = mysqli_fetch_assoc($getThemeWelcomePhotosIdQuery)['photos.id'];
		}else {
			$getThemeWelcomePhotosIdQuery = mysqli_query($_db->port('beta'), "SELECT `photos.id`, count(*) FROM `photos_views` WHERE (`time` BETWEEN {$_tool->timeNow()} - 604800 AND {$_tool->timeNow()}) AND `photos.id` IN (SELECT `id` FROM `photos_info` WHERE `private.view` = '4' AND `file.large` != '0') GROUP BY `photos.id` ORDER BY count(*) DESC LIMIT 1");
			if ($getThemeWelcomePhotosIdQuery && mysqli_num_rows($getThemeWelcomePhotosIdQuery) > 0) {
				$getThemeWelcomePhotosId = mysqli_fetch_assoc($getThemeWelcomePhotosIdQuery)['photos.id'];
			}else {
				//.
			}
		}
		if (!isset($getThemeWelcomePhotosId)) {
			$themWelcomeArr['author']['type'] = "page";
			$themWelcomeArr['author']['name'] = "Giccos";
			$themWelcomeArr['author']['tag'] = "giccos";
			$themWelcomeArr['author']['link'] = "#";
			$themWelcomeArr['image']['background'] = $_tool->links('photos/raw/static/theme-welcome-image-background.jpg');
			$g_client['theme']['welcome'] = $themWelcomeArr;
			$_SESSION["client"]['theme']['welcome'] = $g_client['theme']['welcome'];
		}else {
			$getThemeWelcomeRequest = "SELECT `author.type`, `author.id`, `time`, `file.large` FROM `photos_info` WHERE `id` = '{$getThemeWelcomePhotosId}' LIMIT 1";
			$getThemeWelcomeQuery = mysqli_query($_db->port('beta'), $getThemeWelcomeRequest);
			if ($getThemeWelcomeQuery && mysqli_num_rows($getThemeWelcomeQuery) > 0) {
				$getThemeWelcomeFetch = mysqli_fetch_assoc($getThemeWelcomeQuery);
				if ($getThemeWelcomeFetch['author.type'] == "user") {
					$getThemeWelcomeAuthor = $_user->profile(array("rows" => "`fullname`, `username`, `link`", "id" => $getThemeWelcomeFetch['author.id']));
					if (isset($getThemeWelcomeAuthor['return'], $getThemeWelcomeAuthor['data']) && $getThemeWelcomeAuthor['return'] == true) {
						$themWelcomeArr['author']['type'] = "user";
						$themWelcomeArr['author']['name'] = $getThemeWelcomeAuthor['data']['fullname'];
						$themWelcomeArr['author']['tag'] = $getThemeWelcomeAuthor['data']['username'];
						$themWelcomeArr['author']['link'] = $getThemeWelcomeAuthor['data']['link'];
					}
				}
				$themWelcomeArr['image']['background'] = $_tool->links('photos/raw/'.$getThemeWelcomeFetch['file.large'].'/'.$themWelcomeArr['image']['key']);
				$g_client['theme']['welcome'] = $themWelcomeArr;
				$_SESSION["client"]['theme']['welcome'] = $g_client['theme']['welcome'];
			}else {
				//.
			}
		}
	}
	if (isset($_uri[0], $g_client['token']['source']['url']) && is_string($_uri[0]) && $_uri[0] == $g_client['token']['source']['url']) {
		if (isset($_uri[1], $g_client['token']['source']['js']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['js']) {
			// Port: javascripts.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$fileName .= "/".$_uri[$i];
				}else {
					$fileName = $_uri[$i];
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				$fileName = preg_replace("/(\.js)$/", "", $fileName);
				$fileName = preg_replace("/((.js)([\S]+)?)$/", "", $fileName);
				$fileName = "source/js/".$fileName.".php";
				if (file_exists($fileName)) {
					$readFile = array("type" => "include", "path" => $fileName, "mime" => $_parameter->get('contentType_js.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1], $g_client['token']['source']['css']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['css']) {
			// Port: css.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$fileName .= "/".$_uri[$i];
				}else {
					$fileName = $_uri[$i];
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				$fileName = preg_replace("/(\.css)$/", "", $fileName);
				$fileName = preg_replace("/((.css)([\S]+)?)$/", "", $fileName);
				$fileName = "source/css/".$fileName.".php";
				if (file_exists($fileName)) {
					$readFile = array("type" => "include", "path" => $fileName, "mime" => $_parameter->get('contentType_css.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1], $g_client['token']['source']['ajax']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['ajax']) {
			// Port: ajax.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$fileName .= "/".$_uri[$i];
				}else {
					$fileName = $_uri[$i];
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					//. $_tool->isCachedPage();
				}
				$fileName = preg_replace("/(\.ajax)$/", "", $fileName);
				$fileName = preg_replace("/((.ajax)([\S]+)?)$/", "", $fileName);
				$fileName = "source/ajax/".$fileName.".php";
				if (file_exists($fileName)) {
					$readFile = array("type" => "include", "path" => $fileName, "mime" => $_parameter->get('contentType_json.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1], $g_client['token']['source']['xml']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['xml']) {
			// Port: xml.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$fileName .= "/".$_uri[$i];
				}else {
					$fileName = $_uri[$i];
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				$fileName = preg_replace("/(\.xml)$/", "", $fileName);
				$fileName = preg_replace("/((.xml)([\S]+)?)$/", "", $fileName);
				$fileName = "source/xml/".$fileName.".php";
				if (file_exists($fileName)) {
					$readFile = array("type" => "include", "path" => $fileName, "mime" => $_parameter->get('contentType_xml.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1], $g_client['token']['source']['font']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['font']) {
			// Port: font.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$fileName .= "/".$_uri[$i];
				}else {
					$fileName = $_uri[$i];
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				$fileName = preg_replace("/([a-zA-Z0-9\-\.\/]+)([a-zA-Z0-9\.\?\=]+)?/", "$1", $fileName);
				$fileName = preg_replace("/\.(svg|ttf|otf|woff|eof)(\S+)$/", "$1", $fileName);
				$fileName = "source/font/".$fileName;
				if (file_exists($fileName)) {
					$fileExt = pathinfo($fileName, PATHINFO_EXTENSION);
					if ($fileExt == "svg") {
						$fileMime = "image/svg+xml";
					}else if ($fileExt == "ttf") {
						$fileMime = "application/x-font-ttf";
					}else if ($fileExt == "otf") {
						$fileMime = "application/x-font-opentype";
					}else if ($fileExt == "woff") {
						$fileMime = "application/font-woff";
					}else if ($fileExt == "eof") {
						$fileMime = "application/vnd.ms-fontobject";
					}else {
						$fileMime = "font/opentype";
					}
					$fileMime .= "; charset: utf-8";
					$readFile = array("type" => "other", "path" => $fileName, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else {
			die(header("HTTP/1.1 503 Service Unavailable"));
		}
	}else if ($_uri[0] == null || $_uri[0] == "") {
		die(header("Location: ".$_tool->links('::redirect::home')));
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "feed") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: feed.
		if ((isset($_SERVER['HTTP_REFERER']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) == false) || $_SERVER['HTTP_HOST'] != $_tool->links("::host")) {
			die(header("HTTP/1.1 503 Service Unavailable"));
		}
		if (isset($g_user['mode']) && (!isset($_uri[1]) || (isset($_uri[1]) && is_string($_uri[1]) && in_array($_uri[1], ["", "general"])))) {
			$feed_['options'] = array(
				"type" => "general"
			);
			if (isset($_uri[2]) && is_string($_uri[2]) && in_array(strtolower($_uri[2]), ["auto", "new", "action"])) {
				$feed_['options']['method'] = strtolower($_uri[2]);
			}else if (isset($g_user['feed.order'], $g_user['feed.order']['general']) && is_string($g_user['feed.order']['general']) && in_array($g_user['feed.order']['general'], ["auto", "new", "action"])) {
				$feed_['options']['method'] = $g_user['feed.order']['general'];
			}else {
				$feed_['options']['method'] = "auto";
			}
			die(require_once("source/ports/feed.general.php"));
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && in_array($_uri[1], ["status"])) {
			$feed_['options'] = array(
				"type" => "status"
			);
			if (isset($_uri[3]) && is_string($_uri[3]) && in_array(strtolower($_uri[3]), ["auto", "new", "action"])) {
				$feed_['options']['method'] = strtolower($_uri[3]);
			}else if (isset($g_user['feed.order'], $g_user['feed.order']['general']) && is_string($g_user['feed.order']['general']) && in_array($g_user['feed.order']['general'], ["auto", "new", "action"])) {
				$feed_['options']['method'] = $g_user['feed.order']['general'];
			}else {
				$feed_['options']['method'] = "auto";
			}
			$redirectPath = null;
			if (isset($_uri[2]) && is_string($_uri[2])) {
				$feed_['options']['selected'] = explode("&", $_uri[2]);
				foreach ($feed_['options']['selected'] as $key => $valueDisplay) {
					if (preg_match("/^([a-zA-Z0-9]{32})$/", $valueDisplay)) {
						$feed_['options']['selected'][$key] = array("label" => "display", "value" => $valueDisplay);
						if ($redirectPath == null) {
							$redirectPath .= $valueDisplay;
						}else {
							$redirectPath .= "&".$valueDisplay;
						}
					}else if (preg_match("/^([0-9]{1,11})$/", $valueDisplay)) {
						$feed_['options']['selected'][$key] = array("label" => "id", "value" => $valueDisplay);
						if ($redirectPath == null) {
							$redirectPath .= $valueDisplay;
						}else {
							$redirectPath .= "&".$valueDisplay;
						}
					}else {
						unset($feed_['options']['selected'][$key]);
					}
				}
			}else {
				$feed_['options']['selected'] = null;
			}
			$redirectPath = $_tool->links($_uri[0].'/'.$_uri[1].'/'.$redirectPath);
			if ($redirectPath != $_client->fullurl()) {
				die(header("Location: ".$redirectPath));
			}
			die(require_once ("source/ports/feed.status.php"));
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && in_array($_uri[1], ["time", "timeline"])) {
			$feed_['options'] = array(
				"type" => "status"
			);
			if (isset($_uri[3]) && is_string($_uri[3]) && in_array(strtolower($_uri[3]), ["auto", "new", "action"])) {
				$feed_['options']['method'] = strtolower($_uri[3]);
			}else if (isset($g_user['feed.order'], $g_user['feed.order']['general']) && is_string($g_user['feed.order']['general']) && in_array($g_user['feed.order']['general'], ["auto", "new", "action"])) {
				$feed_['options']['method'] = $g_user['feed.order']['general'];
			}else {
				$feed_['options']['method'] = "auto";
			}
			$redirectPath = null;
			if (isset($_uri[2]) && is_string($_uri[2])) {
				$feed_['options']['time'] = explode("&", $_uri[2]);
				foreach ($feed_['options']['time'] as $key => $valueDisplay) {
					$valueSelectedArr = explode("-", $valueDisplay);
					$feed_['options']['time'][$key] = array();
					if (isset($valueSelectedArr[0]) && preg_match("/^([0-9]{9,12})$/", $valueSelectedArr[0])) {
						$feed_['options']['time'][$key][] = $valueSelectedArr[0];
					}
					if (isset($valueSelectedArr[1]) && preg_match("/^([0-9]{9,12})$/", $valueSelectedArr[1])) {
						$feed_['options']['time'][$key][] = $valueSelectedArr[1];
					}
					if (count($feed_['options']['time'][$key]) == 0) {
						unset($feed_['options']['time'][$key]);
					}else {
						if (count($feed_['options']['time'][$key]) == 1) {
							$valueDisplay = $feed_['options']['time'][$key][0];
						}else if (count($feed_['options']['time'][$key]) == 2) {
							$valueDisplay = $feed_['options']['time'][$key][0]."-".$feed_['options']['time'][$key][1];
						}
						if ($redirectPath == null) {
							$redirectPath .= $valueDisplay;
						}else {
							$redirectPath .= "&".$valueDisplay;
						}
					}
				}
			}else {
				$feed_['options']['time'] = null;
			}
			$redirectPath = $_tool->links($_uri[0].'/'.$_uri[1].'/'.$redirectPath);
			if ($redirectPath != $_client->fullurl()) {
				die(header("Location: ".$redirectPath));
			}
			die(require_once("source/ports/feed.time.php"));
		}else {
			die(require_once("source/ports/oops.php"));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "xx") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: feed.
		if ((isset($_SERVER['HTTP_REFERER']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) == false) || $_SERVER['HTTP_HOST'] != $_tool->links("::host")) {
			die(header("HTTP/1.1 503 Service Unavailable"));
		}
		if (isset($g_user['mode']) && (!isset($_uri[1]) || (isset($_uri[1]) && is_string($_uri[1]) && in_array($_uri[1], ["", "general"])))) {
			if (isset($g_user['feed.order'], $g_user['feed.order']['general']) && is_string($g_user['feed.order']['general']) && in_array($g_user['feed.order']['general'], ["new", "action"])) {
				$order = $g_user['feed.order']['general'];
			}else {
				$order = "new";
			}
			$feed_['content']['title'] = $_language->text('pages_feed.title', 'ucwords', false);
			$feed_['content']['this'] = (array("port" => array("type" => "general", "require" => "all", "order" => $order)));
			$feed_['content']['from'] = $_language->text('general', 'strtolower', false);
			if ($g_user['mode']['type'] == "user") {
				$feed_['follow']['query'] = mysqli_query($_db->port('beta'),"SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '{$g_user['mode']['id']}'");
				$feed_['follow']['count'] = 0;
				while ($feed_['follow']['fetch'] = mysqli_fetch_assoc($feed_['follow']['query'])) {
					if ($feed_['follow']['count'] == 0) {
						$feed_['query']['source'] = "(`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
					}else {
						$feed_['query']['source'] .= " OR (`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
					}
					$feed_['follow']['count']++;
				}
				$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
				$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
				$feed_['query']['private'] = "AND ((`author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '1' AND `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND `guy.id` = '{$g_user['id']}')) OR (`private.view` = '2' AND ((`author.type` = 'user' AND `author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))))) OR (`private.view` = '3' AND ((`author.type` = 'user' AND `author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')))))) OR (`private.view` = '4'))
				";
			}else {
				$feed_['query']['source'] = "";
				$feed_['query']['hide'] = "";
				$feed_['query']['private'] = "AND (`private.view` = '4')";
			}
			$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
			$feed_['query']['order'] = "ORDER BY `id` DESC";
			$feed_['query']['limit'] = "LIMIT 10";
			$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
			die(require_once ("source/ports/feed.general.php"));
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "time") {
			if (isset($_uri[2], $g_user['mode']) && is_string($_uri[2]) && $_uri[2] != null) {
				if (isset($g_user['feed.order'], $g_user['feed.order']['time']) && is_string($g_user['feed.order']['time']) && in_array($g_user['feed.order']['time'], ["new", "action"])) {
					$order = $g_user['feed.order']['time'];
				}else {
					$order = "new";
				}
				$feed_['value'] = true;
				$feed_['content']['uri'] = strtolower($_uri[2]);
				$feed_['content']['uri'] = array_filter(explode("-", $_uri[2]));
				$feed_['content']['require'] = array();
				$feed_['content']['require']['label'] = "stamp";
				$feed_['content']['require']['value'] = array();
				for ($i = 0; $i < count($feed_['content']['uri']); $i++) { 
					if (is_numeric($feed_['content']['uri'][$i])) {
						$feed_['content']['require']['value'][] = $feed_['content']['uri'][$i];
					}
				}
				if (count($feed_['content']['require']['value']) == 0) {
					//.
					die();
				}
				if ($g_user['mode']['type'] == "user") {
					$feed_['follow']['query'] = mysqli_query($_db->port('beta'),"SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '{$g_user['mode']['id']}'");
					$feed_['follow']['count'] = 0;
					while ($feed_['follow']['fetch'] = mysqli_fetch_assoc($feed_['follow']['query'])) {
						if ($feed_['follow']['count'] == 0) {
							$feed_['query']['source'] = "(`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
						}else {
							$feed_['query']['source'] .= " OR (`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
						}
						$feed_['follow']['count']++;
					}
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
					$feed_['query']['private'] = "AND ((`author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '1' AND `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND `guy.id` = '{$g_user['id']}')) OR (`private.view` = '2' AND ((`author.type` = 'user' AND `author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))))) OR (`private.view` = '3' AND ((`author.type` = 'user' AND `author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')))))) OR (`private.view` = '4'))";
				}else {
					$feed_['query']['source'] = "";
					$feed_['query']['hide'] = "";
					$feed_['query']['private'] = "AND (`private.view` = '4')";
				}
				if (isset($feed_['content']['require']['value'])) {
					if (count($feed_['content']['require']['value']) == 2) {
						$feed_['query']['time'] = "AND `time` BETWEEN '{$feed_['content']['require']['value'][0]}' AND '{$feed_['content']['require']['value'][1]}'";
						$feed_['content']['title'] = null;
						$feed_['content']['title'] = $_tool->agoDatetime($feed_['content']['require']['value'][0])." - ".$_tool->agoDatetime($feed_['content']['require']['value'][1]);
						$feed_['content']['this'] = (array("port" => array("type" => "time", "require" => $feed_['content']['require'], "order" => $order)));
					}else {
						$feed_['query']['time'] = "AND `time` >= '{$feed_['content']['require']['value'][0]}'";
						$feed_['content']['title'] = $_tool->agoDatetime($feed_['content']['require']['value'][0])." - ".$_language->text('now', 'ucfirst'); // strtolower
						$feed_['content']['this'] = (array("port" => array("type" => "time", "require" => $feed_['content']['require'], "order" => $order)));
					}
					$feed_['content']['description'] = $feed_['content']['title'];
				}else {
					die(require_once("source/ports/oops.php"));
				}
				$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
				$feed_['query']['order'] = "ORDER BY `id` DESC";
				$feed_['query']['limit'] = "LIMIT 10";
				$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['time']} {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
				die(require_once ("source/ports/feed.time.php"));
			}else {
				$feed_['value'] = false;
				$feed_['content']['this'] = (array("port" => array("type" => "time", "require" => "none")));
				die();
			}
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "family") {
			if (isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user") {
				if (isset($g_user['feed.order'], $g_user['feed.order']['family']) && is_string($g_user['feed.order']['family']) && in_array($g_user['feed.order']['family'], ["new", "action"])) {
					$order = $g_user['feed.order']['family'];
				}else {
					$order = "new";
				}
				$feed_['content']['title'] = "";
				$feed_['content']['this'] = (array("port" => array("type" => "family", "require" => "all", "order" => $order)));
				$feed_['content']['from'] = $_language->text('family', 'strtolower', false);
				$getFamilyRequest = "SELECT * FROM `users_family` WHERE `user.id` = '{$g_user['id']}'";
				$getFamilyQuery = mysqli_query($_db->port('beta'), $getFamilyRequest);
				if (!$getFamilyQuery) {
					die(require_once("source/ports/oops.php"));
				}else {
					if (mysqli_num_rows($getFamilyQuery) == 0) {
						$feed_['exists']['family'] = false;
					}else {
						$feed_['exists']['family'] = true;
						while ($getFamilyFetch = mysqli_fetch_assoc($getFamilyQuery)) {
							if (!isset($feed_['query']['source']) || $feed_['query']['source'] == null) {
								$feed_['query']['source'] = "(`author.type` = 'user' AND `author.id` = '{$getFamilyFetch['guy.id']}')";
							}else {
								$feed_['query']['source'] .= "OR (`author.type` = 'user' AND `author.id` = '{$getFamilyFetch['guy.id']}')";
							}
						}
						$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
						if ($g_user['mode']['type'] == "user") {
							$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
							$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `private.view` = '0' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
						}else {
							$feed_['query']['hide'] = "";
							$feed_['query']['private'] = "AND (`private.view` = '4')";
						}
						$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
						$feed_['query']['order'] = "ORDER BY `id` DESC";
						$feed_['query']['limit'] = "LIMIT 10";
						$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
						$existsStatus = mysqli_query($_db->port('beta'), $feed_['query']['code']);
						if (!$existsStatus) {
							//.
						}
						if (mysqli_num_rows($existsStatus) > 0) {
							$feed_['exists']['status'] = true;
							$feed_['content']['description'] = $_language->text('status_from_family_members', 'strtolower', false);
						}else {
							$feed_['exists']['status'] = false;
						}
					}
					die(require_once ("source/ports/feed.family.php"));
				}
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "friends") {
			if (isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user") {
				if (isset($g_user['feed.order'], $g_user['feed.order']['friends']) && is_string($g_user['feed.order']['friends']) && in_array($g_user['feed.order']['friends'], ["new", "action"])) {
					$order = $g_user['feed.order']['friends'];
				}else {
					$order = "new";
				}
				$feed_['content']['title'] = "";
				$feed_['content']['this'] = (array("port" => array("type" => "friends", "require" => "all", "order" => $order)));
				$feed_['content']['from'] = $_language->text('friends', 'strtolower', false);
				$getFriendsRequest = "SELECT * FROM `friends` WHERE `user.id` = '{$g_user['id']}'";
				$getFriendsQuery = mysqli_query($_db->port('beta'), $getFriendsRequest);
				if (!$getFriendsQuery) {
					die(require_once("source/ports/oops.php"));
				}else {
					if (mysqli_num_rows($getFriendsQuery) == 0) {
						$feed_['exists']['friends'] = false;
					}else {
						$feed_['exists']['friends'] = true;
						while ($getFriendsFetch = mysqli_fetch_assoc($getFriendsQuery)) {
							if (!isset($feed_['query']['source']) || $feed_['query']['source'] == null) {
								$feed_['query']['source'] = "(`author.type` = 'user' AND `author.id` = '{$getFriendsFetch['guy.id']}')";
							}else {
								$feed_['query']['source'] .= "OR (`author.type` = 'user' AND `author.id` = '{$getFriendsFetch['guy.id']}')";
							}
						}
						$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
						if ($g_user['mode']['type'] == "user") {
							$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
							$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `private.view` = '0' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
						}else {
							$feed_['query']['hide'] = "";
							$feed_['query']['private'] = "AND (`private.view` = '4')";
						}
						$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
						$feed_['query']['order'] = "ORDER BY `id` DESC";
						$feed_['query']['limit'] = "LIMIT 10";
						$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
						$existsStatus = mysqli_query($_db->port('beta'), $feed_['query']['code']);
						if ($existsStatus && mysqli_num_rows($existsStatus) > 0) {
							$feed_['exists']['status'] = true;
							$feed_['content']['description'] = $_language->text('status_from_friends', 'strtolower', false);
						}else {
							$feed_['exists']['status'] = false;
						}
					}
					die(require_once ("source/ports/feed.friends.php"));
				}
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && ($_uri[1] == "nearby" || $_uri[1] == "places")) {
			if (isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user") {
				if (isset($_uri[2], $g_user['country']) && $_uri[2] == "country") {
					$_uri[2] = $g_user['country'];
				}else if (isset($_uri[2], $g_user['live']) && $_uri[2] == "live") {
					$_uri[2] = $g_user['live'];
				}
			}
			if (isset($_uri[2]) && $_uri[2] != null) {
				if (isset($g_user['feed.order'], $g_user['feed.order']['nearby']) && is_string($g_user['feed.order']['nearby']) && in_array($g_user['feed.order']['nearby'], ["new", "action"])) {
					$order = $g_user['feed.order']['nearby'];
				}else {
					$order = "new";
				}
				if (is_numeric($_uri[2]) && $_uri[2] != null) {
					$feed_['content']['this'] = (array("port" => array("type" => "nearby", "require" => array("label" => "id", "value" => $_uri[2]), "order" => $order)));
					$getPositionNearbyRequest = "SELECT `latitude`, `longitude`, `name` FROM `maps_places` WHERE `id` = '".$_tool->convertDatabaseString($_uri[2])."' LIMIT 1";
				}else if (is_string($_uri[2]) && $_uri[2] != null) {
					$feed_['content']['this'] = (array("port" => array("type" => "nearby", "require" => array("label" => "address", "value" => $_uri[2]), "order" => $order)));
					$getPositionNearbyRequest = "SELECT `latitude`, `longitude`, `name` FROM `maps_places` WHERE `address` LIKE '%".$_tool->convertDatabaseString($_uri[2])."%' ORDER BY CHAR_LENGTH(`address`) ASC LIMIT 1";
				}else {
					$feed_['exists']['nearby'] = false;
				}
				if (isset($getPositionNearbyRequest) && is_string($getPositionNearbyRequest) && $getPositionNearbyRequest != null) {
					$getPositionNearbyQuery = mysqli_query($_db->port('beta'), $getPositionNearbyRequest);
					if (!$getPositionNearbyQuery || mysqli_num_rows($getPositionNearbyQuery) == 0) {
						$feed_['exists']['nearby'] = false;
					}else {
						$positionNearbyQuery = mysqli_fetch_assoc($getPositionNearbyQuery);
						$feed_['content']['from'] = $_language->text('nearby_at', 'strtolower').' '.$positionNearbyQuery['name'];
						$feed_['query']['source'] = "(`places` = '1' AND `id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE ( 6371 * acos( cos( radians('{$positionNearbyQuery['latitude']}') ) * cos( radians( `latitude` ) ) * cos( radians( `longitude` ) - radians('{$positionNearbyQuery['longitude']}') ) + sin( radians('{$positionNearbyQuery['latitude']}') ) * sin( radians( `latitude` ) ) ) ) <= '{$_parameter->get('feeds_nearby_scanning_distance')}')))";
					}
				}else {
					$feed_['exists']['nearby'] = false;
				}
				if (isset($feed_['query']['source']) && $feed_['query']['source'] != null) {
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					if ($g_user['mode']['type'] == "user") {
						$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
						$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `private.view` = '0' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
					}else {
						$feed_['query']['hide'] = "";
						$feed_['query']['private'] = "AND (`private.view` = '4')";
					}
					$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
					$feed_['query']['order'] = "ORDER BY `id` DESC";
					$feed_['query']['limit'] = "LIMIT 10";
					$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
					$existsStatus = mysqli_query($_db->port('beta'), $feed_['query']['code']);
					if ($existsStatus && mysqli_num_rows($existsStatus) > 0) {
						$feed_['exists']['nearby'] = true;
						$feed_['content']['description'] = $_language->text('status_from_same_nearby', 'strtolower', false);
					}else {
						$feed_['exists']['nearby'] = false;
					}
				}
				die(require_once ("source/ports/feed.nearby.php"));
			}else {
				die(require_once("source/ports/oops.php"));
			}
			die;
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "country") {
			if (isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user") {
				if (isset($g_user['country']) && (!isset($_uri[2]) || $_uri[2] == null)) {
					$_uri[2] = $g_user['country'];
				}
			}
			if (isset($_uri[2]) && $_uri[2] != null) {
				if (isset($g_user['feed.order'], $g_user['feed.order']['country']) && is_string($g_user['feed.order']['country']) && in_array($g_user['feed.order']['country'], ["new", "action"])) {
					$order = $g_user['feed.order']['country'];
				}else {
					$order = "new";
				}
				if (is_numeric($_uri[2]) && $_uri[2] != null) {
					$feed_['content']['this'] = (array("port" => array("type" => "country", "require" => array("label" => "id", "value" => $_uri[2]), "order" => $order)));
					$getPositionCountryRequest = "SELECT `latitude`, `longitude`, `name` FROM `maps_places` WHERE `id` = '".$_tool->convertDatabaseString($_uri[2])."' LIMIT 1";
				}else if (is_string($_uri[2]) && $_uri[2] != null) {
					$feed_['content']['this'] = (array("port" => array("type" => "country", "require" => array("label" => "address", "value" => $_uri[2]), "order" => $order)));
					$getPositionCountryRequest = "SELECT `latitude`, `longitude`, `name` FROM `maps_places` WHERE `address` LIKE '%".$_tool->convertDatabaseString($_uri[2])."%' ORDER BY CHAR_LENGTH(`address`) ASC LIMIT 1";
				}else {
					$feed_['exists']['country'] = false;
				}
				if (isset($getPositionCountryRequest) && is_string($getPositionCountryRequest) && $getPositionCountryRequest != null) {
					$getPositionCountryQuery = mysqli_query($_db->port('beta'), $getPositionCountryRequest);
					if (!$getPositionCountryQuery || mysqli_num_rows($getPositionCountryQuery) == 0) {
						$feed_['exists']['country'] = false;
					}else {
						$positionCountryQuery = mysqli_fetch_assoc($getPositionCountryQuery);
						$feed_['content']['from'] = $_language->text('country_at', 'strtolower').' '.$positionCountryQuery['name'];
						$feed_['query']['source'] = "(`author.type` = 'user' AND `author.id` IN (SELECT `id` FROM `users` WHERE `country` REGEXP '^[0-9]+$' AND `country` IN (SELECT `id` FROM `maps_places` WHERE ( 6371 * acos( cos( radians('{$positionCountryQuery['latitude']}') ) * cos( radians( `latitude` ) ) * cos( radians( `longitude` ) - radians('{$positionCountryQuery['longitude']}') ) + sin( radians('{$positionCountryQuery['latitude']}') ) * sin( radians( `latitude` ) ) ) ) <= '{$_parameter->get('feeds_nearby_scanning_distance')}')))";
					}
				}else {
					$feed_['exists']['country'] = false;
				}
				if (isset($feed_['query']['source']) && $feed_['query']['source'] != null) {
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					if ($g_user['mode']['type'] == "user") {
						$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
						$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `private.view` = '0' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
					}else {
						$feed_['query']['hide'] = "";
						$feed_['query']['private'] = "AND (`private.view` = '4')";
					}
					$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
					$feed_['query']['order'] = "ORDER BY `id` DESC";
					$feed_['query']['limit'] = "LIMIT 10";
					$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
					$existsStatus = mysqli_query($_db->port('beta'), $feed_['query']['code']);
					if ($existsStatus && mysqli_num_rows($existsStatus) > 0) {
						$feed_['exists']['country'] = true;
						$feed_['content']['description'] = $_language->text('status_from_same_country', 'strtolower', false);
					}else {
						$feed_['exists']['country'] = false;
					}
				}
				die(require_once ("source/ports/feed.country.php"));
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "live") {
			if (isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user") {
				if (isset($g_user['live']) && (!isset($_uri[2]) || $_uri[2] == null)) {
					$_uri[2] = $g_user['live'];
				}
			}
			if (isset($_uri[2]) && $_uri[2] != null) {
				if (isset($g_user['feed.order'], $g_user['feed.order']['live']) && is_string($g_user['feed.order']['live']) && in_array($g_user['feed.order']['live'], ["new", "action"])) {
					$order = $g_user['feed.order']['live'];
				}else {
					$order = "new";
				}
				if (is_numeric($_uri[2]) && $_uri[2] != null) {
					$feed_['content']['this'] = (array("port" => array("type" => "live", "require" => array("label" => "id", "value" => $_uri[2]), "order" => $order)));
					$getPositionLiveRequest = "SELECT `latitude`, `longitude`, `name` FROM `maps_places` WHERE `id` = '".$_tool->convertDatabaseString($_uri[2])."' LIMIT 1";
				}else if (is_string($_uri[2]) && $_uri[2] != null) {
					$feed_['content']['this'] = (array("port" => array("type" => "live", "require" => array("label" => "address", "value" => $_uri[2]), "order" => $order)));
					$getPositionLiveRequest = "SELECT `latitude`, `longitude`, `name` FROM `maps_places` WHERE `address` LIKE '%".$_tool->convertDatabaseString($_uri[2])."%' ORDER BY CHAR_LENGTH(`address`) ASC LIMIT 1";
				}else {
					$feed_['exists']['live'] = false;
				}
				if (isset($getPositionLiveRequest) && is_string($getPositionLiveRequest) && $getPositionLiveRequest != null) {
					$getPositionLiveQuery = mysqli_query($_db->port('beta'), $getPositionLiveRequest);
					if (!$getPositionLiveQuery || mysqli_num_rows($getPositionLiveQuery) == 0) {
						$feed_['exists']['live'] = false;
					}else {
						$positionLiveQuery = mysqli_fetch_assoc($getPositionLiveQuery);
						$feed_['content']['from'] = $_language->text('live_at', 'strtolower').' '.$positionLiveQuery['name'];
						$feed_['query']['source'] = "(`author.type` = 'user' AND `author.id` IN (SELECT `id` FROM `users` WHERE `live` REGEXP '^[0-9]+$' AND `live` IN (SELECT `id` FROM `maps_places` WHERE ( 6371 * acos( cos( radians('{$positionLiveQuery['latitude']}') ) * cos( radians( `latitude` ) ) * cos( radians( `longitude` ) - radians('{$positionLiveQuery['longitude']}') ) + sin( radians('{$positionLiveQuery['latitude']}') ) * sin( radians( `latitude` ) ) ) ) <= '{$_parameter->get('feeds_nearby_scanning_distance')}')))";
					}
				}else {
					$feed_['exists']['live'] = false;
				}
				if (isset($feed_['query']['source']) && $feed_['query']['source'] != null) {
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					if ($g_user['mode']['type'] == "user") {
						$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
						$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `private.view` = '0' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
					}else {
						$feed_['query']['hide'] = "";
						$feed_['query']['private'] = "AND (`private.view` = '4')";
					}
					$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
					$feed_['query']['order'] = "ORDER BY `id` DESC";
					$feed_['query']['limit'] = "LIMIT 10";
					$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
					$existsStatus = mysqli_query($_db->port('beta'), $feed_['query']['code']);
					if ($existsStatus && mysqli_num_rows($existsStatus) > 0) {
						$feed_['exists']['live'] = true;
						$feed_['content']['description'] = $_language->text('status_from_same_live', 'strtolower', false);
					}else {
						$feed_['exists']['live'] = false;
					}
				}
				die(require_once ("source/ports/feed.live.php"));
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "pages") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = (array("port" => array("type" => "pages", "require" => "none")));
			$feed_['content']['from'] = $_language->text('pages', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "groups") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = (array("port" => array("type" => "groups", "require" => "none")));
			$feed_['content']['from'] = $_language->text('groups', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && in_array($_uri[1], ["tag", "tags", "hashtag", "hashtags"])) {
			if (isset($_uri[2], $g_user['mode']) && is_string($_uri[2]) && $_uri[2] != null) {
				if (isset($g_user['feed.order'], $g_user['feed.order']['hashtag']) && is_string($g_user['feed.order']['hashtag']) && in_array($g_user['feed.order']['hashtag'], ["new", "action"])) {
					$order = $g_user['feed.order']['hashtag'];
				}else {
					$order = "new";
				}
				$feed_['value'] = true;
				$feed_['content']['uri'] = strtolower($_uri[2]);
				$feed_['content']['uri'] = array_filter(explode("&", $_uri[2]));
				$feed_['content']['require'] = array();
				for ($i = 0; $i < count($feed_['content']['uri']); $i++) {
					$feed_['content']['require'][] = array_filter(explode("-", $feed_['content']['uri'][$i]));
				}
				for ($i = 0; $i < count($feed_['content']['require']); $i++) {
					$cache_hashtag_['push']['author'] = null;
					if (isset($feed_['content']['require'][$i][0], $feed_['content']['require'][$i][1])) {
						if (isset($feed_['content']['require'][$i][2])) {
							unset($feed_['content']['require'][$i][2]);
						}
						$feed_['content']['require'][$i][1] = array_filter(explode(",", $feed_['content']['require'][$i][1]));
						for ($x = 0; $x < count($feed_['content']['require'][$i][1]); $x++) {
							$cache_hashtag_['username'] = $cache_hashtag_['author'] = null;
							if (preg_match("/^(\@)/", $feed_['content']['require'][$i][1][$x]) == true) {
								$cache_hashtag_['username'] = preg_replace("/^(\@)/", "", $feed_['content']['require'][$i][1][$x]);
								$getAuthorIdQuery = mysqli_query($_db->port('beta'), "SELECT `id` FROM `users` WHERE `username` = '{$cache_hashtag_['username']}' LIMIT 1");
								if (!$getAuthorIdQuery) {
									continue;
								}
								$cache_hashtag_['author']['id'] = mysqli_fetch_assoc($getAuthorIdQuery)['id'];
								$cache_hashtag_['author']['type'] = "user";
							}else if (preg_match("/^(\+)/", $feed_['content']['require'][$i][1][$x]) == true) {
								$cache_hashtag_['author']['id'] = "1";
								$cache_hashtag_['author']['type'] = "pages";
							}else {
								continue;
							}
							if ($x == 0) {
								$cache_hashtag_['push']['author'] = "`status.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '{$cache_hashtag_['author']['type']}' AND `author.id` = '{$cache_hashtag_['author']['id']}')";
							}else {
								$cache_hashtag_['push']['author'] .= " OR `status.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '{$cache_hashtag_['author']['type']}' AND `author.id` = '{$cache_hashtag_['author']['id']}')";
							}
						}
						if ($cache_hashtag_['push']['author'] != NULL) {
							$cache_hashtag_['push']['author'] = " AND ({$cache_hashtag_['push']['author']})";
						}
					}else if (isset($feed_['content']['require'][$i][0])) {
						$cache_hashtag_['push']['author'] = "";
					}else {
						continue;
					}
					if (preg_match("/([^a-zA-Z0-9\_]+)/", $_tool->convertDatabaseString($feed_['content']['require'][$i][0])) == true) {
						unset($feed_['content']['require'][$i]);
						continue;
					}else {
						$feed_['content']['require'][$i][0] = preg_replace("/([^a-zA-Z0-9\_]+)/", "_", $_tool->convertDatabaseString($feed_['content']['require'][$i][0]));
						if ($i == 0) {
							$feed_['query']['get'] = "(`hashtag` = '{$feed_['content']['require'][$i][0]}'{$cache_hashtag_['push']['author']})";
						}else {
							$feed_['query']['get'] .= " OR (`hashtag` = '{$feed_['content']['require'][$i][0]}'{$cache_hashtag_['push']['author']})"; 
						}
					}
				}
				$feed_['content']['editor'] = 0;
				for ($i = 0; $i < count($feed_['content']['require']); $i++) {
					if (!isset($feed_['content']['require'][$i][1])) {
						$feed_['content']['editor']++;
					}
				}
				if ($feed_['content']['editor'] == 0) {
					$feed_['content']['editor'] = false;
				}else {
					$feed_['content']['editor'] = true;
				}
				$feed_['content']['this'] = (array("port" => array("type" => "hashtag", "require" => $feed_['content']['require'], "order" => $order)));
				$feed_['query']['source'] = "AND `id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']})";
				if ($g_user['mode']['type'] == "user") {
					$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
					$feed_['query']['private'] = "AND ((`author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '1' AND `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND `guy.id` = '{$g_user['id']}')) OR (`private.view` = '2' AND ((`author.type` = 'user' AND `author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))))) OR (`private.view` = '3' AND ((`author.type` = 'user' AND `author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR `id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')))))) OR (`private.view` = '4'))";
				}else {
					$feed_['query']['hide'] = "";
					$feed_['query']['private'] = "AND (`private.view` = '4')";
				}
				$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
				$feed_['query']['order'] = "ORDER BY `id` DESC";
				$feed_['query']['limit'] = "LIMIT 10";
				$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
				for ($i = 0; $i < count($feed_['content']['require']); $i++) { 
					if ($i == 0) {
						$feed_['content']['title'] = ucfirst($feed_['content']['require'][$i][0]);
					}else {
						$feed_['content']['title'] .= ', '.ucfirst($feed_['content']['require'][$i][0]);
					}
				}
				$feed_['content']['description'] = $feed_['content']['title'];
				if (count($feed_['content']['require']) == 1) {
					if (!isset($feed_['content']['require'][0][1])) {
						$feed_['chatbox']['get'] = true;
						$feed_['chatbox']['keyword'] = $feed_['content']['require'][0][0];
					}else {
						$feed_['chatbox']['get'] = false;
					}
				}else if (count($feed_['content']['require']) > 1) {
					$feed_['chatbox']['get'] = false;
				}
			}else {
				$feed_['value'] = false;
				$feed_['content']['this'] = json_encode(array("port" => array("type" => "hashtag", "require" => "none")));
			}
			die(require_once ("source/ports/feed.hashtag.php"));
		}else {
			die(require_once ("source/ports/oops.php"));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "groups") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: groups.
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "wall") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: wall.
		if (isset($_uri[1]) && is_string($_uri[1])) $_uri[1] = addslashes($_uri[1]); else $_uri[1] = null;
		if (isset($g_user['mode']) && (!isset($_uri[1]) || (isset($_uri[1]) && $_uri[1] == null))) {
			die(header("Location: ".$_tool->links('::redirect::home')));
		}else {
			$wall_ = array();
			$wall_['key'] = $_uri[1];
			if (isset($_uri[2]) && is_string($_uri[2])) $_uri[2] = strtolower(addslashes($_uri[2])); else $_uri[2] = null;
			if (isset($g_user['mode']) && (isset($_uri[1], $_uri[2]) && $_uri[1] != null && $_uri[2] != null)) {
				if (in_array($_uri[2], ['about', 'timeline', 'friends', 'photos', 'music', 'videos', 'places'])) {
					$wall_['tab'] = $_uri[2];
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}else {
				$wall_['tab'] = "timeline";
			}
			if (isset($wall_['key'], $wall_['tab'])) {
				$wall_['available'] = $_wall->available(array("value" => $wall_['key']));
				if (isset($wall_['available']['return']) && $wall_['available']['return'] == true) {
					die(require_once ("source/ports/wall.php"));
				}else {
					$oopsPage = array(
						"port" => "wall", 
						"page" => array(
							"reason" => "Not found", 
							"description" => "Web page you are looking for does not exist or has been deleted or blocked by managers", 
							"error" => "Error#404"
						)
					);
					die(require_once("source/ports/oops.php"));
				}
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "messages") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: messages.
		if (isset($_uri[1]) && is_string($_uri[1])) $messagesPort = addslashes($_uri[1]); else $messagesPort = null;
		if ($messagesPort == null) {
			die(require_once ("source/ports/messages.general.php"));
		}else if ($messagesPort == "conversation") {

		}else if ($messagesPort == "incognito") {

		}
		/*
		$messages_ = array();
		if (isset($g_user['mode']) && (!isset($_uri[1]) || $_uri[1] == null)) {
			$messages_['page'] = "index";
			$messages_['tab'] = null;
		}else if (isset($_uri[1], $g_user['mode']) && $_uri[1] != null) {
			$messages_['page'] = "conversation";
			$messages_['tab'] =  $_tool->convertDatabaseString($_uri[1]);
		}
		die(require_once ("source/ports/messages.php"));
		*/
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "accounts")) {
		// Port: accounts.
		// $xx = $_user->login(array("type" => 1, "user" => array("username" => "lamhieu", "password" => "password"), "remember" => false, "auto" => false));
		if (isset($_uri[1], $g_user['login']) && is_string($_uri[1]) && $g_user['login'] == false && in_array($_uri[1], array("login", "register", "getpassword", "forgotpassword", "active"), true)) {
			if ($_uri[1] == "login") {
				die(require_once ("source/ports/accounts.login.php"));
			}else if ($_uri[1] == "register") {
				die(require_once ("source/ports/accounts.register.php"));
			}else if ($_uri[1] == "getpassword") {
				if (isset($_uri[2]) && is_string($_uri[2])) {
					$codeVerify = $_uri[2];
				}
				die(require_once ("source/ports/accounts.getpassword.php"));
			}else if ($_uri[1] == "forgotpassword") {
				die(header("Location: {$_tool->links('accounts/getpassword')}"));
			}else if ($_uri[1] == "active") {
				if (isset($_uri[2]) && is_string($_uri[2])) {
					$usernameActive = $_uri[2];
				}
				if (isset($_uri[3]) && is_string($_uri[3])) {
					$codeActive = $_uri[3];
				}
				die(require_once ("source/ports/accounts.active.php"));
			}else {
				if (portCheck($_uri[1], "login")) {
					die(header("Location: {$_tool->links('accounts/login')}"));
				}else if (portCheck($_uri[1], "register")) {
					die(header("Location: {$_tool->links('accounts/register')}"));
				}else if (portCheck($_uri[1], "getpassword")) {
					die(header("Location: {$_tool->links('accounts/getpassword')}"));
				}else if (portCheck($_uri[1], "forgotpassword")) {
					die(header("Location: {$_tool->links('accounts/getpassword')}"));
				}else if (portCheck($_uri[1], "active")) {
					die(header("Location: {$_tool->links('accounts/active')}"));
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}
		}else if (isset($_uri[1], $g_user['login']) && $g_user['login'] == true && in_array($_uri[1], array('settings', 'privacy'), true)) {
			//
		}else {
			die(require_once("source/ports/oops.php"));
		}
	}else if (isset($_uri[0]) && is_string($_uri[0]) && in_array($_uri[0], ["photos", "fotos", "pics"])) {
		// Port: photos.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "raw") {
			if (is_string($_uri[2]) && preg_match("/^(static)/i", $_uri[2])) {
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				for ($i = 3; $i < count($_uri); $i++) {
					if ($i > 3) {
						$photosFile .= "/{$_uri[$i]}";
					}else {
						$photosFile = "{$_uri[$i]}";
					}
				}
				$photosUrl = $_parameter->get('path_image_static_default').'/'.$photosFile;
				$photosExt = pathinfo($photosUrl, PATHINFO_EXTENSION);
				$photosExt = isset($photosExt) && is_string($photosExt) && preg_match("/(jpg|jpeg|png|gif)/", $photosExt) ? $photosExt : "png";
				if (file_exists($photosUrl) || !$_tool->siteDie($photosUrl)) {
					$readFile = array("type" => "other", "path" => $photosUrl, "mime" => 'image/'.$photosExt, "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					header("Content-type: image/gif");
					die(print "_");
				}
			}else if (is_string($_uri[2]) && is_string($_uri[2]) && preg_match("/^(other)/i", $_uri[2])) {
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				for ($i = 3; $i < count($_uri); $i++) {
					if ($i > 3) {
						$photosFile .= "/{$_uri[$i]}";
					}else {
						$photosFile = "{$_uri[$i]}";
					}
				}
				if (!$_tool->isBase64($photosFile)) {
					//.
				}
				$photosFile = urldecode($_tool->hash('decode', $photosFile, $_parameter->get('hash_photos_other')));
				// $photosUrl = $_tool->convertDatabaseString(preg_replace("/(([^a-zA-Z0-9]+)([\S]+)?)$/", "", $photosFile));
				$photosUrl = $photosFile;
				$photosExt = pathinfo($photosUrl, PATHINFO_EXTENSION);
				$photosExt = isset($photosExt) && is_string($photosExt) && preg_match("/(jpg|jpeg|png|gif)/", $photosExt) ? $photosExt : "jpg";
				if (preg_match("/^([\S]+)$/", $photosFile) && !$_tool->siteDie($photosUrl)) {
					$readFile = array("type" => "other", "path" => $photosUrl, "mime" => 'image/'.$photosExt, "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					header("Content-type: image/gif");
					die(print "_");
				}
			}else if (is_string($_uri[2]) && is_string($_uri[2]) && preg_match("/^(qr)/i", $_uri[2])) {
				if (isset($g_client['mode']['saving']) && $g_client['mode']['saving'] == true) {
					$_tool->isCachedPage();
				}
				$dataSize = (isset($_uri[3]) && is_numeric($_uri[3])) ? $_uri[3] : 200;
				for ($i = 4; $i < count($_uri); $i++) {
					if ($i > 4) {
						$dataString .= "/{$_uri[$i]}";
					}else {
						$dataString = "{$_uri[$i]}";
					}
				}
				$dataString = urldecode($_tool->hash('decode', $dataString, $_parameter->get('hash_photos_qr')));
				$photosContent = $_tool->curl("https://chart.googleapis.com/chart?chs=".intval($dataSize)."x".intval($dataSize)."&cht=qr&chl=".urlencode($dataString)."&choe=UTF-8", 5);
				if (isset($photosContent['return'], $photosContent['data']) && $photosContent['return'] == true) {
					$readFile = array("type" => "other", "content" => $photosContent['data'], "mime" => 'image/png', "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					header("Content-type: image/gif");
					die(print "_");
				}
			}else {
				$fileName = isset($_uri[2]) && is_string($_uri[2]) ? $_uri[2] : null;
				if ($fileName == null) {
					header("Content-type: image/gif");
					die(print "_");
				}
				$fileName = $_tool->convertDatabaseString(preg_replace("/(([^a-zA-Z0-9]+)([\S]+)?)$/", "", $fileName));
				$fileQuery = mysqli_query($_db->port('beta'), "SELECT `id`, `path.small`, `path.medium`, `path.large`, `path.original`, `file.small`, `file.medium`, `file.large`, `file.original` FROM `photos_info` WHERE `file.small` = '".$fileName."' OR `file.medium` = '".$fileName."' OR `file.large` = '".$fileName."' OR `file.original` = '".$fileName."' LIMIT 1;");
				if (!$fileQuery) {
					//.
				}
				if (mysqli_num_rows($fileQuery) == 0) {
					die(require_once("source/ports/oops.php"));
				}else {
					$fileFetch = mysqli_fetch_assoc($fileQuery);
					if (isset($fileFetch['path.small'], $fileFetch['file.large']) && is_string($fileFetch['path.small']) && is_string($fileFetch['file.small']) && $fileFetch['file.small'] == $fileName) {
						$filePath = $fileFetch['path.small'];
					}else if (isset($fileFetch['path.medium'], $fileFetch['file.medium']) && is_string($fileFetch['path.small']) && is_string($fileFetch['file.medium']) && $fileFetch['file.medium'] == $fileName) {
						$filePath = $fileFetch['path.medium'];
					}else if (isset($fileFetch['path.large'], $fileFetch['file.large']) && is_string($fileFetch['path.small']) && is_string($fileFetch['file.large']) && $fileFetch['file.large'] == $fileName) {
						$filePath = $fileFetch['path.large'];
					}else if (isset($fileFetch['path.original'], $fileFetch['file.original']) && is_string($fileFetch['path.small']) && is_string($fileFetch['file.original']) && $fileFetch['file.original'] == $fileName) {
						$filePath = $fileFetch['path.original'];
					}else {
						die(require_once("source/ports/oops.php"));
					}
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $filePath, "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileMime =  $getMediaFile['data'][0]['mime'];
						$fileUrl = $getMediaFile['data'][0]['source'];
						if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
							// $addViews = $_media->views("music", array("action" => "add", "id" => $fetch['id'], "quality" => 0));
							$readFile = array("type" => "other", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							die(require_once("source/ports/oops.php"));
						}
					}else {
						die(require_once("source/ports/oops.php"));
					}
				}
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "cache") {
			if (isset($_uri[2]) && is_string($_uri[2])) $fileName = $_uri[2]; else $fileName = null;
			if ($fileName == null) {
				header("Content-type: image/gif");
				die(print "_");
			}
			$fileName = $_tool->convertDatabaseString(preg_replace("/(([^a-zA-Z0-9]+)([\S]+)?)$/", "", $fileName));
			$fileQuery = mysqli_query($_db->port('beta'), "SELECT `path`, `secret` FROM `photos_cache` WHERE `name` = '{$fileName}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' LIMIT 1");
			if (!$fileQuery) {
				//.
			}
			if ($fileQuery && mysqli_num_rows($fileQuery) > 0) {
				$file = mysqli_fetch_assoc($fileQuery);
				$fileDisplay = $file['path'];
			}else {
				header("Content-type: image/gif");
				die(print "_");
			}
			if (isset($fileDisplay) && is_string($fileDisplay) && preg_match("/^([a-zA-Z0-9]{8,40})$/", $fileDisplay)) {
				$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileDisplay, "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
					$fileMime =  $getMediaFile['data'][0]['mime'];
					$fileUrl = $getMediaFile['data'][0]['source'];
					if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
						$readFile = array("type" => "other", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else {
						header("Content-type: image/gif");
						die(print "_");
					}
				}else {
					header("Content-type: image/gif");
					die(print "_");
				}
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "faces") {
			if (isset($_uri[2]) && is_string($_uri[2])) $fileName = $_uri[2]; else $fileName = null;
			if ($fileName == null) {
				header("Content-type: image/gif");
				die(print "_");
			}
			$fileName = $_tool->convertDatabaseString(preg_replace("/(([^a-zA-Z0-9]+)([\S]+)?)$/", "", $fileName));
			$fileQuery = mysqli_query($_db->port('beta'), "SELECT `faces` FROM `photos_faces` WHERE `display` = '{$fileName}' ORDER BY `id` DESC LIMIT 1;");
			if (!$fileQuery) {
				//.
			}
			if ($fileQuery && mysqli_num_rows($fileQuery) > 0) {
				$file = mysqli_fetch_assoc($fileQuery);
				$faceDisplay = $file['faces'];
				$getFaceThumbnail = $_faces->id(array("guy" => $g_user['mode'], "action" => "get", "label" => "display", "value" => $faceDisplay, "rows" => ["thumbnail"], "limit" => "LIMIT 1"));
				if (isset($getFaceThumbnail['return'], $getFaceThumbnail['data']) && $getFaceThumbnail['return'] == true && is_array($getFaceThumbnail['data']) && count($getFaceThumbnail['data']) > 0) {
					$fileDisplay = $getFaceThumbnail['data'][0]['thumbnail'];
				}else {
					print_r($getFaceThumbnail);
					die;
					header("Content-type: image/gif");
					die(print "_");
				}
			}else {
				header("Content-type: image/gif");
				die(print "_");
			}
			if (isset($fileDisplay) && $fileDisplay != null) {
				$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileDisplay, "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
					$fileMime =  $getMediaFile['data'][0]['mime'];
					$fileUrl = $getMediaFile['data'][0]['source'];
					if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
						$readFile = array("type" => "other", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else {
						header("Content-type: image/gif");
						die(print "_");
					}
				}else {
					header("Content-type: image/gif");
					die(print "_");
				}
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1], $_uri[2]) && is_string($_uri[1]) && is_string($_uri[2]) && $_uri[1] == "picture" && preg_match("/^([a-zA-Z0-9]{8,40})$/", $_uri[2])) {
			if (isset($g_user['mode'], $g_user['id'])) {
				if (isset($_uri[2]) && is_string($_uri[2])) $fileToken = $_uri[2]; else $fileToken = null;
				$actionExists = $_media->exists("photos", array("db" => "photos_info", "label" => "display", "value" => $fileToken));
				if (isset($actionExists['return']) && $actionExists['return'] == true) {
					if (isset($actionExists['exists'])) {
						if ($actionExists['exists'] == true) {
							$photos_ = array();
							$photos_['content']['title'] = $_language->text('pages_photos_picture.title', 'ucwords');
							$getDataFile = $_media->data("photos", array("action" => "get", "rows" => "*", "private" => false, "label" => "id", "value" => $actionExists['id'][0], "limit" => "LIMIT 1"));
							if (isset($getDataFile['return'], $getDataFile['data']) && $getDataFile['return'] == true) {
								if (isset($getDataFile['data']['path.original']) && $getDataFile['data']['path.original'] != "0") {
									$getDataFile['data']['path.original'] = $_tool->links($_tool->hash('decode', $getDataFile['data']['path.original'], $getDataFile['data']['token']));
								}
								if (isset($getDataFile['data']['path.large']) && $getDataFile['data']['path.large'] != "0") {
									$getDataFile['data']['path.large'] = $_tool->links($_tool->hash('decode', $getDataFile['data']['path.large'], $getDataFile['data']['token']));
								}
								if (isset($getDataFile['data']['path.medium']) && $getDataFile['data']['path.medium'] != "0") {
									$getDataFile['data']['path.medium'] = $_tool->links($_tool->hash('decode', $getDataFile['data']['path.medium'], $getDataFile['data']['token']));
								}
								if (isset($getDataFile['data']['path.small']) && $getDataFile['data']['path.small'] != "0") {
									$getDataFile['data']['path.small'] = $_tool->links($_tool->hash('decode', $getDataFile['data']['path.small'], $getDataFile['data']['token']));
								}
								$dataFile = $getDataFile['data'];
								die(require_once("source/ports/photos.picture.php"));
							}else {
								//.
							}
						}else {
							//. Not found
						}
					}else {
						//. Not found
					}
				}else {
					//. Return
				}
			}else {
				//. Not found
				die();
			}
		}else {
			die(require_once("source/ports/oops.php"));
		}
	}else if (isset($_uri[0]) && is_string($_uri[0]) && in_array($_uri[0], ["music", "musik"])) {
		// Port: music.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "raw") {
			if (is_string($_uri[2]) && preg_match("/^(static)/i", $_uri[2])) {
				//.
			}else {
				$fileName = isset($_uri[2]) && is_string($_uri[2]) ? $_tool->convertDatabaseString($_uri[2]) : null;
				if ($fileName == null) {
					die(require_once("source/ports/oops.php"));
				}
				$fileQuery = mysqli_query($_db->port('beta'), "SELECT `id`, `path.original`, `path.320kbps`, `path.128kbps`, `file.original`, `file.320kbps`, `file.128kbps` FROM `music_info` WHERE `file.original` = '".$fileName."' OR `file.320kbps` = '".$fileName."' OR `file.128kbps` = '".$fileName."' LIMIT 1;");
				if (!$fileQuery) {
					//.
				}
				if (mysqli_num_rows($fileQuery) == 0) {
					die(require_once("source/ports/oops.php"));
				}else {
					$fileFetch = mysqli_fetch_assoc($fileQuery);
					if (isset($fileFetch['path.128kbps'], $fileFetch['file.128kbps']) && is_string($fileFetch['path.128kbps']) && is_string($fileFetch['file.128kbps']) && $fileFetch['file.128kbps'] == $fileName) {
						$filePath = $fileFetch['path.128kbps'];
					}else if (isset($fileFetch['path.320kbps'], $fileFetch['file.320kbps']) && is_string($fileFetch['path.320kbps']) && is_string($fileFetch['file.320kbps']) && $fileFetch['file.320kbps'] == $fileName) {
						$filePath = $fileFetch['path.320kbps'];
					}else if (isset($fileFetch['path.original'], $fileFetch['file.original']) && is_string($fileFetch['path.original']) && is_string($fileFetch['file.original']) && $fileFetch['file.original'] == $fileName) {
						$filePath = $fileFetch['path.original'];
					}else {
						die(require_once("source/ports/oops.php"));
					}
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $filePath, "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileMime =  $getMediaFile['data'][0]['mime'];
						$fileUrl = $getMediaFile['data'][0]['source'];
						if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
							//. $addViews = $_media->views("music", array("action" => "add", "id" => $fetch['id'], "quality" => 0));
							$readFile = array("type" => "media", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							die(require_once("source/ports/oops.php"));
						}
					}else {
						die(require_once("source/ports/oops.php"));
					}
				}
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "cache") {
			if (isset($_uri[2]) && is_string($_uri[2])) $fileName = addslashes($_uri[2]); else $fileName = null;
			if ($fileName == null) {
				die(require_once("source/ports/oops.php"));
			}
			$fileName = preg_replace("/(\.(mp3|ogg))(\S+)$/", "$1", $fileName);
			$fileQuery = mysqli_query($_db->port('beta'),"SELECT `path` FROM `music_cache` WHERE `name` = '{$fileName}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' LIMIT 1");
			if (mysqli_num_rows($fileQuery) > 0) {
				$file = mysqli_fetch_assoc($fileQuery);
				$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $file['path'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
					$fileMime =  $getMediaFile['data'][0]['mime'];
					$fileUrl = $getMediaFile['data'][0]['source'];
					if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
						$readFile = array("type" => "media", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else {
						die(require_once("source/ports/oops.php"));
					}
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "embed") {
			require_once ("source/ports/music.embed.php");
		}else {
			die(require_once("source/ports/oops.php"));
		}
	}else if (isset($_uri[0]) && is_string($_uri[0]) && in_array($_uri[0], ["videos", "vio"])) {
		// Port: videos.
		if (isset($_uri[1]) && is_string($_uri[1]) && in_array($_uri[1], [null, ""])) {
			
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "raw") {
			if (isset($_uri[2]) && is_string($_uri[2])) $fileName = $_tool->convertDatabaseString($_uri[2]); else $fileName = null;
			if ($fileName == null) {
				die(require_once("source/ports/oops.php"));
			}
			if ($fileName == "thumbnail") {
				$fileName = isset($_uri[3]) && is_string($_uri[3]) ? $_uri[3] : null;
				if ($fileName == null) {
					header("Content-type: image/gif");
					die(print "_");
				}
				$fileName = $_tool->convertDatabaseString(preg_replace("/(([^a-zA-Z0-9]+)([\S]+)?)$/", "", $fileName));
				$fileQuery = mysqli_query($_db->port('beta'),"SELECT `path.thumbnail` FROM `videos_info` WHERE `file.thumbnail` = '".$fileName."' LIMIT 1;");
				if (!$fileQuery) {
					//.
				}
				if (mysqli_num_rows($fileQuery) == 0) {	
					//.
				}else {
					$file = mysqli_fetch_assoc($fileQuery);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $file['path.thumbnail'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileMime = $getMediaFile['data'][0]['mime'];
						$fileUrl = $getMediaFile['data'][0]['source'];
						if (!$_tool->siteDie($fileUrl) || file_exists($fileUrli)) {
							$readFile = array("type" => "media", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							//.
						}
					}else {
						//.
					}
				}
			}else {
				$fileRequest = "SELECT `id`, `file.hd`, `file.vga`, `file.qvga`, `path.hd`, `path.vga`, `path.qvga` FROM `videos_info` WHERE `file.hd` = '".$fileName."' OR `file.vga` = '".$fileName."' OR `file.qvga` = '".$fileName."' LIMIT 1;";
				$fileQuery = mysqli_query($_db->port('beta'), $fileRequest);
				if (!$fileQuery) {
					//.
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
				if (mysqli_num_rows($fileQuery) == 0) {
					//.
					die(header("HTTP/1.1 503 Service Unavailable"));
				}else {
					$fetch = mysqli_fetch_assoc($fileQuery);
					if ($fetch['file.hd'] == $fileName) {
						$fetch['path'] = $fetch['path.hd'];
					}else if ($fetch['file.vga'] == $fileName) {
						$fetch['path'] = $fetch['path.vga'];
					}else if ($fetch['file.qvga'] == $fileName) {
						$fetch['path'] = $fetch['path.qvga'];
					}
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $fetch['path'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileMime =  $getMediaFile['data'][0]['mime'];
						$fileUrl = $getMediaFile['data'][0]['source'];
						if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
							// $addViews = $_media->views("videos", array("action" => "add", "id" => $fetch['id'], "quality" => 0));
							if (in_array($fileMime, ["video/x-mpeg"])) {
								$fileMime = "video/mp4";
							}
							$readFile = array("type" => "media", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							//.
							die(header("HTTP/1.1 503 Service Unavailable"));
						}
					}else {
						//.
						die(header("HTTP/1.1 503 Service Unavailable"));
					}
				}
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "cache") {
			if (isset($_uri[2]) && is_string($_uri[2])) $fileName = addslashes($_uri[2]); else $fileName = null;
			if ($fileName == null) {
				die(require_once("source/ports/oops.php"));
			}
			if ($fileName == "thumbnail") {
				if (isset($_uri[3]) && is_string($_uri[3])) $fileName = addslashes($_uri[3]); else $fileName = null;
				if ($fileName == null) {
					die(require_once("source/ports/oops.php"));
				}
				$fileName = preg_replace("/(\.(jpg|png|gif|jpeg))(\S+)$/", "$1", $fileName);
				$fileQuery = mysqli_query($_db->port('beta'),"SELECT `thumbnail.path` FROM `videos_cache` WHERE `thumbnail` = '{$fileName}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' LIMIT 1");
				if (mysqli_num_rows($fileQuery) > 0) {	
					$file = mysqli_fetch_assoc($fileQuery);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $file['thumbnail.path'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileMime =  $getMediaFile['data'][0]['mime'];
						$fileUrl = $getMediaFile['data'][0]['source'];
						if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
							$readFile = array("type" => "media", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							die(require_once("source/ports/oops.php"));
						}
					}else {
						die(require_once("source/ports/oops.php"));
					}
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}else {
				$fileRequest = "SELECT `path` FROM `videos_cache` WHERE `name` = '".$fileName."' AND `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."' LIMIT 1;";
				$fileQuery = mysqli_query($_db->port('beta'), $fileRequest);
				if (!$fileQuery) {
					//.
				}
				if (mysqli_num_rows($fileQuery) == 0) {
					die(require_once("source/ports/oops.php"));
				}else {
					$file = mysqli_fetch_assoc($fileQuery);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $file['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileMime = $getMediaFile['data'][0]['mime'];
						$fileUrl = $getMediaFile['data'][0]['source'];
						if (!$_tool->siteDie($fileUrl) || file_exists($fileUrl)) {
							$readFile = array("type" => "media", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
							//print_r($readFile); die;
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							die(require_once("source/ports/oops.php"));
						}
					}else {
						die(require_once("source/ports/oops.php"));
					}
				}
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "embed") {
			if (isset($_uri[2]) && is_string($_uri[2])) $videosDisplay = addslashes($_uri[2]); else $videosDisplay = null;
			if ($videosDisplay == null) {
				die(require_once("source/ports/oops.php"));
			}
			$videosInfo_sql = "SELECT * FROM `videos_info` WHERE `display` = '{$videosDisplay}' LIMIT 1";
			$videosInfo_query = mysqli_query($_db->port('beta'), $videosInfo_sql);
			if ($videosInfo_query) $videoInfo_num = mysqli_num_rows($videosInfo_query); else $videoInfo_num = 0;
			if ($videoInfo_num > 0) {
				$videosInfo = mysqli_fetch_assoc($videosInfo_query);
				die(require_once ("source/ports/videos.embed.php"));
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "watch") {
			$videoDisplay = isset($_uri[2]) && is_string($_uri[2]) ? $_tool->convertDatabaseString($_uri[2]) : null;
			if ($videoDisplay == null) {
				die(require_once("source/ports/oops.php"));
			}
			die(require_once ("source/ports/videos.watch.php"));
			die;
			$videosInfo_sql = "SELECT * FROM `videos_info` WHERE `display` = '{$videosDisplay}' LIMIT 1";
			$videosInfo_query = mysqli_query($_db->port('beta'), $videosInfo_sql);
			if ($videosInfo_query) $videoInfo_num = mysqli_num_rows($videosInfo_query); else $videoInfo_num = 0;
			if ($videoInfo_num > 0) {
				$videosInfo = mysqli_fetch_assoc($videosInfo_query);
				die(require_once ("source/ports/videos.watch.php"));
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else {
			die(header("Location: ".$_tool->links('::redirect::home')));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "library")) {
		// Port: library.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "words") {
			if (isset($_uri[2]) && is_string($_uri[2])) $keyword = addslashes(urldecode($_uri[2])); else $keyword = null;
			if (isset($_uri[3]) && is_string($_uri[3])) $subinfo = addslashes($_uri[3]); else $subinfo = "general";
			if ($keyword == null || $subinfo == null) {
				die(require_once("source/ports/oops.php"));
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
				if ($subinfo == "audio") {

				}
				//$readFile = array("type" => "other", "path" => $css_file, "mime" => 'image/'.$ext_format, "expire" => $_parameter->get('http_cache_expire_static'));
				//die(require_once ("source/ports/templates/readfile.php"));
			}else {
				
				if ($subinfo == "define") {
					$existsWord = $_library->words(array("action" => "exists", "language" => $g_client['language']['code'], "type" => "all", "word" => $keyword));
					if (isset($existsWord['return'], $existsWord['exists']) && $existsWord['return'] == true) {
						if ($existsWord['exists'] == true) {
							$getWord = $_library->words(array("action" => "get", "language" => $g_client['language']['code'], "type" => "all", "word" => $keyword, "limit" => "LIMIT 4", "translate" => true));
							if (isset($getWord['return'], $getWord['data']) && $getWord['return'] == true && is_array($getWord['data']) && count($getWord['data']) > 0) {
								$fileContent = json_encode($getWord['data']);
								$readFile = array("type" => "other", "content" => $fileContent, "mime" => 'text/html', "expire" => $_parameter->get('http_cache_expire_static'));
								die(require_once ("source/ports/templates/readfile.php"));
							}
						}else if ($existsWord['exists'] == false) {
							$extractWord = $_library->words(array("action" => "extract", "language" => $g_client['language']['code'], "type" => "all", "word" => $keyword, "translate" => true));
							if (isset($extractWord['return'], $extractWord['data']) && $extractWord['return'] == true && is_array($extractWord['data']) && count($extractWord['data']) > 0) {
								$fileContent = json_encode($extractWord['data']);
								$readFile = array("type" => "other", "content" => $fileContent, "mime" => 'text/html', "expire" => $_parameter->get('http_cache_expire_static'));
								die(require_once ("source/ports/templates/readfile.php"));
							}
						}
					}else {
						//.
					}
				}
			}
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "maps")) {
		// Port: maps.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "raw") {
			
			if (isset($_uri[2]) && is_string($_uri[2]) && $_uri[2] == "places") {
				for ($i = 3; $i < count($_uri); $i++) {
					if ($i > 3) {
						$placesImageRequest .= "/{$_uri[$i]}";
					}else {
						$placesImageRequest = "{$_uri[$i]}";
					}
				}
				$placesRequestUri = array_filter(explode("/", $placesImageRequest));
				$placesRequestType = $placesRequestUri[0];
				$placesRequest = array_filter(explode("&", $placesRequestUri[1]));
				if (isset($placesRequestType) && count($placesRequest) > 0) {
					if ($placesRequestType == "query") {
						foreach ($placesRequest as $thisKey => $thisValue) {
							if (preg_match("/^(by\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['by'] = $valueMatch[2];
							}else if (preg_match("/^(output\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['output'] = $valueMatch[2];
							}else if (preg_match("/^(([a-z]+)\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr[$valueMatch[2]] = $valueMatch[3];
							}
						}
						$requestData = $_maps->places(false, array("type" => "search", "query" => $placesRequestArr));
						if (isset($requestData['return'], $requestData['data']) && $requestData['return'] == true && $requestData['data'] != null) {
							print json_encode($requestData['data']);
						}else {
							print json_encode(array("return" => false));
						}
					}else if ($placesRequestType == "staticmap") {
						foreach ($placesRequest as $thisKey => $thisValue) {
							if (preg_match("/^(location\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['center'] = $valueMatch[2];
							}else if (preg_match("/^(zoom\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['zoom'] = $valueMatch[2];
							}else if (preg_match("/^(size\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['size'] = $valueMatch[2];
							}else if (preg_match("/^(maptype\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['maptype'] = $valueMatch[2];
							}else if (preg_match("/^(markers\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['markers'] = $valueMatch[2];
							}else if (preg_match("/^(format\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['format'] = $valueMatch[2];
							}
						}
						if (!isset($placesRequestArr['center']) || !isset($placesRequestArr['zoom']) || !isset($placesRequestArr['format']) || !isset($placesRequestArr['maptype'])) {
							die(header("HTTP/1.1 503 Service Unavailable"));
						}
						$placesRequestUrl = "http://maps.googleapis.com/maps/api/staticmap";
						$count = 0;
						foreach ($placesRequestArr as $thisKey => $thisValue) {
							if ($count == 0) {
								$placesRequestUrl .= "?{$thisKey}={$thisValue}";
							}else {
								$placesRequestUrl .= "&{$thisKey}={$thisValue}";
							}
							$count++;
						}
						if (!isset($placesRequestUrl) || $placesRequestUrl == null) {
							$placesRequestUrl = "storage/image/static/default/maps-places-thumbnail-notfound.jpg";
						}
						$readFile = array("type" => "other", "path" => $placesRequestUrl, "mime" => 'image/'.$placesRequestArr['format'], "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else if ($placesRequestType == "streetview") {
						foreach ($placesRequest as $thisKey => $thisValue) {
							if (preg_match("/^(location\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['location'] = $valueMatch[2];
							}else if (preg_match("/^(heading\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['heading'] = $valueMatch[2];
							}else if (preg_match("/^(size\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['size'] = $valueMatch[2];
							}else if (preg_match("/^(pitch\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['pitch'] = $valueMatch[2];
							}else if (preg_match("/^(format\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['format'] = $valueMatch[2];
							}
						}
						if (!isset($placesRequestArr['location']) || !isset($placesRequestArr['heading']) || !isset($placesRequestArr['size']) || !isset($placesRequestArr['pitch']) || !isset($placesRequestArr['format'])) {
							die(header("HTTP/1.1 503 Service Unavailable"));
						}
						$placesRequestUrl = "http://maps.googleapis.com/maps/api/streetview";
						$count = 0;
						foreach ($placesRequestArr as $thisKey => $thisValue) {
							if ($count == 0) {
								$placesRequestUrl .= "?{$thisKey}={$thisValue}";
							}else {
								$placesRequestUrl .= "&{$thisKey}={$thisValue}";
							}
							$count++;
						}
						if (!isset($placesRequestUrl) || $placesRequestUrl == null) {
							$placesRequestUrl = "storage/image/static/default/maps-places-thumbnail-notfound.jpg";
						}
						$readFile = array("type" => "other", "path" => $placesRequestUrl, "mime" => 'image/'.$placesRequestArr['format'], "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else if ($placesRequestType == "thumbnail") {
						foreach ($placesRequest as $key => $thisValue) {
							if (preg_match("/^(title\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['title'] = $valueMatch[2];
							}else if (preg_match("/^(size\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['size'] = $valueMatch[2];
							}else if (preg_match("/^(getFormat\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['format'] = $valueMatch[2];
							}else if (preg_match("/^(format\=([^&]+))/", $thisValue, $valueMatch)) {
								$placesRequestArr['format'] = $valueMatch[2];
							}
						}
						if (isset($placesRequestArr['getFormat']) && $placesRequestArr['getFormat'] != null) {
							$placesRequestArr['getFormat'] = $placesRequestArr['getFormat'];
						}else {
							$placesRequestArr['getFormat'] = "json";
						}
						if (!isset($placesRequestArr['title']) || !isset($placesRequestArr['size']) || !isset($placesRequestArr['format'])) {
							die(header("HTTP/1.1 503 Service Unavailable"));
						}
						$url = "http://en.wikipedia.org/w/api.php?action=query&titles={$placesRequestArr['title']}&prop=pageimages&format={$placesRequestArr['getFormat']}&pithumbsize={$placesRequestArr['size']}";
						$getArr = $_tool->curl_file($url);
						if (isset($getArr['return'], $getArr['data']) && $getArr['return'] == true) {
							$arr = json_decode($getArr['data'], true);
							if (isset($arr['query']['pages'][-1])) {
								$placesRequestUrl = null;
							}else {
								$placesRequestUrl = null;
								$count = 0;
								foreach ($arr['query']['pages'] as $id => $arrThis) {
									if ($count == 0 && isset($arrThis['thumbnail']['source'])) {
										$placesRequestUrl = $arrThis['thumbnail']['source'];
										$count++;
										break;
									}else {
										continue;
									}
								}
							}
							if (!isset($placesRequestUrl) || $placesRequestUrl == null) {
								$placesRequestUrl = "storage/image/static/default/maps-places-thumbnail-notfound.jpg";
							}
							$readFile = array("type" => "other", "path" => $placesRequestUrl, "mime" => 'image/'.$placesRequestArr['format'], "expire" => $_parameter->get('http_cache_expire_static'));
							die(require_once ("source/ports/templates/readfile.php"));
						}else {
							die(header("HTTP/1.1 503 Service Unavailable"));
						}
					}else {
						die(header("HTTP/1.1 503 Service Unavailable"));
					}
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "places") {
			die(print_r("updating.."));
		}else {
			die(header("HTTP/1.1 503 Service Unavailable"));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "oops")) {
		// Port: oops.
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "sites")) {
		// Port: sites.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "direct") {
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$siteInput .= "/{$_uri[$i]}";
				}else {
					$siteInput = "{$_uri[$i]}";
				}
			}
			if (!isset($siteInput) || $siteInput == null) {
				die;
			}
			if (isset($siteInput) && is_string($siteInput) && $_tool->isBase64($siteInput)) {
				//.
			}else {
				//. die(require_once("source/ports/oops.php"));
			}
			die(require_once("source/ports/sites.direct.php"));
		}else if (isset($_uri[1], $g_user['login']) && $g_user['login'] == true && is_string($_uri[1]) && $_uri[1] == "info") {
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$siteInput .= "/{$_uri[$i]}";
				}else {
					$siteInput = "{$_uri[$i]}";
				}
			}
			if (!isset($siteInput) || $siteInput == null) {
				print_r($_tool->hash('encode', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', $_parameter->get('hash_sites_direct')));
				die;
			}
			if (isset($siteInput) && is_string($siteInput) && $_tool->isBase64($siteInput)) {
				//.
			}else {
				//. die(require_once("source/ports/oops.php"));
			}
			die(require_once("source/ports/sites.info.php"));
		}else {
			die(require_once("source/ports/oops.php"));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "6027c486")) {
		// Port: storage.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "static") {
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$filePath .= '/'.strip_tags($_uri[$i]);
				}else {
					$filePath = strip_tags($_uri[$i]);
				}
			}
			if (isset($g_client['mode']) && isset($g_client['mode']['encryption']) && $g_client['mode']['encryption'] == true) {
				$filePath = $_tool->hash('decode', $filePath, $_parameter->get('hash_storage_static'));
				if (!isset(explode("/", $filePath)[0])) {
					die(require_once("source/ports/oops.php"));
				}
				$fileExt = explode("/", $filePath)[0];
			}else {
				$fileExt = $_uri[2];
			}
			$filePath = "storage/static/".$filePath;
			if (!$_tool->siteDie($filePath) || file_exists($filePath)) {
				$fileUrl = $filePath;
				$fileMime = $_tool->mime_content_type($fileExt);
				$readFile = array("type" => "other", "path" => $fileUrl, "mime" => $fileMime, "expire" => $_parameter->get('http_cache_expire_static'));
				die(require_once ("source/ports/templates/readfile.php"));
			}else {
				die(require_once("source/ports/oops.php"));
			}
		}else {
			die(require_once("source/ports/oops.php"));
		}
	}else {
		if (isset($g_user['login']) && $g_user['login'] == false) {
			for ($i = 0; $i < count($_uri); $i++) {
				if ($i == 0) {
					$_uri_now = $_uri[$i];
				}else {
					$_uri_now .= "/{$_uri[$i]}";
				}
			}
			$_SESSION["redirect"]['later'] = $_tool->hash('encode', $_uri_now, $_parameter->get('hash_sites_direct'));
		}
		die(header("Location: ".$_tool->links('::redirect::home')));
	}
}else {
	die(require_once("source/ports/oops.php"));
}
# Encoding : end.
ob_end_flush();
?>
