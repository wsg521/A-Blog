<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>画布绘图</title>	    	
    	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/A-Blog.ico">
    	<link rel="stylesheet" href="login.css" type="text/css"></link>
    	<style>    	
/*为了更好的看出来绘制图片的参数定义，我们添加一些css*/
canvas{
  margin:0;
  padding:0;
  border: 1px solid  #AAA; //现在大家可以看出来drawImage的参数定义效果
}
</style>

    </head>  
  	<body>
  	
  		<!-- top start -->
  		<%@ include file="top.jsp" %>
  		
	  	<!-- HTML源代码 //-->
		<canvas id="gbcanvas" width="550" height="300"></canvas>
		<canvas id="gbcanvass" width="550" height="300"></canvas>
		<script type="text/javascript">
		function image1() {
			/*Javascript源代码*/
			var canvas = document.getElementById('gbcanvas'), // 这里通过gbCanvas获取canvas对象
		    context = canvas.getContext('2d'); //这里通过canvas获取处理API的上下文context
		    
		    //定义一个图像对象
		    var imgobj = new Image();
		    
		    //为了确保图片在被绘制之前已经加载完毕，使用onload回调方法，如下：
		    imgobj.onload = function(){
		      //图片加载完毕后，绘制
		      context.drawImage(imgobj, 100, 50); //第二和第三个参数分别是图片左上角相对于canvas左上角的left距离和top距离
		    
		    }
		    
		    imgobj.src = 'http://www.gbtags.com/gb/networks/uploadimg/d72f284c-c729-4de7-ba3e-b93587cb1446.jpg';
		}
		function image2() {
			/*Javascript源代码*/
			var canvas = document.getElementById('gbcanvass'), // 这里通过gbCanvas获取canvas对象
			    context = canvas.getContext('2d'); //这里通过canvas获取处理API的上下文context
			    
			    var imgobj = new Image();

			    imgobj.onload = function(){
			      context.drawImage(imgobj, 50, 50, 200, 125 ); //最后两个参数分别是图片高和宽
			    }
			    
			    imgobj.src = 'http://www.gbtags.com/gb/networks/uploadimg/d72f284c-c729-4de7-ba3e-b93587cb1446.jpg';
		}
		</script>
		<div >
			<input type="button" value="image1" onclick="image1()">
			<input type="button" value="image2" onclick="image2()">
		</div>
  	</body>
</html>
