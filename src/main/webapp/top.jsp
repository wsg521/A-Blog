<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<style>
	.elevator-item {
	    position: fixed;
	    right: 15px;
	    bottom: 10px;
	    z-index: 99992;
	    transition: opacity 0.4s ease-in-out 0s;
	    opacity: 1;
	} 
	#elevator, #layout_elevator {
	    display: block;
	    margin-bottom: 5px;
	    width: 40px;
	    height: 36px;
	    border-radius: 2px;
	    background: rgba(0, 0, 0, 0.6) url("img/iconsprite_btbar.png") no-repeat scroll 8px 6px;
	    cursor: pointer;
	    box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.2);
	}
	a {
	    color: #222;
	    text-decoration: none;
	    outline: 0px none;
	}
	</style> 
<link rel="stylesheet" type="text/css" href="css/scrollTop.css" />
<script type="text/javascript" src="js/scrollTop.js"></script>
</head>
<body>
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
            <a class="navbar-brand" href="index.jsp"><img src="img/footer-logo.png" height="40"></a>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li><a class="nav-link" href="${pageContext.request.contextPath}/">首页</a></li>
              <li><a class="nav-link" href="${pageContext.request.contextPath}/BlogViewAction!viewBlog.action">A-Blog</a></li>
              <li><a class="nav-link" href="${pageContext.request.contextPath}/BlogViewAction!footPrint.action">脚印</a></li>
              <li><a class="nav-link" target="_blank" href="jl.html">个人简历</a></li>
            </ul>
          </div>
        </div>
      </nav>
      
      <div id="A-Blog_Top"></div>
      
      <div id='rtt' title="回到顶部"></div>
      <div class="elevator-item"> 
		<!--<a id="elevator" href="#A-Blog_Top" title="回到顶部"></a>-->
      </div>
</body>
</html>