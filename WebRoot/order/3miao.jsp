<%@page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="../Scripts/jquery-1.4.min.js"></script>
		<script type="text/javascript">
		var second=5;
		$(function() {
			$("#secondSpan").text(second+"");
			var fuc = function(){
				second-=1;
				$("#secondSpan").text(second+"");
				if(second==0) {
					location="http://localhost:8989/clf_Dangdang/order/address_form.jsp";
				}else{
					setTimeout(fuc,1000);
				}
			};
			
			fuc();//开始倒计时
			
		});
		</script>
	</head>
	<body>
		


   <%@include file="../common/head1.jsp"%>
<div class="login_success">
	<div class="login_bj">
<h5>
				  <img src="../images/label3.gif" width="20" height="20" align="absmiddle" />&nbsp;<s:property value='#session.user.nikename'/> 已经成功的
				  
				  登录
				  
				  </h5>
				<h6> &nbsp;&nbsp;</h6>
				<h6>页面在<span id="secondSpan"></span>秒后将重新转回 <a href="http://localhost:8989/clf_Dangdang/order/address_form.jsp">http://localhost:8989/clf_Dangdang/order/address_form.jsp</a>。如果转入失败，请单击<a href="http://192.168.0.3:8989/DangDang/order/toInputAddress.action">这里</a>。</h6>
  </div>
		</div>

		
<%@include file="../common/foot1.jsp"%>
	</body>
</html>

