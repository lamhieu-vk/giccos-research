<?php
header($_parameter->get('contentType_html.utf8'));
/*
$sss = "SELECT * FROM `storage_image`;";
$qqq = mysqli_query($_db->port('beta'), $sss);
while ($aaa = mysqli_fetch_assoc($qqq)) {
	$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $aaa['display'], "limit" => "LIMIT 1"));
	if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
		$aa = $getMediaFile['data'][0]['source'];
		$xx = $_photos->hash(array("type" => "analyze", "file" => $aa, "tech" => ["profile", "average", "difference", "perceptual"]));
		print_r($xx);
		if (isset($xx['return'], $xx['data']) && $xx['return'] == true) {
			mysqli_query($_db->port('beta'), "UPDATE `storage_image` SET `hash.profile` = '".$xx['data']['profile']['hash']."', `hash.difference` = '".$xx['data']['difference']['hash']."', `hash.perceptual` = '".$xx['data']['perceptual']['hash']."', `hash.average` = '".$xx['data']['average']['hash']."' WHERE `id` = '".$aaa['id']."' ;");
		}
	}
}
die;
$aa = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\9b4f49146b511fdb278084b25503dc79.jpg';
$bb = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\zz.jpg';
$xx = $_photos->hash(array("type" => "compare", "file" => [$aa, $bb], "tech" => ["profile", "average", "difference", "perceptual"]));
print_r($xx);
die;
$aa = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\9b4f49146b511fdb278084b25503dc79.jpg';
$xx = $_photos->hash(array("type" => "analyze", "file" => $aa, "tech" => ["difference"]));
print_r($xx);
$aa = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\245f0bca7e6392dac86f65b62bd10541.jpg';
$xx = $_photos->hash(array("type" => "analyze", "file" => $aa, "tech" => ["difference"]));
print_r($xx);die;
die;
$aa = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\9b4f49146b511fdb278084b25503dc79.jpg';
$xx = $_photos->hash(array("type" => "analyze", "file" => $aa, "tech" => ["average", "difference", "perceptual"]));
print_r($xx);die;
die;
$ss = "0000001011111011010000110111101001010000000100000001000000000000000011100111000000001100011100000000110110011100000011111001110001111110001111110110000000010100001000000000010001000000010001000000000000000000000011110011000001111110000000000001100000000000";
$xx = "0111111111111110011111111111110101111111111111010011110101111100011111111111111101111111111111110111111111111111001111111111111100001000000011110100100000001000010000000000000001000000000000010100000000000011000000000000001000001111111000110011111111110111";
$resultValue = $_tool->ratioHammingDistance($ss, $xx);
print_r($resultValue);
die;
/*
$sss = "SELECT * FROM `storage_image`;";
$qqq = mysqli_query($_db->port('beta'), $sss);
while ($aaa = mysqli_fetch_assoc($qqq)) {

	$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $aaa['display'], "limit" => "LIMIT 1"));
	if (isset($getMediaFile['return'], $getMediaFile['count'], $getMediaFile['data'], $getMediaFile['data'][0]) && $getMediaFile['return'] == true) {
		$aa = $getMediaFile['data'][0]['source'];
		if (preg_match('/(9b4f49146b511fdb278084b25503dc79)/', $aa)) {
			print_r($aaa);
		}
		$xx = $_photos->hash(array("type" => "analyze", "file" => $aa, "tech" => ["average", "difference", "perceptual"]));
		print_r($xx);
		if (isset($xx['return'], $xx['data']) && $xx['return'] == true) {
			mysqli_query($_db->port('beta'), "UPDATE `storage_image` SET `hash.difference` = '".$xx['data']['difference']['hash']."', `hash.perceptual` = '".$xx['data']['perceptual']['hash']."', `hash.average` = '".$xx['data']['average']['hash']."' WHERE `id` = '".$aaa['id']."' ;");
		}
	}
}
/*
$aa = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\9b4f49146b511fdb278084b25503dc79.jpg';
$bb = 'C:\XAMPP\htdocs\giccos\storage\image\drive\1\aa.jpg';
$xx = $_photos->hash(array("type" => "compare", "file" => [$aa, $bb], "tech" => ["average", "difference", "perceptual"]));
print_r($xx);
die;
/*
$xx = 'C:\XAMPP\htdocs\giccos\storage\video\drive\1\x\0.png';
header('content-type: image/png');
$fileContent = fopen($xx, 'r');
print fread($fileContent, filesize($xx));
fclose($fileContent);
die;
/*
print_r($g_client['location']);
die;
print_r($_SESSION['cache']['weather']);
die;
print_r($_tool->parseString("Gành Hào, Dong Hai, Bac Lieu, Vietnam", "vi", "en"));
die;
print_r(urldecode("http://query.yahooapis.com/v1/public/yql?q=SELECT+%2A+FROM+weather.forecast+WHERE+u+%3D+%27c%27+AND+woeid+IN+%28SELECT+woeid+FROM+geo.places%281%29+WHERE+text+%3D+%27G%C3%A0nh+H%C3%A0o%2C+Dong+Hai%2C+Bac+Lieu%2C+Vietnam%27%29&format=json&diagnostics=false"));
die;
print_r($g_client['location']);
die;
$xx = $_user->suggest(array("user" => array("id" => $g_user['id']), "guy" => $g_user['mode'], "type" => "user", "rows" => ['places']));
print_r($xx);
die;
$xx = $_maps->places(array("guy" => $g_user['mode'], "action" => "nearby", "label" => "id", "value" => "1", "distance" => 10));
print_r($xx);
/*
unset($_SESSION['cache']['weather']);
print_r($_tool->getWeather(array("server" => "yahoo", "location" => "Ganh Hao", "units" => "C")));
print_r($_SESSION['cache']['weather']);
die;
*/
/*
print_r($g_user);
die;
print_r($_ip->info(array("action" => "check", "ip" => $_client->ip())));
die;
$ss = $_maps->places(array("guy" => $g_user['mode'], "action" => "get", "label" => "id", "value" => "1", "limit" => "LIMIT 1"));
print_r($ss);
die;
*/
//. print_r(json_decode('{"coord":{"lon":105.72,"lat":9.29},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"base":"stations","main":{"temp":302.558,"pressure":1025.21,"humidity":91,"temp_min":302.558,"temp_max":302.558,"sea_level":1025.37,"grnd_level":1025.21},"wind":{"speed":3.6,"deg":239.01},"clouds":{"all":24},"dt":1441453083,"sys":{"message":0.0151,"country":"VN","sunrise":1441406882,"sunset":1441451013},"id":1591474,"name":"Thanh pho Bac Lieu","cod":200}', true));
//. die;
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed general">
	<head>
		<title><?php print $_language->text('pages_feed_general.title', 'ucwords'); ?></title>
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
				<?php 
				$boxLinksRequire['mode'] = $boxLinksRequire['groups'] = $boxLinksRequire['hashtag'] = true;
				require_once ("templates/box_links.php"); 
				?>
				</div>
				<div id="centerBox">
					<?php
					require_once ("templates/box_ask.php");
					require_once ("templates/editor.php");
					$feedCode = null;
					$statusListOptions = array(
						"guy" => array("type" => $g_user['mode']['type'], "id" => $g_user['mode']['id']),
						"type" => "general",
						"method" => $feed_['options']['method'],
						"sort" => ">",
						"logs" => 0,
						"order" => "new",
						"limit" => 5
					);
					$listOptionsArr = $statusListOptions;
					if (isset($listOptionsArr['guy'])) {
						//. unset($listOptionsArr['guy']);
					}
					$statusList = $_feed->status_list($statusListOptions);
					if (isset($statusList['return'], $statusList['count'], $statusList['data']) && $statusList['return'] == true) {
						$feedCode = null;
						if ($statusList['count'] == 0 || count($statusList['data']) == 0) {
							$feedCode = "<div class='null inFeeds boxsub boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
						}else {
							$listStatusArr = array();
							foreach ($statusList['data'] as $listLabel => $listValue) {
								$listStatusArr[] = array_merge($listValue, array("media" => true, "comment" => true));
							}
							$statusFetch = $_feed->status_fetch(array("guy" => $g_user['mode'], "list" =>  $listStatusArr));
							if (isset($statusFetch['return'], $statusFetch['count'], $statusFetch['data']) && $statusFetch['return'] == true) {
								foreach ($statusFetch['data'] as $statusArrThis) {
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
						<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($listOptionsArr)."'>
							<div class='info inFeeds boxsub boxGrid' class='thisTotal'>
								<div class='title'> <span>".$_language->text('news_feed', 'ucfirst').": ..</span> </div>
								<div class='content'> <span>".$_language->text('pages_feed.quickdescription', 'ucfirst').".</span> </div>
							</div>
							".$feedCode."
						</div>
						";
					}else {
						$feedCode = null;
					}
					print $feedCode;
					?>
				</div>
				<div id="rightBox">
				<?php 
				$boxSuggestRequire['weather'] = $boxSuggestRequire['friends'] = true;
				require_once ("templates/box_suggest.php"); 
				?>
				</div>
			</div>
			<div id="gInclude">
				<link href="<?php print $_tool->links("source/css/feed.css"); ?>" rel="stylesheet" />
				<script src="<?php print $_tool->links("source/js/feed.js"); ?>" type="text/javascript"></script>
				<script src="<?php print $_tool->links("source/js/feed.general.js"); ?>" type="text/javascript"></script>
				<script type="text/javascript">
				var loopCallbackFeed = function (c) {
					c = typeof c === "numer" ? c : 0;
					setTimeout(function () {
						if (typeof feed_allfunc === "function") {
							feed_allfunc();
						}else {
							c++;
							if (c >= 10) return false;
							loopCallbackFeed(c);
						}
					}, 250);
				};
				window.document.onload = loopCallbackFeed();
				</script>
			</div>
		</div>
		<?php require_once ("templates/sidebar.php"); ?>
		<div id="gGlobal"></div>
		<div id="gSource"></div>
	</body>
</html>