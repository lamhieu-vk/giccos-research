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
			$this->user = array(
				"login" => false, 
				"id" => 0, 
				"mode" => array(
					"type" => "guy", 
					"id" => $this->class['_client']->client(true)
				)
			);
		}
	}
	function data ($object) {
		if (isset($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$modeType = $this->user['mode']['type'];
				$modeId = $this->user['mode']['id'];
				$userId = $this->user['id'];
				$modeArr = array("type" => $modeType, "id" => $modeId);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		if (!isset($modeType) || !isset($modeId)) {
			return array("return" => false, "reason" => "");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_logs = $this->class['_logs'];
			$db = $this->class['_db']->port('beta');
		}
		//.
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if ($type == "id") {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {

			}else if ($action == "get") {

			}else if ($action == "remove") {

			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($type == "info") {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				
			}else if ($action == "get") {
				if (isset($object['label']) && is_string($object['label'])) $siteLabel = $object['label']; else $siteLabel = null;
				if (isset($object['value']) && is_string($object['value'])) $siteValue = $object['value']; else $siteValue = null;
				if (isset($object['limit']) && is_string($object['limit'])) $siteLimit = $object['limit']; else $siteLimit = null;
				if ($siteLabel == null || $siteValue == null) {
					return array("return" => false, "reason" => "1");
				}
				if ($siteLabel != "url") {
					$siteRequest = "SELECT * FROM `sites_info` WHERE `{$siteLabel}` = '{$siteValue}' {$siteLimit}";
				}else {
					$regexUrl = $_parameter->get('regex_sites_url');
					if (!preg_match($regexUrl, $siteValue, $matchUrl)) {
						return array("return" => false, "reason" => "2");
					}
					if (isset($matchUrl[7]) && is_string($matchUrl[7])) {
						$siteHost = $matchUrl[7];
					}else {
						return array("return" => false, "reason" => "");
					}
					if (isset($matchUrl[10]) && is_string($matchUrl[10])) {
						$sitePath = $matchUrl[10];
					}else {
						$sitePath = null;
					}
					$siteRequest = "SELECT * FROM `sites_info` WHERE `host` = '{$siteHost}'";
					if (isset($sitePath) && is_string($sitePath) && $sitePath != null) {
						$pathStrLength = strlen($sitePath);
						if ($pathStrLength <= 20) {
							$siteRequest .= " AND `path` = '{$sitePath}'";
						}else {
							$pathStrLines = $pathStrLength / 4;
							for ($i = 0; $i < 4; $i++) {
								if (!isset($siteRequestPush) || $siteRequestPush == null) {
									$siteRequestPush = "`path` REGEXP '".addslashes(substr($sitePath, $i * $pathStrLines, $pathStrLines))."'";
								}else {
									$siteRequestPush .= " OR `path` REGEXP '".addslashes(substr($sitePath, $i * $pathStrLines, $pathStrLines))."'";
								}
							}
							$siteRequest .= " AND ({$siteRequestPush})";
						}
					}
					$siteRequest .= " {$siteLimit}";
				}
				$siteQuery = mysqli_query($db, $siteRequest);
				if (!$siteQuery) {
					return array("return" => false, "reason" => "2");
				}
				$countArr = mysqli_num_rows($siteQuery);
				$dataArr = array();
				while ($siteFetch = mysqli_fetch_assoc($siteQuery)) {
					$dataArr[] = $siteFetch;
				}
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if ($action == "remove") {

			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function embed ($object) {
		if (isset($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$modeType = $this->user['mode']['type'];
				$modeId = $this->user['mode']['id'];
				$userId = $this->user['id'];
				$modeArr = array("type" => $modeType, "id" => $modeId);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		if (!isset($modeType) || !isset($modeId)) {
			return array("return" => false, "reason" => "");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_logs = $this->class['_logs'];
			$db = $this->class['_db']->port('beta');
		}
		//.
		if (!isset($object['url']) || !is_string($object['url'])) {
			return array("return" => false, "reason" => "1");
		}else {
			$siteUrl = $object['url'];
		}
		if (!isset($object['host']) || !is_string($object['host'])) {
			$siteHost = null;
		}else {
			$siteHost = $object['host'];
		}
		$regexUrl = $_parameter->get('regex_sites_url');
		if (!preg_match($regexUrl, $siteUrl, $matchUrl)) {
			return array("return" => false, "reason" => "3");
		}
		if ($_tool->siteDie($siteUrl) == true) {
			return array("return" => false, "reason" => "4");
		}
		if (isset($object['class']) && is_string($object['class'])) $className = $object['class']; else $className = null;
		if (isset($object['size'], $object['size']['width']) && is_string($object['size']['width'])) $sizeWidth = $object['size']['width']; else $sizeWidth = null;
		if (isset($object['size'], $object['size']['height']) && is_string($object['size']['height'])) $sizeHeight = $object['size']['height']; else $sizeHeight = null;
		if ($sizeWidth == null || $sizeHeight == null) {
			return array("return" => false, "reason" => "x");
		}
		if (!isset($siteHost) || $siteHost == null) {
			if (isset($matchUrl[7]) && is_string($matchUrl[7])) {
				$siteHost = $matchUrl[7];
			}else {
				return array("return" => false, "reason" => "5");
			}
		}
		if (isset($matchUrl[10]) && is_string($matchUrl[10])) {
			$sitePath = $matchUrl[10];
		}else {
			return array("return" => false, "reason" => "6");
		}
		if (isset($siteHost) && preg_match("/(dailymotion|dailymotion\.com|dai\.ly)/i", $siteHost)) {
			if (preg_match("/^(video)\/([a-zA-Z0-9]+)\_([\S]+)?$/", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}else if (preg_match("/^([\S]+)(\/)?$/", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "dailymotion";
				$embedCode = '<iframe class="'.$className.'" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="//www.dailymotion.com/embed/video/'.$embedId.'" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(youtube|youtube\.com|youtu\.be)/i", $siteHost)) {
			if (preg_match("/^(watch\?v\=)([\S]+)(\/)?$/", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}else if (preg_match("/^([\S]+)(\/)?$/", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "youtube";
				$embedCode = '<iframe class="'.$className.'" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://www.youtube.com/embed/'.$embedId.'" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(vimeo|vimeo\.com)/i", $siteHost)) {
			if (preg_match("/^(channels)\/([\S]+)\/([0-9]+)$/", $sitePath, $idMatch) && isset($idMatch[3]) && is_string($idMatch[3])) {
				$embedId = $idMatch[3];
			}else if (preg_match("/^([0-9]+)(\/)?$/", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "vimeo";
				$embedCode = '<iframe class="'.$className.'" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://player.vimeo.com/video/'.$embedId.'?color=ffffff" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(vine|vine\.co)/i", $siteHost)) {
			if (preg_match("/^(v)\/([\S]+)(\/)?$/", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "vine";
				$embedCode = '<iframe class="'.$className.'" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://vine.co/v/'.$embedId.'/embed/simple" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(flickr|flickr\.com)/i", $siteHost)) {
			if (preg_match("/^(photos)\/([\S]+)\/([\S]+)(\/)?$/", $sitePath, $idMatch) && isset($idMatch[2], $idMatch[3]) && is_string($idMatch[2]) && is_string($idMatch[3])) {
				$embedId = $idMatch[2].'\/'.$idMatch[3];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "flickr";
				$embedCode = '<iframe class="'.$className.'" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://www.flickr.com/photos/'.$embedId.'/player/" frameborder="0" allowfullscreen></iframe>';
			}
		}else {
			return array("return" => false, "reason" => "f");
		}
		if (isset($siteHost, $embedType, $embedId, $embedCode)) {
			$dataArr = array(
				"host" => $siteHost,
				"url" => $siteUrl,
				"embed" => array(
					"type" => $embedType,
					"id" => $embedId,
					"code" => $embedCode,
					"size" => array(
						"height" => $sizeHeight,
						"width" => $sizeWidth
					)
				)
			);
			return array("return" => true, "data" => $dataArr);
		}else {
			return array("return" => false, "reason" => "a");
		}
		//.

	}
	function extract ($object) {
		if (isset($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$modeType = $this->user['mode']['type'];
				$modeId = $this->user['mode']['id'];
				$userId = $this->user['id'];
				$modeArr = array("type" => $modeType, "id" => $modeId);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		if (!isset($modeType) || !isset($modeId)) {
			return array("return" => false, "reason" => "");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_logs = $this->class['_logs'];
			$db = $this->class['_db']->port('beta');
		}
		//.
		if (!isset($object['url']) || !is_string($object['url'])) {
			return array("return" => false, "reason" => "1");
		}else {
			$siteUrl = $object['url'];
		}
		if (!isset($object['reset']) || !is_bool($object['reset'])) {
			$dataReset = false;
		}else {
			$dataReset = $object['reset'];
		}
		$regexUrl = $_parameter->get('regex_sites_url');
		if (!preg_match($regexUrl, $siteUrl, $matchUrl)) {
			return array("return" => false, "reason" => "2");
		}
		if ($_tool->siteDie($siteUrl) == true) {
			return array("return" => false, "reason" => "3");
		}
		//$htmlPage = $_tool->contentMediaFile($siteUrl, 5);
		$htmlPage = $_tool->curl($siteUrl, 5, array("cookie" => true));
		if (isset($htmlPage['return'], $htmlPage['data']) && $htmlPage['return'] == true) {
			$htmlPage = $htmlPage['data'];
		}else {
			return array("return" => false, "reason" => "4");
		}
		if (!isset($htmlPage) || !is_string($htmlPage) || $htmlPage == null) {
			return array("return" => false, "reason" => "5");
		}else {
			$time = time();
			$siteInfo = array();
			$siteInfo['url'] = $siteUrl;
			if (isset($matchUrl[2]) && is_string($matchUrl[2])) {
				$siteInfo['scheme'] = $matchUrl[2];
			}else {
				$siteInfo['scheme'] = null;
			}
			if (isset($matchUrl[7]) && is_string($matchUrl[7])) {
				$siteInfo['host'] = $matchUrl[7];
			}else {
				$siteInfo['host'] = null;
			}
			if (isset($matchUrl[8]) && is_string($matchUrl[8])) {
				$siteInfo['name'] = $matchUrl[8];
			}else {
				$siteInfo['name'] = null;
			}
			if (isset($matchUrl[9]) && is_string($matchUrl[9])) {
				$siteInfo['dot'] = $matchUrl[9];
			}else {
				$siteInfo['dot'] = null;
			}
			if (isset($matchUrl[10]) && is_string($matchUrl[10])) {
				$siteInfo['path'] = $matchUrl[10];
			}else {
				$siteInfo['path'] = null;
			}
			if (isset($matchUrl[13]) && is_string($matchUrl[13])) {
				$siteInfo['mime'] = $matchUrl[13];
			}else {
				$siteInfo['mime'] = null;
			}
			$getInfoRequest = "SELECT * FROM `sites_info` WHERE `host` = '{$siteInfo['host']}'";
			if (isset($siteInfo['path']) && is_string($siteInfo['path']) && $siteInfo['path'] != null) {
				$pathStrLength = strlen($siteInfo['path']);
				if ($pathStrLength <= 20) {
					$getInfoRequest .= " AND `path` = '{$siteInfo['path']}'";
				}else {
					$pathStrLines = $pathStrLength / 4;
					for ($i = 0; $i < 4; $i++) {
						if (!isset($getInfoRequestPush) || $getInfoRequestPush == null) {
							$getInfoRequestPush = "`path` REGEXP '".addslashes(substr($siteInfo['path'], $i * $pathStrLines, $pathStrLines))."'";
						}else {
							$getInfoRequestPush .= " OR `path` REGEXP '".addslashes(substr($siteInfo['path'], $i * $pathStrLines, $pathStrLines))."'";
						}
					}
					$getInfoRequest .= " AND ({$getInfoRequestPush})";
				}
			}
			$getInfoRequest .= " ORDER BY `id` DESC LIMIT 1";
			$getInfoQuery = mysqli_query($db, $getInfoRequest);
			if (!$getInfoQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getInfoQuery) == 0) {
				$allowExtract = true;
			}else {
				$allowExtract = false;
				$siteInfoSaved = mysqli_fetch_assoc($getInfoQuery);
				if ($siteInfoSaved['updated'] + $_parameter->get('sites_info_time_update') < $time) {
					$allowExtract = true;
					$isExpired = true;
				}
			}
			if ($allowExtract == true) {
				require ("html_dom.php");
				$pageDom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
				$pageDom->load($htmlPage, true, true);
				$siteInfo['fingerprints'] = hash('md5', $pageDom->find("head", 0)->outertext);
				$siteInfo['display'] = hash('md5', $siteInfo['fingerprints']);
				$siteInfo['token'] = hash('crc32', $siteInfo['display']);
				if (isset($isExpired) && $isExpired == true) {
					$isChanged = $siteInfoSaved['fingerprints'] != $siteInfo['fingerprints'];
				}
				if (isset($isChanged) && !$isChanged) {
					mysqli_query($db, "UPDATE `sites_info` SET `updated` = '{$time}' WHERE `id` = '{$siteInfoSaved['id']}'");
					$infoId = $siteInfoSaved['id'];
				}else {
					if (isset($pageDom->find("head", 0)->find("title", 0)->content)) {
						$siteInfo['title'] = $pageDom->find("head", 0)->find("title", 0)->content;
					}else {
						if (isset($pageDom->find("head", 0)->find("meta[property=og:title]", 0)->content)) {
							$siteInfo['title'] = $pageDom->find("head", 0)->find("meta[property=og:title]", 0)->content;
						}else {
							//.
						}
					}
					if (isset($pageDom->find("head", 0)->find("meta[name=image]", 0)->content)) {
						$siteInfo['thumbnail'] = $pageDom->find("head", 0)->find("meta[name=image]", 0)->content;
					}else {
						if (isset($pageDom->find("head", 0)->find("meta[property=og:image]", 0)->content)) {
							$siteInfo['thumbnail'] = $pageDom->find("head", 0)->find("meta[property=og:image]", 0)->content;
						}else {
							//.
						}
					}
					$siteInfo['thumbnail'] = "photos/raw/other/".$_tool->hash('encode', urlencode($siteInfo['thumbnail']), $_parameter->get('hash_photos_other'));
					if (isset($pageDom->find("head", 0)->find("meta[name=description]", 0)->content)) {
						$siteInfo['description'] = $pageDom->find("head", 0)->find("meta[name=description]", 0)->content;
					}else {
						if (isset($pageDom->find("head", 0)->find("meta[property=og:description]", 0)->content)) {
							$siteInfo['description'] = $pageDom->find("head", 0)->find("meta[property=og:description]", 0)->content;
						}else {
							//.
						}
					}
					$siteInfo['secure'] = 0;
					if (isset($isChanged) && $isChanged) {
						mysqli_query($db, "UPDATE `sites_info` SET `fingerprints` = '{$siteInfo['fingerprints']}', `thumbnail` = '{$siteInfo['thumbnail']}', `description` = '{$siteInfo['description']}', `updated` = '{$time}' WHERE `id` = '{$siteInfoSaved['id']}'");
						$infoId = $siteInfoSaved['id'];
					}else {
						$insertRequest = "
						INSERT INTO 
						`sites_info` (`id`, `time`, `token`, `display`, `scheme`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `title`, `thumbnail`, `description`, `url`, `secure`, `updated`) 
						VALUES 
						(NULL, '{$time}', '{$siteInfo['token']}', '{$siteInfo['display']}', '{$siteInfo['scheme']}', '{$siteInfo['host']}', '{$siteInfo['name']}', '{$siteInfo['dot']}', '{$siteInfo['path']}', '{$siteInfo['mime']}', '{$siteInfo['fingerprints']}', '{$siteInfo['title']}', '{$siteInfo['thumbnail']}', '{$siteInfo['description']}', '{$siteInfo['url']}', '{$siteInfo['secure']}', '{$time}');
						";
						$insertQuery = mysqli_query($db, $insertRequest);
						if (!$insertQuery) {
							return array("return" => false, "reason" => "");
						}else {
							$infoId = mysqli_insert_id($db);
						}
					}
				}
				if (isset($infoId) && is_numeric($infoId)) {
					//. return array("return" => true, "id" => $infoId);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				$infoId = $siteInfoSaved['id'];
			}
			if (isset($infoId) && is_numeric($infoId)) {
				if (!isset($siteInfoSaved) || !is_array($siteInfoSaved)) {
					$siteInfoSavedQuery = mysqli_query($db, "SELECT * FROM `sites_info` WHERE `id` = '{$infoId}' LIMIT 1");
					$siteInfoSaved = mysqli_fetch_assoc($siteInfoSavedQuery);
				}
				$siteInfoData = array(
					"id" => $siteInfoSaved['id'],
					"display" => $siteInfoSaved['display'],
					"scheme" => $siteInfoSaved['scheme'],
					"host" => $siteInfoSaved['host'],
					"name" => $siteInfoSaved['name'],
					"dot" => $siteInfoSaved['dot'],
					"path" => $siteInfoSaved['path'],
					"mime" => $siteInfoSaved['mime'],
					"fingerprints" => $siteInfoSaved['fingerprints'],
					"title" => $siteInfoSaved['title'],
					"thumbnail" => $siteInfoSaved['thumbnail'],
					"description" => $siteInfoSaved['description'],
					"url" => $siteInfoSaved['url'],
					"secure" => $siteInfoSaved['secure'],
					"updated" => $siteInfoSaved['updated'],
				);
				return array("return" => true, "data" => $siteInfoData);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function xextract ($path) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "3");
			}
		}
		//.
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_analysis = $this->class['_analysis'];
		$_media = $this->class['_media'];
		$_logs = $this->class['_logs'];
		$_sites = $this->class['_sites'];
		$db = $this->class['_db']->port('beta');
		//.
		if (!isset($object['path'])) {
			return array("return" => false, "reason" => "");
		}
		if (!isset($object['reset'])) {
			$reset = false;
		}
		$regexUrl = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
		if (!preg_match($regexUrl, $path)) {
			return array("return" => false, "reason" => "");
		}
		if (!$_tool->siteDie($path)) {
			$pathEncode = urlencode($path);
			$dns = $_tool->getDNS($path);
			$host = $dns['host'];
			$ip = $dns['ip'];
			$domain = $dns['domain'];
			if ($reset == false){
				$get = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'), "SELECT `id` FROM `sites_info` WHERE `path` = '{$path}' AND `time` + {$_parameter->get('sites_id_time_limit')} > {$_tool->timeNow()}"));
			}else {
				$get = 1;
			}
			if ($reset == true || $get == 0) {
				$htmlPage = $_tool->curl($path, 5, array("cookie" => true));
				if (isset($htmlPage['return']) && $htmlPage['return'] == true) {
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
						$thumbnail = "photos/raw/other/".$_tool->hash('encode', urlencode($thumbnail[0]), $_parameter->get('hash_photos_other'));
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
	function add ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "3");
			}
		}
		//.
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_analysis = $this->class['_analysis'];
		$_media = $this->class['_media'];
		$_logs = $this->class['_logs'];
		$_sites = $this->class['_sites'];
		$db = $this->class['_db']->port('beta');
		//.
		if (!isset($object['path'])) {
			return array("return" => false, "reason" => "");
		}
		$path = $object['path'];
		$regexUrl = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
		if (preg_match($regexUrl, $path)) {
			$pathEncode = urlencode($path);
			$site = $info = null;
			$time = time();
			$die = $_tool->siteDie($path);
			$dns = $_tool->getDNS($path);
			$host = $dns['host'];
			$ip = $dns['ip'];
			$domain = $dns['domain'];
			$infoQuery = mysqli_query($db, "SELECT `id`, `time` FROM `sites_info` WHERE `path` = '{$path}'");
			if (!$infoQuery) {
				return array("return" => false, "reason" => "");
			}
			$info = mysqli_fetch_assoc($infoQuery);
			if (mysqli_num_rows($infoQuery) == 0 || (mysqli_num_rows($infoQuery) > 0 && $info['time'] + $_parameter->get('site_info_time_limit') < $time)) {
				if (!$die) {
					$returnAction = $this->extract($path);
					if (isset($returnAction['return']) && $returnAction['return'] == true) {
						$info = $returnAction['data'];
						$info['token'] = hash('crc32', time().'::'.rand().'::('.$host.'_'.$ip.'_'.$domain.')');
						$info['display'] = hash('md5', $info['token']);
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
						if (mysqli_num_rows($infoQuery) == 0) {
							mysqli_query($db, "INSERT INTO `sites_info` (`id`, `token`, `display`, `secure`, `host`, `path`, `title`, `thumbnail`, `description`, `time`) VALUES (NULL, '{$info['token']}', '{$info['display']}', '{$info['secure']}', '{$info['host']}', '{$info['path']}', '{$info['title']}', '{$info['thumbnail']}', '{$info['description']}', '{$time}')");
							$info['id'] = mysqli_insert_id($this->class['_db']->port('beta'));
						}else {
							mysqli_query($db, "UPDATE `sites_info` SET `time` = '{$time}', `secure` = '{$info['secure']}', `title` = '{$info['title']}', `thumbnail` = '{$info['thumbnail']}', `description` = '{$info['description']}' WHERE `path` = '{$path}'");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					if (mysqli_num_rows($infoQuery) > 0) {
						mysqli_query($db, "DELETE FROM `sites_info` WHERE `path` = '{$path}'");
					}
					return array("return" => false, "reason" => "");
				}
			}
			$site_query = mysqli_query($db, "SELECT * FROM `sites_id` WHERE `host` = '{$host}' LIMIT 1");
			if (mysqli_num_rows($site_query) == 0) {
				$name = preg_replace($regexUrl, "$5", $host);
				$rate = $count = 1;
				$secure = 0;
				$insert = mysqli_query($db, "INSERT INTO `sites_id` (`id`, `host`, `ip`, `name`, `time`, `rate`, `count`, `secure`) VALUES (NULL, '{$host}', '{$ip}', '{$name}', '{$time}', '{$rate}', '{$count}', '{$secure}')");
			}
			$site = mysqli_fetch_assoc($site_query);
			if ($site['time'] + $_parameter->get('sites_id_time_limit') < $time) {
				$num = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `sites_info`"));
				$count = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `sites_info` WHERE `host` = '{$host}'"));
				$rate_v1 = $_parameter->get('sites_id_rate_v1');
				$rate_v2 = $num / $_parameter->get('sites_id_rate_v2');
				$rate_v3 = $num / $_parameter->get('sites_id_rate_v3');
				$rate_v4 = $num / $_parameter->get('sites_id_rate_v4');
				$rate_v5 = $num / $_parameter->get('sites_id_rate_v5');
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
			$info['id'] = $site['id'];
			return array("return" => true, "data" => $info);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function secure ($action, $object) {
		if ($action == "get") {
			if (isset($object['token']) && is_string($object['token'])) $token = $object['token']; else $token = null;
			if (isset($object['host']) && is_string($object['host'])) $host = $object['host']; else $host = null;
			$regexUrl = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
			if ($token != null && $host != null && preg_match($regexUrl, $host)) {
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