<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	$_giccos->logsAjax();
	if (isset($_POST['robot']) && is_string($_POST['robot'])) $robotRequest = $_POST['robot']; else $robotRequest = null;
	if (isset($_POST['port']) && is_string($_POST['port'])) $port = $_POST['port']; else $port = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if ($port == "photos" && $token == $g_client['token']['action']['photos']) {
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if ($type == "editor") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "preview") {
				if (isset($_POST['name']) && is_string($_POST['name'])) $name = $_POST['name']; else $name = null;
				if (isset($_POST['options']) && is_string($_POST['options'])) $options = $_POST['options']; else $options = null;
				if ($options == "resize" && $name != "") {
					if (isset($_POST['height']) && is_string($_POST['height'])) $imgHeight = $_POST['height']; else $imgHeight = null;
					if (isset($_POST['width']) && is_string($_POST['width'])) $imgWidth = $_POST['width']; else $imgWidth = null;
					$media_cache = $_media->cache('photos', array("action" => "get", "label" => "name", "value" => $name));
					if (isset($media_cache['return']) && $media_cache['return'] == true) {
						$img = photosEditor::factory($media_cache["data"][0]);
						if ($width == null && $height != null) {
							$img->resize($width, 0);
						}else if ($width != null && $height == null) {
							$img->resize(0, $height);
						}else {
							$img->resize($width, $height);
						}
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $media_cache['data']['path']));
						die(print json_encode(array("return" => true)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($options == "effect" && $name != "") {
					if (isset($_SESSION["cache"]['photos_editor_handling'][$name])) {
						$photos_cache = $_SESSION["cache"]['photos_editor_handling'][$name];
					}else {
						$photos_cache = null;
					}
					if (isset($photos_cache, $photos_cache["wait"]) && $photos_cache != null) {
						$photos_cache_wait = $photos_cache["wait"];
						if ($photos_cache_wait == true){
							$_media = new media;
							$media_cache = $_media->cache("photos", array("action" => "replace", "set" => "cancel", "name" => $name));
						}
					}
					if (isset($_POST['layer']) && is_string($_POST['layer'])) $layer = $_POST['layer']; else $layer = null;
					if (isset($_POST['value']) && is_string($_POST['value'])) $value = $_POST['value']; else $value = null;
					$media_cache = $_media->cache('photos', array("action" => "get", "label" => "name", "value" => $name));
					if (isset($media_cache['return']) && $media_cache['return'] == true) {
						$return = false;
						$img = photosEditor::factory($media_cache["data"][0]);
						if ($layer == "filter" && ($value > 0 && $value <= 8)) {
							$img->filter($value);
							$return = true;
						}else if ($layer == "brightness" && ($value >= -25 && $value <= 25)) {
							$img->brightness($value);
							$return = true;
						}else if ($layer == "contrast" && ($value >= 0 && $value <= 25)) {
							$img->stretch("{$value},0", true);
							$return = true;
						}else if ($layer == "rotate" && ($value == -90 || $value == +90 || $value == 'left' || $value == 'right')) {
							if ($value == 'left') {
								$value = -90;
							}else if ($value == 'right') {
								$value = +90;
							}
							$img->rotate($value);
							$return = true;
						}
						if ($return == true) {
							$_SESSION["cache"]['photos_editor_handling'][$name]["wait"] = true;
							$_storage->recheck(array("format" => "image", "label" => "display", "value" => $media_cache['data'][0]['path']));
							die(print json_encode(array("return" => true)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($options == "action" && $name != "") {
					if (isset($_POST['set']) && is_string($_POST['set'])) $set = $_POST['set']; else $set = null;
					if ($set == "apply" || $set == "cancel") {
						$_media = new media;
						$media_cache = $_media->cache('photos', array("action" => "replace", "set" => $set, "name" => $name));
						if (isset($media_cache['return']) && $media_cache['return'] == true) {
							$_SESSION["cache"]['photos_editor_handling'][$name]["wait"] = false;
							die(print json_encode(array("return" => true)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}
		}else if ($type == "cache") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "add") {
				$file_upload = $_FILES["file"];
				$file = $_tool->resetFileUpload($file_upload);
				$data = null;
				foreach ($file as $key => $value) {
					$_media = new media;
					$media_cache = $_media->cache("photos", array("action" => "add", "file" => $value));
					if (isset($media_cache['return']) && $media_cache['return'] == true) {
						$data[$key] = array("type" => "photos", "local" => "cache", "verify" => "false");
						$data[$key]['secret'] = $media_cache["data"]['secret'];
						$data[$key]['name'] = $media_cache["data"]['name'];
						$data[$key]['mime'] = $media_cache["data"]['mime'];
						$data[$key]['link'] = $_tool->links($_parameter->get('pathVirtual_cache_photos').'/'.$media_cache["data"]['name']);
						$data[$key]['size'] = $media_cache["data"]['size'];
						if (isset($_POST["resize"][$key])) $resize = addslashes($_POST["resize"][$key]); else $resize = null;
						if ($resize != null) {
							$img = photosEditor::factory($media_cache["data"]["tmp"], true);
							$img->resize($_parameter->get('cited_photosSize_length'), 0);
						}
						/*
						$optionsForm = array(
							"robot" => $g_client['token']['robot'],
							"token" => $g_client['token']['action']['photos'],
							"port" => "photos",
							"type" => "analysis",
							"action" => "getFaces",
						    "secret" => $media_cache["data"]['secret']
						);
						$optionsHeaders = array(
							"token" => $g_client['token']['ajax'],
							"referer" => $_tool->links(),
							"host" => $_tool->links("::host"),
							"x-requested-with" =>"XMLHttpRequest"
						);
						$_tool->curl($_tool->links("source/ajax/action.ajax"), 0, array("cookie" => true, "method" => "POST", "headers" => $optionsHeaders, "form" => $optionsForm));
						*/
					}else {
						$data[$key] = $media_cache['file'];
					}
				}
				die(print json_encode(array("return" => true, "data" => $data)));
			}else if ($action == "copy") {
				if (isset($_POST['name']) && is_string($_POST['name'])) $name = $_POST['name']; else $name = null;
				if (isset($_POST['secret']) && is_string($_POST['secret'])) $secret = $_POST['secret']; else $secret = null;
				if ($name != null && $secret != null) {
					$_media = new media;
					$media_cache = $_media->cache("photos", array("action" => "copy", "secret" => $secret, "name" => $name));
					if (isset($media_cache['return']) && $media_cache['return'] == true) {
						$imgData['original']['secret'] = $media_cache["data"]['original']['secret'];
						$imgData['original']['name'] = $media_cache["data"]['original']['name'];
						$imgData['original']['nameraw'] = $media_cache["data"]['original']['nameraw'];
						$imgData['original']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_photos').'/'.$media_cache["data"]['original']['name']);
						$imgData['copy']['secret'] = $media_cache["data"]['copy']['secret'];
						$imgData['copy']['name'] = $media_cache["data"]['copy']['name'];
						$imgData['copy']['nameraw'] = $media_cache["data"]['copy']['nameraw'];
						$imgData['copy']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_photos').'/'.$media_cache["data"]['copy']['name']);
						die(print json_encode(array("return" => true, "data" => $imgData)));
					}else {
						die(print json_encode(array("return" => false, "reason" => $media_cache)));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($_POST['file']) && isset($_POST['file'])) $file = $_POST['file']; else $file = null;
				if ($file != null && is_array($file) && count($file) > 0) {
					$_media = new media;
					foreach ($file as $i => $thisFile) {
						if (isset($thisFile['secret'])) $secret = $thisFile['secret']; else $secret = null;
						if (isset($thisFile['verify'])) $verify = $thisFile['verify']; else $verify = null;
						if ($verify == "0" || $verify == "false" || $verify == false) {
							$verify = false;
						}else if ($verify == "1" || $verify == "true" || $verify == true) {
							$verify = true;
						}
						if ($secret != null && ($verify == true || $verify == false)) {
							$deleteFile = $_media->cache("photos", array("action" => "delete", "key" => $secret, "verify" => $verify));
							if (isset($deleteFile['return']) && $deleteFile['return'] == true) {
								/*
								if (isset($_SESSION["cache"]['photos_faces_notfound'])) {
									$cachePhotosUsertagNotfound = $_SESSION["cache"]['photos_faces_notfound'];
									foreach ($cachePhotosUsertagNotfound as $key => $cachePhotosUsertagNotfoundThis) {
										if (isset($cachePhotosUsertagNotfoundThis['photos'])) {
											if (isset($cachePhotosUsertagNotfoundThis['user.id'], $cachePhotosUsertagNotfoundThis['author.type'], $cachePhotosUsertagNotfoundThis['author.id'])) {
												if ($cachePhotosUsertagNotfoundThis['photos'] == $secret) {
													unset($cachePhotosUsertagNotfound[$key]);
												}else {
													continue;
												}
											}else if (!isset($cachePhotosUsertagNotfoundThis['user.id'], $cachePhotosUsertagNotfoundThis['author.type'], $cachePhotosUsertagNotfoundThis['author.id'])) {
												unset($cachePhotosUsertagNotfound[$key]);
											}else {
												continue;
											}
										}else {
											unset($cachePhotosUsertagNotfound[$key]);
										}
									}
									$_SESSION["cache"]['photos_faces_notfound'] = $cachePhotosUsertagNotfound;
								}
								if (isset($_SESSION["cache"]['photos_faces_handling'])) {
									$cachePhotosUsertagHandling = $_SESSION["cache"]['photos_faces_handling'];
									foreach ($cachePhotosUsertagHandling as $key => $cachePhotosUsertagHandlingThis) {
										if (isset($cachePhotosUsertagHandlingThis['photos'])) {
											if (isset($cachePhotosUsertagHandlingThis['user.id'], $cachePhotosUsertagHandlingThis['author.type'], $cachePhotosUsertagHandlingThis['author.id'])) {
												if ($cachePhotosUsertagHandlingThis['photos'] == $secret) {
													unset($cachePhotosUsertagHandling[$key]);
												}else {
													continue;
												}
											}else if (!isset($cachePhotosUsertagHandlingThis['user.id'], $cachePhotosUsertagHandlingThis['author.type'], $cachePhotosUsertagHandlingThis['author.id'])) {
												unset($cachePhotosUsertagHandling[$key]);
											}else {
												continue;
											}
										}else {
											unset($cachePhotosUsertagHandling[$key]);
										}
									}
									$_SESSION["cache"]['photos_faces_handling'] = $cachePhotosUsertagHandling;
								}
								if (isset($_SESSION["cache"]['photos_faces'])) {
									$cachePhotosUsertag = $_SESSION["cache"]['photos_faces'];
									foreach ($cachePhotosUsertag as $key => $cachePhotosUsertagThis) {
										if (isset($cachePhotosUsertagThis['photos'])) {
											if (isset($cachePhotosUsertagThis['user.id'], $cachePhotosUsertagThis['author.type'], $cachePhotosUsertagThis['author.id'])) {
												if ($cachePhotosUsertagThis['photos'] == $secret) {
													unset($cachePhotosUsertag[$key]);
												}else {
													continue;
												}
											}else if (!isset($cachePhotosUsertagThis['user.id'], $cachePhotosUsertagThis['author.type'], $cachePhotosUsertagThis['author.id'])) {
												unset($cachePhotosUsertag[$key]);
											}else {
												continue;
											}
										}else {
											unset($cachePhotosUsertag[$key]);
										}
									}
									$_SESSION["cache"]['photos_faces'] = $cachePhotosUsertag;
								}
								*/
								$data[] = array("return" => true, "data" => $thisFile);
							}else {
								$data[] = array("return" => false, "reason" => $deleteFile['reason']);
							}
						}else {
							$data[] = array("return" => false, "reason" => "");
						}
					}
					die(print json_encode(array("return" => true, "data" => $data)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "push") {
				if (isset($_POST['file']) && isset($_POST['file'])) $file = $_POST['file']; else $file = null;
				if ($file != null && is_array($file) && count($file) > 0) {
					$_media = new media;
					foreach ($file as $key => $thisFile) {
						$_media->cache("photos", array("action" => "push", "secret" => $thisFile['secret'], "name" => $thisFile['name']));
					}
					die(print json_encode(array("return" => true)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "info") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "get") {
				
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "cache_usertag") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "update") {
				if (isset($_POST['photos']) && is_string($_POST['photos'])) $photos = $_POST['photos']; else $photos = null;
				if (isset($_POST['faces']) && is_string($_POST['faces'])) $faces = $_POST['faces']; else $faces = null;
				if (isset($_POST['guy'], $_POST['guy']['type'], $_POST['guy']['id'])) $guy = $_POST['guy']; else $guy = null;
				$numUsertagQuery = mysqli_query($db, "SELECT * FROM `photos_cache_usertag` WHERE `user.id` = '{$g_user['id']}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `photos` = '{$photos}' AND `faces` = '{$faces}'");
				if ($numUsertagQuery) $numUsertag = mysqli_num_rows($numUsertagQuery); else $numUsertag = 0;
				if ($numUsertag > 0) {
					//. check guy tag private.
					$pushUsertagSql = "UPDATE `photos_cache_usertag` SET `guy.type` = '{$guy['type']}', `guy.id` = '{$guy['id']}' WHERE `user.id` = '{$g_user['id']}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `photos` = '{$photos}' AND `faces` = '{$faces}';";
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$pushUsertagQuery = mysqli_query($db, $pushUsertagSql);
				if (!$pushUsertagQuery) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					die(print json_encode(array("return" => true)));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "faces") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "get" || $action == "check") {
				if (isset($_POST['photos']['local']) && is_string($_POST['photos']['local'])) $photos_local = $_POST['photos']['local']; else $photos_local = null;
				if (isset($_POST['photos']['label']) && is_string($_POST['photos']['label'])) $photos_label = $_POST['photos']['label']; else $photos_label = null;
				if (isset($_POST['photos']['value']) && is_string($_POST['photos']['value'])) $photos_value = $_POST['photos']['value']; else $photos_value = null;
				if ($photos_local == null || $photos_label == null || $photos_value == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photos_local == "cache") {
					$dbName = "photos_cache";
				}else if ($photos_local == "drive") {
					$dbName = "photos_info";
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$getExists = $_media->exists("photos", array("db" => $dbName, "label" => $photos_label, "value" => $photos_value));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$photos_id = $getExists['id'][0];
					if ($photos_local == "cache") {
						$photosQuerySql = "SELECT `secret`, `name` FROM {$dbName} WHERE `id` = '{$photos_id}' ORDER BY `id` DESC LIMIT 1";
					}else if ($photos_local == "cache") {
						$photosQuerySql = "SELECT `display`, `file.original`, `file.large` FROM {$dbName} WHERE `id` = '{$photos_id}' ORDER BY `id` DESC LIMIT 1";
					}
					$photosQuery = mysqli_query($_db->port('beta'), $photosQuerySql);
					if (!$photosQuery) {
						die(print json_encode(array("return" => false, "reason" => "$photosQuerySql")));
					}
					$photosFetch = mysqli_fetch_assoc($photosQuery);
					if ($photos_local == "cache") {
						$photos_display = $photosFetch['secret'];
						$photos_link = $_tool->links('photos/cache/'.$photosFetch['name']);
					}else if ($photos_local == "drive") {
						$photos_display = $photosFetch['display'];
						if ($photosFetch['path.large'] != 0 && $photosFetch['file.large'] != 0) {
							$photos_link = $_tool->links('photos/raw/'.$photosFetch['file.large']);
						}else {
							$photos_link = $_tool->links('photos/raw/'.$photosFetch['file.original']);
						}
					}
					if (!isset($_SESSION["cache"]['photos_faces_notfound'])) {
						$cachePhotosGetFacesNotfound = array();
					}else {
						$cachePhotosGetFacesNotfound = $_SESSION["cache"]['photos_faces_notfound'];
					}
					foreach ($cachePhotosGetFacesNotfound as $key => $cachePhotosGetFacesNotfoundThis) {
						if (isset($cachePhotosGetFacesNotfoundThis['photos'], $cachePhotosGetFacesNotfoundThis['photos.local'], $cachePhotosGetFacesNotfoundThis['user.id'], $cachePhotosGetFacesNotfoundThis['author.type'], $cachePhotosGetFacesNotfoundThis['author.id']) && is_string($cachePhotosGetFacesNotfoundThis['photos']) && is_string($cachePhotosGetFacesNotfoundThis['photos.local'])) {
							if ($cachePhotosGetFacesNotfoundThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesNotfoundThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesNotfoundThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesNotfoundThis['photos'] == $photos_display && $cachePhotosGetFacesNotfoundThis['photos.local'] == $photos_local) {
								$_SESSION["cache"]['photos_faces_notfound'] = $cachePhotosGetFacesNotfound;
								if ($robotRequest == $g_client['token']['robot']) {
									die(print json_encode(array("return" => true)));
								}
								die(print json_encode(array("return" => true, "image" => $imageData, "faces" => array())));
							}else {
								continue;
							}
						}else {
							unset($cachePhotosGetFacesNotfound[$key]);
						}
					}
					if (!isset($_SESSION["cache"]['photos_faces_handling'])) {
						$cachePhotosGetFacesHandling = array();
					}else {
						$cachePhotosGetFacesHandling = $_SESSION["cache"]['photos_faces_handling'];
					}
					foreach ($cachePhotosGetFacesHandling as $key => $cachePhotosGetFacesHandlingThis) {
						if (isset($cachePhotosGetFacesHandlingThis['photos'], $cachePhotosGetFacesHandlingThis['photos.local'], $cachePhotosGetFacesHandlingThis['user.id'], $cachePhotosGetFacesHandlingThis['author.type'], $cachePhotosGetFacesHandlingThis['author.id']) && is_string($cachePhotosGetFacesHandlingThis['photos']) && is_string($cachePhotosGetFacesHandlingThis['photos.local'])) {
							if ($cachePhotosGetFacesHandlingThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesHandlingThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesHandlingThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesHandlingThis['photos'] == $photos_display && $cachePhotosGetFacesHandlingThis['photos.local'] == $photos_local) {
								$_SESSION["cache"]['photos_faces_handling'] = $cachePhotosGetFacesHandling;
								if ($robotRequest == $g_client['token']['robot']) {
									die(print json_encode(array("return" => false)));
								}
								die(print json_encode(array("return" => false, "reason" => "")));
							}else {
								continue;
							}
						}else {
							unset($cachePhotosGetFacesHandling[$key]);
						}
					}
					if (!isset($_SESSION["cache"]['photos_faces'])) {
						$cachePhotosGetFaces = array();
					}else {
						$cachePhotosGetFaces = $_SESSION["cache"]['photos_faces'];
					}
					$facesDataCache = array();
					foreach ($cachePhotosGetFaces as $key => $cachePhotosGetFacesThis) {
						if (isset($cachePhotosGetFacesThis['photos'])) {
							if (isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
								if ($cachePhotosGetFacesThis['photos'] == $photos_display && $cachePhotosGetFacesThis['photos.local'] == $photos_local) {
									if (isset($cachePhotosGetFacesThis['faces'], $cachePhotosGetFacesThis['thumbnail'], $cachePhotosGetFacesThis['display'], $cachePhotosGetFacesThis['position'], $cachePhotosGetFacesThis['size'], $cachePhotosGetFacesThis['ratio'])) {
										if ($cachePhotosGetFacesThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesThis['author.id'] == $g_user['mode']['id']) {
											$cachePhotosGetFacesThisPush = $cachePhotosGetFacesThis;
											if (isset($cachePhotosGetFacesThisPush['user.id'])) {
												unset($cachePhotosGetFacesThisPush['user.id']);
											}
											if (isset($cachePhotosGetFacesThisPush['author.type'])) {
												unset($cachePhotosGetFacesThisPush['author.type']);
											}
											if (isset($cachePhotosGetFacesThisPush['author.id'])) {
												unset($cachePhotosGetFacesThisPush['author.id']);
											}
											$facesDataCache[] = $cachePhotosGetFacesThisPush;
										}else {
											continue;
										}
									}else {
										unset($cachePhotosGetFaces[$key]);
									}
								}else {
									continue;
								}
							}else if (!isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
								unset($cachePhotosGetFaces[$key]);
							}else {
								continue;
							}
						}else {
							unset($cachePhotosGetFaces[$key]);
						}
					}
					$_SESSION["cache"]['photos_faces'] = $cachePhotosGetFaces;
					if (count($facesDataCache) > 0) {
						if ($robotRequest == $g_client['token']['robot']) {
							die(print json_encode(array("return" => true)));
						}
						die(print json_encode(array("return" => true, "faces" => $facesDataCache)));
					}
					$imgUrl = $photos_link;
					$getAnalysis = $_analysis->faces("check", array("url" => $imgUrl));
					if (isset($getAnalysis['return'], $getAnalysis['faces']) && $getAnalysis['return'] == true && is_array($getAnalysis['faces'])) {
						$faceAnalysis = $getAnalysis['faces'];
						$facesData = array();
						if (count($getAnalysis['faces']) == 0) {
							$_SESSION["cache"]['photos_faces_notfound'][] = array(
								"user.id" => $g_user['id'],
								"author.type" => $g_user['mode']['type'],
								"author.id" => $g_user['mode']['id'],
								"photos" => $photos_display,
								"photos.local" => $photos_local
							);
						}
						foreach ($faceAnalysis as $key => $faceAnalysisThis) {
							if ($faceAnalysisThis['confidence'] < $_parameter->get('rekognition_rate_allow')) {
								unset($faceAnalysis[$key]);
							}else {
								$facesData[] = $faceAnalysisThis;
								continue;
							}
						}
						die(print json_encode(array("return" => true, "faces" => $facesData)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "add") {
				if (isset($_POST['photos']['local']) && is_string($_POST['photos']['local'])) $photos_local = $_POST['photos']['local']; else $photos_local = null;
				if (isset($_POST['photos']['label']) && is_string($_POST['photos']['label'])) $photos_label = $_POST['photos']['label']; else $photos_label = null;
				if (isset($_POST['photos']['value']) && is_string($_POST['photos']['value'])) $photos_value = $_POST['photos']['value']; else $photos_value = null;
				if ($photos_local == null || $photos_label == null || $photos_value == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photos_local == "cache") {
					$getMediaCache = $_media->cache('photos', array("action" => "get", "label" => $photos_label, "rows" => "*", "value" => $photos_value, "limit" => "ORDER BY `id` DESC LIMIT 1"));
				}else if ($photos_local == "drive") {
					$getMediaCache = $_media->data('photos', array("action" => "get", "label" => $photos_label, "rows" => "*", "value" => $photos_value, "limit" => "ORDER BY `id` DESC LIMIT 1"));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photos_local == "cache" && isset($getMediaCache['return']) && $getMediaCache['return'] == true && is_array($getMediaCache['data']) && count($getMediaCache['data']) > 0) {
					$fileCache = $getMediaCache['data'][0];
					$fileCache['local'] = "cache";
					$fileCache['display'] = $fileCache['secret'];
					$fileCache['link'] = $_tool->links($_parameter->get('pathVirtual_cache_photos').'/'.$fileCache['name']);
					if (!isset($fileCache['path']) || $fileCache['path'] == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($photos_local == "drive" && isset($getMediaCache['return']) && $getMediaCache['return'] == true && is_array($getMediaCache['data']) && count($getMediaCache['data']) > 0) {
					$fileCache = $getMediaCache['data'][0];
					$fileCache['local'] = "drive";
					$fileCache['mime'] = $fileCache['mime_type'];
					if (isset($fileCache['file.original'], $fileCache['file.large']) && $fileCache['file.original'] != null && $fileCache['file.large'] != null) {
						if ($fileCache['file.large'] != 0) {
							$fileCache['path'] = $fileCache['file.large'];
							$fileCache['link'] = $this->class['_tool']->links('photos/raw/').$fileCache['file.large'];
						}else {
							$fileCache['path'] = $fileCache['file.original'];
							$fileCache['link'] = $this->class['_tool']->links('photos/raw/').$fileCache['file.original'];
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if (isset($fileCache['path']) && $fileCache['path'] != null) {
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileCache['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$fileCache['source'] = $_tool->hash('decode', $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
				if (isset($fileCache) && is_array($fileCache) && count($fileCache) > 0) {
					$imageData = array(
						"link" => $fileCache['link'],
						"display" => $fileCache['display'],
						"mime" => $fileCache['mime'],
						"name" => $fileCache['name']
					);
					if (!isset($_SESSION["cache"]['photos_faces_notfound'])) {
						$cachePhotosGetFacesNotfound = array();
					}else {
						$cachePhotosGetFacesNotfound = $_SESSION["cache"]['photos_faces_notfound'];
					}
					foreach ($cachePhotosGetFacesNotfound as $key => $cachePhotosGetFacesNotfoundThis) {
						if (isset($cachePhotosGetFacesNotfoundThis['photos'], $cachePhotosGetFacesNotfoundThis['photos.local'], $cachePhotosGetFacesNotfoundThis['user.id'], $cachePhotosGetFacesNotfoundThis['author.type'], $cachePhotosGetFacesNotfoundThis['author.id']) && is_string($cachePhotosGetFacesNotfoundThis['photos']) && is_string($cachePhotosGetFacesNotfoundThis['photos.local'])) {
							if ($cachePhotosGetFacesNotfoundThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesNotfoundThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesNotfoundThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesNotfoundThis['photos'] == $fileCache['display'] && $cachePhotosGetFacesNotfoundThis['photos.local'] == $fileCache['local']) {
								$_SESSION["cache"]['photos_faces_notfound'] = $cachePhotosGetFacesNotfound;
								if ($robotRequest == $g_client['token']['robot']) {
									die(print json_encode(array("return" => true)));
								}
								die(print json_encode(array("return" => true, "image" => $imageData, "faces" => array())));
							}else {
								continue;
							}
						}else {
							unset($cachePhotosGetFacesNotfound[$key]);
						}
					}
					if (!isset($_SESSION["cache"]['photos_faces_handling'])) {
						$cachePhotosGetFacesHandling = array();
					}else {
						$cachePhotosGetFacesHandling = $_SESSION["cache"]['photos_faces_handling'];
					}
					foreach ($cachePhotosGetFacesHandling as $key => $cachePhotosGetFacesHandlingThis) {
						if (isset($cachePhotosGetFacesHandlingThis['photos'], $cachePhotosGetFacesHandlingThis['photos.local'], $cachePhotosGetFacesHandlingThis['user.id'], $cachePhotosGetFacesHandlingThis['author.type'], $cachePhotosGetFacesHandlingThis['author.id']) && is_string($cachePhotosGetFacesHandlingThis['photos']) && is_string($cachePhotosGetFacesHandlingThis['photos.local'])) {
							if ($cachePhotosGetFacesHandlingThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesHandlingThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesHandlingThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesHandlingThis['photos'] == $fileCache['display'] && $cachePhotosGetFacesHandlingThis['photos.local'] == $fileCache['local']) {
								$_SESSION["cache"]['photos_faces_handling'] = $cachePhotosGetFacesHandling;
								if ($robotRequest == $g_client['token']['robot']) {
									die(print json_encode(array("return" => false)));
								}
								die(print json_encode(array("return" => false, "reason" => "")));
							}else {
								continue;
							}
						}else {
							unset($cachePhotosGetFacesHandling[$key]);
						}
					}
					if (!isset($_SESSION["cache"]['photos_faces'])) {
						$cachePhotosGetFaces = array();
					}else {
						$cachePhotosGetFaces = $_SESSION["cache"]['photos_faces'];
					}
					$facesDataCache = array();
					foreach ($cachePhotosGetFaces as $key => $cachePhotosGetFacesThis) {
						if (isset($cachePhotosGetFacesThis['photos'])) {
							if (isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
								if ($cachePhotosGetFacesThis['photos'] == $fileCache['display'] && $cachePhotosGetFacesThis['photos.local'] == $fileCache['local']) {
									if (isset($cachePhotosGetFacesThis['faces'], $cachePhotosGetFacesThis['thumbnail'], $cachePhotosGetFacesThis['display'], $cachePhotosGetFacesThis['position'], $cachePhotosGetFacesThis['size'], $cachePhotosGetFacesThis['ratio'])) {
										if ($cachePhotosGetFacesThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesThis['author.id'] == $g_user['mode']['id']) {
											$cachePhotosGetFacesThisPush = $cachePhotosGetFacesThis;
											if (isset($cachePhotosGetFacesThisPush['user.id'])) {
												unset($cachePhotosGetFacesThisPush['user.id']);
											}
											if (isset($cachePhotosGetFacesThisPush['author.type'])) {
												unset($cachePhotosGetFacesThisPush['author.type']);
											}
											if (isset($cachePhotosGetFacesThisPush['author.id'])) {
												unset($cachePhotosGetFacesThisPush['author.id']);
											}
											$facesDataCache[] = $cachePhotosGetFacesThisPush;
										}else {
											continue;
										}
									}else {
										unset($cachePhotosGetFaces[$key]);
									}
								}else {
									continue;
								}
							}else if (!isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
								unset($cachePhotosGetFaces[$key]);
							}else {
								continue;
							}
						}else {
							unset($cachePhotosGetFaces[$key]);
						}
					}
					$_SESSION["cache"]['photos_faces'] = $cachePhotosGetFaces;
					if (count($facesDataCache) > 0) {
						if ($robotRequest == $g_client['token']['robot']) {
							die(print json_encode(array("return" => true)));
						}
						die(print json_encode(array("return" => true, "image" => $imageData, "faces" => $facesDataCache)));
					}
					$photosGetFaces_query = mysqli_query($_db->port('beta'), "SELECT * FROM `photos_faces` WHERE `photos` = '{$fileCache['display']}' AND `photos.local` = '{$fileCache['local']}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `user.id` = '{$g_user['id']}'");
					if ($photosGetFaces_query) $photosGetFaces_num = mysqli_num_rows($photosGetFaces_query); else $photosGetFaces_num = 0;
					if ($photosGetFaces_num > 0) {
						$facesData = array();
						while ($photosGetFaces_fetch = mysqli_fetch_assoc($photosGetFaces_query)) {
							$checkExists = $_analysis->faces("exists", array("label" => "display", "value" => $photosGetFaces_fetch['faces']));
							if (isset($checkExists['return'], $checkExists['exists']) && $checkExists['return'] == true && $checkExists['exists'] == false) {
								mysqli_query($_db->port('beta'), "DELETE FROM `photos_cache_usertag` WHERE `id` = '{$photosGetFaces_fetch['id']}'");
								continue;
							}
							$facesData[] = $facesDataThis = array(
								"photos" => $photosGetFaces_fetch['photos'],
								"photos.local" => $photosGetFaces_fetch['photos.local'],
								"faces" => $photosGetFaces_fetch['faces'],
								"thumbnail" => $_tool->links($_parameter->get('pathVirtual_cache_photos').'/'.$fileCache['name'].'/'.$photosGetFaces_fetch['display']),
								"display" => $photosGetFaces_fetch['display'],
								"position" => array(
									"x" => $photosGetFaces_fetch['boundingbox.tl.x'], 
									"y" => $photosGetFaces_fetch['boundingbox.tl.y']
								),
								"size" => array(
									"height" => $photosGetFaces_fetch['boundingbox.size.height'],
									"width" => $photosGetFaces_fetch['boundingbox.size.width']
								),
								"ratio" => array(
									"height" => $photosGetFaces_fetch['boundingbox.ratio.height'],
									"width" => $photosGetFaces_fetch['boundingbox.ratio.width']
								)
							);
							$facesDataThis['user.id'] = $g_user['id'];
							$facesDataThis['author.type'] = $g_user['mode']['type'];
							$facesDataThis['author.id'] = $g_user['mode']['id'];
							$_SESSION["cache"]['photos_faces'][] = $facesDataThis;
						}
						if ($robotRequest == $g_client['token']['robot']) {
							die(print json_encode(array("return" => true)));
						}
						die(print json_encode(array("return" => true, "image" => $imageData, "faces" => $facesData)));
					}else {
						$imgUrl = $fileCache['link'];
						$getAnalysis = $_analysis->faces("check", array("url" => $imgUrl));
						if (isset($getAnalysis['return'], $getAnalysis['faces']) && $getAnalysis['return'] == true && is_array($getAnalysis['faces'])) {
							$faceAnalysis = $getAnalysis['faces'];
							$facesData = array();
							if (count($getAnalysis['faces']) == 0) {
								$_SESSION["cache"]['photos_faces_notfound'][] = array(
									"user.id" => $g_user['id'],
									"author.type" => $g_user['mode']['type'],
									"author.id" => $g_user['mode']['id'],
									"photos" => $fileCache['display'],
									"photos.local" => $fileCache['local']
								);
							}
							foreach ($faceAnalysis as $key => $faceAnalysisThis) {
								if ($faceAnalysisThis['confidence'] < $_parameter->get('rekognition_rate_allow')) {
									unset($faceAnalysis[$key]);
								}else {
									$faceAnalysis[$key]['photos'] = $fileCache['display'];
								}
							}
							foreach ($faceAnalysis as $key => $faceAnalysisThis) {
								$thumbnail = array("file" => $fileCache['source'], "mime" => $fileCache['mime'], "nameraw" => $fileCache['nameraw']);
								$addAnalysisFaces = $_analysis->faces("add", array("face" => $faceAnalysisThis, "thumbnail" => $thumbnail));
								if (isset($addAnalysisFaces['return'], $addAnalysisFaces['obj']) && $addAnalysisFaces['return'] == true && is_array($addAnalysisFaces['obj']) && count($addAnalysisFaces['obj']) > 0) {
									$cacheTaguser = array();
									$cacheTaguser['photos'] = $fileCache['display'];
									$cacheTaguser['photos.local'] = $fileCache['local'];
									$cacheTaguser['faces.image'] = $addAnalysisFaces['obj']['thumbnail'];
									$cacheTaguser['faces'] = $addAnalysisFaces['obj']['display'];
									$cacheTaguser['token'] = hash('crc32', $cacheTaguser['faces']);
									$cacheTaguser['display'] = hash('md5', $cacheTaguser['token']);
									$insertCacheTaguserSql = "INSERT INTO `photos_faces` (`id`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `faces.image`, `token`, `display`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES (NULL, '{$g_user['id']}', '{$g_user['mode']['type']}', '{$g_user['mode']['id']}', '{$cacheTaguser['photos']}', '{$cacheTaguser['photos.local']}', '{$cacheTaguser['faces']}', '{$cacheTaguser['faces.image']}', '{$cacheTaguser['token']}', '{$cacheTaguser['display']}', null, null, '{$faceAnalysisThis['boundingbox.tl.y']}', '{$faceAnalysisThis['boundingbox.tl.x']}', '{$faceAnalysisThis['boundingbox.size.height']}', '{$faceAnalysisThis['boundingbox.size.width']}', '{$faceAnalysisThis['boundingbox.ratio.height']}', '{$faceAnalysisThis['boundingbox.ratio.width']}');";
									$insertCacheTaguser = mysqli_query($_db->port('beta'), $insertCacheTaguserSql);
									if (!$insertCacheTaguser) {
										//.
									}else {
										$facesData[] = $facesDataThis = array(
											"photos" => $cacheTaguser['photos'],
											"photos.local" => $cacheTaguser['photos.local'],
											"faces" => $cacheTaguser['faces'],
											"thumbnail" => $_tool->links('photos/faces/'.$cacheTaguser['display']),
											"display" => $cacheTaguser['display'],
											"position" => array(
												"y" => $faceAnalysisThis['boundingbox.tl.y'], 
												"x" => $faceAnalysisThis['boundingbox.tl.x']
											),
											"size" => array(
												"height" => $faceAnalysisThis['boundingbox.size.height'],
												"width" => $faceAnalysisThis['boundingbox.size.width']
											),
											"ratio" => array(
												"height" => $faceAnalysisThis['boundingbox.ratio.height'],
												"width" => $faceAnalysisThis['boundingbox.ratio.width']
											)
										);
										$facesDataThis['user.id'] = $g_user['id'];
										$facesDataThis['author.type'] = $g_user['mode']['type'];
										$facesDataThis['author.id'] = $g_user['mode']['id'];
										$_SESSION["cache"]['photos_faces'][] = $facesDataThis;
									}
								}else {
									continue;
								}
							}
							if ($robotRequest == $g_client['token']['robot']) {
								die(print json_encode(array("return" => true)));
							}
							die(print json_encode(array("return" => true, "image" => $imageData, "faces" => $facesData)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($type == "delete" || $type == "remove") {

			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "music" && $token == $g_client['token']['action']['music']) {
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if ($type == "cache"){
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "add") {
				$musikData = array();
				$file_upload = $_FILES["file"];
				$file = $_tool->resetFileUpload($file_upload);
				$_media = new media;
				foreach ($file as $key => $value) {
					$media_cache = $_media->cache('music', array("action" => "add", "file" => $value));
					if (isset($media_cache['return']) && $media_cache['return'] == true){
						$musikData[$key] = array("type" => "music", "local" => "cache", "verify" => "false");
						$musikData[$key]['secret'] = $media_cache["data"]['secret'];
						$musikData[$key]['name'] = $media_cache["data"]['name'];
						$musikData[$key]['nameraw'] = $media_cache["data"]['nameraw'];
						$musikData[$key]['mime'] = $media_cache["data"]['mime'];
						$musikData[$key]['link'] = $_tool->links($_parameter->get('pathVirtual_cache_music').'/'.$media_cache["data"]['name']);
						$musikData[$key]['duration'] = $media_cache["data"]['duration'];
					}else {
						//.
						continue;
					}
				}
				if (is_array($musikData) && count($musikData) > 0) {
					die(print json_encode(array("return" => true, "data" => $musikData)));
				}else {
					die(print json_encode(array("return" => false, "reason" => $media_cache)));
				}
			}else if ($action == "copy") {
				if (isset($_POST['name']) && is_string($_POST['name'])) $name = $_POST['name']; else $name = null;
				if (isset($_POST['secret']) && is_string($_POST['secret'])) $secret = $_POST['secret']; else $secret = null;
				if ($name != null && $secret != null) {
					$_media = new media;
					$media_cache = $_media->cache('music', array("action" => 'copy', 'secret' => $secret, "name" => $name));
					if (isset($media_cache['return']) && $media_cache['return'] == true){
						$musikData['original']['secret'] = $media_cache["data"]['original']['secret'];
						$musikData['original']['name'] = $media_cache["data"]['original']['name'];
						$musikData['original']['nameraw'] = $media_cache["data"]['original']['nameraw'];
						$musikData['original']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_music').'/'.$media_cache["data"]['original']['name']);
						$musikData['copy']['secret'] = $media_cache["data"]['copy']['secret'];
						$musikData['copy']['name'] = $media_cache["data"]['copy']['name'];
						$musikData['copy']['nameraw'] = $media_cache["data"]['copy']['nameraw'];
						$musikData['copy']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_music').'/'.$media_cache["data"]['copy']['name']);
						die(print json_encode(array("return" => true, "data" => $musikData)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($_POST['file']) && isset($_POST['file'])) $file = $_POST['file']; else $file = null;
				if ($file != null && is_array($file) && count($file) > 0) {
					foreach ($file as $i => $thisFile) {
						if (isset($thisFile["name"])) $name = $thisFile["name"]; else $name = null;
						if (isset($thisFile["verify"])) $verify = $thisFile["verify"]; else $verify = null;
						if ($verify == "0" || $verify == "false") {
							$verify = false;
						}else if ($verify == "1" || $verify == "true") {
							$verify = true;
						}
						if ($name != null && ($verify == true || $verify == false)) {
							$deleteFile = $_media->cache("music", array("action" => "delete", "key" => $name, "verify" => $verify));
							if (isset($deleteFile['return']) && $deleteFile['return'] == true) {
								$data[] = array("return" => true, "data" => $thisFile);
							}else {
								$data[] = array("return" => false, "reason" => $deleteFile['reason']);
							}
						}else {
							$data[] = array("return" => false, "reason" => "");
						}
					}
					die(print json_encode(array("return" => true, "data" => $data)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "push") {
				if (isset($_POST['file']) && isset($_POST['file'])) $file = $_POST['file']; else $file = null;
				if ($file != null && is_array($file) && count($file) > 0) {
					$_media = new media;
					foreach ($file as $key => $thisFile) {
						$_media->cache("music", array("action" => "push", "secret" => $thisFile['secret'], "name" => $thisFile['name']));
					}
					die(print json_encode(array("return" => true)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			die(print json_encode($returnData));
		}else if ($type == "info") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "get") {
				
			}
		}else if ($type == "replay") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "add") {
				if (isset($_POST['label']) && is_string($_POST['label'])) $label = $_POST['label']; else $label = null;
				if (isset($_POST['value']) && (is_string($_POST['value']) || is_numeric($_POST['value']))) $value = $_POST['value']; else $value = null;
				if (isset($_POST['at']) && (is_string($_POST['at']) || is_numeric($_POST['at']))) $at = $_POST['at']; else $at = 0;
				if (isset($_POST['expires']) && (is_string($_POST['expires']) || is_numeric($_POST['expires']))) $expires = $_POST['expires']; else $expires = 0;
				if ($label == null || $value == null || $at == 0 || $expires == 0) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$_media = new media;
					$queryAction = $_media->replay("music", array("action" => "add", "label" => $label, "value" => $value, "at" => $at, "expires" => $expires));
					if (isset($queryAction['return'])) {
						if ($queryAction['return'] == true) {
							die(print json_encode(array("return" => true)));
						}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
							die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
			}else if ($action == "get") {
				if (isset($_POST['label']) && is_string($_POST['label'])) $label = $_POST['label']; else $label = null;
				if (isset($_POST['value']) && (is_string($_POST['value']) || is_numeric($_POST['value']))) $value = $_POST['value']; else $value = null;
				$_media = new media;
				$queryAction = $_media->replay("music", array("action" => "get", "label" => $label, "value" => $value));
				if (isset($queryAction['return'])) {
					if (isset($queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
						die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
					}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($_POST['label']) && is_string($_POST['label'])) $label = $_POST['label']; else $label = null;
				if (isset($_POST['value']) && (is_string($_POST['value']) || is_numeric($_POST['value']))) $value = $_POST['value']; else $value = null;
				if ($label == null || $value == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$_media = new media;
					$queryAction = $_media->replay("music", array("action" => "delete", "label" => $label, "value" => $value));
					if (isset($queryAction['return'])) {
						if ($queryAction['return'] == true) {
							die(print json_encode(array("return" => true)));
						}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
							die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
			}else if ($action == "clean") {
				$_media = new media;
				$queryAction = $_media->replay("music", array("action" => "clean"));
				if (isset($queryAction['return'])) {
					if ($queryAction['return'] == true) {
						die(print json_encode(array("return" => true)));
					}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "videos" && $token == $g_client['token']['action']['videos']) {
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if ($type == "cache"){
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "add") {
				$vioData = null;
				$file_upload = $_FILES["file"];
				$file = $_tool->resetFileUpload($file_upload);
				$_media = new media;
				foreach ($file as $key => $value) {
					$media_cache = $_media->cache('videos', array("action" => "add", "file" => $value));
					if (isset($media_cache['return']) && $media_cache['return'] == true) {
						$vioData[$key] = array("type" => "videos", "local" => "cache", "verify" => "false");
						$vioData[$key]['secret'] = $media_cache["data"]['secret'];
						$vioData[$key]['name'] = $media_cache["data"]['name'];
						$vioData[$key]['nameraw'] = $media_cache["data"]['nameraw'];
						$vioData[$key]['mime'] = $media_cache["data"]['mime'];
						$vioData[$key]['link'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/'.$media_cache["data"]['name']);
						$vioData[$key]['thumbnail'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/thumbnail/'.$media_cache["data"]["thumbnail"]);
						$vioData[$key]['duration'] = $media_cache["data"]['duration'];
					}else {
						$vioData[$key] = $media_cache;
					}
				}
				die(print json_encode(array("return" => true, "data" => $vioData)));
			}else if ($action == "copy") {
				if (isset($_POST['secret']) && is_string($_POST['secret'])) $secret = $_POST['secret']; else $secret = null;
				if (isset($_POST['name']) && is_string($_POST['name'])) $name = $_POST['name']; else $name = null;
				if ($secret != null && $name != null) {
					$_media = new media;
					$media_cache = $_media->cache('videos', array("action" => 'copy', 'secret' => $secret, "name" => $name));
					if (isset($media_cache['return']) && $media_cache['return'] == true){
						$vioData['original']['secret'] = $media_cache["data"]['original']['secret'];
						$vioData['original']['name'] = $media_cache["data"]['original']['name'];
						$vioData['original']['nameraw'] = $media_cache["data"]['original']['nameraw'];
						$vioData['original']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/'.$media_cache["data"]['original']['name']);
						$vioData['original']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/thumbnail/'.$media_cache["data"]['original']['thumbnail']);
						$vioData['copy']['secret'] = $media_cache["data"]['copy']['secret'];
						$vioData['copy']['name'] = $media_cache["data"]['copy']['name'];
						$vioData['copy']['nameraw'] = $media_cache["data"]['copy']['nameraw'];
						$vioData['copy']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/'.$media_cache["data"]['copy']['name']);
						$vioData['copy']['link'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/thumbnail/'.$media_cache["data"]['copy']['thumbnail']);
						die(print json_encode(array("return" => true, "data" => $vioData)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($_POST['file']) && isset($_POST['file'])) $file = $_POST['file']; else $file = null;
				if ($file != null && is_array($file) && count($file) > 0) {
					$_media = new media;
					foreach ($file as $i => $thisFile) {
						if (isset($thisFile["name"])) $name = $thisFile["name"]; else $name = null;
						if (isset($thisFile["verify"])) $verify = $thisFile["verify"]; else $verify = null;
						if ($verify == "0" || $verify == "false") {
							$verify = false;
						}else if ($verify == "1" || $verify == "true") {
							$verify = true;
						}
						if ($name != null && ($verify == true || $verify == false)) {
							$deleteFile = $_media->cache("videos", array("action" => "delete", "key" => $name, "verify" => $verify));
							if (isset($deleteFile['return']) && $deleteFile['return'] == true) {
								$data[] = array("return" => true, "data" => $thisFile);
							}else {
								$data[] = array("return" => false, "reason" => $deleteFile['reason']);
							}
						}else {
							$data[] = array("return" => false, "reason" => "");
						}
					}
					die(print json_encode(array("return" => true, "data" => $data)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "push") {
				if (isset($_POST['file']) && isset($_POST['file'])) $file = $_POST['file']; else $file = null;
				if ($file != null && is_array($file) && count($file) > 0) {
					$_media = new media;
					foreach ($file as $key => $thisFile) {
						$_media->cache("videos", array("action" => "push", "secret" => $thisFile['secret'], "name" => $thisFile['name']));
					}
					die(print json_encode(array("return" => true)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "info") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "get") {
				
			}
		}else if ($type == "replay") {
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($action == "add") {
				if (isset($_POST['label']) && is_string($_POST['label'])) $label = $_POST['label']; else $label = null;
				if (isset($_POST['value']) && (is_string($_POST['value']) || is_numeric($_POST['value']))) $value = $_POST['value']; else $value = null;
				if (isset($_POST['at']) && (is_string($_POST['at']) || is_numeric($_POST['at']))) $at = $_POST['at']; else $at = 0;
				if (isset($_POST['expires']) && (is_string($_POST['expires']) || is_numeric($_POST['expires']))) $expires = $_POST['expires']; else $expires = 0;
				if ($label == null || $value == null || $at == 0 || $expires == 0) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$_media = new media;
					$queryAction = $_media->replay("videos", array("action" => "add", "label" => $label, "value" => $value, "at" => $at, "expires" => $expires));
					if (isset($queryAction['return'])) {
						if ($queryAction['return'] == true) {
							die(print json_encode(array("return" => true)));
						}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
							die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
			}else if ($action == "get") {
				if (isset($_POST['label']) && is_string($_POST['label'])) $label = $_POST['label']; else $label = null;
				if (isset($_POST['value']) && (is_string($_POST['value']) || is_numeric($_POST['value']))) $value = $_POST['value']; else $value = null;
				$_media = new media;
				$queryAction = $_media->replay("videos", array("action" => "get", "label" => $label, "value" => $value));
				if (isset($queryAction['return'])) {
					if (isset($queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
						die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
					}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($_POST['label']) && is_string($_POST['label'])) $label = $_POST['label']; else $label = null;
				if (isset($_POST['value']) && (is_string($_POST['value']) || is_numeric($_POST['value']))) $value = $_POST['value']; else $value = null;
				if ($label == null || $value == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$_media = new media;
					$queryAction = $_media->replay("videos", array("action" => "delete", "label" => $label, "value" => $value));
					if (isset($queryAction['return'])) {
						if ($queryAction['return'] == true) {
							die(print json_encode(array("return" => true)));
						}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
							die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
			}else if ($action == "clean") {
				$_media = new media;
				$queryAction = $_media->replay("videos", array("action" => "clean"));
				if (isset($queryAction['return'])) {
					if ($queryAction['return'] == true) {
						die(print json_encode(array("return" => true)));
					}else if (isset($queryAction['reason']) && $queryAction['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "cache" && $token == $g_client['token']['action']['cache']) {
		//.
	}else if ($port == "status" && $token == $g_client['token']['action']['status']) {
		if (isset($_POST['data']['type']) && is_string($_POST['data']['type'])) $type = $_POST['data']['type']; else $type = null;
		if (isset($_POST['data']['content']) && is_string($_POST['data']['content'])) $content = $_POST['data']['content']; else $content = null;
		if (isset($_POST['data']['media']) && is_array($_POST['data']['media'])) $media = $_POST['data']['media']; else $media = null;
		if (isset($_POST['data']['push']) && is_array($_POST['data']['push'])) $push = $_POST['data']['push']; else $push = null;
		if (isset($_POST['data']['private']) && is_array($_POST['data']['private'])) $private = $_POST['data']['private']; else $private = null;
		if ($type != null) {
			$options = array(
				"type" => $type,
				"content" => $content,
				"media" => $media,
				"private" => $private
			);
			if (is_array($push)) {
				if (isset($push['mood'])) $mood = $push['mood']; else $mood = null;
				$options["mood"] = $mood;
				if (isset($push['places'])) $places = $push['places']; else $places = null;
				$options["places"] = $places;
				if (isset($push['usertag'])) $usertag = $push['usertag']; else $usertag = null;
				$options["usertag"] = $usertag;
				if (isset($push['link'])) $link = $push['link']; else $link = null;
				$options["link"] = $link;
				if (isset($push['share'])) $share = $push['share']; else $share = null;
				$options["share"] = $share;
			}
			$_feed = new feed;
			$action = $_feed->status_add($options);
			die(print json_encode($action));
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "maps" && $token == $g_client['token']['action']['maps']) {
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if ($type == "thumbnail") {
			if (isset($_POST['title']) && is_string($_POST['title'])) $title = $_POST['title']; else $title = null;
			if ($title != null) {
				$_maps = new maps;
				$data = $_maps->thumbnail($title, 100);
				if (isset($data['return']) && $data['return'] == true) {
					die(print json_encode(array("return" => true, "data" => $data['data'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}
	}else if ($port == "sites" && $token == $g_client['token']['action']['sites']) {
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if ($type == "get") {
			if (isset($_POST['url']) && is_string($_POST['url'])) $url = addslashes($_POST['url']); else $url = null;
			if ($url != null) {
				$_sites = new sites;
				$data = $_sites->extract($url);
				if (isset($data['return']) && $data['return'] == true) {
					if (isset($data['data']['thumbnail']) && $data['data']['thumbnail'] != null) {
						$data['data']['thumbnail'] = $_tool->links($data['data']['thumbnail']);
					}else {
						$data['data']['thumbnail'] = null;
					}
					die(print json_encode(array("return" => true, "data" => $data['data'], "url" => $url)));
				}else {
					die(print json_encode(array("return" => false, "reason" => $data['reason'])));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}
	}else if ($port == "messages" && $token == $g_client['token']['action']['messages']) {
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if (isset($_POST['local']) && is_string($_POST['local'])) $local = $_POST['local']; else $local = null;
		if ($type == "chatbox" && $local == "hashtag") {
			if (isset($_POST['hashtag']) && is_string($_POST['hashtag'])) $hashtag = $_POST['hashtag']; else $hashtag = null;
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($hashtag != "" && $action == "add") {
				if (isset($_POST['content']) && is_string($_POST['content'])) $content = $_POST['content']; else $content = null;
				if ($content == "") {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$_messages = new messages;
				$insert = $_messages->chatbox(array("port" => "hashtag", "type" => "insert", "hashtag" => $hashtag, "content" => $content));
				if (isset($insert['return']) && $insert['return'] == true) {
					$insert['data']['author']['avatar'] = $g_user['avatar.small'];
					$insert['data']['author']['cover'] = $g_user['cover.small'];
					$insert['data']['author']['name'] = $g_user['fullname'];
					$insert['data']['author']['tag'] = $g_user['username'];
					$insert['data']['author']['link'] = $g_user['link'];
					$data[] = $insert['data'];
					die(print json_encode(array("return" => true, "data" => $data)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($hashtag != "" && $action == "get") {
				//.
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "private" && $local != null) {
			if (isset($_POST['manage']) && is_string($_POST['manage'])) $manage = $_POST['manage']; else $manage = null;
			if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
			if ($manage == "tab") {

			}else if ($manage == "members") {
				
			}else if ($manage == "data") {
				if ($action == "add") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if (isset($_POST['content']) && is_string($_POST['content'])) $content = addslashes($_POST['content']); else $content = null;
					if (isset($_POST['emoticons']) && is_string($_POST['emoticons'])) $emoticons = addslashes($_POST['emoticons']); else $emoticons = null;
					if (is_string($content) && $content != null) {
						$options = array("action" => "add", "id" => $tab, "content" => $content, "emoticons" => null);
						$_messages = new messages;
						$addMessages = $_messages->data($options);
						if (isset($addMessages['return']) && $addMessages['return'] == true) {
							die(print json_encode(array("return" => true, "data" => $addMessages['data'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "get") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if (isset($_POST['id']) && is_string($_POST['id'])) $id = addslashes($_POST['id']); else $id = 0;
					if (isset($_POST['sort']) && is_string($_POST['sort'])) $sort = addslashes($_POST['sort']); else $sort = null;
					if (isset($_POST['limit']) && is_string($_POST['limit'])) $limit = addslashes($_POST['limit']); else $limit = null;
					if ($tab > 0 && $id > 0 && ($sort == "<" || $sort == ">" || $sort == "=")) {
						if ($sort == "<") {
							$order = "ORDER BY `id` DESC";
						}else if ($sort == ">") {
							$order = "ORDER BY `id` DESC";
						}
						if ($limit != null) {
							$limit = "LIMIT ".$limit;
						}
						$_messages = new messages;
						$getMessages = $_messages->data(array("action" => "get", "tab" => $tab, "id" => $id, "sort" => $sort, "limit" => $limit, "order" => $order));
						if (isset($getMessages['return']) && $getMessages['return'] == true) {
							$data = $getMessages['data'];
							die(print json_encode(array("return" => true, "data" => $data)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "delete") {
					die(print json_encode(array("return" => true)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($manage == "views") {
				if ($action == "add") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if ($tab > 0) {
						$_messages = new messages;
						$viewsMessages = $_messages->views(array("action" => "add", "id" => $tab));
						if (isset($viewsMessages['return']) && $viewsMessages['return'] == true) {
							print json_encode(array("return" => true, "data" => $viewsMessages['data'])); die();
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "get") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if ($tab > 0) {
						$_messages = new messages;
						$viewsMessages = $_messages->views(array("action" => "get", "id" => $tab));
						if (isset($viewsMessages['return']) && $viewsMessages['return'] == true) {
							die(print json_encode(array("return" => true, "value" => $viewsMessages['value'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($manage == "typing") {
				if ($action == "add") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if ($tab > 0) {
						$_messages = new messages;
						$typingMessages = $_messages->typing(array("action" => "add", "id" => $tab));
						if (isset($typingMessages['return']) && $typingMessages['return'] == true) {
							die(print json_encode(array("return" => true, "data" => $typingMessages['data'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "remove") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if ($tab > 0) {
						$_messages = new messages;
						$typingMessages = $_messages->typing(array("action" => "remove", "id" => $tab));
						if (isset($typingMessages['return']) && $typingMessages['return'] == true) {
							die(print json_encode(array("return" => true, "data" => $typingMessages['data'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "get") {
					if (isset($_POST['tab']) && is_string($_POST['tab'])) $tab = addslashes($_POST['tab']); else $tab = 0;
					if ($tab > 0) {
						$_messages = new messages;
						$typingMessages = $_messages->typing(array("action" => "get", "id" => $tab));
						if (isset($typingMessages['return']) && $typingMessages['return'] == true) {
							die(print json_encode(array("return" => true, "data" => $typingMessages['data'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "explorer" && $token == $g_client['token']['action']['explorer']) {
		if (isset($_POST['from'])) $from = $_POST['from']; else $from = null;
		if ($from == "photos") {
			if (isset($_POST['local']) && is_string($_POST['local'])) $local = $_POST['local']; else $local = null;
			if ($local == "cache") {
				if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
				if ($action == "get") {
					if (isset($_POST['class']) && is_string($_POST['class'])) $class = $_POST['class']; else $class = null;
					if ($class == "list") {
						$sql = "SELECT `name` FROM `photos_cache` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `copy` = '0' ORDER BY `id` ASC";
						$query = mysqli_query($_db->port('beta'), $sql);
						$num = mysqli_num_rows($query);
						if ($num == 0) {
							die(print json_encode(array("return" => true, "data" => array("file" => null))));
						}else {
							$_media = new media;
							$update = mysqli_query($_db->port('beta'), "UPDATE `photos_cache` SET `close` = '{$_tool->timeNow()}' + '900' WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `close` != '0'");
							while ($fetch = mysqli_fetch_assoc($query)) {
								$options = array("action" => "get", "label" => "name", "value" => $fetch['name']);
								$get = $_media->cache("photos", $options);
								if (isset($get['return']) && $get['return'] == true) {
									$getData = $get['data'][0];
									if (isset($getData['path'])) {
										unset($getData['path']);
									}
									if (isset($getData['copy'])) {
										unset($getData['copy']);
									}
									if (isset($getData['tmp'])) {
										$getData['link'] = $_tool->links($_parameter->get('pathVirtual_cache_photos').'/'.$getData['name']);
										unset($getData['tmp']);
									}
									if (isset($getData['size'])) {
										$getData['size'] = $_tool->convertSize($getData['size']);
									}
									$getData['type'] = "photos";
									$getData['local'] = "cache";
									$getData['verify'] = "false";
									$data['file'][] = $getData;
								}else {
									continue;
								}
							}
							die(print json_encode(array("return" => true, "data" => $data)));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($local == "sync") {
				die(print json_encode(array("return" => true, "data" => array("file" => null))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($from == "music") {
			if (isset($_POST['local']) && is_string($_POST['local'])) $local = $_POST['local']; else $local = null;
			if ($local == "cache") {
				if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
				if ($action == "get") {
					if (isset($_POST['class']) && is_string($_POST['class'])) $class = $_POST['class']; else $class = null;
					if ($class == "list") {
						$sql = "SELECT `name` FROM `music_cache` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `copy` = '0' ORDER BY `id` ASC";
						$query = mysqli_query($_db->port('beta'), $sql);
						$num = mysqli_num_rows($query);
						if ($num == 0) {
							die(print json_encode(array("return" => true, "data" => array("file" => null))));
						}else {
							$_media = new media;
							$data = array();
							$update = mysqli_query($_db->port('beta'), "UPDATE `music_cache` SET `close` = '{$_tool->timeNow()}' + '900' WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `close` != '0'");
							while ($fetch = mysqli_fetch_assoc($query)) {
								$options = array("action" => "get", "label" => "name", "name" => $fetch['name']);
								$get = $_media->cache("music", $options);
								if (isset($get['return']) && $get['return'] == true) {
									$getData = $get['data'][0];
									if (isset($getData['path'])) {
										unset($getData['path']);
									}
									if (isset($getData['copy'])) {
										unset($getData['copy']);
									}
									if (isset($getData['tmp'])) {
										$getData['link'] = $_tool->links($_parameter->get('pathVirtual_cache_music').'/'.$getData['name']);
										unset($getData['tmp']);
									}
									if (isset($getData['size'])) {
										$getData['size'] = $_tool->convertSize($getData['size']);
									}
									if (isset($getData['duration']) && $getData['duration'] > 0) {
										$getData['duration'] = $_tool->convertTimetoDuration($getData['duration']);
									}else {
										$getData['duration'] = null;
									}
									$getData['type'] = "music";
									$getData['local'] = "cache";
									$getData['verify'] = "false";
									$data['file'][] = $getData;
								}else {
									continue;
								}
							}
							die(print json_encode(array("return" => true, "data" => $data)));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($local == "sync") {
				die(print json_encode(array("return" => true, "data" => array("file" => null))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($from == "videos") {
			if (isset($_POST['local']) && is_string($_POST['local'])) $local = $_POST['local']; else $local = null;
			if ($local == "cache") {
				if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
				if ($action == "get") {
					if (isset($_POST['class']) && is_string($_POST['class'])) $class = $_POST['class']; else $class = null;
					if ($class == "list") {
						$sql = "SELECT `name` FROM `videos_cache` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `copy` = '0' ORDER BY `id` ASC";
						$query = mysqli_query($_db->port('beta'), $sql);
						$num = mysqli_num_rows($query);
						if ($num == 0) {
							die(print json_encode(array("return" => true, "data" => array("file" => null))));
						}else {
							$_media = new media;
							$update = mysqli_query($_db->port('beta'),"UPDATE `videos_cache` SET `close` = '{$_tool->timeNow()}' + '900' WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `close` != '0'");
							while ($fetch = mysqli_fetch_assoc($query)) {
								$options = array("action" => "get", "label" => "name", "name" => $fetch['name']);
								$get = $_media->cache("videos", $options);
								if (isset($get['return']) && $get['return'] == true) {
									$getData = $get['data'][0];
									if (isset($getData['path'])) {
										unset($getData['path']);
									}
									if (isset($getData['copy'])) {
										unset($getData['copy']);
									}
									if (isset($getData['tmp'])) {
										$getData['link'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/'.$getData['name']);
										unset($getData['tmp']);
									}
									if (isset($getData['thumbnail'])) {
										$getData['thumbnail'] = $_tool->links($_parameter->get('pathVirtual_cache_videos').'/thumbnail/'.$getData['thumbnail']);
									}
									if (isset($getData['size'])) {
										$getData['size'] = $_tool->convertSize($getData['size']);
									}
									if (isset($getData['duration']) && $getData['duration'] > 0) {
										$getData['duration'] = $_tool->convertTimetoDuration($getData['duration']);
									}else {
										$getData['duration'] = null;
									}
									$getData['type'] = "videos";
									$getData['local'] = "cache";
									$getData['verify'] = "false";
									$data['file'][] = $getData;
								}else {
									continue;
								}
							}
							die(print json_encode(array("return" => true, "data" => $data)));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($local == "sync") {
				die(print json_encode(array("return" => true, "data" => array("file" => null))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "ajaxify" && $token == $g_client['token']['action']['ajaxify']) {
		if (isset($_POST['url']) && is_string($_POST['url'])) $url = $_POST['url']; else $url = null;
		if ($url != null) {
			require ("source/class/html_dom.php");
			if (preg_match("/((http|https|ftp|ftps)(:\/\/)(www\.)?(localhost\/giccos)($|[\S]+))/", $url) == true) {
				if ($_tool->siteDie($url)) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					// print json_encode(array("return" => true, "direct" => true)); die();
				}
				$htmlPage = $_tool->curl($url, 5, array("cookie" => true, "method" => "POST", "form" => array("token" => "")));
				if (isset($htmlPage['return']) && $htmlPage['return'] == true) {
					$pageDom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
					$pageDom->load($htmlPage['data'], true, true);
					$pageMain = array();
					$pageMain['head'] = $pageDom->find("head", 0)->outertext;
					$pageMain['body'] = $pageDom->find("body", 0)->outertext;
					// $pageMain['footer'] = $pageDom->find("footer", 0)->outertext;
					// $pageMain = $pageDom->find("#gMain", 0)->outertext;
					// $pageMain = preg_replace('#<script(.*?)>(.*?)</script>#is', '', $pageMain);
					$pageMainDom = new DOMDocument();
					libxml_use_internal_errors(true);
					$pageMainDom->loadHTML($pageDom);
					libxml_use_internal_errors(false);
					$scriptItems = $pageMainDom->getElementsByTagName('script');
					$scriptTags = array();
					foreach ($scriptItems as $scriptItem) {
						$scriptTags[] = array(
						    'src' => $scriptItem->getAttribute('src'),
						    'outerHTML' => $pageMainDom->saveHTML($scriptItem),
						    'innerHTML' => $pageMainDom->saveHTML($scriptItem->firstChild),
					  	);
					}
					$callbackTags = array();
					$cssTags = array();
					$data = array("path" => $url, "title" => $pageDom->find("title", 0)->plaintext, "html" => $pageMain, "callback" => $callbackTags, "script" => $scriptTags, "css" => $cssTags);
					die(print json_encode(array("return" => true, "direct" => false, "data" => $data)));
				}else {
					die(print json_encode(array("return" => false, "reason" => $htmlPage['reason'])));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "wall" && $token == $g_client['token']['action']['wall']) {
		print json_encode(array("return" => true, "data" => "x")); die();
	}else {
		die(header("HTTP/1.1 404 Not Found"));
	}
}else {
	die(header("HTTP/1.1 404 Not Found"));
}
?>