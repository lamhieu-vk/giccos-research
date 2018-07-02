<?php
header($_parameter->get('contentType_html.utf8'));
$hashtagText = null;
$feedDefine = $feedInfo = $feedCode = null;
if (isset($feed_['options'], $feed_['options']['hashtag'])) {
	$dataDefineArr = $defineWordArr = array();
	foreach ($feed_['options']['hashtag'] as $key => $thisRequireWord) {
		if (preg_match("/^([a-zA-Z]+)$/", $thisRequireWord)) {
			$defineWordArr[] = $thisRequireWord;
		}
	}
	$defineUnavailableArr = array();
	if (isset($_COOKIE['gFeed_define_undefined']) && is_string($_COOKIE['gFeed_define_undefined']) && $_tool->isBase64($_COOKIE['gFeed_define_undefined'])) {
		$defineUnavailableArr = json_decode($_tool->hash('decode', $_COOKIE['gFeed_define_undefined'], ''), true);
	}
	$defineWordArr = array_unique($defineWordArr);
	foreach ($defineWordArr as $defineWordThis) {
		if (!in_array($defineWordThis, $defineUnavailableArr)) {
			$dataDefineUrl = $_tool->links('library/words/'.urlencode($defineWordThis).'/define');
			$getDefine = $_tool->curl($dataDefineUrl, 5, array("cookie" => true, "referer" => true, "decode" => true, "headers" => array("client" => $g_client['token']['client'])));
			if (isset($getDefine['return'], $getDefine['data']) && $getDefine['return'] == true) {
				$dataDefineThis = json_decode($getDefine['data'], true);
				if (isset($dataDefineThis) && is_array($dataDefineThis) && count($dataDefineThis) > 0) {
					$dataDefineArr[$defineWordThis] = $dataDefineThis;
				}
			}
			if (!isset($dataDefineArr[$defineWordThis]) || !is_array($dataDefineArr[$defineWordThis]) || count($dataDefineArr[$defineWordThis]) == 0) {
				$defineUnavailableArr[] = $defineWordThis;
			}
		}
		$hashtagText = !isset($hashtagText) || $hashtagText == null ? $defineWordThis : $hashtagText.' & '.$defineWordThis;
	}
	$defineUnavailableArr = array_unique($defineUnavailableArr);
	if (is_array($defineUnavailableArr) && count($defineUnavailableArr) > 0) {
		setcookie("gFeed_define_undefined", $_tool->hash('encode', json_encode($defineUnavailableArr), ''), 0, $_client->uri(), $g_client['http']['secure'], false);
	}else {
		setcookie("gFeed_define_undefined", null, time() - 1, $_client->uri(), $g_client['http']['secure'], false);
	}
	if (isset($dataDefineArr) && is_array($dataDefineArr) && count($dataDefineArr) > 0) {
		$defineContentHtml = null;
		foreach ($dataDefineArr as $keyword => $dataDefineThis) {
			$defineCountShowed = 0;
			$defineContentHtml .= "<div class='line _tt-bk e'><a href='".$_tool->links('library/words/'.$keyword)."' target='_blank'><span class='label'>".ucfirst($keyword).": </span><span class='value'>".strtolower($dataDefineThis[0]['content']).".</span></a></div>";
		}
		$feedDefine = "
		<div class='define inFeeds boxsub boxGrid'>
			<div class='title'> <span>".$_language->text('define', 'ucfirst')."</span> </div>
			<div class='content'>".$defineContentHtml."</div>
		</div>
		";
	}
}
$timelineText = isset($timelineText) && $timelineText != null ? $timelineText : $_language->text('undefined', 'ucfirst');
$statusListOptions = array(
	"sort" => ">",
	"logs" => 0,
	"order" => "new",
	"limit" => 5
);
$statusListOptions['type'] = "hashtag";
$statusListOptions['guy'] = array("type" => $g_user['mode']['type'], "id" => $g_user['mode']['id']);
if (isset($feed_['options'], $feed_['options']['method'])) {
	$statusListOptions['method'] = $feed_['options']['method'];
}
if (isset($feed_['options'], $feed_['options']['hashtag'])) {
	$statusListOptions['hashtag'] = $feed_['options']['hashtag'];
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
	<div class='title'> <span>".$_language->text('news_feed', 'ucfirst').": ".$_language->text('hashtag', 'strtolower')."</span> </div>
	<div class='content'> <span>".$_language->text('status_found_based_hashtag', 'ucfirst').". <br> ".$_language->text('tags', 'ucfirst').": ".$hashtagText."</span> </div>
</div>
";
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed hashtag">
	<head>
		<title><?php print $hashtagText.' :: '.$_language->text('hashtag', 'ucwords').' :: '.$_language->text('pages_feed.title', 'ucwords'); ?></title>
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
						print $feedDefine.$feedInfo.$feedCode;
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
					<script src="<?php print $_tool->links("source/js/feed.hashtag.js"); ?>" type="text/javascript"></script>
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
			<div id="gSource"></div>
		</div>
	</body>
</html>