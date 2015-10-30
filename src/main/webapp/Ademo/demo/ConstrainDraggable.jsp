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
  	 <h2>Constrain Draggable</h2>
    <p>The draggable object can only be moved within its parent container.</p>
    <div style="margin:20px 0;"></div>
    <div class="easyui-panel" style="position:relative;overflow:hidden;width:1000px;height:400px">
        <div class="easyui-draggable" data-options="onDrag:onDrag" style="width:100px;height:100px;background:#fafafa;border:1px solid #ccc;">
        </div>
    </div>
    <script>
        function onDrag(e){
            var d = e.data;
            if (d.left < 0){d.left = 0}
            if (d.top < 0){d.top = 0}
            if (d.left + $(d.target).outerWidth() > $(d.parent).width()){
                d.left = $(d.parent).width() - $(d.target).outerWidth();
            }
            if (d.top + $(d.target).outerHeight() > $(d.parent).height()){
                d.top = $(d.parent).height() - $(d.target).outerHeight();
            }
        }
    </script>
  </body>
</html>
