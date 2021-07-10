<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
    자바스크립트의 이벤트 전달 순서는 이벤트 버블링 방식을 따른 
    자식 노드에서 부모 노드 순으로 이벤트를 실행하는 것을 말함.
    이벤트 캡쳐링은 부모 노드에서 자식 노드 순으로 실행되는 것을 말한다.
      -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 *{border: 3px solid black;}
 h1{border: 5px solid red;}
</style>
</head>
<body>
	<div onclick="alert('outter-div')">
		<div onclick="alert('inner-div')">
			<h1 onclick="alert('h1')">
			 <p onclick="alert('Contnets')">Contents</p>			
			</h1>
		</div>
	</div>
</body>
</html>