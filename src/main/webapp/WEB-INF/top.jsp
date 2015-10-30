<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

	<!--nav-->
	<nav class="navbar navbar-default navbar-custom" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation切换导航</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp" title="A-Blog 网站首页"><img src="img/footer-logo.png" height="40"></a>
          </div>
          <div class="collapse navbar-collapse">
          	<c:choose>
          		<c:when test="${user != null}">
		            <ul class="nav navbar-nav navbar-right">            
		              <li><a class="nav-link" href="${pageContext.request.contextPath}/wsg.action">首页</a></li>
		              <li><a class="nav-link" href="${pageContext.request.contextPath}/BlogAction!getViewBlogList.action">A-Blog</a></li>
		              <li><a class="nav-link" href="${pageContext.request.contextPath}/wsg!jV.action?path=writeBlog">写博客</a></li>
		              <li><a class="nav-link" href="${pageContext.request.contextPath}/LifeAction!getViewLifeList.action">脚印</a></li>
		              <li><a class="nav-link" href="${pageContext.request.contextPath}/wsg!jV.action?path=writeLife">+脚印</a></li>
		              <li><a class="nav-link" href="${pageContext.request.contextPath}/UserAction!logOut.action">退出</a></li>
		            </ul>
            	</c:when>
            	<c:when test="${user == null}">
            		<ul class="nav navbar-nav navbar-right">            
		              <li><a class="nav-link" href="index.jsp">A-Blog首页</a></li>
		            </ul>
            	</c:when>
          	</c:choose>
          </div>
        </div>
      </nav>