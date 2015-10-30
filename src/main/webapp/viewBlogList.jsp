<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html xmlns:wb=“http://open.weibo.com/wb”>
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
		<!--选填-->
		<meta property="og:image" content="imgs/wsg/wsg_246_360.png" />
		<meta property="og:image:width" content="246">
		<meta property="og:image:height" content="360">
	    
	    <link rel="shortcut icon" href="imgs/A-Blog.ico"/>
	    <link rel="bookmark" href="imgs/A-Blog.ico"/>
	    <link rel="stylesheet" href="css/site.min.css">
	    <link href="css/fonts.googleapis.com.css" rel="stylesheet" type="text/css">
	    
	    <script type="text/javascript" src="js/site.min.js"></script>
	    <!-- weibo依赖js -->
    	<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
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
	          	<div class="row">	          		
	            	<div class="col-md-9">
						<c:forEach items="${blogList}" var="blog">
							<a href="${pageContext.request.contextPath}/BlogViewAction!viewBlogById.action?blog.id=${blog.id}" 
							   style="font-size: 23px;">
								${blog.title}
							</a> 
							<div style="float: right;">
								${fn:substring(blog.createTime, 0, 19)}
							</div>
							
						    <hr class="dashed"/>
						    <div style="float: left;">
							    <c:forEach items="${blog.tag}" var="t" varStatus="i">
							    	 <c:forEach items="${tagList}" var="tag">
							    	 	<c:choose>
							    	 		<c:when test="${t == tag.id}">
							    	 			<c:choose>
							              			<c:when test="${i.index % 7 == 0}">
							              				<span class="badge badge-block">${tag.name}</span>
							              			</c:when>
							              			<c:when test="${i.index % 7 == 1}">
							              				<span class="badge badge-default">${tag.name}</span>
							              			</c:when>
							              			<c:when test="${i.index % 7 == 2}">
							              				<span class="badge badge-primary">${tag.name}</span>
							              			</c:when>
							              			<c:when test="${i.index % 7 == 3}">
							              				<span class="badge badge-success">${tag.name}</span>
							              			</c:when>
							              			<c:when test="${i.index % 7 == 4}">
							              				<span class="badge badge-info">${tag.name}</span>
							              			</c:when>
							              			<c:when test="${i.index % 7 == 5}">
							              				<span class="badge badge-warning">${tag.name}</span>
							              			</c:when>
							              			<c:when test="${i.index % 7 == 6}">
							              				<span class="badge badge-danger">${tag.name}</span>
							              			</c:when>
						              			</c:choose>
							    	 		</c:when>
							    	 	</c:choose>
							    	 </c:forEach>						    	 
							    </c:forEach>
						    </div>
						    <!-- 新浪赞组件 -->
						    <div style="float: right;">
								<wb:like appkey="4246058331"></wb:like>
							</div>
							<!-- 腾讯赞组件 -->
							<!--  
								<a version="1.0" class="qzOpenerDiv" 
									href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_likeurl" target="_blank">赞</a>
								<script  src="http://qzonestyle.gtimg.cn/qzone/app/qzlike/qzopensl.js#jsdate=20111107&style=2&showcount=1&width=130&height=30" 
									charset="utf-8" defer="defer" ></script>
							-->
						   	<br/><br/>
						    <!-- 无格式文本 <xmp></xmp> -->
						    <p>${blog.view}</p>
						    
						    <hr class="dashed"/>						
							
						</c:forEach>							 
	            	</div>
	           		<div class="col-md-3">
						<iframe width="100%" height="550" class="share_self"  
							frameborder="0" scrolling="no" 
							src="http://widget.weibo.com/weiboshow/index.php?
							language=&width=0&height=550&fansRow=2&ptype=1&
							speed=0&skin=1&isTitle=1&noborder=1&isWeibo=1&
							isFans=1&uid=2959873807&verifier=e2427e0b&dpc=1">
						</iframe>
	           			<iframe class="share_self" scrolling="no" 
							src="http://widget.weibo.com/weiboshow/index.php?
							language=&amp;width=0&amp;height=350&amp;fansRow=2&amp;ptype=1&amp;
							speed=0&amp;skin=1&amp;isTitle=1&amp;noborder=1&amp;isWeibo=0&amp;
							isFans=1&amp;uid=2959873807&amp;verifier=e2427e0b&amp;dpc=1" 
							frameborder="0" height="350" width="100%">
						</iframe>
	              		<h3 class="example-title">技术领域</h3>
	              		
	              		<c:forEach items="${tagList}" var="tag" varStatus="i">
	              			<c:choose>
	              			<c:when test="${i.index % 7 == 0}">
	              				<button class="btn btn-block">${tag.name}</button>
	              			</c:when>
	              			<c:when test="${i.index % 7 == 1}">
	              				<button class="btn btn-default btn-block">${tag.name}</button>
	              			</c:when>
	              			<c:when test="${i.index % 7 == 2}">
	              				<button class="btn btn-primary btn-block">${tag.name}</button>
	              			</c:when>
	              			<c:when test="${i.index % 7 == 3}">
	              				<button class="btn btn-success btn-block">${tag.name}</button>
	              			</c:when>
	              			<c:when test="${i.index % 7 == 4}">
	              				<button class="btn btn-info btn-block">${tag.name}</button>
	              			</c:when>
	              			<c:when test="${i.index % 7 == 5}">
	              				<button class="btn btn-warning btn-block">${tag.name}</button>
	              			</c:when>
	              			<c:when test="${i.index % 7 == 6}">
	              				<button class="btn btn-danger btn-block">${tag.name}</button>
	              			</c:when>
	              			</c:choose>
	              		</c:forEach>
	            	</div>
          		</div>
          	</div>
     	</div>
    	
    	<!-- 引入网站Bottom -->
    	<%@ include file="/bottom.jsp"%>
  	</body>
</html>
