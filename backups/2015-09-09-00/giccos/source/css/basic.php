@import url(<?php print $_tool->links("source/css/templates/font.awesome.css"); ?>);
@import url(<?php print $_tool->links("source/css/templates/font.roboto.css"); ?>);
@import url(<?php print $_tool->links("source/css/templates/tooltip.css"); ?>);
@import url(<?php print $_tool->links("source/css/templates/jqueryui.css"); ?>);
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
.nwrap {
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
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
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	transition: color .5s ease;
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
.ip_c-we {
	padding: 5px 7px 6px;
	border: 1px solid #DDD;
	border-radius: 4px;
	resize: none;
	color: #999;
	font-size: 12px;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
.ip_c-we:focus {
  	background-color: #EFEFEF;
  	-webkit-box-shadow: inset 0 0 4px #DDDDDD;
  	-moz-box-shadow: inset 0 0 4px #DDDDDD;
  	-o-box-shadow: inset 0 0 4px #DDDDDD;
  	box-shadow: inset 0 0 4px #DDDDDD;
}
.dn, .hide {
	display: none;
}
.dn_i, .hide_i {
	display: none !important;
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
	border: 1px solid #FFF;
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
 	border: 1px solid #FFFFFF;
  	-webkit-box-shadow: 0 1px 7.5px rgba(75, 75, 75, 0.25);
  	-moz-box-shadow: 0 1px 7.5px rgba(75, 75, 75, 0.25);
  	box-shadow: 0 1px 7.5px rgba(75, 75, 75, 0.25);
  	-webkit-border-radius: 4px;
  	-moz-border-radius: 4px;
  	border-radius: 4px;
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
	word-wrap: break-word;
}
#popupNotification > .tab > .title {
	cursor: pointer;
	padding: 4px 0;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 6px;
}
#popupNotification > .tab > .title i {
	cursor: pointer;
	margin-right: 2px;
	font: normal normal 300 14px/1em "FontAwesome";
}
#popupNotification > .tab > .title:hover i[close]:before {
	content: "\f057";
}
#popupNotification > .tab > .title i.t_notify {
	color: #777;
}
#popupNotification > .tab > .title i.t_notify:before {
	content: "\f05a";
}
#popupNotification > .tab > .title i.t_error {
	color: #EC7575;
}
#popupNotification > .tab > .title i.t_error:before {
	content: "\f056";
}
#popupNotification > .tab > .title i.t_news {
	color: #75B3EC;
}
#popupNotification > .tab > .title i.t_news:before {
	content: "\f1ea";
}
#popupNotification > .tab > .title i.t_warning {
	color: #F27F10;
}
#popupNotification > .tab > .title i.t_warning:before {
	content: "\f071";
}
#popupNotification > .tab > .title i.t_tips {
	color: #999;
}
#popupNotification > .tab > .title i.t_tips:before {
	content: "\f1cd";
}
#popupNotification > .tab > .title i._t5 {
	color: #75B3EC;
}
#popupNotification > .tab > .title i._t5:before {
	content: "\f059";
}
#popupNotification > .tab > .title span {
	text-transform: uppercase;
	font-size: 12px;
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
	overflow: hidden;
  	text-overflow: ellipsis;
  	white-space: nowrap;
}
#popupNotification > .tab > .description .bg_img {
	margin: 6px auto 4px;
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
	position: fixed;
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
	margin: auto;
	padding: 3px 0 4px;
	border-bottom: 1px solid #DDD;
	overflow: hidden;
  	text-overflow: ellipsis;
  	white-space: nowrap;
  	text-indent: 6px;
  	color: #666;
}
#boxSuggest > .header span {
	cursor: pointer;
	color: #666;
	font-size: 14px;
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
	margin: auto;
	padding: 4px 0;
	text-align: left;
}
#boxSuggest > .body .box {
	margin-bottom: 8px;
}
#boxSuggest > .body .box:last-child {
	margin-bottom: 0;
}
#boxSuggest > .body .box:last-child > .rows:last-child {
	margin-bottom: 0;
}
#boxSuggest > .body .box > .navbar {
	margin: auto;
	padding: 3px 0 2px;
	width: 96%;
	border: 1px solid #DDD;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	text-indent: 4px;
	color: #777;
}
#boxSuggest > .body .box > .navbar span {
	cursor: pointer;
	color: #777;
	font-size: 12px;
	line-height: 1.6em;
}
#boxSuggest > .body .box > .rows {
	cursor: pointer;
	margin: auto;
	margin: 4px auto;
	padding: 0;
	width: 96%;
	border: 1px solid #DDD;
}
#boxSuggest > .body .box > .rows.null {
	padding: 6px 0;
  	text-align: center;
}
#boxSuggest > .body .box > .rows.null span {
	cursor: pointer;
	color: #999;
	font-size: 12px;
	line-height: 1.4em;
}
#boxSuggest > .body .box > .rows > .thumbnail {
	display: inline-block;
 	vertical-align: top;
  	padding: 3px;
  	border-right: 1px solid #DDD;
}
#boxSuggest > .body .box > .rows > .thumbnail > .img {
	width: 40px;
	height: 40px;
	background-size: cover;
	background-position: 50% 50%;
	border: none;
}
#boxSuggest > .body .box > .rows > .context {
	display: inline-block;
 	vertical-align: top;
 	width: 240px;
}
#boxSuggest > .body .box > .rows > div:nth-child(2) {
	margin-left: -3px;
	width: 193px;
}
#boxSuggest > .body .box > .rows > .context > .text,
#boxSuggest > .body .box > .rows > .context > .tip {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	text-indent: 4px;
	color: #777;
}
#boxSuggest > .body .box > .rows > .context > .text {
	padding: 3px 0 1px;
	border-bottom: 1px solid transparent;
}
#boxSuggest > .body .box > .rows > .context > .text span {
	color: #777;
	font-size: 12px;
	line-height: 1.6em;
}
#boxSuggest > .body .box > .rows > .context > .tip {
	padding: 2px 0 3px;
	border-top: 1px solid #DDD;
}
#boxSuggest > .body .box > .rows > .context > .tip span {
	color: #777;
	font-size: 11px;
	line-height: 1.4em;
}
#boxSuggest > .footer {
	
}
#boxSuggest > .footer .preview {
	margin: 0 auto 3px;
	width: 96%;
}
#boxSuggest > .footer .preview .img {
	margin-left: -1px;
	height: 140px;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	border: 1px solid #DDD;
}
[tag-obj] {
	cursor: pointer;
	display: inline-block;
	margin: 0 4px;
	padding: 5px 6px;
	background: #777;
	border: none;
	border-radius: 2px;
}
[tag-obj],
[tag-obj] > span,
[tag-obj] > i {
	font-size: 12px;
	color: #FFF;
	line-height: 1.4em;
	text-shadow: 0 -1px 0 #666;
	transition: color .5s ease;
}
[tag-obj] > i {
	cursor: pointer;
	position: relative;
	top: -1px;
  	margin: 0 2px 0 4px;
  	font: normal normal normal 11px/1em 'FontAwesome';
}
[tag-obj] > .close:before {
	content: '\f00d';
}



/*
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
	text-indent: 2px;
}
#boxSuggest > .body .main > .rows > .text > .header > * {
	font-size: 13px;
	font-weight: 400;
}
#boxSuggest > .body .main > .rows > .text > .body {
	padding: 2px 0;
	text-indent: 4px;
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
	width: 90%;
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
*/


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
	padding: 6px 0;
	height: 18px;
	width: 100%;
	background: #222;
	border: none;
	text-align: left;
}
#boxPopup > .leftBox > .navBar.top {
	border-bottom: 1px solid #444;
}
#boxPopup > .leftBox > .navBar.bottom {
	position: absolute;
	left: 0;
	bottom: 0;
	border-top: 1px solid #444;
}
#boxPopup > .leftBox > .navBar > div {
	display: inline-block;
	vertical-align: top;
}
#boxPopup > .leftBox > .navBar > .rows {
	
}
#boxPopup > .leftBox > .navBar > .rows.left {
	float: left;
	width: 33%;
	min-height: 1px;
	text-align: left;
}
#boxPopup > .leftBox > .navBar > .rows.center {
	width: 32%;
	min-height: 1px;
	text-align: center;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button {
	display: inline-block;
    vertical-align: top;
    margin: 2px 4px 0;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text {
	margin-top: -1px;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text span {
	font-size: 14px;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list {
	opacity: 0;
	visibility: hidden;
	position: absolute;
    top: -106px;
    margin-left: -14em;
    padding: 5px 5px 4px;
    width: 30em;
    background: rgba(51, 51, 51, 0.8);
    border: none;
    border-radius: 2px;
    transition: all .5s ease;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list:hover {
	background: rgba(51, 51, 51, 1);
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text:hover > .list,
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text.active > .list {
	opacity: 1;
	visibility: inherit;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .bt {
	
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .bt > i {
	
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .ml {
	overflow-y: hidden;
	overflow-x: scroll;
	position: relative;
	height: 81px;
	text-align: left;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .ml > .ts {
	opacity: 0.5;
	position: absolute;
	height: 58px;
    width: 58px;
    background-size: cover;
    background-position: 50% 50%;
    border: 1px solid rgba(255, 255, 255, 0.25);
    border-radius: 2px;
    transition: all .5s ease;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .ml > .ts:hover,
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .ml > .ts.active {
	opacity: 1;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button.text > .list > .ml > .ts.active:before {
	position: absolute;
    top: 20px;
    left: 20px;
    color: #FFF;
	font: normal normal normal 20px/1 FontAwesome;
	content: "\f111";
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button > span,
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button > i {
	color: #FFF;
	font-weight: 300;
}
#boxPopup > .leftBox > .navBar > .rows.center > .li.info > .button > i {
	font: normal normal normal 14px/1 FontAwesome;
}
#boxPopup > .leftBox > .navBar > .rows.right {
	float: right;
	width: 33%;
	min-height: 1px;
	text-align: right;
}
#boxPopup > .leftBox > .navBar > .rows > .li {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
}
#boxPopup > .leftBox > .navBar > .rows > .li > i,
#boxPopup > .leftBox > .navBar > .rows > .li > span {
	color: #FFF;
	font-weight: 300;
}
#boxPopup > .leftBox > .navBar > .rows > .li > i {
	font: normal normal normal 14px/1 FontAwesome;
}
#boxPopup > .leftBox > .navBar > .rows > .li > span {
	font-size: 13px;
}
#boxPopup > .leftBox > .navBar > .rows > .li.close,
#boxPopup > .leftBox > .navBar > .rows > .li.view {
	margin: 0 0 0 10px;
}
#boxPopup > .leftBox > .navBar > .rows > .li {
	margin: 0 10px 0 0;
}
#boxPopup > .leftBox > .navBar > .rows > .li.close > i:before {
	content: "\f00d";
}
#boxPopup > .leftBox > .navBar > .rows > .li.link > i:before {
	content: "\f08e";
}
#boxPopup > .leftBox > .navBar > .rows > .li.embed > i:before {
	content: "\f121";
}
#boxPopup > .leftBox > .navBar > .rows > .li.download > i:before {
	content: "\f019";
}
#boxPopup > .leftBox > .navBar > .rows > .li.views > i:before {
	content: "\f06e";
}
#boxPopup > .leftBox > .navBar > .rows > .li:hover > .tabOn {
	opacity: 1;
	visibility: initial;
}
#boxPopup > .leftBox > .navBar > .rows > .li > .tabOn {
	z-index: 1;
	display: block;
	visibility: hidden;
	opacity: 0;
	position: absolute;
	margin: 11px auto 0;
	padding: 5px;
	width: 275px;
	background: #FFF;
	border: none;
	border-radius: 2px;
	transition: all .5s ease;
}
#boxPopup > .leftBox > .navBar > .rows > .li.link > .tabOn {
	margin-left: -75px;
}
#boxPopup > .leftBox > .navBar > .rows > .li.embed > .tabOn {
	margin-left: -136px;
	padding: 5px 5px 2px;
}
#boxPopup > .leftBox > .navBar > .rows > .li > .tabOn:before {
	content: '';
	position: absolute;
	display: block;
	margin: auto;
	width: 0;
	height: 0;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-bottom: 7px solid #FFF;
	background: 0 0;
	pointer-events: none;
}
#boxPopup > .leftBox > .navBar > .rows > .li.link > .tabOn:before {
	margin: -12px 0 0 92px;
}
#boxPopup > .leftBox > .navBar > .rows > .li.embed > .tabOn:before {
	margin: -12px 0 0 162px;
}
#boxPopup > .leftBox > .navBar > .rows > .li > .tabOn textarea,
#boxPopup > .leftBox > .navBar > .rows > .li > .tabOn input {
	cursor: pointer;
	padding: 4px 5px 5px;
	width: 263px;
	border: 1px solid #E0E0E0;
	background-color: #EFEFEF;
	box-shadow: inset 0 0 4px #E0E0E0;
	overflow: hidden;
	resize: none;
	font-size: 12px;
	color: #777;
	line-height: 1.4em;
	transition: all .5s ease;
}
#boxPopup > .leftBox > .navBar > .rows > .li > .tabOn textarea {
	height: 60px;
}
#boxPopup > .leftBox > .navBar > .rows > .li.info {
	
}
#boxPopup > .leftBox > .navBar > .rows > .li.info > .rows {
	display: inline-block;
}
#boxPopup > .leftBox > .navBar > .rows > .li.info > .rows > i,
#boxPopup > .leftBox > .navBar > .rows > .li.info > .rows > span {
	color: #FFF;
	font-weight: 300;
	font-size: 13px;
}
#boxPopup > .leftBox > .mainBox {
	position: relative;
	width: 100%;
	height: auto;
}
#boxPopup > .leftBox > .mainBox > .content {

}
#boxPopup > .leftBox > .mainBox > .content .ts {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	top: 0;
	margin: auto;
	max-width: 630px;
	max-height: 360px;
	border-radius: 2px;
}
#boxPopup > .leftBox > .mainBox > .content .ts.gplayer-fullscreen {
	max-width: 100%;
	max-height: 100%;
}
#boxPopup > .rightBox {
	right: 0;
	width: 25%;
	background: #FFF;
}



html:not(.blank) #gBox {
	display: inline-block;
	vertical-align: top;
	margin: auto;
	padding: 48px 0 0 0;
	width: 925px;
}
html:not(.blank) #gBox > div {
	display: inline-block;
	vertical-align: top;
}
html:not(.blank) #gBox > #leftBox {
	width: 228px;
	height: 100%;
}
html:not(.blank) #gBox > #centerBox {
	margin: 0 4px;
	width: 450px;
	height: 100%;
}
html:not(.blank) #gBox > #centerBox > div:first-child {
	margin-top: 10px;
}
html:not(.blank) #gBox > #rightBox {
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
	margin-left: 3px;
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
	/* position: absolute; */
	position: fixed;
	margin: 2px auto auto;
	width: 120px;
	background: #FFF;
	border: 1px solid #DDD;
	border-radius: 2px;
}
#popupAlert {
	z-index: 102;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(51, 51, 51, 0.51);
}
#popupAlert .box {
	position: fixed;
	margin: auto;
	padding: 0;
	width: 300px;
	background: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#popupAlert .box > .title {
	padding: 4px 0 2px;
	width: 100%;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 8px;
}
#popupAlert .box > .title > span,
#popupAlert .box > .title > i {
	color: #666;
	transition: color .5s ease;
}
#popupAlert .box > .title span {
	cursor: pointer;
	color: #999;
	font: normal normal 300 14px/2em "Roboto";
	text-transform: uppercase;
}
#popupAlert .box > .title i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal normal 300 14px/1.8em "FontAwesome";
}
#popupAlert .box > .title:hover i {
	color: #666;
}
#popupAlert .box > .title i[close]:before {
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
	word-wrap: break-word;
}
#popupAlert .box > .main > .content > .passwordVerify {
	
}
#popupAlert .box > .main > .content > .passwordVerify > .lineText {
	
}
#popupAlert .box > .main > .content > .passwordVerify > .lineInput {
	margin: 6px auto;
	text-align: center;
}
#popupAlert .box > .main > .content > .passwordVerify > .lineInput .input {
	margin: auto;
	padding: 6px 8px 7px;
	width: 90%;
}
#popupAlert .box > .options {
	padding: 4px 6px 4px;
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
	background-color: rgba(44, 44, 44, 0.88);
}
#ExplorerPopup > .boxContent {
	z-index: 2;
	position: absolute;
	width: 500px;
	background-color: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#ExplorerPopup > .boxContent > .header {
	padding: 4px 0 2px;
	width: 100%;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 8px;
}
#ExplorerPopup > .boxContent > .header > span,
#ExplorerPopup > .boxContent > .header > i {
	color: #666;
	transition: color .5s ease;
}
#ExplorerPopup > .boxContent > .header span {
	cursor: pointer;
	color: #999;
	font: normal normal 300 14px/2em "Roboto";
	text-transform: uppercase;
}
#ExplorerPopup > .boxContent > .header i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal normal 300 14px/1.8em "FontAwesome";
}
#ExplorerPopup > .boxContent > .header i[close]:hover {
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
#ExplorerPopup > .boxContent > .body > .data > .main {
	padding: 0 0 0 6px;
	overflow-y: scroll;
	overflow-x: hidden;
	display: block;
    height: 565px;
}
#ExplorerPopup > .boxContent > .body .grid > .rows[file] {
	position: relative;
	overflow: hidden;
	display: inline-block;
	vertical-align: top;
	margin: 4px;
	padding: 0;
	width: 150px;
	height: 150px;
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
	padding: 2px 0 2px;
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
	color: #999;
	font: normal normal 300 10px/2em "Roboto";
    text-transform: uppercase;
}
#wrapperLoading {
	z-index: 101;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(44, 44, 44, 0.88);
}
#wrapperLoading > .close {
	z-index: 2;
	cursor: pointer;
	position: absolute;
	top: 20px;
  	right: 20px;
  	color: #FFF;
  	font: normal 300 30px/1em "FontAwesome";
}
#wrapperLoading > .close:before {
	content: "\f00d";
}
#wrapperLoading > .loading {
	z-index: 2;
	cursor: pointer;
	position: absolute;
	display: flex;
	margin: auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	text-align: center;
	width: 100px;
	height: 100px;
	background-color: #FFF;
	-webkit-animation: wrapperLoading_rotateplane 1s infinite ease-in-out;
	-moz-animation: wrapperLoading_rotateplane 1s infinite ease-in-out;
	-o-animation: wrapperLoading_rotateplane 1s infinite ease-in-out;
	animation: wrapperLoading_rotateplane 1s infinite ease-in-out;
}
@-webkit-keyframes wrapperLoading_rotateplane {
  	0% { -webkit-transform: perspective(120px); }
  	50% { -webkit-transform: perspective(120px) rotateY(180deg); }
  	100% { -webkit-transform: perspective(120px) rotateY(180deg)  rotateX(180deg); }
}
@-moz-keyframes wrapperLoading_rotateplane {
  	0% { -moz-transform: perspective(120px); }
  	50% { -moz-transform: perspective(120px) rotateY(180deg); }
  	100% { -moz-transform: perspective(120px) rotateY(180deg)  rotateX(180deg); }
}
@-o-keyframes wrapperLoading_rotateplane {
  	0% { -o-transform: perspective(120px); }
  	50% { -o-transform: perspective(120px) rotateY(180deg); }
  	100% { -o-transform: perspective(120px) rotateY(180deg)  rotateX(180deg); }
}
@keyframes wrapperLoading_rotateplane {
  	0% { transform: perspective(120px); }
  	50% { transform: perspective(120px) rotateY(180deg); }
  	100% { transform: perspective(120px) rotateY(180deg)  rotateX(180deg); }
}
.messagesTab[display] {
	position: fixed;
	width: 275px;
	background: #FFF;
  	border: 1px solid #E5E5E5;
  	border-radius: 4px;
	-webkit-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-webkit-transition: height, width .5s ease;
	-moz-transition: height, width .5s ease;
	transition: height, width .5s ease;
	z-index: 100;
}
.messagesTab[display].inactive {
	width: 175px;
}
.messagesTab[display].inactive.heads {
	width: 52px;
	border: none;
	border-radius: 180px;
}
.messagesTab[display].inactive.heads > .title {
	display: none;
}
.messagesTab[display] > .thumbnail {
	cursor: pointer;
	display: none;
	vertical-align: top;
	padding: 3px;
	height: 46px;
	width: 46px;
	border: none;
}
.messagesTab[display].inactive.heads > .thumbnail {
	display: inline-block;
}
.messagesTab[display] > .thumbnail > .box {
	overflow: hidden;
	height: 46px;
	width: 46px;
	border: none;
	border-radius: 180px;
}
.messagesTab[display] > .thumbnail > .box > .img {
	box-sizing: border-box;
	float: left;
	overflow: hidden;
	background-size: cover;
	background-position: 50% 50%;
	border: none;
}
.messagesTab[display] > .thumbnail > .box.on .img {
	height: 100%;
	width: 100%;
}
.messagesTab[display] > .thumbnail > .box.tw .img {
	width: 50%;
  	height: 100%;
}
.messagesTab[display] > .thumbnail > .box.th .img:nth-child(1) {
	width: 50%;
	height: 100%;
}
.messagesTab[display] > .thumbnail > .box.th .img:nth-child(2),
.messagesTab[display] > .thumbnail > .box.th .img:nth-child(3) {
	width: 50%;
	height: 50%;
}
.messagesTab[display] > .thumbnail > .box.fo .img {
	width: 50%;
	height: 50%;
}
.messagesTab[display] > .title {
	cursor: pointer;
	margin: 0 auto 4px;
	padding: 3px 6px 4px;
	border-bottom: 1px solid #E5E5E5;
}
.messagesTab[display] > .title > div {
	display: inline-block;
  	vertical-align: top;
}
.messagesTab[display] > .title > .name {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 85%;
}
.messagesTab[display].inactive > .title > .name {
	width: 100%;
}
.messagesTab[display].inactive:hover > .title > .name {
	width: 90%;
}
.messagesTab[display] > .title > .name > i {
	margin-right: 2px;
	color: #777;
	font: normal normal 300 16px/1em FontAwesome;
}
.messagesTab[display] > .title > .name > i:before {
	content: "\f086";
}
.messagesTab[display] > .title > .name > span {
	font: normal 300 14px/1.6em "Roboto";
  	color: #666;
}
.messagesTab[display] > .title > .options {
	float: right;
}
.messagesTab[display].inactive > .title > .options > div {
	display: none;
}
.messagesTab[display].inactive:hover > .title > .options > .close {
	display: block;
}
.messagesTab[display] > .title > .options .icon {
	color: #777;
	font: normal normal 300 12px/2em FontAwesome;
}
.messagesTab[display] > .title > .options > div {
	position: relative;
	display: inline-block;
	vertical-align: top;
	margin: 0 4px;
}
.messagesTab[display] > .title > .options > div:last-child {
	margin-right: 0;
}
.messagesTab[display] > .title > .options > .settings > .icon {
	
}
.messagesTab[display] > .title > .options > .settings > .icon:before {
	content: "\f013";
}
.messagesTab[display] > .title > .options > .settings > .tab {
	position: absolute;
	top: 35px;
	right: -18px;
	padding: 2px;
	width: 120px;
	background: #FFF;
	border: 1px solid #FFFFFF;
	border-radius: 4px;
	box-shadow: 0 0 7.5px rgba(190, 190, 190, 0.39);
	z-index: 1;
}
.messagesTab[display] > .title > .options > .settings > .tab:before {
	content: '';
	display: inline-block;
	position: absolute;
	top: -7px;
	right: 15px;
	height: 0;
	width: 0;
	border-top: none;
	border-bottom: 6px solid #FFF;
	border-right: 6px solid transparent;
	border-left: 6px solid transparent;
}
.messagesTab[display] > .title > .options > .settings > .tab > .rows {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin: 0;
	padding: 3px 6px;
	-webki-transition: background .5s ease;
	-moz-transition: background .5s ease;
	transition: background .5s ease;
}
.messagesTab[display] > .title > .options > .settings > .tab > .rows:hover {
	background: #999;
	border: none;
	border-radius: 2px;
}
.messagesTab[display] > .title > .options > .settings > .tab > .rows,
.messagesTab[display] > .title > .options > .settings > .tab > .rows > * {
	color: #999;
	font-size: 12px;
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	transition: color .5s ease;
}
.messagesTab[display] > .title > .options > .settings > .tab > .rows:hover,
.messagesTab[display] > .title > .options > .settings > .tab > .rows:hover > * {
	color: #FFF;
}
.messagesTab[display] > .title > .options > .close > .icon {
	
}
.messagesTab[display] > .title > .options > .close > .icon:before {
	content: "\f00d";
}
.messagesTab[display] > .content {
	overflow-y: auto;
	overflow-x: hidden;
	margin: 4px;
	padding: 4px 4px;
	height: 200px;
	background: #E8E8E8;
	border: 1px solid #E2E2E2;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: inset 0 0 7.5px rgba(175, 175, 175, 0.1);
	box-shadow: inset 0 0 7.5px rgba(175, 175, 175, 0.1);
}
.messagesTab[display] > .content .list {
	margin: auto;
}
.messagesTab[display] > .content .list > .rows {
	margin: 15px 10px 15px auto;
	width: 97%;
}
.messagesTab[display] > .content .list > .rows:first-child {
	margin-top: 4px;
}
.messagesTab[display] > .content .list > .rows:last-child {
	margin-top: 4px;
}
.messagesTab[display] > .content .list > .rows.pin {
	z-index: 2;
	position: absolute;
	cursor: pointer;
	margin: -5% 0 0 0;
	padding: 2%;
	width: 82%;
	background: #FFF;
	border: 1px solid #E0E0E0;
	border-radius: 4px;
}
.messagesTab[display] > .content .list > .rows.pin i {
	color: #999;
  	font: normal normal normal 13px/1 FontAwesome;
}
.messagesTab[display] > .content .list > .rows.pin span {
	color: #999;
	line-height: 1.4em;
	white-space: pre-wrap;
	word-wrap: break-word;
}
.messagesTab[display] > .content .list > .rows.null,
.messagesTab[display] > .content .list > .rows.not_found {
	position: relative;
	margin: 10px 10px 10px auto;
	padding: 2%;
	width: 88%;
	background: #FFF;
	border: 1px solid #FFFFFF;
	border-radius: 4px;
	-webkit-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
}
.messagesTab[display] > .content .list > .rows.null span,
.messagesTab[display] > .content .list > .rows.not_found span {
	color: #999;
}
.messagesTab[display] > .content .list > .rows > .avatar {
	display: inline-block;
	vertical-align: top;
	width: 30px;
	height: 30px;
	border: 2px solid #FFF;
	border-radius: 360px;
	-webkit-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
}
.messagesTab[display] > .content .list > .rows.left > .avatar {
	float: left;
}
.messagesTab[display] > .content .list > .rows.right > .avatar {
	float: right;
}
.messagesTab[display] > .content .list > .rows > .avatar .img {
	width: 100%;
	height: 100%;
	border: none;
	border-radius: 360px;
}
.messagesTab[display] > .content .list > .rows > .text {
	display: inline-block;
  	vertical-align: top;
  	width: 82%;
}
.messagesTab[display] > .content .list > .rows > .text > .context {
	position: relative;
	margin: 3.5% 0 0 4%;
	padding: 2%;
	width: 90%;
	background: #FFF;
	border: 1px solid #FFFFFF;
	border-radius: 4px;
	-webkit-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
}
.messagesTab[display] > .content .list > .rows.left.typing > .text > .context {
	width: 24px;
}
.messagesTab[display] > .content .list > .rows.right.typing > .text > .context {
	float: right;
	margin-right: 1%;
	width: 24px;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .arrow {
	display: inline-block;
	position: absolute;
	top: 6px;
	left: -6px;
	height: 0;
	width: 0;
  	border-top: 6px solid transparent;
  	border-bottom: 6px solid transparent;
  	border-right: none;
  	border-left: none;
}
.messagesTab[display] > .content .list > .rows.left > .text > .context > .arrow {
	border-right: 6px solid #FFFFFF;
}
.messagesTab[display] > .content .list > .rows.right > .text > .context > .arrow {
	left: 100%;
	border-left: 6px solid #FFFFFF;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .timetext,
.messagesTab[display] > .content .list > .rows > .text > .context > .locationtext {
	display: none;
	margin: -2px auto -1px auto;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .locationtext {
	margin-bottom: 2px;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .timetext span,
.messagesTab[display] > .content .list > .rows > .text > .context > .locationtext a {
	color: #AAA;
	line-height: 1em;
	font-size: 10px;
	text-transform: uppercase;
	white-space: nowrap;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .maintext {
	
}
.messagesTab[display] > .content .list > .rows > .text > .context > .maintext span {
	color: #666;
	line-height: 1.4em;
	word-wrap: break-word;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .maintext > .originaltext .i {
	font: normal normal normal 11px/1em FontAwesome;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .maintext > .originaltext .i.translate:before {
	content: "\f0ac";
}
.messagesTab[display] > .content .list > .rows > .text > .context > .maintext > .originaltext span {
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #888;
}
.messagesTab[display] > .content .list > .rows:hover > .text > .context > .maintext > .originaltext span {
	overflow: auto;
}
.messagesTab[display] > .content .list > .rows > .text > .context > .maintext [emotions-key] {
	display: inline-block;
	vertical-align: top;
	height: 14px;
	width: 14px;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	border: none;
}
.messagesTab[display] > .content .list > .rows.typing > .text > .context > .maintext .typing {
	margin: 4px;
	height: 16px;
	width: 14px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 100% 100%;
}
.messagesTab[display] > .content .list > .rows > .text > .infotext {
	position: relative;
	opacity: 0;
	-webkit-transition: opacity .5s ease;
	-moz-transition: opacity .5s ease;
	transition: opacity .5s ease;
}
.messagesTab[display] > .content .list > .rows:hover > .text > .infotext {
	opacity: 1;
}
.messagesTab[display] > .content .list > .rows > .text > .infotext > .icon {
	cursor: pointer;
	position: absolute;
	padding: 2px;
	width: 12px;
  	height: 12px;
	background: #FFF;
	border: none;
	border-radius: 360px;
	color: #999;
	font: normal normal normal 12px/1em FontAwesome;
	z-index: 1;
	-webkit-transition: color .5s ease;
	-moz-transition: color .5s ease;
	transition: color .5s ease;
}
.messagesTab[display] > .content .list > .rows:hover > .text > .infotext > .icon {
	color: #777;
}
.messagesTab[display] > .content .list > .rows > .text > .infotext > .icon.status {
  	bottom: -40px;
  	text-indent: 4px;
}
.messagesTab[display] > .content .list > .rows.left > .text > .infotext > .icon.status {
	left: -14px;
}
.messagesTab[display] > .content .list > .rows.right > .text > .infotext > .icon.status {
	right: -18px;
}
.messagesTab[display] > .content .list > .rows > .text > .infotext > .icon.status:before {
	content: "\f129";
}
.messagesTab[display] > .content .list > .rows.views {
	margin: -12.5px 55px 0 auto;
	width: 75%;
	text-align: right;
}
.messagesTab[display] > .content .list > .rows.views > .box[views] {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	margin: 0 5px;
	padding: 2px;
	width: 15px;
	height: 15px;
}
.messagesTab[display] > .content .list > .rows.views > .box[views] > .img {
	width: 100%;
	height: 100%;
	background: #FFF;
	border: 1px solid #FFF;
	border-radius: 360px;
	-webkit-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
	-moz-box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
  	box-shadow: 0 0 7.5px rgba(175, 175, 175, 0.1);
}
.messagesTab[display] > .type {
	text-align: center;
}
.messagesTab[display] > .type > .input {
	padding: 1.5% 2% 1.5%;
	width: 92%;
	height: 19px;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
	resize: none;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#popupCreateMessages {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(51, 51, 51, 0.51);
}
#popupCreateMessages > .box {
	position: fixed;
	margin: 0;
	padding: 0;
	width: 400px;
	background: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#popupCreateMessages .box > .title {
	position: relative;
	padding: 5px 6px 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
	color: #666;
}
#popupCreateMessages .box > .title span, 
#popupCreateMessages .box > .title i {
	cursor: pointer;
	color: #666;
	line-height: 1.6em;
	font-size: 14px;
	font-weight: 300;
}
#popupCreateMessages .box > .title i {
	position: absolute;
	right: 8px;
	background: #FFF;
	border-radius: 45px;
	font-style: normal;
	font-family: "FontAwesome";
}
#popupCreateMessages .box > .title i:before {
	content: "\f00d";
}
#popupCreateMessages .box > .main > .content {
	margin: auto;
	padding: 4px 0;
	width: 98%;
}
#popupCreateMessages .box > .main > .content > input {
	color: #888;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.6em;
}
#popupCreateMessages .box > .main > .content textarea,
#popupCreateMessages .box > .main > .content input {
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
#popupCreateMessages .box > .main > .content.name input {
	width: 98%;
}
#popupCreateMessages .box > .main > .content .tag {
	cursor: pointer;
	display: inline-block;
	padding: 4px 5px;
	margin: 4px;
	background-color: #777;
	border-radius: 2px;
}
#popupCreateMessages .box > .main > .content .tag > * {
	font-size: 13px;
	color: #EEEEEE;
	line-height: 1.4em;
	text-shadow: 0 -1px 0 #666;
	transtion: color .5s ease;
}
#popupCreateMessages .box > .main > .content .tag:hover > * {
	color: #FFFFFF;
}
#popupCreateMessages .box > .main > .content .tag > i {
	cursor: pointer;
	margin-left: 4px;
	font: normal normal normal 12px/1 'FontAwesome';
}
#popupCreateMessages .box > .main > .content .tag > i:before {
	content: "\f00d";
}
#popupCreateMessages .box > .options {
	padding: 5px 6px 5px;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
#popupCreateMessages .box > .options > div {
	display: inline-block;
	vertical-align: top;
}
#popupCreateMessages .box > .options > .action > div {
	display: inline-block;
	vertical-align: top;
}
#popupCreateMessages .box > .options > .action > div:last-child {
	margin-right: 4px;
}
#popupCreateMessages .box > .options > .action > div span {
	font-size: 12px;
}



#actionSettingMessages {
	z-index: 102;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(51, 51, 51, 0.51);
}
#actionSettingMessages > .box {
	position: fixed;
	margin: auto;
	padding: 0;
	width: 300px;
	background: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#actionSettingMessages > .box > .title {
	position: relative;
	padding: 5px 6px 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
	color: #666;
}
#actionSettingMessages > .box > .title span,
#actionSettingMessages > .box > .title .close {
	cursor: pointer;
	color: #666;
	line-height: 1.6em;
	font-size: 14px;
	font-weight: 300;
}
#actionSettingMessages > .box > .title span {
	font-family: Roboto;
}
#actionSettingMessages > .box > .title .close {
	position: absolute;
	right: 8px;
	background: #FFF;
	border: none;
	font: normal normal normal 12px/1.9em "FontAwesome";
}
#actionSettingMessages > .box > .title .close:before {
	content: "\f00d";
}
#actionSettingMessages > .box > .main > .content {
	margin: auto;
	padding: 6px 0;
	width: 94%;
}
#actionSettingMessages > .box > .main > .content > * {
	color: #888;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.6em;
	word-wrap: break-word;
}
#actionSettingMessages > .box > .main > .content > .rows {
	display: inline-block;
	vertical-align: top;
}
#actionSettingMessages > .box > .main > .content > .rows.description {
	margin-right: 4px;
	line-height: 2.6em;
}
#actionSettingMessages > .box > .main > .content > .rows.input > .tagLanguage {
	margin: 4px;
}
#actionSettingMessages > .box > .main > .content > .rows.input > .input {
	padding: 5px;
	margin: 4px auto;
	width: 90%;
	border: 1px solid #DFDFDF;
	border-radius: 2px;
	resize: none;
	text-indent: 2px;
	font-size: 12px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#actionSettingMessages > .box > .main > .options {
	border-top: 1px solid #E5E5E5;
}
#actionSettingMessages > .box > .main > .options > .rows {
	margin: auto;
	padding: 5px 0;
	width: 94%;
	text-align: right;
}
#actionSettingMessages > .box > .main > .options > .rows .button {
	padding: 4px 8px;
}



#userInfoEditor,
#userInfoVerify {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(44, 44, 44, 0.88);
}
#userInfoEditor > .boxContent,
#userInfoVerify > .boxContent {
	z-index: 2;
	position: absolute;
	width: 375px;
	background-color: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#userInfoEditor > .boxContent > .header > span,
#userInfoEditor > .boxContent > .footer > span,
#userInfoVerify > .boxContent > .header > span,
#userInfoVerify > .boxContent > .footer > span, {
	font-weight: 300;
	font-family: "Roboto";
	color: #999;
}
#userInfoEditor > .boxContent > .header > span,
#userInfoEditor > .boxContent > .header > i,
#userInfoEditor > .boxContent > .footer > span,
#userInfoVerify > .boxContent > .header > span,
#userInfoVerify > .boxContent > .header > i,
#userInfoVerify > .boxContent > .footer > span {
	color: #666;
	transition: color .5s ease;
}
#userInfoEditor > .boxContent > .header,
#userInfoVerify > .boxContent > .header {
	height: 35px;
	width: 100%;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 8px;
}
#userInfoEditor > .boxContent > .header span,
#userInfoVerify > .boxContent > .header span {
	cursor: pointer;
	line-height: 2em;
	font-size: 17px;
}
#userInfoEditor > .boxContent > .header i,
#userInfoVerify > .boxContent > .header i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal 300 16px/2.1em "FontAwesome";
}
#userInfoEditor > .boxContent > .header:hover i,
#userInfoVerify > .boxContent > .header:hover i {
	color: #666;
}
#userInfoEditor > .boxContent > .header i[close]:before,
#userInfoVerify > .boxContent > .header i[close]:before {
	content: "\f00d";
}
#userInfoEditor > .boxContent > .body {
	position: relative;
	width: 100%;
	background-color: #FFF;
	transition: height: .5s ease;
}
#userInfoEditor > .boxContent > .body > .nav {
	margin: 2px 0;
	padding: 2px 0 4px;
	border-bottom: 1px solid #E5E5E5;
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows {
	position: relative;
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	margin: 0 3px;
	width: 14%;
	text-align: center;
	transition: border-color .5s ease;
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows:first-child {
	margin-left: 6px;
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows span {
	display: none;
	color: #999;
	font-size: 15px;
	font-weight: 300;
	line-height: 1.6em;
	transition: color .5s ease;
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows:hover span,
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.active span {
	color: #777;
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows i {
	cursor: pointer;
	color: #999;
	font: normal 300 24px/1.4em "FontAwesome";
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.introduction i:before {
	content: "\f02d";
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.about i:before {
	content: "\f06a";
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.contact i:before {
	content: "\f0e0";
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.education i:before {
	content: "\f19d";
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.workplaces i:before {
	content: "\f0b1";
}
#userInfoEditor > .boxContent > .body > .nav > .list > .rows.places i:before {
	content: "\f041";
}
#userInfoEditor > .boxContent > .body > .nav > .arrow {
	display: inline-block;
	position: absolute;
	margin: 2px 0 0 auto;
	height: 0;
	width: 0;
	transition: all .5s ease;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow:before {
	content: '';
	position: absolute;
	margin-top: -4px;
	border-right: 7px solid transparent;
	border-left: 7px solid transparent;
	border-bottom: 7px solid #E5E5E5;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow:after {
	content: '';
	position: absolute;
	margin-top: -2px;
	border-right: 7px solid transparent;
	border-left: 7px solid transparent;
	border-bottom: 7px solid #FFF;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow[arrow='introduction'] {
	margin-left: 24px;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow[arrow='about'] {
	margin-left: 86px;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow[arrow='contact'] {
	margin-left: 148px;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow[arrow='education'] {
	margin-left: 210px;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow[arrow='workplaces'] {
	margin-left: 270px;
}
#userInfoEditor > .boxContent > .body > .nav > .arrow[arrow='places'] {
	margin-left: 332px;
}
#userInfoEditor > .boxContent > .body > .data {
	overflow-y: auto;
	max-height: 450px;
}
#userInfoEditor > .boxContent > .body .waiting_setup_data,
#userInfoEditor > .boxContent > .body .empty_data,
#userInfoEditor > .boxContent > .body .not_allowed {
	padding: 10px;
	text-align: center;
}
#userInfoEditor > .boxContent > .body .waiting_setup_data span,
#userInfoEditor > .boxContent > .body .empty_data span,
#userInfoEditor > .boxContent > .body .not_allowed span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}
#userInfoEditor > .boxContent > .body .not_allowed i {
	color: #999;
	font: normal normal 75px/1em "FontAwesome";
}
#userInfoEditor > .boxContent > .body .not_allowed i:before {
	content: "\f05e";
}
#userInfoEditor > .boxContent > .body .main {
	padding: 6px 2px;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] {
	overflow-y: auto;
	max-height: 400px;
}
#userInfoEditor > .boxContent > .body .main[type='education'] {
	overflow-y: auto;
	max-height: 400px;
}
#userInfoEditor > .boxContent > .body .main > .lines {
	padding: 2px 0;
  	text-align: center;
}
#userInfoEditor > .boxContent > .body .main > .lines.verify {
	margin-top: 6px;
}
#userInfoEditor > .boxContent > .body .main > .lines.verify label {
	display: none;
}
#userInfoEditor > .boxContent > .body .main > .lines.verify .input {
	width: 72%;
}
#userInfoEditor > .boxContent > .body .main > .lines.verify .button {
	padding: 6px 10px;
}
#userInfoEditor > .boxContent > .body .main > .lines.language .tagLanguage {
  	margin-left: -250px;
}
#userInfoEditor > .boxContent > .body .main > .rows {
	display: inline-block;
	vertical-align: top;
	padding: 2px 1px;
	width: 46.25%;
	text-align: center;
}
#userInfoEditor > .boxContent > .body .main > .rows.firstname,
#userInfoEditor > .boxContent > .body .main > .rows.lastname {
	padding: 4px 1px 2px;
}
#userInfoEditor > .boxContent > .body .main > .rows.odd {
	margin-left: 11px;
}
#userInfoEditor > .boxContent > .body .main > .lines > label,
#userInfoEditor > .boxContent > .body .main > .rows > label {
	display: block;
	margin: auto;
	padding: 0 0 2px;
	width: 91%;
	color: #777;
	font: normal 400 11px/1.6em "Roboto";
	text-indent: 2px;
	text-transform: uppercase;
	text-align: left;
}
#userInfoEditor > .boxContent > .body .main > .rows > label {
	text-indent: 0;
}
#userInfoEditor > .boxContent > .body .main > .lines > label.none,
#userInfoEditor > .boxContent > .body .main > .rows > label.none {
	display: none;
}
#userInfoEditor > .boxContent > .body .main > .lines input,
#userInfoEditor > .boxContent > .body .main > .lines textarea,
#userInfoEditor > .boxContent > .body .main > .rows input,
#userInfoEditor > .boxContent > .body .main > .rows textarea {
	padding: 6px 8px 7px;
	width: 87.5%;
	border: 1px solid #DDD;
	border-radius: 4px;
	resize: none;
	color: #999;
	font-size: 12px;
	-webkit-transition: .5s color ease;
	-moz-transition: .5s color ease;
	-o-transition: .5s color ease;
	transition: .5s color ease;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines input,
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines textarea,
#userInfoEditor > .boxContent > .body .main[type='contact'] > .rows input,
#userInfoEditor > .boxContent > .body .main[type='contact'] > .rows textarea {
	width: 78%;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines input,
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines textarea,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines input,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines textarea,
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines input,
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines textarea {
	width: 87.5%;
}
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines > .textinfo > .li:first-child {
	text-align: left;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.school input,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.company input,
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines .li.live input,
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines .li.country input {
	width: 78%;
}
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.work.awards input {
	width: 41%;
}
#userInfoEditor > .boxContent > .body .main > .lines .textinfo[removing] input,
#userInfoEditor > .boxContent > .body .main > .lines .textinfo[removing] textarea,
#userInfoEditor > .boxContent > .body .main > .rows .textinfo[removing] input,
#userInfoEditor > .boxContent > .body .main > .rows .textinfo[removing] textarea {
	background-color: #F7E7E7;
	-webkit-box-shadow: inset 0 0 4px #DDDDDD
	-moz-box-shadow: inset 0 0 4px #DDDDDD;
	-o-box-shadow: inset 0 0 4px #DDDDDD;
	box-shadow: inset 0 0 4px #E8DADA;
	border-color: rgb(250, 214, 214);
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.important .phone {
	margin-top: 2px;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.important .phone > .private {
	margin-top: 3px;
	margin-left: 1px;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines > .add,
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines > .add,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines > .add {
	margin: 4px 0;
	height: 14px;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines > .add > .addbutton,
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines > .add > .addbutton,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines > .add > .addbutton {
	float: left;
	cursor: pointer;
	text-indent: 20px;
	color: #777;
  	font-weight: 400;
  	font-size: 13px;
  	line-height: 1.4em;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li,
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines .li {
	margin: 4px 0;
}
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines .li [tag-obj] {
	/* float: left; */
	margin-top: 3px;
  	margin-left: 0;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.time,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.time {
	margin-top: -4px;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.time > div,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.time > div {
	display: inline-block;
	vertical-align: top;
	width: 46%;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.time > div label,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.time > div label {
	display: none;
	cursor: pointer;
	color: #777;
	font-weight: 400;
	font-size: 13px;
	line-height: 1.4em;
	text-transform: lowercase;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.time > div > div > .input.day,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.time > div > div > .input.day {
	width: 16%;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.time > div > div > .input.month,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.time > div > div > .input.month {
	width: 22%;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .li.time > div > div > .input.year,
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .li.time > div > div > .input.year {
	width: 24%;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.phone > div,
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.email > div {
	margin: 4px 0;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.phone > div:nth-child(2),
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.email > div:nth-child(2) {
	margin-top: 0;
}
#userInfoEditor > .boxContent > .body .main > .lines input:focus,
#userInfoEditor > .boxContent > .body .main > .lines textarea:focus,
#userInfoEditor > .boxContent > .body .main > .rows input:focus,
#userInfoEditor > .boxContent > .body .main > .rows textarea:focus {
  	background-color: #EFEFEF;
  	-webkit-box-shadow: inset 0 0 4px #DDDDDD;
  	-moz-box-shadow: inset 0 0 4px #DDDDDD;
  	-o-box-shadow: inset 0 0 4px #DDDDDD;
  	box-shadow: inset 0 0 4px #DDDDDD;
}
#userInfoEditor > .boxContent > .body .main > .lines input[disabled],
#userInfoEditor > .boxContent > .body .main > .rows input[disabled] {
	cursor: pointer;
}
#userInfoEditor > .boxContent > .body .main > .lines.name .input.name,
#userInfoEditor > .boxContent > .body .main > .lines.birthday .input.birthday {
	width: 24.60%;
  	margin: 0 2px 0 0;
}
#userInfoEditor > .boxContent > .body .main > .lines.name .input.firstname {
	margin-left: 1px;
}
#userInfoEditor > .boxContent > .body .main > .lines.name .input.fullname,
#userInfoEditor > .boxContent > .body .main > .lines.name .input.nickname {
	width: 40%;
}
#userInfoEditor > .boxContent > .body .main > .lines.name .input.nickname {
	margin-top: 5px;
	margin-left: 2px;
}
#userInfoEditor > .boxContent > .body .main > .lines.gender {
	
}
#userInfoEditor > .boxContent > .body .main > .lines.gender .input {
	margin: auto;
	padding: 2px 9px;
	width: 85%;
	background: #E9E9E9;
	border: 1px solid #DFDFDF;
	border-radius: 4px;
	text-align: left;
}
#userInfoEditor > .boxContent > .body .main > .lines.gender .input > .checkbox:first-child {
	margin: 0 -6px;
}
#userInfoEditor > .boxContent > .body .main > .lines.gender .input > .checkbox > .text {
	padding-left: 22px;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox {
	display: inline-block;
	vertical-align: top;
	cursor: pointer;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .dot,
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .text,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .dot,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .text {
	display: inline-block;
	vertical-align: top;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .dot,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .dot {
	position: absolute;
	margin: 7px;
	border: 1px solid #D0D0D0;
	height: 10px;
	width: 10px;
	-webkit-border-radius: 180px;
	-moz-border-radius: 180px;
	border-radius: 180px;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox.active > .dot,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox.active > .dot {
	border-color: #FFF;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .dot > div,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .dot > div {
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
#userInfoEditor > .boxContent > .body .main > .lines .checkbox.active > .dot > div,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox.active > .dot > div {
	background: #BBB;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .text,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .text {
	padding: 5px 8px 5px 24px;
	background: #E9E9E9;
	border: none;
	border-radius: 4px;
}
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .text span,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .text span,
#userInfoEditor > .boxContent > .body .main > .lines .checkbox > .text a,
#userInfoEditor > .boxContent > .body .main > .rows .checkbox > .text a {
	color: #AAA;
	font: normal 400 12px/1em "Roboto";
}
#userInfoEditor > .boxContent > .body .main > .lines .private {
	display: inline-block;
	vertical-align: top;
	margin-top: 1px;
	margin-left: 4px;
}
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.phone .private,
#userInfoEditor > .boxContent > .body .main[type='contact'] > .lines.email .private {
	margin-left: 0;
}
#userInfoEditor > .boxContent > .body .main[type='education'] > .lines .private {
	margin-left: 2px;
}
#userInfoEditor > .boxContent > .body .main[type='workplaces'] > .lines .private {
	margin-left: 2px;
}
#userInfoEditor > .boxContent > .body .main[type='places'] > .lines .private {
	margin-left: 14px;
}
#userInfoEditor > .boxContent > .body .main > .lines .private .choosePrivate {
	width: 32px;
}
#userInfoEditor > .boxContent > .body .main > .lines .private .choosePrivate .list {
	
}
#userInfoEditor > .boxContent > .body .main > .lines .private .choosePrivate .selected > .rows {
	padding: 6px;
}
#userInfoEditor > .boxContent > .body .main > .lines .private .choosePrivate .selected > .rows > span {
	display: none;
}
#userInfoEditor > .boxContent > .footer,
#userInfoVerify > .boxContent > .footer {
	width: 100%;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
#userInfoEditor > .boxContent > .footer > .action,
#userInfoVerify > .boxContent > .footer > .action {
	margin: auto;
	padding: 4px 0;
	width: 96%;
	border-bottom: 1px dotted #DDD;
	text-align: center;
}
#userInfoEditor > .boxContent > .footer > .text span,
#userInfoVerify > .boxContent > .footer > .text span {
	margin-right: 8px;
	line-height: 2em;
	font-size: 13px;
	color: #999;
}

#sitesQuickInfo {
	z-index: 100;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(44, 44, 44, 0.88);
}
#sitesQuickInfo > .boxContent {
	z-index: 2;
	position: absolute;
	width: 350px;
	background-color: #FFF;
	border: none;
	border-radius: 4px;
	transition: all .5s ease;
}
#sitesQuickInfo > .boxContent > .header {
	padding: 4px 0 3px;
	width: 100%;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 8px;
}
#sitesQuickInfo > .boxContent > .header > span,
#sitesQuickInfo > .boxContent > .header > i {
	color: #666;
	transition: color .5s ease;
}
#sitesQuickInfo > .boxContent > .header span {
	cursor: pointer;
	color: #999;
	font: normal normal 300 14px/2em "Roboto";
	text-transform: uppercase;
}
#sitesQuickInfo > .boxContent > .header i {
	cursor: pointer;
	float: right;
	margin-right: 10px;
	color: #999;
	font: normal normal 300 14px/1.8em "FontAwesome";
}
#sitesQuickInfo > .boxContent > .header:hover i {
	color: #666;
}
#sitesQuickInfo > .boxContent > .header i[close]:before {
	content: "\f00d";
}
#sitesQuickInfo > .boxContent > .body {
	position: relative;
	width: 100%;
	background-color: #FFF;
	text-align: center;
}
#sitesQuickInfo > .boxContent > .body img {
	width: 100%;
}
#sitesQuickInfo > .boxContent > .body .loading {
	color: #999;
    line-height: 3em;
}
#sitesQuickInfo > .boxContent > .footer {
	padding: 2px 0 2px;
	width: 100%;
	border-top: 1px solid #E5E5E5;
	text-align: right;
}
#sitesQuickInfo > .boxContent > .footer > .text span {
	margin-right: 8px;
	color: #999;
	font: normal normal 300 10px/2em "Roboto";
	text-transform: uppercase;
}