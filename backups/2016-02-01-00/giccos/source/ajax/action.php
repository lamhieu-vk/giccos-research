<?php
if (!defined("giccos#ajax>_")){
    //. die(header('HTTP/1.0 404 Not Found'));
}
//.
##.
//.
function response ($options = array(), $data = null) {
	$_tool = $GLOBALS['_tool'];
	//.
	if (isset($options['compress']) && $options['compress']) {
		// $data = $_tool->hex_bytes_encode(LZString::compress($data));
		// $data = (zlib_encode($data, ZLIB_ENCODING_RAW));
	}
	$data = json_encode($data);
	shutdown(print $data);
}
//.
$configAllowCompress = isset($_SERVER['HTTP_COMPRESS']) && is_bool($_tool->parseBool($_SERVER['HTTP_COMPRESS'])) ? $_tool->parseBool($_SERVER['HTTP_COMPRESS']) : false;
$configAllowArr = array(
	"compress" => $configAllowCompress
);
//.
$secureMatch = array();
$secureMatch['host'] = isset($_SERVER['HTTP_HOST']) && in_array($_SERVER['HTTP_HOST'], [$_tool->links('::host')]);
$secureMatch['referer'] = isset($_SERVER['HTTP_REFERER']) && preg_match("/^((http|https)(\:\/\/)(".$_tool->links('::host')."))/i", $_SERVER['HTTP_REFERER']);
$secureMatch['token'] = isset($_SERVER['HTTP_TOKEN']) && in_array($_SERVER['HTTP_TOKEN'], [$_tool->captcha()['action']['xhr']['token']]);
$secureMatch['randkey'] = isset($_SERVER['HTTP_RANDKEY'], $_COOKIE['gXHR_'.($_SERVER['HTTP_RANDKEY'])]) && $_COOKIE['gXHR_'.strval($_SERVER['HTTP_RANDKEY'])] == $_tool->captcha()['action']['xhr']['cookie'];
setcookie('gXHR_'.(isset($_SERVER['HTTP_RANDKEY']) ? strval($_SERVER['HTTP_RANDKEY']) : null), null, time() - 31536000, $_parameter->get('cookie_host_path'));
foreach ($secureMatch as $matchLabel => $matchValue) {
	if (!in_array($matchValue, [true])) {
		response($configAllowArr, (array("return" => false, "reason" => $secureMatch)));
	}
}
//.
$portAllowImage = ["image"];
$portAllowAjaxify = ["ajaxify"];
$portAllowTotal = array_merge($portAllowImage, $portAllowAjaxify);
$requestObject = isset($_REQUEST) ? $_REQUEST : array();
foreach ($_FILES as $fileLabel => $fileValue) {
	$requestObject['#file'] = isset($requestObject['#file']) ? $requestObject['#file'] : array();
	$requestObject['#file'][$fileLabel] = $_tool->parseRequestFile($fileValue);
}
if (!isset($requestObject['#port']) || $requestObject['#port'] == null) {
	response($configAllowArr, (array("return" => false, "reason" => "error#action>portnull")));
}else if (!isset($requestObject['#token']) || $requestObject['#token'] == null) {
	response($configAllowArr, (array("return" => false, "reason" => "error#action>tokennull")));
}else if (!in_array($requestObject['#port'], $portAllowTotal)) {
	response($configAllowArr, (array("return" => false, "reason" => "error#action>portnotexists")));
}else if (!isset($_tool->captcha()['action'][$requestObject['#port']]) || $requestObject['#token'] != $_tool->captcha()['action'][$requestObject['#port']]) {
	response($configAllowArr, (array("return" => false, "reason" => "error#action>tokeninvaild")));
}
if (in_array($requestObject['#port'], $portAllowImage)) {
	$imageAllowOtherRaw = ["otherraw"];
	$imageAllowId = ["id"];
	$imageAllowFavorite = ["favorite"];
	$imageAllowComment = ["comment"];
	$imageAllowStats = ["stats"];
	$imageAllowHide = ["hide"];
	$imageAllowBlock = ["block"];
	$imageAllowDelete = ["delete"];
	$imageAllowTotal = array_merge($imageAllowOtherRaw, $imageAllowId, $imageAllowFavorite, $imageAllowComment, $imageAllowStats, $imageAllowHide, $imageAllowBlock, $imageAllowDelete);
	if (!isset($requestObject['type']) || !in_array($requestObject['type'], $imageAllowTotal)) {
		response($configAllowArr, (array("return" => false, "reason" => "error#action>image>actionnull")));
	}
	if (in_array($requestObject['type'], $imageAllowOtherRaw)) {
		$imageOtherRawAllowGet = ["get"];
		$imageOtherRawAllowTotal = array_merge($imageOtherRawAllowGet);
		if (!in_array($requestObject['action'], $imageOtherRawAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>otherraw>actionnotexists", "reason" => $requestObject)));
		}
		if (in_array($requestObject['action'], $imageOtherRawAllowGet)) {
			$imageSourceUrl = isset($requestObject['url']) && is_string($requestObject['url']) ? $requestObject['url'] : null;
			if ($imageSourceUrl == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#image>otherraw>urlnull")));
			}else if (!preg_match($_parameter->get('regex_url_image'), $imageSourceUrl)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#image>otherraw>urlinvalid")));
			}
			$useImageOtherAction = $_image->other(array("action" => "use", "url" => $imageSourceUrl));
			if (isset($useImageOtherAction, $useImageOtherAction['return'], $useImageOtherAction['data'], $useImageOtherAction['exists']) && $useImageOtherAction['return']) {
				if (!$useImageOtherAction['exists']) {
					response($configAllowArr, (array("return" => false, "reason" => "error#image>otherraw>useimageaction>notexists")));
				}else if (!isset($useImageOtherAction['data']['display'])) {
					response($configAllowArr, (array("return" => false, "reason" => "error#image>otherraw>useimageaction>notdisplay")));
				}
				$imageFromSite = $_tool->links('image/raw/other/').$useImageOtherAction['data']['display'];
				$dataArr = array(
					"display" => $useImageOtherAction['data']['display'],
					"source" => $imageSourceUrl,
					"destination" => $imageFromSite
				);
				response($configAllowArr, (array("return" => true, "data" => $dataArr)));
			}else if (isset($useImageOtherAction, $useImageOtherAction['return'], $useImageOtherAction['reason']) && !$useImageOtherAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#image>otherraw>useimageaction>".$useImageOtherAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#image>otherraw>useimageaction>_")));
			}
		}
	}else if (in_array($requestObject['type'], $imageAllowId)) {
		$imageIdAllowAdd = ["add"];
		$imageIdAllowGet = ["get"];
		$imageIdAllowUpdate = ["update"];
		$imageIdAllowPost = ["post"];
		$imageIdAllowList = ["list"];
		$imageIdAllowTotal = array_merge($imageIdAllowAdd, $imageIdAllowGet, $imageIdAllowUpdate, $imageIdAllowPost, $imageIdAllowList);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $imageIdAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>actionnotexists")));
		}
		if (in_array($requestObject['action'], $imageIdAllowAdd) && ($_user->logged())) {
			$dataArr = array();
			$keyImageArr = isset($requestObject['key']) && is_array($requestObject['key']) ? $requestObject['key'] : array();
			$fileImageArr = isset($requestObject['#file'], $requestObject['#file']['image']) && is_array($requestObject['#file']['image']) ? $requestObject['#file']['image'] : array();
			foreach ($fileImageArr as $fileId => $fileValue) {
				$addImageIdAction = $_image->id(array(
					"user" => array(
						"id" => $_user->using(),
						"mode" => array(
							"type" => $_user->mode()['type'],
							"id" => $_user->mode()['id']
						)
					),
					"action" => "add",
					"keep" => true,
					"strip" => true,
					"compress" => true,
					"file" => array(
						"local" => "cache",
						"expires" => 0,
						"nameraw" => $fileValue['name'],
						"mime" => $fileValue['type'],
						"source" => $fileValue['tmp'],
						"privacy" => array(
							"view" => "private",
							"comment" => "private",
							"share" => "private"
						)
					)
				));
				$keyImageArr[$fileId] = isset($keyImageArr[$fileId]) ? $keyImageArr[$fileId] : null;
				$dataArr[] = array_merge($addImageIdAction, array("key" => $keyImageArr[$fileId]));
			}
			response($configAllowArr, (array("return" => true, "data" => $dataArr)));
		}else if (in_array($requestObject['action'], $imageIdAllowGet)) {
			$imageRow = isset($requestObject['row']) && is_array($requestObject['row']) && count($requestObject['row']) > 0 ? $requestObject['row'] : array();
			$imageLabel = isset($requestObject['label']) && is_string($requestObject['label']) ? $requestObject['label'] : null;
			$imageValue = isset($requestObject['value']) && is_exists($requestObject['value']) ? $requestObject['value'] : null;
			if (!is_exists($imageRow) || count($imageRow) == 0) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>rownull")));
			}else if (!is_exists($imageLabel)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>labelnull")));
			}else if (!is_exists($imageValue)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>valuenull")));
			}
			$getImageIdAction = $_image->id(array(
				"user" => array(
					"id" => $_user->using()
				),
				"author" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				),
				"action" => "get",
				"row" => $imageRow,
				"label" => $imageLabel,
				"value" => $imageValue
			));
			if (isset($getImageIdAction, $getImageIdAction['return'], $getImageIdAction['data'], $getImageIdAction['count'], $getImageIdAction['exists']) && $getImageIdAction['return']) {
				response($configAllowArr, (array("return" => true, "exists" => $getImageIdAction['exists'], "count" => $getImageIdAction['count'], "data" => $getImageIdAction['data'])));
			}else if (isset($getImageIdAction, $getImageIdAction['return'], $getImageIdAction['reason']) && !$getImageIdAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>getimageidaction>".$getImageIdAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>getimageidaction>_")));
			}
		}else if (in_array($requestObject['action'], $imageIdAllowUpdate)) {
			$imageRow = isset($requestObject['row']) && is_array($requestObject['row']) && count($requestObject['row']) > 0 ? $requestObject['row'] : array();
			$imageLabel = isset($requestObject['label']) && is_string($requestObject['label']) ? $requestObject['label'] : null;
			$imageValue = isset($requestObject['value']) && is_exists($requestObject['value']) ? $requestObject['value'] : null;
			if (!is_exists($imageRow) || count($imageRow) == 0) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>rownull")));
			}else if (!is_exists($imageLabel)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>labelnull")));
			}else if (!is_exists($imageValue)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>valuenull")));
			}
			$updateImageIdAction = $_image->id(array(
				"user" => array(
					"id" => $_user->using()
				),
				"author" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				),
				"action" => "update",
				"row" => $imageRow,
				"label" => $imageLabel,
				"value" => $imageValue
			));
			if (isset($updateImageIdAction, $updateImageIdAction['return'], $updateImageIdAction['data']) && $updateImageIdAction['return']) {
				response($configAllowArr, (array("return" => true, "data" => $updateImageIdAction['data'])));
			}else if (isset($updateImageIdAction, $updateImageIdAction['return'], $updateImageIdAction['reason']) && !$updateImageIdAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>getimageidaction>".$updateImageIdAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>get>getimageidaction>_")));
			}
		}else if (in_array($requestObject['action'], $imageIdAllowPost)) {
			$imageLabel = isset($requestObject['label']) && is_string($requestObject['label']) ? $requestObject['label'] : null;
			$imageValue = isset($requestObject['value']) && is_exists($requestObject['value']) ? $requestObject['value'] : null;
			if (!is_exists($imageLabel)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>post>labelnull")));
			}else if (!in_array($imageLabel, ['id', 'display'])) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>post>labelinvalid")));
			}else if (!is_exists($imageValue)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>post>valuenull")));
			}
			$postImageIdAction = $_image->id(array(
				"user" => array(
					"id" => $_user->using()
				),
				"author" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				),
				"action" => "post",
				"label" => $imageLabel,
				"value" => $imageValue
			));
			if (isset($postImageIdAction, $postImageIdAction['return'], $postImageIdAction['exists'], $postImageIdAction['posted']) && $postImageIdAction['return']) {
				response($configAllowArr, (array("return" => true, "exists" => $postImageIdAction['exists'], "posted" => $postImageIdAction['posted'])));
			}else if (isset($postImageIdAction, $postImageIdAction['return'], $postImageIdAction['reason']) && !$postImageIdAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>post>postimageidaction>".$postImageIdAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>post>postimageidaction>_")));
			}
		}else if (in_array($requestObject['action'], $imageIdAllowList)) {
			$imageRow = isset($requestObject['row']) && is_array($requestObject['row']) ? $requestObject['row'] : null;
			$imageLocal = isset($requestObject['local']) && is_string($requestObject['local']) ? $requestObject['local'] : null;
			$imageLimit = isset($requestObject['limit']) && is_numeric($requestObject['limit']) ? $requestObject['limit'] : null;
			$imageOrder = isset($requestObject['order']) && is_string($requestObject['order']) ? $requestObject['order'] : null;
			if (!is_exists($imageRow) || count($imageRow) == 0) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>rownull")));
			}else if (!is_exists($imageLocal)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>localnull")));
			}else if (!in_array($imageLocal, ['cache', 'drive'])) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>localinvalid")));
			}else if (!is_exists($imageLimit)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>limitnull")));
			}else if (!is_exists($imageOrder)) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>ordernull")));
			}else if (!in_array(strtolower($imageOrder), ['desc', 'asc'])) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>orderinvalid")));
			}
			$listImageIdAction = $_image->id(array(
				"user" => array(
					"id" => $_user->using()
				),
				"author" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				),
				"action" => "list",
				"row" => $imageRow,
				"local" => $imageLocal,
				"limit" => $imageLimit,
				"order" => $imageOrder
			));
			if (isset($listImageIdAction, $listImageIdAction['return'], $listImageIdAction['exists'], $listImageIdAction['count'], $listImageIdAction['data']) && $listImageIdAction['return']) {
				if (in_array("file", $imageRow)) {
					foreach ($listImageIdAction['data'] as $keyImageIdObj => $fileImageIdObj) {
						$getImageRawAction = $_image->raw(array(
							"action" => "get",
							"label" => "image.id",
							"value" => $fileImageIdObj['id']
						));
						$listImageIdAction['data'][$keyImageIdObj]['file'] = array();
						if (isset($getImageRawAction, $getImageRawAction['return'], $getImageRawAction['exists'], $getImageRawAction['data']) && $getImageRawAction['return']) {
							if ($getImageRawAction['return']) {
								foreach ($getImageRawAction['data'] as $typeImageRaw => $valueImageRaw) {
									$listImageIdAction['data'][$keyImageIdObj]['file'][$valueImageRaw['type']] = array(
										"size" => $valueImageRaw['size'],
										"url" => $_tool->links('image/raw/').$valueImageRaw['display']
									);
								}
							}
						}
					}
				}
				response($configAllowArr, (array("return" => true, "exists" => $listImageIdAction['exists'], "count" => $listImageIdAction['count'], "data" => $listImageIdAction['data'])));
			}else if (isset($listImageIdAction, $listImageIdAction['return'], $listImageIdAction['reason']) && !$listImageIdAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>listimageidaction>".$listImageIdAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>id>list>listimageidaction>_")));
			}
		}
	}else if (in_array($requestObject['type'], $imageAllowFavorite)) {
		$imageFavoriteAllowAdd = ["add"];
		$imageFavoriteAllowRemove = ["remove"];
		$imageFavoriteAllowTotal = array_merge($imageFavoriteAllowAdd, $imageFavoriteAllowRemove);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $imageFavoriteAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>favorite>actionnotexists")));
		}
		if ((in_array($requestObject['action'], $imageFavoriteAllowAdd) || in_array($requestObject['action'], $imageFavoriteAllowRemove)) && ($_user->logged())) {
			$typeAction = $requestObject['action'];
			$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
			if ($insideArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>favorite>".$typeAction.">insidenull")));
			}
			$requestImageFavoriteAction = $_image->favorite(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"action" => $typeAction,
				"inside" => $insideArr
			));
			if (isset($requestImageFavoriteAction, $requestImageFavoriteAction['return'], $requestImageFavoriteAction['value'], $requestImageFavoriteAction['exists']) && $requestImageFavoriteAction['return']) {
				response($configAllowArr, (array("return" => true, "value" => $requestImageFavoriteAction['value'], "exists" => $requestImageFavoriteAction['exists'])));
			}else if (isset($requestImageFavoriteAction, $requestImageFavoriteAction['return'], $requestImageFavoriteAction['reason']) && !$requestImageFavoriteAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>favorite>".$typeAction.">requestimagefavoriteaction>".$requestImageFavoriteAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>favorite>".$typeAction.">requestimagefavoriteaction>_", "x" => $requestImageFavoriteAction)));
			}
		}
	}else if (in_array($requestObject['type'], $imageAllowComment)) {
		$imageCommentAllowAdd = ["add"];
		$imageCommentAllowRemove = ["remove"];
		$imageCommentAllowFetch = ["fetch"];
		$imageCommentAllowTotal = array_merge($imageCommentAllowAdd, $imageCommentAllowRemove, $imageCommentAllowFetch);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $imageCommentAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>actionnotexists")));
		}
		if (in_array($requestObject['action'], $imageCommentAllowAdd) && ($_user->logged())) {
			$contentText = isset($requestObject['content']) ? $requestObject['content'] : null;
			$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
			if ($insideArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>add>insidenull")));
			}else if ($contentText == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>add>contentnull")));
			}
			$addImageCommentAction = $_image->comment(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"action" => "add",
				"inside" => $insideArr,
				"content" => $contentText
			));
			if (isset($addImageCommentAction, $addImageCommentAction['return'], $addImageCommentAction['added'], $addImageCommentAction['data']) && $addImageCommentAction['return']) {
				response($configAllowArr, (array("return" => true, "added" => $addImageCommentAction['added'], "data" => $addImageCommentAction['data'])));
			}else if (isset($addImageCommentAction, $addImageCommentAction['return'], $addImageCommentAction['reason']) && !$addImageCommentAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>add>addimagecommentaction>".$addImageCommentAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>add>addimagecommentaction>_", "x" => $addImageCommentAction)));
			}
		}else if (in_array($requestObject['action'], $imageCommentAllowFetch) && ($_user->logged())) {
			$commentLabel = isset($requestObject['label']) ? $requestObject['label'] : null;
			$commentValue = isset($requestObject['value']) ? $requestObject['value'] : null;
			if ($commentLabel == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>fetch>labelnull")));
			}else if ($commentValue == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>fetch>valuenull")));
			}
			$fetchImageCommentAction = $_image->comment(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"action" => "fetch",
				"label" => $commentLabel,
				"value" => $commentValue
			));
			if (isset($fetchImageCommentAction, $fetchImageCommentAction['return'], $fetchImageCommentAction['exists'], $fetchImageCommentAction['data']) && $fetchImageCommentAction['return']) {
				response($configAllowArr, (array("return" => true, "exists" => $fetchImageCommentAction['exists'], "data" => $fetchImageCommentAction['data'])));
			}else if (isset($fetchImageCommentAction, $fetchImageCommentAction['return'], $fetchImageCommentAction['reason']) && !$fetchImageCommentAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>add>fetchimagecommentaction>".$fetchImageCommentAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>add>fetchimagecommentaction>_", "x" => $fetchImageCommentAction)));
			}
		}
	}else if (in_array($requestObject['type'], $imageAllowStats)) {
		$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
		if ($insideArr == null) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>insidenull")));
		}
		$requestImageStatsAction = $_image->stats(array(
			"user" => array(
				"id" => $_user->using(),
				"mode" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				)
			),
			"inside" => $insideArr
		));
		if (isset($requestImageStatsAction, $requestImageStatsAction['return'], $requestImageStatsAction['data']) && $requestImageStatsAction['return']) {
			response($configAllowArr, (array("return" => true, "data" => $requestImageStatsAction['data'])));
		}else if (isset($requestImageStatsAction, $requestImageStatsAction['return'], $requestImageStatsAction['reason']) && !$requestImageStatsAction['return']) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>requestimagestatsaction>".$requestImageStatsAction['reason'])));
		}else {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>comment>requestimagestatsaction>_")));
		}
	}else if (in_array($requestObject['type'], $imageAllowHide)) {
		$imageHideAllowAdd = ["add"];
		$imageHideAllowRemove = ["remove"];
		$imageHideAllowTotal = array_merge($imageHideAllowAdd, $imageHideAllowRemove);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $imageHideAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>actionnotexists")));
		}
		if (in_array($requestObject['action'], $imageHideAllowAdd)) {
			if (!$_user->logged()) {
				//.
			}
			$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
			if ($insideArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>insidenull")));
			}
			$addImageHideAction = $_image->hide(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"inside" => $insideArr,
				"action" => "add"
			));
			if (isset($addImageHideAction, $addImageHideAction['return'], $addImageHideAction['added'], $addImageHideAction['exists']) && $addImageHideAction['return']) {
				response($configAllowArr, (array("return" => true, "added" => $addImageHideAction['added'], "exists" => $addImageHideAction['exists'])));
			}else if (isset($addImageHideAction, $addImageHideAction['return'], $addImageHideAction['reason']) && !$addImageHideAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>addimagehideaction>".$addImageHideAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>addimagehideaction>_")));
			}
		}else if (in_array($requestObject['action'], $imageHideAllowRemove)) {
			if (!$_user->logged()) {
				//.
			}
			$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
			if ($insideArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>insidenull")));
			}
			$removeImageHideAction = $_image->hide(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"inside" => $insideArr,
				"action" => "remove"
			));
			if (isset($removeImageHideAction, $removeImageHideAction['return'], $removeImageHideAction['removed'], $removeImageHideAction['exists']) && $removeImageHideAction['return']) {
				response($configAllowArr, (array("return" => true, "removed" => $removeImageHideAction['removed'], "exists" => $removeImageHideAction['exists'])));
			}else if (isset($removeImageHideAction, $removeImageHideAction['return'], $removeImageHideAction['reason']) && !$removeImageHideAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>removeimagehideaction>".$removeImageHideAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>hide>removeimagehideaction>_")));
			}
		}
	}else if (in_array($requestObject['type'], $imageAllowBlock)) {
		$imageBlockAllowAdd = ["add"];
		$imageBlockAllowRemove = ["remove"];
		$imageBlockAllowTotal = array_merge($imageBlockAllowAdd, $imageBlockAllowRemove);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $imageBlockAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>actionnotexists")));
		}
		if (in_array($requestObject['action'], $imageBlockAllowAdd)) {
			if (!$_user->logged()) {
				//.
			}
			$guyArr = isset($requestObject['guy'], $requestObject['guy']['type'], $requestObject['guy']['id']) ? $requestObject['guy'] : null;
			if ($guyArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>guynull")));
			}
			$addImageBlockAction = $_image->block(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"guy" => $guyArr,
				"action" => "add"
			));
			if (isset($addImageBlockAction, $addImageBlockAction['return'], $addImageBlockAction['added'], $addImageBlockAction['exists']) && $addImageBlockAction['return']) {
				response($configAllowArr, (array("return" => true, "added" => $addImageBlockAction['added'], "exists" => $addImageBlockAction['exists'])));
			}else if (isset($addImageBlockAction, $addImageBlockAction['return'], $addImageBlockAction['reason']) && !$addImageBlockAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>addimageblockaction>".$addImageBlockAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>addimageblockaction>_")));
			}
		}else if (in_array($requestObject['action'], $imageBlockAllowRemove)) {
			if (!$_user->logged()) {
				//.
			}
			$guyArr = isset($requestObject['guy'], $requestObject['guy']['type'], $requestObject['guy']['id']) ? $requestObject['guy'] : null;
			if ($guyArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>guynull")));
			}
			$removeImageBlockAction = $_image->block(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"guy" => $guyArr,
				"action" => "remove"
			));
			if (isset($removeImageBlockAction, $removeImageBlockAction['return'], $removeImageBlockAction['removed'], $removeImageBlockAction['exists']) && $removeImageBlockAction['return']) {
				response($configAllowArr, (array("return" => true, "removed" => $removeImageBlockAction['removed'], "exists" => $removeImageBlockAction['exists'])));
			}else if (isset($removeImageBlockAction, $removeImageBlockAction['return'], $removeImageBlockAction['reason']) && !$removeImageBlockAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>removeimageblockaction>".$removeImageBlockAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>block>removeimageblockaction>_")));
			}
		}
	}else if (in_array($requestObject['type'], $imageAllowDelete)) {
		$imageDeleteAllowAdd = ["add"];
		$imageDeleteAllowRemove = ["remove"];
		$imageDeleteAllowTotal = array_merge($imageDeleteAllowAdd, $imageDeleteAllowRemove);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $imageDeleteAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>actionnotexists")));
		}
		if (in_array($requestObject['action'], $imageDeleteAllowAdd)) {
			if (!$_user->logged()) {
				//.
			}
			$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
			if ($insideArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>insidenull")));
			}
			$addImageDeleteAction = $_image->delete(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"author" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				),
				"inside" => $insideArr,
				"action" => "add"
			));
			if (isset($addImageDeleteAction, $addImageDeleteAction['return'], $addImageDeleteAction['added'], $addImageDeleteAction['exists'], $addImageDeleteAction['data']) && $addImageDeleteAction['return']) {
				response($configAllowArr, (array("return" => true, "added" => $addImageDeleteAction['added'], "exists" => $addImageDeleteAction['exists'], "data" => $addImageDeleteAction['data'])));
			}else if (isset($addImageDeleteAction, $addImageDeleteAction['return'], $addImageDeleteAction['reason']) && !$addImageDeleteAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>addimagedeleteaction>".$addImageDeleteAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>addimagedeleteaction>_")));
			}
		}else if (in_array($requestObject['action'], $imageDeleteAllowRemove)) {
			if (!$_user->logged()) {
				//.
			}
			$insideArr = isset($requestObject['inside'], $requestObject['inside']['type'], $requestObject['inside']['id']) ? $requestObject['inside'] : null;
			if ($insideArr == null) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>insidenull")));
			}
			$removeImageDeleteAction = $_image->delete(array(
				"user" => array(
					"id" => $_user->using(),
					"mode" => array(
						"type" => $_user->mode()['type'],
						"id" => $_user->mode()['id']
					)
				),
				"author" => array(
					"type" => $_user->mode()['type'],
					"id" => $_user->mode()['id']
				),
				"inside" => $insideArr,
				"action" => "remove"
			));
			if (isset($removeImageDeleteAction, $removeImageDeleteAction['return'], $removeImageDeleteAction['removed'], $removeImageDeleteAction['exists'], $removeImageDeleteAction['data']) && $removeImageDeleteAction['return']) {
				response($configAllowArr, (array("return" => true, "removed" => $removeImageDeleteAction['removed'], "exists" => $removeImageDeleteAction['exists'], "data" => $removeImageDeleteAction['data'])));
			}else if (isset($removeImageDeleteAction, $removeImageDeleteAction['return'], $removeImageDeleteAction['reason']) && !$removeImageDeleteAction['return']) {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>removeimagedeleteaction>".$removeImageDeleteAction['reason'])));
			}else {
				response($configAllowArr, (array("return" => false, "reason" => "error#action>image>delete>removeimagedeleteaction>_")));
			}
		}
	}
}else if (in_array($requestObject['#port'], $portAllowAjaxify)) {
	$ajaxifyAllowGiccos = ["giccos"];
	$ajaxifyAllowTotal = array_merge($ajaxifyAllowGiccos);
	if (!isset($requestObject['type']) || !in_array($requestObject['type'], $ajaxifyAllowTotal)) {
		response($configAllowArr, (array("return" => false, "reason" => "error#action>ajaxify>type>actionnotexists")));
	}
	if (in_array($requestObject['type'], $ajaxifyAllowGiccos)) {
		$ajaxifyGiccosAllowGet = ["get"];
		$ajaxifyGiccosAllowTotal = array_merge($ajaxifyGiccosAllowGet);
		if (!isset($requestObject['action']) || !in_array($requestObject['action'], $ajaxifyGiccosAllowTotal)) {
			response($configAllowArr, (array("return" => false, "reason" => "error#action>ajaxify>giccos>actionnotexists")));
		}
		if (in_array($requestObject['action'], $ajaxifyGiccosAllowGet)) {
			$requestUrl = isset($requestObject['url']) && is_string($requestObject['url']) ? $requestObject['url'] : null;
			if ($requestUrl == null) {
				response($configAllowArr, (array("return" => false, "direct" => true, "reason" => "")));
			}
			if (!preg_match($_parameter->get('regex_url_giccos_domain'), $requestUrl, $matchUrl)) {
				response($configAllowArr, (array("return" => false, "direct" => true, "reason" => "")));
			}
			$curlToolAction = $_tool->curl($requestUrl, 0, array("cookie" => true));
			if (isset($curlToolAction['return'], $curlToolAction['data']) && $curlToolAction['return'] == true) {
				require_once ("source/class/html_dom.php");
				$pageData = $curlToolAction['data'];
				$isGzip = $_tool->isGzip($pageData);
				if ($isGzip == true) {
					$pageData = gzdecode($pageData);
				}
				$pageDom = new simple_html_dom();
				$pageDom->load($pageData);
				$dataArr = $pageMain = array();
				$pageMain['document'] = $pageMain['local'] = $pageMain['title'] = $pageMain['content'] = $pageMain['include'] = null;
				if (isset($pageDom->find("html", 0)->innertext)) {
					$pageMainHtmlDom = $pageDom->find("html", 0);
					$pageMain['document'] = array();
					if (isset($pageMainHtmlDom->lang)) {
						$pageMain['document']['lang'] = $pageMainHtmlDom->lang;
					}
					if (isset($pageMainHtmlDom->id)) {
						$pageMain['document']['id'] = $pageMainHtmlDom->id;
					}
					if (isset($pageMainHtmlDom->class)) {
						$pageMain['document']['class'] = $pageMainHtmlDom->class;
					}
				}
				if (isset($pageDom->find("#g-page > #g-main > .window", 0)->innertext)) {
					$pageMain['local'] = ($pageDom->find("#g-page > #g-main > .window", 0)->getAttribute('window-tab-local'));
				}
				if (!isset($pageMain['title']) && isset($pageDom->find("title", 0)->innertext)) {
					$pageMain['title'] = ($pageDom->find("title", 0)->innertext);
				}
				if (isset($pageDom->find("#g-page > #g-main > .window", 0)->innertext)) {
					$pageMain['content'] = ($pageDom->find("#g-page > #g-main > .window", 0)->innertext);
					$pageMain['content'] = preg_replace("#<script(.*?)>(.*?)</script>#is", "", $pageMain['content']);
					$pageMain['content'] = preg_replace("#<style(.*?)>(.*?)</style>#is", "", $pageMain['content']);
					$pageMain['content'] = preg_replace("#<link(.*?)(\/?)>#is", "", $pageMain['content']);
				}
				if (isset($pageMain['content'])) {
					if (isset($pageDom->find("#g-page > #g-main > .window", 0)->innertext)) {
						$pageMain['include'] = ($pageDom->find("#g-page > #g-main > .window", 0)->innertext);
					}
					$pageMainIncludeDom = new DOMDocument();
					libxml_use_internal_errors(true);
					$includeJsArr = $includeCssArr = array();
					$pageMainIncludeDom->loadHTML($pageMain['include']);
					$includeJs = $pageMainIncludeDom->getElementsByTagName('script');
					$includeCssLink = $pageMainIncludeDom->getElementsByTagName('link');
					$includeCssStyle = $pageMainIncludeDom->getElementsByTagName('style');
					if ($includeJs) {
						foreach ($includeJs as $scriptElemThis) {
							$includeJsArr[] = array(
								"html" => $pageMainIncludeDom->saveHTML($scriptElemThis),
								"src" => $scriptElemThis->getAttribute('src'),
								"content" => preg_replace("/^([\s\n\r]+)$/", "", strip_tags($pageMainIncludeDom->saveHTML($scriptElemThis))),
								"cache" => $scriptElemThis->getAttribute('cache') != null ? $_tool->parseBool($scriptElemThis->getAttribute('cache')) : true
							);
						}
					}
					if ($includeCssLink || $includeCssStyle) {
						foreach ($includeCssLink as $linkElemThis) {
							$includeCssArr[] = array(
								"html" => $pageMainIncludeDom->saveHTML($linkElemThis),
								"src" => $linkElemThis->getAttribute('href'),
								"content" => preg_replace("/^([\s\n\r]+)$/", "", strip_tags($pageMainIncludeDom->saveHTML($linkElemThis)))
							);
						}
						foreach ($includeCssStyle as $styleElemThis) {
							$includeCssArr[] = array(
								"html" => $pageMainIncludeDom->saveHTML($styleElemThis),
								"src" => $styleElemThis->getAttribute('href'),
								"content" => preg_replace("/^([\s\n\r]+)$/", "", strip_tags($pageMainIncludeDom->saveHTML($styleElemThis)))
							);
						}
					}
					$pageMain['include'] = array(
						"js" => $includeJsArr,
						"css" => $includeCssArr
					);
				}
				$pageMain['url'] = $requestUrl;
				$dataArr = $pageMain;
				response($configAllowArr, (array("return" => true, "direct" => false, "data" => $dataArr)));
			}else {
				response($configAllowArr, (array("return" => false, "direct" => true, "reason" => "xs")));
			}
		}
		response($configAllowArr, (array("return" => false, "reason" => "sxs")));
	}
}else {
	response($configAllowArr, (array("return" => false, "reason" => "error#action>_")));
}
response($configAllowArr, (array("return" => false, "reason" => $requestObject)));
?>