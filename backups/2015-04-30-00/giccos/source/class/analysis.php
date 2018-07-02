<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class analysis {
	function __construct () {
		$GLOBALS["_analysis"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function faces ($action, $object) {
		$this->callUserInfo();
		if (!isset($this->user['login']) || !$this->user['login']) {
			return array("return" => false, "reason" => "");
		}else {
			$_storage = $this->class['_storage'];
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$db = $this->class['_db']->port('beta');
		}
		if ($action == "check") {
			if (isset($object['url']) && is_string($object['url'])) $url = $object['url']; else $url = null;
			if (isset($object['base64']) && is_string($object['base64'])) $base64 = $object['base64']; else $base64 = null;
			if ($url == null && $base64 == null) {
				return array("return" => false, "reason" => "");
			}
			$optionsRequest = array(
				"api_key" => $_parameter->get('rekognition_key'),
				"api_secret" => $_parameter->get('rekognition_secret'),
				"jobs" => "face_part_gender_emotion_race_age_glass_mouth_open_wide_eye_closed_mustache_beard_sunglasses_beauty",
				"name_space" => $_parameter->get('rekognition_namespace'),
				"user_id" => $_parameter->get('rekognition_userid')
			);
			if ($url != null) {
				$optionsRequest['base64'] = base64_encode($_tool->contentMediaFile($url, 5, array("cookie" => true)));
			}else if ($base64 != null) {
				$optionsRequest['base64'] = $base64;
			}else {
				return array("return" => false, "reason" => "");
			}
			$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 5, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
			if (isset($curlRequest['return'], $curlRequest['data']) && $curlRequest['return'] == true) {
				if (isset($optionsRequest['base64']) && $optionsRequest['base64'] != null) {
					list($imgSizeWidth, $imgSizeHeight) = getimagesize('data://application/octet-stream;base64,' . $optionsRequest['base64']);
				}else if (isset($optionsRequest['urls']) && $optionsRequest['urls'] != null) {
					list($imgSizeWidth, $imgSizeHeight) = getimagesize($optionsRequest['urls']);
				}else {
					return array("return" => false, "reason" => "");
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
					return array("return" => false, "reason" => $url);
				}
			}else {
				return array("return" => false, "reason" => "");
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
					return array("return" => false, "reason" => "");
				}
			}else if (is_string($thumbnail) && $thumbnail != null) {
				$getThumbnailFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $thumbnail, "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
				if (isset($getThumbnailFile['return'], $getThumbnailFile['num'], $getThumbnailFile['file']) && $getThumbnailFile['return'] == true && $getThumbnailFile['num'] > 0) {
					$thumbnailPath = $_tool->links($_tool->hash("decode", $getThumbnailFile['file'][0]['path'], $getThumbnailFile['file'][0]['token']));
					$thumbnailDisplay = $thumbnail;
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
			if (!isset($thumbnailPath) || $thumbnailPath == null) {
				return array("return" => false, "reason" => "");
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
					$obj = $face;
					$obj['updated'] = $obj['time'] = time();
					$obj['token'] = hash('crc32', $this->user['id'].'::'.time().'::'.rand());
					$obj['display'] = hash('crc32', $obj['token']);
					$obj['user.id'] = $this->user['id'];
					$obj['uploader.type'] = $this->user['mode']['type'];
					$obj['uploader.id'] = $this->user['mode']['id'];
					$obj['tag'] = $this->user['secret'];
					$obj['thumbnail'] = $thumbnailDisplay;
					$obj['img_index'] = $faceAnalysis['img_index'];
					$numQuery = mysqli_query($db, "SELECT `id` FROM `analysis_faces` WHERE `user.id` = '{$obj['user.id']}' AND `uploader.type` = '{$obj['uploader.type']}' AND `uploader.id` = '{$obj['uploader.id']}' AND `img_index` = '{$obj['img_index']}' LIMIT 1");
					if ($numQuery) $numInserted = mysqli_num_rows($numQuery); else $numInserted = 0;
					if ($numInserted == 0) {
						$insertSql = "
						INSERT INTO `analysis_faces` 
						(`id`, `time`, `updated`, `token`, `display`, `user.id`, `uploader.type`, `uploader.id`, `tag`, `thumbnail`, `img_index`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) 
						VALUES 
						(NULL, '{$obj['time']}', '{$obj['updated']}', '{$obj['token']}', '{$obj['display']}', '{$obj['user.id']}', '{$obj['uploader.type']}', '{$obj['uploader.id']}', '{$obj['tag']}', '{$obj['thumbnail']}', '{$obj['img_index']}', '{$obj['confidence']}', '{$obj['eye.left.x']}', '{$obj['eye.left.y']}', '{$obj['eye.right.x']}', '{$obj['eye.right.y']}', '{$obj['nose.x']}', '{$obj['nose.y']}', '{$obj['mouth.tl.x']}', '{$obj['mouth.tl.y']}', '{$obj['mouth.bl.x']}', '{$obj['mouth.bl.y']}', '{$obj['mouth.tr.x']}', '{$obj['mouth.tr.y']}', '{$obj['mouth.br.x']}', '{$obj['mouth.br.y']}', '{$obj['pose.roll']}', '{$obj['pose.yaw']}', '{$obj['pose.pitch']}', '{$obj['race.text']}', '{$obj['race.value']}', '{$obj['quality.brn']}', '{$obj['quality.shn']}', '{$obj['emotion.oe.text']}', '{$obj['emotion.oe.value']}', '{$obj['emotion.to.text']}', '{$obj['emotion.to.value']}', '{$obj['emotion.te.text']}', '{$obj['emotion.te.value']}', '{$obj['age']}', '{$obj['smile']}', '{$obj['glasses']}', '{$obj['sunglasses']}', '{$obj['eye_closed']}', '{$obj['mouth_open_wide']}', '{$obj['beauty']}', '{$obj['sex']}');
						";
						$insertQuery = mysqli_query($db, $insertSql);
						if (!$insertQuery) {
							return array("return" => false, "reason" => "");
						}else {
							$obj['id'] = mysqli_insert_id($db);
							$changeFaceAnalysis = $this->faces("move", array("label" => "display", "value" => $obj['display'], "to" => $obj['tag']));
							if (isset($changeFaceAnalysis['return']) && $changeFaceAnalysis['return'] == true) {
								$optionsRequest = array(
									"api_key" => $_parameter->get('rekognition_key'),
									"api_secret" => $_parameter->get('rekognition_secret'),
									"jobs" => "face_train",
									"name_space" => $_parameter->get('rekognition_namespace'),
									"user_id" => $_parameter->get('rekognition_userid')
								);
								$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 0, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
								return array("return" => true, "obj" => $obj);
							}else {
								$delPhotosUsertag = $_storage->delete(array("format" => "image", "label" => "display", "value" => $thumbnailDisplay));
								$delFacesUsertag = $this->faces("delete", array("label" => "display", "value" => $obj['display']));
								return array("return" => false, "reason" => "");
							}
						}
					}else {
						$obj['id'] = mysqli_fetch_assoc($numQuery)['id'];
						return array("return" => true, "obj" => $obj);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "remove" || $action == "delete") {
			if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
			if (isset($object['tag']) && is_string($object['tag'])) $tag = $object['tag']; else $tag = null;
			if ($tag == null) {
				$tag = $_parameter->get('rekognition_tagdefault');
				$querySql = "SELECT `id`, `tag`, `img_index` FROM `analysis_faces` WHERE `{$label}` = '{$value}' LIMIT 1";
			}else {
				$querySql = "SELECT `id`, `tag`, `img_index` FROM `analysis_faces` WHERE `{$label}` = '{$value}' AND `tag` = '{$tag}' LIMIT 1";
			}
			$analysisQuery = mysqli_query($db, $querySql);
			if ($analysisQuery && mysqli_num_rows($analysisQuery) > 0) {
				$analysisFetch = mysqli_fetch_assoc($analysisQuery);
				$optionsRequest = array(
					"api_key" => $_parameter->get('rekognition_key'),
					"api_secret" => $_parameter->get('rekognition_secret'),
					"jobs" => "face_delete",
					"name_space" => $_parameter->get('rekognition_namespace'),
					"user_id" => $_parameter->get('rekognition_userid'),
					"tag" => $analysisFetch['tag'],
					"img_index" => $analysisFetch['img_index']
				);
				$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 0, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
				$deleteQuery = mysqli_query($db, "DELETE FROM `analysis_faces` WHERE `id` = '{$analysisFetch['id']}'");
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "rename" || $action == "move") {
			if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
			if (isset($object['from']) && is_string($object['from'])) $from = $object['from']; else $from = null;
			if (isset($object['to']) && is_string($object['to'])) $to = $object['to']; else $to = null;
			if ($to == null) {
				return array("return" => false, "reason" => "");
			}
			if ($from == null || $from == $_parameter->get('rekognition_tagdefault')) {
				$from = $_parameter->get('rekognition_tagdefault');
				$querySql = "SELECT `id`, `tag`, `img_index` FROM `analysis_faces` WHERE `{$label}` = '{$value}' LIMIT 1";
			}else {
				$querySql = "SELECT `id`, `tag`, `img_index` FROM `analysis_faces` WHERE `{$label}` = '{$value}' AND `tag` = '{$from}' LIMIT 1";
			}
			$analysisQuery = mysqli_query($db, $querySql);
			if ($analysisQuery && mysqli_num_rows($analysisQuery) > 0) {
				$time = time();
				$analysisFetch = mysqli_fetch_assoc($analysisQuery);
				$optionsRequest = array(
					"api_key" => $_parameter->get('rekognition_key'),
					"api_secret" => $_parameter->get('rekognition_secret'),
					"jobs" => "face_rename",
					"name_space" => $_parameter->get('rekognition_namespace'),
					"user_id" => $_parameter->get('rekognition_userid'),
					"tag" => $from,
					"new_tag" => $to,
					"img_index" => $analysisFetch['img_index']
				);
				$curlRequest = $_tool->curl($_parameter->get('rekognition_url'), 0, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
				if (isset($curlRequest['return'], $curlRequest['data']) && $curlRequest['return'] == true) {
					$changeQuery = mysqli_query($db, "UPDATE `analysis_faces` SET `updated` = '{$time}', `tag` = '{$to}' WHERE `id` = '{$analysisFetch['id']}'");
					if (!$changeQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
			$numQuery = mysqli_query($db, "SELECT `id` FROM `analysis_faces` WHERE `{$label}` = '{$value}'");
			if ($numQuery) $numRows = mysqli_num_rows($numQuery); else $numRows = 0;
			if ($numRows == 0) {
				return array("return" => true, "exists" => false, "count" => 0);
			}else {
				return array("return" => true, "exists" => true, "count" => $numRows);
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
				$object['emotion.oe.text'] = $object['emotion.to.text'] = $object['emotion.te.text'] = null;
				$object['emotion.oe.value'] = $object['emotion.to.value'] = $object['emotion.te.value'] = 0;
				$c = 1;
				foreach ($object['emotion'] as $key => $value) {
					if ($c == 1) {
						$object['emotion.oe.text'] = $key;
						$object['emotion.oe.value'] = $value;
					}else if ($c == 2) {
						$object['emotion.to.text'] = $key;
						$object['emotion.to.value'] = $value;
					}else if ($c == 3) {
						$object['emotion.te.text'] = $key;
						$object['emotion.te.value'] = $value;
						break;
					}
				}
				unset($object['emotion']);
			}
		}
		return $object;
	}
}
?>