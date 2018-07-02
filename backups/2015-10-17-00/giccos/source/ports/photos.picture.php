<?php
$dataFile = $dataFile[0];
$getGuy = $_media->guy(array("author" => array("type" => $dataFile['author.type'], "id" => $dataFile['author.id']), "guy" => array("type" => $g_user['mode']['type'], "id" => $g_user['mode']['id'])));
if (isset($getGuy['return'], $getGuy['guy']) && $getGuy['return'] == true) {
	$dataFile['guy'] = $getGuy['guy'];
}else {
	$dataFile['guy'] = 4;
}
if (isset($dataFile['guy']) && ($dataFile['guy'] == 5 || $dataFile['guy'] >= $_parameter->get('private.public'))) {
	$dataFile['blocked'] = true;
}else {
	$dataFile['blocked'] = false;
}
if (isset($dataFile['blocked']) && $dataFile['blocked'] == true) {
	die(require_once("source/ports/oops.php"));
}else {
	$photos_['content']['title'] = $dataFile['nameraw']." :: ".$photos_['content']['title'];
}
//.
if (isset($dataFile['path.original'])) {
	$dataFile['source.original'] = $_tool->links('photos/raw/'.$dataFile['file.original']);
}
if (isset($dataFile['path.large'])) {
	$dataFile['source.large'] = $_tool->links('photos/raw/'.$dataFile['file.large']);
}
if (isset($dataFile['path.medium'])) {
	$dataFile['source.medium'] = $_tool->links('photos/raw/'.$dataFile['file.medium']);
}
if (isset($dataFile['path.small'])) {
	$dataFile['source.small'] = $_tool->links('photos/raw/'.$dataFile['file.small']);
}
if (isset($dataFile['source.large'])) {
	$dataFile['source.display'] = $dataFile['source.large'];
}else {
	$dataFile['source.display'] = $dataFile['source.original'];
}
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="photos picture">
	<head>
		<title><?php print $photos_['content']['title']; ?></title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/photos.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<div id="suggestBox" class="boxGrid boxContent">
						<div class="title">
							<span><?php print $_language->text('related_content', 'ucfirst') ?></span>
						</div>
						<br>
					</div>
				</div>
				<div id="rightBox">
					<div id="viewBox" class="boxGrid boxContent">
						<div class="title">
							<span><?php print $_language->text('photos', 'ucfirst') ?></span>
						</div>
						<div class="content">
							<div class="imgDisplay">
								<img class="imgSrcThumbnail" src="<?php print $dataFile['source.display']; ?>">
							</div>
						</div>
					</div>
					<div id="infoBox" class="boxGrid boxContent">
						<div class="title">
							<span><?php print $_language->text('information', 'ucfirst') ?></span>
						</div>
						<div class="content">
							<div class="leftContent">
								<div class="author">
									<div class="bartext"><span>Author information</span></div>
									<div class="context"></div>
								</div>
								<div class="file">
									<div class="bartext"><span>File information</span></div>
									<div class="context"></div>
								</div>
							</div>
							<div class="rightContent">
								<div class="share">
									<div class="bartext"><span>Share & Embed</span></div>
									<div class="context"></div>
								</div>
								<div class="config">
									<div class="bartext"><span>File config</span></div>
									<div class="context"></div>
								</div>
							</div>
						</div>
					</div>
					<div id="commentBox" class="boxGrid boxContent">
						<div class="title">
							<span><?php print $_language->text('comments', 'ucfirst') ?></span>
						</div>
						<div class="content">
							<br>
						</div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/photos.post.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>