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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">




<style>
/* Farbangaben und ähnliche rein optische Formatierungen weggelassen */
body {
	/*  font: 120% sans-serif; */
	display: grid;
	/* dreispaltige Darstellung */
	grid-template-areas: "nav header header  header"
		"nav effecte fader  devices" "nav scenen faderS  devices"
		"nav footer footer  footer";
	grid-template-columns: 5em 1fr 3fr 1fr;
}

fader {
	grid-area: fader;
	/**	margin-left: auto;
	margin-right: auto;
	width: 80%; **/
}

effecte {
	grid-area: effecte;
	margin: 5px;
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

nav {
	grid-area: nav;
}

footer {
	grid-area: footer;
}
/* zweispaltige Darstellung */
@media all and (max-width: 50em) {
	body {
		grid-template-areas: "nav header header" "nav fader fader"
			"nav faderS scenen" "nav effecte devices" "nav footer footer";
		grid-template-columns: 1fr 2fr 2fr;
	}
}
/* einspaltige Darstellung */
@media all and (max-width: 30em) {
	body {
		display: block;
	}
}

#appButton2 {
	margin: 10px 10px 10px 10px;
}

button.button3 {
	display: inline-block;
	padding: 0.3em 1.2em;
	margin: 0 0.3em 0.3em 0;
	border-radius: 2em;
	box-sizing: border-box;
	text-decoration: none;
	font-family: 'Roboto', sans-serif;
	font-weight: 300;
	color: #FFFFFF;
	background-color: #4eb5f1;
	text-align: center;
	transition: all 0.2s;
}

button.button3:hover {
	background-color: #4095c6;
}

@media all and (max-width:30em) {
	button.button3 {
		display: block;
		margin: 0.4em auto;
		 
	}
}

button.button4 {
	display: inline-block;
	padding: 0.3em 1.2em;
	margin: 0 0.3em 0.3em 0;
	border-radius: 2em;
	box-sizing: border-box;
	text-decoration: none;
	font-family: 'Roboto', sans-serif;
	font-weight: 300;
	color: #FFFFFF;
	background-color: #199c93;
	text-align: center;
	transition: all 0.2s;
}

button.button4:hover {
	background-color: #4095c6;
}

@media all and (max-width:30em) {
	button.button4 {
		display: block;
		margin: 0.4em auto;
		 
	}
}

/************************************************************/
/*context menu*/
* {
	box-sizing: border-box;
}

.modal-mask {
	position: fixed;
	z-index: 9998;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .5);
	transition: opacity .3s ease;
}

.modal-container {
	width: 300px;
	margin: 40px auto 0;
	padding: 20px 30px;
	background-color: #fff;
	border-radius: 2px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, .33);
	transition: all .3s ease;
	font-family: Helvetica, Arial, sans-serif;
}

.modal-header h3 {
	margin-top: 0;
	color: #42b983;
}

.modal-body {
	margin: 20px 0;
}

.text-right {
	text-align: right;
}

.form-label {
	display: block;
	margin-bottom: 1em;
}

.form-label>.form-control {
	margin-top: 0.5em;
}

.form-control {
	display: block;
	width: 100%;
	padding: 0.5em 1em;
	line-height: 1.5;
	border: 1px solid #ddd;
}

/*
 * The following styles are auto-applied to elements with
 * transition="modal" when their visibility is toggled
 * by Vue.js.
 *
 * You can easily play with the modal transition by editing
 * these styles.
 */
.modal-enter {
	opacity: 0;
}

.modal-leave-active {
	opacity: 0;
}

.modal-enter .modal-container, .modal-leave-active .modal-container {
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

.greenBtn {
	background-color: green
}

.blackBtn {
	background-color: black
}
</style>



<%@ include file="resources/html/header/menuHader.html"%>

</head>
<body>
	<!-- MAIN Context -->


	<header>
	<h1>Debug Page</h1>
	</header>

	<nav> <%@ include file="resources/html/menu.html"%>
	</nav>

	<!-- DMX Channel Fader -->
	<main role="main" class="container"> <fader>
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

	</fader> </main>

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
					<button class="button3">{{button.name}}</button>
				</div>
			</div>
		</div>
	</div>

	</effecte>


	<div id="selectdevices">
		<device-button v-for="device in devices" 
		v-bind:deviceid="device.id"
		v-bind:name="device.name"
		v-bind:select="device.active">
		</device-button>
	</div>
	</devices>

	<scenen> <!-- scene Buttons -->
	<div id="sceneButtons">
		<div class="table">
			<div v-on:click="click(button)" v-for="button in buttons">
				<div @contextmenu="handler($event,button)" class="button">
					<button class="button4">{{button.name}} ({{button.id}})</button>
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

	<div id="crateSceneButton">
		<div v-on:click="click(button)" v-for="button in buttons">
			<div class="button">
				<button>{{button.name}}</button>
			</div>
		</div>

	</div>
	<br>
	<br>
	<label for="scenenID">SCENEN ID:</label> <input id="sceneID">
	<br>
	<label for="scenenID">new name:</label> <input id="newSceneName">
	<br>
	<button id="renameScene">rename</button>
	</scenen>

	<config> </config>


	<footer> @Andre </footer>

	<!-- template for the modal component -->
	<script type="x/template" id="modal-template">
    <transition name="modal">
        <div class="modal-mask" v-show="show">
            <div class="modal-container">
                <div class="modal-header">
                    <h3>New Post</h3>
                </div>
                <div class="modal-body">
                    <label class="form-label">
                        Title
                        <input class="form-control">
                    </label>
                    <label class="form-label">
                        Body
                        <textarea rows="5" class="form-control"></textarea>
                    </label>
                </div>
                <div class="modal-footer text-right">
                    <button class="modal-default-button" @click="savePost()">
                        Save
                    </button>
                </div>
            </div>
        </div>
    </transition>
</script>


	<!-- app -->
	<div id="app3">
		<modal :show="showModal" @close="showModal = false"></modal>
		<button id="show-modal" @click="showModal = true">New Post</button>
	</div>




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

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>




	<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="resources/js/fader2.js"></script>
</body>
</html>