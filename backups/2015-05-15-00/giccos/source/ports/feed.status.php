<?php
header($_parameter->get('contentType_html.utf8'));
if (isset($feed_['value']) && $feed_['value'] == true) {
	$getQuickInfo = $_feed->status_quickinfo(array("key" => $feed_['content']['require'][0]));
	if ($getQuickInfo['return'] == true) {
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
		<title><?php if (isset($feed_['content']['title']) && $feed_['content']['title'] != null) { print $feed_['content']['title'].' :: '; } print $_language->text('pages_status.title', 'ucwords', false, false); ?></title>
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
					if (isset($feed_['value']) && $feed_['value'] == true) {
						if (isset($feed_['query']['code'])) {
							$getFeed = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $feed_['query']['code'], "media" => true));
							if (isset($getFeed['return'], $getFeed['count'], $getFeed['data']) && $getFeed['return'] == true) {
								if ($getFeed['count'] == 0) {
									$feed_['content']['code'] = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
								}else {
									$feed_['content']['code'] = $getFeed['data'];
									$getFeedJson = $_feed->status_get(array("return" => "json", "query" => $feed_['query']['code'], "media" => false));
									if (isset($getFeedJson['return'], $getFeedJson['count'], $getFeedJson['data']) && $getFeedJson['return'] == true) {
										if (isset($getFeedJson['data'][0]['private']['view']['stamp']) && $getFeedJson['data'][0]['private']['view']['stamp'] == 0 && $getFeedJson['count'] > 0) {
											$feed_['content']['code'] = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('warning', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('status_display_with_link', 'ucfirst')}.</span></div> </div>".$feed_['content']['code'];
										}
									}
								}
							}else {
								$feed_['content']['code'] = null;
							}
						}else {
							$feed_['content']['code'] = null;
						}
						print "
						<div id='gFeeds' class='thisFeeds feed' feed='{$feed_['content']['this']}'>
							<div class='info inFeeds boxGrid' class='thisTotal'>
								<div class='title nowrap'>
									<span>{$_language->text('news_feed', 'ucfirst', false)}: {$feed_['content']['title']}.</span>
								</div>
								<div class='description'>
									<span>{$_language->text('pages_feed.quickdescription', 'ucfirst', false)} {$feed_['content']['description']}.</span>
								</div>
							</div>
							{$feed_['content']['code']}
							<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
							<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
						</div>
						";
						$feed_ = null;
					}else {
						print "
						<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
						<div id='gFeeds' class='thisFeeds feed' feed='{$feed_['content']['this']}'>
							<div class='info inFeeds boxGrid' class='thisTotal'>
								<div class='title'>
									<span>{$_language->text('status_not_found', 'ucfirst', false)}</span>
								</div>
								<div class='description'>
									<span>{$_language->text('pages_status.quickdescription.notfound', 'ucfirst', false)}.</span><br>
									<span>{$_language->text('pages_status.quickdescription.notfound.more', 'ucfirst', false)}.</span>
								</div>
							</div>
						</div>
						";
						$feed_ = null;
					}
					?>
				</div>
				<div id="rightBox">
					<?php require_once ("templates/box_suggest.php"); ?>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>