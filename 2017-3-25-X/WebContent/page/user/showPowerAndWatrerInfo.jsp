<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Simpla Admin</title>
		
		<!--                       CSS                       -->
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/reset.css" type="text/css" media="screen" />
	
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/main.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/invalid.css" type="text/css" media="screen" />	
		

		
	<!--                       Javascripts                       -->
	  
		<!-- jQuery -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery-1.3.2.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/simpla.jquery.configuration.js"></script>
		
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/facebox.js"></script>
		
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery.wysiwyg.js"></script>
	
		<!--[if IE]><script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery.bgiframe.js"></script><![endif]-->
		
	</head>
  
	<body>
	
	<div id="body-wrapper">
	 
		
			<div id="main-content">
	
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header" >
					
					<h3>水电费信息列表</h3>
					<div style="text-align:right">
					</div>
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
						<div style="display:none" id="showerr" class="notification information png_bg">
							<div id="erreinfo">
								
							</div>
							</div>
					<div class="tab-content default-tab" id="tab1"> 
					<!-- This is the target div. id must match the href of this div's tab -->
						
						<table width="100%">
							
							<thead>
								<tr>
								   <th>序号</th>
								   <th>用户名</th>
								   <th>电话</th>
								    <th>添加时间</th>
								   <th>本月已用（吨）</th>
								   <th>应缴金额</th>
								     <th>单价</th>
								    <th>缴存状态</th>
								</tr>
								
							</thead>
						 
							
							<tbody>
							<tr>
								<td colspan="8" style=" text-align:center;">
								<h4><span>电费信息:</span></h4>
								</td>
								</tr>
							<% int i=1; %>
							<c:forEach items="${powerlist}" var="item" >

								<tr>
									
									<td><%=i++ %></td>
									<td>${item.user.username }</td>
									<td>${item.user.phone }</td>
									<td><fmt:formatDate value="${item.time }" pattern="yyyy-MM-dd " /> </td>
									<td>${item.count }</td>
									<td>${(item.count-item.beforecount)*item.price.powerprice }</td>
									<td>${item.price.powerprice }</td>
									<td> <c:if test="${item.status=='N' }">
										
										<span class="noactive" data-value="${item.id}" >
										<a href="#"   title="未缴存">未缴存</a>
										</span>
										</c:if>
										<c:if test="${item.status=='Y' }">
										已缴存
										</c:if>
									</td>
								</tr>
							
					 </c:forEach>
								<tr>
								<td colspan="8" style=" text-align:center;">
								<h4><span>水费信息:</span></h4>
								</td>
								</tr>
								
								<% int j=1; %>
							<c:forEach items="${waterlist}" var="item" >

								<tr>
									
									<td><%=j++ %></td>
									<td>${item.user.username }</td>
									<td>${item.user.phone }</td>
									<td><fmt:formatDate value="${item.time }" pattern="yyyy-MM-dd " /> </td>
									<td>${item.count }</td>
									<td>${(item.count-item.beforecount)*item.price.waterprice }</td>
									<td>${item.price.waterprice }</td>
									<td> <c:if test="${item.status=='N' }">
										
										<span class="noactive" data-value="${item.id}" >
										<a href="#"   title="未缴存">未缴存</a>
										</span>
										</c:if>
										<c:if test="${item.status=='Y' }">
										已缴存
										</c:if>
									</td>
								</tr>
							
					 </c:forEach>
							</tbody>
							
						</table>
						
					</div> <!-- End #tab1 -->
					
					
				</div> <!-- End .content-box-content -->
				<div class="pagestyle">
					
						 [<a href="<%=path %>/listUser.do?currentPage=${pager.currentPage}&pagerMethod=first">首页</a>]
						 [<a href="<%=path %>/listUser.do?currentPage=${pager.currentPage}&pagerMethod=previous">前一页</a>]
					共[ ${pager.currentPage}/<b>${pager.totalPages }</b>]页
						 [<a href="<%=path %>/listUser.do?currentPage=${pager.currentPage}&pagerMethod=next">下一页</a>]
						  [<a href="<%=path %>/listUser.do?currentPage=${pager.currentPage}&pagerMethod=last">末页</a>]
					</div>
					<div class="clear"></div>
			</div> <!-- End .content-box -->
			</div>
			
			<div class="clear"></div>

			<!-- End Notifications -->
			
		<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
					&#169; Copyright 湘南学院 2017 
				</small>
			</div>
		</div> <!-- End #main-content -->
		
</body>
 
<!-- Download From www.exet.tk-->
</html>
