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
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/videos.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/videos.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/templates/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/templates/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
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
							<span><?php print $_language->text('information', 'ucfirst'); ?></span>
						</div>
						<div class="content">
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
								<br>
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
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('you_may_want_watch', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
		</div>
		<div id="gInclude"></div>
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
				},
				'pointtag': '<?php print $videosInfo['display']; ?>'
			}
		};

		var thumbnailLink = "<?php print $videosInfo['link.thumbnail']; ?>";
		if (isset(thumbnailLink) && thumbnailLink != "") {
			videoPlayer_options['poster'] = thumbnailLink;
		}
		<?php
		if (isset($videosInfo['link.hd']) && is_string($videosInfo['link.hd']) && $videosInfo['link.hd'] != null) {
			$videoPlayerSrc = "{'text': 'HD', 'type': '".$videosInfo['mime_type']."', 'source': '".$videosInfo['link.hd']."'}";
		}
		if (isset($videosInfo['link.vga']) && is_string($videosInfo['link.vga']) && $videosInfo['link.vga'] != null) {
			if (isset($videoPlayerSrc)) {
				$videoPlayerSrc .= ",";
			}
			$videoPlayerSrc .= "{'text': 'VGA', 'type': '".$videosInfo['mime_type']."', 'source': '".$videosInfo['link.vga']."'}";
		}
		if (isset($videosInfo['link.qvga']) && is_string($videosInfo['link.qvga']) && $videosInfo['link.qvga'] != null) {
			if (isset($videoPlayerSrc)) {
				$videoPlayerSrc .= ",";
			}
			$videoPlayerSrc .= "{'text': 'QVGA', 'type': '".$videosInfo['mime_type']."', 'source': '".$videosInfo['link.qvga']."'}";
		}
		print "videoPlayer_options['src'] = [".$videoPlayerSrc.'];';
		?>
		var videoPlayer = gplayer("videoPlayer", videoPlayer_options);
	});
	</script>
</html>