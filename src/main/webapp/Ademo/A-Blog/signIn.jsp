<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>欢迎登录A博客</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/wsg/util.js"></script>
		<script type="text/javascript" src="jslib/wsg/util.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/default/easyui.css" type="text/css"></link>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/color.css" type="text/css"></link>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/jslib/jquery-easyui-1.4/themes/icon.css" type="text/css"></link>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/A-Blog.ico">
	</head>
	<body>
	
		<div id="signIn_top" style="font-size: 18px;">
			<c:choose>
				<c:when test="${userId == null}">
					<a href="#" style="color: red;" onclick="javascript:$('#top_loginDialog').dialog('open');">登录</a> 
					<a href="#" style="color: red;" onclick="javascript:$('#top_regDialog').dialog('open');">注册</a>
				</c:when>
				<c:when test="${userId != null}">
					<a href='http://www.baidu.com' style="color: red;">${loginName}</a>
					<a href="#" onclick="javascript:loginOut();" style="color: red;">退出</a>
				</c:when>
			</c:choose>
		</div> 

		<script type="text/javascript">
			function signTop(isTrue,name,id) {
				if (isTrue) {
					$('#signIn_top').html(
						"<a href='http://www.baidu.com' style='color: red;'>" + name + "</a> " +
						"<a href='#' onclick='javascript:loginOut();' style='color: red;'>退出</a>"
					);
				} else {
					$('#signIn_top').html(
							"<a href='#' style='color: red;' onclick=javascript:$('#top_loginDialog').dialog('open');>登录</a> " +
							"<a href='#' style='color: red;' onclick=javascript:$('#top_regDialog').dialog('open');>注册</a>"
						);
				}
			}
			function loginOut() {
				$.ajax({
					url : '${pageContext.request.contextPath}/UserAction!logout.action',
					dataType : 'json',
					success : function(obj, textStatus, jqXHR) {
						if (obj.success) {
							signTop(false,null,null);
						}
						$.messager.show({
							title : '注销',
							msg : obj.msg,
							timeout : 3000,
							showType : 'show'
						});
					}
				});
			}
			$(function() {
				$('#top_loginDialog').dialog('close');
			})
		</script>
		
		<!-- 登录模块 可以分离 -->
		<div id="top_loginDialog" class="easyui-dialog" data-options="title:'系统登录',modal:true,closable:true,iconCls:'icon-lock-open'" style="top: 120px;">
			<form id="top_loginForm" method="post">
				<div class="easyui-panel" style="width:400px;padding:30px 70px 20px 70px;border: 0px;">
					<div style="margin-bottom:10px">
						<input class="easyui-textbox" name="user.loginName" style="width:100%;height:40px;padding:12px"
							data-options="required:true,missingMessage:'请输入登录名',prompt:'登录名...',iconCls:'icon-man',iconWidth:38">
					</div>
					<div style="margin-bottom:20px">
						<input class="easyui-textbox" type="password" name="user.pwd" style="width:100%;height:40px;padding:12px"
							data-options="required:true,missingMessage:'请输入密码',prompt:'密码...',iconCls:'icon-lock',iconWidth:38">
					</div>
					<!--  记住密码功能
						        <div style="margin-bottom:20px">
						            <input type="checkbox" checked="checked">
						            <span>记住密码</span>
						        </div>
						        -->
					<div style="margin-bottom:20px">
						<a href="#" onclick="javascript:login();" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">登录</span> </a>
					</div>
					<div>
						<a href="#" onclick="javascript:$('#top_regDialog').dialog('open');" class="easyui-linkbutton" data-options="iconCls:'icon-add'" style="padding:5px 0px;width:100%;"> <span
							style="font-size:14px;">注册</span> </a>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
			$(function() {
				$('#top_loginForm input').bind('keyup', function(event) { /*增加回车提交功能*/
					if (event.keyCode == '13')
						login();
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
								signTop(true,obj.obj.loginName,obj.obj.id);
							}
							$.messager.show({
								title : '登录结果',
								msg : obj.msg,
								timeout : 3000,
								showType : 'show'
							});
						}
					});
				}
			}
		</script>

		<!-- 注册模块 可以分离 -->
		<div id="top_regDialog" class="easyui-dialog" data-options="title:'注册账户',modal:true,closed:true,iconCls:'icon-user-add'" style="top: 120px;">
			<form id="top_regForm" action="${pageContext.request.contextPath}/UserAction!addUser.action" method="post">
				<div class="easyui-panel" style="width:400px;padding:30px 70px 20px 70px;border: 0px;">
					<div style="margin-bottom:10px">
						<input class="easyui-textbox" name="user.loginName" style="width:100%;height:40px;padding:12px" data-options="required:true,missingMessage:'登录名必填',prompt:'请输入登录名...'">
					</div>
					<div style="margin-bottom:20px">
						<input class="easyui-textbox" type="password" id="pwd" name="user.pwd" style="width:100%;height:40px;padding:12px"
							data-options="required:true,validType:'length[6,10]',missingMessage:'密码必填',invalidMessage:'密码长度为6-10个字符',prompt:'登录密码...'">
					</div>
					<div style="margin-bottom:20px">
						<input class="easyui-textbox" type="password" style="width:100%;height:40px;padding:12px"
							data-options="required:true,validType:'eqPwd[\'#top_regForm input[id=pwd]\']',missingMessage:'重复密码',prompt:'确认密码...'">
					</div>
					<div style="margin-bottom:20px">
						<a href="javascript:ajaxReg();" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">注册</span> </a>
					</div>
					<div>
						<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-undo'" onclick="$('#top_regDialog').dialog('close');$('#top_loginDialog').dialog('open');" style="padding:5px 0px;width:100%;"> <span style="font-size:14px;">登录</span>
						</a>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
				//普通提交
				function reg() {
					$('#top_regForm').form().submit();
					$(function() {
						$('#top_regForm').form({
							success : function(data) {
								//var obj = eval("(" + data + ")"); //js原生态方法           *（都可转换成功）
								var obj = jQuery.parseJSON(data); //jQuery内部方法     *（标准的json格式才能转换成功）**两种方法有区别   
								if (obj.success) {
									$('#top_regForm input').val('');
									$('#top_regDialog').dialog('close');
									$('#top_loginDialog').dialog('close');
								}
								$.messager.show({
									title : '注册结果',
									msg : obj.msg,
									timeout : 3000,
									showType : 'show'
								});
							}
						});
					});
				}
				$(function() {
					$('#top_regForm input').bind('keyup', function(event) { /*增加回车提交功能*/
						if (event.keyCode == '13')
							ajaxReg();
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
									$('#top_regDialog').dialog('close');
									$('#top_loginDialog').dialog('close');
									$('#top_regForm input').val('');
									signTop(true,obj.obj.loginName,obj.obj.id);
								}
								$.messager.show({
									title : '注册结果',
									msg : obj.msg,
									timeout : 3000,
									showType : 'show'
								});
							}
						});
					}
				}
		</script>
	</body>
</html>
