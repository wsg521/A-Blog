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
		editor = K.create('textarea[name="life.content"]', options);
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
		              	<div class="panel-heading">新建Life</div>    
		            	<div class="panel-body">
		            		<form id="writeLife_form" onsubmit="return addLife()" method="post" enctype="multipart/form-data">
				                <div class="" id="motif_div">
			              			<input id="life_motif" type="text" name="life.motif" class="form-control" placeholder="生活脚印主题..." onkeyup="javascript:$('#motif_div').attr('class', '');"> 
			              		</div> 
			              		<label></label>
			              		<textarea id="life_content" name="life.content" style="width:100%;height: 100px;" placeholder="生活脚印内容..."></textarea>
			              		<!--  所属类别多选框
			              		<label></label>
			              		<select name="life.cate_id" data-placeholder="请选择技术标签" class="chzn-select" style="width: 100px;" multiple="multiple" tabindex="4">
									<c:forEach items="${cateList}" var="tag">
										<option value="${cate.id}">${cate.name}</option>
									</c:forEach>
								</select>
								<script type="text/javascript">$(".chzn-select").chosen();</script>	
								<br/>
								-->
								<!--  图片路径
								<input type="text" name="blog.path" id="blog_path" style="display: none;"/>
								-->								
							</form>
							
							 <div class="panel-heading">
								<a href="javascript:addImage()">添加图片</a>
							 </div>
											           
							<div class="row">
					            <div id="imageFile" style="position: absolute;top: -10000px;"></div>
							    <div id="imageShow" class="col-md-12"></div>
							</div>
				            
				            <button id="sumbitBut" type="button" onclick="addLife()" class="btn btn-info btn-block">提交Life</button>
			              	
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
				function addLife() {
					editor.sync();
					if (reqN("life.motif")) {
						$('#motif_div').attr("class", "form-group has-error has-feedback"); 
					} else if (!reqN("life.content")) {
						document.getElementById('sumbitBut').disabled=true;
						if (Id > 1) { //文件和内容同时上传  上传之后file组件内的文件会清空（还没有找到解决的办法）
							var str = new Array(Id - 1);
							for (var i = 1;i < Id;i++)
								str[i]= "image" + i;		
														
							var d = {"life.motif" : document.getElementById('life_motif').value,
									 "life.content" : document.getElementById('life_content').value};
							
							$.ajaxFileUpload({
				        		type : "POST",
								url : projectName+"/LifeAction!addLife.action",
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
								url : projectName+"/LifeAction!addLife.action",
								data : $("#writeLife_form").serialize(),
								dataType : 'json',
								success : function(obj, textStatus, jqXHR) {
									alert(obj.msg);
									document.getElementById('sumbitBut').disabled=false;
									if (obj.success) {
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
					imageShow = "<img id='imgShow" + Id + "' src='img/uploadImage.jpg' onclick=document.getElementById('image" + Id + "').click() title='点击修改图片' width='100' height='100'/> ";
					
					document.getElementById("imageFile").appendChild(imageFileDiv);
					document.getElementById("imageShow").innerHTML += imageShow;
					Id++;
				}
			</script>
      
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
  </body>
</html>
