<?php
if (isset($boxSuggestRequire) && is_array($boxSuggestRequire)) {
	$boxSuggestCode = array();
	if (isset($boxSuggestRequire['weather'])) {
		$weatherLocation = isset($boxSuggestRequire['weather']['location']) ? $boxSuggestRequire['weather']['location'] : null;
		if ($weatherLocation == null) {
			//. (strpos("Ganh Hao, Dong Hai, Bac Lieu", "Ganh Hao") !== false)
			if (isset($g_client, $g_client['location'], $g_client['location']['address']) && is_string($g_client['location']['address'])) {
				$weatherLocation = $_tool->parseString($g_client['location']['address'], "vi", "en");
			}
			if (isset($g_client, $g_client['location'], $g_client['location']['name']) && is_string($g_client['location']['name'])) {
				if (!preg_match("/([^a-zA-Z0-9\s\.\,])/", $g_client['location']['name'])) {
					if (isset($weatherLocation) && is_string($weatherLocation)) {
						if (strpos($weatherLocation, $g_client['location']['name']) !== false) {
							$weatherLocation = $g_client['location']['name'];
						}
					}
				}else {
					$locationName = $_tool->parseString($g_client['location']['name'], "vi", "en");
					$locationAddress = explode(" ", strtolower(str_replace(",", "", $weatherLocation)));
					$locationName = explode(" ", strtolower(str_replace(",", "", $locationName)));
					foreach ($locationName as $key => $locationThisWord) {
						if (in_array($locationThisWord, $locationAddress)) {
							if (!isset($locationText) || $locationText == null) {
								$locationText = $locationThisWord;
							}else {
								$locationText .= " ".$locationThisWord;
							}
						}
					}
					$weatherLocation = $locationText;
					$locationName = $locationAddress = $locationName = $locationText = null;
				}
			}
			if (1 + 1 == 2) {
				$weatherLocationArr = explode(",", preg_replace("/(\,\s)/", ",", $weatherLocation));
				foreach ($weatherLocationArr as $key => $locationThisWord) {
					if (preg_match("/([0-9]+)/", $g_client['location']['name'])) {
						continue;
					}
					if (!isset($locationText) || $locationText == null) {
						$locationText = $locationThisWord;
					}else {
						$locationText .= ", ".$locationThisWord;
					}
				}
				if (!isset($locationText) || $locationText == null) {
					if (count($weatherLocationArr) >= 3) {
						$weatherLocation = $weatherLocationArr[0].", ".$weatherLocationArr[1].", ".$weatherLocationArr[2];
					}else if (count($weatherLocationArr) >= 2) {
						$weatherLocation = $weatherLocationArr[0].", ".$weatherLocationArr[1];
					}
				}else {
					$weatherLocation = $locationText;
				}
			}
			if (!isset($weatherLocation) || $weatherLocation == null) {
				$getIP = $_ip->info(array("action" => "check", "ip" => $_client->ip()));
				if (isset($getIP, $getIP['return'], $getIP['data']) && $getIP['return'] == true) {
					$weatherLocation= $getIP['data']['city'];
				}
			}
		}
		if (!isset($weatherLocation) || $weatherLocation == null) {
			$weatherContentCode = "
			<div class='null'>
				<span>".$_language->text('weather_data_are_not_available', 'strtolower')."</span>
			</div>
			";
		}else {
			$weatherUnits = isset($g_user['units.temperature']) && is_string($g_user['units.temperature']) ? $g_user['units.temperature'] : "C";
			$getWeather = $_tool->getWeather(array("location" => $weatherLocation, "units" => $weatherUnits));
			if (isset($getWeather, $getWeather['return'], $getWeather['data']) && $getWeather['return'] == true) {
				$dataWeather = $getWeather['data'];
				$weatherContentTemperature = null;
				for ($i = 0; $i < 3; $i++) {
					$weatherDayTemperature = $dataWeather['forecast'][$i];
					$weatherThisTemperatureDay = null;
					if (date("N", $weatherDayTemperature['date']) == date("N", time())) {
						$weatherThisTemperatureDay = $_language->text('today', 'strtolower');
						$weatherThisClassPush = "active";
					}else {
						$weatherThisTemperatureDay = $weatherDayTemperature['day'];
						$weatherThisClassPush = "";
					}
					if (preg_match("/(cloudy|clear)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_cloudy.png');
					}else if (preg_match("/(thunderstorms)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_thunderstorms.png');
					}else if (preg_match("/(sunny|hot)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_sunny.png');
					}else if (preg_match("/(snow showers)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_rain_light.png');
					}else if (preg_match("/(showers)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_showers.png');
					}else if (preg_match("/(rain)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_rain.png');
					}else if (preg_match("/(snow)/i", $weatherDayTemperature['code'])) {
						$weatherDayTemperature['icon'] = $_tool->links('photos/raw/static/weather_snow.png');
					}else {
						$weatherDayTemperature['icon'] = "";
					}
					$weatherContentTemperature .= "
					<div class='td _tt-bk n ".$weatherThisClassPush."' title='".$weatherDayTemperature['text']."'>
						<div class='day'><span>".$weatherThisTemperatureDay."</span></div>
						<div class='icon'><img src='".$weatherDayTemperature['icon']."' alt='".$weatherDayTemperature['text']."' /></div>
						<div class='value'><span>".$weatherDayTemperature['low']."&#176;".$dataWeather['units']['temperature']." &#183; ".$weatherDayTemperature['high']."&#176;".$dataWeather['units']['temperature']."</span></div>
					</div>
					";
				}
				$weatherContentCode = "
				<div class='rows places'><i></i><a class='_tt-bk w' title='".$dataWeather['location']['country']."' href='#' target='_blank'>".$dataWeather['location']['city']."</a></div>
				<div class='rows time'><i></i><span>".$_language->text('updated', 'strtolower')."</span> <span time-text time-ago='".$dataWeather['time']."'>".$_tool->agoDatetime($dataWeather['time'], 'ago')."</span></div>
				<div class='rows location'>
					<div class='label'>
						<span>&#9900; ".$_language->text('location', 'strtolower')."</span>
					</div>
					<div class='value'>
						<div class='td direction'>".$_language->text('latitude', 'strtolower').": ".$dataWeather['location']['latitude']."</div>
						<div class='td speed'>".$_language->text('longitude', 'strtolower').": ".$dataWeather['location']['longitude']."</div>
					</div>
				</div>
				<div class='rows wind'>
					<div class='label'>
						<span>&#9900; ".$_language->text('wind', 'strtolower')."</span>
					</div>
					<div class='value'>
						<div class='td direction'>".$_language->text('direction', 'strtolower').": ".$dataWeather['wind']['direction']."&#176;</div>
						<div class='td speed'>".$_language->text('speed', 'strtolower').": ".$dataWeather['wind']['speed'].$dataWeather['units']['speed']."</div>
					</div>
				</div>
				<div class='rows atmosphere'>
					<div class='label'>
						<span>&#9900; ".$_language->text('atmosphere', 'strtolower')."</span>
					</div>
					<div class='value'>
						<div class='td humidity'>".$_language->text('humidity', 'strtolower').": ".$dataWeather['atmosphere']['humidity']."&#176;</div>
						<div class='td pressure'>".$_language->text('pressure', 'strtolower').": ".$dataWeather['atmosphere']['pressure'].$dataWeather['units']['pressure']."</div>
					</div>
				</div>
				<div class='rows astronomy'>
					<div class='label'>
						<span>&#9900; ".$_language->text('astronomy', 'strtolower')."</span>
					</div>
					<div class='value'>
						<div class='td sunrise'>".$_language->text('sunrise_at', 'strtolower')." <a class='_tt-bk w' title='".$_tool->agoDatetime($dataWeather['astronomy']['sunrise'], 'ago')."'>".date("H:i", $dataWeather['astronomy']['sunrise'])."</a></div>
						<div class='td sunset'>".$_language->text('sunset_at', 'strtolower')." <a class='_tt-bk w' title='".$_tool->agoDatetime($dataWeather['astronomy']['sunset'], 'ago')."''>".date("H:i", $dataWeather['astronomy']['sunset'])."</a></div>
					</div>
				</div>
				<div class='table temperature'>
					<div class='title'>
						<span>&#9900; ".$_language->text('temperature', 'strtolower')."</span>
					</div>
					".$weatherContentTemperature."
				</div>
				";
			}else {
				$weatherContentCode = "
				<div class='null'>
					<span>".$_language->text('weather_data_are_not_available', 'strtolower')."</span>
				</div>
				";
			}
		}
		$boxSuggestCode['weather'] = "
		<div class='box weather boxGrid'>
			<div class='title'>
				<div class='rows'><span>".$_language->text('weather', 'ucfirst')."</span></div>
			</div>
			<div class='content'>".$weatherContentCode."</div>
		</div>
		";
	}
}
?>
<div id="gBoxSuggest">
	<?php
	if (isset($boxSuggestCode) && is_array($boxSuggestCode)) {
		foreach ($boxSuggestCode as $boxType => $boxCode) {
			print $boxCode;
		}
	}
	?>
	<link rel="stylesheet" href="<?php print $_tool->links("source/css/templates/box_suggest.css"); ?>" />
	<script src="<?php print $_tool->links("source/js/templates/box_suggest.js"); ?>" type="text/javascript"></script>
</div>