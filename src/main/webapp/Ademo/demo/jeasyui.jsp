<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC>
<html>
  <head>
    <title>A-博客</title>
    <link rel="shortcut icon" href="/img/A-Blog.ico">
  </head>    	
  <body class="easyui-layout">
  	<!-- 引入网站Top -->
    <%@ include file="/top.jsp"%> 
    
    <div data-options="region:'north',title:'上部面板',split:true" style="height: 60px;"></div>
    <div data-options="region:'east',title:'右部面板',split:true" style="width:100px;"></div>
    <div data-options="region:'west',split:true" style="width:100px;">
    	<div class="easyui-panel" data-options="title:'左侧面板',border:false,fit:true">
    	</div>
    </div>
    <div data-options="region:'center',title:'中间面板'" style="padding:5px;background:#eee;">
	    <a href="${pageContext.request.contextPath}/demo">进入演示主页</a>
    </div>
	
	<!-- 引入网站Bottom -->
	<%@ include file="/bottom.jsp"%>
  </body>
</html>
