<?php
if (!defined("giccos#template>readfile")){
    die(header('HTTP/1.0 404 Not Found'));
}
$allowExtTypes = array();
$getMimeTypes = $_tool->listExtMime();
foreach ($getMimeTypes as $keyMimeTypes => $valueMimeTypes) {
	$allowExtTypes[] = $keyMimeTypes;
}
$allowExtTypes = array_unique($allowExtTypes);
$extFileMime = explode("/", explode(";", $readFile['mime'])[0])[1];
if (!in_array($extFileMime, $allowExtTypes)) {
	if (isset($readFile['path']) && is_string($readFile['path'])) {
		$extFileInclude = pathinfo($readFile['path'], PATHINFO_EXTENSION);
		if (isset($extFileInclude) && is_string($extFileInclude) && preg_match("/^([a-zA-Z0-9]+)$/", $extFileInclude) && !in_array($extFileInclude, $allowExtTypes)) {
			shutdown();
		}
	}else {
		shutdown();
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
$fileSize = ob_get_length(); //. $fileSize = strlen($fileData);
$fileData = ob_get_contents();
ob_end_flush();
ob_end_clean();
$fileID = hash('crc32', hash('crc32', $fileData).'::'.$fileSize);
$fileToken = hash('crc32', $fileID);
if (isset($readFile['expire']) && intval($readFile['expire']) > 0) {
	$expireTime = intval($readFile['expire']);
}else {
	$expireTime = 60 * 60 * 24;
}
if (isset($readFile['time']) && is_numeric($readFile['time'])) {
	$lastChange = $readFile['time'];
}else {
	if (isset($readFile['path']) && file_exists($readFile['path'])) {
		$lastChange = filemtime($readFile['path']);
	}else {
		if (isset($_COOKIE['readfileCached']) && is_string($_COOKIE['readfileCached']) && in_array(strlen($_COOKIE['readfileCached']), [9, 10, 11, 12])) {
			$lastChange = $_COOKIE['readfileCached'];
		}
		if ((!isset($lastChange) || !is_numeric($lastChange))) {
			setcookie("readfileCached", $lastChange = time(), 0, $_tool->uri(), ($_tool->protocol() == "https" ? true : false));
		}
	}
}
//.
if (!isset($_SESSION["cache"]['readfile'])) {
	$_SESSION["cache"]['readfile'] = array();
}
$_SESSION["cache"]['readfile'][hash('crc32', $_tool->uri())] = array(
	"type" => $readFile['mime'], 
	"expire" => $expireTime,
	"modified" => $lastChange,
	"etag" => $fileID, 
	"length" => $fileSize,
);
//.
$headers = apache_request_headers();
header("Content-Type: ". $readFile['mime']);
header("Content-Length: ". $fileSize);
header("Cache-Control: max-age=". $expireTime);
header("Expires: ".gmdate('D, d M Y H:i:s', time() + $expireTime)." GMT");
header("Last-Modified: ".gmdate('D, d M Y H:i:s', $lastChange)." GMT");
header("ETag: ". $fileID);
$pageUpdated = !(isset($headers['If-Modified-Since']) && strtotime($headers['If-Modified-Since']) == $lastChange);
$checkID = (isset($headers['If-None-Match']) && strip_tags($headers['If-None-Match']) == $fileID);
if (!$pageUpdated && $checkID) {
	header("HTTP/1.1 304 Not Modified");
}else {
	header("HTTP/1.1 200 OK");
	print $fileData;
}
if (function_exists('shutdown')) {
	shutdown();
}else {
	die();
}
?>