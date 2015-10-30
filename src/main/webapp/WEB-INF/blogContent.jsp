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
    
    <script type="text/javascript" src="uiUtil/upload/ajaxfileupload.js"></script>  
  	<script type="text/javascript" src="uiUtil/uploadPreview/uploadPreview.js"></script>
     
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
		              	<div class="panel-heading">内容页</div>    
		            	<div class="panel-body">
		            		<form id="writeBlog_form" onsubmit="return editorBlog()" method="post">
			            		<div class="" id="title_div">
			              			<input type="text" name="home.title" value="${home.title}" class="form-control" placeholder="内容标题" onkeyup="javascript:$('#title_div').attr('class', '');">
			              			<input name="home.id" value="${home.id}" style="display: none;"/> 
			              		</div> 
			              		<label></label>
			              		<textarea name="home.content" style="width:100%;height: 100px;">${home.content}</textarea>
			              	</form>	
			              	<button type="button" onclick="editorBlog()" class="btn btn-info btn-block">修改内容页</button>						
                    	</div>	
                    </div>	    
	            </div>
	      	</div>
	  	</div>	
	  </div>
	  
	  <script type="text/javascript">
	  		function editorBlog() {
				editor.sync();
				if (reqN("home.title")) {
					$('#title_div').attr("class", "form-group has-error has-feedback"); 
				} else if (!reqN("home.content")) {
					$.ajax({
						type : "POST",
						url : projectName+"/HomeAction!updateHome.action",
						data : $("#writeBlog_form").serialize(),
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
