<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class tool {
	function __construct () {
		$GLOBALS["_tool"] = $this;
		$this->class = $GLOBALS;
	}
	function contentMediaFile ($url, $timeout = 10, $options = null) {
		$ch = curl_init($url);
		if (is_array($options) && count($options)) {
			if (isset($options['cookie']) && $options['cookie'] == true) {
				$cookie = null;
				if (preg_match("/^((http|https)(\:\/\/)({$this->links('::host')}))/", $url)) {
					foreach($_COOKIE as $key => $value) {
						$cookie .= urlencode($key)."=".urlencode($value).";";
					}
				}else {
					//.
				}
				curl_setopt($ch, CURLOPT_COOKIE, $cookie);
				curl_setopt($ch, CURLOPT_COOKIESESSION, true);
			}
			if (isset($options['method']) && $options['method'] == "POST") {
				curl_setopt($ch, CURLOPT_POST, TRUE);
				if (isset($options['form']) && is_array($options['form'])) {
					curl_setopt($ch, CURLOPT_HTTPHEADER, array("content-type: application/x-www-form-urlencoded; charset: utf-8"));
					curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($options['form']));
				}
			}
			if (isset($options['useragent']) && $options['useragent'] != null) {
				curl_setopt($ch, CURLOPT_USERAGENT, $options['useragent']);
			}else {
				curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER["HTTP_USER_AGENT"]);
			}
		}
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
		$rawdata = curl_exec($ch);
		curl_close($ch);
		return $rawdata;
	}
	function convertNumber ($number) {
		return $number;
	}
	function changeClassNameCSS ($name, $token = null) {
		if (!isset($token) || $token == null) {
			$token = $_SESSION["client"]['token']['source']['css'];
		}
		$newName = hash('crc32', $this->hash("encode", $name, $token));
		return $newName;
	}
	function exec ($command) {
        $command = str_replace(array("\n", "'"), array('', '"'), $command);
        $command = escapeshellcmd($command);
        exec($command);
    }
    function mime_content_type ($filename, $contrast = false) {
    	$mime_types = $this->mime_types();
        if (!$contrast) {
        	$ext = strtolower(array_pop(explode('.',$filename)));
	        if (array_key_exists($ext, $mime_types)) {
	            return $mime_types[$ext];
	        }else if (function_exists('finfo_open')) {
	            $finfo = finfo_open(FILEINFO_MIME);
	            $mimetype = finfo_file($finfo, $filename);
	            finfo_close($finfo);
	            return $mimetype;
	        }else {
	            return "application/octet-stream";
	        }
	    }else {
	    	//ksort($mime_types);
	    	$found = array();
	    	foreach ($mime_types as $ext => $mime_value) {
	    		if ($filename == $mime_value) {
	    			$found[] = $ext;
	    		}else {
	    			continue;
	    		}
	    	}
	    	if (count($found) > 0) {
	    		asort($found);
	    		return $found[0];
	    	}else {
	    		return null;
	    	}
	    }
    }
    function getWeather ($location, $units = "f", $server = 1) {
    	if ($server == 1) {
    		$yql = "SELECT * FROM weather.forecast WHERE u = '{$units}' AND woeid IN (SELECT woeid FROM geo.places(1) WHERE text = '{$location}')";
			$url = "http://query.yahooapis.com/v1/public/yql". "?q=" .urlencode($yql); 
			$url .= "&format=json&diagnostics=false&env=store://datatables.org/alltableswithkeys";
			$curl = $this->curl($url, 5);
			if (isset($curl['return']) && $curl['return'] == true) {
				$data = $curl['data'];
				$data = json_decode($data, true);
				if (isset($data['query']['count']) && $data['query']['count'] == 0) {
					return array("return" => false, "reason" => $url);
				}else if (isset($data['query']['count']) && $data['query']['count'] > 0) {
					$keyNeedGet = ["language", "location", "units", "wind", "atmosphere", "astronomy", "item"];
					foreach ($data['query']['results']['channel'] as $key => $value) {
						if (!in_array($key, $keyNeedGet)) {
							unset($data['query']['results']['channel'][$key]);
						}else {
							if ($key == "item") {
								$keyItemNeedGet = ["lat", "long", "link", "forecast"];
								foreach ($data['query']['results']['channel']['item'] as $i => $value) {
									if (!in_array($i, $keyItemNeedGet)) {
										unset($data['query']['results']['channel']['item'][$i]);
									}
								}
							}
						}
					}
					$dataArr = array();
					if (isset($data['query']['results']['channel'])) {
						$dataArr = $data['query']['results']['channel'];
					}else {
						//.
					}
					return array("return" => true, "data" => $dataArr);
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
    function unlink ($input, $type = "0775") {
    	if (file_exists($input)) {
    		//chmod($input, $type);
    		unlink($input);
    	}
    	return true;
    }
	function copy ($input, $output, $type = "0775") {
		//$perms = substr(sprintf('%o', fileperms($input)), -4);
		//chmod($input, $type);
		copy($input, $output);
		//chmod($input, $perms);
		//chmod($output, $type);
		return true;
	}
	function rename ($input, $output, $type = "0775") {
		//$perms = substr(sprintf('%o', fileperms($input)), -4);
		//chmod($input, $type);
		rename($input, $output);
		//chmod($input, $perms);
		//chmod($output, $type);
		return true;
	}
	function timeNow () {
		return time();
	}
	function curl_file ($url, $timeout = 10, $options = null) {
		return $this->curl($url, $timeout, $options = null);
	}
	function curl ($url, $timeout = 10, $options = null) {
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		if (is_array($options) && count($options)) {
			if (isset($options['cookie']) && $options['cookie'] == true) {
				$cookie = null;
				if (preg_match("/^((http|https)(\:\/\/)({$this->links('::host')}))/", $url)) {
					foreach($_COOKIE as $key => $value) {
						$cookie .= urlencode($key)."=".urlencode($value).";";
					}
				}else {
					//.
				}
				curl_setopt($ch, CURLOPT_COOKIE, $cookie);
				curl_setopt($ch, CURLOPT_COOKIESESSION, true);
			}
			if (isset($options['method']) && $options['method'] == "POST") {
				curl_setopt($ch, CURLOPT_POST, TRUE);
				if (isset($options['form']) && is_array($options['form'])) {
					curl_setopt($ch, CURLOPT_HTTPHEADER, array("content-type: application/x-www-form-urlencoded; charset: utf-8"));
					curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($options['form']));
				}
			}
			if (isset($options['headers']) && is_array($options['headers']) && count($options['headers']) > 0) {
				$headers = array();
				if (preg_match("/^((http|https)(\:\/\/)({$this->links('::host')}))/", $url)) {
					foreach($options['headers'] as $key => $value) {
						$headers[] = $key.": ".$value;
					}
				}else {
					//.
				}
				if (count($headers) > 0) {
					curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
				}
			}
			if (isset($options['useragent']) && $options['useragent'] != null) {
				curl_setopt($ch, CURLOPT_USERAGENT, $options['useragent']);
				unset($options['useragent']);
			}else {
				curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER["HTTP_USER_AGENT"]);
			}
		}
		if (isset($options['returntransfer']) && is_bool($options['returntransfer'])) {
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, $options['returntransfer']);
		}else {
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		}
		if (isset($options['proxy']) && is_string($options['proxy']) && $options['proxy'] != null) {
			curl_setopt($ch, CURLOPT_PROXY, $options['proxy']);
		}
		if (isset($options['verifyhost']) && is_bool($options['verifyhost'])) {
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, $options['verifyhost']);
		}else {
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		}
		if (isset($options['verifypeer']) && is_bool($options['verifypeer'])) {
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, $options['verifypeer']);
		}else {
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		}
		curl_setopt($ch, CURLOPT_MAXREDIRS, 10);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		if ($timeout != 0) {
			curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
		}
		$data = curl_exec($ch);
		$status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
		curl_close($ch);
		if ($status == 200) {
			return array("return" => true, "data" => $data);
		}else {
			return array("return" => false, "reason" => $status);
		}
	}
	function splitTagsString ($by, $to, $text, $string = false) {
		//.
	}
	function convertTimetoDuration ($timestamp) {
		$timestamp = round(intval($timestamp));
		if ($timestamp / 3600 >= 1) {
			$date = gmdate("H:i:s", $timestamp);
		}else {
			$date = gmdate("i:s", $timestamp);
		}
		return $date;
	}
	function convertDatabaseString ($text) {
		return htmlspecialchars($text);
	}
	function stringFloat ($type, $text, $rows = 1) {
		if ($rows == 1) {
			list($firstLimit, $secondsLimit) = explode(',', $type);
			list($firstText, $secondsText) = explode('.', $text);
			if (strlen($firstText) > $firstLimit) {
				$firstText = substr($firstText, 0, $firstLimit);
			}
			if (strlen($secondsText) > $secondsText) {
				$secondsText = substr($secondsText, 0, $secondsText);
			}
			return $firstText.'.'.$secondsText;
		}else if ($rows == 2) {
			list($firstLimit, $secondsLimit) = explode(',', $type);
			list($firstText, $secondsText) = explode(',', $text);
			list($firstText_subone, $firstText_subtwo) = explode('.', $firstText);
			list($secondsText_subone, $secondsText_subtwo) = explode('.', $secondsText);
			if (strlen($firstText_subone) > $firstLimit) {
				$firstText_subone = substr($firstText_subone, 0, $firstLimit);
			}
			if (strlen($firstText_subtwo) > $secondsLimit) {
				$firstText_subtwo = substr($firstText_subtwo, 0, $secondsLimit);
			}
			if (strlen($secondsText_subone) > $firstLimit) {
				$secondsText_subone = substr($secondsText_subone, 0, $firstLimit);
			}
			if (strlen($secondsText_subtwo) > $secondsLimit) {
				$secondsText_subtwo = substr($secondsText_subtwo, 0, $secondsLimit);
			}
			$firstText = $firstText_subone.'.'.$firstText_subtwo;
			$secondsText = $secondsText_subone.'.'.$secondsText_subtwo;
			return $firstText.','.$secondsText;
		}
	}
	function convertSize ($size, $sep = ' ') {
	    $unit = null;
	    //$size = $size * 1024;
		$units = array('B', 'KB', 'MB', 'GB', 'TB');
		for ($i = 0, $c = count($units); $i < $c; $i++) {
			if ($size > 1024) {
				$size = $size / 1024;
			}else {
				$unit = $units[$i];
				break;
			}
		}
		return round($size, 2).$sep.$unit;
	}
	function valueCheck ($type, $value) {
		if ($type == "referer") {
			$value = preg_match("/^((http|https)(\:\/\/)({$this->links("::host")}))/", $value);
		}else {
			$value = false;
		}
		return $value;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function links ($links = null, $local = false) {
		$home = "http://localhost/giccos/";
		if ($links == "::host") {
			return "localhost";
		}else if ($links == "::redirect::home") {
			$this->callUserInfo();
			if (isset($this->user['login']) && $this->user['login'] == true) {
				$links = "feed";
			}else {
				$links = "accounts/login";
			}
			return $home."".$links;
		}else if ($links == "::redirect::oops") {
			$links = "oops";
			return $home."".$links;
		}else if (preg_match("/^(source)/", $links) && isset($_SESSION["client"])) {
			$token = $_SESSION["client"]['token'];
			if (preg_match("/^(source\/css)/", $links)) {
				$links = preg_replace("/^(source\/css)/", "{$token['source']['url']}/{$token['source']['css']}", $links);
			}else if (preg_match("/^(source\/js)/", $links)) {
				$links = preg_replace("/^(source\/js)/", "{$token['source']['url']}/{$token['source']['js']}", $links);
			}else if (preg_match("/^(source\/ajax)/", $links)) {
				$links = preg_replace("/^(source\/ajax)/", "{$token['source']['url']}/{$token['source']['ajax']}", $links);
			}else if (preg_match("/^(source\/xml)/", $links)) {
				$links = preg_replace("/^(source\/xml)/", "{$token['source']['url']}/{$token['source']['xml']}", $links);
			}else if (preg_match("/^(source\/font)/", $links)) {
				$links = preg_replace("/^(source\/font)/", "{$token['source']['url']}/{$token['source']['font']}", $links);
			}else if (preg_match("/^(source\/file)/", $links)) {
				$links = preg_replace("/^(source\/file)/", "{$token['source']['url']}/{$token['source']['file']}", $links);
			}
			return $home.''.$links;
		}else if (preg_match("/^(storage)/", $links) && !$local) {
			if (preg_match("/^(storage\/photos\/static)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/photos\/static)\/([\S]+)/", "photos/raw/static/$2", $links);
			}else if (preg_match("/^(storage\/music\/static)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/music\/static)\/([\S]+)/", "music/raw/static/$2", $links);
			}else if (preg_match("/^(storage\/videos\/static)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/videos\/static)\/([\S]+)/", "videos/raw/static/$2", $links);
			}else if (preg_match("/^(storage\/photos\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/photos\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", "photos/raw/$3", $links);
			}else if (preg_match("/^(storage\/music\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/music\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", "music/raw/$3", $links);
			}else if (preg_match("/^(storage\/videos\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/videos\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", "videos/raw/$3", $links);
			}else if (preg_match("/^(storage\/videos\/thumbnail)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/videos\/thumbnail)\/([\S]+)/", "videos/raw/thumbnail/$2", $links);
			}else if (preg_match("/^(storage\/cache\/photos)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/cache\/photos)\/([\S]+)/", "photos/cache/$2", $links);
			}else if (preg_match("/^(storage\/cache\/music)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/cache\/music)\/([\S]+)/", "music/cache/$2", $links);
			}else if (preg_match("/^(storage\/cache\/videos)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/cache\/videos)\/([\S]+)/", "videos/cache/$2", $links);
			}
			//.
			if (preg_match("/^(storage\/image\/static)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/image\/static)\/([\S]+)/", "image/raw/static/$2", $links);
			}else if (preg_match("/^(storage\/audio\/static)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/audio\/static)\/([\S]+)/", "audio/raw/static/$2", $links);
			}else if (preg_match("/^(storage\/video\/static)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/video\/static)\/([\S]+)/", "video/raw/static/$2", $links);
			}else if (preg_match("/^(storage\/image\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/image\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", "image/raw/$3", $links);
			}else if (preg_match("/^(storage\/audio\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/audio\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", "audio/raw/$3", $links);
			}else if (preg_match("/^(storage\/video\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/video\/drive)\/([a-zA-Z0-9+])\/([\S]+)/", "video/raw/$3", $links);
			}else if (preg_match("/^(storage\/cache\/image)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/cache\/image)\/([\S]+)/", "image/cache/$2", $links);
			}else if (preg_match("/^(storage\/cache\/audio)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/cache\/audio)\/([\S]+)/", "audio/cache/$2", $links);
			}else if (preg_match("/^(storage\/cache\/video)\/([\S]+)/", $links)) {
				$links = preg_replace("/^(storage\/cache\/video)\/([\S]+)/", "video/cache/$2", $links);
			}
			return $home.''.$links;
		}else if (preg_match("/^(\:\:default)/", $links)) {
			if (preg_match("/(\:\:user)/", $links)) {
				if (preg_match("/(\:\:avatar)/", $links)) {
					if (preg_match("/(\:\:large)/", $links)) {
						$links = $this->links($this->class['_parameter']->get('default_user_avatar_large'));
					}else if (preg_match("/(\:\:medium)/", $links)) {
						$links = $this->links($this->class['_parameter']->get('default_user_avatar_medium'));
					}else if (preg_match("/(\:\:small)/", $links)) {
						$links = $this->links($this->class['_parameter']->get('default_user_avatar_small'));
					}
				}else if (preg_match("/(\:\:cover)/", $links)) {
					if (preg_match("/(\:\:large)/", $links)) {
						$links = $this->links($this->class['_parameter']->get('default_user_cover_large'));
					}else if (preg_match("/(\:\:medium)/", $links)) {
						$links = $this->links($this->class['_parameter']->get('default_user_cover_medium'));
					}else if (preg_match("/(\:\:small)/", $links)) {
						$links = $this->links($this->class['_parameter']->get('default_user_cover_small'));
					}
				}
			}
			return $links;
		}else {
			return $home.''.$links;
		}
	}
	function getDNS($domain) {
		$scheme = parse_url($domain, PHP_URL_SCHEME);
		$url = parse_url($domain, PHP_URL_HOST);
		$dns = dns_get_record($url)[0];
		if ($dns['type'] != "A") {
			$dns['ip'] = gethostbyname($url);
		}else {
			$dns['target'] = preg_replace("/^(www\.)/", "", $url);
		}
		$dns['host'] = preg_replace("/^(www\.)/", "", $dns['host']);
		$dns['domain'] = $scheme.'://'.$url;
		return $dns;
	}
	function getMime($path) {
		$ext = pathinfo($path, PATHINFO_EXTENSION);
		$ext = preg_replace("/^([a-zA-Z0-9\.]+)([\S]+)$/", "$1", $ext);
		if (preg_match("/^(jpeg)$/i", $ext)) {
			$mine = "image/jpeg";
		}else if (preg_match("/^(jpg)$/i", $ext)) {
			$mine = "image/jpg";
		}else if (preg_match("/^(png)$/i", $ext)) {
			$mine = "image/png";
		}else {
			$mine = "image/jpeg";
		}
		return $mine;
	}
	function parseLink($text = null) {
		$text = preg_replace("/((http|https|ftp|ftps)(:\/\/)(www\.)?(localhost\/giccos)($|[\S]+))/", "<a class='gLink' target='_blank' href='$1'>$1</a>", $text);
		$string = $text;
		preg_match_all("/((http|https|ftp|ftps):\/\/[\S*]+[\S*])/", $string, $matches);
		foreach ($matches[0] as $key => $links) {
			$oldLinks = $links;
			$newLinks = $this->hash('encode', $links, $this->class['_parameter']->get('hash_sites_direct'));
			$text = str_replace($oldLinks, "<a class='gLink' target='_blank' href='{$this->links('sites/direct/'.$newLinks)}'>{$oldLinks}</a>", $text);
		}
		$text = preg_replace("/(^|\s)@([a-zA-Z0-9\_]+)/", "\$1<a class='gUsertag' usertag='$2' href='{$this->links('wall/$2')}' target='_blank'>@$2</a>",$text);
	    $text = preg_replace("/(^|\s)#([a-zA-Z0-9\_]+)/", "\$1<a class='gHashtag' hashtag='$2' href='{$this->links('feed/tags/$2')}'>#$2</a>",$text);
	    return $text;
	}
	function parseString ($text, $from, $to) {
		if ($from == "vi" && $to == "en") {
			$text = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ặ|ẳ|ẵ)/", 'a', $text);
			$text = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $text);
			$text = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $text);
			$text = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ợ|ở|ỡ)/", 'o', $text);
			$text = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $text);
			$text = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $text);
			$text = preg_replace("/(đ)/", 'd', $text);
			$text = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ặ|Ẳ|Ẵ)/", 'A', $text);
			$text = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $text);
			$text = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $text);
			$text = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ợ|Ở|Ỡ)/", 'O', $text);
			$text = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $text);
			$text = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $text);
			$text = preg_replace("/(Đ)/", 'D', $text);
		}
		return $text;
	}
	function parseContent($text = null) {
		return nl2br($this->parseEmotions($this->parseLink($text)));
	}
	function convertWeekday ($wd = null, $length = false) {
		if ($wd != null) {
			$weekday = array(
				"mon" => $this->class['_language']->text('monday', 'ucfirst', $length),
				"tue" => $this->class['_language']->text('tuesday', 'ucfirst', $length),
				"wed" => $this->class['_language']->text('wednesday', 'ucfirst', $length),
				"thu" => $this->class['_language']->text('thursday', 'ucfirst', $length),
				"fri" => $this->class['_language']->text('friday', 'ucfirst', $length),
				"sat" => $this->class['_language']->text('saturday', 'ucfirst', $length),
				"sun" => $this->class['_language']->text('sunday', 'ucfirst', $length),
				1 => $this->class['_language']->text('monday', 'ucfirst', $length),
				2 => $this->class['_language']->text('tuesday', 'ucfirst', $length),
				3 => $this->class['_language']->text('wednesday', 'ucfirst', $length),
				4 => $this->class['_language']->text('thursday', 'ucfirst', $length),
				5 => $this->class['_language']->text('friday', 'ucfirst', $length),
				6 => $this->class['_language']->text('saturday', 'ucfirst', $length),
				0 => $this->class['_language']->text('sunday', 'ucfirst', $length)
			);
			$text = str_ireplace(array_keys($weekday), array_values($weekday), strtolower($wd));
			return $text;
		}else {
			return false;
		}
	}
	function agoDatetime ($timestamp = null, $type = "ago", $length = false) { 
		if ($type == "" || $type == "ago") {
			$time_difference = time() - $timestamp; 
			$seconds = $time_difference; 
			$minutes = round($time_difference / 60);
			$hours = round($time_difference / 3600); 
			$days = round($time_difference / 86400); 
			$weeks = round($time_difference / 604800); 
			$months = round($time_difference / 2419200); 
			$years = round($time_difference / 29030400);
			if ($length == true) {
				$space = "";
			}else {
				$space = " ";
			}
			if ($seconds <= 60) {
				$time_ago = $this->class['_language']->text('a_few_seconds', 'strtolower', $length);
			}else if ($minutes < 60) {
				$time_ago = $minutes.$space.$this->class['_language']->text('minutes_ago', 'strtolower', $length);
			}else if ($hours < 24 ) {
				$time_ago = $hours.$space.$this->class['_language']->text('hours_ago', 'strtolower', $length);
			}else if ($days < 7) {
				if ($days == 1 && !$length) {
					$time_ago = date("H:i", $timestamp).','.$space.$this->class['_language']->text('yesterday', 'strtolower', $length);
				}else {
					$time_ago = $days.$space.$this->class['_language']->text('days_ago', 'strtolower', $length);
				}
			}else if ($weeks < 4) {
				if ($weeks == 1 && !$length) {
					$time_ago = date("H:i", $timestamp).','.$space.$this->convertWeekday(date("w", $timestamp), $length);
				}else {
					$time_ago = $weeks.$space.$this->class['_language']->text('weeks_ago', 'strtolower', $length);
				}
			}else if ($months < 12) {
				$time_ago = $months.$space.$this->class['_language']->text('months_ago', 'strtolower', $length);
			}else {
				$time_ago = $years.$space.$this->class['_language']->text('years_ago', 'strtolower', $length);
			}
		}else if ($type == "tip") {
			$time_difference = time() - $timestamp;
			$years = round($time_difference / 29030400); 
			if ($years > 0) {
				$time_ago = date("H:i, d/n/Y", $timestamp);
			}else {
				$time_ago = date("H:i, d/n", $timestamp);
			}
		}
		return $time_ago;
	}
	function convertDatetime ($number) {
		$hour = $minute = $second = $month = $day = $year = 1;
		$datetime = explode(" ", $number);
		if (isset($datetime[0])) {
			if (isset(explode("/", $datetime[0])[0])) {
				$format = "Y";
				$year = explode("/", $datetime[0])[2];
			}
			if (isset(explode("/", $datetime[0])[1])) {
				$format = "m/Y";
				$month = explode("/", $datetime[0])[1];
			}
			if (isset(explode("/", $datetime[0])[2])) {
				$format = "m/d/Y";
				$day = explode("/", $datetime[0])[0];
			}
		}
		if (isset($datetime[1])) {
			if (isset(explode(":", $datetime[1])[0])) {
				$format = "H - m/d/Y";
				$hour = explode(":", $datetime[1])[0];
			}
			if (isset(explode(":", $datetime[1])[1])) {
				$format = "H:i - m/d/Y";
				$minute = explode(":", $datetime[1])[1];
			}
			if (isset(explode(":", $datetime[1])[2])) {
				$format = "H:i:s - m/d/Y";
				$second = explode(":", $datetime[1])[2];
			}
		}
		$stamp = mktime($hour, $minute, $second, $month, $day, $year);
		return array("stamp" => $stamp, "format" => $format);
	}
	function ip_info ($ip) {
	    if (isset($ip)) {
	    	$infoIP = @json_decode(file_get_contents("http://www.telize.com/geoip/{$ip}"));
	    	$info['ip'] = $ip;
	    	if (isset($infoIP->{'country'})) {
	    		$info['country']['name'] = $infoIP->{'country'};
	    	}else {
	    		$info['country']['name'] = NULL;
	    	}
	    	if (isset($infoIP->{'country_code'})) {
	    		$info['country']['code'] = $infoIP->{'country_code'};
	    	}else {
	    		$info['country']['code'] = NULL;
	    	}
	    	if (isset($infoIP->{'region'})) {
	    		$info['region']['name'] = $infoIP->{'region'};
	    	}else {
	    		$info['region']['name'] = NULL;
	    	}
	    	if (isset($infoIP->{'region_code'})) {
	    		$info['region']['code'] = $infoIP->{'region_code'};
	    	}else {
	    		$info['region']['code'] = NULL;
	    	}
	    	if (isset($infoIP->{'timezone'})) {
	    		$info['timezone'] = $infoIP->{'timezone'};
	    	}else {
	    		$info['timezone'] = NULL;
	    	}
	    	if (isset($infoIP->{'city'})) {
	    		$info['city'] = $infoIP->{'city'};
	    	}else {
	    		$info['city'] = NULL;
	    	}
	    	if (isset($infoIP->{'isp'})) {
	    		$info['isp'] = $infoIP->{'isp'};
	    	}else {
	    		$info['isp'] = NULL;
	    	}
	    	if (isset($infoIP->{'zip'})) {
	    		$info['zip'] = $infoIP->{'zip'};
	    	}else {
	    		$info['zip'] = NULL;
	    	}
	    	if (isset($infoIP->{'longitude'})) {
	    		$info['location']['longitude'] = $infoIP->{'longitude'};
	    	}else {
	    		$info['location']['longitude'] = NULL;
	    	}
	    	if (isset($infoIP->{'latitude'})) {
	    		$info['location']['latitude'] = $infoIP->{'latitude'};
	    	}else {
	    		$info['location']['latitude'] = NULL;
	    	}
	    	if ($info['location']['longitude'] != NULL && $info['location']['latitude'] != NULL) {
	    		$info['location']['code'] = $this->stringFloat('10,6', $info['location']['longitude'], 1).','.$this->stringFloat('10,6', $info['location']['latitude'], 1);
	    	}else {
	    		$info['location']['code'] = NULL;
	    	}
	    	return array("return" => true, "data" => $info);
	    }else {
	    	return array("return" => false, "reason" => "");
	    }
	}
	function siteDie ($url) {
		$file_headers = @get_headers($url);
		if ($file_headers[0] == 'HTTP/1.1 404 Not Found') {
		    return true;
		}else {
		    return false;
		}
	}
	function resetFileUpload ($data) {
		foreach ($data as $key => $file_value) {
			foreach ($file_value as $i => $value) {
				$file[$i][$key] = $value;
			}
		}
		return $file;
	}
	function topArray ($limit = 0, $array = null, $val = null) {
		if ($limit > 0 && @is_array($array)) {
			$a_c = array_count_values($array); 
			for ($a_i = 0; $a_i < count($a_c); $a_i++ ) { 
				$f_c = array_count_values($array);
				$val[] = array_search(max($f_c), $f_c);
				foreach ($array as $a_k => $a_v) {
					if (in_array($a_v, $val)) {
						unset($array[$a_k]);
					}
				}
				if (count($val) == $limit) {
					return $val;
				}
			}
			return $val;
		}else {
			return false;
		}
	}
	function StringtoArray ($string, $space = true) {
		$array = array();
		for ($i = 0; $i < strlen($string); $i++) { 
			if ($space == true) {
				$array[$i] = $string[$i];
			}else {
				if ($string[$i] != " ") {
					$array[$i] = $string[$i];
				}
			}
		}
		return $array;
	}
	function thisPhotos ($file) {
		$return = false;
		if (function_exists('finfo_fopen')) {
			$return = true;
		}else if (function_exists('getimagesize')) {
			$return = true;
		}else if (function_exists('exif_imagetype')) {
			$return = true;
		}else if (function_exists('mime_content_type')) {
		    $return = true;
		}
		return $return;
	}
	function parseEmotions($text) {
	    $emotions = array(
			"(empty)" => "empty",
			"(a)" => "angel",
			"x(" => "angry",
			"X(" => "angry",
			"(bandit)" => "bandit",
			"(beer)" => "beer",
			":D" => "laugh",
			":d" => "laugh",
			":$" => "blush",
			"(bow)" => "bow",
			"(^)" => "cake",
			"($)" => "cash",
			"(clap)" => "clap",
			"(cf)" => "coffee",
			"B)" => "cool",
			"b)" => "cool",
			":<" => "cry",
			"(6)" => "devil",
			"(doh)" => "doh",
			"(d)" => "drink",
			"|(" => "dull",
			"(emo)" => "emo",
			"(e)" => "envy",
			">:)" => "grin",
			"(fail)" => "facepalm",
			"(yn)" => "fingers",
			"(f)" => "flower",
			"(chuckle)" => "chuckle",
			"(handshake)" => "handshake",
			":)" => "happy",
			"<3" => "heart",
			"i3" => "heart",
			"(22)" => "hi",
			"(love)" => "inlove",
			"(wm)" => "wm",
			":*" => "kiss",
			":x" => "lipssealed",
			":3" => "kate",
			"(mm)" => "mmm",
			"8|" => "nerd",
			"(n)" => "no",
			"(party)" => "party",
			":&" => "puke",
			"(rofl)" => "rofl",
			":(" => "sad",
			"8-" => "shake",
			":|" => "speechless",
			":O" => "surprised",
			":o" => "surprised",
			":?" => "think",
			"(tmi)" => "tmi",
			":P" => "tongueout",
			":p" => "tongueout",
			"(whew)" => "whew",
			";)" => "wink",
			":^)" => "wondering",
			":S" => "worry",
			":s" => "worry",
			"(w)" => "waiting"
	    );
	    foreach($emotions as $smiley => $img) {
	        $text = str_replace($smiley, "<i emotions-key='{$smiley}' style='background-image: url({$this->links("photos/raw/static/emotions/{$img}.png")})'></i>", $text);
	    }
	    return $text;
	}
	function transferError ($key = null) {
		$error = array(
			"ERROR#USER_000" => $this->class['_language']->text('transmission_error', 'ucfirst'),
			"ERROR#USER_001" => $this->class['_language']->text('username_is_invalid', 'ucfirst'),
			"ERROR#USER_002" => $this->class['_language']->text('password_is_invalid', 'ucfirst'),
			"ERROR#USER_003" => $this->class['_language']->text('username_is_not_found', 'ucfirst'),
			"ERROR#USER_004" => $this->class['_language']->text('password_is_incorrect', 'ucfirst'),
			"ERROR#USER_005" => $this->class['_language']->text('remember_return_is_invalid', 'ucfirst'),
			"ERROR#USER_006" => $this->class['_language']->text('username_is_already_exists', 'ucfirst'),
			"ERROR#USER_007" => $this->class['_language']->text('email_is_already_exists', 'ucfirst'),
			"ERROR#USER_008" => $this->class['_language']->text('repeat_password_is_not_coincide', 'ucfirst'),
			"ERROR#USER_009" => $this->class['_language']->text('phone_is_invalid', 'ucfirst'),
			"ERROR#USER_010" => $this->class['_language']->text('name_is_invalid', 'ucfirst'),
			"ERROR#USER_011" => $this->class['_language']->text('gender_is_invalid', 'ucfirst'),
			"ERROR#USER_012" => $this->class['_language']->text('birthday_is_invalid', 'ucfirst'),
			"ERROR#USER_013" => $this->class['_language']->text('agree_return_is_invalid', 'ucfirst'),
			"ERROR#USER_014" => $this->class['_language']->text('agree_is_not_check', 'ucfirst'),
			"ERROR#USER_015" => $this->class['_language']->text('email_is_invalid', 'ucfirst'),
			"ERROR#FEEDS_001" => $this->class['_language']->text('status_id_is_invalid', 'ucfirst'),
			"ERROR#FEEDS_002" => $this->class['_language']->text('action_is_invalid', 'ucfirst'),
			"ERROR#FEEDS_003" => $this->class['_language']->text('user_is_not_found', 'ucfirst'),
			"ERROR#FEEDS_004" => $this->class['_language']->text('status_is_not_found', 'ucfirst'),
			"ERROR#FEEDS_005" => $this->class['_language']->text('action_have_been_implemented', 'ucfirst'),
			"ERROR#FEEDS_006" => $this->class['_language']->text('action_is_not_allowed', 'ucfirst'),
			"ERROR#FEEDS_007" => $this->class['_language']->text('error_in_the_implementation_process', 'ucfirst'),
			"ERROR#FEEDS_008" => $this->class['_language']->text('action_is_being_carried_out', 'ucfirst'),
			"ERROR#FEEDS_009" => $this->class['_language']->text('comment_id_is_invalid', 'ucfirst'),
			"ERROR#FEEDS_010" => $this->class['_language']->text('editor_missing_content', 'ucfirst'),
			"ERROR#FEEDS_011" => $this->class['_language']->text('media_file_missing_info', 'ucfirst'),
			"ERROR#FEEDS_012" => $this->class['_language']->text('not_authorized_to_perform', 'ucfirst'),
			"ERROR#FEEDS_013" => $this->class['_language']->text('some_action_is_not_completed', 'ucfirst')
		);
		if (@!isset($error[$key])) {
			$text = $this->class['_language']->text("not_identified", "ucfirst");
		}else {
			$text = $error[$key];
		}
		return $text;
	}
	function hash($type, $data, $key = "giccos::hash::key") {
		$key = md5($key);
		if ($type == "encode") {
			if ($key == md5($this->class['_parameter']->get('hash_sites_direct'))) {
				$data = urlencode($data);
			}
			$value = rtrim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $key, $data, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))), "\0");
			return $value;
		}else if ($type == "decode") {
			$value = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $key, base64_decode($data), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)), "\0");
			if ($key == md5($this->class['_parameter']->get('hash_sites_direct'))) {
				$value = urldecode($value);
			}
			return $value;
		}
    }
    function mime_types () {
    	$mime_types = array(
    		"323" => "text/h323",
			"acx" => "application/internet-property-stream",
			"ai" => "application/postscript",
			"aif" => "audio/x-aiff",
			"aifc" => "audio/x-aiff",
			"aiff" => "audio/x-aiff",
			"asf" => "video/x-ms-asf",
			"asr" => "video/x-ms-asf",
			"asx" => "video/x-ms-asf",
			"au" => "audio/basic",
			"avi" => "video/x-msvideo",
			"axs" => "application/olescript",
			"bas" => "text/plain",
			"bcpio" => "application/x-bcpio",
			"bin" => "application/octet-stream",
			"bmp" => "image/bmp",
			"c" => "text/plain",
			"cat" => "application/vnd.ms-pkiseccat",
			"cdf" => "application/x-cdf",
			"cer" => "application/x-x509-ca-cert",
			"class" => "application/octet-stream",
			"clp" => "application/x-msclip",
			"cmx" => "image/x-cmx",
			"cod" => "image/cis-cod",
			"cpio" => "application/x-cpio",
			"crd" => "application/x-mscardfile",
			"crl" => "application/pkix-crl",
			"crt" => "application/x-x509-ca-cert",
			"csh" => "application/x-csh",
			"css" => "text/css",
			"dcr" => "application/x-director",
			"der" => "application/x-x509-ca-cert",
			"dir" => "application/x-director",
			"dll" => "application/x-msdownload",
			"dms" => "application/octet-stream",
			"doc" => "application/msword",
			"dot" => "application/msword",
			"dvi" => "application/x-dvi",
			"dxr" => "application/x-director",
			"eps" => "application/postscript",
			"etx" => "text/x-setext",
			"evy" => "application/envoy",
			"exe" => "application/octet-stream",
			"fif" => "application/fractals",
			"flr" => "x-world/x-vrml",
			"gif" => "image/gif",
			"gtar" => "application/x-gtar",
			"gz" => "application/x-gzip",
			"h" => "text/plain",
			"hdf" => "application/x-hdf",
			"hlp" => "application/winhlp",
			"hqx" => "application/mac-binhex40",
			"hta" => "application/hta",
			"htc" => "text/x-component",
			"htm" => "text/html",
			"html" => "text/html",
			"htt" => "text/webviewhtml",
			"ico" => "image/x-icon",
			"ief" => "image/ief",
			"iii" => "application/x-iphone",
			"ins" => "application/x-internet-signup",
			"isp" => "application/x-internet-signup",
			"jfif" => "image/pipeg",
			"png" => "image/png",
			"jpg" => "image/jpeg",
			"jpe" => "image/jpeg",
			"jpeg" => "image/jpeg",
			"js" => "application/x-javascript",
			"latex" => "application/x-latex",
			"lha" => "application/octet-stream",
			"lsf" => "video/x-la-asf",
			"lsx" => "video/x-la-asf",
			"lzh" => "application/octet-stream",
			"m13" => "application/x-msmediaview",
			"m14" => "application/x-msmediaview",
			"m3u" => "audio/x-mpegurl",
			"man" => "application/x-troff-man",
			"mdb" => "application/x-msaccess",
			"me" => "application/x-troff-me",
			"mht" => "message/rfc822",
			"mhtml" => "message/rfc822",
			"mid" => "audio/mid",
			"mny" => "application/x-msmoney",
			"mov" => "video/quicktime",
			"movie" => "video/x-sgi-movie",
			"mp4" => "video/mpeg4",
			"mp4" => "video/mp4",
			"mp2" => "video/mpeg",
			"mp3" => "audio/mpeg",
			"mpa" => "video/mpeg",
			"mpe" => "video/mpeg",
			"mpeg" => "video/mpeg",
			"mpg" => "video/mpeg",
			"mpp" => "application/vnd.ms-project",
			"mpv2" => "video/mpeg",
			"ms" => "application/x-troff-ms",
			"mvb" => "application/x-msmediaview",
			"nws" => "message/rfc822",
			"oda" => "application/oda",
			"p10" => "application/pkcs10",
			"p12" => "application/x-pkcs12",
			"p7b" => "application/x-pkcs7-certificates",
			"p7c" => "application/x-pkcs7-mime",
			"p7m" => "application/x-pkcs7-mime",
			"p7r" => "application/x-pkcs7-certreqresp",
			"p7s" => "application/x-pkcs7-signature",
			"pbm" => "image/x-portable-bitmap",
			"pdf" => "application/pdf",
			"pfx" => "application/x-pkcs12",
			"pgm" => "image/x-portable-graymap",
			"pko" => "application/ynd.ms-pkipko",
			"pma" => "application/x-perfmon",
			"pmc" => "application/x-perfmon",
			"pml" => "application/x-perfmon",
			"pmr" => "application/x-perfmon",
			"pmw" => "application/x-perfmon",
			"pnm" => "image/x-portable-anymap",
			"pot" => "application/vnd.ms-powerpoint",
			"ppm" => "image/x-portable-pixmap",
			"pps" => "application/vnd.ms-powerpoint",
			"ppt" => "application/vnd.ms-powerpoint",
			"prf" => "application/pics-rules",
			"ps" => "application/postscript",
			"pub" => "application/x-mspublisher",
			"qt" => "video/quicktime",
			"ra" => "audio/x-pn-realaudio",
			"ram" => "audio/x-pn-realaudio",
			"ras" => "image/x-cmu-raster",
			"rgb" => "image/x-rgb",
			"rmi" => "audio/mid",
			"roff" => "application/x-troff",
			"rtf" => "application/rtf",
			"rtx" => "text/richtext",
			"scd" => "application/x-msschedule",
			"sct" => "text/scriptlet",
			"setpay" => "application/set-payment-initiation",
			"setreg" => "application/set-registration-initiation",
			"sh" => "application/x-sh",
			"shar" => "application/x-shar",
			"sit" => "application/x-stuffit",
			"snd" => "audio/basic",
			"spc" => "application/x-pkcs7-certificates",
			"spl" => "application/futuresplash",
			"src" => "application/x-wais-source",
			"sst" => "application/vnd.ms-pkicertstore",
			"stl" => "application/vnd.ms-pkistl",
			"stm" => "text/html",
			"svg" => "image/svg+xml",
			"sv4cpio" => "application/x-sv4cpio",
			"sv4crc" => "application/x-sv4crc",
			"t" => "application/x-troff",
			"tar" => "application/x-tar",
			"tcl" => "application/x-tcl",
			"tex" => "application/x-tex",
			"texi" => "application/x-texinfo",
			"texinfo" => "application/x-texinfo",
			"tgz" => "application/x-compressed",
			"tif" => "image/tiff",
			"tiff" => "image/tiff",
			"tr" => "application/x-troff",
			"trm" => "application/x-msterminal",
			"tsv" => "text/tab-separated-values",
			"txt" => "text/plain",
			"uls" => "text/iuls",
			"ustar" => "application/x-ustar",
			"vcf" => "text/x-vcard",
			"vrml" => "x-world/x-vrml",
			"wav" => "audio/x-wav",
			"wcm" => "application/vnd.ms-works",
			"wdb" => "application/vnd.ms-works",
			"wks" => "application/vnd.ms-works",
			"wmf" => "application/x-msmetafile",
			"wps" => "application/vnd.ms-works",
			"wri" => "application/x-mswrite",
			"wrl" => "x-world/x-vrml",
			"wrz" => "x-world/x-vrml",
			"xaf" => "x-world/x-vrml",
			"xbm" => "image/x-xbitmap",
			"xla" => "application/vnd.ms-excel",
			"xlc" => "application/vnd.ms-excel",
			"xlm" => "application/vnd.ms-excel",
			"xls" => "application/vnd.ms-excel",
			"xlt" => "application/vnd.ms-excel",
			"xlw" => "application/vnd.ms-excel",
			"xof" => "x-world/x-vrml",
			"xpm" => "image/x-xpixmap",
			"xwd" => "image/x-xwindowdump",
			"z" => "application/x-compress",
			"zip" => "application/zip"
		);
		return $mime_types;
    }
}
?>