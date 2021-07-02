<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function(){
		let header = document.getElementById('header').onclick = function(e){
			let event = e | window.event;
			document.body.innerHTML = '';
			for(let key in event){
				document.body.innerHTML += '<p>' + key + ':' +event[key]+ '</p>';
				}
			};
	};
</script>
<h1 id="header">Click</h1>
</body>
</html>