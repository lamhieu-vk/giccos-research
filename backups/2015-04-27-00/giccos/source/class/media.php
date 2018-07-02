<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class media {
	function __construct () {
		$GLOBALS["_media"] = $this;
		$this->class = $GLOBALS;
		$this->db = $this->class['_db']->port('beta');
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function guy ($object) {
		if (isset($object['author.type']) && is_string($object['author.type'])) $authorType = $object['author.type']; else $authorType = null;
		if (isset($object['author.id']) && (is_string($object['author.id']) || is_numeric($object['author.id']))) $authorId = $object['author.id']; else $authorId = null;
		if (isset($object['guy.type']) && is_string($object['guy.type'])) $guyType = $object['guy.type']; else $guyType = null;
		if (isset($object['guy.id']) && (is_string($object['guy.id']) || is_numeric($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
		if ($authorType != null && $authorId != null && $guyType != null && $guyId != null) {
			$db = $this->db = $this->class['_db']->port('beta');
			if ($authorType == $guyType && $authorId == $guyId) {
				return array("return" => true, "guy" => 1);
			}else {
				if ($authorType == "guy") {
					if ($authorType == "user") {
						$isBlocked = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users_block` WHERE (`user.id` = '{$authorId}' AND `guy.type` = '{guyType}' AND `guy.id` = '{$guyId}') OR (`user.id` = '{$guyId}' AND 'user' = '{$guyType}' AND `guy.type` = 'user' AND `guy.id` = '{$authorId}') LIMIT 1"));
						if ($isBlocked > 0) {
							return array("return" => true, "guy" => 5);
						}else {
							if ($guyType == "user") {
								$isFriend = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` = '{$guyId}' LIMIT 1"));
								if ($isFriend > 0) {
									return array("return" => true, "guy" => 2);
								}
								$isMutualFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') LIMIT 1"));
								if ($isMutualFriends > 0) {
									return array("return" => true, "guy" => 3);
								}
								return array("return" => true, "guy" => 4);
							}else if ($guyType == "groups") {

							}else if ($guyType == "pages") {

							}else {
								return array("return" => true, "guy" => 4);
							}
						}
					}else if ($authorType == "groups") {

					}else if ($authorType == "pages") {

					}else {
						return array("return" => true, "guy" => 4);
					}
				}else {
					return array("return" => true, "guy" => 4);
				}
			}
		}else {
			return array("return" => false, "reason" => null);
		}
	}
	function replay ($format, $object = null) {
		$this->user = $_SESSION["user"];
		if (!isset($this->user['mode']) || !$this->user['mode']) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port("beta");
			$time = $this->class['_tool']->timeNow();
		}
		if ($format == "music" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
				if (isset($object['at']) && (is_numeric($object['at']) || is_string($object['at']))) $at = $object['at']; else $at = 0;
				if (isset($object['expires']) && (is_numeric($object['expires']) || is_string($object['expires']))) $expires = $object['expires']; else $expires = 0;
				if ($label == null || $value == null || $at == 0 || $expires == 0) {
					return array("return" => false, "reason" => "");
				}else {
					$expires = $time + $expires;
				}
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				$getExists = $this->exists("music", array("db" => "music_info", "label" => $label, "value" => $value));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$id = $getExists['id'][0];
					$sqlGetNum = "SELECT `id` FROM `music_replay` WHERE `music.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}' LIMIT 1";
					$queryGetNum = mysqli_query($db, $sqlGetNum);
					$getNum = mysqli_num_rows($queryGetNum);
					if ($getNum == 0) {
						//.insert
						$sqlAction = "INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES (NULL, '{$time}', '{$id}', '{$guy['type']}', '{$guy['id']}', '{$expires}', '{$at}')";
					}else {
						//.update
						$sqlAction = "UPDATE `music_replay` SET `expires` = '{$expires}', `at` = '{$at}' WHERE `music.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
					}
					$queryAction = mysqli_query($db, $sqlAction);
					if (!$queryAction) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "get") {
				if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				if ($label == null || $value == null) {
					$getSql = "SELECT * FROM `music_replay` WHERE `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
				}else {
					$getExists = $this->exists("music", array("db" => "music_info", "label" => $label, "value" => $value));
					if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
						$id = $getExists['id'][0];
						$getSql = "SELECT * FROM `music_replay` WHERE `music.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
					}else {
						return array("return" => false, "reason" => "");
					}
				}
				if (isset($getSql) && $getSql != null) {
					$getQuery = mysqli_query($db, $getSql);
					$getNum = mysqli_num_rows($getQuery);
					if ($getNum == 0) {
						return array("return" => true, "num" => 0, "data" => array());
					}else {
						$getData = array();
						while ($getFetch = mysqli_fetch_assoc($getQuery)) {
							$tokenQuery = mysqli_query($db, "SELECT `token` FROM `music_info` WHERE `id` = '{$getFetch['music.id']}' LIMIT 1");
							if (mysqli_num_rows($tokenQuery) == 0) {
								$getNum--;
								if ($getNum == 0) {
									break;
								}else {
									continue;
								}
							}else {
								$token = mysqli_fetch_assoc($tokenQuery)['token'];
								$getData[] = array("token" => $token, "time" => $getFetch['time'], "expires" => $getFetch['expires'], "at" => $getFetch['at']);
							}
						}
						return array("return" => true, "num" => $getNum, "data" => $getData);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				$getExists = $this->exists("music", array("db" => "music_info", "label" => $label, "value" => $value));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$id = $getExists['id'][0];
					$sqlAction = "DELETE FROM `music_replay` WHERE `music.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
					$queryAction = mysqli_query($db, $sqlAction);
					if (!$queryAction) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "clean") {
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				$sqlAction = "DELETE FROM `music_replay` WHERE `expires` <= '{$time}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
				$queryAction = mysqli_query($db, $sqlAction);
				if (!$queryAction) {
					return array("return" => false, "reason" => "");
				}else {
					$numRand = rand(10,100);
					$sqlAction = "DELETE FROM `music_replay` WHERE `expires` <= '{$time}' LIMIT {$numRand}";
					$queryAction = mysqli_query($db, $sqlAction);
					if (!$queryAction) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}		
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($format == "videos" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
				if (isset($object['at']) && (is_numeric($object['at']) || is_string($object['at']))) $at = $object['at']; else $at = 0;
				if (isset($object['expires']) && (is_numeric($object['expires']) || is_string($object['expires']))) $expires = $object['expires']; else $expires = 0;
				if ($label == null || $value == null || $at == 0 || $expires == 0) {
					return array("return" => false, "reason" => "");
				}else {
					$expires = $time + $expires;
				}
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				$getExists = $this->exists("videos", array("db" => "videos_info", "label" => $label, "value" => $value));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$id = $getExists['id'][0];
					$sqlGetNum = "SELECT `id` FROM `videos_replay` WHERE `videos.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}' LIMIT 1";
					$queryGetNum = mysqli_query($db, $sqlGetNum);
					$getNum = mysqli_num_rows($queryGetNum);
					if ($getNum == 0) {
						//.insert
						$sqlAction = "INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES (NULL, '{$time}', '{$id}', '{$guy['type']}', '{$guy['id']}', '{$expires}', '{$at}')";
					}else {
						//.update
						$sqlAction = "UPDATE `videos_replay` SET `expires` = '{$expires}', `at` = '{$at}' WHERE `videos.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
					}
					$queryAction = mysqli_query($db, $sqlAction);
					if (!$queryAction) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "get") {
				if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				if ($label == null || $value == null) {
					$getSql = "SELECT * FROM `videos_replay` WHERE `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
				}else {
					$getExists = $this->exists("videos", array("db" => "videos_info", "label" => $label, "value" => $value));
					if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
						$id = $getExists['id'][0];
						$getSql = "SELECT * FROM `videos_replay` WHERE `videos.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
					}else {
						return array("return" => false, "reason" => "");
					}
				}
				if (isset($getSql) && $getSql != null) {
					$getQuery = mysqli_query($db, $getSql);
					$getNum = mysqli_num_rows($getQuery);
					if ($getNum == 0) {
						return array("return" => true, "num" => 0, "data" => array());
					}else {
						$getData = array();
						while ($getFetch = mysqli_fetch_assoc($getQuery)) {
							$tokenQuery = mysqli_query($db, "SELECT `token` FROM `videos_info` WHERE `id` = '{$getFetch['videos.id']}' LIMIT 1");
							if (mysqli_num_rows($tokenQuery) == 0) {
								$getNum--;
								if ($getNum == 0) {
									break;
								}else {
									continue;
								}
							}else {
								$token = mysqli_fetch_assoc($tokenQuery)['token'];
								$getData[] = array("token" => $token, "time" => $getFetch['time'], "expires" => $getFetch['expires'], "at" => $getFetch['at']);
							}
						}
						return array("return" => true, "num" => $getNum, "data" => $getData);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $value = $object['value']; else $value = null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				$getExists = $this->exists("videos", array("db" => "videos_info", "label" => $label, "value" => $value));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$id = $getExists['id'][0];
					$sqlAction = "DELETE FROM `videos_replay` WHERE `videos.id` = '{$id}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
					$queryAction = mysqli_query($db, $sqlAction);
					if (!$queryAction) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "clean") {
				if (isset($object['guy.type'], $object['guy.id'])) {
					if (isset($object['guy.type']) && (is_numeric($object['guy.type']) || is_string($object['guy.type']))) $guyType = $object['guy.type']; else $guyType = null;
					if (isset($object['guy.id']) && (is_numeric($object['guy.id']) || is_string($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
					if ($guyType == null || $guyId == null) {
						return array("return" => false, "reason" => "");
					}else {
						$guy = array("type" => $guyType, "id" => $guyId);
					}
				}else {
					$guy = $this->user['mode'];
				}
				$sqlAction = "DELETE FROM `videos_replay` WHERE `expires` <= '{$time}' AND `guy.type` = '{$guy['type']}' AND `guy.id` = '{$guy['id']}'";
				$queryAction = mysqli_query($db, $sqlAction);
				if (!$queryAction) {
					return array("return" => false, "reason" => "");
				}else {
					$numRand = rand(10,100);
					$sqlAction = "DELETE FROM `videos_replay` WHERE `expires` <= '{$time}' LIMIT {$numRand}";
					$queryAction = mysqli_query($db, $sqlAction);
					if (!$queryAction) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}		
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function views ($format, $object = null) {
		$this->user = $_SESSION["user"];
		if (!isset($this->user['mode']) || !$this->user['mode']) {
			return array("return" => false, "reason" => "");
		}
		if ($format == "photos" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $mediaID = $object['id']; else $mediaID = 0;
				if (isset($object['size']) && is_string($object['size'])) $view_size = $object['size']; else $view_size = 0;
				if ($mediaID == 0) {
					return array("return" => false, "reason" => "");
				}
				$view_insert = false;
				$view_query = mysqli_query($this->class['_db']->port('beta'), "SELECT `time` FROM `photos_views` WHERE `photos.id` = '{$mediaID}' AND `guy.type` = '{$this->user['mode']['type']}' AND `guy.id` = '{$this->user['mode']['id']}' ORDER BY `id` DESC LIMIT 1");
				$view_num = mysqli_num_rows($view_query);
				if ($view_num == 0) {
					$view_insert = true;
				}else {
					$view_time = mysqli_fetch_assoc($view_query)['time'];
					if ($view_time + $this->class['_parameter']->get('media_view_time_limit') / 2 < $this->class['_tool']->timeNow()) {
						$view_insert = true;
					}
				}
				if ($view_insert == true) {
					mysqli_query($this->class['_db']->port('beta'), "INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES (NULL , '{$this->class['_tool']->timeNow()}', '{$mediaID}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$view_size}')");
				}
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($format == "music" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $mediaID = $object['id']; else $mediaID = 0;
				if (isset($object['quality']) && is_string($object['quality'])) $view_quality = $object['quality']; else $view_quality = 0;
				if ($mediaID == 0) {
					return array("return" => false, "reason" => "");
				}
				$view_insert = false;
				$view_query = mysqli_query($this->class['_db']->port('beta'), "SELECT `time` FROM `music_views` WHERE `music.id` = '{$mediaID}' AND `guy.type` = '{$this->user['mode']['type']}' AND `guy.id` = '{$this->user['mode']['id']}' ORDER BY `id` DESC LIMIT 1");
				$view_num = mysqli_num_rows($view_query);
				if ($view_num == 0) {
					$view_insert = true;
				}else {
					$view_time = mysqli_fetch_assoc($view_query)['time'];
					if ($view_time + $this->class['_parameter']->get('media_view_time_limit') / 2 < $this->class['_tool']->timeNow()) {
						$view_insert = true;
					}
				}
				if ($view_insert == true) {
					mysqli_query($this->class['_db']->port('beta'), "INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES (NULL , '{$this->class['_tool']->timeNow()}', '{$mediaID}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$view_quality}')");
				}
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($format == "videos" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $mediaID = $object['id']; else $mediaID = 0;
				if (isset($object['quality']) && is_string($object['quality'])) $view_quality = $object['quality']; else $view_quality = 0;
				if (isset($object['captions']) && is_string($object['captions'])) $view_captions = $object['captions']; else $view_captions = 0;
				if ($mediaID == 0) {
					return array("return" => false, "reason" => "");
				}
				$view_insert = false;
				$view_query = mysqli_query($this->class['_db']->port('beta'), "SELECT `time` FROM `videos_views` WHERE `videos.id` = '{$mediaID}' AND `guy.type` = '{$this->user['mode']['type']}' AND `guy.id` = '{$this->user['mode']['id']}' ORDER BY `id` DESC LIMIT 1");
				$view_num = mysqli_num_rows($view_query);
				if ($view_num == 0) {
					$view_insert = true;
				}else {
					$view_time = mysqli_fetch_assoc($view_query)['time'];
					if ($view_time + $this->class['_parameter']->get('media_view_time_limit') / 2 < $this->class['_tool']->timeNow()) {
						$view_insert = true;
					}
				}
				if ($view_insert == true) {
					mysqli_query($this->class['_db']->port('beta'), "INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES (NULL , '{$this->class['_tool']->timeNow()}', '{$mediaID}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$view_quality}', '{$view_captions}')");
				}
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function exists ($format, $object = null) {
		$this->user = $_SESSION["user"];
		if (!isset($this->user['mode']) || !$this->user['mode'] || $object == null) {
			return array("return" => false, "reason" => "");
		}else {
			$_db = $this->class['_db'];
		}
		if (isset($object['db']) && is_string($object['db'])) $db = $object['db']; else $db = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if ($format == "photos") {
			$checkQuery = "SELECT `id` FROM `{$db}` WHERE `{$label}` = '{$value}'";
			$numCheck = mysqli_query($_db->port('beta'), $checkQuery);
			$num = mysqli_num_rows($numCheck);
			if ($num == 0) {
				return array("return" => true, "exists" => false, "num" => 0, "id" => null);
			}else {
				$idFile = array();
				while ($fetchFile = mysqli_fetch_assoc($numCheck)) {
					$idFile[] = $fetchFile['id'];
				}
				return array("return" => true, "exists" => true, "num" => $num, "id" => $idFile);
			}
		}else if ($format == "music") {
			$checkQuery = "SELECT `id` FROM `{$db}` WHERE `{$label}` = '{$value}'";
			$numCheck = mysqli_query($_db->port('beta'), $checkQuery);
			$num = mysqli_num_rows($numCheck);
			if ($num == 0) {
				return array("return" => true, "exists" => false, "num" => 0, "id" => null);
			}else {
				$idFile = array();
				while ($fetchFile = mysqli_fetch_assoc($numCheck)) {
					$idFile[] = $fetchFile['id'];
				}
				return array("return" => true, "exists" => true, "num" => $num, "id" => $idFile);
			}
		}else if ($format == "videos") {
			$checkQuery = "SELECT `id` FROM `{$db}` WHERE `{$label}` = '{$value}'";
			$numCheck = mysqli_query($_db->port('beta'), $checkQuery);
			$num = mysqli_num_rows($numCheck);
			if ($num == 0) {
				return array("return" => true, "exists" => false, "num" => 0, "id" => null);
			}else {
				$idFile = array();
				while ($fetchFile = mysqli_fetch_assoc($numCheck)) {
					$idFile[] = $fetchFile['id'];
				}
				return array("return" => true, "exists" => true, "num" => $num, "id" => $idFile);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function data ($format, $object = null) {
		$this->user = $_SESSION["user"];
		if (!isset($this->user['mode']) || !$this->user['mode']) {
			return array("return" => false, "reason" => "");
		}
		if ($format == "photos" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "get") {
				if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = null;
				if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $id = $object['id']; else $id = 0;
				if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
				if ($rows == null || $id == 0) {
					return array("return" => false, "reason" => "");
				}
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (!is_array($author) || !isset($author['type']) || !isset($author['id'])) {
						return array("return" => false, "reason" => "");
					}
					$push = "AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
				}else {
					$push = "";
				}
				$query = mysqli_query($this->class['_db']->port('beta'), "SELECT {$rows} FROM `photos_info` WHERE `id` = '{$id}' {$push}");
				if (mysqli_num_rows($query) == 0 || !$query) {
					return array("return" => false, "reason" => "");
				}else {
					$fetch = mysqli_fetch_assoc($query);
					return array("return" => true, "data" => $fetch);
				}
			}else if ($action == "delete" || $action == "remove") {
				if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = 0;
				if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
				if ($id == 0) {
					return array("return" => false, "reason" => "");
				}
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (!isset($author) || !isset($author['type']) || !isset($author['id'])) {
						return array("return" => false, "reason" => "");
					}
					$push = "AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
				}else {
					$push = "";
				}
				$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `token`, `path.original`, `path.large`, `path.medium`, `path.small` FROM `photos_info` WHERE `id` = '{$id}' {$push}");
				if (mysqli_num_rows($query) > 0) {
					$fetch = mysqli_fetch_assoc($query);
					if ($fetch['path.original'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.original'], $fetch['token']));
					}
					if ($fetch['path.large'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.large'], $fetch['token']));
					}
					if ($fetch['path.medium'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.medium'], $fetch['token']));
					}
					if ($fetch['path.small'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.small'], $fetch['token']));
					}
					mysqli_query($this->class['_db']->port('beta'), "DELETE FROM `photos_views` WHERE `photos.id` = '{$id}'");
					mysqli_query($this->class['_db']->port('beta'), "DELETE FROM `photos_info` WHERE `id` = '{$id}' {$push}");
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}else if ($format == "music" && is_array($object)) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "get") {
				if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = null;
				if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = 0;
				if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
				if ($rows == null || $id == 0) {
					return array("return" => false, "reason" => "");
				}
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (!is_array($author) || !isset($author['type']) || !isset($author['id'])) {
						return array("return" => false, "reason" => "");
					}
					$push = "AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
				}else {
					$push = "";
				}
				$query = mysqli_query($this->class['_db']->port('beta'),"SELECT {$rows} FROM `music_info` WHERE `id` = '{$id}' {$push}");
				if (mysqli_num_rows($query) == 0 || !$query) {
					return array("return" => false, "reason" => "");
				}else {
					$fetch = mysqli_fetch_assoc($query);
					return array("return" => true, "data" => $fetch);
				}
			}else if ($action == "delete" || $action == "remove") {
				if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = 0;
				if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
				if ($id == 0) {
					return array("return" => false, "reason" => "");
				}
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (!isset($author) || !isset($author['type']) || !isset($author['id'])) {
						return array("return" => false, "reason" => "");
					}
					$push = "AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
				}else {
					$push = "";
				}
				$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `token`, `path.original` FROM `music_info` WHERE `id` = '{$id}' {$push}");
				if (mysqli_num_rows($query) > 0) {
					$fetch = mysqli_fetch_assoc($query);
					if ($fetch['path.original'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.original'], $fetch['token']));
					}
					mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `music_views` WHERE `music.id` = '{$id}'");
					mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `music_info` WHERE `id` = '{$id}' {$push}");
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}else if ($format == "videos" && is_array($object)) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "get") {
				if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = null;
				if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = 0;
				if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
				if ($rows == null || $id == 0) {
					return array("return" => false, "reason" => "");
				}
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (!is_array($author) || !isset($author['type']) || !isset($author['id'])) {
						return array("return" => false, "reason" => "");
					}
					$push = "AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
				}else {
					$push = "";
				}
				$query = mysqli_query($this->class['_db']->port('beta'), "SELECT {$rows} FROM `videos_info` WHERE `id` = '{$id}' {$push}");
				if (mysqli_num_rows($query) == 0 || !$query) {
					return array("return" => false, "reason" => "");
				}else {
					$fetch = mysqli_fetch_assoc($query);
					return array("return" => true, "data" => $fetch);
				}
			}else if ($action == "delete" || $action == "remove") {
				if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = 0;
				if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
				if ($id == 0) {
					return array("return" => false, "reason" => "");
				}
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (!isset($author) || !isset($author['type']) || !isset($author['id'])) {
						return array("return" => false, "reason" => "");
					}
					$push = "AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
				}else {
					$push = "";
				}
				$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `token`, `thumbnail`, `path.hd`, `path.sd` FROM `videos_info` WHERE `id` = '{$id}' {$push}");
				if (mysqli_num_rows($query) > 0) {
					$fetch = mysqli_fetch_assoc($query);
					if ($fetch['path.hd'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.hd'], $fetch['token']));
					}
					if ($fetch['path.sd'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['path.sd'], $fetch['token']));
					}
					if ($fetch['thumbnail'] != '0') {
						$this->class['_tool']->unlink($this->class['_tool']->hash('decode', $fetch['thumbnail'], $fetch['token']));
					}
					mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `videos_views` WHERE `videos.id` = '{$id}'");
					mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `videos_info` WHERE `id` = '{$id}' {$push}");
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}
	}
	function cache ($format, $object = null) {
		$this->callUserInfo();
		if (!isset($this->user['login']) || !$this->user['login']) {
			return array("return" => false, "reason" => "");
		}else {
			$_storage = $this->class['_storage'];
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_analysis = $this->class['_analysis'];
			$db = $this->class['_db']->port('beta');
		}
		if ($format == "photos" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null; else $action = null;
			if ($action == "add") {
				if (isset($object['file']) && !empty($object['file']) && is_array($object['file'])) {
					$file = $object['file'];
					$time = time();
					$close = $time + $_parameter->get('media_cache_time_close');
					$client = $_client->client(true);
					$token = $_SESSION["client"]['token']['cache']['photos'];
					$secret = hash('crc32', '('.$this->user['mode']['type'].'_'.$this->user['mode']['id'].')::'.md5_file($file['tmp_name']));
					$nameraw = $file['name'];
					$ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
					$name = hash('crc32', md5($token.'::'.$secret.'::'.rand())).'.'.$ext;
					$copy = 0;
					$mime = $file['type'];
					$size = $file['size'];//$_tool->getFileSize($tmp, true);
					$file['size'] = array();
					$file['size']['file'] = $size;
					$author = $this->user['mode'];
					if ($time != null && $close != null && $client != null && $token != null && $secret != null && $name != null && $nameraw != null && $mime != null) {
						$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp_name'], "mime" => $file['type'], "name" => $file['name']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
							$path = $fileUpload['storage']['display'];
						}else {
							return array("return" => false, "reason" => "");
						}
						$insertQuery = "INSERT INTO `photos_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`, `user.id`, `author.id`, `author.type`) VALUES (null, '{$_tool->timeNow()}', '{$close}', '{$client}', '{$token}', '{$secret}', '{$name}', '{$nameraw}', '{$copy}', '{$mime}', '{$size}', '{$path}', '{$this->user['id']}', '{$author['id']}', '{$author['type']}')";
						$insert = mysqli_query($db, $insertQuery);
						if (!$insert) {
							return array("return" => false, "reason" => "");
						}else {
							$tmp = $fileUpload['storage']['source'];
							if ($file['size']['file'] > $_parameter->get('photos_allow_size')) {
								list($file['size']['width'], $file['size']['height']) = getimagesize($tmp);
								$size_limit = $_parameter->get('photos_allow_size');
								$size_exceeded = $size_limit / $file['size']['file'];
								$size_reset_w = $file['size']['width'] * $size_exceeded / 10 * 9;
								$size_reset_h = $file['size']['height'] * $size_exceeded / 10 * 9;
								$img = photosEditor::factory($tmp, true);
								$img->resize($size_reset_w, $size_reset_h);
							}
							$file = array(
								"tmp" => $tmp,
								"secret" => $secret, 
								"name" => $name,
								"nameraw" => $nameraw,
								"mime" => $mime, 
								"size" => $size
							);
							return array("return" => true, "data" => $file);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "copy") {
				if (isset($object['secret']) && is_string($object['secret'])) $secret = $object['secret']; else $secret = null;
				if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "");
				}else {
					$_tool = $_tool;
					$_storage = $this->class['_storage'];
					$author = $this->user['mode'];
				}
				$original_query = mysqli_query($db, "SELECT * FROM `photos_cache` WHERE `secret` = '{$secret}' AND `name` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				$copy_query = mysqli_query($db, "SELECT * FROM `photos_cache` WHERE `secret` = '{$secret}' AND `copy` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				if (mysqli_num_rows($original_query) > 0 && mysqli_num_rows($copy_query) == 0) {
					$original = mysqli_fetch_assoc($original_query);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $original['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$copy['ext'] = $original['ext'] = strtolower(pathinfo($original['name'], PATHINFO_EXTENSION));
					$copy['secret'] = $original['secret'];
					$copy['token'] = $original['token'];
					$copy['name'] = hash('crc32', $original['name'].rand()).'.'.$copy['ext'];
					$copy['nameraw'] = $original['nameraw'];
					$copy['copy'] = $original['name'];
					$_storage = new storage;
					$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $original['tmp'], "mime" => $original['mime'], "name" => $copy['name']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
						$copy['path'] = $fileUpload['storage']['display'];
						$copy['tmp'] = $fileUpload['storage']['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$insertQuery = "INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) VALUES (null, '{$original['user.id']}', '{$original['author.type']}', '{$original['author.id']}', '{$original['time']}', '{$original['close']}', '{$original['client']}', '{$original['token']}', '{$original['secret']}', '{$copy['name']}', '{$copy['nameraw']}', '{$copy['copy']}', '{$original['mime']}', '{$original['size']}', '{$copy['path']}')";
					$insert = mysqli_query($db, $insertQuery);
					if (!$insert) {
						return array("return" => false, "reason" => "");
					}else {
						return array(
							"return" => true, 
							"data" => array(
								"original" => array(
									"tmp" => $original['tmp'], 
									"secret" => $original['secret'], 
									"name" => $original['name'],
									"nameraw" => $original['nameraw']
								),
								"copy" => array(
									"tmp" => $copy['tmp'], 
									"secret" => $copy['secret'], 
									"name" => $copy['name'],
									"nameraw" => $copy['nameraw']
								)
							)
						);
					}
				}else if (mysqli_num_rows($original_query) > 0 && mysqli_num_rows($copy_query) > 0) {
					$original = mysqli_fetch_assoc($original_query);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $original['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$copy = mysqli_fetch_assoc($copy_query);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $copy['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$copy['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					return array(
						"return" => true, 
						"data" => array(
							"original" => array(
								"tmp" => $original['tmp'], 
								"secret" => $original['secret'], 
								"name" => $original['name'],
								"nameraw" => $original['nameraw']
								),
							"copy" => array(
								"tmp" => $copy['tmp'], 
								"secret" => $copy['secret'], 
								"name" => $copy['name'],
								"nameraw" => $copy['nameraw']
								)
							)
						);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "get") {
				if (isset($object['label']) && is_string($object['label'])) $label = addslashes($object['label']); else $label = null;
				if (isset($object['value']) && is_string($object['value'])) $value = addslashes($object['value']); else $value = null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$author = $this->user['mode'];
				$query = mysqli_query($db, "SELECT * FROM `photos_cache` WHERE `{$label}` = '{$value}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				if (mysqli_num_rows($query) > 0) {
					$img = mysqli_fetch_assoc($query);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $img['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$img['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					return array(
						"return" => true,
						"data" => array(
							"tmp" => $img['tmp'],
							"path" => $img['path'],
							"secret" => $img['secret'], 
							"name" => $img['name'],
							"nameraw" => $img['nameraw'],
							"copy" => $img['copy'],
							"mime" => $img['mime'],
							"size" => $img['size'],
							"time" => $img['time'],
							"close" => $img['close']
							)
						);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "replace") {
				if (isset($object['name']) && $object['name'] != null) {
					$set = $object['set'];
					if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
					$author = $this->user['mode'];
					$imgCopy_query = mysqli_query($db,"SELECT `copy`, `path`, `token`, `secret`, `name`, `nameraw` FROM `photos_cache` WHERE `name` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}' AND `copy` != '0'");
					if (mysqli_num_rows($imgCopy_query) > 0) {
						$imgCopy = mysqli_fetch_assoc($imgCopy_query);
						$imgOriginal_query = mysqli_query($db, "SELECT `path`, `token`, `secret`, `name`, `nameraw` FROM `photos_cache` WHERE `name` = '{$imgCopy['copy']}'");
						if (mysqli_num_rows($imgOriginal_query) > 0) {
							$imgOriginal = mysqli_fetch_assoc($imgOriginal_query);
							if ($set == "apply" || $set == "true") {
								$labelSource = "display";
								$valueSource = $imgCopy['path'];
								$labelDestination = "display";
								$valueDestination = $imgOriginal['path'];
							}else if ($set == "cancel" || $set == "false") {
								$labelSource = "display";
								$valueSource = $imgOriginal['path'];
								$labelDestination = "display";
								$valueDestination = $imgCopy['path'];
							}
							$replaceFileOptions = array(
								"format" => "image", 
								"labelSource" => $labelSource,
								"valueSource" => $valueSource,
								"labelDestination" => $labelDestination,
								"valueDestination" => $valueDestination
							);
							$replaceFile = $_storage->replace($replaceFileOptions);
							if (isset($replaceFile['return'])) {
								if (isset($replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
									$imgOriginal['tmp'] = $replaceFile['source']['file'];
									$imgCopy['tmp'] = $replaceFile['destination']['file'];
									return array(
										"return" => true,
										"data" => array(
											"original" => array(
												"tmp" => $imgOriginal['tmp'],
												"secret" => $imgOriginal['secret'],
												"name" => $imgOriginal['name'],
												"nameraw" => $imgOriginal['nameraw']
											),
											"copy" => array(
												"tmp" => $imgCopy['tmp'],
												"secret" => $imgCopy['secret'],
												"name" => $imgCopy['name'],
												"nameraw" => $imgCopy['nameraw']
											),
										)
									);
								}else if (isset($replaceFile['reason']) && $replaceFile['return'] == false) {
									return array("return" => false, "reason" => $replaceFile['reason']);
								}else {
									return array("return" => false, "reason" => "");
								}
							}else {
								return array("return" => false, "reason" => "");
							}
						}else {
							return array("return" => false, "reason" => "");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				if (isset($object['key']) && is_string($object['key'])) $key = addslashes($object['key']); else $key = null;
				if (isset($object['verify']) && is_bool($object['verify'])) $verify = $object['verify']; else $verify = true;
				if ($key != null && ($verify == true || $verify == false)) {
					if (!$verify) {
						$pushSql = " AND `close` != '0'";
					}else {
						$pushSql = "";
					}
					$_storage = $this->class['_storage'];
					$sql = "SELECT `id`, `name`, `path`, `token`, `secret` FROM `photos_cache` WHERE `secret` = '{$key}' OR `copy` = '{$key}' {$pushSql}";
					$query = mysqli_query($db,$sql);
					while ($fetch = mysqli_fetch_assoc($query)) {
						$f_name[] = $fetch['name'];
						$delMediaFileOpts = array(
							"format" => "image",
							"label" => "display",
							"value" => $fetch['path']
						);
						$delMediaFile = $_storage->delete($delMediaFileOpts);
						if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
							mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '{$fetch['id']}'");
							$photosLikeThisQuery = mysqli_query($db, "SELECT `id` FROM `photos_cache` WHERE `secret` = '{$fetch['secret']}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `user.id` = '{$this->user['id']}'");
							$photosUsertagQuery = mysqli_query($db, "SELECT `id`, `photos`, `faces`, `faces.image` FROM `photos_cache_usertag` WHERE `photos` = '{$fetch['secret']}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `user.id` = '{$this->user['id']}'");
							if ($photosUsertagQuery && mysqli_num_rows($photosLikeThisQuery) == 0) {
								while ($photosUsertagFetch = mysqli_fetch_assoc($photosUsertagQuery)) {
									$delPhotosUsertag = $_storage->delete(array("format" => "image", "label" => "display", "value" => $photosUsertagFetch['faces.image']));
									$delFacesUsertag = $_analysis->faces("delete", array("label" => "display", "value" => $photosUsertagFetch['faces']));
									if (isset($delPhotosUsertag['return'], $delFacesUsertag['return']) && $delPhotosUsertag['return'] == true && $delFacesUsertag['return'] == true) {
										mysqli_query($db, "DELETE FROM `photos_cache_usertag` WHERE `id` = '{$photosUsertagFetch['id']}'");
									}else {
										continue;
									}
								}
							}
						}else {
							continue;
						}
					}
					if (isset($f_name, $_SESSION["cache"]['photosHandling']) && count($f_name) > 0) {
						$s_cache = $_SESSION["cache"]['photosHandling'];
						if (is_array($s_cache) && $s_cache != null) {
							foreach ($s_cache as $key => $value) {
								if (in_array($key, $f_name)) {
									$s_cache[$key] = null;
									unset($s_cache[$key]);
								}
							}
							$_SESSION["cache"]['photosHandling'] = $s_cache;
						}
					}
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "clean") {
				$time = time();
				$client = $_client->client(true);
				$author = $this->user['mode'];
				$query = mysqli_query($db, "SELECT `id`, `name`, `path`, `token`, `secret` FROM `photos_cache` WHERE (`client` = '{$client}' OR (`author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}')) AND `close` != '0' AND `close` + '{$_parameter->get('media_cache_time_close')}' < '{$time}'");
				while ($fetch = mysqli_fetch_assoc($query)) {
					$f_name[] = $fetch['name'];
					$delMediaFileOpts = array(
						"format" => "image",
						"label" => "display",
						"value" => $fetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '{$fetch['id']}'");
						$photosLikeThisQuery = mysqli_query($db, "SELECT `id` FROM `photos_cache` WHERE `secret` = '{$fetch['secret']}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `user.id` = '{$this->user['id']}'");
						$photosUsertagQuery = mysqli_query($db, "SELECT `id`, `photos`, `faces`, `faces.image` FROM `photos_cache_usertag` WHERE `photos` = '{$fetch['secret']}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `user.id` = '{$this->user['id']}'");
						if ($photosUsertagQuery && mysqli_num_rows($photosLikeThisQuery) == 0) {
							while ($photosUsertagFetch = mysqli_fetch_assoc($photosUsertagQuery)) {
								$delPhotosUsertag = $_storage->delete(array("format" => "image", "label" => "display", "value" => $photosUsertagFetch['faces.image']));
								$delFacesUsertag = $_analysis->faces("delete", array("label" => "display", "value" => $photosUsertagFetch['faces']));
								if (isset($delPhotosUsertag['return'], $delFacesUsertag['return']) && $delPhotosUsertag['return'] == true && $delFacesUsertag['return'] == true) {
									mysqli_query($db, "DELETE FROM `photos_cache_usertag` WHERE `id` = '{$photosUsertagFetch['id']}'");
									
								}else {
									continue;
								}
							}
						}
					}
				}
				$randLimit = rand($_parameter->get('cacheClean_by_users_limit_rand_min'), $_parameter->get('cacheClean_by_users_limit_rand_max'));
				$cacheServerQuery = mysqli_query($db, "SELECT `name`, `path`, `token`, `secret` FROM `photos_cache` WHERE `close` != '0' AND `close` + '{$_parameter->get('media_cache_time_close')}' < '{$time}' LIMIT {$randLimit}");
				while ($fetch = mysqli_fetch_assoc($cacheServerQuery)) {
					$f_name[] = $fetch['name'];
					$delMediaFileOpts = array(
						"format" => "image",
						"label" => "display",
						"value" => $fetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '{$fetch['id']}'");
						$photosLikeThisQuery = mysqli_query($db, "SELECT `id` FROM `photos_cache` WHERE `secret` = '{$fetch['secret']}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `user.id` = '{$this->user['id']}'");
						$photosUsertagQuery = mysqli_query($db, "SELECT `id`, `photos`, `faces`, `faces.image` FROM `photos_cache_usertag` WHERE `photos` = '{$fetch['secret']}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `user.id` = '{$this->user['id']}'");
						if ($photosUsertagQuery && mysqli_num_rows($photosLikeThisQuery) == 0) {
							while ($photosUsertagFetch = mysqli_fetch_assoc($photosUsertagQuery)) {
								$delPhotosUsertag = $_storage->delete(array("format" => "image", "label" => "display", "value" => $photosUsertagFetch['faces.image']));
								$delFacesUsertag = $_analysis->faces("delete", array("label" => "display", "value" => $photosUsertagFetch['faces']));
								if (isset($delPhotosUsertag['return'], $delFacesUsertag['return']) && $delPhotosUsertag['return'] == true && $delFacesUsertag['return'] == true) {
									mysqli_query($db, "DELETE FROM `photos_cache_usertag` WHERE `id` = '{$photosUsertagFetch['id']}'");
									
								}else {
									continue;
								}
							}
						}
					}else {
						continue;
					}
				}
				if (isset($f_name, $_SESSION["cache"]['photosHandling']) && count($f_name) > 0) {
					$s_cache = $_SESSION["cache"]['photosHandling'];
					if (is_array($s_cache) && $s_cache != null) {
						foreach ($s_cache as $key => $value) {
							if (in_array($key, $f_name)) {
								$s_cache[$key] = null;
								unset($s_cache[$key]);
							}
						}
						$_SESSION["cache"]['photosHandling'] = $s_cache;
					}
				}
				$f_name = array();
				$query = mysqli_query($db, "SELECT `name` FROM `photos_cache` WHERE (`client` = '{$client}' OR (`author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'))");
				while ($fetch = mysqli_fetch_assoc($query)) {
					$f_name[] = $fetch['name'];
				}
				if (isset($f_name, $_SESSION["cache"]['photosHandling']) && count($f_name) > 0) {
					$s_cache = $_SESSION["cache"]['photosHandling'];
					if (is_array($s_cache) && $s_cache != null) {
						foreach ($s_cache as $key => $value) {
							if (!in_array($key, $f_name)) {
								$s_cache[$key] = null;
								unset($s_cache[$key]);
							}
						}
						$_SESSION["cache"]['photosHandling'] = $s_cache;
					}
				}
				return array("return" => true);
			}else if ($action == "push") {
				if (isset($object['name']) && is_string($object['name'])) $name = addslashes($object['name']); else $name = null;
				if (isset($object['secret']) && is_string($object['secret'])) $secret = addslashes($object['secret']); else $secret = null;
				if ($name != null && $secret != null) {
					$close = $_tool->timeNow() + $_parameter->get('media_cache_time_close');
					$client = $_client->client(true);
					$author = $this->user['mode'];
					$query = mysqli_query($db, "UPDATE `photos_cache` SET `close` = '{$close}' WHERE `secret` = '{$secret}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
					if (!$query) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "upload") {
				if (isset($object['name']) && is_string($object['name'])) $name = addslashes($object['name']); else $name = null;
				if (isset($object['secret']) && is_string($object['secret'])) $secret = addslashes($object['secret']); else $secret = null;
				if (isset($object['multiple']) && is_bool($object['multiple'])) $multiple = $object['multiple']; else $multiple = true;
				if (isset($object['maxsize']) && is_string($object['maxsize'])) $maxsize = $maxsize['maxsize']; else $maxsize = null;
				$_storage = new storage;
				$_tool = new tool;
				$author = $this->user['mode'];
				if ($name != null && $secret != null && is_array($author)) {
					$client = $_client->client(true);
					$query = mysqli_query($db, "SELECT * FROM `photos_cache` WHERE `client` = '{$client}' AND `secret` = '{$secret}' AND `name`= '{$name}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
					if (mysqli_num_rows($query) == 0) {
					
						//.
					}else {
						if (isset($object['scrapbook']) && $object['scrapbook'] != false) {
							$scrapbook = $object['scrapbook'];
						}else {
							$scrapbook = 0;
						}
						$time = time();
						$close = $time + $_parameter->get('media_cache_time_close');
						$fileQuery = "UPDATE `photos_cache` SET `close` = '{$close}' WHERE `secret` = '{$secret}' AND `name`= '{$name}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
						mysqli_query($db, $fileQuery);
						$file = mysqli_fetch_assoc($query);
						$file['name'] = basename($file['name']);
						$file['nameraw'] = $file['nameraw'];
						$file['ext'] = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $file['path'], "rows" => "`token`, `path`, `mime`, `size`", "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
							$file['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
							$file['mime'] = $getMediaFile['file'][0]['mime'];
							$file['size'] = $getMediaFile['file'][0]['size'];
						}else {
							return array("return" => false, "reason" => "");
						}
						if (in_array($file['ext'], $_parameter->get('photos_allow_format', true))) {
							$file['token'] = hash('crc32', time().'::'.rand().'::'.$file['name']);
							$file['display'] = hash('md5', $file['token']);
							if (in_array($file['ext'], $_parameter->get('exif_read_data_allow', true))) {
								$file['info'] = $this->info('read', $file['tmp'], 'photos');
							}else {
								$file['info'] = $this->info('read', null, 'photos');
								$file['info']['get'] = getimagesize($file['tmp']);
								$file['info']['size.width'] = $file['info']['get'][0];
								$file['info']['size.height'] = $file['info']['get'][1];
								$file['info']['mime_type']  = $file['info']['get']['mime'];
							}
							$file['file'] = $file['path'] = $file['secret'] = null;
							$file['file']['text'] = md5(time().'::'.rand().'::'.$file['token']);
							$img = photosEditor::factory($file['tmp'], true);
							if ($maxsize != null && is_array($maxsize)) {
								if (isset($maxsize['width']) && !isset($maxsize['height'])) {
									$img->resize($maxsize['width'], 0);
								}else if (!isset($maxsize['width']) && isset($maxsize['height'])) {
									$img->resize(0, $maxsize['height']);
								}else if (isset($maxsize['width'], $maxsize['height'])) {
									$img->resize($maxsize['width'], $maxsize['height']);
								}
							}
							if ($file['info']['file.size'] > $_parameter->get('photos_allow_size')) {
								$size_limit = $_parameter->get('photos_allow_size');
								$size_exceeded = $size_limit / $file['info']['file.size'];
								$size_reset_w = $file['info']['size.width'] * $size_exceeded / 10 * 9;
								$size_reset_h = $file['info']['size.height'] * $size_exceeded / 10 * 9;
								$img->resize($size_reset_w, $size_reset_h);
							}
							if ($file['info']['size.width'] > $_parameter->get('photos_size_original_w')) {
								$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
								if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
									$file['file']['original'] = hash('md5', $file['file']['text']).'.'.$file['ext'];
									$file['path']['original'] = $fileUpload['storage']['display'];
									$file['secret']['original'] = $fileUpload['storage']['hash'];
								}else {
									//. error
								}
							}else {
								$file['file']['original'] = $file['path']['original'] = $file['secret']['original'] = 0;
							}
							if ($multiple == true && $file['info']['size.width'] > $_parameter->get('photos_size_large_w')) {
								$img->resize($_parameter->get('photos_size_large_w'), 0);
								$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
								if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
									$file['file']['large'] = hash('md5', $file['file']['text']."::large").'.'.$file['ext'];
									$file['path']['large'] = $fileUpload['storage']['display'];
									$file['secret']['large'] = $fileUpload['storage']['hash'];
								}else {
									//. error
								}
							}else {
								$file['file']['large'] = $file['path']['large'] = $file['secret']['large'] = 0;
							}
							if ($multiple == true && $file['info']['size.width'] > $_parameter->get('photos_size_medium_w')) {
								$img->resize($_parameter->get('photos_size_medium_w'), 0);
								$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
								if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
									$file['file']['medium'] = hash('md5', $file['file']['text']."::medium").'.'.$file['ext'];
									$file['path']['medium'] = $fileUpload['storage']['display'];
									$file['secret']['medium'] = $fileUpload['storage']['hash'];
								}else {
									//. error
								}
							}else {
								$file['file']['medium'] = $file['path']['medium'] = $file['secret']['medium'] = 0;
							}
							if ($multiple == true && $file['info']['size.width'] > $_parameter->get('photos_size_small_w')) {
								$img->resize($_parameter->get('photos_size_small_w'), 0);
								$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
								if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
									$file['file']['small'] = hash('md5', $file['file']['text']."::small").'.'.$file['ext'];
									$file['path']['small'] = $fileUpload['storage']['display'];
									$file['secret']['small'] = $fileUpload['storage']['hash'];
								}else {
									//. error
								}
							}else {
								$file['file']['small'] = $file['path']['small'] = $file['secret']['small'] = 0;
							}
							if (isset($object['attachments']) && is_bool($object['attachments'])) $attachments = $object['attachments']; else $attachments = false;
							if (!$attachments) {
								$file['attachments'] = 0;
							}else {
								$file['attachments'] = 1;
							}
							if (isset($object['public']) && is_bool($object['public'])) $public = $object['public']; else $public = true;
							if (!$public) {
								$file['public'] = 0;
							}else {
								$file['public'] = 1;
							}
							$file['tags'] = $file['description'] = null;
							$file['private.view'] = $file['private.comment'] = $file['private.share'] = 4;
							$insertQuery = "INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES (null, '{$this->user['id']}', '{$author['type']}', '{$author['id']}', '{$scrapbook}', '{$_tool->timeNow()}', '{$file['token']}', '{$file['display']}', '{$file['name']}', '{$file['nameraw']}', '{$file['tags']}', '{$file['description']}', '{$file['attachments']}', '{$file['public']}', '{$file['private.view']}', '{$file['private.comment']}', '{$file['private.share']}', '{$file['file']['original']}', '{$file['file']['large']}', '{$file['file']['medium']}', '{$file['file']['small']}', '{$file['secret']['original']}', '{$file['secret']['large']}', '{$file['secret']['medium']}', '{$file['secret']['small']}', '{$file['path']['original']}', '{$file['path']['large']}', '{$file['path']['medium']}', '{$file['path']['small']}', '{$file['info']['size.height']}', '{$file['info']['size.width']}', '{$file['info']['aperture.f']}', '{$file['info']['aperture.max_value']}', '{$file['info']['b.o.m']}', '{$file['info']['file.datetime']}', '{$file['info']['file.size']}', '{$file['info']['file.type']}', '{$file['info']['file.source']}', '{$file['info']['flash']}', '{$file['info']['focal.length']}', '{$file['info']['iso']}', '{$file['info']['make']}', '{$file['info']['model']}', '{$file['info']['metering.mode']}', '{$file['info']['mime_type']}', '{$file['info']['software']}', '{$file['info']['ccd.width']}', '{$file['info']['exposure.time']}', '{$file['info']['exposure.mode']}', '{$file['info']['exposure.bias_value']}', '{$file['info']['f_number']}', '{$file['info']['sensing.method']}', '{$file['info']['shutter.speed']}', '{$file['info']['digital_zoom.ratio']}')";
							$insert = mysqli_query($db, $insertQuery);
							$photos_id = mysqli_insert_id($db);
							$file_query = mysqli_query($db, "SELECT `id`, `path`, `token` FROM `photos_cache` WHERE (`name`= '{$name}' OR `copy`= '{$name}') AND `secret` = '{$secret}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
							while ($file_fetch = mysqli_fetch_assoc($file_query)) {
								$_tool->unlink($_tool->hash('decode', $file_fetch['path'], $file_fetch['token']));
								mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '{$file_fetch['id']}'");
							}
							return array("return" => true, "id" => $photos_id);
						}else {
							return array("return" => false, "reason" => "");
						}
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}else if ($format == "music" && is_array($object)) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['file']) && !empty($object['file']) && is_array($object['file'])) {
					$_storage = $this->class['_storage'];
					$author = $this->user['mode'];
					$file = $object['file'];
					$time = time();
					$close = $time + $_parameter->get('media_cache_time_close');
					$client = $_client->client(true);
					$token = $_SESSION["client"]['token']['cache']['music'];
					$secret = hash('crc32', '('.$this->user['mode']['type'].'_'.$this->user['mode']['id'].')::'.md5_file($file['tmp_name']));
					$ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
					$name = hash('crc32', md5($token.'::'.$secret.'::'.rand())).'.'.$ext;
					$nameraw = $_tool->convertDatabaseString($file['name']);
					$copy = 0;
					$mime = $file['type'];
					$tmp = $_parameter->get('music_cache_forder').'/'.$name;
					$info = $this->info('read', $file['tmp_name'], 'audio');
					$duration = $info['duration'];
					$size = $file['size'];
					if ($size > $_parameter->get('music_allow_size')) {
						return array("return" => false, "reason" => "");
					}
					$fileUpload = $_storage->upload(array("format" => "audio", "move" => "copy", "file" => $file['tmp_name'], "mime" => $file['type'], "name" => $file['name']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
						$path = $fileUpload['storage']['display'];
					}else {
						return array("return" => false, "reason" => $fileUpload);
					}
					if ($time != null && $close != null && $client != null && $token != null && $secret != null && $name != null && $mime != null && $tmp != null && $path != null) {
						$insertSql =  "INSERT INTO `music_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`) VALUES (null, '{$this->user['id']}', '{$author['type']}', '{$author['id']}', '{$_tool->timeNow()}', '{$close}', '{$client}', '{$token}', '{$secret}', '{$name}', '{$nameraw}', '{$copy}', '{$mime}', '{$size}', '{$duration}', '{$path}')";
						$insert = mysqli_query($db,$insertSql);
						if ($insert == true) {
							return array(
								"return" => true, 
								"data" => array(
									"tmp" => $tmp,
									"secret" => $secret, 
									"name" => $name,
									"nameraw" => $nameraw,
									"mime" => $mime,
									"duration" => $duration
									)
								);
						}else {
							return array("return" => false, "reason" => $insertSql);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "copy") {
				if (isset($object['secret']) && is_string($object['secret'])) $secret = $object['secret']; else $secret = null;
				if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "");
				}else {
					$_tool = $_tool;
					$_storage = $this->class['_storage'];
					$author = $this->user['mode'];
				}
				$original_query = mysqli_query($db, "SELECT * FROM `music_cache` WHERE `secret` = '{$secret}' AND `name` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				$copy_query = mysqli_query($db, "SELECT * FROM `music_cache` WHERE `secret` = '{$secret}' AND `copy` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				if (mysqli_num_rows($original_query) > 0 && mysqli_num_rows($copy_query) == 0) {
					$original = mysqli_fetch_assoc($original_query);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $original['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$copy['ext'] = $original['ext'] = strtolower(pathinfo($original['name'], PATHINFO_EXTENSION));
					$copy['secret'] = $original['secret'];
					$copy['token'] = $original['token'];
					$copy['name'] = hash('crc32', $original['name'].rand()).'.'.$copy['ext'];
					$copy['nameraw'] = $original['nameraw'];
					$copy['copy'] = $original['name'];
					$_storage = new storage;
					$fileUpload = $_storage->upload(array("format" => "audio", "move" => "copy", "file" => $original['tmp'], "mime" => $original['mime'], "name" => $copy['name']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
						$copy['path'] = $fileUpload['storage']['display'];
						$copy['tmp'] = $fileUpload['storage']['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$insertQuery = "INSERT INTO `music_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration` `path`) VALUES (null, '{$original['user.id']}', '{$original['author.type']}', '{$original['author.id']}', '{$original['time']}', '{$original['close']}', '{$original['client']}', '{$original['token']}', '{$original['secret']}', '{$copy['name']}', '{$copy['nameraw']}', '{$copy['copy']}', '{$original['mime']}', '{$original['size']}', '{$original['duration']}', '{$copy['path']}')";
					$insert = mysqli_query($db, $insertQuery);
					if (!$insert) {
						return array("return" => false, "reason" => "");
					}else {
						return array(
							"return" => true, 
							"data" => array(
								"original" => array(
									"tmp" => $original['tmp'], 
									"secret" => $original['secret'], 
									"name" => $original['name'],
									"nameraw" => $original['nameraw']
								),
								"copy" => array(
									"tmp" => $copy['tmp'], 
									"secret" => $copy['secret'], 
									"name" => $copy['name'],
									"nameraw" => $copy['nameraw']
								)
							)
						);
					}
				}else if (mysqli_num_rows($original_query) > 0 && mysqli_num_rows($copy_query) > 0) {
					$original = mysqli_fetch_assoc($original_query);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $original['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$copy = mysqli_fetch_assoc($copy_query);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $copy['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$copy['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					return array(
						"return" => true, 
						"data" => array(
							"original" => array(
								"tmp" => $original['tmp'], 
								"secret" => $original['secret'], 
								"name" => $original['name'],
								"nameraw" => $original['nameraw']
								),
							"copy" => array(
								"tmp" => $copy['tmp'], 
								"secret" => $copy['secret'], 
								"name" => $copy['name'],
								"nameraw" => $copy['nameraw']
								)
							)
						);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "get") {
				if (isset($object['label']) && is_string($object['label'])) $label = addslashes($object['label']); else $label = null;
				if (isset($object['value']) && is_string($object['value'])) $value = addslashes($object['value']); else $value = null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$_tool = $_tool;
				$_storage = $this->class['_storage'];
				$author = $this->user['mode'];
				$query = mysqli_query($db, "SELECT * FROM `music_cache` WHERE `{$label}` = '{$value}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				if (mysqli_num_rows($query) > 0) {
					$musik = mysqli_fetch_assoc($query);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $musik['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$musik['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					return array(
						"return" => true,
						"data" => array(
							"tmp" => $musik['tmp'],
							"path" => $musik['path'],
							"secret" => $musik['secret'], 
							"name" => $musik['name'],
							"nameraw" => $musik['nameraw'],
							"copy" => $musik['copy'],
							"mime" => $musik['mime'],
							"size" => $musik['size'],
							"time" => $musik['time'],
							"close" => $musik['close'],
							"duration" => $musik['duration']
							)
						);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "replace") {
				if (isset($object['name']) && $object['name'] != null) {
					$_storage = $this->class['_storage'];
					$_tool = $_tool;
					$set = $object['set'];
					if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
					$author = $this->user['mode'];
					$musikCopy_query = mysqli_query($db,"SELECT `copy`, `path`, `token`, `secret`, `name`, `nameraw` FROM `music_cache` WHERE `name` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}' AND `copy` != '0'");
					if (mysqli_num_rows($musikCopy_query) > 0) {
						$musikCopy = mysqli_fetch_assoc($musikCopy_query);
						$musikOriginal_query = mysqli_query($db, "SELECT `path`, `token`, `secret`, `name`, `nameraw` FROM `music_cache` WHERE `name` = '{$musikCopy['copy']}'");
						if (mysqli_num_rows($musikOriginal_query) > 0) {
							$musikOriginal = mysqli_fetch_assoc($musikOriginal_query);
							if ($set == "apply" || $set == "true") {
								$labelSource = "display";
								$valueSource = $musikCopy['path'];
								$labelDestination = "display";
								$valueDestination = $musikOriginal['path'];
							}else if ($set == "cancel" || $set == "false") {
								$labelSource = "display";
								$valueSource = $musikOriginal['path'];
								$labelDestination = "display";
								$valueDestination = $musikCopy['path'];
							}
							$replaceFileOptions = array(
								"format" => "audio", 
								"labelSource" => $labelSource,
								"valueSource" => $valueSource,
								"labelDestination" => $labelDestination,
								"valueDestination" => $valueDestination
							);
							$replaceFile = $_storage->replace($replaceFileOptions);
							if (isset($replaceFile['return'])) {
								if (isset($replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
									$musikOriginal['tmp'] = $replaceFile['source']['file'];
									$musikCopy['tmp'] = $replaceFile['destination']['file'];
									return array(
										"return" => true,
										"data" => array(
											"original" => array(
												"tmp" => $musikOriginal['tmp'],
												"secret" => $musikOriginal['secret'],
												"name" => $musikOriginal['name'],
												"nameraw" => $musikOriginal['nameraw']
											),
											"copy" => array(
												"tmp" => $musikCopy['tmp'],
												"secret" => $musikCopy['secret'],
												"name" => $musikCopy['name'],
												"nameraw" => $musikCopy['nameraw']
											),
										)
									);
								}else if (isset($replaceFile['reason']) && $replaceFile['return'] == false) {
									return array("return" => false, "reason" => $replaceFile['reason']);
								}else {
									return array("return" => false, "reason" => "");
								}
							}else {
								return array("return" => false, "reason" => "");
							}
						}else {
							return array("return" => false, "reason" => "");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				if (isset($object['key']) && is_string($object['key'])) $key = addslashes($object['key']); else $key = null;
				if (isset($object['verify']) && is_bool($object['verify'])) $verify = $object['verify']; else $verify = true;
				if ($key != null && ($verify == true || $verify == false)) {
					if (!$verify) {
						$pushSql = " AND `close` != '0'";
					}else {
						$pushSql = "";
					}
					$_storage = $this->class['_storage'];
					$sql = "SELECT `id`, `name`, `path`, `token` FROM `music_cache` WHERE `name` = '{$key}' OR `copy` = '{$key}' {$pushSql}";
					$query = mysqli_query($db,$sql);
					while ($fetch = mysqli_fetch_assoc($query)) {
						$f_name[] = $fetch['name'];
						$delMediaFileOpts = array(
							"format" => "audio",
							"label" => "display",
							"value" => $fetch['path']
						);
						$delMediaFile = $_storage->delete($delMediaFileOpts);
						if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
							mysqli_query($db, "DELETE FROM `music_cache` WHERE `id` = '{$fetch['id']}'");
						}else {
							continue;
						}
					}
					if (isset($f_name, $_SESSION["cache"]['musicHandling']) && count($f_name) > 0) {
						$s_cache = $_SESSION["cache"]['musicHandling'];
						if (is_array($s_cache) && $s_cache != null) {
							foreach ($s_cache as $key => $value) {
								if (in_array($key, $f_name)) {
									$s_cache[$key] = null;
									unset($s_cache[$key]);
								}
							}
							$_SESSION["cache"]['photosHandling'] = $s_cache;
						}
					}
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "clean") {
				$_parameter = $_parameter;
				$_storage = $this->class['_storage'];
				$time = time();
				$client = $_client->client(true);
				$author = $this->user['mode'];
				$query = mysqli_query($db, "SELECT `id`, `name`, `path`, `token` FROM `music_cache` WHERE (`client` = '{$client}' OR (`author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}')) AND `close` != '0' AND `close` + '{$_parameter->get('media_cache_time_close')}' < '{$time}'");
				while ($fetch = mysqli_fetch_assoc($query)) {
					$f_name[] = $fetch['name'];
					$delMediaFileOpts = array(
						"format" => "audio",
						"label" => "display",
						"value" => $fetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `music_cache` WHERE `id` = '{$fetch['id']}'");
					}
				}
				$randLimit = rand($_parameter->get('cacheClean_by_users_limit_rand_min'), $_parameter->get('cacheClean_by_users_limit_rand_max'));
				$cacheServerQuery = mysqli_query($db, "SELECT `name`, `path`, `token` FROM `music_cache` WHERE `close` != '0' AND `close` + '{$_parameter->get('media_cache_time_close')}' < '{$time}' LIMIT {$randLimit}");
				while ($fetch = mysqli_fetch_assoc($cacheServerQuery)) {
					$f_name[] = $fetch['name'];
					$delMediaFileOpts = array(
						"format" => "audio",
						"label" => "display",
						"value" => $fetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `music_cache` WHERE `id` = '{$fetch['id']}'");
					}else {
						continue;
					}
				}
				if (isset($f_name, $_SESSION["cache"]['musicHandling']) && count($f_name) > 0) {
					$s_cache = $_SESSION["cache"]['musicHandling'];
					if (is_array($s_cache) && $s_cache != null) {
						foreach ($s_cache as $key => $value) {
							if (in_array($key, $f_name)) {
								$s_cache[$key] = null;
								unset($s_cache[$key]);
							}
						}
						$_SESSION["cache"]['musicHandling'] = $s_cache;
					}
				}
				$f_name = array();
				$query = mysqli_query($db, "SELECT `name` FROM `music_cache` WHERE (`client` = '{$client}' OR (`author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'))");
				while ($fetch = mysqli_fetch_assoc($query)) {
					$f_name[] = $fetch['name'];
				}
				if (isset($f_name, $_SESSION["cache"]['musicHandling']) && count($f_name) > 0) {
					$s_cache = $_SESSION["cache"]['musicHandling'];
					if (is_array($s_cache) && $s_cache != null) {
						foreach ($s_cache as $key => $value) {
							if (!in_array($key, $f_name)) {
								$s_cache[$key] = null;
								unset($s_cache[$key]);
							}
						}
						$_SESSION["cache"]['musicHandling'] = $s_cache;
					}
				}
				return array("return" => true);
			}else if ($action == "push") {
				if (isset($object['name']) && is_string($object['name'])) $name = addslashes($object['name']); else $name = null;
				if (isset($object['secret']) && is_string($object['secret'])) $secret = addslashes($object['secret']); else $secret = null;
				if ($name != null && $secret != null) {
					$close = $_tool->timeNow() + $_parameter->get('media_cache_time_close');
					$client = $_client->client(true);
					$author = $this->user['mode'];
					$query = mysqli_query($db, "UPDATE `music_cache` SET `close` = '{$close}' WHERE `secret` = '{$secret}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
					if (!$query) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "upload") {
				if (isset($object['name']) && is_string($object['name'])) $name = addslashes($object['name']); else $name = null;
				if (isset($object['secret']) && is_string($object['secret'])) $secret = addslashes($object['secret']); else $secret = null;
				$author = $this->user['mode'];
				if ($name != null && $secret != null && is_array($author)) {
					$_storage = $this->class['_storage'];
					$_tool = $_tool;
					$_client = $_client;
					$client = $_client->client(true);
					$query = mysqli_query($db, "SELECT * FROM `music_cache` WHERE `client` = '{$client}' AND `secret` = '{$secret}' AND `name`= '{$name}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
					if (mysqli_num_rows($query) == 0) {
						//.
					}else {
						if (isset($object['album']) && $object['album'] != false) {
							$album = $object['album'];
						}else {
							$album = 0;
						}
						$time = time();
						$close = $time + $_parameter->get('media_cache_time_close');
						mysqli_query($db, "UPDATE `music_cache` SET `close` = '{$close}' WHERE `secret` = '{$secret}' AND `name`= '{$name}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
						$file = mysqli_fetch_assoc($query);
						$file['name'] = basename($file['name']);
						$file['ext'] = pathinfo($file['name'], PATHINFO_EXTENSION);
						$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $file['path'], "rows" => "`token`, `path`, `mime`, `size`", "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
							$file['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
							$file['mime'] = $getMediaFile['file'][0]['mime'];
							$file['size'] = $getMediaFile['file'][0]['size'];
						}else {
							return array("return" => false, "reason" => "");
						}
						if (in_array($file['ext'], $_parameter->get('music_allow_format', true))) {
							$file['token'] = hash('crc32', time().'::'.rand().'::'.$file['name']);
							$file['display'] = hash('md5', $file['token']);
							$file['info'] = $this->info('read', $file['tmp'], 'audio');
							$file['info']['mime_type'] = $file['mime'];
							$file['info']['file.size'] = $file['size'];
							$file['file'] = $file['name'] = $file['path'] = $file['secret'] = null;
							$file['file']['text'] = md5(time().'::'.rand().'::'.$file['token']);
							$file['file']['original'] = hash('md5', $file['file']['text']).'.'.$file['ext'];
							$fileUpload = $_storage->upload(array("format" => "audio", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
							if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
								$file['path']['original'] = $fileUpload['storage']['display'];
								$file['secret']['original'] = $fileUpload['storage']['hash'];
							}else {
								return array("return" => false, "reason" => "");
							}
							if (isset($object['info']['name']) && $object['info']['name'] != null) {
								$file['name'] = $_tool->convertDatabaseString($object['info']['name']);
							}else {
								$file['name'] = $file['nameraw'];
							}
							if (isset($object['info']['tags']) && $object['info']['tags'] != null) {
								$file['tags'] = $object['info']['tags'];
							}else {
								$file['tags'] = null;
							}
							if (isset($object['info']['description']) && $object['info']['description'] != null) {
								$file['description'] = $_tool->convertDatabaseString($object['info']['description']);
							}else {
								$file['description'] = null;
							}
							if (isset($object['info']['singer']) && $object['info']['singer'] != null) {
								$file['singer'] = $_tool->convertDatabaseString($object['info']['singer']);
							}else {
								$file['singer'] = null;
							}
							$file['private.view'] = $file['private.comment'] = $file['private.share'] = 4;
							$sql = "INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `bitrate`, `codec`, `duration`, `mime_type`) VALUES (null, '{$this->user['id']}', '{$author['type']}', '{$author['id']}', '{$album}', '{$_tool->timeNow()}', '{$file['token']}', '{$file['display']}', '{$file['name']}', '{$file['nameraw']}', '{$file['singer']}', '{$file['tags']}', '{$file['description']}', '{$file['private.view']}', '{$file['private.comment']}', '{$file['private.share']}', '{$file['file']['original']}', '{$file['secret']['original']}', '{$file['path']['original']}', '{$file['info']['file.datetime']}', '{$file['info']['file.size']}', '{$file['info']['bitrate']}', '{$file['info']['codec']}', '{$file['info']['duration']}', '{$file['info']['mime_type']}')";
							$insert = mysqli_query($db,$sql);
							$music_id = mysqli_insert_id($db);
							$file_query = mysqli_query($db, "SELECT `id`, `path`, `token` FROM `music_cache` WHERE (`name`= '{$name}' OR `copy`= '{$name}') AND `secret` = '{$secret}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
							while ($file_fetch = mysqli_fetch_assoc($file_query)) {
								$_tool->unlink($_tool->hash('decode', $file_fetch['path'], $file_fetch['token']));
								mysqli_query($db,"DELETE FROM `music_cache` WHERE `id` = '{$file_fetch['id']}'");
							}
							return array("return" => true, "id" => $music_id);
						}
					}
				}
			}
		}else if ($format == "videos" && is_array($object)) {
			if (isset($object['action']) && is_string($object['action'])) if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null; else $action = null;
			if ($action == "add") {
				if (isset($object['file']) && !empty($object['file']) && is_array($object['file'])) {
					$file = $object['file'];
					$time = time();
					$close = $time + $_parameter->get('media_cache_time_close');
					$client = $_client->client(true);
					$token = $_SESSION["client"]['token']['cache']['videos'];
					$secret = hash('crc32', '('.$this->user['mode']['type'].'_'.$this->user['mode']['id'].')::'.md5_file($file['tmp_name']));
					$ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
					$name = hash('crc32', md5($token.'::'.$secret.'::'.rand())).'.'.$ext;
					$nameraw = $_tool->convertDatabaseString($file['name']);
					$thumbnail = preg_replace("/(\.{$ext})$/", ".png", $name);
					$copy = 0;
					$mime = $file['type'];
					$info = $this->info('read', $file['tmp_name'], 'videos');
					$duration = $info['duration'];
					$size = $file['size'];
					if ($size > $_parameter->get('videos_allow_size')) {
						return array("return" => false, "reason" => "");
					}
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "copy", "file" => $file['tmp_name'], "mime" => $file['type'], "name" => $file['name']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
						$path = $fileUpload['storage']['display'];
						$tmp = $fileUpload['storage']['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$author = $this->user['mode'];
					if ($time != null && $close != null && $client != null && $token != null && $secret != null && $name != null && $mime != null && $path != null) {
						$sql = "INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) VALUES (null, '{$this->user['id']}', '{$author['type']}', '{$author['id']}', '{$_tool->timeNow()}', '{$close}', '{$client}', '{$token}', '{$secret}', '{$name}', '{$nameraw}', '{$thumbnail}', null, '{$copy}', '{$mime}', '{$size}', '{$duration}', '{$path}')";
						$insert = mysqli_query($db, $sql);
						if (!$insert) {
							return array("return" => false, "reason" => "");
						}else {
							$idInserted = mysqli_insert_id($db);
							$fileUpload = $_storage->upload(array("format" => "image", "move" => "none", "file" => "none", "name" => $thumbnail, "mime" => $_parameter->get('videos_thumbnail_image_mime')));
							if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
								$thumbnailPath = $fileUpload['storage']['source'];
								$thumbnailDisplay = $fileUpload['storage']['display'];
								mysqli_query($db, "UPDATE `videos_cache` SET `thumbnail.path` = '{$fileUpload['storage']['display']}' WHERE `id` = '{$idInserted}'");
							}else {
								//.
							}
							$at = intval($duration / 2);
							exec("ffmpeg -itsoffset -{$at} -i {$_client->root()}{$tmp} -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 {$_client->root()}{$thumbnailPath} 2>&1");
							$_storage->recheck(array("format" => "image", "label" => "display", "value" => $thumbnailDisplay));
							return array(
								"return" => true, 
								"data" => array(
									"tmp" => $tmp,
									"thumbnail" => $thumbnail,
									"secret" => $secret,
									"name" => $name,
									"nameraw" => $nameraw,
									"mime" => $mime,
									"duration" => $duration
									)
							);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "copy") {
				if (isset($object['secret']) && is_string($object['secret'])) $secret = $object['secret']; else $secret = null;
				if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "");
				}else {
					$_tool = $_tool;
					$_storage = $this->class['_storage'];
					$author = $this->user['mode'];
				}
				$original_query = mysqli_query($db, "SELECT * FROM `videos_cache` WHERE `secret` = '{$secret}' AND `name` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				$copy_query = mysqli_query($db, "SELECT * FROM `videos_cache` WHERE `secret` = '{$secret}' AND `copy` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				if (mysqli_num_rows($original_query) > 0 && mysqli_num_rows($copy_query) == 0) {
					$original = mysqli_fetch_assoc($original_query);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $original['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $original['thumbnail.path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['thumbnail.path'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$copy['ext'] = $original['ext'] = strtolower(pathinfo($original['name'], PATHINFO_EXTENSION));
					$copy['secret'] = $original['secret'];
					$copy['token'] = $original['token'];
					$copy['name'] = hash('crc32', $original['name'].rand()).'.'.$copy['ext'];
					$copy['nameraw'] = $original['nameraw'];
					$copy['thumbnail'] = preg_replace("/(\.{$ext})$/", ".png", $copy['name']);
					$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $original['thumbnail.path'], "name" => $copy['thumbnail']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
						$copy['thumbnail.path'] = $fileUpload['storage']['display'];
					}else {
						//.
					}
					$copy['copy'] = $original['name'];
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "copy", "file" => $original['tmp'], "mime" => $original['mime'], "name" => $copy['name']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
						$copy['path'] = $fileUpload['storage']['display'];
						$copy['tmp'] = $fileUpload['storage']['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$insertQuery = "INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) VALUES (null, '{$original['user.id']}', '{$original['author.type']}', '{$original['author.id']}', '{$original['time']}', '{$original['close']}', '{$original['client']}', '{$original['token']}', '{$original['secret']}', '{$copy['name']}', '{$copy['nameraw']}', '{$copy['thumbnail']}', '{$copy['thumbnail.path']}', '{$copy['copy']}', '{$original['mime']}', '{$original['size']}', '{$original['duration']}', '{$copy['path']}')";
					$insert = mysqli_query($db, $insertQuery);
					if (!$insert) {
						return array("return" => false, "reason" => "");
					}else {
						return array(
							"return" => true, 
							"data" => array(
								"original" => array(
									"tmp" => $original['tmp'], 
									"secret" => $original['secret'], 
									"name" => $original['name'],
									"nameraw" => $original['nameraw'],
									"thumbnail" => $original['thumbnail']
								),
								"copy" => array(
									"tmp" => $copy['tmp'], 
									"secret" => $copy['secret'], 
									"name" => $copy['name'],
									"nameraw" => $copy['nameraw'],
									"thumbnail" => $copy['thumbnail']
								)
							)
						);
					}
				}else if (mysqli_num_rows($original_query) > 0 && mysqli_num_rows($copy_query) > 0) {
					$original = mysqli_fetch_assoc($original_query);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $original['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$original['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					$copy = mysqli_fetch_assoc($copy_query);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $copy['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$copy['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					return array(
						"return" => true, 
						"data" => array(
							"original" => array(
								"tmp" => $original['tmp'], 
								"secret" => $original['secret'], 
								"name" => $original['name'],
								"nameraw" => $original['nameraw'],
								"thumbnail" => $original['thumbnail']
								),
							"copy" => array(
								"tmp" => $copy['tmp'], 
								"secret" => $copy['secret'], 
								"name" => $copy['name'],
								"nameraw" => $copy['nameraw'],
								"thumbnail" => $copy['thumbnail']
								)
							)
						);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "get") {
				if (isset($object['label']) && is_string($object['label'])) $label = addslashes($object['label']); else $label = null;
				if (isset($object['value']) && is_string($object['value'])) $value = addslashes($object['value']); else $value = null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$_tool = $_tool;
				$_storage = $this->class['_storage'];
				$author = $this->user['mode'];
				$query = mysqli_query($db, "SELECT * FROM `videos_cache` WHERE `{$label}` = '{$value}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
				if (mysqli_num_rows($query) > 0) {
					$vio = mysqli_fetch_assoc($query);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $vio['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$vio['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						return array("return" => false, "reason" => "");
					}
					return array(
						"return" => true,
						"data" => array(
							"tmp" => $vio['tmp'],
							"path" => $vio['path'],
							"secret" => $vio['secret'], 
							"name" => $vio['name'],
							"nameraw" => $vio['nameraw'],
							"copy" => $vio['copy'],
							"time" => $vio['time'],
							"thumbnail" => $vio['thumbnail'],
							"mime" => $vio['mime'],
							"size" => $vio['size'],
							"close" => $vio['close'],
							"duration" => $vio['duration']
							)
						);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "replace") {
				if (isset($object['name']) && $object['name'] != null) {
					$_storage = $this->class['_storage'];
					$_tool = $_tool;
					$set = $object['set'];
					if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
					$author = $this->user['mode'];
					$vioCopy_query = mysqli_query($db, "SELECT `copy`, `path`, `token`, `secret`, `name`, `nameraw`, `thumbnail` FROM `photos_cache` WHERE `name` = '{$name}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}' AND `copy` != '0'");
					if (mysqli_num_rows($vioCopy_query) > 0) {
						$vioCopy = mysqli_fetch_assoc($vioCopy_query);
						$vioOriginal_query = mysqli_query($db, "SELECT `path`, `token`, `secret`, `name`, `nameraw`, `thumbnail` FROM `videos_cache` WHERE `name` = '{$vioCopy['copy']}'");
						if (mysqli_num_rows($vioOriginal_query) > 0) {
							$vioOriginal = mysqli_fetch_assoc($vioOriginal_query);
							if ($set == "apply" || $set == "true") {
								$labelSource = "display";
								$valueSource = $vioCopy['path'];
								$labelDestination = "display";
								$valueDestination = $vioOriginal['path'];
							}else if ($set == "cancel" || $set == "false") {
								$labelSource = "display";
								$valueSource = $vioOriginal['path'];
								$labelDestination = "display";
								$valueDestination = $vioCopy['path'];
							}
							$replaceFileOptions = array(
								"format" => "video", 
								"labelSource" => $labelSource,
								"valueSource" => $valueSource,
								"labelDestination" => $labelDestination,
								"valueDestination" => $valueDestination
							);
							$replaceFile = $_storage->replace($replaceFileOptions);
							if (isset($replaceFile['return'])) {
								if (isset($replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
									$vioOriginal['tmp'] = $replaceFile['source']['file'];
									$vioCopy['tmp'] = $replaceFile['destination']['file'];
									return array(
										"return" => true,
										"data" => array(
											"original" => array(
												"tmp" => $vioOriginal['tmp'],
												"secret" => $vioOriginal['secret'],
												"name" => $vioOriginal['name'],
												"nameraw" => $vioOriginal['nameraw'],
												"thumbnail" => $vioOriginal['thumbnail']
											),
											"copy" => array(
												"tmp" => $vioCopy['tmp'],
												"secret" => $vioCopy['secret'],
												"name" => $vioCopy['name'],
												"nameraw" => $vioCopy['nameraw'],
												"thumbnail" => $vioOriginal['thumbnail']
											),
										)
									);
								}else if (isset($replaceFile['reason']) && $replaceFile['return'] == false) {
									return array("return" => false, "reason" => $replaceFile['reason']);
								}else {
									return array("return" => false, "reason" => "");
								}
							}else {
								return array("return" => false, "reason" => "");
							}
						}else {
							return array("return" => false, "reason" => "");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				if (isset($object['key']) && is_string($object['key'])) $key = addslashes($object['key']); else $key = null;
				if (isset($object['verify']) && is_bool($object['verify'])) $verify = $object['verify']; else $verify = true;
				if ($key != null && ($verify == true || $verify == false)) {
					if (!$verify) {
						$pushSql = " AND `close` != '0'";
					}else {
						$pushSql = "";
					}
					$_storage = $this->class['_storage'];
					$sql = "SELECT `id`, `name`, `path`, `token` FROM `videos_cache` WHERE `name` = '{$key}' OR `copy` = '{$key}' {$pushSql}";
					$query = mysqli_query($db,$sql);
					while ($fetch = mysqli_fetch_assoc($query)) {
						$f_name[] = $fetch['name'];
						$delMediaFileOpts = array(
							"format" => "video",
							"label" => "display",
							"value" => $fetch['path']
						);
						$delMediaFile = $_storage->delete($delMediaFileOpts);
						if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
							mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '{$fetch['id']}'");
						}else {
							continue;
						}
					}
					if (isset($f_name, $_SESSION["cache"]['videosHandling']) && count($f_name) > 0) {
						$s_cache = $_SESSION["cache"]['videosHandling'];
						if (is_array($s_cache) && $s_cache != null) {
							foreach ($s_cache as $key => $value) {
								if (in_array($key, $f_name)) {
									$s_cache[$key] = null;
									unset($s_cache[$key]);
								}
							}
							$_SESSION["cache"]['videosHandling'] = $s_cache;
						}
					}
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "clean") {
				$_parameter = $_parameter;
				$_storage = $this->class['_storage'];
				$time = time();
				$client = $_client->client(true);
				$author = $this->user['mode'];
				$query = mysqli_query($db, "SELECT `id`, `name`, `path`, `token` FROM `videos_cache` WHERE (`client` = '{$client}' OR (`author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}')) AND `close` != '0' AND `close` + '{$_parameter->get('media_cache_time_close')}' < '{$time}'");
				while ($fetch = mysqli_fetch_assoc($query)) {
					$f_name[] = $fetch['name'];
					$delMediaFileOpts = array(
						"format" => "video",
						"label" => "display",
						"value" => $fetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '{$fetch['id']}'");
					}
				}
				$randLimit = rand($_parameter->get('cacheClean_by_users_limit_rand_min'), $_parameter->get('cacheClean_by_users_limit_rand_max'));
				$cacheServerQuery = mysqli_query($db, "SELECT `name`, `path`, `token` FROM `videos_cache` WHERE `close` != '0' AND `close` + '{$_parameter->get('media_cache_time_close')}' < '{$time}' LIMIT {$randLimit}");
				while ($fetch = mysqli_fetch_assoc($cacheServerQuery)) {
					$f_name[] = $fetch['name'];
					$delMediaFileOpts = array(
						"format" => "video",
						"label" => "display",
						"value" => $fetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '{$fetch['id']}'");
					}else {
						continue;
					}
				}
				if (isset($f_name, $_SESSION["cache"]['videosHandling']) && count($f_name) > 0) {
					$s_cache = $_SESSION["cache"]['videosHandling'];
					if (is_array($s_cache) && $s_cache != null) {
						foreach ($s_cache as $key => $value) {
							if (in_array($key, $f_name)) {
								$s_cache[$key] = null;
								unset($s_cache[$key]);
							}
						}
						$_SESSION["cache"]['videosHandling'] = $s_cache;
					}
				}
				$f_name = array();
				$query = mysqli_query($db, "SELECT `name` FROM `videos_cache` WHERE (`client` = '{$client}' OR (`author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'))");
				while ($fetch = mysqli_fetch_assoc($query)) {
					$f_name[] = $fetch['name'];
				}
				if (isset($f_name, $_SESSION["cache"]['videosHandling']) && count($f_name) > 0) {
					$s_cache = $_SESSION["cache"]['videosHandling'];
					if (is_array($s_cache) && $s_cache != null) {
						foreach ($s_cache as $key => $value) {
							if (!in_array($key, $f_name)) {
								$s_cache[$key] = null;
								unset($s_cache[$key]);
							}
						}
						$_SESSION["cache"]['videosHandling'] = $s_cache;
					}
				}
				return array("return" => true);
			}else if ($action == "push") {
				if (isset($object['name']) && is_string($object['name'])) $name = addslashes($object['name']); else $name = null;
				if (isset($object['secret']) && is_string($object['secret'])) $secret = addslashes($object['secret']); else $secret = null;
				if ($name != null && $secret != null) {
					$close = $_tool->timeNow() + $_parameter->get('media_cache_time_close');
					$client = $_client->client(true);
					$author = $this->user['mode'];
					$query = mysqli_query($db,"UPDATE `videos_cache` SET `close` = '{$close}' WHERE `secret` = '{$secret}' AND `author.id` = '{$author['id']}' AND `author.type` = '{$author['type']}'");
					if (!$query) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "upload") {
				if (isset($object['name']) && is_string($object['name'])) $name = addslashes($object['name']); else $name = null;
				if (isset($object['secret']) && is_string($object['secret'])) $secret = addslashes($object['secret']); else $secret = null;
				$author = $this->user['mode'];
				if ($name != null && $secret != null && is_array($author)) {
					$_storage = $this->class['_storage'];
					$_tool = $_tool;
					$_client = $_client;
					$client = $_client->client(true);
					$query = mysqli_query($db, "SELECT * FROM `videos_cache` WHERE `client` = '{$client}' AND `secret` = '{$secret}' AND `name`= '{$name}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
					if (mysqli_num_rows($query) == 0) {
						//.
					}else {
						if (isset($object['playlist']) && $object['playlist'] != false) {
							$playlist = $object['playlist'];
						}else {
							$playlist = 0;
						}
						$time = time();
						$close = $time + $_parameter->get('media_cache_time_close');
						mysqli_query($db, "UPDATE `videos_cache` SET `close` = '{$close}' WHERE `secret` = '{$secret}' AND `name`= '{$name}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
						$file = mysqli_fetch_assoc($query);
						$file['name'] = basename($file['name']);
						$file['ext'] = pathinfo($file['name'], PATHINFO_EXTENSION);
						$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $file['path'], "rows" => "`token`, `path`, `mime`, `size`", "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
							$file['tmp'] = $_tool->hash("decode", $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
							$file['mime'] = $getMediaFile['file'][0]['mime'];
							$file['size'] = $getMediaFile['file'][0]['size'];
						}else {
							return array("return" => false, "reason" => "");
						}
						if (in_array($file['ext'], $_parameter->get('videos_allow_format', true))) {
							$file['token'] = hash('crc32', time().'::'.rand().'::'.$file['name']);
							$file['display'] = hash('md5', $file['token']);
							$file['info'] = $this->info('read', $file['tmp'], 'videos');
							$file['info']['mime_type'] = $file['mime'];
							$file['info']['file.size'] = $file['size'];
							$file['file'] = $file['name'] = $file['path'] = $file['secret'] = null;
							$file['file']['text'] = hash('md5', time().'::'.rand().'::'.$file['token']);
							$file['file']['thumbnail'] = hash('md5', $file['file']['text'].'::thumbnail').'.png';
							$file['file']['sd'] = hash('md5', $file['file']['text'].'::sd::'.rand()).'.'.$file['ext'];
							$fileUpload = $_storage->upload(array("format" => "video", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
							if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true && is_array($fileUpload['storage'])) {
								$file['path']['sd'] = $fileUpload['storage']['display'];
								$file['secret']['sd'] = $fileUpload['storage']['hash'];
								$file['source']['sd'] = $fileUpload['storage']['source'];
								exec("ffmpeg -i {$file['path']['sd']} -s 640x480 -c:a copy {$file['path']['sd']} 2>&1 &");
							}else {
								return array("return" => false, "reason" => "");
							}
							if (isset($object['info']['name']) && $object['info']['name'] != null) {
								$file['name'] = $_tool->convertDatabaseString($object['info']['name']);
							}else {
								$file['name'] = $file['nameraw'];
							}
							if (isset($object['info']['tags']) && $object['info']['tags'] != null) {
								$file['tags'] = $object['info']['tags'];
							}else {
								$file['tags'] = null;
							}
							if (isset($object['info']['description']) && $object['info']['description'] != null) {
								$file['description'] = $_tool->convertDatabaseString($object['info']['description']);
							}else {
								$file['description'] = null;
							}
							$file['secret']['thumbnail'] = $file['path']['thumbnail'] = 0;
							$file['file']['hd'] = $file['secret']['hd'] = $file['path']['hd'] = 0;
							$file['file']['audio'] = $file['secret']['audio'] = $file['path']['audio'] = 0;
							$file['private.view'] = $file['private.comment'] = $file['private.share'] = 4;
							$sql = "INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES (null, '{$this->user['id']}', '{$author['type']}', '{$author['id']}', '{$playlist}', '{$_tool->timeNow()}', '{$file['token']}', '{$file['display']}', '{$file['name']}', '{$file['nameraw']}', '{$file['tags']}', '{$file['description']}', '{$file['private.view']}', '{$file['private.comment']}', '{$file['private.share']}', '{$file['file']['thumbnail']}', '{$file['file']['audio']}', '{$file['file']['hd']}', '{$file['file']['sd']}', '{$file['secret']['thumbnail']}', '{$file['secret']['audio']}', '{$file['secret']['hd']}', '{$file['secret']['sd']}', '{$file['path']['thumbnail']}', '{$file['path']['audio']}', '{$file['path']['hd']}', '{$file['path']['sd']}', '{$file['info']['file.datetime']}', '{$file['info']['file.size']}', '{$file['info']['codec']}', '{$file['info']['dimension.height']}', '{$file['info']['dimension.width']}', '{$file['info']['display.ratio']}', '{$file['info']['bitrate']}', '{$file['info']['framerate']}', '{$file['info']['duration']}', '{$file['info']['mime_type']}', '{$file['info']['audio.codec_name']}', '{$file['info']['audio.codec_long_name']}', '{$file['info']['audio.profile']}', '{$file['info']['audio.codec_type']}', '{$file['info']['audio.codec_time_base']}', '{$file['info']['audio.codec_tag_string']}', '{$file['info']['audio.channels']}', '{$file['info']['audio.channel_layout']}', '{$file['info']['audio.duration']}', '{$file['info']['audio.bit_rate']}')";
							$insert = mysqli_query($db,$sql);
							if (!$insert) {
								return array("return" => false, "reason" => "");
							}else {
								$videos_id = mysqli_insert_id($db);
								$fileUploadThumbnail = $_storage->upload(array("format" => "image", "move" => "none", "file" => "none", "name" => $file['file']['thumbnail'], "mime" => $_parameter->get('videos_thumbnail_image_mime')));
								if (isset($fileUploadThumbnail['return'], $fileUploadThumbnail['storage']) && $fileUploadThumbnail['return'] == true && is_array($fileUploadThumbnail['storage'])) {
									$thumbnailPath = $fileUploadThumbnail['storage']['source'];
									$thumbnailDisplay = $fileUploadThumbnail['storage']['display'];
									mysqli_query($db, "UPDATE `videos_info` SET `secret.thumbnail` = '{$fileUploadThumbnail['storage']['secret']}', `path.thumbnail` = '{$fileUploadThumbnail['storage']['display']}' WHERE `id` = '{$videos_id}'");
								}else {
									//. error.
								}
								$timeCropThumbnail = intval($file['info']['duration'] / 2);
								exec("ffmpeg -itsoffset -{$timeCropThumbnail} -i {$_client->root()}{$file['source']['sd']} -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 {$_client->root()}{$thumbnailPath} 2>&1");
								$_storage->recheck(array("format" => "image", "label" => "display", "value" => $thumbnailDisplay));

								$file_query = mysqli_query($db,"SELECT `id`, `path`, `token`, `thumbnail` FROM `videos_cache` WHERE (`name`= '{$name}' OR `copy`= '{$name}') AND `secret` = '{$secret}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'");
								while ($file_fetch = mysqli_fetch_assoc($file_query)) {
									$_tool->unlink($_tool->hash('decode', $file_fetch['path'], $file_fetch['token']));
									$_tool->unlink($_parameter->get('videos_cache_forder').'/thumbnail/'.$file_fetch['thumbnail']);
									mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '{$file_fetch['id']}'");
								}
								return array("return" => true, "id" => $videos_id);
							}
						}
					}
				}
			}
		}
	}
	function info ($action, $file, $format) {
		if ($action == "read") {
			if ($format == "photos") {
				$data['aperture.f'] = $data['b.o.m'] = $data['size.height'] = $data['size.width'] = $data['file.datetime'] = $data['file.size'] = $data['file.type'] = $data['file.source'] = $data['flash'] = $data['focal.length'] = $data['iso'] = $data['make'] = $data['metering.mode'] = $data['mime_type'] = $data['model'] = $data['software'] = $data['ccd.width'] = $data['exposure.time'] = $data['exposure.mode'] = $data['f_number'] = $data['aperture.max_value'] = $data['sensing.method'] = $data['shutter.speed'] = $data['exposure.bias_value'] = $data['digital_zoom.ratio'] = 0;
				if ($file != null) {
					$info = exif_read_data($file, 0, true);
					if (isset($info['COMPUTED']['ApertureFNumber'])) {
						$data['aperture.f'] = $info['COMPUTED']['ApertureFNumber'];
					}
					if (isset($info['COMPUTED']['ByteOrderMotorola'])) {
						$data['b.o.m'] = $info['COMPUTED']['ByteOrderMotorola'];
					}
					if (isset($info['COMPUTED']['Height'])) {
						$data['size.height'] = $info['COMPUTED']['Height'];
					}
					if (isset($info['COMPUTED']['Width'])) {
						$data['size.width'] = $info['COMPUTED']['Width'];
					}
					if (isset($info['FILE']['FileDateTime'])) {
						$data['file.datetime'] = $info['FILE']['FileDateTime'];
					}
					if (isset($info['FILE']['FileSize'])) {
						$data['file.size'] = $info['FILE']['FileSize'];
					}
					if (isset($info['FILE']['FileType'])) {
						$data['file.type'] = $info['FILE']['FileType'];
					}
					if (isset($info['FILE']['FileSource'])) {
						$data['file.source'] = $info['FILE']['FileSource'];
					}
					if (isset($info['EXIF']['Flash'])) {
						$data['flash'] = $info['EXIF']['Flash'];
					}
					if (isset($info['EXIF']['FocalLength'])) {
						$data['focal.length'] = $info['EXIF']['FocalLength'];
					}
					if (isset($info['EXIF']['ISOSpeedRatings'])) {
						$data['iso'] = $info['EXIF']['ISOSpeedRatings'];
					}
					if (isset($info['IFD0']['Make'])) {
						$data['make'] = $info['IFD0']['Make'];
					}
					if (isset($info['EXIF']['MeteringMode'])) {
						$data['metering.mode'] = $info['EXIF']['MeteringMode'];
					}
					if (isset($info['FILE']['MimeType'])) {
						$data['mime_type'] = $info['FILE']['MimeType'];
					}
					if (isset($info['IFD0']['Model'])) {
						$data['model'] = $info['IFD0']['Model'];
					}
					if (isset($info['IFD0']['Software'])) {
						$data['software'] = $info['IFD0']['Software'];
					}
					if (isset($info['FILE']['CCDWidth'])) {
						$data['ccd.width'] = $info['FILE']['CCDWidth'];
					}
					if (isset($info['EXIF']['ExposureTime'])) {
						$data['exposure.time'] = $info['EXIF']['ExposureTime'];
					}
					if (isset($info['EXIF']['ExposureMode'])) {
						$data['exposure.mode'] = $info['EXIF']['ExposureMode'];
					}
					if (isset($info['EXIF']['FNumber'])) {
						$data['f_number'] = $info['EXIF']['FNumber'];
					}
					if (isset($info['EXIF']['MaxApertureValue'])) {
						$data['aperture.max_value'] = $info['EXIF']['MaxApertureValue'];
					}
					if (isset($info['EXIF']['SensingMethod'])) {
						$data['sensing.method'] = $info['EXIF']['SensingMethod'];
					}
					if (isset($info['EXIF']['ShutterSpeedValue'])) {
						$data['shutter.speed'] = $info['EXIF']['ShutterSpeedValue'];
					}
					if (isset($info['EXIF']['ExposureBiasValue'])) {
						$data['exposure.bias_value'] = $info['EXIF']['ExposureBiasValue'];
					}
					if (isset($info['EXIF']['DigitalZoomRatio'])) {
						$data['digital_zoom.ratio'] = $info['EXIF']['DigitalZoomRatio'];
					}
				}
				return $data;
			}else if ($format == "audio") {
				$data['name'] = $data['artists'] = $data['author'] = $data['lyrics'] = $data['file.datetime'] = $data['file.size'] = $data['bitrate'] = $data['codec'] = $data['duration'] = $data['mime_type'] =  0;
				if ($file != null) {
					exec("ffprobe -v quiet -print_format json -show_format -show_streams {$file} 2>&1 &", $info);
					$infoData = null;
					foreach ($info as $i => $info_v) { 
						$infoData .= $info_v;
					}
					$info = json_decode($infoData, true);
					if (isset($info['streams'][0]['codec_name'])) {
						$data['codec'] = $info['streams'][0]['codec_name'];
					}
					if (isset($info['format']['bit_rate'])) {
						$data['bitrate'] = $info['format']['bit_rate'];
					}
					if (isset($info['format']['duration'])) {
						$data['duration'] = $info['format']['duration'];
					}
					if (isset($info['format']['size'])) {
						$data['file.size'] = $info['format']['size'];
					}
				}
				return $data;
			}else if ($format == "videos") {
				$data['name'] = $data['file.datetime'] = $data['file.size'] = $data['bitrate'] = $data['framerate'] = $data['duration'] = $data['mime_type'] = $data['codec'] = $data['display.ratio'] = $data['dimension.height'] = $data['dimension.width'] = $data['audio.codec_name'] = $data['audio.codec_long_name'] = $data['audio.profile'] = $data['audio.codec_type'] =  $data['audio.codec_time_base'] = $data['audio.codec_tag_string'] = $data['audio.channels'] = $data['audio.channel_layout'] = $data['audio.duration'] = $data['audio.bit_rate'] = 0;
				if ($file != null) {
					exec("ffprobe -v quiet -print_format json -show_format -show_streams {$file} 2>&1 &", $info);
					$infoData = null;
					foreach ($info as $i => $info_v) { 
						$infoData .= $info_v;
					}
					$info = json_decode($infoData, true);
					if (isset($info['streams'][0]['codec_name'])) {
						$data['codec'] = $info['streams'][0]['codec_name'];
					}
					if (isset($info['streams'][0]['height'])) {
						$data['dimension.height'] = $info['streams'][0]['height'];
					}
					if (isset($info['streams'][0]['width'])) {
						$data['dimension.width'] = $info['streams'][0]['width'];
					}
					if (isset($info['streams'][0]['display_aspect_ratio'])) {
						$data['display.ratio'] = $info['streams'][0]['display_aspect_ratio'];
					}
					if (isset($info['format']['bit_rate'])) {
						$data['bitrate'] = $info['format']['bit_rate'];
					}
					if (isset($info['streams'][0]['r_frame_rate'])) {
						$data['framerate'] = $info['streams'][0]['r_frame_rate'];
					}
					if (isset($info['format']['duration'])) {
						$data['duration'] = $info['format']['duration'];
					}
					if (isset($info['format']['size'])) {
						$data['file.size'] = $info['format']['size'];
					}
					if (isset($info['streams'][1]['codec_name'])) {
						$data['audio.codec_name'] = $info['streams'][1]['codec_name'];
					}
					if (isset($info['streams'][1]['codec_long_name'])) {
						$data['audio.codec_long_name'] = $info['streams'][1]['codec_long_name'];
					}
					if (isset($info['streams'][1]['profile'])) {
						$data['audio.profile'] = $info['streams'][1]['profile'];
					}
					if (isset($info['streams'][1]['codec_type'])) {
						$data['audio.codec_type'] = $info['streams'][1]['codec_type'];
					}
					if (isset($info['streams'][1]['codec_time_base'])) {
						$data['audio.codec_time_base'] = $info['streams'][1]['codec_time_base'];
					}
					if (isset($info['streams'][1]['codec_tag_string'])) {
						$data['audio.codec_tag_string'] = $info['streams'][1]['codec_tag_string'];
					}
					if (isset($info['streams'][1]['channels'])) {
						$data['audio.channels'] = $info['streams'][1]['channels'];
					}
					if (isset($info['streams'][1]['channel_layout'])) {
						$data['audio.channel_layout'] = $info['streams'][1]['channel_layout'];
					}
					if (isset($info['streams'][1]['duration'])) {
						$data['audio.duration'] = $info['streams'][1]['duration'];
					}
					if (isset($info['streams'][1]['bit_rate'])) {
						$data['audio.bit_rate'] = $info['streams'][1]['bit_rate'];
					}
				}
				return $data;
			}
		}
	}
}
?>