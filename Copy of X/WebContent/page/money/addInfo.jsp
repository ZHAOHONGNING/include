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
		
		<title>Simpla Admin</title>
		
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
					
					<h3>添加水电费信息</h3>

					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab" align="center" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
					<form action="#" method="post">
						<div style="display:none" id="showerr" class="notification information png_bg">
							<div id="erreinfo">
								
							</div>
						</div>
						<div id="inputjobfair">
								<p>
									<label>水费价格(元/吨):
										<input class="text-input medium-input" type="text" id="waterpriceid" name="waterprice" /> </label>
								</p>
								<p>
									<label>电费价格(元/度):
										<input class="text-input medium-input"  type="text" id="powerpriceid" name="powerprice" /> </label>
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
				 var patrn=/^\d+(\.\d+)?$/; 
					
					$("#submitid").click(function(){
						
					if(!patrn.exec($("#waterpriceid").val())){
					
					
						$("#showerr").show();
						$("#erreinfo").html("水费价格必须是非负数字且不能为空！");
						$("#waterpriceid").focus();
						    return false;
					}else if(!patrn.exec($("#powerpriceid").val())){
						$("#showerr").show();
						$("#erreinfo").html("水费价格必须是非负数字且不能为空！");
						$("#powerpriceid").focus();
						    return false;
					} 
					
					$.post("<%=path %>/addPriceInfo.do",
					{
						waterprice:$("#waterpriceid").val(),
						powerprice:$("#powerpriceid").val()
						
					},function(data,textStatus){
					
					if(data=="true"){
							$("p").hide();
							$("#erreinfo").html("添加成功！<a href=<%=path %>/getAllMoneyInfo.do> 返回列表</a>");
							$("#showerr").show();
						}else if(data==1){
							$("#erreinfo").html("本月数据已存在！<a href=<%=path %>/getAllMoneyInfo.do> 返回列表</a>");
							$("#showerr").show();
						}
						else {
							$("#erreinfo").html("对不起 添加失败 ！<a href=<%=path %>/getAllMoneyInfo.do> 返回列表</a>");
							$("#showerr").show();
						}
						
					});
					return false;
				});
			});
				
		</script>
		
</body>
 
<!-- Download From www.exet.tk-->
</html>
