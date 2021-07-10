<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
	let uriApi = http:book.interpark.com/api/
	$.ajax({
		type:"GET",
		url:urlApi,
		dataType:"json"
		success:function(result){
			let imsi = JSON.stringify(result);
			//let jsonDoc = JSON.parse(imsi);
			let jsonDoc = JSON.parse(imsi).item;			
			alert(jsonDoc);
			//console.log("result"+imsi);
			//$("#d_rusult").text(imsi);
			
		},
		error:function(xhrObject){
			$("#d_rusult").text(xhrObject.responseText);
		}
	})
</script>
<div id="d_result"></div>

</body>
</html>