var actionBoxActive = function () {
	var resizeCenterSubBox = function (){
		var headerBox = $("#centerBox > #headerBox"),
			activeBox = $("#centerBox > #activeBox"),
			footerBox = $("#centerBox > #footerBox");
		headerBox.css({
			'margin-top': (($(window).height() / 2 - activeBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		activeBox.css({
			'margin-top': (($(window).height() / 2 - activeBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		footerBox.css({
			'margin-top': '45px'
		});
	};
	resizeCenterSubBox();
	$(window).bind('resizeEnd', resizeCenterSubBox);
};
var callFuncReady = function () {
	actionBoxActive();
};
$(document).ready(callFuncReady);