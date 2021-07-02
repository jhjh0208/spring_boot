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
		let header = document.getElementById('header');
		//이벤트를 연결합니다.
		header.onclick = function(){
			alert('클릭');
			//이벤트를 제거합니다.
			header.onclick=null;
		}
	}
</script>
<h1 id="header">Click</h1>
</body>
</html>