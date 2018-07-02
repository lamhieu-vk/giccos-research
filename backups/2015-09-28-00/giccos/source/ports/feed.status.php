<?php
header($_parameter->get('contentType_html.utf8'));
$selectedText = null;
$feedInfo = $feedCode = null;
if (isset($feed_['options'], $feed_['options']['selected'])) {
	$valueSelectedArr = $feed_['options']['selected'];
	foreach ($valueSelectedArr as $key => $valueSelectedThis) {
		$introText = null;
		$getStatusQuickInfo = $_feed->status_quickinfo(array("label" => $valueSelectedThis['label'], "value" => $valueSelectedThis['value']));
		if (isset($getStatusQuickInfo, $getStatusQuickInfo['return'], $getStatusQuickInfo['data']) && $getStatusQuickInfo['return'] == true) {
			$dataStatusQuickInfo = $getStatusQuickInfo['data'][0];
			if (isset($dataStatusQuickInfo['author.type'], $dataStatusQuickInfo['author.id'])) {
				$getStatusGuyInfo = $_user->profile(array("action" => "get", "rows" => ["fullname", "username"], "label" => "id", "value" => $dataStatusQuickInfo['author.id'], "limit" => "LIMIT 1")); 
				if (isset($getStatusGuyInfo, $getStatusGuyInfo['return'], $getStatusGuyInfo['data']) && $getStatusGuyInfo['return'] == true) {
					$dataStatusQuickInfo['guy']['name'] = $getStatusGuyInfo['data'][0]['fullname'];
					$dataStatusQuickInfo['guy']['tag'] = $getStatusGuyInfo['data'][0]['username'];
					unset($getStatusGuyInfo);
				}
			}
			$introText = $_language->text($dataStatusQuickInfo['type'], 'strtolower').' '.$_language->text('by', 'strtolower').' '.$dataStatusQuickInfo['guy']['name'].' ('.$dataStatusQuickInfo['guy']['tag'].') '.$_language->text('at', 'strtolower').' '.$_tool->agoDatetime($dataStatusQuickInfo['time'], 'ago');
			$selectedText = !isset($selectedText) || $selectedText == null ? $introText : $selectedText.' & '.$introText;
		}
	}
}
$selectedText = isset($selectedText) && $selectedText != null ? $selectedText : $_language->text('undefined', 'ucfirst');
$statusListOptions = array(
	"sort" => ">",
	"logs" => 0,
	"order" => "new"
);
$statusListOptions['type'] = "status";
$statusListOptions['guy'] = array("type" => $g_user['mode']['type'], "id" => $g_user['mode']['id']);
if (isset($feed_['options'], $feed_['options']['method'])) {
	$statusListOptions['method'] = $feed_['options']['method'];
}
if (isset($feed_['options'], $feed_['options']['selected'])) {
	$statusListOptions['selected'] = $feed_['options']['selected'];
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
			unset($statusFetch);
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
	unset($statusList);
}
$feedInfo = "
<div class='info inFeeds boxsub boxGrid' class='thisTotal'>
	<div class='title'> <span>".$_language->text('news_feed', 'ucfirst').": ".$_language->text('status', 'strtolower')."</span> </div>
	<div class='content'> <span>".$_language->text('status_found_based_selected', 'ucfirst').". <br> ".$_language->text('source', 'ucfirst').": ".$selectedText."</span> </div>
</div>
";
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed status">
	<head>
		<title><?php print $selectedText.' :: '.$_language->text('status', 'ucwords').' :: '.$_language->text('pages_feed.title', 'ucwords'); ?></title>
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
						print $feedInfo.$feedCode;
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
					<script src="<?php print $_tool->links("source/js/feed.status.js"); ?>" type="text/javascript"></script>
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