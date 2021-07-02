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
<meta charset="EUC-KR">
<title>DOM ELEMENT ADD</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function(){
		//변수 선언 가능.
		let header = document.createElement("h1");//block - 자체 크기를 갖고 있다.
		let textNode = document.createTextNode("Hello DOM!!")
		//노드를 연결(React.js)
		//제공되는 노드
		//사용자 정의 노드 (DataSet 머지 할 수 있음: 라이프사이클- 인터셉트- 가상돔에 추가된 돔을 연결)
		header.appendChild(textNode);
		document.body.appendChild(header);
	}
</script>

</body>
</html>