<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>    
    <title>charisma-master</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="img/favicon.ico">
	<link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>
  </head>  
  <body> 
   
  	<!-- Top 开始 -->
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-inner">
            <button type="button" class="navbar-toggle pull-left animated flip">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- Top 左上 -->
            <a class="navbar-brand" href="index.html"> 
            	<img alt="Charisma Logo" src="img/logo20.png" class="hidden-xs"/>
                <span>魅力主页</span>
            </a>

            <!-- 用户下拉菜单 开始 -->
            <div class="btn-group pull-right">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i>
                    <span class="hidden-sm hidden-xs"> 管理员</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">简介</a></li>
                    <li class="divider"></li>
                    <li><a href="login.html">退出</a></li>
                </ul>
            </div>
            <!-- 用户下拉菜单 结束 -->

            <!-- 主题选择 开始 -->
            <div class="btn-group pull-right theme-container animated tada">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-tint"></i>
                    <span class="hidden-sm hidden-xs"> 更改主题/皮肤</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" id="themes">
                    <li><a data-value="classic" href="#" title="经典"><i class="whitespace"></i> Classic</a></li>
                    <li><a data-value="cerulean" href="#" title="天蓝色"><i class="whitespace"></i> Cerulean</a></li>
                    <li><a data-value="cyborg" href="#" title="电子人"><i class="whitespace"></i> Cyborg</a></li>
                    <li><a data-value="simplex" href="#" title="Simplex"><i class="whitespace"></i> Simplex</a></li>
                    <li><a data-value="darkly" href="#" title="黑暗"><i class="whitespace"></i> Darkly</a></li>
                    <li><a data-value="lumen" href="#" title="流明"><i class="whitespace"></i> Lumen</a></li>
                    <li><a data-value="slate" href="#" title="板岩"><i class="whitespace"></i> Slate</a></li>
                    <li><a data-value="spacelab" href="#" title="空间实验室"><i class="whitespace"></i> Spacelab</a></li>
                    <li><a data-value="united" href="#" title="联合"><i class="whitespace"></i> United</a></li>
                </ul>
            </div>
            <!-- 主题选择 结束 -->

            <ul class="collapse navbar-collapse nav navbar-nav top-menu">
                <li><a href="#" title="访问网站"><i class="glyphicon glyphicon-globe"></i> Visit Site</a></li>
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" title="下拉式菜单">
                    	<i class="glyphicon glyphicon-star"></i> Dropdown <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider" title="分线"></li>
                        <li><a href="#" title="分开的连接">Separated link</a></li>
                        <li class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
                <li>
                    <form class="navbar-search pull-left">
                        <input placeholder="Search" class="search-query form-control col-md-10" name="query" type="text" />
                    </form>
                </li>
            </ul>

        </div>
    </div>
    <!-- Top 结束 -->
    
	<div class="ch-container">
	    <div class="row">
	        
	        <!-- 左边 菜单 开始 -->
	        <div class="col-sm-2 col-lg-2">
	            <div class="sidebar-nav">
	                <div class="nav-canvas">
	                    <div class="nav-sm nav nav-stacked"></div>
	                    <ul class="nav nav-pills nav-stacked main-menu">
	                        <li class="nav-header">Main</li>
	                        <li>
	                        	<a class="ajax-link" href="index.html">
	                        		<i class="glyphicon glyphicon-home"></i><span> Dashboard</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="ui.html">
	                        		<i class="glyphicon glyphicon-eye-open"></i><span> UI Features</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="form.html">
	                        		<i class="glyphicon glyphicon-edit"></i><span> Forms</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="chart.html">
	                        		<i class="glyphicon glyphicon-list-alt"></i><span> Charts</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="typography.html">
	                        		<i class="glyphicon glyphicon-font"></i><span> Typography</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="gallery.html">
	                        		<i class="glyphicon glyphicon-picture"></i><span> Gallery</span>
	                        	</a>
	                        </li>
	                        <li class="nav-header hidden-md">Sample Section</li>
	                        <li>
	                        	<a class="ajax-link" href="table.html">
	                        		<i class="glyphicon glyphicon-align-justify"></i><span> Tables</span>
	                        	</a>
	                        </li>
	                        <li class="accordion">
	                            <a href="#">
	                            	<i class="glyphicon glyphicon-plus"></i><span> Accordion Menu</span>
	                            </a>
	                            <ul class="nav nav-pills nav-stacked">
	                                <li><a href="#">Child Menu 1</a></li>
	                                <li><a href="#">Child Menu 2</a></li>
	                            </ul>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="calendar.html">
	                        		<i class="glyphicon glyphicon-calendar"></i><span> Calendar</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="grid.html">
	                        		<i class="glyphicon glyphicon-th"></i><span> Grid</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a href="tour.html">
	                        		<i class="glyphicon glyphicon-globe"></i><span> Tour</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a class="ajax-link" href="icon.html">
	                        		<i class="glyphicon glyphicon-star"></i><span> Icons</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a href="error.html">
	                        		<i class="glyphicon glyphicon-ban-circle"></i><span> Error Page</span>
	                        	</a>
	                        </li>
	                        <li>
	                        	<a href="login.html">
	                        		<i class="glyphicon glyphicon-lock"></i><span> Login Page</span>
	                        	</a>
	                        </li>
	                    </ul>
	                    <label id="for-is-ajax" for="is-ajax">
	                    	<input id="is-ajax" type="checkbox"> Ajax on menu
	                    </label>
	                </div>
	            </div>
	        </div>
	        <!-- 左边 菜单 结束 -->
			
			<!-- 可省略  没有可提示信息 -->
	        <noscript>
	            <div class="alert alert-block col-md-12">
	                <h4 class="alert-heading">Warning!</h4>	
	                <p>You need to have 
	                	<a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
	                    enabled to use this site.
	                </p>
	            </div>
	        </noscript>
			
			<!-- 内容 开始 -->
	        <div id="content" class="col-lg-10 col-sm-10">
	            <!-- 标题栏 开始 -->
	            <div>
	    			<ul class="breadcrumb">
				        <li>
				            <a href="#">Home</a>
				        </li>
				        <li>
				            <a href="#">Dashboard</a>
				        </li>
				    </ul>
				</div>
				<!-- 标题栏 结束 -->
				
				<!-- 无边框 含背景展示区域 开始 -->
				<div class=" row">
				    <div class="col-md-3 col-sm-3 col-xs-6">
				        <a data-toggle="tooltip" title="6 new members." class="well top-block" href="#">
				            <i class="glyphicon glyphicon-user blue"></i>				
				            <div>Total Members</div>
				            <div>507</div>
				            <span class="notification">6</span>
				        </a>
				    </div>	
				    <div class="col-md-3 col-sm-3 col-xs-6">
				        <a data-toggle="tooltip" title="4 new pro members." class="well top-block" href="#">
				            <i class="glyphicon glyphicon-star green"></i>				
				            <div>Pro Members</div>
				            <div>228</div>
				            <span class="notification green">4</span>
				        </a>
				    </div>	
				    <div class="col-md-3 col-sm-3 col-xs-6">
				        <a data-toggle="tooltip" title="$34 new sales." class="well top-block" href="#">
				            <i class="glyphicon glyphicon-shopping-cart yellow"></i>	
				            <div>Sales</div>
				            <div>$13320</div>
				            <span class="notification yellow">$34</span>
				        </a>
				    </div>	
				    <div class="col-md-3 col-sm-3 col-xs-6">
				        <a data-toggle="tooltip" title="12 new messages." class="well top-block" href="#">
				            <i class="glyphicon glyphicon-envelope red"></i>				
				            <div>Messages</div>
				            <div>25</div>
				            <span class="notification red">12</span>
				        </a>
				    </div>
				</div>
				<!-- 无边框 含背景展示区域 结束 -->
	
				<div class="row">
				    <div class="box col-md-12">
				        <div class="box-inner">
				            <div class="box-header well">
				                <h2><i class="glyphicon glyphicon-info-sign"></i> Introduction</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-setting btn-round btn-default">
				                    	<i class="glyphicon glyphicon-cog"></i>
				                    </a>
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content row">
				                <div class="col-lg-7 col-md-12">
				                    <h1>Charisma <br>
				                        <small>free, premium quality, responsive, multiple skin admin template.</small>
				                    </h1>
				                    <p>Its a live demo of the template. I have created Charisma to ease the repeat work I have to do on my
				                        projects. Now I re-use Charisma as a base for my admin panel work and I am sharing it with you
				                        :)
				                    </p>
				                    <p>
				                    	<b>All pages in the menu are functional, take a look at all, please share this with your
				                            followers.</b>
				                    </p>
				                    <p class="center-block download-buttons">
				                        <a href="http://usman.it/free-responsive-admin-template/" class="btn btn-primary btn-lg">
				                        	<i class="glyphicon glyphicon-chevron-left glyphicon-white"></i> Back to article
				                        </a>
				                        <a href="http://usman.it/free-responsive-admin-template/" class="btn btn-default btn-lg">
				                        	<i class="glyphicon glyphicon-download-alt"></i> Download Page
				                        </a>
				                    </p>
				                </div>
				                <!-- Ads, you can remove these -->
				                <div class="col-lg-5 col-md-12 hidden-xs center-text">
				                	<!--   广告        -->
				                </div>
				                <div class="col-lg-5 col-md-12 visible-xs center-text">
				                	<!-- 广告  <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>  -->
				                </div>
				                <!-- Ads end -->
				            </div>
				        </div>
				    </div>
				</div>
				
				<!-- 一行三个 开始 -->
				<div class="row">
				    <div class="box col-md-4">
				        <div class="box-inner homepage-box">
				            <div class="box-header well">
				                <h2><i class="glyphicon glyphicon-th"></i> Tabs</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-setting btn-round btn-default">
				                    	<i class="glyphicon glyphicon-cog"></i>
				                    </a>
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content">
				                <ul class="nav nav-tabs" id="myTab">
				                    <li class="active"><a href="#info">Info</a></li>
				                    <li><a href="#custom">Custom</a></li>
				                    <li><a href="#messages">Messages</a></li>
				                </ul>				
				                <div id="myTabContent" class="tab-content">
				                    <div class="tab-pane active" id="info">
				                        <h3>Charisma
				                            <small>a full featured template</small>
				                        </h3>
				                        <p>Its a full featured, responsive template for your admin panel. It is optimized for tablets
				                            and mobile phones.
				                        </p>				
				                        <p>Check how it looks on different devices:</p>
				                        <a href="http://www.responsinator.com/?url=usman.it%2Fthemes%2Fcharisma" target="_blank">
				                        	<strong>Preview on iPhone size.</strong>
				                        </a><br>
				                        <a href="http://www.responsinator.com/?url=usman.it%2Fthemes%2Fcharisma" target="_blank">
				                        	<strong>Preview on iPad size.</strong>
				                        </a>
				                    </div>
				                    <div class="tab-pane" id="custom">
				                        <h3>Custom
				                            <small>small text</small>
				                        </h3>
				                        <p>Sample paragraph.</p>				
				                        <p>Your custom text.</p>
				                    </div>
				                    <div class="tab-pane" id="messages">
				                        <h3>Messages
				                            <small>small text</small>
				                        </h3>
				                        <p>Sample paragraph.</p>				
				                        <p>Your custom text.</p>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
				
				    <div class="box col-md-4">
				        <div class="box-inner">
				            <div class="box-header well" data-original-title="">
				                <h2><i class="glyphicon glyphicon-user"></i> Member Activity</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content">
				                <div class="box-content">
				                    <ul class="dashboard-list">
				                        <li>
				                            <a href="#"><img class="dashboard-avatar" alt="Usman" src="#"></a>
				                            <strong>Name:</strong> 
				                            <a href="#">Usman </a><br>
				                            <strong>Since:</strong> 17/05/2014<br>
				                            <strong>Status:</strong> <span class="label-success label label-default">Approved</span>
				                        </li>
				                        <li>
				                            <a href="#"><img class="dashboard-avatar" alt="Sheikh Heera" src="#"></a>
				                            <strong>Name:</strong> 
				                            <a href="#">Sheikh Heera </a><br>
				                            <strong>Since:</strong> 17/05/2014<br>
				                            <strong>Status:</strong> <span class="label-warning label label-default">Pending</span>
				                        </li>
				                        <li>
				                            <a href="#"><img class="dashboard-avatar" alt="Abdullah" src="#"></a>
				                            <strong>Name:</strong> 
				                            <a href="#">Abdullah </a><br>
				                            <strong>Since:</strong> 25/05/2014<br>
				                            <strong>Status:</strong> <span class="label-default label label-danger">Banned</span>
				                        </li>
				                        <li>
				                            <a href="#"><img class="dashboard-avatar" alt="Sana Amrin" src="#"></a>
				                            <strong>Name:</strong> 
				                            <a href="#">Sana Amrin</a><br>
				                            <strong>Since:</strong> 17/05/2014<br>
				                            <strong>Status:</strong> <span class="label label-info">Updates</span>
				                        </li>
				                    </ul>
				                </div>
				            </div>
				        </div>
				    </div>
				
				    <div class="box col-md-4">
				        <div class="box-inner homepage-box">
				            <div class="box-header well" data-original-title="">
				                <h2><i class="glyphicon glyphicon-list-alt"></i> Open Source</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content">
				                <h3>Charisma is Open Source</h3>
				                <a class="btn btn-default center-block col-md-6" title="GitHub" href="https://github.com/usmanhalalit/charisma" target="_blank">
				                	<i class="icon-edit"></i> View on GitHub
				                </a>				
				                <div class="clearfix"></div><br>
				                <ul class="github-buttons center-block">
				                    <li>
				                        <!-- 外部链接引入 -->
				                    </li>
				                    <li>
				                        <!-- 外部链接引入 -->
				                    </li>
				                </ul>
				                <div class="clearfix"></div>				
				                <div class="donate">
				                    <div>
				                        <small>Help development of Charisma</small>
				                    </div>
				                    <a class="btn btn-default" href="http://flattr.com/thing/1507720/usmanhalalitcharisma-on-GitHub" target="_blank">
				                    	<i class="glyphicon glyphicon-usd green"></i> Donate
				                    </a>
				                </div><br/>				
				                <p>You may like my other open source work, check my profile on 
				                	<a href="http://github.com/usmanhalalit" target="_blank">GitHub</a>.
				                </p>				
				            </div>
				        </div>
				    </div>
				    
				</div>
				<!-- 一行三个 结束 -->
	
				<div class="row">
				    <div class="box col-md-4">
				        <div class="box-inner">
				            <div class="box-header well" data-original-title="">
				                <h2><i class="glyphicon glyphicon-list"></i> Buttons</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-setting btn-round btn-default">
				                    	<i class="glyphicon glyphicon-cog"></i>
				                    </a>
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content buttons">
				                <p class="btn-group">
				                    <button class="btn btn-default">Left</button>
				                    <button class="btn btn-default">Middle</button>
				                    <button class="btn btn-default">Right</button>
				                </p>
				                <p>
				                    <button class="btn btn-default btn-sm">
				                    	<i class="glyphicon glyphicon-star"></i> Icon button
				                    </button>
				                    <button class="btn btn-primary btn-sm">Small button</button>
				                    <button class="btn btn-danger btn-sm">Small button</button>
				                </p>
				                <p>
				                    <button class="btn btn-warning btn-sm">Small button</button>
				                    <button class="btn btn-success btn-sm">Small button</button>
				                    <button class="btn btn-info btn-sm">Small button</button>
				                </p>
				                <p>
				                    <button class="btn btn-inverse btn-default btn-sm">Small button</button>
				                    <button class="btn btn-primary btn-round btn-lg">Round button</button>
				                    <button class="btn btn-round btn-default btn-lg">
				                    	<i class="glyphicon glyphicon-ok"></i>
				                    </button>
				                    <button class="btn btn-primary">
				                    	<i class="glyphicon glyphicon-edit glyphicon-white"></i>
				                    </button>
				                </p>
				                <p>
				                    <button class="btn btn-default btn-xs">Mini button</button>
				                    <button class="btn btn-primary btn-xs">Mini button</button>
				                    <button class="btn btn-danger btn-xs">Mini button</button>
				                    <button class="btn btn-warning btn-xs">Mini button</button>
				                </p>
				                <p>
				                    <button class="btn btn-info btn-xs">Mini button</button>
				                    <button class="btn btn-success btn-xs">Mini button</button>
				                    <button class="btn btn-inverse btn-default btn-xs">Mini button</button>
				                </p>
				            </div>
				        </div>
				    </div>
				    				
				    <div class="box col-md-4">
				        <div class="box-inner">
				            <div class="box-header well" data-original-title="">
				                <h2><i class="glyphicon glyphicon-list"></i> Buttons</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-setting btn-round btn-default">
				                    	<i class="glyphicon glyphicon-cog"></i>
				                    </a>
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content  buttons">
				                <p>
				                    <button class="btn btn-default btn-lg">Large button</button>
				                    <button class="btn btn-primary btn-lg">Large button</button>
				                </p>
				                <p>
				                    <button class="btn btn-danger btn-lg">Large button</button>
				                    <button class="btn btn-warning btn-lg">Large button</button>
				                </p>
				                <p>
				                    <button class="btn btn-success btn-lg">Large button</button>
				                    <button class="btn btn-info btn-lg">Large button</button>
				                </p>
				                <p>
				                    <button class="btn btn-inverse btn-default btn-lg">Large button</button>
				                </p>
				                <div class="btn-group">
				                    <button class="btn btn-default btn-lg">Large Dropdown</button>
				                    <button class="btn dropdown-toggle btn-default btn-lg" data-toggle="dropdown">
				                    	<span class="caret"></span>
				                    </button>
				                    <ul class="dropdown-menu">
				                        <li><a href="#"><i class="glyphicon glyphicon-star"></i> Action</a></li>
				                        <li><a href="#"><i class="glyphicon glyphicon-tag"></i> Another action</a></li>
				                        <li><a href="#"><i class="glyphicon glyphicon-download-alt"></i> Something else here</a></li>
				                        <li class="divider"></li>
				                        <li><a href="#"><i class="glyphicon glyphicon-tint"></i> Separated link</a></li>
				                    </ul>
				                </div>
				
				            </div>
				        </div>
				    </div>
				
				    <div class="box col-md-4">
				        <div class="box-inner">
				            <div class="box-header well" data-original-title="">
				                <h2><i class="glyphicon glyphicon-list"></i> Weekly Stat</h2>				
				                <div class="box-icon">
				                    <a href="#" class="btn btn-setting btn-round btn-default">
				                    	<i class="glyphicon glyphicon-cog"></i>
				                    </a>
				                    <a href="#" class="btn btn-minimize btn-round btn-default">
				                    	<i class="glyphicon glyphicon-chevron-up"></i>
				                    </a>
				                    <a href="#" class="btn btn-close btn-round btn-default">
				                    	<i class="glyphicon glyphicon-remove"></i>
				                    </a>
				                </div>
				            </div>
				            <div class="box-content">
				                <ul class="dashboard-list">
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-arrow-up"></i>
				                            <span class="green">92</span>
				                            New Comments
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-arrow-down"></i>
				                            <span class="red">15</span>
				                            New Registrations
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-minus"></i>
				                            <span class="blue">36</span>
				                            New Articles
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-comment"></i>
				                            <span class="yellow">45</span>
				                            User reviews
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-arrow-up"></i>
				                            <span class="green">112</span>
				                            New Comments
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-arrow-down"></i>
				                            <span class="red">31</span>
				                            New Registrations
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-minus"></i>
				                            <span class="blue">93</span>
				                            New Articles
				                        </a>
				                    </li>
				                    <li>
				                        <a href="#">
				                            <i class="glyphicon glyphicon-comment"></i>
				                            <span class="yellow">254</span>
				                            User reviews
				                        </a>
				                    </li>
				                </ul>
				            </div>
				        </div>
				    </div>

				</div>
	    
	    	</div>
	    	<!-- 内容 结束 -->
	    	
		</div>
	
	    <!-- Ad, you can remove it -->
	    <div class="row">
	        <div class="col-md-9 col-lg-9 col-xs-9  hidden-xs">
	        <!-- 广告  <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> -->
	        </div>
	        <div class="col-md-2 col-lg-3 col-sm-12 col-xs-12 donate">
	            <div>
	                <small>Help development of Charisma</small>
	            </div>
	            <a class="btn btn-default" href="http://flattr.com/thing/1507720/usmanhalalitcharisma-on-GitHub"
	               target="_blank"><i class="glyphicon glyphicon-usd green"></i> Donate</a>
	        </div>	
	    </div>
	    <!-- Ad ends -->	
	    <hr>
	    	
	    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <button type="button" class="close" data-dismiss="modal">×</button>
	                    <h3>Settings</h3>
	                </div>
	                <div class="modal-body">
	                    <p>Here settings can be configured...</p>
	                </div>
	                <div class="modal-footer">
	                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
	                    <a href="#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
	                </div>
	            </div>
	        </div>
	    </div>
	
	    <footer class="row">
	        <p class="col-md-9 col-sm-9 col-xs-12 copyright">&copy; 
	        	<a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012 - 2014
	        </p>	
	        <p class="col-md-3 col-sm-3 col-xs-12 powered-by">Powered by: 
	        	<a href="http://usman.it/free-responsive-admin-template">Charisma</a>
	        </p>
	    </footer>
	
	</div>

	<script src="bower_components/jquery/jquery.min.js"></script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src='bower_components/moment/min/moment.min.js'></script>
	<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
	<script src="bower_components/chosen/chosen.jquery.min.js"></script>
	<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
	<script src="bower_components/responsive-tables/responsive-tables.js"></script>
	<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
	<script src='js/jquery.dataTables.min.js'></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/jquery.noty.js"></script>
	<script src="js/jquery.raty.min.js"></script>
	<script src="js/jquery.iphone.toggle.js"></script>
	<script src="js/jquery.autogrow-textarea.js"></script>
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<script src="js/jquery.history.js"></script>
	<script src="js/charisma.js"></script>
  </body>
</html>

