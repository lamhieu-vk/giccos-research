[window-tab-local='image-stream'] .editor-tab {}
[window-tab-local='image-stream'] .editor-tab .editor-content {
	cursor: pointer;
	margin: auto 5px auto 0;
	padding: 5px;
	width: calc(100% / 2 - 14px);
}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-author {
	display: inline-block;
	vertical-align: top;
	margin: 0 5px 0 0;
	height: 38px;
	width: 38px;
}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-author > .author-thumbnail {}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-author > .author-thumbnail > .img {
	height: 38px;
	width: 38px;
	background-color: #e3e3e3;
	background-position: 50% 50%;
	background-size: cover;
	border-radius: 2px;
	border: none;
	transition: background .5s ease;
}
[window-tab-local='image-stream'] .editor-tab .editor-content:hover > .content-author > .author-thumbnail > .img {
	background-color: #ddd;
}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-input {
	display: inline-block;
	vertical-align: top;
	width: calc(100% - 43px);
}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-input > .input-context {
	padding: 0 10px;
    height: 30px;
    color: #ccc;
	transition: color .5s ease;
}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-input > .input-context > .text {
	color: #ccc;
	font-size: 14px;
	line-height: 2.5em;
	transition: color .5s ease;
}
[window-tab-local='image-stream'] .editor-tab .editor-content:hover > .content-input > .input-context,
[window-tab-local='image-stream'] .editor-tab .editor-content:hover > .content-input > .input-context > .text {
	color: #bbb;
}
[window-tab-local='image-stream'] .editor-tab .editor-content > .content-input > .input-context > .text:hover {
	color: #aaa;
}
[window-tab-local='image-stream'] .editor-tab .editor-suggest {}
[window-tab-local='image-stream'] .stream-tab {
	margin: 10px auto;
}