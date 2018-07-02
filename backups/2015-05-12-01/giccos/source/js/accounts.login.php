var actionBoxLogin = function () {
	var resizeCenterSubBox = function (){
		var headerBox = $("#centerBox > #headerBox"),
			loginBox = $("#centerBox > #loginBox"),
			footerBox = $("#centerBox > #footerBox");
		headerBox.css({
			'margin-top': (($(window).height() / 2 - loginBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		loginBox.css({
			'margin-top': (($(window).height() / 2 - loginBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		footerBox.css({
			'margin-top': '45px'
		});
	};
	resizeCenterSubBox();
	$(window).bind('resizeEnd', resizeCenterSubBox);
	var toggleCheckboxRemember = function () {
		var loginBox = $("#centerBox > #loginBox"),
			inputRemember = loginBox.find(".input.remember");
			inputRemember.children().bind('click', function(){
				if (inputRemember.attr('handling-click') != "true") {
					inputRemember.attr('handling-click', 'true');
					inputRemember.toggleClass("active");
					setTimeout(function(){
						inputRemember.removeAttr('handling-click');
					},100);
				}
			});
	};
	toggleCheckboxRemember();
};
var loginAccounts = function () {
	var loginBox = $("#centerBox > #loginBox"),
		buttonLogin = loginBox.find(".input.login");
	var actionLoginAccounts = function () {
		var loginBox = $("#centerBox > #loginBox"),
			inputUsername = loginBox.find(".input.username"),
			inputPassword = loginBox.find(".input.password"),
			inputRemember = loginBox.find(".input.remember");
		function usernameRegex (string) {
			var pattern = new RegExp(/^([a-zA-Z0-9\.\_]{6,30}$)/);
			return pattern.test(string);
		};
		function emailRegex (string) {
			var pattern = new RegExp(/(([\w-\.]+@([\w-]+\.)+[\w-]{2,6}))$/);
			return pattern.test(string);
		};
		function passwordRegex (string) {
			var pattern = new RegExp(/^(\S{8,}$)/);
			return pattern.test(string);
		};
		function rememberRegex (string) {
			var pattern = new RegExp(/^(true|false)/);
			return pattern.test(string);
		};
		if (!usernameRegex(inputUsername.val()) && !emailRegex(inputUsername.val())) {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('username_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!passwordRegex(inputPassword.val())) {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('password_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else {
			if (loginBox.attr('handling-login') != "true") {
				loginBox.attr('handling-login', 'true');
			}else {
				return false;
			}
			if (inputRemember.hasClass('active')) {
				var remember = true;
			}else {
				var remember = false;
			}
			var username = inputUsername.val(),
				password = inputPassword.val();
			var data = {'port': 'accounts', 'token': '<?php print $g_client['token']['action']['accounts']; ?>', 'type': 'login', 'username': username, 'password': password, 'remember': remember};
			console.log(data);
			var doneRequestFunc = function () {
				loginBox.removeAttr('handling-login');
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				success: function(data) {
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['redirect']['later']) && isset(data['redirect']['home'])) {
							popupAlert({
								"title": "<?php print $_language->text('notification', 'ucfirst'); ?>", 
								"content": "<?php print $_language->text('do_you_want_redirect_page', 'ucfirst'); ?>.<br><?php print $_language->text('link', 'ucfirst'); ?>: " + data['redirect']['later'] + ".",
								"escActive": true,
								"actionTrue": "<?php print $_language->text('redirect', 'ucfirst'); ?>",
								"callbackTrue": function () { 
									window.location.href = data['redirect']['later'];
								},
								"actionFalse": "<?php print $_language->text('go_to_home', 'ucfirst'); ?>", 
								"callbackFalse": function () { 
									window.location.href = data['redirect']['home'];
								}
							});
						}else if (isset(data['redirect']['home'])) {
							window.location.href = data['redirect']['home'];
						}else {
							location.reload();
						}
					}else if (isset(data['return']) && isset(data['reason']) && data['return'] === false) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: ".", timeout: '50<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('undefined', 'ucfirst'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		}
	};
	buttonLogin.bind('click', actionLoginAccounts);
	$(document).bind('keyup', function(e){
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13) {
			actionLoginAccounts();
		}
	});
};
var callFuncReady = function () {
	loginAccounts();
	actionBoxLogin();
};
$(document).ready(callFuncReady);