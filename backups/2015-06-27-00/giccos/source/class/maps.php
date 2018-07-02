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
	function google ($object) {
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
				$keyServices = $_parameter->get('key_api_google_'.rand(1,9));
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
	function places ($object) {
		if (isset($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$modeType = $this->user['mode']['type'];
				$modeId = $this->user['mode']['id'];
				$userId = $this->user['id'];
				$modeArr = array("type" => $modeType, "id" => $modeId);
			}else {
				return array("return" => false, "reason" => "4");
			}
		}
		if (!isset($modeType) || !isset($modeId)) {
			return array("return" => false, "reason" => "3");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_logs = $this->class['_logs'];
			$db = $this->class['_db']->port('beta');
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
			foreach (explode(" ", $keywords) as $wordsSearch) {
				if (isset($getPlacesRequestPushName) && $getPlacesRequestPushName != null) {
					$getPlacesRequestPushName .= " AND `name` LIKE '%{$wordsSearch}%'";
				}else {
					$getPlacesRequestPushName = "`name` LIKE '%{$wordsSearch}%'";
				}
			}
			foreach (explode(" ", $keywords) as $wordsSearch) {
				if (isset($getPlacesRequestPushAddress) && $getPlacesRequestPushAddress != null) {
					$getPlacesRequestPushAddress .= " AND `address` LIKE '%{$wordsSearch}%'";
				}else {
					$getPlacesRequestPushAddress = "`address` LIKE '%{$wordsSearch}%'";
				}
			}
			foreach (explode(" ", $keywords) as $wordsSearch) {
				if (isset($getPlacesRequestPushLocation) && $getPlacesRequestPushLocation != null) {
					$getPlacesRequestPushLocation .= " AND `location` LIKE '%{$wordsSearch}%'";
				}else {
					$getPlacesRequestPushLocation = "`location` LIKE '%{$wordsSearch}%'";
				}
			}
			/*
			$keywords = strtolower($keywords);
			$keywordsArr = $_tool->StringtoArray($keywords, false);
			$keywordsArrCount = array_count_values($keywordsArr);
			foreach ($keywordsArrCount as $keywords => $keywordsCount) {
				if (isset($getPlacesRequestPushName) && $getPlacesRequestPushName != null) {
					$getPlacesRequestPushName .= " AND LOWER(`name`) REGEXP '{$keywords}+'";
				}else {
					$getPlacesRequestPushName = "LOWER(`name`) REGEXP '{$keywords}+'";
				}
			}
			foreach ($keywordsArrCount as $keywords => $keywordsCount) {
				if (isset($getPlacesRequestPushAddress) && $getPlacesRequestPushAddress != null) {
					$getPlacesRequestPushAddress .= " AND LOWER(`address`) REGEXP '{$keywords}+'";
				}else {
					$getPlacesRequestPushAddress = "LOWER(`address`) REGEXP '{$keywords}+'";
				}
			}
			foreach ($keywordsArrCount as $keywords => $keywordsCount) {
				if (isset($getPlacesRequestPushLocation) && $getPlacesRequestPushLocation != null) {
					$getPlacesRequestPushLocation .= " AND LOWER(`location`) REGEXP '{$keywords}+'";
				}else {
					$getPlacesRequestPushLocation = "LOWER(`location`) REGEXP '{$keywords}+'";
				}
			}
			*/
			$getPlacesRequest = "SELECT `id` FROM `maps_places` WHERE ({$getPlacesRequestPushName}) OR ({$getPlacesRequestPushAddress}) OR ({$getPlacesRequestPushLocation}) ORDER BY CHAR_LENGTH(`name`) ASC";
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
			if ($countPlaces == 0 || count($resultsIdArr) < $limit) {
				$getMorePlacesOptions = array("type" => "places", "action" => "search", "keywords" => $keywords);
				$getMorePlaces = $this->google($getMorePlacesOptions);
				if (isset($getMorePlaces['return'], $getMorePlaces['data']) && $getMorePlaces['return'] == true) {
					foreach ($getMorePlaces['data'] as $morePlacesThis) {
						$morePlacesThis['location'] = $morePlacesThis['location']['latitude'].','.$morePlacesThis['location']['longitude'];
						$addNewPlaces = $this->places(array("action" => "add", "places" => $morePlacesThis));
						if (isset($addNewPlaces['return'], $addNewPlaces['places']) && $addNewPlaces['return'] == true) {
							$resultsIdArr[] = $addNewPlaces['places']['id'];
						}
					}
				}
			}
			$resultsPlacesArr = array();
			foreach ($resultsIdArr as $idValue) {
				$getPlaces = $this->places(array("action" => "get", "label" => "id", "value" => $idValue, "limit" => "LIMIT 1"));
				if (isset($getPlaces['return'], $getPlaces['data'], $getPlaces['data'][0]) && $getPlaces['return'] == true) {
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
				$placesArr['token'] = hash('crc32', $placesArr['address']);
				$placesArr['display'] = hash('md5', $placesArr['token']);
				$placesArr['name'] = $_tool->convertDatabaseString($placesArr['name']);
				$placesArr['type'] = $_tool->convertDatabaseString($placesArr['type']);
				list($placesArr['latitude'], $placesArr['longitude']) = explode(',', $placesArr['location']);
				$placesArr['marker'] = $_parameter->get('maps_statismap_markers');
				$placesArr['thumbnail'] = $_tool->links("maps/raw/places/staticmap/location={$placesArr['location']}&zoom={$_parameter->get('maps_statismap_zoom')}&size={$_parameter->get('maps_statismap_size')}&maptype={$_parameter->get('maps_statismap_type')}&markers={$placesArr['marker']}%7C{$placesArr['location']}&format=gif");
				$insertPlacesRequest = "
				INSERT INTO 
				`maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) 
				VALUES 
				(NULL, '{$placesArr['token']}', '{$placesArr['display']}', '{$placesArr['name']}', '{$placesArr['address']}', '{$placesArr['location']}', '{$placesArr['latitude']}', '{$placesArr['longitude']}', '{$placesArr['type']}', '{$placesArr['thumbnail']}');
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
			$getPlacesRequest = "SELECT * FROM `maps_places` WHERE `{$placesLabel}` = '{$placesValue}' {$placesLimit}";
			$getPlacesQuery = mysqli_query($db, $getPlacesRequest);
			if (!$getPlacesQuery) {
				return array("return" => false, "reason" => "");
			}
			$placesArr = array();
			while ($getPlacesFetch = mysqli_fetch_assoc($getPlacesQuery)) {
				$placesArr[] = $getPlacesFetch;
			}
			return array("return" => true, "data" => $placesArr);
		}else {
			return array("return" => false, "reason" => "5");
		}
	}
	function xplaces ($local = true, $object) {
		if ($local == true) {
			$db = $this->class['_db']->port('beta');
			if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
			if ($type == "get") {
				if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = null;
				if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
				if ($rows != null) {
					$select = $rows;
				}else {
					$select = "*";
				}
				if ($code != null) {
					$query = mysqli_query($db, "SELECT {$select} FROM `maps_places` WHERE `code` = '{$code}'");
					if ($query) $count = mysqli_num_rows($query); else $count = 0;
					if ($count > 0) {
						$dataArr = array();
						while ($fetch = mysqli_fetch_assoc($query)) {
							$dataArr[] = $fetch;
						}
						return array("return" => true, "data" => $dataArr);
					}else {
						return array("return" => true, "data" => array());
					}
				}else {
					//.
				}
			}else if ($type == "add") {
				if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
				if ($code != null) {
					$query = mysqli_query($db, "SELECT * FROM `maps_places` WHERE `code` = '{$code}'");
					$length = mysqli_num_rows($query);
					if ($length == 0) {
						$getData = $this->places(false, array("type" => "info", "query" => array("output" => "json", "id" => $code)));
						if (isset($getData['return'], $getData['data']) && $getData['return'] == true) {
							$places['code'] = $getData['data']['place_id'];
							$places['reference'] = $getData['data']['reference'];
							$places['name'] = $getData['data']['name'];
							$places['address'] = $getData['data']['formatted_address'];
							$places['latitude'] = $this->class['_tool']->stringFloat('10,6', $getData['data']['geometry']['location']['lat'], 1);
							$places['longitude'] = $this->class['_tool']->stringFloat('10,6', $getData['data']['geometry']['location']['lng'], 1);
							$places['location'] = $places['latitude'].','.$places['longitude'];
							$places['type'] = $getData['data']['types'][0];
							$places['icon'] = $getData['data']['icon'];
							//$places['marker'] = 'icon:'.$getData['data']['icon'];
							$places['marker'] = "{$this->class['_parameter']->get('maps_statismap_markers')}";
							if (isset($places['location'])) {
								$places['token'] = hash('crc32', md5($places['location']));
							}else {
								$places['token'] = hash('crc32', md5(time()."::".rand()));
							}
							$places['display'] = hash('md5', $places['token']);
						}else {
							$places['code'] = $places['reference'] = $places['name'] = $places['address'] = $places['latitude'] = $places['longitude'] = $places['location'] = $places['icon'] = null;
							$places['marker'] = "{$this->class['_parameter']->get('maps_statismap_markers')}";
						}
						$places['thumbnail'] = $this->class['_tool']->links("maps/raw/places/staticmap/location={$places['location']}&zoom={$this->class['_parameter']->get('maps_statismap_zoom')}&size={$this->class['_parameter']->get('maps_statismap_size')}&maptype={$this->class['_parameter']->get('maps_statismap_type')}&markers={$places['marker']}%7C{$places['location']}&format=gif");
						$query = mysqli_query($db, "INSERT INTO `maps_places` (`id`, `token`, `display`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES (null, '{$places['token']}', '{$places['display']}', '{$places['code']}', '{$places['code']}', '{$places['name']}', '{$places['address']}', '{$places['location']}', '{$places['latitude']}', '{$places['longitude']}', '{$places['type']}', '{$places['icon']}', '{$places['thumbnail']}')");
						if ($query == true) {
							$id = mysqli_insert_id($db);
							$data = array();
							$data[] = array(
								"id" => $id,
								"token" => $places['token'],
								"code" => $places['code'],
								"address" => $places['address'],
								"location" => $places['location'],
								"latitude" => $places['latitude'],
								"longitude" => $places['longitude'],
								"thumbnail" => $places['thumbnail'],
							);
							return array(
								"return" => true,
								"data" => $data
							);
						}else {
							return array(
								"return" => false,
								"reason" => ""
							);
						}
					}else {
						$fetch = mysqli_fetch_assoc($query);
						$data = array();
						$data[] = array(
							"id" => $fetch['id'],
							"code" => $fetch['code'],
							"address" => $fetch['address'],
							"location" => $fetch['location'],
							"latitude" => $fetch['latitude'],
							"longitude" => $fetch['longitude'],
							"thumbnail" => $fetch['thumbnail']
						);
						return array(
							"return" => true,
							"data" => $data
						);
					}
				}else {
					//.
				}
			}
		}else if ($local == false) {
			if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
			if ($type == "search") {
				if (isset($object["query"]) && is_array($object['query'])) $query = $object["query"]; else $query = null;
				if ($query != null && count($query) > 0) {
					$request_url = "https://maps.googleapis.com/maps/api/place/{$query['by']}/{$query['output']}?query=";
					$request_by = $query['by'];
					unset($query['by']);
					unset($query['output']);
					$count = 0;
					foreach ($query as $key => $value) {
						$key = urlencode($key);
						$value = urlencode($value);
						if ($request_by == "textsearch") {
							$request_url .= "{$value}";
							$count++;
						}else {
							if ($count == 0) {
								$request_url .= "{$key}={$value}";
							}else {
								$request_url .= "+{$key}={$value}";
							}
							$count++;
						}
					}
					if (isset($_SESSION['client']['language']['code'])) {
						$query['language'] = $_SESSION['client']['language']['code'];
					}else {
						$query['language'] = "en";
					}
					$query['sensor'] = "false";
					$query['key'] = $this->class['_parameter']->get('key_api_google_'.rand(1,9));
					$request_url .= "&language={$query['language']}&sensor={$query['sensor']}&key={$query['key']}";
					$data = $this->class['_tool']->curl($request_url);
					if (isset($data['return']) && $data['return'] == true) {
						$data = json_decode($data['data'], true);
						if (isset($data['status']) && $data['status'] == "OK") {
							
							return array("return" => true, "data" => $data['results']);
						}else {
							return array("return" => false, "reason" => "3");
						}
					}else {
						return array("return" => false, "reason" => "2");
					}
				}else {
					return array("return" => false, "reason" => "1");
				}
			}else if ($type == "info" || $type == "details") {
				if (isset($object['query']) && is_array($object['query'])) $query = $object['query']; else $query = null;
				if ($query != null) {
					if (isset($query['id'])) {
						$query['text'] = "placeid={$query['id']}";
					}else if (isset($query['reference'])) {
						$query['text'] = "reference={$query['id']}";
					}
					if (isset($query['text'])) {
						$query['key'] = $this->class['_parameter']->get('key_api_google_'.rand(1,9));
						$request_url = "https://maps.googleapis.com/maps/api/place/details/{$query['output']}?{$query['text']}&key={$query['key']}";
						$requestAction = $this->class['_tool']->curl($request_url, 5);
						if (isset($requestAction['return']) && $requestAction['return'] == true) {
							$data = json_decode($requestAction['data'], true);
							if (isset($data['status']) && $data['status'] == "OK") {
								if (isset($data['result'])) {
									$data['data'] = $data['result'];
								}
								return array("return" => true, "data" => $data['data']);
							}else {
								return array("return" => false, "reason" => "");
							}
						}else {
							return array("return" => false, "reason" => "");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
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
	function near ($location, $distance, $limit, $local = true) {
		if (is_array($location) && isset($distance) && isset($limit)) {
			$this->user = $_SESSION["user"];
			if ($local == true) {
				$nearbyQuery = mysqli_query($this->class['_db']->port('beta'),"SELECT `id`, `type`, ( 6371 * acos( cos( radians({$location['latitude']}) ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians({$location['longitude']}) ) + sin( radians({$location['latitude']}) ) * sin( radians( latitude ) ) ) ) AS `distance` FROM `maps_places` HAVING `distance` <= {$distance} LIMIT {$limit}");
				if (!$nearbyQuery) {
					return array("return" => false, "reason" => "");
				}
				if (mysqli_num_rows($nearbyQuery) > 0) {
					while ($near = mysqli_fetch_assoc($nearbyQuery)) {
						$data[] = array("id" => $near['id'], "type" => $near['type'], "distance" => $near['distance']);
					}
				}else {
					$data = array();
				}
				return array("return" => true, "data" => $data);
			}
		}else {
			return array("return" => false);
		}
	}
}
?>