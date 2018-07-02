var actionCreateMessages = function () {
	var buttonCreate = $("[messages-create-button]");
	if (typeof popupCreateMessages === "function") {
		buttonCreate.bind('click', popupCreateMessages);
	}
};
var scrollMessagesList = function () {
	var windowHeight = $(window).innerHeight();
	var nullBoxHeight = $("html.messages.general #centerBox > #nullBox");
	$("#centerBox > #messagesData > .content > .list").barScroll({
		height: windowHeight - 120 - nullBoxHeight.innerHeight(),
		size: "5px",
		color: "#999",
		railOpacity: 0.1,
		distance: 0,
		alwaysVisible: true
	}).css({'height': windowHeight - 120 - nullBoxHeight.innerHeight()});
	$("#centerBox > #messagesData > .content .barScrollDiv, #centerBox > #messagesData > .content .list").css({'height': windowHeight - 120 - nullBoxHeight.innerHeight()});
	$(window).bind('resizeEnd', scrollMessagesList);
};
var openMessagesTab = function () {
	var actionWhenClick = function () {
		var messagesTabDisplay = $(this).attr('display');
		if (isset(messagesTabDisplay)) {
			messagesTabPrivate({'display': messagesTabDisplay});
		}else {
			return false;
		}
	};
	$("#centerBox > #messagesData > .content .lines[tab][display]").bind('click', actionWhenClick);
};
$(document).ready(function(){
	actionCreateMessages();
	scrollMessagesList();
	openMessagesTab();
});