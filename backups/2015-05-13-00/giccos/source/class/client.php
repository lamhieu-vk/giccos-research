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
		$id = $this->userIP().'::'.$this->browser()['platform'].'_'.$this->browser()['name'];
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
	function cientId () {
		$db = $this->db;
		$token = $this->client(true);
		$sql = "SELECT `id` FROM `logs_client` WHERE `token` = '{$token}' LIMIT 1";
		$query = mysqli_query($db, $sql);
		if (mysqli_num_rows($query) == 0) {
			$getBrowser = $this->browser();
			$time = time();
			$ip = $getBrowser['ip'];
			$platform = $getBrowser['platform'];
			$browser = $getBrowser['name'];
			$browserKernel = $getBrowser['kernel'];
			$browserVersion = $getBrowser['version'];
			$agent = $getBrowser['agent'];
			$insertSql = "INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES (NULL, '{$time}', '{$token}', '{$ip}', '{$platform}', '{$browser}', '{$browserKernel}', '{$browserVersion}', '{$agent}')";
			mysqli_query($db, $insertSql);
		}
		$clientId = $token;
		return $clientId;
	}
}
?>