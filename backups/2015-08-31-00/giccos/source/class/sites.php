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
	function views ($object) {
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
			$siteId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			if ($siteId == null || $ratePoint == null) {
				return array("return" => false, "reason" => "");
			}
			$existsSite = $this->info(array("guy" => $guyArr, "action" => "exists", "label" => "id", "value" => $siteId));
			if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true) {
				if ($existsSite['exists'] == true) {
					$existsViews = $this->views(array("guy" => $guyArr, "action" => "exists", "label" => "sites.id", "value" => $siteId));
					if (isset($existsViews, $existsViews['return'], $existsViews['exists']) && $existsViews['return'] == true) {
						if ($existsViews['exists'] == true) {
							$updateViewRequest = "UPDATE `sites_views` SET `update` = '".time()."' WHERE `sites.id` = '".$siteId."' AND `time` + '".$_parameter->get('sites_views_timeout')."' > '".time()."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
							$actionViewQuery = mysqli_query($db, $updateViewRequest);
						}else {
							$addViewRequest = "INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `updated`) VALUES (NULL, '".time()."', '".$siteId."', '".$guyType."', '".$guyId."', '".time()."');";
							$actionViewQuery = mysqli_query($db, $addViewRequest);
						}
						if (!$actionViewQuery) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else if (isset($existsViews, $existsViews['return'], $existsViews['reason']) && $existsViews['return'] == false) {
						return array("return" => false, "reason" => $existsViews['return']);
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsSite, $existsSite['return'], $existsSite['reason']) && $existsSite['return'] == false) {
				return array("return" => false, "reason" => $existsSite['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "stats") {
			$siteId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			$timeGet = isset($object['time']) && is_array($object['time']) && count($object['time']) > 0 ? $object['time'] : null;
			if ($siteId == null || $timeGet == null) {
				return array("return" => false, "reason" => "");
			}
			$existsSite = $this->info(array("guy" => $guyArr, "action" => "exists", "label" => "id", "value" => $siteId));
			if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true) {
				if ($existsSite['exists'] == true) {
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
					$getViewsRequest = "SELECT `id`, `time` FROM `sites_views` WHERE `sites.id` = '".$siteId."' ".$getViewsRequestPush.";";
					$getViewsQuery = mysqli_query($db, $getViewsRequest);
					if (!$getViewsQuery) {
						return array("return" => false, "reason" => "");
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
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsSite, $existsSite['return'], $existsSite['reason']) && $existsSite['return'] == false) {
				return array("return" => false, "reason" => $existsSite['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			$viewsLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$viewsValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($viewsLabel == null || $viewsValue == null) {
				return array("return" => false, "reason" => "");
			}
			$existsViewsRequest = "SELECT `id` FROM `views_views` WHERE `".$viewsLabel."` = '".$viewsValue."' AND `time` + '".$_parameter->get('sites_views_timeout')."' <= '".time()."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
			$existsViewsQuery = mysqli_query($db, $existsViewsRequest);
			if (!$existsViewsQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsViewsQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
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
			$siteId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			$ratePoint = isset($object['point']) && (is_string($object['point']) || is_numeric($object['point'])) ? intval($object['point']) : null;
			if ($siteId == null || $ratePoint == null) {
				return array("return" => false, "reason" => "");
			}
			$existsSite = $this->info(array("guy" => $guyArr, "action" => "exists", "label" => "id", "value" => $siteId));
			if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true) {
				if ($existsSite['exists'] == true) {
					$existsRateRequest = "SELECT `id` FROM `sites_rate` WHERE `sites.id` = '".$siteId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
					$existsRateQuery = mysqli_query($db, $existsRateRequest);
					if (!$existsRateQuery) {
						return array("return" => false, "reason" => "");
					}
					if (mysqli_num_rows($existsRateQuery) == 0) {
						$addRateRequest = "INSERT INTO `sites_rate` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `point`, `updated`) VALUES (NULL, '".time()."', '".$siteId."', '".$guyType."', '".$guyId."', '".$ratePoint."', '".time()."');";
						$actionRateQuery = mysqli_query($db, $addRateRequest);
					}else {
						$updateRateRequest = "UPDATE `sites_rate` SET `point` = '".$ratePoint."', `updated` = '".time()."' WHERE `sites.id` = '".$siteId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."';";
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
			}else if (isset($existsSite, $existsSite['return'], $existsSite['reason']) && $existsSite['return'] == false) {
				return array("return" => false, "reason" => $existsSite['reason']);
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
			$getRateRequest = "SELECT * FROM `sites_rate` WHERE `".$rateLabel."` = '".$rateValue."' ".$limit.";";
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
			$siteId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? intval($object['id']) : null;
			if ($siteId == null) {
				return array("return" => false, "reason" => "xs");
			}
			$existsSite = $this->info(array("guy" => $guyArr, "action" => "exists", "label" => "id", "value" => $siteId));
			if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true) {
				if ($existsSite['exists'] == true) {
					$statsRateReuqest = "SELECT COUNT(*) AS `count`, SUM(`point`) AS `total` FROM `sites_rate` WHERE `sites.id` = '".$siteId."';";
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
							$getGuyRatingRequest = "SELECT `point` FROM `sites_rate` WHERE `sites.id` = '".$siteId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
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
			}else if (isset($existsSite, $existsSite['return'], $existsSite['reason']) && $existsSite['return'] == false) {
				return array("return" => false, "reason" => $existsSite);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "remove") {
			$rateLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$rateValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($rateLabel == null || $rateValue == null) {
				return array("return" => false, "reason" => "");
			}
			$existsRateRequest = "SELECT `id` FROM `sites_rate` WHERE `".$rateLabel."` = '".$rateValue."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1;";
			$existsRateQuery = mysqli_query($db, $existsRateRequest);
			if (!$existsRateQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsRateQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$deteleRateReuqest = "DELETE FROM `sites_rate` WHERE `".$rateLabel."` = '".$rateValue."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."';";
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
			$existsRateRequest = "SELECT `id` FROM `sites_rate` WHERE `".$rateLabel."` = '".$rateValue."' LIMIT 1;";
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
	function info ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "xx");
		}
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "add") {

		}else if ($action == "get") {
			$siteLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$siteValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			$limit = isset($object['limit']) && is_string($object['limit']) ? $_tool->convertDatabaseString($object['limit']) : null;
			if ($siteLabel == null || $siteValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getInfoRequest = "SELECT * FROM `sites_info` WHERE `".$siteLabel."` = '".$siteValue."' ".$limit.";";
			$getInfoQuery = mysqli_query($db, $getInfoRequest);
			if (!$getInfoQuery) {
				return array("return" => false, "reason" => "");
			}
			$dataArr = array();
			while ($thisInfo = mysqli_fetch_assoc($getInfoQuery)) {
				if (isset($thisInfo['thumbnail'])) {
					$thisInfo['thumbnail'] = $_tool->links($thisInfo['thumbnail']);
				}
				if (isset($thisInfo['title'])) {
					$thisInfo['title'] = $_tool->convertDisplayString($thisInfo['title']);
				}
				if (isset($thisInfo['description'])) {
					$thisInfo['description'] = $_tool->convertDisplayString($thisInfo['description']);
				}
				if (isset($thisInfo['token'])) {
					unset($thisInfo['token']);
				}
				$dataArr[] = $thisInfo;
			}
			$countArr = count($dataArr);
			return array("return" => true, "count" => $countArr, "data" => $dataArr);
		}else if ($action == "exists") {
			$siteLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$siteValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($siteLabel == null || $siteValue == null) {
				return array("return" => false, "reason" => "");
			}
			$existsInfoRequest = "SELECT `id` FROM `sites_info` WHERE `".$siteLabel."` = '".$siteValue."' LIMIT 1;";
			$existsInfoQuery = mysqli_query($db, $existsInfoRequest);
			if (!$existsInfoQuery) {
				return array("return" => false, "reason" => "dsf");
			}
			if (mysqli_num_rows($existsInfoQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "xs");
		}
	}
	function data ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "xx");
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
				$dataArr = array();
				while ($siteFetch = mysqli_fetch_assoc($siteQuery)) {
					$dataArr[] = $siteFetch;
				}
				$countArr = count($dataArr);
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
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
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
		if (isset($object['size'], $object['size']['width']) && is_string($object['size']['width'])) $sizeWidth = $object['size']['width']; else $sizeWidth = "auto";
		if (isset($object['size'], $object['size']['height']) && is_string($object['size']['height'])) $sizeHeight = $object['size']['height']; else $sizeHeight = "auto";
		if ($sizeWidth == null || $sizeHeight == null) {
			return array("return" => false, "reason" => "x");
		}
		if (!isset($siteHost) || $siteHost == null) {
			if (isset($matchUrl[7]) && is_string($matchUrl[7])) {
				$siteHost = $matchUrl[7];
			}else {
				return array("return" => false, "reason" => "5");
			}
			if (isset($matchUrl[5]) && is_string($matchUrl[5])) {
				$siteSub = $matchUrl[5];
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
			if (preg_match("/^(video)\/([a-zA-Z0-9]+)\_([\S]+)?$/i", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}else if (preg_match("/^([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "dailymotion";
				$embedCode = '<iframe class="'.$className.'" embed-host="dailymotion" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="//www.dailymotion.com/embed/video/'.$embedId.'" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(youtube|youtube\.com|youtu\.be)/i", $siteHost)) {
			if (preg_match("/^(watch\?v\=)([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}else if (preg_match("/^([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "youtube";
				$embedCode = '<iframe class="'.$className.'" embed-host="youtube" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://www.youtube.com/embed/'.$embedId.'" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(vimeo|vimeo\.com)/i", $siteHost)) {
			if (preg_match("/^(channels)\/([\S]+)\/([0-9]+)$/i", $sitePath, $idMatch) && isset($idMatch[3]) && is_string($idMatch[3])) {
				$embedId = $idMatch[3];
			}else if (preg_match("/^([0-9]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "vimeo";
				$embedCode = '<iframe class="'.$className.'" embed-host="vimeo" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://player.vimeo.com/video/'.$embedId.'?color=ffffff" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(vine|vine\.co)/i", $siteHost)) {
			if (preg_match("/^(v)\/([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "vine";
				$embedCode = '<iframe class="'.$className.'" embed-host="vine" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://vine.co/v/'.$embedId.'/embed/simple" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(flickr|flickr\.com)/i", $siteHost)) {
			if (preg_match("/^(photos)\/([\S]+)\/([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[2], $idMatch[3]) && is_string($idMatch[2]) && is_string($idMatch[3])) {
				$embedId = $idMatch[2].'\/'.$idMatch[3];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "flickr";
				$embedCode = '<iframe class="'.$className.'" embed-host="flickr" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://www.flickr.com/photos/'.$embedId.'/player/" frameborder="0" allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(myspace|myspace\.com)/i", $siteHost)) {
			if (preg_match("/^([a-zA-Z0-9]+\/)?(video)\/([\S]+)\/([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[3], $idMatch[4]) && is_string($idMatch[3]) && is_string($idMatch[4])) {
				$embedId = $idMatch[3].'-'.$idMatch[4];
			}else if (preg_match("/^([a-zA-Z0-9]+\/)?(music)\/([\S]+)\/([\S]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[4]) && is_string($idMatch[4])) {
				$embedId = $idMatch[4];
			}
			if (isset($embedId) && is_string($embedId)) {
				if ($idMatch[2] == "video") {
					$embedType = "video.myspace";
					$embedCode = '<iframe class="'.$className.'" embed-host="video.myspace" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="//media.myspace.com/play/video/'.$embedId.'" frameborder="0" allowtransparency="true" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
				}else if ($idMatch[2] == "music") {
					$embedType = "music.myspace";
					$embedCode = '<iframe class="'.$className.'" embed-host="music.myspace" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="//media.myspace.com/play/song/'.$embedId.'" frameborder="0" allowtransparency="true" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
				}
			}
		}else if (isset($siteHost) && preg_match("/(ted|ted.com)/i", $siteHost)) {
			if (preg_match("/^(talks)\/([\S]+)(\#|\/|\.html)?$/i", $sitePath, $idMatch) && isset($idMatch[2]) && is_string($idMatch[2])) {
				$embedId = $idMatch[2];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "ted";
				$embedCode = '<iframe class="'.$className.'" embed-host="ted" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://embed-ssl.ted.com/talks/'.$embedId.'.html" frameborder="0" scrolling="no" allowfullscreen="true"></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(^nhaccuatui|^nhaccuatui\.com)/i", $siteHost)) {
			if (preg_match("/^(video)\/([\S]+)\.([a-zA-Z0-9]+)(\/|\.html)?$/i", $sitePath, $idMatch) && isset($idMatch[3]) && is_string($idMatch[3])) {
				$embedId = $idMatch[3];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "nhaccuatui";
				$embedCode = '<object class="'.$className.'" embed-host="nhaccuatui" width="'.$sizeWidth.'" height="'.$sizeHeight.'">  <param name="movie" value="http://www.nhaccuatui.com/video/xem-clip/'.$embedId.'" />  <param name="quality" value="high" />  <param name="wmode" value="transparent" />  <param name="allowscriptaccess" value="always" /> <param name="allowfullscreen" value="true"/> <param name="flashvars" value="autostart=false" />  <embed src="http://www.nhaccuatui.com/video/xem-clip/'.$embedId.'" flashvars="target=blank&autostart=false" allowscriptaccess="always" allowfullscreen="true" quality="high" wmode="transparent" type="application/x-shockwave-flash" width="'.$sizeWidth.'" height="'.$sizeHeight.'"></embed></object>';
			}
		}else if (isset($siteHost) && (preg_match("/(^mp3\.zing\.vn)/i", $siteHost) || (preg_match("/(^zing\.vn)/i", $siteHost) && $siteSub == "mp3"))) {
			if (preg_match("/^(video-clip)\/([\S]+)\/([a-zA-Z0-9]+)(\/|\.html)?$/i", $sitePath, $idMatch) && isset($idMatch[3]) && is_string($idMatch[3])) {
				$embedId = $idMatch[3];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "mp3.zing.vn";
				$embedCode = '<iframe class="'.$className.'" embed-host="mp3.zing.vn" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="http://mp3.zing.vn/embed/video/'.$embedId.'?start=false" frameborder="0" allowfullscreen="true"></iframe>';
			}
		}else if (isset($siteHost) && (preg_match("/(^tv\.zing\.vn)/i", $siteHost) || (preg_match("/(^zing\.vn)/i", $siteHost) && $siteSub == "tv"))) {
			if (preg_match("/^([a-zA-Z0-9]+)\/([\S]+)\/([a-zA-Z0-9]+)(\/|\.html)?$/i", $sitePath, $idMatch) && isset($idMatch[3]) && is_string($idMatch[3])) {
				$embedId = $idMatch[3];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "tv.zing.vn";
				$embedCode = '<iframe class="'.$className.'" embed-host="tv.zing.vn" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="http://tv.zing.vn/embed/video/'.$embedId.'" frameborder="0" allowfullscreen="true"></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(^clipvn|clip\.vn)/i", $siteHost)) {
			if (preg_match("/^(watch)\/([\S]+)\,([a-zA-Z0-9]+)(\/|\.html)?$/i", $sitePath, $idMatch) && isset($idMatch[3]) && is_string($idMatch[3])) {
				$embedId = $idMatch[3];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "clip.vn";
				$embedCode = '<iframe class="'.$className.'" embed-host="clip.vn" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="http://clip.vn/embed/'.$embedId.'" frameborder="0" allowtransparency="true" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
			}
		}else if (isset($siteHost) && preg_match("/(vid|vid\.me)/i", $siteHost)) {
			if (preg_match("/^([a-zA-Z0-9]+)(\/)?$/i", $sitePath, $idMatch) && isset($idMatch[1]) && is_string($idMatch[1])) {
				$embedId = $idMatch[1];
			}
			if (isset($embedId) && is_string($embedId)) {
				$embedType = "vid";
				$embedCode = '<iframe class="'.$className.'" embed-host="vid" width="'.$sizeWidth.'" height="'.$sizeHeight.'" src="https://vid.me/e/'.$embedId.'?stats=1&amp" frameborder="0" allowtransparency="true" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
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
	function scan ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_antivirus = $this->class['_antivirus'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "xx");
		}
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "extract") {
			$siteUrl = isset($object['url']) && is_string($object['url']) ? $object['url'] : null;
			if ($siteUrl == null && !preg_match($_parameter->get('regex_sites_url'), $siteUrl)) {
				return array("return" => false, "reason" => "43");
			}
			preg_match($_parameter->get('regex_sites_url'), $siteUrl, $siteMatch);
			if (1 + 1 == 2) {
				$scanSites = $_antivirus->virustotal(array("type" => "url", "action" => "scan", "url" => $siteUrl));
				if (isset($scanSites, $scanSites['return'], $scanSites['data']) && $scanSites['return'] == true) {
					if (isset($scanSites['data']['response_code']) && $scanSites['data']['response_code'] == 1) {
						$reportSites = $_antivirus->virustotal(array("type" => "url", "action" => "report", "resource" => $siteUrl));
						if (isset($reportSites, $reportSites['return'], $reportSites['data']) && $reportSites['return'] == true) {
							if (isset($reportSites['data']['response_code']) && $reportSites['data']['response_code'] == 1) {
								$dataArr = array();
								$dataArr['total'] = isset($reportSites['data']['total']) && (is_string($reportSites['data']['total']) || is_numeric($reportSites['data']['total'])) ? $reportSites['data']['total'] : 0;
								$dataArr['data'] = isset($reportSites['data']['scans']) && is_array($reportSites['data']['scans']) ? $reportSites['data']['scans'] : null;
								if (isset($dataArr['data'], $dataArr['total']) && is_array($dataArr['data']) && count($dataArr['data']) > 0 && $dataArr['total'] > 0) {
									$detectMalware = 0;
									foreach ($dataArr['data'] as $scanner => $resultThis) {
										if (isset($resultThis, $resultThis['detected']) && $resultThis['detected'] != null) {
											$detectMalware++;
										}
									}
									$dataArr['status'] = $detectMalware / count($dataArr['data']) * 100;
								}
								return array("return" => true, "data" => $dataArr);
							}else {
								//.
							}
						}else if (isset($reportSites, $reportSites['return'], $reportSites['reason']) && $returneportSites['return'] == false) {
							return array("return" => false, "reason" => $reportSites['reason']);
						}else {
							return array("return" => false, "reason" => "");
						}
					}else {
						//.
					}
				}else if (isset($scanSites, $scanSites['return'], $scanSites['reason']) && $scanSites['return'] == false) {
					return array("return" => false, "reason" => $scanSites['reason']);
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}else if ($action == "add") {
			$infoArr = isset($object['info']) && is_array($object['info']) && count($object['info']) > 0 ? $object['info'] : null;
			if ($infoArr == null) {
				return array("return" => false, "reason" => "sadf");
			}
			$infoArr['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.time().'::'.rand());
			$infoArr['display'] = hash('md5', $infoArr['token']);
			$infoArr['hash'] = isset($object['hash']) && is_string($object['hash']) ? $_tool->convertDisplayString($infoArr['hash']) : null;
			$infoArr['total'] = isset($infoArr['total']) && (is_string($infoArr['total']) || is_numeric($infoArr['total'])) ? intval($infoArr['total']) : null;
			if (isset($infoArr['data']) && is_string($infoArr['data'])) {
				$infoArr['data'] = $_tool->convertDatabaseString($infoArr['data']);
			}else if (isset($infoArr['data']) && is_array($infoArr['data'])) {
				$infoArr['data'] = $_tool->convertDatabaseString(serialize($infoArr['data']));
			}else {
				$infoArr['data'] = null;
			}
			$infoArr['status'] = isset($infoArr['status']) && (is_string($infoArr['status']) || is_numeric($infoArr['status'])) ? $infoArr['status'] : null;
			if ($infoArr['status'] == null) {
				$resultArr = isset($infoArr['data']) && is_string($infoArr['data']) ? unserialize($_tool->convertDisplayString($infoArr['data'])) : null;
				if (isset($resultArr) && is_array($resultArr) && count($resultArr) > 0) {
					$detectMalware = 0;
					foreach ($resultArr as $scanner => $resultThis) {
						if (isset($resultThis, $resultThis['detected']) && $resultThis['detected'] != null) {
							$detectMalware++;
						}
					}
					$infoArr['status'] = $detectMalware / count($resultArr) * 100;
				}
			}
			if (1 + 1 == 2) {
				$addScanRequest = "INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES (NULL, '".$infoArr['time'] = time()."', '".$infoArr['token']."', '".$infoArr['display']."', '".$infoArr['hash']."', '".$infoArr['total']."', '".$infoArr['data']."', '".$infoArr['status']."', '".$infoArr['updated'] = time()."');";
				$addScanQuery = mysqli_query($db, $addScanRequest);
				if (!$addScanQuery) {
					return array("return" => false, "reason" => "23ad");
				}else {
					$infoArr['id'] = mysqli_insert_id($db);
					return array("return" => true, "data" => $infoArr);
				}
			}else {
				return array("return" => false, "reason" => "asdx");
			}
		}else if ($action == "get") {
			$scanLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$scanValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			$limit = isset($object['limit']) && is_string($object['limit']) ? $_tool->convertDatabaseString($object['limit']) : null;
			if ($scanLabel == null || $scanValue == null) {
				return array("return" => false, "reason" => "casdsa");
			}
			$scanRequest = "SELECT * FROM `sites_scan` WHERE `".$scanLabel."` = '".$scanValue."' ".$limit.";";
			$scanQuery = mysqli_query($db, $scanRequest);
			if (!$scanQuery) {
				return array("return" => false, "reason" => "qwer");
			}else {
				$dataArr = array();
				while ($scanThis = mysqli_fetch_assoc($scanQuery)) {
					if (isset($scanThis['data'])) {
						$scanThis['data'] = unserialize($_tool->convertDisplayString($scanThis['data']));
					}
					if (isset($scanThis['token'])) {
						unset($scanThis['token']);
					}
					$dataArr[] = $scanThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}
		}else if ($action == "status") {
			$scanLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$scanValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($scanLabel == null || $scanValue == null) {
				return array("return" => false, "reason" => "casdsa");
			}
			$scanRequest = "SELECT `status`, `total`, `updated` FROM `sites_scan` WHERE `".$scanLabel."` = '".$scanValue."' LIMIT 1;";
			$scanQuery = mysqli_query($db, $scanRequest);
			if (!$scanQuery) {
				return array("return" => false, "reason" => "qwer");
			}else {
				if (mysqli_num_rows($scanQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					$dataArr = array();
					$dataArr = mysqli_fetch_assoc($scanQuery);
					return array("return" => true, "exists" => true, "data" => $dataArr);
				}
			}
		}else if ($action == "exists") {
			$scanLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$scanValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($scanLabel == null || $scanValue == null) {
				return array("return" => false, "reason" => "xsaxa");
			}
			$scanRequest = "SELECT `id` FROM `sites_scan` WHERE `".$scanLabel."` = '".$scanValue."' LIMIT 1;";
			$scanQuery = mysqli_query($db, $scanRequest);
			if (!$scanQuery) {
				return array("return" => false, "reason" => "sdfas");
			}else {
				if (mysqli_num_rows($scanQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "fgew");
		}
	}
	function certificate ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "xx");
		}
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "extract") {
			$siteUrl = isset($object['url']) && is_string($object['url']) ? $object['url'] : null;
			if ($siteUrl == null && !preg_match($_parameter->get('regex_sites_url'), $siteUrl)) {
				return array("return" => false, "reason" => "43");
			}
			preg_match($_parameter->get('regex_sites_url'), $siteUrl, $siteMatch);
			if (isset($siteMatch, $siteMatch[2]) && is_string($siteMatch[2]) && strtolower($siteMatch[2]) == "https") {
				$urlParse = parse_url($siteUrl, PHP_URL_HOST);
				$getCertificate = stream_context_create(array("ssl" => array("capture_peer_cert" => true)));
				$readCertificate = stream_socket_client("ssl://".$urlParse.":443", $errno, $errstr, 30, STREAM_CLIENT_CONNECT, $getCertificate);
				$certificateArr = stream_context_get_params($readCertificate);
				$certinfoArr = openssl_x509_parse($certificateArr['options']['ssl']['peer_certificate']);
				$rawArr = array();
				if (isset($certinfoArr['subject']) && is_string($certinfoArr['subject'])) {
					$rawArr['subject'] = $certinfoArr['subject'];
				}
				if (isset($certinfoArr['issuer']) && is_array($certinfoArr['issuer'])) {
					foreach ($certinfoArr['issuer'] as $it => $value) {
						$rawArr['issuer.'.strtolower($it)] = $value;
					}
				}
				if (isset($certinfoArr['hash']) && is_string($certinfoArr['hash'])) {
					$rawArr['hash'] = $certinfoArr['hash'];
				}
				if (isset($certinfoArr['serialNumber']) && is_string($certinfoArr['serialNumber'])) {
					$rawArr['serialnumber'] = $certinfoArr['serialNumber'];
				}
				if (isset($certinfoArr['version']) && (is_string($certinfoArr['version']) || is_numeric($certinfoArr['version']))) {
					$rawArr['version'] = $certinfoArr['version'];
				}
				if (isset($certinfoArr['validTo_time_t']) && (is_string($certinfoArr['validTo_time_t']) || is_numeric($certinfoArr['validTo_time_t']))) {
					$rawArr['valid.time.to'] = $certinfoArr['validTo_time_t'];
				}
				if (isset($certinfoArr['validFrom_time_t']) && (is_string($certinfoArr['validFrom_time_t']) || is_numeric($certinfoArr['validFrom_time_t']))) {
					$rawArr['valid.time.from'] = $certinfoArr['validFrom_time_t'];
				}
				if (isset($certinfoArr['signatureTypeSN']) && is_string($certinfoArr['signatureTypeSN'])) {
					$rawArr['signature.type.name'] = $certinfoArr['signatureTypeSN'];
				}
				if (isset($certinfoArr['signatureTypeNID']) && (is_string($certinfoArr['signatureTypeNID']) || is_numeric($certinfoArr['signatureTypeNID']))) {
					$rawArr['signature.type.id'] = $certinfoArr['signatureTypeNID'];
				}
				if (isset($certinfoArr['purposes']) && is_array($certinfoArr['purposes'])) {
					$rawArr['purposes'] = $certinfoArr['purposes'];
				}
				if (isset($certinfoArr['extensions'], $certinfoArr['extensions']['subjectKeyIdentifier']) && is_string($certinfoArr['extensions']['subjectKeyIdentifier'])) {
					$rawArr['identifier.subject.key'] = $certinfoArr['extensions']['subjectKeyIdentifier'];
				}
				if (isset($certinfoArr['extensions'], $certinfoArr['extensions']['authorityKeyIdentifier']) && is_string($certinfoArr['extensions']['authorityKeyIdentifier'])) {
					$rawArr['identifier.authority.key'] = $certinfoArr['extensions']['authorityKeyIdentifier'];
				}
				if (isset($certinfoArr['extensions'], $certinfoArr['extensions']['certificatePolicies']) && is_string($certinfoArr['extensions']['certificatePolicies'])) {
					$rawArr['policies'] = $certinfoArr['extensions']['certificatePolicies'];
				}
				if (isset($certinfoArr['extensions'], $certinfoArr['extensions']['keyUsage']) && is_string($certinfoArr['extensions']['keyUsage'])) {
					$rawArr['usefor.key'] = $certinfoArr['extensions']['keyUsage'];
				}
				if (isset($certinfoArr['extensions'], $certinfoArr['extensions']['extendedKeyUsage']) && is_string($certinfoArr['extensions']['extendedKeyUsage'])) {
					$rawArr['usefor.extended'] = $certinfoArr['extensions']['extendedKeyUsage'];
				}
				if (isset($certinfoArr['extensions'], $certinfoArr['extensions']['subjectAltName']) && is_string($certinfoArr['extensions']['subjectAltName'])) {
					$rawArr['subject.name'] = explode(",", $certinfoArr['extensions']['subjectAltName']);
				}
				unset($certinfoArr);
				return array("return" => true, "data" => $rawArr);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "add") {
			$infoArr = isset($object['info']) && is_array($object['info']) && count($object['info']) > 0 ? $object['info'] : null;
			if ($infoArr == null) {
				return array("return" => false, "reason" => "");
			}
			$infoArr['token'] = hash('crc32', '('.$guyType.'_'.$guyId.')::'.time().'::'.rand());
			$infoArr['display'] = hash('md5', $infoArr['token']);
			$infoArr['hash'] = isset($infoArr['hash']) && is_string($infoArr['hash']) ? $_tool->convertDatabaseString($infoArr['hash']) : null;
			$infoArr['issuer.c'] = isset($infoArr['issuer.c']) && is_string($infoArr['issuer.c']) ? $_tool->convertDatabaseString($infoArr['issuer.c']) : null;
			$infoArr['issuer.o'] = isset($infoArr['issuer.o']) && is_string($infoArr['issuer.o']) ? $_tool->convertDatabaseString($infoArr['issuer.o']) : null;
			$infoArr['issuer.ou'] = isset($infoArr['issuer.ou']) && is_string($infoArr['issuer.ou']) ? $_tool->convertDatabaseString($infoArr['issuer.ou']) : null;
			$infoArr['issuer.s'] = isset($infoArr['issuer.s']) && is_string($infoArr['issuer.s']) ? $_tool->convertDatabaseString($infoArr['issuer.s']) : null;
			$infoArr['issuer.l'] = isset($infoArr['issuer.l']) && is_string($infoArr['issuer.l']) ? $_tool->convertDatabaseString($infoArr['issuer.l']) : null;
			$infoArr['issuer.cn'] = isset($infoArr['issuer.cn']) && is_string($infoArr['issuer.cn']) ? $_tool->convertDatabaseString($infoArr['issuer.cn']) : null;
			$infoArr['signature.type.name'] = isset($infoArr['signature.type.name']) && is_string($infoArr['signature.type.name']) ? $_tool->convertDatabaseString($infoArr['signature.type.name']) : null;
			$infoArr['signature.type.id'] = isset($infoArr['signature.type.id']) && is_string($infoArr['signature.type.id']) ? $_tool->convertDatabaseString($infoArr['signature.type.id']) : null;
			if (isset($infoArr['purposes']) && is_array($infoArr['purposes']) && count($infoArr['purposes']) > 0) {
				$infoArr['purposes'] = $_tool->convertDatabaseString(serialize($infoArr['purposes']));
			}else if (isset($infoArr['purposes']) && is_string($infoArr['purposes'])) {
				$infoArr['purposes'] = $_tool->convertDatabaseString($infoArr['purposes']);
			}else {
				$infoArr['purposes'] = null;
			}
			$infoArr['valid.time.from'] = isset($infoArr['valid.time.from']) && (is_string($infoArr['valid.time.from']) || is_numeric($infoArr['valid.time.from'])) ? $_tool->convertDatabaseString($infoArr['valid.time.from']) : null;
			$infoArr['valid.time.to'] = isset($infoArr['valid.time.to']) && (is_string($infoArr['valid.time.to']) || is_numeric($infoArr['valid.time.to'])) ? $_tool->convertDatabaseString($infoArr['valid.time.to']) : null;
			$infoArr['identifier.subject.key'] = isset($infoArr['identifier.subject.key']) && (is_string($infoArr['identifier.subject.key']) || is_numeric($infoArr['identifier.subject.key'])) ? $_tool->convertDatabaseString($infoArr['identifier.subject.key']) : null;
			$infoArr['identifier.authority.key'] = isset($infoArr['identifier.authority.key']) && (is_string($infoArr['identifier.authority.key']) || is_numeric($infoArr['identifier.authority.key'])) ? $_tool->convertDatabaseString($infoArr['identifier.authority.key']) : null;
			$infoArr['policies'] = isset($infoArr['policies']) && is_string($infoArr['policies']) ? $_tool->convertDatabaseString($infoArr['policies']) : null;
			$infoArr['usefor.key'] = isset($infoArr['usefor.key']) && is_string($infoArr['usefor.key']) ? $_tool->convertDatabaseString($infoArr['usefor.key']) : null;
			$infoArr['usefor.extended'] = isset($infoArr['usefor.extended']) && is_string($infoArr['usefor.extended']) ? $_tool->convertDatabaseString($infoArr['usefor.extended']) : null;
			if (isset($infoArr['subject.name']) && is_string($infoArr['subject.name'])) {
				$infoArr['subject.name'] = $_tool->convertDatabaseString($infoArr['subject.name']);
			}else if (isset($infoArr['subject.name']) && is_array($infoArr['subject.name'])) {
				$infoArr['subject.name'] = $_tool->convertDatabaseString(serialize($infoArr['subject.name']));
			}else {
				$infoArr['subject.name'] = null;
			}
			if (1 + 1 == 2) {
				$addCertificateRequest = "INSERT INTO `sites_certificate` (`id`, `time`, `token`, `display`, `hash`, `issuer.c`, `issuer.o`, `issuer.ou`, `issuer.s`, `issuer.l`, `issuer.cn`, `signature.type.name`, `signature.type.id`, `purposes`, `valid.time.from`, `valid.time.to`, `identifier.subject.key`, `identifier.authority.key`, `policies`, `usefor.key`, `usefor.extended`, `subject.name`, `updated`) VALUES (NULL, '".$infoArr['time'] = time()."', '".$infoArr['token']."', '".$infoArr['display']."', '".$infoArr['hash']."', '".$infoArr['issuer.c']."', '".$infoArr['issuer.o']."', '".$infoArr['issuer.ou']."', '".$infoArr['issuer.s']."', '".$infoArr['issuer.l']."', '".$infoArr['issuer.cn']."', '".$infoArr['signature.type.name']."', '".$infoArr['signature.type.id']."', '".$infoArr['purposes']."', '".$infoArr['valid.time.from']."', '".$infoArr['valid.time.to']."', '".$infoArr['identifier.subject.key']."', '".$infoArr['identifier.authority.key']."', '".$infoArr['policies']."', '".$infoArr['usefor.key']."', '".$infoArr['usefor.extended']."', '".$infoArr['subject.name']."', '".$infoArr['updated'] = time()."');";
				$addCertificateQuery = mysqli_query($db, $addCertificateRequest);
				if (!$addCertificateQuery) {
					return array("return" => false, "reason" => "");
				}else {
					$infoArr['id'] = mysqli_insert_id($db);
					return array("return" => true, "data" => $infoArr);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "get") {
			$certificateLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$certificateValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			$limit = isset($object['limit']) && is_string($object['limit']) ? $_tool->convertDatabaseString($object['limit']) : null;
			if ($certificateLabel == null || $certificateValue == null) {
				return array("return" => false, "reason" => "");
			}
			$certificateRequest = "SELECT * FROM `sites_certificate` WHERE `".$certificateLabel."` = '".$certificateValue."' ".$limit.";";
			$certificateQuery = mysqli_query($db, $certificateRequest);
			if (!$certificateQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$dataArr = array();
				while ($certificateThis = mysqli_fetch_assoc($certificateQuery)) {
					if (isset($certificateThis['issuer.c'])) {
						$certificateThis['issuer']['c'] = $certificateThis['issuer.c'];
						unset($certificateThis['issuer.c']);
					}
					if (isset($certificateThis['issuer.o'])) {
						$certificateThis['issuer']['o'] = $certificateThis['issuer.o'];
						unset($certificateThis['issuer.o']);
					}
					if (isset($certificateThis['issuer.ou'])) {
						$certificateThis['issuer']['ou'] = $certificateThis['issuer.ou'];
						unset($certificateThis['issuer.ou']);
					}
					if (isset($certificateThis['issuer.s'])) {
						$certificateThis['issuer']['s'] = $certificateThis['issuer.s'];
						unset($certificateThis['issuer.s']);
					}
					if (isset($certificateThis['issuer.l'])) {
						$certificateThis['issuer']['l'] = $certificateThis['issuer.l'];
						unset($certificateThis['issuer.l']);
					}
					if (isset($certificateThis['issuer.cn'])) {
						$certificateThis['issuer']['cn'] = $certificateThis['issuer.cn'];
						unset($certificateThis['issuer.cn']);
					}
					if (isset($certificateThis['identifier.authority.key'])) {
						$certificateThis['identifier']['authority']['key'] = $certificateThis['identifier.authority.key'];
						unset($certificateThis['identifier.authority.key']);
					}
					if (isset($certificateThis['identifier.subject.key'])) {
						$certificateThis['identifier']['subject']['key'] = $certificateThis['identifier.subject.key'];
						unset($certificateThis['identifier.subject.key']);
					}
					if (isset($certificateThis['signature.type.id'])) {
						$certificateThis['signature']['type']['id'] = $certificateThis['signature.type.id'];
						unset($certificateThis['signature.type.id']);
					}
					if (isset($certificateThis['signature.type.name'])) {
						$certificateThis['signature']['type']['name'] = $certificateThis['signature.type.name'];
						unset($certificateThis['signature.type.name']);
					}
					if (isset($certificateThis['purposes'])) {
						$certificateThis['purposes'] = unserialize($_tool->convertDisplayString($certificateThis['purposes']));
						unset($certificateThis['purposes']);
					}
					if (isset($certificateThis['subject.name'])) {
						$certificateThis['subject']['name'] = unserialize($_tool->convertDisplayString($certificateThis['subject.name']));
						unset($certificateThis['subject.name']);
					}
					if (isset($certificateThis['usefor.extended'])) {
						$certificateThis['usefor']['extended'] = $certificateThis['usefor.extended'];
						unset($certificateThis['usefor.extended']);
					}
					if (isset($certificateThis['usefor.key'])) {
						$certificateThis['usefor']['key'] = $certificateThis['usefor.key'];
						unset($certificateThis['usefor.key']);
					}
					if (isset($certificateThis['valid.time.from'])) {
						$certificateThis['valid']['time']['from'] = $certificateThis['valid.time.from'];
						unset($certificateThis['valid.time.from']);
					}
					if (isset($certificateThis['valid.time.to'])) {
						$certificateThis['valid']['time']['to'] = $certificateThis['valid.time.to'];
						unset($certificateThis['valid.time.to']);
					}
					if (isset($certificateThis['token'])) {
						unset($certificateThis['token']);
					}
					$dataArr[] = $certificateThis;
				}
				$countArr = count($dataArr);
				return array("return" => true, "count" => $countArr, "data" => $dataArr);
			}
		}else if ($action == "exists") {
			$certificateLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$certificateValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($certificateLabel == null || $certificateValue == null) {
				return array("return" => false, "reason" => "");
			}
			$certificateRequest = "SELECT `id` FROM `sites_certificate` WHERE `".$certificateLabel."` = '".$certificateValue."' LIMIT 1;";
			$certificateQuery = mysqli_query($db, $certificateRequest);
			if (!$certificateQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($certificateQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "12");
		}
	}
	function extract ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "xx");
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
		$htmlPage = $_tool->curl($siteUrl, 5, array("cookie" => true));
		if (isset($htmlPage['return'], $htmlPage['data']) && $htmlPage['return'] == true) {
			$htmlPage = $htmlPage['data'];
			$isGzip = $_tool->isGzip($htmlPage);
			if ($isGzip == true) {
				$htmlPage = gzdecode($htmlPage);
			}
		}else {
			return array("return" => false, "reason" => "s4");
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
			if (isset($matchUrl[5]) && is_string($matchUrl[5])) {
				$siteInfo['sub'] = $matchUrl[5];
			}else {
				$siteInfo['sub'] = null;
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
			$siteInfo['hash'] = hash('md5', $siteInfo['scheme'].'::'.$siteInfo['sub'].'::'.$siteInfo['host'].'::'.$siteInfo['path']);
			/*
			$getInfoRequest = "SELECT * FROM `sites_info` WHERE `sub` = '{$siteInfo['sub']}' AND `host` = '{$siteInfo['host']}'";
			if (isset($siteInfo['path']) && is_string($siteInfo['path']) && $siteInfo['path'] != null) {
				$pathStrLength = strlen($siteInfo['path']);
				if ($pathStrLength <= 20) {
					$getInfoRequest .= " AND `path` = '{$siteInfo['path']}'";
				}else {
					$pathStrLines = $pathStrLength / 5;
					$thisCount = 0;
					for ($x = 0; $x < 5; $x++) {
						for ($i = 0; $i < 5; $i++) {
							if ($i == $thisCount) {
								continue;
							}
							if (!isset($getInfoRequestPushLines[$i]) || $getInfoRequestPushLines[$i] == null) {
								$getInfoRequestPushLines[$i] = "`path` REGEXP '".addslashes(substr($siteInfo['path'], $i * $pathStrLines, $pathStrLines))."'";
							}else {
								$getInfoRequestPushLines[$i] .= " AND `path` REGEXP '".addslashes(substr($siteInfo['path'], $i * $pathStrLines, $pathStrLines))."'";
							}
						}
						$thisCount++;
					}
					for ($s = 0; $s < count ($getInfoRequestPushLines); $s++) {
						if (!isset($getInfoRequestPush) || $getInfoRequestPush == null) {
							$getInfoRequestPush = "({$getInfoRequestPushLines[$s]})";
						}else {
							$getInfoRequestPush .= " OR ({$getInfoRequestPushLines[$s]})";
						}
					}
					$getInfoRequest .= " AND ({$getInfoRequestPush})";
				}
			}
			*/
			$getInfoRequest = "SELECT * FROM `sites_info` WHERE `hash` = '{$siteInfo['hash']}' ORDER BY `id` DESC LIMIT 1;";
			$getInfoQuery = mysqli_query($db, $getInfoRequest);
			if (!$getInfoQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getInfoQuery) == 0) {
				$allowExtract = true;
			}else {
				$allowExtract = false;
				$siteInfoSaved = mysqli_fetch_assoc($getInfoQuery);
				/*
				if ($siteInfoSaved['updated'] + $_parameter->get('sites_info_time_update') < $time) {
					$allowExtract = true;
					$isExpired = true;
				}else {
					require ("html_dom.php");
					$pageDom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
					$pageDom->load($htmlPage, true, true);
					$siteInfo['fingerprints'] = hash('crc32', $pageDom->find("head", 0)->outertext);
					if ($siteInfo['fingerprints'] != $siteInfoSaved['fingerprints']) {
						$allowExtract = true;
					}else {
						$allowExtract = true;
					}
				}
				*/
			}
			if ($allowExtract == true) {
				if (!isset($pageDom)) {
					require ("html_dom.php");
					$pageDom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
					$pageDom->load($htmlPage, true, true);
				}
				$siteInfo['fingerprints'] = hash('crc32', $pageDom->find("head", 0)->outertext);
				$siteInfo['display'] = hash('md5', $siteInfo['fingerprints']);
				$siteInfo['token'] = hash('crc32', $siteInfo['display']);
				$siteInfo['hash'] = hash('md5', $siteInfo['scheme'].'::'.$siteInfo['sub'].'::'.$siteInfo['host'].'::'.$siteInfo['path']);
				if (isset($isExpired) && $isExpired == true) {
					$isChanged = $siteInfoSaved['fingerprints'] != $siteInfo['fingerprints'];
				}
				if (isset($isChanged) && !$isChanged) {
					mysqli_query($db, "UPDATE `sites_info` SET `updated` = '{$time}' WHERE `id` = '{$siteInfoSaved['id']}'");
					$infoId = $siteInfoSaved['id'];
				}else {
					if (isset($pageDom->find("head", 0)->find("meta[property=og:type]", 0)->content)) {
						$siteInfo['type'] = $pageDom->find("head", 0)->find("meta[property=og:type]", 0)->content;
					}else {
						//.
						$siteInfo['type'] = null;
					}
					if (isset($pageDom->find("html[lang]", 0)->lang)) {
						$siteInfo['language'] = $pageDom->find("html[lang]", 0)->lang;
					}else {
						//.
						$siteInfo['language'] = null;
					}
					if (isset($pageDom->find("head", 0)->find("meta[property=og:locale]", 0)->content)) {
						$localString = $pageDom->find("head", 0)->find("meta[property=og:locale]", 0)->content;
						if (preg_match("/([a-zA-Z]+)\_([a-zA-Z]+)/i", $localString, $localMatch)) {
							if (isset($localMatch[1]) && is_string($localMatch[1]) && (!isset($siteInfo['language']) || $siteInfo['language'] == null)) {
								$siteInfo['language'] = $localMatch[1];
							}
							if (isset($localMatch[2]) && is_string($localMatch[2])) {
								$siteInfo['country'] = $localMatch[2];
							}
						}
					}else {
						//.
						$siteInfo['country'] = null;
					}
					if (isset($pageDom->find("head", 0)->find("title", 0)->innertext)) {
						$siteInfo['title'] = $pageDom->find("head", 0)->find("title", 0)->innertext;
					}else {
						if (isset($pageDom->find("head", 0)->find("meta[property=og:title]", 0)->content)) {
							$siteInfo['title'] = $pageDom->find("head", 0)->find("meta[property=og:title]", 0)->content;
						}else {
							//.
							$siteInfo['title'] = null;
						}
					}
					if (isset($pageDom->find("head", 0)->find("meta[name=image]", 0)->content)) {
						$siteInfo['thumbnail'] = $pageDom->find("head", 0)->find("meta[name=image]", 0)->content;
					}else {
						if (isset($pageDom->find("head", 0)->find("meta[property=og:image]", 0)->content)) {
							$siteInfo['thumbnail'] = $pageDom->find("head", 0)->find("meta[property=og:image]", 0)->content;
						}else {
							//.
							$siteInfo['thumbnail'] = null;
						}
					}
					if (isset($pageDom->find("head", 0)->find("meta[name=description]", 0)->content)) {
						$siteInfo['description'] = $pageDom->find("head", 0)->find("meta[name=description]", 0)->content;
					}else {
						if (isset($pageDom->find("head", 0)->find("meta[property=og:description]", 0)->content)) {
							$siteInfo['description'] = $pageDom->find("head", 0)->find("meta[property=og:description]", 0)->content;
						}else {
							//.
						}
					}
					if (isset($siteInfo['language']) && is_string($siteInfo['language'])) {
						$siteInfo['language'] = $_tool->convertDatabaseString(substr($siteInfo['language'], 0, 2));
					}else {
						$siteInfo['language'] = null;
					}
					if (isset($siteInfo['title']) && is_string($siteInfo['title']) && $siteInfo['title'] != null) {
						$siteInfo['title'] = $_tool->convertDatabaseString($siteInfo['title']);
					}else {
						$siteInfo['title'] = null;
					}
					if (isset($siteInfo['thumbnail']) && is_string($siteInfo['thumbnail']) && $siteInfo['thumbnail'] != null) {
						$siteInfo['thumbnail'] = "photos/raw/other/".$_tool->hash('encode', urlencode($siteInfo['thumbnail']), $_parameter->get('hash_photos_other'));
					}else {
						$siteInfo['thumbnail'] = null;
					}
					if (isset($siteInfo['description']) && is_string($siteInfo['description'])) {
						$siteInfo['description'] = $_tool->convertDatabaseString($siteInfo['description']);
					}else {
						$siteInfo['description'] = null;
					}
					$siteInfo['scan'] = null;
					$siteInfo['certificate'] = null;
					if (isset($siteInfo['scheme']) && is_string($siteInfo['scheme']) && $siteInfo['scheme'] == "https") {
						$getCertificate = $this->certificate(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "extract", "url" => $siteInfo['url']));
						if (isset($getCertificate, $getCertificate['return'], $getCertificate['data'], $getCertificate['data']['hash']) && $getCertificate['return'] == true) {
							$existsCertificate = $this->certificate(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "exists", "label" => "hash", "value" => $getCertificate['data']['hash']));
							if (isset($existsCertificate, $existsCertificate['return'], $existsCertificate['exists']) && $existsCertificate['return'] == true) {
								if ($existsCertificate['exists'] == true) {
									$siteInfo['certificate'] = $getCertificate['data']['hash'];
								}else {
									$addCertificate = $this->certificate(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "add", "info" => $getCertificate['data']));
									if (isset($addCertificate, $addCertificate['return'], $getCertificate['data'], $getCertificate['data']['display']) && $addCertificate['return'] == true) {
										$siteInfo['certificate'] = $getCertificate['data']['display'];
									}
								}
							}
						}
					}
					if (isset($isChanged) && $isChanged) {
						mysqli_query($db, "UPDATE `sites_info` SET `fingerprints` = '{$siteInfo['fingerprints']}', `language` = '{$siteInfo['language']}', `country` = '{$siteInfo['country']}', `type` = '{$siteInfo['type']}', `thumbnail` = '{$siteInfo['thumbnail']}', `title` = '{$siteInfo['title']}', `description` = '{$siteInfo['description']}', `scan` = '{$siteInfo['scan']}', `certificate` = '{$siteInfo['certificate']}', `updated` = '{$time}' WHERE `id` = '{$siteInfoSaved['id']}'");
						$infoId = $siteInfoSaved['id'];
					}else {
						$insertRequest = "
						INSERT INTO 
						`sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) 
						VALUES 
						(NULL, '{$time}', '{$siteInfo['token']}', '{$siteInfo['display']}', '{$siteInfo['hash']}', '{$siteInfo['scheme']}', '{$siteInfo['sub']}', '{$siteInfo['host']}', '{$siteInfo['name']}', '{$siteInfo['dot']}', '{$siteInfo['path']}', '{$siteInfo['mime']}', '{$siteInfo['fingerprints']}', '{$siteInfo['language']}', '{$siteInfo['country']}', '{$siteInfo['type']}', '{$siteInfo['title']}', '{$siteInfo['thumbnail']}', '{$siteInfo['description']}', '{$siteInfo['url']}', '{$siteInfo['scan']}', '{$siteInfo['certificate']}', '{$time}');
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
					$siteInfoSavedQuery = mysqli_query($db, "SELECT * FROM `sites_info` WHERE `id` = '".$infoId."' LIMIT 1;");
					$siteInfoSaved = mysqli_fetch_assoc($siteInfoSavedQuery);
				}
				$siteInfoData = array(
					"id" => $siteInfoSaved['id'],
					"display" => $siteInfoSaved['display'],
					"hash" => $siteInfoSaved['hash'],
					"scheme" => $siteInfoSaved['scheme'],
					"sub" => $siteInfoSaved['sub'],
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
					"scan" => $siteInfoSaved['scan'],
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
	/*
	function add ($object) {
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
		$guyType = isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type']) ? $object['guy']['type'] : null;
		$guyId = isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id'])) ? $object['guy']['id'] : null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		//.
		if (!isset($object['url'])) {
			return array("return" => false, "reason" => "");
		}
		$siteUrl = $object['url'];
		$regexUrl = "/^((http|https|ftp|ftps)(:\/\/)?(www\.|[a-zA-Z]+\.)?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/";
		if (preg_match($regexUrl, $siteUrl)) {
			$pathEncode = urlencode($siteUrl);
			$site = $info = null;
			$time = time();
			$die = $_tool->siteDie($siteUrl);
			$dns = $_tool->getDNS($siteUrl);
			$host = $dns['host'];
			$ip = $dns['ip'];
			$domain = $dns['domain'];
			$infoQuery = mysqli_query($db, "SELECT `id`, `time` FROM `sites_info` WHERE `url` = '{$siteUrl}'");
			if (!$infoQuery) {
				return array("return" => false, "reason" => "");
			}
			$info = mysqli_fetch_assoc($infoQuery);
			if (mysqli_num_rows($infoQuery) == 0 || (mysqli_num_rows($infoQuery) > 0 && $info['time'] + $_parameter->get('site_info_time_limit') < $time)) {
				if (!$die) {
					$returnAction = $this->extract($siteUrl);
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
	*/
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