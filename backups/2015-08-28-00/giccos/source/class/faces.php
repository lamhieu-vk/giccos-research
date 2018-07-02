<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class faces {
	function __construct () {
		$GLOBALS["_faces"] = $this;
		$this->class = $GLOBALS;
	}
	function id ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) ? $object['guy']['type'] : null;
		$guyId = (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => $object);
		}
		//.
		$action = (isset($object['action']) && is_string($object['action'])) ? $object['action'] : null;
		if ($action == "get") {
			if (isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0) $rowsArr = $object['rows']; else $rowsArr = null;
			if (isset($object['label']) && is_string($object['label'])) $label = $_tool->convertDatabaseString($object['label']); else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $_tool->convertDatabaseString($object['value']); else $value = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
			if ($rowsArr == null) {
				return array("return" => false, "reason" => "");
			}
			if ($label == null || $value == null) {
				return array("return" => false, "reason" => "");
			}
			$rowsText = null;
			foreach ($rowsArr as $rowsThis) {
				if ($rowsThis == "*") {
					$rowsText = "*";
					break;
				}
				if (!isset($rowsText) || $rowsText == null) {
					$rowsText = "`".$rowsThis."`";
				}else {
					$rowsText .= ", `".$rowsThis."`";
				}
			}
			$getFacesRequest = "SELECT ".$rowsText." FROM `faces_id` WHERE `".$label."` = '".$value."' ".$limit.";";
			$getFacesQuery = mysqli_query($db, $getFacesRequest);
			if (!$getFacesQuery) {
				return array("return" => false, "reason" => "");
			}
			if ($getFacesQuery) $numRows = mysqli_num_rows($getFacesQuery); else $numRows = 0;
			$data = array();
			while ($faceFetch = mysqli_fetch_assoc($getFacesQuery)) {
				$data[] = $faceFetch;
			}
			$count = count($data);
			return array("return" => true, "count" => $count, "data" => $data);
		}else if ($action == "check") {
			$content = (isset($object['content']) && is_string($object['content'])) ? $object['content'] : null;
			if ($content == null) {
				return array("return" => false, "reason" => "321");
			}
			$optionsRequest = array(
				"api_key" => $_parameter->get('rekognition_key'),
				"api_secret" => $_parameter->get('rekognition_secret'),
				"jobs" => "face_part_gender_emotion_race_age_glass_mouth_open_wide_eye_closed_mustache_beard_sunglasses_beauty",
				"name_space" => $_parameter->get('rekognition_namespace'),
				"user_id" => $_parameter->get('rekognition_userid')
			);
			if ($_tool->isBase64($content)) {
				$optionsRequest['base64'] = $base64;
			}else {
				if (preg_match($_parameter->get('regex_sites_url'), $content)) {
					$getContent = $_tool->curl($content, 5, array("cookie" => true));
					if (isset($getContent['return'], $getContent['data']) && $getContent['return'] == true) {
						$optionsRequest['base64'] = base64_encode($getContent['data']);
					}else {
						return array("return" => false, "reason" => "4");
					}
				}else if (preg_match($_parameter->get('regex_sites_giccos_host'), $content)) {
					$getContent = $_tool->curl($content, 5, array("cookie" => true));
					if (isset($getContent['return'], $getContent['data']) && $getContent['return'] == true) {
						$optionsRequest['base64'] = base64_encode($getContent['data']);
					}else {
						return array("return" => false, "reason" => "4");
					}
				}else {
					return array("return" => false, "reason" => $content);
				}
			}
			$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 10, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
			if (isset($curlRequest['return'], $curlRequest['data']) && $curlRequest['return'] == true) {
				if (isset($optionsRequest['base64']) && $optionsRequest['base64'] != null) {
					list($imgSizeWidth, $imgSizeHeight) = getimagesize('data://application/octet-stream;base64,' . $optionsRequest['base64']);
				}else if (isset($optionsRequest['urls']) && $optionsRequest['urls'] != null) {
					list($imgSizeWidth, $imgSizeHeight) = getimagesize($optionsRequest['urls']);
				}else {
					return array("return" => false, "reason" => "xss");
				}
				$dataAnalysis = json_decode($curlRequest['data'], true);
				if (isset($dataAnalysis['face_detection']) && count($dataAnalysis['face_detection']) > 0) {
					$faces = array();
					foreach ($dataAnalysis['face_detection'] as $thisFaceDetection) {
						$faceAnalysisCache = $this->changeFaceDetectionArr($thisFaceDetection, false);
						$faceAnalysisCache['boundingbox.ratio.width'] = $imgSizeWidth / $faceAnalysisCache['boundingbox.size.width'];
						$faceAnalysisCache['boundingbox.ratio.height'] = $imgSizeHeight / $faceAnalysisCache['boundingbox.size.height'];
						$faces[] = $faceAnalysisCache;
					}
					return array("return" => true, "faces" => $faces);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "sxa");
			}
		}else if ($action == "add") {
			if (isset($object['face']) && is_array($object['face']) && count($object['face']) > 0) $face = $object['face']; else $face = null;
			if (isset($object['thumbnail'])) $thumbnail = $object['thumbnail']; else $thumbnail = null;
			if (is_array($thumbnail) && count($thumbnail) > 0) {
				$fileUploadThumbnail = $_storage->upload(array("format" => "image", "move" => "copy", "folder" => "faces", "file" => $thumbnail['file'], "mime" => $thumbnail['mime'], "name" => $thumbnail['nameraw']));
				if (isset($fileUploadThumbnail['return'], $fileUploadThumbnail['storage']) && $fileUploadThumbnail['return'] == true && is_array($fileUploadThumbnail['storage'])) {
					$fileUploadThumbnail = $fileUploadThumbnail['storage'];
					$fileUploadedArr = array(
						"tmp" => $fileUploadThumbnail['source'], 
						"mime" => $fileUploadThumbnail['mime'],
						"size" => $fileUploadThumbnail['size'],
						"name" => $fileUploadThumbnail['name']
					);
					$fileUploadedEditor = photosEditor::factory($fileUploadedArr);
					$fileUploadedEditor->crop($face['boundingbox.size.width'], $face['boundingbox.size.height'], $face['boundingbox.tl.x'], $face['boundingbox.tl.y']);
					$fileUploadedEditor->resize($_parameter->get('image_faces_thumbnail'), 0);
					$thumbnailPath = $_tool->links($fileUploadThumbnail['source']);
					$thumbnailDisplay = $fileUploadThumbnail['display'];
				}else {
					return array("return" => false, "reason" => "wr");
				}
			}else if (is_string($thumbnail) && $thumbnail != null) {
				$getThumbnailFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $thumbnail, "rows" => ["token", "path"], "limit" => "LIMIT 1"));
				if (isset($getThumbnailFile['return'], $getThumbnailFile['count'], $getThumbnailFile['data']) && $getThumbnailFile['return'] == true && $getThumbnailFile['count'] > 0) {
					$thumbnailPath = $_tool->links($getThumbnailFile['data'][0]['source']);
					$thumbnailDisplay = $thumbnail;
				}else {
					return array("return" => false, "reason" => "axs");
				}
			}else {
				return array("return" => false, "reason" => "qd");
			}
			if (!isset($thumbnailPath) || $thumbnailPath == null) {
				return array("return" => false, "reason" => "asdasd");
			}
			$optionsRequest = array(
				"api_key" => $_parameter->get('rekognition_key'),
				"api_secret" => $_parameter->get('rekognition_secret'),
				"jobs" => "face_add_aggressive",
				"name_space" => $_parameter->get('rekognition_namespace'),
				"user_id" => $_parameter->get('rekognition_userid')
			);
			$optionsRequest['base64'] = base64_encode($_tool->contentMediaFile($thumbnailPath, 5, array("cookie" => true)));
			$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 0, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
			if (isset($curlRequest['return'], $curlRequest['data']) && $curlRequest['return'] == true) {
				$dataAnalysis = json_decode($curlRequest['data'], true);
				if (isset($dataAnalysis['face_detection']) && is_array($dataAnalysis['face_detection']) && count($dataAnalysis['face_detection']) > 0) {
					$faceAnalysis = $dataAnalysis['face_detection'][0];
					$faceImg = $faceAnalysis['img_index'];
					$checkExists = $this->id(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "exists", "label" => "faces", "value" => $faceImg));
					$isExists = isset($checkExists['return'], $checkExists['exists']) && $checkExists['return'] == true && is_bool($checkExists['return']) ? $checkExists['exists'] : null;
					if ($isExists == null) {
						return array("return" => false, "reason" => "xs", "s" => $checkExists);
					}
					$obj = $face;
					if ($isExists == true) {
						$isAdd = false;
						$getFaceQuery = mysqli_query($db, "SELECT * FROM `faces_id` WHERE `faces` = '{$faceImg}' ORDER BY `id` DESC LIMIT 1");
						if (!$getFaceQuery) {
							return array("return" => false, "reason" => "adq");
						}
						if (mysqli_num_rows($getFaceQuery) == 0) {
							return array("return" => false, "reason" => "xqers");
						}
						$obj = mysqli_fetch_assoc($getFaceQuery);
						if (!isset($obj['thumbnail'])) {
							mysqli_query($db, "DELETE FROM `faces_id` WHERE `id` = '{$obj['id']}';");
							$isAdd = true;
						}else {
							$existsFile = $_storage->exists(array("format" => "image", "label" => "display", "value" => $obj['thumbnail']));
							if (isset($existsFile['return'], $existsFile['exists']) && $existsFile['return'] == true && $existsFile['exists'] == true) {
								$delMediaFileOpts = array(
									"format" => "image",
									"label" => "display",
									"value" => $thumbnailDisplay
								);
								$delMediaFile = $_storage->delete($delMediaFileOpts);
								if (isset($delMediaFile['return']) && $delMediaFile['return'] == true) {
									return array("return" => true, "obj" => $obj);
								}else {
									return array("return" => false, "reason" => "qdsa");
								}
								return array("return" => true, "obj" => $obj);
							}else if (isset($existsFile['return'], $existsFile['exists']) && $existsFile['return'] == true && $existsFile['exists'] == false) {
								mysqli_query($db, "DELETE FROM `faces_id` WHERE `id` = '{$obj['id']}'");
								$isAdd = true;
							}else {
								return array("return" => false, "reason" => "acfwe");
							}
						}
					}else {
						$isAdd = true;
					}
					if ($isAdd == true) {
						$obj['updated'] = $obj['time'] = time();
						$obj['token'] = hash('crc32', time().'::'.rand().'::'.rand().'::'.rand());
						$obj['display'] = hash('crc32', $obj['token']);
						$obj['tag'] = null;
						$obj['thumbnail'] = $thumbnailDisplay;
						$obj['faces'] = $faceAnalysis['img_index'];
						$obj['mood'] = serialize($obj['mood']);
						$insertSql = "
						INSERT INTO `faces_id` 
						(`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`, `mood`) 
						VALUES 
						(NULL, '{$obj['time']}', '{$obj['updated']}', '{$obj['token']}', '{$obj['display']}', '{$obj['tag']}', '{$obj['thumbnail']}', '{$obj['faces']}', '{$obj['confidence']}', '{$obj['eye.left.x']}', '{$obj['eye.left.y']}', '{$obj['eye.right.x']}', '{$obj['eye.right.y']}', '{$obj['nose.x']}', '{$obj['nose.y']}', '{$obj['mouth.tl.x']}', '{$obj['mouth.tl.y']}', '{$obj['mouth.bl.x']}', '{$obj['mouth.bl.y']}', '{$obj['mouth.tr.x']}', '{$obj['mouth.tr.y']}', '{$obj['mouth.br.x']}', '{$obj['mouth.br.y']}', '{$obj['pose.roll']}', '{$obj['pose.yaw']}', '{$obj['pose.pitch']}', '{$obj['race.text']}', '{$obj['race.value']}', '{$obj['quality.brn']}', '{$obj['quality.shn']}', '{$obj['age']}', '{$obj['smile']}', '{$obj['glasses']}', '{$obj['sunglasses']}', '{$obj['eye_closed']}', '{$obj['mouth_open_wide']}', '{$obj['beauty']}', '{$obj['sex']}', '{$obj['mood']}');
						";
						$insertQuery = mysqli_query($db, $insertSql);
						if (!$insertQuery) {
							return array("return" => false, "reason" => "sdf");
						}else {
							$obj['id'] = mysqli_insert_id($db);
							$facesTranOptionsRequest = array(
								"api_key" => $_parameter->get('rekognition_key'),
								"api_secret" => $_parameter->get('rekognition_secret'),
								"jobs" => "face_train",
								"name_space" => $_parameter->get('rekognition_namespace'),
								"user_id" => $_parameter->get('rekognition_userid')
							);
							$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 5, array("cookie" => false, "method" => "POST", "form" => $facesTranOptionsRequest));
							$facesClusterOptionsRequest = array(
								"api_key" => $_parameter->get('rekognition_key'),
								"api_secret" => $_parameter->get('rekognition_secret'),
								"jobs" => "face_cluster",
								"name_space" => $_parameter->get('rekognition_namespace'),
								"user_id" => $_parameter->get('rekognition_userid'),
								"aggressiveness" => "50"
							);
							$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 5, array("cookie" => true, "method" => "POST", "form" => $facesClusterOptionsRequest));
							return array("return" => true, "obj" => $obj);
						}
					}
				}else {
					return array("return" => false, "reason" => "x");
				}
			}else {
				return array("return" => false, "reason" => "s");
			}
		}else if ($action == "remove" || $action == "delete") {
			//.
		}else if ($action == "rename" || $action == "move") {
			$label = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$value = isset($object['value']) && is_string($object['value']) ? $_tool->convertDatabaseString($object['value']) : null;
			$source = isset($object['source']) && is_string($object['source']) ? $_tool->convertDatabaseString($object['source']) : null;
			$destination = isset($object['destination']) && is_string($object['destination']) ? $_tool->convertDatabaseString($object['destination']) : null;
			if ($label == null || $value == null) {
				return array("return" => false, "reason" => "");
			}
			if ($source == null || $destination == null) {
				return array("return" => false, "reason" => "");
			}
			$sourceTag = $_parameter->get('rekognition_tagdefault');
			$getInfoRequest = "SELECT `id`, `tag`, `faces` FROM `faces_id` WHERE `".$label."` = '".$value."' LIMIT 1";
			$analysisQuery = mysqli_query($db, $getInfoRequest);
			if (!$analysisQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($analysisQuery) > 0) {
				$notifyArr = array();
				while ($analysisFetch = mysqli_fetch_assoc($analysisQuery)) {
					$optionsRequest = array(
						"api_key" => $_parameter->get('rekognition_key'),
						"api_secret" => $_parameter->get('rekognition_secret'),
						"jobs" => "face_rename",
						"name_space" => $_parameter->get('rekognition_namespace'),
						"user_id" => $_parameter->get('rekognition_userid'),
						"tag" => $sourceTag,
						"new_tag" => $destinationTag,
						"img_index" => $analysisFetch['faces']
					);
					$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 0, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
					if (isset($curlRequest['return'], $curlRequest['data']) && $curlRequest['return'] == true) {
						$changeQuery = mysqli_query($db, "UPDATE `faces_id` SET `updated` = '".time()."', `tag` = '".$destinationTag."' WHERE `id` = '".$analysisFetch['id']."';");
						if (!$changeQuery) {
							$notifyArr[] = array("return" => false, "reason" => "");
						}else {
							$notifyArr[] = array("return" => true);
						}
					}else {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
				}
				return array("return" => true, "notify" => $notifyArr);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			$label = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$value = isset($object['value']) && is_string($object['value']) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($label == null || $value == null) {
				return array("return" => false, "reason" => "");
			}
			$existsFaceRequest = "SELECT `id` FROM `faces_id` WHERE `".$label."` = '".$value."' LIMIT 1;";
			$existsFaceQuery = mysqli_query($db, $existsFaceRequest);
			if (!$existsFaceQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsFaceQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function changeFaceDetectionArr ($object, $type = false) {
		if ($type == false) {
			if (isset($object['boundingbox']['tl']['x'])) {
				$object['boundingbox.tl.x'] = $object['boundingbox']['tl']['x'];
				unset($object['boundingbox']['tl']['x']);
			}
			if (isset($object['boundingbox']['tl']['y'])) {
				$object['boundingbox.tl.y'] = $object['boundingbox']['tl']['y'];
				unset($object['boundingbox']['tl']['y']);
			}
			if (isset($object['boundingbox']['tl']) && is_array($object['boundingbox']['tl']) && count($object['boundingbox']['tl']) == 0) {
				unset($object['boundingbox']['tl']);
			}
			if (isset($object['boundingbox']['size']['width'])) {
				$object['boundingbox.size.width'] = $object['boundingbox']['size']['width'];
				unset($object['boundingbox']['size']['width']);
			}
			if (isset($object['boundingbox']['size']['height'])) {
				$object['boundingbox.size.height'] = $object['boundingbox']['size']['height'];
				unset($object['boundingbox']['size']['height']);
			}
			if (isset($object['boundingbox']['size']) && is_array($object['boundingbox']['size']) && count($object['boundingbox']['size']) == 0) {
				unset($object['boundingbox']['size']);
			}
			if (isset($object['boundingbox']) && is_array($object['boundingbox']) && count($object['boundingbox']) == 0) {
				unset($object['boundingbox']);
			}
			if (isset($object['eye_left']['x'])) {
				$object['eye.left.x'] = $object['eye_left']['x'];
				unset($object['eye_left']['x']);
			}
			if (isset($object['eye_left']['y'])) {
				$object['eye.left.y'] = $object['eye_left']['y'];
				unset($object['eye_left']['y']);
			}
			if (isset($object['eye_left']) && is_array($object['eye_left']) && count($object['eye_left']) == 0) {
				unset($object['eye_left']);
			}
			if (isset($object['eye_right']['x'])) {
				$object['eye.right.x'] = $object['eye_right']['x'];
				unset($object['eye_right']['x']);
			}
			if (isset($object['eye_right']['y'])) {
				$object['eye.right.y'] = $object['eye_right']['y'];
				unset($object['eye_right']['y']);
			}
			if (isset($object['eye_right']) && is_array($object['eye_right']) && count($object['eye_right']) == 0) {
				unset($object['eye_right']);
			}
			if (isset($object['mouth l']['x'])) {
				$object['mouth.tl.x'] = $object['mouth l']['x'];
				unset($object['mouth l']['x']);
			}
			if (isset($object['mouth l']['y'])) {
				$object['mouth.tl.y'] = $object['mouth l']['y'];
				unset($object['mouth l']['y']);
			}
			if (isset($object['mouth l']) && is_array($object['mouth l']) && count($object['mouth l']) == 0) {
				unset($object['mouth l']);
			}
			if (isset($object['mouth_l']['x'])) {
				$object['mouth.bl.x'] = $object['mouth_l']['x'];
				unset($object['mouth_l']['x']);
			}
			if (isset($object['mouth_l']['y'])) {
				$object['mouth.bl.y'] = $object['mouth_l']['y'];
				unset($object['mouth_l']['y']);
			}
			if (isset($object['mouth_l']) && is_array($object['mouth_l']) && count($object['mouth_l']) == 0) {
				unset($object['mouth_l']);
			}
			if (isset($object['mouth r']['x'])) {
				$object['mouth.tr.x'] = $object['mouth r']['x'];
				unset($object['mouth r']['x']);
			}
			if (isset($object['mouth r']['y'])) {
				$object['mouth.tr.y'] = $object['mouth r']['y'];
				unset($object['mouth r']['y']);
			}
			if (isset($object['mouth r']) && is_array($object['mouth r']) && count($object['mouth r']) == 0) {
				unset($object['mouth r']);
			}
			if (isset($object['mouth_r']['x'])) {
				$object['mouth.br.x'] = $object['mouth_r']['x'];
				unset($object['mouth_r']['x']);
			}
			if (isset($object['mouth_r']['y'])) {
				$object['mouth.br.y'] = $object['mouth_r']['y'];
				unset($object['mouth_r']['y']);
			}
			if (isset($object['mouth_r']) && is_array($object['mouth_r']) && count($object['mouth_r']) == 0) {
				unset($object['mouth_r']);
			}
			if (isset($object['nose']['x'])) {
				$object['nose.x'] = $object['nose']['x'];
				unset($object['nose']['x']);
			}
			if (isset($object['nose']['y'])) {
				$object['nose.y'] = $object['nose']['y'];
				unset($object['nose']['y']);
			}
			if (isset($object['nose']) && is_array($object['nose']) && count($object['nose']) == 0) {
				unset($object['nose']);
			}
			if (isset($object['pose']['roll'])) {
				$object['pose.roll'] = $object['pose']['roll'];
				unset($object['pose']['roll']);
			}
			if (isset($object['pose']['yaw'])) {
				$object['pose.yaw'] = $object['pose']['yaw'];
				unset($object['pose']['yaw']);
			}
			if (isset($object['pose']['pitch'])) {
				$object['pose.pitch'] = $object['pose']['pitch'];
				unset($object['pose']['pitch']);
			}
			if (isset($object['pose']) && is_array($object['pose']) && count($object['pose']) == 0) {
				unset($object['pose']);
			}
			if (isset($object['quality']['brn'])) {
				$object['quality.brn'] = $object['quality']['brn'];
				unset($object['quality']['brn']);
			}
			if (isset($object['quality']['shn'])) {
				$object['quality.shn'] = $object['quality']['shn'];
				unset($object['quality']['shn']);
			}
			if (isset($object['quality']) && is_array($object['quality']) && count($object['quality']) == 0) {
				unset($object['quality']);
			}
			if (isset($object['race']) && is_array($object['race']) && count($object['race']) > 0) {
				foreach ($object['race'] as $key => $value) {
					$object['race.text'] = $key;
					$object['race.value'] = $value;
					break;
				}
				unset($object['race']);
			}
			if (isset($object['emotion']) && is_array($object['emotion']) && count($object['emotion']) > 0) {
				foreach ($object['emotion'] as $key => $emotionThis) {
					$object['emotion'][$key] = number_format($emotionThis, 2);
				}
				$object['mood'] = $object['emotion'];
				unset($object['emotion']);
			}
		}
		return $object;
	}
}
?>