@import url(<?php print $_tool->links("source/css/ext/font.awesome.css"); ?>);
@import url(<?php print $_tool->links("source/css/ext/font.roboto.css"); ?>);
@import url(<?php print $_tool->links("source/css/ext/tooltip.css"); ?>);
@import url(<?php print $_tool->links("source/css/ext/jqueryui.css"); ?>);
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code,del, dfn, em, img, ins, kbd, q, samp,small, strong, sub, sup, var,b, i,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td,article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary,time, mark, audio, video{margin:0;padding:0;border:0 none;list-style:none;font-size:100%;border-spacing:0;border-collapse:collapse;outline:none;-webkit-tap-highlight-color:rgba(0,0,0,0);}
* {
	margin: 0;
	padding: 0;
}
html, a, div, span, button, input, selection, body, select, textarea {
	font: normal 12px/1.4em "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
	text-decoration: none;
	outline: none;
}
a:link {
	color: #777;
	transition: color .5s ease;
}
a:link:hover,
a:link:active,
a:visited {
	color: #555;
}
nav, menu, ul {
	list-style-type: none;
}
input[type='checkbox'].css-checkbox {
	position: absolute;
	z-index: -1000;
	left: -1000px;
	overflow: hidden;
	clip: rect(0 0 0 0);
	height: 1px;
	width: 1px;
	margin: -1px;
	padding: 0;
	border: 0;
}
input[type='checkbox'].css-checkbox + label.css-label {
	padding-left: 25px;
	height: 20px; 
	display: inline-block;
	line-height: 20px;
	background-repeat: no-repeat;
	background-position: 0 0;
	vertical-align: middle;
	cursor: pointer;
}
input[type='checkbox'].css-checkbox:checked + label.css-label {
	background-position: 0 -20px;
}
label.css-label {
	background-image: url(<?php print $_tool->links('photos/raw/static/css_checkbox_s1.png'); ?>);
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
select {
	cursor: pointer;
	display: inline-block;
	outline: none;
    appearance: none;
    margin: 0;
    padding: 4px;
    background-color: #EBEBEB;
    border: 1px solid #E0E0E0;
	border-radius: 2px;
	line-height: 1.4em;
	font-size: 13px;
	font-weight: 100;
	color: #999;
	transition: all .5s ease;
}
/*
::-webkit-scrollbar{height:5px;overflow:visible;width:7px}
::-webkit-scrollbar-button{height:0;width:0}
::-webkit-scrollbar-track{background-clip:padding-box;border:solid transparent;border-width:0 0 0 4px}
::-webkit-scrollbar-track:horizontal{border-width:1px 0 0}
::-webkit-scrollbar-track:hover{background-color:rgba(0,0,0,.05);box-shadow:inset 1px 0 0 rgba(0,0,0,.1)}
::-webkit-scrollbar-track:horizontal:hover{box-shadow:inset 0 1px 0 rgba(0,0,0,.1)}
::-webkit-scrollbar-track:active{background-color:rgba(0,0,0,.05);box-shadow:inset 1px 0 0 rgba(0,0,0,.14),inset -1px 0 0 rgba(0,0,0,.07)}
::-webkit-scrollbar-track:horizontal:active{box-shadow:inset 0 1px 0 rgba(0,0,0,.14),inset 0 -1px 0 rgba(0,0,0,.07)}
::-webkit-scrollbar-thumb{background-clip:padding-box;background-color:rgba(0,0,0,.2);border:solid transparent;border-width:1px 1px 1px 6px;box-shadow:inset 1px 1px 0 rgba(0,0,0,.1),inset 0 -1px 0 rgba(0,0,0,.07);min-height:28px;padding:100px 0 0}::-webkit-scrollbar-thumb:horizontal{border-width:6px 1px 1px;box-shadow:inset 1px 1px 0 rgba(0,0,0,.1),inset -1px 0 0 rgba(0,0,0,.07);padding:0 0 0 100px}
::-webkit-scrollbar-thumb:hover{background-color:rgba(0,0,0,.4);box-shadow:inset 1px 1px 1px rgba(0,0,0,.25)}
::-webkit-scrollbar-thumb:active{background-color:rgba(0,0,0,0.5);box-shadow:inset 1px 1px 3px rgba(0,0,0,0.35)}
body::-webkit-scrollbar-track-piece{background-clip:padding-box;background-color:#f5f5f5;border:solid #fff;border-width:0 0 0 1px;box-shadow:inset 1px 0 0 rgba(0,0,0,.14),inset -1px 0 0 rgba(0,0,0,.07)}
body::-webkit-scrollbar-track-piece:horizontal{border-width:1px 0 0;box-shadow:inset 0 1px 0 rgba(0,0,0,.14),inset 0 -1px 0 rgba(0,0,0,.07)}
body::-webkit-scrollbar-thumb{background-color:#5e5e5e;-moz-border-radius:16px;-webkit-border-radius:16px;border-radius:16px;border-width:1px 1px 1px 1px}
body::-webkit-scrollbar-thumb:horizontal{border-width:1px 1px 1px}
body::-webkit-scrollbar-corner{background-clip:padding-box;background-color:#f5f5f5;border:solid #fff;border-width:3px 0 0 3px;box-shadow:inset 1px 1px 0 rgba(0,0,0,.14)}
*/
body {
	background: #E8E8E8;
}
#gSource {
	display: none !important;
}
._bn_c-we {
	cursor: pointer;
	padding: 5px 9px;
	background: #FFF;
	border: 1px solid #D8D8D8;
	border-radius: 2px;
	color: #999;
	font-size: 12px;
	font-weight: 300;;
	transition: all .5s ease;
	text-align: center;
}
._bn_c-we:hover {
	background: #E9E9E9;
	border: 1px solid #D0D0D0;
	color: #888;
}
._bn_c-we:active {
	background: #E6E6E6;
	box-shadow: inset 0 0 4px #D0D0D0;
}
._bn_c-blue {
}
._bn_c-blue:hover {
}
._bn_c-blue:active {
}
.lt {
	float: left;
}
.rt {
	float: right;
}
.nowrap {
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #666;
}
.cr-pointer {
	cursor: pointer;
}
.boxGrid {
	background: #FFF;
	border: 1px solid #E4E4E4;
	-webkit-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}
.navProcess-buffering {
	background-image: -o-linear-gradient(-45deg, rgba(255, 255, 255, 0.50) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.50) 50%, rgba(255, 255, 255, 0.50) 75%, transparent 75%, transparent);
	background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.50)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.50)), color-stop(0.75, rgba(255, 255, 255, 0.50)), color-stop(0.75, transparent), to(transparent));
	background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.50) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.50) 50%, rgba(255, 255, 255, 0.50) 75%, transparent 75%, transparent);
	background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.50) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.50) 50%, rgba(255, 255, 255, 0.50) 75%, transparent 75%, transparent);
	background-image: -ms-linear-gradient(-45deg, rgba(255, 255, 255, 0.50) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.50) 50%, rgba(255, 255, 255, 0.50) 75%, transparent 75%, transparent);
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.50) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.50) 50%, rgba(255, 255, 255, 0.50) 75%, transparent 75%, transparent);
	-webkit-background-size: 15px 15px;
	-moz-background-size: 15px 15px;
	-o-background-size: 15px 15px;
	background-size: 15px 15px;
	-webkit-animation: buffering-stripes .75s linear infinite;
	-moz-animation: buffering-stripes .75s linear infinite;
	-ms-animation: buffering-stripes .75s linear infinite;
	-o-animation: buffering-stripes .75s linear infinite;
	animation: buffering-stripes .75s linear infinite;
	border-radius: 4px;
	moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	-o-border-radius: 4px;
}
@-webkit-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-moz-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-ms-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-o-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
[direct] {
	cursor: pointer;	
}
#gTrash {
	z-index: 101;
	cursor: pointer;
	position: fixed;
	bottom: 50px;
	left: 50px;
	height: 50px;
	width: 50px;
	border-radius: 90px;
}
#gTrash > .gT_i {
	font-size: 30px;
	color: #999;
	line-height: 1.7em;
	text-indent: 0.425em;
	transition: color .5s ease;
}
#gTrash._hover > .gT_i {
	color: #E66A6A;
}
#popupNotification {
	z-index: 102;
	position: fixed;
	top: 50px;
	right: 10px;
	padding: 5px;
	border-radius: 4px;
	background: transparent;
}
#popupNotification > .tab {
	margin-top: 5px;
	width: 300px;
	background: #FFF;
	border-radius: 3px;
}
#popupNotification > .tab:first-child {
	margin-top: 0;
}
#popupNotification > .tab > div {
	margin: auto;
	padding: 3px;
	width: 100%;
}
#popupNotification > .tab > div span {
	color: #888;
	line-height: 1.4em;
	font-weight: 300;
}
#popupNotification > .tab > .title {
	padding: 4px 0;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 6px;
}
#popupNotification > .tab > .title i {
	cursor: pointer;
	margin-right: 4px;
	font: normal 300 14px/1em "FontAwesome";
}
#popupNotification > .tab > .title:hover i[close]:before {
	content: "\f057";
}
#popupNotification > .tab > .title i._t1 {
	color: #777;
}
#popupNotification > .tab > .title i._t1:before {
	content: "\f05a";
}
#popupNotification > .tab > .title i._t2 {
	color: #EC7575;
}
#popupNotification > .tab > .title i._t2:before {
	content: "\f056";
}
#popupNotification > .tab > .title i._t3 {
	color: #75B3EC;
}
#popupNotification > .tab > .title i._t3:before {
	content: "\f1ea";
}
#popupNotification > .tab > .title span {
	font-size: 13px;
	font-family: Roboto;
}
#popupNotification > .tab > .description {
	overflow: hidden;
	margin: auto;
	padding: 5px 3px;
	width: 96%;
	text-indent: 0px;
}
#popupNotification > .tab > .description div {
	margin: 2px auto;
}
#popupNotification > .tab > .description .bg_img {
	margin: 8px auto 0;
	width: 98%;
	height: 150px;
	background-color: #E7E7E7;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	border: 1px solid #FFF;
	border-radius: 3px;
	box-shadow: inset 0 0 8px #B8B8B8;
}
#popupNotification > .tab > .description span {
	font-size: 13px;
	line-height: 1.4em;
}
#popupNotification > .tab > .description img {
	margin: auto;
	padding: 2px 0;
	max-width: 100%;
	border-radius: 4px;
}
#popupNotification > .tab > .from {
	margin: auto;
	padding: 4px 0;
	border-top: 1px solid #E5E5E5;
	text-indent: 6px;
}
#popupNotification > .tab > .from span {
	font-size: 11px;
	line-height: 1.4em;
}
#boxSuggest {
	z-index: 102;
	display: block !important;
	position: absolute;
	margin-top: 5px;
	width: 250px;
	background-color: #FFF;
	border: 1px solid #DDD;
	border-radius: 2px;
	text-align: left;
}
#boxSuggest > div {
	margin: auto;
	width: 100%;
}
#boxSuggest > .header {
	padding: 3px 0;
	border-bottom: 1px solid #DDD;
	text-indent: 6px;
}
#boxSuggest > .header span {
	color: #666;
	font-size: 13px;
	line-height: 1.6em;
	font-family: Roboto;
	font-weight: 300;
}
#boxSuggest > .body.null {
	cursor: pointer;
	margin: 2px auto;
	width: 96%;
	border: 1px solid #DDD;
	border-radius: 2px;
}
#boxSuggest > .body.null {
	margin: 4px auto;
	padding: 4px 0;
	width: 96%;
	text-align: center;
}
#boxSuggest > .body.null span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}
#boxSuggest > .body {
	margin: 2px auto;
	padding: 2px 0 2px 0;
	text-align: left;
}
#boxSuggest > .body .main {
	max-height: 200px;
}
#boxSuggest > .body .main > .title {
	cursor: pointer;
	margin: 4px auto;
	padding: 3px 0;
	width: 96%;
	border: 1px solid #DDD;
	border-radius: 2px;
	text-indent: 6px;
	text-align: left;
}
#boxSuggest > .body .main > .title span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}
#boxSuggest > .body .main > .rows {
	cursor: pointer;
	margin: 4px auto;
	width: 96%;
	border: 1px solid #DDD;
	border-radius: 2px;
}
#boxSuggest > .body .main > .rows:first-child {
	margin-top: 0;
}
#boxSuggest > .body .main > .rows:last-child {
	margin-bottom: 0;
}
#boxSuggest > .body .main > .rows.null {
	margin: 4px auto;
	padding: 4px 0;
	width: 96%;
	text-align: center;
}
#boxSuggest > .body .main > .rows.null span {
	font-size: 13px;
	color: #888;
	line-height: 1.4em;
	transition: color .5s ease;
}
#boxSuggest > .body .main > .rows > div {
	display: inline-block;
	vertical-align: top;
}
#boxSuggest > .body .main > .rows > .img {
	padding: 3px;
	width: 38px;
	height: 38px;
	border-right: 1px dotted #DDD;
}
#boxSuggest > .body .main > .rows > .img div {
	margin: auto;
	width: 38px;
	height: 38px;
	background-size: 125%;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border: none;
}
#boxSuggest > .body .main > .rows > .text {
	margin: auto;
	width: 186px;
}
#boxSuggest > .body .main > .rows.r_oe > #boxSuggest > .body .main > .rows > .text {
	margin: 0 2%;
	width: 235px !important;
}
#boxSuggest > .body .main > .rows > .text > div {
	margin: auto;
	width: 98%;
}
#boxSuggest > .body .main > .rows > .text > div > * {
	color: #888;
	line-height: 1.4em;
	transition: color .5s ease;
}
#boxSuggest > .body .main > .rows > .text > div > i.feel:before {
	content: "\f118";
}
#boxSuggest > .body .main > .rows > .text > div > i.users:before {
	content: "\f007";
}
#boxSuggest > .body .main > .rows > .text > div > i.groups:before {
	content: "";
}
#boxSuggest > .body .main > .rows > .text > div > i.pages:before {
	content: "";
}
#boxSuggest > .body .main > .rows:hover > div > div > * {
	color: #666;
}
#boxSuggest > .body .main > .rows > .text > .header {
	padding: 2px 0;
	border-bottom: 1px dotted #DDD;
}
#boxSuggest > .body .main > .rows > .text > .header > * {
	font-size: 13px;
	font-weight: 400;
}
#boxSuggest > .body .main > .rows > .text > .body {
	padding: 2px 0;
}
#boxSuggest > .body .main > .rows > .text > .body.iT {
	margin-top: 0;
}
#boxSuggest > .body .main > .rows > .text > .body > * {
	font-size: 11px;
	font-weight: 100;
}
#boxSuggest > .footer {
	border: nonel
}
#boxSuggest > .footer .preview-map {
	margin: 2px auto;
	width: 96%;
	height: 175px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border: 1px dotted #DDD;
	border-radius: 2px;
}
#boxSuggest > .footer .preview.map {
	cursor: pointer;
	position: relative;
	margin: 2px auto 4px;
	width: 96%;
	height: 150px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border: 1px solid #DDD;
	border-radius: 2px;
}
#boxSuggest > .footer .preview.info {
	cursor: pointer;
	position: relative;
	margin: 2px auto 3px;
	width: 97%;
	height: 75px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border: 1px solid #DDD;
	border-radius: 4px;
	box-shadow: inset 0 -10px 100px #333;
}
#boxSuggest > .footer .preview.info > .img {
	position: absolute;
	top: 10px;
	left: 20px;
	width: 50px;
	height: 50px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border: none;
	border-radius: 45px;
}
#boxSuggest > .footer .preview.info > .text {
	position: absolute;
	top: 18px;
	left: 80px;
	width: 165px;
}
#boxSuggest > .footer .preview.info > .text div {
	width: 100%;
	color: #FFF;
}
#boxSuggest > .footer .preview.info > .text div span {
	color: #FFF;
	font-weight: bold;;
	line-height: 1.4em;
	text-shadow: 0 0 6px #333;
}
#boxSuggest > .footer .preview.info > .text div:first-child span {
	font-size: 14px;
}
#boxSuggest > .footer .preview.info > .text div:last-child span {
	font-size: 13px;
}
/**/
#boxPopup {
	z-index: 101;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#boxPopup > div {
	display: inline-block;
	vertical-align: top;
	position: absolute;
	top: 0;
	margin: 0;
	padding: 0;
	height: 100%;
	border: none;
}
#boxPopup > .leftBox {
	left: 0;
	width: 75%;
	background: #333;
}
#boxPopup > .leftBox > .navBar {
	padding: 7px 0 8px;
	background: #222;
	border-bottom: 1px solid #444;
	text-align: left;
}
#boxPopup > .leftBox > .navBar > div {
	display: inline-block;
	vertical-align: top;
}
#boxPopup > .leftBox > .navBar > div.rowsLeft {
	width: 33%;
	text-align: left;
}
#boxPopup > .leftBox > .navBar > div.rowsCenter {
	width: 32%;
	text-align: center;
}
#boxPopup > .leftBox > .navBar > div.rowsRight {
	width: 33%;
	text-align: right;
}
#boxPopup > .leftBox > .navBar > div > .li {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
}
#boxPopup > .leftBox > .navBar > div > .li > i,
#boxPopup > .leftBox > .navBar > div > .li > span {
	color: #FFF;
	font-weight: 300;
}
#boxPopup > .leftBox > .navBar > div > .li > i {
	font-size: 14px;
}
#boxPopup > .leftBox > .navBar > div > .li > span {
	font-size: 13px;
}
#boxPopup > .leftBox > .navBar > div > .li.close,
#boxPopup > .leftBox > .navBar > div > .li.view {
	margin: 0 0 0 10px;
}
#boxPopup > .leftBox > .navBar > div > .li.link,
#boxPopup > .leftBox > .navBar > div > .li.embed,
#boxPopup > .leftBox > .navBar > div > .li.download {
	margin: 0 10px 0 0;
}
#boxPopup > .leftBox > .navBar > div > .li:hover > .tabOn {
	display: block;
}
#boxPopup > .leftBox > .navBar > div > .li > .tabOn {
	display: none;
	position: absolute;
	margin: 8px 0 0 -60px;
	padding: 6px;
	width: 200px;
	background: #FFF;
	border-radius: 2px;
	transition: all .5s ease;
}
#boxPopup > .leftBox > .navBar > div > .li > .tabOn:before {
	content: '';
	position: absolute;
	display: block;
	margin: -12px 0 0 80px;
	width: 0;
	height: 0;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-bottom: 7px solid #FFF;
	background: 0 0;
	pointer-events: none;
}
#boxPopup > .leftBox > .navBar > div > .li > .tabOn textarea,
#boxPopup > .leftBox > .navBar > div > .li > .tabOn input {
	cursor: pointer;
	padding: 6px 8px;
	width: 100%;
	border: 1px solid #E0E0E0;
	background-color: #EFEFEF;
	box-shadow: inset 0 0 4px #E0E0E0;
	overflow: hidden;
	resize: none;
	font-size: 13px;
	color: #777;
	line-height: 1.4em;
	transition: all .5s ease;
}
#boxPopup > .leftBox > .navBar > div > .li > .tabOn textarea {
	height: 90px;
}
#boxPopup > .leftBox > .navBar > div > .li > .tabOn input {
	height: 30px;
}
#boxPopup > .leftBox > .navBar > div > .li.info {
	
}
#boxPopup > .leftBox > .navBar > div > .li.info > .rows {
	display: inline-block;
}
#boxPopup > .leftBox > .navBar > div > .li.info > .rows > i,
#boxPopup > .leftBox > .navBar > div > .li.info > .rows > span {
	color: #FFF;
	font-weight: 300;
	font-size: 13px;
}
#boxPopup > .leftBox > .mainBox {
	
}
#boxPopup > .leftBox > .mainBox > .content {

}
#boxPopup > .leftBox > .mainBox > .content img {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	top: 0;
	margin: auto;
	max-width: 875px;
	max-height: 437.5px;
	border-radius: 2px;
}
#boxPopup > .rightBox {
	right: 0;
	width: 25%;
	background: #FFF;
}
#gBox {
	display: inline-block;
	vertical-align: top;
	margin: auto;
	padding: 48px 0 0 0;
	width: 925px;
}
#gBox > div {
	display: inline-block;
	vertical-align: top;
}
#gBox > #leftBox {
	width: 228px;
	height: 100%;
}
#gBox > #centerBox {
	margin: 0 4px;
	width: 450px;
	height: 100%;
}
#gBox > #centerBox > div:first-child {
	margin-top: 10px;
}
#gBox > #rightBox {
	width: 232px;
	height: 100%;
}
.choosePrivate {
	cursor: pointer;
	position: relative;
	width: 100px;
	text-align: left !important;
}
.choosePrivate .selected > .rows {
	padding: 5px;
}
.choosePrivate .list > .rows {
	padding: 5px;
}
.choosePrivate .rows span {
	color: #999;
	font-size: 12px !important;
	font-weight: 300;
	line-height: 1.4em !important;
	transition: color .5s ease;
} 
.choosePrivate .rows i {
	width: 16px;
	color: #999;
	font: normal normal 12px/1.4em "FontAwesome";
	transition: color .5s ease;
	text-align: center;
}
.choosePrivate .rows.type_onlyme i:before {
	content: "\f023";
}
.choosePrivate .rows.type_friends i:before {
	content: "\f007";
}
.choosePrivate .rows.type_allfriends i:before {
	content: "\f0c0";
}
.choosePrivate .rows.type_public i:before {
	content: "\f0ac";
}
.choosePrivate .rows i {
	margin-right: 4px;
}
.choosePrivate .rows.active i,
.choosePrivate .rows.active span,
.choosePrivate .rows:hover i,
.choosePrivate .rows:hover span {
	color: #777;
}
.choosePrivate > .selected {
	border: 1px solid #DDD;
	border-radius: 2px;
}
.choosePrivate .list {
	display: none;
	z-index: 2;
	position: absolute;
	margin: 2px auto auto;
	width: 120px;
	background: #FFF;
	border: 1px solid #DDD;
	border-radius: 2px;
}
#popupAlert {
	z-index: 101;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(51, 51, 51, 0.51);
}
#popupAlert .box {
	position: fixed;
	margin: 0;
	padding: 0;
	width: 300px;
	background: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#popupAlert .box > .title {
	position: relative;
	padding: 5px 6px 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
	color: #666;
}
#popupAlert .box > .title span,
#popupAlert .box > .title i {
	cursor: pointer;
	color: #666;
	line-height: 1.6em;
	font-size: 14px;
	font-weight: 300;
}
#popupAlert .box > .title span {
	font-family: Roboto;
}
#popupAlert .box > .title i {
	position: absolute;
	right: 8px;
	background: #FFF;
	border-radius: 45px;
	font-style: normal;
	font-family: "FontAwesome";
}
#popupAlert .box > .title i:before {
	content: "\f00d";
}
#popupAlert .box > .main > .content {
	margin: auto;
	padding: 8px 0;
	width: 94%;
}
#popupAlert .box > .main > .content > * {
	color: #888;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.6em;
}
#popupAlert .box > .options {
	padding: 5px 6px 5px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
#popupAlert .box > .options > div {
	display: inline-block;
	vertical-align: top;
}
#popupAlert .box > .options > div:last-child {
	margin-right: 4px;
	margin-left: 2px;
}
#popupAlert .box > .options > div span {
	font-size: 12px;
}


#ExplorerPopup {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
#ExplorerPopup > .wrapFilter {
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(44, 44, 44, 0.8);
}
#ExplorerPopup > .boxContent {
	z-index: 2;
	position: absolute;
	width: 500px;
	background-color: #FFF;
	border-radius: 4px;
}
#ExplorerPopup > .boxContent > .header > span,
#ExplorerPopup > .boxContent > .footer > span {
	font-weight: 300;
	font-family: "Roboto";
	color: #999;
}
#ExplorerPopup > .boxContent > .header > span,
#ExplorerPopup > .boxContent > .header > i,
#ExplorerPopup > .boxContent > .footer > span {
	color: #666;
	transition: color .5s ease;
}
#ExplorerPopup > .boxContent > .header {
	height: 35px;
	width: 100%;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 8px;
}
#ExplorerPopup > .boxContent > .header span {
	cursor: pointer;
	line-height: 2em;
	font-size: 17px;
}
#ExplorerPopup > .boxContent > .header i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal 300 16px/2.1em "FontAwesome";
}
#ExplorerPopup > .boxContent > .header:hover i {
	color: #666;
}
#ExplorerPopup > .boxContent > .header i[close]:before {
	content: "\f00d";
}
#ExplorerPopup > .boxContent > .body {
	position: relative;
	height: 600px;
	width: 100%;
	background-color: #FFF;
}
#ExplorerPopup > .boxContent > .body > .nav {
	margin: 2px 0;
	padding: 2px 0 4px;
	border-bottom: 1px solid #E5E5E5;
}
#ExplorerPopup > .boxContent > .body > .nav > .list > .rows {
	position: relative;
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	margin: 0 2px;
	width: 45%;
	text-align: center;
	transition: border-color .5s ease;
}
#ExplorerPopup > .boxContent > .body > .nav > .list > .rows:first-child {
	margin-left: 3%;
	margin-right: 3%;
}
#ExplorerPopup > .boxContent > .body > .nav > .list > .rows span {
	color: #999;
	font-size: 15px;
	font-weight: 300;
	line-height: 1.6em;
	transition: color .5s ease;
}
#ExplorerPopup > .boxContent > .body > .nav > .list > .rows:hover span,
#ExplorerPopup > .boxContent > .body > .nav > .list > .rows.active span {
	color: #777;
}
#ExplorerPopup > .boxContent > .body > .nav > .arrow {
	display: inline-block;
	position: absolute;
	margin: 2px 0 0 auto;
	height: 0;
	width: 0;
	transition: all .5s ease;
}
#ExplorerPopup > .boxContent > .body > .nav > .arrow:before {
	content: '';
	position: absolute;
	margin-top: -4px;
	border-right: 7px solid transparent;
	border-left: 7px solid transparent;
	border-bottom: 7px solid #E5E5E5;
}
#ExplorerPopup > .boxContent > .body > .nav > .arrow:after {
	content: '';
	position: absolute;
	margin-top: -2px;
	border-right: 7px solid transparent;
	border-left: 7px solid transparent;
	border-bottom: 7px solid #FFF;
}
#ExplorerPopup > .boxContent > .body > .nav > .arrow[arrow='cache'] {
	margin-left: 120px;
}
#ExplorerPopup > .boxContent > .body > .nav > .arrow[arrow='sync'] {
	margin-left: 365px;
}
#ExplorerPopup > .boxContent > .body .waiting_setup_data,
#ExplorerPopup > .boxContent > .body .empty_data {
	padding: 10px;
	text-align: center;
}
#ExplorerPopup > .boxContent > .body .waiting_setup_data span,
#ExplorerPopup > .boxContent > .body .empty_data span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}
#ExplorerPopup > .boxContent > .body .grid {
	padding: 5px;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] {
	position: relative;
	overflow: hidden;
	display: inline-block;
	vertical-align: top;
	margin: 6px 4px;
	padding: 0;
	width: 153px;
	height: 153px;
	background: #555;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 50% 50%;
	border: none;
	border-radius: 3px;
	box-shadow: inset 0 0 9px #333;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected] i[checkbox] {
	position: absolute;
	bottom: 10px;
	left: 10px;
	height: 15px;
	width: 15px;
	background: transparent;
	border: none;
	border-radius: 45px;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='false'] i[checkbox] {
	background: transparent;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true'] i[checkbox] {
	background: #FFF;
	box-shadow: 0 0 9px #333;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-using='true'] i[checkbox] {
	background: rgba(255, 255, 255, 0.5);
	box-shadow: 0 0 9px #333;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file]:hover > .box.info {
	opacity: 1;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file]:hover > .nav.time {
	opacity: 0;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info {
	z-index: 1;
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	transition: all .5s ease;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .nav {
	overflow: hidden;
	cursor: pointer;
	padding: 3px 0;
	width: 153px;
	height: 20px;
	background: rgba(34, 34, 34, 0.9);
	border: none;
	text-indent: 6px;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab {
	overflow: hidden;
	padding: 2px 0;
	width: 153px;
	height: 125px;
	background: rgba(34, 34, 34, .9);
	border-top: 1px solid #454545;
	box-shadow: 0 -1px 0 #151515;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows {
	overflow: hidden;
	padding: 2px 0;
	height: 20px;
	border: none;
	text-indent: 6px;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows div {
	display: inline-block;
	vertical-align: top;
	float: right;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin-right: 6px;
	width: 125px;
	color: #FFF;
	font-size: 12px;
	font-weight: 300;
	text-align: right;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows.nameraw i:before {
	content: "\f15c";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows.mime i:before {
	content: "\f15b";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows.size i:before {
	content: "\f0c7";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows.time i:before {
	content: "\f017";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows.clean i:before {
	content: "\f1f8";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.duration {
	position: absolute;
	bottom: 10px;
	right: 10px;
	overflow: hidden;
	cursor: pointer;
	padding: 2px 6px;
	background: rgba(34, 34, 34, 0.68);
	border: none;
	border-radius: 2px;
	transition: all .5s ease;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.time {
	overflow: hidden;
	cursor: pointer;
	padding: 3px 0;
	background: rgba(34, 34, 34, 0.68);
	border: none;
	text-indent: 6px;
	transition: all .5s ease;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .nav i,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .nav span,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows i,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows div,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.duration div,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.time i,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.time span {
	vertical-align: top;
	color: #FFF;
	transition: color .5s ease;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .nav i,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows i,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.time i {
	font: normal 300 13px/1.6em "FontAwesome";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .nav span,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .box.info > .tab > .rows div,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.duration div,
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.time span {
	color: #FFF;
	font-size: 12px;
	font-weight: 300;
	line-height: 1.6em;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file]:hover > .box.info > .nav i:before {
	content: "\f05a";
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] > .nav.time i:before {
	content: "\f017";
}
#ExplorerPopup > .boxContent > .footer {
	width: 100%;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
#ExplorerPopup > .boxContent > .footer > .action {
	margin: auto;
	padding: 4px 0;
	width: 96%;
	border-bottom: 1px dotted #DDD;
	text-align: center;
}
#ExplorerPopup > .boxContent > .footer > .copyright span {
	margin-right: 8px;
	line-height: 2em;
	font-size: 13px;
	color: #999;
}