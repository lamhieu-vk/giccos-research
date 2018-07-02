<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class photos {
	function __construct () {
		$GLOBALS["_photos"] = $this;
		$this->class = $GLOBALS;
	}
	function exec ($command) {
		$command = str_replace(array("\n", "'"), array('', '"'), $command);
        exec($command, $output, $return);
        $return = isset($return) && $return === 0 ? true : false;
        return array("command" => $command, "output" => $output, "return" => $return);
	}
	function cache ($object = array()) {
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
			$cacheTimeout = $_parameter->get('image_cache_timeout');
			$fileArr['tmp'] = $fileArr['tmp_name'];
			$infoArr = $_tool->readFileInfo($fileArr['tmp'], 'image');
			if (!$infoArr) {
				return array("return" => false, "reason" => "");
			}
			$clientToken = $_client->client(true);
			$fileArr['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($fileArr['tmp']).'::'.time().'::'.rand());
			$fileArr['secret'] = hash('crc32', $token);
			$fileArr['nameraw'] = isset($fileArr['name']) && is_string($fileArr['name']) ? $_tool->convertDatabaseString($fileArr['name']) : null;
			$fileArr['name'] = hash('crc32', md5($fileArr['secret'].'::'.rand()));
			$fileArr['copy'] = 0;
			$fileArr['mime'] = isset($fileArr['type']) && is_string($fileArr['type']) ? $_tool->convertDatabaseString($fileArr['type']) : null;
			$fileArr['size'] = isset($fileArr['size']) && (is_string($fileArr['size']) || is_numeric($fileArr['size'])) ? intval($fileArr['size']) : 0;
			if (isset($clientToken, $fileArr['token'], $fileArr['secret'], $fileArr['nameraw'], $fileArr['name'], $fileArr['mime'], $fileArr['size'])) {
				if (!isset($fileArr['error']) || $fileArr['error'] != null) {
					return array("return" => false, "reason" => "3");
				}else if (!isset($fileArr['tmp']) || $fileArr['tmp'] == null) {
					return array("return" => false, "reason" => "2xs");
				}/*else if ($fileArr['size'] > $_parameter->get('photos_allow_size')) {
					return array("return" => false, "reason" => "asdc");
				}*/
				$fileUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $fileArr['tmp'], "mime" => $fileArr['type'], "name" => $fileArr['name'], "strip" => false));
				if (isset($fileUpload['return'], $fileUpload['data']) && $fileUpload['return'] == true) {
					$fileArr['path'] = $fileUpload['data']['display'];
					$fileArr['tmp'] = $fileUpload['data']['source'];
				}else {
					return array("return" => false, "reason" => "123sa");
				}
				//.
				$addFileRequest = "
				INSERT INTO `photos_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`, `user.id`, `author.type`, `author.id`) 
				VALUES (null, '".time()."', '".(time() + $cacheTimeout)."', '".$clientToken."', '".$fileArr['token']."', '".$fileArr['secret']."', '".$fileArr['name']."', '".$fileArr['nameraw']."', '".$fileArr['copy']."', '".$fileArr['mime']."', '".$fileArr['size']."', '".$fileArr['path']."', '".$userId."', '".$guyType."', '".$guyId."');
				";
				$addFileQuery = mysqli_query($db, $addFileRequest);
				if (!$addFileQuery) {
					return array("return" => false, "reason" => $addFileRequest);
				}else {
					$idInserted = mysqli_insert_id($db);
					$dataArr = array(
						"tmp" => $fileArr['tmp'],
						"secret" => $fileArr['secret'], 
						"name" => $fileArr['name'],
						"nameraw" => $fileArr['nameraw'],
						"mime" => $fileArr['mime'], 
						"size" => $fileArr['size']
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
			$getOriginalRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$fileSecret."' AND `name` = '".$fileName."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
			$getOriginalQuery = mysqli_query($db, $getOriginalRequest);
			$getCopyRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$fileSecret."' AND `copy` = '".$fileName."' AND `author.id` = '".$guyId."' AND `author.type` = '".$guyType."';";
			$getCopyQuery = mysqli_query($db, $getCopyRequest);
			if (!$getOriginalQuery || !$getCopyQuery) {
				return array("return" => false, "reason" => "");
			}
			if ($limit == false || (mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) == 0)) {
				$cacheTimeout = $_parameter->get('image_cache_timeout');
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
				if (isset($fileUpload['return'], $fileUpload['data'], $fileUpload['data']['source']) && $fileUpload['return'] == true) {
					$copyFetch['path'] = $fileUpload['data']['display'];
					$copyFetch['tmp'] = $fileUpload['data']['source'];
					$_storage->recheck(array("format" => "image", "label" => "display", "value" => $copyFetch['path']));
				}else {
					return array("return" => false, "reason" => "");
				}
				$addFileRequest = "
				INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) 
				VALUES (null, '".$originalFetch['user.id']."', '".$originalFetch['author.type']."', '".$originalFetch['author.id']."', '".$originalFetch['time']."', '".(time() + $cacheTimeout)."', '".$originalFetch['client']."', '".$originalFetch['token']."', '".$originalFetch['secret']."', '".$copyFetch['name']."', '".$copyFetch['nameraw']."', '".$copyFetch['copy']."', '".$originalFetch['mime']."', '".$originalFetch['size']."', '".$copyFetch['path']."');
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
							"nameraw" => $originalFetch['nameraw']
						),
						"copy" => array(
							"tmp" => $copyFetch['tmp'], 
							"secret" => $copyFetch['secret'], 
							"name" => $copyFetch['name'],
							"nameraw" => $copyFetch['nameraw']
						)
					);
					return array("return" => true, "data" => $dataArr);
				}
			}else if ($limit == true && mysqli_num_rows($getOriginalQuery) > 0 && mysqli_num_rows($getCopyQuery) > 0) {
				$originalFetch = mysqli_fetch_assoc($getOriginalQuery);
				$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $originalFetch['path'], "limit" => "LIMIT 1"));
				if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0], $getMediaFile['data'][0]['source'], $getMediaFile['data'][0]['display']) && $getMediaFile['return'] == true && $getMediaFile['count'] > 0) {
					$originalFetch['tmp'] = $getMediaFile['data'][0]['source'];
					$originalFetch['path'] = $getMediaFile['data'][0]['display'];
				}else {
					return array("return" => false, "reason" => "");
				}
				$copyFetch = mysqli_fetch_assoc($getCopyQuery);
				$copyFetch['duration'] = $originalFetch['duration'];
				$replaceFileOptions = array(
					"format" => "image", 
					"labelSource" => "display",
					"valueSource" => $originalFetch['path'],
					"labelDestination" => "display",
					"valueDestination" => $copyFetch['path']
				);
				$replaceFile = $_storage->replace($replaceFileOptions);
				if (isset($replaceFile['return'], $replaceFile['source'], $replaceFile['destination']) && $replaceFile['return'] == true) {
					$copyFetch['tmp'] = $replaceFile['destination']['source'];
					$copyFetch['path'] = $replaceFile['destination']['display'];
					$_storage->recheck(array("format" => "image", "label" => "display", "value" => $copyFetch['path']));
				}
				$uploadFileRequest = "UPDATE `photos_cache` SET `time` = '".$originalFetch['time']."', `close` = '".(time() + $_parameter->get('media_cache_time_close'))."', `client` = '".$originalFetch['client']."', `name` = '".$copyFetch['name']."', `nameraw` = '".$originalFetch['nameraw']."', `copy` = '".$copyFetch['copy']."', `mime` = '".$originalFetch['mime']."', `size` = '".$originalFetch['size']."', `path` = '".$copyFetch['path']."' WHERE `id` = '".$copyFetch['id']."';";
				$uploadFileQuery = mysqli_query($db, $uploadFileRequest);
				if (!$uploadFileQuery) {
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
			$getFileCacheRequest = "SELECT * FROM `photos_cache` WHERE `".$fileLabel."` = '".$fileValue."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' ".$limit.";";
			$getFileCacheQuery = mysqli_query($db, $getFileCacheRequest);
			if (!$getFileCacheQuery) {
				return array("return" => false, "reason" => "");
			}
			$dataArr = array();
			while ($imageThis = mysqli_fetch_assoc($getFileCacheQuery)) {
				$mediaDataThis = $imageThis;
				$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $imageThis['path'], "limit" => "LIMIT 1"));
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
			$getFileSourceRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$sourceSecret."' AND `name` = '".$sourceName."' LIMIT 1;";
			$getFileSourceQuery = mysqli_query($db, $getFileSourceRequest);
			$getFileDestinationRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$destinationSecret."' AND `name` = '".$destinationName."' LIMIT 1;";
			$getFileDestinationQuery = mysqli_query($db, $getFileDestinationRequest);
			if (!$getFileSourceQuery || !$getFileDestinationQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getFileSourceQuery) > 0 && mysqli_num_rows($getFileDestinationQuery) > 0) {
				$photosSourceFetch = mysqli_fetch_assoc($getFileSourceQuery);
				if (isset($photosSourceFetch['path']) && is_string($photosSourceFetch['path'])) {
					$valueSource = $photosSourceFetch['path'];
				}
				$photosDestinationFetch = mysqli_fetch_assoc($getFileDestinationQuery);
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
					$photosSourceFetch['tmp'] = $replaceFile['source']['file'];
					$photosDestinationFetch['tmp'] = $replaceFile['destination']['file'];
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
			$getFileCacheRequest = "SELECT * FROM `photos_cache` WHERE `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' AND (`secret` = '".$fileSecret."' AND (`name` = '".$fileName."'".$getFileCacheRequestDraft.")) ".$getFileCacheRequestVerify." ;";
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
					"format" => "image",
					"label" => "display",
					"value" => $fileCacheThis['path']
				);
				$delMediaFile = $_storage->delete($delMediaFileOpts);
				if (isset($delMediaFile['return'], $delMediaThumbnail['return']) && $delMediaFile['return'] == true && $delMediaThumbnail['return'] == true) {
					mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '".$fileCacheThis['id']."';");
				}else {
					continue;
				}
			}
			if (isset($fileNameArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['editor']) && is_array($fileNameArr) && count($fileNameArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['editor']) && count($_SESSION["cache"]['photos']['handling']['editor']) > 0) {
				$cacheEditorHandling = $_SESSION["cache"]['photos']['handling']['editor'];
				foreach ($cacheEditorHandling as $key => $value) {
					if (in_array($key, $fileNameArr)) {
						unset($_SESSION["cache"]['photos']['handling']['editor'][$key]);
					}
				}
			}
			if (isset($fileSecretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['faces'], $_SESSION["cache"]['photos']['faces']['info']) && is_array($fileSecretArr) && count($fileSecretArr) > 0 && is_array($_SESSION["cache"]['photos']['faces']['info']) && count($_SESSION["cache"]['photos']['faces']['info']) > 0) {
				$cacheFacesArr = $_SESSION["cache"]['photos']['faces']['info'];
				foreach ($cacheFacesArr as $key => $cacheFaceThis) {
					if (isset($cacheFaceThis['photos'], $cacheFaceThis['photos.local'], $cacheFaceThis['user.id'], $cacheFaceThis['author.type'], $cacheFaceThis['author.id']) && in_array($cacheFaceThis['photos'], $f_secret) && $cacheFaceThis['photos.local'] == "cache" && $cacheFaceThis['user.id'] == $userId && $cacheFaceThis['author.type'] == $guyType && $cacheFaceThis['author.id'] == $guyId) {
						unset($_SESSION["cache"]['photos']['faces']['info'][$key]);
					}
				}
			}
			if (isset($fileSecretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['faces']) && is_array($fileSecretArr) && count($fileSecretArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['faces']) && count($_SESSION["cache"]['photos']['handling']['faces']) > 0) {
				$cacheFacesHandling = $_SESSION["cache"]['photos']['handling']['faces'];
				foreach ($cacheFacesHandling as $key => $cacheFacesHandlingThis) {
					if (isset($cacheFacesHandlingThis['photos'], $cacheFacesHandlingThis['photos.local'], $cacheFacesHandlingThis['user.id'], $cacheFacesHandlingThis['author.type'], $cacheFacesHandlingThis['author.id']) && in_array($cacheFacesHandlingThis['photos'], $f_secret) && $cacheFacesHandlingThis['photos.local'] == "cache" && $cacheFacesHandlingThis['user.id'] == $userId && $cacheFacesHandlingThis['author.type'] == $guyType && $cacheFacesHandlingThis['author.id'] == $guyId) {
						unset($_SESSION["cache"]['photos']['handling']['faces'][$key]);
					}
				}
			}
			return array("return" => true);
		}else if (in_array($action, ["clean"])) {
			$fileExpiredArr = $fileRemovedArr = $fileNameArr = $fileSecretArr = array();
			$clientToken = $_client->client(true);
			$getFileExpiresRequest = "SELECT * FROM `photos_cache` WHERE (`client` = '".$clientToken."' OR `user.id` = '".$userId."' OR (`author.id` = '".$guyId."' AND `author.type` = '".$guyType."')) AND `close` != '0' AND `close` <= '".time()."';";
			$getFileExpiresQuery = mysqli_query($db, $getFileExpiresRequest);
			if (!$getFileExpiresQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getFileExpiresQuery) == 0) {
				return array("return" => true);
			}else {
				while ($fileCacheThis = mysqli_fetch_assoc($getFileExpiresQuery)) {
					$fileExpiredArr[] = $fileCacheThis;
				}
			}
			$getFileOtherRequest = "SELECT * FROM `photos_cache` WHERE `close` != '0' AND `close` <= '".time()."' LIMIT 10;";
			$getFileOtherQuery = mysqli_query($db, $getFileOtherRequest);
			if (!$getFileOtherQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getFileOtherQuery) == 0) {
				//.
			}else {
				while ($fileCacheThis = mysqli_fetch_assoc($getFileOtherQuery)) {
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
			$cacheTimeout = $_parameter->get('image_cache_timeout');
			$updateCacheRequest = "UPDATE `photos_cache` SET `close` = '".(time() + $cacheTimeout)."' WHERE `secret` = '".$fileSecret."' AND `name` = '".$fileName."' AND `author.id` = '".$guyType."' AND `author.type` = '".$guyId."';";
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
			$maxsize = isset($object['maxsize']) && is_array($object['maxsize']) ? $object['maxsize'] : false;
			if ($fileName == null || $fileSecret == null) {
				return array("return" => false, "reason" => "");
			}
			$clientToken = $_client->client(true);
			$cacheTimeout = $_parameter->get('image_cache_timeout');
			$getFileRequest = "SELECT * FROM `photos_cache` WHERE `secret` = '".$fileSecret."' AND `name`= '".$fileName."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' LIMIT 1;";
			$getFileQuery = mysqli_query($db, $getFileRequest);
			if (!$getFileQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($getFileQuery) == 0) {
					return array("return" => false, "reason" => "");
				}
			}
			$scrapbook = isset($object['scrapbook']) && is_string($object['scrapbook']) ? $_tool->convertDatabaseString($object['scrapbook']) : null;
			$updateFileRequest = "UPDATE `photos_cache` SET `close` = '".(time() + $cacheTimeout)." WHERE `secret` = '".$fileSecret."' AND `name`= '".$fileName."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' LIMIT 1;";
			$updateFileQuery = mysqli_query($db, $updateFileRequest);
			$fileArr = mysqli_fetch_assoc($getFileQuery);
			$fileArr['name'] = basename($fileArr['name']);
			$fileArr['nameraw'] = $fileArr['nameraw'];
			$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileArr['path'], "limit" => "LIMIT 1"));
			if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
				$fileArr['tmp'] = $getMediaFile['data'][0]['source'];
				$fileArr['mime'] = $getMediaFile['data'][0]['mime'];
				$fileArr['size'] = $getMediaFile['data'][0]['size'];
			}else {
				return array("return" => false, "reason" => "");
			}
			if (!in_array($fileArr['mime'], $_parameter->get('photos_allow_format', true))) {
				//.
			}
			if (!isset($fileArr['tmp'])) {
				return array("return" => false, "reason" => "");
			}else {
				set_time_limit(0);
				$fileArr['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.md5_file($fileArr['tmp']).'::'.time().'::'.rand());
				$fileArr['display'] = hash('md5', $fileArr['token']);
				if (in_array($_tool->mime_content_type($fileArr['mime'], true), $_parameter->get('exif_read_data_allow', true))) {
					$fileArr['info'] = $this->info('read', $fileArr['tmp'], 'photos');
				}else {
					$fileArr['info'] = $this->info('read', null, 'photos');
					$fileArr['info']['get'] = getimagesize($fileArr['tmp']);
					$fileArr['info']['size.width'] = $fileArr['info']['get'][0];
					$fileArr['info']['size.height'] = $fileArr['info']['get'][1];
					$fileArr['info']['mime_type']  = $fileArr['info']['get']['mime'];
				}
				$fileArr['status'] = "official";
				$fileArr['info'] = $_tool->readFileInfo($fileArr['tmp'], 'image');
				if (isset($fileArr['mime']) && is_string($fileArr['mime'])) {
					$fileArr['info']['mime_type'] = $fileArr['mime'];
				}
				$fileArr['file'] = $fileArr['path'] = $fileArr['secret'] = null;
				if ($fileArr['info']['file.size'] > $_parameter->get('photos_allow_size')) {
					//.
				}
				$fileArr['file'] = $fileArr['path'] = $fileArr['secret'] = null;
				$fileArr['file']['text'] = md5($fileArr['token'].'::'.time().'::'.rand());
				$img = photosEditor::factory($fileArr['tmp'], true);
				if ($maxsize != null && is_array($maxsize)) {
					if (isset($maxsize['width']) && !isset($maxsize['height'])) {
						$img->resize($maxsize['width'], 0);
					}else if (!isset($maxsize['width']) && isset($maxsize['height'])) {
						$img->resize(0, $maxsize['height']);
					}else if (isset($maxsize['width'], $maxsize['height'])) {
						$img->resize($maxsize['width'], $maxsize['height']);
					}
				}
				if ($fileArr['info']['file.size'] > $_parameter->get('photos_allow_size')) {
					$sizeLimit = $_parameter->get('photos_allow_size');
					$sizeExceeded = $sizeLimit / $fileArr['info']['file.size'];
					$sizeResetWeight = $fileArr['info']['size.width'] * $sizeExceeded / 100 * $_parameter->get('photos_compression_size_percent');
					$sizeResetHeight = $fileArr['info']['size.height'] * $sizeExceeded / 100 * $_parameter->get('photos_compression_size_percent');
					$img->resize($sizeResetWeight, $sizeResetHeight);
				}
				if ($fileArr['info']['size.width'] > $_parameter->get('photos_size_original_w')) {
					$fileArrUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $fileArr['tmp'], "mime" => $fileArr['mime'], "name" => $fileArr['nameraw'], "strip" => false));
					if (isset($fileArrUpload['return'], $fileArrUpload['data']) && $fileArrUpload['return'] == true) {
						$fileArr['file']['original'] = hash('md5', $fileArr['file']['text']);
						$fileArr['path']['original'] = $fileArrUpload['data']['display'];
						$fileArr['secret']['original'] = $fileArrUpload['data']['hash'];
					}else {
						//. error
					}
				}else {
					$fileArr['file']['original'] = $fileArr['path']['original'] = $fileArr['secret']['original'] = 0;
				}
				if ($multiple == true && $fileArr['info']['size.width'] > $_parameter->get('photos_size_large_w')) {
					$img->resize($_parameter->get('photos_size_large_w'), 0);
					$fileArrUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $fileArr['tmp'], "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileArrUpload['return'], $fileArrUpload['data']) && $fileArrUpload['return'] == true) {
						$fileArr['file']['large'] = hash('md5', $fileArr['file']['text']."::large");
						$fileArr['path']['large'] = $fileArrUpload['data']['display'];
						$fileArr['secret']['large'] = $fileArrUpload['data']['hash'];
					}else {
						//. error
					}
				}else {
					$fileArr['file']['large'] = $fileArr['path']['large'] = $fileArr['secret']['large'] = 0;
				}
				if ($multiple == true && $fileArr['info']['size.width'] > $_parameter->get('photos_size_medium_w')) {
					$img->resize($_parameter->get('photos_size_medium_w'), 0);
					$fileArrUpload = $_storage->upload(array("format" => "image", "move" => "copy", "file" => $fileArr['tmp'], "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileArrUpload['return'], $fileArrUpload['data']) && $fileArrUpload['return'] == true) {
						$fileArr['file']['medium'] = hash('md5', $fileArr['file']['text']."::medium");
						$fileArr['path']['medium'] = $fileArrUpload['data']['display'];
						$fileArr['secret']['medium'] = $fileArrUpload['data']['hash'];
					}else {
						//. error
					}
				}else {
					$fileArr['file']['medium'] = $fileArr['path']['medium'] = $fileArr['secret']['medium'] = 0;
				}
				if ($multiple == true && $fileArr['info']['size.width'] > $_parameter->get('photos_size_small_w')) {
					$img->resize($_parameter->get('photos_size_small_w'), 0);
					$fileArrUpload = $_storage->upload(array("format" => "image", "move" => "rename", "file" => $fileArr['tmp'], "mime" => $fileArr['mime'], "name" => $fileArr['nameraw']));
					if (isset($fileArrUpload['return'], $fileArrUpload['data']) && $fileArrUpload['return'] == true) {
						$fileArr['file']['small'] = hash('md5', $fileArr['file']['text']."::small");
						$fileArr['path']['small'] = $fileArrUpload['data']['display'];
						$fileArr['secret']['small'] = $fileArrUpload['data']['hash'];
					}else {
						//. error
					}
				}else {
					$fileArr['file']['small'] = $fileArr['path']['small'] = $fileArr['secret']['small'] = 0;
				}
				$attachments = isset($object['attachments']) && is_bool($object['attachments']) ? $object['attachments'] : false;
				if (!$attachments) {
					$fileArr['attachments'] = 0;
				}else {
					$fileArr['attachments'] = 1;
				}
				$public = isset($object['public']) && is_bool($object['public']) ? $object['public'] : false;
				if (!$public) {
					$fileArr['public'] = 0;
				}else {
					$fileArr['public'] = 1;
				}
				$fileArr['public'] = 1;
				$fileArr['tags'] = isset($object['info'], $object['info']['tags']) && is_string($object['info']['tags']) ? $object['info']['tags'] : null;
				$fileArr['description'] = isset($object['info'], $object['info']['description']) && is_string($object['info']['description']) ? $_tool->convertDatabaseString($object['info']['description']) : null;
				$fileArr['private.view'] = $fileArr['private.comment'] = $fileArr['private.share'] = 4;
				$insertRequest = "INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES (null, '".$userId."', '".$guyType."', '".$guyId."', '".$scrapbook."', '".$_tool->timeNow()."', '".$fileArr['token']."', '".$fileArr['display']."', '".$fileArr['name']."', '".$fileArr['nameraw']."', '".$fileArr['tags']."', '".$fileArr['description']."', '".$fileArr['private.view']."', '".$fileArr['private.comment']."', '".$fileArr['private.share']."', '".$fileArr['file']['original']."', '".$fileArr['file']['large']."', '".$fileArr['file']['medium']."', '".$fileArr['file']['small']."', '".$fileArr['secret']['original']."', '".$fileArr['secret']['large']."', '".$fileArr['secret']['medium']."', '".$fileArr['secret']['small']."', '".$fileArr['path']['original']."', '".$fileArr['path']['large']."', '".$fileArr['path']['medium']."', '".$fileArr['path']['small']."', '".$fileArr['info']['size.height']."', '".$fileArr['info']['size.width']."', '".$fileArr['info']['aperture.f']."', '".$fileArr['info']['aperture.max_value']."', '".$fileArr['info']['b.o.m']."', '".$fileArr['info']['file.datetime']."', '".$fileArr['info']['file.size']."', '".$fileArr['info']['file.type']."', '".$fileArr['info']['file.source']."', '".$fileArr['info']['flash']."', '".$fileArr['info']['focal.length']."', '".$fileArr['info']['iso']."', '".$fileArr['info']['make']."', '".$fileArr['info']['model']."', '".$fileArr['info']['metering.mode']."', '".$fileArr['info']['mime_type']."', '".$fileArr['info']['software']."', '".$fileArr['info']['ccd.width']."', '".$fileArr['info']['exposure.time']."', '".$fileArr['info']['exposure.mode']."', '".$fileArr['info']['exposure.bias_value']."', '".$fileArr['info']['f_number']."', '".$fileArr['info']['sensing.method']."', '".$fileArr['info']['shutter.speed']."', '".$fileArr['info']['digital_zoom.ratio']."');";
				$insertQuery = mysqli_query($db, $insertRequest);
				$fileArr['id'] = mysqli_insert_id($db);
				$getFileRequest = "SELECT `id`, `path`, `token`, `secret`, `name` FROM `photos_cache` WHERE (`name`= '".$fileName."' OR `copy`= '".$fileName."') AND `secret` = '".$fileSecret."' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."';";
				$getFileQuery = mysqli_query($db, $getFileRequest);
				$fileRemovedArr = $fileNameArr = $fileSecretArr = array();
				while ($fileArrFetch = mysqli_fetch_assoc($getFileQuery)) {
					$fileNameArr[] = $fileArrFetch['name'];
					$fileSecretArr[] = $fileArrFetch['secret'];
					$_storage->delete(array("format" => "image", "label" => "display", "value" => $fileArrFetch['path']));
					mysqli_query($db, "UPDATE `photos_faces` SET `photos` = '".$fileArr['display']."', `photos.local` = 'drive' WHERE `photos` = '".$fileArrFetch['secret']."' AND `photos.local` = 'cache' AND `author.type` = '".$guyType."' AND `author.id` = '".$guyId."' AND `user.id` = '".$userId."' ;");
					mysqli_query($db, "DELETE FROM `photos_cache` WHERE `id` = '".$fileArrFetch['id']."' ;");
				}
				if (isset($fileNameArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['editor']) && is_array($fileNameArr) && count($fileNameArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['editor']) && count($_SESSION["cache"]['photos']['handling']['editor']) > 0) {
					$cacheEditorHandling = $_SESSION["cache"]['photos']['handling']['editor'];
					foreach ($cacheEditorHandling as $key => $value) {
						if (in_array($key, $fileNameArr)) {
							unset($_SESSION["cache"]['photos']['handling']['editor'][$key]);
						}
					}
				}
				if (isset($fileSecretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['faces'], $_SESSION["cache"]['photos']['faces']['info']) && is_array($fileSecretArr) && count($fileSecretArr) > 0 && is_array($_SESSION["cache"]['photos']['faces']['info']) && count($_SESSION["cache"]['photos']['faces']['info']) > 0) {
					$cacheFacesArr = $_SESSION["cache"]['photos']['faces']['info'];
					foreach ($cacheFacesArr as $key => $cacheFaceThis) {
						if (isset($cacheFaceThis['photos'], $cacheFaceThis['photos.local'], $cacheFaceThis['user.id'], $cacheFaceThis['author.type'], $cacheFaceThis['author.id']) && in_array($cacheFaceThis['photos'], $f_secret) && $cacheFaceThis['photos.local'] == "cache" && $cacheFaceThis['user.id'] == $userId && $cacheFaceThis['author.type'] == $guyType && $cacheFaceThis['author.id'] == $guyId) {
							unset($_SESSION["cache"]['photos']['faces']['info'][$key]);
						}
					}
				}
				if (isset($fileSecretArr, $_SESSION["cache"], $_SESSION["cache"]['photos'], $_SESSION["cache"]['photos']['handling'], $_SESSION["cache"]['photos']['handling']['faces']) && is_array($fileSecretArr) && count($fileSecretArr) > 0 && is_array($_SESSION["cache"]['photos']['handling']['faces']) && count($_SESSION["cache"]['photos']['handling']['faces']) > 0) {
					$cacheFacesHandling = $_SESSION["cache"]['photos']['handling']['faces'];
					foreach ($cacheFacesHandling as $key => $cacheFacesHandlingThis) {
						if (isset($cacheFacesHandlingThis['photos'], $cacheFacesHandlingThis['photos.local'], $cacheFacesHandlingThis['user.id'], $cacheFacesHandlingThis['author.type'], $cacheFacesHandlingThis['author.id']) && in_array($cacheFacesHandlingThis['photos'], $f_secret) && $cacheFacesHandlingThis['photos.local'] == "cache" && $cacheFacesHandlingThis['user.id'] == $userId && $cacheFacesHandlingThis['author.type'] == $guyType && $cacheFacesHandlingThis['author.id'] == $guyId) {
							unset($_SESSION["cache"]['photos']['handling']['faces'][$key]);
						}
					}
				}
				return array("return" => true, "id" => $fileArr['id'], "data" => $fileArr);
			}
		}else {
			return array("return" => false, "reason" => "sdfsa");
		}
	}
	function hash ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$type = isset($object, $object['type']) && is_string($object['type']) ? $object['type'] : null;
		if (in_array($type, ["analyze", "analytical"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 16;
			$tech = isset($object, $object['tech']) && is_array($object['tech']) ? $object['tech'] : ["difference", "perceptual", "average", "profile"];
			if ($resource == null || $size == null || $tech == null) {
				return array("return" => false, "reason" => "fd2");
			}else if ($size % 8 !== 0) {
				return array("return" => false, "reason" => "xsx");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2dxsf");
			}
			$dataArr = array();
			foreach ($tech as $typeHash) {
				if (!in_array($typeHash, ["difference", "perceptual", "average", "profile"])) {
					continue;
				}
				$hashThis = $this->hash(array("type" => $typeHash, "file" => $resource, "size" => $size));
				if (isset($hashThis, $hashThis['return'], $hashThis['hash']) && $hashThis['return'] == true) {
				    $dataArr[$typeHash] = array("hash" => $hashThis['hash']);
				    if (isset($hashThis['timelogs'])) {
				    	$dataArr[$typeHash]['timelogs'] = $hashThis['timelogs'];
				    }
				}else {
				   	return array("return" => false, "reason" => $hashThis);
				}
			}
			if (isset($dataArr) && is_array($dataArr) && count($dataArr) > 0) {
				return array("return" => true, "data" => $dataArr);
			}else {
			    return array("return" => false, "reason" => "546");
			}
		}else if (in_array($type, ["compare"])) {
			$fileA = isset($object, $object['file'], $object['file'][0]) ? $object['file'][0] : null;
			$fileB = isset($object, $object['file'], $object['file'][1]) ? $object['file'][1] : null;
			$tech = isset($object, $object['tech']) && is_array($object['tech']) ? $object['tech'] : ["difference", "perceptual", "average", "profile"];
			if ($fileA == null || $fileA == null) {
				return array("return" => false, "reason" => "");
			}else if (!file_exists($fileA)) {
				return array("return" => false, "reason" => "2ddfsf");
			}else if (!file_exists($fileB)) {
				return array("return" => false, "reason" => "2derdsf");
			}else if ($fileA == $fileB) {
				return array("return" => false, "reason" => "efretew");
			}
			$valueAllow = array("difference" => 70.00, "perceptual" => 85.00, "average" => 75.00, "profile" => 75.00);
			$hashA = $this->hash(array("type" => "analyze", "file" => $fileA, "tech" => $tech));
			$hashB = $this->hash(array("type" => "analyze", "file" => $fileB, "tech" => $tech));
			if (isset($hashA['return'], $hashB['return'], $hashA['data'], $hashB['data']) && $hashA['return'] == true && $hashB['return'] == true) {
				$dataArr = array();
				$dataArr['similar'] = null;
				$dataArr['result'] = array();
				$haveSimilar = $notSimilar = 0;
				foreach ($hashA['data'] as $typeHash => $valueHash) {
					if (!isset($hashA['data'][$typeHash]['hash']) || !isset($hashB['data'][$typeHash]['hash'])) {
						if (isset($hashA['data'][$typeHash])) {
							unset($hashA['data'][$typeHash]);
						}
						if (isset($hashB['data'][$typeHash])) {
							unset($hashB['data'][$typeHash]);
						}
						continue;
					}
					if (isset($hashA['data'][$typeHash]['hash'], $hashA['data'][$typeHash]['hash']) && in_array($typeHash, $tech)) {
						if (in_array($typeHash, ["profile"])) {
							$resultValue = 0;
							$profileA = explode("|", $hashA['data'][$typeHash]['hash']);
							$profileB = explode("|", $hashB['data'][$typeHash]['hash']);
							$rgbDistance = intval($profileA[0] - $profileB[0]);
							$wrongCount = 0;
							foreach ($profileA as $key => $rgbA) {
								$rgbB = $profileB[$key];
								if (isset($rgbA, $rgbB)) {
									if ($rgbA - $rgbB <= $rgbDistance && abs($rgbDistance) >= 8) {
										$wrongCount++;
									}else {
										continue;
									}
								}else {
									$wrongCount++;
								}
							}
							$resultValue = number_format(100 - ($wrongCount / count($profileA) * 100), 2);
						}else {
							$resultValue = $_tool->ratioHammingDistance(strval($hashA['data'][$typeHash]['hash']), strval($hashB['data'][$typeHash]['hash']));
						}
						$resultConfirm = $resultValue >= $valueAllow[$typeHash] ? true : false;
						$dataArr['result'][$typeHash] = array(
							"value" => $resultValue,
							"similar" => $resultConfirm
						);
						if ($resultConfirm == true) {
							$haveSimilar++;
						}else {
							$notSimilar++;
						}
					}
				}
				if (count($dataArr['result']) == 0) {
					return array("return" => false, "reason" => "erw");
				}
				if ($haveSimilar == $notSimilar && count($dataArr['result']) == count($valueAllow)) {
					if (isset($dataArr['result']['profile'], $dataArr['result']['profile']['similar']) && $dataArr['result']['profile']['similar'] == true) {
						$haveSimilar++;
					}
					if (isset($dataArr['result']['difference'], $dataArr['result']['difference']['similar']) && $dataArr['result']['difference']['similar'] == true) {
						$haveSimilar++;
					}
				}
				$dataArr['similar'] = $haveSimilar > $notSimilar ? true : false;
				$dataArr['hash'] = array();
				$dataArr['hash'][$fileA] = $hashA['data'];
				$dataArr['hash'][$fileB] = $hashB['data'];
				return array("return" => true, "data" => $dataArr);
			}else {
				return array("return" => false, "reason" => "2342era", "a" => $hashA, "b" => $hashB);
			}
		}else if (in_array($type, ["average"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2d23sf");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -blur 10x10 -colorspace Gray -contrast-stretch 10% -threshold 10% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2redsf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $pixels = $mediate = [];
		        for ($y = 0; $y < $size; $y++) {
		            for ($x = 0; $x < $size; $x++) {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $pixels[] = $pixel = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
		                if (($x * $y) % 8 === 0) {
		                	$mediate[] = $pixel;
		                }
		            }
		        }
		        imagedestroy($resized);
		        $average = floor(((array_sum($pixels) / count($pixels) * 2) + (array_sum($mediate) / count($mediate) * 8)) / 10);
		        $hash = null;
		        foreach ($pixels as $pixel) {
		            $hash .= ($pixel > $average) ? 1 : 0;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "sdwew");
			}
		}else if (in_array($type, ["perceptual"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2d54sf");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 20,40% -blur 10x10 -colorspace Gray -contrast-stretch 10% -resize ".($size * 10)."x".($size * 10)." ".$file." ");
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 30,60% -blur 15x15 -colorspace Gray -contrast-stretch 15% -threshold 15% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2d34sf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
				$size = $size * $size;
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $matrix = []; $row = []; $rows = []; $col = []; $cols = [];
		        for ($y = 0; $y < sqrt($size); $y++) {
		            for ($x = 0; $x < sqrt($size); $x++) {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $row[$x] = floor(($rgb['red'] * 0.299) + ($rgb['green'] * 0.587) + ($rgb['blue'] * 0.114));
		            }
		            $dctProgress = $this->hash(array("type" => "dct", "pixels" => $row));
		            if (isset($dctProgress, $dctProgress['return'], $dctProgress['transformed']) && $dctProgress['return'] == true) {
		                $rows[$y] = $dctProgress['transformed'];
		            }else {
		                return array("return" => false, "reason" => "grete");
		            }
		        }
		        imagedestroy($resized);
		        for ($x = 0; $x < sqrt($size); $x++) {
		            for ($y = 0; $y < sqrt($size); $y++) {
		                $col[$y] = $rows[$y][$x];
		            }
		            $dctProgress = $this->hash(array("type" => "dct", "pixels" => $col));
		            if (isset($dctProgress, $dctProgress['return'], $dctProgress['transformed']) && $dctProgress['return'] == true) {
		                $matrix[$x] = $dctProgress['transformed'];
		            }else {
		                return array("return" => false, "reason" => "grete");
		            }
		        }
		        $pixels = [];
		        for ($y = 0; $y < sqrt($size); $y++) {
		            for ($x = 0; $x < sqrt($size); $x++) {
		                $pixels[] = $matrix[$y][$x];
		            }
		        }
		        $medianProgress = $this->hash(array("type" => "median", "pixels" => $pixels));
		        if (isset($medianProgress, $medianProgress['return'], $medianProgress['median']) && $medianProgress['return'] == true) {
		            $median = $medianProgress['median'];
		        }else {
		            return array("return" => false, "reason" => "wreqwe");
		        }
		        $hash = null;
		        foreach ($pixels as $pixel) {
		            $hash .= $pixel > $median ? 1 : 0;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($type, ["difference"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2ddfgsf");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 20,40% -blur 20x20 -colorspace Gray -contrast-stretch 10% -threshold 20% -resize ".$size."x".$size." ".$file." ");
			//. $fileConvert = $this->exec("convert ".$resource." -strip -blur 20x20 -colorspace Gray -contrast-stretch 20% -threshold 10% -resize ".$size."x".$size."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2sdfdsf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
				$width = $size;
				$heigth = $size;
			    $resized = imagecreatetruecolor($width, $heigth);
			    imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $width, $heigth, imagesx($fileResource), imagesy($fileResource));
			    imagedestroy($fileResource);
			    $hash = null;
			    for ($y = 0; $y < $heigth; $y++) {
			        $rgb = imagecolorsforindex($resized, imagecolorat($resized, 0, $y));
			        $left = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			        for ($x = 0; $x < $width; $x++) {
			            $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
			            $right = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			            $hash .= $left > $right ? 1 : 0;
			            $left = $right;
			        }
			    }
			    imagedestroy($resized);
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($type, ["profile"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2d23sf");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -blur 10x10 -colorspace Gray -contrast-stretch 10% -threshold 10% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2redsf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $pixels = $mediate = [];
		        for ($y = 0; $y < $size; $y++) {
		            for ($x = 0; $x < $size; $x++) {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $pixels[] = $pixel = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
		                if (($x * $y) % 8 === 0) {
		                	$mediate[] = $pixel;
		                }
		            }
		        }
		        imagedestroy($resized);
		        $hash = floor(((array_sum($pixels) / count($pixels) * 2) + (array_sum($mediate) / count($mediate) * 8)) / 10);
		        foreach ($pixels as $pixel) {
		            $hash .= '|'.$pixel;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "sdwew");
			}
		}else if (in_array($type, ["dct"])) {
			$pixels = isset($object, $object['pixels']) && is_array($object['pixels']) ? $object['pixels'] : null;
			if ($pixels == null) {
				return array("return" => false, "reason" => "");
			}
			$transformed = [];
		    $size = count($pixels);
		    for ($i = 0; $i < $size; $i++) {
		        $sum = 0;
		        for ($j = 0; $j < $size; $j++) {
		            $sum += $pixels[$j] * cos($i * pi() * ($j + 0.5) / ($size));
		        }
		        $sum *= sqrt(2 / $size);
		        if ($i == 0) {
		            $sum *= 1 / sqrt(2);
		        }
		        $transformed[$i] = $sum;
		    }
		    return array("return" => true, "transformed" => $transformed);
		}else if (in_array($type, ["median"])) {
			$pixels = isset($object, $object['pixels']) && is_array($object['pixels']) ? $object['pixels'] : null;
			if ($pixels == null) {
				return array("return" => false, "reason" => "");
			}
			sort($pixels, SORT_NUMERIC);
		    $middle = floor(count($pixels) / 2);
		    if (count($pixels) % 2) {
		        $median = $pixels[$middle];
		    }else {
		        $low = $pixels[$middle];
		        $high = $pixels[$middle + 1];
		        $median = ($low + $high) / 2;
		    }
		    return array("return" => true, "median" => $median);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>