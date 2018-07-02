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
		var setPointFunc = function () {
			var thisPoint = $(this);
			var actionFocus = setTimeout(function () {
				allPoint.removeClass('active');
				allPoint.each(function () {
					if (parseInt($(this).attr('rate-point')) <= parseInt(thisPoint.attr('rate-point'))) {
						$(this).addClass('active')
					}
				});
				callbackFunc();
			}, 100);
			thisPoint.data('timeout', actionFocus);
		};
		var clearPointFunc = function () {
			var thisPoint = $(this);
			clearTimeout(thisPoint.data('timeout'));
		};
		allPoint.hover(setPointFunc, clearPointFunc);
		allPoint.bind('click', setPointFunc);
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
	$("#infoPage > .box.stats > .content > .rows > .value > .statsBox").each(function () {
var data = {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [
        {
            label: "Views dataset",
            fillColor: "rgba(0, 159, 204, 0.25)",
            strokeColor: "rgba(0, 159, 204, 1)",
            pointColor: "rgba(0, 159, 204, 1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(0, 159, 204, 1)",
            data: [28, 48, 40, 19, 86, 27, 90]
        },
        {
            label: "Comments dataset",
            fillColor: "rgba(7, 197, 190, 0.25)",
            strokeColor: "rgba(7, 197, 190, 1)",
            pointColor: "rgba(7, 197, 190, 1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(7, 197, 190, 1)",
            data: [32, 25, 84, 45, 23, 24, 67]
        }
    ]
};
		var lineBar = $(this).get(0).getContext("2d");
		var myLineChart = new Chart(lineBar).Line(data, {});
	});

});