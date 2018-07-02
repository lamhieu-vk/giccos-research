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
	padding: 6px;
}
#gBoxSuggest > .box > .content > .rows {
	position: relative;
	margin: 4px auto;
	width: 96%;
	height: 40px;
}
#gBoxSuggest > .box > .content > .null {
	padding: 5px 0;
	text-align: center;
}
#gBoxSuggest > .box > .content > .null span {
	color: #999;
	font-size: 12px;
	font-weight: 300;
	line-height: 1.4em;
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
	font-size: 12px;
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
	font-size: 12px;
	font-weight: bold;
}
#gBoxSuggest > .box.weather > .content > .rows.places span,
#gBoxSuggest > .box.weather > .content > .rows.time span {
	color: #999;
	font-size: 12px;
}
#gBoxSuggest > .box.weather > .content > .table {
	margin: 4px auto;
	width: 96%;
}
#gBoxSuggest > .box.weather > .content > .table > .title {
	
}
#gBoxSuggest > .box.weather > .content > .table > .title span {
	color: #999;
	font-size: 12px;
}
#gBoxSuggest > .box.weather > .content > .table > .td {
	cursor: pointer;
	vertical-align: top;
	display: inline-block;
	margin: auto 2px;
	width: 62px;
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
/* friends box */
#gBoxSuggest > .box.friends > .content {
	
}
#gBoxSuggest > .box.friends > .content > .rows {
	margin: 8px auto;
	height: 36px;
	width: 96%;
}
#gBoxSuggest > .box.friends > .content > .rows:first-child {
	margin-top: 4px;
}
#gBoxSuggest > .box.friends > .content > .rows:last-child {
	margin-bottom: 4px;
}
#gBoxSuggest > .box.friends > .content > .rows > .td {
	display: inline-block;
    vertical-align: top;
    margin: 0 2px;
}
#gBoxSuggest > .box.friends > .content > .rows > .td:first-child {
	margin-left: 0;
}
#gBoxSuggest > .box.friends > .content > .rows > .td:last-child {
	margin-right: 0;
}
#gBoxSuggest > .box.friends > .content > .rows > .thumbnail {
	width: 36px;
}
#gBoxSuggest > .box.friends > .content > .rows > .thumbnail .img {
	width: 100%;
	height: 100%;
	border: none;
	border-radius: 2px;
}
#gBoxSuggest > .box.friends > .content > .rows > .info {
	
}
#gBoxSuggest > .box.friends > .content > .rows > .info > .text {
	width: 160px;
}
#gBoxSuggest > .box.friends > .content > .rows > .info > .text a {
	color: #666;
    font-weight: 300;
    line-height: 1.4em;
}
#gBoxSuggest > .box.friends > .content > .rows > .info > .name {
	margin-top: 1px;
}
#gBoxSuggest > .box.friends > .content > .rows > .info > .name a {
	font-size: 14px;
}
#gBoxSuggest > .box.friends > .content > .rows > .info > .tag {
	text-indent: 2px;
}
#gBoxSuggest > .box.friends > .content > .rows > .info > .tag a {
	font-size: 12px;
}
#gBoxSuggest > .box.friends > .content > .rows > .action {
	opacity: 0;
    position: absolute;
    left: 2px;
    width: 36px;
    height: 36px;
    background-color: rgba(51, 51, 51, 0.51);
    border: none;
    border-radius: 4px;
    transition: opacity .5s ease;
}
#gBoxSuggest > .box.friends > .content > .rows:hover > .action {
	opacity: 1;
}
#gBoxSuggest > .box.friends > .content > .rows > .action > .button {
	cursor: pointer;
    color: #FFF;
    font: normal normal 300 24px/1em FontAwesome;
    transition: color .5s ease;
}
#gBoxSuggest > .box.friends > .content > .rows > .action > .button.add_request {
	margin-left: 8px;
	line-height: 1.6em;
}
#gBoxSuggest > .box.friends > .content > .rows > .action > .button.add_request:before {
	content: "\f055";
}