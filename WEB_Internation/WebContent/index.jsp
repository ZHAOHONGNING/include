<%@page import="java.util.ResourceBundle"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
       <%
       //获取语言和国家的信息
       Locale loacale = Locale.getDefault();
       //加载对应的国际化资源文件
       
       
       
       %>
<h1>登陆	</h1>
<form action="" method="posr">
   用户名：<input type="text" name="name"><br>
   密码：<input type="password" name="password"><br>
      <input type="submit" value="提交">

</form>
</body>
</html>