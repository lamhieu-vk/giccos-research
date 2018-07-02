<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="accounts login blank">
	<head>
		<title><?php print $_language->text('pages_accounts_login.title', 'ucwords'); ?></title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/accounts.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<div id="gBox">
				<div id="wrapBox">
					<div class="filter"></div>
					<div class="background" style="background: url(<?php print $g_client['theme']['welcome']['image']['background']; ?>);"></div>
				</div>
				<div id="centerBox">
					<div id="headerBox">
						<div class="lines title"><span><?php print $_language->text('pages_accounts.span', 'ucfirst', false, false); ?></span></div>
						<div class="lines border"></div>
						<div class="lines desc"><span><?php print $_language->text('pages_accounts_login.desc', 'ucfirst', false, false); ?></span></div>
					</div>
					<div id="loginBox" class="box">
						<div class="header"> <span>Login</span> </div>
						<div class="body">
							<div class="lines">
								<label>Username or Email</label>
								<div><input class="input username" type="text" placeholder="<?php print $_language->text('username_or_email', 'ucfirst'); ?>"></div>
							</div>
							<div class="lines">
								<label>Password</label>
								<div><input class="input password" type="password" placeholder="<?php print $_language->text('password', 'ucfirst'); ?>"></div>
							</div>
							<div class="lines">
								<label>Remember</label>
								<div>
									<div class="input remember checkbox">
										<div class="dot"><div></div></div>
										<div class="text"><span><?php print $_language->text('remember_me_next_time', 'strtolower'); ?></span></div>
									</div>
								</div>
							</div>
							<div class="lines">
								<label>Login</label>
								<div><i class="input login button"></i></div>
								<!--<div><button class="button login">Login</button></div>-->
							</div>
						</div>
						<div class="footer"> <span>Secure by Giccos</span> </div>
					</div>
					<div id="footerBox">
						<div class="li login"></div>
					</div>
				</div>
			</div>
			<script src="<?php print $_tool->links("source/js/accounts.login.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource"></div>
	</body>
</html>