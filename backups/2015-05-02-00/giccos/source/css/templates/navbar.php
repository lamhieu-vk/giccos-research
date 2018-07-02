#gNavbar {
	z-index: 100;
	position: fixed;
	top: 0;
	left: -1px;
	height: 45px;
	width: 100%;
	background: #FFF;
	border: 1px solid;
	border-color: transparent;
	border-top-width: 3px;
	border-top-color: #AAA;
	border-bottom-width: 1px;
	border-bottom-color: #E4E4E4;
	box-shadow: 0 0 6px #E2E2E2;
}
#gNavbar > .content {
	margin: auto;
	width: 950px;
}
#gNavbar > .content > div {
	display: inline-block;
	vertical-align: top;
	height: 45px;
}
#gNavbar > .content > .leftBox {

}
#gNavbar > .content > .leftBox > .logo {
	cursor: pointer;
	display: inline-block;
	margin: 7px 0 0 0;
	width: 30px;
	height: 30px;
	background-color: #AAA;
	border-radius: 2px;
	text-align: center;
}
#gNavbar > .content > .leftBox > .logo span {
	font-size: 22px;
	font-weight: bold;
	color: #FFF;
	line-height: 1.45em;
}
#gNavbar > .content > .centerBox > .search {
	margin: 7px 0 0 0;
	width: 100%;
}
#gNavbar > .content > .centerBox > .search > .input {
	margin-top: -0.25%;
	padding: 1.5%;
	width: 97%;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
	resize: none;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#gNavbar > .content > .centerBox > .search > .input:hover,
#gNavbar > .content > .centerBox > .search > .input:focus {
	background-color: #EFEFEF;
	box-shadow: inset 0 0 4px #E0E0E0;
}
#gNavbar > .content > .centerBox {
	margin: auto .5%;
	width: 35%;
}
#gNavbar > .content > .rightBox {
	
}
#gNavbar > .content > .rightBox > .button {
	margin-top: 10px;
}
#gNavbar > .content > .rightBox > .button > div {
	position: relative;
	display: inline-block;
	vertical-align: top;
	margin: 0 10px;
}
#gNavbar > .content > .rightBox > .button > div:first-child {
	margin-left: 0;
}
#gNavbar > .content > .rightBox > .button > div:last-child {
	margin-right: 0;
}
#gNavbar > .content > .rightBox > .button > div > span {
	position: absolute;
	margin: -7.5px 0 0 7.5px;
	padding: 1px 4px;
	background: #999;
	border: 1px solid #FFF;
	border-radius: 2px;
	cursor: pointer;
	color: #FFF;
	font-size: 12px;
	font-weight: 300;
	transition: all .5s ease;
}
#gNavbar > .content > .rightBox > .button > div:hover > span {
	background: #FFF;
	color: #999;
}
#gNavbar > .content > .rightBox > .button > div > i {
	cursor: pointer;
	color: #999;
	font-size: 24px;
	font-weight: 300;
}
#gNavbar > .content > .rightBox > .button > .friends {
	
}
#gNavbar > .content > .rightBox > .button > .friends > i:before {
	content: "\f007";
}
#gNavbar > .content > .rightBox > .button > .messages {
	
}
#gNavbar > .content > .rightBox > .button > .messages > i:before {
	content: "\f086";
}
#gNavbar > .content > .rightBox > .button > .notifications {
	
}
#gNavbar > .content > .rightBox > .button > .notifications > i:before {
	content: "\f0f3";
}