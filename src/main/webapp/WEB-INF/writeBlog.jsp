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
	var editorV;
	KindEditor.ready(function(K) {
		options = {
					uploadJson : 'uiUtil/edit/jsp/upload_json.jsp',
	                fileManagerJson : 'uiUtil/edit/jsp/file_manager_json.jsp',
	                allowFileManager : true,
				};
		editor = K.create('textarea[name="blog.content"]', options);
		editorV = K.create('textarea[name="blog.view"]', options);
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
		              	<div class="panel-heading">新建Blog</div>    
		            	<div class="panel-body">
		            		<form id="writeBlog_form" onsubmit="return addBlog()" method="post">
			            		<div class="radio">
				                  <input type="radio" name="blog.source" value="0" id="radio-1">
				                  <label for="radio-1">转载</label>　
				                  <input type="radio" name="blog.source" value="1" id="radio-2">
				                  <label for="radio-2">翻译</label>　
				                  <input type="radio" name="blog.source" value="2" id="radio-3" checked="checked">
				                  <label for="radio-3">原创</label>　
				                  <input type="radio" name="blog.source" value="3" id="radio-4">
				                  <label for="radio-4">效仿</label>
				                  <input type="radio" name="blog.source" value="4" id="radio-5">
				                  <label for="radio-5">主页显示</label>
				                </div>
				                <div class="" id="title_div">
			              			<input type="text" id="blog_title" name="blog.title" class="form-control" placeholder="文章标题" onkeyup="javascript:$('#title_div').attr('class', '');"> 
			              		</div> 
			              		<label></label>
			              		<!--  
			              		<textarea name="blog.content" class="form-control" rows="8" placeholder="文章内容"></textarea>
			              		-->
			              		<textarea id="blog_content" name="blog.content" style="width:100%;height: 100px;"></textarea>
			              		<br/>
			              		<label style="color: red;">查询博客列表显示内容：</label>
			              		<textarea id="blog_view" name="blog.view" style="width:100%;height: 100px;"></textarea>
			              		
			              		<label></label>
			              		<select id="blog_tagId" name="blog.tagId" data-placeholder="请选择技术标签" class="chzn-select" style="width: 100px;" multiple="multiple" tabindex="4">
									<c:forEach items="${tagList}" var="tag">
										<option value="${tag.id}">${tag.name}</option>
									</c:forEach>
								</select>
								<script type="text/javascript">$(".chzn-select").chosen();</script>	
							</form>
							
							<div class="panel-heading">
								<a href="javascript:addImage()">添加图片</a>　　
							</div>
							
				            <form onsubmit="return upload()"  enctype="multipart/form-data" method="post">
					            <div class="row">
					            	<div id="imageFile" style="position: absolute;top: -10000px;">
							    	</div>
							    	<div id="imageShow" class="col-md-12">							       		
							    	</div>
							    </div>
				            </form>
				            
				            <button id="sumbitBut" type="button" onclick="addBlog()" class="btn btn-info btn-block">提交Blog</button>
			              	
                    	</div>	
                    </div>	    
	            </div>
	      	</div>
	  	</div>	
	  </div>
	  
	  		<script type="text/javascript">
	  			var Id = 1;
				var imageFileDiv;
				var imageShowDiv;
				function addBlog() {
					editor.sync();
					editorV.sync();
					if (reqN("blog.title")) {
						$('#title_div').attr("class", "form-group has-error has-feedback"); 
					} else if (!reqN("blog.content") && !reqN("blog.view")) {
						document.getElementById('sumbitBut').disabled=true;
						if (Id > 1) { //文件和内容同时上传  上传之后file组件内的文件会清空（还没有找到解决的办法）
							var str = new Array(Id - 1);
							for (var i = 1;i < Id;i++)
								str[i]= "image" + i;		
														
							var d = {"blog.source" : getRadionValue(),
									 "blog.title" : document.getElementById("blog_title").value,
									 "blog.content" : document.getElementById("blog_content").value,
									 "blog.view" : document.getElementById("blog_view").value,
									 "blog.tagId" : getSelectValue()};
							
							$.ajaxFileUpload({
				        		type : "POST",
								url : projectName+"/BlogAction!addBlog.action",
				    			secureuri : false, //是否是安全的提交
				    			data : d,
				    			fileElementId : str,
				    			dataType : 'json',
				    			success : function(data, status) {
				    				alert(data.msg);	
			    					document.getElementById('sumbitBut').disabled=false;	    				
				    				if(data.success) {
				    					return false;
				    				}
				    			},
				    			error : function(data, status, e) {
				    				alert('上传出错');
			    					document.getElementById('sumbitBut').disabled=false;
				    			}
				    		})
						} else { //只有内容
							$.ajax({
								type : "POST",
								url : projectName+"/BlogAction!addBlog.action",
								data : $("#writeBlog_form").serialize(),
								dataType : 'json',
								success : function(obj, textStatus, jqXHR) {
									alert(obj.msg);
									document.getElementById('sumbitBut').disabled=false;
									if (!obj.success && obj.msg == 'GO_LOGIN') {									
										return false;
									}
								}
							});
						}	
					}
					return false;
				}
				function change(mId,iId) {
	        		new uploadPreview({ UpBtn: mId, DivShow: '', ImgShow: iId });
	        	}
				
				function addImage() {
					imageFileDiv = document.createElement("div");					
					imageFileDiv.innerHTML = "<input type='file' name='image' id='image" + Id + "' onclick=change('image" + Id + "','imgShow" + Id + "')><br/>";
					imageShow = "<img id='imgShow" + Id + "' src='img/uploadImage.jpg' onclick=document.getElementById('image" + Id + "').click() width='100' height='100'/> ";
					
					document.getElementById("imageFile").appendChild(imageFileDiv);
					document.getElementById("imageShow").innerHTML += imageShow;
					Id++;
				}
				function getRadionValue() {
					var chkObjs = document.getElementsByName("blog.source");
	                for(var i=0;i<chkObjs.length;i++){
	                    if(chkObjs[i].checked){
	                       return chkObjs[i].value;
	                    }
	                }
				}
				function getSelectValue() {
					var select = document.getElementById("blog_tagId");
					var s ="";
					for(var i=0;i<select.length;i++){
	                    if(select[i].selected){
	                    	if (s == "")
	                    		s = select[i].value;
	                    	else
	                       		s += ", " + select[i].value;
	                    }
	                }
					return s;
				}
			</script>
      
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
  </body>
</html>
