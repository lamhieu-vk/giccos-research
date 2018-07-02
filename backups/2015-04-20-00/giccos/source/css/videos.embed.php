html {
	overflow: hidden;
}
body { 
	margin: 0;
	padding: 0;
}
#buttonBox {
	z-index: 11;
	position: absolute;
	top: 10px;
	left: 15px;
}
#buttonBox > div {
	cursor: pointer;
	margin: 10px 0;
	width: 3em;
	height: 3em;
	background: #FFF;
	border: none;
	border-radius: 4px;
	text-align: center;
}
#buttonBox > div > i {
	color: #555;
	font-size: 24px;
	line-height: 1.5em;
}
#onPopup {
	z-index: 11;
	position: fixed;
	width: 40%;
	background: #FFF;
	border: none;
	border-radius: 4px;
}
#onPopup > .title {
	margin: auto;
	width: 96%;
	border-bottom: 1px dotted #DDD;
	text-indent: 2px;
}
#onPopup > .title span {
	color: #666;
	line-height: 2.2em;
	font-family: Roboto;
	font-size: 16px;
	font-weight: 300;
}
#onPopup > .title i {
	cursor: pointer;
	float: right;
	margin-right: 4px;
	color: #666;
	line-height: 2.2em;
	font-size: 16px;
	font-weight: 300;
}
#onPopup > .main {
	margin: 4px auto;
	padding: 0 0 4px;
	width: 96%;
}
#onPopup > .main > .share.box {
	margin: 6px auto 6px;
	width: 98%;
}
#onPopup > .main > .share.box:first-child {
	margin-top: 0;
}
#onPopup > .main > .share.box .title {
	
}
#onPopup > .main > .share.box .title span {
	color: #666;
	line-height: 2em;
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
}
#onPopup > .main > .share.box .content {
	margin: auto;
	width: 98%;
}
#onPopup > .main > .share.box .content input[type='text'],
#onPopup > .main > .share.box .content textarea {
	padding: 6px 8px;
	width: 100%;
	border: 1px solid #E0E0E0;
	border-radius: 2px;
	resize: none;
	font-size: 13px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#onPopup > .main > .share.box .content textarea {
	max-height: 60px;
}
#onPopup > .main > .share.box .content .rows {
	margin: 6px auto 6px;
}
#onPopup > .main > .share.box .content .rows:first-child {
	margin-top: 0;
}
#onPopup > .main > .share.box .content .rows label {
	color: #777;
	font-size: 13px;
}
#mediaBox {
	z-index: 10;
	position: absolute;
}