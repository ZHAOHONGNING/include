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
					
					<h3>电费管理</h3>
						<div style="float:left; margin:0 px; height:20px; padding:0 px" >
					<form method="post" action="#">
						<p>
							<label>寝室编号:
							<input name="uids" type=text id="userid" />
								<input type="submit" id="ack1"/>
							</label>
					</p>
				
					</form> 
					  	</div>
					<div style="text-align:right">
					<c:if test="${usertype==0 }">
					<a id="add" href="<%=path %>/page/power/addPower.jsp?moneyid=${money.id}">添加电费信息</a>
					</c:if>
					
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
						<script>
							$(function() {
								$(".click").click(function() {
									alert("缴费成功");
								});

							});
						</script>
						<table width="100%">
							
							<thead>
								<tr>
							
								   <th>序号</th>
								   <th>寝室号</th>
								    <th>寝室长</th>
								   <th>电话</th>
								    <th>班级</th>
								   <th>本月已用（度）</th>
								   <th>应缴金额</th>
								     <th>单价</th>
								   <c:if test="${usertype==0 }">
								   <th style="width:40px">操作</th>
								   </c:if>
								</tr>
								<tr>
								<td>1</td>
								<td>309</td>
								<td>赵洪宁</td>
								<td>18397856789</td>
								<td>康复2班</td>
								<td>74</td>
								<td>74</td>
								<td>1元/度</td>
								
							<tr>
								<td>2</td>
								<td>301</td>
								<td>孙明泽</td>
								<td>18275279406</td>
								<td>计算机1班</td>
								<td>94</td>
								<td>94</td>
								<td>1元/度</td>
								
							<tr>
								<td>3</td>
								<td>225</td>
								<td>顾学忠</td>
								<td>14875315855</td>
								<td>土木2班</td>
								<td>87</td>
								<td>87</td>
								<td>1元/吨</td>
								
							<tr>
								<td>4</td>
								<td>508</td>
								<td>周新</td>
								<td>14865184658</td>
								<td>通信3班</td>
								<td>24</td>
								<td>24</td>
								<td>1元/度</td>
								
							<tr>
								<td>5</td>
								<td>105</td>
								<td>吴涛</td>
								<td>18378456789</td>
								<td>通信4班</td>
								<td>94</td>
								<td>94</td>
								<td>1元/度</td>
								
							</tr>
								
							</thead>
						 
							
							<%-- <tbody>
							<% int i=1; %>
							<c:forEach items="${powerlist}" var="item" >

								<tr>
									
									<td><%=i++ %></td>
									<td>${item.user.username }</td>
									<td>${item.user.loginname }</td>
									<td>${item.user.phone }</td>
									<td><fmt:formatDate value="${item.time }" pattern="yyyy-MM-dd " /> </td>
									<td>${item.count-item.beforecount}</td>
								<td>${(item.count-item.beforecount)*item.price.waterprice }</td>
									<td>${item.price.waterprice}</td>
									<td> <c:if test="${item.status=='N' }">
										
										<span class="noactive" data-values="${item.id}" >
										<a href="#"   title="未缴存">未缴存</a>
										</span>
										</c:if>
										<c:if test="${item.status=='Y' }">
										已缴存
										</c:if>
									</td>
									<c:if test="${usertype==0 }">
									<td>
										<!-- Icons -->
										 <a href="<%=path %>/getPowerfoForedit.do?id=${item.id }" title="Edit"><img src="<%=path %>/page/admin/resources/images/icons/pencil.png" alt="Edit" /></a>
										<c:if test="${item.status=='N' }">
										 <a href="#" class="Deletea" data-value="${item.id}" >
										 	<img src="<%=path %>/page/admin/resources/images/icons/cross.png" alt="Delete" />
										 </a> 
										 </c:if>
									</td>
									</c:if>
								</tr>
							 <c:if test="${usertype==0 }" >
						<c:if test="${item.status=='N' }" >
							<tr>
								<td colspan="10">
								<div>
									应付款:<input class="payment" value="${(item.count-item.beforecount)*item.price.waterprice }" disabled="disabled" type="text" />
									实付款:<input class="acpayment" type="text" />
									应找零:<input class="repayment" disabled="disabled" type="text" />
									<span style="color:red;">  </span>
								</div>
								</td>
							</tr>
						</c:if>
						</c:if>
					 </c:forEach>
								
							</tbody>
							 --%>
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
		<%-- <script type="text/javascript">
			$(document).ready(function(){
			var trhide;
			 var patrn=/^\d+(\.\d+)?$/; 
			$(".acpayment").blur(function(){
				if(!patrn.exec($(this).val()))
				{
			 
				$(this).parent().children("span").html("对不起实付款不能为空！且必须为非负数");
					return false;
				}
				else if(eval($(this).val())<eval($(this).prev("input").val()))
				 {
					$(this).parent().children("span").html("对不起实付款不能小于应付款");
					return false;
				
				}
				else
				{
		 
				$(this).parent().children("span").html("");
					$(this).next("input").val(eval($(this).val())-eval($(this).prev("input").val()));
				}
			});
			
			$("#ack1").click(function(){
					if($("#userid").val()==""){
					$("#showerr").show();
					$("#erreinfo").html("查询条件不能为空！");
							$("#userid").focus();
							return false;
					}
					});
				//$("tbody>tr:even").addClass("alt-rows");
				$(".Deletea").click(function(){
					var tmpid=$(this).attr("data-value");
					$.post("<%=path %>/deletePower.do",
					{
						id:$(this).attr("data-value")
					},function(data,textStatus){
					if(data=="true"){
				
							$("#erreinfo").html("删除成功！");
							$("tr:has(a[data-value="+tmpid+"])").remove();
							
							$("#showerr").show();
							$("#showerr").slideUp(3000);
						}else{
							$("#erreinfo").html("删除失败！");
							$("#showerr").show();
						}
						
					});
				});
				
				
				$(".noactive").click(function(){
				var num1=$(this).parent().parent().next().children("td").children("div").children("input:eq(0)").val();
				var num2=$(this).parent().parent().next().children("td").children("div").children("input:eq(1)").val();
				trhide=$(this).parent().parent().next();
				//alert(num1+"=="+num2);
				if(!patrn.exec(num2))
				{
					alert("对不起实付款不能为空！且必须为非负数!");
					return false;
				}
				//alert(eval(num2)+eval(num1));
				if(eval(num2)<eval(num1))
				{
					alert("对不起实付款不能小于应付款");
					return false;
				}
				
					var tmp=$(this);
					var tmpid=$(this).attr("data-values");
						$.post("<%=path %>/reviewPowerInfo.do",
						{
							id:$(this).attr("data-values")
						},function(data,textStatus){
						if(data=="true"){
					
								$("#erreinfo").html("缴存成功！");
								tmp.html("已缴存");
								$("#showerr").show();
								$("#showerr").slideUp(3000);
								$("[data-value="+tmpid+"]").hide();
								trhide.hide();
							}else
							{
							$("#erreinfo").html("缴存失败！");
							$("#showerr").show();
							}
							
						});
			});
			});
	</script> --%>
		
</body>
 
<!-- Download From www.exet.tk-->
</html>
