function setupPlayer () {
	var options = {
		skin: "<?php print $_tool->links('source/xml/media/player_skin.five.xml'); ?>",
		file: "https://www.youtube.com/watch?v=AFAzj1dwViw",
		image: "#",
		logo: {
			file: "#",
			link: "#",
			hide: false,
			position: "top-right",
			margin: "10px"
		},
		abouttext: "#",
		aboutlink: "#",
		displaytitle: "#",
		stretching: "uniform",
		autostart: false,
		mute: true,
		repeat: false,
		height: window.innerHeight,
		width: window.innerWidth
	};
	$("#player").setupPlayer(options);
}
function buttonAction () {
	var buttonBox = $("#buttonBox");
	var button = buttonBox.children("[button]");
	button.bind('click', function(){
		var button = $(this);
		var type = button.attr('button');
		if (type == 'share') {

		}
	});
}
function onPopup (object) {
	var popup = $("#onPopup");
	popup.boxPosition();
	if (object['type'] == 'share') {
		var input = popup.find("input[select='true'], textarea[select='true']");
		input.dblclick(function(){
			$(this).focus().select();
		});
	}
}
$(document).ready(function(){
	setupPlayer();
	var buttonBox = $("#buttonBox");
	$(document).hover(function(){
		buttonBox.stop(true,true).fadeIn();
	},function(){
		buttonBox.stop(true,true).fadeOut();
	});
	$(window).bind('resizeEnd',function(){
		var player = $("#player_wrapper");
		player.height(window.innerHeight).width(window.innerWidth);
	});
	onPopup({'type':'share'});
});