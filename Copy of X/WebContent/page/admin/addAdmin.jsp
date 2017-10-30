<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Simpla Admin</title>
		
		<!--                       CSS                       -->
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="resources/css/main.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />	

		
	<!--                       Javascripts                       -->
	<script type="text/javascript" src="/page/js/calendar.js"></script>
	
	  
		<!-- jQuery -->
		<script type="text/javascript" src="admin/resources/scripts/jquery-1.3.2.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="admin/resources/scripts/simpla.jquery.configuration.js"></script>
		
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="admin/resources/scripts/facebox.js"></script>
		
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="admin/resources/scripts/jquery.wysiwyg.js"></script>
	
		
	</head>
<body>
<div id="body-wrapper">

			<div class="content-box">
			<!-- Start Content Box -->
				<div class="content-box-header">
					<h3>添加管理员信息</h3>
					<div class="clear"></div>
				</div>
				 <!-- End .content-box-header -->
				<div class="content-box-content">
					<div class="tab-content default-tab" align="center" id="tab1"> 
					<div style="display:none" id="showerr" class="notification information png_bg">
							<div id="erreinfo">
								<a href="/index.jsp"> 返回首页</a>
							</div>
						</div>
					<form action="#" method="post">
						<div id="inputjobfair">
								<p>
									<label>登陆名称:
										<input class="text-input medium-input" type="text" id="loginname" name="adminno" /> </label>
								</p>
								<p>
									<label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
										<input class="text-input medium-input" type="password" id="password"  /> </label>
								</p>
								<p>
									<label>用户名称:
										<input class="text-input medium-input"   type="text" id="comname"  /> </label>
								</p>
						
								<p style="text-align:center">
									<input type="submit" value="提交" id="submitid"/>
									<input type="reset" value="重置"/>
								</p>
						</div>
					</form>
					</div> 
				</div> 
				
			</div> <!-- End .content-box -->
			<div class="clear"></div>
			
			<!-- End Notifications -->
			
			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2012 Your Company | Powered by shirui
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
		 
				
		</script>
</body>
</html>