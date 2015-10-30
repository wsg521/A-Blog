<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC>
<html>
  <head>
	<title>欢迎来到A博客</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/wsg/util.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/default/easyui.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/color.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/icon.css" type="text/css"></link>
  </head>
  <body>
  	 <h2>Custom TextBox</h2>
    <p>This example shows how to custom a login form.</p>
    <div style="margin:20px 0;"></div>
    <div class="easyui-panel" title="Login to system" style="width:400px;padding:30px 70px 20px 70px">
        <div style="margin-bottom:10px">
            <input class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'Username',iconCls:'icon-man',iconWidth:38">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" type="password" style="width:100%;height:40px;padding:12px" data-options="prompt:'Password',iconCls:'icon-lock',iconWidth:38">
        </div>
        <div style="margin-bottom:20px">
            <input type="checkbox" checked="checked">
            <span>Remember me</span>
        </div>
        <div>
            <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
                <span style="font-size:14px;">Login</span>
            </a>
        </div>
    </div>
  </body>
</html>
