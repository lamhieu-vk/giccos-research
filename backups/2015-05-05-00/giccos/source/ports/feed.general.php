<?php
header($_parameter->get('contentType_html.utf8'));
//print_r($_language->translate("vi", "like", "en"));
/*require_once ("source/class/wikidrain.php");
$wiki = new wikidrain('wikidrain/1.0 (http://www.example.com/)');
$result = $wiki->getText('vietnam war', '6');
print_r($result);
die();*/
//$xx = exec("ffmpeg -itsoffset -0  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/378a7ae1.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -vf scale=640:360:black D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/378a7ae1.png 2>&1", $output, $return);
//var_dump($xx);
/*$file = "source/s.MKV";
exec("ffprobe -v quiet -print_format json -show_format -show_streams {$file} 2>&1 &", $info);
$infoData = null;
foreach ($info as $i => $info_v) { 
	$infoData .= $info_v;
}
$info = json_decode($infoData, true);
print_r($info);
die();*/
//print hash('crc32', md5_file('storage/static/xap/gplayer.xap'));
//print $_tool->hash('encode', 'storage/static/xap/gplayer.xap', 'ae46f3cb');
//print filesize('storage/static/swf/gplayer.swf');
//print hash('crc32', 'ae46f3cb');
//require_once 'source/class/httpclient.php';
/*
$parameters = array(
      'api_key' => 'aJyI214g7jnoRP2I', 
      'api_secret' => 'eAcco8pF6fpDgdJg', 
      'jobs' => 'object_add',
      'tag' => 'banana',
      'urls' => 'http://rekognition.com/static/img/banana.jpeg',
      'name_space' => "giccos",
      'user_id' => "database"
      );
$object_detection = new HttpClient('rekognition.com');
$object_detection->setDebug(false);
$response = $object_detection->get("/func/api/", $parameters);
echo $object_detection->getContent();
*/
//$htmlPage = $_tool->curl($url, 5, array("cookie" => true, "method" => "POST", "form" => array("token" => "")));
/*$img = "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/1234489_638157786330815_1794467412252996416_n.jpg?oh=0eaa269b2b5efb77e8f1d143152bfebc&oe=55CF50CE&__gda__=1440036272_18e7548e041456f684eb652cfd9f1360";
$ch = curl_init();
$data = array(
	'api_key' => 'aJyI214g7jnoRP2I', 
    'api_secret' => 'eAcco8pF6fpDgdJg', 
    'jobs' => 'face_add_aggressive',
    'name_space' => 'giccos',
    'user_id' => 'database',
    'urls' => $img
);   
curl_setopt($ch, CURLOPT_URL, 'http://rekognition.com/func/api/');
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_exec($ch);
curl_close($ch);*/
/*$ch = curl_init();
$data = array('api_key' => 'aJyI214g7jnoRP2I', 
              'api_secret' => 'eAcco8pF6fpDgdJg', 
              'jobs' => 'face_cluster',
              'name_space' => 'giccos',
              'user_id' => 'database'
              );
curl_setopt($ch, CURLOPT_URL, 'http://rekognition.com/func/api/');
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_exec($ch);
curl_close($ch);*/
/*$optionsRequest = array(
	'api_key' => 'aJyI214g7jnoRP2I',
	'api_secret' => 'eAcco8pF6fpDgdJg',
	'jobs' => 'face_add_aggressive',
	'name_space' => 'giccos',
    'user_id' => 'database',
	'urls' => 'https://scontent-sin.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/p480x480/11182252_1416413628676582_8957238758697593813_n.jpg?oh=e8508572a9e3f2c2300b18a5fbc1d708&oe=559C5443'
);
$dataReturn = $_tool->curl('http://rekognition.com/func/api/', 5, array("cookie" => false, "method" => "POST", "form" => $optionsRequest));
print_r(json_decode($dataReturn['data'], true));
die;*/
// print_r($g_user); die;
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>">
	<head>
		<title><?php print $feed_['content']['title']; ?></title>
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
					require_once ("templates/editor.php");
					if (isset($feed_['query']['code'])) {
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
					}else {
						$feed_['content']['code'] = null;
					}
					print "
					<div id='gFeeds' class='thisFeeds feed' feed='{$feed_['content']['this']}'>
						<div class='info inFeeds boxGrid' class='thisTotal'>
							<div class='title'>
								<span>{$_language->text('news_feed', 'ucfirst', false)}: {$feed_['content']['from']}</span>
							</div>
							<div class='description'>
								<span>{$_language->text('pages_feed.quickdescription', 'ucfirst', false)} {$feed_['content']['from']}.</span>
							</div>
						</div>
						{$feed_['content']['code']}
						<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
						<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
					</div>
					";
					$feed_ = null;
					?>
				</div>
				<div id="rightBox">
					<?php require_once ("templates/box_suggest.php"); ?>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/feed.general.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>