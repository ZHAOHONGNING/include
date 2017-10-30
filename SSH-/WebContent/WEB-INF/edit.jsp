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
	<s:form action="emp_upDate.action" >
		<table>
           <tr>
           <td>员工姓名</td>
           <td>
           <s:textfield id="empName" name=" empName"></s:textfield>
           
           </td>
           </tr>
           <tr>
           <td>员工薪水</td>
           <td>
           <s:textfield id="empName" name=" empName"></s:textfield>
           
           </td>
           </tr>
           <tr>
  	 		<td>选择部门</td>
  	 		<td>
  	 			 <!-- 
  	 			 		value  默认选择的项的设置 
  	 			 			   即设置要显示的对象的主键
  	 			 			  (根元素取值)
  	 			  -->
  	 			  <s:select 
  	 			  	name="deptId" 
  	 			  	headerKey="-1"
  	 			  	headerValue="请选择"
  	 			  	list="#request.listDept"
  	 			  	listKey="id"
  	 			  	listValue="name"
  	 			  	value="dept.id"
  	 			  ></s:select>
  	 		</td>
  	 	</tr>
  	 	<tr>
  	 		<td colspan="2">
  	 			<s:submit value="修改员工"></s:submit>
  	 		</td>
  	 	</tr>

		</table>
	</s:form>
</body>
</html>