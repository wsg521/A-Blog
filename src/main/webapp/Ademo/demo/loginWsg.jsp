<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC>
<html>
  <head>
	<title>欢迎来到A博客-</title>
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
	<!-- 网站顶部 ... 待添加 -->

		<!-- 登录模块 可以分离 -->
		<div id="top_loginDialog" class="easyui-dialog" data-options="title:'系统登录',modal:true,closable:false,iconCls:'icon-lock-open'">
			<form id="top_loginForm" method="post">
				<div class="easyui-panel" style="width:400px;padding:30px 70px 20px 70px;border: 0px;">
					<div style="margin-bottom:10px">
						<input class="easyui-textbox" id="loginName" name="user.loginName" style="width:100%;height:40px;padding:12px" data-options="required:true,missingMessage:'请输入登录名',prompt:'登录名...',iconCls:'icon-man',iconWidth:38">
					</div>
					<div style="margin-bottom:20px">
						<input class="easyui-textbox" id="pwd" type="password" name="user.pwd" style="width:100%;height:40px;padding:12px" data-options="required:true,missingMessage:'请输入密码',prompt:'密码...',iconCls:'icon-lock',iconWidth:38">
					</div>
					<!--  记住密码功能
					<div style="margin-bottom:20px">
						<input type="checkbox" checked="checked" />
					    <span>记住密码</span>
					</div>
					-->
					<div style="margin-bottom:20px">
						<a href="#" id="MyLogin" onclick="javascript:login();" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">登录</span> </a>
					</div>
					<div>
						<a href="#" onclick="javascript:$('#top_regDialog').dialog('open');" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">注册</span> </a>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
			/*
			$(document).keyup(function(event){
			  if(event.keyCode ==13){
			    $("#MyLogin").trigger("click");
			  }
			});
			*/

			$(function() {
				$('#top_loginForm input').bind('keyup', function(event) { /*增加回车提交功能*/
					if (event.keyCode == '13') login();
				});
			});
			function login() {
				if ($("#top_loginForm").form('validate')) {
					$.ajax({
						url : '${pageContext.request.contextPath}/UserAction!login.action',
						data : $("#top_loginForm").serialize(),
						dataType : 'json',
						success : function(obj, textStatus, jqXHR) {
							if (obj.success) {
								$('#top_loginForm input').val('');
								$('#top_loginDialog').dialog('close');
							}
							$.messager.show({
								title:'登录结果',
								msg:obj.msg,
								timeout:3000,
								showType:'show'
							});
						}
					});
				} 
			}
		</script>

		<!-- 注册模块 可以分离 -->
		<div id="top_regDialog" class="easyui-dialog" data-options="title:'注册账户',modal:true,closed:true,iconCls:'icon-user-add'">
			<form id="top_regForm" action="${pageContext.request.contextPath}/UserAction!addUser.action" method="post">
				<div class="easyui-panel" style="width:400px;padding:30px 70px 20px 70px;border: 0px;">
					<div style="margin-bottom:10px">
						<input class="easyui-textbox" name="user.loginName" style="width:100%;height:40px;padding:12px" data-options="required:true,missingMessage:'登录名必填',prompt:'请输入登录名...'">
					</div>
					<div style="margin-bottom:20px">
						<input class="easyui-textbox" type="password" id="pwd" name="user.pwd" style="width:100%;height:40px;padding:12px" data-options="required:true,validType:'length[6,10]',missingMessage:'密码必填',invalidMessage:'密码长度为6-10个字符',prompt:'登录密码...'">
					</div>
					<div style="margin-bottom:20px">
						<input class="easyui-textbox" type="password" style="width:100%;height:40px;padding:12px" data-options="required:true,validType:'eqPwd[\'#top_regForm input[id=pwd]\']',missingMessage:'重复密码',prompt:'确认密码...'">
					</div>
					<div style="margin-bottom:20px">
						<a href="javascript:ajaxReg();" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">注册</span> </a>
					</div>
					<div>
						<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-undo'" onclick="$('#top_regDialog').dialog('close');" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">登录</span> </a>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
			//普通提交
			function reg() {
				$('#top_regForm').form().submit();
				$(function(){
					$('#top_regForm').form({
						success:function(data){
							//var obj = eval("(" + data + ")"); //js原生态方法           *（都可转换成功）
							var obj = jQuery.parseJSON(data);   //jQuery内部方法     *（标准的json格式才能转换成功）**两种方法有区别   
							if (obj.success) {
								$('#top_regForm input').val('');
								$('#top_regDialog').dialog('close');
							}
							$.messager.show({
								title:'注册结果',
								msg:obj.msg,
								timeout:3000,
								showType:'show'
							});
						}
					});
				});
			}
			$(function() {
				$('#top_regForm input').bind('keyup', function(event) { /*增加回车提交功能*/
					if (event.keyCode == '13') ajaxReg();
				});
			});
			//ajax提交
			function ajaxReg() {
				if ($("#top_regForm").form('validate')) {
					$.ajax({
						url : '${pageContext.request.contextPath}/UserAction!addUser.action',
						data : $("#top_regForm").serialize(),
						dataType : 'json',
						success : function(obj, textStatus, jqXHR) {
							if (obj.success) {
								$('#top_regForm input').val('');
								$('#top_regDialog').dialog('close');
							}
							$.messager.show({
								title:'注册结果',
								msg:obj.msg,
								timeout:3000,
								showType:'show'
							});
						}
					});
				} 
			}
		</script>

  </body>
</html>
