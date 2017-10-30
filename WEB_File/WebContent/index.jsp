<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>想要问问你敢不敢像你说过的那样的爱我</h1>
 <form action="${pageContext.request.contextPath }/UpLoadServlet" method="post" enctype="m"><br>
    <input type="text" name="name"/><br>
    <input type="password" name="password"/><br>
    <input type="file" name="photo"   value="选择文件"/><br>
    <input type="submit"  value="提交"/>
 
 </form>
</body>
</html>