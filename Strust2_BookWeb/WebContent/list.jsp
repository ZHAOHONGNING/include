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
	<!--从map栈中获取request域然后获取booklist集合  -->
	<s:if test="#request.booklist== null">图书为空</s:if>
	<s:else>
		<table>
			<tr>
				<th>编号</th>
				<th>名称</th>
				<th>作者</th>
				<th>价格</th>
				<th>修改</th>
				<th>删除</th>
			</tr>
			<s:iterator value="#request.boollist">
			<tr>
				<td><s:property value ="id"/></td>
				<td><s:property value ="name"/></td>
				<td><s:property value ="author"/></td>
				<td><s:property value ="price"/></td>
				<td><a href = "${pageContext.request.contextPath }/update.action">修改</a></td>
				<td><a href = "${pageContext.request.contextPath }/remove.action">删除</a></td>
			</tr>
			</s:iterator>
		</table>
	</s:else>
	<a href = "${pageContext.request.contextPath }/add.jsp">添加</a>
	
</body>
</html>