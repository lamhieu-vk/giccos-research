#gEditor {
	margin: 10px auto;
	padding: 0 0 5px 0;
}
#gEditor > div {
	margin: auto;
	width: 96.75%;
}
#gEditor > .title {
}
#gEditor > .title > .list {
	position: relative;
	padding: 1px 1px 3px;
}
#gEditor > .title > .list > .rows {
	display: inline-block;
	vertical-align: top;
	margin: 0 4px 0;
	text-align: center;
}
#gEditor > .title > .list > .rows span {
	cursor: pointer;
	color: #999;
	font-size: 13px;
	line-height: 2.4em;
	font-family: Roboto;
	font-weight: 300;
	transition: color .5s ease;
}
#gEditor > .title > .list > .rows:hover span,
#gEditor > .title > .list > .rows.active span {
	color: #666;
}
#gEditor > .title > .list > .rows[type='status'] {
	width: 52px;
}
#gEditor > .title > .list > .rows[type='photos'] {
	width: 50px;
}
#gEditor > .title > .list > .rows[type='music'] {
	width: 40px;
}
#gEditor > .title > .list > .rows[type='videos'] {
	width: 40px;
}
#gEditor > .title > .list > .rows[type='cited'] {
	width: 52px;
}
#gEditor > .title > .list > .rows[type='post'] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 1px 12px 0 0;
}
#gEditor > .title > .arrow {
	display: inline-block;
	position: absolute;
	margin: -2px 0 0 auto;
	height: 0;
	width: 0;
	transition: all .5s ease;
}
#gEditor > .title > .arrow[arrow='status'] {
	margin-left: 25px;
}
#gEditor > .title > .arrow[arrow='photos'] {
	margin-left: 90px;
}
#gEditor > .title > .arrow[arrow='music'] {
	margin-left: 145px;
}
#gEditor > .title > .arrow[arrow='videos'] {
	margin-left: 197.5px;
}
#gEditor > .title > .arrow[arrow='cited'] {
	margin-left: 255px;
}
#gEditor > .title > .arrow:before {
	content: '';
	position: absolute;
	margin-top: -4px;
	border-right: 7px solid transparent;
	border-left: 7px solid transparent;
	border-bottom: 7px solid #E5E5E5;
}
#gEditor > .title > .arrow:after {
	content: '';
	position: absolute;
	margin-top: -2px;
	border-right: 7px solid transparent;
	border-left: 7px solid transparent;
	border-bottom: 7px solid #FFF;
}
#gEditor > .box {
	border: 1px solid #E5E5E5;
	border-radius: 3px;
}
#gEditor > .box .ip_s1 {
	padding: 1.5%;
	width: 97% !important;
	border: none;
	border-radius: 2px;
	resize: none !important;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#gEditor > .box > .process {
	display: none;
	margin: 2.5% auto;
	padding: 4px;
	width: 95%;
	background-color: #CCC;
	border-radius: 6px;
}
#gEditor > .box > .process > div {
	height: 6px;
	width: 100%;
}
#gEditor > .box > .body[content] > .input {
	display: none;
	position: relative;
	margin: auto;
	border-top: 1px dotted #DDD;
}
#gEditor > .box > .body[content] > .input > form {
	display: none;
}
#gEditor > .box > .body[content] > .input > form input {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#gEditor > .box > .body[content] > .input > .form .type {
	padding: 1% 0;
}
#gEditor > .box > .body[content] > .input > .process {
	display: none;
	margin: 6px auto 6px;
	padding: 3px;
	width: 95%;
	background: #DDD;
	border-radius: 4px;
}
#gEditor > .box > .body[content] > .input > .process > div {
	height: 4px;
	transition: width .5s ease;
}
#gEditor > .box > .body[content] > .input > .button {
	cursor: pointer;
	margin: 6px auto;
	padding: 6px 0;
	width: 96%;
	border: 1px dashed #DDD;
	border-radius: 2px;
	text-align: center;
}
#gEditor > .box > .body[content] > .input > .button.w2 {
	display: inline-block;
	vertical-align: top;
	width: 48%;
}
#gEditor > .box > .body[content] > .input > .button.w2.fc {
	margin-left: 1%;
	margin-right: 0.5%;
}
#gEditor > .box > .body[content] > .input > .button i {
	font: 300 27px/1.4em "FontAwesome";
}
#gEditor > .box > .body[content] > .input > .button.upload_photos i:before,
#gEditor > .box > .body[content] > .input > .button.upload_music i:before,
#gEditor > .box > .body[content] > .input > .button.upload_videos i:before {
	content: "\f093";
}
#gEditor > .box > .body[content] > .input > .button.select_photos i:before,
#gEditor > .box > .body[content] > .input > .button.select_music i:before,
#gEditor > .box > .body[content] > .input > .button.select_videos i:before {
	content: "\f07b";
}
#gEditor > .box > .body[content] > .input > .button span {
	font-size: 13px;
	font-family: Roboto;
	font-weight: 300;
	line-height: 1.8em;
}
#gEditor > .box > .body[content] > .input > .button i {
	font-size: 27px;
	line-height: 1.2em;
}
#gEditor > .box > .body[content] > .input > .button span,
#gEditor > .box > .body[content] > .input > .button i {
	color: #999;
	transition: color .5s ease;
}
#gEditor > .box > .body[content] > .input > .button:hover span,
#gEditor > .box > .body[content] > .input > .button:hover i {
	color: #777;
}
#gEditor > .box > .body[content] > .input > div.type {
	text-align: center;
}
#gEditor > .box > .body[content] > .input > div.type > textarea,
#gEditor > .box > .body[content] > .input > div.type > input {
	width: 98%;
}
#gEditor > .box > .body[content] > .upload.link {
	margin: auto;
	border-top: 1px dotted #DDD;
}
#gEditor > .box > .body[content] > .upload.link .demo {
	cursor: pointer;
	margin: auto;
	padding: 0;
	width: 100%;
	background: #FFF;
	border: none;
}
#gEditor > .box > .body[content] > .upload.link .demo > div {
	vertical-align: top;
}
#gEditor > .box > .body[content] > .upload.link .demo > .thumbnail {
	margin: 0 auto;
	width: 100%;
	border: none;
}
#gEditor > .box > .body[content] > .upload.link .demo > .thumbnail > div {
	height: 175px;
	background: #FFF;
	background-size: cover;
	background-position: 50% 50%;
	border: none;
	box-shadow: inset 0 -17.5px 175px #333;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info {
	margin: 0 auto;
	width: 96%;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .header {
	margin-left: -2%;
	padding: 2px 0 4px 0;
	width: 104%;
	border-bottom: 1px solid #E5E5E5;
	color: #888;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .header > .action {
	display: inline-block;
    vertical-align: top;
    margin-top: 2px;
    margin-left: 8px;
    width: 3%;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .header > .action i {
	color: #999;
    font: normal normal 14px/1.4em "FontAwesome";
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .header > .action .close:before {
	content: "\f00d";
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .header > .title {
	display: inline-block;
    vertical-align: top;
	margin: auto;
	width: 94%;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .header > .title span {
	line-height: 1.6em;
	color: #999;
	font-size: 14px;
	font-weight: 300;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .body > .description {
	overflow: hidden;
	margin: 4px 0 4px;
	max-height: 55px;
	color: #999;
	-webkit-transition: height .5s ease;
	-moz-transition: height .5s ease;
	-o-transition: height .5s ease;
	transition: height .5s ease;
}
#gEditor > .box > .body[content] > .upload.link .demo:hover > .info > .body > .description {
	max-height: 100%;
}
.status.inFeeds > .body .media.LinkBox.compress-content-disabled > .link > .info > .body,
.status.inFeeds > .body .media.LinkBox:hover > .link > .info > .body {
	max-height: 100%;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .body span,
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer {
	margin-left: -2%;
	padding: 3px 0 5px 0;
	width: 104%;
	border-top: 1px solid #E5E5E5;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .information,
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .host {
    display: inline-block;
    vertical-align: top;
    width: 48%;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .information > i,
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .host > i {
	margin-right: 2px;
	color: #999;
    font: normal 300 10px/1em "FontAwesome";
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .information {
	margin-left: 2%;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .information > i:before {
	content: "\f05a";
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .host {
	text-align: right;
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer > .host > i:before {
	content: "\f024";
}
#gEditor > .box > .body[content] > .upload.link .demo > .info > .footer span {
	font-size: 9px;
	text-transform: uppercase;
}
#gEditor > .box > .body[content] > .upload.photos {
	margin: auto;
	padding: 6px 2px;
	width: 96%;
}
#gEditor > .box > .body[content] > .upload.photos .list {
	
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action {
	cursor: pointer;
	width: 50px;
	height: 50px;
	border: 2px dashed #CCC;
	transition: border .5s ease;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action:last-child {
	margin-right: 0;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action > i {
	position: absolute;
	color: #CCC;
	font: normal 300 30px/1em "FontAwesome";
	transition: color .5s ease;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action[upload] > i:before {
	content: "\f093";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action[select] > i:before {
	content: "\f07b";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action[remove] > i:before {
	content: "\f00d";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action.add > i {
	top: 11px;
	left: 11px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action.remove > i {
	top: 10px;
	left: 12px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action:hover {
	border-color: #AAA;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.action:hover > i {
	color: #AAA;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview {
	position: relative;
	display: inline-block;
	vertical-align: top;
	margin: auto 2px;
	border: 1px solid transparent;
	border-radius: 2px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview._h {
	display: none;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview:nth-child(n+8) {
	margin: 2px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span {
	opacity: 0;
	cursor: pointer;
	position: absolute;
	padding: 1px 0;
	color: #FFF;
	font: normal normal normal 16px/1em FontAwesome;
	transition: all .5s ease;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview:hover span,
#gEditor > .box > .body[content] > .upload.photos .list .preview:hover div.filter,
#gEditor > .box > .body[content] > .upload.photos .list .preview.uploading div.filter {
	opacity: 1;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.uploading {
	cursor: pointer;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview div[uploading] {
	z-index: 1;
	position: absolute;
	top: 33px;
	left: 3px;
	padding: 2px;
	width: 40px;
	height: 3px;
	background: rgba(255, 255, 255, 0.5);
	border: none;
	border-radius: 4px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.error div[uploading] {
}
#gEditor > .box > .body[content] > .upload.photos .list .preview div[uploading] > div {
	height: 3px;
  	width: auto;
  	border: none;
  	border-radius: 4px;
  	transition: width .5s ease;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[tag] {
	z-index: 1;
 	bottom: 5px;
	left: 5px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[tag]:before {
	content: "\f02b";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[edit] {
	z-index: 1;
 	bottom: 5px;
	right: 5px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[edit]:before {
	content: "\f040";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[remove] {
	z-index: 1;
 	top: 5px;
	left: 5px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[remove]:before {
	content: "\f068";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[close] {
	z-index: 1;
 	top: 5px;
	right: 5px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview span[close]:before {
	content: "\f00d";
}
#gEditor > .box > .body[content] > .upload.photos .list .preview div[img] {
	cursor: pointer;
	width: 50px;
	height: 50px;
	background-size: cover;
	background-position: 50% 50%;
	border-radius: 4px;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview div.filter {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(33, 33, 33, 0.33);
	border-radius: 3px;
	transition: background .5s ease;
}
#gEditor > .box > .body[content] > .upload.photos .list .preview.error div.filter {
	background: rgba(222, 112, 112, 0.33);
}
#gEditor > .box > .body[content] > .upload.videos > .button,
#gEditor > .box > .body[content] > .upload.music > .button,
#gEditor > .box > .body[content] > .upload.cited > .button {
	margin: 2px auto;
	text-align: center;
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action,
#gEditor > .box > .body[content] > .upload.music > .button > .action,
#gEditor > .box > .body[content] > .upload.cited > .button > .action {
	cursor: pointer;
	display: inline-block !important;
	vertical-align: top;
	margin: 6px auto;
	padding: 6px 0;
	width: 96%;
	border: 1px dashed #DDD;
	border-radius: 2px;
	text-align: center;
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action.w2,
#gEditor > .box > .body[content] > .upload.music > .button > .action.w2,
#gEditor > .box > .body[content] > .upload.cited > .button > .action.w2 {
	width: 48%;
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action.w2:first-child,
#gEditor > .box > .body[content] > .upload.music > .button > .action.w2:first-child {
	margin-left: 0.5%;
	margin-right: 0.5%;
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action i,
#gEditor > .box > .body[content] > .upload.music > .button > .action i,
#gEditor > .box > .body[content] > .upload.cited > .button > .action i {
	font: normal 300 27px/1em "FontAwesome";
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action[upload] i:before,
#gEditor > .box > .body[content] > .upload.music > .button > .action[upload] i:before,
#gEditor > .box > .body[content] > .upload.cited > .button > .action[upload] i:before {
	content: "\f093";
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action[select] i:before,
#gEditor > .box > .body[content] > .upload.music > .button > .action[select] i:before,
#gEditor > .box > .body[content] > .upload.cited > .button > .action[select] i:before {
	content: "\f07b";
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action span,
#gEditor > .box > .body[content] > .upload.music > .button > .action span,
#gEditor > .box > .body[content] > .upload.cited > .button > .action span {
	font-size: 13px;
	font-family: Roboto;
	font-weight: 300;
	line-height: 1.8em;
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action > *,
#gEditor > .box > .body[content] > .upload.music > .button > .action > *,
#gEditor > .box > .body[content] > .upload.cited > .button > .action > * {
	color: #999;
	transition: color .5s ease;
}
#gEditor > .box > .body[content] > .upload.videos > .button > .action :hover > *,
#gEditor > .box > .body[content] > .upload.music > .button > .action :hover > *,
#gEditor > .box > .body[content] > .upload.cited > .button > .action :hover > * {
	color: #777;
}
#gEditor > .box > .body[content] > .upload.videos > .player,
#gEditor > .box > .body[content] > .upload.music > .player,
#gEditor > .box > .body[content] > .upload.cited > .player {
	margin: 2px auto 8px;
}
#gEditor > .box > .body[content] > .upload.videos > .player > div,
#gEditor > .box > .body[content] > .upload.music > .player > div,
#gEditor > .box > .body[content] > .upload.cited > .player > div {
	margin: auto;
	width: 98%;
	border: none;
}
#gEditor > .box > .body[content] > .upload.cited .tab {
	margin: 0 auto 5px;
	padding: 6px 0;
	width: 96%;
	background-size: cover;
	background-position: 50% 50%;
	border: none;
	border-radius: 4px;
}
#gEditor > .box > .body[content] > .upload.cited .tab div {
	margin: 5px auto;
	width: 95%;
}
#gEditor > .box > .body[content] > .upload.cited .tab div span {
	color: #FFF;
	line-height: 1.4em;
	text-shadow: 0 0 9px #333;
}
#gEditor > .box > .body[content] > .upload.cited .tab .quote {
	text-align: left;
}
#gEditor > .box > .body[content] > .upload.cited .tab .quote span {
	font-size: 20px;
	font-weight: 500;
}
#gEditor > .box > .body[content] > .upload.cited .tab .author {
	margin-top: 15px;
	text-align: right;
}
#gEditor > .box > .body[content] > .upload.cited .tab .author span {
	font-size: 16px;
	font-weight: 300;
}
#gEditor > .box > .body[content] > .push {
	padding: 4px 0;
	border-top: 1px dotted #DDD;
}
#gEditor > .box > .body[content] > .input input {
	padding: 0.5% 1.5% 0;
	width: auto;
}
#gEditor > .box > .body[content] > .push input {
	padding: 0.5% 1.5%;
	width: auto;
}
#gEditor > .box > .body[content] > .input .tag,
#gEditor > .box > .body[content] > .push .tag {
	cursor: pointer;
	display: inline-block;
	padding: 4px 5px;
	margin: 4px;
	background-color: #777;
	border-radius: 2px;
}
#gEditor > .box > .body[content] > .input .tag > *,
#gEditor > .box > .body[content] > .push .tag > * {
	font-size: 13px;
	color: #EEEEEE;
	line-height: 1.4em;
	text-shadow: 0 -1px 0 #666;
	transition: color .5s ease;
}
#gEditor > .box > .body[content] > .input .tag:hover > *,
#gEditor > .box > .body[content] > .push .tag:hover > * {
	color: #FFFFFF;
}
#gEditor > .box > .body[content] > .input .tag > i,
#gEditor > .box > .body[content] > .push .tag > i {
	cursor: pointer;
	margin-left: 4px;
	font: normal 300 14px/1.4em "FontAwesome";
}
#gEditor > .box > .body[content] > .input .tag > i:before,
#gEditor > .box > .body[content] > .push .tag > i:before {
	content: "\f00d";
}
#gEditor > .box > .footer {
	border-top: 1px dotted #DDD;
}
#gEditor > .box > .footer > .push {

}
#gEditor > .box > .footer > .push > .button {
	display: inline-block;
	vertical-align: top;
	padding: 4px 0;
	width: 24px;
	text-align: center;
}
#gEditor > .box > .footer > .push > .button:first-child {
	margin-left: 4px;
}
#gEditor > .box > .footer > .push > .button.private {
	float: right;
	margin-right: 4px;
	width: 150px;
	text-align: right;
}
#gEditor > .box > .footer > .push > .button.private > span {
	display: none;
	margin-right: 4px;
}
#gEditor > .box > .footer > .push > .button.private > div {
	display: inline-block;
}
#gEditor > .box > .footer > .push > .button.private .choosePrivate  {
	width: 20px;
}
#gEditor > .box > .footer > .push > .button.private .choosePrivate .selected > .rows {
	padding: 1px;
}
#gEditor > .box > .footer > .push > .button.private .choosePrivate .selected > .rows > span {
	display: none;
}
#gEditor > .box > .footer > .push > .button > span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}
#gEditor > .box > .footer > .push > .button > i {
	cursor: pointer;
	padding-top: 2px;
	color: #999;
	font: normal 300 14px/1.4em "FontAwesome";
	transition: color .5s ease;
}
#gEditor > .box > .footer > .push > .button:hover > i {
	color: #777;
}
#gEditor > .box > .footer > .push > .button > i[editor-push='mood']:before {
	content: "\f118";
}
#gEditor > .box > .footer > .push > .button > i[editor-push='usertag']:before {
	content: "\f02b";
}
#gEditor > .box > .footer > .push > .button > i[editor-push='places']:before {
	content: "\f041";
}
#gEditor > .box > .footer > .push > .button > i[editor-push='private']:before {
	content: "\f013";
}

#PhotosEditorPopup {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#PhotosEditorPopup > .wrapFilter {
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(44, 44, 44, 0.8);
}
#PhotosEditorPopup > .boxContent {
	z-index: 2;
	position: absolute;
	width: 500px;
	background-color: #FFF;
	border-radius: 4px;
	transition: all .5s ease;
}
#PhotosEditorPopup > .boxContent > .header > span,
#PhotosEditorPopup > .boxContent > .footer > span {
	font-weight: 300;
	font-family: 'Roboto';
	color: #999;
}
#PhotosEditorPopup > .boxContent > .header > span,
#PhotosEditorPopup > .boxContent > .header > i,
#PhotosEditorPopup > .boxContent > .footer > span {
	color: #666;
	transition: color .5s ease;
}
#PhotosEditorPopup > .boxContent > .header {
	height: 35px;
	width: 100%;
	text-indent: 8px;
}
#PhotosEditorPopup > .boxContent > .header span {
	cursor: pointer;
	line-height: 2em;
	font-size: 17px;
}
#PhotosEditorPopup > .boxContent > .header i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal 300 16px/2.1em "FontAwesome";
}
#PhotosEditorPopup > .boxContent > .header i[close]:before {
	content: "\f00d";
}
#PhotosEditorPopup > .boxContent > .header:hover i {
	color: #666;
}
#PhotosEditorPopup > .boxContent > .body {
	position: relative;
	height: 600px;
	width: 100%;
	background-color: #444;
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction {
	
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction > div {
	z-index: 3;
	cursor: pointer;
	position: absolute;
	right: 30px;
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction > div i {
	color: #FFF;
	font: normal 300 25px/2em "FontAwesome";
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction > div.apply {
	top: 30px;
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction > div.apply i:before {
	content: "\f058";
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction > div.cancel {
	top: 60px;
}
#PhotosEditorPopup > .boxContent > .body > .preview .buttonAction > div.cancel i:before {
	content: "\f057";
}
#PhotosEditorPopup > .boxContent > .body > .preview .imgDiv {
	display: flex;
	margin: auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	text-align: center;
	position: relative;
	height: 480px;
}
#PhotosEditorPopup > .boxContent > .body > .preview .imgDiv img {
	margin: auto;
	max-height: 450px;
	max-width: 450px;
	border-radius: 4px;
}
#PhotosEditorPopup > .boxContent > .body > .preview .imgDiv img.blur {
	filter: blur(3px) grayscale(100%);
	-webkit-filter: blur(3px) grayscale(100%);
	-moz-filter: blur(3px) grayscale(100%);
	-o-filter: blur(3px) grayscale(100%);
	-ms-filter: blur(3px) grayscale(100%);
	transition: .25s ease;
	-webkit-transition: .25s ease;
	-moz-transition: .25s ease;
	-o-transition: .25s ease;
	-ms-transition: .25s ease;
}
#PhotosEditorPopup > .boxContent > .body > .preview .loading {
	position: absolute;
	top: 204.5px;
	left: 232px;
	padding: 5px 10px 3px;
	background-color: #FFF;
	border: none;
	border-radius: 2px;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar {
	position: absolute;
	bottom: 10px;
	left: 10px;
	height: 100px;
	width: 480px;
	background-color: #FFF;
	border-radius: 4px;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .title {
	margin: auto;
	width: 96%;
	height: 28px;
	border-bottom: 1px solid #DDD;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .title span {
	cursor: pointer;
	line-height: 2.2em;
	font-size: 13px;
	font-weight: 300;
	font-family: 'Roboto';
	color: #999;
	transition: color .5s ease;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .title div.active span,
#PhotosEditorPopup > .boxContent > .body > .toolbar .title span:hover,
#PhotosEditorPopup > .boxContent > .body > .toolbar .title span:active,
#PhotosEditorPopup > .boxContent > .body > .toolbar .title span.active {
	color: #666;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .title div {
	display: inline-block;
	vertical-align: top;
	margin: 0 5px;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box .list {
	
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list {
	text-align: center;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	margin: 9px 2px;
	height: 50px;
	width: 50px;
	background-color: #FFF;
	background-size: cover;
	background-position: 50% 50%;
	border-radius: 4px;
	box-shadow: inset 0 0 6px #444;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo.active i {
	color: #FFF;
	font: normal 300 25px/2em "FontAwesome";
	text-shadow: 0 0 10px #444;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo.active i:before {
	content: "\f111";
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(1) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_1.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(2) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_2.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(3) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_3.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(4) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_4.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(5) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_5.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(6) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_6.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(7) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_7.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='filter'] .list > .rows.demo:nth-child(8) {
	background-image: url(<?php print $_tool->links('photos/raw/static/photosEditor_filter_8.jpg'); ?>);
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='brightness'] .options {
	margin: 20px auto 15px;
	width: 92.5%;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='brightness'] .text {
	margin: 10px auto;
	width: 92.5%;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='brightness'] .text span {
	color: #888;
	font-size: 13px;
	font-weight: 100;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='contrast'] .options {
	margin: 20px auto 15px;
	width: 92.5%;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='contrast'] .text {
	margin: 10px auto;
	width: 92.5%;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='contrast'] .text span {
	color: #888;
	font-size: 13px;
	font-weight: 100;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] .button {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	padding: 6px;
	width: 180px;
	border: 1px solid #DDD;
	border-radius: 2px;
	text-align: center;
	transition: all .5s ease;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] .button:first-child {
	margin: 12px 6px 6px 14px;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] .button:last-child {
	margin: 12px 6px 6px 4px;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] .button:hover,
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] .button.active {
	background-color: #EEE;
	box-shadow: inset 0 0 5px #DDD;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] i {
	color: #888;
	font-size: 16px;
	font-weight: 100;
}
#PhotosEditorPopup > .boxContent > .body > .toolbar .box[type='rotate'] span {
	color: #888;
	font-size: 13px;
	font-weight: 300;
	font-family: "Roboto";
}
#PhotosEditorPopup > .boxContent > .footer {
	width: 100%;
	text-align: right;
}
#PhotosEditorPopup > .boxContent > .footer > .action {
	margin: auto;
	padding: 4px 0;
	width: 96%;
	border-bottom: 1px dotted #DDD;
	text-align: center;
}
#PhotosEditorPopup > .boxContent > .footer > .copyright span {
	cursor: pointer;
	margin-right: 8px;
	line-height: 2em;
	font-size: 13px;
	color: #999;
}



#PhotosTagPopup {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#PhotosTagPopup > .wrapFilter {
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(44, 44, 44, 0.8);
}
#PhotosTagPopup > .boxContent {
	z-index: 2;
	position: absolute;
	width: 500px;
	background-color: #FFF;
	border-radius: 4px;
	transition: all .5s ease;
}
#PhotosTagPopup > .boxContent > .header > span,
#PhotosTagPopup > .boxContent > .footer > span {
	font-weight: 300;
	font-family: 'Roboto';
	color: #999;
}
#PhotosTagPopup > .boxContent > .header > span,
#PhotosTagPopup > .boxContent > .header > i,
#PhotosTagPopup > .boxContent > .footer > span {
	color: #666;
	transition: color .5s ease;
}
#PhotosTagPopup > .boxContent > .header {
	height: 35px;
	width: 100%;
	text-indent: 8px;
}
#PhotosTagPopup > .boxContent > .header span {
	cursor: pointer;
	line-height: 2em;
	font-size: 17px;
}
#PhotosTagPopup > .boxContent > .header i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal 300 16px/2.1em "FontAwesome";
}
#PhotosTagPopup > .boxContent > .header i[close]:before {
	content: "\f00d";
}
#PhotosTagPopup > .boxContent > .header:hover i {
	color: #666;
}
#PhotosTagPopup > .boxContent > .body {
	position: relative;
	height: 600px;
	width: 100%;
	background-color: #444;
}
#PhotosTagPopup > .boxContent > .body > .preview .image {
	position: relative;
	display: flex;
	margin: auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	text-align: center;
	height: 480px;
}
#PhotosTagPopup > .boxContent > .body > .preview .image .img {
	margin: auto;
	max-height: 450px;
	max-width: 450px;
	border-radius: 4px;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags {
	position: absolute;
	margin: auto;
	top: 0;
	left: 0;
	text-align: center;
	height: 480px;
	width: 100%;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper {
	position: relative;
	margin: 15px auto;
	height: 450px;
	width: 450px;
	border-radius: 4px;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTag {
	cursor: pointer;
	position: absolute;
	background-color: transparent;
	border: 1px solid transparent;
  	border-radius: 4px;
  	-webkit-transition: all .5s ease;
  	-moz-transition: all .5s ease;
  	-o-transition: all .5s ease;
  	transition: all .5s ease;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTag:hover,
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTag.active {
	background-color: rgba(255, 255, 255, 0.25);
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTag.faces:active,
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTag.faces.active {
	border-radius: 180px;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTypeName {
	position: absolute;
	background-color: #FFF;
	border: none;
	border-radius: 4px;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTypeName input {
	padding: 4px 7px 4px 7px;
	margin: 4px;
	width: 87%;
	height: 19px;
	background-color: #FFF;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
	resize: none;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTypeName input:hover {
	background-color: #EFEFEF;
	box-shadow: inset 0 0 4px #E0E0E0;
}
#PhotosTagPopup > .boxContent > .body > .preview .tags .wrapper .thisTypeName [tag-obj] {
	margin: 4px;
}
#PhotosTagPopup > .boxContent > .body > .tagbar {
	position: absolute;
	bottom: 10px;
	left: 10px;
	height: 100px;
	width: 480px;
	background-color: #FFF;
	border-radius: 4px;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .title {
	margin: auto;
	width: 96%;
	height: 28px;
	border-bottom: 1px solid #DDD;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .title span {
	cursor: pointer;
	line-height: 2.2em;
	font-size: 13px;
	font-weight: 300;
	font-family: 'Roboto';
	color: #999;
	transition: color .5s ease;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .title div.active span,
#PhotosTagPopup > .boxContent > .body > .tagbar .title span:hover,
#PhotosTagPopup > .boxContent > .body > .tagbar .title span:active,
#PhotosTagPopup > .boxContent > .body > .tagbar .title span.active {
	color: #666;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .box {
	margin: auto;
	width: 96%;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .box > .rows {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	margin: 9px 2px;
	height: 50px;
	width: 50px;
	text-align: center;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .box > .rows .img {
	height: 100%;
	width: 100%;
	background-color: #FFF;
	background-size: cover;
	background-position: 50% 50%;
	border-radius: 4px;
	box-shadow: inset 0 0 6px #444;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .box > .rows.active i {
	color: #FFF;
	font: normal 300 25px/2em "FontAwesome";
	text-shadow: 0 0 10px #444;
}
#PhotosTagPopup > .boxContent > .body > .tagbar .box > .rows.active i:before {
	content: "\f111";
}
#PhotosTagPopup > .boxContent > .footer {
	width: 100%;
	text-align: right;
}
#PhotosTagPopup > .boxContent > .footer > .action {
	margin: auto;
	padding: 4px 0;
	width: 96%;
	border-bottom: 1px dotted #DDD;
	text-align: center;
}
#PhotosTagPopup > .boxContent > .footer > .copyright span {
	cursor: pointer;
	margin-right: 8px;
	line-height: 2em;
	font-size: 13px;
	color: #999;
}