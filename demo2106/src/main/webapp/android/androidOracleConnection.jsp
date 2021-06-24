<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//jsp라고 쓰고 html이라고 읽는다. View계층
//jsp에서 로직을 구현한다. - 야근...
//jspf라고 쓰고 json을 내보낸다. - 클라우드기반 서비스
//HashMapBinder hmb = new HashMapBinder(req);
//@RequestParam Map<String,Object>
	String user_id = request.getParameter("mem_id");
	String user_pw = request.getParameter("mem_pw");
	out.print(user_id+","+user_pw);
	out.print("<br>");
	out.print("success#이순신");
%>