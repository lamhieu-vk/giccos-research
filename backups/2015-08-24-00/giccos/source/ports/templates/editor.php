<div id="gEditor" class="boxGrid" editor="<?php if (isset($editor_['options'])) print json_encode($editor_['options']); else print null; ?>" type="status">
	<div class="title">
		<div class="list">
			<div class="rows active" type="status"><span><?php print $_language->text('status', 'ucfirst'); ?></span></div>
			<div class="rows" type="photos"><span><?php print $_language->text('photos', 'ucfirst'); ?></span></div>
			<div class="rows" type="music"><span><?php print $_language->text('music', 'ucfirst'); ?></span></div>
			<div class="rows" type="videos"><span><?php print $_language->text('videos', 'ucfirst'); ?></span></div>
			<div class="rows" type="cited"><span><?php print $_language->text('cited', 'ucfirst'); ?></span></div>
			<div class="rows" type="post"><span><?php print $_language->text('post', 'ucfirst'); ?></span></div>
		</div>
		<div class="arrow" arrow="status"></div>
	</div>
	<div class="box">
		<div class="process" process><div class="navProcess-buffering"></div></div>
		<div class="body" content>
			<div class="type" status>
				<textarea class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('what_are_you_thinking', 'ucfirst'); ?>" input></textarea>
			</div>
			<div class="input photos" input classify="photos" show="false">
				<div class="form" info scrapbook photos get="false">
					<div class="type" name>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('scrapbook_name', 'ucfirst'); ?> - <?php print $_language->text('default', 'ucfirst'); ?>: <?php print $_language->text('life', 'ucfirst'); ?>" value>
					</div>
					<div class="type" places>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('places', 'ucfirst'); ?>" value>
					</div>
					<div class="type" description>
						<textarea class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('description', 'ucfirst'); ?>" value></textarea>
					</div>
				</div>
				<div class="process" process><div class="navProcess-buffering"></div></div>
				<div class="button w2 fc upload_photos" button upload><span><?php print $_language->text('upload_photos', 'ucfirst'); ?></span><br><i></i></div>
				<div class="button w2 select_photos" button select><span><?php print $_language->text('select_photos', 'ucfirst'); ?></span><br><i></i></div>
				<form data="photos" enctype="multipart/form-data" form>
					<input input="photos" name="file[]" type="file" accept=".jpg,.gif,.png,.jpeg" multiple>
				</form>
			</div>
			<div class="input music" input classify="music" show="false">
				<div class="form" info music get="false">
					<div class="type" name>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('music_name', 'ucfirst'); ?>" value>
					</div>
					<div class="type" singer>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('singer', 'ucfirst'); ?>" value>
					</div>
					<div class="type" album>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('album', 'ucfirst'); ?>" value>
					</div>
					<div class="type" tags>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('tags', 'ucfirst'); ?> - <?php print $_language->text('separated_by_whitespace', 'ucfirst'); ?>" value>
					</div>
					<div class="type" description>
						<textarea class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('description', 'ucfirst'); ?>" value></textarea>
					</div>
				</div>
				<div class="process" process><div class="navProcess-buffering"></div></div>
				<div class="button w2 fc upload_music" button upload><span><?php print $_language->text('upload_music', 'ucfirst'); ?></span><br><i></i></div>
				<div class="button w2 select_music" button select><span><?php print $_language->text('select_music', 'ucfirst'); ?></span><br><i></i></div>
				<form data="music" enctype="multipart/form-data" form>
					<input input="music" name="file[]" type="file" accept=".mp3"><!-- multiple -->
				</form>
			</div>
			<div class="input videos" input classify="videos" show="false">
				<div class="form" info videos get="false">
					<div class="type" name>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('videos_name', 'ucfirst'); ?>" value>
					</div>
					<div class="type" playlist>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('playlist', 'ucfirst'); ?>" value>
					</div>
					<div class="type" tags>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('tags', 'ucfirst'); ?> - <?php print $_language->text('separated_by_whitespace', 'ucfirst'); ?>" value>
					</div>
					<div class="type" description>
						<textarea class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('description', 'ucfirst'); ?>" value></textarea>
					</div>
				</div>
				<div class="process" process><div class="navProcess-buffering"></div></div>
				<div class="button w2 fc upload_videos" button upload><span><?php print $_language->text('upload_videos', 'ucfirst'); ?></span><br><i></i></div>
				<div class="button w2 select_videos" button select><span><?php print $_language->text('select_videos', 'ucfirst'); ?></span><br><i></i></div>
				<form data="videos" enctype="multipart/form-data" form>
					<input input="videos" name="file[]" type="file" accept=".mp4,.flv,.3gp,.avi,.mov,.wmv"><!-- multiple -->
				</form>
			</div>
			<div class="input cited" input classify="cited" show="false">
				<div class="form" info cited get="false">
					<div class="type" author>
						<input class="ip_s1" type="text" placeholder="<?php print $_language->text('author', 'ucfirst'); ?>" maxlength="<?php print $_parameter->get('cited_inputAuthor_length'); ?>" value>
					</div>
					<div class="type" quote>
						<textarea class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('quote', 'ucfirst'); ?>" maxlength="<?php print $_parameter->get('cited_inputQuote_length'); ?>" value></textarea>
					</div>
				</div>
				<div class="process" process><div class="navProcess-buffering"></div></div>
				<!--<div class="button" button upload><span><?php print $_language->text('upload_photos', 'ucfirst'); ?></span><br><i class="fa fa-picture-o"></i><br><span><?php print $_language->text("used_as_background_image", "ucfirst"); ?></span></div>-->
				<div class="button w2 fc upload_photos" button upload><span><?php print $_language->text('upload_photos', 'ucfirst'); ?></span><br><i></i></div>
				<div class="button w2 select_photos" button select><span><?php print $_language->text('select_photos', 'ucfirst'); ?></span><br><i></i></div>
				<form data="cited" enctype="multipart/form-data" form>
					<input input="cited" name="file[]" type="file" accept=".jpg,.gif,.png,.jpeg">
				</form>
			</div>
		</div>
		<div class="footer">
			<div class="push">
				<?php if(isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user"){ ?>
				<div class="button mood">
					<i class="_tt-bk s" editor-push="mood" title="<small><?php print $_language->text('add_thoughts', 'ucfirst'); ?></small>"></i>
				</div>
				<div class="button usertag">
					<i class="_tt-bk s" editor-push="usertag" title="<small><?php print $_language->text('add_friends', 'ucfirst'); ?></small>"></i>
				</div>
				<?php } ?>
				<div class="button places">
					<i class="_tt-bk s" editor-push="places" title="<small><?php print $_language->text('add_places', 'ucfirst'); ?></small>"></i>
				</div>
				<div class="button private">
					<?php
					if (isset($g_user['private.status.view'])) {
						$privateView = $g_user['private.status.view'];
					}else {
						$privateView = 3;
					}
					if (isset($g_user['private.status.comment'])) {
						$privateComment = $g_user['private.status.comment'];
					}else {
						$privateComment = 3;
					}
					if (isset($g_user['private.status.share'])) {
						$privateShare = $g_user['private.status.share'];
					}else {
						$privateShare = 3;
					}
					?>
					<span><?php print $_language->text('private', 'ucfirst'); ?></span>
					<div class="view _tt-bk s" editor-push="private" private="<?php print $privateView; ?>" title="<small><?php print $_language->text('change_view_private', 'ucfirst'); ?></small>"></div>
					<div class="comment _tt-bk s" editor-push="private" private="<?php print $privateComment; ?>" title="<small><?php print $_language->text('change_comment_private', 'ucfirst'); ?></small>"></div>
					<div class="share _tt-bk s" editor-push="private" private="<?php print $privateShare; ?>" title="<small><?php print $_language->text('change_share_private', 'ucfirst'); ?></small>"></div>
					<?php
					$privateView = $privateComment = $privateShare = null;
					?>
				</div>
			</div>
		</div>
	</div>
	<link rel="stylesheet" href="<?php print $_tool->links("source/css/templates/editor.css"); ?>" />
	<script src="<?php print $_tool->links("source/js/ext/editor.js"); ?>" type="text/javascript"></script>
</div>