<!DOCTYPE html>
<html lang="<?php print $_language->using(); ?>" id="giccos">
	<head>
		<title>upload • image • giccos</title>
		<script src="<?php print $_tool->links("source/js/template/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="g-page">
			<?php require_once ("source/index/template/navbar.php"); ?>
			<div id="g-main">
				<div class="window" window-tab-local="image-upload" window-tab-disabled="false">
					<div class="content module-tab e-m clearfix">
						<div class="module-card extra">
							<div class="_card"><br></div>
						</div>
						<div class="module-card main">
							<div class="upload-tab clearfix _card">
								<div class="upload-title clearfix">
									<span class="text">Upload</span>
								</div>
								<div class="upload-content clearfix gird">
									<div class="content-tab input">
										<form data="image" enctype="multipart/form-data">
											<input class="input-content" input="image" name="file[]" type="file" accept="image/*" multiple>
										</form>
									</div>
									<div class="content-tab button clearfix">
										<div class="input-button upload"> <div class="icon"></div> <span class="text">upload image</span> </div>
										<div class="input-button takeshot"> <div class="icon"></div> <span class="text">take a shot</span> </div>
										<div class="input-button select"> <div class="icon"></div> <span class="text">select image</span> </div>
										<div class="input-button url"> <div class="icon"></div> <span class="text">add from web</span> </div>
									</div>
									<div class="content-tab display">
										<!--
										<div class="list clearfix">
											<div class="li card">
												<div class="thumbnail" style="background-image: url(http://localhost/giccos/photos/raw/static/user-avatar-small.jpg);"></div>
												<div class="wrapper">
													<div class="navbar top action clearfix">
														<div class="button remove _tt-we s" title="remove image (save on cache)"></div>
														<div class="button delete _tt-we s" title="delete image (delete from cache)"></div>
													</div>
													<div class="navbar bottom action clearfix">
														<div class="button info _tt-we s" title="view, change information"></div>
														<div class="button edit _tt-we s" title="edit image"></div>
														<div class="button tag _tt-we s" title="tag to image"></div>
													</div>
												</div>
											</div>
										</div>
										-->
										<div class="null">
											<div class="icon"></div>
											<span class="text">no image upload</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="include">
						<link href="<?php print $_tool->links("source/css/image.css"); ?>" rel="stylesheet">
						<script src="<?php print $_tool->links("source/js/image.js"); ?>" type="text/javascript"></script>
						<link href="<?php print $_tool->links("source/css/image.upload.css"); ?>" rel="stylesheet">
						<script src="<?php print $_tool->links("source/js/image.upload.js"); ?>" type="text/javascript"></script>
						<script type="text/javascript" cache="false">
						var image_upload_setup = function (c) {
							c = typeof c == 'number' ? c : 1;
							if (typeof image_upload_ready == 'function') {
								image_upload_ready();
							}else {
								if (c < 10) setTimeout(function () { image_upload_setup(c); }, 100);
							}
						};
						image_upload_setup();
						</script>
					</div>
				</div>
			</div>
			<?php require_once ("source/index/template/sidebar.php"); ?>
		</div>
		<div id="g-global"></div>
		<div id="g-source"></div>
	</body>
	<script type="text/javascript" document-script-config>
		var windowTabElem = (document.querySelectorAll("[window-tab-local='image-upload']")[0]);
		windowTabElem.setAttribute('window-tab-document', '<?php print json_encode(array("id" => "giccos", "lang" => $_language->using())); ?>')
		windowTabElem.setAttribute('window-tab-title', (document.querySelectorAll("title")[0]).textContent);
		windowTabElem.setAttribute('window-tab-url', (window.location.protocol + '//' + window.location.host + window.location.pathname));
		var documentScriptConfig = (document.querySelectorAll("[document-script-config]")[0]);
		documentScriptConfig.remove();
	</script>
</html>