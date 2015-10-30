<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  	<head>    
    	<meta charset="utf-8">
	    <title>A-博客</title>
	    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
	    <meta name="smartaddon-verification" content="936e8d43184bc47ef34e25e426c508fe" />
		<meta name="keywords" content="A-Blog, A-博客">
		<meta name="description" content="有一种鸟是关不住的">
		<meta property="wb:webmaster" content="727e5baf560df317" /> 	
    	<!--必填-->
		<meta property="og:type" content="article" />
		<meta property="og:url" content="http://http://202.196.38.108:8080/A-Blog/BlogViewAction!viewBlog.action" />
		<meta property="og:title" content="更多精彩内容，尽在A-Blog" />
		<meta property="og:description" content="高端的技术，精彩的生活，顶尖的人才" />
        
    	<link rel="shortcut icon" href="imgs/A-Blog.ico"/>
	    <link rel="bookmark" href="imgs/A-Blog.ico"/>
	    <link rel="stylesheet" href="css/site.min.css">
	    <link href="css/fonts.googleapis.com.css" rel="stylesheet" type="text/css">
	    <link rel="stylesheet" href="css/photoStyle.css" type="text/css"></link>
	    
	    <script type="text/javascript" src="js/site.min.js"></script>
    	
    	<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
    	<script src="uiUtil/chosen/jquery.min.js" type="text/javascript"></script>
  		<script src="uiUtil/chosen/chosen.jquery.js" type="text/javascript"></script>	        
  		<script type="text/javascript" src="js/wsg/util.js"></script>   		
  	
  	</head>
  	<body>
  	
  		<!-- 引入网站Top -->
    	<%@ include file="/top.jsp"%>   
    	
    	<div class="desc container">
	    	<div class="desc__introduces">
	    		<h3>${home.title}</h3>
	    		<!-- <p>${home.content}</p> -->
	          	${home.content}
	        </div>
	        <div class="desc__features">	          		
	        	<div id="mainDiv" class="example">
	        			<script type="text/javascript">   	        			
	        				var html;
			                var img;
			                var div;
			                var img = new Array();
		        			function outPrint(num,id,motif,content,imgId) {			        				
		        				div = document.createElement("div");
		        				if (num==1)
		        					div.setAttribute("class", "col-sm-6 col-md-3");
		        				else if (num==2)
		        					div.setAttribute("class", "col-sm-6 col-md-4");
		        				else if (num==3)
		        					div.setAttribute("class", "col-sm-6");
		        				
		        				html = "<div class='jumbotron' " +
												"onmouseover=\"document.getElementById(\'div"+id+"\').style.display=\'\'\" " +
												"onmouseout=\"document.getElementById(\'div"+id+"\').style.display=\'none\'\" >" +
			    							"<div id='carousel-example-generic"+id+"' class='carousel slide' data-ride='carousel' >" +
			    								"<div class='carousel-inner'>";
			    				
			    			 	img = imgId.split(", ");  //图片id分割
			    			    for (var i = 0;i < img.length,img[i] != null;i++) {
			    			    	if (i == 0)
				    			    	html += "<div class='item active'>" +
													"<img id='"+i+"img"+id+"' class='img-rounded' src='imageAction!photoOPS.action?img.id="+img[i]+"' onerror=document.getElementById('"+i+"img"+id+"').src='img/errorImg.jpg' />" +
									   	    	"</div>";
									else
										html += "<div class='item'>" +
													"<img id='"+i+"img"+id+"' class='img-rounded' src='imageAction!photoOPS.action?img.id="+img[i]+"' onerror=document.getElementById('"+i+"img"+id+"').src='img/errorImg.jpg' />" +
									   	    	"</div>";
			    			    }
			    									
			    			    html +=			"</div>" +
			    								//左右切换照片按钮
			    								//"<a class='left carousel-control' href='#carousel-example-generic"+id+"' data-slide='prev'>" +
			    								//	"<span class='glyphicon glyphicon-chevron-left'></span>" +
			    								//"</a>" +
			    								//"<a class='right carousel-control' href='#carousel-example-generic"+id+"' data-slide='next'>" +
			    								//	"<span class='glyphicon glyphicon-chevron-right'></span>" +
			    								//"</a>" +
			    								"<a id='div"+id+"' style='display: none;' class='info' >" +
				    								"<h1>"+motif+"</h1>" +
				    								"<h3>"+content+"</h3>" +
				    							"</a>" +
			    							"</div>" +			    							
			    						"</div>";
			    						
			    				div.innerHTML = html;
			    				document.getElementById("mainDiv").appendChild(div);
		        				//document.write(html);
	        				}
	        			</script>        			
	        			<script type="text/javascript">
	        				function creatPhoto(id,motif,content,imgId) {
			        			switch (Math.ceil(Math.random()*4)) {
									case 1:	outPrint(1,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId);									
										break;
									case 2:	outPrint(2,id,motif,content,imgId); 
											outPrint(2,id,motif,content,imgId); 
											outPrint(2,id,motif,content,imgId);										
										break;
									case 3:	outPrint(3,id,motif,content,imgId); 
											outPrint(3,id,motif,content,imgId);
										break;
									case 4:	outPrint(3,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId); 
											outPrint(1,id,motif,content,imgId);
										break;
									default:	
										break;
								}
	        				}
	        					        				
	        				//获取数据
	        				var life;
	        				var li = 0; //记录life 索引下标
	        				$.ajax({
								type : "POST",
								url : projectName+"/LifeAction!getViewLife.action",
								dataType : 'json',
								success : function(obj, textStatus, jqXHR) {
									if (obj != null) {
										life = obj;
										addPhoto();
									}
								}
							});	        				
	        				//添加图片
	        				function addPhoto() {
		        				for (var i = 0;li < life.length,i < 5;li++,i++) {
		        					switch (Math.ceil(Math.random()*4)) {
									case 1:	outPrint(1,life[li].id,life[li].motif,life[li].content,life[li].imgId); 								
										break;
									case 2:	outPrint(2,life[li].id,life[li].motif,life[li].content,life[li].imgId); 										
										break;
									case 3:	outPrint(3,life[li].id,life[li].motif,life[li].content,life[li].imgId);
										break;
									case 4:	outPrint(3,life[li].id,life[li].motif,life[li].content,life[li].imgId); 
										break;
									default:	
										break;
								}
		        				}
		        				//creatPhoto(life[li].id,life[li].motif,life[li].content,life[li].imgId);
	        				}
	        				//滑动鼠标自动加载图片
	        				$(window).scroll(function() {
	        		            // 当滚动到最底部以上100像素时， 加载新内容
	        		            //var h = document.getElementById("but").offsetTop;
	        		            if ($(document).height() - $(this).scrollTop() - $(this).height() < 50 && li < life.length) {
	        		            	addPhoto();
	        		            }
	        		        });
	        			</script>
	        	</div>
	        </div>	      
     	</div>
    	
    	<!-- 引入网站Bottom -->
    	<%@ include file="/bottom.jsp"%>
  	</body>
</html>
