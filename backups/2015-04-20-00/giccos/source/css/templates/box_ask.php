#gboxAsk {
	margin: 10px auto;
}
#gboxAsk > .box {
	display: inline-block;
	vertical-align: top;
	width: 448px;
}
#gboxAsk > .box > .title > .rows {
	padding: 4px 6px 4px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gboxAsk > .box > .title > .rows span {
	color: #666;
	line-height: 1.6em;
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
}
#gboxAsk > .box > .description {
	padding: 4px;
	margin: auto;
	width: 95%;
	border-bottom: 1px solid #E5E5E5;
}
#gboxAsk > .box > .description span {
	color: #999;
	line-height: 1.4em;
	font-size: 13px;
	font-weight: 300;
}
#gboxAsk > .box > .content {
	padding: 3px 3px 6px;
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
	width: 100%;
	border: 1px solid #E5E5E5;
	border-radius: 2px;
	resize: none;
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
#gboxAsk > .box > .content > .rows.options > .submit .send {
	font-size: 12px;
}
#gboxAsk [tag] {
	display: inline-block;
	vertical-align: top;
	margin: 1px;
	padding: 5px 6px;
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
#gboxAsk[ask-type='live'] > .box > .content > .rows,
#gboxAsk[ask-type='country'] > .box > .content > .rows {
	display: inline-block;
	vertical-align: top;
	margin: 4px auto auto;
}
#gboxAsk[ask-type='live'] > .box > .content > .rows.input,
#gboxAsk[ask-type='country'] > .box > .content > .rows.input {
	margin-left: 8px;
	width: 250px;
}
#gboxAsk[ask-type='live'] > .box > .content > .rows.options,
#gboxAsk[ask-type='country'] > .box > .content > .rows.options {
	width: 170px;
}