<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐祺时代</title>
<link href="${ctx}/css/error.css" rel="stylesheet" type="text/css">
</head>

<body>
    
  
      <div class="content">
            <div class="content_nav">
            	<!--错误-->
                <div class="error">
                    <div class="t01">抱歉，没有找到相关相页面</div>
                    <div class="t02">您可以：</div>
                    <div class="t02">
                    	1、检查刚才的输入<br />
                        2、试试择选<span style="color:#F30">重新打开</span>或者选<span style="color:#F30">返回上一页</span><br />
                        3、访问本站其它内容
					</div>
                    <div class="errorbtn_nav">
                    	<a href="${ctx}/"><div class="errorbtn" style="margin-left:170px;">返回首页</div></a>
                        <a href="javascript:history.back();"><div class="errorbtn2" style="margin-left:20px;">返回上一页</div></a>
                    </div>
                </div>
                
                
            </div>
        </div>
    
    
    
</body>
</html>
