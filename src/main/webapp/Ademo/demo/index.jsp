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
  	<a href="ConstrainDraggable.jsp">Constrain Draggable</a><br /><br />
  	<a href="CustomTextBox.jsp">Custom TextBox</a><br /><br />
  	<a href="loginWsg.jsp">Login Wsg</a><br /><br />
  	<a href="jeasyui.jsp">jeasyui</a>
  	<div align="center">
	<h2>Ajax Form Demo</h2>
	<div class="demo-info" style="margin-bottom:10px">
		<div>Type in input box and submit the form.</div>
	</div>
	<div class="easyui-panel" title="Ajax Form" style="width:400px;padding:10px;">
		<form id="ff" action="${pageContext.request.contextPath}/demo/AjaxRequset.jsp" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>Name:</td>
					<td><input class="easyui-textbox" type="text" name="name" data-options="required:true"></input>
					</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input class="easyui-textbox" type="text" name="email" data-options="required:true,validType:'email'"></input>
					</td>
				</tr>
				<tr>
					<td>Subject:</td>
					<td><input class="easyui-textbox" type="text" name="subject" data-options="required:true"></input>
					</td>
				</tr>
				<tr>
					<td>Message:</td>
					<td><input class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px"></input>
					</td>
				</tr>
				<tr>
					<td>Language:</td>
					<td><select class="easyui-combobox" name="language">
							<option value="ar">Arabic</option>
							<option value="bg">Bulgarian</option>
							<option value="ca">Catalan</option>
							<option value="zh-cht">Chinese Traditional</option>
							<option value="cs">Czech</option>
							<option value="da">Danish</option>
							<option value="nl">Dutch</option>
							<option value="en" selected="selected">English</option>
							<option value="et">Estonian</option>
							<option value="fi">Finnish</option>
							<option value="fr">French</option>
							<option value="de">German</option>
							<option value="el">Greek</option>
							<option value="ht">Haitian Creole</option>
							<option value="he">Hebrew</option>
							<option value="hi">Hindi</option>
							<option value="mww">Hmong Daw</option>
							<option value="hu">Hungarian</option>
							<option value="id">Indonesian</option>
							<option value="it">Italian</option>
							<option value="ja">Japanese</option>
							<option value="ko">Korean</option>
							<option value="lv">Latvian</option>
							<option value="lt">Lithuanian</option>
							<option value="no">Norwegian</option>
							<option value="fa">Persian</option>
							<option value="pl">Polish</option>
							<option value="pt">Portuguese</option>
							<option value="ro">Romanian</option>
							<option value="ru">Russian</option>
							<option value="sk">Slovak</option>
							<option value="sl">Slovenian</option>
							<option value="es">Spanish</option>
							<option value="sv">Swedish</option>
							<option value="th">Thai</option>
							<option value="tr">Turkish</option>
							<option value="uk">Ukrainian</option>
							<option value="vi">Vietnamese</option>
					</select></td>
				</tr>
				<tr>
					<td>Phone:</td>
					<td><input name="phone" class="f1 easyui-textbox"></input>
					</td>
				</tr>
				<tr>
					<td>File:</td>
					<td><input name="file" class="f1 easyui-filebox"></input>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit"></input>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<style scoped>
		.f1 {
			width: 200px;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			$('#ff').form({
				success:function(data){
					$.messager.alert('Info', data, 'info');
				}
			});
		});
	</script>
	</div>
  </body>
</html>
