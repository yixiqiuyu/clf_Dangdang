<%@page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>热销图书
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	         
	<s:iterator value="books">
	<div class="second_d_wai">
		<div class="img">
			<a href="#" target='_blank'><img class="dang_img"
					src="/clf_Dangdang<s:property value='picLujing'/>" border=0  title=""onmouseover="divIn(event)" onmouseout="divOut(event)" onmousemove="divIn(event)"> </a>
		</div>
		<div class="shuming">
			<a href="<s:url namespace='/book' action='book_findBookById' />?id=<s:property value='id'/>" target="_blank"><s:property value="name"/></a><a href="#" target="_blank"></a>
		</div>
		<div class="price">
			定价：￥<s:property value="oldprice"/>
		</div>
		<div class="price">
			当当价：￥<s:property value=""/>
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	</s:iterator>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>