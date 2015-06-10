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
			<legend>添加信息</legend>
			<div style="display: none;">
				<input id="txt_minLassLen" type="text" value="6">
			</div>
			<form method="POST" enctype="multipart/form-data" action="${ctx}/nurse/add">
				<div class="editfrm">
					<ul>
						<input name="type" value="${param["type"]}" type="hidden" />
						<li><label>姓名：</label> <input name="name" type="text">
							<span id="err_userName"></span> <em>*</em></li>
						<li><label>工号：</label> <input name="staffCode" type="text">
							<span id="err_userName"></span> <em>*</em></li>
						<li><label>身份证号：</label> <input name="personCode" type="text">
							<span id="err_userName"></span> <em>*</em></li>
						<li><label>保险编号：</label> <input name="safetyCode" type="text">
							<span id="err_userName"></li>
						<li><label>所在地：</label> <input name="location" type="text">
							<span id="err_userName"></span> </li>
						<li><label>性别：</label>
							<input type="radio" name="sex" value="男">男</input>
							<input type="radio" name="sex" checked="checked" value="女">女</input>
						</li>
						<li><label>认证信息：</label> 
						<input  type="checkbox" name="authenticate" checked="checked" value="身份认证"/>身份认证
						<input  type="checkbox" name="authenticate" checked="checked" value="证件备案"/>证件备案
						<input  type="checkbox" name="authenticate" checked="checked" value="技能考核"/>技能考核
						<input  type="checkbox" name="authenticate" value="官方培训"/>官方培训
						<input  type="checkbox" name="authenticate" value="多胎护理"/>多胎护理
						<input  type="checkbox" name="authenticate" value="涉外经验"/>涉外经验
						</li>
						<li><label>证书：</label> 
						<input  type="checkbox" name="certificate" value="催乳师证"/>催乳师证
						<input  type="checkbox" name="certificate" value="高级母婴护理师证"/>高级母婴护理师证
						<input  type="checkbox" name="certificate" value="理疗师证书"/>理疗师证书
						<input  type="checkbox" name="certificate" value="小儿推拿师"/>小儿推拿师
						<input  type="checkbox" name="certificate" value="高级营养师"/>高级营养师
						<input  type="checkbox" name="certificate" value="产后保健恢复师"/>产后保健恢复师
						</li>
						<li><label>其他证书信息：</label> <input name="authenticateMore" type="text"><em>，分隔</em></li>
						<li><label>从业经验：</label> <input name="workedAge" type="text">年</li>
						<li><label>学历：</label> 
							<select name="educational">
								<option value="小学">小学</option>
								<option value="初中">初中</option>
								<option selected="selected" value="高中">高中</option>
								<option value="大学">大学</option>
								<option value="研究生">研究生</option>
								<option value="博士及以上">博士及以上</option>
							</select>
						</li>
						<li><label>家乡：</label> <input name="hometown" type="text"></li>
						<li><label>年龄：</label> <input name="age" type="text"></li>
						<li><label>照顾过宝宝：</label> <input name="numLookAfter" type="text">位</li>
						<li><label>基本技能：</label>
							<input name="basicSkills" type="checkbox" checked="checked" value="月子餐">月子餐</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="新生儿喂养">新生儿喂养</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="新生儿洗澡与抚触">新生儿洗澡与抚触</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="产妇护理">产妇护理</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="新生儿护理">新生儿护理</input>
						</li>
						<li><label>&nbsp</label>
							<input name="basicSkills" type="checkbox" checked="checked" value="母乳辅助喂养">母乳辅助喂养</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="脐带护理">脐带护理</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="新生儿黄疸观察">新生儿黄疸观察</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="新生儿大小便观察">新生儿大小便观察</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="每日体温测量">每日体温测量</input>
						</li>
						<li><label>&nbsp</label>
							<input name="basicSkills" type="checkbox" checked="checked" value="喂奶拍嗝">喂奶拍嗝</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="新生儿日常物品清洗与消毒">新生儿日常物品清洗与消毒</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="户外运动与晒太阳">户外运动与晒太阳</input>
							<input name="basicSkills" type="checkbox" checked="checked" value="恶露观察">恶露观察</input>
						</li>
						<li><label>高级技能：</label> 
							<input name="advancedSkills" type="checkbox" checked="checked" value="催乳">催乳</input>
							<input name="advancedSkills" type="checkbox" checked="checked" value="早产儿护理">早产儿护理</input>
							<input name="advancedSkills" type="checkbox" checked="checked" value="湿疹护理">湿疹护理</input>
							<input name="advancedSkills" type="checkbox" checked="checked" value="早教">早教</input>
							<input name="advancedSkills" type="checkbox" checked="checked" value="乳房护理">乳房护理</input>
							<input name="advancedSkills" type="checkbox" checked="checked" value="新生儿臂红护理">新生儿臂红护理</input>
						</li>
						<li><label>特殊技能：</label> 
							<input name="specialSkills" type="checkbox"  value="通乳">通乳</input>
							<input name="specialSkills" type="checkbox"  value="产后经络按摩">产后经络按摩</input>
							<input name="specialSkills" type="checkbox"  value="产后瑜伽/美容">产后瑜伽/美容</input>
							<input name="specialSkills" type="checkbox"  value="产后心理疏导">产后心理疏导</input>
							<input name="specialSkills" type="checkbox"  value="多胞胎护理">多胞胎护理</input>
							<input name="specialSkills" type="checkbox"  value="产后形体恢复">产后形体恢复</input>
							<input name="specialSkills" type="checkbox"  value="涉外服务经验">涉外服务经验</input>
							<input name="specialSkills" type="checkbox"  value="英语语言技能">英语语言技能</input>
						</li>
					</ul>
				</div>
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