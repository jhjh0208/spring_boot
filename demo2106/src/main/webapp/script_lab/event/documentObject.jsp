<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button id="button-a">ButtonA</button>
	<button id="button-b">ButtonB</button>
	<h1>Button A - <span id="counter-a">0</span></h1>
	<h1>Button B - <span id="counter-b">0</span></h1>
	<script type="text/javascript">
	window.onload = function(){
		//문서객체를 가져온다.
		let buttonA = document.getElementById("button-a");
		let buttonB = document.getElementById("button-b");
		let counterA = document.getElementById("counter-a");
		let counterB = document.getElementById("counter-b");
		//이벤트를 연결합니다.
		buttonA.onclick = function(){
			counterA.innerHTML = Number(counterA.innerHTML) + 1;
		};
		buttonB.onclick = function(){
			counterB.innerHTML = Number(counterB.innerHTML) + 1;
		};
	};
	</script>
	
</body>
</html>