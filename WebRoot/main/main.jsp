<%@page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>当当图书 – 全球最大的中文网上书店</title>
<link href="../css/book.css" rel="stylesheet" type="text/css" />
<link href="../css/second.css" rel="stylesheet" type="text/css" />
<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
       #zoom{
            width:150px;
            height:200px;
            background-repeat:no-repeat;
            display:none;
           
         }
   </style>
   <script type="text/javascript" src="/clf_Dangdang/Scripts/jquery-1.4.min.js"></script>
    <script type="text/javascript">
    
		
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
		<a href="#" target="_blank"><img
			src="../images/default/book_banner_081203.jpg" border="0" /> </a>
	</div>

	<div class="book">

		<!--左栏开始-->
		<div id="left" class="book_left">
			<s:action name="type_findAllType" namespace="/type"
				executeResult="true" />
		</div>
		<!--左栏结束-->

		<!--中栏开始-->
		<div class="book_center">

			<!--推荐图书开始-->
			<div class=second_c_border1 id="recommend">
				<s:action name="book_findByStatus" namespace="/book"
					executeResult="true" />
			</div>

			<!--推荐图书结束-->

			<!--热销图书开始-->
    
			<div class="book_c_border2" id="hot">
				<s:action name="book_findByMounts" namespace="/book"
					executeResult="true"  />
			</div>
			<!--热销图书结束-->

			<!--最新上架图书开始-->
			<div class="book_c_border2" id="new">
				<s:action name="book_findByPutAway" namespace="/book"
					executeResult="true" />
			</div>

			<!--最新上架图书结束-->

			<div class="clear"></div>
		</div>
		<!--中栏结束-->


		<!--右栏开始-->
		<div class="book_right">
			<div class="book_r_border2" id="__XinShuReMai">
				<div class="book_r_b2_1x" id="new_bang">
				   <s:action name="book_findByPutAwayAndMounts" namespace="/book" executeResult="true"/>	
				</div>
			</div>
		</div>
		<!--右栏结束-->
		<div class="clear"></div>
	</div>

	<!--页尾开始 -->
	<%@include file="../common/foot.jsp"%>
	<!--页尾结束 -->
</body>
</html>
