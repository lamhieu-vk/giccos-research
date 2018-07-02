#gSidebar {
	display: inline-block;
	vertical-align: top;
	position: fixed;
	top: 48px;
	right: 0;
	margin: 0;
	width: 200px;
	height: 450px;
}
#gSidebar > .tab {
	margin: 0 auto;
	border-top: 1px solid #E5E5E5;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
}
#gSidebar > .tab:first-child {
	margin-top: 0;
}
#gSidebar > .tab > .title {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin: 4px 0;
	padding: 2px 6px 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gSidebar > .tab > .title span {
	cursor: pointer;
	color: #666;
    line-height: 1.6em;
    font-family: Roboto;
    font-size: 12px;
    font-weight: 300;
    text-transform: uppercase;
}