<?php
$allowExtTypes = array();
$getMimeTypes = $_tool->mime_types();
foreach ($getMimeTypes as $keyMimeTypes => $valueMimeTypes) {
	$allowExtTypes[] = $keyMimeTypes;
}
$allowExtTypes = array_unique($allowExtTypes);
$extFileMime = explode("/", explode(";", $readFile['mime'])[0])[1];
if (!in_array($extFileMime, $allowExtTypes)) {
	if (isset($readFile['path']) && is_string($readFile['path'])) {
		$extFileInclude = pathinfo($readFile['path'], PATHINFO_EXTENSION);
		if (isset($extFileInclude) && is_string($extFileInclude) && preg_match("/^([a-zA-Z0-9]+)$/", $extFileInclude) && !in_array($extFileInclude, $allowExtTypes)) {
			die();
		}
	}else {
		die();
	}
}
ob_start();
if (isset($readFile['type']) && $readFile['type'] == "include") {
	if (isset($readFile['path']) && is_string($readFile['path'])) {
		if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
			$getFileContent = $_tool->curl($readFile['path']);
			if (isset($getFileContent['return'], $getFileContent['data']) && $getFileContent['return'] == true && is_string($getFileContent['data'])) {
				include($getFileContent['data']);
			}
		}else {
			include($readFile['path']);
		}
	}else if (isset($readFile['content']) && is_string($readFile['content'])) {
		include($readFile['content']);
	}
}else if (isset($readFile['type']) && $readFile['type'] == "media") {
	if (isset($readFile['path']) && is_string($readFile['path'])) {
		$fp = fopen($readFile['path'], "rb");
		$size = filesize($readFile['path']);
		$length = $size;
		$start = 0;
		$end = $size - 1;
		header("Content-type: {$readFile['mime']}");
		header("Accept-Ranges: 0-{$length}");
		header("Accept-Ranges: bytes");
		if (isset($_SERVER['HTTP_RANGE'])) {
		    $c_start = $start;
		    $c_end = $end;
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
		    header("HTTP/1.1 206 Partial Content");
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
		exit;
	}else if (isset($readFile['content']) && is_string($readFile['content'])) {
		if ($_tool->isBase64($readFile['content'])) {
			$readFile['content'] = base64_decode($readFile['content']);
		}
		$fileContent = $readFile['content'];
		$size = strlen($fileContent);
		$length = $size;
		$start = 0;
		$end = $size - 1;
		header("Content-type: {$readFile['mime']}");
		header("Accept-Ranges: 0-{$length}");
		header("Accept-Ranges: bytes");
		if (isset($_SERVER['HTTP_RANGE'])) {
			$c_start = $start;
		    $c_end = $end;
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
		    $start = $c_start;
		    $end = $c_end;
		    $length = $end - $start + 1;
		    header("HTTP/1.1 206 Partial Content");
		}
		header("Content-Range: bytes {$start}-{$end}/{$size}");
		header("Content-Length: {$length}");
		$bit = $start;
		while($bit < $length) {
			print $fileContent[$bit];
		    flush();
		    $bit++;
		}
		exit;
	}
}else if (isset($readFile['type']) && $readFile['type'] == "other") {
	if (isset($readFile['path']) && is_string($readFile['path'])) {
		if (!file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path'])) {
			$getFileContent = $_tool->curl($readFile['path']);
			if (isset($getFileContent['return'], $getFileContent['data']) && $getFileContent['return'] == true && is_string($getFileContent['data'])) {
				print $getFileContent['data'];
			}
		}else {
			$fileContent = fopen($readFile['path'], 'r');
			print fread($fileContent, filesize($readFile['path']));
			fclose($fileContent);
		}
	}else if (isset($readFile['content']) && is_string($readFile['content'])) {
		print $readFile['content'];
	}
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
if (isset($readFile['time']) && is_numeric($readFile['time'])) {
	$lastChange = $readFile['time'];
}else {
	if (isset($readFile['path']) && file_exists($readFile['path'])) {
		$lastChange = filemtime($readFile['path']);
	}else if (isset($readFile['content']) || !isset($readFile['path']) || (isset($readFile['path']) && !file_exists($readFile['path']) && preg_match("/^(http|https|ftp|ftps)/i", $readFile['path']))) {
		function hashString ($type, $data) {
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
	}
}
$headers = apache_request_headers();
header("Content-Type: ". $readFile['mime']);
header("Cache-Control: max-age=". $expireTime);
header("Expires: ".gmdate('D, d M Y H:i:s', time() + $expireTime)." GMT");
header("Last-Modified: ".gmdate('D, d M Y H:i:s', $lastChange)." GMT");
header("ETag: ". $fileID);
$pageUpdated = !(isset($headers['If-Modified-Since']) && strtotime($headers['If-Modified-Since']) == $lastChange);
$checkID = (isset($headers['If-None-Match']) && strip_tags($headers['If-None-Match']) == $fileID);
if (!$pageUpdated && $checkID) {
	header("HTTP/1.1 304 Not Modified");
	header("Connection: close");
}else {
	header("HTTP/1.1 200 OK");
	header("Content-Length: ". $fileSize);
	print $fileData;
	if (!isset($_SESSION["cache"]['page'])) {
		$_SESSION["cache"]['page'] = array();
	}
	$pageCachedArr = array(
		"type" => $readFile['mime'], 
		"expire" => $expireTime,
		"modified" => $lastChange,
		"etag" => $fileID, 
		"length" => $fileSize
	);
	$_SESSION["cache"]['page'][hash('crc32', $_client->fullurl())] = $pageCachedArr;
}
die();
?>