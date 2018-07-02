<div id="gNavbar">
	<div class="content">
		<div class="leftBox">
			<div class="logo"> 
				<a href="<?php print $_tool->links('::redirect::home'); ?>"><span>G</span></a>
			</div>
		</div>
		<div class="centerBox">
			<div class="search">
				<input class="input" type="text" placeholder="<?php print $_language->text("input_search_placeholder", "ucfirst"); ?>">
			</div>
		</div>
		<div class="rightBox">
			<div class="button">
				<div class="remind">
					<span>99+</span>
					<i class="i"></i>
				</div>
				<div class="friends">
					<span>99+</span>
					<i class="i"></i>
				</div>
				<div class="messages">
					<span>99+</span>
					<i class="i"></i>
				</div>
				<div class="notifications">
					<span>99+</span>
					<i class="i"></i>
				</div>
			</div>
		</div>
	</div>
	<link href="<?php print $_tool->links("source/css/templates/navbar.css"); ?>" rel="stylesheet" />
	<script src="<?php print $_tool->links("source/js/templates/navbar.js"); ?>" type="text/javascript"></script>
</div>