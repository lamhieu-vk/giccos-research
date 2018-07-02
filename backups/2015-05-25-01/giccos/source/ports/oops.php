<?php
header($_parameter->get('contentType_html.utf8'));
if (isset($oopsPage['page']['reason'])) {
	$pageNotify['reason'] = $oopsPage['page']['reason'];
}else {
	$pageNotify['reason'] = $_language->text('not_found', 'ucfirst');
}
if (isset($oopsPage['page']['description'])) {
	$pageNotify['description'] = $oopsPage['page']['description'];
}else {
	$pageNotify['description'] = $_language->text('oops_description_notfound', 'ucfirst');
}
if (isset($oopsPage['page']['error'])) {
	$pageNotify['error'] = $oopsPage['page']['error'];
}else {
	$pageNotify['error'] = $_language->text('oops_error_notfound', 'ucfirst');
}
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="oops">
	<head>
		<title>Oops.</title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/oops.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div class="title nowrap"><span>Oops.</span></div>
			</div>
			<script src="<?php print $_tool->links("source/js/opps.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource"></div>
	</body>
</html>