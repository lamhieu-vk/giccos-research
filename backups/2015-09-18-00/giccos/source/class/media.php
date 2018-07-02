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
		if (isset($object['guy'], $object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
		if (isset($object['guy'], $object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
		if (isset($object['author'], $object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}else if ($authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port('beta');
		}
		if ($guyType == "guy") {
			return array("return" => true, "guy" => 4);
		}
		if ($authorType == $guyType && $authorId == $guyId) {
			return array("return" => true, "guy" => 1);
		}else {
			if ($authorType == "user") {
				$isBlockedQuery = mysqli_query($db, "SELECT `id` FROM `users_block` WHERE (`user.id` = '{$authorId}' AND `guy.type` = '{guyType}' AND `guy.id` = '{$guyId}') OR (`user.id` = '{$guyId}' AND 'user' = '{$guyType}' AND `guy.type` = 'user' AND `guy.id` = '{$authorId}') LIMIT 1");
				if ($isBlockedQuery) $isBlocked = mysqli_num_rows($isBlockedQuery); else $isBlocked = 0;
				if ($isBlocked > 0) {
					return array("return" => true, "guy" => 5);
				}
				if ($guyType == "user") {
					$isFriendQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` = '{$guyId}' LIMIT 1");
					if ($isFriendQuery) $isFriend = mysqli_num_rows($isFriendQuery); else $isFriend = 0;
					if ($isFriend > 0) {
						return array("return" => true, "guy" => 2);
					}
					$isMutualFriendsQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') LIMIT 1");
					$isMutualFriends = mysqli_num_rows($isMutualFriendsQuery);
					if ($isMutualFriends > 0) {
						return array("return" => true, "guy" => 3);
					}
					return array("return" => true, "guy" => 4);
				}else if ($guyType == "groups") {
					return array("return" => true, "guy" => 4);
				}else if ($guyType == "pages") {
					return array("return" => true, "guy" => 4);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($authorType == "groups") {
				return array("return" => true, "guy" => 4);
			}else if ($authorType == "pages") {
				return array("return" => true, "guy" => 4);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function replay ($format, $object = null) {
		
	}
	function pointtag ($format, $object = null) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id']) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		if ($format == "videos") {
			$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
			if ($action == "add") {
				$videosId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
				$tagPoint = isset($object['point']) && (is_string($object['point']) || is_numeric($object['point'])) ? $_tool->convertDatabaseString($object['point']) : null;
				$tagLength = isset($object['length']) && (is_string($object['length']) || is_numeric($object['length'])) ? $_tool->convertDatabaseString($object['length']) : null;
				$tagSticker = isset($object['sticker']) && is_string($object['sticker']) ? $_tool->convertDatabaseString($object['sticker']) : null;
				$tagContent = isset($object['content']) && is_string($object['content']) ? $_tool->convertDatabaseString($object['content']) : null;
				if ($videosId == null) {
					return array("return" => false, "reason" => "");
				}else if ($tagPoint == null || $tagLength == null) {
					return array("return" => false, "reason" => "");
				}else if ($tagSticker == null && $tagContent == null) {
					return array("return" => false, "reason" => "");
				}
				$addRequest = "INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES (NULL, '".time()."', '".$videosId."', '".$guyType."', '".$guyId."', '".$tagPoint."', '".$tagLength."', '".$tagSticker."', '".$tagContent."');";
				$addQuery = mysqli_query($db, $addRequest);
				if (!$addQuery) {
					return array("return" => false, "reason" => "");
				}else {
					$tagId = mysqli_insert_id($db);
					$dataArr = array("id" => $tagId);
					return array("return" => true, "data" => $dataArr);
				}
			}else if (in_array($action, ["get"])) {
				$tagCondition = isset($object['condition']) && is_array($object['condition']) && count($object['condition']) > 0 ? $object['condition'] : null;
				$tagExcept = isset($object['except']) && is_array($object['except']) && count($object['except']) > 0 ? $object['except'] : null;
				$limit = isset($object['limit']) && (is_string($object['limit']) || is_numeric($object['limit'])) ? $object['limit'] : null;
				$getTagsRequestCondition = null;
				foreach ($tagCondition as $tLabel => $tValue) {
					if (!isset($getTagsRequestCondition) && $getTagsRequestCondition == null) {
						$getTagsRequestCondition = "`".$tLabel."` = '".$_tool->convertDatabaseString($tValue)."'";
					}else {
						$getTagsRequestCondition .= " AND `".$tLabel."` = '".$_tool->convertDatabaseString($tValue)."'";
					}
				}
				if ($tagExcept == null) {
					$getTagsRequestExcept = null;
				}else {
					foreach ($tagExcept as $exceptThis) {
						$tagExcept[$exceptThis] = intval($_tool->convertDatabaseString($exceptThis));
					}
					$getTagsRequestExcept = "AND `id` NOT IN ('" . implode($tagExcept, "', '") . "')";
				}
				$getTagsRequest = "SELECT * FROM `videos_pointtag` WHERE ".$getTagsRequestCondition." ".$getTagsRequestExcept." ".$limit.";";
				$getTagsQuery = mysqli_query($db, $getTagsRequest);
				if (!$getTagsQuery) {
					return array("return" => false, "reason" => "");
				}
				$dataArr = array();
				while ($tagThis = mysqli_fetch_assoc($getTagsQuery)) {
					if (isset($tagThis['guy.type'])) {
						$tagThis['guy']['type'] = $tagThis['guy.type'];
						unset($tagThis['guy.type']);
					}
					if (isset($tagThis['guy.id'])) {
						$tagThis['guy']['id'] = $tagThis['guy.id'];
						unset($tagThis['guy.id']);
					}
					$dataArr[] = $tagThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function views ($format, $object = null) {
		//.
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
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['db']) && is_string($object['db'])) $dbName = $object['db']; else $dbName = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if ($format == "photos") {
			$checkQuery = "SELECT `id` FROM `{$dbName}` WHERE `{$label}` = '{$value}'";
			$numCheck = mysqli_query($db, $checkQuery);
			if (!$numCheck) {
				return array("return" => false, "reason" => "");
			}
			$num = mysqli_num_rows($numCheck);
			if ($num == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$idFile = array();
				while ($fetchFile = mysqli_fetch_assoc($numCheck)) {
					$idFile[] = $fetchFile['id'];
				}
				return array("return" => true, "exists" => true);
			}
		}else if ($format == "music") {
			$checkQuery = "SELECT `id` FROM `{$dbName}` WHERE `{$label}` = '{$value}'";
			$numCheck = mysqli_query($db, $checkQuery);
			$num = mysqli_num_rows($numCheck);
			if ($num == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$idFile = array();
				while ($fetchFile = mysqli_fetch_assoc($numCheck)) {
					$idFile[] = $fetchFile['id'];
				}
				return array("return" => true, "exists" => true);
			}
		}else if ($format == "videos") {
			$checkQuery = "SELECT `id` FROM `{$dbName}` WHERE `{$label}` = '{$value}'";
			$numCheck = mysqli_query($db, $checkQuery);
			$num = mysqli_num_rows($numCheck);
			if ($num == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$idFile = array();
				while ($fetchFile = mysqli_fetch_assoc($numCheck)) {
					$idFile[] = $fetchFile['id'];
				}
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function data ($format, $object = null) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_faces = $this->class['_faces'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
		if (isset($object['guy'], $object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		if ($format == "photos" && is_array($object) && count($object) > 0) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if (in_array($action, ["get"])) {
				$rows = isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0 ? $rows = $object['rows'] : null;
				$label = isset($object['label']) && is_string($object['label']) ? $label = $_tool->convertDatabaseString($object['label']) : null;
				$value = isset($object['value']) && is_string($object['value']) ? $value = $_tool->convertDatabaseString($object['value']) : null;
				$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
				if ($rows == null || $label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$rowsText = null;
				foreach ($rows as $rowsLabel => $rowsValue) {
					if ($rowsValue == "*") {
						$rowsText = "*";
						break;
					}else {
						if (!isset($rowsText) || $rowsText == null) {
							$rowsText = "`".$rowsValue."`";
						}else {
							$rowsText .= ", `".$rowsValue."`";
						}
					}
				}
				$getPhotosInfoRequest = "SELECT ".$rowsText." FROM `photos_info` WHERE `".$label."` = '".$value."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
				$getPhotosInfoQuery = mysqli_query($db, $getPhotosInfoRequest);
				if (!$getPhotosInfoQuery) {
					return array("return" => false, "reason" => "");
				}
				$dataArr = array();
				while ($photosFetch = mysqli_fetch_assoc($getPhotosInfoQuery)) {
					$mediaDataThis = $photosFetch;
					if (isset($mediaDataThis['path.original']) && $mediaDataThis['path.original'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $mediaDataThis['path.original'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.original'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.large']) && $mediaDataThis['path.large'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $mediaDataThis['path.large'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.large'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.medium']) && $mediaDataThis['path.medium'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $mediaDataThis['path.medium'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.medium'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.small']) && $mediaDataThis['path.small'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $mediaDataThis['path.small'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.small'] = $getMediaFile['data'][0]['source'];
						}
					}
					$dataArr[] = $mediaDataThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if ($action == "delete" || $action == "remove") {
				if (isset($object['label']) && (is_numeric($object['label']) || is_string($object['label']))) $photosLabel = $object['label']; else $photosLabel = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $photosValue = $object['value']; else $photosValue = null;
				if (isset($object['guy']['type']) && (is_numeric($object['guy']['type']) || is_string($object['guy']['type']))) $guyType = $object['guy']['type']; else $guyType = null;
				if (isset($object['guy']['id']) && (is_numeric($object['guy']['id']) || is_string($object['guy']['id']))) $guyId = $object['guy']['id']; else $guyId = null;
				if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
				if ($photosLabel == null || $photosValue == null) {
					return array("return" => false, "reason" => "");
				}
				if ($guyType == null || $guyId == null) {
					return array("return" => false, "reason" => "");
				}
				$deteleRequest = "SELECT * FROM `photos_info` WHERE `".$photosLabel."` = '".$photosValue."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' {$limit};";
				$deleteQuery = mysqli_query($db, $deteleRequest);
				if (!$deleteQuery) {
					return array("return" => false, "reason" => "");
				}
				if ($deleteQuery) $deleteCount = mysqli_num_rows($deleteQuery); else $deleteCount = 0;
				if ($deleteCount == 0) {
					return array("return" => false, "reason" => "");
				}else {
					$statsArr = array();
					while ($fetch = mysqli_fetch_assoc($deleteQuery)) {
						if ($fetch['path.original'] != '0') {
							$_storage->delete(array("format" => "image", "label" => "display", "value" => $fetch['path.original']));
						}
						if ($fetch['path.large'] != '0') {
							$_storage->delete(array("format" => "image", "label" => "display", "value" => $fetch['path.large']));
						}
						if ($fetch['path.medium'] != '0') {
							$_storage->delete(array("format" => "image", "label" => "display", "value" => $fetch['path.medium']));
						}
						if ($fetch['path.small'] != '0') {
							$_storage->delete(array("format" => "image", "label" => "display", "value" => $fetch['path.small']));
						}
						$deleteViews = mysqli_query($db, "DELETE FROM `photos_views` WHERE `photos.id` = '".$fetch['id']."';");
						$deleteInfo = mysqli_query($db, "DELETE FROM `photos_info` WHERE `id` = '".$fetch['id']."';");
						if (!$deleteViews || !$deleteInfo) {
							$statsArr[] = array("id" => $fetch['id'], "error" => false);
						}else {
							$statsArr[] = array("id" => $fetch['id'], "error" => true);
						}
					}
					return array("return" => true, "stats" => $statsArr);
				}
			}
		}else if ($format == "music" && is_array($object)) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if (in_array($action, ["get"])) {
				$rows = isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0 ? $rows = $object['rows'] : null;
				$label = isset($object['label']) && is_string($object['label']) ? $label = $_tool->convertDatabaseString($object['label']) : null;
				$value = isset($object['value']) && is_string($object['value']) ? $value = $_tool->convertDatabaseString($object['value']) : null;
				$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
				if ($rows == null || $label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$rowsText = null;
				foreach ($rows as $rowsLabel => $rowsValue) {
					if ($rowsValue == "*") {
						$rowsText = "*";
						break;
					}else {
						if (!isset($rowsText) || $rowsText == null) {
							$rowsText = "`".$rowsValue."`";
						}else {
							$rowsText .= ", `".$rowsValue."`";
						}
					}
				}
				$getPhotosInfoRequest = "SELECT ".$rowsText." FROM `music_info` WHERE `".$label."` = '".$value."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
				$getPhotosInfoQuery = mysqli_query($db, $getPhotosInfoRequest);
				if (!$getPhotosInfoQuery) {
					return array("return" => false, "reason" => "");
				}
				$dataArr = array();
				while ($photosFetch = mysqli_fetch_assoc($getPhotosInfoQuery)) {
					$mediaDataThis = $photosFetch;
					if (isset($mediaDataThis['path.320kbps']) && $mediaDataThis['path.320kbps'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $mediaDataThis['path.320kbps'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.320kbps'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.128kbps']) && $mediaDataThis['path.128kbps'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $mediaDataThis['path.128kbps'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.128kbps'] = $getMediaFile['data'][0]['source'];
						}
					}
					$dataArr[] = $mediaDataThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if ($action == "delete" || $action == "remove") {
				if (isset($object['label']) && (is_numeric($object['label']) || is_string($object['label']))) $musicLabel = $object['label']; else $musicLabel = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $musicValue = $object['value']; else $musicValue = null;
				if (isset($object['guy']['type']) && (is_numeric($object['guy']['type']) || is_string($object['guy']['type']))) $guyType = $object['guy']['type']; else $guyType = null;
				if (isset($object['guy']['id']) && (is_numeric($object['guy']['id']) || is_string($object['guy']['id']))) $guyId = $object['guy']['id']; else $guyId = null;
				if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
				if ($musicLabel == null || $musicValue == null) {
					return array("return" => false, "reason" => "");
				}
				if ($guyType == null || $guyId == null) {
					return array("return" => false, "reason" => "");
				}
				$deteleRequest = "SELECT * FROM `music_info` WHERE `".$musicLabel."` = '".$musicValue."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' {$limit};";
				$deleteQuery = mysqli_query($db, $deteleRequest);
				if (!$deleteQuery) {
					return array("return" => false, "reason" => "");
				}
				if ($deleteQuery) $deleteCount = mysqli_num_rows($deleteQuery); else $deleteCount = 0;
				if ($deleteCount == 0) {
					return array("return" => false, "reason" => "");
				}else {
					$statsArr = array();
					while ($fetch = mysqli_fetch_assoc($deleteQuery)) {
						if ($fetch['path.original'] != '0') {
							$_storage->delete(array("format" => "audio", "label" => "display", "value" => $fetch['path.original']));
						}
						if ($fetch['path.320kbps'] != '0') {
							$_storage->delete(array("format" => "audio", "label" => "display", "value" => $fetch['path.320kbps']));
						}
						if ($fetch['path.128kbps'] != '0') {
							$_storage->delete(array("format" => "audio", "label" => "display", "value" => $fetch['path.128kbps']));
						}
						$deleteViews = mysqli_query($db, "DELETE FROM `music_views` WHERE `music.id` = '".$fetch['id']."';");
						$deleteInfo = mysqli_query($db, "DELETE FROM `music_info` WHERE `id` = '".$fetch['id']."';");
						if (!$deleteViews || !$deleteInfo) {
							$statsArr[] = array("id" => $fetch['id'], "error" => false);
						}else {
							$statsArr[] = array("id" => $fetch['id'], "error" => true);
						}
					}
					return array("return" => true, "stats" => $statsArr);
				}
			}
		}else if ($format == "videos" && is_array($object)) {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if (in_array($action, ["get"])) {
				$rows = isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0 ? $rows = $object['rows'] : null;
				$label = isset($object['label']) && is_string($object['label']) ? $label = $_tool->convertDatabaseString($object['label']) : null;
				$value = isset($object['value']) && is_string($object['value']) ? $value = $_tool->convertDatabaseString($object['value']) : null;
				$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
				if ($rows == null || $label == null || $value == null) {
					return array("return" => false, "reason" => "1");
				}
				$rowsText = null;
				foreach ($rows as $rowsLabel => $rowsValue) {
					if ($rowsValue == "*") {
						$rowsText = "*";
						break;
					}else {
						if (!isset($rowsText) || $rowsText == null) {
							$rowsText = "`".$rowsValue."`";
						}else {
							$rowsText .= ", `".$rowsValue."`";
						}
					}
				}
				$getPhotosInfoRequest = "SELECT ".$rowsText." FROM `videos_info` WHERE `".$label."` = '".$value."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
				$getPhotosInfoQuery = mysqli_query($db, $getPhotosInfoRequest);
				if (!$getPhotosInfoQuery) {
					return array("return" => false, "reason" => "$getPhotosInfoRequest");
				}
				$dataArr = array();
				while ($photosFetch = mysqli_fetch_assoc($getPhotosInfoQuery)) {
					$mediaDataThis = $photosFetch;
					if (isset($mediaDataThis['author.type']) && $mediaDataThis['author.type'] != "0") {
						$mediaDataThis['author']['type'] = $mediaDataThis['author.type'];
						// unset($mediaDataThis['author.type']);
					}
					if (isset($mediaDataThis['author.id']) && $mediaDataThis['author.id'] != "0") {
						$mediaDataThis['author']['id'] = $mediaDataThis['author.id'];
						// unset($mediaDataThis['author.id']);
					}
					if (isset($mediaDataThis['private.view']) && $mediaDataThis['private.view'] != "0") {
						$mediaDataThis['private']['view'] = $mediaDataThis['private.view'];
						// unset($mediaDataThis['private.view']);
					}
					if (isset($mediaDataThis['private.comment']) && $mediaDataThis['private.comment'] != "0") {
						$mediaDataThis['private']['comment'] = $mediaDataThis['private.comment'];
						// unset($mediaDataThis['private.comment']);
					}
					if (isset($mediaDataThis['private.share']) && $mediaDataThis['private.share'] != "0") {
						$mediaDataThis['private']['share'] = $mediaDataThis['private.share'];
						// unset($mediaDataThis['private.share']);
					}
					if (isset($mediaDataThis['path.fhd']) && $mediaDataThis['path.fhd'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $mediaDataThis['path.fhd'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.fhd'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.hd']) && $mediaDataThis['path.hd'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $mediaDataThis['path.hd'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.hd'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.vga']) && $mediaDataThis['path.vga'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $mediaDataThis['path.vga'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.vga'] = $getMediaFile['data'][0]['source'];
						}
					}
					if (isset($mediaDataThis['path.qvga']) && $mediaDataThis['path.qvga'] != "0") {
						$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $mediaDataThis['path.qvga'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
							$mediaDataThis['source.qvga'] = $getMediaFile['data'][0]['source'];
						}
					}
					$dataArr[] = $mediaDataThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if ($action == "delete" || $action == "remove") {
				if (isset($object['label']) && (is_numeric($object['label']) || is_string($object['label']))) $videoLabel = $object['label']; else $videoLabel = null;
				if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $videoValue = $object['value']; else $videoValue = null;
				if (isset($object['guy']['type']) && (is_numeric($object['guy']['type']) || is_string($object['guy']['type']))) $guyType = $object['guy']['type']; else $guyType = null;
				if (isset($object['guy']['id']) && (is_numeric($object['guy']['id']) || is_string($object['guy']['id']))) $guyId = $object['guy']['id']; else $guyId = null;
				if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
				if ($videoLabel == null || $videoValue == null) {
					return array("return" => false, "reason" => "");
				}
				if ($guyType == null || $guyId == null) {
					return array("return" => false, "reason" => "");
				}
				$deteleRequest = "SELECT * FROM `videos_info` WHERE `".$videoLabel."` = '".$videoValue."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' {$limit};";
				$deleteQuery = mysqli_query($db, $deteleRequest);
				if (!$deleteQuery) {
					return array("return" => false, "reason" => "");
				}
				if ($deleteQuery) $deleteCount = mysqli_num_rows($deleteQuery); else $deleteCount = 0;
				if ($deleteCount == 0) {
					return array("return" => false, "reason" => "");
				}else {
					$statsArr = array();
					while ($fetch = mysqli_fetch_assoc($deleteQuery)) {
						if ($fetch['path.hd'] != "0") {
							$_storage->delete(array("format" => "video", "label" => "display", "value" => $fetch['path.hd']));
						}
						if ($fetch['path.vga'] != "0") {
							$_storage->delete(array("format" => "video", "label" => "display", "value" => $fetch['path.vga']));
						}
						if ($fetch['path.qvga'] != "0") {
							$_storage->delete(array("format" => "video", "label" => "display", "value" => $fetch['path.qvga']));
						}
						if ($fetch['path.thumbnail'] != "0") {
							$_storage->delete(array("format" => "image", "label" => "display", "value" => $fetch['path.thumbnail']));
						}
						$deleteViews = mysqli_query($db, "DELETE FROM `videos_views` WHERE `videos.id` = '".$fetch['id']."';");
						$deleteInfo = mysqli_query($db, "DELETE FROM `videos_info` WHERE `id` = '".$fetch['id']."';");
						if (!$deleteViews || !$deleteInfo) {
							$statsArr[] = array("id" => $fetch['id'], "error" => false);
						}else {
							$statsArr[] = array("id" => $fetch['id'], "error" => true);
						}
					}
					return array("return" => true, "stats" => $statsArr);
				}
			}
		}
	}
	function cache ($format, $object = null) {
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id']) ? $object['guy']['id'] : null;
		$userId = isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id']) ? $object['user']['id'] : null;
		if ($guyType == null || $guyId == null || $userId == null) {
			return array("return" => false, "reason" => "");
		}
		//.
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_faces = $this->class['_faces'];
		$db = $this->class['_db']->port('beta');
		//.
		if ($format == "photos") {
			$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
			if ($action == "add") {
				$file = isset($object['file']) && is_array($object['file']) && count($object['file']) ? $object['file'] : null;
				if ($file == null) {
					return array("return" => false, "reason" => "1");
				}
				if (!isset($file['tmp_name']) || !isset($file['name']) || !isset($file['type']) || !isset($file['size'])) {
					return array("return" => false, "reason" => "2");
				}
				$file['tmp'] = $file['tmp_name'];
				$client = $_client->client(true);
				$token = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($file['tmp']));
				$secret = hash('crc32', $token);
				$nameraw = $file['name'];
				$name = hash('crc32', md5($secret.'::'.rand()));
				$copy = 0;
				$mime = $file['type'];
				$size = $file['size'];
				$file['size'] = array();
				$file['size']['file'] = $size;
				if (isset($client, $token, $secret, $nameraw, $name, $mime, $size)) {
					if (!isset($file['error']) || $file['error'] != null) {
						return array("return" => false, "reason" => "3");
					}else if (!isset($file['tmp']) || $file['tmp'] == null) {
						return array("return" => false, "reason" => "2xs");
					}else if ($size > $_parameter->get('photos_allow_size')) {
						//. return array("return" => false, "reason" => "");
					}
					$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp'], "mime" => $file['type'], "name" => $file['name'], "strip" => false));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$path = $fileUpload['storage']['display'];
					}else {
						return array("return" => false, "reason" => "");
					}
					//.
					$addPhotosCacheRequest = "
					INSERT INTO `photos_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`, `user.id`, `author.type`, `author.id`) 
					VALUES (null, '".time()."', '".(time() + $_parameter->get('media_cache_time_close'))."', '".$client."', '".$token."', '".$secret."', '".$name."', '".$nameraw."', '".$copy."', '".$mime."', '".$size."', '".$path."', '".$userId."', '".$guyType."', '".$guyId."');
					";
					$addPhotosCacheQuery = mysqli_query($db, $addPhotosCacheRequest);
					if (!$addPhotosCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$tmp = $fileUpload['storage']['source'];
						if ($file['size']['file'] > $_parameter->get('photos_allow_size')) {
							list($file['size']['width'], $file['size']['height']) = getimagesize($tmp);
							$size_limit = $_parameter->get('photos_allow_size');
							$size_exceeded = $size_limit / $file['size']['file'];
							$size_reset_w = $file['size']['width'] * $size_exceeded / 100 * $_parameter->get('photos_compression_size_percent');
							$size_reset_h = $file['size']['height'] * $size_exceeded / 100 * $_parameter->get('photos_compression_size_percent');
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
			}else if ($action == "copy") {
				$secret = isset($object['secret']) && is_string($object['secret']) ? $secret = $_tool->convertDatabaseString($object['secret']) : null;
				$name = isset($object['name']) && is_string($object['name']) ? $name = $_tool->convertDatabaseString($object['name']) : null;
				$limit = isset($object['limit']) && is_bool($object['limit']) ? $limit = $object['limit'] : true;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "");
				}
				$getOriginalRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$secret."' AND `name` = '".$name."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
				$getOriginalQuery = mysqli_query($db, $getOriginalRequest);
				$getCopyRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$secret."' AND `copy` = '".$name."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
				$getCopyQuery = mysqli_query($db, $getCopyRequest);
				if (!$getOriginalQuery || !$getCopyQuery) {
					return array("return" => false, "reason" => "");
				}
				if ($limit == false || (mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) == 0)) {
					$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$copyFetch['secret'] = $originalFetch['secret'];
					$copyFetch['token'] = $originalFetch['token'];
					$copyFetch['name'] = hash('crc32', $originalFetch['name'].'::'.time().'::'.rand());
					$copyFetch['nameraw'] = $originalFetch['nameraw'];
					$copyFetch['copy'] = $originalFetch['name'];
					$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $originalFetch['tmp'], "mime" => $originalFetch['mime'], "name" => $copyFetch['name']));
					if (isset($fileUpload['return'], $fileUpload['storage'], $fileUpload['storage']['source']) && $fileUpload['return'] == true) {
						$copyFetch['path'] = $fileUpload['storage']['display'];
						$copyFetch['tmp'] = $fileUpload['storage']['source'];
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $copyFetch['path']));
					}else {
						return array("return" => false, "reason" => "");
					}
					$addPhotosCacheRequest = "
					INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) 
					VALUES (null, '".$originalFetch['user.id']."', '".$originalFetch['author.type']."', '".$originalFetch['author.id']."', '".$originalFetch['time']."', '".(time() + $_parameter->get('media_cache_time_close'))."', '".$originalFetch['client']."', '".$originalFetch['token']."', '".$originalFetch['secret']."', '".$copyFetch['name']."', '".$copyFetch['nameraw']."', '".$copyFetch['copy']."', '".$originalFetch['mime']."', '".$originalFetch['size']."', '".$copyFetch['path']."');
					";
					$addPhotosCacheQuery = mysqli_query($db, $addPhotosCacheRequest);
					if (!$addPhotosCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = array(
							"original" => array(
								"tmp" => $originalFetch['tmp'], 
								"secret" => $originalFetch['secret'], 
								"name" => $originalFetch['name'],
								"nameraw" => $originalFetch['nameraw']
							),
							"copy" => array(
								"tmp" => $copyFetch['tmp'], 
								"secret" => $copyFetch['secret'], 
								"name" => $copyFetch['name'],
								"nameraw" => $copyFetch['nameraw']
							)
						);
						return array(
							"return" => true, 
							"data" => $dataArr
						);
					}
				}else if ($limit == true && mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) > 0) {
					$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0], $getMediaFile['data'][0]['source'], $getMediaFile['data'][0]['display']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
						$originalFetch['path'] = $getMediaFile['data'][0]['display'];
					}else {
						return array("return" => false, "reason" => "4124");
					}
					$copyFetch = mysqli_fetch_assoc($getCopyQuery);
					$replaceFileOptions = array(
						"format" => "image", 
						"labelSource" => "display",
						"valueSource" => $originalFetch['path'],
						"labelDestination" => "display",
						"valueDestination" => $copyFetch['path']
					);
					$_SESSION['xxx'] = $replaceFile = $_storage->replace($replaceFileOptions);
					if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
						$copyFetch['tmp'] = $replaceFile['destination']['source'];
						$copyFetch['path'] = $replaceFile['destination']['display'];
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $copyFetch['path']));
					}
					$uploadPhotosCacheRequest = "UPDATE `photos_cache` SET `time` = '".$originalFetch['time']."', `close` = '".(time() + $_parameter->get('media_cache_time_close'))."', `client` = '".$originalFetch['client']."', `name` = '".$copyFetch['name']."', `nameraw` = '".$originalFetch['nameraw']."', `copy` = '".$copyFetch['copy']."', `mime` = '".$originalFetch['mime']."', `size` = '".$originalFetch['size']."', `path` = '".$copyFetch['path']."' WHERE `id` = '".$copyFetch['id']."';";
					$uploadPhotosCacheQuery = mysqli_query($db, $uploadPhotosCacheRequest);
					if (!$uploadPhotosCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = array(
							"original" => array(
								"tmp" => $originalFetch['tmp'], 
								"secret" => $originalFetch['secret'], 
								"name" => $originalFetch['name'],
								"nameraw" => $originalFetch['nameraw']
							),
							"copy" => array(
								"tmp" => $copyFetch['tmp'],
								"secret" => $copyFetch['secret'], 
								"name" => $copyFetch['name'],
								"nameraw" => $copyFetch['nameraw']
							)
						);
						return array(
							"return" => true, 
							"data" => $dataArr
						);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (in_array($action, ["get"])) {
				$label = isset($object['label']) && is_string($object['label']) ? $label = $_tool->convertDatabaseString($object['label']) : null;
				$value = isset($object['value']) && is_string($object['value']) ? $value = $_tool->convertDatabaseString($object['value']) : null;
				$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$getPhotosCacheRequest = "SELECT * FROM `photos_cache` WHERE `".$label."` = '".$value."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
				$getPhotosCacheQuery = mysqli_query($db, $getPhotosCacheRequest);
				if (!$getPhotosCacheQuery) {
					return array("return" => false, "reason" => "");
				}
				$dataArr = array();
				while ($photosFetch = mysqli_fetch_assoc($getPhotosCacheQuery)) {
					$mediaDataThis = $photosFetch;
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $photosFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
						$mediaDataThis['tmp'] = $getMediaFile['data'][0]['source'];
					}else {
						continue;
					}
					$dataArr[] = $mediaDataThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if (in_array($action, ["replace"])) {
				$sourceName = isset($object['source'], $object['source']['name']) && is_string($object['source']['name']) ? $object['source']['name'] : null;
				$sourceSecret = isset($object['source'], $object['source']['secret']) && is_string($object['source']['secret']) ? $object['source']['secret'] : null;
				$destinationName = isset($object['destination'], $object['destination']['name']) && is_string($object['destination']['name']) ? $object['destination']['name'] : null;
				$destinationSecret = isset($object['destination'], $object['destination']['secret']) && is_string($object['destination']['secret']) ? $object['destination']['secret'] : null;
				if ($sourceName == null || $sourceSecret == null) {
					return array("return" => false, "reason" => "");
				}else if ($destinationName == null || $destinationSecret == null) {
					return array("return" => false, "reason" => "");
				}
				$getPhotosSourceRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$sourceSecret."' AND `name` = '".$sourceName."' LIMIT 1;";
				$getPhotosSourceQuery = mysqli_query($db, $getPhotosSourceRequest);
				$getPhotosDestinationRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$destinationSecret."' AND `name` = '".$destinationName."' LIMIT 1;";
				$getPhotosDestinationQuery = mysqli_query($db, $getPhotosDestinationRequest);
				if (!$getPhotosSourceQuery || !$getPhotosDestinationQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getPhotosSourceQuery) > 0 && mysqli_num_rows($getPhotosDestinationQuery) > 0) {
					$photosSourceFetch = mysqli_fetch_assoc($getPhotosSourceQuery);
					if (isset($photosSourceFetch['path']) && is_string($photosSourceFetch['path'])) {
						$valueSource = $photosSourceFetch['path'];
					}
					$photosDestinationFetch = mysqli_fetch_assoc($getPhotosDestinationQuery);
					if (isset($photosDestinationFetch['path']) && is_string($photosDestinationFetch['path'])) {
						$valueDestination = $photosDestinationFetch['path'];
					}
					if (!isset($valueSource) || !isset($valueDestination)) {
						return array("return" => false, "reason" => "");
					}
					$replaceFileOptions = array(
						"format" => "image", 
						"labelSource" => "display",
						"valueSource" => $valueSource,
						"labelDestination" => "display",
						"valueDestination" => $valueDestination
					);
					$replaceFile = $_storage->replace($replaceFileOptions);
					if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
						$photosSourceFetch['tmp'] = $replaceFile['source']['source'];
						$photosDestinationFetch['tmp'] = $replaceFile['destination']['source'];
						$dataArr = array(
							"original" => array(
								"tmp" => $photosSourceFetch['tmp'],
								"secret" => $photosSourceFetch['secret'],
								"name" => $photosSourceFetch['name'],
								"nameraw" => $photosSourceFetch['nameraw']
							),
							"copy" => array(
								"tmp" => $photosDestinationFetch['tmp'],
								"secret" => $photosDestinationFetch['secret'],
								"name" => $photosDestinationFetch['name'],
								"nameraw" => $photosDestinationFetch['nameraw']
							),
						);
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $valueDestination));
						return array("return" => true, "data" => $dataArr);
					}else if (isset($replaceFile['return'], $replaceFile['reason']) && $replaceFile['return'] == true) {
						return array("return" => false, "reason" => $replaceFile['reason']);
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (in_array($action, ["delete", "remove"])) {
				$secret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
				$name = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
				$draft = isset($object['draft']) && is_bool($object['draft']) ? $object['draft'] : true;
				$verify = isset($object['verify']) && is_bool($object['verify']) ? $object['verify'] : true;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "123");
				}
				$getPhotosCacheRequestVerify = $getPhotosCacheRequestDraft = null;
				if (!$verify) {
					$getPhotosCacheRequestVerify = " AND `close` != '0'";
				}
				if (!$draft) {
					$getPhotosCacheRequestDraft = " OR `copy` = '".$name."'";
				}
				$getPhotosCacheRequest = "SELECT * FROM `photos_cache` WHERE `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' AND (`secret` = '".$secret."' AND (`name` = '".$name."'".$getPhotosCacheRequestDraft.")) ".$getPhotosCacheRequestVerify." ";
				$getPhotosCacheQuery = mysqli_query($db, $getPhotosCacheRequest);
				if (!$getPhotosCacheQuery) {
					return array("return" => false, "reason" => $getPhotosCacheRequest);
				}
				$removedArr = $nameArr = $secretArr = array();
				while ($photosCacheFetch = mysqli_fetch_assoc($getPhotosCacheQuery)) {
					$next = 0;
					if (count($removedArr) > 0) {
						foreach ($removedArr as $key => $removedThis) {
							if (isset($removedThis['secret'], $photosCacheFetch['secret'])) {
								//.
							}else {
								unset($removedArr[$key]);
								continue;
							}
							if ($removedThis['secret'] == $photosCacheFetch['secret'] && $removedThis['name'] != $photosCacheFetch['name']) {
								$n++;
								break;
							}
						}
					}
					if ($next == 0) {
						$removedArr[] = array("secret" => $photosCacheFetch['secret'], "name" => $photosCacheFetch['name']);
					}else {
						continue;
					}
					$nameArr[] = $photosCacheFetch['name'];
					$secretArr[] = $photosCacheFetch['secret'];
					$delMediaFileOpts = array(
						"format" => "image",
						"label" => "display",
						"value" => $photosCacheFetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '".$photosCacheFetch['id']."';");
						$photosLikeThisQuery = mysqli_query($db, "SELECT `id` FROM `photos_cache` WHERE `secret` = '".$photosCacheFetch['secret']."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';");
						if (!$photosLikeThisQuery) {
							continue;
						}
						if ($photosLikeThisQuery) $photosLikeThisNum = mysqli_num_rows($photosLikeThisQuery); else $photosLikeThisNum = 0;
						$photosFacesQuery = mysqli_query($db, "SELECT `id`, `photos.path`, `faces` FROM `photos_faces` WHERE `photos.path` = '".$photosCacheFetch['secret']."' AND `photos.local` = 'cache' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';");
						if (!$photosFacesQuery) {
							//.
						}
						if ($photosFacesQuery && $photosLikeThisNum == 0) {
							while ($photosFacesFetch = mysqli_fetch_assoc($photosFacesQuery)) {
								mysqli_query($db, "DELETE FROM `photos_faces` WHERE `id` = '".$photosFacesFetch['id']."';");
							}
						}
					}else {
						continue;
					}
				}
				if (isset($nameArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['editor']) && is_array($nameArr) && count($nameArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['editor']) && count($_SESSION["cache"]['photos']['handling']['editor']) > 0) {
					$cacheEditorHandling = $_SESSION["cache"]['photos']['handling']['editor'];
					foreach ($cacheEditorHandling as $key => $value) {
						if (in_array($key, $nameArr)) {
							unset($_SESSION["cache"]['photos']['handling']['editor'][$key]);
						}
					}
				}
				if (isset($secretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['faces'], $_SESSION["cache"]['photos']['faces']['info']) && is_array($secretArr) && count($secretArr) > 0 && is_array($_SESSION["cache"]['photos']['faces']['info']) && count($_SESSION["cache"]['photos']['faces']['info']) > 0) {
					$cacheFacesArr = $_SESSION["cache"]['photos']['faces']['info'];
					foreach ($cacheFacesArr as $key => $cacheFaceThis) {
						if (isset($cacheFaceThis['photos'], $cacheFaceThis['photos.local'], $cacheFaceThis['user.id'], $cacheFaceThis['author.type'], $cacheFaceThis['author.id']) && in_array($cacheFaceThis['photos'], $f_secret) && $cacheFaceThis['photos.local'] == "cache" && $cacheFaceThis['user.id'] == $userId && $cacheFaceThis['author.type'] == $guyType && $cacheFaceThis['author.id'] == $guyId) {
							unset($_SESSION["cache"]['photos']['faces']['info'][$key]);
						}else {
							continue;
						}
					}
				}
				if (isset($secretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['faces']) && is_array($secretArr) && count($secretArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['faces']) && count($_SESSION["cache"]['photos']['handling']['faces']) > 0) {
					$cacheFacesHandling = $_SESSION["cache"]['photos']['handling']['faces'];
					foreach ($cacheFacesHandling as $key => $cacheFacesHandlingThis) {
						if (isset($cacheFacesHandlingThis['photos'], $cacheFacesHandlingThis['photos.local'], $cacheFacesHandlingThis['user.id'], $cacheFacesHandlingThis['author.type'], $cacheFacesHandlingThis['author.id']) && in_array($cacheFacesHandlingThis['photos'], $f_secret) && $cacheFacesHandlingThis['photos.local'] == "cache" && $cacheFacesHandlingThis['user.id'] == $userId && $cacheFacesHandlingThis['author.type'] == $guyType && $cacheFacesHandlingThis['author.id'] == $guyId) {
							unset($_SESSION["cache"]['photos']['handling']['faces'][$key]);
						}else {
							continue;
						}
					}
				}
				return array("return" => true);
			}else if ($action == "clean") {
				$expiresArr = $removedArr = $nameArr = $secretArr = array();
				$getPhotosExpiresRequest = "SELECT * FROM `photos_cache` WHERE (`client` = '".$_client->client(true)."' OR `user.id` = '".$userId."' OR (`author.id` = '".$guyId."' AND `author.type` = '".$guyType."')) AND `close` != '0' AND `close` <= '".time()."';";
				$getPhotosExpiresQuery = mysqli_query($db, $getPhotosExpiresRequest);
				if (!$getPhotosExpiresQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getPhotosExpiresQuery) == 0) {
					return array("return" => true, "e" => "xsad");
				}else {
					while ($photosCacheFetch = mysqli_fetch_assoc($getPhotosExpiresQuery)) {
						$expiresArr[] = $photosCacheFetch;
					}
				}
				$getPhotosOtherRequest = "SELECT * FROM `photos_cache` WHERE `close` != '0' AND `close` <= '".time()."' LIMIT ".rand($_parameter->get('cacheClean_user_limit_min'), $_parameter->get('cacheClean_user_limit_max')).";";
				$getPhotosOtherQuery = mysqli_query($db, $getPhotosOtherRequest);
				if (!$getPhotosOtherQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getPhotosOtherQuery) == 0) {
					//.
				}else {
					while ($photosCacheFetch = mysqli_fetch_assoc($getPhotosOtherQuery)) {
						$expiresArr[] = $photosCacheFetch;
					}
				}
				if (count($expiresArr) == 0) {
					return array("return" => true, "s" => "asd");
				}
				foreach ($expiresArr as $photosCacheFetch) {
					$next = 0;
					if (count($removedArr) > 0) {
						foreach ($removedArr as $key => $removedThis) {
							if (isset($removedThis['secret'], $photosCacheFetch['secret'])) {
								//.
							}else {
								unset($removedArr[$key]);
								continue;
							}
							if ($removedThis['secret'] == $photosCacheFetch['secret'] && $removedThis['name'] != $photosCacheFetch['name']) {
								$n++;
								break;
							}
						}
					}
					if ($next == 0) {
						$removedArr[] = array("secret" => $photosCacheFetch['secret'], "name" => $photosCacheFetch['name']);
					}else {
						continue;
					}
					$nameArr[] = $photosCacheFetch['name'];
					$secretArr[] = $photosCacheFetch['secret'];
					$delMediaFileOpts = array(
						"format" => "image",
						"label" => "display",
						"value" => $photosCacheFetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '".$photosCacheFetch['id']."';");
						$photosLikeThisQuery = mysqli_query($db, "SELECT `id` FROM `photos_cache` WHERE `secret` = '".$photosCacheFetch['secret']."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';");
						if (!$photosLikeThisQuery) {
							continue;
						}
						if ($photosLikeThisQuery) $photosLikeThisNum = mysqli_num_rows($photosLikeThisQuery); else $photosLikeThisNum = 0;
						$photosFacesQuery = mysqli_query($db, "SELECT `id`, `photos`, `faces` FROM `photos_faces` WHERE `photos` = '".$photosFacesFetch['secret']."' AND `photos.local` = 'cache' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';");
						if ($photosFacesQuery && $photosLikeThisNum == 0) {
							while ($photosFacesFetch = mysqli_fetch_assoc($photosFacesQuery)) {
								mysqli_query($db, "DELETE FROM `photos_faces` WHERE `id` = '".$photosFacesFetch['id']."';");
							}
						}
					}else {
						continue;
					}
				}
				if (isset($nameArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['editor']) && is_array($nameArr) && count($nameArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['editor']) && count($_SESSION["cache"]['photos']['handling']['editor']) > 0) {
					$cacheEditorHandling = $_SESSION["cache"]['photos']['handling']['editor'];
					foreach ($cacheEditorHandling as $key => $value) {
						if (in_array($key, $nameArr)) {
							unset($_SESSION["cache"]['photos']['handling']['editor'][$key]);
						}
					}
				}
				if (isset($secretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['faces'], $_SESSION["cache"]['photos']['faces']['info']) && is_array($secretArr) && count($secretArr) > 0 && is_array($_SESSION["cache"]['photos']['faces']['info']) && count($_SESSION["cache"]['photos']['faces']['info']) > 0) {
					$cacheFacesArr = $_SESSION["cache"]['photos']['faces']['info'];
					foreach ($cacheFacesArr as $key => $cacheFaceThis) {
						if (isset($cacheFaceThis['photos'], $cacheFaceThis['photos.local'], $cacheFaceThis['user.id'], $cacheFaceThis['author.type'], $cacheFaceThis['author.id']) && in_array($cacheFaceThis['photos'], $f_secret) && $cacheFaceThis['photos.local'] == "cache" && $cacheFaceThis['user.id'] == $userId && $cacheFaceThis['author.type'] == $guyType && $cacheFaceThis['author.id'] == $guyId) {
							unset($_SESSION["cache"]['photos']['faces']['info'][$key]);
						}else {
							continue;
						}
					}
				}
				if (isset($secretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['faces']) && is_array($secretArr) && count($secretArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['faces']) && count($_SESSION["cache"]['photos']['handling']['faces']) > 0) {
					$cacheFacesHandling = $_SESSION["cache"]['photos']['handling']['faces'];
					foreach ($cacheFacesHandling as $key => $cacheFacesHandlingThis) {
						if (isset($cacheFacesHandlingThis['photos'], $cacheFacesHandlingThis['photos.local'], $cacheFacesHandlingThis['user.id'], $cacheFacesHandlingThis['author.type'], $cacheFacesHandlingThis['author.id']) && in_array($cacheFacesHandlingThis['photos'], $f_secret) && $cacheFacesHandlingThis['photos.local'] == "cache" && $cacheFacesHandlingThis['user.id'] == $userId && $cacheFacesHandlingThis['author.type'] == $guyType && $cacheFacesHandlingThis['author.id'] == $guyId) {
							unset($_SESSION["cache"]['photos']['handling']['faces'][$key]);
						}else {
							continue;
						}
					}
				}
				return array("return" => true, "a" => "3423s");
			}else if ($action == "push") {
				$name = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
				$secret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
				if ($name == null || $secret == null) {
					return array("return" => false, "reason" => "");
				}
				$updateCacheRequest = "UPDATE `photos_cache` SET `close` = '".(time() + $_parameter->get('media_cache_time_close'))."' WHERE `secret` = '".$secret."' AND `name` = '".$name."' AND `author.id` = '".$guyType."' AND `author.type` = '".$guyId."';";
				$updateCacheQuery = mysqli_query($db, $updateCacheRequest);
				if (!$updateCacheQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else if ($action == "upload") {
				$name = isset($object['name']) && is_string($object['name']) ? $name = $_tool->convertDatabaseString($object['name']) : null;
				$secret = isset($object['secret']) && is_string($object['secret']) ? $secret = $_tool->convertDatabaseString($object['secret']) : null;
				$multiple = isset($object['multiple']) && is_bool($object['multiple']) ? $multiple = $object['multiple'] : false;
				$maxsize = isset($object['maxsize']) && is_string($object['maxsize']) ? $maxsize = $_tool->convertDatabaseString($object['maxsize']) : null;
				if ($name == null || $secret == null) {
					return array("return" => false, "reason" => "");
				}
				$client = $_client->client(true);
				$getPhotosCacheRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$secret."' AND `name`= '".$name."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
				$getPhotosCacheQuery = mysqli_query($db, $getPhotosCacheRequest);
				if (!$getPhotosCacheQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getPhotosCacheQuery) == 0) {
					return array("return" => false, "reason" => "");
				}
				$scrapbook = isset($object['scrapbook']) && is_string($object['scrapbook']) ? $object['scrapbook'] : null;
				$updatePhotosCacheRequest = "UPDATE `photos_cache` SET `close` = '".(time() + $_parameter->get('media_cache_time_close'))." WHERE `secret` = '".$secret."' AND `name`= '".$name."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."';";
				$updatePhotosCacheQuery = mysqli_query($db, $updatePhotosCacheRequest);
				$file = mysqli_fetch_assoc($getPhotosCacheQuery);
				$file['name'] = basename($file['name']);
				$file['nameraw'] = $file['nameraw'];
				$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $file['path'], "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
					$file['tmp'] = $getMediaFile['data'][0]['source'];
					$file['mime'] = $getMediaFile['data'][0]['mime'];
					$file['size'] = $getMediaFile['data'][0]['size'];
				}else {
					return array("return" => false, "reason" => "");
				}
				if (isset($file['tmp'])) {
					set_time_limit(0);
					$file['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($file['tmp']).'::'.time().'::'.rand());
					$file['display'] = hash('md5', $file['token']);
					if (in_array($_tool->mime_content_type($file['mime'], true), $_parameter->get('exif_read_data_allow', true))) {
						$file['info'] = $this->info('read', $file['tmp'], 'photos');
					}else {
						$file['info'] = $this->info('read', null, 'photos');
						$file['info']['get'] = getimagesize($file['tmp']);
						$file['info']['size.width'] = $file['info']['get'][0];
						$file['info']['size.height'] = $file['info']['get'][1];
						$file['info']['mime_type']  = $file['info']['get']['mime'];
					}
					$file['file'] = $file['path'] = $file['secret'] = null;
					$file['file']['text'] = md5($file['token'].'::'.time().'::'.rand());
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
						$size_reset_w = $file['info']['size.width'] * $size_exceeded / 100 * $_parameter->get('photos_compression_size_percent');
						$size_reset_h = $file['info']['size.height'] * $size_exceeded / 100 * $_parameter->get('photos_compression_size_percent');
						$img->resize($size_reset_w, $size_reset_h);
					}
					if ($file['info']['size.width'] > $_parameter->get('photos_size_original_w')) {
						$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw'], "strip" => false));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['original'] = hash('md5', $file['file']['text']);
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
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['large'] = hash('md5', $file['file']['text']."::large");
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
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['medium'] = hash('md5', $file['file']['text']."::medium");
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
						$fileUpload = $_storage->upload(array("format" => "image", "move" => "rename", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['small'] = hash('md5', $file['file']['text']."::small");
							$file['path']['small'] = $fileUpload['storage']['display'];
							$file['secret']['small'] = $fileUpload['storage']['hash'];
						}else {
							//. error
						}
					}else {
						$file['file']['small'] = $file['path']['small'] = $file['secret']['small'] = 0;
					}
					$attachments = isset($object['attachments']) && is_bool($object['attachments']) ? $object['attachments'] : false;
					if (!$attachments) {
						$file['attachments'] = 0;
					}else {
						$file['attachments'] = 1;
					}
					$public = isset($object['public']) && is_bool($object['public']) ? $object['public'] : false;
					if (!$public) {
						$file['public'] = 0;
					}else {
						$file['public'] = 1;
					}
					$file['public'] = 1;
					$file['tags'] = isset($object['info'], $object['info']['tags']) && is_string($object['info']['tags']) ? $object['info']['tags'] : null;
					$file['description'] = isset($object['info'], $object['info']['description']) && is_string($object['info']['description']) ? $_tool->convertDatabaseString($object['info']['description']) : null;
					$file['private.view'] = $file['private.comment'] = $file['private.share'] = 4;
					$insertRequest = "INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES (null, '{$userId}', '{$guyType}', '{$guyId}', '{$scrapbook}', '{$_tool->timeNow()}', '{$file['token']}', '{$file['display']}', '{$file['name']}', '{$file['nameraw']}', '{$file['tags']}', '{$file['description']}', '{$file['attachments']}', '{$file['public']}', '{$file['private.view']}', '{$file['private.comment']}', '{$file['private.share']}', '{$file['file']['original']}', '{$file['file']['large']}', '{$file['file']['medium']}', '{$file['file']['small']}', '{$file['secret']['original']}', '{$file['secret']['large']}', '{$file['secret']['medium']}', '{$file['secret']['small']}', '{$file['path']['original']}', '{$file['path']['large']}', '{$file['path']['medium']}', '{$file['path']['small']}', '{$file['info']['size.height']}', '{$file['info']['size.width']}', '{$file['info']['aperture.f']}', '{$file['info']['aperture.max_value']}', '{$file['info']['b.o.m']}', '{$file['info']['file.datetime']}', '{$file['info']['file.size']}', '{$file['info']['file.type']}', '{$file['info']['file.source']}', '{$file['info']['flash']}', '{$file['info']['focal.length']}', '{$file['info']['iso']}', '{$file['info']['make']}', '{$file['info']['model']}', '{$file['info']['metering.mode']}', '{$file['info']['mime_type']}', '{$file['info']['software']}', '{$file['info']['ccd.width']}', '{$file['info']['exposure.time']}', '{$file['info']['exposure.mode']}', '{$file['info']['exposure.bias_value']}', '{$file['info']['f_number']}', '{$file['info']['sensing.method']}', '{$file['info']['shutter.speed']}', '{$file['info']['digital_zoom.ratio']}')";
					$insertQuery = mysqli_query($db, $insertRequest);
					$photos_id = mysqli_insert_id($db);
					$getFileRequest = "SELECT `id`, `path`, `token`, `secret`, `name` FROM `photos_cache` WHERE (`name`= '".$name."' OR `copy`= '".$name."') AND `secret` = '".$secret."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
					$getFileQuery = mysqli_query($db, $getFileRequest);
					$f_name = $f_secret = array();
					while ($fileFetch = mysqli_fetch_assoc($getFileQuery)) {
						$f_name[] = $fileFetch['name'];
						$f_secret[] = $fileFetch['secret'];
						$_storage->delete(array("format" => "image", "label" => "display", "value" => $fileFetch['path']));
						mysqli_query($db, "UPDATE `photos_faces` SET `photos` = '{$file['display']}', `photos.local` = 'drive' WHERE `photos` = '{$fileFetch['secret']}' AND `photos.local` = 'cache' AND `author.type` = '{$guyType}' AND `author.id` = '{$guyId}' AND `user.id` = '{$userId}'");
						mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '{$fileFetch['id']}'");
					}
					if (isset($f_name, $_SESSION["cache"]['photos']['handling']['editor']) && is_array($f_name) && count($f_name) > 0 && is_array($_SESSION["cache"]['photos']['handling']['editor']) && count($_SESSION["cache"]['photos']['handling']['editor']) > 0) {
						$cacheEditorHandling = $_SESSION["cache"]['photos']['handling']['editor'];
						if (is_array($cacheEditorHandling) && $cacheEditorHandling != null) {
							foreach ($cacheEditorHandling as $key => $value) {
								if (in_array($key, $f_name)) {
									unset($cacheEditorHandling[$key]);
								}
							}
							$_SESSION["cache"]['photos']['handling']['editor'] = $cacheEditorHandling;
						}
					}
					if (isset($f_secret, $_SESSION["cache"]['photos']['faces']['info']) && is_array($f_secret) && count($f_secret) > 0 && is_array($_SESSION["cache"]['photos']['faces']['info']) && count($_SESSION["cache"]['photos']['faces']['info']) > 0) {
						$cacheFaces = $_SESSION["cache"]['photos']['faces']['info'];
						foreach ($cacheFaces as $key => $cacheFaceThis) {
							if (isset($cacheFaceThis['photos'], $cacheFaceThis['photos.local'], $cacheFaceThis['user.id'], $cacheFaceThis['author.type'], $cacheFaceThis['author.id']) && in_array($cacheFaceThis['photos'], $f_secret) && $cacheFaceThis['photos.local'] == "cache" && $cacheFaceThis['user.id'] == $userId && $cacheFaceThis['author.type'] == $guyType && $cacheFaceThis['author.id'] == $guyId) {
								unset($cacheFaces[$key]);
							}else {
								continue;
							}
						}
						$_SESSION["cache"]['photos']['faces']['info'] = $cacheFaces;
					}
					if (isset($f_secret, $_SESSION["cache"]['photos']['handling']['faces']) && is_array($f_secret) && count($f_secret) > 0 && is_array($_SESSION["cache"]['photos']['handling']['faces']) && count($_SESSION["cache"]['photos']['handling']['faces']) > 0) {
						$cacheFacesHandling = $_SESSION["cache"]['photos']['handling']['faces'];
						foreach ($cacheFacesHandling as $key => $cacheFacesHandlingThis) {
							if (isset($cacheFacesHandlingThis['photos'], $cacheFacesHandlingThis['photos.local'], $cacheFacesHandlingThis['user.id'], $cacheFacesHandlingThis['author.type'], $cacheFacesHandlingThis['author.id']) && in_array($cacheFacesHandlingThis['photos'], $f_secret) && $cacheFacesHandlingThis['photos.local'] == "cache" && $cacheFacesHandlingThis['user.id'] == $userId && $cacheFacesHandlingThis['author.type'] == $guyType && $cacheFacesHandlingThis['author.id'] == $guyId) {
								unset($cacheFacesHandling[$key]);
							}else {
								continue;
							}
						}
						$_SESSION["cache"]['photos']['handling']['faces'] = $cacheFacesHandling;
					}
				}
				return array("return" => true, "id" => $photos_id);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($format == "music" && is_array($object)) {
			$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
			if ($action == "add") {
				$file = isset($object['file']) && is_array($object['file']) && count($object['file']) ? $object['file'] : null;
				if ($file == null) {
					return array("return" => false, "reason" => "1");
				}
				if (!isset($file['tmp_name']) || !isset($file['name']) || !isset($file['type']) || !isset($file['size'])) {
					return array("return" => false, "reason" => "2");
				}
				$file['tmp'] = $file['tmp_name'];
				$info = $this->info('read', $file['tmp'], 'audio');
				$client = $_client->client(true);
				$token = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($file['tmp']));
				$secret = hash('crc32', $token);
				$nameraw = $_tool->convertDatabaseString($file['name']);
				$name = hash('crc32', md5($secret.'::'.rand()));
				$copy = 0;
				$mime = $file['type'];
				$size = $file['size'];
				$duration = $info['duration'];
				$file['size'] = array();
				$file['size']['file'] = $size;
				if (isset($client, $token, $secret, $nameraw, $name, $mime, $size)) {
					if (!isset($file['error']) || $file['error'] != null) {
						return array("return" => false, "reason" => "3");
					}else if (!isset($file['tmp']) || $file['tmp'] == null) {
						return array("return" => false, "reason" => "2xs");
					}else if ($size > $_parameter->get('music_allow_size')) {
						//. return array("return" => false, "reason" => "");
					}
					$fileUpload = $_storage->upload(array("format" => "audio", "move" => "copy", "file" => $file['tmp'], "mime" => $file['type'], "name" => $file['name'], "strip" => false));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$path = $fileUpload['storage']['display'];
						$_SESSION['ss'] = "ffprobe -v quiet -print_format json -show_format -show_streams {$_client->root()}{$fileUpload['storage']['source']} 2>&1 &";
					}else {
						return array("return" => false, "reason" => "");
					}
					//.
					$addMusicCacheRequest = "
					INSERT INTO `music_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.type`, `author.id`) 
					VALUES (null, '".time()."', '".(time() + $_parameter->get('media_cache_time_close'))."', '".$client."', '".$token."', '".$secret."', '".$name."', '".$nameraw."', '".$copy."', '".$mime."', '".$size."', '".$duration."', '".$path."', '".$userId."', '".$guyType."', '".$guyId."');
					";
					$addMusicCacheQuery = mysqli_query($db, $addMusicCacheRequest);
					if (!$addMusicCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$tmp = $fileUpload['storage']['source'];
						$file = array(
							"tmp" => $tmp,
							"secret" => $secret, 
							"name" => $name,
							"nameraw" => $nameraw,
							"mime" => $mime, 
							"size" => $size,
							"duration" => $duration
						);
						return array("return" => true, "data" => $file);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "copy") {
				$secret = isset($object['secret']) && is_string($object['secret']) ? $secret = $_tool->convertDatabaseString($object['secret']) : null;
				$name = isset($object['name']) && is_string($object['name']) ? $name = $_tool->convertDatabaseString($object['name']) : null;
				$limit = isset($object['limit']) && is_bool($object['limit']) ? $limit = $object['limit'] : true;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "");
				}
				$getOriginalRequest = "SELECT * FROM `music_cache` WHERE `secret` = '".$secret."' AND `name` = '".$name."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
				$getOriginalQuery = mysqli_query($db, $getOriginalRequest);
				$getCopyRequest = "SELECT * FROM `music_cache` WHERE `secret` = '".$secret."' AND `copy` = '".$name."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
				$getCopyQuery = mysqli_query($db, $getCopyRequest);
				if (!$getOriginalQuery || !$getCopyQuery) {
					return array("return" => false, "reason" => "");
				}
				if ($limit == false || (mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) == 0)) {
					$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$copyFetch['secret'] = $originalFetch['secret'];
					$copyFetch['token'] = $originalFetch['token'];
					$copyFetch['name'] = hash('crc32', $originalFetch['name'].'::'.time().'::'.rand());
					$copyFetch['nameraw'] = $originalFetch['nameraw'];
					$copyFetch['copy'] = $originalFetch['name'];
					$copyFetch['duration'] = $originalFetch['duration'];
					$fileUpload = $_storage->upload(array("format" => "audio", "move" => "copy", "file" => $originalFetch['tmp'], "mime" => $originalFetch['mime'], "name" => $copyFetch['name']));
					if (isset($fileUpload['return'], $fileUpload['storage'], $fileUpload['storage']['source']) && $fileUpload['return'] == true) {
						$copyFetch['path'] = $fileUpload['storage']['display'];
						$copyFetch['tmp'] = $fileUpload['storage']['source'];
						$_storage->recheck(array("format" => "audio", "label" => "display", "value" => $copyFetch['path']));
					}else {
						return array("return" => false, "reason" => "");
					}
					$addMusicCacheRequest = "
					INSERT INTO `music_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`) 
					VALUES (null, '".$originalFetch['user.id']."', '".$originalFetch['author.type']."', '".$originalFetch['author.id']."', '".$originalFetch['time']."', '".(time() + $_parameter->get('media_cache_time_close'))."', '".$originalFetch['client']."', '".$originalFetch['token']."', '".$originalFetch['secret']."', '".$copyFetch['name']."', '".$copyFetch['nameraw']."', '".$copyFetch['copy']."', '".$originalFetch['mime']."', '".$originalFetch['size']."', '".$copyFetch['duration']."', '".$copyFetch['path']."');
					";
					$addMusicCacheQuery = mysqli_query($db, $addMusicCacheRequest);
					if (!$addMusicCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = array(
							"original" => array(
								"tmp" => $originalFetch['tmp'], 
								"secret" => $originalFetch['secret'], 
								"name" => $originalFetch['name'],
								"nameraw" => $originalFetch['nameraw'],
								"duration" => $originalFetch['duration']
							),
							"copy" => array(
								"tmp" => $copyFetch['tmp'], 
								"secret" => $copyFetch['secret'], 
								"name" => $copyFetch['name'],
								"nameraw" => $copyFetch['nameraw'],
								"duration" => $copyFetch['duration']
							)
						);
						return array(
							"return" => true, 
							"data" => $dataArr
						);
					}
				}else if ($limit == true && mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) > 0) {
					$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0], $getMediaFile['data'][0]['source'], $getMediaFile['data'][0]['display']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
						$originalFetch['path'] = $getMediaFile['data'][0]['display'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$copyFetch = mysqli_fetch_assoc($getCopyQuery);
					$copyFetch['duration'] = $originalFetch['duration'];
					$replaceFileOptions = array(
						"format" => "audio", 
						"labelSource" => "display",
						"valueSource" => $originalFetch['path'],
						"labelDestination" => "display",
						"valueDestination" => $copyFetch['path']
					);
					$replaceFile = $_storage->replace($replaceFileOptions);
					if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
						$copyFetch['tmp'] = $replaceFile['destination']['source'];
						$copyFetch['path'] = $replaceFile['destination']['display'];
						$_storage->recheck(array("format" => "audio", "label" => "display", "value" => $copyFetch['path']));
					}
					$uploadMusicCacheRequest = "UPDATE `music_cache` SET `time` = '".$originalFetch['time']."', `close` = '".(time() + $_parameter->get('media_cache_time_close'))."', `client` = '".$originalFetch['client']."', `name` = '".$copyFetch['name']."', `nameraw` = '".$originalFetch['nameraw']."', `copy` = '".$copyFetch['copy']."', `mime` = '".$originalFetch['mime']."', `size` = '".$originalFetch['size']."', `duration` = '".$copyFetch['duration']."', `path` = '".$copyFetch['path']."' WHERE `id` = '".$copyFetch['id']."';";
					$uploadMusicCacheQuery = mysqli_query($db, $uploadMusicCacheRequest);
					if (!$uploadMusicCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = array(
							"original" => array(
								"tmp" => $originalFetch['tmp'], 
								"secret" => $originalFetch['secret'], 
								"name" => $originalFetch['name'],
								"nameraw" => $originalFetch['nameraw'],
								"duration" => $originalFetch['duration']
							),
							"copy" => array(
								"tmp" => $copyFetch['tmp'], 
								"secret" => $copyFetch['secret'], 
								"name" => $copyFetch['name'],
								"nameraw" => $copyFetch['nameraw'],
								"duration" => $copyFetch['duration']
							)
						);
						return array(
							"return" => true, 
							"data" => $dataArr
						);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (in_array($action, ["get"])) {
				$label = isset($object['label']) && is_string($object['label']) ? $label = $_tool->convertDatabaseString($object['label']) : null;
				$value = isset($object['value']) && is_string($object['value']) ? $value = $_tool->convertDatabaseString($object['value']) : null;
				$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$getMusicCacheRequest = "SELECT * FROM `music_cache` WHERE `".$label."` = '".$value."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
				$getMusicCacheQuery = mysqli_query($db, $getMusicCacheRequest);
				if (!$getMusicCacheQuery) {
					return array("return" => false, "reason" => "");
				}
				$dataArr = array();
				while ($musicFetch = mysqli_fetch_assoc($getMusicCacheQuery)) {
					$mediaDataThis = $musicFetch;
					$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $musicFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
						$mediaDataThis['tmp'] = $getMediaFile['data'][0]['source'];
					}else {
						continue;
					}
					$dataArr[] = $mediaDataThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if (in_array($action, ["replace"])) {
				$sourceName = isset($object['source'], $object['source']['name']) && is_string($object['source']['name']) ? $object['source']['name'] : null;
				$sourceSecret = isset($object['source'], $object['source']['secret']) && is_string($object['source']['secret']) ? $object['source']['secret'] : null;
				$destinationName = isset($object['destination'], $object['destination']['name']) && is_string($object['destination']['name']) ? $object['destination']['name'] : null;
				$destinationSecret = isset($object['destination'], $object['destination']['secret']) && is_string($object['destination']['secret']) ? $object['destination']['secret'] : null;
				if ($sourceName == null || $sourceSecret == null) {
					return array("return" => false, "reason" => "");
				}else if ($destinationName == null || $destinationSecret == null) {
					return array("return" => false, "reason" => "");
				}
				$getMusicSourceRequest = "SELECT * FROM `music_cache` WHERE `secret` = '".$sourceSecret."' AND `name` = '".$sourceName."' LIMIT 1;";
				$getMusicSourceQuery = mysqli_query($db, $getMusicSourceRequest);
				$getMusicDestinationRequest = "SELECT * FROM `music_cache` WHERE `secret` = '".$destinationSecret."' AND `name` = '".$destinationName."' LIMIT 1;";
				$getMusicDestinationQuery = mysqli_query($db, $getMusicDestinationRequest);
				if (!$getMusicSourceQuery || !$getMusicDestinationQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getMusicSourceQuery) > 0 && mysqli_num_rows($getMusicDestinationQuery) > 0) {
					$musicSourceFetch = mysqli_fetch_assoc($getMusicSourceQuery);
					if (isset($musicSourceFetch['path']) && is_string($musicSourceFetch['path'])) {
						$valueSource = $musicSourceFetch['path'];
					}
					$musicDestinationFetch = mysqli_fetch_assoc($getMusicDestinationQuery);
					if (isset($musicDestinationFetch['path']) && is_string($musicDestinationFetch['path'])) {
						$valueDestination = $musicDestinationFetch['path'];
					}
					if (!isset($valueSource) || !isset($valueDestination)) {
						return array("return" => false, "reason" => "");
					}
					$replaceFileOptions = array(
						"format" => "audio", 
						"labelSource" => "display",
						"valueSource" => $valueSource,
						"labelDestination" => "display",
						"valueDestination" => $valueDestination
					);
					$replaceFile = $_storage->replace($replaceFileOptions);
					if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
						$musicSourceFetch['tmp'] = $replaceFile['source']['file'];
						$musicDestinationFetch['tmp'] = $replaceFile['destination']['file'];
						$dataArr = array(
							"original" => array(
								"tmp" => $musicSourceFetch['tmp'],
								"secret" => $musicSourceFetch['secret'],
								"name" => $musicSourceFetch['name'],
								"nameraw" => $musicSourceFetch['nameraw']
							),
							"copy" => array(
								"tmp" => $musicDestinationFetch['tmp'],
								"secret" => $musicDestinationFetch['secret'],
								"name" => $musicDestinationFetch['name'],
								"nameraw" => $musicDestinationFetch['nameraw']
							),
						);
						$_storage->recheck(array("format" => "audio", "label" => "display", "value" => $valueDestination));
						return array("return" => true, "data" => $dataArr);
					}else if (isset($replaceFile['return'], $replaceFile['reason']) && $replaceFile['return'] == true) {
						return array("return" => false, "reason" => $replaceFile['reason']);
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				$secret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
				$name = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
				$draft = isset($object['draft']) && is_bool($object['draft']) ? $object['draft'] : true;
				$verify = isset($object['verify']) && is_bool($object['verify']) ? $object['verify'] : true;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "123");
				}
				$getMusicCacheRequestVerify = $getMusicCacheRequestDraft = null;
				if (!$verify) {
					$getMusicCacheRequestVerify = " AND `close` != '0'";
				}
				if (!$draft) {
					$getMusicCacheRequestDraft = " OR `copy` = '".$name."'";
				}
				$getMusicCacheRequest = "SELECT * FROM `music_cache` WHERE `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' AND (`secret` = '".$secret."' AND (`name` = '".$name."'".$getMusicCacheRequestDraft.")) ".$getMusicCacheRequestVerify." ";
				$getMusicCacheQuery = mysqli_query($db, $getMusicCacheRequest);
				if (!$getMusicCacheQuery) {
					return array("return" => false, "reason" => $getMusicCacheRequest);
				}
				$removedArr = $nameArr = $secretArr = array();
				while ($musicCacheFetch = mysqli_fetch_assoc($getMusicCacheQuery)) {
					$next = 0;
					if (count($removedArr) > 0) {
						foreach ($removedArr as $key => $removedThis) {
							if (isset($removedThis['secret'], $musicCacheFetch['secret'])) {
									//.
							}else {
								unset($removedArr[$key]);
								continue;
							}
							if ($removedThis['secret'] == $musicCacheFetch['secret'] && $removedThis['name'] != $musicCacheFetch['name']) {
								$n++;
								break;
							}
						}
					}
					if ($next == 0) {
						$removedArr[] = array("secret" => $musicCacheFetch['secret'], "name" => $musicCacheFetch['name']);
					}else {
						continue;
					}
					$nameArr[] = $musicCacheFetch['name'];
					$secretArr[] = $musicCacheFetch['secret'];
					$delMediaFileOpts = array(
						"format" => "audio",
						"label" => "display",
						"value" => $musicCacheFetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `music_cache` WHERE `id` = '".$musicCacheFetch['id']."';");
					}else {
						continue;
					}
				}
				return array("return" => true);
			}else if ($action == "clean") {
				$expiresArr = $removedArr = $nameArr = $secretArr = array();
				$getMusicExpiresRequest = "SELECT * FROM `music_cache` WHERE (`client` = '".$_client->client(true)."' OR `user.id` = '".$userId."' OR (`author.id` = '".$guyId."' AND `author.type` = '".$guyType."')) AND `close` != '0' AND `close` <= '".time()."';";
				$getMusicExpiresQuery = mysqli_query($db, $getMusicExpiresRequest);
				if (!$getMusicExpiresQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getMusicExpiresQuery) == 0) {
					return array("return" => true);
				}else {
					while ($musicCacheFetch = mysqli_fetch_assoc($getMusicExpiresQuery)) {
						$expiresArr[] = $musicCacheFetch;
					}
				}
				$getMusicOtherRequest = "SELECT * FROM `music_cache` WHERE `close` != '0' AND `close` <= '".time()."' LIMIT ".rand($_parameter->get('cacheClean_user_limit_min'), $_parameter->get('cacheClean_user_limit_max')).";";
				$getMusicOtherQuery = mysqli_query($db, $getMusicOtherRequest);
				if (!$getMusicOtherQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getMusicOtherQuery) == 0) {
					//.
				}else {
					while ($musicCacheFetch = mysqli_fetch_assoc($getMusicOtherQuery)) {
						$expiresArr[] = $musicCacheFetch;
					}
				}
				if (count($expiresArr) == 0) {
					return array("return" => true);
				}
				foreach ($expiresArr as $musicCacheFetch) {
					$next = 0;
					if (count($removedArr) > 0) {
						foreach ($removedArr as $key => $removedThis) {
							if (isset($removedThis['secret'], $musicCacheFetch['secret'])) {
									//.
							}else {
								unset($removedArr[$key]);
								continue;
							}
							if ($removedThis['secret'] == $musicCacheFetch['secret'] && $removedThis['name'] != $musicCacheFetch['name']) {
								$n++;
								break;
							}
						}
					}
					if ($next == 0) {
						$removedArr[] = array("secret" => $musicCacheFetch['secret'], "name" => $musicCacheFetch['name']);
					}else {
						continue;
					}
					$nameArr[] = $musicCacheFetch['name'];
					$secretArr[] = $musicCacheFetch['secret'];
					$delMediaFileOpts = array(
						"format" => "audio",
						"label" => "display",
						"value" => $musicCacheFetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						mysqli_query($db, "DELETE FROM `music_cache` WHERE `id` = '".$musicCacheFetch['id']."';");
					}else {
						continue;
					}
				}
				return array("return" => true);
			}else if ($action == "push") {
				$name = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
				$secret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
				if ($name == null || $secret == null) {
					return array("return" => false, "reason" => "");
				}
				$updateCacheRequest = "UPDATE `music_cache` SET `close` = '".(time() + $_parameter->get('media_cache_time_close'))."' WHERE `secret` = '".$secret."' AND `secret` = '".$secret."' AND `author.id` = '".$guyType."' AND `author.type` = '".$guyId."';";
				$updateCacheQuery = mysqli_query($db, $updateCacheRequest);
				if (!$updateCacheQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else if ($action == "upload") {
				$name = isset($object['name']) && is_string($object['name']) ? $name = $_tool->convertDatabaseString($object['name']) : null;
				$secret = isset($object['secret']) && is_string($object['secret']) ? $secret = $_tool->convertDatabaseString($object['secret']) : null;
				$multiple = isset($object['multiple']) && is_bool($object['multiple']) ? $multiple = $object['multiple'] : false;
				if ($name == null || $secret == null) {
					return array("return" => false, "reason" => "");
				}
				$client = $_client->client(true);
				$getMusicCacheRequest = "SELECT * FROM `music_cache` WHERE `secret` = '".$secret."' AND `name`= '".$name."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
				$getMusicCacheQuery = mysqli_query($db, $getMusicCacheRequest);
				if (!$getMusicCacheQuery) {
					return array("return" => false, "reason" => "");
				}
				$album = isset($object['album']) && is_string($object['album']) ? $object['album'] : null;
				$updateMusicCacheRequest = "UPDATE `music_cache` SET `close` = '".(time() + $_parameter->get('media_cache_time_close'))." WHERE `secret` = '".$secret."' AND `name`= '".$name."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."';";
				$updateMusicCacheQuery = mysqli_query($db, $updateMusicCacheRequest);
				$file = mysqli_fetch_assoc($getMusicCacheQuery);
				$file['name'] = basename($file['name']);
				$file['nameraw'] = $file['nameraw'];
				$getMediaFile = $_storage->get(array("format" => "audio", "label" => "display", "value" => $file['path'], "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
					$file['tmp'] = $getMediaFile['data'][0]['source'];
					$file['mime'] = $getMediaFile['data'][0]['mime'];
					$file['size'] = $getMediaFile['data'][0]['size'];
				}else {
					return array("return" => false, "reason" => "");
				}
				if (!in_array($file['mime'], $_parameter->get('music_allow_format', true))) {
					//.
				}
				if (isset($file['tmp'])) {
					set_time_limit(0);
					$file['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($file['tmp']).'::'.time().'::'.rand());
					$file['display'] = hash('md5', $file['token']);
					$file['info'] = $this->info('read', $file['tmp'], 'audio');
					$file['file'] = $file['path'] = $file['secret'] = null;
					if ($file['info']['file.size'] > $_parameter->get('music_allow_size')) {
						//.
					}
					$file['file']['text'] = md5($file['token'].'::'.time().'::'.rand());
					$fileUpload = $_storage->upload(array("format" => "audio", "move" => "copy", "file" => $file['tmp'], "mime" => $file['mime'], "name" => $file['nameraw']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$file['file']['original'] = hash('md5', $file['file']['text']);
						$file['path']['original'] = $fileUpload['storage']['display'];
						$file['secret']['original'] = $fileUpload['storage']['hash'];
					}
					$file['file']['320kbps'] = $file['path']['320kbps'] = $file['secret']['320kbps'] = 0;
					if ($multiple == true && ($file['info']['bitrate'] / 1000 >= 320)) {
						$fileUpload = $_storage->upload(array("format" => "audio", "move" => "none", "file" => "none", "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['320kbps'] = hash('md5', $file['file']['text'].'::320kbps');
							$file['path']['320kbps'] = $fileUpload['storage']['display'];
							$file['secret']['320kbps'] = $fileUpload['storage']['hash'];
							$file['source']['320kbps'] = $fileUpload['storage']['source'];
							// chmod($_client->root().$file['source']['320kbps'], 0777);
							exec("ffmpeg -y -i {$_client->root()}{$file['tmp']} -codec:a libmp3lame -b:a 320K -ac 2 -map_metadata -1 {$_client->root()}{$file['source']['320kbps']} 2>&1 &", $outputContent320kbps);
							if (isset($outputContent320kbps)) {
								set_time_limit(0);
								$fileRecheck = $_storage->recheck(array("format" => "audio", "label" => "display", "value" => $file['path']['320kbps']));
								if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
									$file['secret']['320kbps'] = $fileRecheck['data']['hash'];
								}
							}
						}
					}
					$file['file']['128kbps'] = $file['path']['128kbps'] = $file['secret']['128kbps'] = 0;
					if ($multiple == true && ($file['info']['bitrate'] / 1000 >= 128)) {
						$fileUpload = $_storage->upload(array("format" => "audio", "move" => "none", "file" => "none", "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['128kbps'] = hash('md5', $file['file']['text'].'::128kbps');
							$file['path']['128kbps'] = $fileUpload['storage']['display'];
							$file['secret']['128kbps'] = $fileUpload['storage']['hash'];
							$file['source']['128kbps'] = $fileUpload['storage']['source'];
							// chmod($_client->root().$file['source']['128kbps'], 0777);
							exec("ffmpeg -y -i {$_client->root()}{$file['tmp']} -codec:a libmp3lame -b:a 128K -ac 2 -map_metadata -1 {$_client->root()}{$file['source']['128kbps']} 2>&1 &", $outputContent128kbps);
							if (isset($outputContent128kbps)) {
								set_time_limit(0);
								$fileRecheck = $_storage->recheck(array("format" => "audio", "label" => "display", "value" => $file['path']['128kbps']));
								if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
									$file['secret']['128kbps'] = $fileRecheck['data']['hash'];
								}
							}
						}
					}
					$_SESSION['sx'] = $file['info']['bitrate'];
					$file['name'] = isset($object['info'], $object['info']['name']) && is_string($object['info']['name']) ? $_tool->convertDatabaseString($object['info']['name']) : $_tool->convertDatabaseString($object['info']['nameraw']);
					$file['tags'] = isset($object['info'], $object['info']['tags']) && is_string($object['info']['tags']) ? $object['info']['tags'] : null;
					$file['description'] = isset($object['info'], $object['info']['description']) && is_string($object['info']['description']) ? $_tool->convertDatabaseString($object['info']['description']) : null;
					$file['singer'] = isset($object['info'], $object['info']['singer']) && is_string($object['info']['singer']) ? $_tool->convertDatabaseString($object['info']['singer']) : null;
					$file['private.view'] = $file['private.comment'] = $file['private.share'] = 4;
					$insertRequest = "
					INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.320kbps`, `file.128kbps`, `secret.original`, `secret.320kbps`, `secret.128kbps`, `path.original`, `path.320kbps`, `path.128kbps`, `file.datetime`, `file.size`, `bitrate`, `codec_name`, `codec_long_name`, `duration`, `mime_type`) 
					VALUES (null, '{$userId}', '{$guyType}', '{$guyId}', '{$album}', '".time()."', '{$file['token']}', '{$file['display']}', '{$file['name']}', '{$file['nameraw']}', '{$file['singer']}', '{$file['tags']}', '{$file['description']}', '{$file['private.view']}', '{$file['private.comment']}', '{$file['private.share']}', '{$file['file']['original']}', '{$file['file']['320kbps']}', '{$file['file']['128kbps']}', '{$file['secret']['original']}', '{$file['secret']['320kbps']}', '{$file['secret']['128kbps']}', '{$file['path']['original']}', '{$file['path']['320kbps']}', '{$file['path']['128kbps']}', '{$file['info']['file.datetime']}', '{$file['info']['file.size']}', '{$file['info']['bitrate']}', '{$file['info']['codec_name']}', '{$file['info']['codec_long_name']}', '{$file['info']['duration']}', '{$file['info']['mime_type']}');
					";
					$insertQuery = mysqli_query($db, $insertRequest);
					$music_id = mysqli_insert_id($db);
					$getFileRequest = "SELECT `id`, `path`, `token`, `secret`, `name` FROM `music_cache` WHERE (`name`= '".$name."' OR `copy`= '".$name."') AND `secret` = '".$secret."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
					$getFileQuery = mysqli_query($db, $getFileRequest);
					while ($fileFetch = mysqli_fetch_assoc($getFileQuery)) {
						$_storage->delete(array("format" => "audio", "label" => "display", "value" => $fileFetch['path']));
						mysqli_query($db, "DELETE FROM `music_cache` WHERE `id` = '".$fileFetch['id']."';");
					}
					return array("return" => true, "id" => $music_id);
 				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($format == "videos" && is_array($object)) {
			$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
			if ($action == "add") {
				$file = isset($object['file']) && is_array($object['file']) && count($object['file']) ? $object['file'] : null;
				if ($file == null) {
					return array("return" => false, "reason" => "1");
				}
				if (!isset($file['tmp_name']) || !isset($file['name']) || !isset($file['type']) || !isset($file['size'])) {
					return array("return" => false, "reason" => "2");
				}
				$file['tmp'] = $file['tmp_name'];
				$info = $this->info('read', $file['tmp'], 'video');
				$client = $_client->client(true);
				$token = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($file['tmp']));
				$secret = hash('crc32', $token);
				$nameraw = $_tool->convertDatabaseString($file['name']);
				$name = hash('crc32', md5($secret.'::'.rand()));
				$thumbnail = hash('md5', $name);
				$copy = 0;
				$mime = $file['type'];
				$size = $file['size'];
				$duration = $info['duration'];
				$file['size'] = array();
				$file['size']['file'] = $size;
				if (isset($client, $token, $secret, $nameraw, $name, $mime, $size)) {
					if (!isset($file['error']) || $file['error'] != null) {
						return array("return" => false, "reason" => "3");
					}else if (!isset($file['tmp']) || $file['tmp'] == null) {
						return array("return" => false, "reason" => "2xs");
					}/*else if ($size > $_parameter->get('videos_allow_size')) {
						return array("return" => false, "reason" => "asdc");
					}*/
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "copy", "file" => $file['tmp'], "mime" => $file['type'], "name" => $file['name'], "strip" => false));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$path = $fileUpload['storage']['display'];
						$tmp = $fileUpload['storage']['source'];
					}else {
						return array("return" => false, "reason" => "123sa");
					}
					//.
					$addVideosCacheRequest = "
					INSERT INTO `videos_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.type`, `author.id`) 
					VALUES (null, '".time()."', '".(time() + $_parameter->get('media_cache_time_close'))."', '".$client."', '".$token."', '".$secret."', '".$name."', '".$nameraw."', '".$thumbnail."', null, '".$copy."', '".$mime."', '".$size."', '".$duration."', '".$path."', '".$userId."', '".$guyType."', '".$guyId."');
					";
					$addVideosCacheQuery = mysqli_query($db, $addVideosCacheRequest);
					if (!$addVideosCacheQuery) {
						return array("return" => false, "reason" => $addVideosCacheRequest);
					}else {
						$idInserted = mysqli_insert_id($db);
						$fileUpload = $_storage->upload(array("format" => "image", "move" => "none", "file" => "none", "name" => $thumbnail, "mime" => $_parameter->get('videos_thumbnail_image_mime')));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$thumbnailPath = $fileUpload['storage']['source'];
							$thumbnailDisplay = $fileUpload['storage']['display'];
							mysqli_query($db, "UPDATE `videos_cache` SET `thumbnail.path` = '{$fileUpload['storage']['display']}' WHERE `id` = '{$idInserted}'");
						}else {
							//.
						}
						$thumbnailPosition = intval($duration / 10);
						exec("ffmpeg -y -itsoffset -{$thumbnailPosition} -i {$_client->root()}{$tmp} -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 {$_client->root()}{$thumbnailPath} 2>&1");
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $thumbnailDisplay));
						$file = array(
							"tmp" => $tmp,
							"thumbnail" => $thumbnail,
							"secret" => $secret, 
							"name" => $name,
							"nameraw" => $nameraw,
							"mime" => $mime, 
							"size" => $size,
							"duration" => $duration
						);
						return array("return" => true, "data" => $file);
					}
				}else {
					return array("return" => false, "reason" => "wezf");
				}
			}else if ($action == "copy") {
				$secret = isset($object['secret']) && is_string($object['secret']) ? $secret = $_tool->convertDatabaseString($object['secret']) : null;
				$name = isset($object['name']) && is_string($object['name']) ? $name = $_tool->convertDatabaseString($object['name']) : null;
				$limit = isset($object['limit']) && is_bool($object['limit']) ? $limit = $object['limit'] : true;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "");
				}
				$getOriginalRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$secret."' AND `name` = '".$name."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
				$getOriginalQuery = mysqli_query($db, $getOriginalRequest);
				$getCopyRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$secret."' AND `copy` = '".$name."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
				$getCopyQuery = mysqli_query($db, $getCopyRequest);
				if (!$getOriginalQuery || !$getCopyQuery) {
					return array("return" => false, "reason" => "");
				}
				if ($limit == false || (mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) == 0)) {
					$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$copyFetch['secret'] = $originalFetch['secret'];
					$copyFetch['token'] = $originalFetch['token'];
					$copyFetch['name'] = hash('crc32', $originalFetch['name'].'::'.time().'::'.rand());
					$copyFetch['nameraw'] = $originalFetch['nameraw'];
					$copyFetch['thumbnail'] = hash('md5', $copyFetch['name']);
					$copyFetch['copy'] = $originalFetch['name'];
					$copyFetch['duration'] = $originalFetch['duration'];
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "copy", "file" => $originalFetch['tmp'], "mime" => $originalFetch['mime'], "name" => $copyFetch['name']));
					if (isset($fileUpload['return'], $fileUpload['storage'], $fileUpload['storage']['source']) && $fileUpload['return'] == true) {
						$copyFetch['path'] = $fileUpload['storage']['display'];
						$copyFetch['tmp'] = $fileUpload['storage']['source'];
						$_storage->recheck(array("format" => "video", "label" => "display", "value" => $copyFetch['path']));
						//.
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $originalFetch['thumbnail.path'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
							$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $getMediaFile['data'][0]['source'], "name" => $copyFetch['thumbnail']));
							if (isset($fileUpload['return'], $fileUpload['storage'], $fileUpload['storage']['source']) && $fileUpload['return'] == true) {
								$copyFetch['thumbnail.path'] = $fileUpload['storage']['display'];
								$_storage->recheck(array("format" => "image", "label" => "display", "value" => $copyFetch['thumbnail.path']));
							}
						}
					}else {
						return array("return" => false, "reason" => "");
					}
					$addVideosCacheRequest = "
					INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) 
					VALUES (null, '".$originalFetch['user.id']."', '".$originalFetch['author.type']."', '".$originalFetch['author.id']."', '".$originalFetch['time']."', '".(time() + $_parameter->get('media_cache_time_close'))."', '".$originalFetch['client']."', '".$originalFetch['token']."', '".$originalFetch['secret']."', '".$copyFetch['name']."', '".$copyFetch['nameraw']."', '".$copyFetch['thumbnail']."', '".$copyFetch['thumbnail.path']."', '".$copyFetch['copy']."', '".$originalFetch['mime']."', '".$originalFetch['size']."', '".$copyFetch['duration']."', '".$copyFetch['path']."');
					";
					$addVideosCacheQuery = mysqli_query($db, $addVideosCacheRequest);
					if (!$addVideosCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = array(
							"original" => array(
								"tmp" => $originalFetch['tmp'], 
								"secret" => $originalFetch['secret'], 
								"name" => $originalFetch['name'],
								"nameraw" => $originalFetch['nameraw'],
								"duration" => $originalFetch['duration'],
								"thumbnail" => $originalFetch['thumbnail']
							),
							"copy" => array(
								"tmp" => $copyFetch['tmp'], 
								"secret" => $copyFetch['secret'], 
								"name" => $copyFetch['name'],
								"nameraw" => $copyFetch['nameraw'],
								"duration" => $copyFetch['duration'],
								"thumbnail" => $copyFetch['thumbnail']
							)
						);
						return array(
							"return" => true, 
							"data" => $dataArr
						);
					}
				}else if ($limit == true && mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) > 0) {
					$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0], $getMediaFile['data'][0]['source'], $getMediaFile['data'][0]['display']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
						$originalFetch['path'] = $getMediaFile['data'][0]['display'];
					}else {
						return array("return" => false, "reason" => "");
					}
					$copyFetch = mysqli_fetch_assoc($getCopyQuery);
					$copyFetch['duration'] = $originalFetch['duration'];
					$replaceFileOptions = array(
						"format" => "video", 
						"labelSource" => "display",
						"valueSource" => $originalFetch['path'],
						"labelDestination" => "display",
						"valueDestination" => $copyFetch['path']
					);
					$replaceFile = $_storage->replace($replaceFileOptions);
					if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
						$copyFetch['tmp'] = $replaceFile['destination']['source'];
						$copyFetch['path'] = $replaceFile['destination']['display'];
						$_storage->recheck(array("format" => "video", "label" => "display", "value" => $copyFetch['path']));
						//.
						$replaceFileOptions = array(
							"format" => "image", 
							"labelSource" => "display",
							"valueSource" => $originalFetch['thumbnail.path'],
							"labelDestination" => "display",
							"valueDestination" => $copyFetch['thumbnail.path']
						);
						$replaceFile = $_storage->replace($replaceFileOptions);
						if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
							$_storage->recheck(array("format" => "video", "label" => "display", "value" => $copyFetch['path']));
						}
					}
					$uploadVideosCacheRequest = "UPDATE `videos_cache` SET `time` = '".$originalFetch['time']."', `close` = '".(time() + $_parameter->get('media_cache_time_close'))."', `client` = '".$originalFetch['client']."', `name` = '".$copyFetch['name']."', `nameraw` = '".$originalFetch['nameraw']."', `thumbnail` = '".$copyFetch['thumbnail']."', `thumbnail.path` = '".$copyFetch['thumbnail.path']."', `copy` = '".$copyFetch['copy']."', `mime` = '".$originalFetch['mime']."', `size` = '".$originalFetch['size']."', `duration` = '".$copyFetch['duration']."', `path` = '".$copyFetch['path']."' WHERE `id` = '".$copyFetch['id']."';";
					$uploadVideosCacheQuery = mysqli_query($db, $uploadVideosCacheRequest);
					if (!$uploadVideosCacheQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = array(
							"original" => array(
								"tmp" => $originalFetch['tmp'], 
								"secret" => $originalFetch['secret'], 
								"name" => $originalFetch['name'],
								"nameraw" => $originalFetch['nameraw'],
								"duration" => $originalFetch['duration'],
								"thumbnail" => $originalFetch['thumbnail']
							),
							"copy" => array(
								"tmp" => $copyFetch['tmp'], 
								"secret" => $copyFetch['secret'], 
								"name" => $copyFetch['name'],
								"nameraw" => $copyFetch['nameraw'],
								"duration" => $copyFetch['duration'],
								"thumbnail" => $copyFetch['thumbnail']
							)
						);
						return array(
							"return" => true, 
							"data" => $dataArr
						);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (in_array($action, ["get"])) {
				$label = isset($object['label']) && is_string($object['label']) ? $label = $_tool->convertDatabaseString($object['label']) : null;
				$value = isset($object['value']) && is_string($object['value']) ? $value = $_tool->convertDatabaseString($object['value']) : null;
				$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
				if ($label == null || $value == null) {
					return array("return" => false, "reason" => "");
				}
				$getVideosCacheRequest = "SELECT * FROM `videos_cache` WHERE `".$label."` = '".$value."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
				$getVideosCacheQuery = mysqli_query($db, $getVideosCacheRequest);
				if (!$getVideosCacheQuery) {
					return array("return" => false, "reason" => "");
				}
				$dataArr = array();
				while ($videosFetch = mysqli_fetch_assoc($getVideosCacheQuery)) {
					$mediaDataThis = $videosFetch;
					$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $videosFetch['path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
						$mediaDataThis['tmp'] = $getMediaFile['data'][0]['source'];
					}else {
						continue;
					}
					$dataArr[] = $mediaDataThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}else if (in_array($action, ["replace"])) {
				$sourceName = isset($object['source'], $object['source']['name']) && is_string($object['source']['name']) ? $object['source']['name'] : null;
				$sourceSecret = isset($object['source'], $object['source']['secret']) && is_string($object['source']['secret']) ? $object['source']['secret'] : null;
				$destinationName = isset($object['destination'], $object['destination']['name']) && is_string($object['destination']['name']) ? $object['destination']['name'] : null;
				$destinationSecret = isset($object['destination'], $object['destination']['secret']) && is_string($object['destination']['secret']) ? $object['destination']['secret'] : null;
				if ($sourceName == null || $sourceSecret == null) {
					return array("return" => false, "reason" => "");
				}else if ($destinationName == null || $destinationSecret == null) {
					return array("return" => false, "reason" => "");
				}
				$getVideosSourceRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$sourceSecret."' AND `name` = '".$sourceName."' LIMIT 1;";
				$getVideosSourceQuery = mysqli_query($db, $getVideosSourceRequest);
				$getVideosDestinationRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$destinationSecret."' AND `name` = '".$destinationName."' LIMIT 1;";
				$getVideosDestinationQuery = mysqli_query($db, $getVideosDestinationRequest);
				if (!$getVideosSourceQuery || !$getVideosDestinationQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getVideosSourceQuery) > 0 && mysqli_num_rows($getVideosDestinationQuery) > 0) {
					$videosSourceFetch = mysqli_fetch_assoc($getVideosSourceQuery);
					if (isset($videosSourceFetch['path']) && is_string($videosSourceFetch['path'])) {
						$valueSource = $videosSourceFetch['path'];
					}
					$videosDestinationFetch = mysqli_fetch_assoc($getVideosDestinationQuery);
					if (isset($videosDestinationFetch['path']) && is_string($videosDestinationFetch['path'])) {
						$valueDestination = $videosDestinationFetch['path'];
					}
					if (!isset($valueSource) || !isset($valueDestination)) {
						return array("return" => false, "reason" => "");
					}
					$replaceFileOptions = array(
						"format" => "video", 
						"labelSource" => "display",
						"valueSource" => $valueSource,
						"labelDestination" => "display",
						"valueDestination" => $valueDestination
					);
					$replaceFile = $_storage->replace($replaceFileOptions);
					if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
						$videosSourceFetch['tmp'] = $replaceFile['source']['file'];
						$videosDestinationFetch['tmp'] = $replaceFile['destination']['file'];
						$dataArr = array(
							"original" => array(
								"tmp" => $videosSourceFetch['tmp'],
								"secret" => $videosSourceFetch['secret'],
								"name" => $videosSourceFetch['name'],
								"nameraw" => $videosSourceFetch['nameraw']
							),
							"copy" => array(
								"tmp" => $videosDestinationFetch['tmp'],
								"secret" => $videosDestinationFetch['secret'],
								"name" => $videosDestinationFetch['name'],
								"nameraw" => $videosDestinationFetch['nameraw']
							),
						);
						$_storage->recheck(array("format" => "video", "label" => "display", "value" => $valueDestination));
						return array("return" => true, "data" => $dataArr);
					}else if (isset($replaceFile['return'], $replaceFile['reason']) && $replaceFile['return'] == true) {
						return array("return" => false, "reason" => $replaceFile['reason']);
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "delete") {
				$secret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
				$name = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
				$draft = isset($object['draft']) && is_bool($object['draft']) ? $object['draft'] : true;
				$verify = isset($object['verify']) && is_bool($object['verify']) ? $object['verify'] : true;
				if ($secret == null || $name == null) {
					return array("return" => false, "reason" => "123");
				}
				$getVideosCacheRequestVerify = $getVideosCacheRequestDraft = null;
				if (!$verify) {
					$getVideosCacheRequestVerify = " AND `close` != '0'";
				}
				if (!$draft) {
					$getVideosCacheRequestDraft = " OR `copy` = '".$name."'";
				}
				$getVideosCacheRequest = "SELECT * FROM `videos_cache` WHERE `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' AND (`secret` = '".$secret."' AND (`name` = '".$name."'".$getVideosCacheRequestDraft.")) ".$getVideosCacheRequestVerify." ";
				$getVideosCacheQuery = mysqli_query($db, $getVideosCacheRequest);
				if (!$getVideosCacheQuery) {
					return array("return" => false, "reason" => $getVideosCacheRequest);
				}
				$removedArr = $nameArr = $secretArr = array();
				while ($videosCacheFetch = mysqli_fetch_assoc($getVideosCacheQuery)) {
					$next = 0;
					if (count($removedArr) > 0) {
						foreach ($removedArr as $key => $removedThis) {
							if (isset($removedThis['secret'], $videosCacheFetch['secret'])) {
									//.
							}else {
								unset($removedArr[$key]);
								continue;
							}
							if ($removedThis['secret'] == $videosCacheFetch['secret'] && $removedThis['name'] != $videosCacheFetch['name']) {
								$n++;
								break;
							}
						}
					}
					if ($next == 0) {
						$removedArr[] = array("secret" => $videosCacheFetch['secret'], "name" => $videosCacheFetch['name']);
					}else {
						continue;
					}
					$nameArr[] = $videosCacheFetch['name'];
					$secretArr[] = $videosCacheFetch['secret'];
					$delMediaFileOpts = array(
						"format" => "video",
						"label" => "display",
						"value" => $videosCacheFetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						$delMediaFileOpts = array(
							"format" => "image",
							"label" => "display",
							"value" => $videosCacheFetch['thumbnail.path']
						);
						$delMediaFile = $_storage->delete($delMediaFileOpts);
						mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '".$videosCacheFetch['id']."';");
					}else {
						continue;
					}
				}
				return array("return" => true);
			}else if ($action == "clean") {
				$expiresArr = $removedArr = $nameArr = $secretArr = array();
				$getVideosExpiresRequest = "SELECT * FROM `videos_cache` WHERE (`client` = '".$_client->client(true)."' OR `user.id` = '".$userId."' OR (`author.id` = '".$guyId."' AND `author.type` = '".$guyType."')) AND `close` != '0' AND `close` <= '".time()."';";
				$getVideosExpiresQuery = mysqli_query($db, $getVideosExpiresRequest);
				if (!$getVideosExpiresQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getVideosExpiresQuery) == 0) {
					return array("return" => true);
				}else {
					while ($videosCacheFetch = mysqli_fetch_assoc($getVideosExpiresQuery)) {
						$expiresArr[] = $videosCacheFetch;
					}
				}
				$getVideosOtherRequest = "SELECT * FROM `videos_cache` WHERE `close` != '0' AND `close` <= '".time()."' LIMIT ".rand($_parameter->get('cacheClean_user_limit_min'), $_parameter->get('cacheClean_user_limit_max')).";";
				$getVideosOtherQuery = mysqli_query($db, $getVideosOtherRequest);
				if (!$getVideosOtherQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($getVideosOtherQuery) == 0) {
					//.
				}else {
					while ($videosCacheFetch = mysqli_fetch_assoc($getVideosOtherQuery)) {
						$expiresArr[] = $videosCacheFetch;
					}
				}
				if (count($expiresArr) == 0) {
					return array("return" => true);
				}
				foreach ($expiresArr as $videosCacheFetch) {
					$next = 0;
					if (count($removedArr) > 0) {
						foreach ($removedArr as $key => $removedThis) {
							if (isset($removedThis['secret'], $videosCacheFetch['secret'])) {
									//.
							}else {
								unset($removedArr[$key]);
								continue;
							}
							if ($removedThis['secret'] == $videosCacheFetch['secret'] && $removedThis['name'] != $videosCacheFetch['name']) {
								$n++;
								break;
							}
						}
					}
					if ($next == 0) {
						$removedArr[] = array("secret" => $videosCacheFetch['secret'], "name" => $videosCacheFetch['name']);
					}else {
						continue;
					}
					$nameArr[] = $videosCacheFetch['name'];
					$secretArr[] = $videosCacheFetch['secret'];
					$delMediaFileOpts = array(
						"format" => "video",
						"label" => "display",
						"value" => $videosCacheFetch['path']
					);
					$delMediaFile = $_storage->delete($delMediaFileOpts);
					if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
						$delMediaFileOpts = array(
							"format" => "image",
							"label" => "display",
							"value" => $videosCacheFetch['thumbnail.path']
						);
						$delMediaFile = $_storage->delete($delMediaFileOpts);
						mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '".$videosCacheFetch['id']."';");
					}else {
						continue;
					}
				}
				return array("return" => true);
			}else if ($action == "push") {
				$name = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
				$secret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
				if ($name == null || $secret == null) {
					return array("return" => false, "reason" => "");
				}
				$updateCacheRequest = "UPDATE `videos_cache` SET `close` = '".(time() + $_parameter->get('media_cache_time_close'))."' WHERE `secret` = '".$secret."' AND `secret` = '".$secret."' AND `author.id` = '".$guyType."' AND `author.type` = '".$guyId."';";
				$updateCacheQuery = mysqli_query($db, $updateCacheRequest);
				if (!$updateCacheQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else if ($action == "upload") {
				$name = isset($object['name']) && is_string($object['name']) ? $name = $_tool->convertDatabaseString($object['name']) : null;
				$secret = isset($object['secret']) && is_string($object['secret']) ? $secret = $_tool->convertDatabaseString($object['secret']) : null;
				$multiple = isset($object['multiple']) && is_bool($object['multiple']) ? $multiple = $object['multiple'] : false;
				if ($name == null || $secret == null) {
					return array("return" => false, "reason" => "");
				}
				$client = $_client->client(true);
				$getVideosCacheRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$secret."' AND `name`= '".$name."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
				$getVideosCacheQuery = mysqli_query($db, $getVideosCacheRequest);
				if (!$getVideosCacheQuery) {
					return array("return" => false, "reason" => "");
				}
				$playlist = isset($object['playlist']) && is_string($object['playlist']) ? $object['playlist'] : null;
				$updateVideosCacheRequest = "UPDATE `videos_cache` SET `close` = '".(time() + $_parameter->get('media_cache_time_close'))." WHERE `secret` = '".$secret."' AND `name`= '".$name."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."';";
				$updateVideosCacheQuery = mysqli_query($db, $updateVideosCacheRequest);
				$file = mysqli_fetch_assoc($getVideosCacheQuery);
				$file['name'] = basename($file['name']);
				$file['nameraw'] = $file['nameraw'];
				$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $file['path'], "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
					$file['tmp'] = $getMediaFile['data'][0]['source'];
					$file['mime'] = $getMediaFile['data'][0]['mime'];
					$file['size'] = $getMediaFile['data'][0]['size'];
				}else {
					return array("return" => false, "reason" => "");
				}
				if (!in_array($file['mime'], $_parameter->get('videos_allow_format', true))) {
					//.
				}
				if (isset($file['tmp'])) {
					set_time_limit(0);
					$file['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($file['tmp']).'::'.time().'::'.rand());
					$file['display'] = hash('md5', $file['token']);
					$file['info'] = $this->info('read', $file['tmp'], 'videos');
					if (isset($file['mime']) && is_string($file['mime'])) {
						$file['info']['mime_type'] = $file['mime'];
					}
					$file['file'] = $file['path'] = $file['secret'] = null;
					if ($file['info']['file.size'] > $_parameter->get('videos_allow_size')) {
						//.
					}
					$file['file']['text'] = md5($file['token'].'::'.time().'::'.rand());
					$file['file']['thumbnail'] = hash('md5', $file['file']['text'].'::thumbnail');
					$file['file']['fhd'] = $file['path']['fhd'] = $file['secret']['fhd'] = 0;
					if (1 + 1 == 3 && $multiple == true && ($file['info']['dimension.width'] >= 1920 && $file['info']['dimension.height'] >= 1080)) {
						$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['fhd'] = hash('md5', $file['file']['text'].'::fhd');
							$file['path']['fhd'] = $fileUpload['storage']['display'];
							$file['secret']['fhd'] = $fileUpload['storage']['hash'];
							$file['source']['fhd'] = $fileUpload['storage']['source'];
							//chmod($_client->root().$file['source']['fhd'], 0777);
							exec("ffmpeg -y -i {$_client->root()}{$file['tmp']} -s 1920x1080 -r 30 -map 0 -c:v libx264 -preset slow -movflags faststart -codec:a libmp3lame -b:a 256k -ac 2 -map_metadata -1 {$_client->root()}{$file['source']['fhd']} 2>&1 &", $outputContentFHD);
							if (isset($outputContentFHD)) {
								set_time_limit(0);
								$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $file['path']['fhd']));
								if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
									$file['secret']['fhd'] = $fileRecheck['data']['hash'];
									$file['tmp'] = $fileRecheck['data']['source'];
								}
							}
						}
					}
					$file['file']['hd'] = $file['path']['hd'] = $file['secret']['hd'] = 0;
					if ($multiple == true && ($file['info']['dimension.width'] >= 1280 && $file['info']['dimension.height'] >= 720)) {
						$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['hd'] = hash('md5', $file['file']['text'].'::hd');
							$file['path']['hd'] = $fileUpload['storage']['display'];
							$file['secret']['hd'] = $fileUpload['storage']['hash'];
							$file['source']['hd'] = $fileUpload['storage']['source'];
							//chmod($_client->root().$file['source']['hd'], 0777);
							exec("ffmpeg -y -i {$_client->root()}{$file['tmp']} -s 1280x720 -r 25 -map 0 -c:v libx264 -preset medium -movflags faststart -codec:a libmp3lame -b:a 128k -ac 2 -map_metadata -1 {$_client->root()}{$file['source']['hd']} 2>&1 &", $outputContentHD);
							if (isset($outputContentHD)) {
								set_time_limit(0);
								$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $file['path']['hd']));
								if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
									$file['secret']['hd'] = $fileRecheck['data']['hash'];
									$file['tmp'] = $fileRecheck['data']['source'];
								}
							}
						}
					}
					$file['file']['vga'] = $file['path']['vga'] = $file['secret']['vga'] = 0;
					if ($multiple == true && ($file['info']['dimension.width'] >= 640 && $file['info']['dimension.height'] >= 480)) {
						$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['vga'] = hash('md5', $file['file']['text'].'::vga');
							$file['path']['vga'] = $fileUpload['storage']['display'];
							$file['secret']['vga'] = $fileUpload['storage']['hash'];
							$file['source']['vga'] = $fileUpload['storage']['source'];
							//chmod($_client->root().$file['source']['vga'], 0777);
							exec("ffmpeg -y -i {$_client->root()}{$file['tmp']} -s 680x480 -r 24 -map 0 -c:v libx264 -preset fast -movflags faststart -codec:a libmp3lame -b:a 112k -ac 2 -map_metadata -1 {$_client->root()}{$file['source']['vga']} 2>&1 &", $outputContentVGA);
							if (isset($outputContentVGA)) {
								set_time_limit(0);
								$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $file['path']['vga']));
								if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
									$file['secret']['vga'] = $fileRecheck['data']['hash'];
									$file['tmp'] = $fileRecheck['data']['source'];
								}
							}
						}
					}
					$file['file']['qvga'] = $file['path']['qvga'] = $file['secret']['qvga'] = 0;
					if ($multiple == true && ($file['info']['dimension.width'] >= 320 && $file['info']['dimension.height'] >= 240)) {
						$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $file['mime'], "name" => $file['nameraw']));
						if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
							$file['file']['qvga'] = hash('md5', $file['file']['text'].'::qvga');
							$file['path']['qvga'] = $fileUpload['storage']['display'];
							$file['secret']['qvga'] = $fileUpload['storage']['hash'];
							$file['source']['qvga'] = $fileUpload['storage']['source'];
							//chmod($_client->root().$file['source']['qvga'], 0777);
							exec("ffmpeg -y -i {$_client->root()}{$file['tmp']} -s 320x240 -r 24 -map 0 -c:v libx264 -preset faster -movflags faststart -codec:a libmp3lame -b:a 96k -ac 2 -map_metadata -1 {$_client->root()}{$file['source']['qvga']} 2>&1 &", $outputContentQVGA);
							if (isset($outputContentQVGA)) {
								set_time_limit(0);
								$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $file['path']['qvga']));
								if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
									$file['secret']['qvga'] = $fileRecheck['data']['hash'];
									$file['tmp'] = $fileRecheck['data']['source'];
								}
							}
						}
					}
					$file['name'] = isset($object['info'], $object['info']['name']) && is_string($object['info']['name']) ? $_tool->convertDatabaseString($object['info']['name']) : $_tool->convertDatabaseString($object['info']['nameraw']);
					$file['tags'] = isset($object['info'], $object['info']['tags']) && is_string($object['info']['tags']) ? $object['info']['tags'] : null;
					$file['description'] = isset($object['info'], $object['info']['description']) && is_string($object['info']['description']) ? $_tool->convertDatabaseString($object['info']['description']) : null;
					$file['singer'] = isset($object['info'], $object['info']['singer']) && is_string($object['info']['singer']) ? $_tool->convertDatabaseString($object['info']['singer']) : null;
					$file['secret']['thumbnail'] = $file['path']['thumbnail'] = 0;
					$file['file']['audio'] = $file['secret']['audio'] = $file['path']['audio'] = 0;
					$file['private.view'] = $file['private.comment'] = $file['private.share'] = 4;
					$insertRequest = "
					INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.vga`, `file.qvga`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) 
					VALUES (NULL, '".$userId."', '".$guyType."', '".$guyId."', '".$playlist."', '".time()."', '".$file['token']."', '".$file['display']."', '".$file['name']."', '".$file['nameraw']."', '".$file['tags']."', '".$file['description']."', '".$file['private.view']."', '".$file['private.comment']."', '".$file['private.share']."', '".$file['file']['thumbnail']."', '".$file['file']['audio']."', '".$file['file']['hd']."', '".$file['file']['vga']."', '".$file['file']['qvga']."', '".$file['secret']['thumbnail']."', '".$file['secret']['audio']."', '".$file['secret']['hd']."', '".$file['secret']['vga']."', '".$file['secret']['qvga']."', '".$file['path']['thumbnail']."', '".$file['path']['audio']."', '".$file['path']['hd']."', '".$file['path']['vga']."', '".$file['path']['qvga']."', '".$file['info']['file.datetime']."', '".$file['info']['file.size']."', '".$file['info']['codec_name']."', '".$file['info']['codec_long_name']."', '".$file['info']['dimension.height']."', '".$file['info']['dimension.width']."', '".$file['info']['display.ratio']."', '".$file['info']['bitrate']."', '".$file['info']['framerate']."', '".$file['info']['duration']."', '".$file['info']['mime_type']."', '".$file['info']['audio.codec_name']."', '".$file['info']['audio.codec_long_name']."', '".$file['info']['audio.profile']."', '".$file['info']['audio.codec_type']."', '".$file['info']['audio.codec_time_base']."', '".$file['info']['audio.codec_tag_string']."', '".$file['info']['audio.channels']."', '".$file['info']['audio.channel_layout']."', '".$file['info']['audio.duration']."', '".$file['info']['audio.bit_rate']."');
					";
					$insertQuery = mysqli_query($db, $insertRequest);
					$videoId = mysqli_insert_id($db);
					$getFileRequest = "SELECT * FROM `videos_cache` WHERE (`name`= '".$name."' OR `copy`= '".$name."') AND `secret` = '".$secret."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
					$getFileQuery = mysqli_query($db, $getFileRequest);
					while ($fileFetch = mysqli_fetch_assoc($getFileQuery)) {
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileFetch['thumbnail.path'], "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
							$fileUpload = $_storage->upload(array("format" => "image", "move" => "rename", "file" => $getMediaFile['data'][0]['source'], "name" => $file['file']['thumbnail']));
							if (isset($fileUpload['return'], $fileUpload['storage'], $fileUpload['storage']['source']) && $fileUpload['return'] == true) {
								$file['path']['thumbnail'] = $fileUpload['storage']['display'];
								$file['secret']['thumbnail'] = $fileUpload['storage']['hash'];
								mysqli_query($db, "UPDATE `videos_info` SET `path.thumbnail` = '".$file['path']['thumbnail']."', `secret.thumbnail` = '".$file['secret']['thumbnail']."' WHERE `id` = '".$videoId."' LIMIT 1;");
							}
						}
						$_storage->delete(array("format" => "video", "label" => "display", "value" => $fileFetch['path']));
						//. $_storage->delete(array("format" => "image", "label" => "display", "value" => $fileFetch['thumbnail.path']));
						mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '".$fileFetch['id']."';");
					}
					return array("return" => true, "id" => $videoId);
 				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function info ($action, $file, $format) {
		if ($action == "read") {
			if ($format == "photos" || $format == "image") {
				$data['aperture.f'] = $data['b.o.m'] = $data['size.height'] = $data['size.width'] = $data['file.datetime'] = $data['file.size'] = $data['file.type'] = $data['file.source'] = $data['flash'] = $data['focal.length'] = $data['iso'] = $data['make'] = $data['metering.mode'] = $data['mime_type'] = $data['model'] = $data['software'] = $data['ccd.width'] = $data['exposure.time'] = $data['exposure.mode'] = $data['f_number'] = $data['aperture.max_value'] = $data['sensing.method'] = $data['shutter.speed'] = $data['exposure.bias_value'] = $data['digital_zoom.ratio'] = 0;
				if ($file != null) {
					$info = exif_read_data($file, 0, true);
					if (isset($file)) {
						$data['tmp'] = $file;
					}
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
			}else if ($format == "music" || $format == "audio") {
				$data['name'] = $data['artists'] = $data['author'] = $data['lyrics'] = $data['file.datetime'] = $data['file.size'] = $data['bitrate'] = $data['codec_name'] = $data['codec_long_name'] = $data['duration'] = $data['mime_type'] =  0;
				if ($file != null) {
					exec("ffprobe -v quiet -print_format json -show_format -show_streams {$file} 2>&1 &", $info);
					$infoData = null;
					foreach ($info as $i => $info_v) { 
						$infoData .= $info_v;
					}
					$info = json_decode($infoData, true);
					if (isset($file)) {
						$data['tmp'] = $file;
					}
					if (isset($info['streams'][0]['codec_name'])) {
						$data['codec_name'] = $info['streams'][0]['codec_name'];
					}
					if (isset($info['streams'][0]['codec_long_name'])) {
						$data['codec_long_name'] = $info['streams'][0]['codec_long_name'];
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
			}else if ($format == "video" || $format == "videos") {
				$data['name'] = $data['file.datetime'] = $data['file.size'] = $data['bitrate'] = $data['framerate'] = $data['duration'] = $data['mime_type'] = $data['codec_name'] = $data['codec_long_name'] = $data['display.ratio'] = $data['dimension.height'] = $data['dimension.width'] = $data['audio.codec_name'] = $data['audio.codec_long_name'] = $data['audio.profile'] = $data['audio.codec_type'] =  $data['audio.codec_time_base'] = $data['audio.codec_tag_string'] = $data['audio.channels'] = $data['audio.channel_layout'] = $data['audio.duration'] = $data['audio.bit_rate'] = 0;
				if ($file != null) {
					exec("ffprobe -v quiet -print_format json -show_format -show_streams {$file} 2>&1 &", $info);
					$infoData = null;
					foreach ($info as $i => $info_v) { 
						$infoData .= $info_v;
					}
					$info = json_decode($infoData, true);
					if (isset($file)) {
						$data['tmp'] = $file;
					}
					if (isset($info['streams'][0]['codec_name'])) {
						$data['codec_name'] = $info['streams'][0]['codec_name'];
					}
					if (isset($info['streams'][0]['codec_long_name'])) {
						$data['codec_long_name'] = $info['streams'][0]['codec_long_name'];
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