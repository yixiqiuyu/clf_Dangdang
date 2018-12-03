<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js">
		</script>
		<link href="../css/book.css" rel="stylesheet" type="text/css" />
		<link href="../css/second.css" rel="stylesheet" type="text/css" />
		<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="../css/list.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
		     function test1(productId){
		         location.href = "/clf_Dangdang/cart/cart_addToCart?id="+productId;
		     }
	        function divIn(event){
             var img = event.target;
             div = img.parentNode;
             div.style.cursor="pointer";
             var zoom = document.getElementById("zoom");
             var zoomImg = document.getElementById("img");
             zoomImg.src = img.src;
             zoom.style.display = "block";
             zoom.style.position= "absolute";
             	zoom.style.top = event.clientY+20+document.body.scrollTop+"px";
             	zoom.style.left = event.clientX+10+"px";
             zoom.style.zIndex = 3;
          }
          function divOut(event){
             var div = event.target;
             div.style.cursor= null;
             var zoom = document.getElementById("zoom");
             zoom.style.display = "none";
          }
			
    
		</script>
	</head>
	<body>
		&nbsp;

		<!-- 头部开始 -->
		<%@include file="../common/head.jsp"%>
		<!-- 头部结束 -->
		 <div id="zoom" >
          <img id="img" width="150">
       </div>

		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="../images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href="/clf_Dangdang/main/main.jsp">当当图书</a> &gt;&gt;
			<a href="<s:url namespace='/type' action='type_findTypeByFirstIdAndSecondId'/>?firstid=<s:property value='firstid'/>"><font <s:if test="secondid == null">style='color: #cc3300'</s:if>><strong>大类型</strong> </font></a>
			<s:if test="secondid != null">
			&gt;&gt;<a href="<s:url namespace='/type' action='type_findTypeByFirstIdAndSecondId'/>?firstid=<s:property value='firstid'/>&?secondid=<s:property value='secondid'/>"><font style='color: #cc3300'><strong>小类型</strong> </font></a>
			</s:if>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
									<s:iterator value="types">
						<ul>
							<li>
								<div>
									<div class=second_fenlei >
										<a href="<s:url namespace='/type' action='type_findTypeByFirstIdAndSecondId'/>?firstid=<s:property value='firstid'/>"><font <s:if test="secondid == null">style="color:#cc3300"</s:if>>&middot;全部&nbsp;(<s:property value="mount"/>)</font></a>
								   </div>
								</div>
							</li>
															<div class="clear"></div>					
							<!--2级分类开始-->
							<s:iterator value="types">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei  >
										<a href="<s:url namespace='/type' action='type_findTypeByFirstIdAndSecondId'/>?firstid=<s:property value='firstid'/>&secondid=<s:property value='id'/>"><font <s:if test="secondid==id">style="color: #cc3300"</s:if>><s:property value="typeName"/>&nbsp;(<s:property value="mount"/>)</font></a>
									</div>
								</div>
							</li>
						    							<div class="clear"></div>
							</s:iterator>
							<!--2级分类结束-->

						</ul>
							</s:iterator>
					</div>
				</div>
			</div>
			

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							排序方式
						</div>
						<select onchange='' name='select_order' size='1'
							class='list_r_title_ml'>
							<option value="">
								按上架时间 降序
							</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">

							<!--分页导航开始-->
							<s:if test="page.pageIndex!=1">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="<s:url namespace='/type' action='type_findTypeByFirstIdAndSecondId'/>?firstid=<s:property value='firstid'/>&secondid=<s:property value='secondid'/>&page.pageIndex=<s:property value='page.upPageIndex'/>">
								<img src='../images/page_up.gif' /> </a>
							</div>
	                        </s:if>
	                        <s:else>
							<div class='list_r_title_text3a'>
								<img src='../images/page_up_gray.gif' />
							</div>
				             </s:else>
							<div class='list_r_title_text3b'>
								第<s:property value="page.pageIndex"/></>页/共<s:property value="page.pageLastPage"/>页
							</div>
							<s:if test="page.pageLastPage != page.pageIndex">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="<s:url namespace='/type' action='type_findTypeByFirstIdAndSecondId'/>?firstid=<s:property value='firstid'/>&secondid=<s:property value='secondid'/>&page.pageIndex=<s:property value='page.nextPageIndex'/>">
									<img src='../images/page_down.gif' /> </a>
							</div>
			                </s:if>
			                <s:else>
							<div class='list_r_title_text3a'>
								<img src='../images/page_down_gray.gif' />
							</div>
                            </s:else>
							<!--分页导航结束-->
						</div>
					</div>
					
					<!--商品条目开始-->
						
						<div class="list_r_line"></div>
						<div class="clear"></div>
                        <s:iterator value="types2">
                        <s:iterator value="products">
						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='#'>
								<img src="/clf_Dangdang<s:property value='picLujing'/>" onmouseover="divIn(event)" onmouseout="divOut(event)" onmousemove="divIn(event)"/> </a> </span>
							<h2>
								<a name="link_prd_name" href="<s:url namespace='/book' action='book_findBookById' />?id=<s:property value='id'/>"><s:property value="name"/></a>
							</h2>
							<h3>
								顾客评分：100
							</h3>
							<h4 class="list_r_list_h4">
								作 者:
								<a href='#' name='作者'><s:property value="autor"/></a>
							</h4>
							<h4>
								出版社：
								<a href='#' name='出版社'>中华人民共和国出版社</a>
							</h4>
							<h4>
								出版时间：<s:property value="name"/>
							</h4>
							<h5>
								这是一本好书，描述了李狗蛋李狗子的一生！！！！！
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">￥<s:property value="oldprice"/></span>
								<span class="red">￥<s:property value="dangdangprice"/></span>
								节省：￥<s:property value="oldprice-dangdangprice"/>
							</h6>
							<span class="list_r_list_button"> 
							<a href="#"> 
							<img src='../images/buttom_goumai.gif' onclick="test1(<s:property value='id'/>)" /> </a>
							<span id="cartinfo"></span>
						</div>
						<div class="clear"></div>
						</s:iterator>
                        </s:iterator>
						
					
						<!--商品条目结束-->

					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->

			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="../common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>
