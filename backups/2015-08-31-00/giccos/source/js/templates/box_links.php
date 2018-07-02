var boxFeedToggleDisplay = function(){
	var gboxLinks = $("#gboxLinks");
	var boxFeed = gboxLinks.find("#feed");
	boxFeed.bind('mouseleave', function(){
		boxFeed.find(".list").find(".rows").stop(true, true).fadeOut(function(){
			boxFeed.find(".list").find(".rows.active").fadeIn();
			boxFeed.addClass('mleave');
		});
	});
	boxFeed.bind('mouseover', function(){
		boxFeed.find(".list").find(".rows").stop(true, true).fadeIn();
		boxFeed.removeClass('mleave');
	});
	boxFeed.mouseleave();
};
$(document).ready(function(){
	boxFeedToggleDisplay();
});