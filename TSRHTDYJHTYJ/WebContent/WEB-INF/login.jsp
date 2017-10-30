<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%pageContext.setAttribute("path", request.getContextPath()); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<fmt:message key="welcome"></fmt:message>
<body>
<form action="">
 <fmt:message key="username"/>:<input type="text" name = username/><br>
<fmt:message key="password"/><input type="password" name = password/><br>
<input type="submit" value="<fmt:message key="submit"/>"/>
<a href="${path }/login?local=zh_CN" >中文</a>||<a href="${path }/login?local=en_US" >ENGLISH</a>
</form>
</body>
</html>