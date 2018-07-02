/* include */
@import url(<?php print $_tool->links("source/css/template/webicon.css"); ?>);

/* config */
html {font-family:sans-serif; -ms-text-size-adjust:100%; -webkit-text-size-adjust:100%} body {margin:0} article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {display:block} audio, canvas, progress, video {display:inline-block; vertical-align:baseline} audio:not([controls]) {display:none; height:0} [hidden], template {display:none} a {background-color:transparent} a:active, a:hover {outline:0} abbr[title] {border-bottom:1px dotted} b, strong {font-weight:bold} dfn {font-style:italic} h1 {font-size:2em; margin:.67em 0} mark {background:#ff0; color:#000} small {font-size:80%} sub, sup {font-size:75%; line-height:0; position:relative; vertical-align:baseline} sup {top:-0.5em} sub {bottom:-0.25em} img {border:0} svg:not(:root) {overflow:hidden} figure {margin:1em 40px} hr {box-sizing:content-box; height:0} pre {overflow:auto} code, kbd, pre, samp {font-family:monospace, monospace; font-size:1em} button, input, optgroup, select, textarea {color:inherit; font:inherit; margin:0} button {overflow:visible} button, select {text-transform:none} button, html input[type="button"], input[type="reset"], input[type="submit"] {-webkit-appearance:button; cursor:pointer} button[disabled], html input[disabled] {cursor:default} button::-moz-focus-inner, input::-moz-focus-inner {border:0; padding:0} input {line-height:normal} input[type="checkbox"], input[type="radio"] {box-sizing:border-box; padding:0} input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button {height:auto} input[type="search"] {-webkit-appearance:textfield; box-sizing:content-box} input[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration {-webkit-appearance:none} fieldset {border:1px solid silver; margin:0 2px; padding:.35em .625em .75em} legend {border:0; padding:0} textarea {overflow:auto} optgroup {font-weight:bold} table {border-collapse:collapse; border-spacing:0} td, th {padding:0} 
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code,del, dfn, em, img, ins, kbd, q, samp,small, strong, sub, sup, var,b, i,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td,article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary,time, mark, audio, video{margin:0;padding:0;border:0 none;list-style:none;font-size:100%;border-spacing:0;border-collapse:collapse;outline:none;-webkit-tap-highlight-color:rgba(0,0,0,0); }
* {
	margin: 0;
	padding: 0;
}
html, a, div, span, button, input, selection, body, select, textarea {
	font: normal 12px/1.4em 'Helvetica Neue', 'HelveticaNeue', Helvetica, Arial, sans-serif;
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

/* shortcut */
.clearfix {
	zoom: 1;
	font-size: 0;
}
.scroll-disable {
	overflow-y: hidden;
	overflow-x: hidden;
}
.scroll-disable-y {
	overflow-y: hidden;
}
.scroll-disable-x {
	overflow-x: hidden;
}
.float-right {
	float: right;
}
.float-left {
	float: left;
}
.hide {
	display: none;
}
.nowrap {
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.uppercase {
	text-transform: uppercase;
}
._button {
	cursor: pointer;
	padding: 5px 10px 6px;
	background: #fff;
	border: 1px solid #D8D8D8;
	border-radius: 2px;
	color: #999;
	font-size: 12px;
	font-weight: 300;
	text-align: center;
	transition: all .5s ease;
}
._button:hover {
	background: #E9E9E9;
    border: 1px solid #D8D8D8;
    box-shadow: 0 2px 6px #D5D5D5;
}
._button:active {
	background: #E9E9E9;
    border: 1px solid #D8D8D8;
    box-shadow: inset 0 0 2px #D5D5D5;
}
._textarea {}
._input {}
._card {
	background: #fff;
	border: none;
	border-radius: 2px;
	box-shadow: 0 1px 4px rgba(200, 200, 200, 0.25);
}

/* animation */
@-webkit-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-moz-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-ms-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@-o-keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }
@keyframes buffering-stripes { from {background-position: 0 0;} to {background-position: 30px 0;} }


/* main */
body {
	background: #E9E9E9;
}
body #g-page > #g-navbar {
	z-index: 98;
	position: fixed;
	top: 0;
	left: 0;
	height: 44px;
	width: 100%;
	background: #EEE;
	border: none;
	border-bottom: 1px solid #fff;
	box-shadow: 0 1px 4px rgba(200, 200, 200, 0.25);
	transition: all .5s ease;
}
body #g-page > #g-navbar > .content {
	margin: auto;
	height: 100%;
	width: 100%;
}
body #g-page > #g-sidebar {
	z-index: 99;
	position: fixed;
	top: 0;
	right: 0;
	height: 100%;
	width: 200px;
	background: #EEE;
	border: none;
	border-left: 1px solid #fff;
	box-shadow: 1px 0 4px rgba(200, 200, 200, 0.25);
	transition: all .5s ease;
}
body #g-page > #g-main {
	margin: auto;
	width: 900px;
	transition: all .5s ease;
}
body #g-page > #g-main > .window > .content {
	margin-top: 55px;
}
body #g-page > #g-main > .window > .include {
	display: none !important;
}
/* page module */
.module-tab {
	display: inline-block;
	vertical-align: top;
	width: 100%;
}
.module-tab > .module-card {
	display: inline-block;
	vertical-align: top;
}
.module-tab.e-m > .module-card.extra {
	margin: auto 5px auto auto;
	width: 235px;
}
.module-tab.e-m > .module-card.main {
	margin: auto auto auto 5px;
	width: calc(100% - 245px);
}

/* window */
#g-window {
	z-index: 99;
	position: fixed;
	bottom: 0;
	left: 0;
	max-width: 100%;
	background: transparent;
	transition: all .5s ease;
}
#g-window.choosing {
	position: fixed;
	display: inline-flex;
	top: 0;
	left: 0;
	margin: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(230, 230, 230, 0.8);
	transition: all .5s ease;
}
#g-window > .content {
	position: relative;
	overflow: hidden;
	margin-bottom: 5px;
	padding: 5px 0;
}
#g-window.choosing > .content {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: 100px 25% !important;
    max-width: none !important;
    width: 50% !important;
}
#g-window > .content > .li {
	cursor: pointer;
	display: inline-block;
    vertical-align: top;
    overflow: hidden;
    margin: 3px;
	padding: 5px 8px 6px;
	height: 16px;
	max-width: 200px;
	color: #AAA;
	border-top: 2px solid #999;
	border-bottom: 2px solid transparent;
	transition: all .5s ease, border .25s ease;
}
#g-window.choosing > .content > .li {
	max-width: 200px;
}
#g-window > .content > .li:hover {
	color: #777;
}
#g-window > .content > .li.active {
	border-top: 2px solid #3CC599;
	color: #777;
}
#g-window > .content > .li:first-child {
	margin-left: 0;
}
#g-window > .content > .li:nth-child(n+5) {}
#g-window > .content > .li.more {
	padding: 5px 8px;
	height: 17px;
}
#g-window > .content > .li.more > .main > .conicon > .icon {
	padding-top: 1px;
	color: #BBB;
	font: normal normal 300 16px/1em 'WebIcon';
	transition: color .5s ease;
}
#g-window > .content > .li.more:hover > .main > .conicon > .icon {
	color: #999;
}
#g-window > .content > .li.more > .main > .conicon > .icon:before {
	content: '\f24d';
}
#g-window.choosing > .content > .li.more > .main > .conicon > .icon:before {
	content: '\f00d';
}
#g-window > .content > .li.add {
	padding: 5px 8px;
	height: 17px;
}
#g-window > .content > .li.add > .main > .conicon > .icon {
	padding-top: 1px;
	color: #BBB;
	font: normal normal 300 16px/1em 'WebIcon';
	transition: color .5s ease;
}
#g-window > .content > .li.add:hover > .main > .conicon > .icon {
	color: #999;
}
#g-window > .content > .li.add > .main > .conicon > .icon:before {
	content: '\f067';
}
#g-window > .content > .li > .main {}
#g-window > .content > .li:not(.options) > .main > .conicon {
	display: inline-block;
    vertical-align: top;
}
#g-window > .content > .li:not(.options) > .main > .conicon > .icon {
	margin: 4px 2px 0 0;
	color: #BBB;
	font: normal normal 300 10px/1em 'WebIcon';
	transition: color .5s ease;
}
#g-window > .content > .li:not(.options):hover > .main > .conicon > .icon {
	color: #888;
}
#g-window > .content > .li:not(.options).active > .main > .conicon > .icon {
	color: #3CC599;
}
#g-window > .content > .li:not(.options) > .main > .conicon:hover > .icon {
	margin-top: 2px;
	color: #F871C0;
	font-size: 12px;
}
#g-window > .content > .li:not(.options) > .main > .conicon > .icon:before {
	content: '\f10c';
}
#g-window > .content > .li:not(.options):hover > .main > .conicon > .icon:before,
#g-window > .content > .li:not(.options).active > .main > .conicon > .icon:before {
	content: '\f111';
}
#g-window > .content > .li:not(.options) > .main > .conicon:hover > .icon:before {
	content: '\f00d';
}
#g-window > .content > .li:not(.options) > .main > .context {
	display: inline-block;
    vertical-align: top;
	max-width: 185px;
}
#g-window > .content > .li:not(.options) > .main > .context > .text {
	color: #AAA;
	font-size: 12px;
	font-weight: normal;
    transition: color .5s ease;
}
#g-window > .content > .li:not(.options):hover > .main > .context > .text,
#g-window > .content > .li:not(.options).active > .main > .context > .text {
	color: #777;
}
#g-window > .content > .li:not(.options) > .options {}

/* notification */
#g-notification {
	z-index: 111;
	position: fixed;
    top: 25px;
    right: 25px;
    width: 25%;
    background: transparent;
    transition: all .5s ease;
}
#g-notification > .content {
	position: relative;
}
#g-notification > .content > .li {
	opacity: 1;
    position: inherit;
    display: inline-block;
    vertical-align: top;
    overflow: hidden;
    margin: 5px auto;
    width: 100%;
    background: #fff;
	border: none;
    border-radius: 4px;
	box-shadow: 0 1px 9px rgba(175, 175, 175, 0.25);
    transition: width .75s ease;
}
#g-notification > .content > .li:first-child {
	margin-top: 0;
}
#g-notification > .content > .li > .header {
	padding: 5px 4px 5px;
	width: calc(100% - 8px);
    border-bottom: 1px solid #E5E5E5;
}
#g-notification > .content > .li > .header > .action {
	display: inline-block;
    vertical-align: top;
}
#g-notification > .content > .li > .header > .action .icon {
	opacity: 0.75;
	cursor: pointer;
	margin: 2px 2px auto 2px;
	color: #CCC;
	font: normal normal 300 12px/1em 'WebIcon';
	transition: all .5s ease;
}
#g-notification > .content > .li:hover > .header > .action .icon.close {
	opacity: 1;
}
#g-notification > .content > .li > .header:hover > .action .icon.close:before {
	content: '\f00d' !important;
}
#g-notification > .content > .li > .header > .action .icon.close:hover {
	color: #F19D9D !important;
}
#g-notification > .content > .li > .header > .action .icon {
	color: #C5C5C5;
}
#g-notification > .content > .li > .header > .action .icon:before {	
	content: '\f111';
}
#g-notification > .content > .li.bell > .header > .action .icon {
	color: #B0B0B0;
}
#g-notification > .content > .li.bell > .header > .action .icon:before {	
	content: '\f0f3';
}
#g-notification > .content > .li.cloud > .header > .action .icon {
	color: #B0C1DE;
}
#g-notification > .content > .li.cloud > .header > .action .icon:before {	
	content: '\f0c2';
}
#g-notification > .content > .li.mail > .header > .action .icon {
	color: #7FB5E2;
}
#g-notification > .content > .li.mail > .header > .action .icon:before {	
	content: '\f0e0';
}
#g-notification > .content > .li.map > .header > .action .icon {
	color: #FFDE00;
}
#g-notification > .content > .li.map > .header > .action .icon:before {	
	content: '\f279';
}
#g-notification > .content > .li.place > .header > .action .icon {
	color: #EF5D5D;
}
#g-notification > .content > .li.place > .header > .action .icon:before {	
	content: '\f041';
}
#g-notification > .content > .li.news > .header > .action .icon {
	color: #63DC7C;
}
#g-notification > .content > .li.news > .header > .action .icon:before {	
	content: '\f1ea';
}
#g-notification > .content > .li.info > .header > .action .icon {
	color: #888;
}
#g-notification > .content > .li.info > .header > .action .icon:before {	
	content: '\f05a';
}
#g-notification > .content > .li.warning > .header > .action .icon {
	color: #F9AF43;
}
#g-notification > .content > .li.warning > .header > .action .icon:before {	
	content: '\f071';
}
#g-notification > .content > .li.note > .header > .action .icon {
	color: #F7D639;
}
#g-notification > .content > .li.note > .header > .action .icon:before {	
	content: '\f249';
}
#g-notification > .content > .li.calendar > .header > .action .icon {
	color: #65CEFF;
}
#g-notification > .content > .li.calendar > .header > .action .icon:before {	
	content: '\f073';
}
#g-notification > .content > .li.image > .header > .action .icon {
	color: #DC63BD;
}
#g-notification > .content > .li.image > .header > .action .icon:before {	
	content: '\f03e';
}
#g-notification > .content > .li.audio > .header > .action .icon {
	color: #61C1D6;
}
#g-notification > .content > .li.audio > .header > .action .icon:before {	
	content: '\f001';
}
#g-notification > .content > .li.video > .header > .action .icon {
	color: #DC6390;
}
#g-notification > .content > .li.video > .header > .action .icon:before {	
	content: '\f03d';
}
#g-notification > .content > .li.window > .header > .action .icon {
	color: #C28DF0;
}
#g-notification > .content > .li.window > .header > .action .icon:before {	
	content: '\f24d';
}
#g-notification > .content > .li.comment > .header > .action .icon {
	color: #3A9EDD;
}
#g-notification > .content > .li.comment > .header > .action .icon:before {	
	content: '\f075';
}
#g-notification > .content > .li.tips > .header > .action .icon {
	color: #3ABD92;
}
#g-notification > .content > .li.tips > .header > .action .icon:before {	
	content: '\f059';
}
#g-notification > .content > .li > .header > .title {
	display: inline-block;
    vertical-align: top;
	width: 90%;
    word-wrap: break-word;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    color: #AAA;
    transition: color .5s ease;
}
#g-notification > .content > .li > .header > .title .text {
	cursor: pointer;
	color: #AAA;
	font: normal normal 300 11px/1em 'Roboto';
	text-transform: uppercase;
	transition: color .5s ease;
}
#g-notification > .content > .li:hover > .header > .title,
#g-notification > .content > .li:hover > .header > .title .text {
	color: #999;
}
#g-notification > .content > .li.pin > .header > .title .text:before {
	color: #AAA;
	content: ' • ';
}
#g-notification > .content > .li > .body {
	margin: 3px auto 3px auto;
    padding: 6px 6px 6px;
    width: calc(100% - 12px);
    border-top: 1px solid #E5E5E5;
    border-bottom: 1px solid #E5E5E5;
}
#g-notification > .content > .li > .body,
#g-notification > .content > .li > .body > * {
	vertical-align: top;
	word-wrap: break-word;
	word-break: break-all;
	color: #999;
}
#g-notification > .content > .li.not-note > .body {
	margin-bottom: auto;
	border-bottom: none;
}
#g-notification > .content > .li > .body > .main {
	transition: all .5s ease;
}
#g-notification > .content > .li.collapse > .body > .main {
	overflow-y: auto;
	overflow-x: hidden;
	padding: 0 4px;
	max-height: 61px;
}
#g-notification > .content > .li.collapse:hover > .body > .main {
	max-height: auto;
}
#g-notification > .content > .li.collapse > .body > .main::-webkit-scrollbar {
	cursor: pointer;
    width: 7px;
    background: #E0E0E0;
    border-radius: 2px;
}
#g-notification > .content > .li.collapse > .body > .main::-webkit-scrollbar-thumb {
	cursor: pointer;
    background: #fff;
    border: 2px solid #E0E0E0;
    border-radius: 4px;
}
#g-notification > .content > .li > .footer {
	padding: 0 4px 3px;
	width: calc(100% - 8px);
    border-top: 1px solid #E5E5E5;
}
#g-notification > .content > .li.not-note > .footer {
	display: none;
}
#g-notification > .content > .li > .footer .text {
	cursor: pointer;
	color: #999;
	font: normal normal 300 10px/1em 'Roboto';
    text-transform: uppercase;
}
#g-notification > .content > .li > .footer > .note {
	text-align: right;
}
#g-notification > .content > .li.image-action-preview {}
#g-notification > .content > .li.image-action-preview .body > .main .undo {
	cursor: pointer;
}
#g-notification > .content > .li.image-action-preview .body > .main .undo.text {
	color: #999;
	transition: color 0.5s ease;
}
#g-notification > .content > .li.image-action-preview .body > .main .undo.text:hover {
	color: #E2A0A0;
}
#g-notification > .content > .li.window-information-preview {}
#g-notification > .content > .li.window-information-preview .body > .main > .table {
	
}
#g-notification > .content > .li.window-information-preview .body > .main > .table > .row {
	margin: 2px auto;
}
#g-notification > .content > .li.window-information-preview .body > .main > .table > .row > .label,
#g-notification > .content > .li.window-information-preview .body > .main > .table > .row > .value {
	display: inline-block;
	vertical-align: top;
}
#g-notification > .content > .li.window-information-preview .body > .main > .table > .row > .label {
	max-width: 25%;
	color: #bbb;
	font-size: 12px;
	font-weight: normal;
}
#g-notification > .content > .li.window-information-preview .body > .main > .table > .row > .value {
	max-width: calc(75% - 5px);
	color: #999;
	font-size: 12px;
	font-weight: normal;
}
#g-notification > .content > .li.image-information-preview {}
#g-notification > .content > .li.image-information-preview .body > .main > .table {
	
}
#g-notification > .content > .li.image-information-preview .body > .main > .table > .row {
	margin: 2px auto;
}
#g-notification > .content > .li.image-information-preview .body > .main > .table > .row > .label,
#g-notification > .content > .li.image-information-preview .body > .main > .table > .row > .value {
	display: inline-block;
	vertical-align: top;
}
#g-notification > .content > .li.image-information-preview .body > .main > .table > .row > .label {
	max-width: 25%;
	color: #bbb;
	font-size: 12px;
	font-weight: normal;
}
#g-notification > .content > .li.image-information-preview .body > .main > .table > .row > .value {
	max-width: calc(75% - 5px);
	color: #999;
	font-size: 12px;
	font-weight: normal;
}
#g-notification > .content > .li.image-upload-preview {}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview {
	margin-top: 8px;
	padding: 8px 2px 2px;
	border-top: 1px solid #e9e9e9;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .thumbnail {
	display: inline-block;
	vertical-align: top;
	width: 40px;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .thumbnail > .img {
	height: 40px;
	width: 40px;
	background-color: #CCC;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 50% 50%;
	border: none;
	border-radius: 2px;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context {
	display: inline-block;
	vertical-align: top;
	margin-left: 5px;
	width: calc(100% - 50px);
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context > .row  {
	width: 100%;
	font-size: 12px;
	color: #999;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context > .row.filename {
	margin-top: 4px;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context > .row.filename .text {
	font-weight: bold;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context > .row.filesize {}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context > .row.filesize .text {
	font-weight: normal;
}
#g-notification > .content > .li.image-upload-preview .body > .main > .preview > .context > .row > .text {
	font-size: 12px;
	color: #999;
}

/* privacy */
.g-privacy-button {
	position: relative;
	display: inline-block;
    vertical-align: top;
}
.g-privacy-button > .main {
	cursor: pointer;
	display: inline-block;
    vertical-align: top;
	cursor: pointer;
	padding: 5px 8px 6px 5px;
	background: #fff;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
	color: #999;
	font-size: 12px;
	font-weight: 300;
	transition: all .5s ease;
	text-align: center;
}
.g-privacy-button > .main:hover {
    border: 1px solid #D8D8D8;
    box-shadow: 0 2px 6px #D5D5D5;
}
.g-privacy-button > .main:active,
.g-privacy-button.active > .main {
	background: #E9E9E9;
    border: 1px solid #D8D8D8;
    box-shadow: inset 0 0 2px #D5D5D5;
}
.g-privacy-button > .main > .row {
	display: inline-block;
    vertical-align: top;
}
.g-privacy-button > .main > .thumbnail {}
.g-privacy-button > .main > .icon {
	margin: 1px 3px auto auto;
	width: 18px;
    text-align: center;
}
.g-privacy-button > .main > .icon > .i {
	color: #AAA;
    font: normal normal 300 14px/1em 'WebIcon';
    transition: color .5s ease;
}
.g-privacy-button > .main > .context {}
.g-privacy-button > .main > .context > .text {
	color: #999;
    font-size: 12px;
    font-weight: normal;
    transition: color .5s ease;
}
.g-privacy-button > .list {
	z-index: 99;
	position: absolute;
    left: 0;
	margin: 4px auto auto auto;
    padding: 2px;
    max-height: 100px;
    background: #fff;
	width: 100px;
    box-shadow: 0 0 10px rgba(175, 175, 175, .75);
}
.g-privacy-button > .list > .main {
	overflow-x: hidden;
    overflow-y: auto;
    height: 100%;
    width: 100%;
}
.g-privacy-button > .list > .main::-webkit-scrollbar {
	cursor: pointer;
    width: 6px;
    background: #E0E0E0;
    border-radius: 2px;
}
.g-privacy-button > .list > .main::-webkit-scrollbar-thumb {
	cursor: pointer;
    background: #fff;
    border: 2px solid #E0E0E0;
    border-radius: 4px;
}
.g-privacy-button > .list > .main > .li {
	cursor: pointer;
	padding: 4px;
}
.g-privacy-button > .list > .main > .li > .row {
	display: inline-block;
    vertical-align: top;
}
.g-privacy-button > .list > .main > .li > .icon {
	margin: 1px 3px auto auto;
    width: 18px;
    text-align: center;
}
.g-privacy-button > .list > .main > .li > .icon > .i {
	color: #CCC;
    font: normal normal 300 14px/1em 'WebIcon';
    transition: color .5s ease;
}
.g-privacy-button > .list > .main > .li:hover > .icon > .i {
	color: #AAA;
}
.g-privacy-button > .list > .main > .li > .context {
	width: calc(100% - 15px);
	color: #AAA;
	transition: color .5s ease;
}
.g-privacy-button > .list > .main > .li:hover > .context {
	color: #999;
}
.g-privacy-button > .list > .main > .li > .context > .text {
	color: #AAA;
    font-size: 12px;
    font-weight: normal;
    transition: color .5s ease;
}
.g-privacy-button > .list > .main > .li:hover > .context > .text {
	color: #999;
}
.g-privacy-button > .list > .main > .null {
	text-align: center;
}
.g-privacy-button > .list > .main > .null > .context {
	margin: auto;
	padding: 4px 6px;
}
.g-privacy-button > .list > .main > .null > .context > .text {
	color: #BBB;
}
.g-privacy-button[privacy-value='private'] > .main > .icon > .i:before,
.g-privacy-button > .list > .main > .li[privacy-choice-value='private']  > .icon > .i:before {
	content: '\f023';
}
.g-privacy-button[privacy-value='friends'] > .main > .icon > .i:before,
.g-privacy-button > .list > .main > .li[privacy-choice-value='friends']  > .icon > .i:before {
	content: '\f007';
}
.g-privacy-button[privacy-value='allfriends'] > .main > .icon > .i,
.g-privacy-button > .list > .main > .li[privacy-choice-value='allfriends']  > .icon > .i {
	margin-top: 2px;
	font-size: 12px;
}
.g-privacy-button[privacy-value='allfriends'] > .main > .icon > .i:before,
.g-privacy-button > .list > .main > .li[privacy-choice-value='allfriends']  > .icon > .i:before {
	content: '\f0c0';
}
.g-privacy-button[privacy-value='public'] > .main > .icon > .i:before,
.g-privacy-button > .list > .main > .li[privacy-choice-value='public']  > .icon > .i:before {
	content: '\f0ac';
}

/* popup */
#g-popup {
	z-index: 101;
	position: fixed;
    top: 5%;
    right: 5%;
    width: 25%;
    background: transparent;
    transition: all .5s ease;
}
#g-popup > .content {
	position: relative;
}
#g-popup > .content > .li {
    position: fixed;
    display: inline-flex;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(230, 230, 230, 0.8);
    transition: height .5s ease, width .5s ease;
}
#g-popup > .content > .li > .container {
	overflow: hidden;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    background: #fff;
    border: none;
    border-top: 3px solid #AAA;
    border-radius: 4px;
    box-shadow: 0 1px 9px rgba(200, 200, 200, 0.5);
    transition: all .5s ease;
}
#g-popup > .content > .li > .container > .header {
	padding: 8px;
    border-bottom: 1px solid #E5E5E5;
}
#g-popup > .content > .li > .container > .header > .title {
	display: inline-block;
    vertical-align: top;
}
#g-popup > .content > .li > .container > .header > .title .text {
	cursor: pointer;
	color: #999;
	font: normal normal 300 14px/1em 'Roboto';
	text-transform: uppercase;
}
#g-popup > .content > .li > .container > .header > .action {
	display: inline-block;
    vertical-align: top;
    float: right;
}
#g-popup > .content > .li > .container > .header > .action .close {
	cursor: pointer;
	margin: auto auto auto 8px;
	color: #AAA;
	font: normal normal 300 14px/1em 'WebIcon';
	transition: color .5s ease;
}
#g-popup > .content > .li > .container > .header > .action .close:hover {
	color: #777;
}
#g-popup > .content > .li > .container > .header > .action .close:before {
	content: "\f00d";
}
#g-popup > .content > .li > .container > .body {
	margin: 3px auto 3px auto;
    padding: 6px 8px 6px;
    border-top: 1px solid #E5E5E5;
    border-bottom: 1px solid #E5E5E5;
}
#g-popup > .content > .li.not-note > .container > .body {
	margin-bottom: 0;
	border-bottom: none;
}
#g-popup > .content > .li > .container > .footer {
	padding: 2px 8px 4px;
    border-top: 1px solid #E5E5E5;
}
#g-popup > .content > .li > .container > .footer .text {
	cursor: pointer;
	color: #999;
	font: normal normal 300 10px/1em 'Roboto';
    text-transform: uppercase;
}
#g-popup > .content > .li > .container > .footer > .note {
	text-align: right;
}
#g-popup > .content > .li.not-note > .container > .footer {
	display: none;
}
#g-popup > .content > .li.popup-alert .main.popup-alert > .description {
    vertical-align: top;
    padding: 4px;
    margin-bottom: 6px;
    word-wrap: break-word;
    word-break: break-all;
    color: #999;
}
#g-popup > .content > .li.popup-alert .main.popup-alert > .action {
    padding-top: 6px;
	border-top: 1px solid #E9E9E9;
    text-align: right;
}
#g-popup > .content > .li.popup-alert .main.popup-alert > .action > .button {
	display: inline-block;
    vertical-align: top;
    margin: auto 4px;
}
#g-popup > .content > .li.image-upload-input-url {
	
}
#g-popup > .content > .li.image-upload-input-url .main {
	
}
#g-popup > .content > .li.image-upload-input-url .main > .input {
	width: 275px;
}
#g-popup > .content > .li.image-upload-input-url .main > .input label {
	display: none;
}
#g-popup > .content > .li.image-upload-input-url .main > .input input {
	margin: auto;
    padding: 6px 8px 7px;
    width: calc(100% - 20px);
    border: 1px solid rgb(226, 226, 226);
    border-radius: 2px;
    font-size: 12px;
    color: #666;
    line-height: 1.2em;
    transition: all .5s ease;
}
#g-popup > .content > .li.stream-options-tab {
	
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab {
	margin: auto;
	width: 175px;
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box {
	margin: 2.5px 0 0;
	width: 100%;
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box > .navbar {
	padding: 0 2px;
    width: calc(100% - 4px);
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box > .navbar .text {
	cursor: pointer;
    color: #666;
    font: normal normal 300 11px/1.6em 'Roboto';
    text-transform: uppercase;
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box > .main {
	margin: 2px 0 0 0;
    padding: 4px 2px 2px;
    width: calc(100% - 4px);
    border-top: 1px solid #E5E5E5;
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box > .main > .li {
	display: inline-block;
    margin: 1px 0;
    padding: 0 2px;
    width: calc(100% - 4px);
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box > .main > .li .text {
	cursor: pointer;
    color: #999;
    font-size: 12px;
    font-weight: normal;
    transition: color 0.5s ease;
}
#g-popup > .content > .li.stream-options-tab .main.stream-options-tab > .box > .main > .li:hover .text {
	color: #777;
}
#g-popup > .content > .li.window-new-tab {
	
}
#g-popup > .content > .li.window-new-tab .main {
	width: 300px;
}
#g-popup > .content > .li.window-new-tab .main > .input {
	width: 100%;
}
#g-popup > .content > .li.window-new-tab .main > .input label {
	display: none;
}
#g-popup > .content > .li.window-new-tab .main > .input input {
	margin: auto;
    padding: 6px 8px 7px;
    width: calc(100% - 20px);
    border: 1px solid rgb(226, 226, 226);
    border-radius: 2px;
    font-size: 12px;
    color: #666;
    line-height: 1.2em;
    transition: all .5s ease;
}

#g-popup > .content > .li.image-list-choose {}
#g-popup > .content > .li.image-list-choose .main.image-list-choose {}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .navbar {}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .navbar > .row {
    display: inline-block;
    vertical-align: top;
    margin: 0 4px;
    padding: 0 8px 4px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .navbar > .row.active {
	border-bottom: 2px solid #999;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .navbar > .row > .text {
	cursor: pointer;
	color: #999;
	font-size: 14px;
	font-weight: nornal;
	line-height: 1.6em;
	transition: color .5s ease;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .navbar > .row.active > .text,
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .navbar > .row:hover > .text {
	color: #777;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content {}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list {
	overflow-y: auto;
    overflow-x: hidden;
    margin-top: 4px;
    padding: 4px 8px;
    max-height: 500px;
	width: 450px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list::-webkit-scrollbar {
    width: 8px;
    background: #BBB;
    border-radius: 2px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list::-webkit-scrollbar-thumb {
    background: #fff;
    border: 2px solid #BBB;
    border-radius: 4px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box {
	/* display: none; */
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box.active {
	display: block;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li {
	cursor: pointer;
	position: relative;
	display: inline-block;
    vertical-align: top;
    overflow: hidden;
    margin: 2px;
    width: calc(100% / 3 - 4px);
    height: 120px;
    background: #777;
    border: none;
    border-radius: 2px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .thumbnail {
	position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50% 50%;
    border: none;
    border-radius: 2px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .selected {
	display: none;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li.selected > .selected {
	display: block;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .more > .conicon,
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .selected > .conicon {
	position: absolute;
    width: 26px;
    height: 26px;
    background-color: rgba(50, 50, 50, 0.75);
    border-radius: 360px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .more > .conicon > .icon,
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .selected > .conicon > .icon {
	margin: 5px 0 0 6px;
	color: #fff;
	font: normal normal 300 17px/1em 'WebIcon';
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .more > .conicon {
	top: 10px;
    right: 10px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .more > .conicon > .icon:before {
	content: '\f06a';
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .selected > .conicon {
	top: 10px;
    left: 10px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .selected > .conicon > .icon:before {
	content: '\f058';
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .info {
	position: absolute;
    bottom: 0;
    left: 0;
    padding: 0;
    width: 100%;
	border-top: 1px solid rgba(255, 255, 255, 0.25);
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .info > .context {
	padding: 4px 6px 5px;
	background-color: rgba(50, 50, 50, 0.75);
	color: #fff;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .li > .info > .context > .text {
	color: #fff;
    font-size: 11px;
    text-shadow: 0 0 1px rgba(50, 50, 50, 0.25);
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .null {
	margin: 25px auto;
	text-align: center;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .null > .progress {
	margin: 20px auto 10px;
    height: 10px;
    width: 60%;
    background: #E9E9E9;
    border-radius: 4px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .null > .progress > .navload {
	height: 100%;
    width: 100%;
    background-image: linear-gradient(-45deg, rgba(50, 50, 50, 0.25) 25%, transparent 25%, transparent 50%, rgba(50, 50, 50, 0.25) 50%, rgba(50, 50, 50, 0.25) 75%, transparent 75%, transparent);
	background-size: 13px 15px;
	animation: buffering-stripes 1s linear infinite;
    border-radius: 360px;
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .null > .icon {
	margin: auto auto 5px auto;
	color: #DDD;
	font: normal normal 300 48px/1em 'WebIcon';
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .null > .icon:before {
	content: '\f115';
}
#g-popup > .content > .li.image-list-choose .main.image-list-choose > .content > .list > .box > .null > .text {
	color: #cfcfcf;
	font-size: 12px;
}

#g-popup > .content > .li.image-info-input {}
#g-popup > .content > .li.image-info-input .main.image-info-input {
	overflow-y: auto;
    overflow-x: hidden;
    padding: 4px 8px;
    max-height: 500px;
	width: 400px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input::-webkit-scrollbar {
    width: 8px;
    background: #BBB;
    border-radius: 2px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input::-webkit-scrollbar-thumb {
    background: #fff;
    border: 2px solid #BBB;
    border-radius: 4px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .null {
	margin: 25px auto;
	text-align: center;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .null > .progress {
	margin: 20px auto 10px;
    height: 10px;
    width: 60%;
    background: #E9E9E9;
    border-radius: 4px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .null > .progress > .navload {
	height: 100%;
    width: 100%;
    background-image: linear-gradient(-45deg, rgba(50, 50, 50, 0.25) 25%, transparent 25%, transparent 50%, rgba(50, 50, 50, 0.25) 50%, rgba(50, 50, 50, 0.25) 75%, transparent 75%, transparent);
	background-size: 13px 15px;
	animation: buffering-stripes 1s linear infinite;
    border-radius: 2px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .null > .icon {
	margin: auto auto 5px auto;
	color: #DDD;
	font: normal normal 300 48px/1em 'WebIcon';
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .null > .icon:before {
	content: '\f115';
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .null > .text {
	color: #D3D3D3;
	font-size: 12px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab {
	margin: 4px auto;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab:first-child {
	margin-top: 0;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab:last-child {
	margin-bottom: 0;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .title {
	padding: 3px 0;
	border-bottom: 1px solid #E5E5E5;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .title .text {
	cursor: pointer;
    color: #999;
    font: normal normal 300 11px/1em 'Roboto';
    text-transform: uppercase;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content {}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab.action > .content {
	text-align: center;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row {
	margin: 5px auto;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row.inline {
	display: inline-block;
	vertical-align: top;
	margin: 5px auto;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .label,
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value {
	display: inline-block;
	vertical-align: top;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .label {
	padding: 2px;
	width: calc(29% - 4px);
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row.inline > .label {
	display: none;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab.info > .content > .row > .label,
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab.privacy > .content > .row > .label {
	margin-top: 7px;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .label > .text {
	color: #999;
    font-size: 12px;
    font-weight: normal;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .label > .text.import {
    font-weight: bold;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value {
	padding: 2px;
	width: calc(70% - 4px);
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row.inline > .value {
	width: 100%;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value > .text {
	
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab.fixed > .content > .row > .value > .text {
	color: #CCC;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value .input {
	padding: 6px 7px 7px;
    width: calc(100% - 14px);
    border: 1px solid #E0E0E0;
    border-radius: 2px;
    resize: none;
    font-size: 12px;
    color: #888;
    line-height: 1.4em;
    transition: border .5s ease, color .5s ease;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row.highlight > .value .input {
	border-color: #B4C6FF;
    color: #99AFF6;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value .icon {
	display: inline-block;
	cursor: pointer;
	margin-top: 1px;
	color: #AAA;
    font: normal normal 300 14px/1em 'WebIcon';
    transition: color .5s ease;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value[value='yes'] .icon:before {
	content: '\f111';
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value[value='no'] .icon:before {
	content: '\f10c';
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row.tag > .value .input {
	height: 64px;
	resize: vertical;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab > .content > .row > .value .button {
	display: inline-block;
}
#g-popup > .content > .li.image-info-input .main.image-info-input > .tab.action > .content > .row.save > .label {
	margin-top: 7px;
}

/* tooltip */
#g-tooltip {
	
}
#g-tooltip > .content {
	
}
#g-tooltip > .content > .li {
	z-index: 201;
    position: absolute;
    display: inline-block;
    vertical-align: top;
    margin: 0;
    background: #fff;
	border: 1px solid #fff; /* E3E3E3 */
    border-radius: 2px;
}
#g-tooltip > .content > .li > .arrow {
	display: inline-block;
	position: absolute;
	margin: 0;
	height: 0;
	width: 0;
}
#g-tooltip > .content > .li > .arrow:before,
#g-tooltip > .content > .li > .arrow:after {
	content: "";
	position: absolute;
}
#g-tooltip > .content > .li[tooltip-arrow='e'] > .arrow:before,
#g-tooltip > .content > .li[tooltip-arrow='e'] > .arrow:after,
#g-tooltip > .content > .li[tooltip-arrow='w'] > .arrow:before,
#g-tooltip > .content > .li[tooltip-arrow='w'] > .arrow:after {
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
}
#g-tooltip > .content > .li[tooltip-arrow='e'] > .arrow:before {
	border-right: 5px solid #fff; /* E3E3E3 */
}
#g-tooltip > .content > .li[tooltip-arrow='e'] > .arrow:after {
	margin-left: 1px;
	border-right: 5px solid #fff;
}
#g-tooltip > .content > .li[tooltip-arrow='w'] > .arrow:before {
	border-left: 5px solid #fff; /* E3E3E3 */
}
#g-tooltip > .content > .li[tooltip-arrow='w'] > .arrow:after {
	margin-left: -1px;
	border-left: 5px solid #fff;
}
#g-tooltip > .content > .li[tooltip-arrow='s'] > .arrow:before,
#g-tooltip > .content > .li[tooltip-arrow='s'] > .arrow:after,
#g-tooltip > .content > .li[tooltip-arrow='n'] > .arrow:before,
#g-tooltip > .content > .li[tooltip-arrow='n'] > .arrow:after {
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
}
#g-tooltip > .content > .li[tooltip-arrow='s'] > .arrow:before {
	border-top: 5px solid #fff; /* E3E3E3 */
}
#g-tooltip > .content > .li[tooltip-arrow='s'] > .arrow:after {
	margin-top: -1px;
	border-top: 5px solid #fff;
}
#g-tooltip > .content > .li[tooltip-arrow='n'] > .arrow:before {
	border-bottom: 5px solid #fff; /* E3E3E3 */
}
#g-tooltip > .content > .li[tooltip-arrow='n'] > .arrow:after {
	margin-top: 1px;
	border-bottom: 5px solid #fff;
}
#g-tooltip > .content > .li > .body {
	margin: auto auto auto auto;
    padding: 2px 4px 2px;
    max-width: calc(100% - 4px);
}
#g-tooltip > .content > .li > .body,
#g-tooltip > .content > .li > .body > * {
	vertical-align: top;
	word-wrap: break-word;
	word-break: break-all;
	color: #999;
}
#g-tooltip > .content > .li.not-title > .body {
	margin-top: auto;
	border-top: none;
}
#g-tooltip > .content > .li.not-note > .body {
	margin-bottom: auto;
	border-bottom: none;
}
#g-tooltip > .content > .li > .body > .main {
	overflow: auto;
	padding: 3px;
	max-height: 125px;
	/*max-width: 250px;*/
	width: calc(100% - 6px);
	transition: all .5s ease;
}
#g-tooltip > .content > .li > .body > .main::-webkit-scrollbar {
	cursor: pointer;
    width: 7px;
    background: #E0E0E0;
    border-radius: 2px;
}
#g-tooltip > .content > .li > .body > .main::-webkit-scrollbar-thumb {
	cursor: pointer;
    background: #fff;
    border: 2px solid #E0E0E0;
    border-radius: 4px;
}

/* stream */
.stream-tab {}
.stream-tab > .stream-content {}
.stream-tab > .stream-content > .stream-slice {
	display: inline-block;
    vertical-align: top;
    width: calc(50% - 5px);
}
.stream-tab > .stream-content > .stream-slice:first-child {
	margin-right: 5px;
}
.stream-tab > .stream-content > .stream-slice:last-child {
	margin-left: 5px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li {
	margin: 0 0 10px;
	transition: box-shadow 0.5s ease, border 0.25s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li:last-child {
	margin-top: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li.selected {
	border-top: 3px solid #ccc;
	box-shadow: 0 1px 4px rgba(200, 200, 200, 0.5);
}
.stream-tab > .stream-content > .stream-slice > .stream-li.highlight {
	border-top: 3px solid #ccc;
	box-shadow: 0 2px 8px rgba(200, 200, 200, 0.5);
}
.stream-tab > .stream-content > .stream-slice > .stream-li .border {
	height: 2px;
	border-top: 1px solid #E5E5E5;
	border-bottom: 1px solid #E5E5E5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li .border:last-child {
	display: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box {
	position: relative;
	margin-bottom: 2px;
	width: calc(100% - 12px);
	border-top: 1px solid #E5E5E5;
    border-bottom: 1px solid #E5E5E5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box:last-child {
	margin-bottom: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note {
	padding: 3px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note > .guy {
	display: inline-block;
    vertical-align: top;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note > .guy .li {
	cursor: pointer;
	display: inline-block;
    vertical-align: top;
    margin: 0 0 0 -8px;
    height: 20px;
    width: 20px;
    background-color: #CCC;
    background-size: cover;
    background-position: 50% 50%;
    border: 2px solid #FFF;
    border-radius: 360px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note > .guy a:first-child .li {
	margin-left: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note > .context {
	display: inline-block;
    vertical-align: top;
    margin: 4px 0 0 4px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note > .context .text {
	color: #bbb;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.note > .context .text[href] {
	color: #aaa;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author {
	display: inline-block;
    vertical-align: top;
    padding: 2px;
    width: calc(100% - 4px);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .thumbnail {
	display: inline-block;
    vertical-align: top;
    margin: 5px;
	width: 40px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .thumbnail .img {
	height: 40px;
	width: 40px;
	background-color: #e3e3e3;
	background-position: 50% 50%;
	background-size: cover;
	border-radius: 2px;
	border: none;
	transition: background .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .context {
	display: inline-block;
    vertical-align: top;
    margin: 10px 0 0 2px;
    width: calc(100% - 52px);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .context > .name {
	width: 100%;
	color: #aaa;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .context > .name .text  {
	color: #aaa;
	font-size: 16px;
	font-weight: bold;
	line-height: 1em;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .context > .tag {
	width: 100%;
	color: #aaa;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .context > .tag .text {
	color: #aaa;
	font-size: 12px;
	line-height: 1em;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options {
	opacity: 0;
	cursor: pointer;
	position: absolute;
	display: inline-block;
    vertical-align: top;
    top: 11px;
	right: 13px;
    padding: 3px 6px;
    background: #FFF;
    border: 1px solid #E4E4E4;
    border-radius: 360px;
    transition: opacity 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li:hover > .author > .options {
	opacity: 1;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .nav {
	display: inline-block;
    vertical-align: top;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .nav > .icon {
	display: inline-block;
    vertical-align: top;
    margin-top: 1px;
	color: #ccc;
 	font: normal normal 300 13px/1em 'WebIcon';
 	transition: color 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options:hover > .nav > .icon {
	color: #aaa;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .nav > .icon:before {
	content: '\f013';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list {
	z-index: 2;
    position: absolute;
    margin: -25px 0 0 -125px;
    width: 150px;
	background: #fff;
    border: none;
    border-radius: 4px;
    box-shadow: 0 0 10px rgba(175, 175, 175, 0.75);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box {
	margin: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box > .navbar {
    padding: 3px 6px;
    border-bottom: 1px solid #E5E5E5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box > .navbar .text {
	cursor: pointer;
    color: #666;
    font: normal normal 300 11px/1.6em 'Roboto';
    text-transform: uppercase;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box > .main {
	margin: 2px 0 0 0;
    padding: 2px 4px;
    border-top: 1px solid #E5E5E5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box > .main > .li {
	display: inline-block;
	margin: 1px 0;
	padding: 0 4px;
	width: calc(100% - 8px);
	border-left: 2px solid #fff;
	transition: border-color 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box > .main > .li:hover {
	border-color: #ccc;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.author > .options > .list > .box > .main > .li .text {
	cursor: pointer;
    color: #999;
    font-size: 12px;
    font-weight: normal;
}

.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information {
	display: inline-block;
    vertical-align: top;
	padding: 3px 6px;
    max-width: calc(100% - 12px);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li {
	cursor: pointer;
    display: inline-block;
    vertical-align: top;
    margin: 2px;
    padding: 3px 5px;
    border: 1px solid #E4E4E4;
    border-radius: 2px;
    transition: box-shadow 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li:first-child {
	margin-left: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li:last-child {
	margin-right: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li:hover {
	box-shadow: 0 2px 3px rgba(220, 220, 220, 0.5);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li:active {
	box-shadow: inset 0 2px 3px rgba(215, 215, 215, 0.5);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li .icon {
	display: inline-block;
    vertical-align: top;
    margin: 1px 0 0 0;
	color: #aaa;
 	font: normal normal 300 13px/1em 'WebIcon';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li .text {
    display: inline-block;
    vertical-align: top;
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
	margin: 0 1px 0 3px;
	max-width: 125px;
	color: #aaa;
	transition: width .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li:hover .text {
	display: inline-block;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .li .text:before {
	content: ' • ';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .date .icon:before {
	content: '\f017';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .edited .icon:before {
	content: '\f040';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .privacy.view .icon:before {
	content: '\f06e';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .privacy.comment .icon:before {
	content: '\f075';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .privacy.share .icon:before {
	content: '\f079';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .scrapbook .icon:before {
	content: '\f02d';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.information > .dimension .icon:before {
	content: '\f0c8';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.context {
	padding: 6px 8px;
	width: calc(100% - 16px);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.context > * {
	vertical-align: top;
	word-wrap: break-word;
	color: #888;
	font-size: 12px;
	font-weight: 300;
	line-height: 1.6em;
	transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media {
	padding: 6px;
	width: auto;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image {
	position: relative;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image .img {
	width: 100%;
	height: 100%;
	border: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview {
	cursor: pointer;
	overflow: hidden;
    position: relative;
    width: 100%;
    height: 100%;
    border: none;
    border-radius: 2px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview > .filter {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(51, 51, 51, 0.2);
    border: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview > .colorlist {
	opacity: 0;
	overflow: hidden;
	position: absolute;
    padding: 2px 2px;
    width: calc(100% - 24px);
    top: 10px;
    left: 10px;
    background: rgba(50, 50, 50, 0.5);
    border: none;
    border-radius: 2px;
    transition: opacity 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview:hover > .colorlist {
	opacity: 1;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview > .colorlist > .li {
	display: inline-block;
	vertical-align: top;
	margin: 2px;
    height: 15px;
    width: calc(100% / 10 - 4px);
	background: rgb(255, 255, 255);
    border: none;
    border-radius: 2px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview > .context {
	position: absolute;
	overflow: hidden;
    text-overflow: ellipsis;
    word-wrap: break-word;
    background: rgba(50, 50, 50, 0.5);
    padding: 4px 8px 5px;
    max-width: calc(100% - 36px);
    bottom: 10px;
    left: 10px;
    border: none;
    border-radius: 2px;
    color: #FFF;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.media > .image > .preview > .context > .text {
	color: #FFF;
	font-size: 12px;
	font-weight: normal;
    text-shadow: 0 0px 3px rgba(50, 50, 50, 0.25);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action {
	padding: 4px 8px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button {
	cursor: pointer;
	display: inline-block;
    vertical-align: top;
    margin: auto 5px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button:first-child {
	margin-left: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button:last-child {
	margin-right: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button > .icon {
	display: inline-block;
    vertical-align: top;
    margin-top: 1px;
	color: #bbb;
 	font: normal normal 300 13px/1em 'WebIcon';
 	transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button:hover > .icon {
	color: #999;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.favorite:hover > .icon {
	color: #EAA4A4;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.comment:hover > .icon {
	color: #9ACBDF;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button > .text {
	margin-left: 1px;
	color: #bbb;
	transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button > .text:before {
	content: ' • ';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button:hover > .text {
	color: #999;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.favorite[action-favorite-disabled='true'] > .icon {
	text-decoration: line-through;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.favorite > .icon:before {
	content: '\f08a';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.favorite[action-favorite-exists='true'] > .icon:before {
	content: '\f004';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.comment > .icon:before {
	content: '\f075';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.action > .button.share > .icon:before {
	content: '\f064';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment {
	padding: 0 5px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .null {
	padding: 8px 0 10px;
	text-align: center;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .null > .text {
	color: #bbb;
	font-size: 12px;
	font-weight: normal;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview {
	cursor: pointer;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li {
	
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .thumbnail {
	display: inline-block;
    vertical-align: top;
    margin: 5px;
    width: 30px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .thumbnail > .img {
	height: 30px;
    width: 30px;
    background-color: #e3e3e3;
    background-position: 50% 50%;
    background-size: cover;
    border-radius: 2px;
    border: none;
    transition: background .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context {
	display: inline-block;
    vertical-align: top;
    margin-top: 7px;
    margin-left: 5px;
    width: calc(100% - 45px);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context > .author {
	color: #aaa;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context > .author > .name {
	display: block
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li:hover > .context > .author > .name {
	display: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context > .author > .tag {
	display: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li:hover > .context > .author > .tag {
	display: block;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context > .author .text {
	color: #aaa;
	font-size: 12px;
	font-weight: bold;
	line-height: 1em;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context > .message {
	color: #bbb;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .preview > .li > .context > .message .text {
	color: #bbb;
	font-size: 12px;
	font-weight: normal;
	line-height: 1em;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment .tab.type {
	padding: 5px 5px;
	border-bottom: 1px solid #e5e5e5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment .tab.list {
	overflow-x: hidden;
	overflow-y: auto;
	margin: 5px 0;
	padding: 0 5px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment .tab.list {
	max-height: 500px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment .row .tab.list {
	max-height: 300px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment .tab.list::-webkit-scrollbar {
	cursor: pointer;
    width: 7px;
    background: #E0E0E0;
    border-radius: 2px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment .tab.list::-webkit-scrollbar-thumb {
	cursor: pointer;
    background: #fff;
    border: 2px solid #E0E0E0;
    border-radius: 4px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row {
	margin: 5px auto;
	padding: 5px 0;
	width: 98%;
	transition: border 0.25s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .main > .reply {
	margin-top: 5px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.reply {
	/*
	margin-right: 0;
	width: calc(100% - 51px);
	*/
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row:first-child {
	margin-top: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row:last-child {
	margin-bottom: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.selected,
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.highlight {
	border-top: 3px solid #ccc;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box {
	display: inline-block;
    vertical-align: top;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.extra {
	position: relative;
	margin: 0 10px 0 0;
    border-radius: 2px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.reply > .box.extra {}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.extra > .thumbnail {}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.reply > .box.extra > .thumbnail {
	width: 34px;
	height: 34px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.extra > .thumbnail .img {
	width: 40px;
	height: 40px;
	background-color: #ddd;
	background-size: cover;
    background-position: 50% 50%;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.reply > .box.extra > .thumbnail .img {
	width: 34px;
	height: 34px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main {
	position: relative;
	padding: 0 0 0 5px;
	width: calc(100% - 56px);
	border-left: 1px solid #e2e2e2;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row.reply > .box.main {
	width: calc(100% - 50px);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow {
	display: inline-block;
	position: absolute;
	margin: 13px 0 0 -11px;
	height: 0;
	width: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow:before,
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow:after {
	content: "";
	position: absolute;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow:before,
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow:after {
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow:before {
	border-right: 5px solid #e2e2e2;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .arrow:after {
	margin-left: 2px;
	border-right: 5px solid #fff;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header {
	padding: 0 0 2px 0;
	border-bottom: 1px dotted #ddd;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header > .context {
	display: inline-block;
    vertical-align: top;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header > .context:not(.author) {
	float: right;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header > .context.author .text {
	color: #999;
	font-size: 12px;
	font-weight: bold;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header > .context.author .text.name {
	display: inline-block;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main:hover> .header > .context.author .text.name {
	display: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header > .context.author .text.tag {
	display: none;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main:hover > .header > .context.author .text.tag {
	display: inline-block;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .header > .context.time .text {
	color: #ccc;
	font-size: 12px;
	font-weight: normal;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .body {
	margin: auto;
	padding: 8px 0 6px 0;
	width: 98%;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .body > .textarea {}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .body > .textarea > .input {
	vertical-align: top;
	overflow: hidden;
    word-wrap: break-word;
	padding: 0;
    width: 100%;
	height: 19px;
	background: transparent;
    border: none;
    resize: none;
    color: #888;
    font-size: 12px;
    font-weight: 300;
    line-height: 1.6em;
    transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .body > .textarea > .input[disabled] {
	font-style: italic;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .body > .context > * {
	vertical-align: top;
	word-wrap: break-word;
	color: #888;
	font-size: 12px;
	font-weight: 300;
	line-height: 1.6em;
	transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer {}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action {}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button {
	cursor: pointer;
	display: inline-block;
    vertical-align: top;
    margin: auto 5px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button:first-child {
	margin-left: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button:last-child {
	margin-right: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button > .icon {
	display: inline-block;
    vertical-align: top;
    margin-top: 1px;
	color: #bbb;
 	font: normal normal 300 13px/1em 'WebIcon';
 	transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button:hover > .icon {
	color: #999;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.favorite:hover > .icon {
	color: #EAA4A4;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.reply:hover > .icon {
	color: #9ACBDF;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button > .text {
	margin-left: 1px;
	color: #bbb;
	transition: color .5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button > .text:before {
	content: ' • ';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button:hover > .text {
	color: #999;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.favorite[action-favorite-disabled='true'] > .icon {
	text-decoration: line-through;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.favorite > .icon:before {
	content: '\f08a';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.favorite[action-favorite-exists='true'] > .icon:before {
	content: '\f004';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.reply > .icon:before {
	content: '\f075';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .footer > .action > .button.share > .icon:before {
	content: '\f064';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options {
	z-index: 2;
	opacity: 0;
	cursor: pointer;
	position: absolute;
	display: inline-block;
    vertical-align: top;
    padding: 3px;
    height: 10px;
    background: #FFF;
    border-radius: 360px;
    transition: opacity 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.extra > .options {
	bottom: -8px;
    right: -8px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box.main > .options {
	top: 8px;
	right: 8px;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row:hover > .box.main > .options {
	opacity: 1;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .nav {
	display: inline-block;
    vertical-align: top;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .nav > .icon {
	display: inline-block;
    vertical-align: top;
    margin-top: 1px;
	color: #ccc;
 	font: normal normal 300 11px/1em 'WebIcon';
 	transition: color 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options:hover > .nav > .icon {
	color: #aaa;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .nav > .icon:before {
	content: '\f078';
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list {
	z-index: 2;
    position: absolute;
    margin: -25px 0 0 -125px;
    width: 150px;
	background: #fff;
    border: none;
    border-radius: 4px;
    box-shadow: 0 0 10px rgba(175, 175, 175, 0.75);
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box {
	margin: 0;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box > .navbar {
    padding: 3px 6px;
    border-bottom: 1px solid #E5E5E5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box > .navbar .text {
	cursor: pointer;
    color: #666;
    font: normal normal 300 11px/1.6em 'Roboto';
    text-transform: uppercase;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box > .main {
	margin: 2px 0 0 0;
    padding: 2px 4px;
    border-top: 1px solid #E5E5E5;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box > .main > .li {
	display: inline-block;
	margin: 1px 0;
	padding: 0 4px;
	width: calc(100% - 8px);
	border-left: 2px solid #fff;
	transition: border-color 0.5s ease;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box > .main > .li:hover {
	border-color: #ccc;
}
.stream-tab > .stream-content > .stream-slice > .stream-li > .box.comment > .tab .row > .box > .options > .list > .box > .main > .li .text {
	cursor: pointer;
    color: #999;
    font-size: 12px;
    font-weight: normal;
}

/* viewer-image */
#g-viewer-image {}
#g-viewer-image > .content {
	position: relative;
}
#g-viewer-image > .content > .li {
	z-index: 104;
	position: fixed;
    display: inline-flex;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #333;
    transition: height .5s ease, width .5s ease;
}
#g-viewer-image > .content > .li > .navbar {
	position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 50px;
    background: #444;
    border-bottom: 1px solid rgb(75, 75, 75);
}
#g-viewer-image > .content > .li > .navbar > .button {
	position: relative;
	display: inline-block;
    vertical-align: top;
    margin: 14px 14px 0;
}
#g-viewer-image > .content > .li > .navbar > .button.left {
	
}
#g-viewer-image > .content > .li > .navbar > .button.right {
	float: right;
}
#g-viewer-image > .content > .li > .navbar > .button > .icon {
	cursor: pointer;
	color: #ccc;
	font: normal normal 300 18px/1em 'WebIcon';
	transition: color 0.5s ease;
}
#g-viewer-image > .content > .li > .navbar > .button:hover > .icon {
	color: #fff;
}
#g-viewer-image > .content > .li > .navbar > .button.close > .icon:before {
	content: '\f060';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .icon {
	font-size: 20px;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .icon:before {
	content: '\f05a';
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar {
	z-index: 2;
	position: fixed;
	top: 0;
	right: 0;
	height: 100%;
	width: 250px;
	background: #fff;
	border: none;
	transition: all 0.5s ease;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header {
	padding: 8px;
    border-bottom: 1px solid #E5E5E5;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header > .title {
	display: inline-block;
    vertical-align: top;
    width: calc(100% - 20px);
    color: #999;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header > .title .text {
	cursor: pointer;
	color: #999;
	font: normal normal 300 14px/1em 'Roboto';
	text-transform: uppercase;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header > .action {
	display: inline-block;
    vertical-align: top;
    float: right;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header > .action .close {
	cursor: pointer;
	margin: auto auto auto 8px;
	color: #AAA;
	font: normal normal 300 14px/1em 'WebIcon';
	transition: color .5s ease;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header > .action .close:hover {
	color: #777;
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .header > .action .close:before {
	content: "\f00d";
}
#g-viewer-image > .content > .li > .navbar > .button > .sidebar > .body {
	margin: 3px auto 3px auto;
    padding: 6px 8px 6px;
    border-top: 1px solid #E5E5E5;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body {}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row {
	margin: 10px auto;
	width: 100%;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.description {
	margin: 0 auto auto;
    padding: 0 0 10px;
    border-bottom: 1px solid #E6E6E6;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.sub {
	margin: 5px 0 0 0;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row .conicon {
	display: inline-block;
    vertical-align: top;
    width: 25px;
	text-align: center;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.sub .conicon {
	width: 20px;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row > .conicon > .icon {
	cursor: pointer;
    color: #aaa;
    font: normal normal 300 17px/1em 'WebIcon';
    transition: color 0.5s ease;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.sub > .conicon > .icon {
	font-size: 14px;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row > .context {
	display: inline-block;
    vertical-align: top;
    margin: 1px 0 0 5px;
    width: calc(100% - 30px);
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.description > .context {
	width: 100%;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.sub > .context {
	margin: -1px 0 0 2px;
	width: calc(100% - 22px);
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row > .context > .text {
	color: #999;
	font-size: 12px;
	font-weight: normal;
	word-wrap: break-word;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row > .context > .text.large {
	font-size: 12px;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row > .context > .text.small {
	font-size: 11px;
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.size > .conicon > .icon:before {
	content: '\f0c8';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.image > .conicon > .icon:before {
	content: '\f1c5';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.date > .conicon > .icon:before {
	content: '\f073';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.clock > .conicon > .icon:before {
	content: '\f017';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.edited > .conicon > .icon:before {
	content: '\f040';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.tag > .conicon > .icon:before {
	content: '\f292';
}
#g-viewer-image > .content > .li > .navbar > .button.information > .sidebar > .body .row.color > .conicon > .icon:before {
	content: '\f069';
}
#g-viewer-image > .content > .li > .main {
	position: relative;
	margin: 60px 10px 10px;
	height: calc(100% - 70px);
    width: 100%;
    border: none;
    transition: width, height 0.75s ease;
}
#g-viewer-image > .content > .li > .main > .image {
	position: relative;
    top: 0;
    left: 0;
    overflow: hidden;
    height: 100%;
    width: 100%;
    border: none;
}
#g-viewer-image > .content > .li > .main > .image > .img {
	cursor: pointer;
    background: #fff;
    border: none;
    border-radius: 3px;
    transition: transform 0.25s, height 0.1s, width 0.1s ease;
}
#g-viewer-image > .content > .li > .main > .image > .img.align {
	position: absolute;
	overflow: hidden;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
}
#g-viewer-image > .content > .li > .main > .image > .img.enlarge {
	cursor: zoom-out;
	box-shadow: 0 0 20px rgba(34, 34, 34, 0.68);
}
#g-viewer-image > .content > .li > .main > .image > .img:not(.enlarge) {
	cursor: zoom-in;
	max-height: calc(100% - 100px);
    max-width: calc(100% - 100px);
}
#g-viewer-image > .content > .li > .main > .image > .img.enlarge.ui-draggable-dragging {
	cursor: move;
}
#g-viewer-image > .content > .li > .main > .image > .zoom {
	overflow: hidden;
	display: inline-block;
    vertical-align: top;
    position: absolute;
    bottom: 50px;
    right: 50px;
    background: #fff;
    border-radius: 2px;
	box-shadow: 0 2px 8px rgba(50, 50, 50, 0.25);
    transition: top 0.5s, left 0.5s ease;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .row {
	display: inline-block;
    vertical-align: top;
    padding: 6px 10px;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .row.z-number {
	border-right: 1px solid #ddd;
	border-left: 1px solid #ddd;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .row.z-number > .text {
	color: #777;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .row.z-number > .text:before {
	content: 'x';
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .button {
	cursor: pointer;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .button > .icon {
	margin: 1px 0 0;
	color: #999;
	font: normal normal 300 14px/1em 'WebIcon';
	transition: color .5s ease;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .button:hover > .icon {
	color: #777;
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .button.z-out > .icon:before {
	content: '\f068';
}
#g-viewer-image > .content > .li > .main > .image > .zoom > .button.z-in > .icon:before {
	content: '\f067';
}