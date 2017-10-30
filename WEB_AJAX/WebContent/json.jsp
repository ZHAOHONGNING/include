<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
     var jason = {
    		 "name":"jack",
    		 "age":78,
    		 "son":["haha","qunima","hehe"]
     };
     alert(jason.son[1]);
     var jsonStringIfy = JSON.stringify(jason);
     alert(jsonStringIfy);
     //字符型转换为对象
     var jsonString = '{"name":"dualnate"}';
     var sjonObj = JSON.parse(jsonString
    		 );
</script>
<body>

</body>
</html>