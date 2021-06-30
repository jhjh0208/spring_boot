<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업 창에 해당항목의 내용표시</title>
<link rel="stylesheet" type="text/css" href="pictureMain.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
   	let el;//이벤트가 발생한(td태그) 객체정보를 담기
   	
	function startMethod(td){//td - tag, element, node  ==> Object
    	//전역변수 el 초기화(td의 정보를 el갖게됨.)
    	el = td;
		let url="./pictureInfo.jsp?p_no="_td.id;
		let url2="./pictureInfo.jsp;
    	$.ajax({
    		type: get"GET",
    		url:url,
    		success:function(data){
    			alert("data: "+data);
    			let jsonDoc = JSON.parse(data);
    			alert("jsonDoc: "+jsonDoc+", "+jsonDoc.length);
    		},
    		error:function(e){ //여기서 e는 이벤트가 아니라 비동기 통신객체.
    			alert("에러: "+e.responseText);
    		}
    	});
		var url="./pictureInfo.jsp?p_no="+td.id;
		xhrObject.open("GET",url,true);
		//전송
		xhrObject.send(null);
	}
    //파라미터로 서버페이지에서 처리된 결과를 json포맷형으로 받아옴.
    function makeInfo(result){
    	//alert(result);
    	var jsonDoc = JSON.parse(result);//리턴타입이 배열로 변환
    	var picHTML = "";
    	if(jsonDoc.length>0){
    		for(var i=0;i<jsonDoc.length;i++){
    			//picHTML = jsonDoc[i].p_img+", "+jsonDoc[i].p_info;
    			picHTML += "<table>";
    			//자바스크립에서는 싱글,더블쿼테이션이 없으면 변수로 인지함.
    			picHTML += "<tr><td><img width='200' height='80' src='"+jsonDoc[i].p_img+"'/></td>"; /* 이미지 */
    			picHTML += "<td>"+jsonDoc[i].p_info+"</td></tr>"; /* 설명 */
    			picHTML += "</table>";
    		}
    	}else{
    		picHTML = "조회 결과가 없습니다.";
    	}	
    	return picHTML;
    }//////////////end of makeInfo
    function result_process(){
    //pictureInfo.jsp에서 출력된 결과를 담기	
    	//var temp = xhrObject.responseText;
   	//파라미터로 넘긴 json포맷에서 원하는 정보 가져오기
    	//var picHTML = makeInfo(temp);
   	//화면 처리전에 스타일 적용하기
   		document.getElementById("popupContent").style.border="1px dotted #b0e0e6";
   		document.getElementById("popupContent").style.backgroundcolor="#FDFCD3";
   		document.getElementById("popupContent").style.left=el.offsetWidth+135+"px";
   		document.getElementById("popupContent").style.top=el.offsetTop+10+"px";
   		
   		/*
   		innerHTML - html취급 - 화면처리
   		innerText - text취급 - 문자열
   		*/
    	document.getElementById("popupContent").innerHTML=picHTML;
    }
    function popup_process(){
    	alert("popup_process 호출 성공"+xhrObject.readyState); //0-1-2-3-4 <-상태값이 변함.
    	if(xhrObject.readyState==4){//상태값이 4일 때
    		if(xhrObject.status==200){//서버에서 응답온 값이 200 ok
    			result_process();
    		}
    		else if(xhrObject.status==204){//서버에서 응답온 값이 204 fail
    			
    		}
    	}
    }
	function clearMethod(){
		//document.getElementById("popupContent").innerHTML = "clearMethod";
		document.getElementById("popupContent").innerHTML="";
	}
</script>
</head>
<body>
<!-- colspan="2"는 옆셀과 병합하기임, 여기서는 두 칸이 병합됨 
     3이면 세칸이 4이면 네칸이 병합
     위 아래로 병합할 때는 rowspan="2" 위쪽과 아래 쪽 셀이 병합됨
-->
<table>
	<thead>
		<th colspan="2">그림 목록</th>
	</thead>
	<tbody>
		<tr>
			<td align="center"><img src="pic1.png" width="50" height="50"/></td>
			<td id="1" onmouseover="startMethod(this)" onmouseout="clearMethod()">추상화1</td>
		</tr>
		<tr>
			<td align="center"><img src="pic2.png" width="50" height="50"/></td>
			<td id="2" onmouseover="startMethod(this)" onmouseout="clearMethod()">추상화2</td>
		</tr>
		<tr>
			<td align="center"><img src="pic3.png" width="50" height="50"/></td>
			<td id="3" onmouseover="startMethod(this)" onmouseout="clearMethod()">추상화3</td>
		</tr>
		<tr>
			<td align="center"><img src="pic4.png" width="50" height="50"/></td>
			<td id="4" onmouseover="startMethod(this)" onmouseout="clearMethod()">추상화4</td>
		</tr>
	</tbody>
</table>
<div id="popupContent">여기</div>
</body>
</html>





