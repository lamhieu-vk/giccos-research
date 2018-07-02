#gboxAsk {
	margin: 10px auto;
}
#gboxAsk > .box {
	display: inline-block;
	vertical-align: top;
	width: 448px;
}
#gboxAsk > .box > .title {
	margin: 4px 0;
	padding: 0 6px 4px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gboxAsk > .box > .title span {
	color: #666;
	line-height: 1.6em;
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
}
#gboxAsk > .box > .description {
	margin: 4px auto;
	padding: 4px;
	width: 96%;
	border: none;
}
#gboxAsk > .box > .description span {
	color: #999;
	line-height: 1.4em;
	font-size: 13px;
	font-weight: 300;
}
#gboxAsk > .box > .content {
	margin: 4px auto;
	padding: 2px 0 1px;
	border-top: 1px solid #E5E5E5;
	text-align: center;
}
#gboxAsk > .box > .content > .rows {
	position: relative;
	margin: 2px auto;
	width: 98%;
}
#gboxAsk > .box > .content > .rows.options {
	text-align: right;
}
#gboxAsk > .box > .content > .rows input {
	padding: 5px;
	width: 96%;
	border: 1px solid #DFDFDF;
	border-radius: 2px;
	resize: none;
	text-indent: 2px;
	font-size: 12px;
	color: #666;
	line-height: 1.4em;
	transition: all .5s ease;
}
#gboxAsk > .box > .content > .rows > div {
	display: inline-block;
	vertical-align: top;
	text-align: left;
}
#gboxAsk > .box > .content > .rows.options {
	margin: 4px auto auto;
}
#gboxAsk > .box > .content > .rows.options > .private {
	margin-right: 3px;
}
#gboxAsk > .box > .content > .rows.options > .submit .send {
	font-size: 12px;
}
#gboxAsk [tag] {
	display: inline-block;
	vertical-align: top;
	margin: 1px;
	padding: 3px 6px;
  	border: 1px solid transparent;
	background-color: #999;
	border-radius: 2px;
}
#gboxAsk [tag] > * {
	font-size: 13px;
	color: #F0F0F0;
	line-height: 1.4em;
	text-shadow: 0 -1px 0 #848484;
}
#gboxAsk [tag] > i {
	cursor: pointer;
	margin-left: 4px;
}
#gboxAsk.live > .box > .content > .rows,
#gboxAsk.country > .box > .content > .rows {
	display: inline-block;
	vertical-align: top;
	margin: 4px auto auto;
}
#gboxAsk.live > .box > .content > .rows.input,
#gboxAsk.country > .box > .content > .rows.input {
	width: 260px;
	text-align: left;
}
#gboxAsk.live > .box > .content > .rows.options,
#gboxAsk.country > .box > .content > .rows.options {
	width: 170px;
}