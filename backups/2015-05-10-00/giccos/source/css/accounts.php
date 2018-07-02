html.accounts.login body {
	overflow: hidden;
}
html.accounts.login {
	
}
html.accounts.login #gBox {
	margin: 0;
	padding: 0;
	width: 100%;
}
html.accounts.login #gBox > #wrapBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
}
html.accounts.login #gBox > #wrapBox > .filter,
html.accounts.login #gBox > #wrapBox > .background {
	
}
html.accounts.login #gBox > #wrapBox > .filter {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(17, 17, 17, 0.1);
	z-index: 2;
}
html.accounts.login #gBox > #wrapBox.blur > .filter {
	background-color: rgba(17, 17, 17, 0.2);
}
html.accounts.login #gBox > #wrapBox > .background {
	position: absolute;
	top: 0;
	left: -1%;
	width: 102%;
	height: 102%;
	background-repeat: no-repeat;
  	background-size: cover;
  	background-position: 50% 50%;
  	z-index: 1;
}
html.accounts.login #gBox > #wrapBox > .background {
	-webkit-filter: blur(5px);
	-moz-filter: blur(5px);
	-o-filter: blur(5px);
	filter: blur(5px);
}
html.accounts.login #gBox > #centerBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 2;
}
html.accounts.login #gBox > #centerBox > #headerBox {
	margin: auto;
	padding: 20px 0;
	background: rgba(255, 255, 255, 0.15);
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.login #gBox > #centerBox > #headerBox > .lines {
	margin: auto;
	padding: 5px 0;
	text-align: center;
}
html.accounts.login #gBox > #centerBox > #headerBox > .lines.border {
	margin: 0 auto;
	padding: 0;
	width: 25%;
	height: 1px;
	/*
	border-top: 1px dotted rgba(255, 255, 255, 0.9);
	*/
	/*
	border-top: 1px solid rgba(40, 40, 40, 0.2);
  	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.5);
	*/
}
html.accounts.login #gBox > #centerBox > #headerBox > .lines span {
	color: #FFF;
	text-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
html.accounts.login #gBox > #centerBox > #headerBox > .lines.title span {
	font: normal 400 3.5em/1em "Roboto";
}
html.accounts.login #gBox > #centerBox > #headerBox > .lines.desc span {
	font: normal 400 2em/1em "Roboto";
}
html.accounts.login #gBox > #centerBox > .box {
	background: #FFF;
 	border: 1px solid #FFFFFF;
  	-webkit-box-shadow: 0 0 10px rgba(75, 75, 75, 0.25);
  	-moz-box-shadow: 0 0 10px rgba(75, 75, 75, 0.25);
  	box-shadow: 0 0 10px rgba(75, 75, 75, 0.25);
  	-webkit-border-radius: 4px;
  	-moz-border-radius: 4px;
  	border-radius: 4px;
  	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.login #gBox > #centerBox > .box.active {
	-webkit-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	-moz-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
}
html.accounts.login #gBox > #centerBox > #loginBox {
	margin: auto;
	margin: auto;
	width: 300px;
	height: 235px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .header {
	padding: 4px 6px 6px;
	border-bottom: 1px solid #E5E5E5;
	text-align: left;
	text-indent: 8px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .header span {
	cursor: pointer;
	color: #666;
	font: normal 300 16px/1.6em "Roboto";
	text-transform: uppercase;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body {
	height: 175px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines {
	padding: 4px 0;
	text-align: center;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines:first-child {
	padding-top: 14px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines label {
	display: none;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines input {
	padding: 7px 8px;
	width: 85%;
	border: 1px solid #DDD;
	border-radius: 4px;
	color: #999;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines input:focus {
	color: #777;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox {
	cursor: pointer;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .dot,
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .text {
	display: inline-block;
	vertical-align: top;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .dot {
	position: absolute;
	margin: 7px;
	border: 1px solid #E2E2E2;
	height: 10px;
	width: 10px;
	-webkit-border-radius: 180px;
	-moz-border-radius: 180px;
	border-radius: 180px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox.active > .dot {
	border-color: #FFF;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .dot > div {
	width: 100%;
	height: 100%;
	background: #FFF;
	border: none;
	-webkit-border-radius: 180px;
	-moz-border-radius: 180px;
	border-radius: 180px;
	-webkit-transition: .5s background ease;
	-moz-transition: .5s background ease;
	-o-transition: .5s background ease;
	transition: .5s background ease;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox.active > .dot > div {
	background: #CCC;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .text {
	padding: 5px 8px 5px 24px;
	background: #E9E9E9;
	border: none;
	border-radius: 4px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .text > span {
	color: #BBB;
	font-size: 12px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines i.button.login {
	cursor: pointer;
	padding: 10px 12px 9px 14px;
	background: #E9E9E9;
	border: none;
	border-radius: 180px;
	color: #BBB;
	font: normal 300 16px/2.4em "FontAwesome";
	-webkit-transition: .5s background, color ease;
	-moz-transition: .5s background, color ease;
	-o-transition: .5s background, color ease;
	transition: .5s background, color ease;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines i.button.login:hover {
	background: #BBB;
	color: #FFF;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines i.button.login:before {
	content: "\f054";
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines button.button.login {
	cursor: pointer;
	padding: 7px 8px;
	width: 86%;
	background-color: #9D9D9D;
	background-image: linear-gradient(to bottom, #E8E8E8, #E2E2E2);
	border: 1px solid #DDDDDD;
	color: #8B8B8B;
	font-size: 12px;
	font-weight: bold;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.5);
	border-radius: 4px;
}
html.accounts.login #gBox > #centerBox > #loginBox > .footer {
	margin-right: 6px;
	padding: 3px 6px 3px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
html.accounts.login #gBox > #centerBox > #loginBox > .footer span {
	cursor: pointer;
	color: #666;
	font: normal 300 10px/1.6em "Roboto";
	text-transform: uppercase;
}
html.accounts.login #gBox > #centerBox > #footerBox {
	margin: auto;
	text-align: center;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
	padding: 6px 8px;
	border: none;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .icon {
	display: inline-block;
	vertical-align: top;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .icon > i {
	
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .text {
	display: inline-block;
	vertical-align: top;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .text span {
	
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .icon > i:before {
	
}