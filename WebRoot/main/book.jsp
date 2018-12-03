<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<title>发现孩子(蒙台梭利儿童教育经典原著) - 图书 - 当当网</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../product_files/dangdang.css" type="text/css"
	rel="Stylesheet">
<link href="../product_files/book.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery-1.4.min.js"></script>
<script type="text/javascript">
	function addProduct(img, productId) {
	     
		 location.href="/clf_Dangdang/cart/cart_addToCart?id="+productId;
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
<link type="text/css" rel="stylesheet"
	href="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/style.css">
<script type="text/javascript" charset="utf-8"
	src="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/page_context.js"></script>
</head>
<body screen_capture_injected="true">
    <div id="zoom" >
          <img id="img" width="150">
       </div>
	<div id="tag_box"
		style="DISPLAY: none; Z-INDEX: 10; POSITION: absolute"></div>
	<div id="div_shield"></div>
	<div id="main">
		<div class="mainsearch"></div>
		<div class="wrap">
			<!--left start-->
			<!--left end-->
			<div class="right">
				<div class="right_wai">
					<div class="shuming">
						<div class="shuming_left">
							<span class="black000"><a name="top_bk"></a><s:property value="Onebook.name"/></span>
						</div>
						<div class="book_case">
							<span class="seriesname">丛书名： <s:property value="Onebook.name"/></span>
						</div>
						<div class="empty_box"></div>
					</div>
					<div class="book_left">
						<div class="book_pic">
							<a
								href="javascript:ImgBtnChgPrd_Click(this,'http://img39.ddimg.cn/93/5/20867709-1_o.jpg')"
								name="bigpicture_bk"><img id="img_show_prd"
								src="/clf_Dangdang<s:property value="Onebook.picLujing"/>" onmouseover="divIn(event)" onmouseout="divOut(event)" onmousemove="divIn(event)">
							</a>
						</div>
						<input id="hid_largepictureurl" type="hidden">
					</div>
					<div class="book_right">
						<div id="author_">作 者： <s:property value="Onebook.autor"/></div>
						<div id="publisher_">出 版 社： 中华人民共和国出版社</div>
						<ul>
							<li>出版时间： <s:property value="Onebook.putaway"/></li>
							<li>字 数： 1万</li>
							<li>版 次： 1</li>
							<li>页 数： 100</li>
							<li>印刷时间： 1970-1-1</li>
							<li>开 本： 16开</li>
							<li>印 次：</li>
							<li>纸 张： 胶版纸</li>
							<li>I S B N ： 12345678</li>
							<li>包 装： 平装</li>
						</ul>
						<div id="__categroy_bk">
							所属分类： <a class="blue12a"
								href="http://product.dangdang.com/category.ashx?code=01.00.00.00.00.00"
								target="_blank">图书</a> &gt;&gt; <a class="blue12a"
								href="http://product.dangdang.com/category.ashx?code=01.30.00.00.00.00"
								target="_blank">社会科学</a> &gt;&gt; <a class="blue12a"
								href="http://product.dangdang.com/category.ashx?code=01.30.07.00.00.00"
								target="_blank">教育</a> &gt;&gt; <a class="blue12a"
								href="http://product.dangdang.com/category.ashx?code=01.30.07.04.00.00"
								target="_blank">各级教育</a>
						</div>
						<div class="jiage">
							<span class="gray87">定价：<span class="del"
								id="originalPriceTag">￥<s:property value="Onebook.oldprice"/></span>
							</span> <span class="redc30">当当价：￥<b><s:property value="Onebook.dangdangprice"/></b>
							</span> 节省：￥<s:property value="Onebook.oldprice-Onebook.dangdangprice"/>
							<div class="pd_buy_num">
								<div class="clear"></div>
							</div>
							<div class="goumai">
								<a title="购买" onclick="addProduct(this, <s:property value='Onebook.id'/>)" name="purchase_book">
									<img id="buy" src="../product_files/booksale.gif"><span
									id="cartInfo_1"></span>
								</a>
								<!--  <A id=favor title=收藏 href="#" name=wishlist_book>
<IMG id=imgfavor src="../product_files/bookz_save.gif"></A>
-->
							</div>

						</div>
					</div>
					<div id="dvTPUrls"></div>
					<div id="__zhinengbiaozhu_bk">
						<div class="dashed"></div>
						<h2 class="black14">
							<img src="../product_files/bg_point1.gif" align="absMiddle">
							编辑推荐
						</h2>
						<div class="zhengwen">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							在这本书里，我力图说明儿童早期教育中的某些问题，尤其要让读者认识到一个事实：我们的工作成就不仅仅是创建了一种新的教育模式。我们得出的结论已经显现于这本书名之中――发现孩子！<br>――玛丽娅?蒙台梭利（本书作者）<br>
							<br>今天，人类社会迫切需要重建教育方法；为此而奋斗，也就是为人类复兴而奋斗！<br>
							――塞吉（玛丽娅?蒙台梭利博士的老师）<br>
							<br>蒙台梭利理论体系的精华是她对下面这个真理的有力论断或再论断：除非在自由的气氛中，儿童即不可能发展自己，也不可能受到有益的研究。<br>
							――E?G?霍尔姆斯（哈佛大学教育学院教授）
						</div>
						<div class="dashed"></div>
						<h2 class="black14">
							<img src="../product_files/bg_point1.gif" align="absMiddle">
							内容简介
						</h2>
						<div class="zhengwen"><s:property value="name"/></div>
						<div class="dashed"></div>
						<h2 class="black14">
							<img src="../product_files/bg_point1.gif" align="absMiddle">
							作者简介
						</h2>
						<div class="zhengwen"><s:property value="Onebook.autor"/>写的 作者是好人</div>
						<div class="dashed"></div>
						<h2 class="black14">
							<img src="../product_files/bg_point1.gif" align="absMiddle">
							目录
						</h2>
						<div class="zhengwen">这真是一本好书啊</div>
						<div class="dashed"></div>
						<h2 class="black14">
							<img src="../product_files/bg_point1.gif" align="absMiddle">
							媒体评论
						</h2>
						<div class="zhengwen">好，非常畅销!难得的一本好书</div>
						<div class="dashed"></div>
						<h2 class="black14">
							<img src="../product_files/bg_point1.gif" align="absMiddle">
							书摘插图
						</h2>
						<div class="zhengwen">
							第2章 对教育方法的历史回顾<br>
							儿童之家使用的教育体系实际上已经向前迈出了一大步。假如人们认为我和正常儿童相处所得的经验相对短暂，那么此经验建立在以往对非正常儿童的教育经验基础之上，因此也代表着一段相当长期的思想。<br>
							假如我们想开发出科学的教育体系，就必须开辟出一条前所未有的新路。教师们必须接受专业培训，同时而学校也必须进行转变。假如教师们都接受了观察与实验的培训，那他们必须在学校里执行这些活动。<br>
							因此，科学教育体系的基本需求是有一个能允许儿童自由发展个性的学校。如果某种教育体系是基于对学生个体的研究，那么其研究方式应该是对行动自由的儿童进行观察和研究，而不是对一个受压制的学生进行观察和研究。<br>
							在人类学和实验心理学的帮助下，在一个人应试教育为主的学校里，开发新型教育方法，是最愚蠢的想法。<br>
							每个领域的实验科学，都是由使用自己独特的方法中发展而来。细菌学起源于分离并培育微生物。犯罪学、医学和教育学也都分别在不同类型的个体上使用过最初的人体测量方法，如在罪犯上、精神病人、医院里的临床病人、学生身上等。实验心理学在开始阶段就要指出执行实验的精确技术。<br>
							……
						</div>
					</div>
					<a name="review_point"></a>
				</div>
			</div>
			<div id="tag_box"
				style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></div>
			<div id="tag_box_pay"
				style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></div>
			<div id="div_shield"></div>
			<!--页尾 开始 -->
			<div class="public_footer_add_s"></div>
			<!--09.3.10new-->
			<!--页尾 end -->
			<!--页尾开始 -->

			<link href="../css/public_footer.css" rel="stylesheet"
				type="text/css">
			<div class="public_footer">
				<div class="public_footer_bottom">
					<div class="public_footer_icp" style="line-height: 48px;">
						Copyright (C) 当当网 2004-2008, All Rights Reserved <a href="#"
							target="_blank"><img src="../images/bottom/validate.gif"
							border="0" align="middle"> </a> <a href="#" target="_blank"
							style="color: #666;">京ICP证041189号</a>
					</div>
				</div>
			</div>

			<!--页尾结束 -->

		</div>
	</div>
</body>
</html>