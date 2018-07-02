<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed status">
	<head>
		<title><?php if (isset($feed_['content']['title']) && $feed_['content']['title'] != null) { print $feed_['content']['title'].' :: '; } print $_language->text('feed_nearby.title', 'ucwords'); ?></title>
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
					if (isset($feed_['exists']['nearby']) && $feed_['exists']['nearby'] == true) {
						$feed_['content']['code'] = "";
						if (isset($feed_['query']['code'])) {
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
					}else {
						$feed_['content']['code'] = "
						<div class='null inFeeds boxGrid'> 
							<div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> 
							<div class='description'><span>{$_language->text('not_found_info_nearby', 'ucfirst')}.</span></div> 
						</div>
						";
					}
					print "
					<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['content']['this'])."'>
						<div class='info inFeeds boxGrid' class='thisTotal'>
							<div class='title'>
								<span>{$_language->text('news_feed', 'ucfirst', false)}: {$feed_['content']['from']}</span>
							</div>
							<div class='description'>
								<span>{$_language->text('feed_nearby.quickdescription', 'ucfirst', false)}.</span>
							</div>
						</div>
						{$feed_['content']['code']}
						<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
						<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
					</div>
					";
					$feed_ = null;
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