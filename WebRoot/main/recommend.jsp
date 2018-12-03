<%@page pageEncoding="UTF-8"contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<h2>
	编辑推荐
</h2>
<div id=__bianjituijian/danpin>
<div id="zoom" >
          <img id="img" width="150">
    </div>
	<div class=second_c_02>
	 <s:iterator value="books">
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
			
				<a href='#' target='_blank'><img class="dang_img" src="/clf_Dangdang<s:property value='picLujing'/>" width=70 border=0 title="" onmouseover="divIn(event)" onmouseout="divOut(event)" onmousemove="divIn(event)"/> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href="<s:url namespace='/book' action='book_findBookById' />?id=<s:property value="id"/>" target='_blank' title='输赢'><s:property value="name"/></a>
				</h3>
				<h4>
					作者：<s:property value="autor"/> 著
					<br />
					出版社：楚龙飞出版社&nbsp;&nbsp;&nbsp;&nbsp;出版时间：<s:property value="putaway"/>
				</h4>
				<h5>
					简介:楚龙飞著作，这是一本很好的书！！
				</h5>
				<h6>
					定价：$<s:property value="oldprice"/>&nbsp;&nbsp;当当价：￥<s:property value="dangdangprice"/>
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		</s:iterator>
	</div>
</div>
