<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<link href="../css/book.css" rel="stylesheet" type="text/css">
		<link href="../css/second.css" rel="stylesheet" type="text/css">
		<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../Scripts/jquery-1.4.min.js"></script>
		<script type="text/javascript">
		
	$(function(){
			var x = 10;
			var y = 20;
			$("img.dang_img").mouseover(function(e){
				
				this.myTitle = this.title;
				
				this.title = "";	
				var imgTitle = this.myTitle? "<br/>" + this.myTitle : "";
				var tooltip = "<div id='tooltip' ><img height='200px' width='150px' src='"+ this.src +"' alt='产品预览图'/>"+imgTitle+"<\/div>"; //创建 div 元素
				$("body").append(tooltip);	//把它追加到文档中		
					 
				$("#tooltip").css({
						"top": (e.pageY+y) + "px",
						"left":  (e.pageX+x)  + "px",
						"zIndex":3
					}).show("fast");	  //设置x坐标和y坐标，并且显示
		    	}).mouseout(function(){
					this.title = this.myTitle;	
					$("#tooltip").remove();	 //移除 
		    	}).mousemove(function(e){
					$("#tooltip")
						.css({
							"top": (e.pageY+y) + "px",
							"left":  (e.pageX+x)  + "px"
						});
				});
			});
			
			</script>
		<script type="text/javascript">
			//左侧栏目列表
			 $(function(){
				$("#left").html('<img src="../images/window_loading.gif" align="middle"/>正在加载...');
				$.get("<s:url namespace='/type' action='type_findAllType'/>",
						  function(data){
					  			$("#left").html(data);
					  	}
				 ); 
			});
	 
			//最新上架图书
			$(function(){
			$("#new").html('<img src="../images/window_loading.gif" align="middle"/>正在加载...');
				$.get("<s:url namespace='/book' action='book_findByPutAway'/>",
					  function(data){
			  			$("#new").html(data);
			  	}
				 ); 
			});
			
		//热销图书
			$(function(){
				$("#hot").html('<img src="../images/window_loading.gif" align="middle"/>正在加载...');
				$.get("<s:url namespace='/book' action='book_findByMounts'/>",
						  function(data){
					  			$("#hot").html(data);
				  	}
			 ); 
		}); 
			
			//编辑推荐图书
			$(function(){
				$("#recommend").html('<img src="../images/window_loading.gif" align="middle"/>正在加载...');
				$.get("<s:url namespace='/book' action='book_findByStatus'/>",
						  function(data){
					  			$("#recommend").html(data);
					  	}
				 ); 
			});
			
			//新书热卖榜
			$(function(){
				$("#hotboard").html('<img src="../images/window_loading.gif" align="middle"/>正在加载...');
				$.get("<s:url namespace='/book' action='book_findByPutAwayAndMounts'/>",
						  function(data){
					  			$("#hotboard").html(data);
					  	}
				 ); 
			});
		
		</script>
	<link type="text/css" rel="stylesheet" href="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/style.css"><script type="text/javascript" charset="utf-8" src="chrome-extension://cpngackimfmofbokmjmljamhdncknpmg/page_context.js"></script></head>
	<body screen_capture_injected="true">
		&nbsp;
		<!-- 头部开始 -->
		
<script type="text/javascript" src="../Scripts/jquery-1.4.min.js"></script>
		<script type="text/javascript">
			
/* 			$(function(){
				$("#logininfo").html('<img src="../images/load.gif" align="middle" width="14" heigth="14"/>正在产品加载登录信息...');
				$.get("../authorize/loginInfo.action?time="+(new Date()).getTime(),
						  function(data){
					  			$("#logininfo").html(data);
					  	}
				 ); 
			}); */
		</script>
<link href="../css/book_head090107.css" rel="stylesheet" type="text/css">
<div class="head_container">
	<div class="head_welcome">
		<div class="head_welcome_right">
			<span class="head_welcome_text"> </span>
			<span class="head_welcome_text"> <span class="little_n">
					| <a href="#" name="mydangdang" class="head_black12a">我的当当</a> | <a href="#" name="helpcenter" class="head_black12a" target="_blank">帮助</a>
					| </span> </span>
			<div class="cart gray4012">
				<a href="../cart/toCart.action">购物车</a>
			</div>
		</div>
		<span class="head_toutext" id="logininfo">


[&nbsp;<a href="../authorize/toLogin.action" class="b">登录</a>|<a href="../authorize/toRegist.action" class="b">注册</a>&nbsp;]

</span>
	</div>
	<div class="head_head_list">
		<div class="head_head_list_left">
			<span class="head_logo"><a href="#" name="backtobook"><img src="../images/booksaleimg/book_logo.gif"> </a> </span>
		</div>
		<div class="head_head_list_right">

			<div class="head_head_list_right_b">
			</div>
		</div>
	</div>
	<div class="head_search_div">

	</div>
	<div class="head_search_bg"></div>
</div>

		<!-- 头部结束 -->
		<div style="width: 962px; margin: auto;">
			<a href="#" target="_blank"><img src="../images/default/book_banner_081203.jpg" border="0"> </a>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">

<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		
		<!--2级分类开始-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=2">小说</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=2&amp;ssc=9">当代小说</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=2&amp;ssc=10">近现代小说</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=2&amp;ssc=11">古典小说</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=2&amp;ssc=12">四大名著</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=2&amp;ssc=13">世界名著</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=3">青春</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=3&amp;ssc=14">校园</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=3&amp;ssc=15">爱情/情感</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=3&amp;ssc=16">叛逆/成长</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=3&amp;ssc=17">玄幻</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=3&amp;ssc=18">原创</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=4">人文社科</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=4&amp;ssc=19">政治</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=4&amp;ssc=20">经济</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=4&amp;ssc=21">法律</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=4&amp;ssc=22">哲学</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=4&amp;ssc=23">历史</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=5">管理</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=5&amp;ssc=24">管理学</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=5&amp;ssc=25">战略管理</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=5&amp;ssc=26">市场营销</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=5&amp;ssc=27">商业史传</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=5&amp;ssc=28">电子商务</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=6">少儿</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=6&amp;ssc=29">0-2岁</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=6&amp;ssc=30">3-6岁</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=6&amp;ssc=31">7-10岁</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=6&amp;ssc=32">11-14岁</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=6&amp;ssc=33">儿童文学</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=7">外语</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=7&amp;ssc=34">英语</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=7&amp;ssc=35">日语</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=7&amp;ssc=36">韩语</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=7&amp;ssc=37">俄语</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=7&amp;ssc=38">德语</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
			
			<div class="bg_old" onmouseover="this.className = 'bg_white';" onmouseout="this.className = 'bg_old';">
				<h3>
					[
					<a href="bookList.action?sc=8">计算机</a>]
				</h3>
				<ul class="ul_left_list">
					
						<!--3级分类开始-->
						
						<li>
							<a href="bookList.action?sc=8&amp;ssc=39">计算机理论</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=8&amp;ssc=40">数据库</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=8&amp;ssc=41">程序设计</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=8&amp;ssc=42">人工智能</a>
						</li>
						
						<li>
							<a href="bookList.action?sc=8&amp;ssc=43">计算机考试</a>
						</li>
						
						<!--3级分类结束-->
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--2级分类结束-->
		
		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>
</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--推荐图书开始-->
				<div class="second_c_border1" id="recommend">
					

<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>编辑推荐
</h2>
<div id="__bianjituijian/danpin">
	<div class="second_c_02">
	
		<div class="second_c_02_b1">
			<div class="second_c_02_b1_1">
				<a href="product.action?id=1" target="_blank"><img class="dang_img" src="../productImages/16.jpg" width="70" border="0" title=""> </a>
			</div>
			<div class="second_c_02_b1_2">
				<h3>
					<a href="product.action?id=1" target="_blank">上课头疼的故事</a>
				</h3>
				<h4>
					作者：我写的 著
					<br>
					出版社：地球出版社&nbsp;&nbsp;&nbsp;&nbsp;出版时间：
				</h4>
				<h5>
					上课头疼的故事
				</h5>
				<h6>
					定价：￥200.0&nbsp;&nbsp;当当价：￥180.0
				</h6>
				<div class="line_xx"></div>
			</div>
		</div>
	
		<div class="second_c_02_b1">
			<div class="second_c_02_b1_1">
				<a href="product.action?id=2" target="_blank"><img class="dang_img" src="../productImages/17.jpg" width="70" border="0"> </a>
			</div>
			<div class="second_c_02_b1_2">
				<h3>
					<a href="product.action?id=2" target="_blank">上课头疼的故事</a>
				</h3>
				<h4>
					作者：我写的 著
					<br>
					出版社：地球出版社&nbsp;&nbsp;&nbsp;&nbsp;出版时间：
				</h4>
				<h5>
					上课头疼的故事
				</h5>
				<h6>
					定价：￥200.0&nbsp;&nbsp;当当价：￥180.0
				</h6>
				<div class="line_xx"></div>
			</div>
		</div>
		
		
		
	</div>
</div>

				</div>

				<!--推荐图书结束-->

				<!--热销图书开始-->
				<div class="book_c_border2" id="hot">
				

<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>热销图书
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=10" target="_blank"><img class="dang_img" src="../productImages/2.jpg" border="0"></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=2" target="_blank"><img class="dang_img" src="../productImages/17.jpg" border="0"></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=11" target="_blank"><img class="dang_img" src="../productImages/3.jpg" border="0" title=""></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=1" target="_blank"><img class="dang_img" src="../productImages/16.jpg" border="0"></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=3" target="_blank"><img class="dang_img" src="../productImages/18.jpg" border="0" title=""></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=4" target="_blank"><img class="dang_img" src="../productImages/19.jpg" border="0" title=""></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=6" target="_blank"><img class="dang_img" src="../productImages/21.jpg" border="0" title=""></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=12" target="_blank"><img class="dang_img" src="../productImages/4.jpg" border="0" title=""></a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课睡觉的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>
				</div>
				<!--热销图书结束-->

				<!--最新上架图书开始-->
				<div class="book_c_border2" id="new">
				

<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>最新上架图书
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=1" target="_blank"><img class="dang_img" src="../productImages/16.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=2" target="_blank"><img class="dang_img" src="../productImages/17.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=3" target="_blank"><img class="dang_img" src="../productImages/18.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=4" target="_blank"><img class="dang_img" src="../productImages/19.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=5" target="_blank"><img class="dang_img" src="../productImages/20.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=6" target="_blank"><img class="dang_img" src="../productImages/21.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=7" target="_blank"><img class="dang_img" src="../productImages/22.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="product.action?id=8" target="_blank"><img class="dang_img" src="../productImages/23.jpg" border="0"> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank">上课头疼的故事</a>
		</div>
		<div class="price">
			定价：￥200.0
		</div>
		<div class="price">
			当当价：￥180.0
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>
				</div>
				<!--最新上架图书结束-->

				<div class="clear">
				</div>
			</div>
			<!--中栏结束-->



			<!--右栏开始-->
			<div class="book_right">
				<div class="book_r_border2" id="__XinShuReMai">
					<div class="book_r_b2_1x" id="hotboard">
						

		<h2 class="t_xsrm">
			新书热卖榜
		</h2>
		<div id="NewProduct_1_o_t" onmouseover="">
<ul>
	
	<li><a target="_blank" href="product.action?id=1">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=2">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=3">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=4">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=5">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=6">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=7">上课头疼的故事</a></li>
	
	<li><a target="_blank" href="product.action?id=8">上课头疼的故事</a></li>
	
</ul>
	<h3 class="second">
		<span class="dot_r"> </span><a href="#" target="_blank">更多&gt;&gt;</a>
	</h3>
</div>
					</div>
				</div>
			</div>
			<!--右栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		
<link href="../css/public_footer.css" rel="stylesheet" type="text/css">
<div class="public_footer">
	<div class="public_footer_bottom">
		<div class="public_footer_icp" style="line-height: 48px;">
			Copyright (C) 当当网 2004-2008, All Rights Reserved
			<a href="#" target="_blank"><img src="../images/bottom/validate.gif" border="0" align="middle"> </a>
			<a href="#" target="_blank" style="color: #666;">京ICP证041189号</a>
		</div>
	</div>
</div>

		<!--页尾结束 -->
	

	
</body></html>