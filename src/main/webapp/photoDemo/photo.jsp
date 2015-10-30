<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <base href="<%=basePath%>">
	<title>Photo List</title>
	<link rel="shortcut icon" href="imgs/A-Blog.ico">     
	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="photoDemo/css/default.css" />    
	<script type="text/javascript" src="photoDemo/js/jquery.shuffle-images.js"></script>		
	<!-- Edit Below -->		
	<link rel="stylesheet" type="text/css" href="photoDemo/css/style.css" />	  
  </head>  
  <body>  		
  		<script type="text/javascript">
    		var photos = ['img/thumbnail-1.jpg','img/thumbnail-2.jpg','img/thumbnail-3.jpg','img/thumbnail-4.jpg',
    		              'imgs/datu1.jpg','imgs/datu2.jpg','imgs/bd_wsg1.jpg','imgs/bd_wsg2.jpg','imgs/bjslgyyq1.jpg',
    		              'imgs/bjslgyyq2.jpg'];
    	</script>
	<div class="container">
		<!-- Top Navi -->			
		<div class="header">				
			<h1>jQuery Shuffle Images: Default Settings</h1>				
		</div>			
		<div class="menu">				
			<a class="active" href="photoDemo/index.html">Demo 1</a>				
			<a href="photoDemo/index2.html">Demo 2</a>				
			<a href="photoDemo/index3.html">Demo 3</a>				
			<a href="photoDemo/index4.html">Demo 4</a>				
			<a href="photoDemo/index5.html">Demo 5</a>			
		</div>		
    	
		<div class="main">    
			<!-- *图片高度问题 -->
			<div class="shuffle-group">          
				<div class="shuffle-me">    	      
					<a href="#" class="info" target="_blank">
						<h1>Incredible India</h1><h2>The Taj Mahal and Jaipur</h2>
					</a>    	      
					<div class="images">  	          
						<img src="imgs/bd_wsg1.jpg">  	          
						<img src="photoDemo/images/8.jpg">  	          
						<img src="photoDemo/images/9.jpg">  	        
					</div>  	      
				</div>    	    
				<div class="shuffle-me">    	      
					<a href="#" class="info" target="_blank">
						<h1>Soweto on a Bike</h1><h2>Soloing Africa Part 1</h2>
					</a>    	      
					<div class="images">  	          
						<img src="photoDemo/images/1.jpg">  	          
						<img src="imgs/bd_wsg1.jpg">  	          
						<img src="photoDemo/images/3.jpg">  	        
					</div>  	      
				</div>  	      
				<div class="shuffle-me">    	      
					<a href="#" class="info" target="_blank">
						<h1>The Himalaya</h1><h2>Annapurna Base Camp</h2>
					</a>    	      
					<div class="images">  	          
						<img src="photoDemo/images/4.jpg">  	          
						<img src="photoDemo/images/5.jpg">  	          
						<img src="imgs/bd_wsg1.jpg">  	        
					</div>  	      
				</div>  	    
			</div>	  
			
			<script type="text/javascript">        			
			    var div;
			    var title = "杭州->苏州->上海";
			    var content = "世界虽大，钱包虽小，也挡不住我渴望游览美景的步伐......";
		        function outPrint(id) {		        	
		        	document.write("<div class='shuffle-group'>");
		        	
		        	div = "<div class='shuffle-me' " + 
		        				"onmouseover=\"document.getElementById(\'text" + id + "\').style.display=\'\'\" " +
								"onmouseout=\"document.getElementById(\'text" + id + "\').style.display=\'none\'\" >";
					document.write(div);
		        	document.write("<a href='#' id='text" + id + "' style='display: none;' class='info' target='_blank'>");
		        	document.write("<h1>" + title + "</h1><h2>" + content + "</h2>");
		        	document.write("</a> <div class='images'> ");
		        	document.write("<img src='" + getPhotoId() + "'>");
		        	document.write("<img src='" + getPhotoId() + "'>");
		        	document.write("<img src='" + getPhotoId() + "'>");
		        	document.write("</div></div>");
		        	
		        	id += "-1";
		        	div = "<div class='shuffle-me' " + 
			    				"onmouseover=\"document.getElementById(\'text" + id + "\').style.display=\'\'\" " +
								"onmouseout=\"document.getElementById(\'text" + id + "\').style.display=\'none\'\" >";
					document.write(div);
			    	document.write("<a href='#' id='text" + id + "' style='display: none;' class='info' target='_blank'>");
			    	document.write("<h1>" + title + "</h1><h2>" + content + "</h2>");
			    	document.write("</a> <div class='images'> ");
			    	document.write("<img src='" + getPhotoId() + "'>");
			    	document.write("<img src='" + getPhotoId() + "'>");
			    	document.write("<img src='" + getPhotoId() + "'>");
			    	document.write("</div></div>");
					
			    	id += "-2";
		        	div = "<div class='shuffle-me' " + 
			    				"onmouseover=\"document.getElementById(\'text" + id + "\').style.display=\'\'\" " +
								"onmouseout=\"document.getElementById(\'text" + id + "\').style.display=\'none\'\" >";
					document.write(div);
			    	document.write("<a href='#' id='text" + id + "' style='display: none;' class='info' target='_blank'>");
			    	document.write("<h1>" + title + "</h1><h2>" + content + "</h2>");
			    	document.write("</a> <div class='images'> ");
			    	document.write("<img src='" + getPhotoId() + "'>");
			    	document.write("<img src='" + getPhotoId() + "'>");
			    	document.write("<img src='" + getPhotoId() + "'>");
			    	document.write("</div></div>");			    	
			    	
			    	document.write("</div>");
	        	}
	        	function getPhotoId() {
	        		return photos[Math.ceil(Math.random()*photos.length)-1];
	        	}
	        </script> 
	        <script type="text/javascript">
	        	var count = 10;
	        	for (var id = 1;id <= 10;id++) {
	        		outPrint(id);
	        	}
	        </script>     
    	</div>
    	<script type="text/javascript">
	        $(".shuffle-me").shuffleImages({
	           target: ".images > img"
	         });
	    </script>
	</div><!-- Container -->
  </body>
</html>
