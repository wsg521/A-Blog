<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>个人简历</title>    
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/A-Blog.ico"></link>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"></link>
  <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"></link>
  <style>

	/* 定义辅助CSS来美化简历头部 */
	body{
	  font-family: 'microsoft yahei',Arial,sans-serif;
	}

	.cvheader{
	  border-bottom: 1px solid #DFDFDF;
	  padding-top:30px;
	  padding-bottom:20px;
	}

	.cvheader h1{
	  margin:0;
	}

	.address{
	  background: #efb73e;
	  color: #fff;
	  padding: 10px 0;
	}

	/* 定义辅助CSS来美化简历主体 */

	.cvbody{
	  padding-top: 50px; 
	}

	.cbox{
	  margin-bottom: 30px;
	  color: #FFF;
	  padding: 50px;
	}

	/* 定义cbox颜色 */
	.green{
	  background: #2ecc71;
	}

	.orange{
	  background: orange;
	}

	.red{
	  background: #dd4814;
	}

	.bbox{
	  border: 1px solid #DFDFDF;
	  border-radius: 5px;
	  margin-bottom:30px;
	  padding: 50px;
	}

	.footer{
	  margin: 30px 0 30px;
	  padding: 50px;
	  background: #CCC;
	  color: #FFF;
	}
</style>
  </head>  
  <body>
  	<!-- 定义简历的头部 //-->

<div class="container">
  <div class="row cvheader">
    <div class="col-lg-7 col-md-7 col-xs-12">
      <!--  添加颜色//-->
      <h1 class="text-primary">徐静静</h1>
      <!--  添加图标 //-->
      <p><span class="glyphicon glyphicon-paperclip"></span> 卓越讲师 && 现代文学师</p>
    </div>
    
    <div class="col-lg-3 col-md-3 col-xs-12">
      <div class="row">
        
        <div class="col-lg-4 col-md-4 col-xs-4">
          <p id="contact" class="address text-center">联系</p>
        </div>
        
        <div class="col-lg-8 col-md-8 col-xs-8">
          <p><span class="glyphicon glyphicon-envelope"></span>1210460667@qq.com</p>
          <p><span class="glyphicon glyphicon-earphone"></span>18337101865</p>
          <p><span class="glyphicon glyphicon-road"></span>中国 河南 信阳市浉河区</p>
        </div>
        
      </div>
    </div>
    
    <div class="col-lg-2 col-md-2 col-xs-12">
      <p>
        <!-- 这里定义图片为响应式，并且添加圆角效果，以便保证图片在不同设备上都可以完美显示 //-->
        <img data-toggle="tooltip" data-placement="left" id="avatar" title="我是小精精" class="img-responsive img-rounded" src="${pageContext.request.contextPath}/charisma/img/xj.png" alt="">
       </p>
    </div>
  </div>
</div>

<!-- 定义简历的主体部分 //-->

<div class="container">
  <div class="row cvbody">
    
    <!-- 这里定义两个区域，布局定义如下：//-->
    
    <div class="col-lg-6 col-md-6 col-xs-12">
    
      <div class="row">
        <div class="cbox green">
          <h4>个人介绍</h4>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus asperiores eum consequatur hic rem earum repudiandae dicta! Est officiis similique fugiat quod quibusdam rerum ipsum eos soluta tempore cupiditate! Accusantium?
          </p>
        </div>
        <div class="cbox red">
          <h4>个人技能</h4>
          <p>
            <!-- 这里使用Bootstrap3的组件添加技能 //-->
            
            	古典文学
            <div class="progress">
              <div class="progress-bar progress-bar-success" style="width:80%"></div>
            </div>
            
            	现代文学
            <div class="progress">
              <div class="progress-bar progress-bar-primary" style="width:90%"></div>
            </div>
            
            	中国通史
            <div class="progress">
              <div class="progress-bar progress-bar-info" style="width:80%"></div>
            </div>
            
            	综合外语
            <div class="progress">
              <div class="progress-bar progress-bar-warning" style="width:50%"></div>
            </div>
          </p>
        </div>
        <div class="cbox orange">
          <h4>语言水平</h4>
          <p>
			<canvas id="en" width="150" height="150" class="pull-left"></canvas>
			<canvas id="zh" width="150" height="150" class="pull-right"></canvas>
			<p class="clearfix"></p>
          </p>
        </div>
      </div>
    
    </div>
    
    <!-- 为了清楚的分割两个区域，这里我们添加了一个空白区域，或者也可以在CSS中定义Margin实现//-->
    <div class="col-lg-1 col-md-1 col-xs-12"></div>
    
    <div class="col-lg-5 col-md-5 col-xs-12">
    
      <div class="row">
        <div class="bbox">
          <h4>教育背景</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione enim adipisci minima perspiciatis ad nesciunt iure asperiores voluptatem neque aperiam molestias cupiditate facilis a eveniet iste sapiente ab repellendus dignissimos.</p>
        </div>
        <div class="bbox">
          <h4>工作经验</h4>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis dolorem mollitia repellendus. Magni laudantium placeat repudiandae tempore iure deleniti obcaecati. Architecto delectus doloremque quo. Dicta ratione vero eos pariatur itaque.</p>
        </div>
        <div class="bbox">
          <h4>个人爱好</h4>
          <p>
            <span class="glyphicon glyphicon-tree-deciduous"></span> 骑马
            <span class="glyphicon glyphicon-plane"></span> 旅游
            <p><span class="glyphicon glyphicon-cutlery"></span> 美食</p>
            <p><span class="glyphicon glyphicon-music"></span> 音乐</p>
          </p>
        </div>
      </div>
    
    </div>
    
    
  </div>
</div>

<!-- 定义简历页底 //-->
<div class="container">
  <div class="row"><div class="footer text-center">关注-微博</div></div>
</div>

<!-- 引入jQuery类库和Bootstrap3的Javascript类库 //-->
<script type='text/javascript' src="jquery.js"></script>
<script type='text/javascript' src="bootstrap.min.js"></script>

<script>
/*Javascript源代码*/

$(function(){
  $('#contact').popover({placement:'bottom', container: 'body', html:true, content:'<p>QQ: 36181610</p><p>微博：weibo.com/gbtags</p><p>微信：gbtags</p>'});
  $('#avatar').tooltip({'placement':'bottom'});
  
	$.getScript('http://www.chartjs.org/assets/Chart.js',function(){
	  
	  var zhdata = [{
			label: '中文水平',
			value: 90,
			highlight: "#FFC870",
			color: "#F7464A"
		}, {
			value: 10,
			color: "#EEEEEE"
		}
		]

		var zhoptions = {
			animation: true,
			segmentShowStroke : false
		};

		var c = $('#zh');
		var ct = c.get(0).getContext('2d');
		
		var zhChart = new Chart(ct).Doughnut(zhdata, zhoptions);

	
	  var endata = [{
			label: '英文水平',
			value: 80,
			highlight: "#5AD3D1",
			color: "#4D5360"
		}, {
        value: 20,
        color: "#EEEEEE"
		}
		]

		var enoptions = {
			animation: true,
			segmentShowStroke : false
		};

		var c = $('#en');
		var ct = c.get(0).getContext('2d');
		
		var enchart = new Chart(ct).Doughnut(endata, enoptions);
	});

});

</script>
  </body>
</html>
