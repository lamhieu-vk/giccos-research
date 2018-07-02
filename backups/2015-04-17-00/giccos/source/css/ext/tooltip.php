.boxTooltip {
	z-index: 101;
	position: absolute;
	top: 0;
	left: 0;
}
.boxTooltip .cursor {
	display: inline-block;
	position: absolute;
	margin: 0;
	height: 0;
	width: 0;
}
.boxTooltip .cursor.c_n:before,
.boxTooltip .cursor.c_s:before {
	content: '';
	position: absolute;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
}
.boxTooltip .cursor.c_n:after,
.boxTooltip .cursor.c_s:after {
	content: '';
	position: absolute;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent;
}
.boxTooltip .cursor.c_w:before,
.boxTooltip .cursor.c_e:before {
	content: '';
	position: absolute;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
}
.boxTooltip .cursor.c_w:after,
.boxTooltip .cursor.c_e:after {
	content: '';
	position: absolute;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent;
}
.boxTooltip .inner {
	padding: 4px 6px;
	max-width: 300px;
	border-radius: 2px;
	font: normal normal normal 13px/1.4em "Helvetica Neue","HelveticaNeue",Helvetica,Arial,sans-serif;
}
.boxTooltip .inner small {
	font-size: 11px;
}
.boxTooltip.we .cursor.c_n:before {
	margin-top: -1px;
	border-bottom: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_n:after {
	margin-top: 1px;
	border-bottom: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_w:before {
	margin-left: -1px;
	border-right: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_w:after {
	margin-right: -1px;
	border-right: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_e:before {
	margin-right: -1px;
	border-left: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_e:after {
	margin-left: -1px;
	border-left: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_s:before {
	margin-bottom: -1px;
	border-top: 5px solid #FFF;
}
.boxTooltip.we .cursor.c_s:after {
	margin-bottom: 1px;
	border-top: 5px solid #FFF;
}
.boxTooltip.we .inner {
	background-color: #FFF;
	border: 1px solid #FFF;
	color: #666;
}
.boxTooltip.bk .cursor.c_n:before {
	margin-top: -1px;
	border-bottom: 5px solid #444;
}
.boxTooltip.bk .cursor.c_n:after {
	margin-top: 1px;
	border-bottom: 5px solid #444;
}
.boxTooltip.bk .cursor.c_w:before {
	margin-left: -1px;
	border-right: 5px solid #444;
}
.boxTooltip.bk .cursor.c_w:after {
	margin-right: -1px;
	border-right: 5px solid #444;
}
.boxTooltip.bk .cursor.c_e:before {
	margin-right: -1px;
	border-left: 5px solid #444;
}
.boxTooltip.bk .cursor.c_e:after {
	margin-left: -1px;
	border-left: 5px solid #444;
}
.boxTooltip.bk .cursor.c_s:before {
	margin-bottom: -1px;
	border-top: 5px solid #444;
}
.boxTooltip.bk .cursor.c_s:after {
	margin-bottom: 1px;
	border-top: 5px solid #444;
}
.boxTooltip.bk .inner {
	background-color: #444;
	border: 1px solid #444;
	color: #FFF;
}
.boxTooltip.be .cursor.c_n:before {
	margin-top: -1px;
	border-bottom: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_n:after {
	margin-top: 1px;
	border-bottom: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_w:before {
	margin-left: -1px;
	border-right: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_w:after {
	margin-right: -1px;
	border-right: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_e:before {
	margin-right: -1px;
	border-left: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_e:after {
	margin-left: -1px;
	border-left: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_s:before {
	margin-bottom: -1px;
	border-top: 5px solid #0C74B9;
}
.boxTooltip.be .cursor.c_s:after {
	margin-bottom: 1px;
	border-top: 5px solid #0C74B9;
}
.boxTooltip.be .inner {
	background-color: #0C74B9;
	border: 1px solid #0C74B9;
	color: #FFF;
}