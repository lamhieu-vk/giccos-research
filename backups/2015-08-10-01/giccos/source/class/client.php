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
	function protocol () {
		return (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS']) == 'on' ? 'https' : 'http';
	}
	function fullurl () {
		return $this->protocol().'://'.$this->host().$this->uri();
	}
	function client ($value = false) {
		$browserInfo = $this->browser();
		$id = hash('md5', $browserInfo['ip'].'::'.$browserInfo['device'].'::'.$browserInfo['platform'].'::'.$browserInfo['name']);
		if (!$value) {
			return $id;
		}else {
			return hash('crc32', $id);
		}
	}
	function getDevice () {
		$u_agent = $_SERVER['HTTP_USER_AGENT'];
		$isTable = 0;
		$isMobile = 0;
		if (preg_match('/(tablet|ipad|playbook)|(android(?!.*(mobi|opera mini)))/i', strtolower($u_agent))) {
		    $isTable++;
		}
		if (preg_match('/(up.browser|up.link|mmp|symbian|smartphone|midp|wap|phone|android|iemobile)/i', strtolower($u_agent))) {
		    $isMobile++;
		}
		if ((strpos(strtolower($_SERVER['HTTP_ACCEPT']), 'application/vnd.wap.xhtml+xml') > 0) or ((isset($_SERVER['HTTP_X_WAP_PROFILE']) or isset($_SERVER['HTTP_PROFILE'])))) {
		    $isMobile++;
		}
		$mobile_ua = strtolower(substr($u_agent, 0, 4));
		$mobile_agents = array('w3c ','acs-','alav','alca','amoi','audi','avan','benq','bird','blac','blaz','brew','cell','cldc','cmd-','dang','doco','eric','hipt','inno','ipaq','java','jigs','kddi','keji','leno','lg-c','lg-d','lg-g','lge-','maui','maxo','midp','mits','mmef','mobi','mot-','moto','mwbp','nec-','newt','noki','palm','pana','pant','phil','play','port','prox','qwap','sage','sams','sany','sch-','sec-','send','seri','sgh-','shar','sie-','siem','smal','smar','sony','sph-','symb','t-mo','teli','tim-','tosh','tsm-','upg1','upsi','vk-v','voda','wap-','wapa','wapi','wapp','wapr','webc','winw','winw','xda ','xda-');
		if (in_array($mobile_ua, $mobile_agents)) {
		    $isMobile++;
		}
		if (strpos(strtolower($u_agent),'opera mini') > 0) {
		    $isMobile++;
		    $stock_ua = strtolower(isset($_SERVER['HTTP_X_OPERAMINI_PHONE_UA'])?$_SERVER['HTTP_X_OPERAMINI_PHONE_UA']:(isset($_SERVER['HTTP_DEVICE_STOCK_UA'])?$_SERVER['HTTP_DEVICE_STOCK_UA']:''));
		    if (preg_match('/(tablet|ipad|playbook)|(android(?!.*mobile))/i', $stock_ua)) {
		      $isTable++;
		    }
		}
		if ($isTable > 0) {
			return "table";
		}else if ($isMobile > 0) {
			return "mobile";
		}else {
			return "desktop";
		}
	}
	function browser () { 
		$u_agent = $_SERVER["HTTP_USER_AGENT"];
		$bname = "Unknown";
		$platform = "Unknown";
		$device = "Unknown";
		$version = "";
		$isTable = 0;
		$isMobile = 0;
		if (preg_match('/(tablet|ipad|playbook)|(android(?!.*(mobi|opera mini)))/i', strtolower($u_agent))) {
		    $isTable++;
		}
		if (preg_match('/(up.browser|up.link|mmp|symbian|smartphone|mobile|midp|wap|phone|android|iemobile|bb10)/i', strtolower($u_agent))) {
		    $isMobile++;
		}
		if ((strpos(strtolower($_SERVER['HTTP_ACCEPT']), 'application/vnd.wap.xhtml+xml') > 0) || ((isset($_SERVER['HTTP_X_WAP_PROFILE']) || isset($_SERVER['HTTP_PROFILE'])))) {
		    $isMobile++;
		}
		$mobile_ua = strtolower(substr($u_agent, 0, 4));
		$mobile_agents = array(
			'w3c ','acs-','alav','alca','amoi',
			'audi','avan','benq','bird','blac',
			'blaz','brew','cell','cldc','cmd-',
			'dang','doco','eric','hipt','inno',
			'ipaq','java','jigs','kddi','keji',
			'leno','lg-c','lg-d','lg-g','lge-',
			'maui','maxo','midp','mits','mmef',
			'mobi','mot-','moto','mwbp','nec-',
			'newt','noki','palm','pana','pant',
			'phil','play','port','prox','qwap',
			'sage','sams','sany','sch-','sec-',
			'send','seri','sgh-','shar','sie-',
			'siem','smal','smar','sony','sph-',
			'symb','t-mo','teli','tim-','tosh',
			'tsm-','upg1','upsi','vk-v','voda',
			'wap-','wapa','wapi','wapp','wapr',
			'webc','winw','winw','xda ','xda-'
		);
		if (in_array($mobile_ua, $mobile_agents)) {
		    $isMobile++;
		}
		if (strpos(strtolower($u_agent), 'opera mini') > 0) {
		    $isMobile++;
		    $stock_ua = strtolower(isset($_SERVER['HTTP_X_OPERAMINI_PHONE_UA'])?$_SERVER['HTTP_X_OPERAMINI_PHONE_UA']:(isset($_SERVER['HTTP_DEVICE_STOCK_UA'])?$_SERVER['HTTP_DEVICE_STOCK_UA']:''));
		    if (preg_match('/(tablet|ipad|playbook)|(android(?!.*mobile))/i', $stock_ua)) {
		      $isTable++;
		    }
		}
		if ($isTable > 0) {
			$device = "table";
		}else if ($isMobile > 0) {
			$device = "mobile";
		}else {
			$device = "desktop";
		}
		if (preg_match("/(iphone|ipod|ipad)/i", $u_agent) && in_array($device, ["mobile", "table"])) {
			$platform = "iOS";
			if (preg_match("/(os)\s(([0-9]{1})\_([0-9\.]+)(\_([0-9\.]+)))/i", $u_agent, $matchOSVer)) { 
				$platform .= " ".str_replace("_", ".", $matchOSVer[2]); 
			}
		}else if (preg_match("/(android)/i", $u_agent) && in_array($device, ["mobile", "table"])) {
			$platform = "Android";
			if (preg_match("/(android)\s([0-9\.]+)/i", $u_agent, $matchOSVer)) { 
				$platform .= " ".str_replace("_", ".", $matchOSVer[2]); 
			}
		}else if (preg_match("/(windows phone)/i", $u_agent) && in_array($device, ["mobile", "table"])) {
			$platform = "Windows Phone";
			if (preg_match("/(windows phone)\s([0-9\.]+)/i", $u_agent, $matchOSVer)) { 
				$platform .= " ".str_replace("_", ".", $matchOSVer[2]); 
			}
		}else if (preg_match("/(blackberry|bb10|playbook|rim)/i", $u_agent) && in_array($device, ["mobile", "table"])) {
			$platform = "Blackberry";
		}else if (preg_match("/(webos)/i", $u_agent) && in_array($device, ["mobile", "table"])) {
			$platform = "WebOS";
		}else if (preg_match("/(meego)/i", $u_agent) && in_array($device, ["mobile", "table"])) {
			$platform = "MeeGo";
		}else if (preg_match("/(linux)/i", $u_agent) && in_array($device, ["desktop"])) {
			$platform = "Linux";
			if (preg_match("/(sunos)/i", $u_agent)) {
				$platform = "Sun OS";
			}else if (preg_match("/(openbsd)/i", $u_agent)) {
				$platform = "Open BSD";
			}else if (preg_match("/(beos)/i", $u_agent)) {
				$platform = "BeOS";
			}else if (preg_match("/(ubuntu)/i", $u_agent)) {
				$platform = "Ubuntu";
			}
		}else if (preg_match("/(macintosh|mac os x)/i", $u_agent) && in_array($device, ["desktop"])) {
			$platform = "Mac";
			if (preg_match("/macintosh/i", $u_agent)) { 
				$platform .= " OS X"; 
			}else if (preg_match("/mac_powerpc/i", $u_agent)) { 
				$platform .= " OS 9"; 
			}
		}else if (preg_match("/(windows|win32)/i", $u_agent) && in_array($device, ["desktop"])) {
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
        	}else if (preg_match('/WOW86/i', $u_agent) || preg_match('/x86/i', $u_agent)) { 
        		$platform .= " (x86)";
        	}
		}
		$isIE = false;
		if ((preg_match("/(msie)/i", $u_agent) && !preg_match("/(opr|opera)/i", $u_agent)) || preg_match("/(msie)/i", $u_agent) || preg_match("/(trident)/i", $u_agent) && in_array($device, ["mobile", "table", "desktop"])) {
			if (preg_match("/(iemobile)/i", $u_agent)) {
				$bname = "Internet Explorer";
				$ub = "MSIE";
				$bkernel = "trident";
			}else {
				$bname = "Internet Explorer"; 
				$ub = "MSIE";
				$bkernel = "trident";
				if (preg_match("/(trident)/i", $u_agent)) {
					//$u_agent = preg_replace("/(trident)/i", "MSIE", $u_agent);
					$isIE = true;
				}
			}
		}else if (preg_match("/(edge)/i", $u_agent) && in_array($device, ["mobile", "tablet", "desktop"])) { 
			$bname = "Microsoft Edge"; 
			$ub = "Microsoft Edge"; 
			$bkernel = "edgehtml";
		}else if (preg_match("/(mxnitro)/i", $u_agent) && in_array($device, ["desktop"])) { 
			$bname = "MxNitro"; 
			$ub = "MxNitro"; 
			$bkernel = "blink";
		}else if (preg_match("/(ucbrowser)/i", $u_agent) && in_array($device, ["mobile", "table"])) { 
			$bname = "UC Browser"; 
			$ub = "UC Browser"; 
			$bkernel = "webkit";
		}else if (preg_match("/(blackBerry|playbook|bb10)/i", $u_agent) && in_array($device, ["mobile", "table"])) { 
			$bname = "BlackBerry Browser"; 
			$ub = "BlackBerry Browser"; 
			$bkernel = "mango/webkit";
		}else if (preg_match("/(kindle)/i", $u_agent) && in_array($device, ["mobile", "table"])) { 
			$bname = "Kindle Browser"; 
			$ub = "Kindle Browser"; 
			$bkernel = "netfront/webkit";
		}else if (preg_match("/(nokiabrowser)/i", $u_agent)&& in_array($device, ["mobile", "table"])) { 
			$bname = "Nokia Browser"; 
			$ub = "NokiaBrowser"; 
			$bkernel = "webkit";
		}else if (preg_match("/(yabrowser)/i", $u_agent)&& in_array($device, ["mobile", "table"])) { 
			$bname = "Yandex Browser"; 
			$ub = "Yandex.Browser"; 
			$bkernel = "webkit";
		}else if (preg_match("/(coc_coc)/i", $u_agent) && in_array($device, ["desktop"])) { 
			$bname = "Coc Coc"; 
			$ub = "Coc Coc"; 
			$bkernel = "blink";
		}else if (preg_match("/(corom)/i", $u_agent) && in_array($device, ["desktop"])) { 
			$bname = "CoRom"; 
			$ub = "CoRom"; 
			$bkernel = "webkit";
		}else if (preg_match("/(dolfin)/i", $u_agent) && in_array($device, ["mobile", "table"])) { 
			$bname = "Dolphin Browser"; 
			$ub = "Dolphin";
			$bkernel = "webkit";
		}else if (preg_match("/(netscape)/i", $u_agent) && in_array($device, ["mobile", "table", "desktop"])) { 
			$bname = "Netscape"; 
			$ub = "Netscape"; 
			$bkernel = "gecko";
		}else if (preg_match("/(maxthon)/i", $u_agent) && in_array($device, ["mobile", "table"])) { 
			$bname = "Maxthon"; 
			$ub = "Maxthon"; 
			$bkernel = "webkit/trident/blink";
		}else if (preg_match("/(konqueror)/i", $u_agent) && in_array($device, ["desktop"])) { 
			$bname = "Konqueror";
			$ub = "Konqueror"; 
			$bkernel = "khtml";
		}else if (preg_match("/(opr|opera)/i", $u_agent) && in_array($device, ["mobile", "table", "desktop"])) {
			$bname = "Opera";
			$ub = "Opera";
			if (preg_match("/(opera mini)/i", $u_agent)) {
				$bkernel = "presto";
			}else {
				$bkernel = "blink";
			}
			$u_agent = preg_replace("/(opr)/i", "Opera", $u_agent);
		}else if (preg_match("/(chromium)/i", $u_agent) && in_array($device, ["desktop"])) { 
			$bname = "Google Chromium"; 
			$ub = "Chromium"; 
			$bkernel = "";
		}else if (preg_match("/(firefox)/i", $u_agent) && in_array($device, ["mobile", "table", "desktop"])) { 
			$bname = "Mozilla Firefox"; 
			$ub = "Firefox"; 
			$bkernel = "gecko";
		}else if (preg_match("/(chrome)/i", $u_agent) && in_array($device, ["mobile", "table", "desktop"])) { 
			$bname = "Google Chrome"; 
			$ub = "Chrome"; 
			$bkernel = "blink";
		}else if (preg_match("/(android)/i", $u_agent) && in_array($device, ["mobile", "table"])) { 
			$bname = "Android Browser"; 
			$ub = "Android Browser"; 
			$bkernel = "webkit";
		}else if (preg_match("/(safari)/i", $u_agent) && in_array($device, ["mobile", "table", "desktop"])) { 
			$bname = "Apple Safari"; 
			$ub = "Safari";
			$bkernel = "webkit";
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
		if ($version == null || $version == "") {
			$version = "?";
		}
		$browser = array(
			"agent" => $u_agent, 
			"name" => $bname, 
			"version" => $version, 
			"platform" => $platform, 
			"pattern" => $pattern, 
			"kernel" => $bkernel,
			"ip" => $this->userIP(),
			"device" => $device
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
					$device = $getBrowser['device'];
					$insertSql = "INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `device`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES (NULL, '{$time}', '{$clientToken}', '{$ip}', '{$device}', '{$platform}', '{$browser}', '{$browserKernel}', '{$browserVersion}', '{$agent}')";
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