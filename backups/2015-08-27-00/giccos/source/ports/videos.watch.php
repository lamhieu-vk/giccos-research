<?php
header($_parameter->get('contentType_html.utf8'));
$getGuy = $_media->guy(array(
	"author" => array(
		"type" => $videosInfo['author.type'], 
		"id" => $videosInfo['author.id']
	), 
	"guy" => array(
		"type" => $g_user['mode']['type'], 
		"id" => $g_user['mode']['id']
	)
));
if (isset($getGuy['return'], $getGuy['guy']) && $getGuy['return'] == true && $getGuy['guy'] > 0) {
	$videosInfo['guy'] = $getGuy['guy'];
}else {
	//.
}
if (isset($videosInfo['file.thumbnail'])) {
	$videosInfo['link.thumbnail'] = $_tool->links('videos/raw/thumbnail/').$videosInfo['file.thumbnail'];
}else {
	$videosInfo['link.thumbnail'] = "";
}
if (isset($videosInfo['file.hd']) && $videosInfo['file.hd'] != "0") {
	$videosInfo['link.hd'] = $_tool->links('videos/raw/'.$videosInfo['file.hd']);
}
if (isset($videosInfo['file.vga']) && $videosInfo['file.vga'] != "0") {
	$videosInfo['link.vga'] = $_tool->links('videos/raw/'.$videosInfo['file.vga']);
}
if (isset($videosInfo['file.qvga']) && $videosInfo['file.qvga'] != "0") {
	$videosInfo['link.qvga'] = $_tool->links('videos/raw/'.$videosInfo['file.qvga']);
}
if (isset($videosInfo['author.type'], $videosInfo['author.id']) && $videosInfo['author.type'] == "user" && $videosInfo['author.id'] != 0) {
	$getAuthorInfo = $_user->profile(array("action" => "get", "rows" => ["id", "username", "fullname", "avatar.small", "link", "verified"], "label" => "id", "value" => $videosInfo['author.id'], "limit" => "LIMIT 1"));
	if (isset($getAuthorInfo['return'], $getAuthorInfo['data'][0]) && $getAuthorInfo['return'] == true) {
		$getAuthorInfo['data'] = $getAuthorInfo['data'][0];
		$videosInfo['author'] = array(
			"type" => "type",
			"id" => $getAuthorInfo['data']['id'],
			"tag" => $getAuthorInfo['data']['username'],
			"name" => $getAuthorInfo['data']['fullname'],
			"avatar" => $getAuthorInfo['data']['avatar.small'],
			"link" => $getAuthorInfo['data']['link'],
			"verified" => $getAuthorInfo['data']['verified']
		);
	}else {
		//.
	}
}else {
	//.
}
if (isset($videosInfo['author']) && count($videosInfo['author']) > 0) {
	$vCountQuery = mysqli_query($_db->port('beta'), "SELECT `id` FROM `videos_info` WHERE `author.type` = '{$videosInfo['author.type']}' AND `author.id` = '{$videosInfo['author.id']}'");
	if ($vCountQuery == true) {
		$videosInfo['author']['vcount'] = $_tool->convertNumber(mysqli_num_rows($vCountQuery));
	}else {
		$videosInfo['author']['vcount'] = "000";
	}
}
if (1 + 1 == 2) {
	if (!isset($videosInfo['description']) || $videosInfo['description'] == null) $videosInfo['description'] = $_language->text('description_not_updated', 'ucfirst');
}
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="videos watch">
	<head>
		<title>.</title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/videos.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<div id="playerTab" class="tab boxGrid">
						<div class="content">
							<video id="videoPlayer" class="gplayer-skin v-simple video">
								<!--<source src="<?php print $videosInfo['link.qvga']; ?>" type="video/mp4">-->
								<!-- <source src="<?php print $videosInfo['link.sd']; ?>" type="<?php print $videosInfo['mime_type']; ?>"> -->
							</video>
						</div>
					</div>
					<div id="infoTab" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $videosInfo['name']; ?></span>
						</div>
						<div class="content">
							<div class="leftRow rows">
								<div class="box author">
									<div class="bartext"><i></i><span> - <?php print $_language->text('author', 'ucfirst'); ?></span></div>
									<div class="context">
										<div class="linetext info">
											<div class="left box">
												<a href="<?php print $videosInfo['author']['link']; ?>"><img class="avatar img" src="<?php print $videosInfo['author']['avatar']; ?>"> </a>
											</div>
											<div class="right box">
												<div class="name text"> <a href="<?php print $videosInfo['author']['link']; ?>"><?php print $videosInfo['author']['name']; ?></a> </div>
												<div class="tag text"> <a href="<?php print $videosInfo['author']['link']; ?>"><?php print $videosInfo['author']['tag']; ?></a> </div>
												<div class="videoscount text"> <a href="#"><?php print $videosInfo['author']['vcount']; ?> <?php print $_language->text('videos', 'strtolower'); ?></a> </div>
											</div>
										</div>
										<div class="linetext action">
											<?php
											if (isset($g_user['login']) && $g_user['login'] == true) {
												print "

												";
											}else {
												print "
												<div class='text'> <span>{$_language->text('login_interact_this_author', 'strtolower')}</span> </div>
												";
											}
											?>
										</div>
									</div>
								</div>
								<div class="box description">
									<div class="bartext"><i></i><span> - <?php print $_language->text('description', 'ucfirst'); ?></span></div>
									<div class="context">
										<?php
										if (isset($videosInfo['time']) && $videosInfo['time'] != null) {
											print "
											<div class='linetext createtime'>
												<div class='text'>
													<i class='_tt-bk w' title='{$_language->text('time_upload', 'ucfirst')}'></i>
													<span> - {$_language->text('posted_at', 'ucfirst')} {$_tool->agoDatetime($videosInfo['time'], 'ago')}</span>
												</div>
											</div>
											";
										}
										?>
										<?php
										if (isset($videosInfo['duration']) && $videosInfo['duration'] != null) {
											print "
											<div class='linetext duration'>
												<div class='text'>
													<i class='_tt-bk w' title='{$_language->text('duration', 'ucfirst')}'></i>
													<span> - {$_language->text('duration', 'ucfirst')}: {$_tool->convertTimetoDuration($videosInfo['duration'])}</span>
												</div>
											</div>
											";
										}
										?>
										<?php
										if (isset($videosInfo['playlist']['name'], $videosInfo['playlist']['link']) && $videosInfo['playlist']['link'] != null) {
											print "
											";
										}
										?>
										<?php
										if (isset($videosInfo['description']) && $videosInfo['description'] != null) {
											print "
											<div class='linetext intro'>
												<div class='text'>
													<i class='_tt-bk w' title='{$_language->text('description', 'ucfirst')}'></i>
													<span> - {$videosInfo['description']}</span>
												</div>
											</div>
											";
										}
										?>
									</div>
								</div>
							</div>
							<div class="rightRow rows">
								<div class="box statistic">
									<div class="bartext"><i></i><span> - <?php print $_language->text('statistic', 'ucfirst'); ?></span></div>
									<div class="context">
										<div class="linetext views">
											<div class="text">
												<i class="_tt-bk e" title="<?php print $_language->text('statistical_views', 'ucfirst'); ?>"></i><span> - <?php 
												$arrayStringConvert = array(
												    '{_viewstotal_}' => '<a>xxxxx</a>',
												    '{_viewsmonth_}' => '<a>xxxx</a>',
												    '{_viewstoday_}' => '<a>xxx</a>',
												    '{_viewsnow_}' => '<a>xx</a>'
												); 
												print str_ireplace(array_keys($arrayStringConvert), array_values($arrayStringConvert), $_language->text('videos_watch_views_description', 'ucfirst')); ?></span>
											</div>
										</div>
										<div class="linetext share">
											<div class="text">
												<i class="_tt-bk e" title="<?php print $_language->text('statistical_share', 'ucfirst'); ?>"></i><span> - <?php 
												$arrayStringConvert = array(
												    '{_sharetotal_}' => '<a>xxxxx</a>',
												    '{_shareingiccos_}' => '<a>xxxx</a>',
												    '{_shareinother_}' => '<a>xxx</a>'
												);
												print str_ireplace(array_keys($arrayStringConvert), array_values($arrayStringConvert), $_language->text('videos_watch_share_description', 'ucfirst')); ?></span>
											</div>
										</div>
									</div>
								</div>
								<div class="box share">
									<div class="bartext"><i></i><span> - <?php print $_language->text('share', 'ucfirst'); ?></span></div>
									<div class="context"><br></div>
								</div>
							</div>
						</div>
					</div>
					<div id="commentsTab" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('comments', 'ucfirst'); ?></span>
						</div>
						<div class="content">
						<?php
						if (isset($videosInfo['private.comment']) && $videosInfo['private.comment'] == 0) {
							print "
							<div class='null nowrap'>
								<span>{$_language->text('comment_disabled', 'ucfirst')}</span>
							</div>
							";
						}else {
							if ($videosInfo['private.comment'] >= $videosInfo['guy']) {
								print "
								";
							}else {
								print "
								<div class='null nowrap'>
									<span>{$_language->text('comment_limited', 'ucfirst')}</span>
								</div>
								";
							}
						}
						?>
						</div>
					</div>
				</div>
				<div id="rightBox">
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('sponsored', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('you_may_want_watch', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<!--<script src="<?php print $_tool->links("source/js/videos.js"); ?>" type="text/javascript"></script>-->
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
	<script type="text/javascript">
	$(document).ready(function(){
		var resizeCallbackFunc = function () {
			var button = this;
			var player = button['player_'];
			var playerElement = $('#' + player['id_']);
			var isActivated = button.hasClass('gplayer-control-active');
			if (isActivated == true) {
				$("#gBox").addClass("playerFullWeight");
			}else {
				$("#gBox").removeClass("playerFullWeight");
			}
		};
		var videoPlayer_options = {
			'src': [
				{'text': '360p', 'type': 'video/mp4', 'source': 'http://localhost/giccos/music/raw/e17e7e16660319767cd7cccda70a8fd3'}, 
				{'text': '240p', 'type': 'video/mp4', 'source': 'http://localhost/giccos/music/raw/e17e7e16660319767cd7cccda70a8fd3'}
			],
			'height': '345px',
			'width': '100%',
			'controls': true,
			'autoplay': true,
			'preload': 'auto',
			'controlBar': {
    			// 'muteToggle': false
  			},
			'plugins': {
	    		'replay': {
	      			'active': true,
	      			'mime': '<?php print $videosInfo['mime_type']; ?>',
					'display': '<?php print $videosInfo['display']; ?>',
					'distance': 3,
					'expires': 900,
					'autoplay': true
				},
				'information': {
					'active': false
				},
				'loop': {
					'active': true
				},
				'progresstips': {
					'active': true
				},
				'reisze': {
					'active': true,
					'type': 1,
					'callback': resizeCallbackFunc
				}
			}
		};
		var thumbnailLink = "<?php print $videosInfo['link.thumbnail']; ?>";
		if (isset(thumbnailLink) && thumbnailLink != "") {
			videoPlayer_options['poster'] = thumbnailLink;
		}
		var videoPlayer = gplayer("videoPlayer", videoPlayer_options);
	});
	</script>
</html>