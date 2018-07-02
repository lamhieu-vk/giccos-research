<?php
// mysqldump -u [uname] -p[pass] db_name > db_backup.sql

# Config.
@define("giccos#config", true);
require_once ("config.php");
# Setup.
@define("giccos#template>readfile", true);
@define("giccos#template>returnpage", true);
# Encoding.
if (isset($_SERVER['HTTP_ACCEPT_ENCODING']) && substr_count($_SERVER['HTTP_ACCEPT_ENCODING'], "gzip")) {
	ob_start("ob_gzhandler");
}else {
	ob_start();
}
# Function.
function shutdown ($messages = null) {
	$_tool = $GLOBALS['_tool'];
	//.
	return $_tool->shutdown($messages);
}
function cache () {
	//.
}
# Index allow.
$indexAllowNull = [""];
$indexAllowBlank = ["blank"];
$indexAllowSource = [hash('crc32', $_tool->hash('encode', 'source::url', $_tool->client()['id']))];
$indexAllowAccount = ["account", "accounts"];
$indexAllowImage = ["image", "images"];
$indexAllowTotal = array_merge($indexAllowNull, $indexAllowBlank, $indexAllowSource, $indexAllowAccount, $indexAllowImage);
# Each query.
$uriQueryArr = array();
$uriQueryRaw = array_filter(explode("/", $_SERVER['REQUEST_URI']));
foreach ($uriQueryRaw as $uriQueryRawId => $uriQueryRawValue) {
	if ($uriQueryRawId <= 1) {
		continue;
	}
	$uriQueryArr[] = $uriQueryRawValue;
}
// $uriQueryArr[0] = isset($uriQueryArr[0]) ? $uriQueryArr[0] : null;
if (!isset($uriQueryArr[0]) || !in_array(strtolower($uriQueryArr[0]), $indexAllowTotal)) {
	shutdown(print "error#index>notallow");
}else if (in_array(strtolower($uriQueryArr[0]), $indexAllowNull)) {
	// port: null.
}else if (in_array(strtolower($uriQueryArr[0]), $indexAllowBlank)) {
	// port: blank.
	shutdown(require_once("source/index/blank.php"));
}else if (in_array(strtolower($uriQueryArr[0]), $indexAllowSource)) {
	// port: source.
	$sourceAllowCss = [hash('crc32', $_tool->hash('encode', 'source::css', $_tool->client()['id']))];
	$sourceAllowJs = [hash('crc32', $_tool->hash('encode', 'source::js', $_tool->client()['id']))];
	$sourceAllowXml = [hash('crc32', $_tool->hash('encode', 'source::xml', $_tool->client()['id']))];
	$sourceAllowFont = [hash('crc32', $_tool->hash('encode', 'source::font', $_tool->client()['id']))];
	$sourceAllowAjax = [hash('crc32', $_tool->hash('encode', 'source::ajax', $_tool->client()['id']))];
	$sourceAllowTotal = array_merge($sourceAllowCss, $sourceAllowJs, $sourceAllowXml, $sourceAllowFont, $sourceAllowAjax);
	if (!isset($uriQueryArr[1]) || !in_array(strtolower($uriQueryArr[1]), $sourceAllowTotal)) {
		shutdown(print "error#index>portnotfound");
	}else if (in_array(strtolower($uriQueryArr[1]), $sourceAllowCss)) {
		$sourceFilePath = null;
		for ($i = 2; $i < count($uriQueryArr); $i++ ) {
			$sourceFilePath = $sourceFilePath == null ? $uriQueryArr[$i] : $sourceFilePath.'/'.$uriQueryArr[$i];
		}
		$sourceFileReload = preg_match("/(\.css)(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
		$sourceFilePath = preg_replace("/((\.css)([\S]+)?)$/", "", $_tool->root().'/source/css/'.$sourceFilePath).'.php';
		if (file_exists($sourceFilePath)) {
			$readFile = array(
				"type" => "include", 
				"path" => $sourceFilePath,
				"mime" => "text/css",
				"expire" => (60 * 60 * 24)
			);
			shutdown(require_once("source/template/readfile.php"));
		}else {
			shutdown(header("HTTP/1.1 503 Service Unavailable"));
		}
	}else if (in_array(strtolower($uriQueryArr[1]), $sourceAllowJs)) {
		$sourceFilePath = null;
		for ($i = 2; $i < count($uriQueryArr); $i++ ) {
			$sourceFilePath = $sourceFilePath == null ? $uriQueryArr[$i] : $sourceFilePath.'/'.$uriQueryArr[$i];
		}
		$sourceFileReload = preg_match("/(\.js)(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
		$sourceFilePath = preg_replace("/((\.js)([\S]+)?)$/", "", $_tool->root().'/source/js/'.$sourceFilePath).'.php';
		if (file_exists($sourceFilePath)) {
			$readFile = array(
				"type" => "include", 
				"path" => $sourceFilePath,
				"mime" => "text/js",
				"expire" => (60 * 60 * 24)
			);
			shutdown(require_once("source/template/readfile.php"));
		}else {
			shutdown(header("HTTP/1.1 503 Service Unavailable"));
		}
	}else if (in_array(strtolower($uriQueryArr[1]), $sourceAllowAjax)) {
		$sourceFilePath = null;
		for ($i = 2; $i < count($uriQueryArr); $i++ ) {
			$sourceFilePath = $sourceFilePath == null ? $uriQueryArr[$i] : $sourceFilePath.'/'.$uriQueryArr[$i];
		}
		$sourceFileReload = preg_match("/(\.ajax)(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
		$sourceFilePath = preg_replace("/((\.ajax)([\S]+)?)$/", "", $_tool->root().'/source/ajax/'.$sourceFilePath).'.php';
		if (file_exists($sourceFilePath)) {
			$readFile = array(
				"type" => "include", 
				"path" => $sourceFilePath,
				"mime" => "text/json",
				"expire" => (60 * 60 * 24)
			);
			shutdown(require_once("source/template/readfile.php"));
		}else {
			shutdown(header("HTTP/1.1 503 Service Unavailable"));
		}
	}else if (in_array(strtolower($uriQueryArr[1]), $sourceAllowFont)) {
		$sourceFilePath = null;
		for ($i = 2; $i < count($uriQueryArr); $i++ ) {
			$sourceFilePath = $sourceFilePath == null ? $uriQueryArr[$i] : $sourceFilePath.'/'.$uriQueryArr[$i];
		}
		$sourceFileReload = preg_match("/(\.eot|\.otf|\.svg|\.ttf|\.woff|\.woff2)(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
		$sourceFilePath = preg_replace("/((\.eot|\.otf|\.svg|\.ttf|\.woff|\.woff2)([\S]+)?)$/", "$2", $_tool->root().'/source/font/'.$sourceFilePath);
		if (file_exists($sourceFilePath)) {
			$readFile = array(
				"type" => "include", 
				"path" => $sourceFilePath,
				"mime" => "application/octet-stream",
				"expire" => (60 * 60 * 24)
			);
			shutdown(require_once("source/template/readfile.php"));
		}else {
			shutdown(header("HTTP/1.1 503 Service Unavailable"));
		}
	}
}else if (in_array(strtolower($uriQueryArr[0]), $indexAllowAccount)) {
	// port: account.
	$accountAllowLogin = ["login"];
	$accountAllowRegister = ["register"];
	$accountAllowForgot = ["forgot"];
	$accountAllowTotal = array_merge($accountAllowLogin, $accountAllowRegister, $accountAllowForgot);
	if (!isset($uriQueryArr[1]) || !in_array(strtolower($uriQueryArr[1]), $accountAllowTotal)) {
		shutdown(print "error#index>portnotfound");
	}else if (in_array(strtolower($uriQueryArr[1]), $accountAllowLogin)) {
		shutdown(require_once("source/index/account.login.php"));
	}
}else if (in_array(strtolower($uriQueryArr[0]), $indexAllowImage)) {
	// port: image.
	$imageAllowRaw = ["raw"];
	$imageAllowUpload = ["upload"];
	$imageAllowStream = ["stream"];
	$imageAllowTotal = array_merge($imageAllowRaw, $imageAllowUpload, $imageAllowStream);
	if (!isset($uriQueryArr[1]) || !in_array(strtolower($uriQueryArr[1]), $imageAllowTotal)) {
		shutdown(print "error#index>portnotfound");
	}
	if (in_array(strtolower($uriQueryArr[1]), $imageAllowRaw)) {
		$rawAllowOther = ["other"];
		$rawAllowCmd = ["cmd"];
		$rawAllowTotal = array_merge($rawAllowOther, $rawAllowCmd);
		if (in_array(strtolower($uriQueryArr[2]), $rawAllowOther)) {
			$sourceFilePath = isset($uriQueryArr[3]) && is_string($uriQueryArr[3]) ? $uriQueryArr[3] : null;
			$sourceFileReload = preg_match("/(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
			$sourceFilePath = preg_replace("/(\?(reload\=true)([\S]+)?)$/", "", $sourceFilePath);
			$getImageOtherAction = $_image->other(array(
				"action" => "get",
				"label" => "display",
				"value" => $sourceFilePath
			));
			if (isset($getImageOtherAction, $getImageOtherAction['return'], $getImageOtherAction['exists'], $getImageOtherAction['data']) && $getImageOtherAction['return']) {
				if (!$getImageOtherAction['exists']) {
					shutdown(header("HTTP/1.1 503 Service Unavailable"));
				}
				$sourceFilePath = $getImageOtherAction['data']['url'];
				$readFile = array(
					"type" => "other", 
					"path" => $sourceFilePath,
					"mime" => "image/gif",
					"expire" => (60 * 60 * 24)
				);
				shutdown(require_once("source/template/readfile.php"));
			}else {
				shutdown(header("HTTP/1.1 503 Service Unavailable"));
			}
		}else if (in_array(strtolower($uriQueryArr[2]), $rawAllowCmd)) {
			$sourceFilePath = isset($uriQueryArr[3]) && is_string($uriQueryArr[3]) ? $uriQueryArr[3] : null;
			$sourceFileReload = preg_match("/(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
			$sourceFilePath = preg_replace("/(\?(reload\=true)([\S]+)?)$/", "", $sourceFilePath);
			$cmdFilePath = isset($uriQueryArr[4]) && is_string($uriQueryArr[4]) ? parse_str($uriQueryArr[4], $cmdFileArr) : null;
			print_r($sourceFilePath);
			print_r($cmdFileArr);
		}else {
			$sourceFilePath = isset($uriQueryArr[2]) && is_string($uriQueryArr[2]) ? $uriQueryArr[2] : null;
			$sourceFileType = isset($uriQueryArr[3]) && is_string($uriQueryArr[3]) ? strtolower($uriQueryArr[3]) : null;
			$sourceFileReload = preg_match("/(\?(reload\=true)([\S]+)?)$/", $sourceFilePath);
			$sourceFilePath = preg_replace("/(\?(reload\=true)([\S]+)?)$/", "", $sourceFilePath);
			if (preg_match("/^(([a-zA-Z0-9]{8})|([a-zA-Z0-9]{32}))$/i", $sourceFilePath)) {
				$getImageRawAction = $_image->raw(array(
					"action" => "get",
					"label" => "display",
					"value" => $sourceFilePath
				));
				if (isset($getImageRawAction, $getImageRawAction['return'], $getImageRawAction['exists'], $getImageRawAction['data']) && $getImageRawAction['return']) {
					if (!$getImageRawAction['exists']) {
						shutdown(header("HTTP/1.1 503 Service Unavailable"));
					}
					$sourceFileNameraw = $getImageRawAction['data'][0]['nameraw'];
					if (in_array($sourceFileType, ["download"])) {
						header("Content-Description: File Transfer");
						header("Content-Type: application/octet-stream");
						header("Content-Disposition: attachment; filename=" . $sourceFileNameraw);
						header("Content-Transfer-Encoding: binary");
						header("Expires: 0");
						header("Cache-Control: must-revalidate");
					}
					$sourceFilePath = $getImageRawAction['data'][0]['source'];
					$readFile = array(
						"type" => "other", 
						"path" => $sourceFilePath,
						"mime" => "image/gif",
						"expire" => (60 * 60 * 24)
					);
					shutdown(require_once("source/template/readfile.php"));
				}else {
					shutdown(header("HTTP/1.1 503 Service Unavailable"));
				}
			}else {
				shutdown(header("HTTP/1.1 503 Service Unavailable"));
			}
		}
	}else if (in_array(strtolower($uriQueryArr[1]), $imageAllowStream)) {
		shutdown(require_once("source/index/image.stream.php"));
	}else if (in_array(strtolower($uriQueryArr[1]), $imageAllowUpload)) {
		shutdown(require_once("source/index/image.upload.php"));
	}else if (in_array(strtolower($uriQueryArr[1]), ["picture"])) {
		
	}
}
?>