var sites_rateBox_statis = function (elem, options) {
	if (elem.hasClass('ratebox-statis-enabled')) {
		return false;
	}
	if (!isset(options)) {
		var options = {};
	}
	var randkey = randomKeyString(10);
	elem.addClass('ratebox-statis-enabled').append("<div class='rateBoxStatis' randkey='"+randkey+"'> <div class='point' rate-point='1'></div> <div class='point' rate-point='2'></div> <div class='point' rate-point='3'></div> <div class='point' rate-point='4'></div> <div class='point' rate-point='5'></div> </div>")
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
$(document).ready(function () {
	$("#infoPage > .box.rate > .content > .rows > .value > .rateBox").each(function () {
		var options = {};
		if (isset($(this).attr('rate-value'))) {
			var rateValue = parseInt($(this).attr('rate-value'));
			options['value'] = rateValue;
		}
		if (isset($(this).attr('rate-action')) && $(this).attr('rate-action') == "true") {
			options['action'] = true;
		}
		sites_rateBox_statis($(this), options);
	});
	$("#infoPage > .box.stats > .content > .rows > .value.views > .statsBox").each(function () {
		if (_dataCache.exists('sites_info_stats_views_dataset') === true) {
			var data = _dataCache.get('sites_info_stats_views_dataset');
		}else {
			return false;
		}
		var lineBar = $(this).get(0).getContext("2d");
		var myLineChart = new Chart(lineBar).Line(data, {});
	});
	$("#infoPage > .box.stats > .content > .rows > .value.mention > .statsBox").each(function () {
		if (_dataCache.exists('sites_info_stats_mention_dataset') === true) {
			var data = _dataCache.get('sites_info_stats_mention_dataset');
		}else {
			return false;
		}
		var lineBar = $(this).get(0).getContext("2d");
		var myLineChart = new Chart(lineBar).Line(data, {});
	});
});