<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String subject = request.getParameter("subject");
if(subject==null) subject = "JAVA";   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 20; padding:0}
	body{
		font-family: 'times New Roman', derif;
		min-width:760px; //너비가 760이하로 못하게
	}
	li {list-style: none;}
	a{text-decoration: none;}
	#d_java{
	width: 100%;
	height: 700px;
	background: #F15F5F;
	}
	#d_react{
	width: 100%;
	height: 700px;
	background: #E5D85C;
	}
	#d_android{
	width: 100%;
	height: 700px;
	background: #86E57F;
	}
	#d_nodejs{
	width: 100%;
	height: 700px;
	background: #5CD1E5;
	}
	#d_spring{
	width: 100%;
	height: 700px;
	background: #A566FF;
	}
	#main_header{
		height: 60px;
		line-height: 60px;
		padding-left: 10px;
		border-bottom: 1px solid black;
		background: #1D4088;
		color: white;
	}
	
	#main_gnb {
		overflow: hidden;
		background: #008299;
		}
	#main_gnb > ul.left{
		overflow: hidden;
		float: left;
	}
	#main_gnb > ul.right{
		overflow: hidden;
		float: right;
	}
	#main_gnb >ul.left >li {width: 90px; float: left}
	#main_gnb >ul.right >li {width: 110px; float: right}
	
	#main_gnb a{
		display: block;
		padding: 10px 20px;
		
		border-left:1px solid block; 
		border-right:1px solid block;
		color: #454D66;
		font-weight: bold;
	
	}
</style>
</head>
<body>
	<header id="main_header">
		<h1>학사관리 시스템</h1>
	</header>
<div id="d_out"></div>
<nav id="main_gnb">
	<ul	class="left">
		<li><a href="domOut.jsp?subject=java">Java</a></li>
		<li><a href="domOut.jsp?subject=react">React</a></li>
		<li><a href="domOut.jsp?subject=android">Android</a></li>
		<li><a href="domOut.jsp?subject=nodejs">NodeJS</a></li>
		<li><a href="domOut.jsp?subject=spring">Spring</a></li>
	</ul>
	<ul class = "right">
		<li><a href="#">로그인</a></li>
		<li><a href="#">회원가입</a></li>
	</ul>
</nav>
<div id="d_content">
<%
	if("java".equals(subject)){
		
%>
	<%@ include file="java.jsp" %>
<%
	}
	else if("react".equals(subject)){
%>
	<%@ include file="react.jsp" %>
<%

	}
	else if("android".equals(subject)){
%>
	<%@ include file="android.jsp" %>
<%

	}
	else if("nodejs".equals(subject)){
%>
	<%@ include file="nodejs.jsp" %>
<%

	}
	else if("spring".equals(subject)){
%>
	<%@ include file="spring.jsp" %>
<%
	}
%>
</div>


<!-- <script type="text/javascript">
	window.onload = function(){
		//변수선언
		let output = '';
		output += '<ul>';
		output += '<ui>Node.js</li>';
		output += '<ui>React.js</li>';
		output += '<ui>Vue.js</li>';
		output += '</ul>';
		//document.body.textContent = output;
		document.getElementById("d_out").innerHTML = output;
	}
</script> -->
</body>
</html>