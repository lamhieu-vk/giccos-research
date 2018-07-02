<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>">
	<head>
		<title> - </title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/videos.embed.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<video id="onVideos" class="video-js vjs-default-skin" controls preload="auto" width="100%" height="100%" data-setup="{}">
			<?php
			if (in_array($videos_mime, array("video/x-flv"))) {
				//print "<source src='{$videos_url['sd']}' type='{$videos_mime}'>";
			}else {
				print "<source src='{$videos_url['sd']}' type='{$videos_mime}'>";
			}
			?>
		</video>
		<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		<script type="text/javascript">
		var video = mediaPlayer("onVideos", {
		    controls: true,
		    autoplay: false,
		    preload: "auto",
		    poster: "<?php print $videos_thumbnail; ?>",
		    techOrder: ["html5", "flash"],
		    plugins: {
		    	loopbutton: true
		    }
		},function () {
			$("#onVideos").bind("resizeEnd", function(){
				$(this).width(window.width()).height(window.height());
			});
		});
		</script>
	</body>
</html>