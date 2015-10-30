<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
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
  	
  	<!-- Multiple choice -->
  	<link rel="stylesheet" href="uiUtil/chosen/chosen.css" />	
	<script src="uiUtil/chosen/jquery.min.js" type="text/javascript"></script>
  	<script src="uiUtil/chosen/chosen.jquery.js" type="text/javascript"></script>
    <script src="uiUtil/chosen/RequestJs.js" type="text/javascript"></script> 
    
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
		              	技术标签id：00~99，一级类目；0000~9999；二级......
		              	<a id="addATag" data-toggle="collapse" class="btn btn-primary dropdown-toggle" href="#add_tag">添加技术标签</a>
		              </div>
		              
		              <div id="add_tag" class="panel-collapse collapse">
		              	<div class="panel-body">
		              		<form id="addTag_FORM" onsubmit="return addTag()" method="post">
		              			<div class="" id="id_div">
			              			<input name="tag.id" type="text" class="form-control" placeholder="id" onkeyup="javascript:$('#id_div').attr('class', '');">
			              		</div>
			              		<label></label>
			              		<div class="" id="name_div">
			              			<input name="tag.name" type="text" class="form-control" placeholder="name" onkeyup="javascript:$('#name_div').attr('class', '');">
			              		</div>
			              		<label></label><br/>		              		
								<!--  
			              		<select name="selecter_multiple" class="selecter_5" multiple="multiple">
			              		-->		              		
			              		<select name="tag.parentId" data-placeholder="请选择父类技术标签" class="chzn-select" style="width: 100px;" multiple="multiple" tabindex="4">
									<c:forEach items="${tagList}" var="tag">
										<option value="${tag.id}">${tag.name}</option>
									</c:forEach>
								</select>
								<script type="text/javascript">$(".chzn-select").chosen();</script>							
								<br/><br/>
			              		<button type="submit" class="btn btn-info btn-block">添加</button>
		              		</form>
		              		<script type="text/javascript">
		              		<!--
		              			function addTag() {
			              			if (reqN("tag.id")) {
			            				$('#id_div').attr("class", "form-group has-error has-feedback"); 
			            			} else if (reqN("tag.name")) {
			            				$('#name_div').attr("class", "form-group has-error has-feedback");
			            			} else {
			            				$.ajax({
			            					url : '${pageContext.request.contextPath}/TagAction!addTag.action',
			            					data : $("#addTag_FORM").serialize(),
			            					dataType : 'json',
			            					success : function(obj, textStatus, jqXHR) {
			            						if (obj.success) {
			            							var oTab=document.getElementById('tb1');
			            							var oTr=document.createElement('tr');//创建一个tr
			            							var oTd=document.createElement('td');
			            							oTd.innerHTML=obj.obj.id;
			            							oTr.appendChild(oTd);//将td插入tr
			            							var oTd=document.createElement('td');
			            							//oTd.innerHTML=obj.obj.name;
			            							oTd.innerHTML="<a data-toggle='collapse' onclick='updateTagDiv("+obj.obj.id+","+obj.obj.name+")' href='#update_tag_div'>"+obj.obj.name+"</a>";
			            							oTr.appendChild(oTd);//将td插入tr
			            							var oTd=document.createElement('td');
			            							oTd.innerHTML=obj.obj.parentId;
			            							oTr.appendChild(oTd);//将td插入tr
			            							var oTd=document.createElement('td');
			            							oTd.innerHTML=obj.obj.createTime;
			            							oTr.appendChild(oTd);//将td插入tr
			            							var oTd=document.createElement('td');
			            							oTd.innerHTML=obj.obj.updateTime;
			            							oTr.appendChild(oTd);//将td插入tr
			            							oTab.tBodies[0].appendChild(oTr);//将整个tr插入到表格中
			            							document.getElementById("addATag").click();
			            						} else {
			            										
			            						}
			            						alert(obj.msg);	
			            					}
			            				});
			            			}
		              				return false;
		              			}
		              		//-->
		              		</script>
				        </div>
				      </div>
		              
		              <div id="update_tag_div" class="panel-collapse collapse">
		              	<div class="panel-body">
		              		<form id="updateTag_FORM" onsubmit="return updateTag()" method="post">
			              		<input type="text" id="tagId" class="form-control" disabled="">
			              		<input type="text" id="tagIds" name="tag.id" style="display: none;">
			              		<label></label>
			              		<div class="" id="uname_div">
			              			<input id="tagName" name="tag.name" type="text" class="form-control" onkeyup="javascript:$('#uname_div').attr('class', '');">
			              		</div>
			              		<label></label><br/>		              		
								<!--  
			              		<select name="selecter_multiple" class="selecter_5" multiple="multiple">
			              		-->		              		
			              		<select name="tag.parentId" data-placeholder="请选择父类技术标签" class="chzn-select" style="width: 100px;" multiple="multiple" tabindex="4">
									<c:forEach items="${tagList}" var="tag">
										<option value="${tag.id}">${tag.name}</option>
									</c:forEach>
								</select>
								<script type="text/javascript">$(".chzn-select").chosen();</script>							
								<br/><br/>
			              		<button type="submit" class="btn btn-info btn-block">修改</button>
		              		</form>
		              		<script type="text/javascript">
		              		<!--
		              			function updateTagDiv(id,name) {
		              				$('#tagId').val(id);
		              				$('#tagIds').val(id);
		              				$('#tagName').val(name);
		              			}
		              			function updateTag() {
			              			if (reqI("tagName")) {
			            				$('#uname_div').attr("class", "form-group has-error has-feedback");
			            			} else {
			            				$.ajax({
			            					url : '${pageContext.request.contextPath}/TagAction!updateTag.action',
			            					data : $("#updateTag_FORM").serialize(),
			            					dataType : 'json',
			            					success : function(obj, textStatus, jqXHR) {
			            						if (obj.success) {
			            							
			            						} else {
			            										
			            						}
			            						alert(obj.msg);	
			            					}
			            				});
			            			}
		              				return false;
		              			}
		              		//-->
		              		</script>
				        </div>
				      </div>
		              
		              <table id="tb1" class="table">
		                <thead>
		                  <tr>
		                    <th>id</th>
		                    <th>名称</th>
		                    <th>父id</th>
		                    <th>创建时间</th>
		                    <th>修改时间</th>
		                  </tr>
		                </thead>
		                <tbody>
		                  <c:forEach items="${tagList}" var="tag">
		                  	<tr>
			                  	<td>${tag.id}</td>
			                  	<td><a data-toggle="collapse" onclick="updateTagDiv('${tag.id}','${tag.name}')" href="#update_tag_div">${tag.name}</a></td>
			                  	<td>${tag.parentId}</td>
			                  	<td>${tag.createTime}</td>
			                  	<td>${tag.updateTime}</td>
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
