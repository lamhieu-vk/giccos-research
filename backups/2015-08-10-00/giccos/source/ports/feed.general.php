<?php
header($_parameter->get('contentType_html.utf8'));
/*
$extractWord = $_library->words(array("action" => "extract", "language" => "vi", "word" => "thích", "type" => "all", "limit" => 20, "translate" => true));
print_r($extractWord); die;
/*
$xs = $_library->wordnik(array("type" => "word", "action" => "define", "keywords" => "like", "dictionaries" => "noun", "limit" => 10));
print_r($xs); die;
/*
$x = array(
	"general" => "new", 
	"time" => "new", 
	"hashtag" => "new",
	"nearby" => "new",
	"live" => "new",
	"country" => "new",
	"family" => "new",
	"friends" => "new"
);
print unserialize('s:2:"sd";');
$xx = mysqli_query($_db->port('beta'), "SELECT * FROM `users` ORDER BY `id` ASC");
while ($s = mysqli_fetch_assoc($xx)) {
	mysqli_query($_db->port('beta'), "UPDATE `giccos`.`users` SET `feed.order` = '".$_tool->hash('encode', serialize($x), $s['token'].'_'.$_parameter->get('hash_user_info'))."' WHERE `users`.`id` = '{$s['id']}'");
}
*/
//print serialize($x);
//print $_tool->hash('decode', serialize($x), $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
/*
$x = "http://tv.zing.vn/video/Clip-Hai-Tong-Hop-Truong-Giang-Hai-Huoc-Tao-Tuyet/IWZB7OWZ.html";
print_r($_sites->embed(array("url" => $x)));
die;
/*
$countries_string = 'Alabama, Alaska, Arizona, Arkansas, California, Colorado, Connecticut, Delaware, Florida, Georgia, Hawaii, Idaho, Illinois, Indiana, Iowa, Kansas, Kentucky, Louisiana, Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Missouri, Montana, Nebraska, Nevada, New Hampshire, New Jersey, New Mexico, New York, North Carolina, North Dakota, Ohio, Oklahoma, Oregon, Pennsylvania, Rhode Island, South Carolina, South Dakota, Tennessee, Texas, Utah, Vermont, Virginia, Washington, West Virginia, Wisconsin, Wyoming';
$countries = explode(', ', $countries_string);
foreach ($countries as $key => $keywords) {
	$requestPlaces = $_maps->places(array("action" => "search", "keywords" => $keywords));
}
die;
/*
$xs = array("action" => "search", "keywords" => "ganh hao");
$s = $_maps->places($xs);
print_r($s);
die;
$xs = array("type" => "places", "action" => "search", "keywords" => "");
$s = $_maps->google($xs);
print_r($s);
die;
$xs = array("type" => "places", "action" => "info", "places" => "ChIJ0wPk--NnoTERe6JmxzwUajk");
$s = $_maps->google($xs);
print_r($s);
die;
/*
$x = array("url" => "https://www.youtube.com/watch?v=COXKvGhj-rw", "size" => array("width" => "100", "height" => "100"));
$s = $_sites->embed($x);
print_r($s);
*/
/*
$xs = $_sites->extract(array('url' => "https://www.youtube.com/watch?v=COXKvGhj-rw"));
print_r($xs);
die;
/*
$xs = "http://phim.clip.vn/watch/Detective-Conan-Tap-265,OUCu/20029";
preg_match($_parameter->get('regex_sites_url'), $xs, $xx);
print_r($xx);
die;
$x = parse_url($xs);
print_r($x);
$sL = strlen($x['path']);
$sx = $sL / 3;
$xsss = array();
for ($i = 0; $i < 3; $i++) {
	$xsss[$i] = substr($x['path'], $i * $sx, $sx);
}
print_r($xsss);
foreach ($xsss as $key => $value) {
	print_r($value);
}
print "          ";
die;
$htmlPage = $_tool->contentMediaFile($xs, 5);
if (isset($htmlPage) && is_string($htmlPage) && $htmlPage != null) {
	require ("source/class/html_dom.php");
	$pageDom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
	$pageDom->load($htmlPage, true, true);
	//print hash('md5', $pageDom->find("head", 0)->outertext);
	print_r($pageDom->find("head", 0)->find("meta[property=og:image]", 0)->content);
}
die;
*/
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
//print_r($g_client['http']); die;
//$_tool->exec("convert storage/image/drive/2/ea9dadae1cea3cb84c197c5a45afe51f.jpg storage/image/drive/2/ea9dadae1cea3cb84c197c5a45afe51f.icm");
/*$fs = $_client->root()."storage/file.jpg";
$handle = fopen($fs, "rb");
$sx = fread($handle, filesize($fs));
fclose($handle);
print_r($handle);
$xx = array(
	"verifyhost" => 1,
	"method" => "POST",
	"header" => array(
		"content-type" => "multipart/form-data"
	),
	"form" => array(
		"apikey" => "961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a",
		"file" => '@'.$sx
	)
);
$xsxs = $_tool->curl('https://www.virustotal.com/vtapi/v2/file/scan', 10, $xx);
*/
//print_r($_SESSION['client']['language']['cache']);
//mysqli_query($_db->port('beta'), "UPDATE `giccos`.`languages_list` SET `name` = 'Tiếng Việt' WHERE `languages_list`.`id` = '1';");
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed general">
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
						$getFeed = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $feed_['query']['code'], "media" => true, "guy" => $g_user['mode']));
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
					<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['content']['this'])."'>
						<div class='info inFeeds boxGrid' class='thisTotal'>
							<div class='title'>
								<span>{$_language->text('news_feed', 'ucfirst')}: {$feed_['content']['from']}</span>
							</div>
							<div class='description'>
								<span>{$_language->text('pages_feed.quickdescription', 'ucfirst')} {$feed_['content']['from']}.</span>
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