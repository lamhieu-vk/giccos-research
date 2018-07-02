var editor_autosize = function () {
	var textarea = $("textarea.as");
	if (typeof autosize === "function") {
		autosize(textarea);
	}
};
var editor_photos = function () {
	var editor = $("#gEditor"),
	boxBody = editor.find(".rows.body"),
	tabImage = boxBody.find(".li.image"),
	imageContext = tabImage.children(".context"),
	imageContextScrapbook = imageContext.children(".scrapbook"),
	imageFile = tabImage.children(".file"),
	imageFileAction = imageFile.children(".action"),
	imageFileInput = imageFile.children(".input"),
	imageFilePreview = imageFile.children(".preview");
	// function.
	var imagePreviewAdd = function (file, preview) {
		getURLBlob(file, function (urlPreview) {
			preview.css({'background-image': 'url('+urlPreview+')'});
		});
	};
	var imageFileUpload = function (file) {
		var uploadRandkey = randomKeyString(13);
		imageFilePreview.children(".list").append("<div class='box uploading' upload-id='"+uploadRandkey+"'> <div class='wrap'></div> </div>");
		thisPreview = imageFilePreview.children(".list").find("[upload-id='"+uploadRandkey+"']");
		imagePreviewAdd(file, thisPreview);
		var data = new FormData();
		data.append('port', 'photos');
		data.append('token', '<?php print $g_client['token']['action']['photos']; ?>');
		data.append('type', 'cache');
		data.append('action', 'add');
		data.append('randkey[]', uploadRandkey);
		data.append('file[]', file);
		requestUploadOptions = {
			'type': 'POST',
			'url': '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			'data': data,
			'dataprocess': false,
			'datatype': 'json',
			'upload': {
				'progress': function (e) {
					var thisPreview = imageFilePreview.children(".list").find("[upload-id='"+uploadRandkey+"']");
					if (e.lengthComputable) {
						thisPreview.append("<div class='progress'> <div class='navbar'></div> </div>");
						percentComplete = e.loaded / e.total * 100;
						thisPreview.find(".progress > .navbar").css({'width': percentComplete + '%'});
						if (percentComplete >= 100) {
							thisPreview.children(".progress").addClass('complete');
							thisPreview.append("<div class='loader'> <div class='boxLoading spinner'> <div class='cube'></div> </div> </div>").children(".loader").hide(function () {
								thisPreview.children(".progress").fadeOut(function () {
									$(this).remove();
									thisPreview.children(".loader").fadeIn();
								});
							});
						}
					}else {
						thisPreview.append("<div class='loader'> <div class='boxLoading spinner'> <div class='cube'></div> </div> </div>").children(".loader").hide().fadeIn();
					}
				}
			},
			'done': function (data) {
				imageFileSetup(data);
			},
			'error': function () {

			}
		};
		requestUpload = _g['xhr'](requestUploadOptions);
		if (requestUpload) {
			delete requestUploadOptions;
			delete requestUpload;
		}
	};
	var imageFileSetup = function (object) {
		console.log(object);
	};
	//.
	var changeFileInputFunc = function () {
		imageInputPhotos = $(this);
		filePhotosList: for (i = 0; i < imageInputPhotos[0].files.length; i++) {
			imageFileUpload(imageInputPhotos[0].files[i]);
		};
		imageInputPhotos.replaceWith(imageInputPhotos.val('').clone(true));
	};
	imageFileInput.find("[file-input-image]").bind("change", changeFileInputFunc);
	var clickFileActionFunc = function () {
		imageFileInput.find("[file-input-image]").click();
	};
	imageFileAction.find("[file-action-upload]").bind('click', clickFileActionFunc);
};
var editor_audio = function () {
	var editor = $("#gEditor"),
	boxBody = editor.find(".rows.body"),
	tabAudio = boxBody.find(".li.audio"),
	audioContext = tabAudio.children(".context"),
	audioContextAlbum = audioContext.children(".album"),
	audioContextFile = audioContext.children(".file"),
	audioFile = tabAudio.children(".file"),
	audioFileAction = audioFile.children(".action"),
	audioFileInput = audioFile.children(".input"),
	audioFilePreview = audioFile.children(".preview");
	// function.
	var audioPreviewAdd = function (file, preview) {
		getURLBlob(file, function (urlPreview) {
			editor_audio_player({'type': file['type'], 'src': urlPreview});
		});
	};
	var audioFileUpload = function (file) {
		var uploadRandkey = randomKeyString(13);
		thisPreview = audioFilePreview.children(".player");
		thisPreview.attr('upload-id', uploadRandkey);
		thisProgress = audioFilePreview.children(".progress");
		thisProgress.html("<div class='navbar'></div>");
		audioPreviewAdd(file, thisPreview);
		audioContext.children(".file").find(".name > input").val(file['name']);
		var data = new FormData();
		data.append('port', 'music');
		data.append('token', '<?php print $g_client['token']['action']['music']; ?>');
		data.append('type', 'cache');
		data.append('action', 'add');
		data.append('randkey[]', uploadRandkey);
		data.append('file[]', file);
		requestUploadOptions = {
			'type': 'POST',
			'url': '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			'data': data,
			'dataprocess': false,
			'datatype': 'json',
			'upload': {
				'progress': function (e) {
					var thisProgress = audioFilePreview.children(".progress");
					if (e.lengthComputable) {
						percentComplete = e.loaded / e.total * 100;
						thisProgress.fadeIn().children(".navbar").css({'width': percentComplete + '%'});
						if (percentComplete >= 100) {
							thisProgress.addClass('complete');
							thisProgress.children(".navbar").addClass('boxLoading buffering').css({'height': '3px', 'width': percentComplete + '%'}).removeClass('navbar');
						}
					}else {
						console.log('progress undefined');
						thisProgress.fadeIn().addClass('undefined').children(".navbar").addClass('boxLoading buffering').css({'height': '3px', 'width': '100%'}).removeClass('navbar');
					}
				}
			},
			'done': function (data) {
				audioFileSetup(data);
			},
			'error': function () {

			}
		};
		requestUpload = _g['xhr'](requestUploadOptions);
		if (requestUpload) {
			delete requestUploadOptions;
			delete requestUpload;
		}
	};
	var audioFileSetup = function (object) {
		console.log(object);
	};
	//.
	var changeFileInputFunc = function () {
		audioInputAudio = $(this);
		fileAudioList: for (i = 0; i < audioInputAudio[0].files.length; i++) {
			audioFileUpload(audioInputAudio[0].files[i]);
			break fileAudioList;
		};
		audioInputAudio.replaceWith(audioInputAudio.val('').clone(true));
	};
	audioFileInput.find("[file-input-audio]").bind("change", changeFileInputFunc);
	var clickFileActionFunc = function () {
		audioFileInput.find("[file-input-audio]").click();
	};
	audioFileAction.find("[file-action-upload]").bind('click', clickFileActionFunc);
};
var editor_audio_player = function (object) {
	if (!isset(object) || !isset(object['type']) || !isset(object['src'])) {
		return false;
	}
	editor = $("#gEditor"),
	boxBody = editor.find(".rows.body"),
	tabAudio = boxBody.find(".li.audio"),
	playerElem = tabAudio.find(".file > .preview > .player"),
	playerId = randomKeyString(8);
	if (playerElem.find(".content").length > 0) {
		playerElem.find(".content").fadeOut(function () {
			$(this).remove();
		});
	}
	playerElem.append("<div class='content'> <audio id='"+playerId+"' class='xx'></audio> </div>");
	audioPlayerOptions = {
		'height': '100%',
		'width': '100%',
		'src': {'type': object['type'], 'src': object['src']},
		'controls': true,
		'autoplay': false,
		'preload': 'auto',
		'plugins': {
			'loop': {
				'active': true
			},
			'progresstips': {
				'active': true
			}
		}
	};
	_g['player'].use(playerId, audioPlayerOptions, function (audioPlayer) {
		if (new RegExp(/^(blob\:)/).test(object['src'])) {
			audioPlayer.ready(function () {
				audioPlayer.src({'type': object['type'], 'src': object['src']});
				audioPlayer.load();
			});
		}
	});
	return true;
};
var editor_video = function () {
	var editor = $("#gEditor"),
	boxBody = editor.find(".rows.body"),
	tabVideo = boxBody.find(".li.video"),
	videoContext = tabVideo.children(".context"),
	videoContextPlaylist = videoContext.children(".playlist"),
	videoContextFile = videoContext.children(".file"),
	videoFile = tabVideo.children(".file"),
	videoFileAction = videoFile.children(".action"),
	videoFileInput = videoFile.children(".input"),
	videoFilePreview = videoFile.children(".preview");
	// function.
	var videoPreviewAdd = function (file, preview) {
		getURLBlob(file, function (urlPreview) {
			editor_video_player({'type': file['type'], 'src': urlPreview});
		});
	};
	var videoFileUpload = function (file) {
		var uploadRandkey = randomKeyString(13);
		thisPreview = videoFilePreview.children(".player");
		thisPreview.attr('upload-id', uploadRandkey);
		thisProgress = videoFilePreview.children(".progress");
		thisProgress.html("<div class='navbar'></div>");
		videoPreviewAdd(file, thisPreview);
		videoContext.children(".file").find(".name > input").val(file['name']);
		var data = new FormData();
		data.append('port', 'videos');
		data.append('token', '<?php print $g_client['token']['action']['videos']; ?>');
		data.append('type', 'cache');
		data.append('action', 'add');
		data.append('randkey[]', uploadRandkey);
		data.append('file[]', file);
		requestUploadOptions = {
			'type': 'POST',
			'url': '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			'data': data,
			'dataprocess': false,
			'datatype': 'json',
			'upload': {
				'progress': function (e) {
					var thisProgress = videoFilePreview.children(".progress");
					if (e.lengthComputable) {
						percentComplete = e.loaded / e.total * 100;
						thisProgress.fadeIn().children(".navbar").css({'width': percentComplete + '%'});
						if (percentComplete >= 100) {
							thisProgress.addClass('complete');
							thisProgress.children(".navbar").addClass('boxLoading buffering').css({'height': '3px', 'width': percentComplete + '%'}).removeClass('navbar');
						}
					}else {
						console.log('progress undefined');
						thisProgress.fadeIn().addClass('undefined').children(".navbar").addClass('boxLoading buffering').css({'height': '3px', 'width': '100%'}).removeClass('navbar');
					}
				}
			},
			'done': function (data) {
				videoFileSetup(data);
			},
			'error': function () {

			}
		};
		requestUpload = _g['xhr'](requestUploadOptions);
		if (requestUpload) {
			delete requestUploadOptions;
			delete requestUpload;
		}
	};
	var videoFileSetup = function (object) {
		console.log(object);
	};
	//.
	var changeFileInputFunc = function () {
		videoInputVideo = $(this);
		fileVideoList: for (i = 0; i < videoInputVideo[0].files.length; i++) {
			videoFileUpload(videoInputVideo[0].files[i]);
			break fileVideoList;
		};
		videoInputVideo.replaceWith(videoInputVideo.val('').clone(true));
	};
	videoFileInput.find("[file-input-video]").bind("change", changeFileInputFunc);
	var clickFileActionFunc = function () {
		videoFileInput.find("[file-input-video]").click();
	};
	videoFileAction.find("[file-action-upload]").bind('click', clickFileActionFunc);
};
var editor_video_player = function (object) {
	if (!isset(object) || !isset(object['type']) || !isset(object['src'])) {
		return false;
	}
	editor = $("#gEditor"),
	boxBody = editor.find(".rows.body"),
	tabVideo = boxBody.find(".li.video"),
	playerElem = tabVideo.find(".file > .preview > .player"),
	playerId = randomKeyString(8);
	if (playerElem.find(".content").length > 0) {
		playerElem.find(".content").fadeOut(function () {
			$(this).remove();
		});
	}
	playerElem.append("<div class='content'> <video id='"+playerId+"' class='xx'></video> </div>");
	videoPlayerOptions = {
		'height': '100%',
		'width': '100%',
		'src': {'type': object['type'], 'src': object['src']},
		'controls': true,
		'autoplay': false,
		'preload': 'auto',
		'plugins': {
			'loop': {
				'active': true
			},
			'progresstips': {
				'active': true
			}
		}
	};
	_g['player'].use(playerId, videoPlayerOptions, function (videoPlayer) {
		if (new RegExp(/^(blob\:)/).test(object['src'])) {
			videoPlayer.ready(function () {
				videoPlayer.src({'type': object['type'], 'src': object['src']});
				videoPlayer.load();
			});
		}
	});
	return true;
};
var editor_ready = function () {
	editor_autosize();
	editor_photos();
	editor_audio();
	editor_video();
};
//. 
$(document).ready(editor_ready);