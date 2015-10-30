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
    <meta name="baidu-site-verification" content="kfXxbCiyAq" />
    <META HTTP-EQUIV="Refresh" CONTENT="0;URL=/BlogViewAction!index.action">
    <meta charset="utf-8">
    <title>A-博客</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="smartaddon-verification" content="936e8d43184bc47ef34e25e426c508fe" />
	<meta name="keywords" content="A-Blog, A-博客">
	<meta name="description" content="有一类“程序猿”是停不住的,因为它每股血液里都流淌着对新事物的憧憬!">
	<meta property="wb:webmaster" content="727e5baf560df317" />
	
	<link rel="stylesheet" href="css/index.css" type="text/css"></link>
	<script src="jslib/other/prefixfree.min.js"></script>    
    <style>
		.sticker{
		  width: 390px;
		}	
		.gbtags .sticker-img{
		  background: url(imgs/wsg/wsg_400_533.png);		  
		}  
  	</style>  	
    <script src="jslib/other/sticker.js"></script>  
    
    <link rel="shortcut icon" href="imgs/A-Blog.ico"/>
    <link rel="bookmark" href="imgs/A-Blog.ico"/>
    <!-- site css -->
    <link rel="stylesheet" href="css/site.min.css">
    <link href="css/fonts.googleapis.com.css" rel="stylesheet" type="text/css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="js/site.min.js"></script>
	    
	<script type="text/javascript">
		window.onload=function(){
			C=Math.cos;
			S=Math.sin;
			U=0;
			w=window;
			j=document;
			d=j.getElementById("c");
			c=d.getContext("2d");
			W=d.width=w.innerWidth;
			H=d.height;//w.innerHeight;
			c.fillRect(0,0,W,H);
			c.globalCompositeOperation="lighter";
			c.lineWidth=0.2;
			c.lineCap="round";
			var bool=0,t=0;
			d.onmousemove=function(e){
				if(window.T){
					if(D==9){
						D=Math.random()*15;f(1);
					}
					clearTimeout(T);
				}
				X=e.pageX;
				Y=e.pageY;
				a=0;
				b=0;
				A=X,B=Y;
				R=(e.pageX/W*999>>0)/999;
				r=(e.pageY/H*999>>0)/999;
				U=e.pageX/H*360>>0;
				D=9;
				g=360*Math.PI/180;
				T=setInterval(f=function(e){
					c.save();
					c.globalCompositeOperation="xor";
					if(e!=1){
						c.fillStyle="rgba(0,0,0,0.02)";
						c.fillRect(0,0,W,H);
					}
					c.restore();
					i=25;
					while(i--){
						c.beginPath();
						if(D>450||bool){
							if(!bool){
								bool=1;
							}
							if(D<0.1){
								bool=0;
							}
							t-=g;
							D-=0.1;
						}
						if(!bool){
							t+=g;D+=0.1;
						}
						q=(R/r-1)*t;
						x=(R-r)*C(t)+D*C(q)+(A+(X-A)*(i/25))+(r-R);
						y=(R-r)*S(t)-D*S(q)+(B+(Y-B)*(i/25));
						if(a){
							c.moveTo(a,b);
							c.lineTo(x,y)
						}
						c.strokeStyle="hsla("+(U%360)+",100%,50%,0.75)";
						c.stroke();
						a=x;
						b=y;
					}
					U-=0.5;
					A=X;
					B=Y;
				},16);
			}
			j.onkeydown=function(e){
				a=b=0;
				R+=0.05;
			}
			xx=w.innerWidth/2;
			yy=373;
			d.onmousemove({pageX:xx,pageY:yy});
			
			// 滚动头像 
			Sticker.init('.sticker');
			initSticker();
			window.onresize = function(){
				initSticker();
			}
			$(window).resize(function() {				 
				initSticker();
			}) 
			function initSticker() {
				document.getElementById('stickers').style.marginLeft = $(window).width() / 2 - 195 + "px";
				W=d.width=w.innerWidth;
			}
		}
	</script>

  </head>
  <body class="home">
  	
	<script type="text/javascript">
	<!--
		window.location.href = "BlogViewAction!index.action";
	//-->
	</script>
      
    <div class="docs-header header--noBackground">
    
      <!--nav-->
      <%@ include file="/top.jsp"%> 

      <canvas height="746px" width="100%" id="c"></canvas>

      <!--index-->
      
      <div style="margin-top: -746px;" class="index">
        <h1>        
          <div class="sticker gbtags" id="stickers" style="margin-left: 10%;"></div>
	      
        </h1>
        
        <h2>有一类“程序猿”是停不住的</h2>
        <h3>因为它每股血液里都流淌着对新事物的憧憬</h3>
        <p class="download-link">
          <a title="Github" class="btn btn-primary" href="https://github.com/wsg521/A-Blog" target="_blank"><i class="icon" data-icon="&#xe10e"></i>下载 (A-Blog 1.0)</a>
        </p>
        <p class="version-text">More - Version Github</p>
		
        <p class="learn-more Bootflat">
          <a href="#learn-more">Learn more <i class="icon" data-icon="&#xe035"></i></a>
        </p>
      </div>
      
	<script type="text/javascript">
		var imgId;
	</script>
	
	<c:forEach items="${homeList}" var="home" varStatus="st">	
		<c:choose>
			<c:when test="${st.count == 1}">
				<div id="learn-more" class="desc container" style="margin-top: -100px;">
		    </c:when>
		    <c:when test="${st.count != 1}">
		      	<div class="desc container">
		  	</c:when>
		</c:choose>      	
	    <div class="desc__introduces">
	    	<h3>${home.title}</h3>
	        <p>${home.content}</p>
	    </div>
	        
	    <div class="desc__features">
	 		<c:forEach items="${home.blogList}" var="blog" varStatus="status" begin="0" step="2">
	        	<c:choose>
	        		<c:when test="${home.md == 1}">
	        		</c:when>
	        		<c:when test="${home.md == 2}">
	        		</c:when>
	        		<c:when test="${home.md == 3}">
	        		</c:when>
	        		<c:when test="${home.md == 4}">
	        		</c:when>
	        		<c:when test="${home.md == 5}">
	        		</c:when>
	        		<c:when test="${home.md == 6}">
	        			<div class="row">
			            	<div class="col-md-6">			            		
			              		<div class="features__photo">	
			              			<script type="text/javascript">
			              				imgId = '${blog.path}'.split(", ");  //原图片Id
			              				document.write("<div class='carousel slide' data-ride='carousel' >");
			              				document.write("<div class='carousel-inner'>");
			              				for (var i = 0;i < imgId.length && imgId[i] != '';i++) {
			              					if (i == 0) {
			              						document.write("<div class='item active'><img src='imageAction!photoOPS.action?img.id="+imgId[i]+
			              											"' style='width: 240px; height: 210px;' /></div>");
			              					} else {
			              						document.write("<div class='item'><img src='imageAction!photoOPS.action?img.id="+imgId[i]+
          															"' style='width: 240px; height: 210px;' /></div>");
			              					}
			              				}
			              				document.write("</div></div>");
			              			</script>								
								</div>			              			
			              		<h4>${blog.title}</h4>
			              		<p title="${blog.content}">${blog.view}</p>
			            	</div>
			            		
			            	<c:choose>
			            		<c:when test="${fn:length(home.blogList) >= ((status.count-1)*2+2)}">
			            			<div class="col-md-6">
					              		<div class="features__photo">
					              			<script type="text/javascript">
					              				imgId = '${home.blogList[1+(status.count-1)*2].path}'.split(", ");  //原图片Id
					              				document.write("<div class='carousel slide' data-ride='carousel' >");
					              				document.write("<div class='carousel-inner'>");
					              				for (var i = 0;i < imgId.length && imgId[i] != '';i++) {
					              					if (i == 0) {
					              						document.write("<div class='item active'><img src='imageAction!photoOPS.action?img.id="+imgId[i]+
					              											"' style='width: 240px; height: 210px;' /></div>");
					              					} else {
					              						document.write("<div class='item'><img src='imageAction!photoOPS.action?img.id="+imgId[i]+
		          															"' style='width: 240px; height: 210px;' /></div>");
					              					}
					              				}
					              				document.write("</div></div>");
					              			</script>
					              		</div>					              			
					              		<h4>${home.blogList[1+(status.count-1)*2].title}</h4>
					              		<p title="${home.blogList[1+(status.count-1)*2].content}">${home.blogList[1+(status.count-1)*2].view}</p>
					            	</div>  
			            		</c:when>
			            	</c:choose>
			          	</div>
	        		</c:when>
	        		<c:when test="${home.md == 7}">
	        		</c:when>
	        		<c:when test="${home.md == 8}">
	        		</c:when>
	        		<c:when test="${home.md == 9}">
	        		</c:when>
	        		<c:when test="${home.md == 10}">
	        		</c:when>
	        		<c:when test="${home.md == 11}">
	        		</c:when>
	        		<c:when test="${home.md == 12}">
	        				
						<div class="jumbotron">
					    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					        	<ol class="carousel-indicators">
					            	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					         	</ol>
					     		<div class="carousel-inner">
					            	<script type="text/javascript">
			              				imgId = '${blog.path}'.split(", ");  //原图片Id
			              				for (var i = 0;i < imgId.length && imgId[i] != '';i++) {
			              					if (i == 0) {
			              						document.write("<div class='item active'><img src='imageAction!photoOPS.action?img.id="+imgId[i]+
			              											"' style='max-height: 700px;' /></div>");
			              					} else {
			              						document.write("<div class='item'><img src='imageAction!photoOPS.action?img.id="+imgId[i]+
          															"' style='max-height: 700px;' /></div>");
			              					}
			              				}
			              			</script>		
					           	</div>
					            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
					           		<span class="glyphicon glyphicon-chevron-left"></span>
					            </a>
					            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
					                <span class="glyphicon glyphicon-chevron-right"></span>
					            </a>
					    	</div>
						</div>
					      
	        		</c:when>
	        	</c:choose>
	        </c:forEach> 	          	
	    </div>  
	  </div>
      </c:forEach>
      
      <!--footer-->
      <%@ include file="/bottom.jsp"%> 

    </div>
  </body>
</html>
