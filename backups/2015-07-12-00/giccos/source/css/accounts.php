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
	background-color: rgba(17, 17, 17, 0.25);
	z-index: 2;
}
html.accounts.login #gBox > #wrapBox.blur > .filter {
	background-color: rgba(17, 17, 17, 0.5);
}
html.accounts.login #gBox > #wrapBox > .background {
	position: absolute;
	top: 0;
	left: -1%;
	width: 102%;
	height: 102%;
	background-color: #777;
	background-repeat: no-repeat;
  	background-size: cover;
  	background-position: 50% 50%;
  	z-index: 1;
}
html.accounts.login #gBox > #wrapBox > .background {
	-webkit-filter: blur(7.5px);
	-moz-filter: blur(7.5px);
	-o-filter: blur(7.5px);
	filter: blur(7.5px);
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
	padding: 10px 0 20px;
	background: rgba(255, 255, 255, 0.1);
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
	font: normal 400 5em/1em "Roboto";
}
html.accounts.login #gBox > #centerBox > #headerBox > .lines.desc span {
	font: normal 400 2.5em/1em "Roboto";
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
	padding: 5px 0;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines {
	padding: 2px 0;
	text-align: center;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines label {
	display: block;
	text-align: left;
	margin: auto;
	padding: 0 0 2px;
	color: #777;
	font: normal 400 11px/1.6em "Roboto";
	text-indent: 2px;
	text-transform: uppercase;
	width: 91%;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines label.hide {
	display: none;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines input {
	padding: 6px 8px 7px;
	width: 86%;
	border: 1px solid #DDD;
	border-radius: 4px;
	color: #999;
	font-size: 12px;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines input:focus {
	color: #777;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines.quickinfo {
		
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines.quickinfo label {
	text-align: center;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines.quickinfo .avatar {
	margin: 5px auto;
	width: 100px;
	height: 100px;
	border: none;
	border-radius: 180px;
	background-size: cover;
	background-position: 50% 50%;
	background-image: url(https://ssl.gstatic.com/accounts/ui/avatar_2x.png);
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox {
	
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .dot,
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .text {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
}
html.accounts.login #gBox > #centerBox > #loginBox > .body > .lines .checkbox > .dot {
	position: absolute;
	margin: 7px;
	border: 1px solid #DDD;
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
	font: normal 400 12px/1em "Roboto";
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
	padding: 3px 6px 3px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
html.accounts.login #gBox > #centerBox > #loginBox > .footer span {
	cursor: pointer;
	color: #666;
	font: normal 300 10px/1em "Roboto";
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
	margin: 0 2px;
	padding: 2px 4px;
	border: none;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .icon {
	display: inline-block;
	vertical-align: top;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li > .icon > i {
	
}
html.accounts.login #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li a {
	cursor: pointer;
	text-shadow: 0 1px 1px rgba(75, 75, 75, 0.25);
	color: rgba(255, 255, 255, 0.75);
	font: normal 400 12px/1em "Roboto";
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	-o-transition: color .5s ease;
	transition: color .5s ease;
}
html.accounts.login #gBox > #centerBox > #footerBox > .li:hover a,
html.accounts.login #gBox > #centerBox > #footerBox > .li.selected a {
	color: rgba(255, 255, 255, 1);
}





html.accounts.register body {
	overflow: hidden;
}
html.accounts.register {
	
}
html.accounts.register #gBox {
	margin: 0;
	padding: 0;
	width: 100%;
}
html.accounts.register #gBox > #wrapBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
}
html.accounts.register #gBox > #wrapBox > .filter,
html.accounts.register #gBox > #wrapBox > .background {
	
}
html.accounts.register #gBox > #wrapBox > .filter {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(17, 17, 17, 0.25);
	z-index: 2;
}
html.accounts.register #gBox > #wrapBox.blur > .filter {
	background-color: rgba(17, 17, 17, 0.5);
}
html.accounts.register #gBox > #wrapBox > .background {
	position: absolute;
	top: 0;
	left: -1%;
	width: 102%;
	height: 102%;
	background-color: #777;
	background-repeat: no-repeat;
  	background-size: cover;
  	background-position: 50% 50%;
  	z-index: 1;
}
html.accounts.register #gBox > #wrapBox > .background {
	-webkit-filter: blur(7.5px);
	-moz-filter: blur(7.5px);
	-o-filter: blur(7.5px);
	filter: blur(7.5px);
}
html.accounts.register #gBox > #centerBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 2;
}
html.accounts.register #gBox > #centerBox > #headerBox {
	margin: auto;
	padding: 10px 0 20px;
	background: rgba(255, 255, 255, 0.1);
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.register #gBox > #centerBox > #headerBox > .lines {
	margin: auto;
	padding: 5px 0;
	text-align: center;
}
html.accounts.register #gBox > #centerBox > #headerBox > .lines.border {
	margin: 0 auto;
	padding: 0;
	width: 25%;
	height: 1px;
}
html.accounts.register #gBox > #centerBox > #headerBox > .lines span {
	color: #FFF;
	text-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
html.accounts.register #gBox > #centerBox > #headerBox > .lines.title span {
	font: normal 400 5em/1em "Roboto";
}
html.accounts.register #gBox > #centerBox > #headerBox > .lines.desc span {
	font: normal 400 2.5em/1em "Roboto";
}
html.accounts.register #gBox > #centerBox > .box {
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
html.accounts.register #gBox > #centerBox > .box.active {
	-webkit-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	-moz-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
}
html.accounts.register #gBox > #centerBox > #registerBox {
	margin: auto;
	margin: auto;
	width: 300px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .header {
	padding: 4px 6px 6px;
	border-bottom: 1px solid #E5E5E5;
	text-align: left;
	text-indent: 8px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .header span {
	cursor: pointer;
	color: #666;
	font: normal 300 16px/1.6em "Roboto";
	text-transform: uppercase;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body {
	padding: 5px 0;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines label,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows label {
	display: block;
	text-align: left;
	margin: auto;
	padding: 0 0 2px;
	color: #777;
	font: normal 400 11px/1.6em "Roboto";
	text-indent: 2px;
	text-transform: uppercase;
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	-o-transition: color .5s ease;
	transition: color .5s ease;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.error label,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows.error label {
	color: red;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines label {
	width: 91%;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows label {
	width: 98%;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines label.hide,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows label.hide {
	display: none;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines input,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows input {
	padding: 6px 8px 7px;
	width: 86%;
	border: 1px solid #DDD;
	border-radius: 4px;
	color: #999;
	font-size: 12px;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines input:focus,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows input:focus {
	color: #777;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.gender {
	
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.gender .input {
	margin: auto;
	padding: 3px 9px;
	width: 85%;
	background: #E9E9E9;
	border: none;
	border-radius: 4px;
	text-align: left;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.gender .input > .checkbox {
	margin: 0 -6px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.gender .input > .checkbox > .text {
	padding-left: 22px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.birthday .input.birthday {
	margin: 0 2px;
	width: 20%;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines.birthday .input.birthday.years {
	width: 28%;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines {
	padding: 2px 0;
	text-align: center;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines:first-child {
	padding-top: 14px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines:last-child {
	padding: 4px 0;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows {
	display: inline-block;
	vertical-align: top;
	width: 45.25%;
	padding: 2px 1px;
	text-align: center;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows.odd {
	margin-left: 11px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .dot,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .text,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .dot,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .text {
	display: inline-block;
	vertical-align: top;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .dot,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .dot {
	position: absolute;
	margin: 7px;
	border: 1px solid #DDD;
	height: 10px;
	width: 10px;
	-webkit-border-radius: 180px;
	-moz-border-radius: 180px;
	border-radius: 180px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox.active > .dot,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox.active > .dot {
	border-color: #FFF;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .dot > div,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .dot > div {
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
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox.active > .dot > div,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox.active > .dot > div {
	background: #CCC;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .text,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .text {
	padding: 5px 8px 5px 24px;
	background: #E9E9E9;
	border: none;
	border-radius: 4px;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .text span,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .text span,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines .checkbox > .text a,
html.accounts.register #gBox > #centerBox > #registerBox > .body > .rows .checkbox > .text a {
	color: #BBB;
	font: normal 400 12px/1em "Roboto";
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines i.button.register {
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
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines i.button.register:hover {
	background: #BBB;
	color: #FFF;
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines i.button.register:before {
	content: "\f054";
}
html.accounts.register #gBox > #centerBox > #registerBox > .body > .lines button.button.register {
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
html.accounts.register #gBox > #centerBox > #registerBox > .footer {
	padding: 3px 6px 3px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
html.accounts.register #gBox > #centerBox > #registerBox > .footer span {
	cursor: pointer;
	color: #666;
	font: normal 300 10px/1em "Roboto";
	text-transform: uppercase;
}
html.accounts.register #gBox > #centerBox > #footerBox {
	margin: auto;
	text-align: center;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.register #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
	margin: 0 2px;
	padding: 2px 4px;
	border: none;
}
html.accounts.register #gBox > #centerBox > #footerBox > .li > .icon {
	display: inline-block;
	vertical-align: top;
}
html.accounts.register #gBox > #centerBox > #footerBox > .li > .icon > i {
	
}
html.accounts.register #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
}
html.accounts.register #gBox > #centerBox > #footerBox > .li a {
	cursor: pointer;
	text-shadow: 0 1px 1px rgba(75, 75, 75, 0.25);
	color: rgba(255, 255, 255, 0.75);
	font: normal 400 12px/1em "Roboto";
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	-o-transition: color .5s ease;
	transition: color .5s ease;
}
html.accounts.register #gBox > #centerBox > #footerBox > .li:hover a,
html.accounts.register #gBox > #centerBox > #footerBox > .li.selected a {
	color: rgba(255, 255, 255, 1);
}





html.accounts.getpassword body {
	overflow: hidden;
}
html.accounts.getpassword {
	
}
html.accounts.getpassword #gBox {
	margin: 0;
	padding: 0;
	width: 100%;
}
html.accounts.getpassword #gBox > #wrapBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
}
html.accounts.getpassword #gBox > #wrapBox > .filter,
html.accounts.getpassword #gBox > #wrapBox > .background {
	
}
html.accounts.getpassword #gBox > #wrapBox > .filter {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(17, 17, 17, 0.25);
	z-index: 2;
}
html.accounts.getpassword #gBox > #wrapBox.blur > .filter {
	background-color: rgba(17, 17, 17, 0.5);
}
html.accounts.getpassword #gBox > #wrapBox > .background {
	position: absolute;
	top: 0;
	left: -1%;
	width: 102%;
	height: 102%;
	background-color: #777;
	background-repeat: no-repeat;
  	background-size: cover;
  	background-position: 50% 50%;
  	z-index: 1;
}
html.accounts.getpassword #gBox > #wrapBox > .background {
	-webkit-filter: blur(7.5px);
	-moz-filter: blur(7.5px);
	-o-filter: blur(7.5px);
	filter: blur(7.5px);
}
html.accounts.getpassword #gBox > #centerBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 2;
}
html.accounts.getpassword #gBox > #centerBox > #headerBox {
	margin: auto;
	padding: 10px 0 20px;
	background: rgba(255, 255, 255, 0.1);
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.getpassword #gBox > #centerBox > #headerBox > .lines {
	margin: auto;
	padding: 5px 0;
	text-align: center;
}
html.accounts.getpassword #gBox > #centerBox > #headerBox > .lines.border {
	margin: 0 auto;
	padding: 0;
	width: 25%;
	height: 1px;
}
html.accounts.getpassword #gBox > #centerBox > #headerBox > .lines span {
	color: #FFF;
	text-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
html.accounts.getpassword #gBox > #centerBox > #headerBox > .lines.title span {
	font: normal 400 5em/1em "Roboto";
}
html.accounts.getpassword #gBox > #centerBox > #headerBox > .lines.desc span {
	font: normal 400 2.5em/1em "Roboto";
}
html.accounts.getpassword #gBox > #centerBox > .box {
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
html.accounts.getpassword #gBox > #centerBox > .box.active {
	-webkit-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	-moz-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox {
	margin: auto;
	margin: auto;
	width: 300px;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .header {
	padding: 4px 6px 6px;
	border-bottom: 1px solid #E5E5E5;
	text-align: left;
	text-indent: 8px;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .header span {
	cursor: pointer;
	color: #666;
	font: normal 300 16px/1.6em "Roboto";
	text-transform: uppercase;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body {
	padding: 5px 0;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines {
	padding: 2px 0;
	text-align: center;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines:last-child {
	padding: 4px 0;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines label {
	display: block;
	text-align: left;
	margin: auto;
	padding: 0 0 2px;
	color: #777;
	font: normal 400 11px/1.6em "Roboto";
	text-indent: 2px;
	text-transform: uppercase;
	width: 91%;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines label.hide {
	display: none;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines input {
	padding: 6px 8px 7px;
	width: 86%;
	border: 1px solid #DDD;
	border-radius: 4px;
	color: #999;
	font-size: 12px;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines input[disabled] {
	cursor: pointer;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines input:focus {
	color: #777;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox > .dot,
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox > .text {
	display: inline-block;
	vertical-align: top;
	color: #999;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox > .dot {
	position: absolute;
	margin: 7px;
	border: 1px solid #DDD;
	height: 10px;
	width: 10px;
	-webkit-border-radius: 180px;
	-moz-border-radius: 180px;
	border-radius: 180px;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox.active > .dot {
	border-color: #FFF;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox > .dot > div {
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
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox.active > .dot > div {
	background: #CCC;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .checkbox > .text {
	padding: 5px 8px 5px 24px;
	background: #E9E9E9;
	border: none;
	border-radius: 4px;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines .confirm > .text > span {
	color: #BBB;
	font: normal 400 12px/1em "Roboto";
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines i.button.getpassword {
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
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines i.button.getpassword:hover {
	background: #BBB;
	color: #FFF;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines i.button.getpassword:before {
	content: "\f054";
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .body > .lines button.button.getpassword {
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
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .footer {
	padding: 3px 6px 3px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
html.accounts.getpassword #gBox > #centerBox > #getpasswordBox > .footer span {
	cursor: pointer;
	color: #666;
	font: normal 300 10px/1em "Roboto";
	text-transform: uppercase;
}
html.accounts.getpassword #gBox > #centerBox > #footerBox {
	margin: auto;
	text-align: center;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
	margin: 0 2px;
	padding: 2px 4px;
	border: none;
}
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li > .icon {
	display: inline-block;
	vertical-align: top;
}
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li > .icon > i {
	
}
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
}
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li a {
	cursor: pointer;
	text-shadow: 0 1px 1px rgba(75, 75, 75, 0.25);
	color: rgba(255, 255, 255, 0.75);
	font: normal 400 12px/1em "Roboto";
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	-o-transition: color .5s ease;
	transition: color .5s ease;
}
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li:hover a,
html.accounts.getpassword #gBox > #centerBox > #footerBox > .li.selected a {
	color: rgba(255, 255, 255, 1);
}





html.accounts.active body {
	overflow: hidden;
}
html.accounts.active {
	
}
html.accounts.active #gBox {
	margin: 0;
	padding: 0;
	width: 100%;
}
html.accounts.active #gBox > #wrapBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
}
html.accounts.active #gBox > #wrapBox > .filter,
html.accounts.active #gBox > #wrapBox > .background {
	
}
html.accounts.active #gBox > #wrapBox > .filter {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(17, 17, 17, 0.25);
	z-index: 2;
}
html.accounts.active #gBox > #wrapBox.blur > .filter {
	background-color: rgba(17, 17, 17, 0.5);
}
html.accounts.active #gBox > #wrapBox > .background {
	position: absolute;
	top: 0;
	left: -1%;
	width: 102%;
	height: 102%;
	background-color: #777;
	background-repeat: no-repeat;
  	background-size: cover;
  	background-position: 50% 50%;
  	z-index: 1;
}
html.accounts.active #gBox > #wrapBox > .background {
	-webkit-filter: blur(7.5px);
	-moz-filter: blur(7.5px);
	-o-filter: blur(7.5px);
	filter: blur(7.5px);
}
html.accounts.active #gBox > #centerBox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 2;
}
html.accounts.active #gBox > #centerBox > #headerBox {
	margin: auto;
	padding: 10px 0 20px;
	background: rgba(255, 255, 255, 0.1);
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.active #gBox > #centerBox > #headerBox > .lines {
	margin: auto;
	padding: 5px 0;
	text-align: center;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo {
		
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo > .thumbnail .img {
	margin: 5px auto;
	width: 100px;
	height: 100px;
	border: none;
	border-radius: 180px;
	background-size: cover;
	background-position: 50% 50%;
	background-image: url(https://ssl.gstatic.com/accounts/ui/avatar_2x.png);
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo > .thumbnail .img img {
	display: none;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo > .textinfo {
	
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo > .textinfo > div {
	text-align: left;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo > .textinfo > div label {
	display: inline-block;
	margin-left: 16px;
	width: 40%;
	text-align: right;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines.quickinfo > .textinfo > div span {
	margin-left: 0;
	color: #666;
	font-size: 13px;
	font-weight: 400;
}
html.accounts.active #gBox > #centerBox > #headerBox > .lines.border {
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
html.accounts.active #gBox > #centerBox > #headerBox > .lines span {
	color: #FFF;
	text-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
html.accounts.active #gBox > #centerBox > #headerBox > .lines.title span {
	font: normal 400 5em/1em "Roboto";
}
html.accounts.active #gBox > #centerBox > #headerBox > .lines.desc span {
	font: normal 400 2.5em/1em "Roboto";
}
html.accounts.active #gBox > #centerBox > .box {
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
html.accounts.active #gBox > #centerBox > .box.active {
	-webkit-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	-moz-box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
  	box-shadow: 0 0 10px rgba(125, 125, 125, 0.25);
}
html.accounts.active #gBox > #centerBox > #activeBox {
	margin: auto;
	margin: auto;
	width: 300px;
}
html.accounts.active #gBox > #centerBox > #activeBox > .header {
	padding: 4px 6px 6px;
	border-bottom: 1px solid #E5E5E5;
	text-align: left;
	text-indent: 8px;
}
html.accounts.active #gBox > #centerBox > #activeBox > .header span {
	cursor: pointer;
	color: #666;
	font: normal 300 16px/1.6em "Roboto";
	text-transform: uppercase;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body {
	padding: 5px 0;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines {
	padding: 2px 0;
	text-align: center;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines label {
	display: block;
	text-align: left;
	margin: auto;
	padding: 0 0 2px;
	color: #777;
	font: normal 400 11px/1.6em "Roboto";
	text-indent: 2px;
	text-transform: uppercase;
	width: 91%;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines label.hide {
	display: none;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines input {
	padding: 6px 8px 7px;
	width: 86%;
	border: 1px solid #DDD;
	border-radius: 4px;
	color: #999;
	font-size: 12px;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines input:focus {
	color: #777;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines i.button.active {
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
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines i.button.active:hover {
	background: #BBB;
	color: #FFF;
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines i.button.active:before {
	content: "\f054";
}
html.accounts.active #gBox > #centerBox > #activeBox > .body > .lines button.button.active {
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
html.accounts.active #gBox > #centerBox > #activeBox > .footer {
	padding: 3px 6px 3px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
html.accounts.active #gBox > #centerBox > #activeBox > .footer span {
	cursor: pointer;
	color: #666;
	font: normal 300 10px/1em "Roboto";
	text-transform: uppercase;
}
html.accounts.active #gBox > #centerBox > #footerBox {
	margin: auto;
	text-align: center;
	-webkit-transition: .5s all ease;
	-moz-transition: .5s all ease;
	-o-transition: .5s all ease;
	transition: .5s all ease;
}
html.accounts.active #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
	margin: 0 2px;
	padding: 2px 4px;
	border: none;
}
html.accounts.active #gBox > #centerBox > #footerBox > .li > .icon {
	display: inline-block;
	vertical-align: top;
}
html.accounts.active #gBox > #centerBox > #footerBox > .li > .icon > i {
	
}
html.accounts.active #gBox > #centerBox > #footerBox > .li {
	display: inline-block;
	vertical-align: top;
}
html.accounts.active #gBox > #centerBox > #footerBox > .li a {
	cursor: pointer;
	text-shadow: 0 1px 1px rgba(75, 75, 75, 0.25);
	color: rgba(255, 255, 255, 0.75);
	font: normal 400 12px/1em "Roboto";
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	-o-transition: color .5s ease;
	transition: color .5s ease;
}
html.accounts.active #gBox > #centerBox > #footerBox > .li:hover a,
html.accounts.active #gBox > #centerBox > #footerBox > .li.selected a {
	color: rgba(255, 255, 255, 1);
}