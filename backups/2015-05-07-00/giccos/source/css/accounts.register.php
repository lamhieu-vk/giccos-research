#navCover {
	overflow: hidden;
	position: relative;
	width: 100%;
	height: 200px;
}
.navCover-wrap {
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
}
.navCover-img {
	width: 100%;
	height: 100%;
	background: #FFF url(<?php print $_tool->links('photos/raw/static/CoverPage_accounts.jpg'); ?>) no-repeat;
	background-size: cover;
	background-position: 50% 50%;
}
.navCover-text {
	z-index: 2;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.navCover-text > div {
	text-align: center;
}
.navCover-text > div span,
.navCover-text > div a {
	color: #FFF;
	font-family: Roboto;
	font-weight: 400;
	line-height: 1.2em;
	text-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
}
.navCover-text > div:nth-child(1) {
	margin-top: -.5em;
}
.navCover-text > div:nth-child(1) span {
	font-size: 50px;
}
.navCover-text > div:nth-child(2) span {
	font-size: 25px;
}
.navCover-text > div:nth-child(3) {
	position: absolute;
	margin-top: 15px;
	width: 250px;
	border-top: 1px dotted #CCC;
	transition: border-color .5s ease;
}
.navCover-text > div:nth-child(3):hover {
	border-top-color: #FFF;
}
.navCover-text > div:nth-child(3) > div {
	display: inline-block;
	vertical-align: top;
	margin: auto 5px;
}
.navCover-text > div:nth-child(3) > div a {
	text-transform: lowercase;
	color: #CCC;
	font-size: 13px;
	line-height: 2.5em;
}
.navCover-text > div:nth-child(3) > div:hover a {
	color: #FFF;
}
#wrapBox {
	width: 100%;
}
.boxForm {
	width: 300px;
	background-color: #FFF;
}
.boxForm > .title {
	margin: auto;
	padding: 3px 0;
	width: 96%;
	border-bottom: 1px solid #DDD;
	text-indent: 5px;
}
.boxForm > .title span {
	line-height: 2em;
	color: #777;
	font-size: 14px;
	font-family: Roboto;
}
.boxForm > .title i {
	vertical-align: top;
	margin-top: 5px;
	margin-right: 2px;
	line-height: 1.4em;
	color: #777;
	font-size: 14px;
}
.boxForm > .title i.error {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: rgb(250, 90, 141);
}
.boxForm > .content {
	margin: auto;
	padding: 4px 0 4px;
	width: 98%;
	text-align: center;
}
.boxForm > .content > .lines {
	margin: 8px auto;
	width: 92%;
}
.boxForm > .content > .lines:last-child {
	padding: 8px 0 0;
	border-top: 1px dotted #DDD;
}
.boxForm > .content > .lines label {
	position:relative;
}
.boxForm > .content > .lines label:after {
    position: absolute;
    pointer-events: none;
    content: '<>';
    font: 11px "Consolas", monospace;
    color: #999;
    transform:rotate(90deg);
    right: 10px;
    top: 2px;
    padding: 0 0 2px;
    border-bottom: 1px solid #CCC;
}
.boxForm > .content > .lines label:before {
    position: absolute;
    pointer-events: none;
    display: block;
    content: '';
    background-color: #EBEBEB;
}
.boxForm > .content > .lines.b-3 label:before {
    right: 8px;
	top: -4px;
	width: 26px;
	height: 28px;
}
.boxForm > .content > .lines.b-2 label:before {
	right: 2px;
	top: -4px;
	width: 26px;
	height: 28px;
}
.boxForm > .content > .lines input,
.boxForm > .content > .lines button,
.boxForm > .content > .lines select {
	padding: 3%;
	width: 93%;
	background-color: #EBEBEB;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
	line-height: 1.4em;
	font-size: 13px;
	font-weight: 100;
	color: #999;
	transition: all .5s ease;
}
.boxForm > .content > .lines button {
	cursor: pointer;
}
.boxForm > .content > .lines.b-1 button {
	width: 85%;
}
.boxForm > .content > .lines.b-1 > div {
	position: relative;
	display: inline-block;
	vertical-align: top;
	margin-right: 1%;
	width: 28px;
	height: 28px;
	background-color: #EBEBEB;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
}
.boxForm > .content > .lines.b-1 > div > div {
	cursor: pointer;
	position: absolute;
	top: 6px;
	left: 6px;
	width: 14px;
	height: 14px;
	border-radius: 2px;
}
.boxForm > .content > .lines.b-1 > div > div[agree='true'] {
	background-color: #E5E5E5;
	border: 1px solid #D5D5D5;
	box-shadow: inset 0 0 1px #CCC;
}
.boxForm > .content > .lines.b-1 > div > div[agree='false'] {
	background-color: #FFF;
	border: 1px solid #E0E0E0;
}
.boxForm > .content > .lines.b-2 select {
	width: 48%;
}
.boxForm > .content > .lines.b-3 select {
	width: 30%;
}
.boxForm > .content > .lines.b-3 select:first-child {
	margin-right: 1%;
}
.boxForm > .content > .lines.b-3 select:last-child {
	margin-left: 1%;
}
.boxForm > .content > .lines.b-2 input {
	width: 41%;
}
.boxForm > .content > .lines.b-2 input:first-child {
	margin-right: 1%;
}
.boxForm > .content > .lines.b-2 button {
	width: 48%;
}
.boxForm > .content > .lines.b-2 button:first-child {
	margin-right: 1%;
}
.boxForm > .content > .lines button:hover {
	background-color: #E9E9E9;
	border: 1px solid #DDD;
}
.boxForm > .content > .lines input:hover,
.boxForm > .content > .lines button:active,
.boxForm > .content > .lines select:hover {
	background-color: #E9E9E9;
	border: 1px solid #DDD;
	box-shadow: inset 0 0 4px #DDD;
}