<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client["language"]['code']; ?>">
	<head>
		<title><?php print $_language->text('pages_accounts_login.title', 'ucwords', false, false); ?></title>
		<link href="<?php print $_tool->links("source/css/ext/jqueryui.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/accounts.login.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/accounts.login.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<div id="navCover">
				<div class="navCover-wrap"></div>
				<div class="navCover-img"></div>
				<div class="navCover-text">
					<div><span><?php print $_language->text('pages_accounts.span', 'ucfirst', false, false); ?></span></div>
					<div><span><?php print $_language->text('pages_accounts_login.desc', 'ucfirst', false, false); ?></span></div>
					<div>
						<div><a href="#"><?php print $_language->text('about', 'strtolower'); ?></a></div>
						<div><a href="#"><?php print $_language->text('privacy', 'strtolower'); ?></a></div>
						<div><a href="#"><?php print $_language->text('ads', 'strtolower'); ?></a></div>
						<div><a href="#"><?php print $_language->text('developer', 'strtolower'); ?></a></div>
						<div><a href="#"><?php print $_language->text('help', 'strtolower'); ?></a></div>
					</div>
				</div>
			</div>
			<div id="wrapBox">
				<div id="gLogin" class="boxGrid boxForm">
					<div class="title">
						<i class="fa fa-lock"></i>
						<span class="cr-pointer"><?php print $_language->text('login_to_account', 'ucfirst'); ?></span>
					</div>
					<div class="content">
						<div class="lines">
							<input class="east" name="username" title="<?php print $_language->text('type_username_or_email', 'ucfirst'); ?>" type="text" placeholder="<?php print $_language->text('username', 'ucfirst'); ?>" maxlength="30" />
						</div>
						<div class="lines">
							<input class="east" name="password" title="<?php print $_language->text('type_password', 'ucfirst'); ?>" type="password" placeholder="<?php print $_language->text('password', 'ucfirst'); ?>" />
						</div>
						<div class="lines b-1">
							<div class="east" name="remember" title="<?php print $_language->text('remember_me_next_time', 'ucfirst'); ?>" type="checkbox">
								<div remember="false"></div>
							</div>
							<button class type="button" name="login"><?php print $_language->text('login', 'ucfirst'); ?></button>
						</div>
						<div class="lines b-2">
							<button class type="button" name="register"><?php print $_language->text('register', 'ucfirst'); ?></button>
							<button class type="button" name="forgetpassword"><?php print $_language->text('forget_password', 'ucfirst'); ?></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="gInclude"></div>
		<div id="gSource"></div>
	</body>
</html>