#gboxSuggest {
	margin: 10px auto;
}
#gboxSuggest > .rows {
	display: inline-block;
	vertical-align: top;
	width: 440px;
}
#gboxSuggest > .box {
	display: inline-block;
	vertical-align: top;
	margin: 5px auto;
	width: 230px;
}
#gboxSuggest > .box:first-child {
	margin-top: 0;
	margin-right: 3px;
}
#gboxSuggest > .box > .title > .rows {
	padding: 6px 6px 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 2px;
}
#gboxSuggest > .box > .title > .rows span {
	color: #666;
	line-height: 1.6em;
	font-family: Roboto;
	font-size: 12px;
	font-weight: 300;
	text-transform: uppercase;
}
#gboxSuggest > .box > .content {
	padding: 3px;
}
#gboxSuggest > .box > .content > .rows {
	position: relative;
	margin: 4px auto;
	width: 96%;
	height: 40px;
}
#gboxSuggest > .box > .content > .rows > div {
	border-radius: 2px;
}
#gboxSuggest > .box > .content > .rows > .info {
	display: block;
	border: 1px solid transparent;
}
#gboxSuggest > .box > .content > .rows > .info > div {
	display: inline-block;
	vertical-align: top;
}
#gboxSuggest > .box > .content > .rows > .info > .img {
	height: 40px;
	width: 40px;
}
#gboxSuggest > .box > .content > .rows > .info > .img > img {
	margin: 3px;
	height: 34px;
	width: 34px;
	border-radius: 2px;
}
#gboxSuggest > .box > .content > .rows > .info > .text {
	margin: 5px auto auto auto;
	width: 150px;
}
#gboxSuggest > .box > .content > .rows > .info > .text > div {
	color: #777;
}
#gboxSuggest > .box > .content > .rows > .info > .text > div span {
	color: #777;
	font-weight: 300;
	line-height: 1.2em;
}
#gboxSuggest > .box > .content > .rows > .info > .text > .name span {
	font-size: 14px;
}
#gboxSuggest > .box > .content > .rows > .info > .text > .tag span {
	font-size: 13px;
}
#gboxSuggest > .box > .content > .rows:hover > .action {
	opacity: 1;
}
#gboxSuggest > .box > .content > .rows > .action {
	opacity: 0;
	position: absolute;
	top: 0;
	left: 0;
	background: rgba(51, 51, 51, 0.75);
	width: 100%;
	height: 100%;
	border: 1px solid transparent;
	text-align: center;
	transition: all .5s ease;
}
#gboxSuggest > .box > .content > .rows > .action > div {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	text-align: center;
	margin-top: 5px;
	padding: 5px;
	background: transparent;
	border: 1px solid #FFF;
	border-radius: 2px;
	transition: background .5s ease;
	color: #FFF;
}
#gboxSuggest > .box > .content > .rows > .action > div span {
	color: #FFF;
}
#gboxSuggest > .box > .content > .rows > .action > div:hover {
	background: #FFF;
	border-color transparent;
	color: #777;
}
#gboxSuggest > .box > .content > .rows > .action > div:hover span {
	color: #777;
}
#gboxSuggest > .box > .content > .rows > .action > div span {
	font-size: 13px;
	font-weight: 300;
}
/* weather box */
#gboxSuggest > .box.weather > .content {
	
}
#gboxSuggest > .box.weather > .content > .rows {
	height: auto;
	width: 98%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #999;
}
#gboxSuggest > .box.weather > .content > .rows .label,
#gboxSuggest > .box.weather > .content > .rows .value {
	
	vertical-align: top;
}
#gboxSuggest > .box.weather > .content > .rows .label span,
#gboxSuggest > .box.weather > .content > .rows .value .td {
	color: #999;
	font-size: 13px;
	font-weight: 300;
}
#gboxSuggest > .box.weather > .content > .rows .label .td {
}
#gboxSuggest > .box.weather > .content > .rows .value .td {
	display: inline-block;
	vertical-align: top;
	width: 48%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #999;
	font-size: 12px;
	text-indent: 4px;
}
#gboxSuggest > .box.weather > .content > .rows .label span i,
#gboxSuggest > .box.weather > .content > .rows .value span i {
	font: normal 300 13px/1em FontAwesome;
}
#gboxSuggest > .box.weather > .content > .rows .value .direction i:before {
	content: "\f14e";
}
#gboxSuggest > .box.weather > .content > .rows .value .speed i:before {
	content: "\f0e7";
}
#gboxSuggest > .box.weather > .content > .rows.palces {
	
}
#gboxSuggest > .box.weather > .content > .rows.places i,
#gboxSuggest > .box.weather > .content > .rows.time i {
	color: #999;
	font: normal 300 13px/1em FontAwesome;
}
#gboxSuggest > .box.weather > .content > .rows.places i {
	margin: auto 4px auto 2px;
}
#gboxSuggest > .box.weather > .content > .rows.places i:before {
	content: "\f041";
}
#gboxSuggest > .box.weather > .content > .rows.time i {
	margin: auto 4px auto 1px;
}
#gboxSuggest > .box.weather > .content > .rows.time i:before {
	content: "\f017";
}
#gboxSuggest > .box.weather > .content > .rows.places span,
#gboxSuggest > .box.weather > .content > .rows.time span {
	color: #999;
	font-size: 13px;
}
#gboxSuggest > .box.weather > .content > .table {
	margin: 4px auto;
	width: 98%;
}
#gboxSuggest > .box.weather > .content > .table > .title {
	
}
#gboxSuggest > .box.weather > .content > .table > .title span {
	color: #999;
	font-size: 13px;
}
#gboxSuggest > .box.weather > .content > .table > .td {
	vertical-align: top;
	display: inline-block;
	margin: auto 2px;
	width: 48px;
}
#gboxSuggest > .box.weather > .content > .table > .td:first-child {
	margin-left: 4px;
}
#gboxSuggest > .box.weather > .content > .table > .td > .days {
	text-align: center;
}
#gboxSuggest > .box.weather > .content > .table > .td > .days span {
	color: #999;
	font-size: 12px;
	text-transform: capitalize;
}
#gboxSuggest > .box.weather > .content > .table > .td > .icon,
#gboxSuggest > .box.weather > .content > .table > .td > .icon img {
	height: 48px;
	width: 48px;
}
#gboxSuggest > .box.weather > .content > .table > .td > .value {
	text-align: center;
}
#gboxSuggest > .box.weather > .content > .table > .td > .value span {
	color: #999;
	font-size: 12px;
}
#gboxSuggest > .box.weather > .content > .null {
	padding: 5px 0;
	text-indent: 4px;
}
#gboxSuggest > .box.weather > .content > .null span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}