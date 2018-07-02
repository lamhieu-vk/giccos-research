<?php 
if ($g_user['live'] == NULL) {
	print "
	<div id='gboxAsk' ask-type='live'>
		<div class='box boxGrid'>
			<div class='title'>
				<div class='rows'><span class='cr-pointer'>{$_language->text('you_can_tell_us', 'ucfirst')}</span></div>
			</div>
			<div class='description'>
				<span>{$_language->text('ask_live_description', 'ucfirst', true)}</span>
			</div>
			<div class='content'>
				<div class='rows input'> <input class='ip_s1 ip_as' type='text' placeholder='{$_language->text('where_do_you_live', 'ucfirst')}'> </div>
				<div class='rows options'>
					<div class='private'></div>
					<div class='submit'><div class='send _bn_c-we'>{$_language->text('update', 'ucfirst')}</div></div>
				</div>
			</div>
		</div>
		<link rel='stylesheet' href='{$_tool->links("source/css/templates/box_ask.css")}' />
		<script src='{$_tool->links("source/js/ext/box_ask.js")}' type='text/javascript'></script>
	</div>
	";
}else if ($g_user['country'] == NULL) {
	print "
	<div id='gboxAsk' ask-type='country'>
		<div class='box boxGrid'>
			<div class='title'>
				<div class='rows'><span class='cr-pointer'>{$_language->text('you_can_tell_us', 'ucfirst')}</span></div>
			</div>
			<div class='description'>
				<span>{$_language->text('ask_live_description', 'ucfirst', true)}</span>
			</div>
			<div class='content'>
				<div class='rows input'> <input class='ip_s1 ip_as' type='text' placeholder='{$_language->text('where_do_you_from', 'ucfirst')}'> </div>
				<div class='rows options'>
					<div class='private'></div>
					<div class='submit'><div class='send _bn_c-we'>{$_language->text('update', 'ucfirst')}</div></div>
				</div>
			</div>
		</div>
		<link rel='stylesheet' href='{$_tool->links("source/css/templates/box_ask.css")}' />
		<script src='{$_tool->links("source/js/ext/box_ask.js")}' type='text/javascript'></script>
	</div>
	";
}
?>