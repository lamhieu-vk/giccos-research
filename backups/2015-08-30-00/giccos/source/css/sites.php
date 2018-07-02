#rightBox {
	
}
#rightBox > .tab {
	display: inline-block;
    vertical-align: top;
    margin: 5px auto;
    width: 230px;
}
#rightBox > .tab:first-child {
	margin-top: 10px;
}
#rightBox > .tab > .title {
	padding: 6px 0 5px;
    border-bottom: 1px solid #E5E5E5;
    text-indent: 8px;
}
#rightBox > .tab > .title span {
	color: #666;
	font: normal normal 300 12px/1.6em "Roboto";
	text-transform: uppercase;
}
#rightBox > .tab > .content {
	
}


#infoPage {
	margin: 10px auto;
	padding: 0;
	width: 450px;
}
#infoPage > .cover {
	position: relative;
	padding-bottom: 1.5%;
    height: 175px;
    border-bottom: 1px solid #DDD;
}
#infoPage > .cover > .thumbnail {
	margin: 1%;
	height: 100%;
	width: 98%%;
	background-color: #FFF;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	border: none;
	border-radius: 2px;
	box-shadow: inset 0 -10px 200px #333;
}
#infoPage > .cover > .thumbnail img {
	display: none;
	width: 100%;
}
#infoPage > .cover > .title {
	overflow: hidden;
	position: absolute;
	top: 13.5%;
	left: 5%;
	height: 58%;
	width: 90%;
}
#infoPage > .cover > .title span {
	cursor: pointer;
	color: #FFF;
	font: normal normal 600 18px/1.4em "Roboto";
	text-shadow: 0 0 10px #333;
}
#infoPage > .cover > .host {
	overflow: hidden;
    position: absolute;
    bottom: 13.5%;
    left: 5%;
    width: 90%;
    text-align: right;
}
#infoPage > .cover > .host span {
	cursor: pointer;
	color: #FFF;
	font: normal normal 600 12px/1.4em "Roboto";
	text-shadow: 0 0 10px #333;
	text-transform: uppercase;
	text-decoration: overline;
}
#infoPage > .cover > .button {
	cursor: pointer;
    position: absolute;
    bottom: 13.5%;
    left: 5%;
    width: 90%;
    text-align: left;
}	
#infoPage > .cover > .button i {
	margin: 6px;
	color: #FFF;
	font: normal normal normal 14px/2em "FontAwesome";
}
#infoPage > .cover > .button .copylink,
#infoPage > .cover > .button .redirectlink {
	display: inline-block;
    vertical-align: top;
    margin: 0 3px -3px 0;
    width: 28px;
    height: 28px;
    background-color: rgba(51, 51, 51, 0.51);
    border: none;
    border-radius: 90px;
    transition: background .5s ease;
}
#infoPage > .cover > .button .copylink:hover,
#infoPage > .cover > .button .redirectlink:hover {
	background-color: rgba(51, 51, 51, 1);
}
#infoPage > .cover > .button .copylink i:before {
	content: "\f0c5";
}
#infoPage > .cover > .button .redirectlink i:before {
	content: "\f064";
}
#infoPage > .box {
	margin: 5px auto;
}
#infoPage > .box > .title {
    margin: auto;
    padding: 4px 0 4px;
    width: 96%;
    border-bottom: 1px solid #DDD;
    text-indent: 4px;
}
#infoPage > .box > .title span {
	cursor: pointer;
	color: #999;
	font: normal normal 300 12px/1.6em "Roboto";
	text-transform: uppercase;
	transition: color .5s ease;
}
#infoPage > .box:hover > .title span {
	color: #666;
}
#infoPage > .box > .content {
	margin: auto;
    padding: 0;
    width: 96%;
}
#infoPage > .box > .content > .rows {
	margin: 10px auto;
    width: 96%;
}
#infoPage > .box > .content > .rows.null {
	text-align: center;
}
#infoPage > .box > .content > .rows > .label,
#infoPage > .box > .content > .rows > .value {
	display: inline-block;
    vertical-align: top;
}
#infoPage > .box > .content > .rows > .label span,
#infoPage > .box > .content > .rows > .label a,
#infoPage > .box > .content > .rows > .value span,
#infoPage > .box > .content > .rows > .value a {
	color: #888;
	transition: color .5s ease;
}
#infoPage > .box > .content > .rows > .label {
	width: 29%;
}
#infoPage > .box > .content > .rows > .label span {
	font-weight: bold;
}
#infoPage > .box > .content > .rows > .value {
	width: 70%;
}
#infoPage > .box > .content > .rows > .value a:hover {
	color: #666;
}
#infoPage > .box > .content > .rows > .value .rateBox {
	margin-top: -2px;
}
#infoPage > .box > .content > .rows.null span {
	color: #AAA;
}
#infoPage > .box.stats > .content > .rows.table > .value {
	width: 100%;
}
#infoPage > .box.stats > .content > .rows.table > .value > .statsBox {
	margin: 2%;
	width: 96%;
}
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip {
	margin: 2%;
	width: 96%;
	text-align: right;
}
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip > .lastweek,
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip > .thisweek {
	display: inline-block;
    vertical-align: top;
    margin: 0 4px;
}
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip > .lastweek > div,
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip > .thisweek > div {
	display: inline-block;
    vertical-align: top;
	width: 16px;
	height: 16px;
	border: none;
	border-radius: 360px;
}
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip > .lastweek > div {
	background: rgba(153, 153, 153, 1);
}
#infoPage > .box.stats > .content > .rows.table > .value > .statsTip > .thisweek > div {
	background: rgba(7, 197, 190, 1);
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanner {
	color: #67A5F5;
	font-weight: bold;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanreport {
	
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanreport.safe {
	color: #21A921;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanreport.suspicious {
	color: #ffac29;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanreport.unrated {
	color: #827CFF;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanreport.danger {
	color: #FF7C7C;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scanreport.undefined {
	color: #999;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scandetected.notdetected {
	color: #777;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scandetected.hasdetected {
	color: #FF7C7C;
}
#infoPage > .box.malwarescan > .content > .rows.results > .value .scandetected.undefined {
	color: #999;
}

.rateBoxStatis {
	display: inline-block;
    vertical-align: top;
}
.rateBoxStatis > .point {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	margin: auto 2px;
	width: 12px;
    height: 12px;
    background: #FFF;
    border: 4px solid #999;
    border-radius: 360px;
    transition: all .5s ease;
}
.rateBoxStatis > .point:first-child {
	margin-left: 0;
}
.rateBoxStatis > .point.active {
	background: #999;
}
.rateBoxStatis:hover > .point {
	border-color: #666;
}
.rateBoxStatis:hover > .point.active {
	background: #666;
}