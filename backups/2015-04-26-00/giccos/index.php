<?php
# Config.
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
require_once ("source/config.php");
# Firewall.
if (isset($_SESSION['security']['client']['status'], $_SESSION['security']['firewall']['status']) && $_SESSION['security']['firewall']['status'] == true) {
	if ($_SESSION['security']['client']['status'] == false) {
		if ($_SESSION['security']['client']['block']['time'] + $_SESSION['security']['client']['block']['count'] * 300 < time()) {
			$_SESSION['security']['client']['status'] = true;
			$_SESSION['security']['client']['block']['time'] = 0;
		}else {
			die(header("HTTP/1.1 503 Service Unavailable"));
		}
	}else {
		if (!isset($_SESSION['security']['visits'])) {
			$_SESSION['security']['visits'] = array();
		}
		$_SESSION['security']['visits'][] = time();
	}
}else {
	if (!isset($_SESSION['security']['client'])) {
		$_SESSION['security']['client'] = array();
	}
	if (!isset($_SESSION['security']['client']['block'])) {
		$_SESSION['security']['client']['block'] = array("count" => 0, "time" => 0);
	}
	$_SESSION['security']['client']['status'] = true;
}
if (isset($_SESSION['security']['visits']) && is_array($_SESSION['security']['visits']) && count($_SESSION['security']['visits']) >= 10) {
	arsort($_SESSION['security']['visits']);
	$count = 0;
	foreach ($_SESSION['security']['visits'] as $i => $thisVisit) {
		if ($count == 0) {
			$_SESSION['security']['visits']['start'] = $thisVisit;
		}else if ($count == 9) {
			$_SESSION['security']['visits']['end'] = $thisVisit;
		}else if ($count > 9) {
			break;
		}
		$count++;
	}
	if ($_SESSION['security']['visits']['start'] - $_SESSION['security']['visits']['end'] < 10) {
		$_SESSION['security']['visits'] = array();
		if (!isset($_SESSION['security']['client'])) {
			$_SESSION['security']['client'] = array();
		}
		$_SESSION['security']['client']['status'] = false;
		$_SESSION['security']['client']['block']['time'] = time();
		$_SESSION['security']['client']['block']['count'] = $_SESSION['security']['client']['block']['count'] + 1;
		die(header("HTTP/1.1 503 Service Unavailable"));
	}
	$_SESSION['security']['visits'] = array();
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
$_uri_0 = [null, "", "feed", "groups", "pages", "wall", "messages", "accounts", "oops", "sites", "maps", "videos", "photos", "music"];
if (isset($g_client['token']['source']['url']) && (in_array($_uri[0], $_uri_0, true) || $_uri[0] == $g_client['token']['source']['url'])) {
	function portCheck ($text, $port) {
		if (preg_match_all("/({$text})/i", $port)) {
			return true;
		}else {
			return false;
		}
	}
	if (isset($_uri[0], $g_client['token']['source']['url']) && is_string($_uri[0]) && $_uri[0] == $g_client['token']['source']['url']) {
		if (isset($_uri[1], $g_client['token']['source']['js']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['js']) {
			// Port: javascripts.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$scripts_file .= "/{$_uri[$i]}";
				}else {
					$scripts_file = "{$_uri[$i]}";
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				$scripts_file = preg_replace("/(\.js)$/", "", $scripts_file);
				$scripts_file = preg_replace("/.js(\S+)$/", "", $scripts_file);
				$scripts_file = "source/js/{$scripts_file}.php";
				if (file_exists($scripts_file)) {
					$readFile = array("path" => $scripts_file, "mime" => $_parameter->get('contentType_js.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
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
					$css_file .= "/{$_uri[$i]}";
				}else {
					$css_file = "{$_uri[$i]}";
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (preg_match("/(\.css)$/", $css_file)) {
					$css_file = preg_replace("/(\.css)$/", "", $css_file);
					$css_file = preg_replace("/.css(\S+)$/", "", $css_file);
					$css_file = "source/css/{$css_file}.php";
					if (file_exists($css_file)) {
						$readFile = array("path" => $css_file, "mime" => $_parameter->get('contentType_css.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else {
						die(header("HTTP/1.1 503 Service Unavailable"));
					}
				}else {
					$ext_format = preg_replace("/([a-zA-Z0-9\.\-\/]+)(\.+)([a-zA-Z0-9\.]{2,6})$/", "$3", $css_file);
					$css_file = "source/css/{$css_file}";
					if (file_exists($css_file)) {
						$readFile = array("path" => $css_file, "mime" => 'image/'.$ext_format, "expire" => $_parameter->get('http_cache_expire_static'));
						die(require_once ("source/ports/templates/readfile.php"));
					}else {
						die(header("HTTP/1.1 503 Service Unavailable"));
					}
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1], $g_client['token']['source']['ajax']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['ajax']) {
			// Port: ajax.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$ajax_file .= "/{$_uri[$i]}";
				}else {
					$ajax_file = "{$_uri[$i]}";
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
				$ajax_file = preg_replace("/(\.ajax)$/", "", $ajax_file);
				$ajax_file = preg_replace("/.ajax(\S+)$/", "", $ajax_file);
				$ajax_file = "source/ajax/{$ajax_file}.php";
				if (file_exists($ajax_file)) {
					$readFile = array("path" => $ajax_file, "mime" => $_parameter->get('contentType_json.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
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
					$xml_file .= "/{$_uri[$i]}";
				}else {
					$xml_file = "{$_uri[$i]}";
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				$xml_file = preg_replace("/(\.xml)$/", "", $xml_file);
				$xml_file = preg_replace("/.xml(\S+)$/", "", $xml_file);
				$xml_file = "source/xml/{$xml_file}.php";
				if (file_exists($xml_file)) {
					$readFile = array("path" => $xml_file, "mime" => $_parameter->get('contentType_xml.utf8'), "expire" => $_parameter->get('http_cache_expire_static'));
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
					$font_file .= "/{$_uri[$i]}";
				}else {
					$font_file = "{$_uri[$i]}";
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				$font_file = preg_replace("/([a-zA-Z0-9\-\.\/]+)([a-zA-Z0-9\.\?\=]+)?/", "$1", $font_file);
				$font_file = preg_replace("/\.(svg|ttf|otf|woff|eof)(\S+)$/", "$1", $font_file);
				$font_file = "source/font/{$font_file}";
				if (file_exists($font_file)) {
					$file_ext = pathinfo($font_file, PATHINFO_EXTENSION);
					if ($file_ext == "svg") {
						$file_mine = "image/svg+xml";
					}else if ($file_ext == "ttf") {
						$file_mine = "application/x-font-ttf";
					}else if ($file_ext == "otf") {
						$file_mine = "application/x-font-opentype";
					}else if ($file_ext == "woff") {
						$file_mine = "application/font-woff";
					}else if ($file_ext == "eof") {
						$file_mine = "application/vnd.ms-fontobject";
					}else {
						$file_mine = "font/opentype";
					}
					$readFile = array("path" => $font_file, "mime" => $file_mine.'; charset: utf-8', "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				die(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (isset($_uri[1], $g_client['token']['source']['file']) && is_string($_uri[1]) && $_uri[1] == $g_client['token']['source']['file']) {
			// Port: file.
			for ($i = 2; $i < count($_uri); $i++) {
				if ($i > 2) {
					$path_file .= "/{$_uri[$i]}";
				}else {
					$path_file = "{$_uri[$i]}";
				}
			}
			if (isset($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")){
				if (isset($_uri[2]) && is_string($_uri[2])) $storageFolder = $_uri[2]; else $storageFolder = null;
				if (isset($_uri[3]) && is_string($_uri[3])) $storageName = addslashes($_uri[3]); else $storageName = null;
				$fileQuerySql = "SELECT `token`, `path`, `mime` FROM `storage_static` WHERE `folder` = '{$storageFolder}' AND `name` = '{$storageName}' LIMIT 1";
				$fileQuery = mysqli_query($_db->port('beta'), $fileQuerySql);
				$fileNum = mysqli_num_rows($fileQuery);
				if ($fileNum > 0) {
					$fileFetch = mysqli_fetch_assoc($fileQuery);
					$fileFetch['source'] = $_tool->hash('decode', $fileFetch['path'], $fileFetch['token']);
					$readFile = array("path" => $fileFetch['source'], "mime" => $fileFetch['mime'], "expire" => $_parameter->get('http_cache_expire_static'));
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
		die(header("Location: {$_tool->links('::redirect::home')}"));
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "feed") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: feed.
		if ((isset($_SERVER['HTTP_REFERER']) && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) == false) || $_SERVER['HTTP_HOST'] != $_tool->links("::host")) {
			die(header("HTTP/1.1 503 Service Unavailable"));
		}
		if (isset($g_user['mode']) && (!isset($_uri[1]) || (isset($_uri[1]) && is_string($_uri[1]) && in_array($_uri[1], ["", "general"])))) {
			$feed_['content']['title'] = $_language->text('pages_feed.title', 'ucwords', false);
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "feed", "require" => "none")));
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
				$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
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
				$feed_['value'] = true;
				$feed_['content']['uri'] = strtolower($_uri[2]);
				$feed_['content']['uri'] = array_filter(explode("-", $_uri[2]));
				$feed_['content']['require'] = array();
				$feed_['content']['require']['key'] = "stamp";
				$feed_['content']['require']['value'] = array();
				for ($i = 0; $i < count($feed_['content']['uri']); $i++) { 
					if (is_numeric($feed_['content']['uri'][$i])) {
						$feed_['content']['require']['value'][] = $feed_['content']['uri'][$i];
					}
				}
				if (count($feed_['content']['require']['value']) == 0) {
					//.
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
					$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
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
						$feed_['content']['this'] = json_encode(array("port" => array("type" => "time", "require" => $feed_['content']['require'])));
					}else {
						$feed_['query']['time'] = "AND `time` >= '{$feed_['content']['require']['value'][0]}'";
						$feed_['content']['title'] = $_tool->agoDatetime($feed_['content']['require']['value'][0])." - ".$_language->text('now', 'strtolower');
						$feed_['content']['this'] = json_encode(array("port" => array("type" => "time", "require" => $feed_['content']['require'])));
					}
					$feed_['content']['description'] = $feed_['content']['title'];
				}else {
					//.
					die();
				}
				$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
				$feed_['query']['order'] = "ORDER BY `id` DESC";
				$feed_['query']['limit'] = "LIMIT 10";
				$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['time']} {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
			}else {
				$feed_['value'] = false;
				$feed_['content']['this'] = json_encode(array("port" => array("type" => "time", "require" => "none")));
			}
			die(require_once ("source/ports/feed.time.php"));
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "family") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "feed", "require" => "none")));
			$feed_['content']['from'] = $_language->text('family', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "friends") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "friends", "require" => "none")));
			$feed_['content']['from'] = $_language->text('friends', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "country") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "country", "require" => "none")));
			$feed_['content']['from'] = $_language->text('country', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "live") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "live", "require" => "none")));
			$feed_['content']['from'] = $_language->text('live', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "pages") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "pages", "require" => "none")));
			$feed_['content']['from'] = $_language->text('pages', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "groups") {
			$feed_['content']['title'] = "";
			$feed_['content']['this'] = json_encode(array("port" => array("type" => "groups", "require" => "none")));
			$feed_['content']['from'] = $_language->text('groups', 'strtolower', false);
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && in_array($_uri[1], ["tag", "tags", "hashtag", "hashtags"])) {
			if (isset($_uri[2], $g_user['mode']) && is_string($_uri[2]) && $_uri[2] != null) {
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
						$feed_['content']['require'][$i][1] = array_filter(explode(",", $feed_['content']['require'][$i][1]));
						for ($x = 0; $x < count($feed_['content']['require'][$i][1]); $x++) {
							$cache_hashtag_['username'] = $cache_hashtag_['author'] = null;
							if (preg_match("/^(\@)/", $feed_['content']['require'][$i][1][$x]) == true) {
								$cache_hashtag_['username'] = preg_replace("/^(\@)/", "", $feed_['content']['require'][$i][1][$x]);
								$cache_hashtag_['author']['id'] = mysqli_fetch_assoc(mysqli_query($_db->port('beta'),"SELECT `id` FROM `users` WHERE `username` = '{$cache_hashtag_['username']}'"))['id'];
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
				$feed_['content']['this'] = json_encode(array("port" => array("type" => "hashtag", "require" => $feed_['content']['require'])));
				$feed_['query']['source'] = "AND `id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']})";
				if ($g_user['mode']['type'] == "user") {
					$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
					$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
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
		}else if (isset($_uri[1], $g_user['mode']) && is_string($_uri[1]) && $_uri[1] == "status") {
			if (isset($_uri[2], $g_user['mode']) && is_string($_uri[2]) && $_uri[2] != null) {
				$feed_['value'] = true;
				$feed_['content']['uri'] = strtolower($_uri[2]);
				$feed_['content']['uri'] = array_filter(explode("&", $_uri[2]));
				$feed_['content']['require'] = array();
				for ($i = 0; $i < count($feed_['content']['uri']); $i++) {
					$feed_['content']['require'][] = $feed_['content']['uri'][$i];
				}
				$feed_['source']['count'] = 0;
				for ($i = 0; $i < count($feed_['content']['require']); $i++) {
					if (preg_match("/([^a-zA-Z0-9]{8})/", $_tool->convertDatabaseString($feed_['content']['require'][$i])) == true) {
						unset($feed_['content']['require'][$i]);
						continue;
					}else {
						$feed_['content']['require'][$i] = $_tool->convertDatabaseString($feed_['content']['require'][$i]);
						if (mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT `id` FROM `status` WHERE `token` = '{$feed_['content']['require'][$i]}'")) == 0) {
							unset($feed_['content']['require'][$i]);
							continue;
						}else {
							if ($feed_['source']['count'] == 0) {
								$feed_['query']['source'] = "(`token` = '{$feed_['content']['require'][$i]}')";
							}else {
								$feed_['query']['source'] .= " OR (`token` = '{$feed_['content']['require'][$i]}')";
							}
							$feed_['source']['count']++;
						}
					}
				}
				if ($feed_['source']['count'] == 0 || $feed_['query']['source'] == null || count($feed_['content']['require']) == 0) {
					$feed_['value'] = false;
					$feed_['content']['this'] = json_encode(array("port" => array("type" => "status", "require" => "none")));
				}else {
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					$feed_['content']['this'] = json_encode(array("port" => array("type" => "status", "require" => $feed_['content']['require'])));
					if ($g_user['mode']['type'] == "user") {
						$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
						$feed_['query']['private'] = "AND (((`private.view` = '0' OR `private.view` = '1') AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `private.view` = '0' OR (`author.type` = 'user' AND `author.id` = '{$g_user['id']}')))";
					}else {
						$feed_['query']['hide'] = "";
						$feed_['query']['private'] = "AND (`private.view` = '4')";
					}
					$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
					$feed_['query']['order'] = "";
					$feed_['query']['limit'] = "LIMIT 1";
					$feed_['query']['code'] = "SELECT * FROM `status` WHERE `id` > '0' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
					if (mysqli_num_rows(mysqli_query($_db->port('beta'), $feed_['query']['code'])) == 0) {
						$feed_['value'] = false;
					}else {
						$feed_['value'] = true;
						/*
						for ($i = 0; $i < count($feed_['content']['require']); $i++) { 
							if ($i == 0) {
								$feed_['content']['title'] = ucfirst($feed_['content']['require'][$i]);
							}else {
								$feed_['content']['title'] .= '| '.ucfirst($feed_['content']['require'][$i]);
							}
						}
						*/
						$feed_['content']['title'] = $feed_['content']['description'] = $_language->text('status_are_selected', 'strtolower', false);
					}
				}
			}else {
				$feed_['value'] = false;
				$feed_['content']['this'] = json_encode(array("port" => array("type" => "status", "require" => "none")));
			}
			die(require_once ("source/ports/feed.status.php"));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "groups") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: groups.
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "wall") && (isset($g_user['login']) && $g_user['login'] == true)) {
		// Port: wall.
		if (isset($_uri[1]) && is_string($_uri[1])) $_uri[1] = addslashes($_uri[1]); else $_uri[1] = null;
		if (isset($g_user['mode']) && (!isset($_uri[1]) || (isset($_uri[1]) && $_uri[1] == null))) {
			die(header("Location: {$_tool->links('::redirect::home')}"));
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
		$messages_ = array();
		if (isset($g_user['mode']) && (!isset($_uri[1]) || $_uri[1] == null)) {
			$messages_['page'] = "index";
			$messages_['tab'] = null;
		}else if (isset($_uri[1], $g_user['mode']) && $_uri[1] != null) {
			$messages_['page'] = "conversation";
			$messages_['tab'] =  $_tool->convertDatabaseString($_uri[1]);
		}
		die(require_once ("source/ports/messages.php"));
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "accounts")) {
		// Port: accounts.
		if (isset($_uri[1], $g_user['login']) && is_string($_uri[1]) && $g_user['login'] == false && in_array($_uri[1], array('login', 'register'), true)) {
			if ($_uri[1] == "login") {
				die(require_once ("source/ports/accounts.login.php"));
			}else if ($_uri[1] == "register") {
				die(require_once ("source/ports/accounts.register.php"));
			}else {
				if (portCheck($_uri[1], "login")) {
					die(header("Location: {$_tool->links('accounts/login')}"));
				}else if (portCheck($_uri[1], "register")) {
					die(header("Location: {$_tool->links('accounts/register')}"));
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
				for ($i = 3; $i < count($_uri); $i++) {
					if ($i > 3) {
						$photos_file .= "/{$_uri[$i]}";
					}else {
						$photos_file = "{$_uri[$i]}";
					}
				}
				$photos_url = $_parameter->get('path_image_static_default').'/'.$photos_file;
				$photos_ext = pathinfo($photos_url, PATHINFO_EXTENSION);
				if (!$_tool->siteDie($photos_url)) {
					$readFile = array("path" => $photos_url, "mime" => 'image/'.$photos_ext, "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}else if (is_string($_uri[2]) && is_string($_uri[2]) && preg_match("/^(other)/i", $_uri[2])) {
				for ($i = 3; $i < count($_uri); $i++) {
					if ($i > 3) {
						$photos_file .= "/{$_uri[$i]}";
					}else {
						$photos_file = "{$_uri[$i]}";
					}
				}
				$photos_file = urldecode($_tool->hash('decode', $photos_file, $_parameter->get('hash_photos_other')));
				$photos_url = preg_replace("/(\.(jpg|png|gif|jpeg))(\S+)$/", "$1", $photos_file);
				$photos_ext = pathinfo($photos_url, PATHINFO_EXTENSION);
				if (!$_tool->siteDie($photos_url)) {
					$readFile = array("path" => $photos_url, "mime" => 'image/'.$photos_ext, "expire" => $_parameter->get('http_cache_expire_static'));
					die(require_once ("source/ports/templates/readfile.php"));
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}else {
				if (isset($_uri[2]) && is_string($_uri[2])) $file = $_uri[2]; else $file = null;
				if ($file == null) {
					die(require_once("source/ports/oops.php"));
				}
				$file_query = mysqli_query($_db->port('beta'), "SELECT `id`, `path.original`, `path.large`, `path.medium`, `path.small` FROM `photos_info` WHERE `file.original` = '{$file}' OR `file.large` = '{$file}' OR `file.medium` = '{$file}' OR `file.small` = '{$file}' LIMIT 1");
				if (mysqli_num_rows($file_query) > 0) {
					$fetch = mysqli_fetch_assoc($file_query);
					$file_isOriginal = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `photos_info` WHERE `id` = '{$fetch['id']}' AND `file.original` = '{$file}' LIMIT 1"));
					if ($file_isOriginal > 0) {
						$fetch['path'] = $fetch['path.original'];
					}else {
						$file_isLarge = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `photos_info` WHERE `id` = '{$fetch['id']}' AND `file.large` = '{$file}' LIMIT 1"));
						if ($file_isLarge > 0) {
							$fetch['path'] = $fetch['path.large'];
						}else {
							$file_isMedium = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `photos_info` WHERE `id` = '{$fetch['id']}' AND `file.medium` = '{$file}' LIMIT 1"));
							if ($file_isMedium > 0) {
								$fetch['path'] = $fetch['path.medium'];
							}else {
								$file_isSmall = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `photos_info` WHERE `id` = '{$fetch['id']}' AND `file.small` = '{$file}' LIMIT 1"));
								if ($file_isSmall > 0) {
									$fetch['path'] = $fetch['path.small'];
								}else {
									die(require_once("source/ports/oops.php"));
								}
							}
						}
					}
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fetch['path'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$file_mime =  $getMediaFile['file'][0]['mime'];
						$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if (!$_tool->siteDie($file_url)) {
							if ($file_isOriginal > 0 || $file_isLarge > 0){
								$addViews = $_media->views("photos", array("action" => "add", "id" => $fetch['id'], "quality" => 0));
							}
							$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
			}
		}else if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "cache") {
			if (isset($_uri[2]) && is_string($_uri[2])) $fileName = addslashes($_uri[2]); else $fileName = null;
			if (isset($_uri[3]) && is_string($_uri[3])) $fileThumbnail = addslashes($_uri[3]); else $fileThumbnail = null;
			if ($fileName == null) {
				die(require_once("source/ports/oops.php"));
			}
			$fileName = preg_replace("/(\.(jpg|png|gif|jpeg))(\S+)$/", "$1", $fileName);
			if ($fileThumbnail != null) {
				$fileQuery = mysqli_query($_db->port('beta'), "SELECT `faces.image` FROM `photos_cache_usertag` WHERE `display` = '{$fileThumbnail}' AND `photos` IN (SELECT `secret` FROM `photos_cache` WHERE `name` = '{$fileName}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}') LIMIT 1");
				if (mysqli_num_rows($fileQuery) > 0) {
					$file = mysqli_fetch_assoc($fileQuery);
					$fileDisplay = $file['faces.image'];
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}else {
				$fileQuery = mysqli_query($_db->port('beta'), "SELECT `path`, `secret` FROM `photos_cache` WHERE `name` = '{$fileName}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' LIMIT 1");
				if (mysqli_num_rows($fileQuery) > 0) {
					$file = mysqli_fetch_assoc($fileQuery);
					$fileDisplay = $file['path'];
				}else {
					die(require_once("source/ports/oops.php"));
				}
			}
			if (isset($fileDisplay) && $fileDisplay != null) {
				$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileDisplay, "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
					$file_mime =  $getMediaFile['file'][0]['mime'];
					$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					if (!$_tool->siteDie($file_url)) {
						$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
		}else if (isset($_uri[1], $_uri[2]) && is_string($_uri[1]) && is_string($_uri[2]) && $_uri[1] == "picture" && preg_match("/^([a-zA-Z0-9]{8})$/", $_uri[2])) {
			if (isset($g_user['mode'], $g_user['id'])) {
				if (isset($_uri[2]) && is_string($_uri[2])) $fileToken = $_uri[2]; else $fileToken = null;
				$actionExists = $_media->exists("photos", array("db" => "photos_info", "rows" => "token", "value" => $fileToken));
				if (isset($actionExists['return']) && $actionExists['return'] == true) {
					if (isset($actionExists['exists'])) {
						if ($actionExists['exists'] == true) {
							$photos_ = array();
							$photos_['content']['title'] = $_language->text('pages_photos_picture.title', 'ucwords');
							$getDataFile = $_media->data("photos", array("action" => "get", "rows" => "*", "private" => false, "id" => $actionExists['id'][0]));
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
						//. Error
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
				if (isset($_uri[2]) && is_string($_uri[2])) $file = $_uri[2]; else $file = null;
				if ($file == null) {
					die(require_once("source/ports/oops.php"));
				}
				$file_query = mysqli_query($_db->port('beta'), "SELECT `id`, `path.original` FROM `music_info` WHERE `file.original` = '{$file}' LIMIT 1");
				if (mysqli_num_rows($file_query) > 0) {
					$fetch = mysqli_fetch_assoc($file_query);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $fetch['path.original'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$file_mime =  $getMediaFile['file'][0]['mime'];
						$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if (!$_tool->siteDie($file_url)) {
							$addViews = $_media->views("music", array("action" => "add", "id" => $fetch['id'], "quality" => 0));
							$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
				if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
					$file_mime =  $getMediaFile['file'][0]['mime'];
					$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					if (!$_tool->siteDie($file_url)) {
						$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "raw") {
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
				$fileQuery = mysqli_query($_db->port('beta'),"SELECT `path.thumbnail` FROM `videos_info` WHERE `file.thumbnail` = '{$fileName}' LIMIT 1");
				if (mysqli_num_rows($fileQuery) > 0) {	
					$file = mysqli_fetch_assoc($fileQuery);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $file['path.thumbnail'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$file_mime =  $getMediaFile['file'][0]['mime'];
						$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if (!$_tool->siteDie($file_url)) {
							$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
				$fileName = preg_replace("/(\.(mp4|flv|avi|wmv))(\S+)$/", "$1", $fileName);
				$fileQuery = mysqli_query($_db->port('beta'), "SELECT `id`, `path.hd`, `path.sd` FROM `videos_info` WHERE `file.hd` = '{$fileName}' OR `file.sd` = '{$fileName}' LIMIT 1");
				if (mysqli_num_rows($fileQuery) > 0) {
					$fetch = mysqli_fetch_assoc($fileQuery);
					$file_isHD = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `videos_info` WHERE `id` = '{$fetch['id']}' AND `file.hd` = '{$fileName}' LIMIT 1"));
					if ($file_isHD > 0) {
						$fetch['path'] = $fetch['path.hd'];
					}else {
						$file_isSD = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `videos_info` WHERE `id` = '{$fetch['id']}' AND `file.sd` = '{$fileName}' LIMIT 1"));
						if ($file_isSD > 0) {
							$fetch['path'] = $fetch['path.sd'];
						}else {
							die(require_once("source/ports/oops.php"));
						}
					}
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $fetch['path'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$file_mime =  $getMediaFile['file'][0]['mime'];
						$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if (!$_tool->siteDie($file_url)) {
							$addViews = $_media->views("videos", array("action" => "add", "id" => $fetch['id'], "quality" => 0));
							$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$file_mime =  $getMediaFile['file'][0]['mime'];
						$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if (!$_tool->siteDie($file_url)) {
							$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
				$fileName = preg_replace("/(\.(mp4|flv|avi|wmv))(\S+)$/", "$1", $fileName);
				$fileQuery = mysqli_query($_db->port('beta'),"SELECT `path` FROM `videos_cache` WHERE `name` = '{$fileName}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' LIMIT 1");
				if (mysqli_num_rows($fileQuery) > 0) {
					$file = mysqli_fetch_assoc($fileQuery);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $file['path'], "rows" => "`token`, `path`, `mime`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$file_mime =  $getMediaFile['file'][0]['mime'];
						$file_url = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if (!$_tool->siteDie($file_url)) {
							$readFile = array("path" => $file_url, "mime" => $file_mime, "expire" => $_parameter->get('http_cache_expire_static'));
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
			if (isset($_uri[2]) && is_string($_uri[2])) $videosDisplay = addslashes($_uri[2]); else $videosDisplay = null;
			if ($videosDisplay == null) {
				die(require_once("source/ports/oops.php"));
			}
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
			die(header("Location: {$_tool->links('::redirect::home')}"));
		}
	}else if ((isset($_uri[0]) && is_string($_uri[0]) && $_uri[0] == "maps")) {
		// Port: maps.
		if (isset($_uri[1]) && is_string($_uri[1]) && $_uri[1] == "raw") {
			if (isset($_uri[2]) && is_string($_uri[2]) && $_uri[2] == "places") {
				for ($i = 3; $i < count($_uri); $i++) {
					if ($i > 3) {
						$places_image .= "/{$_uri[$i]}";
					}else {
						$places_image = "{$_uri[$i]}";
					}
				}
				$places_request_uri = array_filter(explode("/", $places_image));
				$places_request_type = $places_request_uri[0];
				$places_request = array_filter(explode("&", $places_request_uri[1]));
				if (isset($places_request_type) && count($places_request) > 0) {
					if ($places_request_type == "query") {
						foreach ($places_request as $key => $places_request_value) {
							if (preg_match("/^(by\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['by'] = $value[2];
							}else if (preg_match("/^(output\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['output'] = $value[2];
							}else if (preg_match("/^(([a-z]+)\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v[$value[2]] = $value[3];
							}
						}
						$requestData = $_maps->places(false, array("type" => "search", "query" => $places_request_v));
						if (isset($requestData['return'], $requestData['data']) && $requestData['return'] == true && $requestData['data'] != null) {
							print json_encode($requestData['data']);
						}else {
							print json_encode(array("return" => false));
						}
					}else if ($places_request_type == "staticmap") {
						foreach ($places_request as $key => $places_request_value) {
							if (preg_match("/^(location\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['center'] = $value[2];
							}else if (preg_match("/^(zoom\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['zoom'] = $value[2];
							}else if (preg_match("/^(size\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['size'] = $value[2];
							}else if (preg_match("/^(maptype\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['maptype'] = $value[2];
							}else if (preg_match("/^(markers\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['markers'] = $value[2];
							}else if (preg_match("/^(format\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['format'] = $value[2];
							}
						}
						$places_request_url = "http://maps.googleapis.com/maps/api/staticmap";
						$count = 0;
						foreach ($places_request_v as $key => $value) {
							if ($count == 0) {
								$places_request_url .= "?{$key}={$value}";
							}else {
								$places_request_url .= "&{$key}={$value}";
							}
							$count++;
						}
						header("Content-type: image/gif");
						die(readfile($places_request_url));
					}else if ($places_request_type == "streetview") {
						foreach ($places_request as $key => $places_request_value) {
							if (preg_match("/^(location\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['location'] = $value[2];
							}else if (preg_match("/^(heading\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['heading'] = $value[2];
							}else if (preg_match("/^(size\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['size'] = $value[2];
							}else if (preg_match("/^(pitch\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['pitch'] = $value[2];
							}else if (preg_match("/^(format\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['format'] = $value[2];
							}
						}
						$places_request_url = "http://maps.googleapis.com/maps/api/streetview";
						$count = 0;
						foreach ($places_request_v as $key => $value) {
							if ($count == 0) {
								$places_request_url .= "?{$key}={$value}";
							}else {
								$places_request_url .= "&{$key}={$value}";
							}
							$count++;
						}
						header("Content-type: image/gif");
						die(readfile($places_request_url));
					}else if ($places_request_type == "thumbnail") {
						foreach ($places_request as $key => $places_request_value) {
							if (preg_match("/^(title\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['title'] = $value[2];
							}else if (preg_match("/^(size\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['size'] = $value[2];
							}else if (preg_match("/^(getFormat\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['format'] = $value[2];
							}else if (preg_match("/^(format\=([^&]+))/", $places_request_value, $value)) {
								$places_request_v['format'] = $value[2];
							}
						}
						if (isset($places_request_v['getFormat']) && $places_request_v['getFormat'] != null) {
							$places_request_v['getFormat'] = $places_request_v['getFormat'];
						}else {
							$places_request_v['getFormat'] = "json";
						}
						$url = "http://en.wikipedia.org/w/api.php?action=query&titles={$places_request_v['title']}&prop=pageimages&format={$places_request_v['getFormat']}&pithumbsize={$places_request_v['size']}";
						$getArr = $_tool->curl_file($url);
						if (isset($getArr['return'], $getArr['data']) && $getArr['return'] == true) {
							$arr = json_decode($getArr['data'], true);
							if (isset($arr['query']['pages'][-1])) {
								$places_request_url = "";
							}else {
								$places_request_url = null;
								$count = 0;
								foreach ($arr['query']['pages'] as $id => $arrThis) {
									if ($count == 0 && isset($arrThis['thumbnail']['source'])) {
										$places_request_url = $arrThis['thumbnail']['source'];
										$count++;
										break;
									}else {
										continue;
									}
								}
							}
							header("Content-type: image/gif");
							die(readfile($places_request_url));
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
					$sites_url .= "/{$_uri[$i]}";
				}else {
					$sites_url = "{$_uri[$i]}";
				}
			}
			$sites_url = urldecode($_tool->hash('decode', $sites_url, $_parameter->get('hash_sites_direct')));
			$regex = "/^((http|https|ftp|ftps):\/\/?(www)?\.?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
			if (preg_match($regex, $sites_url) && !$_tool->siteDie($sites_url)) {
				$sites_query = mysqli_query($_db->port('beta'), "SELECT `id` FROM `sites_info` WHERE `path` = '{$sites_url}'");
				if (mysqli_num_rows($sites_query) > 0) {
					$sites = mysqli_fetch_assoc($sites_query);
					$view_num = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `sites_views` WHERE `sites.id` = '{$sites['id']}' AND `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}' AND `time` > {$_tool->timeNow()} - 86400 / 2 ORDER BY `time` DESC LIMIT 1"));
					if ($view_num == 0) {
						mysqli_query($_db->port('beta'), "INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`) VALUES (NULL , '{$_tool->timeNow()}', '{$sites['id']}', '{$g_user['mode']['type']}', '{$g_user['mode']['id']}')");
					}
				}
				$sitesisCached = 0;
				if (isset($g_cache['sites']) && is_array($g_cache['sites'])) {
					$clientSites = $g_cache['sites'];
					foreach ($clientSites as $key => $clientSitesValue) {
						if (isset($clientSitesValue['host'], $clientSitesValue['path'], $clientSitesValue['secure'], $clientSitesValue['getTime'])) {
							if (isset($clientSitesValue['path']) && $clientSitesValue['path'] == $sites_url) {
								if (isset($clientSitesValue['getTime']) && $clientSitesValue['getTime'] + 3600 > $_tool->timeNow()) {
									$thisSitesCached = $clientSitesValue;
									$sitesisCached++;
									break;
								}
							}
						}
					}
				}
				if ($sitesisCached == 0) {
					$sitePath = $sites_url;
					$siteDNS = $_tool->getDNS($sites_url);
					$siteHost = $siteDNS['host'];
					$sites_exist = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `sites_id` WHERE `host` = '{$siteHost}' LIMIT 1"));
					if ($sites_exist > 0) {
						$siteSecure = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `sites_id` WHERE `host` = '{$siteHost}' AND `secure` = '0' LIMIT 1"));
						if ($siteSecure == 1) {
							$siteSecure = array("status" => false);
						}else {
							$siteSecure = array("status" => true);
						}
						$sessionSitesThis = 0;
						if (isset($g_cache['sites']) && is_array($g_cache['sites'])) {
							$clientSites = $g_cache['sites'];
							foreach ($clientSites as $key => $clientSitesValue) {
								if (isset($clientSitesValue['host'], $clientSitesValue['path'], $clientSitesValue['secure'], $clientSitesValue['getTime'])) {
									if (isset($clientSitesValue['path']) && $clientSitesValue['path'] == $sites_url) {
										if (isset($clientSitesValue['getTime']) && $clientSitesValue['getTime'] + 3600 > $_tool->timeNow()) {
											$sessionSitesThis++;
											break;
										}else {
											unset($clientSites[$key]);
										}
									}
								}else {
									unset($clientSites[$key]);
								}
							}
						}else {
							$clientSites = array();
						}
						if ($sessionSitesThis == 0) {
							$clientSites[] = array("host" => $siteHost, "path" => $sitePath, "secure" => $siteSecure, "getTime" => $_tool->timeNow());
							$_SESSION["cache"]['sites'] = $g_cache['sites'] = $clientSites;
						}
					}else {
						//.
					}
				}else {
					if (isset($thisSitesCached)) {
						$sites_exist = 1;
						$siteHost = $thisSitesCached['host'];
						$sitePath = $thisSitesCached['path'];
						$siteSecure = $thisSitesCached['secure'];
					}else {
						$sites_exist = 0;
					}
				}
				if ($sites_exist > 0) {
					if (isset($secure['status']) && $secure['status'] == true) {
						print "secure: ". $siteHost . " - ".$sites_url;
					}else {
						print "not secure: ". $siteHost . " - ".$sites_url;
					}
				}else {
					//.
				}
				die();
			}else {
				die(require_once("source/ports/oops.php"));
			}
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
			$_SESSION["RedirectLater"] = $_tool->hash('encode', $_uri_now, $_parameter->get('hash_sites_direct'));
		}
		die(header("Location: {$_tool->links('::redirect::home')}"));
	}
}else {
	die(require_once("source/ports/oops.php"));
}
?>