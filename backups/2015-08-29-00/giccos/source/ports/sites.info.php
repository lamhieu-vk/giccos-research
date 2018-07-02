<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="sites time">
	<head>
		<title><?php print $_language->text('pages_feed_general.title', 'ucwords'); ?></title>
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/sites.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/sites.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gSource">
			<!--
			<link href="<?php print $_tool->links("source/css/templates/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/templates/mediaplayer.js"); ?>" type="text/javascript"></script>
			<link href="<?php print $_tool->links("source/css/templates/feed.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/templates/feed.js"); ?>" type="text/javascript"></script>
			-->
		</div>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<?php require_once ("templates/box_links.php"); ?>
				</div>
				<div id="centerBox">
					<!-- -->
					<div id='infoPage' class='boxGrid'>
						<div class='cover'>
							<div class='thumbnail' style='background-image: url(https://photo.tinhte.vn/store/2015/08/3128241_atellani-febo-sun-engraver-designboom-08-818x545.jpg);'>
								<img src='https://photo.tinhte.vn/store/2015/08/3128241_atellani-febo-sun-engraver-designboom-08-818x545.jpg' alt>
							</div>
							<div class='title'>
								<span>thiết bị vẽ đơn giản bằng ánh sáng mặt trời bị vẽ đơn giản bằng ánh sáng mặt</span>
							</div>
							<div class='host'>
								<span>tinhte.vn</span>
							</div>
						</div>
						<div class='stats box'>
							<div class='title'>
								<span>Stats</span>
							</div>
							<div class='content'>
								<div class='rows table'>
									<div class='value'> <canvas class='statsBox'></canvas> </div>
								</div>
							</div>
						</div>
						<div class='rate box'>
							<div class='title'>
								<span>Rate</span>
							</div>
							<div class='content'>
								<div class='rows total'>
									<div class='label'><span>Count</span></div>
									<div class='value'><span>232 times recorded</span></div>
								</div>
								<div class='rows ratio'>
									<div class='label'><span>Ratio</span></div>
									<div class='value'><div class='rateBox' rate-value='4' rate-action='false'></div></div>
								</div>
								<div class='rows rating'>
									<div class='label'><span>Rating</span></div>
									<div class='value'><div class='rateBox' rate-action='true'></div></div>
								</div>
							</div>
						</div>
						<div class='info box'>
							<div class='title'>
								<span>Information</span>
							</div>
							<div class='content'>
								<div class='rows host'>
									<div class='label'><span>Host</span></div>
									<div class='value'><span>tinhte.vn</span></div>
								</div>
								<div class='rows hash'>
									<div class='label'><span>Hash</span></div>
									<div class='value'><span>bffa11d0606d824a3bccd4a45574ef77</span></div>
								</div>
								<div class='rows type'>
									<div class='label'><span>Type</span></div>
									<div class='value'><a href='#'>article</a> <a href='#'>media</a> <a href='#'>video</a> <a href='#'>image</a></div>
								</div>
								<div class='rows language'>
									<div class='label'><span>Language</span></div>
									<div class='value'><span>Vietnamese</span></div>
								</div>
								<div class='rows local'>
									<div class='label'><span>Local</span></div>
									<div class='value'><span>Vietnam</span></div>
								</div>
								<div class='rows title'>
									<div class='label'><span>Title</span></div>
									<div class='value'><span>Thiết bị vẽ đơn giản bằng ánh sáng mặt trời</span></div>
								</div>
								<div class='rows description'>
									<div class='label'><span>Description</span></div>
									<div class='value'><span>Febo là một công cụ vô cùng đơn giản để tạo nên các tác phẩm nghệ thuật một cách độc đáo trên các miếng gỗ thịt hoặc gỗ công nghiệp. Nó hoạt...</span></div>
								</div>
								<div class='rows updated'>
									<div class='label'><span>Last update</span></div>
									<div class='value'><span>11:23, 12/04/2015</span></div>
								</div>
								<!--
								<div class='rows link'>
									<div class='label'><span>Link</span></div>
									<div class='value'><span>https://www.tinhte.vn/threads/febo-thiet-bi-ve-don-gian-bang-anh-sang-mat-troi.2501982/</span></div>
								</div>
								-->
							</div>
						</div>
						<div class='certificate box'>
							<div class='title'>
								<span>Certificate</span>
							</div>
							<div class='content'>
								<!--
								<div class='rows null'> <span>page is not have certificate</span> </div>
								-->
								<div class='rows issuer'>
									<div class='label'><span>Issuer</span></div>
									<div class='value'><span>Giccos Inc - organization <br> United States - country <br> www.google.com - organizational unit</span></div>
								</div>
								<div class='rows encryption'>
									<div class='label'><span>Encryption</span></div>
									<div class='value'><span>SHA256 - type</span></div>
								</div>
								<div class='rows usage'>
									<div class='label'><span>Usage</span></div>
									<div class='value'><span>Digital Signature - key <br>TLS Web Server Authentication, TLS Web Client Authentication - extended</span></div>
								</div>
							</div>
						</div>
						<div class='scanmalware box'>
							<div class='title'>
								<span>Malware scan</span>
							</div>
							<div class='content'>
								<!--
								<div class='rows null'> <span>page is not have scan logs</span> </div>
								-->
								<div class='rows totalscanner'>
									<div class='label'><span>Total scanner</span></div>
									<div class='value'><span>63 malware scanner</span></div>
								</div>
								<div class='rows detectionrate'>
									<div class='label'><span>Detection rate</span></div>
									<div class='value'><span>23%</span></div>
								</div>
								<div class='rows results'>
									<div class='label'><span>Results</span></div>
									<div class='value'><span><a>Avast</a>: safe - no detected <br> <a>McAree</a>: safe - no detected <br> <a>Dr.Web</a>: safe - no detected <br> <a>Avira</a>: safe - no detected</span></div>
								</div>
							</div>
						</div>
						<div class='comment box'>
							<div class='title'>
								<span>Comment(s)</span>
							</div>
							<div class='content'>
								<br>
							</div>
						</div>
					</div>
					<!-- -->
				</div>
				<div id="rightBox">
					<div id class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('sponsored', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
					<div id class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('you_may_want_read', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
		</div>
		<div id="gInclude"></div>
	</body>
</html>