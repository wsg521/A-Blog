<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>互动登陆界面</title>	    	
    	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/A-Blog.ico">
    	<link rel="stylesheet" href="login.css" type="text/css"></link>
    </head>  
  	<body>
	  	<!-- 互动登陆界面HTML及其引入类库 //-->
		<!-- Interactive Login - START -->
		<div class="container-fluid">
		    <div class="row">
		        <div class="loginpanel">
					<i id="loading" class="hidden fa fa-spinner fa-spin bigicon"></i>
		            <h2>
						<span class="fa fa-quote-left "></span> 登录 <span class="fa fa-quote-right "></span>
					</h2>
		            <div>
		                <input id="username" type="text" placeholder="登录账号" onkeyup="check_values();">
		                <input id="password" type="password" placeholder="输入密码" onkeyup="check_values();">
		
						<div class="buttonwrapper">
							<button id="loginbtn" class="btn btn-warning loginbutton">
								<span class="fa fa-check"></span>
							</button>
							<span id="lockbtn" class="fa fa-lock lockbutton redborder"></span>
						</div>
		            </div>
		        </div>
		    </div>
		</div>
		
		<script type='text/javascript' src="http://libs.baidu.com/jquery/1.7.1/jquery.min.js"></script>
		<!-- Latest compiled and minified JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  		<script type="text/javascript">
  		/*Javascript代码片段，这里使用jQuery*/

  	    function check_values() {
  	        if ($("#username").val().length !== 0 && $("#password").val().length !== 0) {
  	            $("#loginbtn").animate({ left: '0' , duration: 'slow'});
  	            $("#lockbtn").animate({ left: '260px' , duration: 'slow'});
  	        } else {
  	        	$("#loginbtn").animate({ left: '260px' , duration: 'slow'});
  	            $("#lockbtn").animate({ left: '0' , duration: 'slow'});
  	        }
  	    }

  				
  		$("#loginbtn").click(function(){
  			$('#loading').removeClass('hidden');
  			//登录相关后台处理，例如: Ajax请求
  		});
  	    
  		</script>
  	</body>
</html>
