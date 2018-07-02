function resizeTemplate (){
	function navCover () {
		var wH = $(window).height();
		var wW = $(window).width();
		var nC_h = wH / 4;
		if (nCt_h > 200) {
			//.
		}else {
			var nC_h = 200;
		}
		var nCt_h = (nC_h - $(".navCover-text").height()) / 2 - 20;
		$("#navCover").height(nC_h);
		$(".navCover-text").css('top', nCt_h);
		$(".navCover-text > div:nth-child(3)").css('margin-left', (wW - $(".navCover-text > div:nth-child(3)").width()) / 2);
		$("#wrapBox").height(wH - nC_h);
	}
	navCover();
	$(window).bind('resizeEnd', navCover);
	function boxRegister () {
		$("#gRegister").boxPosition({
			position: 'center',
			pH: $("#navCover").height(),
			mY: 10
		});
	}
	boxRegister();
}
function action () {
	function toggleAgree () {
		var box = $("#gRegister div[name='agree']");
		box.bind('click', function(){
			var isBox = box.children("div[agree]");
			if(isBox.attr('agree') == 'false'){
				isBox.attr('agree', 'true');
			}else {
				isBox.attr('agree', 'false');
			}
		});
	}
	toggleAgree();
	function error (id) {
		var title = $(".boxForm-title");
		var tagPush = "";
		if(transferError(id) != ''){
			var tagPush = transferError(id);
		}else {
			title.find("i.error").remove();
		}
		if(tagPush != ""){
			if(title.find("i.error").length == 0){
				title.find("span").first().after("<i class='fa fa-exclamation-circle error south' title='"+tagPush+"'></i>");
			}else {	
				title.find("i.error").fadeIn("fast");
				title.find("i.error").attr("title", tagPush);
			}
			title.find("i.error").tooltip({gravity: 's', trigger: 'manual'});
		}
	}
	function register () {
		function check () {
			var username_I = $(".boxForm > .content > .lines input[name='username']");
			var email_I = $(".boxForm > .content > .lines input[name='email']");
			var firstname_I = $(".boxForm > .content > .lines input[name='firstname']");
			var lastname_I = $(".boxForm > .content > .lines input[name='lastname']");
			var phone_I = $(".boxForm > .content > .lines input[name='phone']");
			var gender_I = $(".boxForm > .content > .lines select[name='gender'] option:selected");
			var birthdayd_I = $(".boxForm > .content > .lines select[name='birthday.d'] option:selected");
			var birthdaym_I = $(".boxForm > .content > .lines select[name='birthday.m'] option:selected");
			var birthdayy_I = $(".boxForm > .content > .lines select[name='birthday.y'] option:selected");
			var password_I = $(".boxForm > .content > .lines input[name='password']");
			var rpassword_I = $(".boxForm > .content > .lines input[name='re_password']");
			var agree_I = $(".boxForm > .content > .lines div[name='agree'] > div");
			function usernameRegex (string) {
				var pattern = new RegExp(/^([a-zA-Z0-9\.\_]{6,30}$)/);
			    return pattern.test(string);
			};
			function emailRegex (string) {
				var pattern = new RegExp(/(([\w-\.]+@([\w-]+\.)+[\w-]{2,6}))$/);
			    return pattern.test(string);
			};
			function nameRegex (string) {
				var pattern = new RegExp(/^([^\=\-\(\)\8\*\&\^\%\$\#\@\!\~\`\;\'\,\/\\]{2,30}$)/);
			    return pattern.test(string);
			};
			function phoneRegex (string) {
				var pattern = new RegExp(/^([0-9\+]{10,15}$)/);
			    return pattern.test(string);
			};
			function dateRegex (string) {
				var pattern = new RegExp(/^([0-9]+$)/);
			    return pattern.test(string);
			};
			function genderRegex (string) {
				var pattern = new RegExp(/^([0-9]{1}$)/);
			    return pattern.test(string);
			};
			function passwordRegex (string) {
				var pattern = new RegExp(/^(\S{8,}$)/);
				return pattern.test(string);
			};
			function agreeRegex (string) {
			    var pattern = new RegExp(/^(true|false)/);
			    return pattern.test(string);
			};
			var username = username_I.val();
			var email = email_I.val();
			var firstname = firstname_I.val();
			var lastname = lastname_I.val();
			var phone = phone_I.val();
			var gender = gender_I.val();
			var birthdayd = birthdayd_I.val();
			var birthdaym = birthdaym_I.val();
			var birthdayy = birthdayy_I.val();
			var password = password_I.val();
			var rpassword = rpassword_I.val();
			var agree = agree_I.attr('agree');
			if (!usernameRegex(username)) {
				return {status: false, code: "ERROR#USER_001"};
			}else if (!passwordRegex(password)) {
				return {status: false, code: "ERROR#USER_002"};
			}else if (password != rpassword) {
				return {status: false, code: "ERROR#USER_008"};
			}else if (!phoneRegex(phone)) {
				return {status: false, code: "ERROR#USER_009"};
			}else if (!nameRegex(firstname) || !nameRegex(lastname)) {
				return {status: false, code: "ERROR#USER_010"};
			}else if (!genderRegex(gender)) {
				return {status: false, code: "ERROR#USER_011"};
			}else if (!dateRegex(birthdayd) || !dateRegex(birthdaym) || !dateRegex(birthdayy)) {
				return {status: false, code: "ERROR#USER_012"};
			}else if (!agreeRegex(agree)) {
				return {status: false, code: "ERROR#USER_013"};
			}else if (agree != 'true') {
				return {status: false, code: "ERROR#USER_014"};
			}else if (!emailRegex(email)) {
				return {status: false, code: "ERROR#USER_015"};
			}else {
				return {status: true, data: {type: 'register', token: '<?php print $g_client['token']['accounts']['register']; ?>', user: {username: username, email: email, name: {first: firstname, last: lastname}, phone: phone, gender: gender, birthday: {days: birthdayd, months: birthdaym, years: birthdayy}, password: password}}};
			}
		}
		function send (data) {
			var registerTab = $("#gRegister");
			if (registerTab.attr('handling') != 'true') {
				registerTab.attr('handling','true');
				$.ajax({
					type: "POST",
					dataType: "json",
					url: "<?php print $_tool->links("source/ajax/accounts.ajax"); ?>",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (returnData) {
						if (returnData['return'] !== undefined && returnData['return'] == false) {
							error(returnData['reason']);
						}else if (returnData['redirect'] !== undefined && returnData['redirect'] != null) {
							window.location.href = returnData['redirect'];
						}else {
							//.
						}
					},
					error: function (xhr, ajaxOptions, thrownError) {
						error("ERROR#USER_000");
					}
				}).done(function(){
					setTimeout(function(){
						registerTab.attr('handling','false');
					},100);
				});
			}
		}
		function action () {
			var box = $(".boxForm");
			var button = $(".boxForm > .content > .lines button");
			var input = $(".boxForm > .content > .lines input[name]");
			button.bind('click', function(){
				var button = $(this);
				if(button.attr('name') == 'register' && button.attr('process') != 'true'){
					if(check()['status']){
						$(".boxForm-title i.error").fadeOut("fast");
						var returnSend = send(check()['data']);
					}else {
						error(check()['code']);
					}
				}else if(button.attr('name') == 'login'){
					window.location.href = '<?php print $_tool->links("accounts/login"); ?>';
				}else if(button.attr('name') == 'forgetpassword'){
					window.location.href = '<?php print $_tool->links("accounts/forgetpassword"); ?>';
				}
			});
			input.keypress(function(event){
				var keycode = (event.keyCode ? event.keyCode : event.which);
				if(keycode == '13'){
					$(".boxForm > .content > .lines button[name='register']").click();
				}
			});

		}
		action();
	}
	register();
}
function pushSelect () {
	var select = $(".boxForm > .content > .lines select");
	select.each(function(){
		var select = $(this);
		if(select.attr('name') == 'birthday.d'){
			for (var i = 1; i <= 31; i++){
				select.find("option:last").after("<option value='"+i+"'>"+i+"</option>");
			}
		}else if(select.attr('name') == 'birthday.m'){
			for (var i = 1; i <= 12; i++){
				select.find("option:last").after("<option value='"+i+"'>"+i+"</option>");
			}
		}else if(select.attr('name') == 'birthday.y'){
			for (var i = 1975; i <= 2014; i++){
				select.find("option:first").after("<option value='"+i+"'>"+i+"</option>");
			}
		}
	});
}
$(document).ready(function(){
	resizeTemplate();
	action();
	pushSelect();
});