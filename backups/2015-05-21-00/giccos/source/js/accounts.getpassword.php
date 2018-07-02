var actionBoxGetpassword = function () {
	var resizeCenterSubBox = function (){
		var headerBox = $("#centerBox > #headerBox"),
			getpasswordBox = $("#centerBox > #getpasswordBox"),
			footerBox = $("#centerBox > #footerBox");
		headerBox.css({
			'margin-top': (($(window).height() / 2 - getpasswordBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		getpasswordBox.css({
			'margin-top': (($(window).height() / 2 - getpasswordBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		footerBox.css({
			'margin-top': '45px'
		});
	};
	resizeCenterSubBox();
	$(window).bind('resizeEnd', resizeCenterSubBox);
	var toggleCheckboxType = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			linesGetcode = getpasswordBox.find(".lines.getcode"),
			lineTypecode = getpasswordBox.find(".lines.typecode"),
			inputCheckbox = getpasswordBox.find(".input").children(".checkbox");
			inputCheckbox.bind('click', function(){
				var inputCheckboxThis = $(this);
				if (inputCheckboxThis.attr('handling-click') != "true" && !inputCheckboxThis.hasClass("active")) {
					inputCheckboxThis.attr('handling-click', 'true');
					inputCheckbox.removeClass("active");
					inputCheckboxThis.addClass("active");
					if (inputCheckboxThis.hasClass("getcode")) {
						lineTypecode.fadeOut(function(){
							linesGetcode.fadeIn();
						});
					}else {
						linesGetcode.fadeOut(function(){
							lineTypecode.fadeIn();
						});
					}
					setTimeout(function(){
						inputCheckboxThis.removeAttr('handling-click');
					},100);
				}
			});
	};
	toggleCheckboxType();
	var toggleCheckboxRecheck = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			confirmPassword = getpasswordBox.find(".lines.confirm_password");
			inputRecheck = getpasswordBox.find(".input.recheck");
			inputRecheck.children().bind('click', function(){
				if (inputRecheck.attr('handling-click') != "true") {
					inputRecheck.attr('handling-click', 'true');
					inputRecheck.toggleClass("active");
					if (inputRecheck.hasClass("active")) {
						confirmPassword.slideDown();
					}else {
						confirmPassword.slideUp();
					}
					setTimeout(function(){
						inputRecheck.removeAttr('handling-click');
					},100);
				}
			});
	};
	toggleCheckboxRecheck();
};
var callFuncReady = function () {
	actionBoxGetpassword();
};
$(document).ready(callFuncReady);