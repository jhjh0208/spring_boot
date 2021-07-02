<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
일단 허졉은 이거 3개 같은거라고 생각해라
Tag
Element
Node 
텍스트 노드는 태그이름은 없고 태그값은 있다.
NodeName은 널이고 NodeValue 있다.
window는 dom tree 갖음
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function(){
		//변수 선언
		let img = document.createElement("img");//block  <img src="spinning3.png">
		img.setAttribute("src","pic4.png");
		img.setAttribute("width",300);
		img.setAttribute("height",350);
		document.body.appendChild(img);
	}
</script>
</body>
</html>