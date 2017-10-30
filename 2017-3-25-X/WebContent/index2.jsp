<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--这是翻译中文的办法  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Simpla Admin</title> <!--                       CSS                       -->

	<link rel="stylesheet" href="page/admin/resources/css/reset.css"
		type="text/css" media="screen" />

	<link rel="stylesheet" href="page/admin/resources/css/style.css"
		type="text/css" media="screen" />

	<link rel="stylesheet" href="page/admin/resources/css/invalid.css"
		type="text/css" media="screen" />



	<link rel="stylesheet" href="page/admin/resources/css/ie.css"
		type="text/css" media="screen" />

	<!--  Javascripts 以后看看这里想加啥吧                      -->
</head>

<body>
	<div id="body-wrapper">

		<div id="sidebar">
			<div id="sidebar-wrapper">

				<h1 id="sidebar-title">
					<a href="#">Simpla Admin</a>
				</h1>

				<!-- 水电缴费系统的链接跳转 -->
				<a href="#"><img id="logo"
					src="page/admin/resources/images/logo.png" alt="Simpla Admin logo" /></a>

				<!-- Sidebar Profile links -->
				<div id="profile-links">
					<!-- 您好, <a href="#" title="Edit your profile">John Doe</a>, you have
					<a href="#messages" rel="modal" title="3 Messages">3 Messages</a><br />
					<br /> -->
					<a href="page/admin/login.html" title="View the Site">注册</a> | <a
						href="page/admin/login.html" title="Sign Out">注销</a>
				</div>

				<ul id="main-nav">
					<!-- 竖条的按键  -->

					<li><a href="http://www.xnu.edu.cn/"
						class="nav-top-item no-submenu"> 学校介绍 </a></li>

					<li><a href="#" class="nav-top-item current"> 登录界面 </a> <!-- <ul>
							<li><a href="page/admin/addAdmin.jsp">用户登陆</a></li>
							<li><a class="current" href="page/admin/addAdmin2.jsp">管理员登陆</a></li>
							<li><a href="#">游客登陆</a></li>
						</ul> --></li>

					<li><a href="#" class="nav-top-item"> 个人信息管理 </a>
						<ul>
							<li><a href="page/admin/changepw.jsp">修改密码</a></li>
						
						</ul></li>

					<li><a href="#" class="nav-top-item"> 水电费查询 </a>
						<ul>
							<li><a href="page/power/listPower1.jsp">电费查询</a></li>
							<li><a href="page/water/listWater1.jsp">水费查询</a></li>
						</ul></li>

					
					<li><a href="#" class="nav-top-item"> 关于 </a>
						<ul>
							<li><a href="page/admin/a1.jsp">所属单位</a></li>
							<li><a href="page/admin/a2.jsp">制作团队</a></li>
							<li><a href="page/admin/a3.jsp">发行版本</a></li>
						</ul></li>

				</ul>



			</div>
		</div>

		<div id="main-content">

			<noscript>
				<div class="notification error png_bg">
					<div>
						Javascript is disabled or is not supported by your browser. Please
						<a href="http://browsehappy.com/"
							title="Upgrade to a better browser">upgrade</a> your browser or <a
							href="http://www.google.com/support/bin/answer.py?answer=23852"
							title="Enable Javascript in your browser">enable</a> Javascript
						to navigate the interface properly. Download From <a
							href="http://www.exet.tk">exet.tk</a>
					</div>
				</div>
			</noscript>

			<!-- Page Head -->
			<h2>发布栏</h2>
			<p id="page-intro">你有什么想法或建议?</p>

			<ul class="shortcut-buttons-set">

				<li><a class="shortcut-button" href="page/admin/idea1.jsp">
						<span> <!--                 写意见的链接                                     -->
							<img src="page/admin/resources/images/icons/pencil_48.png"
							alt="icon" /><br /> 意见箱
					</span>
				</a></li>

				<li><a class="shortcut-button" href="page/admin/idea2.jsp"><span>
							<img src="page/admin/resources/images/icons/image_add_48.png"
							alt="icon" /><br /> 失物招领
					</span></a></li>

				<li><a class="shortcut-button" href="page/admin/idea3.jsp"><span>
							<img src="page/admin/resources/images/icons/clock_48.png"
							alt="icon" /><br /> 节约小常识
					</span></a></li>

				<li><a class="shortcut-button" href="page/admin/idea4.jsp"
					rel="modal"><span> <img
							src="page/admin/resources/images/icons/comment_48.png" alt="icon" /><br />
							寝室报修
					</span></a></li>

			</ul>

			<div class="clear"></div>

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>宿管动态</h3>

					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab">刷新</a></li>

						<!-- <li><a href="#tab2">上传</a></li> -->
					</ul>

					<div class="clear"></div>

				</div>


				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab1">

						<!-- <div class="notification attention png_bg">
							<a href="#" class="close"><img
								src="resources/images/icons/cross_grey_small.png"
								title="Close this notification" alt="close" />
								</a>
							    
						</div> -->

						<table>

							<thead>
								<tr>
									<th><input class="check-all" type="checkbox" /></th>
									<th>事件</th>
									<th>发布者</th>
									<th>时间</th>
								</tr>

							</thead>

							<tfoot>
								<tr>
									<td colspan="6">
										<div class="bulk-actions align-left">

											<!-- 取消下拉选矿 及搜索功能-->
											<!-- <select name="dropdown">
												<option value="option1">Choose an action...</option>
												<option value="option2">Edit</option>
												<option value="option3">Delete</option>
											<a class="button" href="#">Apply to selected</a>
											</select> -->

										</div>

										<div class="pagination">
											<a href="#" title="First Page">&laquo; First</a><a href="#"
												title="Previous Page">&laquo; Previous</a> <a href="#"
												class="number" title="1">1</a> <a href="#" class="number"
												title="2">2</a> <a href="#" class="number current" title="3">3</a>
											<a href="#" class="number" title="4">4</a> <a href="#"
												title="Next Page">Next &raquo;</a><a href="#"
												title="Last Page">Last &raquo;</a>
										</div> <!-- End .pagination -->
										<div class="clear"></div>
									</td>
								</tr>
							</tfoot>

							<tbody>
								<!-- 从下一行的<tr>开始是添加死数据的循环 -->
								<tr>
									<td><input type="checkbox" /></td>
									<td><a href="page/resourse/daxuehsneg.html">大学生自杀揭开校园网贷黑幕</a></td>
									<td>曹晓波</td>
									<td>2017-4-8</td>
									<!-- 这一部分是原来删除功能的实现 -->
									<!-- <td>
										 <a href="#" title="Edit"><img
											src="resources/images/icons/pencil.png" alt="Edit" /></a> <a
										href="#" title="Delete"><img
											src="resources/images/icons/cross.png" alt="Delete" /></a> <a
										href="#" title="Edit Meta"><img
											src="resources/images/icons/hammer_screwdriver.png"
											alt="Edit Meta" /></a>
									</td> -->
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td><a href="page/resourse/da.html">大学生宿舍文化主题班会主要内容</a></td>
									<td>孙泽明</td>
									<td>2017-5-20</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td><a href="page/resourse/guanyu.html">湘南学院优秀寝室表彰</a></td>
									<td>刘雪娇</td>
									<td>2017-3-8</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td><a href="page/resourse/ruantong.html">软通学院宿管会红牌寝室名单</a></td>
									<td>赵洪宁</td>
									<td>2017-2-22</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td><a href="/page/resourse/xuefeng.html">如何构建学风示范寝室</a></td>
									<td>林伟</td>
									<td>2016-12-24</td>
								</tr>
								<!--    ---------------------------------------------------------------------                                                                    -->

							</tbody>

						</table>

					</div>
					<!-- 结束 #tab1 -->

					<!-- <div class="tab-content" id="tab2">

						<form action="#" method="post">

							<fieldset>
								Set class to "column-left" or "column-right" on fieldsets to divide the form into columns

								<p>
									<label>Small form input</label> <input
										class="text-input small-input" type="text" id="small-input"
										name="small-input" /> <span
										class="input-notification success png_bg">Successful
										message</span>
									Classes for input-notification: success, error, information, attention
									<br /> <small>A small description of the field</small>
								</p>

								<p>
									<label>Medium form input</label> <input
										class="text-input medium-input datepicker" type="text"
										id="medium-input" name="medium-input" /> <span
										class="input-notification error png_bg">Error message</span>
								</p>

								<p>
									<label>Large form input</label> <input
										class="text-input large-input" type="text" id="large-input"
										name="large-input" />
								</p>

								<p>
									<label>Checkboxes</label> <input type="checkbox"
										name="checkbox1" /> This is a checkbox <input type="checkbox"
										name="checkbox2" /> And this is another checkbox
								</p>

								<p>
									<label>Radio buttons</label> <input type="radio" name="radio1" />
									This is a radio button<br /> <input type="radio" name="radio2" />
									This is another radio button
								</p>

								<p>
									<label>This is a drop down list</label> <select name="dropdown"
										class="small-input">
										<option value="option1">Option 1</option>
										<option value="option2">Option 2</option>
										<option value="option3">Option 3</option>
										<option value="option4">Option 4</option>
									</select>
								</p>

								
								<p>
									<input class="button" type="submit" value="Submit" />
								</p>

							</fieldset>

							<div class="clear"></div>
							End .clear

						</form>

					</div> -->
					<!-- End #tab2 -->

				</div>
				<!-- End .content-box-content -->

			</div>
			<!-- End .content-box -->




			<!-- End .content-box -->
			<div class="clear"></div>


			<!-- Start Notifications -->


			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
					&#169; Copyright 湘南学院 2017
				</small>
			</div>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>


<!-- Download From www.exet.tk-->
</html>