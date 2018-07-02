<?php
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client["language"]['code']; ?>">
	<head>
		<title><?php print $_language->text('pages_accounts_register.title', 'ucwords', false, false); ?></title>
		<link href="<?php print $_tool->links("source/css/ext/jqueryui.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/accounts.register.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/accounts.register.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<div id="navCover">
				<div class="navCover-wrap"></div>
				<div class="navCover-img"></div>
				<div class="navCover-text">
					<div><span><?php print $_language->text('giccos_accounts', 'ucfirst', false, false); ?></span></div>
					<div><span><?php print $_language->text('giccos_accounts_register_desc', 'ucfirst', false, false); ?></span></div>
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
				<div id="gRegister" class="boxGrid boxForm">
					<div class="title">
						<i class="fa fa-pencil"></i>
						<span class="cr-pointer"><?php print $_language->text('type_your_info', 'ucfirst', 'accounts'); ?></span>
					</div>
					<div class="content">
						<div class="lines b-2">
							<input class="east" name="username" title="<?php print $_language->text('type_username', 'ucfirst'); ?>" type="text" placeholder="<?php print $_language->text('username', 'ucfirst'); ?>" maxlength="30" />
							<input class="west" name="email" title="<?php print $_language->text('type_email', 'ucfirst'); ?>" type="text" placeholder="<?php print $_language->text('email', 'ucfirst'); ?>" maxlength="100" />
						</div>
						<div class="lines b-2">
							<input class="east" name="firstname" title="<?php print $_language->text('type_firstname', 'ucfirst'); ?>" type="text" placeholder="<?php print $_language->text('firstname', 'ucfirst'); ?>" maxlength="20" />
							<input class="west" name="lastname" title="<?php print $_language->text('type_lastname', 'ucfirst'); ?>" type="text" placeholder="<?php print $_language->text('lastname', 'ucfirst'); ?>" maxlength="20" />
						</div>
						<div class="lines b-2">
							<input class="east" name="phone" title="<?php print $_language->text('type_phone', 'ucfirst'); ?>" type="text" placeholder="<?php print $_language->text('phone', 'ucfirst'); ?>" maxlength="13" />
							<label>
								<select class="west" name="gender" title="<?php print $_language->text('select_gender', 'ucfirst'); ?>">
									<option value><?php print $_language->text('gender', 'ucfirst'); ?></option>
									<option value="1"><?php print $_language->text('male', 'ucfirst'); ?></option>
									<option value="2"><?php print $_language->text('female', 'ucfirst'); ?></option>
								</select>
							</label>
						</div>
						<div class="lines b-3">
							<label>
								<select class="east" name="birthday.d" title="<?php print $_language->text('select_days_of_birth', 'ucfirst'); ?>">
									<option value><?php print $_language->text('days', 'ucfirst'); ?></option>
								</select>
							</label>
							<label>
								<select class="south" name="birthday.m" title="<?php print $_language->text('select_months_of_birth', 'ucfirst'); ?>">
									<option value><?php print $_language->text('months', 'ucfirst'); ?></option>
								</select>
							</label>
							<label>
								<select class="west" name="birthday.y" title="<?php print $_language->text('select_years_of_birth', 'ucfirst'); ?>">
									<option value><?php print $_language->text('years', 'ucfirst'); ?></option>
								</select>
							</label>
						</div>
						<div class="lines b-2">
							<input class="east" name="password" title="<?php print $_language->text('type_password', 'ucfirst'); ?>" type="password" placeholder="<?php print $_language->text('password', 'ucfirst'); ?>" />
							<input class="west" name="re_password" title="<?php print $_language->text('type_re_password', 'ucfirst'); ?>" type="password" placeholder="<?php print $_language->text('re_password', 'ucfirst'); ?>" />
						</div>
						<div class="lines b-1">
							<div class="east" name="agree" title="<?php print $_language->text('checkbox_agree_terms', 'ucfirst', 'accounts'); ?>" type="checkbox">
								<div agree="false"></div>
							</div>
							<button class type="button" name="register"><?php print $_language->text('register', 'ucfirst'); ?></button>
						</div>
						<div class="lines b-2">
							<button class type="button" name="login"><?php print $_language->text('login', 'ucfirst'); ?></button>
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