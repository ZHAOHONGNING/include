<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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


<!--                       Javascripts                       -->
<script type="text/javascript" src="/page/js/calendar.js"></script>


<!-- jQuery -->
<script type="text/javascript"
	src="admin/resources/scripts/jquery-1.3.2.min.js"></script>

<!-- jQuery Configuration -->
<script type="text/javascript"
	src="admin/resources/scripts/simpla.jquery.configuration.js"></script>

<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="admin/resources/scripts/facebox.js"></script>

<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript"
	src="admin/resources/scripts/jquery.wysiwyg.js"></script>


</head>
<body>
	<div id="body-wrapper">

		<div class="content-box">
			<!-- Start Content Box -->
			<div class="content-box-header">
				<h3>失物招领</h3>
			</div>
		</div>
		<!--  自己插入表格-->
		<form action="../../index2.jsp">
			<p>
				<label>附上图片，并说明详细信息</label>
				<textarea class="text-input textarea wysiwyg" id="textarea"
					name="textfield" cols="79" rows="15"></textarea>
			</p>
			<input type="submit"  value="提交" onclick="alert('确认提交')";return true;/>
		</form>
		<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
					&#169; Copyright 湘南学院 2017 
				</small>
			</div>
	</div>
	</script>
</body>
</html>