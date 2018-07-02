var actionBoxRegister = function () {
	var resizeCenterSubBox = function (){
		var headerBox = $("#centerBox > #headerBox"),
			registerBox = $("#centerBox > #registerBox"),
			footerBox = $("#centerBox > #footerBox");
		headerBox.css({
			'margin-top': (($(window).height() / 2 - registerBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		registerBox.css({
			'margin-top': (($(window).height() / 2 - registerBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		footerBox.css({
			'margin-top': '45px'
		});
	};
	resizeCenterSubBox();
	$(window).bind('resizeEnd', resizeCenterSubBox);
	var toggleCheckboxGender = function () {
		var registerBox = $("#centerBox > #registerBox"),
			inputCheckbox = registerBox.find(".input").children(".checkbox");
		inputCheckbox.bind('click', function(){
			var inputCheckboxThis = $(this);
			if (inputCheckboxThis.attr('handling-click') != "true" && !inputCheckboxThis.hasClass("active")) {
				inputCheckboxThis.attr('handling-click', 'true');
				inputCheckbox.removeClass("active");
				inputCheckboxThis.addClass("active");
				setTimeout(function(){
					inputCheckboxThis.removeAttr('handling-click');
				},100);
			}
		});
	};
	toggleCheckboxGender();
	var toggleCheckboxCheckrerms = function () {
		var registerBox = $("#centerBox > #registerBox"),
			inputCheckrerms = registerBox.find(".input.check_terms");
		inputCheckrerms.children().bind('click', function(){
			if (inputCheckrerms.attr('handling-click') != "true") {
				inputCheckrerms.attr('handling-click', 'true');
				inputCheckrerms.toggleClass("active");
				setTimeout(function(){
					inputCheckrerms.removeAttr('handling-click');
				},100);
			}
		});
		inputCheckrerms.children(".text").find("[href]").bind('click', function () {
			window.open($(this).attr('href'), "_blank");
			return false;
		});
	};
	toggleCheckboxCheckrerms();
	var dateBirthdayType = function () {
		var registerBox = $("#centerBox > #registerBox"),
			linesBirthday = registerBox.find(".birthday"),
			inputDay = linesBirthday.find(".input.day"),
			inputMonth = linesBirthday.find(".input.month"),
			inputYear = linesBirthday.find(".input.year");
		var numberTyping = function () {
			var input = $(this),
				value = input.val();
			if (input.hasClass("day") || input.hasClass("month")) {
				var regexNumber = new RegExp(/([0-9]{1,2})/i);
				var matchs = value.match(regexNumber);
				if (isset(matchs) && matchs !== null) {
					if ((input.hasClass("day") && matchs[0] >= <?php print $_parameter->get('select_time_day_min_limit'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_day_max_limit'); ?>) || (input.hasClass("month") && matchs[0] >= <?php print $_parameter->get('select_time_month_min_limit'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_month_max_limit'); ?>)) {
						input.val(matchs[0]);
					}else {
						input.val('');
					}
				}else {
					input.val('');
				}
			}else if (input.hasClass("year")) {
				var regexNumber = new RegExp(/([0-9]{1,4})/i);
				var matchs = value.match(regexNumber);
				if (isset(matchs) && matchs !== null) {
					if (matchs[0].length == 4 && matchs[0] > <?php print $_parameter->get('select_time_year_min_limit'); ?> && matchs[0] < <?php print $_parameter->get('select_time_year_max_limit'); ?>) {
						input.val(matchs[0]);
					}else if (value.length > 4) {
						input.val(matchs[0]);
					}else if (value.length < 4) {
						//.
					}else {
						input.val('');
					}
				}else {
					input.val('');
				}
			}
		};
		inputDay.donetyping(numberTyping, 250);
		inputMonth.donetyping(numberTyping, 250);
		inputYear.donetyping(numberTyping, 250);
	};
	dateBirthdayType();
};
var registerAccounts = function () {
	var registerBox = $("#centerBox > #registerBox"),
		boxStepsAll = registerBox.find("[box-steps]"),
		buttonRegister = registerBox.find(".input.register");
	var actionRegisterAccounts = function () {
		var registerBox = $("#centerBox > #registerBox"),
			boxStepsAll = registerBox.find("[box-steps]"),
			boxStepsOe = registerBox.find("[box-steps='1']"),
			boxStepsTo = registerBox.find("[box-steps='2']"),
			boxStepsTe = registerBox.find("[box-steps='3']"),
			inputUsername = registerBox.find(".input.username"),
			inputPassword = registerBox.find(".input.password");
			inputEmail = registerBox.find(".input.email"),
			inputFirstname = registerBox.find(".input.firstname"),
			inputLastname = registerBox.find(".input.lastname"),
			inputBirthdayDays = registerBox.find(".input.birthday.day"),
			inputBirthdayMonths = registerBox.find(".input.birthday.month"),
			inputBirthdayYears = registerBox.find(".input.birthday.year"),
			inputGender = registerBox.find(".input.gender"),
			inputConfirmpassword = registerBox.find(".input.confirm_password"),
			inputCheckterms  = registerBox.find(".input.check_terms");
		function usernameRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_username'); ?>);
			return pattern.test(string);
		};
		function emailRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_email'); ?>);
			return pattern.test(string);
		};
		function passwordRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_password'); ?>);
			return pattern.test(string);
		};
		function nameRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_name'); ?>);
			return pattern.test(string);
		};
		function dayRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_date_day'); ?>);
			return pattern.test(string);
		};
		function monthRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_date_month'); ?>);
			return pattern.test(string);
		};
		function yearRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_date_year'); ?>);
			return pattern.test(string);
		};
		function genderRegex (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_gender'); ?>);
			return pattern.test(string);
		};
		function checktermsRegex (string) {
			var pattern = new RegExp(/^(active)/);
			return pattern.test(string);
		};
		if (!usernameRegex(inputUsername.val())) {
			inputUsername.parents(".username").addClass("error");
			setTimeout(function(){
				inputUsername.parents(".username").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('username_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!passwordRegex(inputPassword.val())) {
			inputPassword.parents(".password").addClass("error");
			setTimeout(function(){
				inputPassword.parents(".password").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('password_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (inputUsername.val() == inputPassword.val()) {
			inputPassword.parents(".password").addClass("error");
			setTimeout(function(){
				inputPassword.parents(".password").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('less_secure_password', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!emailRegex(inputEmail.val())) {
			inputEmail.parents(".email").addClass("error");
			setTimeout(function(){
				inputEmail.parents(".email").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('email_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!nameRegex(inputFirstname.val())) {
			inputFirstname.parents(".firstname").addClass("error");
			setTimeout(function(){
				inputFirstname.parents(".firstname").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('name_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!nameRegex(inputLastname.val())) {
			inputLastname.parents(".lastname").addClass("error");
			setTimeout(function(){
				inputLastname.parents(".lastname").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('name_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (inputFirstname.val() == inputLastname.val()) {
			inputFirstname.parents(".firstname").addClass("error");
			inputLastname.parents(".lastname").addClass("error");
			setTimeout(function(){
				inputFirstname.parents(".firstname").removeClass("error");
				inputLastname.parents(".lastname").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('name_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!dayRegex(inputBirthdayDays.val())) {
			inputBirthdayDays.parents(".brithday").addClass("error");
			setTimeout(function(){
				inputBirthdayDays.parents(".brithday").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('birthday_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!monthRegex(inputBirthdayMonths.val())) {
			inputBirthdayMonths.parents(".brithday").addClass("error");
			setTimeout(function(){
				inputBirthdayMonths.parents(".brithday").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('birthday_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!yearRegex(inputBirthdayYears.val())) {
			inputBirthdayYears.parents(".lines.brithday").addClass("error");
			setTimeout(function(){
				inputBirthdayYears.parents(".lines.brithday").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('birthday_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!genderRegex(inputGender.find(".checkbox.active").attr('value'))) {
			inputGender.parents(".gender").addClass("error");
			setTimeout(function(){
				inputGender.parents(".gender").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('gender_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (inputConfirmpassword.val() != inputPassword.val()) {
			inputConfirmpassword.parents(".confirm_password").addClass("error");
			setTimeout(function(){
				inputConfirmpassword.parents(".confirm_password").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('repassword_wrong', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!inputCheckterms.hasClass("active")) {
			inputGender.parents(".check_terms").addClass("error");
			setTimeout(function(){
				inputGender.parents(".check_terms").removeClass("error");
			}, 3000);
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('agree_is_not_check', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else {
			if (registerBox.attr('handling-register') != "true") {
				registerBox.attr('handling-register', 'true');
			}else {
				return false;
			}
			var accountProfile = {};
				accountProfile['username'] = inputUsername.val();
				accountProfile['password'] = inputPassword.val();
				accountProfile['email'] = inputEmail.val();
				accountProfile['firstname'] = inputFirstname.val();
				accountProfile['lastname'] = inputLastname.val();
				accountProfile['birthday'] = {};
				accountProfile['birthday']['day'] = inputBirthdayDays.val();
				accountProfile['birthday']['month'] = inputBirthdayMonths.val();
				accountProfile['birthday']['year'] = inputBirthdayYears.val();
				accountProfile['gender'] = inputGender.find(".checkbox.active").attr('value');
			console.log(accountProfile);
			var data = {'port': 'accounts', 'token': '<?php print $g_client['token']['action']['accounts']; ?>', 'type': 'register', 'login': true, 'profile': accountProfile};
			var doneRequestFunc = function () {
				registerBox.removeAttr('handling-register');
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
	buttonRegister.bind('click', actionRegisterAccounts);
	$(document).bind('keyup', function(e){
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13) {
			actionRegisterAccounts();
		}
	});
};
var callFuncReady = function () {
	actionBoxRegister();
	registerAccounts();
};
$(document).ready(callFuncReady);