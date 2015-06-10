<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0037) -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>乐祺时代</title>
<link href="${ctx}/css/base.css" rel="stylesheet" type="text/css">
	<jsp:include page="/jsp/include/common.jsp" />
</head>
<body>
	<jsp:include page="/jsp/include/header.jsp" />

	<div id="container">
		<!-- <script src="${ctx}/js/ajax-binder.js" type="text/javascript"></script> -->
		<div class="index_menuleft">
			<ul class="subNav"
				binding="{path:&quot;list&quot;,source:$(&quot;#first-menu&quot;),action:&quot;auto&quot;}">
				
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
							<a id="1" href="#" onclick="getOperations('1');" class="activeli">
							<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class="icos-fullscreen"></span><span class="spath" binding="{path:&quot;Name&quot;}">网站管理</span></a>
						</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('2');" class="">
						
							<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class="icos-cog2"></span><span class="spath" binding="{path:&quot;Name&quot;}">文章发布</span></a>
					</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('3');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class="icos-coverflow"></span><span class="spath" binding="{path:&quot;Name&quot;}">评论管理</span></a>
					</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('4');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class="icos-beta"></span><span class="spath" binding="{path:&quot;Name&quot;}">加盟管理</span></a>
					</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('5');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class="icos-images2"></span><span class="spath" binding="{path:&quot;Name&quot;}">月嫂管理</span></a>
					</li>
			</ul>
		</div>
		<div class="index_submenu">
			<div class="ui-menu ui-seticon">
				<ul id="ul_set" binding="{path:&quot;list_set&quot;}">
					
				</ul>
			</div>
		</div>

	</div>
	<jsp:include page="/jsp/include/footer.jsp" /> 
</body>
<script type="text/javascript">

			$(document).ready(function () {
				$("#leapmenu").hide();
			    $(".index_menuleft ul li a").live("click", function () {
			        $(".index_menuleft ul li a").removeClass("activeli");
			        $(this).addClass("activeli");
			        if ($(this).find(".spath").html() !== "") {
			            $("#pageNav").html($(this).find(".spath").html())
			        }
			    });
			});
			function getOperations(parentid){
				$('#ul_set').html('');
				//alert(parentid);
				if(parentid == 1){
					$('#ul_set').append('<li><a href="${ctx}/home/toSlideList">幻灯片</a></li>');
					$('#ul_set').append('<li><a href="${ctx}/home/toSlideListFoot">加盟商展示</a></li>');
					$('#ul_set').append('<li><a href="${ctx}/staff/toList">设置分站管理员</a></li>');
					$('#ul_set').append('<li><a href="${ctx}/site/toList">分站管理</a></li>');
				}
				if(parentid == 2){
					$('#ul_set').append('<li><a href="www.baidu.com">AAA</a></li>');
					$('#ul_set').append('<li><a href="www.baidu.com">BBB</a></li>');
				}
				if(parentid == 4){
					$('#ul_set').append('<li><a href="www.baidu.com">设置站点</a></li>');
					
				}
				if(parentid == 5){
					$('#ul_set').append('<li><a href="${ctx}//nurse/toList?type=FOR_MUM">育婴师</a></li>');
					$('#ul_set').append('<li><a href="${ctx}//nurse/toList?type=FOR_BABY">月嫂</a></li>');
					$('#ul_set').append('<li><a href="${ctx}//nurse/toList?type=TEACHER">月子导师</a></li>');
				}
				/*
				var url = ctx + '/user/menus';
				$.ajax({
				  type: "POST",
				  url: url,
				  data: { parent: parentid }
				}).done(function( msg ) {
					var myData = msg.data;
					$('#ul_set').html('');
					if(myData){
						 $.each(myData, function (i, n) {
								var tmp = '<li><a href="'+n.url+'>'+n.name+'</a></li>';
								$('#ul_set').append('<li><a href="' + n.url + '">' + n.name + '</a></li>');
							 });
						}
					
				  });
				*/
			}
			getOperations(1);
		
	    </script>
</html>