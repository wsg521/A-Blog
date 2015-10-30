<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML>
<html>
  	<head>    
    	<title>写博客</title>    	
    	<link rel="stylesheet" href="Ademo/A-Blog/css/wsg.css" type="text/css">
    	<link rel="shortcut icon" href="Ademo/A-Blog/img/A-Blog.ico">
  	</head>
  	<body>
  		<!-- 引入网站Top -->
    	<%@ include file="/Ademo/A-Blog/top.jsp"%>   
    	
    	<div style="margin-left: 50px;margin-right: 50px;margin-top: 20px;">    	
			${blog.title}<br />
			<xmp>${blog.content}</xmp><br />
			<c:forEach items="${blogList}" var="blog">
				<div class="round" style="width: 500px;padding: 25px;">
					<a href="${pageContext.request.contextPath}/Ademo/A-Blog/BlogViewAction!selectBlog.action?blog.id=${blog.id}">
		    			<font style="font-size: 35px;">${blog.title}</font>
		    		</a>
		    	</div>
		    	<div style="margin-left: 60px;margin-bottom: 30px;color: #FFF;padding: 15px;background: orange;">
					<font style="font-size: 18px;"><xmp>${blog.content}</xmp></font>
					<div>
						<a href="${pageContext.request.contextPath}/Ademo/A-Blog/BlogAction!gainBlog.action?blog.id=${blog.id}">编辑</a>
					</div>
				</div>
			</c:forEach>	                
	    </div>    
    	
    	<!-- 引入网站Bottom -->
    	<%@ include file="/Ademo/A-Blog/bottom.jsp"%>
  	</body>
</html>
