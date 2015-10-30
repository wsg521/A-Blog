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
		              	<div class="panel-heading">修改Blog</div>    
		            	<div class="panel-body">
		            		<form id="updateBlog_form" onsubmit="return updateBlog()" method="post">
			            		<div class="radio">
				            		<c:choose>
				            			<c:when test="${blog.source == 0}">
					                  		<input type="radio" name="blog.source" value="0" id="radio-1" checked="checked">
					                  		<label for="radio-1">转载</label>　
					                	</c:when>
					                	<c:when test="${blog.source != 0}">
					                  		<input type="radio" name="blog.source" value="0" id="radio-1">
					                  		<label for="radio-1">转载</label>　
					                	</c:when>
					                </c:choose>
					                <c:choose>
					                	<c:when test="${blog.source == 1}">
					                  	  	<input type="radio" name="blog.source" value="1" id="radio-2" checked="checked">
					                  	  	<label for="radio-2">翻译</label>　
					                  	</c:when>
				                  		<c:when test="${blog.source != 1}">
				                  	  		<input type="radio" name="blog.source" value="1" id="radio-22">
				                  	  		<label for="radio-22">翻译</label>　
				                  		</c:when>
				                  	</c:choose>
				                  	<c:choose>
				                  		<c:when test="${blog.source == 2}">
				                  	  		<input type="radio" name="blog.source" value="2" id="radio-3" checked="checked">
				                      		<label for="radio-3">原创</label>　
				                  		</c:when>
				                  		<c:when test="${blog.source != 2}">
				                  	  		<input type="radio" name="blog.source" value="2" id="radio-32">
				                      		<label for="radio-32">原创</label>　
				                  		</c:when>
				                  	</c:choose>
				                  	<c:choose>
				                  		<c:when test="${blog.source == 3}">
				                  	  		<input type="radio" name="blog.source" value="3" id="radio-4" checked="checked">
				                  	  		<label for="radio-4">效仿</label>
				                  		</c:when>
				                  		<c:when test="${blog.source != 3}">
				                  	  		<input type="radio" name="blog.source" value="3" id="radio-42">
				                      		<label for="radio-42">效仿</label>
				                  		</c:when>
				                  	</c:choose>
				                  	<c:choose>
				                  		<c:when test="${blog.source == 4}">
				                  	  		<input type="radio" name="blog.source" value="4" id="radio-5" checked="checked">
				                  	  		<label for="radio-5">主页显示</label>
				                  		</c:when>
				                  		<c:when test="${blog.source != 4}">
				                  	  		<input type="radio" name="blog.source" value="4" id="radio-52">
				                      		<label for="radio-52">主页显示</label>
				                  		</c:when>
				                  	</c:choose>						                  
				                </div>
				                <input type="text" id="blog_id" name="blog.id" value="${blog.id}" style="display: none;"/>
				                <input type="text" id="blog_path" name="blog.path" value="${blog.path}" style="display: none;"/>
				                <div class="" id="title_div">
			              			<input type="text" id="blog_title" name="blog.title" value="${blog.title}" class="form-control" placeholder="文章标题" onkeyup="javascript:$('#title_div').attr('class', '');"> 
			              		</div> 
			              		<label></label>
			              		<textarea id="blog_content" name="blog.content" style="width:100%;height: 100px;">${blog.content}</textarea>
			              		<br/>
			              		<label style="color: red;">查询博客列表显示内容：</label>
			              		<textarea id="blog_view" name="blog.view" style="width:100%;height: 100px;">${blog.view}</textarea>
			              		<label></label>
			              		<select id="blog_tagId" name="blog.tagId" data-placeholder="请选择技术标签" class="chzn-select" style="width: 100px;" multiple="multiple" tabindex="4">
									<c:forEach items="${tagList}" var="tag">
										<option id="tag${tag.id}" value="${tag.id}">${tag.name}</option>
									</c:forEach>
									<script type="text/javascript">
										var tags = '${blog.tagId}'.split(", ");
										for (var i = 0;i < tags.length;i++) {
											if(document.getElementById("tag"+tags[i]) != null)
												document.getElementById("tag"+tags[i]).selected="selected";
										}
									</script> 
								</select>
								<script type="text/javascript">$(".chzn-select").chosen();</script>	
			              	</form>
			              	
			              	<div class="panel-heading">
								<a href="javascript:addImage()">添加图片</a>　　
							</div>
							
				            <form enctype="multipart/form-data" method="post">
					            <div class="row">
					            	<div id="imageFile" style="position: absolute;top: -10000px;">
							    	</div>
							    	<div id="imageShow" class="col-md-12">							       		
							    	</div>
							    </div>
				            </form>
			              	
				           	<button id="sumbitBut" type="button" onclick="updateBlog()" class="btn btn-info btn-block">修改Blog</button>
                    	</div>	
                    </div>	    
	            </div>
	      	</div>
	  	</div>	
	  </div>
	  
	  		<script type="text/javascript">
		  		var Id = 1;
	  			var imgId = '${blog.path}'.split(", ");  //原图片Id
	  			var upImgId = new Array(imgId.length);    //原图片Id 与本页 Id 变量的 映射关系
	  			var upImgIds = new Array(imgId.length);   //存储修改原有图片的Id集合
	  			var upT = true;
				var imageFileDiv; //file 组件
				var imageShowDiv; //显示所选的图片
				
				function updateBlog() {
					editor.sync();
					editorV.sync();
					if (reqN("blog.title")) {
						$('#title_div').attr("class", "form-group has-error has-feedback"); 
					} else if (!reqN("blog.content") && !reqN("blog.view")) {
						document.getElementById('sumbitBut').disabled=true;
						if (Id > 1) { //文件和内容同时上传  上传之后file组件内的文件会清空（还没有找到解决的办法）
							var str = new Array(Id - 1);
							for (var i = 1;i < Id;i++) {
								if (i <= upImgIds.length && upImgIds[i-1] != 0)
									str[i]= "image" + i;
								else 
									str[i]= "image" + i;
							}
														
							var d = {"blog.source" : getRadionValue(),
									 "blog.title" : document.getElementById("blog_title").value,
									 "blog.content" : document.getElementById("blog_content").value,
									 "blog.view" : document.getElementById("blog_view").value,
									 "blog.tagId" : getSelectValue(),
									 "blog.id" : document.getElementById("blog_id").value,
									 "blog.path" : document.getElementById("blog_path").value};
							
							$.ajaxFileUpload({
				        		type : "POST",
								url : projectName+"/BlogAction!editBlog.action",
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
								url : projectName+"/BlogAction!editBlog.action",
								data : $("#updateBlog_form").serialize(),
								dataType : 'json',
								success : function(obj, textStatus, jqXHR) {
									alert(obj.msg);
									document.getElementById('sumbitBut').disabled=false;
									if (!obj.success) {										
										return false;
									}
								}
							});
						}	
					}
					return false;
				}
				function change(mId,iId,id) {
					new uploadPreview({ UpBtn: mId, DivShow: '', ImgShow: iId });
					// 记录修改原有图片的id
					if (id <= upImgIds.length && upImgIds[id-1] == 0) {
						upImgIds[id-1] = id;
						if (upT) {
							upT = false;
							document.getElementById("blog_path").value += "&" + upImgId[id-1];
						} else {
							document.getElementById("blog_path").value += ", " + upImgId[id-1];
						}
					}			
	        	}
				
				function addImage() {
					imageFileDiv = document.createElement("div");					
					imageFileDiv.innerHTML = "<input type='file' name='image' id='image" + Id + "' onclick=change('image" + Id + "','imgShow" + Id + "',"+Id+")><br/>";
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
				for (var i = 0;i < imgId.length && imgId[i] != '';i++) {						
					upImgId[Id-1] = imgId[i]; //upImgId 以 imgId的值作为索引下标 存储对应的 img Id
					upImgIds[i] = 0;          //存储更改图片Id集合的数组初始化为0
					
					imageFileDiv = document.createElement("div");					
					imageFileDiv.innerHTML = "<input type='file' name='image' id='image" + Id + "' onclick=change('image" + Id + "','imgShow" + Id + "',"+Id+")><br/>";
					imageShow = "<img id='imgShow" + Id + "' src='imageAction!photoOPS.action?img.id="+imgId[i]+"' onerror=document.getElementById('imgShow" + Id + "').src=\'img/errorImg.jpg\' onclick=document.getElementById('image" + Id + "').click()  title='点击修改图片' width='100' height='100'/> ";
					
					document.getElementById("imageFile").appendChild(imageFileDiv);
					document.getElementById("imageShow").innerHTML += imageShow;
					Id++;
				}
			</script>
      
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
  </body>
</html>
