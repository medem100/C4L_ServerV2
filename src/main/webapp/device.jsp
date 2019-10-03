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

		
		<!-- Device Buttons TODO vevry Ugly -->
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

		

	<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="resources/js/fader2.js"></script>
</body>
</html>