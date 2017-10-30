<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	 session.removeAttribute("user");
	 session.invalidate(); 

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>水电缴费管理系统</title>
		
		<!--                       CSS                       -->
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/reset.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/style.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/invalid.css" type="text/css" media="screen" />	
		
		<!-- Colour Schemes
	  
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/blue.css" type="text/css" media="screen" />
		
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/red.css" type="text/css" media="screen" />  
	 
		-->
		
		<!-- Internet Explorer Fixes Stylesheet -->
		
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		
		<!--                       Javascripts                       -->
	  
		<!-- jQuery -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery-1.3.2.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/simpla.jquery.configuration.js"></script>
		
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/facebox.js"></script>
		
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery.wysiwyg.js"></script>
		
		<!-- Internet Explorer .png-fix -->
		
		<!--[if IE 6]>
			<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
		
	</head>
	 <c:if test="${message==0}">
		<script type="text/javascript">
			    $(document).ready(function(){
				$("#erreinfo").html("用户名不能为空！");
			});		
		</script>
	</c:if>
	 <c:if test="${message==1}">
		<script type="text/javascript">
			$(document).ready(function(){
				$("#erreinfo").html("用户名不存在！");
			});		
		</script>

	</c:if>
	 <c:if test="${message==2}">
		<script type="text/javascript">
			$(document).ready(function(){
				$("#erreinfo").html("密码不正确！");
			});
				
		</script>
	</c:if>
		
	<body id="login">
		
		<div id="login-wrapper" class="png_bg">
			<div id="login-top">
			
				<h1>Simpla Admin</h1>
				<!-- Logo (221px width) -->
				<a href="http://www.uimaker.com"><img id="logo" src="<%=path %>/page/admin/resources/images/logo.png" alt="Simpla Admin logo" /></a>
			</div> <!-- End #logn-top -->
			
			<div id="login-content">
				
				<form method="post" action="<%=path %>/login.do">
				
					<div class="notification information png_bg">
						<div id="erreinfo">
							请输入正确的用户名和密码！
						</div>
					</div>
					
					<p>
						<label>Username</label>
						<input class="text-input"   id="loginname" name="loginname" type="text" />
					</p>
					<div class="clear"></div>
					<p>
						<label>Password</label>
						<input class="text-input" id="password" name="password" type="password" />
					</p>

					<div class="clear"></div>
					<p>
						<input id="submitid" class="button" type="submit" value="Sign In" />
					</p>
					
				</form>
			</div> <!-- End #login-content -->
			
		</div> <!-- End #login-wrapper -->
			<script type="text/javascript">
			$(document).ready(function(){
			//$("#loginname").val("dfd");
		
				$("#submitid").click(function(){
						
					if($("#loginname").val()==""){
						$("#erreinfo").html("用户名不能为空！");
						//alert($("#loginname").val());
						    return false;;
					}else if($("#password").val()==""){
						$("#erreinfo").html("密码不能为空！");

						    return false;;
					}
				});
			});
				
		</script>
  </body>
  </html>
