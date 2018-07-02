<div id="gSidebar">
	<?php 
	if (isset($g_user['login']) && $g_user['login'] == true) {
		print "
		<div id='' class='tab boxGrid activity'>
			<div class='title nowarp'>
				<span>{$_language->text('activity_from_friends', 'ucfirst')}</span>
			</div>
			<div class='main'></div>
		</div>
		<div id='' class='tab boxGrid suggest'>
			<div class='title nowarp'>
				<span>{$_language->text('suggest', 'ucfirst')}</span>
			</div>
			<div class='main'></div>
		</div>
		<div id='' class='tab boxGrid messages'>
			<div class='title nowarp'>
				<span>{$_language->text('messages', 'ucfirst')}</span>
			</div>
			<div class='main'></div>
		</div>
		";
	}else {
		print "
		<div class='tab boxGrid activity'>
			<div class='title nowarp'>
				<span>{$_language->text('login', 'ucfirst')}</span>
			</div>
			<div class='main'></div>
		</div>
		<div class='tab boxGrid activity'>
			<div class='title nowarp'>
				<span>{$_language->text('statistic', 'ucfirst')}</span>
			</div>
			<div class='main'></div>
		</div>
		";
	}
	?>
	<link rel="stylesheet" href="<?php print $_tool->links("source/css/templates/sidebar.css"); ?>" />
</div>