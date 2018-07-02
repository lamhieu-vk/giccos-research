<div id="gEditor" class="boxGrid">
	<div class="title tab"> <span><?php print $_language->text('editor', 'ucwords'); ?></span> </div>
	<div class="content tab">
		<div class="header rows">
			<div class="text li"> <span><?php print $_language->text('text', 'ucwords'); ?></span> </div>
			<div class="image li active"> <span><?php print $_language->text('image', 'ucwords'); ?></span> </div>
			<div class="music li"> <span><?php print $_language->text('music', 'ucwords'); ?></span> </div>
			<div class="videos li"> <span><?php print $_language->text('videos', 'ucwords'); ?></span> </div>
			<div class="cited li"> <span><?php print $_language->text('cited', 'ucwords'); ?></span> </div>
			<div class="event li"> <span><?php print $_language->text('event', 'ucwords'); ?></span> </div>
		</div>
		<div class="body rows">
			<div class="text li brinput">
				<textarea class="is_oe as" type="text" placeholder="what do you thinking ?"></textarea>
				<div class="subborder"></div>
			</div>
			<!--
			<div class="image li">
				<div class="context">
					<div class="scrapbook">
						<div class="title subnav"> <span><?php print $_language->text('scrapbook', 'ucwords') ?></span> </div>
						<div class="name brinput"> <input class="is_oe" type="text" placeholder="name"> </div>
						<div class="description brinput"> <textarea class="is_oe as" type="text" placeholder="description"></textarea> </div>
					</div>
				</div>
				<div class="file">
					<div class="input">
						<form data="image" enctype="multipart/form-data" form>
							<input file-input-image input="image" name="file[]" type="file" accept="image/*" multiple>
						</form>
					</div>
					<div class="action">
						<div class="upload button" file-action-upload> <div class="icon"></div> </div>
						<div class="select button" file-action-select> <div class="icon"></div> </div>
						<div class="search button" file-action-search> <div class="icon"></div> </div>
						<div class="delete button" file-action-delelte> <div class="icon"></div> </div>
					</div>
					<div class="preview">
						<div class="list">
							
							<div class="box" style="background-image: url(https://yt3.ggpht.com/-5ObDI6rzmH4/AAAAAAAAAAI/AAAAAAAAAAA/fdnxB0NJBQk/s88-c-k-no/photo.jpg);">
								<div class="wrap inside"></div>
								<div class="action inside">
									<div class="button info"> <div class="icon _tt-bk s" title="edit information"></div> </div>
									<div class="button edit"> <div class="icon _tt-bk s" title="edit image"></div> </div>
									<div class="button options"> <div class="icon _tt-bk s" title="options"></div> </div>
									<div class="button remove"> <div class="icon _tt-bk s" title="remove from list"></div> </div>
									<div class="button delete"> <div class="icon _tt-bk s" title="delete image"></div> </div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			-->
			<!--
			<div class="audio li">
				<div class="context">
					<div class="album">
						<div class="title subnav"> <span><?php print $_language->text('album', 'ucwords') ?></span> </div>
						<div class="name brinput"> <input class="is_oe" type="text" placeholder="name"> </div>
						<div class="description brinput"> <textarea class="is_oe as" type="text" placeholder="description"></textarea> </div>
					</div>
					<div class="file">
						<div class="subborder"></div>
						<div class="title subnav"> <span><?php print $_language->text('audio', 'ucwords') ?></span> </div>
						<div class="name brinput"> <input class="is_oe" type="text" placeholder="name"> </div>
						<div class="tag brinput"> <input class="is_oe" type="text" placeholder="tag"> </div>
						<div class="location brinput"> <input class="is_oe" type="text" placeholder="location"> </div>
						<div class="description brinput"> <textarea class="is_oe as" type="text" placeholder="description"></textarea> </div>
					</div>
				</div>
				<div class="file">
					<div class="input">
						<form data="audio" enctype="multipart/form-data" form>
							<input file-input-audio input="audio" name="file[]" type="file" accept="audio/*" multiple>
						</form>
					</div>
					<div class="action">
						<div class="upload button" file-action-upload> <div class="icon"></div> </div>
						<div class="select button" file-action-select> <div class="icon"></div> </div>
						<div class="search button" file-action-search> <div class="icon"></div> </div>
						<div class="delete button" file-action-delete> <div class="icon"></div> </div>
					</div>
					<div class="preview">
						<div class="progress"> <div class="navbar"></div> </div>
						<div class="cover">
							<div class="action">
								<div class="button upload"s> <div class="icon"></div> </div>
							</div>
						</div>
						<div class="player">
							<div class="wrap"> <div class="text">music player</div> </div>
						</div>
					</div>
				</div>
			</div>
			-->
			<!--
			<div class="video li">
				<div class="context">
					<div class="album">
						<div class="title subnav"> <span><?php print $_language->text('playlist', 'ucwords') ?></span> </div>
						<div class="name brinput"> <input class="is_oe" type="text" placeholder="name"> </div>
						<div class="description brinput"> <textarea class="is_oe as" type="text" placeholder="description"></textarea> </div>
					</div>
					<div class="file">
						<div class="subborder"></div>
						<div class="title subnav"> <span><?php print $_language->text('video', 'ucwords') ?></span> </div>
						<div class="name brinput"> <input class="is_oe" type="text" placeholder="name"> </div>
						<div class="tag brinput"> <input class="is_oe" type="text" placeholder="tag"> </div>
						<div class="location brinput"> <input class="is_oe" type="text" placeholder="location"> </div>
						<div class="description brinput"> <textarea class="is_oe as" type="text" placeholder="description"></textarea> </div>
					</div>
				</div>
				<div class="file">
					<div class="input">
						<form data="video" enctype="multipart/form-data" form>
							<input file-input-video input="video" name="file[]" type="file" accept="video/*" multiple>
						</form>
					</div>
					<div class="action">
						<div class="upload button" file-action-upload> <div class="icon"></div> </div>
						<div class="select button" file-action-select> <div class="icon"></div> </div>
						<div class="search button" file-action-search> <div class="icon"></div> </div>
						<div class="delete button" file-action-delete> <div class="icon"></div> </div>
					</div>
					<div class="preview">
						<div class="progress"> <div class="navbar"></div> </div>
						<div class="player">
							<div class="wrap"> <div class="text">video player</div> </div>
						</div>
					</div>
				</div>
			</div>
			-->
		</div>
		<div class="footer rows"></div>
	</div>
	<div class="source tab">
		<link href="<?php print $_tool->links('source/css/templates/editor.css'); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/templates/editor.js"); ?>" type="text/javascript"></script>
	</div>
</div>