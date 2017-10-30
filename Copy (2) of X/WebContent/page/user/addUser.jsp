<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<title>Simpla User</title>
		
		<!--                       CSS                       -->
	  
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/reset.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/main.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="<%=path %>/page/admin/resources/css/invalid.css" type="text/css" media="screen" />	

		
	<!--                       Javascripts                       -->
	<script type="text/javascript" src="<%=path %>/page/js/calendar.js"></script>
	
	  
		<!-- jQuery -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery-1.3.2.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/simpla.jquery.configuration.js"></script>
		
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/facebox.js"></script>
		
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="<%=path %>/page/admin/resources/scripts/jquery.wysiwyg.js"></script>
	
		
	</head>
  
	<body><div id="body-wrapper">
	
	
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>添加用户</h3>

					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab" align="center" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
					<div style="display:none" id="showerr" class="notification information png_bg">
							<div id="erreinfo">
								<a href="<%=path %>/index.jsp"> 返回首页</a>
							</div>
							
						</div>
					<form action="#" method="post">
						
						<div id="inputjobfair">
								<p>
									<label>登陆名称:
										<input class="text-input medium-input" value="" type="text" id="loginname" name="loginno" /> <span id="showloginInfo" style="color:red;"> </span></label>
									
								</p>
								<p>
									<label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
										<input class="text-input medium-input" value="" type="password" id="password"  /> <span id="showpasswordInfo" style="color:red;"> </span></label>
								</p>
								<p>
									<label>用户名称:
										<input class="text-input medium-input"   type="text" id="username"  /> </label>
								</p>
						
								<p>
									<label>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:
										<input class="text-input medium-input" type="text" id="address"   /> </label>
								</p>
						
								<p>
									<label>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:
										<input class="text-input medium-input" id="phone"  /> </label>
								</p>
						
								<p style="text-align:center">
									<input type="submit" value="提交" id="submitid"/>
									<input type="reset" value="重置"/>
								</p>
						</div>
					</form>
						
					</div> <!-- End #tab1 -->
					
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->
			
			
			<div class="clear"></div>
			
		
			
			<!-- End Notifications -->
			
			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2012 Your Company | Powered by shirui
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
		 <script type="text/javascript">
			$(document).ready(function(){
			var isExist=false;
			 			$("#loginname").val("");
						 $("#password").val("");
				 	var patrn=/^[0-9]{1,7}$/; 
					var regex=/^[0-9A-Za-z_]{6,15}$/;
					$("#loginname").blur(function(){
					if($("#loginname").val()=="")
						{
							$("#showloginInfo").html("用户名不能为空");
							$("#loginname").focus();
							return;
						}
						if(!regex.exec($("#loginname").val()))
						{
							$("#showloginInfo").html("格式不正确 由6-15字母或数字组成");
							$("#loginname").focus();
							return;
						}
					$.post("<%=path %>/getUserByLoginname.do",
					{
						loginname:$("#loginname").val()

					},function(data,textStatus){
					
					if(data=="true"){
						
							$("#showloginInfo").html("用户已存在！不可注册");
							isExist=true;
					
						}else{
							isExist=false;
							$("#showloginInfo").html("可以注册");
						}
						
					});
					
					});
					
					$("#password").blur(function(){
					if($("#password").val()=="")
						{
							$("#showpasswordInfo").html("密码不能为空");
							return false;
							}
							if(!regex.exec($("#password").val())){
							$("#showpasswordInfo").html("密码必须为6-15位的字母或数字组成！");
							return false;
					
							}});
					$("#submitid").click(function(){
						if(isExist)
						{
						$("#showerr").show();
							$("#erreinfo").html("对不起用户已经存在");
							return false;
						}
					if(!regex.exec($("#loginname").val())){
					
						$("#showerr").show();
						$("#erreinfo").html("登陆名称格式不正确 由6-15字母或数字组成！");
						$("#loginname").focus();
						    return false;
					}else if(!regex.exec($("#password").val())){
						$("#showerr").show();
						$("#erreinfo").html("密码必须为6-15位的字母或数字组成！");
						$("#password").focus();
						    return false;
					}
					
					
					$.post("<%=path %>/addUser.do",
					{
						loginname:$("#loginname").val(),
						password:$("#password").val(),
						name:$("#username").val(),
						address:$("#address").val(),
						phone:$("#phone").val()
					},function(data,textStatus){
					
					if(data=="true"){
							$("p").hide();
							$("#showerr").show();
							$("#erreinfo").html("添加成功！<a href='<%=path %>/page/user/addUser.jsp'> 返回继续</a>");
						}else{
							$("#showerr").show();
							$("#erreinfo").html("对不起用户已经存在");
						}
						
					});
					return false;
				});
			});
				
		</script>
		
</body>
 
<!-- Download From www.exet.tk-->
</html>
