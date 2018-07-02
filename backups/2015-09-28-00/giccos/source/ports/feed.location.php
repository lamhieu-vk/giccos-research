<?php
header($_parameter->get('contentType_html.utf8'));
$locationName = null;
$placesInfo = $feedInfo = $feedCode = null;
if (isset($feed_['options'], $feed_['options']['location'])) {
	if (1 + 1 == 2) {
		$placesUnavailableArr = array();
		if (isset($_COOKIE['gFeed_places_undefined']) && is_string($_COOKIE['gFeed_places_undefined']) && $_tool->isBase64($_COOKIE['gFeed_places_undefined'])) {
			$placesUnavailableArr = json_decode($_tool->hash('decode', $_COOKIE['gFeed_places_undefined'], ''), true);
		}
		$locationPlacesArr = $feed_['options']['location'];
		foreach ($locationPlacesArr as $key => $locationPlacesThis) {
			if (in_array($locationPlacesThis, $placesUnavailableArr) || (!is_string($locationPlacesThis) && !is_numeric($locationPlacesThis))) {
				unset($locationPlacesArr[$key]);
				continue;
			}
		}
		foreach ($locationPlacesArr as $key => $locationPlacesThis) {
			$mapsPlacesUrl = $_tool->links('maps/places/'.urlencode($locationPlacesThis).'/info');
			$mapsPlaces = $_tool->curl($mapsPlacesUrl, 5, array("cookie" => true, "referer" => true, "decode" => true, "headers" => array("client" => $g_client['token']['client'])));
			if (isset($mapsPlaces['return'], $mapsPlaces['data']) && $mapsPlaces['return'] == true) {
				$mapsPlacesInfo = json_decode($mapsPlaces['data'], true);
				if (isset($mapsPlacesInfo) && is_array($mapsPlacesInfo) && count($mapsPlacesInfo) > 0) {
					//. $locationName = !isset($locationName) || $locationName == null ? $mapsPlacesInfo['name']." (".$mapsPlacesInfo['address'].')' : $locationName.', '.$mapsPlacesInfo['name']." (".$mapsPlacesInfo['address'].')';
					$locationName = !isset($locationName) || $locationName == null ? $mapsPlacesInfo['name'] : $locationName.' & '.$mapsPlacesInfo['name'];
					$placesInfo .= "
					<div class='li'> 
						<div class='context'>
							<div class='name pin'> <a href='#' target='_blank'>".$mapsPlacesInfo['address']."</a> </div>
							<div class='location pin'> <a href='#' target='_blank'>".$mapsPlacesInfo['location']."</a> </div>
						</div> 
						<div class='thumbnail' style='background-image: url(".$mapsPlacesInfo['thumbnail'].");'>
							<img src='".$mapsPlacesInfo['thumbnail']."' alt='".$_language->text('maps_static_at')." ".$mapsPlacesInfo['name']." - ".$mapsPlacesInfo['address']." (".$mapsPlacesInfo['location'].")'>
						</div> 
					</div>
					";
				}
			}else {
				$placesUnavailableArr[] = $locationPlacesThis;
			}
		}
		$placesUnavailableArr = array_unique($placesUnavailableArr);
		if (count($placesUnavailableArr) > 0) {
			setcookie("gFeed_places_undefined", json_encode($_tool->hash('decode', $placesUnavailableArr, '')), 0, $_client->uri(), $g_client['http']['secure']);
		}else {
			setcookie("gFeed_places_undefined", null, time() - 1, $_client->uri(), $g_client['http']['secure']);
		}
		if ($placesInfo != null) {
			$placesInfo = "
			<div class='places boxsub inFeeds boxsub boxGrid' class='thisTotal'>
				<div class='title'> <span>".$_language->text('places', 'ucfirst').": ".$locationName."</span> </div>
				<div class='content'> ".$placesInfo."</div>
			</div>
			";
		}
	}
	if (!isset($placesInfo) || $placesInfo == null) {
		$placesInfo = "
		<div class='boxsub inFeeds boxsub boxGrid' class='thisTotal'>
			<div class='title'> <span>".$_language->text('places', 'ucfirst').": ".$_language->text('undefined', 'ucfirst')."</span> </div>
			<div class='content'> <span>".preg_replace('(\n|\\n)', '<br>', $_language->text('places_description_notfound', 'ucfirst'))."</span> </div>
		</div>
		";
	}
}
$locationName = isset($locationName) && $locationName != null ? $locationName : $_language->text('undefined', 'ucfirst');
$statusListOptions = array(
	"sort" => ">",
	"logs" => 0,
	"order" => "new",
	"limit" => 5
);
$statusListOptions['type'] = "location";
$statusListOptions['guy'] = array("type" => $g_user['mode']['type'], "id" => $g_user['mode']['id']);
if (isset($feed_['options'], $feed_['options']['method'])) {
	$statusListOptions['method'] = $feed_['options']['method'];
}
if (isset($feed_['options'], $feed_['options']['location'])) {
	$statusListOptions['location'] = $feed_['options']['location'];
}
if (1 + 1 == 2) {
	$listOptionsArr = $statusListOptions;
	$statusList = $_feed->status_list($listOptionsArr);
	unset($statusListOptions);
	if (isset($statusList['return'], $statusList['count'], $statusList['data']) && $statusList['return'] == true) {
		if ($statusList['count'] == 0 || count($statusList['data']) == 0) {
			$feedCode = "
			<div class='null boxsub inFeeds boxsub boxGrid'> 
				<div class='title'><span>".$_language->text('empty_content', 'ucfirst')."</span></div> 
				<div class='content'><span>".$_language->text('feed_content_notfound', 'ucfirst').".</span></div> 
			</div>
			";
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
			}
		}
		$feedCode = "<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($listOptionsArr)."'> ".$feedInfo."".$feedCode." </div> ";
	}else {
		$feedCode = "
		<div id='gFeeds' class='thisFeeds feed'>
			<div class='null boxsub inFeeds boxsub boxGrid'> 
				<div class='title'><span>".$_language->text('empty_content', 'ucfirst')."</span></div> 
				<div class='content'><span>".$_language->text('feed_content_notfound', 'ucfirst').".</span></div> 
			</div>
		</div>
		";
	}
}
$feedInfo = "
<div class='info inFeeds boxsub boxGrid' class='thisTotal'>
	<div class='title'> <span>".$_language->text('news_feed', 'ucfirst').": ".$_language->text('places', 'strtolower')."</span> </div>
	<div class='content'> <span>".$_language->text('status_found_based_location', 'ucfirst').". <br> ".$_language->text('location', 'ucfirst').": ".$locationName."</span> </div>
</div>
";
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed location">
	<head>
		<title><?php print $locationName.' :: '.$_language->text('places', 'ucwords').' :: '.$_language->text('pages_feed.title', 'ucwords'); ?></title>
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gPage">
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
						//.
						print $placesInfo.$feedInfo.$feedCode;
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
					<script src="<?php print $_tool->links("source/js/feed.nearby.js"); ?>" type="text/javascript"></script>
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
		</div>
	</body>
</html>