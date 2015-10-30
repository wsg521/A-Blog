<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>A-博客</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="smartaddon-verification" content="936e8d43184bc47ef34e25e426c508fe" />
	<meta name="keywords" content="A-Blog, A-博客">
	<meta name="description" content="有一种鸟是关不住的">
    
    <link rel="shortcut icon" href="imgs/A-Blog.ico"/>
    <link rel="bookmark" href="imgs/A-Blog.ico"/>
    <link rel="stylesheet" href="css/site.min.css">
    <link href="css/fonts.googleapis.com.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/site.min.js"></script>	        
  	<script type="text/javascript" src="js/wsg/util.js"></script> 	
  	    
  </head>
  <body>
  
      <!--nav-->
      <%@ include file="/WEB-INF/top.jsp"%> 
	  
	  <div class="docs-header">
	  	<div class="topic">
	  		<div class="topic__infos">
          		<div class="container">
            		后台管理
          		</div>
        	</div>
        </div>
      </div>
        
      <div class="container documents">
	  	<div class="example">
	  		<div class="row">
	      		<%@ include file="/WEB-INF/left.jsp"%> 
	            <div class="col-md-9">
					<div class="panel panel-default">
		              <div class="panel-heading">
		              	查看Blog列表
		              </div>
		              
		              <table class="table">
		                <thead>
		                  <tr>
		                    <th>标题</th>
		                    <th>领域</th>
		                    <th>创建时间</th>
		                    <th>修改时间</th>
		                  </tr>
		                </thead>
		                <tbody>
		                  <c:forEach items="${blogList}" var="blog">
		                  	<tr>
			                  	<td title="${blog.title}"><a href="${pageContext.request.contextPath}/BlogAction!gainBlog.action?blog.id=${blog.id}">${blog.title}</a></td>
			                  	<td>${blog.tagId}</td>
			                  	<td>${fn:substring(blog.createTime, 0, 10)}</td>
			                  	<td>${fn:substring(blog.updateTime, 0, 10)}</td>
		                  	</tr>
		                  </c:forEach>
		                </tbody>
		              </table>
		            </div>
		            <div class="row example-pagination">
		              <div class="col-md-12">
		                <ul class="pagination">
		                  <li class="active"><a href="#">PREV</a></li>
		                  <li><a href="#">1</a></li>
		                  <li class="active"><a href="#">2</a></li>
		                  <li><a href="#">3</a></li>
		                  <li><a href="#">4</a></li>
		                  <li><a href="#">5</a></li>
		                  <li><a href="#">6</a></li>
		                  <li><a href="#">7</a></li>
		                  <li><a href="#">8</a></li>
		                  <li><a href="#">...</a></li>
		                  <li class="disabled"><a href="#">...</a></li>
		                  <li class="active"><a href="#">NEXT</a></li>
		                </ul>
		              </div>
		            </div>
	            </div>
	      	</div>
	  	</div>	
	  </div>
      
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
  </body>
</html>
