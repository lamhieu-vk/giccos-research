body {
	overflow-y: hidden;
}
html.messages.general {
	
}
html.messages.general .boxGrid {
	margin: 10px auto;
}
html.messages.general .boxGrid > .title {
	margin: 4px 0;
	padding: 0 6px 4px;
  	border-bottom: 1px solid #E5E5E5;
}
html.messages.general .boxGrid > .title * {
	color: #666;
	line-height: 1.6em;
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
}
html.messages.general #centerBox > #messagesData > .title {
	
}
html.messages.general #centerBox > #messagesData > .title > .messagesCreateButton {
	float: right;
	display: inline-block;
	vertical-align: top;
}
html.messages.general #centerBox > #messagesData > .title > .messagesCreateButton i {
	cursor: pointer;
	color: #999;
  	font: normal normal normal 14px/1em FontAwesome;
}
html.messages.general #centerBox > #messagesData > .title > .messagesCreateButton i:before {
	content: "\f067";
}
html.messages.general #centerBox > #messagesData > .content > .null.notify {
	padding: 6px 0 12px;
	text-align: center;
}
html.messages.general #centerBox > #messagesData > .content > .null.notify .icon {
	color: #999;
  	font: normal normal normal 40px/1em FontAwesome;
}
html.messages.general #centerBox > #messagesData > .content > .null.notify .icon:before {
	content: "\f086";
}
html.messages.general #centerBox > #messagesData > .content > .null.notify span {
	font-size: 13px;
	font-weight: 300;
	color: #888;
	line-height: 1.4em;
}
html.messages.general #popupCreateMessages {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(51, 51, 51, 0.51);
}
html.messages.general #popupCreateMessages > .box {
	position: fixed;
	margin: 0;
	padding: 0;
	width: 400px;
	background: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
html.messages.general #popupCreateMessages .box > .title {
	position: relative;
	padding: 5px 6px 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
	color: #666;
}
html.messages.general #popupCreateMessages .box > .title span, 
html.messages.general #popupCreateMessages .box > .title i {
	cursor: pointer;
	color: #666;
	line-height: 1.6em;
	font-size: 14px;
	font-weight: 300;
}
html.messages.general #popupCreateMessages .box > .title i {
	position: absolute;
	right: 8px;
	background: #FFF;
	border-radius: 45px;
	font-style: normal;
	font-family: "FontAwesome";
}
html.messages.general #popupCreateMessages .box > .title i:before {
	content: "\f00d";
}
html.messages.general #popupCreateMessages .box > .main > .content {
	margin: auto;
	padding: 4px 0;
	width: 98%;
}
html.messages.general #popupCreateMessages .box > .main > .content > * {
	color: #888;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.6em;
}
html.messages.general #popupCreateMessages .box > .main > .content textarea,
html.messages.general #popupCreateMessages .box > .main > .content input {
	margin: auto;
	padding: 1%;
	border: 1px solid transparent;
	border-radius: 2px;
	resize: none;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
html.messages.general #popupCreateMessages .box > .main > .content.name input {
	width: 98%;
}
html.messages.general #popupCreateMessages .box > .main > .content .tag {
	cursor: pointer;
	display: inline-block;
	padding: 4px 5px;
	margin: 4px;
	background-color: #777;
	border-radius: 2px;
}
html.messages.general #popupCreateMessages .box > .main > .content .tag > * {
	font-size: 13px;
	color: #EEEEEE;
	line-height: 1.4em;
	text-shadow: 0 -1px 0 #666;
	transtion: color .5s ease;
}
html.messages.general #popupCreateMessages .box > .main > .content .tag:hover > * {
	color: #FFFFFF;
}
html.messages.general #popupCreateMessages .box > .main > .content .tag > i {
	cursor: pointer;
	margin-left: 4px;
	font: normal normal normal 12px/1 'FontAwesome';
}
html.messages.general #popupCreateMessages .box > .main > .content .tag > i:before {
	content: "\f00d";
}
html.messages.general #popupCreateMessages .box > .options {
	padding: 5px 6px 5px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
html.messages.general #popupCreateMessages .box > .options > div {
	display: inline-block;
	vertical-align: top;
}
html.messages.general #popupCreateMessages .box > .options > .action > div {
	display: inline-block;
	vertical-align: top;
}
html.messages.general #popupCreateMessages .box > .options > .action > div:last-child {
	margin-right: 4px;
}
html.messages.general #popupCreateMessages .box > .options > .action > div span {
	font-size: 12px;
}













/*
body {
	overflow-y: hidden;
}
#gBox > #centerBox {
	margin: 0 0 0 4px;
	width: 689px;
}
#centerBox > div[id][class] {
	margin-top: 10px;
}
#gMessagesTab {
	display: inline-block;
	vertical-align: top;
	margin-right: 4px;
	width: 450px;
}
#gMessagesTab > .title {
	position: relative;
	margin: 4px 0;
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gMessagesTab > .title .text {
	cursor: pointer;
	color: #666;
	font: 300 14px/1.6em "Roboto";
}
#gMessagesTab > .title .settings {
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer;
	float: right;
	margin: 3px 9px 0 0;
	background: #FFF;
	box-shadow: 0 0 6px #FFF;
	color: #666;
	font: 300 13px/1.4em "FontAwesome";
}
#gMessagesTab > .title .settings:before {
	content: "\f013";
}
#gMessagesTab > .main {
	position: relative;
	background: #FFF;
}
#gMessagesTab > .main > .content {
	background: #FFF;
}
#gMessagesTab > .main > .content .data[conversation] {
	position: relative;
	overflow-y: auto;
	overflow-x: hidden;
}
#gMessagesTab > .main > .content .data[conversation] [loading] {
	width: 40%;
	margin: 5px auto;
	padding: 5px;
	text-align: center
}
#gMessagesTab > .main > .content .rows[seen] {
	position: relative;
	margin: -7px auto 7px;
	width: 90%;
	text-align: right;
}
#gMessagesTab > .main > .content .rows[seen] i,
#gMessagesTab > .main > .content .rows[seen] span {
	font-size: 12px;
	cursor: pointer;
	color: #999;
	transition: color .5s ease;
}
#gMessagesTab > .main > .content .rows[seen] i {
	font: 300 13px/1.4em "FontAwesome";
}
#gMessagesTab > .main > .content .rows[seen] i:hover {
	color: #666;
}
#gMessagesTab > .main > .content .rows[seen] i:before {
	content: "\f06e";
}
#gMessagesTab > .main > .content .rows[messages] {
	position: relative;
	margin: 5px auto;
	width: 96%;
}
#gMessagesTab > .main > .content .rows[messages].guy {
	text-align: left;
}
#gMessagesTab > .main > .content .rows[messages].me {
	text-align: right;
}
#gMessagesTab > .main > .content .rows[messages] > .author,
#gMessagesTab > .main > .content .rows[messages] > .context {
	display: inline-block;
	vertical-align: top;
}
#gMessagesTab > .main > .content .rows[messages] > .author {
	padding: 2px;
	width: 37px;
	height: 37px;
	background: #FFF;
	border: 1px solid #E5E5E5;
	border-radius: 2px;
}
#gMessagesTab > .main > .content .rows[messages] > .author img {
	width: 35px;
	height: 35px;
	background: #FFF;
	border: 1px solid #E5E5E5;
	border-radius: 2px;
}
#gMessagesTab > .main > .content .rows[messages] > .context {
	position: relative;
	padding: 5px 7px;
	background: #FFF;
	max-width: 82%;
	border: 1px solid #E5E5E5;
	border-radius: 4px;
}
#gMessagesTab > .main > .content .rows[messages].guy > .context {
	margin: 0 0 0 7px;
}
#gMessagesTab > .main > .content .rows[messages].me > .context {
	margin: 0 7px 0 0;
}
#gMessagesTab > .main > .content .rows[messages] > .context span,
#gMessagesTab > .main > .content .rows[messages] > .context a {
	vertical-align: top;
	word-wrap: break-word;
	color: #999;
	line-height: 1.6em;
	font-size: 13px;
	font-weight: 300;
	transition: color .5s ease;
}
#gMessagesTab > .main > .content .rows[messages]:hover > .context span,
#gMessagesTab > .main > .content .rows[messages]:hover > .context a {
	color: #888;
}
#gMessagesTab > .main > .content .rows[messages] > .context i[emotions-key] {
	display: inline-block;
	margin-bottom: -3px;
	height: 16px;
	width: 16px;
	background-size: 100% 100%;
	background-position: 100% 100%;
	line-height: 1.6em;
}
#gMessagesTab > .main > .content .rows[messages] > .context i[icon='typing'] {
	height: 16px;
	width: 16px;
}
#gMessagesTab > .main > .content .rows[messages] > .context > .arrow {
	display: inline-block;
	position: absolute;
	margin: 3px 0 0 0;
	height: 0;
	width: 0;
	transition: all .5s ease;
}
#gMessagesTab > .main > .content .rows[messages].guy > .context > .arrow {
	left: 0;
	margin-left: -2px;
}
#gMessagesTab > .main > .content .rows[messages].me > .context > .arrow {
	right: 0;
}
#gMessagesTab > .main > .content .rows[messages] > .context > .arrow:before {
	content: '';
	position: absolute;
	border-top: 6px solid transparent;
	border-bottom: 6px solid transparent;
}
#gMessagesTab > .main > .content .rows[messages].guy > .context > .arrow:before {
	margin-left: -4px;
	border-right: 6px solid #E5E5E5;
}
#gMessagesTab > .main > .content .rows[messages].me > .context > .arrow:before {
	margin-left: 0;
	border-left: 6px solid #E5E5E5;
}
#gMessagesTab > .main > .content .rows[messages] > .context > .arrow:after {
	content: '';
	position: absolute;
	border-top: 6px solid transparent;
	border-bottom: 6px solid transparent;
}
#gMessagesTab > .main > .content .rows[messages].guy > .context > .arrow:after {
	margin-left: -2px;
	border-right: 6px solid #FFF;
}
#gMessagesTab > .main > .content .rows[messages].me > .context > .arrow:after {
	margin-left: -2px;
	border-left: 6px solid #FFF;
}
#gMessagesTab > .main > .type {
	position: absolute;
	bottom: 0;
	margin: 0;
	padding: 0;
	width: 100%;
	background: #FFF;
	border-top: 1px solid #E5E5E5;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gMessagesTab > .main > .type > .input > textarea {
	margin: auto;
	padding: 6px;
	width: 96%;
	border: 1px solid transparent;
	border-radius: 2px;
	resize: none;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#gMessagesTab > .main > .type > .action {
	margin: auto;
	padding: 4px 2px;
	width: 96%;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
#gMessagesTab > .main > .type > .action > .scroll,
#gMessagesTab > .main > .type > .action > .send {
	display: inline-block;
	vertical-align: top;
}
#gMessagesTab > .main > .type > .action > .scroll > .checkbox,
#gMessagesTab > .main > .type > .action > .send > .checkbox {
	display: inline-block;
	vertical-align: top;
	margin: 3px 4px 1px 0;
}
#gMessagesTab > .main > .type > .action > .scroll > .checkbox input,
#gMessagesTab > .main > .type > .action > .send > .checkbox input {
	cursor: pointer;
	margin: 3px 0 0 0;
}
#gMessagesTab > .main > .type > .action > .scroll > .checkbox label,
#gMessagesTab > .main > .type > .action > .send > .checkbox label {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	line-height: 1.6em;
	color: #999;
}
#gMessagesTab > .main > .type > .action > .send {
	
}
#gMessagesTab > .main > .type > .action > .send > button {
	padding: 3px 5px;
	font-size: 12px;
}
#gMessagesTab > .main > .type > .action > .scroll {
	float: left;
}
#gMessagesList {
	display: inline-block;
	vertical-align: top;
	margin-right: -1px;
	width: 228px;
}
#gMessagesList > .title {
	position: relative;
	margin: 4px 0;
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gMessagesList > .title .text {
	cursor: pointer;
	color: #666;
	font: 300 14px/1.6em "Roboto";
}
#gMessagesList > .main {
	padding: 0 0 4px;
}
#gMessagesList > .main > .content {
	
}
#gMessagesList > .main > .content > .data {
	
}
#gMessagesList > .main > .content > .data > .rows {
	overflow: hidden;
	cursor: pointer;
	margin: 1% auto;
	padding: 1%;
	width: 94%;
	border: none;
	border-radius: 2px;
}
#gMessagesList > .main > .content > .data > .rows > .avatar,
#gMessagesList > .main > .content > .data > .rows > .info {
	display: inline-block;
	vertical-align: top;
}
#gMessagesList > .main > .content > .data > .rows > .avatar {
	overflow: hidden;
	height: 50px;
	width: 50px;
	border-radius: 2px;
}
#gMessagesList > .main > .content > .data > .rows > .avatar .img {
	box-sizing: border-box;
	float: left;
	overflow: hidden;
	background-size: cover;
	background-position: 50% 50%;
}
#gMessagesList > .main > .content > .data > .rows > .avatar.s_fr .img {
	width: 25px;
	height: 25px;
}
#gMessagesList > .main > .content > .data > .rows > .avatar.s_te .img:nth-child(1) {
	width: 25px;
	height: 50px;
}
#gMessagesList > .main > .content > .data > .rows > .avatar.s_te .img:nth-child(2),
#gMessagesList > .main > .content > .data > .rows > .avatar.s_te .img:nth-child(3) {
	width: 25px;
	height: 25px;
}
#gMessagesList > .main > .content > .data > .rows > .info {
	overflow: hidden;
	width: 160px;
}
#gMessagesList > .main > .content > .data > .rows > .info > .name {
	
}
#gMessagesList > .main > .content > .data > .rows > .info > .name span {
	color: #777;
	font-size: 13px;
	font-weight: 700;
	line-height: 1.4em;
}
#gMessagesList > .main > .content > .data > .rows > .info > .name i {
	margin-right: 4px;
	color: #888;
	font: normal 300 12px/1em "FontAwesome";
}
#gMessagesList > .main > .content > .data > .rows > .info > .name i:before {
	content: "\f0c0";
}
#gMessagesList > .main > .content > .data > .rows > .info > .time span,
#gMessagesList > .main > .content > .data > .rows > .info > .text span {
	color: #777;
	font-size: 12px;
	font-weight: 300;
	line-height: 1.4em;
}
#gMessagesList > .main > .content > .data > .rows > .info > .time i,
#gMessagesList > .main > .content > .data > .rows > .info > .text i {
	margin-right: 4px;
	color: #888;
	font: normal 300 12px/1em "FontAwesome";
}
#gMessagesList > .main > .content > .data > .rows > .info > .time i:before {
	content: "\f017";
}
#gMessagesList > .main > .content > .data > .rows > .info > .text i:before {
	content: "\f10c";
}
#gMessagesList > .main > .content > .data > .rows > .info > .text.viewed i:before {
	content: "\f111";
}
#gMessagesList > .main > .content > .data > .rows.load_more {
	padding: 2%;
	width: 90%;
	border: 1px solid #E0E0E0;
	text-align: center;
}
#gMessagesList > .main > .content > .data > .rows.load_more span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
}
*/