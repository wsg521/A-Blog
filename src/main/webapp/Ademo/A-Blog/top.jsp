<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"%>
	
	<style type="text/css">
        .top_div{
            position:fixed;
            margin-left: -8px;
            margin-top: -8px;
            width: 1370px;
        }
    </style>
    
	<a name="Top" style="margin-top: -8px;position:absolute;"></a>
	<!-- 网站顶部 ... 待添加 -->
	<div class="top_div" style="height:50px;background-color: #303030;z-index:99999;">	
		<div style="padding-top: 0px;padding-left: 10%;position:absolute;">
			<img src="${pageContext.request.contextPath}/Ademo/A-Blog/img/A-Blog.ico" style="width: 60px;height: 30px;padding-top: 10px;">
			<img src="${pageContext.request.contextPath}/Ademo/A-Blog/img/wsg/wsg.png" style="width: 60px;height: 30px;">
			<img src="${pageContext.request.contextPath}/Ademo/A-Blog/img/A-Blogs.ico" style="width: 60px;height: 30px;">
		</div>
					
		<div style="padding-top: 13px;padding-left: 85%;position:absolute;">
			<%@ include file="/Ademo/A-Blog/signIn.jsp"%>
		</div>
		
		<div style="padding-top: 13px;padding-left: 30%;font-size: 18px;position:absolute;">
			<a href="${pageContext.request.contextPath}/Ademo/A-Blog" style="color: white;">首页</a>　
			<a href="${pageContext.request.contextPath}/BlogViewAction!viewBlog.action" style="color: white;">A-博客</a>　
			<a href="${pageContext.request.contextPath}/Ademo/A-Blog/writeBlog.jsp" style="color: white;">write 博客</a>　
			<a href="#" style="color: white;">交流</a>　
			<a href="#" style="color: white;">足迹</a>　
			<a href="#" style="color: white;">小窝</a>　
			<a href="${pageContext.request.contextPath}/Ademo/A-Blog/demo" style="color: white;">demo</a>				　　
		</div>
		
	</div>
	
	<div style="padding-bottom: 60px;"></div>
	
	
	
