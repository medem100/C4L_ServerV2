<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Debuge C4L</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<link rel="stylesheet" type="text/css" href="resources/css/fader2.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/masterStyle.css">

<script src="https://code.jquery.com/jquery-3.4.0.js"
	integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>

<%@ include file="resources/html/header/menuHader.html"%>

</head>
<body>
	<!-- MAIN Context -->
	<%@ include file="resources/html/menu.html"%>
	<div class="mainContent">
		<h1>Debug Page</h1>

		<!-- DMX Channel Fader -->
		<div id="app" class="content">
			<div class="table">
				<div v-on:input="changeFader(fader)" v-for="fader in channels"
					class="item backgroundWhite">
					<div class="fader">
						<input v-model="fader.lum" type="range" min="0" max="255"
							value="0" class="slider" id="myRange"> <label
							class="subtitleFader backgroundYellow">CH.
							{{fader.channel}} </label> <label
							class="subtitleFaderDevice backgroundYellow">
							{{fader.device}} </label> <label class="subtitleFaderValue">
							{{fader.lum}}</label>

					</div>
					<div class="muteButton backgroundBlack">
						<span class="">Mute</span> <label class="switch"> <input
							v-on:input="changeFader" type="checkbox" v-model="fader.mute">
							<span class="slider round"></span>
						</label>
					</div>
				</div>
			</div>
		</div>

		<!-- special fader / Speed and Size -->
		<div id="app2" class="content">
			<div class="table">
				<div v-on:input="changeFader(fader)"
					v-for="fader in specielchannels" class="item backgroundWhite">
					<div class="fader">
						<input v-model="fader.size" type="range" min="0" max="255"
							value="0" class="slider" id="myRange"> <label
							class="subtitleFader backgroundYellow">CH.
							{{fader.channel}} </label> <label
							class="subtitleFaderDevice backgroundYellow">
							{{fader.device}} </label> <label class="subtitleFaderValue">
							{{fader.size}}</label>

					</div>
					<div class="muteButton backgroundBlack">
						<span class="">Mute</span> <label class="switch"> <input
							v-on:input="changeFader" type="checkbox" v-model="fader.mute">
							<span class="slider round"></span>
						</label>
					</div>
				</div>
			</div>
		</div>

	

	<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="resources/js/fader2.js"></script>
</body>
</html>