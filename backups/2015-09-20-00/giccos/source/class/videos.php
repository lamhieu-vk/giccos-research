<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class videos {
	function __construct () {
		$GLOBALS["_videos"] = $this;
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
	function guy ($object) {
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
		if (isset($object['guy'], $object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
		if (isset($object['author'], $object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}else if ($authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "");
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
	function thumbnail ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "qwda");
		}else {
			$guyArr = array("type" => $guyType, "id" => $guyId);
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$videoId = isset($object['id']) && is_numeric($object['id']) ? intval($object['id']) : null;
			$thumbnailSize = isset($object['size']) && is_string($object['size']) ? $_tool->convertDatabaseString($object['size']) : null;
			$thumbnailPath = isset($object['path']) && is_string($object['path']) ? $_tool->convertDatabaseString($object['path']) : null;
			$thumbnailTime = isset($object['time']) && is_string($object['time']) ? is_numeric($object['time']) : null;
		}else {
			return array("return" => false, "reason" => "xasd");
		}
	}
	function preview ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "23");
		}else {
			$guyArr = array("type" => $guyType, "id" => $guyId);
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["get"])) {
			$videoId = isset($object['id']) && is_numeric($object['id']) && $object['id'] > 0 ? intval($object['id']) : null;
			if ($videoId == null) {
				$videoLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
				$videoValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
				if ($videoLabel != null || $videoValue != null) {
					if ($videoLabel == "file") {
						$getPreviewRequest = "SELECT * FROM `videos_preview` WHERE `videos.id` IN (SELECT `id` FROM `videos_info` WHERE (`file.hd` = '".$videoValue."' OR `file.vga` = '".$videoValue."' OR `file.qvga` = '".$videoValue."') AND `preview` = '1') LIMIT 1;";
					}else {
						$getPreviewRequest = "SELECT * FROM `videos_preview` WHERE `videos.id` IN (SELECT `id` FROM `videos_info` WHERE `".$videoLabel."` = '".$videoValue."' AND `preview` = '1') LIMIT 1;";
					}
				}else {
					return array("return" => false, "reason" => "dfsdf");
				}
			}else {
				$getPreviewRequest = "SELECT * FROM `videos_preview` WHERE `videos.id` = '".$videoId."' LIMIT 1;";
			}
			if (!isset($getPreviewRequest) || !is_string($getPreviewRequest)) {
				return array("return" => false, "reason" => "dfsdf");
			}
			$getPreviewQuery = mysqli_query($db, $getPreviewRequest);
			if (!$getPreviewQuery) {
				return array("return" => false, "reason" => "sdsda");
			}else {
				if (mysqli_num_rows($getPreviewQuery) == 0) {
					return array("return" => true, "exists" => false, "x" => $getPreviewRequest);
				}else {
					$dataArr = array();
					$thisPreview = mysqli_fetch_assoc($getPreviewQuery);
					if (isset($thisPreview['distance'])) {
						$dataArr['interval'] = $dataArr['distance'] = $thisPreview['distance'];
					}
					if (isset($thisPreview['size.width'])) {
						$dataArr['size']['width'] = $thisPreview['size.width'];
					}
					if (isset($thisPreview['size.height'])) {
						$dataArr['size']['height'] = $thisPreview['size.height'];
					}
					return array("return" => true, "exists" => true, "data" => $dataArr);
				}
			}
		}else {
			return array("return" => false, "reason" => "dfsdf");
		}
	}
	function cache ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "23");
		}else {
			$guyArr = array("type" => $guyType, "id" => $guyId);
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$fileArr = isset($object['file']) && is_array($object['file']) && count($object['file']) ? $object['file'] : null;
			if ($fileArr == null) {
				return array("return" => false, "reason" => "1");
			}
			if (!isset($fileArr['tmp_name']) || !isset($fileArr['name']) || !isset($fileArr['type']) || !isset($fileArr['size'])) {
				return array("return" => false, "reason" => "2");
			}
			$cacheTimeout = $_parameter->get('video_cache_timeout');
			$fileArr['tmp'] = $fileArr['tmp_name'];
			$infoArr = $this->info('read', $fileArr['tmp'], 'video');
			$clientToken = $_client->client(true);
			$fileArr['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($fileArr['tmp']));
			$fileArr['secret'] = hash('crc32', $token);
			$fileArr['nameraw'] = isset($fileArr['name']) && is_string($fileArr['name']) ? $_tool->convertDatabaseString($fileArr['name']) : null;
			$fileArr['name'] = hash('crc32', md5($fileArr['secret'].'::'.rand()));
			$fileArr['thumbnail'] = hash('md5', $fileArr['name']);
			$fileArr['thumbnail.path'] = null;
			$fileArr['copy'] = 0;
			$fileArr['mime'] = isset($fileArr['type']) && is_string($fileArr['type']) ? $_tool->convertDatabaseString($fileArr['type']) : null;
			$fileArr['size'] = isset($fileArr['size']) && (is_string($fileArr['size']) || is_numeric($fileArr['size'])) ? intval($fileArr['size']) : 0;
			$fileArr['duration'] = isset($infoArr['duration']) && (is_string($infoArr['duration']) || is_numeric($infoArr['duration']) ) ? intval($infoArr['duration']) : 0;
			$fileArr['resolution'] = array();
			if (isset($clientToken, $fileArr['token'], $fileArr['secret'], $fileArr['nameraw'], $fileArr['name'], $fileArr['mime'], $fileArr['size'])) {
				if (!isset($fileArr['error']) || $fileArr['error'] != null) {
					return array("return" => false, "reason" => "3");
				}else if (!isset($fileArr['tmp']) || $fileArr['tmp'] == null) {
					return array("return" => false, "reason" => "2xs");
				}/*else if ($fileArr['size'] > $_parameter->get('videos_allow_size')) {
					return array("return" => false, "reason" => "asdc");
				}*/
				$fileUpload = $_storage->upload(array("format" => "video", "move" => "copy", "file" => $fileArr['tmp'], "mime" => $fileArr['type'], "name" => $fileArr['name'], "strip" => false));
				if (isset($fileUpload['return'], $fileUpload['data']) && $fileUpload['return'] == true) {
					$fileArr['path'] = $fileUpload['data']['display'];
					$fileArr['tmp'] = $fileUpload['data']['source'];
				}else {
					return array("return" => false, "reason" => "123sa");
				}
				//.
				$addFileRequest = "
				INSERT INTO `videos_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.type`, `author.id`) 
				VALUES (null, '".time()."', '".(time() + $cacheTimeout)."', '".$clientToken."', '".$fileArr['token']."', '".$fileArr['secret']."', '".$fileArr['name']."', '".$fileArr['nameraw']."', '".$fileArr['thumbnail']."', '".$fileArr['thumbnail.path']."', '".$fileArr['copy']."', '".$fileArr['mime']."', '".$fileArr['size']."', '".$fileArr['duration']."', '".$fileArr['path']."', '".$userId."', '".$guyType."', '".$guyId."');
				";
				$addFileQuery = mysqli_query($db, $addFileRequest);
				if (!$addFileQuery) {
					return array("return" => false, "reason" => $addFileRequest);
				}else {
					$idInserted = mysqli_insert_id($db);
					$fileUpload = $_storage->upload(array("format" => "image", "move" => "none", "file" => "none", "name" => $thumbnail, "mime" => $_parameter->get('videos_thumbnail_image_mime')));
					if (isset($fileUpload['return'], $fileUpload['data']) && $fileUpload['return'] == true) {
						$thumbnailPath = $fileUpload['data']['source'];
						$thumbnailDisplay = $fileUpload['data']['display'];
						$thumbnailPosition = intval(rand(0, $fileArr['duration']));
						$thumbnailUpdate = mysqli_query($db, "UPDATE `videos_cache` SET `thumbnail.path` = '".$fileUpload['data']['display']."' WHERE `id` = '".$idInserted."' ;");
						$thumbnailCreate = $this->createThumbnail(array("video" => $fileArr['tmp'], "thumbnail" => $thumbnailPath, "position" => $thumbnailPosition, "dimension" => "1280x720"));
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $thumbnailDisplay));
					}else {
						//.
					}
					$dataArr = array(
						"tmp" => $fileArr['tmp'],
						"thumbnail" => $fileArr['thumbnail'],
						"secret" => $fileArr['secret'], 
						"name" => $fileArr['name'],
						"nameraw" => $fileArr['nameraw'],
						"mime" => $fileArr['mime'], 
						"size" => $fileArr['size'],
						"duration" => $fileArr['duration']
					);
					return array("return" => true, "data" => $dataArr);
				}
			}else {
				return array("return" => false, "reason" => "wezf");
			}
		}else if (in_array($action, ["copy"])) {
			$fileSecret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
			$fileName = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
			$limit = isset($object['limit']) && is_bool($object['limit']) ? $object['limit'] : true;
			if ($fileSecret == null || $fileName == null) {
				return array("return" => false, "reason" => "");
			}
			$getOriginalRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$fileSecret."' AND `name` = '".$fileName."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
			$getOriginalQuery = mysqli_query($db, $getOriginalRequest);
			$getCopyRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$fileSecret."' AND `copy` = '".$fileName."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
			$getCopyQuery = mysqli_query($db, $getCopyRequest);
			if (!$getOriginalQuery || !$getCopyQuery) {
				return array("return" => false, "reason" => "");
			}
			if ($limit == false || (mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) == 0)) {
				$cacheTimeout = $_parameter->get('video_cache_timeout');
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
				if (isset($fileUpload['return'], $fileUpload['data'], $fileUpload['data']['source']) && $fileUpload['return'] == true) {
					$copyFetch['path'] = $fileUpload['data']['display'];
					$copyFetch['tmp'] = $fileUpload['data']['source'];
					$_storage->recheck(array("format" => "video", "label" => "display", "value" => $copyFetch['path']));
					//.
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $originalFetch['thumbnail.path'], "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
						$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $getMediaFile['data'][0]['source'], "name" => $copyFetch['thumbnail']));
						if (isset($fileUpload['return'], $fileUpload['data'], $fileUpload['data']['source']) && $fileUpload['return'] == true) {
							$copyFetch['thumbnail.path'] = $fileUpload['data']['display'];
							$_storage->recheck(array("format" => "image", "label" => "display", "value" => $copyFetch['thumbnail.path']));
						}
					}
				}else {
					return array("return" => false, "reason" => "");
				}
				$addFileRequest = "
				INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) 
				VALUES (null, '".$originalFetch['user.id']."', '".$originalFetch['author.type']."', '".$originalFetch['author.id']."', '".$originalFetch['time']."', '".(time() + $cacheTimeout)."', '".$originalFetch['client']."', '".$originalFetch['token']."', '".$originalFetch['secret']."', '".$copyFetch['name']."', '".$copyFetch['nameraw']."', '".$copyFetch['thumbnail']."', '".$copyFetch['thumbnail.path']."', '".$copyFetch['copy']."', '".$originalFetch['mime']."', '".$originalFetch['size']."', '".$copyFetch['duration']."', '".$copyFetch['path']."');
				";
				$addFileQuery = mysqli_query($db, $addFileRequest);
				if (!$addFileQuery) {
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
					return array("return" => true, "data" => $dataArr);
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
				$uploadFileRequest = "UPDATE `videos_cache` SET `time` = '".$originalFetch['time']."', `close` = '".(time() + $_parameter->get('media_cache_time_close'))."', `client` = '".$originalFetch['client']."', `name` = '".$copyFetch['name']."', `nameraw` = '".$originalFetch['nameraw']."', `thumbnail` = '".$copyFetch['thumbnail']."', `thumbnail.path` = '".$copyFetch['thumbnail.path']."', `copy` = '".$copyFetch['copy']."', `mime` = '".$originalFetch['mime']."', `size` = '".$originalFetch['size']."', `duration` = '".$copyFetch['duration']."', `path` = '".$copyFetch['path']."' WHERE `id` = '".$copyFetch['id']."';";
				$uploadFileQuery = mysqli_query($db, $uploadFileRequest);
				if (!$uploadFileQuery) {
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
					return array("return" => true, "data" => $dataArr);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($action, ["get"])) {
			$fileLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$fileValue = isset($object['value']) && is_string($object['value']) ? $_tool->convertDatabaseString($object['value']) : null;
			$limit = isset($object['limit']) && is_string($object['limit']) ? $limit = $_tool->convertDatabaseString($object['limit']) : null;
			if ($fileLabel == null || $fileValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getFileCacheRequest = "SELECT * FROM `videos_cache` WHERE `".$fileLabel."` = '".$fileValue."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
			$getFileCacheQuery = mysqli_query($db, $getFileCacheRequest);
			if (!$getFileCacheQuery) {
				return array("return" => false, "reason" => "");
			}
			$dataArr = array();
			while ($videosFetch = mysqli_fetch_assoc($getFileCacheQuery)) {
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
			$sourceName = isset($object['source'], $object['source']['name']) && is_string($object['source']['name']) ? $_tool->convertDatabaseString($object['source']['name']) : null;
			$sourceSecret = isset($object['source'], $object['source']['secret']) && is_string($object['source']['secret']) ? $_tool->convertDatabaseString($object['source']['secret']) : null;
			$destinationName = isset($object['destination'], $object['destination']['name']) && is_string($object['destination']['name']) ? $_tool->convertDatabaseString($object['destination']['name']) : null;
			$destinationSecret = isset($object['destination'], $object['destination']['secret']) && is_string($object['destination']['secret']) ? $_tool->convertDatabaseString($object['destination']['secret']) : null;
			if ($sourceName == null || $sourceSecret == null) {
				return array("return" => false, "reason" => "");
			}else if ($destinationName == null || $destinationSecret == null) {
				return array("return" => false, "reason" => "");
			}
			$getFileSourceRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$sourceSecret."' AND `name` = '".$sourceName."' LIMIT 1;";
			$getFileSourceQuery = mysqli_query($db, $getFileSourceRequest);
			$getFileDestinationRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$destinationSecret."' AND `name` = '".$destinationName."' LIMIT 1;";
			$getFileDestinationQuery = mysqli_query($db, $getFileDestinationRequest);
			if (!$getFileSourceQuery || !$getFileDestinationQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getFileSourceQuery) > 0 && mysqli_num_rows($getFileDestinationQuery) > 0) {
				$videosSourceFetch = mysqli_fetch_assoc($getFileSourceQuery);
				if (isset($videosSourceFetch['path']) && is_string($videosSourceFetch['path'])) {
					$valueSource = $videosSourceFetch['path'];
				}
				$videosDestinationFetch = mysqli_fetch_assoc($getFileDestinationQuery);
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
			$fileSecret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
			$fileName = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
			$fileDraft = isset($object['draft']) && is_bool($object['draft']) ? $object['draft'] : true;
			$fileVerify = isset($object['verify']) && is_bool($object['verify']) ? $object['verify'] : true;
			if ($fileSecret == null || $fileName == null) {
				return array("return" => false, "reason" => "123");
			}
			$getFileCacheRequestVerify = $getFileCacheRequestDraft = null;
			if (!$fileVerify) {
				$getFileCacheRequestVerify = " AND `close` != '0'";
			}
			if (!$fileDraft) {
				$getFileCacheRequestDraft = " OR `copy` = '".$fileName."'";
			}
			$getFileCacheRequest = "SELECT * FROM `videos_cache` WHERE `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' AND (`secret` = '".$fileSecret."' AND (`name` = '".$fileName."'".$getFileCacheRequestDraft.")) ".$getFileCacheRequestVerify." ;";
			$getFileCacheQuery = mysqli_query($db, $getFileCacheRequest);
			if (!$getFileCacheQuery) {
				return array("return" => false, "reason" => $getFileCacheRequest);
			}
			$fileRemovedArr = $fileNameArr = $fileSecretArr = array();
			while ($fileCacheThis = mysqli_fetch_assoc($getFileCacheQuery)) {
				$next = 0;
				if (count($fileRemovedArr) > 0) {
					foreach ($fileRemovedArr as $key => $removedThis) {
						if (!isset($removedThis['secret']) || !isset($fileCacheThis['secret'])) {
							unset($fileRemovedArr[$key]);
							continue;
						}
						if ($removedThis['secret'] == $fileCacheThis['secret'] && $removedThis['name'] != $fileCacheThis['name']) {
							$next++;
							break;
						}
					}
				}
				if ($next == 0) {
					$fileRemovedArr[] = array("secret" => $fileCacheThis['secret'], "name" => $fileCacheThis['name']);
				}else {
					continue;
				}
				$fileNameArr[] = $fileCacheThis['name'];
				$fileSecretArr[] = $fileCacheThis['secret'];
				$delMediaFileOpts = array(
					"format" => "video",
					"label" => "display",
					"value" => $fileCacheThis['path']
				);
				$delMediaFile = $_storage->delete($delMediaFileOpts);
				$delMediaThumbnailOpts = array(
					"format" => "image",
					"label" => "display",
				 	"value" => $fileCacheThis['thumbnail.path']
				);
				$delMediaThumbnail = $_storage->delete($delMediaThumbnailOpts);
				if (isset($delMediaFile['return'], $delMediaThumbnail['return']) && $delMediaFile['return'] == true && $delMediaThumbnail['return'] == true) {
					mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '".$fileCacheThis['id']."';");
				}else {
					continue;
				}
			}
			return array("return" => true);
		}else if (in_array($action, ["clean"])) {
			$fileExpiredArr = $fileRemovedArr = $fileNameArr = $fileSecretArr = array();
			$clientToken = $_client->client(true);
			$getVideosExpiresRequest = "SELECT * FROM `videos_cache` WHERE (`client` = '".$clientToken."' OR `user.id` = '".$userId."' OR (`author.id` = '".$guyId."' AND `author.type` = '".$guyType."')) AND `close` != '0' AND `close` <= '".time()."';";
			$getVideosExpiresQuery = mysqli_query($db, $getVideosExpiresRequest);
			if (!$getVideosExpiresQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getVideosExpiresQuery) == 0) {
				return array("return" => true);
			}else {
				while ($fileCacheThis = mysqli_fetch_assoc($getVideosExpiresQuery)) {
					$fileExpiredArr[] = $fileCacheThis;
				}
			}
			$getVideosOtherRequest = "SELECT * FROM `videos_cache` WHERE `close` != '0' AND `close` <= '".time()."' LIMIT 10;";
			$getVideosOtherQuery = mysqli_query($db, $getVideosOtherRequest);
			if (!$getVideosOtherQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getVideosOtherQuery) == 0) {
				//.
			}else {
				while ($fileCacheThis = mysqli_fetch_assoc($getVideosOtherQuery)) {
					$fileExpiredArr[] = $fileCacheThis;
				}
			}
			if (count($fileExpiredArr) == 0) {
				return array("return" => true);
			}
			foreach ($fileExpiredArr as $fileCacheThis) {
				$this->cache(array("user" => array("id" => $userId), "guy" => array("type" => $guyType, "id" => $guyId), "action" => "delete", "secret" => $fileCacheThis['secret'], "name" => $fileCacheThis['name'], "verify" => false));
			}
			return array("return" => true);
		}else if (in_array($action, ["push"])) {
			$fileName = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
			$fileSecret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
			if ($fileName == null || $fileSecret == null) {
				return array("return" => false, "reason" => "");
			}
			$cacheTimeout = $_parameter->get('video_cache_timeout');
			$updateCacheRequest = "UPDATE `videos_cache` SET `close` = '".(time() + $cacheTimeout)."' WHERE `secret` = '".$fileSecret."' AND `name` = '".$fileName."' AND `author.id` = '".$guyType."' AND `author.type` = '".$guyId."';";
			$updateCacheQuery = mysqli_query($db, $updateCacheRequest);
			if (!$updateCacheQuery) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => true);
			}
		}else if (in_array($action, ["upload"])) {
			$fileName = isset($object['name']) && is_string($object['name']) ? $_tool->convertDatabaseString($object['name']) : null;
			$fileSecret = isset($object['secret']) && is_string($object['secret']) ? $_tool->convertDatabaseString($object['secret']) : null;
			$multiple = isset($object['multiple']) && is_bool($object['multiple']) ? $object['multiple'] : false;
			if ($fileName == null || $fileSecret == null) {
				return array("return" => false, "reason" => "");
			}
			$clientToken = $_client->client(true);
			$cacheTimeout = $_parameter->get('video_cache_timeout');
			$getFileRequest = "SELECT * FROM `videos_cache` WHERE `secret` = '".$fileSecret."' AND `name`= '".$fileName."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
			$getFileQuery = mysqli_query($db, $getFileRequest);
			if (!$getFileQuery) {
				return array("return" => false, "reason" => "");
			}
			$playlist = isset($object['playlist']) && is_string($object['playlist']) ? $_tool->convertDatabaseString($object['playlist']) : null;
			$updateFileRequest = "UPDATE `videos_cache` SET `close` = '".(time() + $cacheTimeout)." WHERE `secret` = '".$fileSecret."' AND `name`= '".$fileName."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."';";
			$updateFileQuery = mysqli_query($db, $updateFileRequest);
			$fileArr = mysqli_fetch_assoc($getFileQuery);
			$fileArr['name'] = basename($fileArr['name']);
			$fileArr['nameraw'] = $fileArr['nameraw'];
			$getMediaFile = $_storage->get(array("format" => "video", "label" => "display", "value" => $fileArr['path'], "limit" => "LIMIT 1"));
			if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
				$fileArr['tmp'] = $getMediaFile['data'][0]['source'];
				$fileArr['mime'] = $getMediaFile['data'][0]['mime'];
				$fileArr['size'] = $getMediaFile['data'][0]['size'];
			}else {
				return array("return" => false, "reason" => "");
			}
			if (!in_array($fileArr['mime'], $_parameter->get('videos_allow_format', true))) {
				//.
			}
			if (!isset($fileArr['tmp'])) {
				return array("return" => false, "reason" => "");
			}else {
				set_time_limit(0);
				$fileArr['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($fileArr['tmp']).'::'.time().'::'.rand());
				$fileArr['display'] = hash('md5', $fileArr['token']);
				$fileArr['status'] = "official";
				$fileArr['info'] = $this->info('read', $fileArr['tmp'], 'videos');
				if (isset($fileArr['mime']) && is_string($fileArr['mime'])) {
					$fileArr['info']['mime_type'] = $fileArr['mime'];
				}
				$fileArr['file'] = $fileArr['path'] = $fileArr['secret'] = null;
				if ($fileArr['info']['file.size'] > $_parameter->get('videos_allow_size')) {
					//.
				}
				$fileArr['file']['text'] = md5($fileArr['token'].'::'.time().'::'.rand());
				$fileArr['file']['thumbnail'] = hash('md5', $fileArr['file']['text'].'::thumbnail');
				$fileArr['file']['fhd'] = $fileArr['path']['fhd'] = $fileArr['secret']['fhd'] = 0;
				if (1 + 1 == 3 && $multiple == true && ($fileArr['info']['dimension.width'] >= 1920 && $fileArr['info']['dimension.height'] >= 1080)) {
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$fileArr['file']['fhd'] = hash('md5', $fileArr['file']['text'].'::fhd');
						$fileArr['path']['fhd'] = $fileUpload['storage']['display'];
						$fileArr['secret']['fhd'] = $fileUpload['storage']['hash'];
						$fileArr['source']['fhd'] = $fileUpload['storage']['source'];
						exec("ffmpeg -y -i {$_client->root()}{$fileArr['tmp']} -s 1920x1080 -r 30 -map 0 -c:v libx264 -preset slow -movflags faststart -codec:a libmp3lame -b:a 256k -ac 2 -map_metadata -1 {$_client->root()}{$fileArr['source']['fhd']} 2>&1 &", $outputContentFHD);
						if (isset($outputContentFHD)) {
							set_time_limit(0);
							$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $fileArr['path']['fhd']));
							if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
								$fileArr['secret']['fhd'] = $fileRecheck['data']['hash'];
								$fileArr['tmp'] = $fileRecheck['data']['source'];
							}
						}
					}
				}
				$fileArr['file']['hd'] = $fileArr['path']['hd'] = $fileArr['secret']['hd'] = 0;
				if ($multiple == true && ($fileArr['info']['dimension.width'] >= 1280 && $fileArr['info']['dimension.height'] >= 720)) {
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$fileArr['file']['hd'] = hash('md5', $fileArr['file']['text'].'::hd');
						$fileArr['path']['hd'] = $fileUpload['storage']['display'];
						$fileArr['secret']['hd'] = $fileUpload['storage']['hash'];
						$fileArr['source']['hd'] = $fileUpload['storage']['source'];
						//chmod($_client->root().$fileArr['source']['hd'], 0777);
						exec("ffmpeg -y -i {$_client->root()}{$fileArr['tmp']} -s 1280x720 -r 25 -map 0 -c:v libx264 -preset medium -movflags faststart -codec:a libmp3lame -b:a 128k -ac 2 -map_metadata -1 {$_client->root()}{$fileArr['source']['hd']} 2>&1 &", $outputContentHD);
						if (isset($outputContentHD)) {
							set_time_limit(0);
							$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $fileArr['path']['hd']));
							if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
								$fileArr['secret']['hd'] = $fileRecheck['data']['hash'];
								$fileArr['tmp'] = $fileRecheck['data']['source'];
							}
						}
					}
				}
				$fileArr['file']['vga'] = $fileArr['path']['vga'] = $fileArr['secret']['vga'] = 0;
				if ($multiple == true && ($fileArr['info']['dimension.width'] >= 640 && $fileArr['info']['dimension.height'] >= 480)) {
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$fileArr['file']['vga'] = hash('md5', $fileArr['file']['text'].'::vga');
						$fileArr['path']['vga'] = $fileUpload['storage']['display'];
						$fileArr['secret']['vga'] = $fileUpload['storage']['hash'];
						$fileArr['source']['vga'] = $fileUpload['storage']['source'];
						//chmod($_client->root().$fileArr['source']['vga'], 0777);
						exec("ffmpeg -y -i {$_client->root()}{$fileArr['tmp']} -s 680x480 -r 24 -map 0 -c:v libx264 -preset fast -movflags faststart -codec:a libmp3lame -b:a 112k -ac 2 -map_metadata -1 {$_client->root()}{$fileArr['source']['vga']} 2>&1 &", $outputContentVGA);
						if (isset($outputContentVGA)) {
							set_time_limit(0);
							$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $fileArr['path']['vga']));
							if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
								$fileArr['secret']['vga'] = $fileRecheck['data']['hash'];
								$fileArr['tmp'] = $fileRecheck['data']['source'];
							}
						}
					}
				}
				$fileArr['file']['qvga'] = $fileArr['path']['qvga'] = $fileArr['secret']['qvga'] = 0;
				if ($multiple == true && ($fileArr['info']['dimension.width'] >= 320 && $fileArr['info']['dimension.height'] >= 240)) {
					$fileUpload = $_storage->upload(array("format" => "video", "move" => "none", "file" => "none", "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileUpload['return'], $fileUpload['storage']) && $fileUpload['return'] == true) {
						$fileArr['file']['qvga'] = hash('md5', $fileArr['file']['text'].'::qvga');
						$fileArr['path']['qvga'] = $fileUpload['storage']['display'];
						$fileArr['secret']['qvga'] = $fileUpload['storage']['hash'];
						$fileArr['source']['qvga'] = $fileUpload['storage']['source'];
						//chmod($_client->root().$fileArr['source']['qvga'], 0777);
						exec("ffmpeg -y -i {$_client->root()}{$fileArr['tmp']} -s 320x240 -r 24 -map 0 -c:v libx264 -preset faster -movflags faststart -codec:a libmp3lame -b:a 96k -ac 2 -map_metadata -1 {$_client->root()}{$fileArr['source']['qvga']} 2>&1 &", $outputContentQVGA);
						if (isset($outputContentQVGA)) {
							set_time_limit(0);
							$fileRecheck = $_storage->recheck(array("format" => "video", "label" => "display", "value" => $fileArr['path']['qvga']));
							if (isset($fileRecheck['return'], $fileRecheck['data']) && $fileRecheck['return'] == true) {
								$fileArr['secret']['qvga'] = $fileRecheck['data']['hash'];
								$fileArr['tmp'] = $fileRecheck['data']['source'];
							}
						}
					}
				}
				$fileArr['name'] = isset($object['info'], $object['info']['name']) && is_string($object['info']['name']) ? $_tool->convertDatabaseString($object['info']['name']) : $_tool->convertDatabaseString($object['info']['nameraw']);
				$fileArr['tags'] = isset($object['info'], $object['info']['tags']) && is_string($object['info']['tags']) ? $object['info']['tags'] : null;
				$fileArr['description'] = isset($object['info'], $object['info']['description']) && is_string($object['info']['description']) ? $_tool->convertDatabaseString($object['info']['description']) : null;
				$fileArr['singer'] = isset($object['info'], $object['info']['singer']) && is_string($object['info']['singer']) ? $_tool->convertDatabaseString($object['info']['singer']) : null;
				$fileArr['path']['thumbnail'] = 0;
				$fileArr['path']['audio'] = 0;
				$fileArr['preview']['path'] = 0;
				$fileArr['preview'] = 0;
				$fileArr['private.view'] = $fileArr['private.comment'] = $fileArr['private.share'] = 4;
				$insertFileRequest = "
				INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `status`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.hd`, `file.vga`, `file.qvga`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `preview`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) 
				VALUES (NULL, '".$userId."', '".$guyType."', '".$guyId."', '".$playlist."', '".time()."', '".$fileArr['token']."', '".$fileArr['display']."', '".$fileArr['status']."', '".$fileArr['name']."', '".$fileArr['nameraw']."', '".$fileArr['tags']."', '".$fileArr['description']."', '".$fileArr['private.view']."', '".$fileArr['private.comment']."', '".$fileArr['private.share']."', '".$fileArr['file']['hd']."', '".$fileArr['file']['vga']."', '".$fileArr['file']['qvga']."', '".$fileArr['secret']['hd']."', '".$fileArr['secret']['vga']."', '".$fileArr['secret']['qvga']."', '".$fileArr['path']['thumbnail']."', '".$fileArr['path']['audio']."', '".$fileArr['path']['hd']."', '".$fileArr['path']['vga']."', '".$fileArr['path']['qvga']."', '".$fileArr['preview']."', '".$fileArr['info']['file.datetime']."', '".$fileArr['info']['file.size']."', '".$fileArr['info']['codec_name']."', '".$fileArr['info']['codec_long_name']."', '".$fileArr['info']['dimension.height']."', '".$fileArr['info']['dimension.width']."', '".$fileArr['info']['display.ratio']."', '".$fileArr['info']['bitrate']."', '".$fileArr['info']['framerate']."', '".$fileArr['info']['duration']."', '".$fileArr['info']['mime_type']."', '".$fileArr['info']['audio.codec_name']."', '".$fileArr['info']['audio.codec_long_name']."', '".$fileArr['info']['audio.profile']."', '".$fileArr['info']['audio.codec_type']."', '".$fileArr['info']['audio.codec_time_base']."', '".$fileArr['info']['audio.codec_tag_string']."', '".$fileArr['info']['audio.channels']."', '".$fileArr['info']['audio.channel_layout']."', '".$fileArr['info']['audio.duration']."', '".$fileArr['info']['audio.bit_rate']."');
				";
				$insertFileQuery = mysqli_query($db, $insertFileRequest);
				$fileArr['id'] = mysqli_insert_id($db);
				$getFileRequest = "SELECT * FROM `videos_cache` WHERE (`name`= '".$name."' OR `copy`= '".$name."') AND `secret` = '".$secret."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
				$getFileQuery = mysqli_query($db, $getFileRequest);
				while ($fileThis = mysqli_fetch_assoc($getFileQuery)) {
					$fileArr['path']['thumbnail'] = $fileThis['thumbnail.path'];
					mysqli_query($db, "UPDATE `videos_info` SET `path.thumbnail` = '".$fileArr['path']['thumbnail']."' WHERE `id` = '".$videoId."' LIMIT 1;");
					$_storage->delete(array("format" => "video", "label" => "display", "value" => $fileThis['path']));
					$createPreviewFile = $_storage->upload(array("format" => "image", "move" => "none", "file" => "none"));
					if (isset($createPreviewFile['return'], $createPreviewFile['data'], $createPreviewFile['data']['source']) && $createPreviewFile['return'] == true) {
						$fileArr['preview']['path'] = $createPreviewFile['data']['display'];
						$fileArr['preview']['source'] = $createPreviewFile['data']['source'];
						if (isset($fileArr['source']['fhd']) && $fileArr['source']['fhd'] != null) {
							$fileArr['preview']['source'] = $fileArr['source']['fhd'];
						}else if (isset($fileArr['source']['hd']) && $fileArr['source']['hd'] != null) {
							$fileArr['preview']['source'] = $fileArr['source']['hd'];
						}else if (isset($fileArr['source']['vga']) && $fileArr['source']['vga'] != null) {
							$fileArr['preview']['source'] = $fileArr['source']['vga'];
						}else if (isset($fileArr['source']['qvga']) && $fileArr['source']['qvga'] != null) {
							$fileArr['preview']['source'] = $fileArr['source']['qvga'];
						}
						if (isset($fileArr['preview']['source']) && $fileArr['preview']['source'] != null) {
							$fileArr['preview']['interval'] = $_parameter->get('video_preview_interval') || 3;
							$fileArr['preview']['dimension'] = $_parameter->get('video_preview_dimension') || "128x72";
							$createPreviewAction = $this->createPreview(array("video" => $fileArr['preview']['source'], "preview" => $fileArr['source']['preview'], "interval" => $fileArr['preview']['interval'], "dimension" => $fileArr['preview']['dimension']));
							if (isset($createPreviewAction, $createPreviewAction['return']) && $createPreviewAction['return'] == true) {
								$fileArr['preview']['dimension'] = explode("x", $fileArr['preview']['dimension']);
								mysqli_query($db, "INSERT INTO `videos_preview` (`id`, `videos.id`, `distance`, `path`, `size.width`, `size.height`) VALUES (NULL, '".$fileArr['id']."', '".$fileArr['preview']['interval']."', '".$fileArr['preview']['path']."', '".$fileArr['preview']['dimension'][0]."', '".$fileArr['preview']['dimension'][1]."');");
								mysqli_query($db, "UPDATE `videos_info` SET `preview` = '1' WHERE `id` = '".$videoId."' LIMIT 1;");
							}else {
								$_storage->delete(array("format" => "image", "label" => "display", "value" => $fileArr['preview']['path']));
							}
						}
					}
					mysqli_query($db, "DELETE FROM `videos_cache` WHERE `id` = '".$fileThis['id']."';");
				}
				return array("return" => true, "id" => $fileArr['id'], "data" => $fileArr);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function exec ($command) {
		# remove newlines and convert single quotes to double to prevent errors
		$command = str_replace(array("\n", "'"), array('', '"'), $command);
		// $command = escapeshellcmd($command);
		# execute convert program
        exec($command, $output, $return);
        return array("command" => $command, "output" => $output, "return" => $return);
	}
	function createThumbnail ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$videoSource = isset($object, $object['video']) && is_string($object['video']) ? $object['video'] : null;
		$thumbnailSource = isset($object, $object['thumbnail']) && is_string($object['thumbnail']) ? $object['thumbnail'] : null;
		$position = isset($object, $object['position']) && (is_string($object['position']) || is_numeric($object['position'])) ? $object['position'] : null;
		$dimension = isset($object, $object['dimension']) && (is_string($object['dimension']) || is_numeric($object['dimension'])) ? $object['dimension'] : null;
		if ($videoSource == null || $thumbnailSource == null) {
			return array("return" => false, "reason" => "");
		}else if ($position == null) {
			return array("return" => false, "reason" => "");
		}else if ($dimension == null) {
			return array("return" => false, "reason" => "");
		}
		$videoPerms = substr(sprintf('%o', fileperms($videoSource)), -4);
		chmod($videoSource, 0775);
		$exec = $this->exec("ffmpeg -y -itsoffset -".$position." -i ".$_client->root().$videoSource." -vcodec mjpeg -vframes 1 -an -f rawvideo -s ".$dimension." ".$_client->root().$thumbnailSource." 2>&1");
		chmod($videoSource, $videoPerms);
		if ($exec['return'] !== 0) {
			//.
		}
		return array("return" => true);
	}
	function createPreview ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$videoSource = isset($object, $object['video']) && is_string($object['video']) ? $object['video'] : null;
		$previewSource = isset($object, $object['preview']) && is_string($object['preview']) ? $object['preview'] : null;
		$interval = isset($object, $object['interval']) && is_numeric($object['interval']) ? intval($object['interval']) : null;
		$dimension = isset($object, $object['dimension']) && (is_string($object['dimension']) || is_numeric($object['dimension'])) ? $object['dimension'] : null;
		if ($videoSource == null || $previewSource == null) {
			return array("return" => false, "reason" => "");
		}else if ($interval == null) {
			return array("return" => false, "reason" => "");
		}else if ($dimension == null) {
			return array("return" => false, "reason" => "");
		}
		$previewDirCache = hash('md5', time().'::'.rand().'::'.rand().'::'.rand());
		$previewSourceDirArr = explode('/', $previewSource);
		$previewSourceFile = $previewSourceDirArr[count($previewSourceDirArr) - 1];
		$previewDirCache = str_replace($previewSourceFile, $previewDirCache, $previewSource);
		if (!is_dir($previewDirCache)) {
			mkdir($previewDirCache);
		}else {
			$previewDirCache = hash('md5', $previewDirCache.'::'.rand());
			$previewDirCache = str_replace($previewSourceFile, $previewDirCache, $previewSource);
			if (!is_dir($previewDirCache)) {
				mkdir($previewDirCache);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		$videoPerms = substr(sprintf('%o', fileperms($videoSource)), -4);
		chmod($videoSource, 0775);
		$createPreviewThumbnail = $this->exec('ffmpeg -y -i '.$_client->root().$videoSource.' -f image2 -r 1/'.$interval.' -vf scale='.$dimension.' '.$_client->root().$previewDirCache.'/%09d.png 2>&1 &');
		if (file_exists($_client->root().$previewDirCache.'\000000001.png')) {
			unlink($_client->root().$previewDirCache.'\000000001.png');
		}
		if (file_exists($_client->root().$previewDirCache.'\000000002.png')) {
			unlink($_client->root().$previewDirCache.'\000000002.png');
		}
		$appendIntoPreview = $this->exec('convert '.$_client->root().$previewDirCache.'/*.png -append '.$previewSource.' ');
		if (is_dir($previewDirCache)) {
			$previewFilesCache = glob($previewDirCache.'/{,.}*', GLOB_BRACE);
			foreach ($previewFilesCache as $thisFilesCache) {
				if (is_file($thisFilesCache)) {
					unlink($thisFilesCache);
				}
			}
			rmdir($previewDirCache);
		}
		chmod($videoSource, $videoPerms);
		if ($createPreviewThumbnail['return'] !== 0 || $appendIntoPreview['return'] !== 0) {
			//.
		}
		return array("return" => true, "s" => $createPreviewThumbnail, "sx" => $appendIntoPreview);
	}
	function editor ($object) {

	}
/*
ffmpeg -y -i C:\XAMPP\htdocs\giccos\storage\video\drive\1\845334c00df15f2ce8b5d42fb0352d23.mp4 -f image2 -r 1/3 -vf scale=-1:100 C:\XAMPP\htdocs\giccos\storage\video\drive\1\x\%04d.png
convert C:\XAMPP\htdocs\giccos\storage\video\drive\1\x\*.png -append C:\XAMPP\htdocs\giccos\storage\video\drive\1\x\0.png
C:\XAMPP\htdocs\giccos\storage\video\drive\1\x\0.png
*/
	function views ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "23");
		}else {
			$guyArr = array("type" => $guyType, "id" => $guyId);
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "add") {
			$videoId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			$videoQuality = isset($object['quality']) && (is_string($object['quality']) || is_numeric($object['quality'])) ? $_tool->convertDatabaseString($object['quality']) : null;
			$videoCaptions = isset($object['captions']) && (is_string($object['captions']) || is_numeric($object['captions'])) ? intval($object['captions']) : null;
			if ($videoId == null) {
				return array("return" => false, "reason" => "4352");
			}
			$existsVideo = $this->exists(array("guy" => $guyArr, "label" => "id", "value" => $videoId));
			if (isset($existsVideo, $existsVideo['return'], $existsVideo['exists']) && $existsVideo['return'] == true) {
				if ($existsVideo['exists'] == true) {
					$existsViews = $this->views(array("guy" => $guyArr, "action" => "exists", "label" => "videos.id", "value" => $videoId));
					if (isset($existsViews, $existsViews['return'], $existsViews['exists']) && $existsViews['return'] == true) {
						if ($existsViews['exists'] == true) {
							$updateViewRequest = "UPDATE `videos_views` SET `update` = '".time()."' WHERE `videos.id` = '".$videoId."' AND `time` + '".$_parameter->get('videos_views_timeout')."' > '".time()."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
							$actionViewQuery = mysqli_query($db, $updateViewRequest);
						}else {
							$addViewRequest = "INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`, `updated`) VALUES (NULL, '".time()."', '".$videoId."', '".$guyType."', '".$guyId."', '".$videoQuality."', '".$videoCaptions."', '".time()."');";
							$actionViewQuery = mysqli_query($db, $addViewRequest);
						}
						if (!$actionViewQuery) {
							return array("return" => false, "reason" => "gdsfg");
						}else {
							return array("return" => true);
						}
					}else if (isset($existsViews, $existsViews['return'], $existsViews['reason']) && $existsViews['return'] == false) {
						return array("return" => false, "reason" => $existsViews['return']);
					}else {
						return array("return" => false, "reason" => "dfg");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsVideo, $existsVideo['return'], $existsVideo['reason']) && $existsVideo['return'] == false) {
				return array("return" => false, "reason" => $existsVideo['reason']);
			}else {
				return array("return" => false, "reason" => "234");
			}
		}else if ($action == "stats") {
			$videoId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			$timeGet = isset($object['time']) && is_array($object['time']) && count($object['time']) > 0 ? $object['time'] : null;
			if ($videoId == null || $timeGet == null) {
				return array("return" => false, "reason" => "asdsf");
			}
			$existsVideo = $this->exists(array("guy" => $guyArr, "label" => "id", "value" => $videoId));
			if (isset($existsVideo, $existsVideo['return'], $existsVideo['exists']) && $existsVideo['return'] == true) {
				if ($existsVideo['exists'] == true) {
					$getViewsRequestPush = null;
					foreach ($timeGet as $i => $thisTime) {
						if ($thisTime == "this_week") {
							if (!isset($getViewsRequestPush) || $getViewsRequestPush == null) {
								$getViewsRequestPush = "(`time` + 604800 >= '".time()."')";
							}else {
								$getViewsRequestPush .= " OR (`time` + 604800 >= '".time()."')";
							}
						}else if ($thisTime == "last_week") {
							if (!isset($getViewsRequestPush) || $getViewsRequestPush == null) {
								$getViewsRequestPush = "(`time` + 604800 * 2 >= '".time()."' AND `time` + 604800  < '".time()."')";
							}else {
								$getViewsRequestPush .= " OR (`time` + 604800 * 2 >= '".time()."' AND `time` + 604800 < '".time()."')";
							}
						}
					}
					if (isset($getViewsRequestPush) && $getViewsRequestPush != null) {
						$getViewsRequestPush = " AND (".$getViewsRequestPush.")";
					}
					$getViewsRequest = "SELECT `id`, `time` FROM `videos_views` WHERE `videos.id` = '".$videoId."' ".$getViewsRequestPush.";";
					$getViewsQuery = mysqli_query($db, $getViewsRequest);
					if (!$getViewsQuery) {
						return array("return" => false, "reason" => "345");
					}
					$dataArr = array();
					while ($thisView = mysqli_fetch_assoc($getViewsQuery)) {
						foreach ($timeGet as $i => $thisTime) {
							if ($thisTime == "this_week" && $thisView['time'] + 604800 >= time()) {
								$dataArr[$thisTime][] = $thisView;
							}else if ($thisTime == "last_week" && ($thisView['time'] + 604800 * 2 >= time() && $thisView['time'] + 604800 < time())) {
								$dataArr[$thisTime][] = $thisView;
							}
						}
					}
					$countArr = count($dataArr);
					return array("return" => true, "count" => $countArr, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => "6345");
				}
			}else if (isset($existsVideo, $existsVideo['return'], $existsVideo['reason']) && $existsVideo['return'] == false) {
				return array("return" => false, "reason" => "asxd".$existsVideo['reason']);
			}else {
				return array("return" => false, "reason" => "fdg");
			}
		}else if ($action == "exists") {
			$viewsLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$viewsValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($viewsLabel == null || $viewsValue == null) {
				return array("return" => false, "reason" => "fgh");
			}
			$existsViewsRequest = "SELECT `id` FROM `views_views` WHERE `".$viewsLabel."` = '".$viewsValue."' AND `time` + '".$_parameter->get('videos_views_timeout')."' <= '".time()."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
			$existsViewsQuery = mysqli_query($db, $existsViewsRequest);
			if (!$existsViewsQuery) {
				return array("return" => false, "reason" => "hgdfsg");
			}
			if (mysqli_num_rows($existsViewsQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "yrt");
		}
	}
	function mention ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}else {
			$guyArr = array("type" => $guyType, "id" => $guyId);
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "stats") {
			$videoId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			$timeGet = isset($object['time']) && is_array($object['time']) && count($object['time']) > 0 ? $object['time'] : null;
			if ($videoId == null || $timeGet == null) {
				return array("return" => false, "reason" => "");
			}
			$existsVideo = $this->exists(array("guy" => $guyArr, "label" => "id", "value" => $videoId));
			if (isset($existsVideo, $existsVideo['return'], $existsVideo['exists']) && $existsVideo['return'] == true) {
				if ($existsVideo['exists'] == true) {
					$getMentionRequestPush = null;
					foreach ($timeGet as $i => $thisTime) {
						if ($thisTime == "this_week") {
							if (!isset($getMentionRequestPush) || $getMentionRequestPush == null) {
								$getMentionRequestPush = "(`time` + 604800 >= '".time()."')";
							}else {
								$getMentionRequestPush .= " OR (`time` + 604800 >= '".time()."')";
							}
						}else if ($thisTime == "last_week") {
							if (!isset($getMentionRequestPush) || $getMentionRequestPush == null) {
								$getMentionRequestPush = "(`time` + 604800 * 2 >= '".time()."' AND `time` + 604800  < '".time()."')";
							}else {
								$getMentionRequestPush .= " OR (`time` + 604800 * 2 >= '".time()."' AND `time` + 604800 < '".time()."')";
							}
						}
					}
					if (isset($getMentionRequestPush) && $getMentionRequestPush != null) {
						$getMentionRequestPush = " AND (".$getMentionRequestPush.")";
					}
					$getMentionRequest = "SELECT `id`, `time` FROM `status_videos` WHERE `videos.id` = '".$videoId."' ".$getMentionRequestPush.";";
					$getMentionQuery = mysqli_query($db, $getMentionRequest);
					if (!$getMentionQuery) {
						return array("return" => false, "reason" => "");
					}
					$dataArr = array();
					while ($thisView = mysqli_fetch_assoc($getMentionQuery)) {
						foreach ($timeGet as $i => $thisTime) {
							if ($thisTime == "this_week" && $thisView['time'] + 604800 >= time()) {
								$dataArr[$thisTime][] = $thisView;
							}else if ($thisTime == "last_week" && ($thisView['time'] + 604800 * 2 >= time() && $thisView['time'] + 604800 < time())) {
								$dataArr[$thisTime][] = $thisView;
							}
						}
					}
					$countArr = count($dataArr);
					return array("return" => true, "count" => $countArr, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsVideo, $existsVideo['return'], $existsVideo['reason']) && $existsVideo['return'] == false) {
				return array("return" => false, "reason" => $existsVideo['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function rate ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}else {
			$guyArr = array("type" => $guyType, "id" => $guyId);
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "add") {
			$videoId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			$ratePoint = isset($object['point']) && (is_string($object['point']) || is_numeric($object['point'])) ? intval($object['point']) : null;
			if ($videoId == null || $ratePoint == null) {
				return array("return" => false, "reason" => "");
			}
			$existsVideo = $this->exists(array("guy" => $guyArr, "label" => "id", "value" => $videoId));
			if (isset($existsVideo, $existsVideo['return'], $existsVideo['exists']) && $existsVideo['return'] == true) {
				if ($existsVideo['exists'] == true) {
					$existsRateRequest = "SELECT `id` FROM `videos_rate` WHERE `videos.id` = '".$videoId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
					$existsRateQuery = mysqli_query($db, $existsRateRequest);
					if (!$existsRateQuery) {
						return array("return" => false, "reason" => "");
					}
					if (mysqli_num_rows($existsRateQuery) == 0) {
						$addRateRequest = "INSERT INTO `videos_rate` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `updated`) VALUES (NULL, '".time()."', '".$videoId."', '".$guyType."', '".$guyId."', '".$ratePoint."', '".time()."');";
						$actionRateQuery = mysqli_query($db, $addRateRequest);
					}else {
						$updateRateRequest = "UPDATE `videos_rate` SET `point` = '".$ratePoint."', `updated` = '".time()."' WHERE `videos.id` = '".$videoId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."';";
						$actionRateQuery = mysqli_query($db, $updateRateRequest);
					}
					if (!$actionRateQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsVideo, $existsVideo['return'], $existsVideo['reason']) && $existsVideo['return'] == false) {
				return array("return" => false, "reason" => $existsVideo['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "get") {
			$rateLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$rateValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			$limit = isset($object['limit']) && is_string($object['limit']) ? $_tool->convertDatabaseString($object['limit']) : null;
			if ($rateLabel == null || $rateValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getRateRequest = "SELECT * FROM `videos_rate` WHERE `".$rateLabel."` = '".$rateValue."' ".$limit.";";
			$getRateQuery = mysqli_query($db, $getRateRequest);
			if (!$getRateQuery) {
				return array("return" => false, "reason" => "");
			}
			$dataArr = array();
			while ($thisRate = mysqli_fetch_assoc($getRateQuery)) {
				$dataArr[] = $thisRate;
			}
			$countArr = count($dataArr);
			return array("return" => true, "count" => $countArr, "data" => $dataArr);
		}else if ($action == "stats") {
			$videoId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			if ($videoId == null) {
				return array("return" => false, "reason" => "xs");
			}
			$existsVideo = $this->exists(array("guy" => $guyArr, "label" => "id", "value" => $videoId));
			if (isset($existsVideo, $existsVideo['return'], $existsVideo['exists']) && $existsVideo['return'] == true) {
				if ($existsVideo['exists'] == true) {
					$statsRateReuqest = "SELECT COUNT(*) AS `count`, SUM(`point`) AS `total` FROM `videos_rate` WHERE `videos.id` = '".$videoId."';";
					$statsRateQuery = mysqli_query($db, $statsRateReuqest);
					if (!$statsRateQuery) {
						return array("return" => false, "reason" => "23");
					}else {
						$statsArr = array();
						$statsFetch = mysqli_fetch_assoc($statsRateQuery);
						if (!isset($statsFetch['total']) || $statsFetch['total'] == null ) {
							$statsArr['total'] = 0;
						}else {
							$statsArr['total'] = $statsFetch['total'];
						}
						$statsArr['count'] = $statsFetch['count'];
						if ($statsArr['total'] != 0 && $statsFetch['count'] != 0) {
							$statsArr['ratio'] = $statsArr['total'] / $statsFetch['count'];
						}else {
							$statsArr['ratio'] = null;
						}
						if ($statsArr['total'] > 0) {
							$getGuyRatingRequest = "SELECT `point` FROM `videos_rate` WHERE `videos.id` = '".$videoId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
							$getGuyRatingQuery = mysqli_query($db, $getGuyRatingRequest);
							if (!$getGuyRatingQuery) {
								//.
							}
							if (mysqli_num_rows($getGuyRatingQuery) == 0) {
								$statsArr['rating'] = null;
							}else {
								$statsArr['rating'] = mysqli_fetch_assoc($getGuyRatingQuery)['point'];
							}
						}else {
							$statsArr['rating'] = null;
						}
						return array("return" => true, "data" => $statsArr);
					}
				}else {
					return array("return" => false, "reason" => "34");
				}
			}else if (isset($existsVideo, $existsVideo['return'], $existsVideo['reason']) && $existsVideo['return'] == false) {
				return array("return" => false, "reason" => $existsVideo);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "remove") {
			$rateLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$rateValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($rateLabel == null || $rateValue == null) {
				return array("return" => false, "reason" => "");
			}
			$existsRateRequest = "SELECT `id` FROM `videos_rate` WHERE `".$rateLabel."` = '".$rateValue."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
			$existsRateQuery = mysqli_query($db, $existsRateRequest);
			if (!$existsRateQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsRateQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$deteleRateReuqest = "DELETE FROM `videos_rate` WHERE `".$rateLabel."` = '".$rateValue."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."';";
				$deteleRateQuery = mysqli_query($db, $deteleRateReuqest);
				if (!$deteleRateQuery) {
					return array("return" => false, "exists" => false, "reason" => "");
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else if ($action == "exists") {
			$rateLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$rateValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($rateLabel == null || $rateValue == null) {
				return array("return" => false, "reason" => "");
			}
			$existsRateRequest = "SELECT `id` FROM `videos_rate` WHERE `".$rateLabel."` = '".$rateValue."' LIMIT 1;";
			$existsRateQuery = mysqli_query($db, $existsRateRequest);
			if (!$existsRateQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsRateQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function exists ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		$videoLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
		$videoValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
		if ($videoLabel == null || $videoValue == null) {
			return array("return" => false, "reason" => "fds");
		}
		$existsVideoRequest = "SELECT `id` FROM `videos_info` WHERE `".$videoLabel."` = '".$videoValue."' LIMIT 1;";
		$existsVideoQuery = mysqli_query($db, $existsVideoRequest);
		if (!$existsVideoQuery) {
			return array("return" => false, "reason" => "dfg");
		}else {
			if (mysqli_num_rows($existsVideoQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}
	}
	function fetch ($object) {
		return $this->info($object);
	}
	function info ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		$videosRows = isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0 ? $object['rows'] : null;
		$videosLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
		$videosValue = isset($object['value']) && is_string($object['value']) ? $object['value'] : null;
		if ($videosLabel == null || $videosValue == null) {
			return array("return" => false, "reason" => "sadf");
		}
		if ($videosRows == null) {
			return array("return" => false, "reason" => "345");
		}
		if (in_array("*", $videosRows)) {
			$videosSelect = "*";
		}else {
			$videosSelect = "`".implode($videosRows,"`, `")."`";
		}
		$getFileRequest = "SELECT ".$videosSelect." FROM `videos_info` WHERE `".$videosLabel."` = '".$videosValue."';";
		$getFileQuery = mysqli_query($db, $getFileRequest);
		if (!$getFileQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$videosArr = array();
			while ($videoThis = mysqli_fetch_assoc($getFileQuery)) {
				if (isset($videoThis['user.id'])) {
					$videoThis['user']['id'] = $videoThis['user.id'];
				}
				if (isset($videoThis['author.type'])) {
					$videoThis['author']['type'] = $videoThis['author.type'];
				}
				if (isset($videoThis['author.id'])) {
					$videoThis['author']['id'] = $videoThis['author.id'];
				}
				if (isset($videoThis['private.view'])) {
					$videoThis['private']['view'] = $videoThis['private.view'];
					unset($videoThis['private.view']);
				}
				if (isset($videoThis['private.comment'])) {
					$videoThis['private']['comment'] = $videoThis['private.comment'];
					unset($videoThis['private.comment']);
				}
				if (isset($videoThis['private.share'])) {
					$videoThis['private']['share'] = $videoThis['private.share'];
					unset($videoThis['private.share']);
				}
				if (isset($videoThis['time'])) {
					$videoThis['date'] = $videoThis['time'];
				}
				if (isset($videoThis['name'])) {
					$videoThis['title'] = $videoThis['name'];
				}else if (isset($videoThis['nameraw'])) {
					$videoThis['title'] = $videoThis['nameraw'];
				}
				if (isset($videoThis['display'])) {
					$videoThis['source']['thumbnail'] = $_tool->links('videos/raw/'.$videoThis['display'].'/thumbnail');
				}
				if (isset($videoThis['preview'])) {
					$videoThis['preview'] = $videoThis['preview'] === 1 ? true : false;
				}
				if (isset($videoThis['file.hd'])) {
					$videoThis['file']['hd'] = $videoThis['file.hd'];
					$videoThis['source']['hd'] = $_tool->links('videos/raw/'.$videoThis['file']['hd']);
					unset($videoThis['file.hd']);
				}
				if (isset($videoThis['file.vga'])) {
					$videoThis['file']['vga'] = $videoThis['file.vga'];
					$videoThis['source']['vga'] = $_tool->links('videos/raw/'.$videoThis['file']['vga']);
					unset($videoThis['file.vga']);
				}
				if (isset($videoThis['file.qvga'])) {
					$videoThis['file']['qvga'] = $videoThis['file.qvga'];
					$videoThis['source']['qvga'] = $_tool->links('videos/raw/'.$videoThis['file']['qvga']);
					unset($videoThis['file.qvga']);
				}
				if (isset($videoThis['secret.hd'])) {
					$videoThis['secret']['hd'] = $videoThis['secret.hd'];
					unset($videoThis['secret.hd']);
				}
				if (isset($videoThis['secret.vga'])) {
					$videoThis['secret']['vga'] = $videoThis['secret.vga'];
					unset($videoThis['secret.vga']);
				}
				if (isset($videoThis['secret.qvga'])) {
					$videoThis['secret']['qvga'] = $videoThis['secret.qvga'];
					unset($videoThis['secret.qvga']);
				}
				if (isset($videoThis['path.thumbnail'])) {
					$videoThis['path']['thumbnail'] = $videoThis['path.thumbnail'];
					unset($videoThis['path.thumbnail']);
				}
				if (isset($videoThis['path.audio'])) {
					$videoThis['path']['audio'] = $videoThis['path.audio'];
					unset($videoThis['path.audio']);
				}
				if (isset($videoThis['path.hd'])) {
					$videoThis['path']['hd'] = $videoThis['path.hd'];
					unset($videoThis['path.hd']);
				}
				if (isset($videoThis['path.vga'])) {
					$videoThis['path']['vga'] = $videoThis['path.vga'];
					unset($videoThis['path.vga']);
				}
				if (isset($videoThis['path.qvga'])) {
					$videoThis['path']['qvga'] = $videoThis['path.qvga'];
					unset($videoThis['path.qvga']);
				}
				if (isset($videoThis['file.datetime'])) {
					$videoThis['file']['datetime'] = $videoThis['file.datetime'];
					unset($videoThis['file.datetime']);
				}
				if (isset($videoThis['file.size'])) {
					$videoThis['file']['size'] = $videoThis['file.size'];
					unset($videoThis['file.size']);
				}
				if (isset($videoThis['dimension.height'])) {
					$videoThis['dimension']['height'] = $videoThis['dimension.height'];
					unset($videoThis['dimension.height']);
				}
				if (isset($videoThis['dimension.width'])) {
					$videoThis['dimension']['width'] = $videoThis['dimension.width'];
					unset($videoThis['dimension.width']);
				}
				if (isset($videoThis['audio.codec_name'])) {
					$videoThis['audio']['codec_name'] = $videoThis['audio.codec_name'];
					unset($videoThis['audio.codec_name']);
				}
				if (isset($videoThis['audio.codec_long_name'])) {
					$videoThis['audio']['codec_long_name'] = $videoThis['audio.codec_long_name'];
					unset($videoThis['audio.codec_long_name']);
				}
				if (isset($videoThis['audio.profile'])) {
					$videoThis['audio']['profile'] = $videoThis['audio.profile'];
					unset($videoThis['audio.profile']);
				}
				if (isset($videoThis['audio.codec_type'])) {
					$videoThis['audio']['codec_type'] = $videoThis['audio.codec_type'];
					unset($videoThis['audio.codec_type']);
				}
				if (isset($videoThis['audio.codec_time_base'])) {
					$videoThis['audio']['codec_time_base'] = $videoThis['audio.codec_time_base'];
					unset($videoThis['audio.codec_time_base']);
				}
				if (isset($videoThis['audio.codec_tag_string'])) {
					$videoThis['audio']['codec_tag_string'] = $videoThis['audio.codec_tag_string'];
					unset($videoThis['audio.codec_tag_string']);
				}
				if (isset($videoThis['audio.channels'])) {
					$videoThis['audio']['channels'] = $videoThis['audio.channels'];
					unset($videoThis['audio.channels']);
				}
				if (isset($videoThis['audio.channel_layout'])) {
					$videoThis['audio']['channel_layout'] = $videoThis['audio.channel_layout'];
					unset($videoThis['audio.channel_layout']);
				}
				if (isset($videoThis['audio.duration'])) {
					$videoThis['audio']['duration'] = $videoThis['audio.duration'];
					unset($videoThis['audio.duration']);
				}
				if (isset($videoThis['audio.bit_rate'])) {
					$videoThis['audio']['bit_rate'] = $videoThis['audio.bit_rate'];
					unset($videoThis['audio.bit_rate']);
				}
				$videosArr[] = $videoThis;
			}
			$videosCount = count($videosArr);
			return array("return" => true, "count" => $videosCount, "data" => $videosArr);
		}
	}
}
?>