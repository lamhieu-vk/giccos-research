<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class client {
	function __construct () {
		$GLOBALS["_client"] = $this;
		$this->class = $GLOBALS;
		$this->db = $this->class['_db']->port('beta');
	}
	function port () {
		$this->port = array(
			null, # 0.
			"", # 1.
			"feed", # 2.
			"status",  # 3.
			"hashtag", # 4.
			"groups", # 5.
			"wall", # 6.
			"friends", # 7.
			"messages", # 8.
			"notifications", # 9.
			"history", # 10.
			"settings", # 11.
			"accounts", # 12.
			"search", # 13.
			"photos", # 14.
			"videos", # 15.
			"music", #16
			"maps", #17
			"oops", #18
			"sites", #19
		);
		return $this->port;
	}
	function host () {
		return $_SERVER["HTTP_HOST"];
	}
	function self () {
		return $_SERVER["PHP_SELF"];
	}
	function query () {
		return $_SERVER["QUERY_STRING"];
	}
	function userhome () {
		return $_SERVER["REMOTE_HOST"];
	}
	function userPort () {
		return $_SERVER["REMOTE_PORT"];
	}
	function userIP () {
		$ip = $_SERVER["REMOTE_ADDR"];
		if ($ip == "127.0.0.1" || $ip == "::1") {
			return "113.170.45.132";
		}else {
			return $ip;
		}
	}
	function uri () {
		return $_SERVER["REQUEST_URI"];
	}
	function root () {
		return $_SERVER['DOCUMENT_ROOT'].'/giccos/';
	}
	function client ($value = false) {
		$id = hash('md5', $this->userIP().'::'.$this->browser()['platform'].'::'.$this->browser()['name']);
		if (!$value) {
			return $id;
		}else {
			return hash('crc32', $id);
		}
	}
	function browser () { 
		$u_agent = $_SERVER["HTTP_USER_AGENT"];
		$bname = "Unknown";
		$platform = "Unknown";
		$version = "";
		if (preg_match("/(linux)/i", $u_agent)) {
			$platform = "Linux";
		}else if (preg_match("/(macintosh|mac os x)/i", $u_agent)) {
			$platform = "Mac";
			if (preg_match("/macintosh/i", $u_agent)) { 
				$platform .= " OS X"; 
			}else if (preg_match("/mac_powerpc/i", $u_agent)) { 
				$platform .= " OS 9"; 
			}
		}else if (preg_match("/(windows|win32)/i", $u_agent)) {
			$platform = "Windows";
			if (preg_match("/NT 6.2/i", $u_agent)) { 
				$platform .= " 8"; 
			}else if (preg_match("/NT 6.3/i", $u_agent)) { 
				$platform .= " 8.1"; 
			}else if (preg_match("/NT 6.1/i", $u_agent)) { 
				$platform .= " 7"; 
			}else if (preg_match("/NT 6.0/i", $u_agent)) { 
				$platform .= " Vista"; 
			}else if (preg_match("/NT 5.1/i", $u_agent)) { 
				$platform .= " XP"; 
			}else if (preg_match("/NT 5.0/i", $u_agent)) { 
				$platform .= " 2000"; 
			}else if (preg_match("/ME/i", $u_agent)) { 
				$platform .= " ME"; 
			}else if (preg_match("/win98/i", $u_agent)) { 
				$platform .= " 98"; 
			}else if (preg_match("/win95/i", $u_agent)) { 
				$platform .= " 95"; 
			}else if (preg_match("/win16/i", $u_agent)) { 
				$platform .= " 3.11"; 
			}
        	if (preg_match('/WOW64/i', $u_agent) || preg_match('/x64/i', $u_agent)) { 
        		$platform .= " (x64)";
        	}
		}else if (preg_match("/(iphone|ipod|ipad)/i", $u_agent)) {
			$platform = "iOS";
		}else if (preg_match("/(android)/i", $u_agent)) {
			$platform = "Android";
		}else if (preg_match("/(blackberry)/i", $u_agent)) {
			$platform = "Blackberry";
		}else if (preg_match("/(webos)/i", $u_agent)) {
			$platform = "Mobile";
		}
		$isIE = false;
		if ((preg_match("/(msie)/i", $u_agent) && !preg_match("/(opr|opera)/i", $u_agent)) || preg_match("/(msie)/i", $u_agent) || preg_match("/(trident)/i", $u_agent)) {
			$bname = "Internet Explorer"; 
			$ub = "MSIE";
			$bkernel = "ms";
			if (preg_match("/(trident)/i", $u_agent)) {
				//$u_agent = preg_replace("/(trident)/i", "MSIE", $u_agent);
				$isIE = true;
			}
		}else if (preg_match("/(opr|opera)/i", $u_agent)) {
			$bname = "Opera";
			$ub = "Opera";
			$bkernel = "webkit";
			$u_agent = preg_replace("/(opr)/i", "Opera", $u_agent);
		}else if (preg_match("/(firefox)/i", $u_agent)) { 
			$bname = "Mozilla Firefox"; 
			$ub = "Firefox"; 
			$bkernel = "moz";
		}else if (preg_match("/(chrome)/i", $u_agent)) { 
			$bname = "Google Chrome"; 
			$ub = "Chrome"; 
			$bkernel = "webkit";
		}else if (preg_match("/(safari)/i", $u_agent)) { 
			$bname = "Apple Safari"; 
			$ub = "Safari";
			$bkernel = "webkit";
		}else if (preg_match("/(netscape)/i", $u_agent)) { 
			$bname = "Netscape"; 
			$ub = "Netscape"; 
			$bkernel = "";
		}else if (preg_match("/(maxthon)/i", $u_agent)) { 
			$bname = "Maxthon"; 
			$ub = "Maxthon"; 
			$bkernel = "";
		}else if (preg_match("/(konqueror)/i", $u_agent)) { 
			$bname = "Konqueror";
			$ub = "Konqueror"; 
			$bkernel = "";
		}else if (preg_match("/(mobile)/i", $u_agent)) { 
			$bname = "Handheld Browser"; 
			$ub = "Handheld Browser"; 
			$bkernel = "";
		}
		$known = array("Version", $ub, "other");
		$pattern = "#(?<browser>" . join("|", $known) . ")[/ ]+(?<version>[0-9.|a-zA-Z.]*)#";
		if (!preg_match_all($pattern, $u_agent, $matches)) {
			// we have no matching number just continue
		}
		$i = count($matches["browser"]);
		if ($i != 1) {
			if (!$isIE) {
				if (strripos($u_agent,"Version") < strripos($u_agent, $ub)){
					$version = $matches["version"][0];
				}else {
					$version = $matches["version"][1];
				}
			}else {
				preg_match_all("/(rv)\:([a-zA-Z0-9\.]+)/i", $u_agent, $matchesVersion);
				$version = $matchesVersion[2][0];
			}
		}else {
			if (!$isIE) {
				$version = $matches["version"][0];
			}else {
				preg_match_all("/(rv)\:([a-zA-Z0-9\.]+)/i", $u_agent, $matchesVersion);
				$version = $matchesVersion[2][0];
			}
		}
		if ($version == null || $version == "") {$version = "?";}
		$browser = array(
			"agent" => $u_agent, 
			"name" => $bname, 
			"version" => $version, 
			"platform" => $platform, 
			"pattern" => $pattern, 
			"kernel" => $bkernel,
			"ip" => $this->userIP()
		);
		foreach ($browser as $key => $browserValue) {
			if (is_string($browserValue)) {
				// $browser[$key] = strtolower($browserValue);
			}
		}
		return $browser;
	}
	function requestTime () {
		return $_SERVER["REQUEST_TIME"];
	}
	function logsClient ($object) {
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			$db = $this->db;
			$clientToken = $this->client(true);
			$getTokenRequest = "SELECT `id` FROM `logs_client` WHERE `token` = '{$clientToken}' LIMIT 1";
			$getTokenQuery = mysqli_query($db, $getTokenRequest);
			if (!$getTokenQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($getTokenQuery) == 0) {
					$getBrowser = $this->browser();
					$time = time();
					$ip = $getBrowser['ip'];
					$platform = $getBrowser['platform'];
					$browser = $getBrowser['name'];
					$browserKernel = $getBrowser['kernel'];
					$browserVersion = $getBrowser['version'];
					$agent = $getBrowser['agent'];
					$insertSql = "INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES (NULL, '{$time}', '{$clientToken}', '{$ip}', '{$platform}', '{$browser}', '{$browserKernel}', '{$browserVersion}', '{$agent}')";
					mysqli_query($db, $insertSql);
				}
				$clientId = $clientToken;
				return array("return" => true, "data" => array("id" => $clientId));
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function logsAjax () {
		return true;
	}
	function logsToken () {
		return true;
	}
	function getHTTP ($reset = false) {
		if ($reset == true || (!isset($_SESSION["client"]['http']) || !isset($_SESSION["client"]['http']['secure']))) {
			$_SESSION["client"]['http']['secure'] = false;
			return true;
		}
	}
	function token ($reset = false) {
		if ($reset == true || !isset($_SESSION["client"]['token'])) {
			$sID = $_COOKIE['gSID'];
			//.
			$token['client'] = md5('client::'.$sID);
			$token['robot'] = md5('robot::'.$sID);
			$token['ajax'] = md5('ajax::'.$sID);
			//.
			$token['source']['url'] = hash('crc32', md5($this->client().'::source::url'));
			$token['source']['css'] = hash('crc32', md5($this->client().'::source::css'));
			$token['source']['js'] = hash('crc32', md5($this->client().'::source::js'));
			$token['source']['xml'] = hash('crc32', md5($this->client().'::source::xml'));
			$token['source']['ajax'] = hash('crc32', md5($this->client().'::source::ajax'));
			$token['source']['font'] = hash('crc32', md5($this->client().'::source::font'));
			$token['source']['file'] = hash('crc32', md5($this->client().'::source::file'));
			/*
			$token['source']['url'] = hash('crc32', md5('source::url::'.$sID));
			$token['source']['css'] = hash('crc32', md5('source::css::'.$sID));
			$token['source']['js'] = hash('crc32', md5('source::js::'.$sID));
			$token['source']['xml'] = hash('crc32', md5('source::xml::'.$sID));
			$token['source']['ajax'] = hash('crc32', md5('source::ajax::'.$sID));
			$token['source']['font'] = hash('crc32', md5('source::font::'.$sID));
			$token['source']['file'] = hash('crc32', md5('source::file::'.$sID));
			*/
			//.
			$token['maps']['places'] = hash('crc32', md5('maps::places::'.$sID));
			//.
			$token['action']['key']['cookie'] = hash('crc32', md5('action::key::cookie::'.$sID));
			$token['action']['key']['obj'] = hash('crc32', md5('action::key::obj::'.$sID));
			$token['action']['accounts'] = hash('crc32', md5('action::accounts::'.$sID));
			$token['action']['user'] = hash('crc32', md5('action::user::'.$sID));
			$token['action']['feed'] = hash('crc32', md5('action::feed::'.$sID));
			$token['action']['sites'] = hash('crc32', md5('action::sites::'.$sID));
			$token['action']['maps'] = hash('crc32', md5('action::maps::'.$sID));
			$token['action']['photos'] = hash('crc32', md5('action::photos::'.$sID));
			$token['action']['music'] = hash('crc32', md5('action::music::'.$sID));
			$token['action']['videos'] = hash('crc32', md5('action::videos::'.$sID));
			$token['action']['cited'] = hash('crc32', md5('action::cited::'.$sID));
			$token['action']['messages'] = hash('crc32', md5('action::messages::'.$sID));
			$token['action']['explorer'] = hash('crc32', md5('action::explorer::'.$sID));
			$token['action']['ajaxify'] = hash('crc32', md5('action::ajaxify::'.$sID));
			$token['action']['wall'] = hash('crc32', md5('action::wall::'.$sID));
			//.
			$token['cache']['browser'] = hash('crc32', md5('cache::browser::'.$sID));
			$token['cache']['photos'] = hash('crc32', md5('cache::photos::'.$sID));
			$token['cache']['music'] = hash('crc32', md5('cache::music::'.$sID));
			$token['cache']['videos'] = hash('crc32', md5('cache::videos::'.$sID));
			$token['cache']['cited'] = hash('crc32', md5('cache::cited::'.$sID));
			//.
			$_SESSION["client"]['token'] = $token;
			$this->logsToken();
			return true;
		}
	}
}
?>