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
<!--  
<link rel="stylesheet" type="text/css"
	href="resources/css/masterStyle.css">
-->
<script src="https://code.jquery.com/jquery-3.4.0.js"
	integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>



<style>
/* Farbangaben und ähnliche rein optische Formatierungen weggelassen */
body {
	/*  font: 120% sans-serif; */
	display: grid;
	/* dreispaltige Darstellung */
	grid-template-areas:
	 "nav header header header" 
	 "nav effecte fader devices"
	"nav scenen faderS devices" 
	"nav footer footer footer";
	grid-template-columns: 5em 1fr 4fr 1fr;
}

fader {
	grid-area: fader;
/**	margin-left: auto;
	margin-right: auto;
	width: 80%; **/
}

effecte {
	grid-area: effecte;
}

faderS {
	grid-area: faderS;
}

devices {
	grid-area: devices;
}

header {
	grid-area: header;
}

scenen {
	grid-area: scenen;
	
}

nav{
	grid-area: nav;
}



footer{
	grid-area: footer;

}
/* zweispaltige Darstellung */
@media all and (max-width: 50em) {
	body {
		grid-template-areas: 
		"nav header header" 
		"nav fader fader" 
		"nav faderS scenen"
		"nav effecte devices" 
		"nav footer footer";
		grid-template-columns: 1fr 2fr 2fr;
	}
}
/* einspaltige Darstellung */
@media all and (max-width: 30em) {
	body {
		display: block;
	}
}
</style>



<%@ include file="resources/html/header/menuHader.html"%>

</head>
<body>
	<!-- MAIN Context -->


	<header>
	<h1>Debug Page</h1>
	</header>
	
	<nav>
	<%@ include file="resources/html/menu.html"%>
	</nav>

	<!-- DMX Channel Fader -->
	<fader>
	<div id="app" class="content">
		<div class="table">
			<div v-on:input="changeFader(fader)" v-for="fader in channels"
				class="item backgroundWhite">
				<div class="fader">
					<input v-model="fader.lum" type="range" min="0" max="255" value="0"
						class="slider" id="myRange"> <label
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

	</fader>

	<faderS> <!-- special fader / Speed and Size -->
	<div id="app2" class="content">
		<div class="table">
			<div v-on:input="changeFader(fader)" v-for="fader in specielchannels"
				class="item backgroundWhite">
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
	</faderS>

	<effecte> <!-- Effect Buttons -->
	<div id="appButton">
		<div class="table">
			<div v-on:click="click(button)" v-for="button in buttons">
				<div class="button">
					<button>{{button.name}}</button>
				</div>
			</div>
		</div>
	</div>

	</effecte>


	<devices> <!-- Device Buttons TODO vevry Ugly -->
	<div id='example-3'>
		<input v-on:change="changeDevices(0)" type="checkbox" id="Device0"
			value="Device0" v-model="checkedNames"> <label for="Device0">Device0</label>
		<input v-on:change="changeDevices(1)" type="checkbox" id="Device1"
			value="Device1" v-model="checkedNames"> <label for="Device1">Device1</label>
		<input v-on:change="changeDevices(2)" type="checkbox" id="Device2"
			value="Device2" v-model="checkedNames"> <label for="Device2">Device2</label>
		<input v-on:change="changeDevices(3)" type="checkbox" id="Device3"
			value="Device3" v-model="checkedNames"> <label for="Device3">Device3</label>
		<input v-on:change="changeDevices(4)" type="checkbox" id="Device4"
			value="Device4" v-model="checkedNames"> <label for="Device4">Device4</label>
		<input v-on:change="changeDevices(5)" type="checkbox" id="Device5"
			value="Device5" v-model="checkedNames"> <label for="Device5">Device5</label>
		<input v-on:change="changeDevices(6)" type="checkbox" id="Device6"
			value="Device6" v-model="checkedNames"> <label for="Device6">Device6</label>
		<input v-on:change="changeDevices(7)" type="checkbox" id="Device7"
			value="Device7" v-model="checkedNames"> <label for="Device7">Device7</label>
		<input v-on:change="changeDevices(8)" type="checkbox" id="Device8"
			value="Device8" v-model="checkedNames"> <label for="Device8">Device8</label>

		<input v-on:change="changeDevices(9)" type="checkbox" id="Device9"
			value="Device9" v-model="checkedNames"> <label for="Device9">Device9</label>
		<input v-on:change="changeDevices(10)" type="checkbox" id="Device10"
			value="Device10" v-model="checkedNames"> <label
			for="Device10">Device10</label> <input
			v-on:change="changeDevices(11)" type="checkbox" id="Device11"
			value="Device11" v-model="checkedNames"> <label
			for="Device11">Device11</label> <input
			v-on:change="changeDevices(12)" type="checkbox" id="Device12"
			value="Device12" v-model="checkedNames"> <label
			for="Device12">Device12</label> <br> <span>Checked
			Devices: {{ checkedNames }}</span>
	</div>
	</devices>

	<scenen> <!-- scene Buttons -->
	<div id="sceneButtons">
		<div class="table">
			<div v-on:click="click(button)" v-for="button in buttons">
				<div class="button">
					<button>{{button.name}}</button>
				</div>
			</div>
		</div>
	</div>

	<!-- save button  -->
	<div id="saveButton">
		<div v-on:click="click(button)" v-for="button in buttons">
			<div class="button">
				<button>{{button.name}}</button>
			</div>
		</div>

	</div>
</scenen>
	
	
	<footer>
	@Andre @Timon
	</footer>




	<!-- 
	<template id="template-context-menu-item">
  <li class="context-menu-item">
    <slot></slot>
  </li>
</template>

<template id="template-context-menu">
  <ul id="context-menu">
    <context-menu-item @click="newRegister()">
      <img class="context-menu-icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA0NS40IDQ1LjQiPjxwYXRoIGZpbGw9IiNmOTY5MGUiIGQ9Ik00MS4zIDE4LjZIMjYuOFY0YzAtMi0xLjgtNC00LTQtMi40IDAtNC4yIDItNC4yIDR2MTQuNkg0Yy0yIDAtNCAxLjgtNCA0IDAgMS4yLjUgMi4zIDEuMiAzIC44LjggMS44IDEuMyAzIDEuM2gxNC40djE0LjNjMCAxIC40IDIgMS4yIDMgLjcuNiAxLjggMSAzIDEgMi4yIDAgNC0xLjcgNC00VjI3aDE0LjVjMi4zIDAgNC0yIDQtNC4zcy0xLjgtNC00LTR6Ii8+PC9zdmc+" width="12">
      New register
    </context-menu-item>
    <context-menu-item @click="remove()">
      <img class="context-menu-icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMzkuMiAzMzkuMiI+PHBhdGggZmlsbD0iI2Y5NjkwZSIgZD0iTTI0Ny4yIDE2OS42bDg0LTg0YzUuMy01LjMgOC0xMS43IDgtMTkuNCAwLTcuNi0yLjctMTQtOC0xOS40TDI5Mi40IDhDMjg3IDIuNyAyODAuNiAwIDI3MyAwYy03LjcgMC0xNCAyLjctMTkuNSA4bC04NCA4NEw4NS44IDhDODAuMyAyLjcgNzQgMCA2Ni4yIDBjLTcuNiAwLTE0IDIuNy0xOS40IDhMOCA0Ni44Yy01LjMgNS40LTggMTEuOC04IDE5LjQgMCA3LjcgMi43IDE0IDggMTkuNWw4NCA4NC04NCA4My44QzIuNyAyNTkgMCAyNjUuMyAwIDI3M2MwIDcuNiAyLjcgMTQgOCAxOS40bDM4LjggMzguOGM1LjQgNS4zIDExLjggOCAxOS40IDggNy43IDAgMTQtMi43IDE5LjUtOGw4NC04NCA4My44IDg0YzUuNCA1LjMgMTEuOCA4IDE5LjUgOCA3LjYgMCAxNC0yLjcgMTkuNC04bDM4LjgtMzguOGM1LjMtNS40IDgtMTEuOCA4LTE5LjUgMC03LjctMi43LTE0LTgtMTkuNWwtODQtODR6Ii8+PC9zdmc+" width="10">
      Remove
    </context-menu-item>
    <context-menu-item @click="edit()">
      <img class="context-menu-icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA1MjguOSA1MjguOSI+PHBhdGggZmlsbD0iI2Y5NjkwZSIgZD0iTTMyOSA4OWwxMDcuNSAxMDcuN0wxNjQgNDY5IDU2LjcgMzYxLjYgMzI5IDg5em0xODktMjUuOGwtNDgtNDhjLTE4LjQtMTguNS00OC41LTE4LjUtNjcgMGwtNDYgNDYgMTA3LjUgMTA3LjVMNTE4IDExNWMxNC41LTE0LjIgMTQuNS0zNy40IDAtNTEuOHpNLjQgNTEyLjdjLTIgOC44IDYgMTYuNyAxNC44IDE0LjZsMTIwLTI5TDI3LjUgMzkwLjUuMyA1MTIuNnoiLz48L3N2Zz4=" width="12">
      Edit
    </context-menu-item>
  </ul>
</template>

<div id="app" @click="hideContextMenu()" @contextmenu.prevent="showContextMenu()">
  <div>
    <img class="logo" src="https://vuejs.org/images/logo.png">
    <h1 class="instructions">Click with right-button on body</h1>
   </div>
   <context-menu></context-menu>
</div>
	
	
	
	 -->

























	<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="resources/js/fader2.js"></script>
</body>
</html>