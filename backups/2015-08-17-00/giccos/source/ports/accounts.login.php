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
					<div class="background" style="background-image: url(<?php print $g_client['theme']['welcome']['image']['background']; ?>);"></div>
				</div>
				<div id="centerBox">
					<div id="headerBox">
						<div class="lines title"><span><?php print $_language->text('giccos', 'ucfirst'); ?></span></div>
						<div class="lines border"></div>
						<div class="lines desc"><span><?php print $_language->text('pages_accounts_login.desc', 'strtolower'); ?></span></div>
					</div>
					<div id="loginBox" class="box">
						<div class="header"> <span><?php print $_language->text('login', 'strtolower'); ?></span> </div>
						<div class="body">
							<!--
							<div class="lines quickinfo">
								<label>Lâm Hiếu</label>
								<div>
									<div class="avatar"></div>
								</div>
							</div>
							-->
							<div class="lines username">
								<label><?php print $_language->text('username_or_email', 'ucfirst'); ?></label>
								<div><input class="input username" type="text" placeholder="<?php print $_language->text('type_username_or_email', 'strtolower'); ?>"></div>
							</div>
							<div class="lines password">
								<label><?php print $_language->text('password', 'ucfirst'); ?></label>
								<div><input class="input password" type="password" placeholder="<?php print $_language->text('type_password', 'strtolower'); ?>"></div>
							</div>
							<div class="lines remember">
								<label class="hide"><?php print $_language->text('remember', 'ucfirst'); ?></label>
								<div>
									<div class="input remember checkbox">
										<div class="dot"><div></div></div>
										<div class="text"><span><?php print $_language->text('remember_me_next_time', 'strtolower'); ?></span></div>
									</div>
								</div>
							</div>
							<div class="lines login">
								<label class="hide"><?php print $_language->text('login', 'ucfirst'); ?></label>
								<div><i class="input login button"></i></div>
								<!--<div><button class="button login"><?php print $_language->text('login', 'ucfirst'); ?></button></div>-->
							</div>
						</div>
						<div class="footer"> <div class="secure"><span><?php print $_language->text('secure_by_giccos', 'ucfirst'); ?></span></div> </div>
					</div>
					<div id="footerBox">
						<div class="li login selected _tt-we s" title="<?php print $_language->text('login_to_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/login#'); ?>"><?php print $_language->text('login', 'strtolower'); ?></a>
						</div>
						<div class="li register _tt-we s" title="<?php print $_language->text('create_new_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/register'); ?>"><?php print $_language->text('register', 'strtolower'); ?></a>
						</div>
						<div class="li getpassword _tt-we s" title="<?php print $_language->text('get_password_missed', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/getpassword'); ?>"><?php print $_language->text('forgot_password', 'strtolower'); ?></a>
						</div>
						<div class="li active _tt-we s" title="<?php print $_language->text('active_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/active'); ?>"><?php print $_language->text('active', 'strtolower'); ?></a>
						</div>
					</div>
				</div>
			</div>
			<div id="gFooter"></div>
			<script src="<?php print $_tool->links("source/js/accounts.login.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource"></div>
	</body>
</html>