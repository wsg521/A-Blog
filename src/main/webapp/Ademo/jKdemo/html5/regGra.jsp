<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>渐变区域</title>	    	
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
		    
		    //生成渐变区域
		    context.rect(0, 0, canvas.width, canvas.height);
		    
		    //添加线性渐变
		    var gridi = context.createLinearGradient(0, 0, canvas.width, canvas.height);
		    
		    //设置渐变颜色
		    gridi.addColorStop(0, 'orange');
		    
		    //设置渐变深色颜色
		    gridi.addColorStop(1, '#DD4814');
		    context.fillStyle = gridi;
		    context.fill();
		</script>
  	</body>
</html>
