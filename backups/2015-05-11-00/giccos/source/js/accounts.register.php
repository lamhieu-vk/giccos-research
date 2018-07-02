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
};
var callFuncReady = function () {
	actionBoxRegister();
};
$(document).ready(callFuncReady);