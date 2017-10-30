<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Simpla Admin</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css"
	media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/main.css" type="text/css"
	media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css"
	media="screen" />
<!-- Colour Schemes
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		<link rel="stylesheet" href="resources/css/blue.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="resources/css/red.css" type="text/css" media="screen" />  
		-->
<!-- Internet Explorer Fixes Stylesheet -->
<!--[if lte IE 7]>
			<link rel="stylesheet" href="resources/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
<body>
	<div id="body-wrapper">
		<div class="content-box">
			<!-- Start Content Box -->
			<div class="content-box-header">
				<h3>修改密码</h3>
				<div class="clear"></div>
			</div>
			<!-- End .content-box-header -->
			<div class="content-box-content">
				<div class="tab-content default-tab" align="center" id="tab1">
					<!-- This is the target div. id must match the href of this div's tab -->
					<form action="#" method="post">
						<div style="display: none" id="showerr"
							class="notification information png_bg">
							<div id="erreinfo"></div>
						</div>
						<p>
							<label>旧 密 码: <input class="text-input small-input"
								type="password" id="oldpw" name="oldpassword" />
							</label>
						</p>
						<p>
							<label>新 密 码: <input class="text-input small-input"
								type="password" id="newpwid" name="newpassword" />
							</label>
						</p>
						<p>
							<label>确认密码: <input class="text-input small-input"
								type="password" id="repwid" name="repassword" />
							</label>
						</p>
						<p>
							<input type="submit" value="提交" id="submitid" /><input
								type="reset" value="重置" />
						</p>
					</form>
				</div>
				<!-- End #tab1 -->
			</div>
			<!-- End .content-box-content -->
		</div>
		<!-- End .content-box -->
		<div class="clear"></div>
		<!-- End Notifications -->
		<div id="footer">
			<small> <!-- Remove this notice or replace it with whatever you want -->
				&#169; Copyright 2012 Your Company | Powered by shirui
			</small>
		</div>
		<!-- End #footer -->
	</div>
	<!-- End #main-content -->
</body>
</html>