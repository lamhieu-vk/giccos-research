<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class sites {
	function __construct () {
		$GLOBALS["_sites"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function data ($object) {
		$this->callUserInfo();
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_storage = $this->class['_storage'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "*";
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = " LIMIT 1";
		if ($label == null || $value == null) {
			return array("return" => false, "reason" => "");
		}
		$query = mysqli_query($db, "SELECT {$rows} FROM `sites_info` WHERE `{$label}` = '{$value}' {$limit}");
		if ($query) $num = mysqli_num_rows($query); else $num = 0;
		if ($num == 0) {
			return array("return" => false, "reason" => "");
		}else {
			$dataReturn = array();
			while ($fetch = mysqli_fetch_assoc($query)) {
				$dataReturn[] = $fetch;
			}
			return array("return" => true, "data" => $dataReturn);
		}
	}
	function extract ($path, $reset = false) {
		$this->callUserInfo();
		$regex = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
		if (!preg_match($regex, $path)) {
			return array("return" => false, "reason" => "");
		}
		if (!$this->class['_tool']->siteDie($path)) {
			$pathEncode = urlencode($path);
			$dns = $this->class['_tool']->getDNS($path);
			$host = $dns['host'];
			$ip = $dns['ip'];
			$domain = $dns['domain'];
			if ($reset == false){
				$get = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'), "SELECT `id` FROM `sites_info` WHERE `path` = '{$path}' AND `time` + {$this->class['_parameter']->get('sites_id_time_limit')} > {$this->class['_tool']->timeNow()}"));
			}else {
				$get = 1;
			}
			if ($reset == true || $get == 0) {
				$htmlPage = $this->class['_tool']->curl($path, 5, array("cookie" => true));
				if ($htmlPage['return'] == true) {
					require ("html_dom.php");
					$dom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
					$dom->load($htmlPage['data'], true, true);
					foreach ($dom->find("meta[property='og:title']") as $element) {
					    $title = $element->content;
					}
					if (!isset($title)) {
					    foreach ($dom->find("title") as $element) {
						    $title = $element->plaintext;
						}
					}
					if (isset($title)) {
					    $title = trim($title);
					    if (strlen($title >= 100)) {
							$title = substr($title, 0, 97).'...';
						}
					}else {
						$title = "";
					}
					foreach ($dom->find("meta[property='og:description']") as $element) {
					    $description = $element->content;
					}
					if (!isset($description)) {
					    foreach ($dom->find("meta[name='description']") as $element) {
						    $description = $element->content;
						}
					}
					if (isset($description)) {
					    $description = trim($description);
					    if (strlen($description >= 500)) {
							$description = substr($description, 0, 497).'...';
						}
					}else {
						$description = "";
					}
					foreach ($dom->find("meta[property='og:image']") as $element) {
						$thumbnail[] = $element->content;
					}
					if (!isset($thumbnail)) {
					    foreach ($dom->find("body") as $body) {
						    foreach ($body->find("img") as $element) {
							    if (in_array(strtolower(pathinfo($element->src, PATHINFO_EXTENSION)), array('jpg', 'jpeg')) && ($element->alt != "" || $element->title != "") && filter_var($element->src, FILTER_VALIDATE_URL)) {
							        $thumbnail[] = $element->src;
							    }
							}
							if (!isset($thumbnail)) {
							    foreach ($body->find("img") as $element) {
								    if (in_array(strtolower(pathinfo($element->src, PATHINFO_EXTENSION)), array('jpg', 'jpeg')) && filter_var($element->src, FILTER_VALIDATE_URL)) {
								        $thumbnail[] = $element->src;
								    }
								}
							}
						}
					}
					if (isset($thumbnail)) {
						$thumbnail = "photos/raw/other/".$this->class['_tool']->hash('encode', urlencode($thumbnail[0]), $this->class['_parameter']->get('hash_photos_other'));
					}else {
						$thumbnail = null;
					}
					foreach ($dom->find("meta[property='gis:webpage']") as $element) {
					    $secureToken = $element->content;
					}
					if (!isset($secureToken)) {
					    foreach ($dom->find("meta[name='gis_webpage']") as $element) {
						    $secureToken = $element->content;
						}
					}
					if (!isset($secureToken)) {
					    foreach ($dom->find("gis[type='webpage']") as $element) {
						    $secureToken = $element->content;
						}
					}
					if (!isset($secureToken)) {
						$secure = array("verified" => false);
					}else {
						$checkSecure = $this->secure("get", array("token" => $secureToken, "host" => $path));
						if (isset($checkSecure['return']) && $checkSecure['return'] == true) {
							if (isset($checkSecure['verified'], $checkSecure['id']) && $checkSecure['verified'] == true && $checkSecure['id'] > 0) {
								$secure = array("verified" => true, "id" => $checkSecure['id']);
							}else {
								$secure = array("verified" => false);
							}
						}else {
							$secure = array("verified" => false);
						}
					}
				}else {
					return array("return" => false, "reason" => $htmlPage['reason']);
				}
			}else {
				$query = mysqli_query($this->class['_db']->port('beta'), "SELECT `title`, `thumbnail`, `description` FROM `sites_info` WHERE `path` = '{$path}' LIMIT 1");
				$fetch = mysqli_fetch_assoc($query);
				$host = $host;
				$ip = $ip;
				$domain = $domain;
				$title = $fetch['title'];
				$thumbnail = $fetch['thumbnail'];
				$description = $fetch['description'];
			}
			$data = array("host" => $host, "ip" => $ip, "domain" => $domain, "path" => $path, "title" => $title, "thumbnail" => $thumbnail, "description" => $description);
			return array("return" => true, "data" => $data);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function add ($path) {
		$regex = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
		if (preg_match($regex, $path)) {
			$db = $this->class['_db']->port('beta');
			$pathEncode = urlencode($path);
			$site = $info = null;
			$time = time();
			$die = $this->class['_tool']->siteDie($path);
			$dns = $this->class['_tool']->getDNS($path);
			$host = $dns['host'];
			$ip = $dns['ip'];
			$domain = $dns['domain'];
			$info_query = mysqli_query($db, "SELECT `id`, `time` FROM `sites_info` WHERE `path` = '{$path}'");
			$info = mysqli_fetch_assoc($info_query);
			if (mysqli_num_rows($info_query) == 0 || (mysqli_num_rows($info_query) > 0 && $info['time'] + $this->class['_parameter']->get('site_info_time_limit') < $time)) {
				if (!$die) {
					$returnAction = $this->extract($path);
					if ($returnAction['return'] == true) {
						$info = $returnAction['data'];
						$info['token'] = hash('crc32', time().'::'.rand().'::('.$host.'_'.$ip.'_'.$domain.')');
						$info['title'] = strip_tags($info['title']);
						$info['description'] = strip_tags($info['description']);
						$info['path'] = $info['path'];
						if (isset($info['secure']['verified'], $info['secure']['id'])) {
							if ($info['secure']['verified'] == true && $info['secure']['id'] > 0) {
								$info['secure'] = $info['secure']['id'];
							}else {
								$info['secure'] = 0;
							}
						}else {
							$info['secure'] = 0;
						}
						if (mysqli_num_rows($info_query) == 0) {
							mysqli_query($db, "INSERT INTO `sites_info` (`id`, `token`, `secure`, `host`, `path`, `title`, `thumbnail`, `description`, `time`) VALUES (NULL, '{$info['token']}', '{$info['secure']}', '{$info['host']}', '{$info['path']}', '{$info['title']}', '{$info['thumbnail']}', '{$info['description']}', '{$time}')");
							$info['id'] = mysqli_insert_id($this->class['_db']->port('beta'));
						}else {
							mysqli_query($db, "UPDATE `sites_info` SET `time` = '{$time}', `secure` = '{$info['secure']}', `title` = '{$info['title']}', `thumbnail` = '{$info['thumbnail']}', `description` = '{$info['description']}' WHERE `path` = '{$path}'");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					if (mysqli_num_rows($info_query) > 0) {
						mysqli_query($db, "DELETE FROM `sites_info` WHERE `path` = '{$path}'");
					}
					return array("return" => false, "reason" => "");
				}
			}
			$site_query = mysqli_query($db, "SELECT * FROM `sites_id` WHERE `host` = '{$host}' LIMIT 1");
			if (mysqli_num_rows($site_query) == 0) {
				$name = preg_replace($regex, "$5", $host);
				$rate = $count = 1;
				$secure = 0;
				$insert = mysqli_query($db, "INSERT INTO `sites_id` (`id`, `host`, `ip`, `name`, `time`, `rate`, `count`, `secure`) VALUES (NULL, '{$host}', '{$ip}', '{$name}', '{$time}', '{$rate}', '{$count}', '{$secure}')");
			}
			$site = mysqli_fetch_assoc($site_query);
			if ($site['time'] + $this->class['_parameter']->get('sites_id_time_limit') < $time) {
				$num = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `sites_info`"));
				$count = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `sites_info` WHERE `host` = '{$host}'"));
				$rate_v1 = $this->class['_parameter']->get('sites_id_rate_v1');
				$rate_v2 = $num / $this->class['_parameter']->get('sites_id_rate_v2');
				$rate_v3 = $num / $this->class['_parameter']->get('sites_id_rate_v3');
				$rate_v4 = $num / $this->class['_parameter']->get('sites_id_rate_v4');
				$rate_v5 = $num / $this->class['_parameter']->get('sites_id_rate_v5');
				if ($count >= $rate_v5) {
					$rate = 5;
				}else if ($count >= $rate_v4) {
					$rate = 4;
				}else if ($count >= $rate_v3) {
					$rate = 3;
				}else if ($count >= $rate_v2) {
					$rate = 2;
				}else if ($count >= $rate_v1) {
					$rate = 1;
				}
				$update = mysqli_query($db, "UPDATE `sites_id` SET `time` = '{$time}', `rate` = '{$rate}', `count` = '{$count}' WHERE `host` = '{$host}'");
				if ($update == true) {
					$site['time'] = $time;
					$site['rate'] = $rate;
					$site['count'] = $count;
				}
			}
			return array("return" => true, "data" => $info);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function secure ($action, $object) {
		if ($action == "get") {
			if (isset($object['token']) && is_string($object['token'])) $token = $object['token']; else $token = null;
			if (isset($object['host']) && is_string($object['host'])) $host = $object['host']; else $host = null;
			$regex = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
			if ($token != null && $host != null && preg_match($regex, $host)) {
				$db = $this->class['_db']->port('beta');
				$getExistsQuery = mysqli_query($db, "SELECT `id`, `host` FROM `sites_secure` WHERE `token` = '{$token}' LIMIT 1");
				if (mysql_num_rows($getExistsQuery) > 0) {
					$fetchExists = mysqli_fetch_assoc($getExistsQuery);
					$idSecure = $fetchExists['id'];
					$hostAllow = $fetchExists['host'];
					$newArrayUrlAllow = $newarrayUrlCheck = array();
					$arrayUrlAllow = array_filter(explode("/", $hostAllow));
					foreach ($arrayUrlAllow as $arrayUrlAllowV) {
						if (isset($arrayUrlAllowV)) {
							$newArrayUrlAllow[] = $arrayUrlAllowV;
						}
					}
					$arrayUrlAllow = $newArrayUrlAllow;
					$arrayUrlCheck = array_filter(explode("/", $host));
					foreach ($arrayUrlCheck as $arrayUrlCheckV) {
						if (isset($arrayUrlCheckV)) {
							$newarrayUrlCheck[] = $arrayUrlCheckV;
						}
					}
					$arrayUrlCheck = $newarrayUrlCheck;
					if (count($arrayUrlAllow) == 0 || count($arrayUrlCheck) == 0) {
						return array("return" => false, "reason" => "");
					}
					if (count($arrayUrlAllow) >= count($arrayUrlCheck)) {
						$arrayUrlCount = count($arrayUrlCheck);
					}else {
						$arrayUrlCount = count($arrayUrlAllow);
					}
					$freeCharacter = 0;
					$wrongUrl = 0;
					for ($i = 0; $i < $arrayUrlCount; $i++) { 
						if ($arrayUrlAllow[$i] == "*") {
							$freeCharacter++;
							break;
						}else {
							if ($arrayUrlAllow[$i] != $arrayUrlCheck[$i]) {
								$wrongUrl++;
								break;
							}
						}
					}
					if ($freeCharacter > 0 && $wrongUrl == 0) {
						$secureVerifiedQuery = mysqli_query($db, "SELECT `guy.type`, `guy.id` FROM `sites_secure` WHERE `id` = '{$idSecure}' AND `verified` = '1' LIMIT 1");
						$secureVerified = mysqli_num_rows($secureVerifiedQuery);
						if ($secureVerified > 0) {
							$secureAuthor = mysqli_fetch_assoc($secureVerifiedQuery);
							return array("return" => true, "verified" => true, "id" => $idSecure, "auhtor" => array("type" => $secureAuthor['guy.type'], "id" => $secureAuthor['guy.id']));
						}else { 
							return array("return" => true, "verified" => false);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "add") {
			
		}else if ($action == "remove") {
			
		}else if ($action == "verification") {
			
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>