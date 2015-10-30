<%@ page language="java" pageEncoding="UTF-8"%>
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
  <body style="background-color: #f1f2f6;">
  
      <!--nav-->
      <%@ include file="/WEB-INF/top.jsp"%> 
      
      <!--  
      <div class="container documents">
	      <div class="example">
	        <div class="row example-modal">
	          <div class="col-md-12">
	            <h2 class="example-title">Modals</h2>
	            <div class="modal">
	              <div class="modal-dialog">
	                <div class="modal-content">
	                  <div class="modal-header">
	                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                    <h4 class="modal-title">Contact</h4>
	                  </div>
	                  <div class="modal-body">
	                    <p>Feel free to contact us for any issues you might have with our products.</p>
	                    <div class="row">
	                      <div class="col-xs-12">
	                        <label>Name</label>
	                        <input type="text" class="form-control" placeholder="Name">
	                      </div>
	                      <div class="col-xs-12">
	                        <label>Email</label>
	                        <input type="text" class="form-control" placeholder="Email">
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-xs-12">
	                        <label>Message</label>
	                        <textarea class="form-control" rows="3">Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac</textarea>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="modal-footer">
	                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                    <button type="button" class="btn btn-success">Send</button>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
      </div>
      -->
      <div class="container documents">
	      <div class="modal-dialog">
	      	<div class="modal-content">
	      		<div class="modal-header" align="center">
		            <h4 class="modal-title">管理员入口</h4>
		        </div>
		        <div class="modal-body">
		        	<p align="center">热烈欢迎吴山岗同志前来造访.</p>
		        	
		        <form id="loginForm" onsubmit="return sign()">
		            <div class="row">
		            	<div class="col-xs-2"></div>
		            	<div class="col-xs-8">
		            		<label></label>
		            		<div class="" id="name_div">
		            			<input type="text" name="user.loginName" class="form-control" placeholder="UserName" onkeyup="javascript:$('#name_div').attr('class', '');">
		            		</div>
		            	</div>
		            	<div class="col-xs-2"></div>
		            </div>
		            <div class="row">
		            	<div class="col-xs-2"></div>
		            	<div class="col-xs-8">
		            		<label></label>
		            		<div class="" id="pwd_div">
		            			<input type="password" name="user.pwd" class="form-control" placeholder="Password..." onkeyup="javascript:$('#pwd_div').attr('class', '');">
		            		</div>
		            	</div>
		            	<div class="col-xs-2"></div>
		            </div>
		            <div class="row">
		            	<div class="col-xs-2"></div>
		            	<div class="col-xs-8">
		            		<label></label>
		      				<button type="submit" class="btn btn-info btn-block">Sign In</button>
		      				<label></label>
		      			</div>
		      			<div class="col-xs-2"></div>
		      		</div>
		      	</form>
		      		<label></label>
		      		<p>如若不是本人请 QQ:<a href="http://wpa.qq.com/msgrd?v=3&uin=1210460667&site=qq&menu=yes" target="_blank">1210460667</a> 电话：18337101865 联系吴先生.</p>
		      	</div><label></label>
		  	</div>
		  </div>
      </div>
      
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
	  <script type="text/javascript">
	  <!--
	  	function sign() {
			if (reqN("user.loginName")) {
				$('#name_div').attr("class", "form-group has-error has-feedback"); 
			} else if (reqN("user.pwd")) {
				$('#pwd_div').attr("class", "form-group has-error has-feedback");
			} else {
				$.ajax({
					url : '${pageContext.request.contextPath}/UserAction!login.action',
					data : $("#loginForm").serialize(),
					dataType : 'json',
					success : function(obj, textStatus, jqXHR) {
						if (obj.success) {
							window.location.href = projectName+"/wsg.action";
						} else {
							alert(obj.msg);							
						}
					}
				});
			}
			return false;
	  	}
	  //-->
	  </script>
  </body>
</html>
