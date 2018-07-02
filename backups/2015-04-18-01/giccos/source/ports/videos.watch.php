<?php
header($_parameter->get('contentType_html.utf8'));
if (isset($videosInfo['file.thumbnail']) && $videosInfo['file.thumbnail'] != 0) {
	$videosInfo['link.thumbnail'] = $_tool->links('videos/raw/thumbnail/').$videosInfo['file.thumbnail'];
}
if (isset($videosInfo['file.sd']) && $videosInfo['file.sd'] != 0) {
	$videosInfo['link.sd'] = $_tool->links('videos/raw/').$videosInfo['file.sd'];
}
// print_r($videosInfo); die;
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>">
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
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $videosInfo['name']; ?></span>
						</div>
						<div class="content">
							<video id="videoPlayer" class="gplayer-skin video">
								<source src="<?php print $videosInfo['link.sd']; ?>" type="<?php print $videosInfo['mime_type']; ?>">
							</video>
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
			<script src="<?php print $_tool->links("source/js/videos.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
	<script type="text/javascript">
	$(document).ready(function(){
		var videoPlayer_options = {
			'height': '360px',
			'width': '100%',
			'controls': true,
			'autoplay': true,
			'preload': 'auto',
			'poster': '<?php print $videosInfo['link.thumbnail']; ?>',
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
				}
			}
		};
		var videoPlayer = gplayer("videoPlayer", videoPlayer_options);
	});
	</script>
</html>