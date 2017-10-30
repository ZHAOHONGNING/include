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
	<s:form action="/emp_save.action" method="post">
		<table>
			<tr>
				<td>员工姓名</td>
				<td><s:textfield name="eptName" id="eptName"></s:textfield></td>
			</tr>
			<tr>
				<td>员工部门</td>
			 <td><s:select  list="#request.listDept" 
							listValue="name" 
							listKey="id" 
							headerKey="-1"
						    headerValue="请选择"
						    name="deptId">
                            
					</s:select></td>
			</tr>
			<tr>
				<td>员工薪水</td>
				<td><s:textfield name="salary" id="salary"></s:textfield></td>
			</tr>
			<tr>
				<td><s:submit value="提交"></s:submit></td>

			</tr>
		</table>

	</s:form>

	</table>
</body>
</html>