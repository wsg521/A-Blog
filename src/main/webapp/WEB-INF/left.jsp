<%@ page language="java" pageEncoding="UTF-8"%>

				<div class="col-md-3 example-dropdown">
	      			<h2 class="example-title"></h2>
	                <ul class="dropdown-menu" role="menu">
	                  <li class="dropdown-header">网站设置</li>
	                  <li role="presentation" class="divider"></li>
	                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/HomeAction!findAll.action">博客首页设置</a></li>
	                  <li role="presentation" class="divider"></li>
	                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/HomeAction!findBlogContent.action?home.id=1">博客列表页设置</a></li>
	                  <li role="presentation" class="divider"></li>
	                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/HomeAction!findBlogContent.action?home.id=2">博客内容页设置</a></li>
	                  <li role="presentation" class="divider"></li>
	                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/HomeAction!findBlogContent.action?home.id=3">脚印页设置</a></li>
	                  <li role="presentation" class="divider"></li>
	                  <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/TagAction!findAll.action">技术标签维护</a></li>
	                  <li role="presentation" class="divider"></li>
	                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="glyphicon glyphicon-cog"></i> 图片设置</a></li>
	                </ul>
	            </div>