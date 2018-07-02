#gBoxSuggest {
	margin: 10px auto;
}
#gBoxSuggest > .rows {
	display: inline-block;
	vertical-align: top;
	width: 440px;
}
#gBoxSuggest > .box {
	display: inline-block;
	vertical-align: top;
	margin: 5px auto;
	width: 230px;
}
#gBoxSuggest > .box:first-child {
	margin-top: 0;
	margin-right: 3px;
}
#gBoxSuggest > .box > .title > .rows {
	padding: 6px 0 5px;
	border-bottom: 1px solid #E5E5E5;
	text-indent: 8px;
}
#gBoxSuggest > .box > .title > .rows span {
	cursor: pointer;
	color: #666;
	font: normal normal 300 12px/1.6em "Roboto";
	text-transform: uppercase;
}
#gBoxSuggest > .box > .content {
	padding: 3px;
}
#gBoxSuggest > .box > .content > .rows {
	position: relative;
	margin: 4px auto;
	width: 96%;
	height: 40px;
}
#gBoxSuggest > .box > .content > .rows > div {
	border-radius: 2px;
}
#gBoxSuggest > .box > .content > .rows > .info {
	display: block;
	border: 1px solid transparent;
}
#gBoxSuggest > .box > .content > .rows > .info > div {
	display: inline-block;
	vertical-align: top;
}
#gBoxSuggest > .box > .content > .rows > .info > .img {
	height: 40px;
	width: 40px;
}
#gBoxSuggest > .box > .content > .rows > .info > .img > img {
	margin: 3px;
	height: 34px;
	width: 34px;
	border-radius: 2px;
}
#gBoxSuggest > .box > .content > .rows > .info > .text {
	margin: 5px auto auto auto;
	width: 150px;
}
#gBoxSuggest > .box > .content > .rows > .info > .text > div {
	color: #777;
}
#gBoxSuggest > .box > .content > .rows > .info > .text > div span {
	color: #777;
	font-weight: 300;
	line-height: 1.2em;
}
#gBoxSuggest > .box > .content > .rows > .info > .text > .name span {
	font-size: 14px;
}
#gBoxSuggest > .box > .content > .rows > .info > .text > .tag span {
	font-size: 13px;
}
#gBoxSuggest > .box > .content > .rows:hover > .action {
	opacity: 1;
}
#gBoxSuggest > .box > .content > .rows > .action {
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
#gBoxSuggest > .box > .content > .rows > .action > div {
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
#gBoxSuggest > .box > .content > .rows > .action > div span {
	color: #FFF;
}
#gBoxSuggest > .box > .content > .rows > .action > div:hover {
	background: #FFF;
	border-color transparent;
	color: #777;
}
#gBoxSuggest > .box > .content > .rows > .action > div:hover span {
	color: #777;
}
#gBoxSuggest > .box > .content > .rows > .action > div span {
	font-size: 13px;
	font-weight: 300;
}
/* weather box */
#gBoxSuggest > .box.weather > .content {
	
}
#gBoxSuggest > .box.weather > .content > .rows {
	height: auto;
	width: 96%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #999;
}
#gBoxSuggest > .box.weather > .content > .rows .label,
#gBoxSuggest > .box.weather > .content > .rows .value {
	
	vertical-align: top;
}
#gBoxSuggest > .box.weather > .content > .rows .label span,
#gBoxSuggest > .box.weather > .content > .rows .value .td {
	color: #999;
	font-size: 13px;
	font-weight: 300;
}
#gBoxSuggest > .box.weather > .content > .rows .label .td {
}
#gBoxSuggest > .box.weather > .content > .rows .value .td {
	display: inline-block;
	vertical-align: top;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #999;
	font-size: 12px;
	text-indent: 4px;
}
#gBoxSuggest > .box.weather > .content > .rows .value .td:first-child {
	margin-left: 0;
}
#gBoxSuggest > .box.weather > .content > .rows .value .td:first-child:before {
	content: "";
}
#gBoxSuggest > .box.weather > .content > .rows .value .td {
	margin-left: -3px;
}
#gBoxSuggest > .box.weather > .content > .rows .value .td:before {
	content: "· ";
}
#gBoxSuggest > .box.weather > .content > .rows .value .td a {
	cursor: pointer;
}
#gBoxSuggest > .box.weather > .content > .rows .label span i,
#gBoxSuggest > .box.weather > .content > .rows .value span i {
	font: normal 300 13px/1em FontAwesome;
}
#gBoxSuggest > .box.weather > .content > .rows .value .direction i:before {
	content: "\f14e";
}
#gBoxSuggest > .box.weather > .content > .rows .value .speed i:before {
	content: "\f0e7";
}
#gBoxSuggest > .box.weather > .content > .rows.places,
#gBoxSuggest > .box.weather > .content > .rows.time {
	overflow: initial;
}
#gBoxSuggest > .box.weather > .content > .rows.places i,
#gBoxSuggest > .box.weather > .content > .rows.time i {
	color: #999;
	font: normal 300 13px/1em "FontAwesome";
}
#gBoxSuggest > .box.weather > .content > .rows.places i {
	margin: auto 4px auto -1px;
}
#gBoxSuggest > .box.weather > .content > .rows.places i:before {
	content: "\f041";
}
#gBoxSuggest > .box.weather > .content > .rows.time i {
	margin: auto 4px auto -2px;
}
#gBoxSuggest > .box.weather > .content > .rows.time i:before {
	content: "\f017";
}
#gBoxSuggest > .box.weather > .content > .rows.places a {
	cursor: pointer;
	color: #999;
	font-size: 13px;
	font-weight: bold;
}
#gBoxSuggest > .box.weather > .content > .rows.places span,
#gBoxSuggest > .box.weather > .content > .rows.time span {
	color: #999;
	font-size: 13px;
}
#gBoxSuggest > .box.weather > .content > .table {
	margin: 4px auto;
	width: 96%;
}
#gBoxSuggest > .box.weather > .content > .table > .title {
	
}
#gBoxSuggest > .box.weather > .content > .table > .title span {
	color: #999;
	font-size: 13px;
}
#gBoxSuggest > .box.weather > .content > .table > .td {
	cursor: pointer;
	vertical-align: top;
	display: inline-block;
	margin: auto 2px;
	width: 65px;
}
#gBoxSuggest > .box.weather > .content > .table > .td:first-child {
	margin-left: 4px;
}
#gBoxSuggest > .box.weather > .content > .table > .td > .day {
	margin: 2px 0;
	text-align: center;
}
#gBoxSuggest > .box.weather > .content > .table > .td > .day span {
	color: #999;
	font-size: 12px;
}
#gBoxSuggest > .box.weather > .content > .table > .td > .icon,
#gBoxSuggest > .box.weather > .content > .table > .td > .icon img {
	height: 48px;
	width: 48px;
}
#gBoxSuggest > .box.weather > .content > .table > .td > .icon img {
	margin: 0 9px;
}
#gBoxSuggest > .box.weather > .content > .table > .td > .value {
	text-align: center;
}
#gBoxSuggest > .box.weather > .content > .table > .td > .value span {
	color: #999;
	font-size: 11px;
}
#gBoxSuggest > .box.weather > .content > .table > .td.active > .day span,
#gBoxSuggest > .box.weather > .content > .table > .td.active > .value span {
	font-weight: bold;
}
#gBoxSuggest > .box.weather > .content > .null {
	padding: 5px 0;
	text-indent: 4px;
}
#gBoxSuggest > .box.weather > .content > .null span {
	color: #999;
	font-size: 13px;
	font-weight: 300;
	line-height: 1.4em;
}