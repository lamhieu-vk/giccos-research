var image_upload_action = function () {
	var uploadTab = $(".upload-tab"),
		uploadContent = uploadTab.children(".upload-content"),
		tabInput = uploadContent.children(".content-tab.input"),
		tabButton = uploadContent.children(".content-tab.button"),
		tabDisplay = uploadContent.children(".content-tab.display");
	var fnImageListUse = function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (tabDisplay.children(".null").length > 0) {
			tabDisplay.children(".null").fadeOut();
		}
		if (tabDisplay.children(".list").length === 0) {
			tabDisplay.append("<div class='list clearfix'></div>");
			tabDisplay.children(".list").hide(750, function () {
				$(this).fadeIn(callback);
			});
		}else {
			callback();
		}
	};
	var fnImageListAppend = function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_selector.count(tabDisplay.find(".list > .li")) === 0) {
			if (_selector.count(tabDisplay.children(".list")) === 0) {
				//.
			}else {
				tabDisplay.children(".list").remove();
			}
		}
		if (_selector.count(tabDisplay.children(".null")) === 0) {
			tabDisplay.append("<div class='null'> <div class='icon'></div> <span class='text'>no image upload</span> </div>");
		}
		if (_selector.count(tabDisplay.find(".list > .li")) === 0) {
			tabDisplay.children(".null").stop(true, true).hide().fadeIn(callback);
		}else {
			callback();
		}
	};
	var fnImageError = function (card, file) {
		var card = typeof card === 'object' ? card : null,
			file = typeof file === 'object' ? file : null,
			callback = _is.function(callback) ? callback : function () {};
		if (card === null || file === null) {
			return false;
		}
		_notification.add({
			type: "image",
			title: {
				text: "Image is error"
			},
			content: "Image has error, please try again. <br> Error: xxx.",
			timeout: 4000,
			close: true
		});
		var imagePreviewCard = card;
		imagePreviewCard.addClass('error');
		imagePreviewCard.children(".progress").fadeOut(function () {
			$(this).remove();
		});
		if (imagePreviewCard.children(".wrapper").length === 0) {
			imagePreviewCard.html("<div class='wrapper'></div>");
		}else {
			imagePreviewCard.children(".wrapper").html('');
		}
		imagePreviewCard.children(".wrapper").html("<div class='navbar topright action clearfix'> <div class='button refresh _tt-we s' title='try upload file again'></div> <div class='button delete _tt-we s' title='remove card'></div>");
		imagePreviewCard.children(".wrapper").find(".refresh").bind('click', function () {
			$(this).mouseout();
			imagePreviewCard.remove();
			fnImageUpload(file);
			_notification.add({
				type: "image",
				title: {
					text: "Image is trying upload again"
				},
				content: "Image is trying upload again this file, please wait. <br> Error: xxx.",
				timeout: 3000,
				close: true
			});
		});
		imagePreviewCard.children(".wrapper").find(".button.delete").bind('click', function () {
			$(this).mouseout();
			imagePreviewCard.stop(true, true).slideUp(750, function(){
				imagePreviewCard.remove();
				fnImageListAppend();
			});
		});
		// setupTooltip();
	};
	var fnImagePush = function (card, object, callback) {
		var object = typeof object == 'object' ? object : {};
		var callback = _is.function(callback) ? callback : function () {};
		fnImageListUse();
		//.
		var imagePreviewCard = card;
		imagePreviewCard.html("<div class='thumbnail'></div>").children(".thumbnail").css({'background-image': 'url('+object['file']['thumbnail']['url']+')'});
		imagePreviewCard.append("<div class='wrapper'> <div class='navbar topleft action clearfix'> <div class='button post _tt-we s' title='post image'></div> </div> <div class='navbar topright action clearfix'> <div class='button remove _tt-we s' title='remove image (saved on cache)'></div> <div class='button delete _tt-we s' title='delete image (delete from cache)'></div> </div> <div class='navbar bottomleft action clearfix'> <div class='button info _tt-we s' title='view, change information'></div> <div class='button edit _tt-we s' title='edit image'></div> <div class='button tag _tt-we s' title='tag image'></div> </div> </div>");
		imagePreviewCard.fadeOut(250).fadeIn(500);
		var imagePreviewFileid = _is.exists(object['id']) ? object['id'] : "";
		var imagePreviewFilename = _is.exists(object['nameraw']) ? object['nameraw'] : "";
		var imagePreviewFilesize = _is.exists(object['size']) ? _g.tool.parse.bytes(object['size']) : "undefined";
		var imagePreviewFiledisplay = _is.exists(object['display']) ? object['display'] : "";
		var imagePreviewFilemime = _is.exists(object['mime']) ? object['mime'] : "";
		var imagePreviewFileext = _is.exists(object['ext']) ? object['ext'] : "";
		var imagePreviewFileobj = _is.exists(object['file']) ? object['file'] : {};
		var imagePreviewEditUrl = '<?php print $_tool->links('image/edit/'); ?>' + imagePreviewFiledisplay;
		imagePreviewCard.attr('image-display', imagePreviewFiledisplay).attr('image-mime', imagePreviewFilemime).attr('image-ext', imagePreviewFileext).attr('image-edit-url', imagePreviewEditUrl).removeAttr('preview-key');
		for (fileType in imagePreviewFileobj) {
			if (_is.array(imagePreviewFileobj[fileType])) {
				for (fileChild in imagePreviewFileobj[fileType]) {
					if (_is.array(imagePreviewFileobj[fileType][fileChild])) {
						imagePreviewCard.attr('image-file-'+fileType+'-'+fileChild, JSON.stringify(imagePreviewFileobj[fileType][fileChild]));
					}else {
						imagePreviewCard.attr('image-file-'+fileType+'-'+fileChild, imagePreviewFileobj[fileType][fileChild]);
					}
				}
			}
		}
		imagePreviewThumbnailUrl = _is.exists(imagePreviewFileobj['thumbnail']) && _is.exists(imagePreviewFileobj['thumbnail']['url']) ? imagePreviewFileobj['thumbnail']['url'] : "";
		imagePreviewCard.children(".thumbnail").css({'background-image': 'url('+imagePreviewThumbnailUrl+')'});
		imagePreviewCard.children(".wrapper").find(".button[title]").each(function () {
			_g.tooltip.set($(this), {
				arrow: "s",
				action: "hover",
				content: $(this).attr('title')
			});
		});
		imagePreviewCard.children(".wrapper").find(".button.post").bind('click', function () {
			$(this).mouseout();
			//.
			var notifyOptions = {
				type: "image",
				title: {
					text: "image has posting"
				},
				content: "Image has posting, please wait. <br> <b>"+imagePreviewFilename+"</b>",
				timeout: 4000,
				close: true
			};
			if (_is.string(imagePreviewCard.attr('image-file-thumbnail-url'))) {
				notifyOptions['classname'] = "image-upload-preview";
				notifyOptions['content'] = "Image has posting. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>-</span></div> </div> </div>";
			}
			_notification.add(notifyOptions, function (notificationTab) {
				var imagePostOptions = {'label': null, 'value': null};
				if (_is.exists(imagePreviewFileid)) {
					imagePostOptions['label'] = "id";
					imagePostOptions['value'] = imagePreviewFileid;
				}else if (_is.exists(object, object['display'])) {
					imagePostOptions['label'] = "display";
					imagePostOptions['value'] = imagePreviewFiledisplay;
				}else {
					return;
				}
				_image.post(imagePostOptions, function (returnObj) {
					_notification.close(notificationTab);
					if (_is.exists(returnObj, returnObj['return'], returnObj['exists']) && returnObj['return']) {
						var notifyOptions = {
							classname: "image-upload-preview",
							type: "image",
							title: {
								text: "image posted"
							},
							content: null,
							timeout: 3000,
							close: true
						};
						if (!returnObj['exists']) {
							notifyOptions['content'] = "Image not existed, can not post it. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>image not existed</span></div> </div> </div>";
						}else {
							notifyOptions['content'] = "Image posted, it's ready. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>image posted</span></div> </div> </div>";
						}
						_notification.add(notifyOptions);
						$(this).mouseout();
						imagePreviewCard.stop(true, true).slideUp(750, function () {
							imagePreviewCard.remove();
							fnImageListAppend();
						});
					}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
						_notification.add({
							classname: "image-upload-preview",
							type: "image",
							title: {
								text: "image has posting error"
							},
							content:  "Image unposted, errors while posting. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>image unposted</span></div> </div> </div>",
							timeout: 3000,
							close: true
						});
					}else {
						_notification.add({
							classname: "image-upload-preview",
							type: "image",
							title: {
								text: "image has posting error"
							},
							content:  "Image unposted, errors while posting. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>image unposted</span></div> </div> </div>",
							timeout: 3000,
							close: true
						});
					}
				});
			});
		});
		imagePreviewCard.children(".wrapper").find(".button.delete").bind('click', function () {
			$(this).mouseout();
			//.
			var notifyOptions = {
				type: "image",
				title: {
					text: "image has deleting"
				},
				content: "Image has deleting. <br> <b>"+imagePreviewFilename+"</b>",
				timeout: 4000,
				close: true
			};
			if (_is.string(imagePreviewCard.attr('image-file-thumbnail-url'))) {
				notifyOptions['classname'] = "image-upload-preview";
				notifyOptions['content'] = "Image has deleting. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>deleted from cache</span></div> </div> </div>";
			}
			_notification.add(notifyOptions);
		});
		imagePreviewCard.children(".wrapper").find(".button.remove").bind('click', function () {
			$(this).mouseout();
			imagePreviewCard.stop(true, true).slideUp(250, function () {
				imagePreviewCard.remove();
				fnImageListAppend();
			});
			var notifyOptions = {
				type: "image",
				title: {
					text: "image has removed"
				},
				content: "Image has removed and been saved on cache. <br> File: "+imagePreviewFilename+"",
				timeout: 4000,
				close: true
			};
			if (_is.string(imagePreviewCard.attr('image-file-thumbnail-url'))) {
				notifyOptions['classname'] = "image-upload-preview";
				notifyOptions['content'] = "Image has removed and been saved on cache. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+imagePreviewCard.attr('image-file-thumbnail-url')+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row description'><span class='text'>saved on cache</span></div> </div> </div>";
			}
			_notification.add(notifyOptions);
		});
		imagePreviewCard.children(".wrapper").find(".button.edit").bind('click', function () {
			$(this).mouseout();
			//. window.open(imagePreviewEditUrl, '_blank');
		});
		imagePreviewCard.children(".wrapper").find(".button.info, .button.information").bind('click', function () {
			$(this).mouseout();
			_image.infoeditor({'label': 'display', 'value': imagePreviewFiledisplay}, function () {
				//.
			});
		});
		var notifyOptions = {
			classname: "image-upload-preview",
			type: "image",
			title: {
				text: "image has uploaded successfully"
			},
			content: null,
			timeout: 4000,
			close: true
		};
		if (_is.exists(object['file'], object['file']['thumbnail'], object['file']['thumbnail']['url'])) {
			notifyOptions['content'] = "Image has uploaded successfully, it's ready. <br> <div class='preview'> <div class='thumbnail'> <div class='img' style='background-image: url("+object['file']['thumbnail']['url']+");'></div> </div> <div class='context'> <div class='row filename'><span class='text'>"+imagePreviewFilename+"</span></div> <div class='row filesize'><span class='text'>size: "+imagePreviewFilesize+"</span></div> </div> </div>";
		}else {
			notifyOptions['content'] = "Image has uploaded successfully, it's ready. <br><b>"+imagePreviewFilename+"</b> | size: "+imagePreviewFilesize+".";
		}
		_notification.add(notifyOptions, function (notificationTab) {
			imagePreviewCard.bind('mouseover', function () {
				_notification.close(notificationTab);
			});
		});
		// setupTooltip();
	};
	var fnImageUpload = function (files, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var fnImageAppendPreview = function (card, file) {
			_image.upload(file, function (returnObj) {
				console.log(returnObj);
				if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['data']) && returnObj['return']) {
					fnImagePush(card, returnObj['data'][0]['data']);
				}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
					fnImageError(card, file);
				}
			}, {
				'progress': function (e) {
					if (e.lengthComputable) {
						var percentCompleted = e.loaded / e.total * 100;
						card.children(".progress").find(".loaded").addClass('uploading').width(percentCompleted + '%');
						if (percentCompleted >= 100) {
							card.children(".progress").find(".loaded").removeClass('uploading').addClass('progressing');
							/*
							_notification.add({
								type: "image",
								title: {
									text: "image is being processed"
								},
								content: "Image has uploaded, it's beging processed. <br> File: "+file['name']+" | size: "+_g.tool.parse.bytes(file['size'])+".",
								timeout: 3000,
								close: true
							}, function (notificationTab) {
								card.bind('mouseover', function () {
									_notification.close(notificationTab);
								});
							});
							*/
						}
					}else {
						card.children(".progress").find(".loaded").removeClass('uploading').addClass('progressing');
					}
				}
			});
		};
		if (_is.exists(files[0])) {
			for (var i in files) {
				fnImageAppendPreview(fnImageAppend(files[i]), files[i]);
			}
		}else {
			fnImageAppendPreview(fnImageAppend(files), files);
		}
		callback();
	};
	var fnImageAppend = function (file, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var imagePreviewKey = _string.random(10);
		fnImageListUse();
		if (tabDisplay.children(".list").children(".li.card").length === 0) {
			tabDisplay.children(".list").append("<div class='li card' preview-key='"+imagePreviewKey+"'></div>");
		}else {
			tabDisplay.children(".list").children(".li.card").first().before("<div class='li card' preview-key='"+imagePreviewKey+"'></div>");
		}
		var imagePreviewCard = tabDisplay.children(".list").children(".li.card[preview-key='"+imagePreviewKey+"']");
		if (_is.exists(file)) {
			console.log(file);
			_blob.geturl(file, function (imagePreviewBlob) {
				if (imagePreviewCard.children(".thumbnail").length === 0) {
					imagePreviewCard.append("<div class='thumbnail'></div>");
				}
				imagePreviewCard.children(".thumbnail").css({'background-image': 'url('+imagePreviewBlob+')'});
			});
		}else {
			if (imagePreviewCard.children(".thumbnail").length === 0) {
				imagePreviewCard.append("<div class='thumbnail'></div>");
			}
		}
		if (imagePreviewCard.children(".wrapper").length === 0) {
			imagePreviewCard.append("<div class='wrapper'></div>");
		}
		if (imagePreviewCard.children(".progress").length === 0) {
			imagePreviewCard.append("<div class='progress'> <div class='nav'> <div class='loaded'></div> </div> </div>");
		}
		imagePreviewCard.stop(true, true).hide().slideDown(500);
		callback(imagePreviewCard);
		return imagePreviewCard;
	};
	var fnImageDownload = function (url, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (!_is.string(url)) {
			callback({'return': false, 'reason': ''});
		}else if (!new RegExp(<?php print $_parameter->get('regex_sites_giccos_domain'); ?>).test(url)) {
			callback({'return': false, 'reason': ''});
		}
		var imageDownloadAction = _xhr.use({
			'type': 'GET',
			'url': url,
			'data': null,
			'datatype': 'blob',
			'done': function (data) {
				if (_is.exists(data) && _is.exists(data['size']) && _is.exists(data['type'])) {
					if (data['size'] > 0 && _is.string(data['type'])) {
						callback({'return': true, 'data': data});
					}else {
						callback({'return': false, 'reason': ''});
					}
				}else {
					callback({'return': false, 'reason': ''});
				}
			},
			'error': function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (imageDownloadAction) {
			var imageDownloadAction = undefined;
		}
	};
	var fnImageFromURL = function (url, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (!_is.string(url)) {
			callback({'return': false, 'reason': ''});
		}else if (!new RegExp(<?php print $_parameter->get('regex_url_image'); ?>).test(url)) {
			callback({'return': false, 'reason': ''});
		}
		var data = {
			'port': 'image',
			'type': 'otherraw',
			'action': 'get',
			'url': url
		};
		var imageCloneAction = _g.xhr.use({
			'type': 'POST',
			'url': '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			// 'cache': true,
			'data': data,
			'datatype': 'json',
			'done': function (data) {
				if (_is.exists(data) && _is.exists(data['return']) && _is.exists(data['data']) && data['return'] === true) {
					callback({'return': true, 'data': data['data']});
				}else if (_is.exists(data) && _is.exists(data['return']) && _is.exists(data['reason']) && data['return'] === false) {
					callback({'return': false, 'reason': data['reason']});
				}else {
					callback({'return': false, 'reason': ''});
				}
			},
			'error': function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (imageCloneAction) {
			var imageCloneAction = undefined;
			var data = undefined;
		}
	};
	var fnImageUrlCheck = function (url) {
		if (!_is.string(url)) {
			return false;
		}
		return (new RegExp(<?php print $_parameter->get('regex_url_image'); ?>).test(url));
	};
	var fnImageUrlUpload = function (url) {
		if (!_is.string(url) || !new RegExp(<?php print $_parameter->get('regex_url_image'); ?>).test(url)) {
			return false;
		}
		var fnNotifyDownload = function (url, source) {
			_notification.add({
				type: "image",
				title: {
					text: "Image is copying"
				},
				content: "Image will get downloading and copy, please wait. <br> Link of image: <a href='#' target='_blank'> "+url+" </a>",
				timeout: 5000,
				close: true
			}, function (notificationTab) {
				fnImageDownload(url, function (returnObj) {
					_notification.close(notificationTab);
					if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['data']) && returnObj['return']) {
						if (new RegExp(<?php print $_parameter->get('regex_url_giccos_image_other'); ?>).test(url)) {
							imageFileName = ("undefined").toString();
						}else {
							imageFileName = (source.match(<?php print $_parameter->get('regex_url_image'); ?>)[16]).toString();
						}
						fnImageUpload([_blob.tofile(returnObj['data'], imageFileName)], function () {
							_notification.add({
								type: "image",
								title: {
									text: "Image is ready"
								},
								content: "Image has been downloaded and is ready for upload.",
								timeout: 3000,
								close: true
							});
						});
					}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
						//.
					}else {
						//.
					}
				});
			});
		};
		if (new RegExp(<?php print $_parameter->get('regex_url_giccos_image_other'); ?>).test(url)) {
			fnNotifyDownload(url, url);
		}else {
			fnImageFromURL(url, function (returnObj) {
				if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['data']) && returnObj['return']) {
					if (_is.exists(returnObj['data']['destination']) && _is.string(returnObj['data']['destination'])) {
						fnNotifyDownload(returnObj['data']['destination'], url);
					}
				}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
					//.
				}else {
					//.
				}
			});
		}
	};
	tabInput.find(".input-content").bind('change', function () {
		var inputFileElem = $(this);
		for (i = 0; i < _selector.count(inputFileElem.get(0)['files']); i++) {
			fnImageUpload([inputFileElem.get(0)['files'][i]]);
		}
		inputFileElem.replaceWith(inputFileElem.val('').clone(true));
	});
	tabButton.children(".input-button.upload").bind('click', function () {
		tabInput.find(".input-content").click();
	});
	tabButton.children(".input-button.url").bind('click', function () {
		_g.popup.add({
			classname: "image-upload-input-url",
			title: "create a image clone",
			content: "<div class='input'> <div><label>type link image</label></div> <div><input input-image-url type='text' placeholder='link of image'></div> </div>",
			note: "performed by giccos",
			close: true
		}, function (popupElem) {
			var inputImageUrl = popupElem.find(".main input[input-image-url]");
			inputImageUrl.bind('keyup', function () {
				imageUrl = inputImageUrl.val();
				if (!fnImageUrlCheck(imageUrl)) {
					//.
				}else {
					inputImageUrl.attr('disabled', '');
					_g.popup.close(popupElem);
					fnImageUrlUpload(imageUrl);
				}
			}, 250);
			inputImageUrl.bind('keyup', function (e) {
				keycode = (e.keyCode ? e.keyCode : e.which);
				if (keycode == 13) {
					imageUrl = inputImageUrl.val();
					if (!fnImageUrlCheck(imageUrl)) {
						//.
					}else {
						inputImageUrl.attr('disabled', '');
						_g.popup.close(popupElem);
						fnImageUrlUpload(imageUrl);
					}
				}
			}, 10);
			inputImageUrl.focus();
		});
	});
	tabButton.children(".input-button.select").bind('click', function () {
		_image.listchoose.open({
			'row': ['cache'],
			'default': 'cache',
			'limit': 50,
			'order': 'desc'
		}, function (listchooseElem) {
			var boxPreviewSelected = [];
			_selector.each(tabDisplay.children(".list").children(".li[image-display]"), function (boxPreviewElem) {
				var boxPreviewElem = $(boxPreviewElem);
				boxPreviewSelected[_array.count(boxPreviewSelected)] = boxPreviewElem.attr('image-display');
			});
			_image.listchoose.bind(listchooseElem, 'each', function (boxPreviewElem) {
				var boxPreviewElem = $(boxPreviewElem);
				if (_array.exists(boxPreviewElem.attr('box-preview-display'), boxPreviewSelected)) {
					boxPreviewElem.addClass('selected');
				}
			}, null, true);
			_image.listchoose.bind(listchooseElem, 'choose', function (returnObj, boxPreviewElem) {
				boxPreviewElem.addClass('selected');
				fnImagePush(fnImageAppend(), returnObj);
			}, null, true);
		}, null, true);
	});
	tabButton.children(".input-button").bind('click', function (e) {
		var tabButtonInput = $(this);
		if (_is.exists(tabButtonInput.attr('input-button-handling'))) {
			_document.eventstop(e);
			return false;
		}else {
			tabButtonInput.attr('input-button-handling', 'true');
			setTimeout(function () {
				tabButtonInput.removeAttr('input-button-handling');
			}, 100);
		}
	});
};
var image_upload_ready = function () {
	image_upload_action();
};