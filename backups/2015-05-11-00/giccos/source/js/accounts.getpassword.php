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
	var toggleCheckboxConfirm = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			inputConfirm = getpasswordBox.find(".input.confirm");
			inputConfirm.children().bind('click', function(){
				if (inputConfirm.attr('handling-click') != "true") {
					inputConfirm.attr('handling-click', 'true');
					inputConfirm.toggleClass("active");
					setTimeout(function(){
						inputConfirm.removeAttr('handling-click');
					},100);
				}
			});
	};
	toggleCheckboxConfirm();
};
var callFuncReady = function () {
	actionBoxGetpassword();
};
$(document).ready(callFuncReady);