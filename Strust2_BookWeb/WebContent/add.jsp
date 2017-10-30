<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="save">
		<s:textfield name="bookname" label="书名"></s:textfield>
		<s:textfield name="author" label="作者"></s:textfield>
		<s:textfield name="price" label="价格"></s:textfield>
		<s:submit value="保存"></s:submit>
	</s:form>
</body>
</html>