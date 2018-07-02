<?php
header($_parameter->get('contentType_html.utf8'));
if (isset($feed_['value']) && $feed_['value'] == true) {
	$getQuickInfo = $_feed->status_quickinfo(array("key" => $feed_['content']['require'][0]));
	if (isset($getQuickInfo['return'], $getQuickInfo['data'], $getQuickInfo['data'][0]) && $getQuickInfo['return'] == true) {
		$getQuickInfo['data'] = $getQuickInfo['data'][0];
		if ($getQuickInfo['data']['author']['type'] == "user") {
			$getQuickInfoAuthor = $_user->getInfo(array("id" => $getQuickInfo['data']['author']['id'], "rows" => "`fullname`, `username`"));
			if ($getQuickInfoAuthor['return'] == true) {
				$feed_['content']['author'] = $getQuickInfoAuthor['data']['fullname']." (".$getQuickInfoAuthor['data']['username'].")";
			}else {
				$feed_['content']['author'] = null;
			}
		}else {
			$feed_['content']['author'] = null;
		}
		if ($feed_['content']['author'] != null) {
			$feed_['content']['author'] = $_language->text('write_by', 'ucfirst', false)." ".$feed_['content']['author'];
		}
		$feed_['content']['time'] = " ".$_language->text('at', 'strtolower', false)." ".$_tool->agoDatetime($getQuickInfo['data']['time'], 'ago', false);
		if ($getQuickInfo['data']['edit'] != 0) {
			$feed_['content']['edit'] = " - ".$_language->text('edited_at', 'ucfirst', false)." ".$_tool->agoDatetime($getQuickInfo['data']['edit'], 'ago', false);
		}else {
			$feed_['content']['edit'] = null;
		}
		$feed_['content']['title'] = $feed_['content']['author'].$feed_['content']['time'].$feed_['content']['edit'];
	}
}else {
	$feed_['content']['title'] = $_language->text('status_not_found', 'ucfirst', false);
}
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed status">
	<head>
		<title><?php print $_language->text('pages_feed_status.title', 'ucwords'); ?></title>
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
						"type" => "status",
						"method" => $feed_['options']['method'],
						"sort" => ">",
						"logs" => 0,
						"order" => "new",
						"selected" => $feed_['options']['selected']
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