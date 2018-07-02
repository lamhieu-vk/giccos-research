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
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
				<?php 
					$boxLinksRequire['mode'] = $boxLinksRequire['groups'] = $boxLinksRequire['hashtag'] = true;
					require_once ("templates/box_links.php"); 
				?>
				</div>
				<div id="centerBox">
					<div id="messagesData" class="boxGrid">
						<div class="title nowrap">
							<a href="#"><span><?php print $_language->text('messages', 'ucfirst'); ?></span></a>
							<div class="messagesCreateButton" messages-create-button>
								<i class="_tt-bk e" title="<?php print $_language->text('create_new_messages', 'strtolower'); ?>"></i>
							</div>
						</div>
						<div class="content">
							<?php
							if ($messagesIdCount == 0) {
								print "
								<div class='list'>
									<div class='null notify'>
										<div class='icon'></div>
										<span>{$_language->text('dont_have_messages', 'strtolower')}</span>
									</div>
								</div>
								";
							}else {
								//.
								$messagesTabArr = array();
								$codeLinesTab = null;
								$messagesDataLastReuqest = "SELECT * FROM `messages_id` WHERE `id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}') ORDER BY `action` DESC LIMIT 20";
								$messagesDataLastQuery = mysqli_query($_db->port('beta'), $messagesDataLastReuqest);
								if (!$messagesDataLastQuery) {
									//.
								}
								while ($messagesDataLastFetch = mysqli_fetch_assoc($messagesDataLastQuery)) {
									$messagesTabArr[] = array("id" => $messagesDataLastFetch['id']);
								}
								foreach ($messagesTabArr as $tabKey => $messagesDataLastFetch) {
									$getMessagesTab = $_messages->tab(array("action" => "get", "label" => "id", "value" => $messagesDataLastFetch['id'], "limit" => "LIMIT 1"));
									//print_r($getMessagesTab); die;
									if (isset($getMessagesTab['return'], $getMessagesTab['tab'][0]) && $getMessagesTab['return'] == true) {
										$messagesTabInfo = $getMessagesTab['tab'][0];
										$messagesTabInfo['json'] = json_encode(array("id" => $messagesTabInfo['id'], "time" => $messagesTabInfo['time'], "display" => $messagesTabInfo['display'], "type" => $messagesTabInfo['type'], "name" => $messagesTabInfo['name'], "language" => $messagesTabInfo['language']));
										$getMessagesMembers = $_messages->members(array("action" => "get", "label" => "tab", "value" => $messagesTabInfo['id'], "limit" => "LIMIT 4"));
										if (isset($getMessagesMembers['return'], $getMessagesMembers['data']) && $getMessagesMembers['return']) {
											$codeLinesThumbnail = $codeLinesContent = null;
											$getMessagesMembers['count']--;
											if ($getMessagesMembers['count'] == 4) {
												$codeLinesThumbnail = "<div class='thumbnail fo'>";
											}else if ($getMessagesMembers['count'] == 3) {
												$codeLinesThumbnail = "<div class='thumbnail th'>";
											}else if ($getMessagesMembers['count'] == 2) {
												$codeLinesThumbnail = "<div class='thumbnail tw'>";
											}else if ($getMessagesMembers['count'] == 1) {
												$codeLinesThumbnail = "<div class='thumbnail on'>";
											}else {
												continue;
											}
											foreach ($getMessagesMembers['data'] as $key => $getMessagesMembersThis) {
												if (!isset($getMessagesMembersThis['guy.type'])) {
													//.
												}
												if ($getMessagesMembersThis['guy.type'] == $g_user['mode']['type'] && $getMessagesMembersThis['guy.id'] == $g_user['mode']['id']) {
													continue;
												}
												if (in_array($getMessagesMembersThis['guy.type'], ["user", "users"])) {
													$getMemberThis = $_user->profile(array("action" => "get", "rows" => ["avatar.small"], "label" => "id", "value" => $getMessagesMembersThis['guy.id']));
													if (isset($getMemberThis['return'], $getMemberThis['data'][0]) && $getMemberThis['return'] == true) {
														$getMessagesMembersThis['avatar'] = $getMemberThis['data'][0]['avatar.small'];
													}
												}
												if (isset($getMessagesMembersThis['avatar']) && $getMessagesMembersThis['avatar'] != null) {
													$codeLinesThumbnail .= "<div class='img' style='background-image: url({$getMessagesMembersThis['avatar']});'></div>";
												}
											}
											$codeLinesThumbnail .= "</div>";
											$getMessagesContent = $_messages->data(array("action" => "get", "language" => null, "id" => $messagesTabInfo['id'], "sort" => ">=<", "limit" => "LIMIT 1"));
											if (isset($getMessagesContent['return'], $getMessagesContent['data'][0]) && $getMessagesContent['return'] == true) {
												$codeLinesContentBy = null;
												if ($getMessagesContent['data'][0]['author']['type'] == $g_user['mode']['type'] && $getMessagesContent['data'][0]['author']['id'] == $g_user['mode']['id']) {
													$codeLinesContentBy = $_language->text('you', 'strtolower').": ";
												}
												if ($codeLinesContentBy == null && $getMessagesContent['data'][0]['author']['id'] == "user") {
													$getMemberThis = $_user->profile(array("action" => "get", "rows" => ["lastname"], "label" => "id", "value" => $getMessagesContent['data'][0]['author']['id']));
													if (isset($getMemberThis['return'], $getMemberThis['data'][0]) && $getMemberThis['return'] == true) {
														$codeLinesContentBy = $getMemberThis['data'][0]['lastname'].": ";
													}
												}
												$codeLinesContent = "
												<div class='text'>
													<span>".$codeLinesContentBy.$_tool->parseContent(preg_replace("/([\n]+)/", " ", $getMessagesContent['data'][0]['content']['text']))."</span>
												</div>
												<div class='time _tt-bk e' title='".$_tool->agoDatetime($getMessagesContent['data'][0]['time'], 'tip')."' time='".json_encode(array("stamp" => $getMessagesContent['data'][0]['time']))."'>
													<i></i> <span date-show>".$_tool->agoDatetime($getMessagesContent['data'][0]['time'], 'ago')."</span>
												</div>
												";
											}else {
												$codeLinesContent = "
												<div class='text'>
													<span>".$_language->text('conversation_not_have_messages', 'strtolower')."</span>
												</div>
												<div class='time''>
													<i></i> <span date-show>".$_language->text('unknown', 'strtolower')."</span>
												</div>
												";
											}
										}
										$codeLinesTab .=  "
										<div class='lines tab' type='{$messagesTabInfo['type']}' display='{$messagesTabInfo['display']}' tab='{$messagesTabInfo['json']}' direct='".json_encode(array("link" => $_tool->links('messages/private/'.$messagesTabInfo['display']), "by" => "dblclick", "target" => "_blank"))."'>
											<div class='header'>
												<div class='name _tt-bk s' title='".$messagesTabInfo['name']."'>
													<i></i>
													<span>{$messagesTabInfo['name']}</span>
												</div>
											</div>
											<div class='body'>
												<div class='box left'>
													{$codeLinesThumbnail}
												</div>
												<div class='box right'>
													{$codeLinesContent}
												</div>
											</div>
										</div>
										";
									}
								}
								print "
								<div class='list'>{$codeLinesTab}</div>
								";
							}
							?>
						</div>
					</div>
					<div id="nullBox" class="boxGrid"></div>
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
			<div id="gInclude">
				<link href="<?php print $_tool->links("source/css/messages.css"); ?>" rel="stylesheet" />
				<script src="<?php print $_tool->links("source/js/messages.js"); ?>" type="text/javascript"></script>
				<script src="<?php print $_tool->links("source/js/messages.general.js"); ?>" type="text/javascript"></script>
			</div>
		</div>
		<?php require_once ("templates/sidebar.php"); ?>
		<div id="gGlobal"></div>
		<div id="gSource"></div>
	</body>
</html>