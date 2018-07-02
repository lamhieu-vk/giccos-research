<?php
header($_parameter->get('contentType_html.utf8'));
//print_r($g_user['suggest']['weather']);
//print_r($_SESSION['xx']); die;
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed hashtag">
	<head>
		<title><?php if (isset($feed_['content']['title']) && $feed_['content']['title'] != null) { print $feed_['content']['title'].' :: '; } print $_language->text('pages_hashtag.title', 'ucwords', false, false); ?></title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/feed.css"); ?>" rel="stylesheet" />
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
					require_once ("templates/box_ask.php");
					if (isset($feed_['content']['editor']) && $feed_['content']['editor'] == true) {
						require_once ("templates/editor.php");
					}
					if (isset($feed_['value']) && $feed_['value'] == true) {
						if (isset($feed_['query']['code']) && is_string($feed_['query']['code'])) {
							$getFeed = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $feed_['query']['code'], "media" => true));
							if (isset($getFeed['return'], $getFeed['count'], $getFeed['data']) && $getFeed['return'] == true) {
								if ($getFeed['count'] == 0) {
									$feed_['content']['code'] = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
								}else {
									$feed_['content']['code'] = $getFeed['data'];
								}
							}else {
								$feed_['content']['code'] = null;
							}
							$feed_['statistic']['total']['people'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT DISTINCT `author.type`, `author.id` FROM `status` WHERE `hashtag` = '1' AND `id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']})"));
							$feed_['statistic']['total']['times'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT DISTINCT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']}"));
							$feed_['statistic']['total']['places'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT DISTINCT `value` FROM `status_places` WHERE `status.id` IN (SELECT `id` FROM `status` WHERE `places` = '1' AND `hashtag` = '1' AND `id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']}))"));
							$feed_['statistic']['today']['people'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT DISTINCT `author.type`, `author.id` FROM `status` WHERE `time` > '{$_tool->timeNow()}' - '86400' AND `hashtag` = '1' AND `id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']})"));
							$feed_['statistic']['today']['times'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT DISTINCT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']} AND `status.id` IN (SELECT `id` FROM `status` WHERE `time` > '{$_tool->timeNow()}' - '86400' AND `hashtag` = '1')"));
							$feed_['statistic']['today']['places'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT DISTINCT `value` FROM `status_places` WHERE `status.id` IN (SELECT `id` FROM `status` WHERE `time` > '{$_tool->timeNow()}' - '86400' AND `places` = '1' AND `hashtag` = '1' AND `id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']}))"));
						}else {
							$feed_['content']['code'] = null;
							$feed_['statistic']['total']['people'] = $feed_['statistic']['total']['times'] = $feed_['statistic']['total']['places'] = 0;
							$feed_['statistic']['today']['people'] = $feed_['statistic']['today']['times'] = $feed_['statistic']['today']['places'] = 0;
						}
						if ($feed_['chatbox']['get'] == true) {
							$message_query = mysqli_query($_db->port('beta'),"SELECT * FROM `messages_hashtag` WHERE `hashtag` = '{$feed_['chatbox']['keyword']}' ORDER BY `id` DESC LIMIT 20");
							if (mysqli_num_rows($message_query) == 0) {
								$message_content = null;
							}else {
								$message_content = null;
								while ($message = mysqli_fetch_assoc($message_query)) {
									$author['type'] = $message['author.type'];
									$author['id'] = $message['author.id'];
									if ($message['author.type'] == "user") {
										$getUser = $_user->getInfo(array("rows" => "`avatar.small`, `cover.small`, `fullname`, `username`, `link`", "id" => $message['author.id']));
										if (isset($getUser['return'], $getUser['data']) && $getUser['return'] == true) {
											$author['avatar'] = $getUser['data']['avatar.small'];
											$author['cover'] = $getUser['data']['cover.small'];
											$author['name'] = $getUser['data']['fullname'];
											$author['tag'] = $getUser['data']['username'];
											$author['link'] = $getUser['data']['link'];
										}else {
											continue;
										}
									}else {
										continue;
									}
									$message['rows'] = json_encode(array("local" => "chatbox", "type" => "hashtag", "hashtag" => $message['hashtag'], "id" => $message['id'], "author" => array("type" => $author['type'], "id" => $author['id'])));
									$message['cache']['time'] = $message['time'];
									$message['time'] = array();
									$message['time']['stamp'] = $message['cache']['time'];
									$message['time']['tip'] = $_tool->agoDatetime($message['time']['stamp'], 'tip');
									$message['time']['ago'] = $_tool->agoDatetime($message['time']['stamp'], 'ago');
									$message['time']['json'] = json_encode(array("stamp" => $message['time']['stamp']));
									$message['content'] = $_tool->parseContent($message['content']);
									$message_content = "
									<div class='rows' message='{$message['rows']}'>
										<div class='author'>
											<a href='{$author['link']}'><img src='{$author['avatar']}'></a>
										</div>
										<div class='message'>
											<div class='i'></div>
											<div class='header'>
												<div class='nowrap name'>
													<i class='_tt s i-user' title='{$author['tag']}'></i>
													<span><a href='{$author['link']}'>{$author['name']}</a></span>
												</div>
												<div class='nowrap time' time='{$message['time']['json']}'>
													<i class='_tt s' title='{$message['time']['tip']}'></i>
													<span time-show>{$message['time']['ago']}</span>
												</div>
											</div>
											<div class='body'>
												<span>{$message['content']}</span>
											</div>
										</div>
									</div>
									".$message_content;
								}
							}
							$feed_['content']['chatbox'] = "
							<div class='chatbox inFeeds boxGrid' keyword='{$feed_['chatbox']['keyword']}'>
								<div class='title'>
									<span class='_tt-bk w' title='{$_language->text('click_close', 'ucfirst')}'>{$_language->text('chatbox', 'ucfirst')}</span>
								</div>
								<div class='content'>
									<div class='description'>
										<span></span>
									</div>
									<div class='main'>
										<div class='list'>
											{$message_content}
										</div>
									</div>
									<div class='type'>
										<textarea type='text' placeholder='{$_language->text('type_messages', 'ucfirst')}'></textarea>
									</div>
								</div>
							</div>
							";
						}else {
							$feed_['content']['chatbox'] = null;
						}
						if (isset($feed_['content']['this'], $feed_['content']['this']['port'], $feed_['content']['this']['port']['require']) && count($feed_['content']['this']['port']['require']) > 0) {
							$dataDefineArr = $defineWordArr = array();
							foreach ($feed_['content']['this']['port']['require'] as $key => $thisRequire) {
								$thisRequireWord = $thisRequire[0];
								if (preg_match("/^([a-zA-Z]+)$/", $thisRequireWord)) {
									$defineWordArr[] = $thisRequireWord;
								}
							}
							if (!isset($_COOKIE['gFeeds_Tags_Define_Unavailable']) || !is_string($_COOKIE['gFeeds_Tags_Define_Unavailable'])) {
								$defineUnavailableArr = array();
							}else {
								$defineUnavailableArr = unserialize($_tool->hash('decode', $_COOKIE['gFeeds_Tags_Define_Unavailable'], ''));
							}
							$defineWordArr = array_unique($defineWordArr);
							foreach ($defineWordArr as $defineWordThis) {
								if (!in_array($defineWordThis, $defineUnavailableArr)) {
									$dataDefineUrl = "http://localhost/giccos/library/words/".urlencode($defineWordThis)."/define";
									$getDefine = $_tool->curl($dataDefineUrl, "auto", array("cookie" => true));
									if (isset($getDefine['return'], $getDefine['data']) && $getDefine['return'] == true) {
										$dataDefineThis = json_decode($getDefine['data'], true);
										if (isset($dataDefineThis) && is_array($dataDefineThis) && count($dataDefineThis) > 0) {
											$dataDefineArr[$defineWordThis] = $dataDefineThis;
										}
									}
									if (!isset($dataDefineArr[$defineWordThis]) || !is_array($dataDefineArr[$defineWordThis]) || count($dataDefineArr[$defineWordThis]) == 0) {
										$defineUnavailableArr[] = $defineWordThis;
									}
								}
							}
							$defineUnavailableArr = array_unique($defineUnavailableArr);
							if (is_array($defineUnavailableArr) && count($defineUnavailableArr) > 0) {
								setcookie('gFeeds_Tags_Define_Unavailable', $_tool->hash('encode', serialize($defineUnavailableArr), ''), 0, $_client->uri(), $g_client['http']['secure'], false);
							}else {
								setcookie('gFeeds_Tags_Define_Unavailable', null, time() - 1, $_client->uri(), $g_client['http']['secure'], false);
							}
							if (isset($dataDefineArr) && is_array($dataDefineArr) && count($dataDefineArr) > 0) {
								$defineContentHtml = null;
								foreach ($dataDefineArr as $keyword => $dataDefineThis) {
									$defineCountShowed = 0;
									$defineContentHtml .= "
									<div class='line _tt-bk e'>
										<a href='".$_tool->links('library/words/'.$keyword)."' target='_blank'><span class='label'>".ucfirst($keyword).": </span><span class='value'>".strtolower($dataDefineThis[0]['content']).".</span></a>
									</div>
									";
								}
								$feed_['content']['define'] = "
									<div class='define inFeeds boxGrid'>
										<div class='title'>
											<span>".$_language->text('define', 'ucfirst')."</span>
										</div>
										<div class='content'>".$defineContentHtml."</div>
									</div>
								";
							}else {
								$feed_['content']['define'] = null;
							}
						}else {
							$feed_['content']['define'] = null;
						}
						print "
						<div id='gFeeds' class='thisFeeds hashtag' feed='".json_encode($feed_['content']['this'])."'>
							<div class='info inFeeds boxGrid'>
								<div class='title'>
									<span>{$_language->text('tag', 'ucfirst')}: {$feed_['content']['title']}</span>
								</div>
								<div class='description'>
									<span>{$_language->text('feed_tags.quickdescription', 'ucfirst')}: {$feed_['content']['description']}.</span>
								</div>
							</div>
							<div class='statistic inFeeds boxGrid'>
								<div class='title'>
									<span>{$_language->text('statistic', 'ucfirst')}</span>
								</div>
								<div class='content'>
									<div class='box'>
										<div class='nav'><span>{$_language->text('total', 'ucfirst')}</span></div>
										<div class='rows people'>
											<div class='icon'><a class='_tt-bk e' title='{$_language->text('related_people', 'ucfirst')}'></a></div>
											<div class='text'><span>{$feed_['statistic']['total']['people']}</span></div>
										</div>
										<div class='rows times'>
											<div class='icon'><a class='_tt-bk e' title='{$_language->text('repeats', 'ucfirst')}'></a></div>
											<div class='text'><span>{$feed_['statistic']['total']['times']}</span></div>
										</div>
										<div class='rows places'>
											<div class='icon'><a class='_tt-bk e' title='{$_language->text('locations', 'ucfirst')}'></a></div>
											<div class='text'><span>{$feed_['statistic']['total']['places']}</span></div>
										</div>
									</div>
									<div class='box'>
										<div class='nav'><span>{$_language->text('today', 'ucfirst')}</span></div>
										<div class='rows people'>
											<div class='icon'><a class='_tt-bk e' title='{$_language->text('related_people', 'ucfirst')}'></a></div>
											<div class='text'><span>{$feed_['statistic']['today']['people']}</span></div>
										</div>
										<div class='rows times'>
											<div class='icon'><a class='_tt-bk e' title='{$_language->text('repeats', 'ucfirst')}'></a></div>
											<div class='text'><span>{$feed_['statistic']['today']['times']}</span></div>
										</div>
										<div class='rows places'>
											<div class='icon'><a class='_tt-bk e' title='{$_language->text('locations', 'ucfirst')}'></a></div>
											<div class='text'><span>{$feed_['statistic']['today']['places']}</span></div>
										</div>
									</div>
								</div>
							</div>
							{$feed_['content']['define']}
							{$feed_['content']['chatbox']}
							{$feed_['content']['code']}
							<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
							<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
						</div>
						";
						$feed_ = null;
					}
					?>
				</div>
				<div id="rightBox">
					<?php require_once ("templates/box_suggest.php"); ?>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/feed.hashtag.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>