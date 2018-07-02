<?php
header($_parameter->get('contentType_html.utf8'));
if (isset($siteInput) && is_string($siteInput) && $_tool->isBase64($siteInput)) {
	$siteInput = urldecode($_tool->hash('decode', $siteInput, $_parameter->get('hash_sites_direct')));
	if (isset($siteInput) && is_string($siteInput) && preg_match($_parameter->get('regex_sites_url'), $siteInput, $matchUrl)) {
		$siteInfoArr = array();
		$siteInfoArr['link'] = $siteInput;
		$siteMatch['scheme'] = isset($matchUrl[2]) && is_string($matchUrl[2]) ? $matchUrl[2] : null;
		$siteMatch['sub'] = isset($matchUrl[5]) && is_string($matchUrl[5]) ? $matchUrl[5] : null;
		$siteMatch['host'] = isset($matchUrl[7]) && is_string($matchUrl[7]) ? $matchUrl[7] : null;
		$siteMatch['path'] = isset($matchUrl[10]) && is_string($matchUrl[10]) ? $matchUrl[10] : null;
		if ($siteMatch['scheme'] == null && $siteMatch['sub'] == null && $siteMatch['host'] == null && $siteMatch['path'] == null) {
			die;
		}
		$siteHash = hash('md5', $siteMatch['scheme'].'::'.$siteMatch['sub'].'::'.$siteMatch['host'].'::'.$siteMatch['path']);
		$existsSite = $_sites->info(array("guy" => $g_user['mode'], "action" => "exists", "label" => "hash", "value" => $siteHash));
		if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true && $existsSite['exists'] == true) {
			$siteInfoArr['exists'] = true;
			$getSiteInfo = $_sites->info(array("guy" => $g_user['mode'], "action" => "get", "label" => "hash", "value" => $siteHash, "limit" => "LIMIT 1"));
			if (isset($getSiteInfo, $getSiteInfo['return'], $getSiteInfo['data'], $getSiteInfo['data'][0], $getSiteInfo['data'][0]['display']) && $getSiteInfo['return'] == true) {
				$siteInfoArr = array_merge($siteInfoArr, $getSiteInfo['data'][0]);
				$siteDisplay = $siteInfoArr['display'];
				//. get scan
				if (is_string($siteInfoArr['scan']) && preg_match("/^([a-zA-Z0-9]{30,40})$/", $siteInfoArr['scan'])) {
					$getScan = $_sites->scan(array("guy" => $g_user['mode'], "action" => "status", "label" => "display", "value" => $siteInfoArr['scan']));
					if (isset($getScan, $getScan['return'], $getScan['exists']) && $getScan['return'] == true) {
						if (isset($getScan['data']) && $getScan['exists'] == true) {
							$siteInfoArr['scan'] = array_merge($getScan['data']);
						}else {
							$siteInfoArr['scan'] = array();
						}
					}else if (isset($getScan, $getScan['return'], $getScan['reason']) && $getScan['return'] == false) {
						print_r($getScan);
						die;
					}else {
						print "jghjgf";
						die;
					}
				}else {
					$siteInfoArr['scan'] = array();
				}
				//.
			}else if (isset($getSiteInfo, $getSiteInfo['return'], $getSiteInfo['reason']) && $getSiteInfo['return'] == false) {
				die;
			}else {
				die;
			}
		}else {
			$siteInfoArr['exists'] = false;
		}
	}else {
		die;
	}
}else {
	die;
}
if (isset($siteInfoArr) && is_array($siteInfoArr) && count($siteInfoArr) > 0) {
	if (isset($siteInfoArr['link'])) {

	}
	if (isset($siteInfoArr['scan'], $siteInfoArr['scan']['status'])) {
		if ($siteInfoArr['scan']['status'] == 0) {
			$siteInfoArr['status'] = "safe";
			// die(header("Location: ".$siteInfoArr['link']));
		}else if ($siteInfoArr['scan']['status'] <= 10) {
			$siteInfoArr['status'] = "suspicious";
		}else {
			$siteInfoArr['status'] = "not_safe";
		}
	}
	// print_r($siteInfoArr);
}else {
	die;
}
//print_r($_tool->hash('encode', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', $_parameter->get('hash_sites_direct')));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="sites direct">
	<head>
		<title>.</title>
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/sites.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/sites.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gSource"></div>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox"><br></div>
				<div id="centerBox">
					<!-- -->
					<div id="notifyPage" class="boxGrid">
						<div class="title">
							<span><?php print $_language->text('warning', 'ucfirst'); ?></span>
						</div>
						<div class="content">
							<div class="info">
								<br>
							</div>
							<div class="action"></div>
						</div>
					</div>
				</div>
				<div id="rightBox"><br></div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
		</div>
		<div id="gInclude"></div>
	</body>
</html>