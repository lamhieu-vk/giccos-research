<?php
header($_parameter->get('contentType_html.utf8'));
$messagesIdRequest = "SELECT * FROM `messages_id` WHERE `id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}');";
$messagesIdQuery = mysqli_query($_db->port('beta'), $messagesIdRequest);
if ($messagesIdQuery == true) {
	$messagesIdCount = mysqli_num_rows($messagesIdQuery);
}else {
	print $messagesIdRequest;
	die;
	//.
}
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="messages general">
	<head>
		<title> - </title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/messages.css"); ?>" rel="stylesheet" />
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
					<div id="messagesData" class="boxGrid">
						<div class="title nowrap">
							<a href="#"><span><?php print $_language->text('messages', 'ucfirst'); ?></span></a>
							<div class="messagesCreateButton" messages-create-button><i class="_tt-bk e" title="<?php print $_language->text('create_new_messages', 'ucfirst'); ?>"></i></div>
						</div>
						<div class="content">
							<?php
							if ($messagesIdCount == 0) {
								print "
								<div class='null notify'>
									<div class='icon'></div>
									<span>{$_language->text('dont_have_messages', 'ucfirst')}</span>
								</div>
								";
							}else {
								//.
							}
							?>
						</div>
					</div>
				</div>
				<div id="rightBox">
					<div id="messagesStats" class="boxGrid">
						<div class="title nowrap">
							<a href="#"><span><?php print $_language->text('statistic', 'ucfirst'); ?></span></a>
						</div>
						<div class="content"><br></div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/messages.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>