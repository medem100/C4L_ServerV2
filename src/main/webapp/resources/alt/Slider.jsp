<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Slider - Vertical slider</title>

<!-- include the jQuery and jQuery UI scripts -->
<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>

<!-- plus a jQuery UI theme, here I use "flick" -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/flick/jquery-ui.css">


<link rel="stylesheet" type="text/css"
	href="resources/css/frameworkCss/slider.css">
<script type="text/javascript" src="resources/js/frameworkJS/slider.js"></script>
<!--  <link rel="stylesheet" type="text/css" href="resources/css/fader.css"> -->

<style type="text/css">
#vertical-slider {
	height: 150px;
	margin-left: 30px;
}

#alternating-slider .ui-slider-pip .ui-slider-line {
	height: 8px;
	top: -5px;
}

#alternating-slider .ui-slider-pip:nth-child(even) {
	top: -33px;
	height: 15px;
	transform: scale(0.8) translateY(3px);
	opacity: 0.8;
}

#alternating-slider .ui-slider-pip:nth-child(even) .ui-slider-line {
	top: 22px;
	height: 9px;
}

#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-1 .ui-slider-label,
	#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-2 .ui-slider-label,
	#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-3 .ui-slider-label,
	#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-4 .ui-slider-label
	{
	top: -3px;
}

#alternating-slider .ui-slider-pip-initial-1 .ui-slider-label {
	color: #E80949;
}

#alternating-slider .ui-slider-pip-initial-2 .ui-slider-label {
	color: #FF03CB;
}

#alternating-slider .ui-slider-pip-initial-3 .ui-slider-label {
	color: #C309E8;
}

#alternating-slider .ui-slider-pip-initial-4 .ui-slider-label {
	color: #920AFF;
}

#alternating-slider .ui-slider-pip-selected-1 .ui-slider-label,
	#alternating-slider .ui-slider-pip-selected-2 .ui-slider-label,
	#alternating-slider .ui-slider-pip-selected-3 .ui-slider-label,
	#alternating-slider .ui-slider-pip-selected-4 .ui-slider-label {
	color: white;
	width: 2.4em;
	padding: 4px 0;
	margin-left: -1.2em;
	border-radius: 2px;
}

#alternating-slider .ui-slider-pip-selected-1 .ui-slider-label {
	background-color: #E80949;
}

#alternating-slider .ui-slider-pip-selected-2 .ui-slider-label {
	background-color: #FF03CB;
}

#alternating-slider .ui-slider-pip-selected-3 .ui-slider-label {
	background-color: #C309E8;
}

#alternating-slider .ui-slider-pip-selected-4 .ui-slider-label {
	background-color: #920AFF;
}

#alternating-slider .ui-slider-tip {
	width: 34px;
	margin-left: -17px;
	top: -1px;
	background: #00c7d7;
	color: white;
	border: none;
	line-height: 27px;
	height: 25px;
}

#alternating-slider .ui-slider-tip:before, #alternating-slider .ui-slider-tip:after
	{
	display: none;
}

#alternating-slider .ui-slider-handle.ui-state-active .ui-slider-tip,
	#alternating-slider .ui-slider-handle.ui-state-focus .ui-slider-tip,
	#alternating-slider .ui-slider-handle.ui-state-hover .ui-slider-tip,
	#alternating-slider .ui-slider-handle:focus .ui-slider-tip,
	#alternating-slider .ui-slider-handle:hover .ui-slider-tip {
	top: -1px;
}

#alternating-slider .ui-slider-handle.ui-state-focus {
	z-index: 100;
}



#scale-slider.ui-slider {
  border-radius: 0px;
  background: #c7cdd5;
  border: none;
  height: 2px;
  margin: 1em 4em 4em; }
  
  #scale-slider.ui-slider .ui-slider-range {
    background: linear-gradient(to right, #434d5a 0%, #00c7d7 50%, #434d5a 100%)
    border: 1px solid rgba(67, 77, 90, 0.5);
    height: 4px;
    top: -1px;
    transition: all 0.2s ease-out; }
                    
#scale-slider .ui-slider-handle {
  border-radius: 2px;
  height: 20px;
  width: 12px;
  top: -26px;
  border: none; }
  
  #scale-slider .ui-slider-handle:nth-of-type(n+1) {
    transform: rotateZ(-10deg);
    margin-left: -9px; }
  
  #scale-slider .ui-slider-handle:nth-of-type(n+2) {
    transform: rotateZ(10deg);
    margin-left: -3px; }
  
  #scale-slider .ui-slider-handle:after {
    content: "";
    border: 6px solid transparent;
    width: 0;
    height: 0;
    position: absolute;
    bottom: -11px;
    border-top-color: #434d5a; }
  
  #scale-slider .ui-slider-handle.ui-slider-handle.ui-state-focus:after,
  #scale-slider .ui-slider-handle.ui-slider-handle.ui-state-hover:after,
  #scale-slider .ui-slider-handle.ui-slider-handle.ui-state-active:after {
    border-top-color: #00c7d7; }
                    
#scale-slider .ui-slider-pip {
  top: 2px; }
  
  #scale-slider .ui-slider-pip .ui-slider-label {
    display: none;
    background: rgba(67, 77, 90, 0);
    color: #434d5a;
    border-radius: 4px;
    padding: 0.3em 0;
    width: 2.4em;
    margin-left: -1.2em;
    transition: all 0.2s ease-out; }
  
  #scale-slider .ui-slider-pip .ui-slider-line {
    height: 4px; }
  
  #scale-slider .ui-slider-pip:nth-of-type(5n+3) .ui-slider-line {
    height: 8px; }
  
  #scale-slider .ui-slider-pip:nth-of-type(10n+3) .ui-slider-line {
    height: 12px; }
  
  #scale-slider .ui-slider-pip:nth-of-type(10n+3) .ui-slider-label {
    top: 16px;
    display: block; }
  
  #scale-slider .ui-slider-pip.ui-slider-pip-last .ui-slider-line {
    margin-left: -1px; }
  
  #scale-slider .ui-slider-pip.ui-slider-pip-selected .ui-slider-label, 
  #scale-slider .ui-slider-pip.ui-slider-pip-selected-first .ui-slider-label, 
  #scale-slider .ui-slider-pip.ui-slider-pip-selected-second .ui-slider-label {
    background: rgba(67, 77, 90, 0.7);
    color: #fffaf7; }



#flat-slider.ui-slider {
  background: #d5cebc;
  border: none;
  border-radius: 0; }
                    
  #flat-slider.ui-slider .ui-slider-handle {
    width: 20px;
    height: 20px;
    border-radius: 50% 50% 0;
    border-color: transparent;
    transition: border 0.4s ease; }
                    
    #flat-slider.ui-slider .ui-slider-handle.ui-state-hover, 
    #flat-slider.ui-slider .ui-slider-handle.ui-state-focus, 
    #flat-slider.ui-slider .ui-slider-handle.ui-state-active {
      border-color: #172f38; }
                    
  #flat-slider.ui-slider .ui-slider-pip .ui-slider-line {
    background: #d5cebc;
    transition: all 0.4s ease; }
                    
  #flat-slider.ui-slider.ui-slider-horizontal {
    height: 6px; }
                    
    #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-handle {
      -webkit-transform: rotateZ(45deg);
              transform: rotateZ(45deg);
      top: -25px;
      margin-left: -10px; }
                    
    #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip {
      top: 10px; }
                    
      #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip .ui-slider-line {
        width: 2px;
        height: 10px;
        margin-left: -1px; }
                    
      #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line {
        height: 20px; }
                    
      #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
        height: 12px; }
                    
  #flat-slider.ui-slider.ui-slider-vertical {
    width: 6px;
    height: 125px;
    display: inline-block;
    margin: 0 15%; }
                    
    #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle {
      -webkit-transform: rotateZ(-45deg);
              transform: rotateZ(-45deg);
      left: -25px;
      margin-bottom: -10px; }
                    
    #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip {
      left: 10px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip .ui-slider-line {
        height: 2px;
        width: 10px;
        margin-top: -1px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line {
        width: 20px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
        width: 12px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle .ui-slider-tip,
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle[class*=ui-state-] .ui-slider-tip {
        visibility: visible;
        opacity: 1;
        border: none;
        background: transparent;
        left: 50%;
        width: 30px;
        margin-left: -15px;
        text-align: center;
        color: white;
        font-weight: normal;
        top: 10px;
        -webkit-transform: rotateZ(45deg);
                transform: rotateZ(45deg); }
                    
        #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle .ui-slider-tip:before,
        #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle[class*=ui-state-] .ui-slider-tip:before {
          display: none; }
                    
#flat-slider .ui-slider-handle,
#flat-slider .ui-slider-range,
#flat-slider .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #25daa5; }
                    
                    
#flat-slider-vertical-1 .ui-slider-handle,
#flat-slider-vertical-1 .ui-slider-range,
#flat-slider-vertical-1 .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider-vertical-1 .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #f27793; }
                    
                    
#flat-slider-vertical-2 .ui-slider-handle,
#flat-slider-vertical-2 .ui-slider-range,
#flat-slider-vertical-2 .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider-vertical-2 .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #bd77f2; }
                    
                    
#flat-slider-vertical-3 .ui-slider-handle,
#flat-slider-vertical-3 .ui-slider-range,
#flat-slider-vertical-3 .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider-vertical-3 .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #67c3ec; }


@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,600);
[id*=flat-slider].ui-slider, [id*=flat-slider].ui-slider .ui-slider-pip .ui-slider-line {
  background: #7e8c9f;
}
[id*=flat-slider].ui-slider .ui-slider-handle .ui-slider-tip:after {
  border-left-color: #434d5a;
}
[id*=flat-slider].ui-slider .ui-slider-handle.ui-state-hover, [id*=flat-slider].ui-slider .ui-slider-handle.ui-state-focus, [id*=flat-slider].ui-slider .ui-slider-handle.ui-state-active {
  border-color: white;
}
body {
  background: #434d5a;
  font-family: "Roboto";
}
h1 {
  color: #7e8c9f;
  padding: 0;
  margin: 0;
  user-select: none;
  cursor: default;
}
p {
  color: #c7cdd5;
  text-align: center;
  margin: 0.5em 1em;
  font-weight: 300;
  font-size: 1.3em;
}
p:nth-of-type(1) {
  margin-top: 3em;
}
p:last-child {
  font-weight: 100;
  font-size: 1em;
}
p:last-child a {
  font-weight: 300;
}
.stuff {
  padding: 50px 50px 50px;
  max-width: 900px;
  margin: auto;
}










</style>

<script>
	$(function() {
		$("#flat-slider-vertical-1").slider({
			max : 25,
			min : 0,
			range : "min",
			value : 20,
			orientation : "vertical"
		}).slider("pips", {
			first : "pip",
			last : "pip"
		}).slider("float");

		$(".slider").slider({
			min : 0,
			max : 20,
			orientation : "vertical"
		}).slider("pips", {
			rest : "label",
			step : "5"
		});
		
		
		$("#flat-slider")
	    .slider({
	        max: 50,
	        min: 0,
	        range: true,
	        values: [15, 35]
	    })
	    .slider("pips", {
	        first: "pip",
	        last: "pip"
	    });

		$("#alternating-slider").slider({
			max : 1000,
			values : [ 0, 300, 700, 1000 ]
		}).slider("pips", {
			step : 25,
			rest : "label",
			labels : {
				first : "Min",
				last : "Max"
			}
		}).slider("float");
		
		
		$("#scale-slider")
	    .slider({
	        max: 50,
	        min: -50,
	        values: [-20, 20],
	        range: true
	    })
	    .slider("pips", {
	        rest: "label"
	    });

	});
</script>
</head>
<body>

<div id="scale-slider"></div>

	<div class="slider"></div>

	<div id="alternating-slider"></div>

	<div class="vertical">

		<div id="flat-slider-vertical-1"></div>
		<div id="flat-slider-vertical-2"></div>
		<div id="flat-slider-vertical-3"></div>

	</div>

<div id="flat-slider"></div>

</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Slider - Vertical slider</title>

<!-- include the jQuery and jQuery UI scripts -->
<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>

<!-- plus a jQuery UI theme, here I use "flick" -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.4/themes/flick/jquery-ui.css">


<link rel="stylesheet" type="text/css"
	href="resources/css/frameworkCss/slider.css">
<script type="text/javascript" src="resources/js/frameworkJS/slider.js"></script>
<!--  <link rel="stylesheet" type="text/css" href="resources/css/fader.css"> -->

<style type="text/css">
#vertical-slider {
	height: 150px;
	margin-left: 30px;
}

#alternating-slider .ui-slider-pip .ui-slider-line {
	height: 8px;
	top: -5px;
}

#alternating-slider .ui-slider-pip:nth-child(even) {
	top: -33px;
	height: 15px;
	transform: scale(0.8) translateY(3px);
	opacity: 0.8;
}

#alternating-slider .ui-slider-pip:nth-child(even) .ui-slider-line {
	top: 22px;
	height: 9px;
}

#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-1 .ui-slider-label,
	#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-2 .ui-slider-label,
	#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-3 .ui-slider-label,
	#alternating-slider .ui-slider-pip:nth-child(even).ui-slider-pip-selected-4 .ui-slider-label
	{
	top: -3px;
}

#alternating-slider .ui-slider-pip-initial-1 .ui-slider-label {
	color: #E80949;
}

#alternating-slider .ui-slider-pip-initial-2 .ui-slider-label {
	color: #FF03CB;
}

#alternating-slider .ui-slider-pip-initial-3 .ui-slider-label {
	color: #C309E8;
}

#alternating-slider .ui-slider-pip-initial-4 .ui-slider-label {
	color: #920AFF;
}

#alternating-slider .ui-slider-pip-selected-1 .ui-slider-label,
	#alternating-slider .ui-slider-pip-selected-2 .ui-slider-label,
	#alternating-slider .ui-slider-pip-selected-3 .ui-slider-label,
	#alternating-slider .ui-slider-pip-selected-4 .ui-slider-label {
	color: white;
	width: 2.4em;
	padding: 4px 0;
	margin-left: -1.2em;
	border-radius: 2px;
}

#alternating-slider .ui-slider-pip-selected-1 .ui-slider-label {
	background-color: #E80949;
}

#alternating-slider .ui-slider-pip-selected-2 .ui-slider-label {
	background-color: #FF03CB;
}

#alternating-slider .ui-slider-pip-selected-3 .ui-slider-label {
	background-color: #C309E8;
}

#alternating-slider .ui-slider-pip-selected-4 .ui-slider-label {
	background-color: #920AFF;
}

#alternating-slider .ui-slider-tip {
	width: 34px;
	margin-left: -17px;
	top: -1px;
	background: #00c7d7;
	color: white;
	border: none;
	line-height: 27px;
	height: 25px;
}

#alternating-slider .ui-slider-tip:before, #alternating-slider .ui-slider-tip:after
	{
	display: none;
}

#alternating-slider .ui-slider-handle.ui-state-active .ui-slider-tip,
	#alternating-slider .ui-slider-handle.ui-state-focus .ui-slider-tip,
	#alternating-slider .ui-slider-handle.ui-state-hover .ui-slider-tip,
	#alternating-slider .ui-slider-handle:focus .ui-slider-tip,
	#alternating-slider .ui-slider-handle:hover .ui-slider-tip {
	top: -1px;
}

#alternating-slider .ui-slider-handle.ui-state-focus {
	z-index: 100;
}



#scale-slider.ui-slider {
  border-radius: 0px;
  background: #c7cdd5;
  border: none;
  height: 2px;
  margin: 1em 4em 4em; }
  
  #scale-slider.ui-slider .ui-slider-range {
    background: linear-gradient(to right, #434d5a 0%, #00c7d7 50%, #434d5a 100%)
    border: 1px solid rgba(67, 77, 90, 0.5);
    height: 4px;
    top: -1px;
    transition: all 0.2s ease-out; }
                    
#scale-slider .ui-slider-handle {
  border-radius: 2px;
  height: 20px;
  width: 12px;
  top: -26px;
  border: none; }
  
  #scale-slider .ui-slider-handle:nth-of-type(n+1) {
    transform: rotateZ(-10deg);
    margin-left: -9px; }
  
  #scale-slider .ui-slider-handle:nth-of-type(n+2) {
    transform: rotateZ(10deg);
    margin-left: -3px; }
  
  #scale-slider .ui-slider-handle:after {
    content: "";
    border: 6px solid transparent;
    width: 0;
    height: 0;
    position: absolute;
    bottom: -11px;
    border-top-color: #434d5a; }
  
  #scale-slider .ui-slider-handle.ui-slider-handle.ui-state-focus:after,
  #scale-slider .ui-slider-handle.ui-slider-handle.ui-state-hover:after,
  #scale-slider .ui-slider-handle.ui-slider-handle.ui-state-active:after {
    border-top-color: #00c7d7; }
                    
#scale-slider .ui-slider-pip {
  top: 2px; }
  
  #scale-slider .ui-slider-pip .ui-slider-label {
    display: none;
    background: rgba(67, 77, 90, 0);
    color: #434d5a;
    border-radius: 4px;
    padding: 0.3em 0;
    width: 2.4em;
    margin-left: -1.2em;
    transition: all 0.2s ease-out; }
  
  #scale-slider .ui-slider-pip .ui-slider-line {
    height: 4px; }
  
  #scale-slider .ui-slider-pip:nth-of-type(5n+3) .ui-slider-line {
    height: 8px; }
  
  #scale-slider .ui-slider-pip:nth-of-type(10n+3) .ui-slider-line {
    height: 12px; }
  
  #scale-slider .ui-slider-pip:nth-of-type(10n+3) .ui-slider-label {
    top: 16px;
    display: block; }
  
  #scale-slider .ui-slider-pip.ui-slider-pip-last .ui-slider-line {
    margin-left: -1px; }
  
  #scale-slider .ui-slider-pip.ui-slider-pip-selected .ui-slider-label, 
  #scale-slider .ui-slider-pip.ui-slider-pip-selected-first .ui-slider-label, 
  #scale-slider .ui-slider-pip.ui-slider-pip-selected-second .ui-slider-label {
    background: rgba(67, 77, 90, 0.7);
    color: #fffaf7; }



#flat-slider.ui-slider {
  background: #d5cebc;
  border: none;
  border-radius: 0; }
                    
  #flat-slider.ui-slider .ui-slider-handle {
    width: 20px;
    height: 20px;
    border-radius: 50% 50% 0;
    border-color: transparent;
    transition: border 0.4s ease; }
                    
    #flat-slider.ui-slider .ui-slider-handle.ui-state-hover, 
    #flat-slider.ui-slider .ui-slider-handle.ui-state-focus, 
    #flat-slider.ui-slider .ui-slider-handle.ui-state-active {
      border-color: #172f38; }
                    
  #flat-slider.ui-slider .ui-slider-pip .ui-slider-line {
    background: #d5cebc;
    transition: all 0.4s ease; }
                    
  #flat-slider.ui-slider.ui-slider-horizontal {
    height: 6px; }
                    
    #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-handle {
      -webkit-transform: rotateZ(45deg);
              transform: rotateZ(45deg);
      top: -25px;
      margin-left: -10px; }
                    
    #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip {
      top: 10px; }
                    
      #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip .ui-slider-line {
        width: 2px;
        height: 10px;
        margin-left: -1px; }
                    
      #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line {
        height: 20px; }
                    
      #flat-slider.ui-slider.ui-slider-horizontal .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
        height: 12px; }
                    
  #flat-slider.ui-slider.ui-slider-vertical {
    width: 6px;
    height: 125px;
    display: inline-block;
    margin: 0 15%; }
                    
    #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle {
      -webkit-transform: rotateZ(-45deg);
              transform: rotateZ(-45deg);
      left: -25px;
      margin-bottom: -10px; }
                    
    #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip {
      left: 10px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip .ui-slider-line {
        height: 2px;
        width: 10px;
        margin-top: -1px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line {
        width: 20px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
        width: 12px; }
                    
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle .ui-slider-tip,
      #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle[class*=ui-state-] .ui-slider-tip {
        visibility: visible;
        opacity: 1;
        border: none;
        background: transparent;
        left: 50%;
        width: 30px;
        margin-left: -15px;
        text-align: center;
        color: white;
        font-weight: normal;
        top: 10px;
        -webkit-transform: rotateZ(45deg);
                transform: rotateZ(45deg); }
                    
        #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle .ui-slider-tip:before,
        #flat-slider.ui-slider.ui-slider-vertical .ui-slider-handle[class*=ui-state-] .ui-slider-tip:before {
          display: none; }
                    
#flat-slider .ui-slider-handle,
#flat-slider .ui-slider-range,
#flat-slider .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #25daa5; }
                    
                    
#flat-slider-vertical-1 .ui-slider-handle,
#flat-slider-vertical-1 .ui-slider-range,
#flat-slider-vertical-1 .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider-vertical-1 .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #f27793; }
                    
                    
#flat-slider-vertical-2 .ui-slider-handle,
#flat-slider-vertical-2 .ui-slider-range,
#flat-slider-vertical-2 .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider-vertical-2 .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #bd77f2; }
                    
                    
#flat-slider-vertical-3 .ui-slider-handle,
#flat-slider-vertical-3 .ui-slider-range,
#flat-slider-vertical-3 .ui-slider-pip[class*=ui-slider-pip-selected] .ui-slider-line,
#flat-slider-vertical-3 .ui-slider-pip.ui-slider-pip-inrange .ui-slider-line {
  background-color: #67c3ec; }


@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,600);
[id*=flat-slider].ui-slider, [id*=flat-slider].ui-slider .ui-slider-pip .ui-slider-line {
  background: #7e8c9f;
}
[id*=flat-slider].ui-slider .ui-slider-handle .ui-slider-tip:after {
  border-left-color: #434d5a;
}
[id*=flat-slider].ui-slider .ui-slider-handle.ui-state-hover, [id*=flat-slider].ui-slider .ui-slider-handle.ui-state-focus, [id*=flat-slider].ui-slider .ui-slider-handle.ui-state-active {
  border-color: white;
}
body {
  background: #434d5a;
  font-family: "Roboto";
}
h1 {
  color: #7e8c9f;
  padding: 0;
  margin: 0;
  user-select: none;
  cursor: default;
}
p {
  color: #c7cdd5;
  text-align: center;
  margin: 0.5em 1em;
  font-weight: 300;
  font-size: 1.3em;
}
p:nth-of-type(1) {
  margin-top: 3em;
}
p:last-child {
  font-weight: 100;
  font-size: 1em;
}
p:last-child a {
  font-weight: 300;
}
.stuff {
  padding: 50px 50px 50px;
  max-width: 900px;
  margin: auto;
}










</style>

<script>
	$(function() {
		$("#flat-slider-vertical-1").slider({
			max : 25,
			min : 0,
			range : "min",
			value : 20,
			orientation : "vertical"
		}).slider("pips", {
			first : "pip",
			last : "pip"
		}).slider("float");

		$(".slider").slider({
			min : 0,
			max : 20,
			orientation : "vertical"
		}).slider("pips", {
			rest : "label",
			step : "5"
		});
		
		
		$("#flat-slider")
	    .slider({
	        max: 50,
	        min: 0,
	        range: true,
	        values: [15, 35]
	    })
	    .slider("pips", {
	        first: "pip",
	        last: "pip"
	    });

		$("#alternating-slider").slider({
			max : 1000,
			values : [ 0, 300, 700, 1000 ]
		}).slider("pips", {
			step : 25,
			rest : "label",
			labels : {
				first : "Min",
				last : "Max"
			}
		}).slider("float");
		
		
		$("#scale-slider")
	    .slider({
	        max: 50,
	        min: -50,
	        values: [-20, 20],
	        range: true
	    })
	    .slider("pips", {
	        rest: "label"
	    });

	});
</script>
</head>
<body>

<div id="scale-slider"></div>

	<div class="slider"></div>

	<div id="alternating-slider"></div>

	<div class="vertical">

		<div id="flat-slider-vertical-1"></div>
		<div id="flat-slider-vertical-2"></div>
		<div id="flat-slider-vertical-3"></div>

	</div>

<div id="flat-slider"></div>

</body>
>>>>>>> branch 'master' of https://github.com/medem100/C4L_ServerV2.git
</html>