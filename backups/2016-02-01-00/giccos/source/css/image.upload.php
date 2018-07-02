[window-tab-local='image-upload'] .upload-tab {}
[window-tab-local='image-upload'] .upload-tab > .upload-title {
	padding: 7px 8px 6px;
    border-bottom: 1px solid #E5E5E5;
}
[window-tab-local='image-upload'] .upload-tab > .upload-title .text {
	cursor: pointer;
    color: #666;
    font: normal normal 300 12px/1.6em "Roboto";
    text-transform: uppercase;
}
[window-tab-local='image-upload'] .upload-tab > .upload-content {
	margin: 3px auto auto auto;
    padding: 0;
    border-top: 1px solid #E5E5E5;
}
[window-tab-local='image-upload'] .upload-tab > .upload-content > .content-tab {}
[window-tab-local='image-upload'] .upload-tab > .upload-content > .content-tab.input {
	display: none;
}
[window-tab-local='image-upload'] .upload-tab > .upload-content > .content-tab.button {
	padding: 10px 5px;
	border-bottom: 1px dotted #E5E5E5;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button {
	display: inline-block;
    vertical-align: top;
    cursor: pointer;
    margin: auto 1%;
    padding: 15px 0;
    width: 23%;
    background: #EEE;
    border: none;
    border-radius: 4px;
    text-align: center;
    transition: all .5s ease;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button:hover {
	background: #efefef;
    box-shadow: 0 2px 7px #e0e0e0;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button:active {
	background: #efefef;
    box-shadow: inset 0 0 8px #e0e0e0;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button .icon,
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button .text {
	color: #BBB;
	transition: color .75s ease;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button:hover .icon,
[window-tab-local='image-upload'] .upload-content > .content-tab.button > .input-button:hover .text {
	color: #AAA;
}
[window-tab-local='image-upload'] .content-tab.button > .input-button .icon {
	margin: auto auto 5px auto;
    font: normal normal 300 24px/1em 'WebIcon';
}
[window-tab-local='image-upload'] .content-tab.button > .input-button.upload .icon:before {
	content: '\f093';
}
[window-tab-local='image-upload'] .content-tab.button > .input-button.takeshot .icon:before {
	content: '\f030';
}
[window-tab-local='image-upload'] .content-tab.button > .input-button.select .icon:before {
	content: '\f07b';
}
[window-tab-local='image-upload'] .content-tab.button > .input-button.url .icon:before {
	content: '\f0ac';
}
[window-tab-local='image-upload'] .content-tab.button > .input-button .text {
	
}
[window-tab-local='image-upload'] .upload-tab > .upload-content > .content-tab.display {
	margin: 3px auto auto auto;
	padding: 10px 2%;
	border-top: 1px dotted #E5E5E5;
	transition: height .75s ease;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.display > .null {
	margin: 20px auto;
	text-align: center;
}
[window-tab-local='image-upload'] .content-tab.display > .null .icon {
	margin: auto auto 5px auto;
	color: #DDD;
	font: normal normal 300 48px/1em 'WebIcon';
}
[window-tab-local='image-upload'] .content-tab.display > .null .icon:before {
	content: '\f115';
}
[window-tab-local='image-upload'] .content-tab.display > .null .text {
	color: #D3D3D3;
	font-size: 12px;
}
[window-tab-local='image-upload'] .upload-content > .content-tab.display > .list {
	width: 100%;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li {
	cursor: pointer;
	position: relative;
	display: inline-block;
    vertical-align: top;
    overflow: hidden;
	margin: 1%;
    width: 18%;
    background: #E9E9E9;
    border: none;
    border-radius: 4px;
    transition: background-color .5s ease;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li:before {
	content: '';
	display: block;
	padding: 50% 0;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li:hover {
	background: #E0E0E0;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li.error {
	background: #EF9090;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li.error:hover {
	background: #DE7B7B;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li.warning {
	background: #EAE49C;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li.warning:hover {
	background: #EEE68A;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .thumbnail {
	z-index: 2;
	position: absolute;
	top: 0;
    left: 0;
	margin: 3.4% 3.25% 3%;
	width: 94%;
    height: 94%;
    background-color: #FFF;
    background-size: cover;
    background-position: 50% 50%;
    border: none;
    border-radius: 4px;
    transition: all .5s ease;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li.error > .thumbnail,
[window-tab-local='image-upload'] .content-tab.display > .list > .li.warning > .thumbnail {
	opacity: 0.8;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .progress {
	opacity: 0.75;
	position: absolute;
	bottom: calc(18% - 6px / 2);
    left: 12px;
    height: 6px;
    width: calc(100% - 24px);
    z-index: 4;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .progress > .nav {
    height: 100%;
    width: calc(100% - 6px);
    background: #FFF;
    border: 3px solid #FFF;
    border-radius: 4px;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .progress > .nav > .loaded {
	height: 100%;
    width: 0%;
    border-radius: 2px;
    transition: width .5s ease;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .progress > .nav > .loaded.uploading {
	background: #333;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .progress > .nav > .loaded.progressing {
	background-image: linear-gradient(-45deg, rgba(50, 50, 50, 0.50) 25%, transparent 25%, transparent 50%, rgba(50, 50, 50, 0.50) 50%, rgba(50, 50, 50, 0.50) 75%, transparent 75%, transparent);
	background-size: 15px 15px;
	animation: buffering-stripes .75s linear infinite;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper {
	z-index: 3;
	position: absolute;
	top: 0;
    left: 0;
	margin: 3%;
	width: 94%;
    height: 94%;
    background: rgba(255, 255, 255, 0.25);
    border: none;
    border-radius: 4px;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button {
	color: rgba(255, 255, 255, 0.75);
	font: normal normal 300 14px/1em 'WebIcon';
	text-shadow: 0 0 1px rgba(50, 50, 50, 0.25);
	transition: color .5s ease;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button:hover {
	color: #FFF;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.post:before {
	content: '\f093';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.refresh:before {
	content: '\f021';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.remove:before {
	content: '\f068';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.delete:before {
	content: '\f00d';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.info:before {
	content: '\f05a';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.edit:before {
	content: '\f040';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .action .button.tag:before {
	content: '\f02b';
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .navbar {
	display: inline-block;
	position: absolute;
    padding: 3px;
    background: rgba(50, 50, 50, 0.5);
    border-radius: 3px;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .navbar.topleft {
    top: 6px;
    left: 6px;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .navbar.topright {
    top: 6px;
    right: 6px;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .navbar.bottomleft {
    bottom: 6px;
    left: 6px;
}
[window-tab-local='image-upload'] .content-tab.display > .list > .li > .wrapper > .navbar > .button {
	display: inline-block;
	vertical-align: top;
	margin: 0 6px;
	padding: 2px 0;
}