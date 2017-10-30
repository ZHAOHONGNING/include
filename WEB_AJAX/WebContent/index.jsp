<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="jquery/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function() {
		$("#button2").click(function() {
			var url = "${pageContext.request.contextPath}/AjaxServlet";
            //添加参数
            var param = {"name":"zhao"};
            var fun = function(data){
           $("#msg").text(data);
            }
			$.get(url,param,fun);
		});
	});
</script>
<body>
	<button id="button1">获取get请求</button>
	<br>
	<button id="button2">获取post请求</button>
	<span id="msg"></span>
	<br>
	<button id="button3">获取get请求</button>
	<br>
</body>
</html>