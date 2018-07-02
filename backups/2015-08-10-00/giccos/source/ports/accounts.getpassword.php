<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="accounts getpassword blank">
	<head>
		<title><?php print $_language->text('pages_accounts_getpassword.title', 'ucwords'); ?></title>
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
						<div class="lines desc"><span><?php print $_language->text('pages_accounts_getpassword.desc', 'strtolower'); ?></span></div>
					</div>
					<div id="getpasswordBox" class="box">
						<div class="header"> <span><?php print $_language->text('get_password', 'strtolower'); ?></span> </div>
						<div class="body">
							<div class="lines username getcode">
								<label><?php print $_language->text('username_or_email', 'ucfirst'); ?></label>
								<div><input class="input username" type="text" placeholder="<?php print $_language->text('type_username_or_email', 'strtolower'); ?>"></div>
							</div>
							<div class="lines code typecode">
								<label><?php print $_language->text('code', 'ucfirst'); ?></label>
								<div><input class="input code" type="text" placeholder="<?php print $_language->text('type_code', 'strtolower'); ?>" <?php if (isset($codeVerify) && is_string($codeVerify)) print 'value="'.$codeVerify.'"'; ?>></div>
							</div>
							<div class='lines type'>
								<label class='hide'><?php print $_language->text('type', 'ucfirst'); ?></label>
								<div>
									<div class='input type'>
										<div class='checkbox getcode' value='getcode'>
											<div class='dot'><div></div></div>
											<div class='text'><span><?php print $_language->text('get_code', 'strtolower'); ?></span></div>
										</div>
										<div class='checkbox typecode' value='typecode'>
											<div class='dot'><div></div></div>
											<div class='text'><span><?php print $_language->text('type_code', 'strtolower'); ?></span></div>
										</div>
									</div>
								</div>
							</div>
							<div class="lines getpassword">
								<label class="hide"><?php print $_language->text('getpassword', 'ucfirst'); ?></label>
								<div><i class="input getpassword button"></i></div>
								<!--<div><button class="button active"><?php print $_language->text('getpassword', 'ucfirst'); ?></button></div>-->
							</div>
						</div>
						<div class="footer"> <div class="secure"><span><?php print $_language->text('secure_by_giccos', 'ucfirst'); ?></span></div> </div>
					</div>
					<div id="footerBox">
						<div class="li login _tt-we s" title="<?php print $_language->text('login_to_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/login'); ?>"><?php print $_language->text('login', 'strtolower'); ?></a>
						</div>
						<div class="li register _tt-we s" title="<?php print $_language->text('create_new_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/register'); ?>"><?php print $_language->text('register', 'strtolower'); ?></a>
						</div>
						<div class="li getpassword selected _tt-we s" title="<?php print $_language->text('get_password_missed', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/getpassword#'); ?>"><?php print $_language->text('forgot_password', 'strtolower'); ?></a>
						</div>
						<div class="li active _tt-we s" title="<?php print $_language->text('active_accounts', 'strtolower'); ?>">
							<a href="<?php print $_tool->links('accounts/active'); ?>"><?php print $_language->text('active', 'strtolower'); ?></a>
						</div>
					</div>
				</div>
			</div>
			<div id="gFooter"></div>
			<script src="<?php print $_tool->links("source/js/accounts.getpassword.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource"></div>
	</body>
</html>