<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<div>
	<!-- head.jsp -->
	<s:if test="#ssession.adminInFo!= null">
           欢迎您<s:property value="#session.adminInFo.adminName" />
	</s:if>
	<s:else>
		<s:a href="login.jsp">注册</s:a>
		<s:a href="#">退出</s:a>

	</s:else>

</div>
</html>