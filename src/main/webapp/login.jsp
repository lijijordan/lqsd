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
<script src="${ctx}/js/base.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<link href="${ctx}/css/login.css" rel="stylesheet" type="text/css">
<script src="${ctx}/js/login.js" type="text/javascript"></script>
</head>

<body>

    <div class="content">
        <div class="m_nt">
        	<div class="pic"><img src="${ctx}/images/logo1.gif" border="0"></div>
            <div class="login">
            	<div class="header">登录</div>
                <div class="srk">
                	<div class="t01">用户ID </div>
                    <input type="text" name="textfield" placeholder="请输入您的账号" id="input_name" class="input">
                </div>
                <div class="srk">
                	<table>
                	<tr><td>
                	<div class="t01">登录密码 </div>
                    <input type="password" name="textfield" placeholder="请输入您的密码" id="input_psw" class="input">
                    </td></tr>
                    <tr><td align=center>
                    <span id="error_msg" style="color:red"></span>
                    </td></tr>
                    </table>
                </div>
                <a href="javascript:LogOn();" data-index="0" ><div class="btn">立即登录</div></a>
						
            </div>
        </div>
    </div>
    <div class="footer">
    	<div class="f_nt">
        	Copyright(C)2014-2018. 版权所有    <span style="margin-left:50px;"></span><br />
        </div>
    </div>
    
    
</body>
</html>
