<?php
$getMimeTypes = $_tool->mime_types();
$readFilePhotos = ["image/jpg", "image/png", "image/gif", "image/jpeg", "application/octet-stream"];
$readFileVideos = ["video/mp4", "video/flv", "video/avi", "video/x-ms-wmv", "application/octet-stream"];
$readFileAudios = ["audio/mpeg", "audio/mp3", "application/octet-stream"];
$readFileFonts = ["image/svg+xml", "application/x-font-ttf", "application/x-font-opentype", "application/font-woff", "application/vnd.ms-fontobject", "font/opentype", "application/octet-stream"];
$readFileJs = ["text/javascript", "text/javascript; charset: utf-8", "application/octet-stream", "application/octet-stream; charset: utf-8"];
$readFileCss = ["text/css", "text/css; charset: utf-8", "application/octet-stream", "application/octet-stream; charset: utf-8"];
$readFileJson = ["application/json", "application/json; charset: utf-8", "application/octet-stream", "application/octet-stream; charset: uft-8"];
$readFileAll = array();
foreach ($getMimeTypes as $mime_types_value) {
	$readFileAll[] = $mime_types_value;
}
$readFile['mime_type'] = explode(";", $readFile['mime'])[0];
ob_start();
if (in_array($readFile['mime_type'], $readFilePhotos)) {
	if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
		$getFileContent = $_tool->curl($readFile['path']);
		if (isset($getFileContent['return'], $getFileContent['data']) && $getFileContent['return'] == true && is_string($getFileContent['data'])) {
			print $getFileContent['data'];
		}else {
			//.
		}
	}else {
		readfile($readFile['path']);
	}
}else if (in_array($readFile['mime_type'], $readFileVideos) || in_array($readFile['mime_type'], $readFileAudios)) {
	$fp = fopen($readFile['path'], "rb");
	$size = filesize($readFile['path']);
	$length = $size;
	$start = 0;
	$end = $size - 1;
	header("Content-type: {$readFile['mime_type']}");
	header("Accept-Ranges: 0-{$length}");
	header("Accept-Ranges: bytes");
	if (isset($_SERVER['HTTP_RANGE'])) {
	    $c_start = $start;
	    $c_end   = $end;
	    list(, $range) = explode("=", $_SERVER['HTTP_RANGE'], 2);
	    if (strpos($range, ",") !== false) {
	        header("HTTP/1.1 416 Requested Range Not Satisfiable");
	        header("Content-Range: bytes {$start}-{$end}/{$size}");
	        exit();
	    }
	    if ($range == "-") {
	        $c_start = $size - substr($range, 1);
	    }else{
	        $range  = explode("-", $range);
	        $c_start = $range[0];
	        $c_end   = (isset($range[1]) && is_numeric($range[1])) ? $range[1] : $size;
	    }
	    $c_end = ($c_end > $end) ? $end : $c_end;
	    if ($c_start > $c_end || $c_start > $size - 1 || $c_end >= $size) {
	        header("HTTP/1.1 416 Requested Range Not Satisfiable");
	        header("Content-Range: bytes {$start}-{$end}/{$size}");
	        exit();
	    }
	    $start  = $c_start;
	    $end    = $c_end;
	    $length = $end - $start + 1;
	    fseek($fp, $start);
	    header('HTTP/1.1 206 Partial Content');
	}
	header("Content-Range: bytes {$start}-{$end}/{$size}");
	header("Content-Length: {$length}");
	$buffer = 1024 * 8;
	while(!feof($fp) && ($p = ftell($fp)) <= $end) {
	    if ($p + $buffer > $end) {
	        $buffer = $end - $p + 1;
	    }
	    set_time_limit(0);
	    print fread($fp, $buffer);
	    flush();
	}
	fclose($fp);
	exit();
}else if (in_array($readFile['mime_type'], $readFileFonts)) {
	readfile($readFile['path']);
}else if (in_array($readFile['mime_type'], $readFileJs)) {
	include($readFile['path']);
}else if (in_array($readFile['mime_type'], $readFileCss)) {
	include($readFile['path']);
}else if (in_array($readFile['mime_type'], $readFileJson)) {
	include($readFile['path']);
}else if (in_array($readFile['mime_type'], $readFileAll)) {
	if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
		$getFileContent = $_tool->curl($readFile['path']);
		if (isset($getFileContent['return'], $getFileContent['data']) && $getFileContent['return'] == true && is_string($getFileContent['data'])) {
			print $getFileContent['data'];
		}else {
			//.
		}
	}else {
		readfile($readFile['path']);
	}
}else {
	exit();
}
$fileData = ob_get_contents();
ob_end_clean();
$fileSize = strlen($fileData);
$fileID = hash('md5', hash('crc32', $fileData).'::'.$fileSize);
$fileToken = hash('crc32', $fileID);
if (isset($readFile['expire']) && intval($readFile['expire']) > 0) {
	$expireTime = intval($readFile['expire']);
}else {
	$expireTime = $_parameter->get('http_cache_expire');
}
if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
	/*
	if (isset($_COOKIE['gReadfile'])) {
		$readfileCached = $_COOKIE['gReadfile'];
	}
	if (!isset($readfileCached) || !is_string($readfileCached)) {
		$readfileCached = array();
	}else {
		$readfileCached = unserialize($_tool->hash('decode', $readfileCached, $_parameter->get('hash_cache_readfile')));
		foreach ($readfileCached as $thisToken => $thisTime) {
			if (!isset($thisTime) || !is_numeric($thisTime)) {
				unset($readfileCached[$thisToken]);
				continue;
			}
			if (isset($thisToken, $thisTime) && $thisToken == $fileToken) {
				$lastChange = $thisTime;
			}
		}
	}
	if ((!isset($lastChange) || !is_numeric($lastChange))) {
		$readfileCached[$fileToken] = $lastChange = time();
		$readfileCached = $_tool->hash('encode', serialize($readfileCached), $_parameter->get('hash_cache_readfile'));
		setcookie("gReadfile", $readfileCached, 0, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
	}
	*/
	function hashString ($type, $data) {
		return $data;
		if ($type == "encode") {
			$data = preg_replace("/(1)/", 'q', $data);
			$data = preg_replace("/(3)/", 'e', $data);
			$data = preg_replace("/(5)/", 't', $data);
			$data = preg_replace("/(7)/", 'u', $data);
			$data = preg_replace("/(9)/", 'o', $data);
		}else if ($type == "decode") {
			$data = preg_replace("/(q)/", '1', $data);
			$data = preg_replace("/(e)/", '3', $data);
			$data = preg_replace("/(t)/", '5', $data);
			$data = preg_replace("/(u)/", '7', $data);
			$data = preg_replace("/(o)/", '9', $data);
		}
		return $data;
	}
	if (isset($_COOKIE['gReadfile']) && is_string($_COOKIE['gReadfile']) && in_array(strlen($_COOKIE['gReadfile']), [9, 10, 11, 12])) {
		$lastChange = hashString("decode", $_COOKIE['gReadfile']);
	}
	if ((!isset($lastChange) || !is_numeric($lastChange))) {
		setcookie("gReadfile", hashString("encode", $lastChange = time()), 0, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
	}
}else {
	$lastChange = filemtime($readFile['path']);
}
$headers = apache_request_headers();
header("Content-Type: ".$readFile['mime']);
header("Cache-Control: max-age=".$expireTime);
header("Expires: ".gmdate('D, d M Y H:i:s', time() + $expireTime)." GMT");
header("Last-Modified: ".gmdate('D, d M Y H:i:s', $lastChange)." GMT");
header("ETag: ".$fileID);
$pageUpdated = !(isset($headers['If-Modified-Since']) && strtotime($headers['If-Modified-Since']) == $lastChange);
$checkID = (isset($headers['If-None-Match']) && strip_tags($headers['If-None-Match']) == $fileID);
if (!$pageUpdated && $checkID) {
	header("HTTP/1.1 304 Not Modified");
	header("Connection: close");
	die();
}else {
	header("HTTP/1.1 200 OK");
	header("Content-Length: ".$fileSize);
	if (in_array($readFile['mime_type'], $readFilePhotos)) {
		if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
			$getFileContent = $_tool->curl($readFile['path']);
			if (isset($getFileContent['return'], $getFileContent['data']) && $getFileContent['return'] == true && is_string($getFileContent['data'])) {
				print $getFileContent['data'];
			}else {
				//.
			}
		}else {
			readfile($readFile['path']);
		}
	}else if (in_array($readFile['mime_type'], $readFileVideos)) {
		$fp = fopen($readFile['path'], "rb");
		$size = filesize($readFile['path']);
		$length = $size;
		$start = 0;
		$end = $size - 1;
		header("Content-type: {$readFile['mime_type']}");
		header("Accept-Ranges: 0-{$length}");
		header("Accept-Ranges: bytes");
		if (isset($_SERVER['HTTP_RANGE'])) {
		    $c_start = $start;
		    $c_end   = $end;
		    list(, $range) = explode("=", $_SERVER['HTTP_RANGE'], 2);
		    if (strpos($range, ",") !== false) {
		        header("HTTP/1.1 416 Requested Range Not Satisfiable");
		        header("Content-Range: bytes {$start}-{$end}/{$size}");
		        exit();
		    }
		    if ($range == "-") {
		        $c_start = $size - substr($range, 1);
		    }else{
		        $range  = explode("-", $range);
		        $c_start = $range[0];
		        $c_end   = (isset($range[1]) && is_numeric($range[1])) ? $range[1] : $size;
		    }
		    $c_end = ($c_end > $end) ? $end : $c_end;
		    if ($c_start > $c_end || $c_start > $size - 1 || $c_end >= $size) {
		        header("HTTP/1.1 416 Requested Range Not Satisfiable");
		        header("Content-Range: bytes {$start}-{$end}/{$size}");
		        exit();
		    }
		    $start  = $c_start;
		    $end    = $c_end;
		    $length = $end - $start + 1;
		    fseek($fp, $start);
		    header('HTTP/1.1 206 Partial Content');
		}
		header("Content-Range: bytes {$start}-{$end}/{$size}");
		header("Content-Length: {$length}");
		$buffer = 1024 * 8;
		while(!feof($fp) && ($p = ftell($fp)) <= $end) {
		    if ($p + $buffer > $end) {
		        $buffer = $end - $p + 1;
		    }
		    set_time_limit(0);
		    print fread($fp, $buffer);
		    flush();
		}
		fclose($fp);
	}else if (in_array($readFile['mime_type'], $readFileFonts)) {
		readfile($readFile['path']);
	}else if (in_array($readFile['mime_type'], $readFileJs)) {
		include($readFile['path']);
	}else if (in_array($readFile['mime_type'], $readFileCss)) {
		include($readFile['path']);
	}else if (in_array($readFile['mime_type'], $readFileJson)) {
		include($readFile['path']);
	}else if (in_array($readFile['mime_type'], $readFileAll)) {
		if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
			$getFileContent = $_tool->curl($readFile['path']);
			if (isset($getFileContent['return'], $getFileContent['data']) && $getFileContent['return'] == true && is_string($getFileContent['data'])) {
				print $getFileContent['data'];
			}else {
				//.
			}
		}else {
			readfile($readFile['path']);
		}
	}
	die();
}
?>