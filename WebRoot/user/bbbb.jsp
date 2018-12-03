<%@page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
		<title>用户注册 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css">
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../Scripts/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="../Scripts/verify.js"></script>
		<script type="text/javascript" src="../Scripts/registFormValidate.js"></script>
  <link type="text/css" rel="stylesheet" href="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/style.css"><script type="text/javascript" charset="utf-8" src="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/page_context.js"></script></head>
  
  <body screen_capture_injected="true">
       <%@include file="../common/head1.jsp"%>
		<div class="login_step">
			注册步骤:
			<span class="red_bold">1.填写信息</span> &gt; 2.验证邮箱 &gt; 3.注册成功
		</div>
		<div class="fill_message">
			<form id="f" name="ctl00" action="<s:url namespace='/user' action='user_register'/>" method="post">
			<input type="hidden" name="struts.token.name" value="struts.token">
<input type="hidden" name="struts.token" value="AIGNZDWOMKHXCXVWQU7E5M4Z0C2RUF3M">
				<h2>
					以下均为必填项
				</h2>
				<table class="tab_login">
					<tbody><tr>
						<td valign="top" class="w1">
							请填写您的Email地址：
						</td>
						<td>
							<input type="text" name="user.email" value="" id="email" class="text_input">
							<div class="text_left" id="emailValidMsg">
								<p>
									请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。
								</p>
									<span id="emailInfo" style="color:red">&nbsp;</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置您在当当网的昵称：
						</td>
						<td>
							<input name="user.nikename" type="text" id="txtNickName" class="text_input" />
							<div class="text_left" id="nickNameValidMsg">
								<p>
									您的昵称可以由小写英文字母、中文、数字组成，
								</p>
								<p>
									长度4－20个字符，一个汉字为两个字符。
								</p>
								<span id="nameInfo" style="color:red">
								&nbsp;
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置密码：
						</td>
						<td>
							<input type="password" name="user.password" id="txtPassword" class="text_input">
							<div class="text_left" id="passwordValidMsg">
								<p>
									您的密码可以由大小写英文字母、数字组成，长度6－20位。
								</p>
								<span id="passwordInfo" style="color:red">
								&nbsp;
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							再次输入您设置的密码：
						</td>
						<td>
							<input type="password" name="password1" id="txtRepeatPass" class="text_input">
							<div class="text_left" id="repeatPassValidMsg">
							<span id="password1Info" style="color:red">
							&nbsp;
							</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							验证码：
						</td>
						<td>
							<img class="yzm_img" align="middle" id="validateImage" src="clf_Dangdang/vaLIdationCodeAction.png.action" width="150" height="40" onclick="this.src='imageCode.action?time-'+(new Date()).getTime();">
							
							<input type="text" name="validateCode" value="" id="validateCode" class="yzm_input">
							<div class="text_left t1">
								<p class="t1">
									<span id="vcodeValidMsg">请输入图片中的四个字母。</span>
									<a href="javascript:" onclick="document.getElementById('validateImage').src='clf_Dangdang/vaLIdationCodeAction.png.action?time-'+(new Date()).getTime();">看不清，再换一张</a>
								</p>
								<span id="numberInfo" style="color:red">
									&nbsp;
								</span>
							</div>
						</td>
					</tr>
				</tbody></table>

				<div class="login_in">
					<input type="submit" id="btnClientRegister" value="注册" class="button_1" >

				</div>
			</form>




		</div>
		
<div>
	<%@include file="../common/foot1.jsp"%>
</div>
	


</body></html>


