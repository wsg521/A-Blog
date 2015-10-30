<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>背景图案</title>	    	
    	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/A-Blog.ico">
    	<link rel="stylesheet" href="login.css" type="text/css"></link>
    </head>  
  	<body>
  	
  		<!-- top start -->
  		<%@ include file="top.jsp" %>
  		
	  	<!-- HTML源代码 //-->
		<canvas id="gbcanvas" width="550" height="300"></canvas>
		<script type="text/javascript">
		/*Javascript源代码*/
		var canvas = document.getElementById('gbcanvas'), // 这里通过gbCanvas获取canvas对象
		    context = canvas.getContext('2d'); //这里通过canvas获取处理API的上下文context
		    
		    //生成背景图案
		    var imageobj = new Image();
		    imageobj.onload = function(){
		      //这里确保图片加载后在执行HTML5画布的相关方法
		      var pattern = context.createPattern(imageobj, 'repeat');
		      context.rect(0,0, 550, 300);
		      context.fillStyle = pattern;
		      context.fill();
		    }
		    //设置背景图案的地址
		    imageobj.src = 'http://www.gbtags.com/gb/networks/uploadimg/d72f284c-c729-4de7-ba3e-b93587cb1446.jpg';
		</script>
  	</body>
</html>
