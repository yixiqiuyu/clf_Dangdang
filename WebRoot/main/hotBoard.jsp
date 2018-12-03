<%@page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
		<h2 class="t_xsrm">
			新书热卖榜
		</h2>
		<div id="NewProduct_1_o_t" onmouseover="">
<ul>
	<s:iterator value="books">
	<li><a  target='_blank' href="<s:url namespace='/book' action='book_findBookById' />?id=<s:property value='id'/>"><s:property value="name"/></a></li>
	</s:iterator>
</ul>
	<h3 class="second">
		<span class="dot_r"> </span><a href="#" target="_blank">更多&gt;&gt;</a>
	</h3>
</div>