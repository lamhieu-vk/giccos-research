<?php
header($_parameter->get('contentType_html.utf8'));
//print_r(json_decode('{"permalink": "https://www.virustotal.com/url/bd0640b09b28d464fd67070322367914042e505349e9b17383f2d607b5d09e47/analysis/1440684004/", "resource": "http://mp3.zing.vn/bai-hat/nu-hon-va-nuoc-mat-lam-chan-huy/zwz9zwea.html", "url": "http://mp3.zing.vn/bai-hat/nu-hon-va-nuoc-mat-lam-chan-huy/zwz9zwea.html", "response_code": 1, "scan_date": "2015-08-27 14:00:04", "scan_id": "bd0640b09b28d464fd67070322367914042e505349e9b17383f2d607b5d09e47-1440684004", "verbose_msg": "Scan finished, scan information embedded in this object", "filescan_id": null, "positives": 0, "total": 63, "scans": {"CLEAN MX": {"detected": false, "result": "clean site"}, "VX Vault": {"detected": false, "result": "clean site"}, "ZDB Zeus": {"detected": false, "result": "clean site"}, "Tencent": {"detected": false, "result": "clean site"}, "MalwarePatrol": {"detected": false, "result": "clean site"}, "ZCloudsec": {"detected": false, "result": "clean site"}, "PhishLabs": {"detected": false, "result": "unrated site"}, "Zerofox": {"detected": false, "result": "clean site"}, "K7AntiVirus": {"detected": false, "result": "clean site"}, "Quttera": {"detected": false, "result": "clean site"}, "Spam404": {"detected": false, "result": "clean site"}, "AegisLab WebGuard": {"detected": false, "result": "clean site"}, "MalwareDomainList": {"detected": false, "result": "clean site", "detail": "http://www.malwaredomainlist.com/mdl.php?search=mp3.zing.vn"}, "ZeusTracker": {"detected": false, "result": "clean site", "detail": "https://zeustracker.abuse.ch/monitor.php?host=mp3.zing.vn"}, "zvelo": {"detected": false, "result": "clean site"}, "Google Safebrowsing": {"detected": false, "result": "clean site"}, "Kaspersky": {"detected": false, "result": "clean site"}, "BitDefender": {"detected": false, "result": "clean site"}, "Dr.Web": {"detected": false, "result": "clean site"}, "ADMINUSLabs": {"detected": false, "result": "clean site"}, "C-SIRT": {"detected": false, "result": "clean site"}, "CyberCrime": {"detected": false, "result": "clean site"}, "Websense ThreatSeeker": {"detected": false, "result": "clean site"}, "CRDF": {"detected": false, "result": "clean site"}, "Webutation": {"detected": false, "result": "clean site"}, "Trustwave": {"detected": false, "result": "clean site"}, "Web Security Guard": {"detected": false, "result": "clean site"}, "G-Data": {"detected": false, "result": "clean site"}, "Malwarebytes hpHosts": {"detected": false, "result": "clean site"}, "Wepawet": {"detected": false, "result": "clean site"}, "AlienVault": {"detected": false, "result": "clean site"}, "Emsisoft": {"detected": false, "result": "clean site"}, "Malc0de Database": {"detected": false, "result": "clean site", "detail": "http://malc0de.com/database/index.php?search=mp3.zing.vn"}, "SpyEyeTracker": {"detected": false, "result": "clean site", "detail": "https://spyeyetracker.abuse.ch/monitor.php?host=mp3.zing.vn"}, "malwares.com URL checker": {"detected": false, "result": "clean site"}, "Phishtank": {"detected": false, "result": "clean site"}, "Malwared": {"detected": false, "result": "clean site"}, "Avira": {"detected": false, "result": "clean site"}, "OpenPhish": {"detected": false, "result": "clean site"}, "Antiy-AVL": {"detected": false, "result": "clean site"}, "SCUMWARE.org": {"detected": false, "result": "clean site"}, "FraudSense": {"detected": false, "result": "clean site"}, "Opera": {"detected": false, "result": "clean site"}, "Comodo Site Inspector": {"detected": false, "result": "clean site"}, "Malekal": {"detected": false, "result": "clean site"}, "ESET": {"detected": false, "result": "clean site"}, "Sophos": {"detected": false, "result": "unrated site"}, "Yandex Safebrowsing": {"detected": false, "result": "clean site", "detail": "http://yandex.com/infected?l10n=en&url=http://mp3.zing.vn/bai-hat/nu-hon-va-nuoc-mat-lam-chan-huy/zwz9zwea.html"}, "SecureBrain": {"detected": false, "result": "clean site"}, "Malware Domain Blocklist": {"detected": false, "result": "clean site"}, "Blueliv": {"detected": false, "result": "clean site"}, "Netcraft": {"detected": false, "result": "unrated site"}, "PalevoTracker": {"detected": false, "result": "clean site"}, "AutoShun": {"detected": false, "result": "unrated site"}, "ThreatHive": {"detected": false, "result": "clean site"}, "ParetoLogic": {"detected": false, "result": "clean site"}, "Rising": {"detected": false, "result": "clean site"}, "URLQuery": {"detected": false, "result": "unrated site"}, "StopBadware": {"detected": false, "result": "unrated site"}, "Sucuri SiteCheck": {"detected": false, "result": "clean site"}, "Fortinet": {"detected": false, "result": "clean site"}, "ZeroCERT": {"detected": false, "result": "clean site"}, "Baidu-International": {"detected": false, "result": "clean site"}}}'));
//die;
print_r($_antivirus->virustotal(array("type" => "url", "action" => "report", "resource" => "https://www.youtube.com/watch?v=EnG5wBCBVYE")));
die;
//print_r($_antivirus->things(array("action" => "scan", "things" => "D:\x")));
//die;
/*//. "C:\Program Files (x86)\Sourcefire Inc\ClamAV\clamdscan.exe"  --database="C:\ClamAV\db-win" --recursive D:\x
//.C:\ClamAV\clamscan.exe  --database="C:\ClamAV\db" --recursive D:\
print $s = '"C:\ClamAV\clamscan.exe"  --database="C:\ClamAV\db-win" --recursive D:\x';
exec($s, $r);
print_r($r);
die;
//print_r(explode(",", $_SESSION['xs']['extensions']['subjectAltName']));
//die;
/*
$xs = array(
	"guy" => $g_user['mode'],
	"action" => "extract",
	"url" => "https://www.youtube.com/watch?v=bzM4EO56l88&list=PLrBAQg86hGY_LopkHb7QymuWZSPp30IfJ&index=118"
);
$xsd = $_sites->certificate($xs);
print_r($xsd);
die;
$x = "DNS:*.google.com, DNS:*.android.com, DNS:*.appengine.google.com, DNS:*.cloud.google.com, DNS:*.google-analytics.com, DNS:*.google.ca, DNS:*.google.cl, DNS:*.google.co.in, DNS:*.google.co.jp, DNS:*.google.co.uk, DNS:*.google.com.ar, DNS:*.google.com.au, DNS:*.google.com.br, DNS:*.google.com.co, DNS:*.google.com.mx, DNS:*.google.com.tr, DNS:*.google.com.vn, DNS:*.google.de, DNS:*.google.es, DNS:*.google.fr, DNS:*.google.hu, DNS:*.google.it, DNS:*.google.nl, DNS:*.google.pl, DNS:*.google.pt, DNS:*.googleadapis.com, DNS:*.googleapis.cn, DNS:*.googlecommerce.com, DNS:*.googlevideo.com, DNS:*.gstatic.cn, DNS:*.gstatic.com, DNS:*.gvt1.com, DNS:*.gvt2.com, DNS:*.metric.gstatic.com, DNS:*.urchin.com, DNS:*.url.google.com, DNS:*.youtube-nocookie.com, DNS:*.youtube.com, DNS:*.youtubeeducation.com, DNS:*.ytimg.com, DNS:android.com, DNS:g.co, DNS:goo.gl, DNS:google-analytics.com, DNS:google.com, DNS:googlecommerce.com, DNS:urchin.com, DNS:youtu.be, DNS:youtube.com, DNS:youtubeeducation.com";
print_r(explode(",", $x));
die;
$url = "https://android.com/";
$orignal_parse = parse_url($url, PHP_URL_HOST);
$get = stream_context_create(array("ssl" => array("capture_peer_cert" => true)));
$read = stream_socket_client("ssl://".$orignal_parse.":443", $errno, $errstr, 30, STREAM_CLIENT_CONNECT, $get);
$cert = stream_context_get_params($read);
$certinfo = openssl_x509_parse($cert['options']['ssl']['peer_certificate']);
print_r($certinfo);
die;
*/
//unset($_SESSION["cache"]['page']);
//print_r($_SESSION["cache"]['page']);die;
//print_r($_SESSION['x']); die;
//print_r($_tool->links('photos/raw/qr/500/'.$_tool->hash('encode', "fuck", $_parameter->get('hash_photos_qr'))));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed general">
	<head>
		<title><?php print $_language->text('pages_feed_general.title', 'ucwords'); ?></title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/feed.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<?php require_once ("templates/box_links.php"); ?>
				</div>
				<div id="centerBox">
					<?php
					require_once ("templates/box_ask.php");
					require_once ("templates/editor.php");
					$statusListOptions = array(
						"guy" => $g_user['mode'],
						"type" => "general",
						"method" => $feed_['options']['method'],
						"sort" => ">",
						"id" => 0,
						"order" => "new",
						"limit" => 5
					);
					$statusList = $_feed->status_list($statusListOptions);
					if (isset($statusList['return'], $statusList['count'], $statusList['data']) && $statusList['return'] == true) {
						$feedCode = null;
						if ($statusList['count'] == 0 || count($statusList['data']) == 0) {
							$feedCode = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
						}else {
							$listStatusId = array();
							foreach ($statusList['data'] as $key => $idThis) {
								$listStatusId[$idThis] = array("media" => true, "comment" => true);
							}
							$statusFetch = $_feed->status_fetch(array("guy" => $g_user['mode'], "id" =>  $listStatusId));
							if (isset($statusFetch['return'], $statusFetch['count'], $statusFetch['data']) && $statusFetch['return'] == true) {
								foreach ($statusFetch['data'] as $i => $statusArrThis) {
									$statusPrintCode = $_feed->status_printcode(array("guy" => $g_user['mode'], "status" => $statusArrThis, "classname" => "status inFeeds"));
									if (isset($statusPrintCode['return'], $statusPrintCode['code']) && $statusPrintCode['return'] == true) {
										$feedCode .= $statusPrintCode['code'];
									}
								}
							}else {
								//.
							}
						}
						$feedCode = "
						<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['options'])."'>
							<div class='info inFeeds boxGrid' class='thisTotal'>
								<div class='title'> <span>".$_language->text('news_feed', 'ucfirst').": ..</span> </div>
								<div class='description'> <span>".$_language->text('pages_feed.quickdescription', 'ucfirst').".</span> </div>
							</div>
							".$feedCode."
							<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
							<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
						</div>
						";
						print $feedCode;
					}else {
						//.
					}
					/*if (isset($feed_['query']['code'])) {
						$getFeed = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $feed_['query']['code'], "media" => true, "guy" => $g_user['mode']));
						if (isset($getFeed['return'], $getFeed['count'], $getFeed['data']) && $getFeed['return'] == true) {
							if ($getFeed['count'] == 0) {
								$feed_['content']['code'] = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
							}else {
								$feed_['content']['code'] = $getFeed['data'];
							}
						}else {
							$feed_['content']['code'] = null;
						}
					}else {
						$feed_['content']['code'] = null;
					}
					print "
					<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['content']['this'])."'>
						<div class='info inFeeds boxGrid' class='thisTotal'>
							<div class='title'>
								<span>{$_language->text('news_feed', 'ucfirst')}: {$feed_['content']['from']}</span>
							</div>
							<div class='description'>
								<span>{$_language->text('pages_feed.quickdescription', 'ucfirst')} {$feed_['content']['from']}.</span>
							</div>
						</div>
						{$feed_['content']['code']}
						<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
						<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
					</div>
					";
					$feed_ = null;*/
					?>
				</div>
				<div id="rightBox">
					<?php require_once ("templates/box_suggest.php"); ?>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/feed.general.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>