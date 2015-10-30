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
  <body>
  
      <!--nav-->
      <%@ include file="/WEB-INF/top.jsp"%> 
      
      <!--  
      <div class="desc container">	  	
	  	<div class="desc__features"></div>	  	
	  </div>
	  -->
	  
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
				  <div class="timeline">
					  <dl>
						  <dt>3月 2015</dt>
						  <dd class="pos-right clearfix">
							  <div class="circ"></div>
							  <div class="time">3月 14</div>
							  <div class="events">
								  <div class="pull-left">
									  <img class="events-object img-rounded" style="width: 200px;height: 170px;" src="imgs/zgxxh.jpg">
								  </div>
								  <div class="events-body">
									  <h4 class="events-heading">吃货的一天</h4>
									  <p>好累的一天.</p>
								  </div>
							  </div>
						  </dd>
						  <dd class="pos-left clearfix">
							  <div class="circ"></div>
							  <div class="time">3月 10</div>
							  <div class="events">
								  <div class="pull-left">
									  <img class="events-object img-rounded" style="width: 200px;height: 170px;" src="imgs/yhy1.jpg">
								  </div>
								  <div class="events-body">
									  <h4 class="events-heading">颐和园</h4>
									  <p>一天的观光.</p>
								  </div>
							  </div>
						  </dd>
						  <dt>10月 2014</dt>
						  <dd class="pos-right clearfix">
							  <div class="circ"></div>
							  <div class="time">10月 15</div>
							  <div class="events">
								  <div class="pull-left">
									  <img class="events-object img-rounded" style="width: 200px;height: 170px;" src="imgs/ymy_wsg.jpg">
								  </div>
								  <div class="events-body">
									  <h4 class="events-heading">圆明园</h4>
									  <p>见证历史的时刻.</p>
								  </div>
							  </div>
						  </dd>
						  <dd class="pos-left clearfix">
							  <div class="circ"></div>
							  <div class="time">10月 8</div>
							  <div class="events">
								  <div class="pull-left">
									  <img class="events-object img-rounded" style="width: 200px;height: 170px;" src="imgs/bjslgyyq2.jpg">
								  </div>
								  <div class="events-body">
									  <h4 class="events-heading">北京森林公园</h4>
									  <p>好美的鱼群.</p>
								  </div>
							  </div>
						  </dd>
	
					  </dl>
				  </div>
	            </div>
	      	</div>
	  	</div>	
	  </div>
      
      <div class="container documents">
	  	<div class="example">
	  		<div class="row">
	            <div class="col-md-6">
	            	<div class="panel-group" id="accordion1">
		              <div class="panel">
		                <div class="panel-heading">
		                  <h4 class="panel-title">
		                    <a data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">
		                      	河南
		                    </a>
		                  </h4>
		                </div>
		                <div id="collapseOne" class="panel-collapse collapse in">
		                  <div class="panel-body">
		                  	<div class="panel-group" style="width: 90px;" id="accordion2">
		                  	<div class="panel">
				                <div class="panel-heading">
				                  <h4 class="panel-title">
				                    <a data-toggle="collapse" data-parent="#accordion2" href="#1">--郑州</a>
				                  </h4>
				                </div>
				                <div id="1" class="panel-collapse collapse">
				                  <div class="panel-body">
				                  	----二七区<br/>
				                  	----中原区<br/>
				                  	----金水区
				                  </div>
				                </div>
				                <div class="panel-heading">
				                  <h4 class="panel-title">
				                    <a data-toggle="collapse" data-parent="#accordion2" href="#2">--安阳</a>
				                  </h4>
				                </div>
				                <div id="2" class="panel-collapse collapse">
				                  <div class="panel-body">
				                  	----安阳县<br/>
				                  	----汤阴县<br/>
				                  	----滑县
				                  </div>
				                </div>
				            </div>
				            </div>
		                  </div>
		                </div>
		              </div>
		              <div class="panel">
		                <div class="panel-heading">
		                  <h4 class="panel-title">
		                    <a data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo">
		                      	江苏
		                    </a>
		                  </h4>
		                </div>
		                <div id="collapseTwo" class="panel-collapse collapse">
		                  <div class="panel-body">
		                  	--苏州
		                  </div>
		                </div>
		              </div>
		              <div class="panel">
		                <div class="panel-heading">
		                  <h4 class="panel-title">
		                    <a data-toggle="collapse" data-parent="#accordion1" href="#collapseThree">
		                      Collapsible Group Item #3
		                    </a>
		                  </h4>
		                </div>
		                <div id="collapseThree" class="panel-collapse collapse">
		                  <div class="panel-body">
		                 	
		                 </div>
		                </div>
		              </div>
		            </div>
	            </div>
	            <div class="col-md-6">
	            	
	            </div>
	      	</div>
	  	</div>	
	  </div>
      
      <div class="container documents">
      	<div class="example">
      		<h2 class="example-title">管理内容</h2>
        	<div class="row">
        		<div class="col-md-4">
        			555
        		</div>
        		<div class="col-md-8">
        			555
        		</div>
        	</div>
      	</div>
      </div>
      
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
      <!--footer-->
      <%@ include file="/WEB-INF/bottom.jsp"%> 
      
  </body>
</html>
