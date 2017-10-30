<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>
	<table>
		<tr>
			<th>序号</th>
			<th>员工编号</th>
			<th>员工姓名</th>
			<th>员工薪水</th>
			<th>操作</th>
		</tr>
		<s:if test="#request.list != null">
			<s:iterator var="emp" value="#request.list">
			<s:a href="emp_viewAdd">添加员工 </s:a>
				<tr>
					<td><s:property value="#emp.count" /></td>
					<td><s:property value="#emp.id" /></td>
					<td><s:property value="#emp.empName" /></td>
					<td><s:property value="#emp.salary" /></td>
					<td>
					<s:a href="emp_viewUpdate?id = %{#emp.id}">x修改</s:a>
					<s:a href="emp_Delete?id = %{#emp.id}">删除</s:a>
					
					</td>


				</tr>
			</s:iterator>
		</s:if>

	</table>
</body>
</html>