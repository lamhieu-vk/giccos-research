#gBox > #centerBox {
	width: 685px;
}
#centerBox > #navBox {
	position: relative;
	margin-top: 10px;
	height: 247px;
	width: 687px;
}
#centerBox > #navBox.dead > .coverBox {
	filter: grayscale(100%);
	-moz-filter: grayscale(100%);
	-webkit-filter: grayscale(100%);
	-o-filter: grayscale(100%);
	-ms-filter: grayscale(100%);
	transition: all 1s ease;
	-moz-transition: all 1s ease;
	-webkit-transition: all 1s ease;
}
#centerBox:hover > #navBox.dead > .coverBox {
	filter: grayscale(0%);
	-moz-filter: grayscale(0%);
	-webkit-filter: grayscale(0%);
	-o-filter: grayscale(0%);
	-ms-filter: grayscale(0%);
}
#centerBox > #navBox > .coverBox {
	margin: 4px;
	height: 239px;
	width: 679px;
}
#centerBox > #navBox > .coverBox .wrap {
	overflow: hidden;
	position: absolute;
	top: 0;
	left: 0;
	margin: 4px;
	height: 239px;
	width: 679px;
	background-color: rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 -19.5px 239px #333;
}
#centerBox > #navBox > .coverBox .img {
	width: 100%;
	height: 100%;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
}
#centerBox > #navBox > .coverBox .img img {
	/*
	width: 100%;
	height: 100%;
	*/
}
Ơ
#centerBox > #navBox > .coverBox,
#centerBox > #navBox > .coverBox .img,
#centerBox > #navBox > .coverBox .img img {
	overflow: hidden;
	border: none;
	border-radius: 2px;
}
#centerBox > #navBox > .avatarBox {
	position: absolute;
	bottom: 40px;
	left: 40px;
	margin: 4px;
	height: 100px;
	width: 100px;
	z-index: 2;
}
#centerBox > #navBox > .avatarBox .border {
	overflow: hidden;
	padding: 3px;
	width: 100%;
	height: 100%;
	background: #FFF;
}
#centerBox > #navBox > .avatarBox .img {
	position: absolute;
	top: 0;
	left: 0;
	margin: 3px;
	width: 100%;
	height: 100%;
	background-color: #FFF;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
}
#centerBox > #navBox > .avatarBox .img img {
	width: 100%;
	height: 100%;
	background-color: #FFF;
}
#centerBox > #navBox > .avatarBox,
#centerBox > #navBox > .avatarBox .border,
#centerBox > #navBox > .avatarBox .img,
#centerBox > #navBox > .avatarBox .img img {
	border: none;
	border-radius: 90px;
}
#centerBox > #navBox > .infoBox {
	position: absolute;
	bottom: 65px;
	left: 132.5px;
}
#centerBox > #navBox > .infoBox .text > div {
	width: 100%;
	height: 100%;
}
#centerBox > #navBox > .infoBox .text > .tag {
	margin-bottom: 11px;
}
#centerBox > #navBox > .infoBox .text > .name {
}
#centerBox > #navBox > .infoBox .text > div a {
	padding: 2px 6px 3px 20px;
	background: #FFF;
	line-height: 1em;
	font-weight: 700;
	font-family: Roboto;
	color: #777;
}
#centerBox > #navBox > .infoBox .text > .tag a {
	font-size: 14px;
}
#centerBox > #navBox > .infoBox .text > .name a {
	font-size: 20px;
}
#centerBox > #navBox > .infoBox,
#centerBox > #navBox > .infoBox .border,
#centerBox > #navBox > .infoBox .text,
#centerBox > #navBox > .infoBox .text > div a {
	border: none;
	border-radius: 4px;
}
#centerBox > #navBox > .tagsInfo {
	position: absolute;
	bottom: 40px;
	right: 40px;
	margin: 4px;
}
#centerBox > #navBox > .tagsInfo .tags {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
	width: 26px;
	height: 26px;
	background: #FFF;
	border: none;
	border-radius: 90px;
}
#centerBox > #navBox > .tagsInfo .tags i {
	color: #777;
	font: normal normal normal 16px/1em FontAwesome;
}
#centerBox > #navBox > .tagsInfo .tags.verified i {
	margin-left: 6px;
	font-size: 14px;
	line-height: 1.9em;
}
#centerBox > #navBox > .tagsInfo .tags.verified i:before {
	content: "\f11d";
}
#centerBox > #navBox > .tagsInfo .tags.verified:hover i:before {
	content: "\f024";
}
#centerBox > #navBox > .tagsInfo .tags.dead i {
	margin-left: 8px;
	font-size: 14px;
	line-height: 1.9em;
}
#centerBox > #navBox > .tagsInfo .tags.dead i:before {
	content: "\f097";
}
#centerBox > #navBox > .tagsInfo .tags.dead:hover i:before {
	content: "\f02e";
}
#centerBox > #navBox {
	
}
#centerBox > #mainBox {
	margin: 10px auto;
}
#centerBox > #mainBox > #navWallType {
	width: 688px;
}
#centerBox > #mainBox > #navWallType > div {
	margin: 4px 0;
}
#centerBox > #mainBox > #navWallType > .ul {
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
}
#centerBox > #mainBox > #navWallType > .ul > .li {
	display: inline-block;
	vertical-align: top;
	margin: 0 5px;
}
#centerBox > #mainBox > #navWallType > .ul > .li:last-child {
	float: right;
}
#centerBox > #mainBox > #navWallType > .ul > .li span,
#centerBox > #mainBox > #navWallType > .ul > .li a {
	cursor: pointer;
	color: #999;
	font: normal 300 14px/1.6em "Roboto";
	transition: color .5s ease;
}
#centerBox > #mainBox > #navWallType > .ul > .li:hover span,
#centerBox > #mainBox > #navWallType > .ul > .li.active span,
#centerBox > #mainBox > #navWallType > .ul > .li:hover a,
#centerBox > #mainBox > #navWallType > .ul > .li.active a {
	color: #777;
}
#centerBox > #mainBox > #navWallType > .ul > .li.active span,
#centerBox > #mainBox > #navWallType > .ul > .li.active a {
	font-weight: 500;
}
#centerBox > #mainBox > #navWallType > .text {
	margin: 6px 10px;
}
#centerBox > #mainBox > #navWallType > .text span,
#centerBox > #mainBox > #navWallType > .text a {
	color: #888;
	font-size: 13px;
	line-height: 1.4em;
	font-weight: 300;
}
#centerBox > #mainBox > #wallContent {
	margin-top: 10px;
	width: 688px;
}
#centerBox > #mainBox > #wallContent > #tabTimeline,
#centerBox > #mainBox > #wallContent > #boxQuickInfo {
	display: inline-block;
	vertical-align: top;
}
#centerBox > #mainBox > #wallContent > #boxQuickInfo {
	width: 230px;
}
#centerBox > #mainBox > #wallContent > #boxQuickInfo > .box {
	margin: 10px auto 10px 6px;
	width: 228px;
}
#centerBox > #mainBox > #wallContent > #boxQuickInfo > .box:first-child {
	margin-top: 0;
}
#centerBox > #mainBox > #wallContent > #boxQuickInfo > .box > div {
	margin: 4px 0;
}
#centerBox > #mainBox > #wallContent > #boxQuickInfo > .box > .title {
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#centerBox > #mainBox > #wallContent > #boxQuickInfo > .box > .title span,
#centerBox > #mainBox > #wallContent > #boxQuickInfo > .box > .title a {
	cursor: pointer;
	color: #888;
	font: normal 300 14px/1.6em "Roboto";
	transition: color .5s ease;
}
#centerBox > #mainBox > #wallContent > #tabInfo {
	
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows {
	display: inline-block;
	vertical-align: top;
	width: 337px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows:nth-child(2n+1) {
	margin-right: 10px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab {
	display: inline-block;
	vertical-align: top;
	margin-top: 10px;
	width: 100%;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab:first-child {
	margin-top: 0;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .title {
	margin: 4px 0;
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .title span {
	cursor: pointer;
	color: #666;
	font: normal 300 14px/1.6em "Roboto";
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .title > .action {
	display: inline-block;
	vertical-align: top;
	margin-left: 4px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .title > .action .editButton {
	opacity: 0;
	cursor: pointer;
	transition: all .5s ease;
	color: #777;
	font: normal 300 11px/2.2em "FontAwesome";
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .title > .action .editButton:before {
	content: "\f040";
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab:hover > .title > .action .editButton {
	opacity: 1;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content {
	margin: auto;
	width: 96%;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value {
	margin: 5px auto;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.null span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.6em;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > div span,
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > div small {
	color: #777;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.6em;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > div small {
	font-size: 11px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > .texttitle span {
	font-weight: 600;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > .textmain.null span {
	color: #999;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > .imgMaps {
	overflow: hidden;
	margin: 5px auto;
	width: 324px;
	height: 248px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value > .imgMaps .img {
	width: 100%;
	height: 100%;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	border: none;
	border-radius: 4px;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.oe > .texttitle {
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.oe > .textmain {
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.oe > .textmain span {
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.to > .texttitle,
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.to > .textmain {
	display: inline-block;
	vertical-align: top;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.to > .texttitle {
	width: 28%;
}
#centerBox > #mainBox > #wallContent > #tabInfo > .rows > .tab > .content > .value.to > .textmain {
	width: 70%;
	text-align: left;
}
#centerBox > #mainBox > #wallContent > #tabFriends {
	
}
#centerBox > #mainBox > #wallContent > #tabFriends > .title {
	margin: 4px 0;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .title {
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows {
	display: inline-block;
	vertical-align: top;
	margin: 0 5px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows span,
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows a {
	cursor: pointer;
	color: #999;
	font: normal 300 14px/1.6em "Roboto";
	transition: color .5s ease;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows:hover span,
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows.active span,
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows:hover a,
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows.active a {
	color: #777;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows.active span,
#centerBox > #mainBox > #wallContent > #tabFriends > .title > .rows.active a {
	font-weight: 500;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content {
	
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list {
	margin: 8px auto;
	width: 668px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows {
	display: inline-flex;
	vertical-align: top;
	margin: 4px 2px;
	background: #FFF;
	width: 214px;
	border: 1px solid #DDD;
	border-radius: 4px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows.null {
	display: block;
	margin: auto;
	width: 666px;
	background: #EFEFEF;
	text-align: center;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows.null span {
	color: #999;
	line-height: 3em;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows.null i {
	color: #777;
	font: normal normal normal 26px/1em FontAwesome;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt {
	position: relative;
	margin: 3px;
	width: 60px;
	height: 59px;
	border: 1px solid transparent;
	border-radius: 3px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .avatar > img {
	width: 59px;
	height: 59px;
	border: none;
	border-radius: 3px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows:hover > .ptLt > .button {
	opacity: 1;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	transition: all .5s ease;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .wrap {
	width: 59px;
	height: 59px;
	background: #333;
	background: rgba(51, 51, 51, 0.51);
	border: none;
	border-radius: 3px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action {
	cursor: pointer;
	position: absolute;
	top: 15px;
	left: 15px;
	height: 26px;
	width: 26px;
	background: transparent;
	border: 2px solid #FFF;
	border-radius: 3px;
	transition: background .5s ease;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i {
	transition: color .5s ease;
	color: #FFF;
	font: normal normal normal 18px/1.5em FontAwesome;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.add {
	margin-left: 6px;
	font-size: 18px;
	line-height: 1.6em;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.add:before {
	content: "\f067";
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.cancel {
	margin-left: 5px;
	font-size: 18px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.cancel:before {
	content: "\f00d";
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.accept {
	margin-left: 5px;
	font-size: 18px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.accept:before {
	content: "\f055";
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.remove {
	margin-left: 4px;
	font-size: 18px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action i.remove:before {
	content: "\f00c";
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action:hover {
	background: #FFF;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptLt > .button > .action:hover i {
	color: #555;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt {
	margin: 3px 0 0;
	height: 59px;
	width: 141px;
	border: 1px solid #DDD;
	border-radius: 3px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .info {
	margin: 2px;
	padding: 0 0 2px;
	width: 138px;
	border-bottom: 1px dashed #DDD;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .info > .text {
	text-indent: 2px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .info > .text a {
	color: #888;
	line-height: 1em;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .info > .text.name a {
	font-size: 15px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .info > .text.tag a {
	font-size: 13px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .reason {
	margin: 2px;
	width: 138px;
	border: none;
	text-indent: 2px;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptRt > .reason span {
	color: #888;
	font-size: 11px;
	line-height: 1em;
}
#centerBox > #mainBox > #wallContent > #tabFriends > .content > .list > .rows > .ptHe > .action {
	
}
#rightBox {
	margin-top: 250px;
}