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
		
		<style type="text/css">
        .content{width:80%;margin:200px auto;}
                .hide_box{z-index:999;filter:alpha(opacity=50);background:#666;opacity: 0.5;-moz-opacity: 0.5;left:0;top:0;height:99%;width:100%;position:fixed;display:none;}
        .shang_box{width:540px;height:540px;padding:10px;background-color:#fff;border-radius:10px;position:fixed;z-index:1000;left:50%;top:50%;margin-left:-280px;margin-top:-280px;border:1px dotted #dedede;display:none;}
        .shang_box img{border:none;border-width:0;}
        .dashang{display:block;width:100px;margin:5px auto;height:25px;line-height:25px;padding:10px;background-color:#E74851;color:#fff;text-align:center;text-decoration:none;border-radius:10px;font-weight:bold;font-size:16px;transition: all 0.3s;}
        .dashang:hover{opacity:0.8;padding:15px;font-size:18px;}
        .shang_close{float:right;display:inline-block;}
                .shang_logo{display:block;text-align:center;margin:20px auto;}
        .shang_tit{width: 100%;height: 75px;text-align: center;line-height: 66px;color: #a3a3a3;font-size: 16px;background: url('img/cy-reward-title-bg.jpg');font-family: 'Microsoft YaHei';margin-top: 7px;margin-right:2px;}
        .shang_tit p{color:#a3a3a3;text-align:center;font-size:16px;}
        .shang_payimg{width:140px;padding:10px;border:6px solid #EA5F00;margin:0 auto;border-radius:3px;height:140px;}
        .shang_payimg img{display:block;text-align:center;width:140px;height:140px; }
        .pay_explain{text-align:center;margin:10px auto;font-size:12px;color:#545454;}
        .radiobox{width: 16px;height: 16px;background: url('img/radio2.jpg');display: block;float: left;margin-top: 5px;margin-right: 14px;}
        .checked .radiobox{background:url('img/radio1.jpg');}
        .shang_payselect{text-align:center;margin:0 auto;margin-top:40px;cursor:pointer;height:60px;width:280px;}
        .shang_payselect .pay_item{display:inline-block;margin-right:10px;float:left;}
        .shang_info{clear:both;}
		.shang_info p,.shang_info a{color:#C3C3C3;text-align:center;font-size:12px;text-decoration:none;line-height:2em;}

    </style>
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
		
		<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
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
	
	 <div class="content">
  <!--   <p><a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" title="打赏，支持一下">打赏</a></p> -->
    <div class="hide_box"></div>
    <div class="shang_box">
    	<a class="shang_close" href="javascript:void(0)" onClick="dashangToggle()" title="关闭"><img src="<%=path %>/img/close.jpg" alt="取消" /></a>
    	<div class="shang_tit">
    	</div>
    	<div class="shang_payimg">
    		<img src="<%=path %>/img/alipayimg.jpg" alt="扫码支持" title="扫一扫" />
    	</div>
    	<div class="shang_payselect">
    		<div class="pay_item checked" data-id="alipay">
	    		<span class="radiobox"></span>
	    		<span class="pay_logo"><img src="<%=path %>/img/alipay.jpg" alt="支付宝" /></span>
    		</div>
    		<div class="pay_item" data-id="weipay">
	    		<span class="radiobox"></span>
	    		<span class="pay_logo"><img src="<%=path %>/img/wechat.jpg" alt="微信" /></span>
    		</div>
    	</div>
    	<div class="shang_info">
    		<p>打开<span id="shang_pay_txt">支付宝</span>扫一扫，即可进行扫码支付哦</p>
    	</div>
    </div>
    </div>
		<script type="text/javascript">
    $(function(){
    	$(".pay_item").click(function(){
    		$(this).addClass('checked').siblings('.pay_item').removeClass('checked');
    		var dataid=$(this).attr('data-id');
    		$(".shang_payimg img").attr("src","<%=path%>/img/"+dataid+"img.jpg");
    		$("#shang_pay_txt").text(dataid=="alipay"?"支付宝":"微信");
    	});
    });
    function dashangToggle(){
    	$(".hide_box").fadeToggle();
    	$(".shang_box").fadeToggle();
    }
    </script>
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
						
						<!-- 这是我要绑定的那个
						 <input class = "click"type="submit" value="缴费"> -->
						<script>
							 $(function() {
								$(".click").click(function() {
							
								$(this).val("已缴费");
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
								    <th>缴存确认</th>
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
                              <td>
                               <input class = "click"type="submit" value="缴费" onClick="dashangToggle()">
                               </td>
								
							<tr>
								<td>2</td>
								<td>301</td>
								<td>孙明泽</td>
								<td>18275279406</td>
								<td>计算机1班</td>
								<td>94</td>
								<td>94</td>
								<td>1元/度</td>
                              <td> <input class = "click"type="submit" value="缴费" onClick="dashangToggle()"></td>
								
							<tr>
								<td>3</td>
								<td>225</td>
								<td>顾学忠</td>
								<td>14875315855</td>
								<td>土木2班</td>
								<td>87</td>
								<td>87</td>
								<td>1元/吨</td>
                              <td> <input class = "click"type="submit" value="缴费" onClick="dashangToggle()"></td>
								
							<tr>
								<td>4</td>
								<td>508</td>
								<td>周新</td>
								<td>14865184658</td>
								<td>通信3班</td>
								<td>24</td>
								<td>24</td>
								<td>1元/度</td>
                              <td> <input class = "click"type="submit" value="缴费" onClick="dashangToggle()"></td>
								
							<tr>
								<td>5</td>
								<td>105</td>
								<td>吴涛</td>
								<td>18378456789</td>
								<td>通信4班</td>
								<td>94</td>
								<td>94</td>
								<td>1元/度</td>
                              <td> <input class = "click"type="submit" value="缴费" onClick="dashangToggle()"></td>
								
							</tr>
								
							</thead>
						 
							
							
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
