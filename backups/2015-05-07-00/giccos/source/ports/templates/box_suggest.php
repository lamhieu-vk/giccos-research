<div id="gboxSuggest">
	<div class="weather box boxGrid">
		<div class="title">
			<div class="rows"><span class="cr-pointer"><?php print $_language->text('weather', 'ucfirst'); ?></span></div>
		</div>
		<div class="content">
			<?php
			if (isset($g_user['suggest']['weather'], $g_user['suggest']['weather']['data'], $g_user['suggest']['weather']['data']['item']) && count($g_user['suggest']['weather']['data']['item']) > 0) {
				$g_user['suggest']['weather']['temperature'] = null;
				for ($i = 0; $i <= 3; $i++) {
					$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = null;
					if ($g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'] == "Partly Cloudy" || $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'] == "Mostly Cloudy") {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = $_tool->links('photos/raw/static/weather_partly_cloudy.png');
					}else if (preg_match("/(cloudy|clear)/i", $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'])) {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = $_tool->links('photos/raw/static/weather_cloudy.png');
					}else if (preg_match("/(showers)/i", $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'])) {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = $_tool->links('photos/raw/static/weahter_rain.png');
					}else if (preg_match("/(thunderstorms)/i", $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'])) {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = $_tool->links('photos/raw/static/weather_thunderstorms.png');
					}else if (preg_match("/(sunny)/i", $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'])) {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = $_tool->links('photos/raw/static/weather_sunny.png');
					}else if (preg_match("/(rain)/i", $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'])) {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon'] = $_tool->links('photos/raw/static/weather_rain_cloudy.png');
					}else {
						// print $g_user['suggest']['weather']['data']['item']['forecast'][$i]['text'];
					}
					$g_user['suggest']['weather']['data']['item']['forecast'][$i]['day'] = $_tool->convertWeekday(strtolower($g_user['suggest']['weather']['data']['item']['forecast'][$i]['day']), true);
					if ($i == 0) {
						$g_user['suggest']['weather']['data']['item']['forecast'][$i]['day'] = $_language->text('today', 'ucfirst');
					}
					$g_user['suggest']['weather']['temperature'] .= "
					<div class='td'>
						<div class='days'><span>{$g_user['suggest']['weather']['data']['item']['forecast'][$i]['day']}</span></div>
						<div class='icon'><img src='{$g_user['suggest']['weather']['data']['item']['forecast'][$i]['icon']}' alt='{$g_user['suggest']['weather']['data']['item']['forecast'][$i]['text']}' /></div>
						<div class='value'><span>{$g_user['suggest']['weather']['data']['item']['forecast'][$i]['low']}&#176; {$g_user['suggest']['weather']['data']['item']['forecast'][$i]['high']}&#176;</span></div>
					</div>
					";
				}
				print "
				<div class='rows places'><i></i><span>{$g_user['suggest']['weather']['data']['location']}</span></div>
				<div class='rows time'><i></i><span>{$_language->text('update_at', 'ucfirst')}:</span> <span time-text time-ago='{$g_user['suggest']['weather']['getTime']}'>{$_tool->agoDatetime($g_user['suggest']['weather']['getTime'], 'ago', false)}</span></div>
				<div class='rows wind'>
					<div class='label'>
						<span>&#9900;{$_language->text('wind', 'ucfirst')}: </span>
					</div>
					<div class='value'>
						<div class='td direction'>{$_language->text('direction', 'ucfirst')}: {$g_user['suggest']['weather']['data']['wind']['direction']}&#176;</div>
						<div class='td speed'>{$_language->text('speed', 'ucfirst')}: {$g_user['suggest']['weather']['data']['wind']['speed']}{$g_user['suggest']['weather']['data']['units']['speed']}</div>
					</div>
				</div>
				<div class='rows atmosphere'>
					<div class='label'>
						<span>&#9900;{$_language->text('atmosphere', 'ucfirst')}: </span>
					</div>
					<div class='value'>
						<div class='td humidity'>{$_language->text('humidity', 'ucfirst')}: {$g_user['suggest']['weather']['data']['atmosphere']['humidity']}&#176;</div>
						<div class='td pressure'>{$_language->text('pressure', 'ucfirst')}: {$g_user['suggest']['weather']['data']['atmosphere']['pressure']}{$g_user['suggest']['weather']['data']['units']['pressure']}</div>
					</div>
				</div>
				<div class='table temperature'>
					<div class='title'>
						<span>&#9900;{$_language->text('temperature', 'ucfirst')}: </span>
					</div>
					{$g_user['suggest']['weather']['temperature']}
				</div>
				";
			}else {
				print "
				<div class='null'>
					<span>{$_language->text('weather_data_are_not_available', 'ucfirst')}.</span>
				</div>
				";
			}
			?>
		</div>
	</div>
	<div class="users box boxGrid">
		<div class="title">
			<div class="rows"><span class="cr-pointer"><?php print $_language->text('people_may_know', 'ucfirst'); ?></span></div>
		</div>
		<div class="content">
			<?php
			if (isset($g_user['suggest']['guys']['data'])) {
				$suggest['user']['list'] = $g_user['suggest']['guys']['data'];
				$suggest['user']['count'] = count($suggest['user']['list']);
				if ($suggest['user']['count'] >= 3) {
					$suggest['user']['get'] = 3;
				}else if ($suggest['user']['count'] > 0){
					$suggest['user']['get'] = $suggest['user']['count'];
				}else {
					$suggest['user']['get'] = 0;
				}
				if ($suggest['user']['get'] == 1) {
					$suggest['user']['selected'] = $suggest['user']['list'];
				}else if ($suggest['user']['get'] > 1) {
					$suggest['user']['selected'] = array_rand($suggest['user']['list'], $suggest['user']['get']);
				}
				$suggest['user']['count'] = 0;
				foreach ($suggest['user']['list'] as $suggest['user']['selected'] => $suggest_user_id) {
					if ($suggest['user']['count'] == 3) {
						break;
					}
					$suggest_user_info_get = $_user->getInfo(array("id" => $suggest_user_id, "rows" => "`id`, `fullname`, `username`, `avatar.small`, `link`"));
					if ($suggest_user_info_get['return'] == true) {
						$suggest_user_info = $suggest_user_info_get['data'];
					}else {
						continue;
					}
					$suggest_this_json = json_encode(array("type" => "friends", "guy" => array("type" => "user", "id" => $suggest_user_info['id'])));
					$suggest_isWaiting = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `friends_request` WHERE `guy.id` = '{$g_user['id']}' AND `user.id` = '{$suggest_user_info['id']}'"));
					$suggest_isSend = mysqli_num_rows(mysqli_query($_db->port('beta'), "SELECT `id` FROM `friends_request` WHERE `user.id` = '{$g_user['id']}' AND `guy.id` = '{$suggest_user_info['id']}'"));
					if ($suggest_isWaiting == 0 && $suggest_isSend == 0) {
						$suggest_request_json = json_encode(array("action" => "add", "id" => $suggest_user_info['id']));
						$suggest_request_text = $_language->text('send_request', 'ucfirst');
					}else if ($suggest_isWaiting == 0 && $suggest_isSend > 0) {
						$suggest_request_json = json_encode(array("action" => "cancel", "id" => $suggest_user_info['id']));
						$suggest_request_text = $_language->text('cancel_request', 'ucfirst');
					}else if ($suggest_isWaiting > 0 && $suggest_isSend == 0) {
						$suggest_request_json = json_encode(array("action" => "refuse", "id" => $suggest_user_info['id']));
						$suggest_request_text = $_language->text('refuse_request', 'ucfirst');
					}
					$suggest_user_json = json_encode(array("by" => "click", "to" => $suggest_user_info['link'], "target" => "_blank"));
					print "
					<div class='rows' suggest-info='{$suggest_this_json}' box-friends-request>
						<div class='info'>
							<div class='img'>
								<img src='{$suggest_user_info['avatar.small']}' />
							</div>
							<div class='text'>
								<div class='name nowrap'><span>{$suggest_user_info['fullname']}</span></div>
								<div class='tag nowrap'><span>{$suggest_user_info['username']}</span></div>
							</div>
						</div>
						<div class='action'>
							<div class='link' direct='{$suggest_user_json}'>
								<span>@</span>
							</div>
							<div class='add' request='{$suggest_request_json}'>
								<span>{$suggest_request_text}</span>
							</div>
							<div class='remove'>
								<span>{$_language->text('hide', 'ucfirst', false)}</span>
							</div>
						</div>
					</div>
					";
					$suggest['user']['count']++;
				}
			}
			?>
		</div>
	</div>
	<div class="pages box boxGrid">
		<div class="title">
			<div class="rows"><span class="cr-pointer"><?php print $_language->text('pages_may_subscribe', 'ucfirst'); ?></span></div>
		</div>
		<div class="content"></div>
	</div>
	<div class="groups box boxGrid">
		<div class="title">
			<div class="rows"><span class="cr-pointer"><?php print $_language->text('group_may_join', 'ucfirst'); ?></span></div>
		</div>
		<div class="content"></div>
	</div>
	<div class="pages box boxGrid">
		<div class="title">
			<div class="rows"><span class="cr-pointer"><?php print $_language->text('places_may_visit', 'ucfirst'); ?></span></div>
		</div>
		<div class="content"></div>
	</div>
	<link rel="stylesheet" href="<?php print $_tool->links("source/css/templates/box_suggest.css"); ?>" />
	<script src="<?php print $_tool->links("source/js/ext/box_suggest.js"); ?>" type="text/javascript"></script>
</div>