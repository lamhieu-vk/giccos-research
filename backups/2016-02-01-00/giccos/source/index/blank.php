<!DOCTYPE html>
<html lang="<?php print $_language->using(); ?>" id="giccos">
	<head>
		<title>blank • giccos</title>
		<script src="<?php print $_tool->links("source/js/template/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="g-page">
			<?php require_once ("source/index/template/navbar.php"); ?>
			<div id="g-main">
				<div class="window" window-tab-local="blank" window-tab-disabled="false">
					<div class="content module-tab e-m clearfix">
						<div class="module-card extra">
							<div class="_card"><br></div>
						</div>
						<div class="module-card main">
							<div class="_card"><br></div>
						</div>
					</div>
					<div class="include"></div>
				</div>
			</div>
			<?php require_once ("source/index/template/sidebar.php"); ?>
		</div>
	</body>
	<script type="text/javascript" document-script-config>
		var windowTabElem = (document.querySelectorAll("[window-tab-local='blank']")[0]);
		windowTabElem.setAttribute('window-tab-document', '<?php print json_encode(array("id" => "giccos", "lang" => $_language->using())); ?>')
		windowTabElem.setAttribute('window-tab-title', (document.querySelectorAll("title")[0]).textContent);
		windowTabElem.setAttribute('window-tab-url', (window.location.protocol + '//' + window.location.host + window.location.pathname));
		var documentScriptConfig = (document.querySelectorAll("[document-script-config]")[0]);
		documentScriptConfig.remove();
	</script>
</html>