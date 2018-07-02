.gplayer-skin * {
  outline: none;
}
.gplayer-skin {
  background-color: #000;
  position: relative;
  padding: 0;
  /* Start with 10px for base font size so other dimensions can be em based and
     easily calculable. */
  font-size: 10px;
  /* Allow poster to be vertically aligned. */
  vertical-align: middle;
  /*  display: table-cell; */
  /*This works in Safari but not Firefox.*/
  /* Provide some basic defaults for fonts */
  font-weight: normal;
  font-style: normal;
  /* Avoiding helvetica: issue #376 */
  font-family: Arial, sans-serif;
  /* Turn off user selection (text highlighting) by default.
     The majority of player components will not be text blocks.
     Text areas will need to turn user selection back on. */
  /* user-select */
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
/* Playback technology elements expand to the width/height of the containing div
    <video> or <object> */
.gplayer-skin .gplayer-tech {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
/* Fix for Firefox 9 fullscreen (only if it is enabled). Not needed when
   checking fullScreenEnabled. */
.gplayer-skin:-moz-full-screen {
  position: absolute;
}
/* Fullscreen Styles */
body.gplayer-full-window {
  padding: 0;
  margin: 0;
  height: 100%;
  /* Fix for IE6 full-window. http://www.cssplay.co.uk/layouts/fixed.html */
  overflow-y: auto;
}
.gplayer-skin.gplayer-fullscreen {
  position: fixed;
  overflow: hidden;
  z-index: 1000;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  width: 100% !important;
  height: 100% !important;
  /* IE6 full-window (underscore hack) */
  _position: absolute;
}
.gplayer-skin:-webkit-full-screen {
  width: 100% !important;
  height: 100% !important;
}
.gplayer-skin.gplayer-fullscreen.gplayer-user-inactive {
  cursor: none;
}
/* Poster Styles */
.gplayer-poster {
  background-repeat: no-repeat;
  background-position: 50% 50%;
  background-size: cover; /* contain */
  cursor: pointer;
  margin: 0;
  padding: 0;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
}
.gplayer-poster img {
  display: block;
  margin: 0 auto;
  max-height: 100%;
  padding: 0;
  width: 100%;
}
/* Hide the poster after the video has started playing */
.gplayer-skin.gplayer-has-started .gplayer-poster {
  display: none;
}
/* Don't hide the poster if we're playing audio */
.gplayer-skin.gplayer-audio.gplayer-has-started .gplayer-poster {
  display: block;
}
/* Hide the poster when controls are disabled because it's clickable
    and the native poster can take over */
.gplayer-skin.gplayer-controls-disabled .gplayer-poster {
  display: none;
}
/* Hide the poster when native controls are used otherwise it covers them */
.gplayer-skin.gplayer-using-native-controls .gplayer-poster {
  display: none;
}
/* Text Track Styles */
/* Overall track holder for both captions and subtitles */
.gplayer-skin .gplayer-text-track-display {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 3em;
  right: 0;
  pointer-events: none;
}
/* Captions Settings Dialog */
.gplayer-caption-settings {
  position: relative;
  top: 1em;
  background-color: #000;
  opacity: 0.75;
  color: #FFF;
  margin: 0 auto;
  padding: 0.5em;
  height: 15em;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 12px;
  width: 40em;
}
.gplayer-caption-settings .gplayer-tracksettings {
  top: 0;
  bottom: 2em;
  left: 0;
  right: 0;
  position: absolute;
  overflow: auto;
}
.gplayer-caption-settings .gplayer-tracksettings-colors,
.gplayer-caption-settings .gplayer-tracksettings-font {
  float: left;
}
.gplayer-caption-settings .gplayer-tracksettings-colors:after,
.gplayer-caption-settings .gplayer-tracksettings-font:after,
.gplayer-caption-settings .gplayer-tracksettings-controls:after {
  clear: both;
}
.gplayer-caption-settings .gplayer-tracksettings-controls {
  position: absolute;
  bottom: 1em;
  right: 1em;
}
.gplayer-caption-settings .gplayer-tracksetting {
  margin: 5px;
  padding: 3px;
  min-height: 40px;
}
.gplayer-caption-settings .gplayer-tracksetting label {
  display: block;
  width: 100px;
  margin-bottom: 5px;
}
.gplayer-caption-settings .gplayer-tracksetting span {
  display: inline;
  margin-left: 5px;
}
.gplayer-caption-settings .gplayer-tracksetting > div {
  margin-bottom: 5px;
  min-height: 20px;
}
.gplayer-caption-settings .gplayer-tracksetting > div:last-child {
  margin-bottom: 0;
  padding-bottom: 0;
  min-height: 0;
}
.gplayer-caption-settings label > input {
  margin-right: 10px;
}
.gplayer-caption-settings input[type="button"] {
  width: 40px;
  height: 40px;
}
/* Hide disabled or unsupported controls */
.gplayer-hidden {
  display: none !important;
}
.gplayer-lock-showing {
  display: block !important;
  opacity: 1;
  visibility: visible;
}
/*  In IE8 w/ no JavaScript (no HTML5 shim), the video tag doesn't register.
    The .gplayer-skin classname on the video tag also isn't considered.
    This optional paragraph inside the video tag can provide a message to users
    about what's required to play video. */
.gplayer-no-js {
  padding: 2em;
  color: #ccc;
  background-color: #333;
  font-size: 1.8em;
  font-family: Arial, sans-serif;
  text-align: center;
  width: 30em;
  height: 15em;
  margin: 0 auto;
}
.gplayer-no-js a,
.gplayer-no-js a:visited {
  color: #F4A460;
}

.gplayer-skin.v-simple {
  overflow: hidden;
}
.gplayer-skin.v-simple .gplayer-poster {

}
.gplayer-skin.v-simple .gplayer-big-play-button {
  display: block;
  cursor: pointer;
  line-height: 60px;
  margin: -30px;
  position: absolute;
  top: 50%;
  left: 50%;
  height: 60px;
  width: 60px;
  background: #FFF;
  border: none; 
  -webkit-border-radius: 90px;
  -moz-border-radius: 90px;
  border-radius: 90px;
  -webkit-transition: opacity 0.25s ease;
  -moz-transtion: opacity 0.25s ease;
  transition: opacity 0.25 ease;
  z-index: 4;
}
.gplayer-skin.v-simple.gplayer-has-started .gplayer-big-play-button {
  display: none;
}
.gplayer-skin.v-simple:before {
  content: "";
  position: absolute;
  opacity: 1;
  height: 100%;
  width: 100%;
  background: rgba(15, 15, 15, 0.5);
  border: none;
  -webkit-transition: opacity 0.5s ease;
  -moz-transtion: opacity 0.5s ease;
  transition: opacity 0.5s ease;
  /*z-index: 1;*/
}
.gplayer-skin.v-simple:hover:before,
.gplayer-skin.v-simple.gplayer-playing:before {
  opacity: 0;
}
.gplayer-skin.v-simple .gplayer-information-bar {
  opacity: 0;
  position: absolute;
  left: 0;
  width: 100%;
  background: rgba(34, 34, 34, 0.8);
  border: none;
  -webkit-transition: opacity .5s ease;
  -moz-transition: opacity .5s ease;
  -o-transition: opacity .5s ease;
  transition: opacity .5s ease;
  z-index: 3;
}
.gplayer-skin.v-simple.gplayer-has-started.gplayer-user-active .gplayer-information-bar,
.gplayer-skin.v-simple.gplayer-has-started:hover .gplayer-information-bar {
  opacity: 1;
  -webkit-transition: opacity .25s ease;
  -moz-transition: opacity .25s ease;
  -o-transition: opacity .25s ease;
  transition: opacity .25s ease;
}
.gplayer-skin.v-simple.gplayer-has-started.gplayer-user-inactive .gplayer-information-bar {
  opacity: 0;
  -webkit-transition: opacity .5s ease;
  -moz-transition: opacity .5s ease;
  -o-transition: opacity .5s ease;
  transition: opacity .5s ease;
}
.gplayer-skin.v-simple .gplayer-information-bar {
  opacity: 0;
  top: 0;
  height: 32px;
}
.gplayer-skin.v-simple .gplayer-information-bar .gplayer-control-content > .gplayer-control-text {
  display: none;
}
.gplayer-skin.v-simple .gplayer-information-bar .gplayer-control-content > .gplayer-control-text-information {
  line-height: 2.6em;
  text-indent: 10px;
}
.gplayer-skin.v-simple .gplayer-information-bar .gplayer-control-content > .gplayer-control-text-information > * {
  color: #CCC;
  font: bold 12px/1.4em "Helvetica Neue", "HelveticaNeue", Helvetica, Arial, sans-serif;
  -webkit-transition: color .5s ease;
  -moz-transition: color .5s ease;
  -o-transition: color .5s ease;
  transition: color .5s ease;
}
.gplayer-skin.v-simple:hover .gplayer-information-bar .gplayer-control-content > .gplayer-control-text-information > * {
  color: #FFF;
}
.gplayer-skin.v-simple .gplayer-subtitles,
.gplayer-skin.v-simple .gplayer-captions {
  color: #FFFFFF;
  font-family: "Helvetica Neue", "HelveticaNeue", Helvetica, Arial, sans-serif;
  font-size: 116px;
}
.gplayer-skin.v-simple.gplayer-controls-disabled .gplayer-control-bar {
  display: none;
}
.gplayer-skin.v-simple .gplayer-control-bar {
  opacity: 0;
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 32px;
  background: rgba(34, 34, 34, 0.8);
  border: none;
  -webkit-transition: all .25s, opacity .5s ease;
  -moz-transition: all .25s, opacity .5s ease;
  -o-transition: all .25s, opacity .5s ease;
  transition: all .25s, opacity .5s ease;
  z-index: 3;
}
.gplayer-skin.v-simple.gplayer-has-started.gplayer-user-active .gplayer-control-bar,
.gplayer-skin.v-simple.gplayer-has-started:hover .gplayer-control-bar {
  opacity: 1;
  bottom: 0;
}
.gplayer-skin.v-simple.gplayer-has-started .gplayer-control-bar {
  opacity: 0.5;
  bottom: -34px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-control,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-time-divider {
  position: relative;
  float: left;
  margin: 0;
  padding: 0;
  height: 22px;
  text-align: center;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-control > *,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-time-divider > * {
  color: #CCC;
  font: bold 12px/1.4em "Helvetica Neue", "HelveticaNeue", Helvetica, Arial, sans-serif;
  -webkit-transition: color .5s ease;
  -moz-transition: color .5s ease;
  -o-transition: color .5s ease;
  transition: color .5s ease;
}
.gplayer-skin.v-simple:hover .gplayer-control-bar .gplayer-control > *,
.gplayer-skin.v-simple:hover .gplayer-control-bar .gplayer-time-divider > * {
  color: #FFF;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-control-text {
  display: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-play-control {
  margin-left: 2px;
  height: 100%;
  width: 32px;
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-play-control:before {
  content: "";
  cursor: pointer;
  display: block;
  margin: 4px;
  height: 24px;
  width: 24px;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-time-controls,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-time-divider,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-live-controls {
  margin: 8px auto 0;
  line-height: 2.2em;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-current-time {
  margin-left: 5px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-time-divider {
  margin-left: 3px;
  margin-right: 3px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-duration {
  
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-remaining-time {
  display: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-live-controls {
  display: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-progress-control {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  margin: -16px auto 0;
  width: 100%;
  height: 14px;
  background: rgba(34, 34, 34, 0.8);
  border: none;
  -webkit-transition: all .25s ease;
  -moz-transition: all .25s ease;
  -o-transition: all .25s ease;
  transition: all .25s ease;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider {
  position: relative;
  top: 5px;
  cursor: pointer;
  margin: auto;
  padding: 0;
  width: 98%;
  height: 4px;
  background: rgba(255, 255, 255, 0.15);
  border: none;
}
.gplayer-skin.v-simple.gplayer-fullscreen .gplayer-control-bar .gplayer-slider {
  width: 99%;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider .gplayer-load-progress,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider .gplayer-play-progress,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider .gplayer-seek-handle {
  position: absolute;
  display: block;
  left: 0;
  top: 0;
  margin: 0;
  padding: 0;
  height: 100%;
  width: 0;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider .gplayer-load-progress {
  height: 100%;
  background: rgba(255, 255, 255, 0.30);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider .gplayer-play-progress {
  height: 100%;
  background: rgba(255, 255, 255, 0.60);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-slider .gplayer-seek-handle {
  width: 4px;
  height: 100%;
  background: rgba(255, 255, 255, 1);
  border: none;
  -webkit-transition: all .25s ease;
  -moz-transition: all .25s ease;
  -o-transition: all .25s ease;
  transition: all .25s ease;
}
.gplayer-skin.v-simple:hover .gplayer-control-bar .gplayer-slider .gplayer-seek-handle {
  margin-top: -2px;
  width: 4px;
  height: 200%;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button {
  float: right;
  margin-right: 5px;
  height: 100%;
  width: 32px;
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button:before,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button:before {
  content: "";
  cursor: pointer;
  display: block;
  margin: 4px;
  height: 24px;
  width: 24px;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button .gplayer-control-content,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button .gplayer-control-content {
  position: absolute;
  display: block;
  left: -34px;
  bottom: 48px;
  margin: 0;
  padding: 0;
  width: 100px;
  background: rgba(34, 34, 34, 0.8);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button .gplayer-control-content,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button .gplayer-control-content {
  display: none;
  -webkit-transition: all .5s ease;
  -moz-transition: all .5s ease;
  -o-transition: all .5s ease;
  transition: all .5s ease;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button[aria-pressed="true"] .gplayer-control-content,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button[aria-pressed="true"] .gplayer-control-content {
  display: block;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button .gplayer-control-content .gplayer-menu .gplayer-menu-content,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button .gplayer-control-content .gplayer-menu .gplayer-menu-content {
  list-style: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-captions-button .gplayer-control-content .gplayer-menu .gplayer-menu-content > .gplayer-menu-item,
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-subtitles-button .gplayer-control-content .gplayer-menu .gplayer-menu-content > .gplayer-menu-item {
  cursor: pointer;
  margin: 4px 0;
  text-transform: capitalize;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-volume-control {
  float: right;
  margin-right: 10px;
  width: 50px;
  height: 14px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-volume-control .gplayer-volume-bar {
  margin-top: 9px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-volume-control .gplayer-volume-bar .gplayer-volume-level {
  height: 100%;
  background: rgba(255, 255, 255, 0.70);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-volume-control .gplayer-volume-bar .gplayer-volume-handle {
  position: absolute;
  display: block;
  left: 100%;
  top: 0;
  margin: 0;
  padding: 0;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-volume-control .gplayer-volume-bar .gplayer-volume-handle {
  width: 4px;
  height: 100%;
  background: rgba(255, 255, 255, 1);
  border: none;
  -webkit-transition: all .25s ease;
  -moz-transition: all .25s ease;
  -o-transition: all .25s ease;
  transition: all .25s ease;
}
.gplayer-skin.v-simple:hover .gplayer-control-bar .gplayer-volume-control .gplayer-volume-bar .gplayer-volume-handle {
  margin-top: -2px;
  width: 4px;
  height: 200%;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-mute-control {
  float: right;
  margin-right: 2px;
  height: 100%;
  width: 32px;
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-mute-control:before {
  content: "";
  cursor: pointer;
  display: block;
  margin: 4px;
  height: 24px;
  width: 24px;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-fullscreen-control {
  float: right;
  margin-right: 2px;
  height: 100%;
  width: 32px;
  border: none;
}
.gplayer-skin.v-simple.gplayer-controls-resize-enabled .gplayer-control-bar .gplayer-fullscreen-control {
  margin-left: 34px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-fullscreen-control:before {
  content: "";
  cursor: pointer;
  display: block;
  margin: 4px;
  height: 24px;
  width: 24px;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-loop-button {
  float: right;
  margin-right: 2px;
  height: 100%;
  width: 32px;
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-loop-button:before {
  content: "";
  cursor: pointer;
  display: block;
  margin: 4px;
  height: 24px;
  width: 24px;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-resize-button {
  float: right;
  margin-right: 2px;
  height: 100%;
  width: 32px;
  border: none;
}
.gplayer-skin.v-simple.gplayer-controls-resize-enabled .gplayer-control-bar .gplayer-resize-button {
  position: absolute;
  right: 0;
  margin-right: 34px;
}
.gplayer-skin.v-simple .gplayer-control-bar .gplayer-resize-button:before {
  content: "";
  cursor: pointer;
  display: block;
  margin: 4px;
  height: 24px;
  width: 24px;
  background: rgba(255, 255, 255, 1);
  border: none;
}
.gplayer-progress-tip {
  position: absolute;
  visibility: hidden;
  display: block;
  opacity: 0.75;
  padding: 5px;
  background: none;
  border: none;
  z-index: 5;
}
.gplayer-progress-tip-arrow {
  position: absolute;
  bottom: 0;
  left: 50%;
  margin-left: -4px;
  width: 9px;
  height: 5px;
  background: none;
}
.gplayer-progress-tip-arrow:before {
  content: '';
  position: absolute;
  margin-top: 0;
  margin-left: -2px;
  border-right: 5px solid transparent;
  border-left: 5px solid transparent;
  border-top: 5px solid rgba(34, 34, 34, 0.8);
}
.gplayer-progress-tip-inner {
  padding: 6px 10px 5px 10px;
  background: rgba(34, 34, 34, 0.8);
  border: none;
  border-radius: 2px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  color: #FFF;
  font: bold 12px/1.4em "Helvetica Neue", "HelveticaNeue", Helvetica, Arial, sans-serif;
  max-width: 200px;
  text-align: center;
}



.gplayer-skin.v-simple.audio {
  height: 82px;
}
.gplayer-skin.v-simple.audio.gplayer-paused .gplayer-poster {
  -webkit-filter: blur(0);
  -moz-filter: blur(0);
  -o-filter: blur(0);
  filter: blur(0);
}
.gplayer-skin.v-simple.audio .gplayer-poster,
.gplayer-skin.v-simple.audio.gplayer-paused:hover .gplayer-poster {
  -webkit-filter: blur(3px);
  -moz-filter: blur(3px);
  -o-filter: blur(3px);
  filter: blur(3px);
}
.gplayer-skin.v-simple.audio .gplayer-big-play-button {
  left: 20px;
  margin: -4px 0 0 0;
  height: 40px;
  width: 40px;
}
.gplayer-skin.v-simple.audio:not(.gplayer-has-started) .gplayer-big-play-button {
  opacity: 0.25;
}
.gplayer-skin.v-simple.audio .gplayer-control-bar {
  background: rgba(255, 255, 255, 0.25);
}
.gplayer-skin.v-simple.audio.gplayer-has-started.gplayer-user-active .gplayer-control-bar,
.gplayer-skin.v-simple.audio.gplayer-has-started:hover .gplayer-control-bar {
  opacity: 1;
  bottom: 0;
}
.gplayer-skin.v-simple.audio.gplayer-has-started .gplayer-control-bar {
  opacity: 1;
  bottom: 0;
}
.gplayer-skin.v-simple.audio .gplayer-control-bar .gplayer-progress-control {
  background: rgba(255, 255, 255, 0.25);
}
.gplayer-skin.v-simple.audio .gplayer-control-bar .gplayer-control > *,
.gplayer-skin.v-simple.audio .gplayer-control-bar .gplayer-time-divider > * {
  color: #FFF;
}
.gplayer-skin.v-simple.audio .gplayer-control-bar .gplayer-slider {
  background: rgba(255, 255, 255, 0.15);
}
.gplayer-skin.v-simple.audio .gplayer-control-bar .gplayer-slider .gplayer-load-progress {
  background: rgba(255, 255, 255, 0.30);
}
.gplayer-skin.v-simple.audio .gplayer-control-bar .gplayer-slider .gplayer-play-progress{
  background: rgba(255, 255, 255, 0.60);
}
.gplayer-skin.v-simple.audio .gplayer-information-bar {
  background: rgba(255, 255, 255, 0.25);
}
.gplayer-skin.v-simple.audio.gplayer-has-started.gplayer-user-inactive .gplayer-information-bar,
.gplayer-skin.v-simple.audio:not(.gplayer-has-started) .gplayer-information-bar {
  opacity: 1;
}
.gplayer-skin.v-simple.audio .gplayer-information-bar .gplayer-control-content > .gplayer-control-text-information > * {
  color: #FFF;
}