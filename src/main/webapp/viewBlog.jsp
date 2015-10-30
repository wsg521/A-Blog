<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
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
    	<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=4246058331" type="text/javascript" charset="utf-8"></script>
  	</head>
  	<body>
  	
  		<!-- 引入网站Top -->
    	<%@ include file="/top.jsp"%>   
    	
    	<!-- 百度分享 -->    	
		<script>
			window._bd_share_config={
					"common":{
						"bdSnsKey":{},
						"bdText":"","bdMini":"2",
						"bdMiniList":false,"bdPic":"",
						"bdStyle":"0","bdSize":"16"
					},
					"slide":{
						"type":"slide",
						"bdImg":"1",
						"bdPos":"left",
						"bdTop":"102.5"
					},
					"image":{
						"viewList":["qzone","tsina","tqq","renren","weixin"],
						"viewText":"分享到：",
						"viewSize":"16"
					},
					"selectShare":{
						"bdContainerClass":null,
						"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]
					}
				};
			with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
		</script>
    	    	
    	<div class="desc container">
	    	<div class="desc__introduces">
	        	<h3>${home.title}</h3>
	          	${home.content}
	        </div>
	        <div class="desc__features">
	          	<div class="row">
	            	<div class="col-md-9">
						
						<font size="6">
						    ${blog.title}
						</font><br/>	
						<div style="float: right;margin-top: -30px;">
							${fn:substring(blog.createTime, 0, 19)}
						</div>				    
						    
						<hr class="dashed"/>
						<div style="float: left;">
							<c:forEach items="${blog.tag}" var="t">
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
						<br/><br/>				    
						<!-- 无格式文本 <xmp></xmp> -->
						<p>${blog.content}</p>	
						<c:choose>
						    <c:when test="${blog.paths[0] != '' && blog.paths[0] != null}">	
								<div class="jumbotron">
						            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							        	<ol class="carousel-indicators">
							           		<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							                <c:forEach items="${blog.paths}"  begin="1" varStatus="s">							                	
							                  	<li data-target="#carousel-example-generic" data-slide-to="${s.index}"></li>
							                </c:forEach>							                
							          	</ol>
							            <div class="carousel-inner">	
							            	<div class="item active"><img src="imageAction!photoOPS.action?img.id=${blog.paths[0]}"></div>						                						    		
											<c:forEach items="${blog.paths}" var="path" begin="1">							                	
							                  	<div class="item"><img src="imageAction!photoOPS.action?img.id=${path}"></div>
							                </c:forEach>
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
						<!--   <hr class="dashed"/> -->
	            		<script type="text/javascript">
							(function(){
							var url = "http://widget.weibo.com/distribution/comments.php?width=0&url=auto&border=1&brandline=y&skin=1&ralateuid=2959873807&appkey=4246058331&iframskin=1&dpc=1";
							url = url.replace("url=auto", "url=" + encodeURIComponent(document.URL)); 
							document.write('<iframe id="WBCommentFrame" src="' + url + '" scrolling="no" frameborder="0" style="width:100%"></iframe>');
							})();
							</script>
							<script src="http://tjs.sjs.sinajs.cn/open/widget/js/widget/comment.js" type="text/javascript" charset="utf-8"></script>
							<script type="text/javascript">
							window.WBComment.init({
							    "id": "WBCommentFrame"
							});
						</script>
	            	</div>
	           		<div class="col-md-3">
	           			<iframe class="share_self" scrolling="no" 
							src="http://widget.weibo.com/weiboshow/index.php?
							language=&amp;width=0&amp;height=350&amp;fansRow=2&amp;ptype=1&amp;
							speed=0&amp;skin=1&amp;isTitle=0&amp;noborder=1&amp;isWeibo=0&amp;
							isFans=1&amp;uid=2959873807&amp;verifier=e2427e0b&amp;colors=299999,
							ffffff,666666,0082cb,ecfbfd&amp;dpc=1" 
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
