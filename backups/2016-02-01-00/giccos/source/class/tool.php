<?php
if (!defined("giccos#class>tool")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class tool {
	function __construct () {
		$GLOBALS["_tool"] = $this;
		$this->class = $GLOBALS;
	}
	function unlink ($input, $type = null) {
    	$value = false;
    	if (preg_match("/^([0-9]{4})$/", $type)) {
    		if (file_exists($input)) {
	    		chmod($input, $type);
	    		$value = unlink($input);
	    	}else {
	    		$value = true;
	    	}
	    }else {
	    	if (file_exists($input)) {
	    		$value = unlink($input);
	    	}else {
	    		$value = true;
	    	}
	    }
    	return $value;
    }
	function copy ($input, $output, $type = null) {
		$value = false; //. 0775
		if (preg_match("/^([0-9]{4})$/", $type)) {
			$perms = substr(sprintf('%o', fileperms($input)), -4);
			chmod($input, $type);
			$value = copy($input, $output);
			chmod($input, $perms);
		}else {
			$value = copy($input, $output);
		}
		return $value;
	}
	function rename ($input, $output, $type = null) {
		$value = false;
		if (preg_match("/^([0-9]{4})$/", $type)) {
			$perms = substr(sprintf('%o', fileperms($input)), -4);
			chmod($input, $type);
			$value = rename($input, $output);
			chmod($input, $perms);
		}else {
			$value = rename($input, $output);
		}
		return $value;
	}
	function execute ($command = null) {
		$command = str_replace(array("\n", "'"), array('', '"'), $command);
        exec($command, $output, $return);
        // $return = isset($return) && $this->parseBool($return) === true ? true : false;
        $return = true;
        return array("return" => $return, "command" => $command, "output" => $output);
	}
	function captcha () {
		$clientToken = $this->client()['id'];
		$tokenActionArr = array();
		$tokenActionArr['action']['xhr']['token'] = hash('crc32', hash('md5', $clientToken.'action::xhr::token'));
		$tokenActionArr['action']['xhr']['cookie'] = hash('crc32', hash('md5', $clientToken.'action::xhr::cookie'));
		$tokenActionArr['action']['xhr']['object'] = hash('crc32', hash('md5', $clientToken.'action::xhr::object'));
		$tokenActionArr['action']['image'] = hash('crc32', hash('md5', $clientToken.'action::image'));
		$tokenActionArr['action']['ajaxify'] = hash('crc32', hash('md5', $clientToken.'action::ajaxify'));
		return $tokenActionArr;
	}
	function shutdown ($messages = null) {
		die($messages);
	}
	function curl ($url = null, $timeout = 10, $options = null) {
		if ($url == null) {
			return;
		}
		if ($timeout == 0 || $timeout == "auto") {
			$timeout = 10;
		}
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		if (is_array($options) && count($options)) {
			if (isset($options['cookie']) && $options['cookie'] == true) {
				$cookie = null;
				if (preg_match("/^((http|https)(\:\/\/)(".$this->links('::host')."))/", $url)) {
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
				curl_setopt($ch, CURLOPT_POST, true);
				if (isset($options['form']) && is_array($options['form'])) {
					curl_setopt($ch, CURLOPT_HTTPHEADER, array("content-type: application/x-www-form-urlencoded; charset: utf-8"));
					curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($options['form']));
				}
			}
			if (isset($options['headers']) && is_array($options['headers']) && count($options['headers']) > 0) {
				$headers = array();
				foreach($options['headers'] as $key => $value) {
					$headers[] = $key.": ".$value;
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
		if (isset($options['referer']) && $options['referer'] == true) {
			curl_setopt($ch, CURLOPT_REFERER, $this->fullurl());
		}else if (isset($options['referer']) && is_string($options['referer'])) {
			curl_setopt($ch, CURLOPT_REFERER, $options['referer']);
		}
		if (isset($options['encoding']) && $options['encoding'] != null) {
			curl_setopt($ch, CURLOPT_USERAGENT, $options['encoding']);
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
			if (isset($options['decode']) && $options['decode'] == true) {
				$isGzip = $this->isGzip($data);
				if ($isGzip == true) {
					$data = gzdecode($data);
				}
			}
			return array("return" => true, "data" => $data, "status" => $status);
		}else {
			return array("return" => false, "reason" => "", "status" => $status);
		}
	}
	function getImageExif ($file = null) {
		if (!is_string($file)) {
			return array("return" => false, "reason" => "");
		}else if (!file_exists($file)) {
			return array("return" => false, "reason" => "");
		}
		if (!preg_match("/(\.(jpg|jpeg))$/i", $file)) {
			return array("return" => false, "reason" => "");
		}
		$dataArr = array();
		$readExif = $_tool->exec('identify -format "%[EXIF:*]" '.$file.' ');
		if (isset($readExif, $readExif['return'], $readExif['output']) && $readExif['return'] == true && $readExif['output'] != null) {
			foreach($readExif['output'] as $labelExif => $valueExif) {
				$valueExif = preg_replace("/^(exif\:)/", "", $valueExif);
				$valueExifArr = explode("=", $valueExif);
				$dataArr[$valueExifArr[0]] = $valueExifArr[1];
			}
		}
		return array("return" => true, "data" => $dataArr);
	}
	function convertMimeToExt ($filename) {
		if (preg_match("/(\.([a-zA-Z0-9+]))$/i", $filename)) {
			$mime = $this->convertExtToMime(strtolower(array_pop(explode('.', $filename))));
		}else {
			$mime = $filename;
		}
		$mime = strtolower($mime);
		$mimeType = array(
			'image/jpg' => 'jpg',
			'image/jpeg' => 'jpg',
			'image/png' => 'png',
			'image/gif' => 'gif'
		);
		if (array_key_exists($mime, $mimeType)) {
			return $mimeType[$mime];
		}else {
			return null;
		}
	}
	function convertExtToMime ($filename) {
		if (preg_match("/(\.([a-zA-Z0-9+]))$/i", $filename)) {
			$ext = strtolower(array_pop(explode('.', $filename)));
		}else {
			$ext = $filename;
		}
		$mimeType = $this->listExtMime();
		array_multisort(array_map('strlen', $mimeType), $mimeType);
		if (array_key_exists($ext, $mimeType)) {
			return $mimeType[$ext];
		}else {
			return 'application/octet-stream';
		}
	}
	function contentMediaFile ($url = null, $timeout = 10, $options = null) {
		if ($url == null) {
			return null;
		}
		if ($timeout == 0 || $timeout == "auto") {
			$timeout = 10;
		}
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
			if (isset($options['encoding']) && $options['encoding'] != null) {
				curl_setopt($ch, CURLOPT_USERAGENT, $options['encoding']);
			}
		}
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
		$rawdata = curl_exec($ch);
		$isgzip = $this->isGzip($rawdata);
		if ($isgzip == true) {
			$rawdata = gzdecode($rawdata);
		}
		curl_close($ch);
		return $rawdata;
	}
	function isSSL ($url = null) {
		if ($url == null) {
			return;
		}
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$response = curl_exec($ch);
		curl_close($ch);
		return $response;
		if (isset($response) && is_string($response) && preg_match("/^([\S\s]+)$/", $response)) {
			return false;
		}else {
			return true;
		}
	}
	function isGzip ($data = null) {
		return 0 === mb_strpos($data , "\x1f" . "\x8b" . "\x08"); //. \x1f\x8b\x08
	}
	function isBase64 ($str = null) {
	    if (base64_encode(base64_decode($str, true)) === $str) {
	       return true;
	    }else {
	       return false;
	    }
	}
	function utf8_ord ($ch) {
	  $len = strlen($ch);
	  if($len <= 0) return false;
	  $h = ord($ch{0});
	  if ($h <= 0x7F) return $h;
	  if ($h < 0xC2) return false;
	  if ($h <= 0xDF && $len>1) return ($h & 0x1F) <<  6 | (ord($ch{1}) & 0x3F);
	  if ($h <= 0xEF && $len>2) return ($h & 0x0F) << 12 | (ord($ch{1}) & 0x3F) << 6 | (ord($ch{2}) & 0x3F);          
	  if ($h <= 0xF4 && $len>3) return ($h & 0x0F) << 18 | (ord($ch{1}) & 0x3F) << 12 | (ord($ch{2}) & 0x3F) << 6 | (ord($ch{3}) & 0x3F);
	  return false;
	}
	function utf8_charAt ($str, $num) {
		return mb_substr($str, $num, 1, 'UTF-8');
	}
	function hex_bytes ($type, $value) {
		$data = null;
		if (in_array($type, ['decode'])) { // to string.
			$charArr = array();
			$stringArr = explode(" ", $value);
			foreach ($stringArr as $stringId => $stringValue) {
				$charArr[] = intval($stringValue, 16);
			}
			foreach ($charArr as $charId => $charValue) {
				if ($charId % 2 === 0) {
					$data .= $this->parseCharCode($charArr[$charId] | ($charArr[$charId+1]<<8));
				}
			}
		}else if (in_array($type, ['encode'])) {
			$byteArr = [];
			for ($i = 0 ; $i < mb_strlen($value, 'UTF-8') /* strlen($value) */; $i++) {
				$numChar = $this->parseCharAt($value, $i);
			    $byteArr[] = ($numChar & 255);
			    $byteArr[] = (($numChar>>8) & 255);
			}
			for ($i = 0; $i < count($byteArr); $i++) {
				if (!isset($byteArr[$i])) {
			      	$byteArr[$i] = 0;
			    }
				if ($byteArr[$i] < 0) {
			     	$byteArr[$i] = $byteArr[$i] + 256;
			    }
			    $hexNumber = dechex($byteArr[$i]);
			    if (strlen($hexNumber) == 1) {
			    	$hexNumber = "0".$hexNumber;
			    }
			    if (($i + 1) % 16 === 0) {
			     	$hexNumber .= "\n";
			    }else {
			      	$hexNumber .= " ";
			    }
			    $data .= $hexNumber;
			}
		}
		return $data;
	}
	function hex_bytes_encode ($value) {
		return $this->hex_bytes('encode', $value);
	}
	function hex_bytes_decode ($value) {
		return $this->hex_bytes('decode', $value);
	}
	function parseBool ($value) {
		return filter_var($value, FILTER_VALIDATE_BOOLEAN);
	}
	function parseCharCode ($code) {
		return mb_convert_encoding('&#'.intval($code).';', 'UTF-8', 'HTML-ENTITIES');
	}
	function parseCharAt ($str, $num) {
		return $this->utf8_ord($this->utf8_charAt($str, $num));
	}
	function parseHammingDistance ($firstString = null, $secondString = null) {
		if ($firstString == null || $firstString == null || strlen($firstString) != strlen($secondString)) {
			return false;
		}else {
			$firstString = strval($firstString);
			$secondString = strval($secondString);
		}
		$hamdist = $wrongCount = 0;
		for ($i = 0; $i < strlen($firstString); $i++) { 
			if (isset($firstString[$i], $secondString[$i]) && $firstString[$i] == $secondString[$i]) {
				//.
			}else {
				$wrongCount++;
				if ($wrongCount >= strlen($firstString)) {
					break;
				}
			}
		}
		//print_r($wrongCount / strlen($firstString) * 100);
		$hamdist = number_format(100 - ($wrongCount / strlen($firstString) * 100), 2);
 		return $hamdist;
	}
	function parseRequestFile ($data = null) {
		if ($data == null) {
			return null;
		}
		$file = array();
		foreach ($data as $fileLabel => $fileValue) {
			foreach ($fileValue as $fileId => $fileThis) {
				$file[$fileId][$fileLabel] = $fileThis;
				if (in_array($fileLabel, ["tmp_name"])) {
					$file[$fileId]['tmp'] = $fileThis;
				}
			}
		}
		return $file;
	}
	function parseDisplayString ($text = null, $min = false) {
		return stripslashes(htmlspecialchars($text));
	}
	function parseDBString ($text = null, $min = false) {
		return strtr(addslashes(trim($text)), array_flip(get_html_translation_table(HTML_ENTITIES)));
	}
	function parseDBCmd ($query = null) {
		return (preg_replace("/([\s]+)/", " ", str_replace(array("\n", "'"), array('', '"'), $query)));
	}
	function parseDBSQL ($query = null) {
		return (preg_replace("/([\s]+)/", " ", str_replace(array("\n", "'"), array('', '"'), $query)));
	}
	function parseDBQuery ($query = null) {
		return (preg_replace("/([\s]+)/", " ", str_replace(array("\n", "'"), array('', '"'), $query)));
	}
	function links ($path = null) {
		$host = $this->protocol()."://localhost/giccos/";
		if ($path == "::host") {
			$url = "localhost";
		}else {
			$clientId = $this->client()['id'];
			if (preg_match("/^(source)/", $path)) {
				if (preg_match("/^(source\/css)/", $path)) {
					$path = preg_replace("/^(source\/css)/", hash('crc32', $this->hash('encode', 'source::url', $clientId))."/".hash('crc32', $this->hash('encode', 'source::css', $clientId)), $path);
				}else if (preg_match("/^(source\/js)/", $path)) {
					$path = preg_replace("/^(source\/js)/", hash('crc32', $this->hash('encode', 'source::url', $clientId))."/".hash('crc32', $this->hash('encode', 'source::js', $clientId)), $path);
				}else if (preg_match("/^(source\/ajax)/", $path)) {
					$path = preg_replace("/^(source\/ajax)/", hash('crc32', $this->hash('encode', 'source::url', $clientId))."/".hash('crc32', $this->hash('encode', 'source::ajax', $clientId)), $path);
				}else if (preg_match("/^(source\/xml)/", $path)) {
					$path = preg_replace("/^(source\/xml)/", hash('crc32', $this->hash('encode', 'source::url', $clientId))."/".hash('crc32', $this->hash('encode', 'source::xml', $clientId)), $path);
				}else if (preg_match("/^(source\/font)/", $path)) {
					$path = preg_replace("/^(source\/font)/", hash('crc32', $this->hash('encode', 'source::url', $clientId))."/".hash('crc32', $this->hash('encode', 'source::font', $clientId)), $path);
				}
				return $host.$path;
			}
			$url = $host.$path;
		}
		return $url;
	}
	function ip () {
		$ip = null;
		if (isset($_SERVER['HTTP_CLIENT_IP'])) {
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		}else if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else if (isset($_SERVER['HTTP_X_FORWARDED'])) {
			$ip = $_SERVER['HTTP_X_FORWARDED'];
		}else if (isset($_SERVER['HTTP_FORWARDED_FOR'])) {
			$ip = $_SERVER['HTTP_FORWARDED_FOR'];
		}else if (isset($_SERVER['HTTP_FORWARDED'])) {
			$ip = $_SERVER['HTTP_FORWARDED'];
		}else if (isset($_SERVER['REMOTE_ADDR'])) {
			$ip = $_SERVER['REMOTE_ADDR'];
		}else {
			//.
		}
		if (in_array($ip, ['127.0.0.1', '::1'])) {
			return "113.163.89.44";
		}else {
			return $ip;
		}
	}
	function protocol () {
		return (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on' ? 'https' : 'http');
	}
	function uri () {
		return ($_SERVER['REQUEST_URI']);
	}
	function port () {
		return ($_SERVER['REMOTE_PORT']);
	}
	function root () {
		return ($_SERVER['DOCUMENT_ROOT'].'/giccos');
	}
	function client () { 
		$userAgent = $_SERVER['HTTP_USER_AGENT'];
		$browserName = "unknown";
		$platformName = "unknown";
		$deviceType = "unknown";
		$browserversion = "";
		$isTable = 0;
		$isMobile = 0;
		if (preg_match("/(tablet|ipad|playbook)|(android(?!.*(mobi|opera mini)))/i", strtolower($userAgent))) {
		    $isTable++;
		}
		if (preg_match("/(up.browser|up.link|mmp|symbian|smartphone|mobile|midp|wap|phone|android|iemobile|bb10)/i", strtolower($userAgent))) {
		    $isMobile++;
		}
		if ((strpos(strtolower($_SERVER['HTTP_ACCEPT']), 'application/vnd.wap.xhtml+xml') > 0) || ((isset($_SERVER['HTTP_X_WAP_PROFILE']) || isset($_SERVER['HTTP_PROFILE'])))) {
		    $isMobile++;
		}
		$mobileUserAgent = strtolower(substr($userAgent, 0, 4));
		$mobileListAgent = array(
			'w3c ', 'acs-', 'alav', 'alca', 'amoi',
			'audi', 'avan', 'benq', 'bird', 'blac',
			'blaz', 'brew', 'cell', 'cldc', 'cmd-',
			'dang', 'doco', 'eric', 'hipt', 'inno',
			'ipaq', 'java', 'jigs', 'kddi', 'keji',
			'leno', 'lg-c', 'lg-d', 'lg-g', 'lge-',
			'maui', 'maxo', 'midp', 'mits', 'mmef',
			'mobi', 'mot-', 'moto','mwbp',' nec-',
			'newt', 'noki', 'palm', 'pana', 'pant',
			'phil', 'play', 'port', 'prox', 'qwap',
			'sage','sams', ' sany','sch-', 'sec-',
			'send', 'seri', 'sgh-', 'shar', 'sie-',
			'siem', 'smal', 'smar', 'sony', 'sph-',
			'symb', 't-mo', 'teli', 'tim-', 'tosh',
			'tsm-', 'upg1', 'upsi', 'vk-v', 'voda',
			'wap-', 'wapa', 'wapi', 'wapp', 'wapr',
			'webc', 'winw', 'winw', 'xda ', 'xda-'
		);
		if (in_array($mobileUserAgent, $mobileListAgent)) {
		    $isMobile++;
		}
		if (strpos(strtolower($userAgent), "opera mini") > 0) {
		    $isMobile++;
		    $stockUserAgent = strtolower(isset($_SERVER['HTTP_X_OPERAMINI_PHONE_UA'])?$_SERVER['HTTP_X_OPERAMINI_PHONE_UA']:(isset($_SERVER['HTTP_DEVICE_STOCK_UA'])?$_SERVER['HTTP_DEVICE_STOCK_UA']:''));
		    if (preg_match('/(tablet|ipad|playbook)|(android(?!.*mobile))/i', $stockUserAgent)) {
		      $isTable++;
		    }
		}
		if ($isTable > 0) {
			$deviceType = "table";
		}else if ($isMobile > 0) {
			$deviceType = "mobile";
		}else {
			$deviceType = "desktop";
		}
		if (preg_match("/(iphone|ipod|ipad)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) {
			$platformName = "iOS";
			if (preg_match("/(os)\s(([0-9]{1})\_([0-9\.]+)(\_([0-9\.]+)))/i", $userAgent, $matchOSVer)) { 
				$platformName .= " ".str_replace("_", ".", $matchOSVer[2]); 
			}
		}else if (preg_match("/(android)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) {
			$platformName = "Android";
			if (preg_match("/(android)\s([0-9\.]+)/i", $userAgent, $matchOSVer)) { 
				$platformName .= " ".str_replace("_", ".", $matchOSVer[2]); 
			}
		}else if (preg_match("/(windows phone)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) {
			$platformName = "Windows Phone";
			if (preg_match("/(windows phone)\s([0-9\.]+)/i", $userAgent, $matchOSVer)) { 
				$platformName .= " ".str_replace("_", ".", $matchOSVer[2]); 
			}
		}else if (preg_match("/(blackberry|bb10|playbook|rim)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) {
			$platformName = "Blackberry";
		}else if (preg_match("/(webos)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) {
			$platformName = "WebOS";
		}else if (preg_match("/(meego)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) {
			$platformName = "MeeGo";
		}else if (preg_match("/(linux)/i", $userAgent) && in_array($deviceType, ["desktop"])) {
			$platformName = "Linux";
			if (preg_match("/(sunos)/i", $userAgent)) {
				$platformName = "Sun OS";
			}else if (preg_match("/(openbsd)/i", $userAgent)) {
				$platformName = "Open BSD";
			}else if (preg_match("/(beos)/i", $userAgent)) {
				$platformName = "BeOS";
			}else if (preg_match("/(ubuntu)/i", $userAgent)) {
				$platformName = "Ubuntu";
			}
		}else if (preg_match("/(macintosh|mac os x)/i", $userAgent) && in_array($deviceType, ["desktop"])) {
			$platformName = "Mac";
			if (preg_match("/macintosh/i", $userAgent)) { 
				$platformName .= " OS X"; 
			}else if (preg_match("/mac_powerpc/i", $userAgent)) { 
				$platformName .= " OS 9"; 
			}
		}else if (preg_match("/(windows|win32)/i", $userAgent) && in_array($deviceType, ["desktop"])) {
			$platformName = "Windows";
			if (preg_match("/NT 10.0/i", $userAgent)) { 
				$platformName .= " 10"; 
			}else if (preg_match("/NT 6.2/i", $userAgent)) { 
				$platformName .= " 8"; 
			}else if (preg_match("/NT 6.3/i", $userAgent)) { 
				$platformName .= " 8.1"; 
			}else if (preg_match("/NT 6.1/i", $userAgent)) { 
				$platformName .= " 7"; 
			}else if (preg_match("/NT 6.0/i", $userAgent)) { 
				$platformName .= " Vista"; 
			}else if (preg_match("/NT 5.1/i", $userAgent)) { 
				$platformName .= " XP"; 
			}else if (preg_match("/NT 5.0/i", $userAgent)) { 
				$platformName .= " 2000"; 
			}else if (preg_match("/ME/i", $userAgent)) { 
				$platformName .= " ME"; 
			}else if (preg_match("/win98/i", $userAgent)) { 
				$platformName .= " 98"; 
			}else if (preg_match("/win95/i", $userAgent)) { 
				$platformName .= " 95"; 
			}else if (preg_match("/win16/i", $userAgent)) { 
				$platformName .= " 3.11"; 
			}
        	if (preg_match('/WOW64/i', $userAgent) || preg_match('/x64/i', $userAgent)) { 
        		$platformName .= " (x64)";
        	}else if (preg_match('/WOW86/i', $userAgent) || preg_match('/x86/i', $userAgent)) { 
        		$platformName .= " (x86)";
        	}
		}
		$isIE = false;
		if ((preg_match("/(msie)/i", $userAgent) && !preg_match("/(opr|opera)/i", $userAgent)) || preg_match("/(msie)/i", $userAgent) || preg_match("/(trident)/i", $userAgent) && in_array($deviceType, ["mobile", "table", "desktop"])) {
			if (preg_match("/(iemobile)/i", $userAgent)) {
				$browserName = "Internet Explorer";
				$userBrowser = "MSIE";
				$browserKernel = "trident";
			}else {
				$browserName = "Internet Explorer"; 
				$userBrowser = "MSIE";
				$browserKernel = "trident";
				if (preg_match("/(trident)/i", $userAgent)) {
					// $userAgent = preg_replace("/(trident)/i", "MSIE", $userAgent);
					$isIE = true;
				}
			}
		}else if (preg_match("/(edge)/i", $userAgent) && in_array($deviceType, ["mobile", "tablet", "desktop"])) { 
			$browserName = "Microsoft Edge"; 
			$userBrowser = "Microsoft Edge"; 
			$browserKernel = "edgehtml";
		}else if (preg_match("/(mxnitro)/i", $userAgent) && in_array($deviceType, ["desktop"])) { 
			$browserName = "MxNitro"; 
			$userBrowser = "MxNitro"; 
			$browserKernel = "blink";
		}else if (preg_match("/(ucbrowser)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "UC Browser"; 
			$userBrowser = "UC Browser"; 
			$browserKernel = "webkit";
		}else if (preg_match("/(blackBerry|playbook|bb10)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "BlackBerry Browser"; 
			$userBrowser = "BlackBerry Browser"; 
			$browserKernel = "mango/webkit";
		}else if (preg_match("/(kindle)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "Kindle Browser"; 
			$userBrowser = "Kindle Browser"; 
			$browserKernel = "netfront/webkit";
		}else if (preg_match("/(nokiabrowser)/i", $userAgent)&& in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "Nokia Browser"; 
			$userBrowser = "NokiaBrowser"; 
			$browserKernel = "webkit";
		}else if (preg_match("/(yabrowser)/i", $userAgent)&& in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "Yandex Browser"; 
			$userBrowser = "Yandex.Browser"; 
			$browserKernel = "webkit";
		}else if (preg_match("/(coc_coc)/i", $userAgent) && in_array($deviceType, ["desktop"])) { 
			$browserName = "Coc Coc"; 
			$userBrowser = "Coc Coc"; 
			$browserKernel = "blink";
		}else if (preg_match("/(corom)/i", $userAgent) && in_array($deviceType, ["desktop"])) { 
			$browserName = "CoRom"; 
			$userBrowser = "CoRom"; 
			$browserKernel = "webkit";
		}else if (preg_match("/(dolfin)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "Dolphin Browser"; 
			$userBrowser = "Dolphin";
			$browserKernel = "webkit";
		}else if (preg_match("/(netscape)/i", $userAgent) && in_array($deviceType, ["mobile", "table", "desktop"])) { 
			$browserName = "Netscape"; 
			$userBrowser = "Netscape"; 
			$browserKernel = "gecko";
		}else if (preg_match("/(maxthon)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "Maxthon"; 
			$userBrowser = "Maxthon"; 
			$browserKernel = "webkit/trident/blink";
		}else if (preg_match("/(konqueror)/i", $userAgent) && in_array($deviceType, ["desktop"])) { 
			$browserName = "Konqueror";
			$userBrowser = "Konqueror"; 
			$browserKernel = "khtml";
		}else if (preg_match("/(opr|opera)/i", $userAgent) && in_array($deviceType, ["mobile", "table", "desktop"])) {
			$browserName = "Opera";
			$userBrowser = "Opera";
			if (preg_match("/(opera mini)/i", $userAgent)) {
				$browserKernel = "presto";
			}else {
				$browserKernel = "blink";
			}
			$userAgent = preg_replace("/(opr)/i", "Opera", $userAgent);
		}else if (preg_match("/(chromium)/i", $userAgent) && in_array($deviceType, ["desktop"])) { 
			$browserName = "Google Chromium"; 
			$userBrowser = "Chromium"; 
			$browserKernel = "";
		}else if (preg_match("/(firefox)/i", $userAgent) && in_array($deviceType, ["mobile", "table", "desktop"])) { 
			$browserName = "Mozilla Firefox"; 
			$userBrowser = "Firefox"; 
			$browserKernel = "gecko";
		}else if (preg_match("/(chrome)/i", $userAgent) && in_array($deviceType, ["mobile", "table", "desktop"])) { 
			$browserName = "Google Chrome"; 
			$userBrowser = "Chrome"; 
			$browserKernel = "blink";
		}else if (preg_match("/(android)/i", $userAgent) && in_array($deviceType, ["mobile", "table"])) { 
			$browserName = "Android Browser"; 
			$userBrowser = "Android Browser"; 
			$browserKernel = "webkit";
		}else if (preg_match("/(safari)/i", $userAgent) && in_array($deviceType, ["mobile", "table", "desktop"])) { 
			$browserName = "Apple Safari"; 
			$userBrowser = "Safari";
			$browserKernel = "webkit";
		}
		$known = array("Version", $userBrowser, "other");
		$pattern = "#(?<browser>".join("|", $known).")[/ ]+(?<version>[0-9.|a-zA-Z.]*)#";
		if (!preg_match_all($pattern, $userAgent, $matches)) {
			// we have no matching number just continue
		}
		$matchCount = count($matches['browser']);
		if ($matchCount != 1) {
			if (!$isIE) {
				if (strripos($userAgent, "Version") < strripos($userAgent, $userBrowser)){
					$browserversion = $matches['version'][0];
				}else {
					$browserversion = $matches['version'][1];
				}
			}else {
				preg_match_all("/(rv)\:([a-zA-Z0-9\.]+)/i", $userAgent, $matchesVersion);
				$browserversion = $matchesVersion[2][0];
			}
		}else {
			if (!$isIE) {
				$browserversion = $matches['version'][0];
			}else {
				preg_match_all("/(rv)\:([a-zA-Z0-9\.]+)/i", $userAgent, $matchesVersion);
				$browserversion = $matchesVersion[2][0];
			}
		}
		if ($browserversion == null || $browserversion == "") {
			$browserversion = "?";
		}
		$clientToken = hash('crc32', $deviceType.'::'.$platformName.'::'.$browserName.'>'.$browserversion);
		$clientId = hash('crc32', hash('md5', $this->ip().'::'.$clientToken));
		$clientArr = array(
			"id" => $clientId,
			"token" => $clientToken,
			"agent" => $userAgent, 
			"platform" => $platformName, 
			"pattern" => $pattern, 
			"ip" => $this->ip(),
			"device" => $deviceType,
			"browsername" => $browserName, 
			"browserversion" => $browserversion, 
			"browserkernel" => $browserKernel
		);
		foreach ($clientArr as $key => $browserValue) {
			if (is_string($browserValue)) {
				// $browser[$key] = strtolower($browserValue);
			}
		}
		return $clientArr;
	}
	function hash ($hashType = null, $hashData = null, $hashKey = null) {
		if (in_array(null, [$hashType, $hashData, $hashKey])) {
			return false;
		}
		$hashKey = md5($hashKey);
		if (in_array($hashType, ["encode"])) {
			$value = rtrim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $hashKey, $hashData, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))), "\0");
			return $value;
		}else if (in_array($hashType, ["decode"])) {
			$value = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $hashKey, base64_decode($hashData), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)), "\0");
			return $value;
		}
    }
    function listExtMime () {
    	return array(
			'3dm' => 'x-world/x-3dmf',
			'3dmf' => 'x-world/x-3dmf',
			'a' => 'application/octet-stream',
			'aab' => 'application/x-authorware-bin',
			'aam' => 'application/x-authorware-map',
			'aas' => 'application/x-authorware-seg',
			'abc' => 'text/vnd.abc',
			'acgi' => 'text/html',
			'afl' => 'video/animaflex',
			'ai' => 'application/postscript',
			'aif' => 'audio/aiff',
			'aif' => 'audio/x-aiff',
			'aifc' => 'audio/aiff',
			'aifc' => 'audio/x-aiff',
			'aiff' => 'audio/aiff',
			'aiff' => 'audio/x-aiff',
			'aim' => 'application/x-aim',
			'aip' => 'text/x-audiosoft-intra',
			'ani' => 'application/x-navi-animation',
			'aos' => 'application/x-nokia-9000-communicator-add-on-software',
			'aps' => 'application/mime',
			'arc' => 'application/octet-stream',
			'arj' => 'application/arj',
			'arj' => 'application/octet-stream',
			'art' => 'image/x-jg',
			'asf' => 'video/x-ms-asf',
			'asm' => 'text/x-asm',
			'asp' => 'text/asp',
			'asx' => 'application/x-mplayer2',
			'asx' => 'video/x-ms-asf',
			'asx' => 'video/x-ms-asf-plugin',
			'au' => 'audio/basic',
			'au' => 'audio/x-au',
			'avi' => 'application/x-troff-msvideo',
			'avi' => 'video/avi',
			'avi' => 'video/msvideo',
			'avi' => 'video/x-msvideo',
			'avs' => 'video/avs-video',
			'bcpio' => 'application/x-bcpio',
			'bin' => 'application/mac-binary',
			'bin' => 'application/macbinary',
			'bin' => 'application/octet-stream',
			'bin' => 'application/x-binary',
			'bin' => 'application/x-macbinary',
			'bm' => 'image/bmp',
			'bmp' => 'image/bmp',
			'bmp' => 'image/x-windows-bmp',
			'boo' => 'application/book',
			'book' => 'application/book',
			'boz' => 'application/x-bzip2',
			'bsh' => 'application/x-bsh',
			'bz' => 'application/x-bzip',
			'bz2' => 'application/x-bzip2',
			'c' => 'text/plain',
			'c++' => 'text/plain',
			'cat' => 'application/vnd.ms-pki.seccat',
			'cc' => 'text/plain',
			'cc' => 'text/x-c',
			'ccad' => 'application/clariscad',
			'cco' => 'application/x-cocoa',
			'cdf' => 'application/cdf',
			'cdf' => 'application/x-cdf',
			'cdf' => 'application/x-netcdf',
			'cer' => 'application/pkix-cert',
			'cer' => 'application/x-x509-ca-cert',
			'cha' => 'application/x-chat',
			'chat' => 'application/x-chat',
			'class' => 'application/java',
			'class' => 'application/java-byte-code',
			'class' => 'application/x-java-class',
			'com' => 'application/octet-stream',
			'com' => 'text/plain',
			'conf' => 'text/plain',
			'cpio' => 'application/x-cpio',
			'cpp' => 'text/x-c',
			'cpt' => 'application/mac-compactpro',
			'cpt' => 'application/x-compactpro',
			'cpt' => 'application/x-cpt',
			'crl' => 'application/pkcs-crl',
			'crl' => 'application/pkix-crl',
			'crt' => 'application/pkix-cert',
			'crt' => 'application/x-x509-ca-cert',
			'crt' => 'application/x-x509-user-cert',
			'csh' => 'application/x-csh',
			'csh' => 'text/x-script.csh',
			'css' => 'application/x-pointplus',
			'css' => 'text/css',
			'cxx' => 'text/plain',
			'dcr' => 'application/x-director',
			'deepv' => 'application/x-deepv',
			'def' => 'text/plain',
			'der' => 'application/x-x509-ca-cert',
			'dif' => 'video/x-dv',
			'dir' => 'application/x-director',
			'dl' => 'video/dl',
			'dl' => 'video/x-dl',
			'doc' => 'application/msword',
			'dot' => 'application/msword',
			'dp' => 'application/commonground',
			'drw' => 'application/drafting',
			'dump' => 'application/octet-stream',
			'dv' => 'video/x-dv',
			'dvi' => 'application/x-dvi',
			'dwf' => 'drawing/x-dwf (old)',
			'dwf' => 'model/vnd.dwf',
			'dwg' => 'application/acad',
			'dwg' => 'image/vnd.dwg',
			'dwg' => 'image/x-dwg',
			'dxf' => 'application/dxf',
			'dxf' => 'image/vnd.dwg',
			'dxf' => 'image/x-dwg',
			'dxr' => 'application/x-director',
			'el' => 'text/x-script.elisp',
			'elc' => 'application/x-bytecode.elisp (compiled elisp)',
			'elc' => 'application/x-elc',
			'env' => 'application/x-envoy',
			'eps' => 'application/postscript',
			'es' => 'application/x-esrehber',
			'etx' => 'text/x-setext',
			'evy' => 'application/envoy',
			'evy' => 'application/x-envoy',
			'exe' => 'application/octet-stream',
			'f' => 'text/plain',
			'f' => 'text/x-fortran',
			'f77' => 'text/x-fortran',
			'f90' => 'text/plain',
			'f90' => 'text/x-fortran',
			'fdf' => 'application/vnd.fdf',
			'fif' => 'application/fractals',
			'fif' => 'image/fif',
			'fli' => 'video/fli',
			'fli' => 'video/x-fli',
			'flo' => 'image/florian',
			'flx' => 'text/vnd.fmi.flexstor',
			'fmf' => 'video/x-atomic3d-feature',
			'for' => 'text/plain',
			'for' => 'text/x-fortran',
			'fpx' => 'image/vnd.fpx',
			'fpx' => 'image/vnd.net-fpx',
			'frl' => 'application/freeloader',
			'funk' => 'audio/make',
			'g' => 'text/plain',
			'g3' => 'image/g3fax',
			'gif' => 'image/gif',
			'gl' => 'video/gl',
			'gl' => 'video/x-gl',
			'gsd' => 'audio/x-gsm',
			'gsm' => 'audio/x-gsm',
			'gsp' => 'application/x-gsp',
			'gss' => 'application/x-gss',
			'gtar' => 'application/x-gtar',
			'gz' => 'application/x-compressed',
			'gz' => 'application/x-gzip',
			'gzip' => 'application/x-gzip',
			'gzip' => 'multipart/x-gzip',
			'h' => 'text/plain',
			'h' => 'text/x-h',
			'hdf' => 'application/x-hdf',
			'help' => 'application/x-helpfile',
			'hgl' => 'application/vnd.hp-hpgl',
			'hh' => 'text/plain',
			'hh' => 'text/x-h',
			'hlb' => 'text/x-script',
			'hlp' => 'application/hlp',
			'hlp' => 'application/x-helpfile',
			'hlp' => 'application/x-winhelp',
			'hpg' => 'application/vnd.hp-hpgl',
			'hpgl' => 'application/vnd.hp-hpgl',
			'hqx' => 'application/binhex',
			'hqx' => 'application/binhex4',
			'hqx' => 'application/mac-binhex',
			'hqx' => 'application/mac-binhex40',
			'hqx' => 'application/x-binhex40',
			'hqx' => 'application/x-mac-binhex40',
			'hta' => 'application/hta',
			'htc' => 'text/x-component',
			'htm' => 'text/html',
			'html' => 'text/html',
			'htmls' => 'text/html',
			'htt' => 'text/webviewhtml',
			'htx' => 'text/html',
			'ice' => 'x-conference/x-cooltalk',
			'ico' => 'image/x-icon',
			'idc' => 'text/plain',
			'ief' => 'image/ief',
			'iefs' => 'image/ief',
			'iges' => 'application/iges',
			'iges' => 'model/iges',
			'igs' => 'application/iges',
			'igs' => 'model/iges',
			'ima' => 'application/x-ima',
			'imap' => 'application/x-httpd-imap',
			'inf' => 'application/inf',
			'ins' => 'application/x-internett-signup',
			'ip' => 'application/x-ip2',
			'isu' => 'video/x-isvideo',
			'it' => 'audio/it',
			'iv' => 'application/x-inventor',
			'ivr' => 'i-world/i-vrml',
			'ivy' => 'application/x-livescreen',
			'jam' => 'audio/x-jam',
			'jav' => 'text/plain',
			'jav' => 'text/x-java-source',
			'java' => 'text/plain',
			'java' => 'text/x-java-source',
			'jcm' => 'application/x-java-commerce',
			'json' => 'application/json',
			'jfif' => 'image/jpeg',
			'jfif' => 'image/pjpeg',
			'jfif-tbnl' => 'image/jpeg',
			'jpe' => 'image/jpeg',
			'jpe' => 'image/pjpeg',
			'jpeg' => 'image/jpeg',
			'jpeg' => 'image/pjpeg',
			'jpg' => 'image/jpeg',
			'jpg' => 'image/pjpeg',
			'jps' => 'image/x-jps',
			'js' => 'application/x-javascript',
			'jut' => 'image/jutvision',
			'kar' => 'audio/midi',
			'kar' => 'music/x-karaoke',
			'ksh' => 'application/x-ksh',
			'ksh' => 'text/x-script.ksh',
			'la' => 'audio/nspaudio',
			'la' => 'audio/x-nspaudio',
			'lam' => 'audio/x-liveaudio',
			'latex' => 'application/x-latex',
			'lha' => 'application/lha',
			'lha' => 'application/octet-stream',
			'lha' => 'application/x-lha',
			'lhx' => 'application/octet-stream',
			'list' => 'text/plain',
			'lma' => 'audio/nspaudio',
			'lma' => 'audio/x-nspaudio',
			'log' => 'text/plain',
			'lsp' => 'application/x-lisp',
			'lsp' => 'text/x-script.lisp',
			'lst' => 'text/plain',
			'lsx' => 'text/x-la-asf',
			'ltx' => 'application/x-latex',
			'lzh' => 'application/octet-stream',
			'lzh' => 'application/x-lzh',
			'lzx' => 'application/lzx',
			'lzx' => 'application/octet-stream',
			'lzx' => 'application/x-lzx',
			'm' => 'text/plain',
			'm' => 'text/x-m',
			'm1v' => 'video/mpeg',
			'm2a' => 'audio/mpeg',
			'm2v' => 'video/mpeg',
			'm3u' => 'audio/x-mpequrl',
			'man' => 'application/x-troff-man',
			'map' => 'application/x-navimap',
			'mar' => 'text/plain',
			'mbd' => 'application/mbedlet',
			'mc' => 'application/x-magic-cap-package-1.0',
			'mcd' => 'application/mcad',
			'mcd' => 'application/x-mathcad',
			'mcf' => 'image/vasa',
			'mcf' => 'text/mcf',
			'mcp' => 'application/netmc',
			'me' => 'application/x-troff-me',
			'mht' => 'message/rfc822',
			'mhtml' => 'message/rfc822',
			'mid' => 'application/x-midi',
			'mid' => 'audio/midi',
			'mid' => 'audio/x-mid',
			'mid' => 'audio/x-midi',
			'mid' => 'music/crescendo',
			'mid' => 'x-music/x-midi',
			'midi' => 'application/x-midi',
			'midi' => 'audio/midi',
			'midi' => 'audio/x-mid',
			'midi' => 'audio/x-midi',
			'midi' => 'music/crescendo',
			'midi' => 'x-music/x-midi',
			'mif' => 'application/x-frame',
			'mif' => 'application/x-mif',
			'mime' => 'message/rfc822',
			'mime' => 'www/mime',
			'mjf' => 'audio/x-vnd.audioexplosion.mjuicemediafile',
			'mjpg' => 'video/x-motion-jpeg',
			'mm' => 'application/base64',
			'mm' => 'application/x-meme',
			'mme' => 'application/base64',
			'mod' => 'audio/mod',
			'mod' => 'audio/x-mod',
			'moov' => 'video/quicktime',
			'mov' => 'video/quicktime',
			'movie' => 'video/x-sgi-movie',
			'mp2' => 'audio/mpeg',
			'mp2' => 'audio/x-mpeg',
			'mp2' => 'video/mpeg',
			'mp2' => 'video/x-mpeg',
			'mp2' => 'video/x-mpeq2a',
			'mp3' => 'audio/mp3',
			'mp3' => 'audio/mpeg3',
			'mp3' => 'audio/x-mpeg-3',
			'mp3' => 'video/mpeg',
			'mp3' => 'video/x-mpeg',
			'mp4' => 'audio/mp4',
			'mp4' => 'audio/mpeg4',
			'mp4' => 'audio/x-mpeg-4',
			'mpa' => 'audio/mpeg',
			'mpa' => 'video/mpeg',
			'mpc' => 'application/x-project',
			'mpe' => 'video/mpeg',
			'mpeg' => 'video/mpeg',
			'mpg' => 'audio/mpeg',
			'mpg' => 'video/mpeg',
			'mpga' => 'audio/mpeg',
			'mpp' => 'application/vnd.ms-project',
			'mpt' => 'application/x-project',
			'mpv' => 'application/x-project',
			'mpx' => 'application/x-project',
			'mrc' => 'application/marc',
			'ms' => 'application/x-troff-ms',
			'mv' => 'video/x-sgi-movie',
			'my' => 'audio/make',
			'mzz' => 'application/x-vnd.audioexplosion.mzz',
			'nap' => 'image/naplps',
			'naplps' => 'image/naplps',
			'nc' => 'application/x-netcdf',
			'ncm' => 'application/vnd.nokia.configuration-message',
			'nif' => 'image/x-niff',
			'niff' => 'image/x-niff',
			'nix' => 'application/x-mix-transfer',
			'nsc' => 'application/x-conference',
			'nvd' => 'application/x-navidoc',
			'o' => 'application/octet-stream',
			'oda' => 'application/oda',
			'omc' => 'application/x-omc',
			'omcd' => 'application/x-omcdatamaker',
			'omcr' => 'application/x-omcregerator',
			'p' => 'text/x-pascal',
			'p10' => 'application/pkcs10',
			'p10' => 'application/x-pkcs10',
			'p12' => 'application/pkcs-12',
			'p12' => 'application/x-pkcs12',
			'p7a' => 'application/x-pkcs7-signature',
			'p7c' => 'application/pkcs7-mime',
			'p7c' => 'application/x-pkcs7-mime',
			'p7m' => 'application/pkcs7-mime',
			'p7m' => 'application/x-pkcs7-mime',
			'p7r' => 'application/x-pkcs7-certreqresp',
			'p7s' => 'application/pkcs7-signature',
			'part' => 'application/pro_eng',
			'pas' => 'text/pascal',
			'pbm' => 'image/x-portable-bitmap',
			'pcl' => 'application/vnd.hp-pcl',
			'pcl' => 'application/x-pcl',
			'pct' => 'image/x-pict',
			'pcx' => 'image/x-pcx',
			'pdb' => 'chemical/x-pdb',
			'pdf' => 'application/pdf',
			'pfunk' => 'audio/make',
			'pgm' => 'image/x-portable-greymap',
			'pic' => 'image/pict',
			'pict' => 'image/pict',
			'pkg' => 'application/x-newton-compatible-pkg',
			'pko' => 'application/vnd.ms-pki.pko',
			'pl' => 'text/plain',
			'pl' => 'text/x-script.perl',
			'plx' => 'application/x-pixclscript',
			'pm' => 'image/x-xpixmap',
			'pm' => 'text/x-script.perl-module',
			'pm4' => 'application/x-pagemaker',
			'pm5' => 'application/x-pagemaker',
			'png' => 'image/png',
			'pnm' => 'application/x-portable-anymap',
			'pnm' => 'image/x-portable-anymap',
			'pot' => 'application/mspowerpoint',
			'pot' => 'application/vnd.ms-powerpoint',
			'pov' => 'model/x-pov',
			'ppa' => 'application/vnd.ms-powerpoint',
			'ppm' => 'image/x-portable-pixmap',
			'pps' => 'application/mspowerpoint',
			'pps' => 'application/vnd.ms-powerpoint',
			'ppt' => 'application/mspowerpoint',
			'ppt' => 'application/powerpoint',
			'ppt' => 'application/vnd.ms-powerpoint',
			'ppt' => 'application/x-mspowerpoint',
			'ppz' => 'application/mspowerpoint',
			'pre' => 'application/x-freelance',
			'prt' => 'application/pro_eng',
			'ps' => 'application/postscript',
			'psd' => 'application/octet-stream',
			'pvu' => 'paleovu/x-pv',
			'pwz' => 'application/vnd.ms-powerpoint',
			'py' => 'text/x-script.phyton',
			'pyc' => 'applicaiton/x-bytecode.python',
			'qcp' => 'audio/vnd.qcelp',
			'qd3' => 'x-world/x-3dmf',
			'qd3d' => 'x-world/x-3dmf',
			'qif' => 'image/x-quicktime',
			'qt' => 'video/quicktime',
			'qtc' => 'video/x-qtc',
			'qti' => 'image/x-quicktime',
			'qtif' => 'image/x-quicktime',
			'ra' => 'audio/x-pn-realaudio',
			'ra' => 'audio/x-pn-realaudio-plugin',
			'ra' => 'audio/x-realaudio',
			'ram' => 'audio/x-pn-realaudio',
			'ras' => 'application/x-cmu-raster',
			'ras' => 'image/cmu-raster',
			'ras' => 'image/x-cmu-raster',
			'rast' => 'image/cmu-raster',
			'rexx' => 'text/x-script.rexx',
			'rf' => 'image/vnd.rn-realflash',
			'rgb' => 'image/x-rgb',
			'rm' => 'application/vnd.rn-realmedia',
			'rm' => 'audio/x-pn-realaudio',
			'rmi' => 'audio/mid',
			'rmm' => 'audio/x-pn-realaudio',
			'rmp' => 'audio/x-pn-realaudio',
			'rmp' => 'audio/x-pn-realaudio-plugin',
			'rng' => 'application/ringing-tones',
			'rng' => 'application/vnd.nokia.ringing-tone',
			'rnx' => 'application/vnd.rn-realplayer',
			'roff' => 'application/x-troff',
			'rp' => 'image/vnd.rn-realpix',
			'rpm' => 'audio/x-pn-realaudio-plugin',
			'rt' => 'text/richtext',
			'rt' => 'text/vnd.rn-realtext',
			'rtf' => 'application/rtf',
			'rtf' => 'application/x-rtf',
			'rtf' => 'text/richtext',
			'rtx' => 'application/rtf',
			'rtx' => 'text/richtext',
			'rv' => 'video/vnd.rn-realvideo',
			's' => 'text/x-asm',
			's3m' => 'audio/s3m',
			'saveme' => 'aapplication/octet-stream',
			'sbk' => 'application/x-tbook',
			'scm' => 'application/x-lotusscreencam',
			'scm' => 'text/x-script.guile',
			'scm' => 'text/x-script.scheme',
			'scm' => 'video/x-scm',
			'sdml' => 'text/plain',
			'sdp' => 'application/sdp',
			'sdp' => 'application/x-sdp',
			'sdr' => 'application/sounder',
			'sea' => 'application/sea',
			'sea' => 'application/x-sea',
			'set' => 'application/set',
			'sgm' => 'text/sgml',
			'sgm' => 'text/x-sgml',
			'sgml' => 'text/sgml',
			'sgml' => 'text/x-sgml',
			'sh' => 'application/x-bsh',
			'sh' => 'application/x-sh',
			'sh' => 'application/x-shar',
			'sh' => 'text/x-script.sh',
			'shar' => 'application/x-bsh',
			'shar' => 'application/x-shar',
			'shtml' => 'text/html',
			'shtml' => 'text/x-server-parsed-html',
			'sid' => 'audio/x-psid',
			'sit' => 'application/x-sit',
			'sit' => 'application/x-stuffit',
			'skd' => 'application/x-koan',
			'skm' => 'application/x-koan',
			'skp' => 'application/x-koan',
			'skt' => 'application/x-koan',
			'sl' => 'application/x-seelogo',
			'smi' => 'application/smil',
			'smil' => 'application/smil',
			'snd' => 'audio/basic',
			'snd' => 'audio/x-adpcm',
			'sol' => 'application/solids',
			'spc' => 'application/x-pkcs7-certificates',
			'spc' => 'text/x-speech',
			'spl' => 'application/futuresplash',
			'spr' => 'application/x-sprite',
			'sprite' => 'application/x-sprite',
			'src' => 'application/x-wais-source',
			'ssi' => 'text/x-server-parsed-html',
			'ssm' => 'application/streamingmedia',
			'sst' => 'application/vnd.ms-pki.certstore',
			'step' => 'application/step',
			'stl' => 'application/sla',
			'stl' => 'application/vnd.ms-pki.stl',
			'stl' => 'application/x-navistyle',
			'stp' => 'application/step',
			'sv4cpio' =>'application/x-sv4cpio',
			'sv4crc' => 'application/x-sv4crc',
			'svf' => 'image/vnd.dwg',
			'svf' => 'image/x-dwg',
			'svr' => 'application/x-world',
			'svr' => 'x-world/x-svr',
			'swf' => 'application/x-shockwave-flash',
			't' => 'application/x-troff',
			'talk' => 'text/x-speech',
			'tar' => 'application/x-tar',
			'tbk' => 'application/toolbook',
			'tbk' => 'application/x-tbook',
			'tcl' => 'application/x-tcl',
			'tcl' => 'text/x-script.tcl',
			'tcsh' => 'text/x-script.tcsh',
			'tex' => 'application/x-tex',
			'texi' => 'application/x-texinfo',
			'texinfo' =>' lication/x-texinfo',
			'text' => 'application/plain',
			'text' => 'text/plain',
			'tgz' => 'application/gnutar',
			'tgz' => 'application/x-compressed',
			'tif' => 'image/tiff',
			'tif' => 'image/x-tiff',
			'tiff' => 'image/tiff',
			'tiff' => 'image/x-tiff',
			'tr' => 'application/x-troff',
			'tsi' => 'audio/tsp-audio',
			'tsp' => 'application/dsptype',
			'tsp' => 'audio/tsplayer',
			'tsv' => 'text/tab-separated-values',
			'turbot' => 'image/florian',
			'txt' => 'text/plain',
			'uil' => 'text/x-uil',
			'uni' => 'text/uri-list',
			'unis' => 'text/uri-list',
			'unv' => 'application/i-deas',
			'uri' => 'text/uri-list',
			'uris' => 'text/uri-list',
			'ustar' => 'application/x-ustar',
			'ustar' => 'multipart/x-ustar',
			'uu' => 'application/octet-stream',
			'uu' => 'text/x-uuencode',
			'uue' => 'text/x-uuencode',
			'vcd' => 'application/x-cdlink',
			'vcs' => 'text/x-vcalendar',
			'vda' => 'application/vda',
			'vdo' => 'video/vdo',
			'vew' => 'application/groupwise',
			'viv' => 'video/vivo',
			'viv' => 'video/vnd.vivo',
			'vivo' => 'video/vivo',
			'vivo' => 'video/vnd.vivo',
			'vmd' => 'application/vocaltec-media-desc',
			'vmf' => 'application/vocaltec-media-file',
			'voc' => 'audio/voc',
			'voc' => 'audio/x-voc',
			'vos' => 'video/vosaic',
			'vox' => 'audio/voxware',
			'vqe' => 'audio/x-twinvq-plugin',
			'vqf' => 'audio/x-twinvq',
			'vql' => 'audio/x-twinvq-plugin',
			'vrml' => 'application/x-vrml',
			'vrml' => 'model/vrml',
			'vrml' => 'x-world/x-vrml',
			'vrt' => 'x-world/x-vrt',
			'vsd' => 'application/x-visio',
			'vst' => 'application/x-visio',
			'vsw' => 'application/x-visio',
			'w60' => 'application/wordperfect6.0',
			'w61' => 'application/wordperfect6.1',
			'w6w' => 'application/msword',
			'wav' => 'audio/wav',
			'wav' => 'audio/x-wav',
			'wb1' => 'application/x-qpro',
			'wbmp' => 'image/vnd.wap.wbmp',
			'web' => 'application/vnd.xara',
			'wiz' => 'application/msword',
			'wk1' => 'application/x-123',
			'wmf' => 'windows/metafile',
			'wml' => 'text/vnd.wap.wml',
			'wmlc' => 'application/vnd.wap.wmlc',
			'wmls' => 'text/vnd.wap.wmlscript',
			'wmlsc' => 'application/vnd.wap.wmlscriptc',
			'word' => 'application/msword',
			'wp' => 'application/wordperfect',
			'wp5' => 'application/wordperfect',
			'wp5' => 'application/wordperfect6.0',
			'wp6' => 'application/wordperfect',
			'wpd' => 'application/wordperfect',
			'wpd' => 'application/x-wpwin',
			'wq1' => 'application/x-lotus',
			'wri' => 'application/mswrite',
			'wri' => 'application/x-wri',
			'wrl' => 'application/x-world',
			'wrl' => 'model/vrml',
			'wrl' => 'x-world/x-vrml',
			'wrz' => 'model/vrml',
			'wrz' => 'x-world/x-vrml',
			'wsc' => 'text/scriplet',
			'wsrc' => 'application/x-wais-source',
			'wtk' => 'application/x-wintalk',
			'xbm' => 'image/x-xbitmap',
			'xbm' => 'image/x-xbm',
			'xbm' => 'image/xbm',
			'xdr' => 'video/x-amt-demorun',
			'xgz' => 'xgl/drawing',
			'xif' => 'image/vnd.xiff',
			'xl' => 'application/excel',
			'xla' => 'application/excel',
			'xla' => 'application/x-excel',
			'xla' => 'application/x-msexcel',
			'xlb' => 'application/excel',
			'xlb' => 'application/vnd.ms-excel',
			'xlb' => 'application/x-excel',
			'xlc' => 'application/excel',
			'xlc' => 'application/vnd.ms-excel',
			'xlc' => 'application/x-excel',
			'xld' => 'application/excel',
			'xld' => 'application/x-excel',
			'xlk' => 'application/excel',
			'xlk' => 'application/x-excel',
			'xll' => 'application/excel',
			'xll' => 'application/vnd.ms-excel',
			'xll' => 'application/x-excel',
			'xlm' => 'application/excel',
			'xlm' => 'application/vnd.ms-excel',
			'xlm' => 'application/x-excel',
			'xls' => 'application/excel',
			'xls' => 'application/vnd.ms-excel',
			'xls' => 'application/x-excel',
			'xls' => 'application/x-msexcel',
			'xlt' => 'application/excel',
			'xlt' => 'application/x-excel',
			'xlv' => 'application/excel',
			'xlv' => 'application/x-excel',
			'xlw' => 'application/excel',
			'xlw' => 'application/vnd.ms-excel',
			'xlw' => 'application/x-excel',
			'xlw' => 'application/x-msexcel',
			'xm' => 'audio/xm',
			'xml' => 'application/xml',
			'xml' => 'text/xml',
			'xmz' => 'xgl/movie',
			'xpix' => 'application/x-vnd.ls-xpix',
			'xpm' => 'image/x-xpixmap',
			'xpm' => 'image/xpm',
			'x-png' => 'image/png',
			'xsr' => 'video/x-amt-showrun',
			'xwd' => 'image/x-xwd',
			'xwd' => 'image/x-xwindowdump',
			'xyz' => 'chemical/x-pdb',
			'z' => 'application/x-compress',
			'z' => 'application/x-compressed',
			'zip' => 'application/x-compressed',
			'zip' => 'application/x-zip-compressed',
			'zip' => 'application/zip',
			'zip' => 'multipart/x-zip',
			'zoo' => 'application/octet-stream',
			'zsh' => 'text/x-script.zsh',
			'svg' => 'image/svg+xml',
			'eot' => 'application/vnd.ms-fontobject',
			'otf' => 'application/font-otf',
			'ttf' => 'application/font-ttf',
			'ttf' => 'application/x-font-ttf',
			'woff' => 'application/font-woff',
			'font' => 'font/opentype',
			'php' => 'text/php',
			'php' => 'text/x-php',
			'php' => 'application/php',
			'php' => 'application/x-php',
			'php' => 'application/x-httpd-php',
			'php' => 'application/x-httpd-php-source',
			'ogg' => 'audio/ogg',
			'acc' => 'audio/aac'
		);
    }
}
?>