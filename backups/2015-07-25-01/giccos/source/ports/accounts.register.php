<?php
header($_parameter->get('contentType_html.utf8'));
/*$ip = $_client->userIP();
$info = $_tool->ip_info($ip);
print_r($info);
die;*/
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="accounts register blank">
	<head>
		<title><?php print $_language->text('pages_accounts_register.title', 'ucwords'); ?></title>
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
						<div class="lines desc"><span><?php print $_language->text('pages_accounts_register.desc', 'strtolower'); ?></span></div>
					</div>
					<div id="registerBox" class="box">
						<div class="header"> <span><?php print $_language->text('register', 'strtolower'); ?></span> </div>
						<div class="body">
							<div class="rows username odd"box-steps="1">
								<label><?php print $_language->text('username', 'ucfirst'); ?></label>
								<div><input class="input username" type="text" placeholder="<?php print $_language->text('type_username', 'strtolower'); ?>"></div>
							</div>
							<div class="rows password"box-steps="1">
								<label><?php print $_language->text('password', 'ucfirst'); ?></label>
								<div><input class="input password" type="password" placeholder="<?php print $_language->text('type_password', 'strtolower'); ?>"></div>
							</div>
							<div class="lines email" box-steps="1">
								<label><?php print $_language->text('email', 'ucfirst'); ?></label>
								<div><input class="input email" type="text" placeholder="<?php print $_language->text('type_email_address', 'strtolower'); ?>"></div>
							</div>
							<div class="rows firstname odd" box-steps="2">
								<label><?php print $_language->text('firstname', 'ucfirst'); ?></label>
								<div><input class="input firstname" type="text" placeholder="<?php print $_language->text('type_firstname', 'strtolower'); ?>"></div>
							</div>
							<div class="rows lastname" box-steps="2">
								<label><?php print $_language->text('lastname', 'ucfirst'); ?></label>
								<div><input class="input lastname" type="text" placeholder="<?php print $_language->text('type_lastname', 'strtolower'); ?>"></div>
							</div>
							<div class="lines birthday" box-steps="2">
								<label><?php print $_language->text('birthday', 'ucfirst'); ?></label>
								<div>
									<input class="input birthday days" date-type="days" type="text" placeholder="<?php print $_language->text('days', 'strtolower'); ?>">
									<input class="input birthday months" date-type="months" type="text" placeholder="<?php print $_language->text('months', 'strtolower'); ?>">
									<input class="input birthday years" date-type="years" type="text" placeholder="<?php print $_language->text('years', 'strtolower'); ?>">
								</div>
							</div>
							<div class="lines gender" box-steps="2">
								<label><?php print $_language->text('gender', 'ucfirst'); ?></label>
								<div>
									<div class="input gender">
										<div class="checkbox male" value="male">
											<div class="dot"><div></div></div>
											<div class="text"><span><?php print $_language->text('male', 'strtolower'); ?></span></div>
										</div>
										<div class="checkbox female" value="female">
											<div class="dot"><div></div></div>
											<div class="text"><span><?php print $_language->text('female', 'strtolower'); ?></span></div>
										</div>
									</div>
								</div>
							</div>
							<div class="lines confirm_password" box-steps="3">
								<label><?php print $_language->text('confirm_password', 'ucfirst'); ?></label>
								<div><input class="input confirm_password" type="password" placeholder="<?php print $_language->text('retype_password', 'strtolower'); ?>"></div>
							</div>
							<div class="lines check_terms" box-steps="3">
								<label class="hide"><?php print $_language->text('check_terms', 'ucfirst'); ?></label>
								<div>
									<div class="input check_terms checkbox">
										<div class="dot"><div></div></div>
										<div class="text"><span><?php print $_language->text('checkbox_agree_terms', 'strtolower'); ?>, <a href="#" target="_blank"><?php print $_language->text('terms_rules', 'strtolower'); ?></a>.</span></div>
									</div>
								</div>
							</div>
							<div class="lines register" box-steps="3">
								<label class="hide"><?php print $_language->text('register', 'ucfirst'); ?></label>
								<div><i class="input register button"></i></div>
							</div>
						</div>
						<div class="footer"> <div class="secure"><span><?php print $_language->text('secure_by_giccos', 'ucfirst'); ?></span></div> </div>
					</div>
					<div id="footerBox">
						<div class="li login _tt-we s" title="<?php print $_language->text('login_to_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/login'); ?>"><?php print $_language->text('login', 'strtolower'); ?></a>
						</div>
						<div class="li register selected _tt-we s" title="<?php print $_language->text('create_new_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/register#'); ?>"><?php print $_language->text('register', 'strtolower'); ?></a>
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
			<script src="<?php print $_tool->links("source/js/accounts.register.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource"></div>
	</body>
</html>