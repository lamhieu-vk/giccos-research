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
		$getVideosRequest = "SELECT ".$videosSelect." FROM `videos_info` WHERE `".$videosLabel."` = '".$videosValue."';";
		$getVideosQuery = mysqli_query($db, $getVideosRequest);
		if (!$getVideosQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$videosArr = array();
			while ($videoThis = mysqli_fetch_assoc($getVideosQuery)) {
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
				if (isset($videoThis['file.thumbnail'])) {
					$videoThis['file']['thumbnail'] = $videoThis['file.thumbnail'];
					$videoThis['source']['thumbnail'] = $_tool->links('videos/raw/thumbnail/'.$videoThis['file']['thumbnail']);
					unset($videoThis['file.thumbnail']);
				}
				if (isset($videoThis['file.audio'])) {
					$videoThis['file']['audio'] = $videoThis['file.audio'];
					$videoThis['source']['audio'] = null;
					unset($videoThis['file.audio']);
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
				if (isset($videoThis['secret.thumbnail'])) {
					$videoThis['secret']['thumbnail'] = $videoThis['secret.thumbnail'];
					unset($videoThis['secret.thumbnail']);
				}
				if (isset($videoThis['secret.audio'])) {
					$videoThis['secret']['audio'] = $videoThis['secret.audio'];
					unset($videoThis['secret.audio']);
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