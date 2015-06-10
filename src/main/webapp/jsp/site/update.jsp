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
			<legend>修改分站管理员</legend>
			<div style="display: none;">
				<input id="txt_minLassLen" type="text" value="6">
			</div>
			<form method="POST" enctype="multipart/form-data" action="${ctx}/site/add">
				<div class="editfrm">
					<ul>
						<input id="id" name="id" type="hidden" value="${site.id}" />
						<li><label>名称：</label> <input id="title" name="name" type="text" value="${site.name}">
							<span id="err_userName"></span> <em>*</em></li>
						<li><label>短域名：</label> <input id="title" name="domain" type="text" value="${site.domain}">
							<span id="err_userName"></span> <em>*英文单词，切换站点时显示的url</em></li>
						<li><label>电话：</label> <input id="title" name="phone" type="text" value="${site.phone}">
							<span id="err_userName"></span> <em>*首页上显示的联系电话</em></li>
						<li><label>地址：</label> <input id="title" name="address" type="text" value="${site.address}">
							<span id="err_userName"></span> <em>*首页上显示的公司地址</em></li>
						<li><label>银行账户：</label> <input id="title" name="bank" type="text" value="${site.bank}">
							<span id="err_userName"></span> <em>*首页上显示的银行账户</em></li>
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
			window.location.href = ctx + '/site/toList';
		});

		
	</script>
