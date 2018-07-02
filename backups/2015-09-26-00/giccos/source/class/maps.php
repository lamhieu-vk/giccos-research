<?php
//http://en.wikipedia.org/w/api.php?action=query&titles=B%E1%BA%A1c+Li%C3%AAu&prop=pageimages&format=json&pithumbsize=100
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class maps {
	function __construct () {
		$GLOBALS["_maps"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function google ($object = array()) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		//.
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if ($type == "places") {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "search") {
				if (isset($object['keywords']) && is_string($object['keywords'])) $keywords = urlencode($object['keywords']); else $keywords = null;
				if ($keywords == null) {
					return array("return" => false, "reason" => "1");
				}
				$keyServices = $_parameter->get('key_api_google_'.rand(1,10));
				$requestUrl = "https://maps.googleapis.com/maps/api/place/textsearch/json?query={$keywords}&language=en&sensor=false&key={$keyServices}";
				$requestAction = $_tool->curl($requestUrl, 10, array("cookie" => false));
				if (isset($requestAction['return'], $requestAction['data']) && $requestAction['return'] == true) {
					$dataArr = json_decode($requestAction['data'], true);
					if (isset($dataArr['status']) && $dataArr['status'] == "OK") {
						foreach ($dataArr['results'] as $thisKey => $thisValue) {
							$dataArr['results'][$thisKey]['address'] = $thisValue['formatted_address'];
							$dataArr['results'][$thisKey]['places'] = $thisValue['place_id'];
							$dataArr['results'][$thisKey]['location'] = $thisValue['geometry']['location'];
							$dataArr['results'][$thisKey]['type'] = $thisValue['types'][0];
							//.
							$dataArr['results'][$thisKey]['location']['latitude'] = $dataArr['results'][$thisKey]['location']['lat'];
							unset($dataArr['results'][$thisKey]['location']['lat']);
							$dataArr['results'][$thisKey]['location']['longitude'] = $dataArr['results'][$thisKey]['location']['lng'];
							unset($dataArr['results'][$thisKey]['location']['lng']);
							//.
							unset($dataArr['results'][$thisKey]['formatted_address']);
							unset($dataArr['results'][$thisKey]['place_id']);
							unset($dataArr['results'][$thisKey]['reference']);
							unset($dataArr['results'][$thisKey]['icon']);
							unset($dataArr['results'][$thisKey]['geometry']);
							unset($dataArr['results'][$thisKey]['types']);
						}
						return array("return" => true, "data" => $dataArr['results']);
					}else {
						return array("return" => false, "reason" => $dataArr['status']);
					}
				}else {
					return array("return" => false, "reason" => "3");
				}
			}else if ($action == "info" || $action == "details") {
				if (isset($object['places']) && is_string($object['places'])) $placeid = urlencode($object['places']); else $placeid = null;
				if ($placeid == null) {
					return array("return" => false, "reason" => "4");
				}
				$keyServices = $_parameter->get('key_api_google_'.rand(1,9));
				$requestUrl = "https://maps.googleapis.com/maps/api/place/details/json?placeid={$placeid}&language=en&key={$keyServices}";
				$requestAction = $_tool->curl($requestUrl, 10, array("cookie" => true));
				if (isset($requestAction['return'], $requestAction['data']) && $requestAction['return'] == true) {
					$dataArr = json_decode($requestAction['data'], true);
					if (isset($dataArr['status']) && $dataArr['status'] == "OK") {
						foreach ($dataArr['result'] as $thisKey => $thisValue) {
							if ($thisKey == "address_components") {
								foreach ($thisValue as $acKey => $acValue) {
									$dataArr['result']['components'][$acKey] = array(
										"name" => $acValue['long_name'], 
										"type" => $acValue['types'][0]
									);
								}
								unset($dataArr['result'][$thisKey]);
							}
						}
						$dataArr['result']['address'] = $dataArr['result']['formatted_address'];
						$dataArr['result']['places'] = $dataArr['result']['place_id'];
						$dataArr['result']['location'] = $dataArr['result']['geometry']['location'];
						//.
						$dataArr['result']['location']['latitude'] = $dataArr['result']['location']['lat'];
						unset($dataArr['result']['location']['lat']);
						$dataArr['result']['location']['longitude'] = $dataArr['result']['location']['lng'];
						unset($dataArr['result']['location']['lng']);
						//.
						unset($dataArr['result']['reference']);
						unset($dataArr['result']['types']);
						unset($dataArr['result']['scope']);
						unset($dataArr['result']['place_id']);
						unset($dataArr['result']['icon']);
						unset($dataArr['result']['adr_address']);
						unset($dataArr['result']['formatted_address']);
						unset($dataArr['result']['geometry']);
						//.
						return array("return" => true, "data" => $dataArr['result']);
					}else {
						return array("return" => false, "reason" => "5");
					}
				}else {
					return array("return" => false, "reason" => "6");
				}
			}else {
				return array("return" => false, "reason" => "7");
			}
		}else {
			return array("return" => false, "reason" => "8");
		}
	}
	function places ($object = array()) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "search") {
			if (isset($object['keywords']) && is_string($object['keywords'])) $keywords = $_tool->convertDatabaseString($object['keywords']); else $keywords = null;
			if (isset($object['limit']) && is_numeric($object['limit'])) $limit = $object['limit']; else $limit = null;
			if ($keywords == null) {
				return array("return" => false, "reason" => "1");
			}
			$keywords = $_tool->convertDatabaseString($keywords);
			$getPlacesRequestPush = null;
			foreach (explode(" ", $keywords) as $wordsSearch) {
				if (!isset($wordsSearch) || $wordsSearch == null) {
					continue;
				}
				if (isset($getPlacesRequestPushName) && $getPlacesRequestPushName != null) {
					$getPlacesRequestPushName .= " AND LOWER (`name`) LIKE '%{$wordsSearch}%'";
				}else {
					$getPlacesRequestPushName = "LOWER (`name`) LIKE '%{$wordsSearch}%'";
				}
			}
			if (isset($getPlacesRequestPushName) && $getPlacesRequestPushName != null) {
				if ($getPlacesRequestPush == null) {
					$getPlacesRequestPush .= "(".$getPlacesRequestPushName.")";
				}else {
					$getPlacesRequestPush .= " OR (".$getPlacesRequestPushName.")";
				}
			}
			foreach (explode(" ", $keywords) as $wordsSearch) {
				if (!isset($wordsSearch) || $wordsSearch == null) {
					continue;
				}
				if (isset($getPlacesRequestPushAddress) && $getPlacesRequestPushAddress != null) {
					$getPlacesRequestPushAddress .= " AND LOWER (`address`) LIKE '%{$wordsSearch}%'";
				}else {
					$getPlacesRequestPushAddress = "LOWER (`address`) LIKE '%{$wordsSearch}%'";
				}
			}
			if (isset($getPlacesRequestPushAddress) && $getPlacesRequestPushAddress != null) {
				if ($getPlacesRequestPush == null) {
					$getPlacesRequestPush .= "(".$getPlacesRequestPushAddress.")";
				}else {
					$getPlacesRequestPush .= " OR (".$getPlacesRequestPushAddress.")";
				}
			}
			foreach (explode(" ", $keywords) as $wordsSearch) {
				if (!isset($wordsSearch) || $wordsSearch == null) {
					continue;
				}
				if (!preg_match("/^([0-9\-\.\,]+)$/", $wordsSearch)) {
					continue;
				}
				if (isset($getPlacesRequestPush) && $getPlacesRequestPush != null) {
					$getPlacesRequestPush .= " AND LOWER (`location`) LIKE '%{$wordsSearch}%'";
				}else {
					$getPlacesRequestPush = "LOWER (`location`) LIKE '%{$wordsSearch}%'";
				}
			}
			if (isset($getPlacesRequestPushAddressLocation) && $getPlacesRequestPushAddressLocation != null) {
				if ($getPlacesRequestPush == null) {
					$getPlacesRequestPush .= "(".$getPlacesRequestPushAddressLocation.")";
				}else {
					$getPlacesRequestPush .= " OR (".$getPlacesRequestPushAddressLocation.")";
				}
			}
			$getPlacesRequest = "SELECT * FROM `maps_places` WHERE ".$getPlacesRequestPush." ORDER BY CHAR_LENGTH (`name`) ASC, CHAR_LENGTH (`address`) ASC;";
			if ($limit > 0) {
				$getPlacesRequest .= " LIMIT {$limit}";
			}
			$getPlacesQuery = mysqli_query($db, $getPlacesRequest);
			if (!$getPlacesQuery) {
				return array("return" => false, "reason" => "2");
			}
			$countPlaces = mysqli_num_rows($getPlacesQuery);
			$resultsIdArr = array();
			while ($getPlacesFetch = mysqli_fetch_assoc($getPlacesQuery)) {
				$resultsIdArr[] = $getPlacesFetch['id'];
			}
			// if ($countPlaces == 0 || ($limit != null && count($resultsIdArr) < $limit)) {
			if (1 + 1 == 2) {
				$getMorePlacesOptions = array("type" => "places", "action" => "search", "keywords" => $keywords);
				$getMorePlaces = $this->google($getMorePlacesOptions);
				if (isset($getMorePlaces['return'], $getMorePlaces['data']) && $getMorePlaces['return'] == true) {
					foreach ($getMorePlaces['data'] as $morePlacesThis) {
						if (isset($morePlacesThis['location']['latitude'], $morePlacesThis['location']['longitude'])) {
							$morePlacesThis['location'] = $morePlacesThis['location']['latitude'].','.$morePlacesThis['location']['longitude'];
						}
						$addNewPlaces = $this->places(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "add", "places" => $morePlacesThis));
						if (isset($addNewPlaces['return'], $addNewPlaces['data']) && $addNewPlaces['return'] == true) {
							$resultsIdArr[] = $addNewPlaces['data']['id'];
						}
					}
				}
			}
			$resultsPlacesArr = array();
			$resultsPlacesHas = array();
			foreach ($resultsIdArr as $idValue) {
				if (in_array($idValue, $resultsPlacesHas)) {
					continue;
				}
				$getPlaces = $this->places(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "get", "label" => "id", "value" => $idValue, "limit" => "LIMIT 1"));
				if (isset($getPlaces['return'], $getPlaces['data'], $getPlaces['data'][0]) && $getPlaces['return'] == true) {
					$resultsPlacesHas[] = $idValue;
					$resultsPlacesArr[] = $getPlaces['data'][0];
				}else {
					//.
				}
			}
			return array("return" => true, "data" => $resultsPlacesArr);
			//.
		}else if ($action == "add") {
			if (isset($object['places']) && is_array($object['places'])) $placesArr = $object['places']; else $placesArr = null;
			if (!isset($placesArr['name']) || !isset($placesArr['type']) || !isset($placesArr['address']) || !isset($placesArr['location'])) {
				return array("return" => false, "reason" => "2");
			}
			$existsPlacesRequest = "SELECT `id` FROM `maps_places` WHERE `address` = '{$placesArr['address']}' OR (`latitude` = '".$_tool->convertDatabaseString(explode(',', $placesArr['location'])[0])."' AND `longitude` = '".$_tool->convertDatabaseString(explode(',', $placesArr['location'])[1])."') LIMIT 1";
			$existsPlacesQuery = mysqli_query($db, $existsPlacesRequest);
			if (!$existsPlacesQuery) {
				return array("return" => false, "reason" => "1");
			}
			if (mysqli_num_rows($existsPlacesQuery) == 0) {
				$placesArr['token'] = hash('crc32', time().'::('.$guyType.'_'.$guyId.')'.'::'.rand());
				$placesArr['display'] = hash('md5', $placesArr['token']);
				$placesArr['name'] = $_tool->convertDatabaseString($placesArr['name']);
				$placesArr['address'] = $_tool->convertDatabaseString($placesArr['address']);
				$placesArr['country'] = explode(",", $placesArr['address'])[count($placesArr['address']) - 1];
				$placesArr['language'] = null;
				$placesArr['type'] = $_tool->convertDatabaseString($placesArr['type']);
				list($placesArr['latitude'], $placesArr['longitude']) = explode(',', $placesArr['location']);
				$placesArr['marker'] = $_parameter->get('maps_statismap_markers');
				$placesArr['thumbnail'] = "maps/raw/places/staticmap/location={$placesArr['location']}&zoom={$_parameter->get('maps_statismap_zoom')}&size={$_parameter->get('maps_statismap_size')}&maptype={$_parameter->get('maps_statismap_type')}&markers={$placesArr['marker']}%7C{$placesArr['location']}&format=gif";
				$insertPlacesRequest = "
				INSERT INTO 
				`maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) 
				VALUES 
				(NULL, '{$placesArr['token']}', '{$placesArr['display']}', '{$placesArr['name']}', '{$placesArr['address']}', '{$placesArr['country']}', '{$placesArr['language']}', '{$placesArr['location']}', '{$placesArr['latitude']}', '{$placesArr['longitude']}', '{$placesArr['type']}', '{$placesArr['thumbnail']}');
				";
				$insertPlacesQuery = mysqli_query($db, $insertPlacesRequest);
				if (!$insertPlacesQuery) {
					return array("return" => false, "reason" => "3");
				}else {
					$placesArr['id'] = mysqli_insert_id($db);
					return array("return" => true, "data" => $placesArr);
				}
			}else {
				$placesArr = mysqli_fetch_assoc($existsPlacesQuery);
				return array("return" => true, "data" => $placesArr);
			}
		}else if ($action == "get") {
			if (isset($object['label']) && is_string($object['label'])) $placesLabel = $object['label']; else $placesLabel = null;
			if (isset($object['value']) && is_string($object['value'])) $placesValue = $object['value']; else $placesValue = null;
			if (isset($object['limit']) && is_string($object['limit'])) $placesLimit = $object['limit']; else $placesLimit = null;
			if ($placesLabel == null || $placesValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getPlacesRequest = "SELECT * FROM `maps_places` WHERE `".$placesLabel."` = '".$placesValue."' ".$placesLimit.";";
			$getPlacesQuery = mysqli_query($db, $getPlacesRequest);
			if (!$getPlacesQuery) {
				return array("return" => false, "reason" => "");
			}
			$placesArr = array();
			while ($getPlacesFetch = mysqli_fetch_assoc($getPlacesQuery)) {
				if (isset($getPlacesFetch['address'])) {
					$placesAddressArr = explode(",", $getPlacesFetch['address']);
					$getPlacesFetch['country'] = $placesAddressArr[count($placesAddressArr) - 1];
				}
				if (isset($getPlacesFetch['location'])) {
					$getPlacesFetch['coordinates'] = $getPlacesFetch['location'];
				}
				if (isset($getPlacesFetch['thumbnail'])) {
					$getPlacesFetch['thumbnail'] = $_tool->links($getPlacesFetch['thumbnail']);
				}
				$placesArr[] = $getPlacesFetch;
			}
			$placesCount = count($placesArr);
			return array("return" => true, "count" => $placesCount, "data" => $placesArr);
		}else if ($action == "nearby") {
			$placesLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$placesValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			$distance = isset($object['distance']) && is_numeric($object['distance']) ? intval($object['distance']) : null;
			$limit = isset($object['limit']) && is_numeric($object['limit']) ? $_tool->convertDatabaseString($object['limit']) : null;
			if ($placesLabel == null || $placesValue == null || $distance == null) {
				return array("return" => false, "reason" => "xs");
			}
			$limitNumber = filter_var($limit, FILTER_SANITIZE_NUMBER_INT);
			$getPlaceThis = $this->places(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "get", "label" => $placesLabel, "value" => $placesValue));
			if (isset($getPlaceThis, $getPlaceThis['return'], $getPlaceThis['data']) && $getPlaceThis['return'] == true) {
				if (isset($getPlaceThis['count']) && $getPlaceThis['count'] > 0) {
					$nearbyPlacesArr = array();
					foreach ($getPlaceThis['data'] as $key => $valuePlaceThis) {
						if ($limitNumber != null && count($nearbyPlacesArr) >= intval($limitNumber)) {
							break;
						}
						if (isset($valuePlaceThis, $valuePlaceThis['latitude'], $valuePlaceThis['longitude'])) {
							$nearbyPlacesRequest = "SELECT `id`, ROUND (6371 * acos(cos(radians(".$valuePlaceThis['latitude'].")) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians(".$valuePlaceThis['longitude'].")) + sin(radians(".$valuePlaceThis['latitude'].")) * sin(radians(`latitude`))), 4) AS `distance` FROM `maps_places` GROUP BY `distance` HAVING `distance` <= ".$distance." ".$limit.";";
							$nearbyPlacesQuery = mysqli_query($db, $nearbyPlacesRequest);
							if (!$nearbyPlacesQuery) {
								continue;
								//. return array("return" => false, "reason" => "rfsdf");
							}else {
								while ($nearbyPlacesThis = mysqli_fetch_assoc($nearbyPlacesQuery)) {
									if ($limitNumber != null && count($nearbyPlacesArr) >= intval($limitNumber)) {
										break;
									}
									$nearbyPlacesArr[] = $nearbyPlacesThis;
								}
							}
						}
					}
					$nearbyPlacesCount = count($nearbyPlacesArr);
					return array("return" => true, "count" => $nearbyPlacesCount, "data" => $nearbyPlacesArr);
				}else {
					return array("return" => false, "reason" => $placesValue);
				}
			}else if (isset($getPlaceThis, $getPlaceThis['return'], $getPlaceThis['reason']) && $getPlaceThis['return'] == false) {
				return array("return" => false, "reason" => $getPlaceThis['reason']);
			}else {
				return array("return" => false, "reason" => "wesd");
			}
		}else {
			return array("return" => false, "reason" => "5");
		}
	}
	function thumbnail ($title, $size = 100) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		$requestUrl = "http://en.wikipedia.org/w/api.php?action=query&titles={$title}&prop=pageimages&format=json&pithumbsize={$size}";
		$requestAction = $this->class['_tool']->curl($requestUrl, 5);
		if (isset($requestAction['return']) && $requestAction['return'] == true) {
			$data = json_decode($requestAction['data'], true);
			if (isset($data['status']) && $data['status'] == "OK") {
				if (isset($arr['query']['pages'][-1])) {
					$data = array("link" => "");
				}else {
					$count = 0;
					foreach ($arr['query']['pages'] as $id => $arrThis) {
						if ($count == 0) {
							$thumbnailLink = $_tool->links($_tool->hash('encode', $arrThis['thumbnail']['source'], md5($_parameter->get('hash_photos_other'))));
							break;
						}
					}
					$data = array("link" => $thumbnailLink);
				}
				return array("return" => true, "data" => $data);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>