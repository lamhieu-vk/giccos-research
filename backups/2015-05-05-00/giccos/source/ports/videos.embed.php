<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>">
	<head>
		<title>.</title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/videos.embed.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<div id="gBox">
				<div></div>
			</div>
			<script src="<?php print $_tool->links("source/js/videos.embed.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>