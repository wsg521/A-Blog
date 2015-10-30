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
		              	<div class="panel-heading">修改Life</div>   
		            	<div class="panel-body">
		            		<form id="updateLife_form" onsubmit="return updateLife()" method="post">			            			 		            		
				                <input type="text" id="life_id" name="life.id" value="${life.id}" style="display: none;"/>
				                <input type="text" id="life_imgId" name="life.imgId" value="${life.imgId}" style="display: none;" />
				                <div class="" id="title_div">
			              			<input type="text" id="life_motif" name="life.motif" value="${life.motif}" class="form-control" placeholder="生活脚印主题..." onkeyup="javascript:$('#title_div').attr('class', '');"> 
			              		</div> 
			              		<label></label>
			              		<textarea id="life_content" name="life.content" style="width:100%;height: 100px;">${life.content}</textarea>
			              	</form>
			              	<div class="panel-heading">
								<a href="javascript:addImage()">添加图片</a>
							 </div>
			              	<div class="row">
					            <div id="imageFile" style="position: absolute;top: -10000px;"></div>
							    <div id="imageShow" class="col-md-12"></div>
							</div>
							<button id="sumbitBut" type="button" onclick="updateLife()" class="btn btn-info btn-block">修改Life</button>
                    	</div>	
                    </div>	    
	            </div>
	      	</div>
	  	</div>	
	  </div>
	  
	  		<script type="text/javascript">
	  			var Id = 1;
	  			var imgId = '${life.imgId}'.split(", ");  //原图片Id
	  			var upImgId = new Array(imgId.length);    //原图片Id 与本页 Id 变量的 映射关系
	  			var upImgIds = new Array(imgId.length);   //存储修改原有图片的Id集合
	  			var upT = true;
				var imageFileDiv; //file 组件
				var imageShowDiv; //显示所选的图片
	  			
				function updateLife() {
					editor.sync();
					if (reqN("life.motif")) {
						$('#title_div').attr("class", "form-group has-error has-feedback"); 
					} else if (!reqN("life.content")) {
						document.getElementById('sumbitBut').disabled=true;
						if (Id > 1) { //文件和内容同时上传  上传之后file组件内的文件会清空（还没有找到解决的办法）
							var str = new Array(Id - 1);
							for (var i = 1;i < Id;i++) {
								if (i <= upImgIds.length && upImgIds[i-1] != 0)
									str[i]= "image" + i;
								else 
									str[i]= "image" + i;
							}
														
							var d = {"life.id" : document.getElementById('life_id').value,
									 "life.imgId" : document.getElementById('life_imgId').value, 
									 "life.motif" : document.getElementById('life_motif').value,
									 "life.content" : document.getElementById('life_content').value};
							
							$.ajaxFileUpload({
				        		type : "POST",
								url : projectName+"/LifeAction!editLife.action",
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
								url : projectName+"/LifeAction!editLife.action",
								data : $("#updateLife_form").serialize(),
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
				function change(mId,iId,id) {
	        		new uploadPreview({ UpBtn: mId, DivShow: '', ImgShow: iId });
					// 记录修改原有图片的id
					if (id <= upImgIds.length && upImgIds[id-1] == 0) {
						upImgIds[id-1] = id;
						if (upT) {
							upT = false;
							document.getElementById("life_imgId").value += "&" + upImgId[id-1];
						} else {
							document.getElementById("life_imgId").value += ", " + upImgId[id-1];
						}
					}						
	        	}
				function addImage() {
					imageFileDiv = document.createElement("div");					
					imageFileDiv.innerHTML = "<input type='file' name='image' id='image" + Id + "' onclick=change('image" + Id + "','imgShow" + Id + "',"+Id+")><br/>";
					imageShow = "<img id='imgShow" + Id + "' src='img/uploadImage.jpg' onclick=document.getElementById('image" + Id + "').click() title='点击修改图片' width='100' height='100'/> ";
					
					document.getElementById("imageFile").appendChild(imageFileDiv);
					document.getElementById("imageShow").innerHTML += imageShow;
					Id++;
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
