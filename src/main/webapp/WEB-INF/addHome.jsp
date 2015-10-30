<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>A-博客</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="smartaddon-verification" content="936e8d43184bc47ef34e25e426c508fe" />
	<meta name="keywords" content="A-Blog, A-博客">
	<meta name="description" content="有一种鸟是关不住的">
    
    <!-- edit start -->
    <style>
    	form {
			margin: 0;
		}
		textarea {
			display: block;
		}
	</style>
	<link rel="stylesheet" href="uiUtil/edit/themes/default/default.css" />
	<script charset="utf-8" src="uiUtil/edit/kindeditor-min.js"></script>
	<script charset="utf-8" src="uiUtil/edit/lang/zh_CN.js"></script>
	<script>
	var options;
	var editor;
	KindEditor.ready(function(K) {
		options = {
					uploadJson : 'uiUtil/edit/jsp/upload_json.jsp',
	                fileManagerJson : 'uiUtil/edit/jsp/file_manager_json.jsp',
	                allowFileManager : true,
				};
		editor = K.create('textarea[name="home.content"]', options);
	});
	</script>    
    <!-- edit stop -->
    
    <link rel="shortcut icon" href="imgs/A-Blog.ico"/>
    <link rel="bookmark" href="imgs/A-Blog.ico"/>
    <link rel="stylesheet" href="css/site.min.css">
    <link href="css/fonts.googleapis.com.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/site.min.js"></script>	        
  	<script type="text/javascript" src="js/wsg/util.js"></script> 	
  	
  	<!-- Multiple choice -->
  	<link rel="stylesheet" href="uiUtil/chosen/chosen.css" />	
	<script src="uiUtil/chosen/jquery.min.js" type="text/javascript"></script>
  	<script src="uiUtil/chosen/chosen.jquery.js" type="text/javascript"></script>
    <script src="uiUtil/chosen/RequestJs.js" type="text/javascript"></script> 
    
  </head>
  <body>
  
      <!--nav-->
      <%@ include file="/WEB-INF/top.jsp"%> 
	  
	  <div class="docs-header">
	  	<div class="topic">
	  		<div class="topic__infos">
          		<div class="container">
            		后台管理
          		</div>
        	</div>
        </div>
      </div>
        
      <div class="container documents">
	  	<div class="example">
	  		<div class="row">
	      		<%@ include file="/WEB-INF/left.jsp"%> 
	            <div class="col-md-9">
					<div class="panel panel-default">
		              	<div class="panel-heading">添加表单<font color="red;">（注：排序号为升序排列，md号位div列宽度：1~12个值）</font></div>    
		            	<div class="panel-body">
		            		<form id="addBlog_form" onsubmit="return addBlog()" method="post">
				                <div class="" id="title_div">
			              			<input type="text" name="home.title" class="form-control" placeholder="列表标题" onkeyup="javascript:$('#title_div').attr('class', '');" /> 
			              		</div> 
			              		<label></label>
			              		<input type="number" name="home.md" class="form-control stepper-input" placeholder="列表md号(可选6,12)" title="列表md号" /> 
			              		<label></label>
			              		<input type="number" name="home.sequence" class="form-control stepper-input" placeholder="列表排序号" title="列表排序号" /> 
			              		<label></label>
			              		<textarea name="home.content" style="width:100%;height: 100px;"></textarea>
			              		<label></label>
			              		<select name="home.ids" data-placeholder="请选择显示的Blog" class="chzn-select" style="width: 100px;" multiple="multiple" tabindex="4" />
									<c:forEach items="${blogList}" var="blog">
										<option id="blog${blog.id}" value="${blog.id}">${blog.title}</option>
									</c:forEach>
								</select>
								<script type="text/javascript">$(".chzn-select").chosen();</script>	
								<br/><br/> 
				              	<button type="submit" class="btn btn-info btn-block">提交表单</button>
			              	</form>
                    	</div>	
                    </div>	    
	            </div>
	      	</div>
	  	</div>	
	  </div>
	  
	  		<script type="text/javascript">
				function addBlog() {
					editor.sync();
					if (reqN("home.title")) {
						$('#title_div').attr("class", "form-group has-error has-feedback"); 
					} else if (!reqN("home.content")) {
						$.ajax({
							type : "POST",
							url : projectName+"/HomeAction!addHome.action",
							data : $("#addBlog_form").serialize(),
							dataType : 'json',
							success : function(obj, textStatus, jqXHR) {
								if (!obj.success && obj.msg == 'GO_LOGIN') {
									
									return false;
								}
								alert(obj.msg);
							}
						});
					}
					return false;
				}
			</script>
      
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
  </body>
</html>
