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
    		新文章<br/><br/><br/>
    		<div id="title" class="round" style="width: 70px;padding: 7px;">文章标题</div>
    		<script>
		        $(function(){
		            $('#title').tooltip({
		                position: 'right',
		                content: '<span style="color:#fff">请选择博客类型.</span>',
		                onShow: function(){
		                    $(this).tooltip('tip').css({
		                        backgroundColor: '#666',
		                        borderColor: '#666'
		                    });
		                }
		            });
		        });
		    </script>
		    <form id="writeBlog_addBlog" action="" onsubmit="return addBlog();" method="POST">
			    <select class="easyui-combobox" name="blog.source" style="width:65px;">
	        		<option value="0">转载</option>
	        		<option value="1">翻译</option>
	        		<option value="2">原创</option>
	        		<option value="3">效仿</option>
	        	</select>
	    		<input class="easyui-textbox" name="blog.title" value="${blog.title}" data-options="required:true,missingMessage:'请输入文章标题',prompt:'文章标题...'" style="width: 450px;height: 32px;"><br/><br/>
	    		<div class="round" style="width: 70px;padding: 7px;">文章内容</div>
	    		<div style="margin:20px 0;"></div>
	    		<input class="easyui-textbox" name="blog.content" data-options="required:true,missingMessage:'请输入文章内容',multiline:true,prompt:'文章内容...'" style="width: 1000px;height:500px" value='${blog.content}'>
	    		<div style="margin:20px 0"></div>
	    		<div class="round" style="width: 70px;padding: 7px;">个人分类</div> 
	    		<select class="easyui-combobox" name="blog.tagId" style="width:85px;">
	        		<option value="1">web 技术</option>
	        		<option value="2">js</option>
	        		<option value="3">Ajax</option>
	        		<option value="4">ui</option>
	        		<option value="5">spring</option>
	        	</select>
	        	<div style="margin:20px 0;"></div>
	        	<input type="submit" value="提交">
        	</form>
        	<script type="text/javascript">
				function addBlog1() {
					if ($("#writeBlog_addBlog").form('validate')) {
						$.ajax({
							url : projectName+"/BlogAction!addBlog.action",
							data : $("#writeBlog_addBlog").serialize(),
							dataType : 'json',
							success : function(obj, textStatus, jqXHR) {
								if (!obj.success && obj.msg == 'GO_LOGIN') {
									location.href = "#Top"; 
									$('#top_loginDialog').dialog('open');
									return false;
								}
								show('添加状态', obj.msg);
							}
						});
					}
					return false;
				}
			</script>
    	</div>
    	
    	<!-- 引入网站Bottom -->
    	<%@ include file="/Ademo/A-Blog/bottom.jsp"%>
  	</body>
</html>
