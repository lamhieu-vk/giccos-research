<?php
$getImageStreamAction = $_image->stream(array(
	"action" => "get",
	"user" => array(
		"id" => $_user->using(),
		"mode" => array(
			"type" => $_user->mode()['type'],
			"id" => $_user->mode()['id']
		)
	),
	"filter" => array(
		// "id" => ["13"]
	),
	"order" => "id",
	"sort" => ">"
));
$dataImageStream = array();
foreach ($getImageStreamAction['data'] as $dataId => $dataValue) {
	$fetchImageIdAction = $_image->id(array(
		"action" => "fetch",
		"user" => array(
			"id" => $_user->using(),
			"mode" => array(
				"type" => $_user->mode()['type'],
				"id" => $_user->mode()['id']
			)
		),
		"label" => "id",
		"value" => $dataValue
	));
	if (isset($fetchImageIdAction, $fetchImageIdAction['return'], $fetchImageIdAction['data']) && $fetchImageIdAction['return']) {
		$dataImageStream[] = $fetchImageIdAction['data'][0];
	}
}
?>
<!DOCTYPE html>
<html lang="<?php print $_language->using(); ?>" id="giccos">
	<head>
		<title>stream • image • giccos</title>
		<script src="<?php print $_tool->links("source/js/template/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="g-page">
			<?php require_once ("source/index/template/navbar.php"); ?>
			<div id="g-main">
				<div class="window" window-tab-local="image-stream" window-tab-disabled="false">
					<div class="content module-tab e-m clearfix">
						<div class="module-card extra">
							<div class="_card"><br></div>
						</div>
						<div class="module-card main">
							<div class="editor-tab clearfix">
								<div class="editor-content clearfix _card">
									<div class="content-author">
										<div class="author-thumbnail">
											<div class="img" style="background-image: url(https://lh3.googleusercontent.com/-5ObDI6rzmH4/AAAAAAAAAAI/AAAAAAAADaM/9a9vbFv34As/s100-p-k-rw-no/photo.jpg);"></div>
										</div>
									</div>
									<div class="content-input">
										<div class="input-context nowrap">
											<a class="text" href="<?php print $_tool->links('image/upload'); ?>" target="_blank">upload some image ?</a>
										</div>
									</div>
								</div>
								<div class="editor-suggest"></div>
							</div>
							<div class="stream-tab clearfix">
								<div class="stream-content clearfix">
									<div class="stream-slice" stream-slice-float="left"></div>
									<div class="stream-slice" stream-slice-float="right" style="margin-top: -59px;"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="include">
						<link href="<?php print $_tool->links("source/css/image.css"); ?>" rel="stylesheet">
						<script src="<?php print $_tool->links("source/js/image.js"); ?>" type="text/javascript"></script>
						<link href="<?php print $_tool->links("source/css/image.stream.css"); ?>" rel="stylesheet">
						<script src="<?php print $_tool->links("source/js/image.stream.js"); ?>" type="text/javascript"></script>
						<script type="text/javascript" cache="false">
						var image_stream_setup = function (c) {
							c = typeof c == 'number' ? c : 1;
							if (typeof image_stream_ready == 'function') {
								image_stream_ready();
								var dataImageStream = <?php print json_encode($dataImageStream); ?>;
								for (var i in dataImageStream) {
									_image.stream.card.add(dataImageStream[i]);
								}
							}else {
								if (c < 10) setTimeout(function () { image_stream_setup(c); }, 100);
							}
						};
						image_stream_setup();
						</script>
					</div>
				</div>
			</div>
			<?php require_once ("source/index/template/sidebar.php"); ?>
		</div>
		<div id="g-global"></div>
		<div id="g-source"></div>
	</body>
	<script type="text/javascript" document-script-config>
		var windowTabElem = (document.querySelectorAll("[window-tab-local='image-stream']")[0]);
		windowTabElem.setAttribute('window-tab-document', '<?php print json_encode(array("id" => "giccos", "lang" => $_language->using())); ?>')
		windowTabElem.setAttribute('window-tab-title', (document.querySelectorAll('title')[0]).textContent);
		windowTabElem.setAttribute('window-tab-url', (window.location.protocol + '//' + window.location.host + window.location.pathname));
		var documentScriptConfig = (document.querySelectorAll("[document-script-config]")[0]);
		documentScriptConfig.remove();
	</script>
</html>