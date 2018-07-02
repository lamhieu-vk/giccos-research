var videos_rateBox_stats = function (elem, options) {
	if (elem.hasClass('ratebox-stats-enabled')) {
		return false;
	}
	if (!isset(options)) {
		var options = {};
	}
	var randkey = randomKeyString(10);
	elem.addClass('ratebox-stats-enabled').append("<div class='rateBoxStats' randkey='"+randkey+"'> <div class='point' rate-point='1'></div> <div class='point' rate-point='2'></div> <div class='point' rate-point='3'></div> <div class='point' rate-point='4'></div> <div class='point' rate-point='5'></div> </div>")
	var thisLi = elem.children("[randkey='"+randkey+"']");
	thisLi.removeAttr('randkey');
	if (isset(options['action']) && options['action'] === true) {
		if (isset(options['callback']) && typeof options['callback'] === "function") {
			var callbackFunc = function () {

			};
		}else {
			var callbackFunc = function () {};
		}
		var allPoint = thisLi.children(".point");
		allPoint.hover(function () {
			var thisPoint = $(this);
			var actionFocus = setTimeout(function () {
				allPoint.removeClass('active');
				allPoint.each(function () {
					if (parseInt($(this).attr('rate-point')) <= parseInt(thisPoint.attr('rate-point'))) {
						$(this).addClass('active');
					}
				});
				callbackFunc();
			});
			thisPoint.data('timeout-mouseover', actionFocus);
			clearTimeout(thisPoint.data('timeout-mouseout'));
		}, function () {
			var thisPoint = $(this);
			clearTimeout(thisPoint.data('timeout-mouseover'));
			var actionFocus = setTimeout(function () {
				if (thisLi.attr('rate-point')) {
					ratePoint = thisLi.attr('rate-point');
				}else {
					ratePoint = 0;
				}
				allPoint.removeClass('active').each(function () {
					if (parseInt($(this).attr('rate-point')) == parseInt(ratePoint)) {
						$(this).mouseover();
					}
				});
			});
			thisPoint.data('timeout-mouseout', actionFocus);
		});
		allPoint.bind('click', function () {
			var thisPoint = $(this);
			thisPoint.mouseover;
			var ratePoint = thisPoint.attr('rate-point');
			thisLi.attr('rate-point', ratePoint);
			callbackFunc();
		});
	}
	if (isset(options['value']) && typeof options['value'] === "number") {
		var allPoint = thisLi.children(".point");
		allPoint.removeClass('active').each(function () {
			if (parseInt($(this).attr('rate-point')) <= parseInt(options['value'])) {
				$(this).addClass('active')
			}
		});
	}
};
var videos_description_compress = function () {
	var informationDescriptionContent = $("#leftBox > .tab#infoTab > .box.information > .content > .tab > .rows.description > .value");
	informationDescriptionContent.each(function () {
		var thisContent = $(this);
		var limitHeight = 146;
		if (thisContent.attr('compress-content') != "true") {
			thisContent.attr('compress-content', 'true');
			if (thisContent.height() > limitHeight && thisContent.children("span").length > 0) {
				var oldText = thisContent.children("span").html();
				var oldHeight = thisContent.height();
				var charArr = oldText.split(" ");
				var charLength = charArr.length;
				var charShow = parseInt(charLength / (oldHeight / limitHeight));
				var newText = "";
				for (i = 0; i < charShow - 1; i++) {
					newText = newText + ' ' + charArr[i];
				}
				thisContent.children("span").html(newText + '... ');
				var newHeight = thisContent.height();
				thisContent.hover(function () {
					var t = setTimeout(function() {
						if (thisContent.attr('compress-content-notify') != "true" && !thisContent.hasClass('compress-content-disabled')) {
							thisContent.attr('compress-content-notify', 'true');
							popupNotification ({type: 'tips', title: '<?php print $_language->text('tips', 'ucfirst'); ?>', description: '<?php print $_language->text('click_disable_collapse_contents','ucfirst'); ?>.', timeout: 4000});
							setTimeout(function () {
								thisContent.removeAttr('compress-content-notify');
							}, 10000);
						}
					}, 500);
					$(this).data('timeout', t);
				}, function () {
					if (thisContent.hasClass('compress-content-disabled')) {
						return false;
					}
					clearTimeout($(this).data('timeout'));
				});
				thisContent.bind('click', function () {
					if (thisContent.hasClass('compress-content-disabled')) {
						thisContent.animate({
							'height': newHeight
						}, 200, function () {
							thisContent.children("span").html(newText + '... ');
							thisContent.removeClass('compress-content-disabled');
						});
					}else {
						thisContent.animate({
							'height': oldHeight
						}, 100, function () {
							thisContent.children("span").html(oldText);
							thisContent.addClass('compress-content-disabled');
							thisContent.removeAttr('compress-content-notify');
						});
					}
				});
			}
		}
	});
};
var videos_input_autosize = function () {
	autosize($("textarea.ip_s1.ip_as"), {'shift': true});
};
$(document).ready(function () {
	videos_input_autosize();
	videos_description_compress();
	$("#leftBox > .tab#infoTab > .box.rate > .content > .rows .rateBox").each(function () {
		var options = {};
		if (isset($(this).attr('rate-value'))) {
			var rateValue = parseInt($(this).attr('rate-value'));
			options['value'] = rateValue;
		}
		if (isset($(this).attr('rate-action')) && $(this).attr('rate-action') == "true") {
			options['action'] = true;
		}
		videos_rateBox_stats($(this), options);
	});
	$("#leftBox > .tab#infoTab > .box.stats > .content > .rows > .value.views > .statsBox").each(function () {
		if (_g['cache'].exists('videos_info_stats_views_dataset') === true) {
			var data = _g['cache'].get('videos_info_stats_views_dataset');
		}else {
			return false;
		}
		var lineBar = $(this).get(0).getContext("2d");
		var myLineChart = new Chart(lineBar).Line(data, {});
	});
	$("#leftBox > .tab#infoTab > .box.stats > .content > .rows > .value.mention > .statsBox").each(function () {
		if (_g['cache'].exists('videos_info_stats_mention_dataset') === true) {
			var data = _g['cache'].get('videos_info_stats_mention_dataset');
		}else {
			return false;
		}
		var lineBar = $(this).get(0).getContext("2d");
		var myLineChart = new Chart(lineBar).Line(data, {});
	});
});