<div id="gboxLinks">
	<div class="box user boxGrid">
		<div class="bLeft">
			<a href="<?php print $g_user['link']; ?>">
				<img src="<?php print $g_user['avatar.small']; ?>" />
			</a>
		</div>
		<div class="bRight">
			<div class="name nowarp">
				<a href="<?php print $g_user['link']; ?>"><?php print $g_user['fullname']; ?></a>
			</div>
			<div class="tag nowarp">
				<a href="<?php print $g_user['link']; ?>"><?php print $g_user['username']; ?></a>
			</div>
		</div>
	</div>
	<div class="box lines boxGrid">
		<div class="title nowrap">
			<a href="#"><span class="cr-pointer"><?php print $_language->text('groups', 'ucfirst'); ?></span></a>
		</div>
		<div class="content">
			<ul class="list">
				<?php 
				print " <li class='rows null'><span>{$_language->text('you_have_not_joined_any_groups', 'ucfirst')}.</span></li> ";
				?>
			</ul>
		</div>
	</div>
	<div class="box lines boxGrid">
		<div class="title nowrap">
			<a href="#"><span class="cr-pointer"><?php print $_language->text('hashtags', 'ucfirst'); ?></span></a>
		</div>
		<div class="content">
			<ul class="list">
				<?php
				$boxLinks['hashtag']['query'] = mysqli_query($_db->port('beta'),"SELECT DISTINCT `hashtag` FROM `status_hashtag` WHERE `status.id` IN (SELECT `id` FROM `giccos`.`status` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}') ORDER BY RAND() LIMIT 5");
				if (mysqli_num_rows($boxLinks['hashtag']['query']) > 0) {
					while ($boxLinks['hashtag']['fetch'] = mysqli_fetch_assoc($boxLinks['hashtag']['query'])) {
						$boxLinks['hashtag']['fetch']['count'] = mysqli_num_rows(mysqli_query($_db->port('beta'),"SELECT `id` FROM `giccos`.`status_hashtag` WHERE `hashtag` = '{$boxLinks['hashtag']['fetch']['hashtag']}' AND `status.id` IN (SELECT `id` FROM `giccos`.`status` WHERE `time` >= '{$_tool->timeNow()}' - '86400')"));
						print "
						<li class='rows'>
							<div class='icon'>
								<i></i>
							</div>
							<div class='text nowarp'>
								<a href='{$_tool->links("feed/tags/{$boxLinks['hashtag']['fetch']['hashtag']}")}' class='tooltip w' title='<small>{$boxLinks['hashtag']['fetch']['count']} {$_language->text('repeats', 'strtolower', false)}/{$_language->text('today', 'strtolower', false)}</small>'><span>{$boxLinks['hashtag']['fetch']['hashtag']}</span></a>
							</div>
						</li>
						";
					}
				}else {
					print "<li class='rows null'><span>{$_language->text('please_use_hashtag_on_status', 'ucfirst')}.</span></li>";
				}
				?>
			</ul>
		</div>
	</div>
	<link rel="stylesheet" href="<?php print $_tool->links("source/css/templates/box_links.css"); ?>" />
</div>