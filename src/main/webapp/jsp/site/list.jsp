<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=8">
<title>
	乐祺时代
</title>
   <jsp:include page="../include/common.jsp" />
	<!-- for android -->
	<meta name="viewport" content="width=device-width, initial-scale=0.8, user-scalable=no">
</head>
<body style="cursor: auto;">
    <script type="text/javascript">
		function add(){
			window.location=ctx + "/site/toAdd";
		}

		function del(id){
			window.location=ctx + "/site/del?id=" + id;
		}
		function update(id){
			window.location=ctx + "/site/toUpdate?id=" + id;
		}
    </script>
    <jsp:include page="../include/header.jsp" />
   
    <div id="container">
     <fieldset>
			<legend>分站管理</legend>
			<div class="search_area">
				<div class="clear height_6">
				<input type="button" onclick="add()" value="添   加"
					class="ui-button red small28" id="btn_search" />
					</div>
			</div>
			<div id="tabs"
				class="ui-tabs ui-widget ui-widget-content ui-corner-all">
				<div id="tabs-1"
					class="ui-tabs-panel ui-widget-content ui-corner-bottom">
					<div style="overflow-x: auto;">
						<table id="linkTableAll" class="GridViewStyle tb_list_cust nowrap">
							<thead style="display: table-header-group;">
								<tr>
									<th class="">名称</th>
									<th class="">短域名</th>
									<th class="">电话</th>
									<th class="">联系地址</th>
									<th class="">银行账户</th>
									<th class="">创建时间</th>
									<th class="">操作</th>
								</tr>
								<tbody>
									<c:forEach items="${list}" var="item"> 
										<tr class="RowStyle">
											<td>${item.name}</td>
											<td>${item.domain}</td>
											<td>${item.phone}</td>
											<td>${item.address}</td>
											<td>${item.bank}</td>
											<td>${item.createTime}</td>
											<td><a href="#" onclick="del('${item.id}')">删除</a>|<a href="#" onclick="update('${item.id}')">修改</a></td>
										</tr>
									</c:forEach>
									
								</tbody>
							</thead>
						</table>
						<div id="pager_profile" class="pager" style="display: none;">
							<div id="totalNum_profile" class="tatal_num">
								共<strong>0</strong>条记录
							</div>
							<div id="Pagination_profile" class="youtube">
								<span class="current prev">首页</span><span class="current prev">上一页</span><span
									class="current">1</span><span class="current next">下一页</span><span
									class="current next">尾页</span><span class="tiao">到第<input
									type="text" class="jumpto" value="1">页<input
									type="button" value="GO" class="btn-go" title="指定页码"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
	</fieldset>
	</div>
    <jsp:include page="../include/footer.jsp" />
</body>
</html>