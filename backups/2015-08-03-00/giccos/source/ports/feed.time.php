<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed time">
	<head>
		<title><?php if (isset($feed_['content']['title']) && $feed_['content']['title'] != null) { print $feed_['content']['title'].' :: '; } print $_language->text('pages_time.title', 'ucwords', false, false); ?></title>
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
					if (isset($feed_['value']) && $feed_['value'] == true) {
						if (isset($feed_['query']['code'])) {
							$getFeed = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $feed_['query']['code'], "media" => true));
							if (isset($getFeed['return'], $getFeed['count'], $getFeed['data']) && $getFeed['return'] == true) {
								if ($getFeed['count'] == 0) {
									$feed_['content']['code'] = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}</span></div> </div>";
								}else {
									$feed_['content']['code'] = $getFeed['data'];
								}
							}else {
								$feed_['content']['code'] = null;
							}
						}else {
							$feed_['content']['code'] = null;
						}
						if (count($feed_['content']['require']['value']) == 2) {
							$c_['content_custom_script'] = "<script type='text/javascript'>var feedFromTime = {'hours': '".date('H', $feed_['content']['require']['value'][0])."', 'minutes': '".date('i', $feed_['content']['require']['value'][0])."', 'days': '".date('d', $feed_['content']['require']['value'][0])."', 'months': '".date('n', $feed_['content']['require']['value'][0])."', 'years': '".date('Y', $feed_['content']['require']['value'][0])."'}; var feedToTime = {'hours': '".date('H', $feed_['content']['require']['value'][1])."', 'minutes': '".date('i', $feed_['content']['require']['value'][1])."', 'days': '".date('d', $feed_['content']['require']['value'][1])."', 'months': '".date('n', $feed_['content']['require']['value'][1])."', 'years': '".date('Y', $feed_['content']['require']['value'][1])."'};</script>";
						}else if (count($feed_['content']['require']['value']) == 1) {
							$c_['content_custom_script'] = "<script type='text/javascript'>var feedFromTime = {'hours': '".date('H', $feed_['content']['require']['value'][0])."', 'minutes': '".date('i', $feed_['content']['require']['value'][0])."', 'days': '".date('d', $feed_['content']['require']['value'][0])."', 'months': '".date('n', $feed_['content']['require']['value'][0])."', 'years': '".date('Y', $feed_['content']['require']['value'][0])."'}; var feedToTime = undefined;</script>";
						}else {
							$c_['content_custom_script'] = "<script type='text/javascript'>var feedFromTime = null;</script>";
						}
						$feed_['content']['custom'] = "
						<div class='timecustom inFeeds boxGrid'>
							<div class='title'>
								<span>{$_language->text('time_custom', 'ucfirst')}</span>
							</div>
							<div class='content'>
								<div class='rows fromTime'>
									<div class='label'>
										<span>{$_language->text('from', 'ucfirst')}</span>
									</div>
									<div class='value'>
										<div class='list'>
											<select class='_tt s' title='{$_language->text('hours', 'strtolower')}' time-value='hours'><option>{$_language->text('hours', 'strtolower')}</option></select>
											<select class='_tt s' title='{$_language->text('minutes', 'strtolower')}' time-value='minutes'><option>{$_language->text('minutes', 'strtolower')}</option></select>&nbsp;
											<select class='_tt s' title='{$_language->text('days', 'strtolower')}' time-value='days'><option>{$_language->text('days', 'strtolower')}</option></select>
											<select class='_tt s' title='{$_language->text('months', 'strtolower')}' time-value='months'><option>{$_language->text('months', 'strtolower')}</option></select>
											<select class='_tt s' title='{$_language->text('years', 'strtolower')}' time-value='years'><option>{$_language->text('years', 'strtolower')}</option></select>
										</div>
									</div>
								</div>
								<div class='rows toTime'>
									<div class='label'>
										<span>{$_language->text('to', 'ucfirst')}</span>
									</div>
									<div class='value'>
										<div class='list'>
											<select class='_tt s' title='{$_language->text('hours', 'strtolower')}' time-value='hours'><option>{$_language->text('hours', 'strtolower')}</option></select>
											<select class='_tt s' title='{$_language->text('minutes', 'strtolower')}' time-value='minutes'><option>{$_language->text('minutes', 'strtolower')}</option></select>&nbsp;
											<select class='_tt s' title='{$_language->text('days', 'strtolower')}' time-value='days'><option>{$_language->text('days', 'strtolower')}</option></select>
											<select class='_tt s' title='{$_language->text('months', 'strtolower')}' time-value='months'><option>{$_language->text('months', 'strtolower')}</option></select>
											<select class='_tt s' title='{$_language->text('years', 'strtolower')}' time-value='years'><option>{$_language->text('years', 'strtolower')}</option></select>
										</div>
									</div>
								</div>
								<div class='rows setButton'>
									<button class='_bn_c-we' type='button'>{$_language->text('go_to_page', 'ucfirst')}</button>
								</div>
							</div>
							{$c_['content_custom_script']}
						</div>
						";
						print "
						<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['content']['this'])."'>
							<div class='info inFeeds boxGrid' class='thisTotal'>
								<div class='title'>
									<span>{$_language->text('time', 'ucfirst')}: {$feed_['content']['title']}</span>
								</div>
								<div class='description'>
									<span>{$_language->text('pages_feed.quickdescription', 'ucfirst')} {$feed_['content']['description']}.</span>
								</div>
							</div>
							{$feed_['content']['custom']}
							{$feed_['content']['code']}
							<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
							<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
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
			<script src="<?php print $_tool->links("source/js/feed.time.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>