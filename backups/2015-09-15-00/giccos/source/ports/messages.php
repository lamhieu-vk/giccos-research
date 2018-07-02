<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="messages">
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
					<?php
					if (isset($messages_['page']) && $messages_['page'] == "index") {
						
					}else if (isset($messages_['page']) && $messages_['page'] == "conversation") {
						$messages_['tab'] = $_messages->tab(array("action" => "get", "get" => array("label" => "token", "value" => "ebe59e14"), "rows" => "*"));
						if ($messages_['tab']['return'] == true) {
							$activate = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT `id` FROM `giccos`.`messages_members` WHERE `tab` = '{$messages_['tab']['data']['id']}' AND `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}' LIMIT 1"));
							if ($activate > 0) {
								$messages_['code']['conversation'] = json_encode($messages_['tab']['data']);
								$messages_['code']['data'] = null;
								$messages_['content'] = $_messages->data(array("action" => "get", "tab" => $messages_['tab']['data']['id'], "order" => "ORDER BY `id` DESC", "limit" => "LIMIT 30"));
								if (isset($messages_['content']['return'], $messages_['content']['data']) && $messages_['content']['return'] == true && count($messages_['content']['data']) > 0) {
									foreach ($messages_['content']['data'] as $i => $data) {
										$data['rows'] = json_encode(array("type" => "messages", "id" => $data['id'], "time" => $data['time'], "author" => array("type" => $data['author']['type'], "id" => $data['author']['id'])));
										if ($g_user['mode']['type'] == $data['author']['type'] && $g_user['mode']['id'] == $data['author']['id'] ) {
											$data['class'] = "me";
											$data['tooltip'] = "e";
											$data['author']['code'] = null;
										}else {
											$data['class'] = "guy";
											$data['tooltip'] = "w";
											$data['author']['code'] = "
											<div class='author'>
												<a href='{$data['author']['link']}'><img src='{$data['author']['avatar']}'></a>
											</div>
											";
										}
										$data['content'] = $_tool->parseContent($data['content']);
										$messages_['code']['data'] = "
										<div class='rows {$data['class']}' messages='{$data['rows']}'>
											{$data['author']['code']}
											<div class='context _tt-bk {$data['tooltip']}' time-ago='{$data['time']}' time-tooltip='true' title='{$_tool->agoDatetime($data['time'], 'ago')}'>
												<i class='arrow'></i>
												<span>{$data['content']}</span>
											</div>
										</div>
										".$messages_['code']['data'];
									}
									if (count($messages_['content']['data']) == 20) {

									}
								}
								if (isset($messages_['content']['data'][0]) && $messages_['content']['data'][0]['author']['type'] == $g_user['mode']['type'] && $messages_['content']['data'][0]['author']['id'] == $g_user['mode']['id']) {
									$messages_['views'] = $_messages->views(array("action" => "get", "id" => $messages_['tab']['data']['id']));
									if (isset($messages_['views']['return'], $messages_['views']['data']) && $messages_['views']['return'] == true && count($messages_['views']['data']) > 0) {
										$messages_['code']['data'] .= "
										<div class='rows' seen>
											<span class='_tt-bk e' title='<small>{$messages_['views']['value']}</small>'><i></i> Seen</span>
										</div>
										";
									}
									$messages_['code']['view'] = "true";
								}else {
									$messages_['code']['view'] = "false";
								}
								$messages_['typing'] = $_messages->typing(array("action" => "get", "id" => $messages_['tab']['data']['id']));
								if (isset($messages_['typing']['return'], $messages_['typing']['data']) && $messages_['typing']['return'] == true && count($messages_['typing']['data']) > 0) {
									foreach ($messages_['typing']['data'] as $i => $data) {
										$data['rows'] = json_encode(array("type" => "typing", "author" => array("type" => $data['author']['type'], "id" => $data['author']['id'])));
										if ($g_user['mode']['type'] == $data['author']['type'] && $g_user['mode']['id'] == $data['author']['id'] ) {
											$data['class'] = "me";
											$data['tooltip'] = "e";
											$data['author'] = null;
										}else {
											$data['class'] = "guy";
											$data['tooltip'] = "w";
											$data['author']['code'] = "
											<div class='author'>
												<a href='{$data['author']['link']}'><img src='{$data['author']['avatar']}'></a>
											</div>
											";
										}
										$messages_['code']['data'] .= "
										<div class='rows {$data['class']}' messages='{$data['rows']}'>
											{$data['author']['code']}
											<div class='context _tt-bk {$data['tooltip']}' title='{$_language->text('typing', 'ucfirst', false)}...'>
												<i class='arrow'></i>
												<span><img icon='tying' src='{$_tool->links('photos/raw/static/loading_o_s1_c777.gif')}'></span>
											</div>
										</div>
										";
									}
								}
								print "
								<div id='gMessagesTab' class='boxGrid' view='{$messages_['code']['view']}'>
									<div class='title nowrap'>
										<span class='text'>{$_language->text('conversation_with', 'strtolower')} {$messages_['tab']['data']['name']}</span>
										<a class='settings'></a>
									</div>
									<div class='main'>
										<div class='content'>
											<div class='data' conversation='{$messages_['code']['conversation']}'>
												{$messages_['code']['data']}
											</div>
										</div>
										<div class='type'>
											<div class='input'><textarea class='ip_as' type='text' placeholder='{$_language->text('type_a_messages', 'strtolower')}'></textarea></div>
											<div class='action'>
												<div class='scroll'>
													<div class='checkbox'>
														<input id='checkbox-autoscroll' type='checkbox'>
														<label for='checkbox-autoscroll'>{$_language->text('automatically_pulled_down', 'strtolower')}</label>
													</div>
												</div>
												<div class='send'>
													<div class='checkbox'>
														<input id='checkbox-enter_send' type='checkbox'>
														<label for='checkbox-enter_send'>{$_language->text('press_enter_to_send', 'strtolower')}</label>
													</div>
													<button class='_bn_c-we'>{$_language->text('send', 'strtolower')}</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								";
							}else {
								//.
							}
						}else {
							//.
						}
					}else {
						//.
					}
					?>
					<div id="gMessagesList" class="boxGrid">
						<div class='title nowrap'>
							<span class='text'>Messages list</span>
							<a class='settings'></a>
						</div>
						<div class='main'>
							<div class='content'>
								<div class='data'>
									<?php
									$messages_['list'] = array();
									$messages_['list']['query'] = mysqli_query($_db->port('beta'), "SELECT * FROM `messages_id` WHERE `id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}') LIMIT 20");
									$messages_['list']['num'] = mysqli_num_rows($messages_['list']['query']);
									if ($messages_['list']['num'] > 0) {
										while ($messages_['list']['fetch'] = mysqli_fetch_assoc($messages_['list']['query'])) {
											$messages_['list']['tab'] = $messages_['tab'] = $_messages->tab(array("action" => "get", "get" => array("label" => "token", "value" => $messages_['list']['fetch']['token']), "rows" => "*"))['data'];
											$messages_['list']['data'] = $_messages->data(array("action" => "get", "tab" => $messages_['list']['tab']['id'], "order" => "ORDER BY `id` DESC", "limit" => "LIMIT 1"))['data'];
											$messages_['list']['members'] = $_messages->members(array("action" => "get", "id" => $messages_['list']['tab']['id'], "rows" => "`guy.type`, `guy.id`", "limit" => "LIMIT 4"))['data'];
											if (count($messages_['list']['members']) == 4) {
												$messages_['list']['content']['thumbnail'] = "<div class='avatar s_fr'>";
											}else if (count($messages_['list']['members']) == 3) {
												$messages_['list']['content']['thumbnail'] = "<div class='avatar s_te'>";
											}else if (count($messages_['list']['members']) == 2) {
												$messages_['list']['content']['thumbnail'] = "<div class='avatar s_to'>";
											}else {
												$messages_['list']['content']['thumbnail'] = "<div class='avatar'>";
											}
											foreach ($messages_['list']['members'] as $messages_['list']['membersThis']) {
												if ($messages_['list']['membersThis']['guy.type'] == "user") {
													$messages_['list']['content']['thumbnail'] .= "<div class='img' style='background-image: url({$_user->getInfo(array("id" => $messages_['list']['membersThis']['guy.id'], "rows" => "`avatar.small`"))['data']['avatar.small']});'></div>";
												}
											}
											$messages_['list']['content']['thumbnail'] .= "</div>";
											$messages_['list']['content']['name'] = $messages_['list']['tab']['name'];
											if (count($messages_['list']['data']) == 0) {
												//.
											}else {
												$messages_['list']['content']['time'] = $messages_['list']['data'][0]['time'];
												$messages_['list']['content']['text'] = $messages_['list']['data'][0]['author']['name'].": ".$messages_['list']['data'][0]['content'];
											}
											$messages_['list']['content']['viewed'] = $_messages->views(array("action" => "viewed", "id" => $messages_['list']['tab']['id'], "guy" => array("type" => $g_user['mode']['type'], "id" => $g_user['mode']['id'])))['value'];
											if ($messages_['list']['content']['viewed'] == 1) {
												$messages_['list']['content']['viewed'] = "viewed";
											}
											print "
											<div class='rows'>
												{$messages_['list']['content']['thumbnail']}
												<div class='info'>
													<div class='name nowrap'><i></i><span>{$messages_['list']['content']['name']}</span></div>
													<div class='time nowrap'><i></i><span time-ago='{$messages_['list']['content']['time']}'>{$_tool->agoDatetime($messages_['list']['content']['time'], 'ago', false)}</span></div>
													<div class='text nowrap {$messages_['list']['content']['viewed']}'><i></i><span>{$messages_['list']['content']['text']}</span></div>
												</div>
											</div>
											";
										}
										if ($messages_['list']['num'] >= 20) {
											print "
											<div class='rows load_more'>
												<span>{$_language->text('load_more', 'ucfirst', false)}</span>
											</div>
											";
										}
									}else {

									}
									?>
								</div>
							</div>
						</div>
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