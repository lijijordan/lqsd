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
<title></title>
<link href="${ctx}/css/base.css" rel="stylesheet" type="text/css">
	<jsp:include page="/include/common.jsp" />
</head>
<body>
	<jsp:include page="/include/header.jsp" />

	<div id="container">
		<!-- <script src="${ctx}/js/ajax-binder.js" type="text/javascript"></script> -->
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
		}
		getOperations('${selected}');
	
    </script>

		<div class="index_menuleft">
			<ul class="subNav"
				binding="{path:&quot;list&quot;,source:$(&quot;#first-menu&quot;),action:&quot;auto&quot;}">
				
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
							<a href="#" onclick="getOperations('5');" class=" activeli">
							<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class=""></span><span class="spath" binding="{path:&quot;Name&quot;}">首页管理</span></a>
						</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('0');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class=""></span><span class="spath" binding="{path:&quot;Name&quot;}">文章管理</span></a>
					</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('0');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class=""></span><span class="spath" binding="{path:&quot;Name&quot;}">评论管理</span></a>
					</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('0');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class=""></span><span class="spath" binding="{path:&quot;Name&quot;}">加盟店管理</span></a>
					</li>
					<li binding="{path:function(v){return v.ID!=159},attr:&quot;display&quot;}">
						<a href="#" onclick="getOperations('0');" class="">
						
						<span binding="{path:&quot;SmallPic&quot;,attr:&quot;class&quot;}" class=""></span><span class="spath" binding="{path:&quot;Name&quot;}">月嫂管理</span></a>
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
	<jsp:include page="/include/footer.jsp" /> 
</body>
</html>