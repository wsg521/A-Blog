<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>径向渐变</title>	    	
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
		    
		    //这里我们使用如下方法来生成径向渐变效果
		    var gridi = context.createRadialGradient(275, 150, 50, 275, 150, 200);
		    //以上方法参数分别为 渐变起始点x坐标，起始点y坐标，起始点半径，渐变结束点圆心x坐标，结束点圆心y坐标，结束点半径
		    
		    gridi.addColorStop(0, '#dd4814');
		    gridi.addColorStop(1, '#FFFF66');
		    
		    context.fillStyle = gridi;
		    
		    context.fillRect(0,0,550,300);
		</script>
  	</body>
</html>
