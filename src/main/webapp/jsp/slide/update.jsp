<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0042)${ctx}/Account/UserAdd -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>乐祺时代</title>
<jsp:include page="../include/common.jsp" />

</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<div id="container">

		<fieldset>
			<legend>修改幻灯片</legend>
			<div style="display: none;">
				<input id="txt_minLassLen" type="text" value="6">
			</div>
			<form method="POST" enctype="multipart/form-data" action="${ctx}/home/update">
				<div class="editfrm">
					<ul>
						<input id="id" name="id" type="hidden" value="${article.id}" />
						<li><label>标题：</label> <input id="title" name="title" value="${article.title}" type="text">
							<span id="err_userName"></span> <em>*</em></li>
	
						<li><label>描述：</label> <input id="txt_name" name="description"  value="${article.text}" size="50" type="text">
							<span id="err_name"></span> <em>*</em></li>
							
						<li><label>序号：</label> <input id="txt_name" name="num" size="50" value="${article.num}" type="text">
							<span id="err_name"></span> <em>*序号大的优先展示</em></li>
							
						<li><label>发布：</label>
						<c:choose>
  							<c:when test="${article.published == true}">
								<input type="radio" name="publish"  value="true" checked="checked" /> 是 
								<input type="radio" name="publish" value="false"  />否
							</c:when>
							<c:otherwise>  
								<input type="radio" name="publish"  value="true"  /> 是 
								<input type="radio" name="publish"  value="false" checked="checked" /> 否 
							</c:otherwise>
						</c:choose>
						<li><label>预览：</label>
							<img src="${ctx}/upload/${article.image.url}" alt="" />	
						</li>
						<li><label>上传图片：</label>
							<input type="file" name="file">
							<span id="err_name"></span> <em>*</em></li>
						
					</ul>
				</div>
			
		</fieldset>
		<div class="button-row">
			<input id="btn_save" type="submit" value="保存"
				class="ui-button red default "> <input id="btn_back"
				type="button" value="返回" class="ui-button gray default ">
		</div>
		</form>

	</div>
	<jsp:include page="../include/footer.jsp" />
</body>
</html>
<script type="text/javascript">
		$(document).keydown(function(e) {
			if (e.keyCode == 8 && !$(e.target).is("input")) {
				$("#leapmenu a.nav").click();
				return false;
			}
		});
		$("#btn_save").click(function ()
		{
			//SubmitInfo(); //提交数据信息
		});

		$("#btn_back").click(function ()
		{
			window.location.href = ctx + '/home/toSlideList';
		});

		
	</script>
