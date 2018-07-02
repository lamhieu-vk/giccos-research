function pushOptionsSelectTime () {
	var select = $(".thisFeeds > .timecustom.inFeeds > .content > .rows > .value > .list > select[time-value]");
	select.each(function(){
		var select = $(this);
		if (select.attr('pushed') == undefined) {
			var selectType = select.attr('time-value');
			if (selectType == "hours") {
				for (i = <?php print $_parameter->get('select_time_hours_min_limit'); ?>; i <= <?php print $_parameter->get('select_time_hours_max_limit'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "minutes") {
				for (i = <?php print $_parameter->get('select_time_minutes_min_limit'); ?>; i <= <?php print $_parameter->get('select_time_minutes_max_limit'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "days") {
				for (i = <?php print $_parameter->get('select_time_days_min_limit'); ?>; i <= <?php print $_parameter->get('select_time_days_max_limit'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "months") {
				for (i = <?php print $_parameter->get('select_time_months_min_limit'); ?>; i <= <?php print $_parameter->get('select_time_months_max_limit'); ?>; i++) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else if (selectType == "years") {
				for (i = <?php print $_parameter->get('select_time_years_max_limit'); ?>; i >= <?php print $_parameter->get('select_time_years_min_limit'); ?>; i--) {
					select.append("<option value='"+i+"'>"+i+"</option>");
				}
			}else {
				return;
			}
			select.attr('pushed', 'true');
		}
	});
}
function setTimeforSelect () {
	if (feedFromTime !== undefined) {
		var fromTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.fromTime");
		for (var i in feedFromTime) {
			feedFromTime[i] = feedFromTime[i].toNum();
		}
		if (feedFromTime['hours'] != undefined) {
			fromTime.find("select[time-value='hours']").val(feedFromTime['hours']);
		}
		if (feedFromTime['minutes'] != undefined) {
			fromTime.find("select[time-value='minutes']").val(feedFromTime['minutes']);
		}
		if (feedFromTime['days'] != undefined) {
			fromTime.find("select[time-value='days']").val(feedFromTime['days']);
		}
		if (feedFromTime['months'] != undefined) {
			fromTime.find("select[time-value='months']").val(feedFromTime['months']);
		}
		if (feedFromTime['years'] != undefined) {
			fromTime.find("select[time-value='years']").val(feedFromTime['years']);
		}
	}
	if (feedToTime !== undefined) {
		var toTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.toTime");
		for (var i in feedToTime) {
			feedToTime[i] = feedToTime[i].toNum();
		}
		if (feedToTime['hours'] != undefined) {
			toTime.find("select[time-value='hours']").val(feedToTime['hours']);
		}
		if (feedToTime['minutes'] != undefined) {
			toTime.find("select[time-value='minutes']").val(feedToTime['minutes']);
		}
		if (feedToTime['days'] != undefined) {
			toTime.find("select[time-value='days']").val(feedToTime['days']);
		}
		if (feedToTime['months'] != undefined) {
			toTime.find("select[time-value='months']").val(feedToTime['months']);
		}
		if (feedToTime['years'] != undefined) {
			toTime.find("select[time-value='years']").val(feedToTime['years']);
		}
	}
}
function getTimeUrl () {
	var button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
	if (button.attr('handling') != "true") {
		button.attr('handling', 'true');
		function getValueFromDate () {
			var fromTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.fromTime");
			var valueDateHours = fromTime.find("[time-value='hours']").children("option:selected").val(),
				valueDateMinutes = fromTime.find("[time-value='minutes']").children("option:selected").val(),
				valueDateDays = fromTime.find("[time-value='days']").children("option:selected").val(),
				valueDateMonths = fromTime.find("[time-value='months']").children("option:selected").val(),
				valueDateYears = fromTime.find("[time-value='years']").children("option:selected").val();
			if ($.isNumeric(valueDateHours) && $.isNumeric(valueDateMinutes) && $.isNumeric(valueDateDays) && $.isNumeric(valueDateMonths) && $.isNumeric(valueDateYears)) {
				var valueDate = valueDateHours+":"+valueDateMinutes+" "+valueDateMonths+"/"+valueDateDays+"/"+valueDateYears;
				return valueDate;
			}else {
				return "0";
			}
		}
		function getValueToDate () {
			var toTime = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.toTime");
			var valueDateHours = toTime.find("[time-value='hours']").children("option:selected").val(),
				valueDateMinutes = toTime.find("[time-value='minutes']").children("option:selected").val(),
				valueDateDays = toTime.find("[time-value='days']").children("option:selected").val(),
				valueDateMonths = toTime.find("[time-value='months']").children("option:selected").val(),
				valueDateYears = toTime.find("[time-value='years']").children("option:selected").val();
			if ($.isNumeric(valueDateHours) && $.isNumeric(valueDateMinutes) && $.isNumeric(valueDateDays) && $.isNumeric(valueDateMonths) && $.isNumeric(valueDateYears)) {
				var valueDate = valueDateHours+":"+valueDateMinutes+" "+valueDateMonths+"/"+valueDateDays+"/"+valueDateYears;
				return valueDate;
			}else {
				return "0";
			}
		}
		var dateFrom = getValueFromDate(),
			dateTo = getValueToDate(),
			urlFeed = "<?php print  $_tool->links("feed/time"); ?>";
		if (dateFrom !== undefined && typeof dateFrom == "string" && dateFrom != "0") {
			var pushURL = new Date(dateFrom).getTime() / 1000;
			var urlFeed = urlFeed+"/"+pushURL;
			if (dateTo !== undefined && typeof dateTo == "string" && dateTo != "0") {
				var pushURL = new Date(dateTo).getTime() / 1000;
				var urlFeed = urlFeed+"-"+pushURL;
			}
			setTimeout(function(){
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
function actionGetUrl () {
	var button = $(".thisFeeds > .timecustom.inFeeds > .content > .rows.setButton");
	button.bind('click', function(){
		getTimeUrl();
	});
}
function toggleActionsetButton () {
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
	actionGetUrl();
	// toggleActionsetButton();
});