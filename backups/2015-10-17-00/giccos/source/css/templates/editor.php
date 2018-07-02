#gEditor {
	
}
#gEditor > .title {
	margin: 4px auto;
	padding: 2px 0 5px;
    border-bottom: 1px solid #E5E5E5;
    width: 100%;
    text-indent: 8px;
}
#gEditor > .title > * {
	cursor: pointer;
	color: #666;
    font: normal normal 300 12px/1.6em "Roboto";
    text-transform: uppercase;
}
#gEditor > .content {
	
}
#gEditor > .content > .rows {
	
}
#gEditor > .content > .rows.header {
	margin: 4px auto;
	padding: 2px 0 5px;
    border-bottom: 1px solid #E5E5E5;
    width: 100%;
    text-indent: 4px;
}
#gEditor > .content > .rows.header > .li {
	cursor: pointer;
	display: inline-block;
    vertical-align: top;
    margin: 0 4px;
}
#gEditor > .content > .rows.header > .li:first-child {
	margin-left: 0;
}
#gEditor > .content > .rows.header > .li:last-child {
	margin-right: 0;
}
#gEditor > .content > .rows.header > .li > * {
	color: #888;
    font: normal normal 300 11px/1.6em "Roboto";
    text-transform: uppercase;
    transition: color .5s ease;
}
#gEditor > .content > .rows.header > .li.active > *,
#gEditor > .content > .rows.header > .li:active > * {
	color: #555;
	font-weight: 500;
}
#gEditor > .content > .rows.header > .li:hover > * {
	color: #555;
}
#gEditor > .content > .rows.body {
	padding: 2px 0;
}
#gEditor > .content > .rows.body .brinput {
	text-align: center;
}
#gEditor > .content > .rows.body .is_oe {
	margin: auto;
	padding: 1.25% 0.5% 1.5%;
    width: 95%;
    border: 1px solid transparent;
    border-radius: 2px;
    resize: none;
    font-size: 12px;
    color: #666;
    line-height: 1.4em;
    transition: all .5s ease;
}
#gEditor > .content > .rows.body .is_oe:hover,
#gEditor > .content > .rows.body .is_oe:focus {
	border-bottom: 1px dotted #DDD;
}
#gEditor > .content > .rows.body .subborder {
	margin: 2px auto 2px -2px;
	padding: 2px 2px 2px;
    border-top: 1px solid #E5E5E5;
    border-bottom: 1px solid #E5E5E5;
    width: 100%;
}
#gEditor > .content > .rows.body > .li .subnav {
	margin: 2px auto;
	padding: 3px 0 3px;
    border-bottom: 1px solid #E5E5E5;
    width: 97%;
    text-indent: 4px;
}
#gEditor > .content > .rows.body > .li .subnav > span {
	color: #888;
    font: normal normal 300 11px/1.6em "Roboto";
    text-transform: uppercase;
}
#gEditor > .content > .rows.body > .li {}
#gEditor > .content > .rows.body > .li > .context {
	margin: 4px 2px;
}
#gEditor > .content > .rows.body > .li > .file {
    margin: 4px 2px;
    padding: 4px;
}
#gEditor > .content > .rows.body > .li > .file > .input {
	display: none;
}
#gEditor > .content > .rows.body > .li > .file > .input > form {}
#gEditor > .content > .rows.body > .li > .file > .input > form > input {}
#gEditor > .content > .rows.body > .li > .file > .action > .button {
    display: inline-flex;
    vertical-align: top;
    cursor: pointer;
    margin: 0 2px;
	background: #BBB;
	height: 50px;
	width: 50px;
	border-radius: 2px;
	text-align: center;
	transition: background-color .5s ease;
}
#gEditor > .content > .rows.body > .li > .file > .action > .button:first-child {
	margin-left: 0;
}
#gEditor > .content > .rows.body > .li > .file > .action > .button:last-child {
	margin-right: 0;
}
#gEditor > .content > .rows.body > .li > .file > .action > .button:hover {
	background: #999;
}
#gEditor > .content > .rows.body > .li > .file > .action > .button > .icon {
    display: inline-block;
    vertical-align: top;
	margin: 12px auto;
	color: #FFF;
	font: normal normal 300 26px/1em FontAwesome;
}
#gEditor > .content > .rows.body > .li > .file > .action > .button.upload > .icon:before {
	content: "\f093";
}
#gEditor > .content > .rows.body > .li > .file > .action > .button.select > .icon:before {
	content: "\f07b";
}
#gEditor > .content > .rows.body > .li > .file > .action > .button.search > .icon:before {
	content: "\f002";
}
#gEditor > .content > .rows.body > .li > .file > .action > .button.delete > .icon:before {
	content: "\f1f8";
}
#gEditor > .content > .rows.body > .li.image {}
#gEditor > .content > .rows.body > .li.image > .context {}
#gEditor > .content > .rows.body > .li.image > .context > .scrapbook {}
#gEditor > .content > .rows.body > .li.image > .file {}
#gEditor > .content > .rows.body > .li.image > .file > .action {
	margin: 0 0 4px;
	font-size: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview {
	margin: 4px 0 0;
	padding: 0 0 4px;
	overflow-x: auto;
    overflow-y: hidden;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview::-webkit-scrollbar {
    height: 8px;
    background: #BBB;
    border-radius: 2px;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview::-webkit-scrollbar-thumb {
    background: #FFF;
    border: 2px solid #BBB;
    border-radius: 4px;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list {
    display: inline-flex;
    vertical-align: top;
    font-size: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box {
	position: relative;
	display: inline-block;
    vertical-align: top;
    overflow: hidden;
    cursor: pointer;
	margin: 0 2px;
	background-color: #BBB;
	background-size: cover;
    background-position: 50% 50%;
    background-repeat: no-repeat;
	height: 75px;
	width: 75px;
	border-radius: 2px;
	transition: all .5s ease;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box:first-child {
	margin-left: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box:last-child {
	margin-right: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .inside {
	transition: opacity .5s ease;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .inside {
	opacity: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box:hover > .inside {
	opacity: 1;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .wrap,
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action {
	position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .wrap {
	background-color: rgba(51, 51, 51, 0.1);
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box:hover > .wrap {
	background-color: rgba(51, 51, 51, 0.51);
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box.uploading > .wrap {
	background-color: rgba(51, 51, 51, 0.51);
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .progress {
	z-index: 1;
    position: absolute;
    bottom: 0;
    left: 0;
    padding: 2px;
    width: 71px;
    height: 3px;
    background: rgba(255, 255, 255, 0.25);
    border: none;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .progress.complete {
	background: rgba(255, 255, 255, 0.5);
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .progress > .navbar {
	height: 3px;
    width: 0;
    background: rgba(255, 255, 255, 0.5);
    border: none;
    border-radius: 3px;
    transition: width .5s ease;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .progress.complete > .navbar {
	background: rgba(255, 255, 255, 1);
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .loader {
	position: absolute;
    top: 25%;
    left: 25%;
    width: 50%;
    height: 50%;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action {}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button {
	display: inline-block;
    vertical-align: top;
	margin: 5px 2px;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button > .icon {
    display: inline-block;
    vertical-align: top;
    padding: 2px 1px;
	color: #FFF;
	font: normal normal 300 16px/1em FontAwesome;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.info {
	margin-left: 6px;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.info > .icon:before {
	content: "\f05a";
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.edit {}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.edit > .icon:before {
	content: "\f042";
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.remove {
	position: absolute;
	bottom: 4px;
	right: 30px;
	margin: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.remove > .icon:before {
	content: "\f068";
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.delete {
	position: absolute;
	bottom: 5px;
	right: 8px;
	margin: 0;
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.delete > .icon:before {
	content: "\f00d";
}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.options {}
#gEditor > .content > .rows.body > .li.image > .file > .preview > .list > .box > .action > .button.options > .icon:before {
	content: "\f013";
}
#gEditor > .content > .rows.body > .li.audio > .context {}
#gEditor > .content > .rows.body > .li.audio > .context > .album {}
#gEditor > .content > .rows.body > .li.audio > .context > .file {}
#gEditor > .content > .rows.body > .li.audio > .file {}
#gEditor > .content > .rows.body > .li.audio > .file > .action {}
#gEditor > .content > .rows.body > .li.audio > .file > .preview {}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover {
	position: relative;
	display: inline-block;
    vertical-align: top;
	margin: 4px 0 4px 0;
	width: 100px;
	height: 100px;
	background: #FFF;
	border: 2px solid #CCC;
	border-radius: 2px;
	font-size: 0;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .action {
	height: 100%;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .action > .button {
	cursor: pointer;
	margin: 2px;
    height: 96px;
    width: 96px;
    background: #CCC;
    border-radius: 2px;
	text-align: center;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .action > .button > .icon {
	display: inline-block;
	vertical-align: top;
	margin: 34px 0 0;
    color: #FFF;
    font: normal normal 300 24px/1em FontAwesome;
    transition: all .5s ease;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover:hover > .action > .button > .icon {
	margin-top: 28px;
	font-size: 36px;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .action > .button.upload {}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover.thumbnail-active > .action > .button.upload {
	display: none;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .action > .button.upload > .icon:before {
	content: "\f093";
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .thumbnail {
	margin: 2px;
    height: 96px;
    width: 96px;
    background: #CCC;
	text-align: center;
	background-color: #FFF;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border-radius: 2px;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .cover > .thumbnail > img {
	display: none;
	width: 100%;
	height: 100%;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .player {
	position: relative;
    display: inline-block;
    vertical-align: top;
    margin: 4px 0;
    width: 325px;
    height: 100px;
    background: #FFF;
    border: 2px solid #CCC;
    border-radius: 2px;
    font-size: 0;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .player > .wrap {
	cursor: pointer;
    margin: 2px;
    height: 96px;
    width: 321px;
    background: #CCC;
    border-radius: 2px;
    text-align: center;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .player > .wrap > .text {
	display: inline-block;
    color: #FFF;
    font-size: 20px;
    margin-top: 34px;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .player > .content {
	position: absolute;
    top: 0;
    left: 0;
    overflow: hidden;
    margin: 2px;
    height: 96px;
    width: 326px;
    background: #CCC;
    border-radius: 2px;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .progress {
	display: none;
	position: relative;
    vertical-align: top;
    margin: 4px 0 0;
    padding: 2px;
    width: 428px;
    background: #FFF;
    border: 2px solid #CCC;
    border-radius: 2px;
    font-size: 0;
    transition: all .5s ease;
}
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .progress.complete,
#gEditor > .content > .rows.body > .li.audio > .file > .preview > .progress.undefined {
	background: #CCC;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .progress > .navbar {
	height: 3px;
    width: 100%;
    background: #CCC;
    border-radius: 2px;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .player {
	position: relative;
    display: inline-block;
    vertical-align: top;
    margin: 4px 0;
    width: 432px;
    height: 270px;
    background: #FFF;
    border: 2px solid #CCC;
    border-radius: 2px;
    font-size: 0;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .player > .wrap {
	cursor: pointer;
    margin: 2px;
    height: 266px;
    width: 428px;
    background: #CCC;
    border-radius: 2px;
    text-align: center;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .player > .wrap > .text {
	display: inline-block;
    color: #FFF;
    font-size: 20px;
    margin-top: 119px;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .player > .content {
	position: absolute;
    top: 0;
    left: 0;
    overflow: hidden;
    margin: 2px;
    height: 266px;
    width: 428px;
    background: #CCC;
    border-radius: 2px;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .progress {
	display: none;
	position: relative;
    vertical-align: top;
    margin: 4px 0 0;
    padding: 2px;
    width: 428px;
    background: #FFF;
    border: 2px solid #CCC;
    border-radius: 2px;
    font-size: 0;
    transition: all .5s ease;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .progress.complete,
#gEditor > .content > .rows.body > .li.video > .file > .preview > .progress.undefined {
	background: #CCC;
}
#gEditor > .content > .rows.body > .li.video > .file > .preview > .progress > .navbar {
	height: 3px;
    width: 100%;
    background: #CCC;
    border-radius: 2px;
}
#gEditor > .content > .rows.footer {}