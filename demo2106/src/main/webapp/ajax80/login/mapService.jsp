<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cs[] = request.getCookies();
	String c_name = null;
	for(int i=0;i<cs.length;i++){
		if("c_name".equals(cs[i].getName())){
			c_name = cs[i].getValue();
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/color.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-FKKja8sdfgMggjEvEa5agaP6D9wBd6s"></script>
<script type="text/javascript">
	let c_name="<%=c_name%>";
	function login(){//로그인 해봐요
		let u_id = $("#mem_id").val();
		let u_pw = $("#mem_pw").val();
		alert("u_pw"+u_pw);
		let param = "mem_id="+u_id+"&mem_pw="+u_pw;
		$.ajax({
			type:"post",
			data:param,
			url:"/login/cookieLogin",
			success:function(data){
				alert("data:"+data)
				c_name = data;
				$("#d_login").hide();
				$("#d_logout").show();
				$("#logok").text(c_name+"님...");
			},
			error:function(xhrObject){
				alert(xhrObject.responseText);
			}
		});
	}
	function logout(){//로그아웃
		$.ajax({
			type:"get",
			url:"./cookieDelete.jsp?cname=cname&timestamp="+new Date().getTime(),
			success:function(data){
				//alert("data:"+data)
				$("#d_login").hide();
				$("#d_logout").show();
				$("#logok").text(c_name+"님...");
			},
			error:function(xhrObject){
				alert(xhrObject.responseText);
			}
		});
	
		$("#d_login").show();
		$("#d_logout").hide();
	}
	function like(u_num){//좋아요
	
	}
	function hate(u_num){//싫어요
	
	}
</script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		if(c_name != null){
			$("#d_login").hide();
			$("#d_logout").show();
		}
		let map = new google.maps.Map(document.getElementById('d_map'),{
			zoom:14
			,center: new google.maps.LatLng(37, 126)
			,mapTypeId: google.maps.MapTypeId.ROADMAP
		})
		
	});
</script>
<table align="center" width="900px" height="600px" border="1">
	<tr>
		<td width="700px">
		<!-- 구글지도 서비지 시작 --> 
		<div id="d_map" style="width:695; height:595px"></div>
		<!-- 구글지도 서비지 끝 -->
		</td>
		<td width="200px" vlign="top">
<%
//쿠키가 널일 때
	if(c_name==null){
%>		
		
	<!-- ================[[로그인 화면 시작]]================ -->	
	<div id="d_login">
		<form id="f_login">
			<tr>
				<td>
				<input id="mem_id" name="mem_id" class="easyui-textbox" prompt="아이디" data-options="iconCls:'icon-man'" style="width:110px">
				</td>
				<td rowspan="2">
				<a id="btn_login" href="javascript:login()" class="easyui-linkbutton" style="height:60px">로그인</a>
				</td>
			</tr>
			<tr>
				<td>
				<input id="mem_pw" name="mem_pw" class="easyui-passwordbox" prompt="비밀번호" data-options="iconCls:'icon-lock'" style="width:110px">
				</td>
			</tr>
			
			
		</form>
	
	</div>
		</form>
	</div>
	<!-- ================[[로그인 화면 끝]]================ -->	
<%
	}
//쿠키가 있을 때
else{
%>	
	<!-- ================[[로그아웃 화면 시작]]================ -->	
	<div id="d_logout">
		<form id="f_logout">
		<table width="100%" border="0" borderColor="blue">
			<tr>
				<td style="width:110px">
					<span> </span>
				<input id="mem_id" name="mem_id" class="easyui-textbox" prompt="아이디" data-options="iconCls:'icon-man'" style="width:110px">
				</td>
				<td>
				<a id="btn_login" href="logout()" class="easyui-linkbutton" style="height:30px">로그아웃</a>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<!-- ================[[로그아웃 화면 끝]]================ -->
<%
}
%>
	</td>
	</tr>	
		
</table>

</body>
</html>