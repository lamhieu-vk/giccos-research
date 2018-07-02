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
	function places ($local = true, $object) {
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
		$url = "http://en.wikipedia.org/w/api.php?action=query&titles={$title}&prop=pageimages&format=json&pithumbsize={$size}";
		$arr = json_decode(file_get_contents($url), true);
		if (isset($arr['query']['pages'][-1])) {
			$data = array("link" => "");
		}else {
			$count = 0;
			foreach ($arr['query']['pages'] as $id => $arrThis) {
				if ($count == 0) {
					$link = $this->class['_tool']->links($this->class['_tool']->hash('encode', $arrThis['thumbnail']['source'], md5($this->class['_parameter']->get('hash_photos_other'))));
					$data = array("link" => $link);
				}else {
					break;
				}
			}
		}
		return array("return" => true, "data" => $data);
	}
	function near ($location, $distance, $limit, $local = true) {
		if (is_array($location) && isset($distance) && isset($limit)) {
			$this->user = $_SESSION["user"];
			if ($local == true) {
				$near_query = mysqli_query($this->class['_db']->port('beta'),"SELECT `id`, `type`, ( 6371 * acos( cos( radians({$location['latitude']}) ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians({$location['longitude']}) ) + sin( radians({$location['latitude']}) ) * sin( radians( latitude ) ) ) ) AS distance FROM `maps_places` HAVING distance <= {$distance} LIMIT {$limit}");
				if (mysqli_num_rows($near_query) > 0) {
					while ($near = mysqli_fetch_assoc($near_query)) {
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