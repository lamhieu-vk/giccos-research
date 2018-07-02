var pushOptionsSelectTime = function () {
	var select = $(".thisFeeds > .timecustom.inFeeds > .content > .rows > .value > .list > select[time-value]");
	select.each(function(){
		var select = $(this);
		if (!isset(select.attr('pushed'))) {
			var selectType = select.attr('time-value');
			if (selectType == "hours") {
				for (i = <?php print $_parameter->get('select_time_hour_min'); ?>; i <= <?php print $_parameter->get('select_time_hour_max'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "minutes") {
				for (i = <?php print $_parameter->get('select_time_minute_min'); ?>; i <= <?php print $_parameter->get('select_time_minute_max'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "days") {
				for (i = <?php print $_parameter->get('select_time_day_min'); ?>; i <= <?php print $_parameter->get('select_time_day_max'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "months") {
				for (i = <?php print $_parameter->get('select_time_month_min'); ?>; i <= <?php print $_parameter->get('select_time_month_max'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "years") {
				for (i = <?php print $_parameter->get('select_time_year_max'); ?>; i >= <?php print $_parameter->get('select_time_year_min'); ?>; i--) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else {
				return;
			}
			select.attr('pushed', 'true');
		}
	});
}
var setTimeforSelect = function () {
	if (isset(feedFromTime)) {
		var fromTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.fromTime");
		for (var i in feedFromTime) {
			feedFromTime[i] = feedFromTime[i].toNum();
		}
		if (isset(feedFromTime['hours'])) {
			fromTime.find("select[time-value='hours']").val(feedFromTime['hours']);
		}
		if (isset(feedFromTime['minutes'])) {
			fromTime.find("select[time-value='minutes']").val(feedFromTime['minutes']);
		}
		if (isset(feedFromTime['days'])) {
			fromTime.find("select[time-value='days']").val(feedFromTime['days']);
		}
		if (isset(feedFromTime['months'])) {
			fromTime.find("select[time-value='months']").val(feedFromTime['months']);
		}
		if (isset(feedFromTime['years'])) {
			fromTime.find("select[time-value='years']").val(feedFromTime['years']);
		}
	}
	if (isset(feedToTime)) {
		var toTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.toTime");
		for (var i in feedToTime) {
			feedToTime[i] = feedToTime[i].toNum();
		}
		if (isset(feedToTime['hours'])) {
			toTime.find("select[time-value='hours']").val(feedToTime['hours']);
		}
		if (isset(feedToTime['minutes'])) {
			toTime.find("select[time-value='minutes']").val(feedToTime['minutes']);
		}
		if (isset(feedToTime['days'])) {
			toTime.find("select[time-value='days']").val(feedToTime['days']);
		}
		if (isset(feedToTime['months'])) {
			toTime.find("select[time-value='months']").val(feedToTime['months']);
		}
		if (isset(feedToTime['years'])) {
			toTime.find("select[time-value='years']").val(feedToTime['years']);
		}
	}
}
var wall_getTimeUrl = function () {
	var button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
	if (button.attr('handling') != "true") {
		button.attr('handling', 'true');
		var getValueFromDate = function () {
			var fromTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.fromTime");
			var valueDateHours = fromTime.find("[time-value='hours']").children("option:selected").val().toNum(),
				valueDateMinutes = fromTime.find("[time-value='minutes']").children("option:selected").val().toNum(),
				valueDateDays = fromTime.find("[time-value='days']").children("option:selected").val().toNum(),
				valueDateMonths = fromTime.find("[time-value='months']").children("option:selected").val().toNum(),
				valueDateYears = fromTime.find("[time-value='years']").children("option:selected").val().toNum();
			if (typeof valueDateHours != "number") {
				valueDateHours = 0;
			}
			if (typeof valueDateMinutes != "number") {
				valueDateMinutes = 0;
			}
			if (!valueDateDays > 0 || !valueDateMonths > 0 || !valueDateYears > 0) {
				return 0;
			}
			if (typeof valueDateHours == "number" && typeof valueDateMinutes == "number" && typeof valueDateDays == "number" && typeof valueDateMonths == "number" && typeof valueDateYears == "number") {
				var valueDate = valueDateHours + ':' + valueDateMinutes + ' ' + valueDateMonths + '/' + valueDateDays + '/' + valueDateYears;
				return valueDate;
			}else {
				return 0;
			}
		}
		var getValueToDate = function () {
			var toTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.toTime");
			var valueDateHours = toTime.find("[time-value='hours']").children("option:selected").val().toNum(),
				valueDateMinutes = toTime.find("[time-value='minutes']").children("option:selected").val().toNum(),
				valueDateDays = toTime.find("[time-value='days']").children("option:selected").val().toNum(),
				valueDateMonths = toTime.find("[time-value='months']").children("option:selected").val().toNum(),
				valueDateYears = toTime.find("[time-value='years']").children("option:selected").val().toNum();
			if (typeof valueDateHours != "number") {
				valueDateHours = 0;
			}
			if (typeof valueDateMinutes != "number") {
				valueDateMinutes = 0;
			}
			if (!valueDateDays > 0 || !valueDateMonths > 0 || !valueDateYears > 0) {
				return 0;
			}
			if (typeof valueDateHours == "number" && typeof valueDateMinutes == "number" && typeof valueDateDays == "number" && typeof valueDateMonths == "number" && typeof valueDateYears == "number") {
				var valueDate = valueDateHours + ':' + valueDateMinutes + ' ' + valueDateMonths + '/' + valueDateDays + '/' + valueDateYears;
				return valueDate;
			}else {
				return 0;
			}
		}
		var dateFrom = getValueFromDate(),
			dateTo = getValueToDate(),
			urlFeed = "<?php print  $_tool->links('feed/time'); ?>";
		if (isset(dateFrom) && typeof dateFrom == "string" && dateFrom !== false) {
			var dataFromNum = new Date(dateFrom).getTime() / 1000;
			var pushURL = dataFromNum;
			var urlFeed = urlFeed + '/' + pushURL;
			if (isset(dateTo) && typeof dateTo == "string" && dateTo !== false) {
				var dataToNum = new Date(dateTo).getTime() / 1000;
				var pushURL = dataToNum;
				var urlFeed = urlFeed + '-' + pushURL;
				if (dataFromNum >= dataToNum) {
					button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton").removeAttr('handling');
					popupNotification ({type: 4, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('custom_time_invalid', 'ucfirst'); ?>.', 'timeout': 10000});
					return false;
				}
			}
			setTimeout(function () {
				var button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
				button.removeAttr('handling');
			}, 500);
			popupAlert({
				'title': '<?php print $_language->text('notification', 'ucfirst', false); ?>', 
				'content': '<?php print $_language->text('do_you_want_redirect_page', 'ucfirst', false); ?>',
				'escActive': true,
				'actionTrue': '<?php print $_language->text('agree', 'ucfirst', false); ?>',
				'callbackTrue': function () { 
					window.location.href = urlFeed;
				},
				'actionFalse': '<?php print $_language->text('cancel', 'ucfirst', false); ?>'
			});
		}
		/*
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: {'token': '<?php print $g_client['token']['feed']['status']; ?>', 'type': 'get_feedTime_url', 'dateFrom': dateFrom, 'dateTo': dateTo},
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				if (data['return'] != undefined && data['return'] == true) {
					if (data['url'] != undefined && data['url'] != null) {
						var newDate = "12:12 12/12/2014";
						console.log(new Date(newDate).getTime() / 1000);
						console.log(data['url']);
						popupAlert({
							'title': '<?php print $_language->text('notification', 'ucfirst', false); ?>', 
							'content': '<?php print $_language->text('do_you_want_redirect_page', 'ucfirst', false); ?>',
							'escActive': true,
							'actionTrue': '<?php print $_language->text('agree', 'ucfirst', false); ?>',
							'callbackTrue': function () { 
								window.location.href = data['url'];
							},
							'actionFalse': '<?php print $_language->text('cancel', 'ucfirst', false); ?>'
						});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('not_identified', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}
				}else {
					if (data['return'] != undefined && data['return'] == false && data['reason'] != undefined) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('not_identified', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}
				}
			}
		}).done(function(){
			var button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
			button.removeAttr('handling');
		});
		*/
	}
}
function wall_actionGetUrl () {
	var button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
	button.bind('click', function(){
		wall_getTimeUrl();
	});
}
function wall_toggleActionsetButton () {
	var boxTimeCustom = $(".thisFeeds > .timecustom.inFeeds"),
		setButton = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
	setButton.hide();
	boxTimeCustom.mouseover(function(){
		var setButton = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
		setButton.stop(true, true).slideDown();
	});
	boxTimeCustom.mouseleave(function(){
		var setButton = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
		setButton.stop(true, true).slideUp();
	});
}
pushOptionsSelectTime();
setTimeforSelect();
$(document).ready(function(){
	wall_actionGetUrl();
	// wall_toggleActionsetButton();
});