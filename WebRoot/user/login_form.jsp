<%@page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登录 - 当当网</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />

		<link href="../css/login.css" rel="stylesheet" type="text/css">
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../Scripts/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="../Scripts/verify.js"></script>
		<script type="text/javascript" src="../Scripts/loginFormValidate.js"></script>
	<link type="text/css" rel="stylesheet" href="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/style.css"><script type="text/javascript" charset="utf-8" src="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/page_context.js"></script></head>
	
	<body screen_capture_injected="true">


		<%@include file="../common/head1.jsp"%>

		<div class="enter_part">

			<div class="introduce">
	<img src="/DangDang/images/d_introduce.gif">
	<ul>
		<li>
			更多选择
		</li>
		<li class="bj_none">
			60万种图书音像，共计百万种商品。
		</li>
		<li>
			更低价格
		</li>
		<li class="bj_none">
			电视购物的3-5折，传统书店的5-7折，其他网站的7-9折。
		</li>
		<li>
			更方便、更安全
		</li>
		<li class="bj_none">
			全国超过300个城市送货上门、货到付款。零风险购物，便捷到家。
		</li>
	</ul>
</div>

			<div class="enter_in">
				<div class="bj_top"></div>
				<div class="center">
					<div style="height: 30px; padding: 5px; color: red" id="divErrorMssage">
						<br>
						
					</div>
					<div class="main">
						<h3>
							登录当当网
						</h3>

						<form id="ctl00" name="ctl00" action="<s:url namespace='/user' action='user_login'/>" method="post">
						<input type="hidden" name="struts.token.name" value="struts.token">
<input type="hidden" name="struts.token" value="7BYSQK59FEWQUG2C7WD0C1ZR0SWNA1T1">
							<ul>
								<li>
									<span>请输入Email地址：</span>
									<input type="text" name="user.email" value="" id="txtUsername" class="textbox">
								</li>
								<li>
									<span class="blank">密码：</span>
									<input type="password" name="user.password" id="txtPassowrd" class="textbox">
								</li>
								<li>
									<input type="submit" id="btnSignCheck" value="登 录" class="button_enter">


								</li>
							</ul>
							<!-- 
							<input type="hidden" name="uri" value="" />
							 -->
						</form>




					</div>
					<div class="user_new">
						<p>
							您还不是当当网用户？
						</p>
						<p class="set_up">
							<a href="/clf_Dangdang/user/register_form.jsp">创建一个新用户&gt;&gt;</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		
<div>

		<%@include file="../common/foot1.jsp"%>

	</body>
	
